// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37939 /* ~Tu vois un garde de l'Harmonium. Il te fait signe de t'en aller en te voyant arriver. "Va-t'en, citoyen. Il n'y a rien à voir ici."~ */
  IF ~~ THEN REPLY #37944 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37945 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37940 /* ~Il te regarde en fronçant les sourcils. "Tu n'as pas compris que tu *devais* partir ?" Il te fixe. "Il n'y a rien à voir ici, va-t'en."~ */
  IF ~~ THEN REPLY #37946 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37947 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37941 /* ~Il te regarde d'un air moqueur. "Oh, tu as des questions. Eh bien, ça fait toute la différence…" Il te fixe. "Écoute, je n'ai pas le temps de répondre à tes questions. Va-t'en."~ */
  IF ~~ THEN REPLY #37948 /* ~"Ce ne sera pas long."~ */ GOTO 3
  IF ~~ THEN REPLY #37949 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37942 /* ~"Je n'ai pas une minute à t'accorder, citoyen. Va-t'en." Il te fait signe de t'en aller.~ */
  IF ~~ THEN REPLY #37950 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37943 /* ~Tu vois un garde de l'Harmonium. Il fronce les sourcils en te voyant arriver. "Je n'ai pas le temps de discuter, citoyen. Va-t'en."~ */
  IF ~~ THEN REPLY #37951 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37952 /* ~"Au revoir."~ */ EXIT
END
