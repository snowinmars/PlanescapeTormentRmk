// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3194 /* ~Ich werde dir vielleicht etwas über Tunnels erzählen. Okay?~ */
  IF ~~ THEN REPLY #3195 /* ~Ja. Is gut. Wenn's nicht schlecht is.~ */ EXIT
END
