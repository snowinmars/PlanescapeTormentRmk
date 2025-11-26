// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9372 /* ~Diese Frau sieht dich prüfend an, als du näherkommst. Dann stemmt sie eine Hand in die Hüfte und bemerkt spöttisch. "Der Schönste bist du ja nicht gerade, aber vielleicht hast du ja ein paar Münzen, um einer fliegenden Händlerin was abzukaufen?"~ */
  IF ~~ THEN REPLY #9373 /* ~"Kein Interesse... Gossenschlampe."~ */ EXIT
END
