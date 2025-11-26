// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37756 /* ~Zauważasz strażniczkę Harmonium. Robiąc obchód, bardzo uważnie obserwuje otoczenie. Nie wydaje się zainteresowana rozmową z tobą.~ */
  IF ~~ THEN REPLY #37757 /* ~Zostaw ją w spokoju.~ */ EXIT
END
