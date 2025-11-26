// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIRAGO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIRAGO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2796 /* ~Virago can't speak yet. She'll most likely be introduced in a scripted sequence.~ */
  IF ~~ THEN REPLY #2797 /* ~Dobře, dobře! Jóó!~ */ EXIT
END
