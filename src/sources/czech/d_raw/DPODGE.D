// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPODGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPODGE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2891 /* ~I'm a fat, puffing pickpocket from the upper class ward. Chances are, you will have already encountered others of my ilk in the lower class ward.~ */
  IF ~~ THEN REPLY #2892 /* ~Ano, verily. Perhaps I will go seek them out now. Sbohem.~ */ EXIT
END
