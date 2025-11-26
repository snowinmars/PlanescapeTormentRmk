// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPEC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9362 /* ~Dieser Stockbewohner beobachtet die Dabus bei der Arbeit. Er kratzt sich am Kopf und dreht sich zu dir um. "Beim Leben der Dame - ich kann mir nicht vorstellen, was sie mit diesem Haus vorhaben... diese Dabus reißen ständig alles ab, um es dann wieder aufzubauen... völlig planlos, wie ich meine."~ */
  IF ~~ THEN REPLY #9363 /* ~"Dann eben nicht."~ */ EXIT
END
