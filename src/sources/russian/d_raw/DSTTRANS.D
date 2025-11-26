// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTTRANS~

IF ~  Global("Know_Tower_Key","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #62298 /* ~Ты подходишь к месту расположения портала, о котором говорил тот мальчишка, Лазло. Ты начинаешь прокручивать в голове ваш с ним разговор. Ты вспоминаешь свои слова: «Может, секрет как раз в том, что чтобы попасть туда, нужно не хотеть туда попасть...»~ */
  IF ~~ THEN REPLY #62299 /* ~Подавить в себе малейшее желание войти в башню.~ */ DO ~SetGlobal("Siege_Tower_Portal","AR0500",1)
SetPortalCursor("to0501",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0501",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #62300 /* ~Уйти.~ */ EXIT
END
