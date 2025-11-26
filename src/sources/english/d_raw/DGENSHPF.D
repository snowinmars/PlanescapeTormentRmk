// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36034 /* ~You see a woman leisurely examining the wares. ~ */
  IF ~~ THEN REPLY #36035 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36036 /* ~Ignore the woman.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36037 /* ~She glances at you. "Yes, cutter?"~ */
  IF ~~ THEN REPLY #36038 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36039 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36040 /* ~She waves you away. "I have no time for this, cutter. Leave me be." She turns away from you.~ */
  IF ~~ THEN REPLY #36041 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36042 /* ~The shopper notices your approach and turns her back to you. She ignores your attempts to talk to her.~ */
  IF ~~ THEN REPLY #36043 /* ~Leave.~ */ EXIT
END
