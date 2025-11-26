// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2903 /* ~Jestem jednym ze słabo zaawansowanych machanicznych kontruktów, którzy znajdują się w Labiryncie Modronów. Mam za zadanie wyzywać do boju wszystkich intruzów, którzy wkroczą do labiryntu. Czujesz się wyzwany?~ */
  IF ~~ THEN REPLY #2904 /* ~Jeszcze nie, ale może tak będzie. Do zobaczenia.~ */ EXIT
END
