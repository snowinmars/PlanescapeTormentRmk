// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_CLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_CLERK~

IF ~  Global("S_Stone","AR0603",0)
~ THEN BEGIN 0 // from:
  SAY #46336 /* ~La voix douce et posée de l'homme est en osmose avec son air distingué : "Bonjour. Es-tu venu utiliser l'une de nos pierres sensorielles ?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46337 /* ~"Oui."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46359 /* ~"Oui."~ */ GOTO 6
  IF ~~ THEN REPLY #46360 /* ~"Non, mais j'avais des questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #46361 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 20.2
  SAY #46362 /* ~L'homme hoche la tête. "Tu es ici au sensorium public, dont les salles proposent au public des pierres enregistreuses ou sensorielles. Chacune d'elles contient une ou plusieurs sensations bien spécifiques, qu'il est possible de ressentir à volonté. Les Sensats peuvent utiliser les pierres à leur gré, mais les visiteurs doivent acquitter une somme modique à chaque fois. Est-ce que ça répond à tes interrogations ?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46363 /* ~"Dans l'ensemble, oui. Et maintenant, j'aimerais bien utiliser l'une des pierres."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46364 /* ~"Dans l'ensemble, oui. Et maintenant, j'aimerais bien utiliser l'une des pierres."~ */ GOTO 6
  IF ~~ THEN REPLY #46365 /* ~"Non…"~ */ GOTO 2
  IF ~~ THEN REPLY #46366 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #46367 /* ~"Dans ce cas, je ne puis t'aider. À moins que tu ne souhaites utiliser l'une de nos pierres, bien sûr…"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46368 /* ~"Oui."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46369 /* ~"Oui."~ */ GOTO 6
  IF ~~ THEN REPLY #46370 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0 4.7 20.0
  SAY #46371 /* ~Tout sourire, l'homme te détaille les diverses sensations proposées au public.

"Est-ce que l'une d'elles t'attire ?"~ */
  IF ~~ THEN REPLY #46372 /* ~"La 'Douleur inévitable' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46373 /* ~"'L'Amour tendre' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46374 /* ~"'L'Ennui assommant' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46375 /* ~"'L'Émerveillement' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46376 /* ~"'L'Impatience dévorante' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46377 /* ~"La 'Reddition finale' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46378 /* ~"Le 'Désir surnaturel' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46379 /* ~"Est-ce qu'il n'y en aurait pas d'autres ?"~ */ GOTO 4
  IF ~~ THEN REPLY #46380 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.7 5.6
  SAY #46381 /* ~L'homme hoche la tête et te parle de plusieurs sensations proposées au public.

"Est-ce que l'une d'elles t'attire ?"~ */
  IF ~~ THEN REPLY #46382 /* ~"La 'Psychose' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46383 /* ~"La 'Jalousie larvée' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46384 /* ~"La 'Haine farouche' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46385 /* ~"La 'Jubilation' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46386 /* ~"'L'Euphorie craintive' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46387 /* ~"La 'Farouche détermination' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46388 /* ~"La 'Totale stupéfaction' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46389 /* ~"En quoi consistent, les dernières, exactement ?"~ */ GOTO 3
  IF ~~ THEN REPLY #46390 /* ~"Il y en a d'autres ?"~ */ GOTO 5
  IF ~~ THEN REPLY #46391 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.8
  SAY #46392 /* ~Tout sourire, l'homme hoche la tête et évoque les dernières sensations disponibles.

"Est-ce que l'une d'elles t'attire ?"~ */
  IF ~~ THEN REPLY #46393 /* ~"Le 'Regret indicible' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46394 /* ~"Le 'Choc et la terrible vengeance' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46395 /* ~"'L'Horreur naissante' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46396 /* ~"'L'Indescriptible frustration' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46397 /* ~"'Le plus grand des secrets' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46398 /* ~"La 'Lycanthropie' fera parfaitement l'affaire."~ */ DO ~SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46399 /* ~"Quelles sont les dernières sensations que tu as décrites ?"~ */ GOTO 4
  IF ~~ THEN REPLY #46400 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1 1.1 2.1 20.1
  SAY #46401 /* ~"Nous proposons actuellement plus d'une douzaine d'expériences sensorielles, ainsi que six autres qui sont plus… disons, extravagantes. Utiliser une pierre classique coûte dix pièces de cuivre, contre cinquante pour celles qui sont plus élaborées. Est-ce que tu préfères que je te parle plutôt des sensations classiques ou extravagantes ?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #46402 /* ~"Les classiques…"~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46403 /* ~"Les extravagantes…"~ */ GOTO 9
  IF ~~ THEN REPLY #46404 /* ~"Ni l'un ni l'autre, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.7 9.6
  SAY #46405 /* ~Tout sourire, l'homme te détaille les diverses sensations proposées au public.

"Est-ce que l'une d'elles t'attire ?"~ */
  IF ~~ THEN REPLY #46406 /* ~"La 'Douleur inévitable' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46407 /* ~"'L'Amour tendre' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46408 /* ~"'L'Ennui assommant' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46409 /* ~"'L'Émerveillement' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46410 /* ~"'L'Impatience dévorante' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46411 /* ~"La 'Reddition finale' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46412 /* ~"Le 'Désir surnaturel' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46413 /* ~"Je voudrais en savoir plus sur les autres…"~ */ GOTO 8
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46414 /* ~"À quoi ressemblent les extravagantes ?"~ */ GOTO 9
  IF ~~ THEN REPLY #46415 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7
  SAY #46416 /* ~L'homme hoche la tête et te parle de plusieurs sensations proposées au public.

"Est-ce que l'une d'elles t'attire ?"~ */
  IF ~~ THEN REPLY #46417 /* ~"La 'Psychose' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46418 /* ~"La 'Jalousie larvée' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46419 /* ~"La 'Haine farouche' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46420 /* ~"La 'Jubilation' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46421 /* ~"'L'Euphorie craintive' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46422 /* ~"La 'Farouche détermination' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46423 /* ~"La 'Totale stupéfaction' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46424 /* ~"Attends… décris-moi une nouvelle fois les dernières…"~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46425 /* ~"Pourrais-tu m'en dire davantage au sujet des extravagantes ?"~ */ GOTO 9
  IF ~~ THEN REPLY #46426 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.8 8.8
  SAY #46427 /* ~L'homme hoche la tête et évoque les sensations plus élaborées.

"Est-ce que l'une d'elles t'attire ?"~ */
  IF ~~ THEN REPLY #46428 /* ~"Le 'Regret indicible' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46429 /* ~"Le 'Choc et la terrible vengeance' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46430 /* ~"'L'Horreur naissante' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46431 /* ~"'L'Indescriptible frustration' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46432 /* ~"'Le plus grand des secrets' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46433 /* ~"La 'Lycanthropie' fera parfaitement l'affaire."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46434 /* ~"Pourrais-tu me parler des classiques ?"~ */ GOTO 7
  IF ~~ THEN REPLY #46435 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 5.3 9.0 9.3
  SAY #46436 /* ~"Excellent choix. La pierre que tu souhaites utiliser se trouve dans l'une de nos plus grandes salles. C'est la troisième vers la gauche au sommet de l'escalier. La pierre est de couleur rouge-orange."~ */
  IF ~~ THEN REPLY #46437 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.4 9.1 9.4
  SAY #46438 /* ~"Excellent choix. La pierre que tu souhaites utiliser se trouve dans l'une de nos plus grandes salles. C'est la deuxième vers la gauche au sommet de l'escalier. La pierre est de couleur violette."~ */
  IF ~~ THEN REPLY #46439 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2 5.5 9.2 9.5
  SAY #46440 /* ~"Merveilleux. La pierre que tu as choisie se trouve dans l'une de nos plus grandes salles. C'est la première vers la gauche au sommet de l'escalier. La pierre est de couleur bleu-violet."~ */
  IF ~~ THEN REPLY #46441 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 4.0 7.0 8.0
  SAY #46442 /* ~"Bien. La pierre que tu as choisie se trouve dans l'une de nos petites salles. C'est la première vers la droite au sommet de l'escalier. La pierre est de couleur vert-jaune."~ */
  IF ~~ THEN REPLY #46443 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.1 4.1 7.1 8.1
  SAY #46444 /* ~"Bon choix. La pierre qui a retenu ton intérêt se trouve dans l'une de nos petites salles. C'est la deuxième vers la droite au sommet de l'escalier. La pierre est de couleur bleu pâle."~ */
  IF ~~ THEN REPLY #46445 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.2 4.2 7.2 8.2
  SAY #46446 /* ~"Bon choix. La pierre sur laquelle tu as arrêté ta décision se trouve dans l'une de nos petites salles. C'est la troisième vers la droite au sommet de l'escalier. La pierre est de couleur violette."~ */
  IF ~~ THEN REPLY #46447 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.3 4.3 7.3 8.3
  SAY #46448 /* ~"Bon choix. La pierre qui a retenu ton intérêt se trouve dans l'une de nos petites salles. C'est la quatrième vers la droite au sommet de l'escalier. La pierre est de couleur vert-jaune."~ */
  IF ~~ THEN REPLY #46449 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.4 4.4 7.4 8.4
  SAY #46450 /* ~"Bon choix. La pierre sur laquelle tu as arrêté ta décision se trouve dans l'une de nos petites salles. C'est la cinquième vers la droite au sommet de l'escalier. La pierre est de couleur rouge-orange."~ */
  IF ~~ THEN REPLY #46451 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.5 4.5 7.5 8.5
  SAY #46452 /* ~"Bon choix. La pierre qui a retenu ton intérêt se trouve dans l'une de nos petites salles. C'est la sixième vers la droite au sommet de l'escalier. La pierre est de couleur violette."~ */
  IF ~~ THEN REPLY #46453 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.6 4.6 7.6 8.6
  SAY #46454 /* ~"Bon choix. La pierre sur laquelle tu as arrêté ta décision se trouve dans l'une de nos petites salles. C'est la septième vers la droite au sommet de l'escalier. La pierre est de couleur bleu pâle."~ */
  IF ~~ THEN REPLY #46455 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("S_Stone","AR0603",0)
~ THEN BEGIN 20 // from:
  SAY #46456 /* ~"J'espère que tu es satisfait de ton expérience sensorielle. Qu'est-ce que je peux faire d'autre pour toi ?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46457 /* ~"Je voudrais pouvoir bénéficier d'une autre séance."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46458 /* ~"Je voudrais pouvoir bénéficier d'une autre séance."~ */ GOTO 6
  IF ~~ THEN REPLY #46459 /* ~"J'avais quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #46460 /* ~"Rien. Au revoir."~ */ EXIT
END
