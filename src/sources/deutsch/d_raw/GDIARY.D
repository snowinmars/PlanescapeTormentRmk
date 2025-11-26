// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GDIARY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~GDIARY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #30104 /* ~Dieses Buch sieht so aus, als seien die Blätter aus papierdünnem Silber. Auf dem Buchdeckel ist eine Frau eingraviert, und an der Seite des Buches befindet sich ein kleines Schloß. Wie sehr du es auch probierst, das Schloß widersteht deinen Versuchen, es zu öffnen.~ */
  IF ~~ THEN REPLY #50095 /* ~"Tja, ich wollte es sowieso nicht lesen... jedenfalls noch nicht."~ */ EXIT
END
