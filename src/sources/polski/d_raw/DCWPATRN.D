// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPATRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPATRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50860 /* ~"Proszę, panie, czekają na mnie obowiązki. Gdybyś był tak miły, to wolałbym, żebyś zostawił mnie w spokoju. Żegnaj."~ */
  IF ~~ THEN REPLY #50861 /* ~Odejdź.~ */ EXIT
END
