// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERNET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERNET~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58937 /* ~Перед тобой здоровяк-головорез. Его лицо все в шрамах и складках, рассказывающих о бесчисленных жестокостях, а его голос звучит, как шорох гальки на морском дне. «Чего те, пень?»~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66327 /* ~«Я пришел поговорить с тобой насчет Кайса, смотрителя свалки».~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66328 /* ~«У меня несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #66329 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #66324 /* ~«Че, снова ты?» Он рыгает.~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66330 /* ~«Я пришел поговорить с тобой насчет Кайса, смотрителя свалки».~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66331 /* ~«У меня несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #66332 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #66325 /* ~«О-о, так бедняжка уже прослышал, что мы идем за его деньжатами? — он почесывается. — Поди, скажи ему, чтобы приготовил их, иначе он покойник. А теперь проваливай».~ */
  IF ~~ THEN REPLY #66333 /* ~«Сперва ответь на пару вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #66334 /* ~«Отлично. Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #66326 /* ~«Я не какой-то там вонючий осведомитель. Если хочешь ответы на свои вопросы — спрашивай тех, кому есть дело. Не меня. А теперь выметайся отсюда, пока я не послал на тебя своих парней».~ */
  IF ~  Global("Caretaker","GLOBAL",3)
~ THEN REPLY #66335 /* ~«Ну ладно. Прощай».~ */ DO ~EscapeArea()
~ EXIT
  IF ~  GlobalLT("Caretaker","GLOBAL",3)
~ THEN REPLY #66336 /* ~«Ну ладно. Прощай».~ */ EXIT
END
