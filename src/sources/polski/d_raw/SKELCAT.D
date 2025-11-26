// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKELCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~SKELCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3345 /* ~"Jestem jednym z uczniów Hargrimma. Czcimy umarłych i składamy im ofiary."~ */
  IF ~~ THEN REPLY #3346 /* ~W takim razie zostawię cię w spokoju.~ */ EXIT
END
