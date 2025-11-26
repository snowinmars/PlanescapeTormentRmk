// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVGGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVGGRD~

IF ~  !Dead("Barr")
~ THEN BEGIN 0 // from:
  SAY #56938 /* ~The guard gives you a once-over with bored, half-closed eyes. "If ya want ta use the gate, Barr's yer cutter..." He nods towards Barr, standing in front of the gate. "...if not, then leave me be, will ya?" He looks away from you.~ */
  IF ~~ THEN REPLY #56939 /* ~Leave.~ */ EXIT
END

IF ~  Dead("Barr")
~ THEN BEGIN 1 // from:
  SAY #56940 /* ~The guard yawns as he looks you over. "Hope ya weren't wantin' ta use the gate, berk... with Barr dead, no one knows how ta work the thing." He looks away from you.~ */
  IF ~~ THEN REPLY #56941 /* ~Leave.~ */ EXIT
END
