// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVPCGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVPCGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #56950 /* ~The guard narrows his eyes and looks your way as you approach, but says nothing.~ */
  IF ~  !GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56953 /* ~"What's through that archway?"~ */ GOTO 1
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56955 /* ~"What's through that archway?"~ */ GOTO 2
  IF ~~ THEN REPLY #56959 /* ~Ignore him and pass on by.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56961 /* ~"Pharod an' his court, cutter. Mind yerself in there, an' watch yer tongue; he's in as foul a mood as ever."~ */
  IF ~~ THEN REPLY #56963 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #56964 /* ~"Not much, now. Not even sure why I'm still standin' about, really." He shrugs.~ */
  IF ~~ THEN REPLY #56967 /* ~"Farewell."~ */ EXIT
END
