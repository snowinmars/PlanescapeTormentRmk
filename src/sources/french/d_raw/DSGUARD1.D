// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37925 /* ~Tu vois un garde de l'Harmonium. Il te regarde avec méfiance tandis que tu t'approches.~ */
  IF ~~ THEN REPLY #37930 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37931 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37926 /* ~Il fait un signe de la tête. "Bonjour, citoyen."~ */
  IF ~~ THEN REPLY #37932 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37933 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37927 /* ~Il secoue la tête. "Je suis en service, citoyen. Je n'ai pas le temps de répondre à tes questions. Va voir quelqu'un d'autre."~ */
  IF ~~ THEN REPLY #37934 /* ~"Ce ne sera pas long."~ */ GOTO 3
  IF ~~ THEN REPLY #37935 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37928 /* ~Il te regarde en fronçant les sourcils. "Je n'ai pas le temps de répondre à tes questions, citoyen. Va-t'en."~ */
  IF ~~ THEN REPLY #37936 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37929 /* ~Tu vois un garde de l'Harmonium. Il fronce les sourcils en te voyant arriver. "Rebonjour, citoyen."~ */
  IF ~~ THEN REPLY #37937 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37938 /* ~"Au revoir."~ */ EXIT
END
