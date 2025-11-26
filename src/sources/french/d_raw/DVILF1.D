// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3402 /* ~Je suis une jeune fille du Village Enseveli. Je me promène dans le village, je cherche des cadavres et des bibelots intéressants pour Pharod.~ */
  IF ~~ THEN REPLY #3403 /* ~Le bien. Le mal. C'est moi qui suis armé.~ */ EXIT
END
