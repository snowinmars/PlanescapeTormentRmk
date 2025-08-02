// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGBODY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGBODY~

IF ~  Global("Gatehead_Talk","GLOBAL",0)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #47032 /* ~При твоем приближении гниющие головы на вратах начинают говорить, по очереди произнося слова и складывая из них осмысленные предложения. «Пропал, пропал. Потерян предателем, потерян светом».~ */
  IF ~~ THEN REPLY #47033 /* ~«А что случилось с городом?»~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 1
  IF ~~ THEN REPLY #47034 /* ~«Что случилось с вами?»~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 2
  IF ~~ THEN REPLY #47035 /* ~«Спасибо за новость. Прощайте».~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.0 7.0
  SAY #47036 /* ~«Унесен ветром, смыт волной зла. Сквозь врата ушел, ушел. Город пропал, утонул в своей ненависти. Сквозь врата, в Красную тюрьму, тюремный план... в Карцери».~ */
  IF ~~ THEN REPLY #47037 /* ~«Карцери? Расскажите мне о Карцери».~ */ GOTO 13
  IF ~~ THEN REPLY #47038 /* ~«Вы можете говорить нормально?»~ */ GOTO 6
  IF ~~ THEN REPLY #47039 /* ~«Что случилось с вами?»~ */ GOTO 2
  IF ~~ THEN REPLY #47040 /* ~«Есть идеи, как попасть туда или вернуть его сюда?»~ */ GOTO 4
  IF ~~ THEN REPLY #47041 /* ~«У меня нет на это времени. Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 6.0 7.1 13.1
  SAY #47042 /* ~«Преданные, презренные, подставленные... наказанные, казненные, оставленные в назидание. Подвешенные здесь врагами. Пропали, пропали, пропали».~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",0)
~ THEN REPLY #47043 /* ~«Мне кажется, или в последнее время развелось слишком много говорящих голов без тела?»~ */ DO ~GiveExperience(Protagonist,3000)
SetGlobal("Ghead_Exp","AR0800",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",1)
~ THEN REPLY #47044 /* ~«Мне кажется, или в последнее время развелось слишком много говорящих голов без тела?»~ */ GOTO 3
  IF ~~ THEN REPLY #47045 /* ~«Куда все подевались?»~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #47046 /* ~Головы умолкают. Переглянувшись между собой, они снова поворачиваются к тебе, стыдливо свисая с врат.~ */
  IF ~~ THEN REPLY #47047 /* ~«Ну хорошо. Что случилось с Проклятым?»~ */ GOTO 1
  IF ~~ THEN REPLY #47048 /* ~«Ладно. Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 6.1 13.2
  SAY #47049 /* ~«Через врата, в тюрьму... нет возврата из тюрьмы, нет. Иди через врата, через врата... Там тебя ждет твоя судьба».~ */
  IF ~~ THEN REPLY #47050 /* ~«Что вы знаете о моей судьбе?»~ */ JOURNAL #39483 /* ~Головы на вратах в Карцери сказали мне, что город погрузился в пучину зла и его засосало через врата в Карцери. Они сказали, по ту сторону врат находится моя судьба.~ */ GOTO 5
  IF ~~ THEN REPLY #47051 /* ~«Спасибо. Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47052 /* ~«Дэва ждет тебя». Головы умолкают и больше не реагируют ни на какие расспросы.~ */
  IF ~~ THEN REPLY #47053 /* ~«Тогда прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 13.0
  SAY #47054 /* ~«Под вуалью все... затенено, залито светом. Ничего не разберешь. Все непросто. Нет».~ */
  IF ~~ THEN REPLY #47055 /* ~«Ну хорошо, а что случилось с вами?»~ */ GOTO 2
  IF ~~ THEN REPLY #47056 /* ~«Есть идеи, как попасть в город или вернуть его сюда?»~ */ GOTO 4
  IF ~~ THEN REPLY #47057 /* ~«Тогда ладно. Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 7 // from:
  SAY #47058 /* ~Поначалу головы молчат, затем начинают перешептываться, а затем и общаться в полный голос.~ */
  IF ~~ THEN REPLY #47059 /* ~«Что случилось с Проклятым?»~ */ GOTO 1
  IF ~~ THEN REPLY #47060 /* ~«Что случилось с вами?»~ */ GOTO 2
  IF ~~ THEN REPLY #47061 /* ~«Забудьте. Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",0)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 8 // from:
  SAY #47062 /* ~Когда ты подходишь к вратам, гниющие головы, украшающие обвитую остролистником арку, начинают с тобой говорить, перебивая друг друга. «В Карцери... тюремный план... землю преданных и предателей, обманщиков и жертв. Эти врата... закрыты... пока».~ */
  IF ~~ THEN REPLY #47063 /* ~«Когда они откроются снова?»~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #47064 /* ~«Что вы можете рассказать о Карцери?»~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #47065 /* ~«Что случилось с вами?»~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #47066 /* ~«Спасибо. Прощайте».~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 9 // from:
  SAY #47067 /* ~«Врата... все еще закрыты. Прохода нет».~ */
  IF ~~ THEN REPLY #47068 /* ~«Когда они откроются снова?»~ */ GOTO 10
  IF ~~ THEN REPLY #47069 /* ~«Что вы можете рассказать о Карцери?»~ */ GOTO 11
  IF ~~ THEN REPLY #47070 /* ~«Что случилось с вами?»~ */ GOTO 12
  IF ~~ THEN REPLY #47072 /* ~«Спасибо. Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0
  SAY #47075 /* ~«Когда пройдет чумной мор. Когда прекратится болезнь. Когда уйдет смерть».~ */
  IF ~~ THEN REPLY #47076 /* ~«Что вы можете рассказать о Карцери?»~ */ GOTO 11
  IF ~~ THEN REPLY #47077 /* ~«Что случилось с вами?»~ */ GOTO 12
  IF ~~ THEN REPLY #47078 /* ~«Спасибо. Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #47080 /* ~«Тюремный план... зло, хаос... Миры внутри миров, сферы внутри сфер, подвешенные словно жемчужины в небесах.. Красная тюрьма, погибель богов и титанов».~ */
  IF ~~ THEN REPLY #47082 /* ~«Когда ворота откроются?»~ */ GOTO 10
  IF ~~ THEN REPLY #47083 /* ~«Что случилось с вами?»~ */ GOTO 12
  IF ~~ THEN REPLY #47084 /* ~«Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2 10.1 11.1
  SAY #47085 /* ~«Преданные, презренные, подставленные... наказанные, казненные, оставленные в назидание. Подвешенные здесь врагами. Пропали, пропали, пропали».~ */
  IF ~~ THEN REPLY #47086 /* ~«Когда ворота откроются?»~ */ GOTO 10
  IF ~~ THEN REPLY #47087 /* ~«Что вы можете рассказать о Карцери?»~ */ GOTO 11
  IF ~~ THEN REPLY #47088 /* ~«Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.0
  SAY #47089 /* ~«Тюремный план... зло, хаос... Миры внутри миров, сферы внутри сфер, подвешенные словно жемчужины в небесах.. Красная тюрьма, погибель богов и титанов».~ */
  IF ~~ THEN REPLY #47090 /* ~«Вы можете говорить нормально?»~ */ GOTO 6
  IF ~~ THEN REPLY #47091 /* ~«Что случилось с вами?»~ */ GOTO 2
  IF ~~ THEN REPLY #47092 /* ~«Есть идеи, как попасть туда или вернуть его сюда?»~ */ GOTO 4
  IF ~~ THEN REPLY #47093 /* ~«У меня нет на это времени. Прощайте».~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END
