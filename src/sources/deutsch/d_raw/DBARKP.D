// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50470 /* ~Der lächelnde Mann nickt dir fröhlich zu, als du dich ihm näherst. "Willkommen in meinem Café, werter Herr. Was darf ich Euch bringen? Vielleicht etwas Wein?"~ */
  IF ~~ THEN REPLY #50866 /* ~"Keinen Wein, aber ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #50867 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50868 /* ~Der Mann sieht dich hilflos an. "Ich bitte vielmals um Entschuldigung, mein Herr, aber ich habe es mir zur Regel gemacht, Getränke anzubieten und sonst nichts. Ihr werdet Euch leider anderswo nach einem Konversationspartner umtun müssen. Seid Ihr sicher, daß Ihr nichts trinken möchtet? Oder möchtet Ihr vielleicht etwas Brot und Käse?"~ */
  IF ~~ THEN REPLY #50869 /* ~"Nein, ich brauche nichts. Leb wohl."~ */ EXIT
END
