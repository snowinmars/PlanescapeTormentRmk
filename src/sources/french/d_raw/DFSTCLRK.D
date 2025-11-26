// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSTCLRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSTCLRK~

IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49532 /* ~La séduisante jeune femme sourit gentiment. "Je peux faire quelque chose pour toi ?"~ */
  IF ~~ THEN REPLY #49533 /* ~"Qu'est-ce que je dois faire pour entrer dans l'une de ces salles ?"~ */ GOTO 1
  IF ~~ THEN REPLY #49534 /* ~"Est-ce que je pourrais me reposer ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #49535 /* ~"Pas pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49536 /* ~"Tu dois être membre de la Société des Sensations, parrainé par Écharde. Il se trouve à l'entrée de la Salle des Fêtes, si tu veux lui parler."~ */
  IF ~~ THEN REPLY #49537 /* ~"Mais est-ce que je pourrais me reposer ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #49538 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #49539 /* ~"La Salle des Fêtes loue des chambres libres à la nuit. Tu pourrais t'y reposer, s'il y en a une de disponible. Veux-tu que je me renseigne, monsieur ?"~ */
  IF ~~ THEN REPLY #49540 /* ~"Oui, vas-y."~ */ DO ~StartStore("Festhall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64176 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
HasItem("PCs_Key",Myself)
~ THEN BEGIN 3 // from:
  SAY #49541 /* ~La séduisante jeune femme sourit gentiment. "Bonjour, monsieur." Elle ferme les yeux et feuillette un grand livre, s'arrêtant sur ce qui te semble être une page ouverte au hasard avant de rouvrir les yeux. "Ah… voilà la clé de ta chambre…" Elle te tend une petite clé. "Ça fait longtemps que la chambre de l'est attend ton retour. Tu veux te reposer un peu ?"~ */
  IF ~~ THEN REPLY #49542 /* ~"Oui, ce serait bien."~ */ DO ~GiveItem("PCs_Key",Protagonist)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49543 /* ~"Non… Mais qu'est-ce que tu veux dire par 'ça fait longtemps qu'elle attend mon retour' ?"~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #49544 /* ~"Pas maintenant. Au revoir."~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #49545 /* ~Le gratte-papier te regarde d'un air étrange. "Sur mon grand livre, je peux lire que c'est ta clé, et ce depuis un bon moment. Si ce n'est pas le cas, c'est donc que j'ai fait une erreur. Tu veux te reposer un peu ?"~ */
  IF ~~ THEN REPLY #49546 /* ~"Oui, ce serait bien."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49547 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
!HasItem("PCs_Key",Myself)
~ THEN BEGIN 5 // from:
  SAY #49548 /* ~La séduisante jeune femme sourit gentiment. "Bonjour. Tu veux te reposer un peu ?"~ */
  IF ~~ THEN REPLY #49549 /* ~"Oui, ce serait bien."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49550 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END
