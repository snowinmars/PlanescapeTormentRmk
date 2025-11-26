// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMATTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMATTER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Gigantický muž má na sobě obrovské zdobené rudé brnění. Dívá se na tebe s opatrností, ale beze strachu.~ */
  IF ~~ THEN REPLY #2894 /* ~Jeho hluboký hlas se rozléhá v jeho helmě. "Zdravím tě, občane. Jsem Samozřejmost... bodygard Přičinlivosti, Čvrté Magistrátky Čtvrti. Musíš mě omluvit, mé povinnosti jsou u jejího boku. Sbohem."~ */ EXIT
END
