// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHSOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHSOL~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #2917 /* ~У этого мужчины бледно-желтая кожа и остроконечные уши. Его глаза — словно черные камушки. Он носит гибкую кольчугу, покрытую изысканной эмалью. Когда ты подходишь, он смотрит на тебя с подозрением, положив руку на эфес своего меча. Он молчит.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #2918 /* ~«Приветствую, звенящий мечом».~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 2
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44575 /* ~«Приветствую, почтенный гитьянки».~ */ GOTO 3
  IF ~~ THEN REPLY #44576 /* ~«Я хотел бы задать тебе несколько вопросов...»~ */ GOTO 5
  IF ~~ THEN REPLY #44578 /* ~«Извини, я, кажется, обознался. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #44581 /* ~«Я не разговариваю с теми, кто не из Народа. Поговори с Йиминн, если хочешь пообщаться с нами». Он не сводит с тебя глаз.~ */
  IF ~~ THEN REPLY #44582 /* ~«У меня всего лишь несколько вопросов...»~ */ GOTO 5
  IF ~~ THEN REPLY #44584 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #44585 /* ~В мгновение ока в его руках появляется меч. «Обращаешься ко мне, как к гитцерайскому псу? Извинись, не то я проткну тебя».~ */
  IF ~~ THEN REPLY #44587 /* ~«Извиняться? Перед тобой? Я так не думаю».~ */ GOTO 4
  IF ~~ THEN REPLY #44589 /* ~«Прошу прощения. Я подумал, что ты гитцерай».~ */ GOTO 4
  IF ~~ THEN REPLY #44591 /* ~«Приношу свои извинения».~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #44592 /* ~Он склоняет голову, но не убирает руки с рукоятки меча.~ */
  IF ~~ THEN REPLY #44593 /* ~«У меня есть к тебе несколько вопросов...»~ */ GOTO 5
  IF ~~ THEN REPLY #44595 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 5.1 6.0
  SAY #44597 /* ~Сдавлено шипя, он кидается в атаку!~ */
  IF ~~ THEN REPLY #44599 /* ~Сражаться.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44600 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 3.0
  SAY #44602 /* ~«Я не отвечаю на вопросы. Я рыцарь-гитьянки. Мои слова — это мои поступки. Поговори с Йиминном, или вообще не разговаривай с гитьянки».~ */
  IF ~~ THEN REPLY #44604 /* ~«Йиминн? Ладно. Где мне его найти?»~ */ GOTO 7
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44678 /* ~«О, так ты гитьянки? Мне показалось, что я учуял на тебе вонь иллитидов. Или, может, это все твоя слабая кровь».~ */ GOTO 4
  IF ~~ THEN REPLY #44679 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #44680 /* ~«Больше не испытывай мое терпение. Уходи. Сейчас же».~ */
  IF ~~ THEN REPLY #44681 /* ~«У меня всего лишь несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #44682 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #44683 /* ~Он смотрит на тебя беспристрастно. «Поищи его сам. А теперь уходи. Прекрати испытывать мое терпение».~ */
  IF ~~ THEN REPLY #44684 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
~ THEN BEGIN 8 // from:
  SAY #44685 /* ~У этого мужчины бледно-желтая кожа и остроконечные уши. Его глаза — словно черные камушки. Он носит гибкую кольчугу, покрытую изысканной эмалью. Когда его глаза останавливаются на Дакконе, в его руках появляется клинок. «Гитцерайский пес! Подойди и отведай моего серебра!»~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 159
END

IF ~~ THEN BEGIN 9 // from:
  SAY #44686 /* ~«Ты встал между нами, человек? Тогда ты тоже умрешь». Он кидается на тебя.~ */
  IF ~~ THEN REPLY #44687 /* ~Сражаться.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44688 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44689 /* ~Оба гита кидаются друг на друга.~ */
  IF ~~ THEN REPLY #44690 /* ~Напасть на гитьянки.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44691 /* ~Дать им сразиться.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
