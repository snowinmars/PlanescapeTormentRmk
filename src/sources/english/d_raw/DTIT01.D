// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43013 /* ~This person is trying to remove items from the pockets of a stuffed mannequin, which is suspended from a frame and hung with various bells and chimes. Each time the person touches the mannequin too forcefully, it jingles loudly.~ */
  IF ~~ THEN REPLY #43014 /* ~Leave.~ */ EXIT
END
