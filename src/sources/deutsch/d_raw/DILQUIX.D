// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIX~

IF ~~ THEN BEGIN 0 // from:
  SAY #3069 /* ~Du siehst ein klobiges Etwas mit breiten Schultern, einem Hundekopf und vier Armen. Eines der äußerst muskulösen Armpaare ist an den Enden mit unregelmäßigen Scheren besetzt, die aussehen, als könnten sie einem sich sträubenden Opfer die Seele aus dem Leib reißen. Das Wesen spricht mit unerwartet sanfter Stimme. "Ah, Reisender! Ich sehe, du bringst werte Gefährten mit". Es hält kurz inne, um zu schnuppern. "Ein *vorzüglicher* Duft. Annah, ich kannte deinen Vater. Er plagt sich auch jetzt im Abgrund. Und Grace, deine Mutter Rotschleier wird sich freuen zu hören, daß es dir gut geht."~ */
  IF ~~ THEN REPLY #3367 /* ~"War mir ein Vergnügen. Ich würde dir gern ein paar Fragen stellen..."~ */ EXIT
END
