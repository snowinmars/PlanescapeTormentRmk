// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50470 /* ~This smiling man nods cheerfully at you as you approach. "Welcome to my cafe, good sir. What might I serve you? Some wine, perhaps?"~ */
  IF ~~ THEN REPLY #50866 /* ~"No wine, but I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #50867 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50868 /* ~The man gives you a helpless sort of look. "Humblest apologies, sir, but I make it a policy to serve drinks and nothing more. You shall have to look elsewhere for conversation, I'm afraid. Are you certain you wouldn't like a drink? Or some bread and cheese, perhaps?"~ */
  IF ~~ THEN REPLY #50869 /* ~"No, I don't need anything. Farewell."~ */ EXIT
END
