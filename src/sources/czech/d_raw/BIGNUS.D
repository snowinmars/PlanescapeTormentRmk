// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BIGNUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~BIGNUS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #31489 /* ~Toto je zarážka pro iterakční text týkající se Ignuse.~ */
  IF ~~ THEN EXIT
END
