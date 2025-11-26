// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3402 /* ~Ich bin ein Mädchen aus dem Begrabenen Dorf. Ich ziehe durch das Dorf und halte Ausschau nach Leichen und anderen Kostbarkeiten für Pharod.~ */
  IF ~~ THEN REPLY #3403 /* ~Gut. Böse. Ich hab' jedenfalls die Knarre.~ */ EXIT
END
