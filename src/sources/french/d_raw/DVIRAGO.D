// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIRAGO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIRAGO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2796 /* ~Virago ne peut pas encore parler. Elle sera présentée dans une séquence écrite.~ */
  IF ~~ THEN REPLY #2797 /* ~Bien, bien ! Bon sang.~ */ EXIT
END
