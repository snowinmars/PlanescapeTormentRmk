// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARTPTRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DARTPTRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50864 /* ~"Je mi líto, pane, ale jsem tady, abych si prohlédl umělecká díla - a ne abych konverzoval s cizinci. Teď, kdybys byl tak laskav a omluvil mě... sbohem."~ */
  IF ~~ THEN REPLY #50865 /* ~Odejdi.~ */ EXIT
END
