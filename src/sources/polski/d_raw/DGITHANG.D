// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2915 /* ~Jestem artystą-oszustem, Githyanki, który próbuje wprowadzić gracza w pułapkę.~ */
  IF ~~ THEN REPLY #2916 /* ~No cóż, w takim razie będę się trzymał z daleka od ciebie. Żegnaj.~ */ EXIT
END
