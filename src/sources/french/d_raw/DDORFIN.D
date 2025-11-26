// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORFIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORFIN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57994 /* ~Tu aperçois un jeune homme musclé portant des vêtements de travail sales. Il vérifie le contenu de plusieurs caisses et le compare avec une liste.~ */
  IF ~~ THEN REPLY #57996 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #57998 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58000 /* ~Il s'arrête un moment avant de se retourner pour te faire face. "Oui ? Je peux t'aider ?"~ */
  IF ~~ THEN REPLY #58001 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58007 /* ~"Non, pas vraiment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #58009 /* ~Il regarde rapidement aux alentours. "D'accord…"~ */
  IF ~~ THEN REPLY #58010 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58012 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #58014 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58016 /* ~"Je cherche un deva. On m'a dit qu'il était à Maudith."~ */ GOTO 9
  IF ~~ THEN REPLY #58017 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58019 /* ~"Je suis Dorfin, matois. Je suis magasinier ici." Il te sourit amicalement.~ */
  IF ~~ THEN REPLY #58021 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58022 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58024 /* ~"Inventaire." Il fronce les sourcils. "Pour la troisième fois ce mois-ci, en plus."~ */
  IF ~~ THEN REPLY #58025 /* ~"Est-ce que c'est inhabituel ?"~ */ GOTO 5
  IF ~~ THEN REPLY #58027 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58029 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58030 /* ~Il soupire. "Non, le patron est un vrai esclavagiste. Il nous fait travailler dur et nous fiche rarement la paix." Il hausse les épaules. "Ça permet de vivre."~ */
  IF ~~ THEN REPLY #58031 /* ~"Si c'est un esclavagiste, pourquoi travailles-tu pour lui ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58033 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58034 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58035 /* ~Il se rapproche pour murmurer. "On a un jour de congé par semaine… sans réduction de paye…. c'est pour ça qu'on se plaint pas."~ */
  IF ~~ THEN REPLY #58037 /* ~"Intéressant. Pourquoi fait-il cela ?"~ */ GOTO 7
  IF ~~ THEN REPLY #58038 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58040 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58042 /* ~Il hausse les épaules. "J'en ai aucune idée et je m'en fiche. Ça me change du turbin."~ */
  IF ~~ THEN REPLY #58043 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58044 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58045 /* ~Il te regarde d'un air troublé puis hausse les épaules. "C'est juste un entrepôt. On stocke les trucs habituels. Des outils, des armes, de la nourriture, et d'autres choses…"~ */
  IF ~~ THEN REPLY #58046 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58048 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58049 /* ~"Vraiment ?" Il paraît surpris. "J'arrive pas à imaginer… je veux dire, qu'est-ce qu'un deva serait venu faire ici ?" Il s'interrompt un instant, puis lâche un rire sec. "Ha ! À moins que ce soit pour nous faire goûter à la *justice divine*, bien sûr…"~ */
  IF ~~ THEN REPLY #58051 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 10
  IF ~~ THEN REPLY #58052 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58054 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58055 /* ~"Les citoyens de Maudith ne sont pas connus pour leur bonté et leur générosité. Un deva est bien trop bon pour une telle ville. Il y a aucune raison pour qu'il y en ait un ici, à moins qu'il ou elle ait été envoyé par un dieu qui l'aurait chargé de délivrer la justice *divine* à sa place."~ */
  IF ~~ THEN REPLY #58057 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58058 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58059 /* ~Tu aperçois Dorfin, le magasinier. Il te fait un signe de tête. "Salut à nouveau, matois."~ */
  IF ~~ THEN REPLY #58062 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58064 /* ~"Peu importe. Au revoir."~ */ EXIT
END
