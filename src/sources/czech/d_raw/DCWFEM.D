// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWFEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2897 /* ~"Mám nějaké otázky..."~ */
  IF ~~ THEN REPLY #2898 /* ~"Nějaký problém s tím, jak vypadám?"~ */ EXIT
END
