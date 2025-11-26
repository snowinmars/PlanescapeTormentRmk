// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTIL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2966 /* ~Jestem złą księgą zaklęć, którą nosisz w swoim ekwipunku.~ */
  IF ~~ THEN REPLY #2967 /* ~Złą powiadasz? Zaklęć, powiadasz? W takim razie znikam.~ */ EXIT
END
