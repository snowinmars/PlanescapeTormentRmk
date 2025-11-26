// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36001 /* ~Tu aperçois une jeune femme. Elle paraît renfrognée et vexée. Elle sourit avec dédain alors que tu approches. "Et qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #36002 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36003 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36004 /* ~Elle fronce les sourcils et place les mains sur ses hanches. "Va caguer, bige ! Va voir ailleurs si j'y suis."~ */
  IF ~~ THEN REPLY #36005 /* ~"Qu'est-ce que ça veut dire ?"~ */ GOTO 2
  IF ~~ THEN REPLY #36006 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #36007 /* ~"Tu n'es pas accommodante."~ */ GOTO 4
  IF ~~ THEN REPLY #36008 /* ~"Bien, je crois que je vais m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36009 /* ~Elle te montre les dents et fait un geste vulgaire. "Ça veut dire fiche le camp, bibard ! J'ai rien à t'dire." Elle te défie du regard.~ */
  IF ~~ THEN REPLY #36010 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #36011 /* ~"Bien, je crois que je vais m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #36012 /* ~Elle te fait un sourire malveillant. "Et j'ai la réponse pour toi… Prends un bâton et va caguer !" Elle fait un autre geste vulgaire à ton attention.~ */
  IF ~~ THEN REPLY #36013 /* ~"Tu n'es pas accommodante."~ */ GOTO 4
  IF ~~ THEN REPLY #36014 /* ~"Bien, je crois que je vais m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.0
  SAY #36015 /* ~Elle rit. "Ouais, et j'suis même pas encore échauffée. Maintenant, enfonce-le là où l'soleil brille jamais !"~ */
  IF ~~ THEN REPLY #36016 /* ~"Bien, je crois que je vais m'en aller. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #36017 /* ~Tu aperçois une jeune femme. Elle paraît renfrognée et vexée. Elle sourit avec dédain alors que tu approches. "Et qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #36018 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #36019 /* ~"Rien, au revoir."~ */ EXIT
END
