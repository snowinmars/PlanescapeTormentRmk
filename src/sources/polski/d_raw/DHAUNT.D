// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAUNT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAUNT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2929 /* ~Jestem widmem, które przemyka się ulicami Sigil i w innych miejscach. Nie wiem, czy jestem tylko narzędziem, czy nie.~ */
  IF ~~ THEN REPLY #2930 /* ~Życie pełne jest niepewności... i nic nie wskazuje na to, że po śmierci będzie lepiej.~ */ EXIT
END
