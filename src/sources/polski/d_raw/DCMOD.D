// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCMOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCMOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2905 /* ~Jestem jednym ze średnio groźnych konstruktów z labiryntu modronów. Nie wiem, czy już istnieję. Być może nie jestem niczym ponad dialog i to wszystko, czym kiedykolwiek będę.~ */
  IF ~~ THEN REPLY #2906 /* ~Mam jedynie nadzieję, że tak. Miłego dnia.~ */ EXIT
END
