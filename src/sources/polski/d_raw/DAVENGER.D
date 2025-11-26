// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAVENGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAVENGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67881 /* ~Człowiek ten ignoruje cię całkowicie, wlepiając wzrok w stojącego na podeście sędziego. Usta ma ściągnięte w dziwnym grymasie, a dłonie tak mocno ściśnięte w pięści, że aż bieleją mu kości palców. Chichocze niewesoło do samego siebie. Przykro to powiedzieć, ale w ogóle dla niego nie istniejesz.~ */
  IF ~~ THEN REPLY #67882 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END
