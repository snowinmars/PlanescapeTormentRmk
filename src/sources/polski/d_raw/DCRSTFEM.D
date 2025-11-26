// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTFEM~

IF ~~ THEN BEGIN 0 // from:
  SAY #3172 /* ~Widzisz młodego mężczyznę o ponurej twarzy. Mamrocze coś do siebie i wydaje się być czymś zaabsorbowany.~ */
  IF ~~ THEN REPLY #3173 /* ~"Witaj."~ */ EXIT
END
