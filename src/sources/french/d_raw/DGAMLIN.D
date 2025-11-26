// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAMLIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAMLIN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
Global("Rauk","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49877 /* ~"Hé ! Qu'est-ce que tu fais dans ma tente ?!"~ */
  IF ~~ THEN REPLY #49878 /* ~"Bonjour…"~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49879 /* ~"Je cherche la tente de Rauk. Tu sais où elle est ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49880 /* ~"J'ai fait erreur. Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Rauk","Global",0)
~ THEN BEGIN 1 // from:
  SAY #49881 /* ~"La Dame t'a lancé une malédiction ! Par tous les plans ! Mais qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #49882 /* ~"Bonjour…"~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49883 /* ~"Je cherche la tente de Rauk. Tu sais où elle est ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49884 /* ~"Je m'en vais. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Rauk","Global",1)
~ THEN BEGIN 2 // from:
  SAY #49885 /* ~"Ouais, tu es un ami de Rauk, et moi aussi, je suis un ami de Rauk. Et alors ? C'est pour ça que je suis obligé de te parler."~ */
  IF ~~ THEN REPLY #49886 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #49887 /* ~"Tu déboules dans ma tente sans y avoir été convié et tout ce que tu trouves à dire, c'est 'Bonjour' !? Dégage, bige !"~ */
  IF ~~ THEN REPLY #49888 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #49889 /* ~"Zut ! Tu es un ami de Rauk ? Ouais, c'est une des tentes où il a élu domicile. Comme tu peux le voir, il n'y a plus de place. Alors, va dans une autre de ses tentes."~ */
  IF ~~ THEN REPLY #49890 /* ~"Au revoir."~ */ DO ~SetGlobal("Rauk","Global",1)
~ EXIT
END
