// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLECTURE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLECTURE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50862 /* ~The person turns and gives you a slightly annoyed glance. "I was listening to the lecture, sir. I trust you'll be so kind as to leave me in peace while I do so. Farewell."~ */
  IF ~~ THEN REPLY #50863 /* ~Leave.~ */ EXIT
END
