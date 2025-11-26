// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJANSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJANSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67910 /* ~This man is bruised and bloody. His face is puffed, swollen from the savage beating administered by Curst's guards. He does not speak, but spits out a tooth and a mouthful of blood. ~ */
  IF ~~ THEN REPLY #67911 /* ~"Farewell, then."~ */ EXIT
END
