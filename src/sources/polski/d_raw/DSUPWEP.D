// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSUPWEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSUPWEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~Ta broń wydaje się być wykonana z jakiegoś niezwykłego metalu. Po dokładniejszych oględzinach okazuje się, że jest wykuta z jednego kawałka metalu, rękojeść nie została osadzona na ostrzu, jak to zwykle ma miejsce. Gdy tylko ją podnosisz, zaczyna się zmieniać w twojej dłoni. Wygląda, jakby chciała się wyzwolić ze swej postaci.~ */
  IF ~~ THEN REPLY #55079 /* ~Niech broń się zmieni.~ */ EXIT
END
