// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49004 /* ~Du triffst auf einen blassen Mann, der mitten im Raum steht. Er krümmt sich und sieht nicht gerade gesund aus.~ */
  IF ~~ THEN REPLY #49005 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #49006 /* ~Laß den Mann in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49007 /* ~"Du schon wieder... Hab ich dir nicht gesagt, daß ich mich ausruhen muß?"~ */
  IF ~~ THEN REPLY #49008 /* ~"Hmm... Was ist passiert?"~ */ GOTO 4
  IF ~~ THEN REPLY #49009 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49010 /* ~"Mir geht's saumäßig."~ */
  IF ~~ THEN REPLY #49011 /* ~"Was ist passiert?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49012 /* ~"Ich bin mir nicht sicher, aber ich glaube, daß mir ein bißchen Ruhe guttut. Würdest du mich bitte allein lassen?"~ */
  IF ~~ THEN REPLY #49013 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49014 /* ~"Wärst du bitte so nett zu gehen, damit ich mich ausruhen kann? Vielleicht geht's mir dann besser."~ */
  IF ~~ THEN REPLY #49015 /* ~"Leb wohl."~ */ EXIT
END
