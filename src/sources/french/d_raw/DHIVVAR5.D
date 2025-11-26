// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49004 /* ~Tu vois un homme pâle debout au milieu de la pièce. Il est voûté et ne semble pas très en forme.~ */
  IF ~~ THEN REPLY #49005 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #49006 /* ~Laisse-le tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49007 /* ~"Encore toi… Je ne t'ai pas dit que j'avais besoin de me reposer ?"~ */
  IF ~~ THEN REPLY #49008 /* ~"Hmm… Qu'est-ce qui s'est passé ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49009 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49010 /* ~"Je me sens vraiment mal."~ */
  IF ~~ THEN REPLY #49011 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49012 /* ~"Je ne sais pas vraiment, mais je pense qu'un peu de repos me ferait du bien. Tu veux bien me laisser seul ?"~ */
  IF ~~ THEN REPLY #49013 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49014 /* ~"Tu veux bien me laisser tranquille pour que je puisse me reposer ? Ça ira mieux si je me repose un peu."~ */
  IF ~~ THEN REPLY #49015 /* ~"Au revoir."~ */ EXIT
END
