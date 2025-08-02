// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAIMON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAIMON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23859 /* ~Этот с виду скучающий крысооборотень, похоже, рад любому поводу развеять скуку. «Чего те, мясо?»~ */
  IF ~~ THEN REPLY #23860 /* ~«Я хочу выбраться отсюда».~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23861 /* ~«Мне просто нужно с тобой поговорить».~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #23862 /* ~«Ничего. Забудь».~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #23863 /* ~«Да ну? И что же может стоить того, чтобы ослушаться Мантуока и рискнуть разозлить крыс, а?»~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23864 /* ~«Ваши жизни. Если ты меня выпустишь, я оставлю вас в живых».~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23865 /* ~«Ваши жизни. Если ты меня выпустишь, я оставлю вас в живых».~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23866 /* ~«Обещание того, что никто никогда не узнает о том, что я сделаю... и, пожалуй, обещание нескольких монет позже».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23867 /* ~«И как они узнают?»~ */ GOTO 11
  IF ~~ THEN REPLY #23868 /* ~«Как насчет звенелок?»~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23869 /* ~«Подумай вот о чем: я, несомненно, представляю для вас опасность, и все же говорю с вами на равных. Ты же не думаешь, что эти стены меня удержат, если я захочу выйти? Говорю безо всяких угроз: в твоих же интересах выпустить меня».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23870 /* ~«Потому что я когда-нибудь отсюда выберусь, и тогда здесь будет заварушка».~ */ GOTO 4
  IF ~~ THEN REPLY #23871 /* ~«Сам подумай, я вот не могу ничего сообразить».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #23872 /* ~Раймон внимательно осматривает тебя сверху донизу. Заметив жестокость в твоих глазах и размеры твоих мускулов, он очень осторожно отпирает и открывает дверь. Затем он отступает в сторону и отводит от тебя взгляд.~ */
  IF ~~ THEN REPLY #23873 /* ~«Спасибо, приятель».~ */ DO ~AddexperienceParty(100)
~ GOTO 3
  IF ~~ THEN REPLY #23874 /* ~«Пока».~ */ DO ~AddexperienceParty(100)
~ GOTO 3
END

IF WEIGHT #3 /* Triggers after states #: 13 12 even though they appear after this state */
~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #23875 /* ~Он отводит от тебя взгляд. «Прошу, не трогай меня, знаток... Я только делал свою работу».~ */
  IF ~~ THEN REPLY #23876 /* ~«Я подумаю над этим. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #23877 /* ~Он внимательно осматривает тебя и фыркает. «Ты че, думаешь, можешь мне навредить? Поищи-ка сперва другой выход!»~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #23878 /* ~«Что, если я пообещаю, что никто никогда не узнает о том, что я сделаю... и, пожалуй, еще несколько монет позже».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #23879 /* ~«А почему бы тебе просто меня не выпустить отсюда?»~ */ GOTO 11
  IF ~~ THEN REPLY #23880 /* ~«Что, если я дам тебе пару монет?»~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23881 /* ~«Подумай вот о чем: я, несомненно, представляю для вас опасность, и все же говорю с вами на равных. Ты же не думаешь, что эти стены меня удержат, если я захочу выйти? Говорю безо всяких угроз: в твоих же интересах выпустить меня».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23882 /* ~«Потому что я когда-нибудь отсюда выберусь, и тогда здесь будет заварушка».~ */ GOTO 4
  IF ~~ THEN REPLY #23883 /* ~«Что ж, я подумаю над этим. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #23884 /* ~«В общем, звучит неплохо. В любом случае клал я на Мантуока, — он отпирает дверь, открывает ее и отходит в сторону. — А теперь проваливай отсюда, пока я еще могу делать вид, что не вижу тебя».~ */
  IF ~~ THEN REPLY #23885 /* ~«Да пожалуйста. Прощай».~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #23886 /* ~«Вот чего еще... чего-то у тебя кошелек приятно так позвякивает. Сотня монет — уверен, ею ты можешь поделиться — и можешь идти».~ */
  IF ~~ THEN REPLY #23887 /* ~«По рукам».~ */ GOTO 7
  IF ~~ THEN REPLY #23888 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23889 /* ~«Брось через решетку, и тогда я тебя выпущу. И пока ты не спросил: тебе остается только поверить мне, верно, Шаддеус?» — он ухмыляется своему напарнику.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #23890 /* ~«Хорошо. Держи».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(200)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #23891 /* ~«У меня нет столько...»~ */ GOTO 9
  IF ~~ THEN REPLY #23892 /* ~«Забудь».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #23893 /* ~Он тщательно пересчитывает монеты. Когда он, наконец, убеждается, что они все на месте, он отпирает тебе дверь. «А теперь проваливай!»~ */
  IF ~~ THEN REPLY #23894 /* ~«Хорошо, хорошо». ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #23895 /* ~«Тогда ты отсюда не выберешься, так ведь?» Его смех напоминает чириканье. Он отворачивается.~ */
  IF ~~ THEN REPLY #23896 /* ~«Проклятье...»~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #23897 /* ~«Ты просто хочешь поговорить, так? Вот только не получится у тебя разговора с Раймоном, эт уж точно!» — он отворачивается от тебя.~ */
  IF ~~ THEN REPLY #23898 /* ~«Я хочу поговорить на счет того, чтобы выпустить меня отсюда».~ */ GOTO 1
  IF ~~ THEN REPLY #23899 /* ~«Вот и отлично».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #23900 /* ~Он презрительно тебе усмехается. «Будто бы я тебе поверил? — его усы дергаются. — Попробуй еще разок».~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #23901 /* ~«Если ты выпустишь меня отсюда, я оставлю тебе жизнь».~ */ DO ~SetGlobal("Zap","GlOBAL",3)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #23902 /* ~«Если ты выпустишь меня отсюда, я оставлю тебе жизнь».~ */ GOTO 4
  IF ~~ THEN REPLY #23903 /* ~«Как насчет звенелок?»~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #23904 /* ~«Подумай вот о чем: я, несомненно, представляю для вас опасность, и все же говорю с вами на равных. Ты же не думаешь, что эти стены меня удержат, если я захочу выйти? Говорю безо всяких угроз: в твоих же интересах выпустить меня».~ */ DO ~SetGlobal("Zap","GLOBAL",2)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #23905 /* ~«Потому что я когда-нибудь отсюда выберусь, и тогда здесь будет заварушка».~ */ GOTO 4
  IF ~~ THEN REPLY #23906 /* ~«Забудь».~ */ EXIT
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #23907 /* ~«Чего тебе еще, пустоголовый?»~ */
  IF ~~ THEN REPLY #23908 /* ~«Я хочу поговорить с тобой».~ */ GOTO 10
  IF ~~ THEN REPLY #23909 /* ~«Я хочу обсудить варианты своего выхода отсюда».~ */ GOTO 1
  IF ~~ THEN REPLY #23910 /* ~«Ничего. Забудь».~ */ EXIT
END

IF WEIGHT #2 ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #23911 /* ~«Ты все еще здесь, пень? Проваливай отсюда!» — тряхнув головой, он отводит от тебя взгляд.~ */
  IF ~~ THEN REPLY #23912 /* ~«Хорошо».~ */ EXIT
END

IF WEIGHT #4 ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #23913 /* ~«Что за... ШАДДЕУС! ХВАТАЙ ЕГО!» Оба крысооборотня нападают на тебя.~ */
  IF ~~ THEN REPLY #23914 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
