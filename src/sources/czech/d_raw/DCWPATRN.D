// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPATRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPATRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50860 /* ~"Prosím, pane, mám něco na práci. Oceňoval bych, abys mě nechal být, kdybys byl tak hodný. Sbohem."~ */
  IF ~~ THEN REPLY #50861 /* ~Odejdi.~ */ EXIT
END
