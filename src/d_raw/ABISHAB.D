// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ABISHAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~ABISHAB~

IF ~  Global("Know_Abishai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3325 /* ~Этот черный ящер возвышается на два с половиной метра. Однако его огромный рост компенсируется тонким змееподобным телом. Позади волочится длинный цепкий хвост, из-за спины торчат кожаные крылья. От существа несет крепким уксусом... и жаром. Похоже, он не обращает на тебя внимания.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3326 /* ~«Приветствую».~ */ DO ~SetGlobal("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 131
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3992 /* ~«Приветствую».~ */ EXTERN ~DMORTE~ 133
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3993 /* ~«Приветствую».~ */ DO ~SetGlobal("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 70
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3994 /* ~«Приветствую».~ */ EXTERN ~DANNAH~ 72
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #3995 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #7718 /* ~Оставить существо в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 11.0
  SAY #7719 /* ~Существо медленно наклоняет свою голову и смотрит на тебя. На чешуйчатом лбу появляются морщины, оно открывает пасть, издавая резкое шипение. Ты замечаешь, что жар, излучаемый существом, начинает нарастать.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7720 /* ~«Я хотел бы поговорить с тобой пару минут».~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7721 /* ~«Я хотел бы поговорить с тобой пару минут».~ */ GOTO 6
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7722 /* ~«Я хотел бы поговорить с тобой пару минут».~ */ GOTO 6
  IF ~~ THEN REPLY #7723 /* ~Оставить существо в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #7724 /* ~Существо открывает пасть, показывая ряд почерневших клыков. Оно протяжно шипит. Вокруг его плеч и рук начинает плясать огонь.~ */
  IF ~~ THEN REPLY #7725 /* ~«Успокойся! Я просто хочу поговорить с тобой».~ */ GOTO 4
  IF ~~ THEN REPLY #7726 /* ~Зашипеть в ответ.~ */ GOTO 3
  IF ~~ THEN REPLY #7727 /* ~Оставить существо в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.0 5.1
  SAY #7728 /* ~Существо рычит и бросается на тебя!~ */
  IF ~~ THEN REPLY #7730 /* ~Защищаться...~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #7731 /* ~Существо резко шипит. Его голос похож на скрежет камней друг о друга. Оно шипит несколько секунд, то повышая, то понижая свой резкий голос.~ */
  IF ~~ THEN REPLY #7732 /* ~«Э-э... что?»~ */ GOTO 5
  IF ~~ THEN REPLY #7733 /* ~Оставить существо в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7734 /* ~Существо рычит. «НЕЧЕГО тебе сссказать». Глаза нечисти превращаются узкие щелки. «Будешшшь докучать — твоя жаркая кровь прольется на камни».~ */
  IF ~~ THEN REPLY #7735 /* ~«Я просто хочу задать тебе несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #7736 /* ~«Только попробуй — и мы еще посмотрим, чья кровь прольется на землю».~ */ GOTO 3
  IF ~~ THEN REPLY #7737 /* ~Отступить и оставить существо в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 1.2
  SAY #7738 /* ~Внезапно существо принюхивается, затем отворачивается от тебя со странным шипением. Кажется, оно уловило какой-то неприятный для себя запах.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7739 /* ~«Я сказал, что хочу поговорить с тобой».~ */ GOTO 8
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7740 /* ~«Я сказал, что хочу поговорить с тобой».~ */ GOTO 7
  IF ~~ THEN REPLY #7741 /* ~Оставить существо в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #7742 /* ~Глаза существа смотрят на Анну, сужаясь в щелки. Оно открывает пасть, показывая ряд почерневших клыков, вокруг его плеч и рук начинает плясать огонь. Жар, окружающий существо, начинает нарастать.~ */
  IF ~~ THEN REPLY #7743 /* ~«Эй, я с тобой разговариваю!»~ */ GOTO 9
  IF ~~ THEN REPLY #7744 /* ~Оставить существо в покое, забрать Анну и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #7745 /* ~Глаза существа фокусируются на Падшей Грации, сужаясь в щелки. Оно открывает пасть, показывая ряд почерневших клыков, вокруг плеч и рук начинает плясать огонь. Жар, окружающий существо, начинает нарастать.~ */
  IF ~~ THEN REPLY #7746 /* ~«Эй, я с тобой разговариваю!»~ */ GOTO 10
  IF ~~ THEN REPLY #7747 /* ~Отступить, забрав с собой Падшую Грацию, и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #7748 /* ~Существо рычит и бросается на Анну!~ */
  IF ~~ THEN REPLY #7749 /* ~«Проклятье!..»~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #7750 /* ~Существо рычит и бросается на Падшую Грацию!~ */
  IF ~~ THEN REPLY #7751 /* ~«Проклятье!..»~ */ DO ~Enemy()
Attack("Grace")
~ EXIT
END

IF ~  Global("Know_Abishai","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #7752 /* ~Эта черная нечисть возвышается на два с половиной метра. Однако его огромный рост компенсируется тонким змееподобным телом. Позади волочится длинный цепкий хвост, из-за спины торчат кожаные крылья. От нечистого несет крепким уксусом... и жаром. Похоже, он не обращает на тебя внимания.~ */
  IF ~~ THEN REPLY #7753 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #7758 /* ~Оставить абишая в покое.~ */ EXIT
END
