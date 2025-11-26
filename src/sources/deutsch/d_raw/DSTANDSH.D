// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTANDSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTANDSH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46108 /* ~Dieser geknechtet wirkende kleine Mann flitzt im Kuriositätenladen umher, staubt ab, katalogisiert und räumt Sachen für die Besitzerin auf. Du bemerkst, daß er leicht nach Zwiebeln riecht. Er blickt nervös zu dir auf, als du näherkommst. "Bitte, mein Herr... Ich kann nicht mit Euch sprechen. Ich muß arbeiten. Meine Herrin wird es nicht zulassen..."~ */
  IF ~~ THEN REPLY #46109 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #46110 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46111 /* ~"Tut mir leid, mein Herr, aber ich kann nicht. Bitte laßt mich in Ruhe, bevor meine Herrin sieht, daß wir uns unterhalten..."~ */
  IF ~~ THEN REPLY #46112 /* ~"Deine Meisterin?"~ */ GOTO 2
  IF ~~ THEN REPLY #46113 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46114 /* ~Der kleine Mann nickt. "Ja, Vrischika, meine Herrin. Ich bin Standish, ihr Diener und Sklave. Ich wurde zur Sklaverei verurteilt, weil ich ein Verbrechen begangen habe. Sie hat mich im Unteren Bezirk gekauft, wie viele ihrer Sklaven. Die meisten hält sie in ihrer Residenz. Aber bitte, mein Herr! Laßt mich in Ruhe, bevor sie zornig wird und mich verprügelt!"~ */
  IF ~~ THEN REPLY #46115 /* ~"Also dann... Leb wohl, Standish."~ */ EXIT
END
