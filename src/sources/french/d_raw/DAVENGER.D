// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAVENGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAVENGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67881 /* ~L'homme t'ignore, accaparé qu'il est par le juge. Il a les lèvres pincées et ses jointures sont blanches à force de serrer les poings. Il bougonne par-devers lui. Apparemment, il n'a même pas remarqué que tu te trouvais là.~ */
  IF ~~ THEN REPLY #67882 /* ~"Dans ce cas, laisse tomber."~ */ EXIT
END
