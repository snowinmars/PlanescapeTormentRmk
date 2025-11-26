// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48800 /* ~Tu vois un homme qui semble examiner l'intérieur de la structure.~ */
  IF ~~ THEN REPLY #48801 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #48802 /* ~Laisse-le tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48803 /* ~"Encore toi… Je ne t'ai pas dit que cet endroit m'appartenait ? Débarrasse le plancher avant que je me fâche !"~ */
  IF ~~ THEN REPLY #48804 /* ~"Je voudrais bien voir ça !"~ */ GOTO 3
  IF ~~ THEN REPLY #48805 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48806 /* ~"J'ai découvert cet endroit le premier. Tu ferais bien de ne rien tenter si tu tiens à ta peau."~ */
  IF ~~ THEN REPLY #48807 /* ~"Qu'est-ce que tu comptes faire ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48808 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48809 /* ~"Tu l'auras cherché !"~ */
  IF ~~ THEN REPLY #48810 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
