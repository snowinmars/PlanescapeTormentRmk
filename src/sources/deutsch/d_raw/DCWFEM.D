// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWFEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2897 /* ~"Ich hätte da ein paar Fragen..."~ */
  IF ~~ THEN REPLY #2898 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ EXIT
END
