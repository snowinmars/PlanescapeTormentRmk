// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSINKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSINKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3179 /* ~In der Stadt erzählt man sich, du würdest einen Weg zum Gefängnis suchen. Sobald ich einen Dialog kriege, sag ich dir, wie du dorthin kommst.~ */
  IF ~~ THEN REPLY #3181 /* ~Und dann kann ich losziehen und mit diesem verräterischen Engel Trias abrechnen! Oh Mann!~ */ EXIT
  IF ~~ THEN EXIT
END
