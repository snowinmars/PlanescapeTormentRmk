// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAILEENA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAILEENA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58096 /* ~Tu aperçois une jeune femme portant des vêtements de travail sales. Elle te salue de la tête.~ */
  IF ~~ THEN REPLY #58098 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58099 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58100 /* ~"Salut… besoin de quelque chose ?"~ */
  IF ~~ THEN REPLY #58101 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58102 /* ~"Non, pas vraiment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.0 10.0
  SAY #58103 /* ~"D'accord."~ */
  IF ~~ THEN REPLY #58104 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58105 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #58106 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58107 /* ~"Je cherche un deva. On m'a dit qu'il était à Maudith."~ */ GOTO 9
  IF ~~ THEN REPLY #58108 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58109 /* ~"Mon nom est Aileena."~ */
  IF ~~ THEN REPLY #58110 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58111 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58112 /* ~"Je traite les commandes. Je reçois des commandes de marchandises des commerçants de toute la cité. Je collecte les marchandises et les prépare pour l'expédition."~ */
  IF ~~ THEN REPLY #58113 /* ~"Ça semble être un travail intéressant."~ */ GOTO 5
  IF ~~ THEN REPLY #58114 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58115 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58116 /* ~Elle sourit. "Il l'est…" Elle soupire et hausse les épaules. "Sinon, je ne le ferais sûrement pas."~ */
  IF ~~ THEN REPLY #58117 /* ~"Pourquoi ça ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58118 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58119 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58120 /* ~Elle fronce les sourcils en réfléchissant. "Eh bien… c'est pas un boulot facile, et ça devrait être fait par plus d'une personne. Mais le patron est un fils de garce qui refuse d'embaucher."~ */
  IF ~~ THEN REPLY #58121 /* ~"Alors pourquoi restes-tu ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #58122 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58123 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58124 /* ~Elle sourit à nouveau. "Le patron, Devore, est peut-être radin, mais il a ses bons côtés. Il nous donne un jour de congé payé par semaine !"~ */
  IF ~~ THEN REPLY #58125 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58126 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58127 /* ~Elle hausse les épaules. "Y'a rien à dire. Si t'as vu un entrepôt, tu les as tous vus. Celui-ci n'est pas différent des autres."~ */
  IF ~~ THEN REPLY #58128 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58129 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58130 /* ~Elle te regarde un instant d'un air confus. "J'allais dire que t'es complètement azimuté de fouiller Maudith… mais je me souviens de quelque chose à propos d'un deva." Elle s'interrompt. "Je ne sais plus vraiment de quoi il s'agit. Tu devrais aller te renseigner au bâtiment administratif, qui se trouve sur la place."~ */
  IF ~~ THEN REPLY #58131 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58132 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58133 /* ~Tu aperçois Aileena, l'employée de l'entrepôt. Elle te salue et sourit à ton approche. "Rebonjour. Quoi de neuf ?"~ */
  IF ~~ THEN REPLY #58134 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58135 /* ~"Rien, au revoir."~ */ EXIT
END
