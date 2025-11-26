// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOEGO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOEGO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
Global("Appearance","GLOBAL",1)
Global("Gate_Open","GLOBAL",0)
Global("Soego","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1431 /* ~Tu vois un homme aux traits tirés, vêtu d'une robe noire. Son visage étroit est extrêmement pâle ; on dirait qu'il n'a pas dormi. Ses épaules tombent et des poches pendent sous ses yeux injectés de sang. Il ne semble pas te voir… Il doit te confondre avec l'un des travailleurs cadavériques.~ */
  IF ~~ THEN REPLY #1432 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #1433 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~~ THEN REPLY #1434 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 1
  IF ~~ THEN REPLY #1435 /* ~"J'ai quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #1436 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #1437 /* ~La tête de l'Homme-Poussière se relève quand tu lui adresses la parole. "Pardon ? Tu m'as parlé ?"~ */
  IF ~~ THEN REPLY #1438 /* ~"Oui, c'est vrai. J'ai quelques questions…"~ */ JOURNAL #63982 /* ~J'ai rencontré un Homme-Poussière du nom de Soego à l'entrée de la Morgue. Il a l'air épuisé, comme s'il n'avait pas dormi depuis plusieurs semaines. À en juger par ses yeux enfoncés dans leurs orbites et la pâleur de sa peau, je dirais qu'il est malade.~ */ GOTO 2
  IF ~~ THEN REPLY #1439 /* ~"Non. Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_1","GLOBALLaw",-1)
~ JOURNAL #63982 /* ~J'ai rencontré un Homme-Poussière du nom de Soego à l'entrée de la Morgue. Il a l'air épuisé, comme s'il n'avait pas dormi depuis plusieurs semaines. À en juger par ses yeux enfoncés dans leurs orbites et la pâleur de sa peau, je dirais qu'il est malade.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1440 /* ~Adopte un silence de mort.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #1441 /* ~Adopte un silence de mort.~ */ GOTO 4
  IF ~~ THEN REPLY #1442 /* ~Va-t'en. Vite.~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 3.0 3.3 4.0 4.1
  SAY #1443 /* ~"Par les Puissances !" L'Homme-Poussière sursaute et t'observe attentivement. Ses yeux ne sont pas injectés de sang, mais ils ont une teinte rouge. "M'sieur, je dois avouer, et ce n'est pas très flatteur, que tu fais un zombi très convaincant." Il s'incline légèrement. "Je suis Soego. Qu'est-ce qui t'amène ici…" Il jette un coup d'œil à tes cicatrices. "…dans un tel état ?"~ */
  IF ~~ THEN REPLY #1444 /* ~"Ça ne te regarde pas."~ */ GOTO 6
  IF ~~ THEN REPLY #1445 /* ~"Je ne sais pas vraiment ce que je fais là. Je me suis réveillé là-haut sur l'une des dalles et ma mémoire est… un peu embrouillée."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1446 /* ~"Je tourne en rond dans ces salles sans réussir à trouver la sortie. Peux-tu m'aider ?"~ */ GOTO 8
  IF ~~ THEN REPLY #1447 /* ~"J'essaie de sortir d'ici."~ */ GOTO 13
  IF ~~ THEN REPLY #1448 /* ~"J'avais besoin de changer d'air."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #4999 /* ~Je n'ai pas de temps à perdre. Au revoir.~ */ GOTO 17
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #1449 /* ~L'Homme-Poussière t'observe un moment, puis il secoue la tête. "Des visions…" Il soupire et se frotte les yeux. "Ces accès de fièvre empirent…"~ */
  IF ~~ THEN REPLY #1450 /* ~"Ce n'est pas ton imagination. J'ai quelques questions…"~ */ JOURNAL #63982 /* ~J'ai rencontré un Homme-Poussière du nom de Soego à l'entrée de la Morgue. Il a l'air épuisé, comme s'il n'avait pas dormi depuis plusieurs semaines. À en juger par ses yeux enfoncés dans leurs orbites et la pâleur de sa peau, je dirais qu'il est malade.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1451 /* ~Brise-lui la nuque pendant que son attention est relâchée.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1452 /* ~Brise-lui la nuque pendant que son attention est relâchée.~ */ GOTO 22
  IF ~~ THEN REPLY #1453 /* ~"J'ai des questions."~ */ JOURNAL #63982 /* ~J'ai rencontré un Homme-Poussière du nom de Soego à l'entrée de la Morgue. Il a l'air épuisé, comme s'il n'avait pas dormi depuis plusieurs semaines. À en juger par ses yeux enfoncés dans leurs orbites et la pâleur de sa peau, je dirais qu'il est malade.~ */ GOTO 2
  IF ~~ THEN REPLY #1454 /* ~Pars discrètement.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3
  SAY #1455 /* ~L'Homme-Poussière t'observe attentivement et s'approche… Ses lèvres se retroussent et laissent voir une rangée de dents sales et pointues. Il commence à te renifler comme un rat.~ */
  IF ~~ THEN REPLY #1456 /* ~"Euh… mais qu'as-tu à me renifler comme ça ?"~ */ DO ~SetGlobal("Soego","Global",1)
~ JOURNAL #63982 /* ~J'ai rencontré un Homme-Poussière du nom de Soego à l'entrée de la Morgue. Il a l'air épuisé, comme s'il n'avait pas dormi depuis plusieurs semaines. À en juger par ses yeux enfoncés dans leurs orbites et la pâleur de sa peau, je dirais qu'il est malade.~ */ GOTO 2
  IF ~~ THEN REPLY #1457 /* ~"Écoute, j'ai quelques questions à te poser…"~ */ DO ~SetGlobal("Soego","Global",1)
~ JOURNAL #63982 /* ~J'ai rencontré un Homme-Poussière du nom de Soego à l'entrée de la Morgue. Il a l'air épuisé, comme s'il n'avait pas dormi depuis plusieurs semaines. À en juger par ses yeux enfoncés dans leurs orbites et la pâleur de sa peau, je dirais qu'il est malade.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1458 /* ~Brise-lui la nuque au moment où il se penche.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1459 /* ~Brise-lui la nuque au moment où il se penche.~ */ GOTO 22
  IF ~~ THEN REPLY #1460 /* ~Va-t'en. Vite.~ */ GOTO 15
END

IF ~~ THEN BEGIN 5 // from: 1.4
  SAY #1461 /* ~Tu te retournes, prêt à partir. L'Homme-Poussière laisse échapper un léger sifflement. Il s'approche et te renifle. "Par les Puissances !" L'Homme-Poussière recule, les yeux écarquillés. Tu remarques que ses yeux ne sont pas injectés de sang, mais qu'ils ont une teinte rouge. "M'sieur, je dois avouer, et ce n'est pas très flatteur, que tu fais un zombi très convaincant." Il s'incline légèrement. "Je suis Soego. Que veux-tu… dans un tel état ?"~ */
  IF ~~ THEN REPLY #1462 /* ~"Ça ne te regarde pas."~ */ GOTO 6
  IF ~~ THEN REPLY #1463 /* ~"Je ne sais pas vraiment ce que je fais là. Je me suis réveillé là-haut sur l'une des dalles et ma mémoire est… un peu embrouillée."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1464 /* ~"Je suis perdu et je cherche la sortie. Peux-tu m'aider ?"~ */ GOTO 8
  IF ~~ THEN REPLY #1465 /* ~"J'essaie de sortir d'ici."~ */ GOTO 13
  IF ~~ THEN REPLY #1466 /* ~"J'avais besoin de changer d'air."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #1467 /* ~"Je n'ai pas de temps à perdre. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 6 // from: 2.0 5.0 15.0 41.1 43.0 50.1 115.1
  SAY #1468 /* ~"Si, ça *me* regarde." Les yeux de Soego rougeoient ; les commissures de ses lèvres se convulsent de jouissance anticipée. "Peut-être…" Il ricane et laisse voir une rangée de dents sales et pointues. "Peut-être devrais-je appeler les gardes ? Oui… c'est ce que je vais faire."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1469 /* ~"Attends ! Je suis perdu… Je tourne en rond dans ces salles sans pouvoir trouver la sortie. Peux-tu m'aider ?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #1470 /* ~"Arrête ! N'appelle pas les gardes ! Je veux juste sortir d'ici… Peux-tu m'aider ?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1471 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1472 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 22
  IF ~~ THEN REPLY #1473 /* ~"Alors, fais-les venir. Je voudrais les rencontrer."~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 2.1 5.1 13.3 15.1 42.1 57.0
  SAY #1474 /* ~"Ah bon ?" L'Homme-Poussière te scrute. "Tu as *vraiment* l'air bien préparé. Je me demande comment tu aurais pu supporter une telle douleur… Tu *souffres* ? Tu sembles souffrir."~ */
  IF ~~ THEN REPLY #1475 /* ~"Comment je serais arrivé ici ?"~ */ GOTO 54
  IF ~~ THEN REPLY #1476 /* ~"Je n'ai pas de temps à perdre. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
  SAY #1477 /* ~Soego hoche la tête, et les commissures de ses lèvres se tordent. "Eh bien… certainement. Ces couloirs peuvent dérouter nos visiteurs. Mais sache que la Morgue est interdite après les neuf coups de cloche. Je t'ouvre la porte d'entrée."~ */
  IF ~  HasItem("KeyMo",Myself)
~ THEN REPLY #1478 /* ~"Merci."~ */ DO ~AddexperienceParty(500)
SetGlobal("Gate_Open","GLOBAL",1)
SetGlobal("Gate_Cut_Scene","AR0201",1)
StartCutSceneMode()
StartCutSceneEx("0201cut1",FALSE)
~ EXIT
  IF ~  !HasItem("KeyMo",Myself)
~ THEN REPLY #1479 /* ~"Merci."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 56.1 60.1
  SAY #1480 /* ~Soego met la main à sa ceinture, fouille un instant et siffle. "La clé !" Ses yeux rougeoient et ses lèvres se retroussent de colère… Son expression est presque bestiale. "Quelqu'un m'a volé la clé !" Il se tourne vers toi et grogne. "C'est toi ! C'est toi qui me l'as prise !"~ */
  IF ~~ THEN REPLY #1481 /* ~En le bluffant : "Euh… attends ! Pourquoi est-ce que je te la demanderais si je l'avais volée ?"~ */ GOTO 18
  IF ~~ THEN REPLY #1482 /* ~Mensonge : "Qu'est-ce que tu racontes ?! Je n'avais rien à voir là-dedans !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Soego_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1483 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1484 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 22
  IF ~~ THEN REPLY #1485 /* ~"Et si c'était le cas ? Que comptes-tu faire ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 10 // from:
  SAY #1486 /* ~Soego tire une grosse clé de sa ceinture et se dirige vers la porte d'entrée. Tu ne peux t'empêcher de remarquer sa démarche étrange… Il penche vers l'avant pour garder l'équilibre.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1487 /* ~"Il a une démarche bizarre."~ */ EXTERN ~DMORTE~ 101
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1488 /* ~Attends qu'il ouvre la porte.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #1489 /* ~Une fois qu'il a atteint la porte, Soego tourne la clé dans le verrou. L'instant d'après, on entend un grincement… le son traverse la salle principale, fait écho sur le sol en marbre.~ */
  IF ~~ THEN REPLY #1490 /* ~Attends qu'il revienne.~ */ DO ~SetDoorLocked("fakedoor",FALSE)
~ GOTO 12
END

IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
Global("Gate_Open","GLOBAL",1)
Global("Gate_Cut_Scene","AR0201",1)
~ THEN BEGIN 12 // from: 11.0
  SAY #1491 /* ~"Très bien. L'entrée principale est ouverte, mais tu ne pourras pas l'utiliser pour rentrer de nouveau."~ */
  IF ~~ THEN REPLY #1492 /* ~"Est-ce que je peux te poser quelques questions avant de partir ?"~ */ DO ~SetGlobal("Gate_Cut_Scene","AR0201",2)
~ GOTO 26
  IF ~~ THEN REPLY #1493 /* ~"Merci, Soego. Je m'en vais, maintenant."~ */ DO ~SetGlobal("Gate_Cut_Scene","AR0201",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
  SAY #1494 /* ~"Sortir ?" Soego fronce les sourcils. "Comment es-tu entré ?"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1495 /* ~"J'étais là pour un enterrement, pour présenter mes hommages. Je voudrais partir… mais j'ai l'impression que je tourne en rond. Peux-tu m'aider à trouver la sortie ?"~ */ GOTO 8
  IF ~  Global("Appearance","GLOBAL",2)
~ THEN REPLY #1496 /* ~"Je n'en suis pas sûr."~ */ GOTO 14
  IF ~  !Global("Appearance","GLOBAL",2)
~ THEN REPLY #1497 /* ~"Je n'en suis pas sûr."~ */ GOTO 61
  IF ~~ THEN REPLY #1498 /* ~"Je me suis réveillé là-haut sur l'une des dalles, et ma mémoire est… un peu embrouillée."~ */ GOTO 7
  IF ~~ THEN REPLY #1499 /* ~"Je n'ai pas le temps. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #1500 /* ~Soego fait claquer sa langue. "Très curieux." Il t'observe à nouveau. "Est-il possible que tu sois l'un des Engagés ?"~ */
  IF ~~ THEN REPLY #1501 /* ~"Euh, 'engagés' ?"~ */ GOTO 23
  IF ~~ THEN REPLY #1502 /* ~"Je n'ai pas de temps à perdre. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 4.4
  SAY #1503 /* ~Tu te retournes et tu t'apprêtes à partir. L'Homme-Poussière arrête de te renifler et laisse échapper un sifflement. "Par les Puissances !" L'Homme-Poussière se recule, les yeux écarquillés. Tu remarques que ses yeux ne sont pas injectés de sang, mais qu'ils ont une teinte rouge. "M'sieur, je dois avouer, et ce n'est pas très flatteur, que tu fais un zombi très convaincant." Il s'incline légèrement. "Je suis Soego. Que veux-tu… dans un tel état ?"~ */
  IF ~~ THEN REPLY #1504 /* ~"Ça ne te regarde pas."~ */ GOTO 6
  IF ~~ THEN REPLY #1505 /* ~"Je ne sais pas vraiment ce que je fais là. Je me suis réveillé là-haut sur l'une des dalles et ma mémoire est… un peu embrouillée."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1506 /* ~"Je suis perdu et je cherche la sortie. Peux-tu m'aider ?"~ */ GOTO 8
  IF ~~ THEN REPLY #1508 /* ~"J'essaie de sortir d'ici."~ */ GOTO 13
  IF ~~ THEN REPLY #1509 /* ~"J'avais besoin de changer d'air."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #1510 /* ~"Je n'ai pas de temps à perdre. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 2.4 5.4 15.4
  SAY #1511 /* ~"Je vois…" Les yeux de Soego rougeoient ; les commissures de ses lèvres se convulsent de jouissance anticipée. "Peut-être…" Il ricane et laisse voir une rangée de dents sales et pointues. "Peut-être devrais-je appeler les gardes ? Oui… c'est ce que je vais faire."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1512 /* ~"Attends ! Je suis perdu… Je tourne en rond dans ces salles sans pouvoir trouver la sortie. Peux-tu m'aider ?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #1513 /* ~"Arrête ! N'appelle pas les gardes ! Je veux juste sortir d'ici… Peux-tu m'aider ?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1514 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1515 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 22
  IF ~~ THEN REPLY #1516 /* ~"Alors, fais-les venir. Je voudrais les rencontrer."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
  SAY #1517 /* ~Tu te retournes, prêt à partir. Soego siffle de colère… Soudain, il se reprend et lève la main. "Non, non, tu ne peux pas partir, je le crains. Quelque chose a disparu. Nous devons régler ce problème…" Les commissures de ses lèvres se convulsent et ses yeux rougeoient. "… peut-être devrais-je appeler les gardes. Oui… c'est ce que je vais faire."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #1518 /* ~"Attends ! Je suis perdu… Je tourne en rond dans ces salles sans pouvoir trouver la sortie. Peux-tu m'aider ?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #1520 /* ~"Arrête ! N'appelle pas les gardes ! Je veux juste sortir d'ici… Peux-tu m'aider ?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1521 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1522 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 22
  IF ~~ THEN REPLY #1523 /* ~"Alors, fais-les venir. Je voudrais les rencontrer."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
  SAY #1524 /* ~Soego recule d'un pas, et frappe trois fois dans les mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.~ */
  IF ~~ THEN REPLY #1525 /* ~"Alors très bien…"~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
  SAY #1526 /* ~Avant qu'il ait eu le temps de prononcer un mot, tu lui bloques les tempes dans tes mains, et tu lui retournes la tête vers la gauche d'un coup sec.~ */
  IF ~~ THEN REPLY #1528 /* ~"Je ne peux pas te laisser prévenir tes amis…"~ */ DO ~PlaySoundNotRanged("SPE_11")
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #1529 /* ~Son cou se brise et on entend un *craquement*… mais au lieu de tomber inerte, l'Homme-Poussière pousse un cri étouffé et parvient à se dégager.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1530 /* ~"Quoi… ?!"~ */ DO ~SetGlobal("Soego_Strangle","GLOBAL",1)
~ EXTERN ~DMORTE~ 100
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1531 /* ~"Quoi… ?!"~ */ DO ~SetGlobal("Soego_Strangle","GLOBAL",1)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #1532 /* ~L'Homme-Poussière a l'air aussi choqué que toi. Son regard est fou ; un bruit de gargouillement sort de sa gorge… tu es certain de lui avoir brisé le cou, car sa tête est retournée dans un angle peu naturel, mais il est encore en vie ! Tu regardes la scène, ébahi, et il frappe faiblement trois fois dans les mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.~ */
  IF ~~ THEN REPLY #1533 /* ~"Alors très bien…"~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
  SAY #1534 /* ~*Quelque chose* a dû alerter l'Homme-Poussière… Avant que tu puisses le frapper, il saute en arrière, les yeux rougeoyants et les babines retroussées. Dans un sifflement, il frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.~ */
  IF ~~ THEN REPLY #1535 /* ~"Alors très bien…"~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.0
  SAY #4792 /* ~"Certains ont signé le contrat permettant aux Hommes-Poussière d'utiliser leur corps après leur mort. Tu t'es peut-être emmêlé dans une confusion inhabituelle. Tu as l'air plus brillant que la plupart de nos zombis."~ */
  IF ~~ THEN REPLY #4793 /* ~"Les gens te vendent leur corps après leur mort ?"~ */ GOTO 24
  IF ~~ THEN REPLY #4794 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #4795 /* ~"Je n'ai pas de temps à perdre. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #4796 /* ~"Oh oui, en échange d'une petite somme de cuivre, beaucoup sont prêts à vendre le corps dont ils n'auront plus besoin après avoir atteint la Vraie Mort."~ */
  IF ~~ THEN REPLY #4797 /* ~"Que fais-tu de ces corps ?"~ */ GOTO 25
  IF ~~ THEN REPLY #4798 /* ~"Je… je vois. Ça t'ennuie si je te pose d'autres questions ?"~ */ GOTO 25
  IF ~~ THEN REPLY #4799 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #4800 /* ~"Les corps exécutent toutes sortes de menues tâches autour de la Morgue. Ils vont chercher des cadavres, nettoient le sol, nous aident à préparer les corps avant l'enterrement… des tâches relativement simples. Mais ils sont capables de suivre n'importe quelle instruction compliquée."~ */
  IF ~~ THEN REPLY #4801 /* ~"Eh bien, 'engagé' ou pas, comment ai-je fait pour arriver ici si j'étais en vie ?"~ */ GOTO 54
  IF ~~ THEN REPLY #4802 /* ~"Je… je vois. Ça t'ennuie si je te pose d'autres questions ?"~ */ GOTO 26
  IF ~~ THEN REPLY #4803 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 26 // from: 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
  SAY #4804 /* ~Soego hoche la tête. "Tu peux poser tes questions."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4805 /* ~"Je voudrais partir. Peux-tu me guider vers la sortie ?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4806 /* ~"Peux-tu me sortir d'ici ?"~ */ GOTO 13
  IF ~  Global("Vaxis","GLOBAL",1)
!Dead("Vaxis")
Global("Vaxis_Leave","GLOBAL",0)
Global("Betray_Vaxis","GLOBAL",0)
~ THEN REPLY #4807 /* ~"Sais-tu qu'au deuxième étage, il y a un cadavre qui n'est autre qu'un humain déguisé ?"~ */ GOTO 27
  IF ~~ THEN REPLY #4809 /* ~"Si je puis me permettre… tu te sens bien ? Tu as l'air à plat."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Soego_1","GLOBALGood",1)
~ GOTO 31
  IF ~  CheckStatLT(Protagonist,13,WIS)
Global("Vaxis_Exposes_Soego","GLOBAL",1)
~ THEN REPLY #4810 /* ~"Tu es Soego, c'est ça ? On m'a dit que tu étais un peu bizarre pour un Homme-Poussière. Que tu aimais les rats."~ */ DO ~SetGlobal("Soego_exposed","GLOBAL",1)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Vaxis_Exposes_Soego","GLOBAL",1)
~ THEN REPLY #4811 /* ~"Tu es Soego, c'est ça ? On m'a dit que tu étais un peu bizarre pour un Homme-Poussière. Que tu aimais les rats."~ */ GOTO 29
  IF ~  GlobalLT("Pharod","GLOBAL",1)
~ THEN REPLY #4832 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 33
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #4833 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ?"~ */ GOTO 37
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4834 /* ~"Peu importe. Je dois partir. Au revoir."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4835 /* ~"Peu importe. Je dois partir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY #4808 /* ~"Pardon ?"~ */
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",0)
~ THEN REPLY #4836 /* ~"Il y a un homme déguisé en cadavre là-haut. Je crois qu'il espionne les Hommes-Poussière."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",1)
~ GOTO 28
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",1)
~ THEN REPLY #4837 /* ~"Il y a un homme déguisé en cadavre là-haut. Je crois qu'il espionne les Hommes-Poussière."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Dhall_2","GLOBALGood",-3)
~ GOTO 28
  IF ~~ THEN REPLY #4838 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4839 /* ~"Peu importe. Je dois partir. Au revoir."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #916 /* ~"Peu importe. Je dois partir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #4840 /* ~"Quoi ? Pourquoi est-ce que quelqu'un… ?" La voix de Soego se réduit subitement à un sifflement. Ses lèvres se retroussent et révèlent une rangée de dents irrégulières. "Un Anarchiste. *Ici*. " Soudain, il semble se souvenir de ta présence, et il se reprend. "Merci de m'avoir informé. Je veillerai à ce que les gardes règlent cette affaire."~ */
  IF ~~ THEN REPLY #4852 /* ~"C'est rien. J'ai d'autres questions…"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4853 /* ~"Peu importe. Je dois partir. Au revoir."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4854 /* ~"Peu importe. Je dois partir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 29 // from: 26.5
  SAY #4855 /* ~Tu es sur le point de le dire, quand, soudain, tu t'arrêtes. Tu ressens comme un picotement en regardant Soego… Tu as le sentiment qu'il vaudrait mieux que tu ne dises rien.~ */
  IF ~~ THEN REPLY #4856 /* ~"On m'a dit que tu étais spécial, Soego. Que tu aimais les rats."~ */ GOTO 30
  IF ~~ THEN REPLY #4857 /* ~"Euh… dis-moi, je voudrais te demander quelque chose."~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4858 /* ~"Peu importe. Je dois partir. Au revoir."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4859 /* ~"Peu importe. Je dois partir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 30 // from: 26.4 29.0
  SAY #4860 /* ~Soego reste un moment sans rien dire ; il t'observe. Ses yeux brillent d'une lueur rouge, et il pousse un léger soupir. "Je crois que tu as abusé de l'hospitalité qui t'était offerte." À ta surprise, il recule d'un pas et tape dans ses mains à trois reprises. En guise de réponse, une énorme cloche en fer retentit à travers la Morgue.~ */
  IF ~~ THEN REPLY #4861 /* ~"Qu'est-ce que… ? Qu'est-ce que tu fais ?"~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #4862 /* ~"Puisque c'est comme ça, prépare-toi à mourir, Soego."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY #4863 /* ~Soego esquisse un faible sourire, et les coins de sa bouche tremblent légèrement. "J'ai récemment été mala… légèrement souffrant, rien de plus. Mon sommeil est parfois… agité."~ */
  IF ~~ THEN REPLY #4864 /* ~"Je peux faire quelque chose ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Soego_2","GLOBALGood",1)
~ GOTO 32
  IF ~~ THEN REPLY #4865 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4866 /* ~"Je vois. Bon, il faut que je m'en aille. Au revoir."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4867 /* ~"Je vois. Bon, il faut que je m'en aille. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #4868 /* ~Soego secoue la tête. "Non, non, merci de t'inquiéter pour moi… Ça ira." Il fronce légèrement les sourcils. "Est-ce que je peux faire autre chose pour toi ?"~ */
  IF ~~ THEN REPLY #4869 /* ~"Oui. J'ai d'autres questions…"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4870 /* ~"Non, je ne vais pas te déranger plus longtemps. Merci pour le renseignement."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4871 /* ~"Non, je ne vais pas te déranger plus longtemps. Merci pour le renseignement."~ */ GOTO 17
END

IF ~~ THEN BEGIN 33 // from: 26.6
  SAY #4872 /* ~"Pharod ? Bien sûr que je le connais." Il fronce les sourcils, et ses yeux brillent d'une lueur rouge. "Un esprit morbide. Aucun respect pour les morts, et encore moins pour les vivants. C'est un charognard. Un Récupérateur."~ */
  IF ~~ THEN REPLY #4873 /* ~"Un Récupérateur ?"~ */ GOTO 34
  IF ~~ THEN REPLY #4874 /* ~"Sais-tu où je peux le trouver ?"~ */ GOTO 36
  IF ~~ THEN REPLY #4875 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4876 /* ~"Je vois. Il vaudrait peut-être mieux que je m'en aille."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4877 /* ~"Je vois. Il vaudrait peut-être mieux que je m'en aille."~ */ GOTO 17
END

IF ~~ THEN BEGIN 34 // from: 33.0 36.0
  SAY #4878 /* ~"Les Récupérateurs gagnent leur vie en ramassant des corps qu'ils emmènent à la Morgue. Nous nous assurons de leur procurer un enterrement décent."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #4879 /* ~"Alors, si un Récupérateur trouve un corps… le mien, par exemple… il peut l'apporter ici pour te le vendre ?"~ */ GOTO 35
  IF ~~ THEN REPLY #4880 /* ~"Alors, ce Récupérateur, Pharod… Sais-tu où je pourrais le trouver ?"~ */ GOTO 36
  IF ~~ THEN REPLY #4881 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4882 /* ~"Je vois. Bon, il faut que je m'en aille. Au revoir."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4883 /* ~"Je vois. Bon, il faut que je m'en aille. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #4884 /* ~"Oui."~ */
  IF ~~ THEN REPLY #4885 /* ~"Hmmmm. Il faut absolument que je trouve ce Pharod. Sais-tu où je peux le trouver ?"~ */ GOTO 36
  IF ~~ THEN REPLY #4886 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4887 /* ~"Merci du tuyau. Au revoir."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4888 /* ~"Merci du tuyau. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 36 // from: 33.1 34.1 35.0
  SAY #4889 /* ~"Je sais qu'il réside dans la Ruche, le taudis situé aux abords de la Morgue, mais je ne sais pas où exactement. Les autres Récupérateurs le savent peut-être."~ */
  IF ~~ THEN REPLY #4890 /* ~"Que font les Récupérateurs déjà ?"~ */ GOTO 34
  IF ~~ THEN REPLY #4891 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4892 /* ~"Merci du tuyau. Au revoir."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4893 /* ~"Merci du tuyau. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 37 // from: 26.7
  SAY #4894 /* ~"Un journal ?" Soego semble troublé. "Non, je n'en ai pas vu."~ */
  IF ~~ THEN REPLY #4895 /* ~"Alors, tant pis. J'ai d'autres questions…"~ */ GOTO 26
  IF ~  Global("Gate_Open","GLOBAL",1)
~ THEN REPLY #4896 /* ~"Merci quand même. Au revoir."~ */ EXIT
  IF ~  Global("Gate_Open","GLOBAL",0)
~ THEN REPLY #4897 /* ~"Merci quand même. Au revoir."~ */ GOTO 17
END

IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
!Global("Appearance","GLOBAL",1)
Global("Gate_Open","GLOBAL",0)
Global("Soego","GLOBAL",0)
~ THEN BEGIN 38 // from:
  SAY #4898 /* ~Tu vois un homme à l'air fatigué vêtu d'une robe noire. Son visage étroit est extrêmement pâle, et il semble ne pas avoir dormi depuis longtemps : ses épaules sont basses, et il a des poches sous ses yeux injectés de sang. Il a l'air perdu dans ses pensées.~ */
  IF ~  GlobalLT("Appearance","GLOBAL",2)
~ THEN REPLY #66706 /* ~"Bonjour…"~ */ DO ~SetGlobal("Soego","Global",1)
~ JOURNAL #63982 /* ~J'ai rencontré un Homme-Poussière du nom de Soego à l'entrée de la Morgue. Il a l'air épuisé, comme s'il n'avait pas dormi depuis plusieurs semaines. À en juger par ses yeux enfoncés dans leurs orbites et la pâleur de sa peau, je dirais qu'il est malade.~ */ GOTO 39
  IF ~  Global("Appearance","GLOBAL",2)
~ THEN REPLY #66707 /* ~"Bonjour…"~ */ DO ~SetGlobal("Soego","Global",1)
~ JOURNAL #63982 /* ~J'ai rencontré un Homme-Poussière du nom de Soego à l'entrée de la Morgue. Il a l'air épuisé, comme s'il n'avait pas dormi depuis plusieurs semaines. À en juger par ses yeux enfoncés dans leurs orbites et la pâleur de sa peau, je dirais qu'il est malade.~ */ GOTO 113
  IF ~~ THEN REPLY #66708 /* ~Laisse-le à ses pensées.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #4904 /* ~"Bonjour…" L'homme se tourne vers toi et s'incline légèrement. Tu remarques soudain que ses yeux ne sont pas injectés de sang, mais simplement teintés de rouge. "Je suis Soego. Que puis-je…" Il semble soudain remarquer tes cicatrices, et les commissures de ses lèvres se tordent. "Pardon mais, tu es perdu ?"~ */
  IF ~~ THEN REPLY #4905 /* ~"Oui."~ */ GOTO 40
  IF ~~ THEN REPLY #4906 /* ~"Non."~ */ GOTO 41
  IF ~~ THEN REPLY #4907 /* ~"Non, je ne suis pas perdu. J'ai quelques questions…"~ */ GOTO 41
  IF ~~ THEN REPLY #4908 /* ~"Non. Je cherchais seulement la sortie. Au revoir."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #4909 /* ~"Eh bien, dans ce cas…" Les coins de la bouche de Soego tremblent de nouveau, comme par anticipation. "Je vais demander aux gardes de te raccompagner. Attends un instant." Il semble sur le point d'appeler les gardes.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4910 /* ~"Attends une minute ! S'il te plaît… Inutile d'appeler les gardes. J'étais là pour un enterrement, et maintenant je tourne en rond dans les salles… Pourrais-tu me guider vers la sortie, s'il te plaît ?"~ */ GOTO 8
  IF ~~ THEN REPLY #4911 /* ~"Non ! Je ne suis pas perdu - ce n'est pas ce que je voulais dire."~ */ GOTO 50
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4912 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4913 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 22
  IF ~~ THEN REPLY #4914 /* ~Va-t'en. Vite.~ */ GOTO 18
  IF ~~ THEN REPLY #4915 /* ~Attends.~ */ GOTO 18
END

IF ~~ THEN BEGIN 41 // from: 39.1 39.2 39.3
  SAY #4916 /* ~"Je ne me souviens pas de t'avoir laissé entrer." Soego te regarde d'un air soupçonneux, et ses yeux brillent d'une lueur rouge dans la lumière des lampes torches. "Puis-je te demander ce que tu fais ici ?"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4917 /* ~"J'étais là pour un enterrement, pour présenter mes hommages. Je voudrais partir… mais j'ai l'impression que je tourne en rond. Peux-tu m'aider à trouver la sortie ?"~ */ GOTO 8
  IF ~~ THEN REPLY #4918 /* ~"Ça ne te regarde pas."~ */ GOTO 6
  IF ~~ THEN REPLY #4919 /* ~"Je me suis réveillé sur une dalle de ta salle de préparation."~ */ GOTO 42
  IF ~~ THEN REPLY #4920 /* ~"Je suis là pour voir quelqu'un."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4921 /* ~"J'étais là pour un enterrement, mais je crois qu'il y a eu erreur."~ */ GOTO 53
  IF ~~ THEN REPLY #4922 /* ~Penche-toi comme pour lui murmurer quelque chose à l'oreille, puis au moment où il se penche à son tour, brise-lui la nuque.~ */ GOTO 51
  IF ~~ THEN REPLY #4923 /* ~Va-t'en. Vite.~ */ GOTO 18
END

IF ~~ THEN BEGIN 42 // from: 41.2 50.2 115.0
  SAY #4924 /* ~Il a l'air surpris. "Tu… tu t'es réveillé sur l'une des dalles, en haut ?"~ */
  IF ~~ THEN REPLY #4925 /* ~"Euh, non. Ce n'est pas ce que je voulais dire."~ */ GOTO 50
  IF ~~ THEN REPLY #4926 /* ~"Oui. Je sais que c'est difficile à croire, mais c'est la vérité : je me suis réveillé là-haut sur l'une des dalles."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Soego_1","GLOBALLaw",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 43 // from: 41.3 50.3
  SAY #4927 /* ~Soego acquiesce. "Qui viens-tu voir ici ? Je me ferai une joie de te guider."~ */
  IF ~~ THEN REPLY #4928 /* ~"Ça ne te regarde pas."~ */ GOTO 6
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #4929 /* ~"Je suis venu voir Dhall."~ */ GOTO 44
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #4930 /* ~"Je suis venu voir Deionarra."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Soego_Adahn","AR0201",0)
~ THEN REPLY #4931 /* ~Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"~ */ DO ~SetGlobal("Soego_Adahn","AR0201",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Soego_Adahn","AR0201",1)
~ THEN REPLY #4932 /* ~Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"~ */ GOTO 49
  IF ~~ THEN REPLY #4933 /* ~"Euh, personne. Ce n'est pas ce que je voulais dire."~ */ GOTO 50
END

IF ~~ THEN BEGIN 44 // from: 43.1
  SAY #4934 /* ~"Dhall ? Dhall le Scribe se trouve dans la salle de réception à l'étage supérieur." Les coins de la bouche de Soego tremblent légèrement. "Il est très occupé et plutôt en mauvaise santé. À moins que ce ne soit pour une affaire urgente, je ne le dérangerais pas si j'étais toi."~ */
  IF ~~ THEN REPLY #4935 /* ~"Qu'est-ce qui ne va pas chez Dhall ?"~ */ GOTO 46
  IF ~~ THEN REPLY #4936 /* ~"La salle de réception ?"~ */ GOTO 45
  IF ~~ THEN REPLY #4937 /* ~"Très bien. Ma visite sera brève. Au revoir."~ */ GOTO 62
END

IF ~~ THEN BEGIN 45 // from: 44.1
  SAY #4938 /* ~"Oui… la salle de réception est l'endroit où l'on amène les corps trouvés dans la cité. On les enregistre, puis on les prépare pour l'enterrement."~ */
  IF ~~ THEN REPLY #4939 /* ~"Qu'est-ce qui ne va pas chez Dhall ?"~ */ GOTO 46
  IF ~~ THEN REPLY #4940 /* ~"Merci pour tes explications. Ma visite à Dhall sera brève. Au revoir."~ */ GOTO 62
END

IF ~~ THEN BEGIN 46 // from: 44.0 45.0
  SAY #4941 /* ~"Oh, rien de grave. Dhall est…" Soego claque des dents. "…*vieux*. Sa longue dévotion dans le recensement des morts touche à sa fin. La maladie qu'il a contractée ne tardera pas à l'achever."~ */
  IF ~~ THEN REPLY #4942 /* ~"Très bien. Ma visite sera brève. Au revoir."~ */ GOTO 62
END

IF ~~ THEN BEGIN 47 // from: 43.2 53.2
  SAY #4943 /* ~"Deionarra ? Une femme de ce nom est enterrée dans la Salle de Commémoration du nord-ouest. C'est elle que tu cherches ?"~ */
  IF ~~ THEN REPLY #4944 /* ~"Oui… Est-ce que tu peux me dire ce qui lui est arrivé ?"~ */ GOTO 48
  IF ~~ THEN REPLY #4945 /* ~"Oui. Je vais tout de suite aller lui présenter mes respects."~ */ GOTO 62
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #4946 /* ~"Je ne sais pas exactement, mais je crois qu'elle est ici depuis un certain temps. Son père sait peut-être ce qui lui est arrivé… Il vient souvent ici depuis son bureau du Haut Quartier. Il voulait qu'elle soit enterrée dans cette Salle de Commémoration."~ */
  IF ~~ THEN REPLY #4947 /* ~"Merci pour tes indications. Je vais aller lui présenter mes respects."~ */ GOTO 62
END

IF ~~ THEN BEGIN 49 // from: 43.3 43.4 53.3 53.4
  SAY #4948 /* ~"Adahn…" Les yeux de Soego se plissent, et leur teinte rouge semble s'être accentuée. "Personne de ce nom, vivant ou mort, ne réside à la Morgue." Sa bouche tremble et, à ta surprise, il hume l'air pendant un instant.~ */
  IF ~~ THEN REPLY #4949 /* ~"Euh… alors, j'ai dû mal m'exprimer."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 40.1 42.0 43.5 49.0 53.1 57.1
  SAY #4950 /* ~Les coins de la bouche de Soego tremblent de nouveau, et ses yeux brillent. "Alors, que viens-tu faire ici ?"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4951 /* ~"J'étais là pour un enterrement, pour présenter mes hommages. Je voudrais partir… mais j'ai l'impression que je tourne en rond. Peux-tu m'aider à trouver la sortie ?"~ */ GOTO 8
  IF ~~ THEN REPLY #4952 /* ~"Ça ne te regarde pas."~ */ GOTO 6
  IF ~~ THEN REPLY #4953 /* ~"Je me suis réveillé sur une dalle de ta salle de préparation."~ */ GOTO 42
  IF ~~ THEN REPLY #4954 /* ~"Je suis là pour voir quelqu'un."~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4955 /* ~"J'étais là pour un enterrement."~ */ GOTO 53
  IF ~~ THEN REPLY #4956 /* ~Penche-toi comme pour lui murmurer quelque chose à l'oreille, puis au moment où il se penche à son tour, brise-lui la nuque.~ */ GOTO 51
  IF ~~ THEN REPLY #5028 /* ~Enfuis-toi.~ */ GOTO 18
END

IF ~~ THEN BEGIN 51 // from: 41.5 50.5 53.5
  SAY #4957 /* ~Soego fronce les sourcils en te voyant entrer, et tu remarques qu'il hume l'air, comme pour le goûter. Soudain, il plisse les yeux et semble sur le point d'appeler les gardes.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4958 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4959 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY #4960 /* ~Alors que tu t'avances vers lui, Soego recule. Ses yeux brillent d'une lueur rouge et il montre ses dents. Il tape dans ses mains à trois reprises. En guise de réponse, une énorme cloche en fer retentit à travers la Morgue.~ */
  IF ~~ THEN REPLY #4961 /* ~"Bon, d'accord…"~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 41.4 50.4
  SAY #4962 /* ~"Qui enterre-t-on ? Le service funèbre doit avoir lieu ailleurs dans la Morgue."~ */
  IF ~~ THEN REPLY #4963 /* ~"Tu as mal compris… L'enterrement était pour MOI."~ */ GOTO 57
  IF ~~ THEN REPLY #4964 /* ~"Pardon… Ce n'est pas ce que je voulais dire. Je ne connais pas le nom du défunt."~ */ GOTO 50
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #4965 /* ~"Elle s'appelle Deionarra."~ */ GOTO 47
  IF ~  Global("Soego_Adahn","AR0201",0)
~ THEN REPLY #4967 /* ~Mensonge : "Il s'appelle… euh, Adahn."~ */ DO ~SetGlobal("Soego_Adahn","AR0201",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  Global("Soego_Adahn","AR0201",1)
~ THEN REPLY #4968 /* ~Mensonge : "Il s'appelle… euh, Adahn."~ */ GOTO 49
  IF ~~ THEN REPLY #4969 /* ~Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.~ */ GOTO 51
  IF ~~ THEN REPLY #4970 /* ~Enfuis-toi.~ */ GOTO 18
END

IF ~~ THEN BEGIN 54 // from: 7.0 25.0
  SAY #4966 /* ~"Eh bien…" Soego plisse les yeux. Il semble troublé. "De toute évidence, une erreur a été commise. Il est possible que ta famille ou d'autres Hommes-Poussière t'aient amené ici, ou…" Soego soupire soudain, comme si une pensée désagréable venait de s'emparer de son esprit. "Ou l'un des *Récupérateurs*."~ */
  IF ~~ THEN REPLY #4971 /* ~"Les Récupérateurs ?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #4972 /* ~"Oui, les Récupérateurs… de véritables charognards qui nous ramènent les corps des morts. Ils t'ont sans doute cru mort…" Soego soupire, et ses yeux brillent. "… et ils sont tellement bornés qu'ils ne se seraient même pas donné la peine de vérifier avant de t'amener ici." Soego t'observe . "Si tu ne t'étais pas réveillé, tu aurais rejoint la Vraie Mort avant l'heure."~ */
  IF ~~ THEN REPLY #4973 /* ~"Alors, il y a eu un malentendu… et je voudrais partir. Tout de suite."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0 59.1
  SAY #4974 /* ~Soego acquiesce, et les coins de sa bouche tremblent. "Mais… bien sûr, bien sûr. Je vais t'ouvrir la porte d'entrée."~ */
  IF ~  HasItem("KeyMo",Myself)
~ THEN REPLY #4975 /* ~"D'accord."~ */ DO ~AddexperienceParty(500)
SetGlobal("Gate_Open","GLOBAL",1)
SetGlobal("Gate_Cut_Scene","AR0201",1)
StartCutSceneMode()
StartCutSceneEx("0201cut1",FALSE)
~ EXIT
  IF ~  !HasItem("KeyMo",Myself)
~ THEN REPLY #4976 /* ~"D'accord."~ */ GOTO 9
END

IF ~~ THEN BEGIN 57 // from: 53.0
  SAY #4977 /* ~"Toi ?"~ */
  IF ~~ THEN REPLY #4978 /* ~"Oui, *moi*. Je me suis réveillé là-haut sur l'une des dalles."~ */ GOTO 7
  IF ~~ THEN REPLY #4979 /* ~"Pardon… Ce n'est pas ce que j'ai voulu dire."~ */ GOTO 50
END

IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
Global("Gate_Open","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #4980 /* ~Alors que tu t'approches, Soego hume l'air et lève les yeux au ciel. Lorsqu'il te voit, il fronce les sourcils. "Je t'ai ouvert la porte. Pourquoi es-tu encore là ?"~ */
  IF ~~ THEN REPLY #4981 /* ~"J'aurai quelques questions à te poser avant de partir."~ */ GOTO 26
  IF ~~ THEN REPLY #4982 /* ~"Je vais vers la porte, maintenant. Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR0201")
Global("Soego","GLOBAL",1)
Global("Gate_Open","GLOBAL",0)
~ THEN BEGIN 59 // from:
  SAY #4983 /* ~Alors que tu t'approches, Soego hume l'air et lève les yeux au ciel. Lorsqu'il te voit, il s'incline légèrement. "As-tu trouvé ce que tu cherchais ?"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4984 /* ~"Oui, merci. Excuse-moi, je tourne en rond dans ces salles… Peux-tu m'aider à trouver la sortie ?"~ */ GOTO 60
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4985 /* ~"Oui. Je veux partir tout de suite. Peux-tu me conduire jusqu'à la sortie ?"~ */ GOTO 56
  IF ~~ THEN REPLY #4986 /* ~"Oui et je vais vers la porte. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #4987 /* ~Soego acquiesce, et les coins de sa bouche tremblent. "Mais… bien sûr. Ces lieux *peuvent* troubler les visiteurs. Je vais t'ouvrir la porte d'entrée."~ */
  IF ~  HasItem("KeyMo",Myself)
~ THEN REPLY #4988 /* ~"Merci."~ */ DO ~AddexperienceParty(500)
SetGlobal("Gate_Open","GLOBAL",1)
SetGlobal("Gate_Cut_Scene","AR0201",1)
StartCutSceneMode()
StartCutSceneEx("0201cut1",FALSE)
~ EXIT
  IF ~  !HasItem("KeyMo",Myself)
~ THEN REPLY #4989 /* ~"Merci."~ */ GOTO 9
END

IF ~~ THEN BEGIN 61 // from: 13.2
  SAY #4990 /* ~"Voilà qui est bien étrange." Les yeux de Soego brillent d'une lueur rouge, et les coins de sa bouche tremblent légèrement, comme par anticipation. "Peut-être que…" Il prend un air sarcastique, montrant des dents sales et tranchantes. "Peut-être que je devrais appeler les gardes ? Oui… oui, je crois que c'est ce que je vais faire."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4991 /* ~"Attends ! Je suis perdu… Je tourne en rond dans ces salles sans pouvoir trouver la sortie. Peux-tu m'aider ?"~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4992 /* ~"Arrête ! N'appelle pas les gardes ! Je veux juste sortir d'ici… Peux-tu m'aider ?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4993 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 19
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4994 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 22
  IF ~~ THEN REPLY #4995 /* ~"Alors, fais-les venir. Je voudrais les rencontrer."~ */ GOTO 18
END

IF ~~ THEN BEGIN 62 // from: 44.2 45.1 46.0 47.1 48.0
  SAY #4996 /* ~Soego acquiesce… et sa bouche tremble de nouveau. Il ne semble même pas s'en apercevoir. "Reviens quand tu auras présenté tes respects, et je t'ouvrirai la porte d'entrée. On ferme à neuf heures, alors tu devras quitter les lieux dès que tu auras terminé."~ */
  IF ~~ THEN REPLY #4997 /* ~"Tu sais, je pourrais le faire une autre fois. Tu peux me laisser sortir maintenant ?"~ */ GOTO 8
  IF ~~ THEN REPLY #4998 /* ~"Merci. Je reviendrai."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */
~  CreatureInArea("AR1500")
!Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 63 // from:
  SAY #21653 /* ~"Ah, un autre vivant. La plupart sont éliminés par les goules avant d'atteindre cette partie des catacombes ; tu as de la chance, très cher."~ */
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #21655 /* ~"Tu es Soego, de la Morgue. Que fais-tu ici ?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #21656 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 64
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #21657 /* ~"Où suis-je ?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 77
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #21658 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 78
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #21660 /* ~"Peut-être. Au revoir."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 71
END

IF ~~ THEN BEGIN 64 // from: 63.1 77.0 78.0
  SAY #21661 /* ~"Je suis Soego Cielmort, factotum des Hommes-Poussière. Je suis missionnaire en ces lieux." Il fait une demi-révérence.~ */
  IF ~~ THEN REPLY #21662 /* ~"Missionnaire ?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21663 /* ~"Que font les Hommes-Poussière ici ?"~ */ GOTO 66
  IF ~~ THEN REPLY #64595 /* ~"Où suis-je ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64596 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21665 /* ~"Bonjour et au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 65 // from: 64.0 72.2 73.2 74.0 101.3 104.1
  SAY #21666 /* ~"Oui, je suis venu dans ces catacombes, après avoir entendu une rumeur rapportant que des morts-vivants étaient *conscients* en ces lieux. J'espère pouvoir les sauver."~ */
  IF ~~ THEN REPLY #21667 /* ~"Les sauver ?"~ */ GOTO 67
  IF ~~ THEN REPLY #64597 /* ~"Je suis où ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64599 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21669 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 66 // from: 64.1 72.3 73.3 74.1 101.4 104.2 109.2
  SAY #21670 /* ~"Je suis le seul. Je suis venu dans ces catacombes, après avoir entendu une rumeur rapportant que des morts-vivants étaient *conscients* en ces lieux. J'espère pouvoir les sauver."~ */
  IF ~~ THEN REPLY #21671 /* ~"Les sauver ?"~ */ GOTO 67
  IF ~~ THEN REPLY #64600 /* ~"Je suis où ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64601 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21673 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0
  SAY #21674 /* ~"Oui, la passion les enchaîne à cette fausse vie. J'espère pouvoir leur apprendre à renoncer à ces passions et laisser cette fausse vie derrière eux pour atteindre la Vraie Mort."~ */
  IF ~~ THEN REPLY #21675 /* ~"Cette fausse vie ?"~ */ GOTO 68
  IF ~~ THEN REPLY #21676 /* ~"La Vraie Mort ?"~ */ GOTO 69
  IF ~~ THEN REPLY #21767 /* ~"Tu veux qu'ils meurent ?"~ */ GOTO 70
  IF ~~ THEN REPLY #64602 /* ~"Je suis où ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64603 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21770 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 68 // from: 67.0 69.0 70.0
  SAY #21771 /* ~"Ces… morts… sont si proches de la Vraie Mort… et pourtant ils s'accrochent à cette vie. Cette fausse vie est l'illusion de l'existence sur ce plan."~ */
  IF ~~ THEN REPLY #21772 /* ~"La Vraie Mort ?"~ */ GOTO 69
  IF ~~ THEN REPLY #21774 /* ~"Tu veux qu'ils meurent ?"~ */ GOTO 70
  IF ~~ THEN REPLY #64604 /* ~"Je suis où ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64605 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21776 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 69 // from: 67.1 68.0 70.1
  SAY #21777 /* ~"Une absence totale de passion. La Vraie Mort est la véritable vie après cette illusion d'existence. C'est cet endroit que ces morts doivent atteindre pour se libérer."~ */
  IF ~~ THEN REPLY #21779 /* ~"Qu'est-ce que cette 'fausse vie' dont tu as parlé ?"~ */ GOTO 68
  IF ~~ THEN REPLY #21780 /* ~"Tu veux qu'ils meurent ?"~ */ GOTO 70
  IF ~~ THEN REPLY #64606 /* ~"Je suis où ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64607 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21784 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 70 // from: 67.2 68.1 69.1
  SAY #21786 /* ~"Je leur souhaite de transcender ce plan d'existence, de se séparer de la passion. Ça peut les sauver."~ */
  IF ~~ THEN REPLY #21788 /* ~"Qu'est-ce que cette 'fausse vie' dont tu as parlé ?"~ */ GOTO 68
  IF ~~ THEN REPLY #21790 /* ~"Tu as parlé de la 'Vraie Mort' ?"~ */ GOTO 69
  IF ~~ THEN REPLY #64608 /* ~"Je suis où ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64609 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21794 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
  SAY #21799 /* ~"Accorde-moi un instant avant de partir. N'attaque pas les morts-vivants ici, dans les catacombes. Je les ai convaincus de ne pas vous toucher, tes amis et toi, alors ne brise pas la trêve en les attaquant. Ils se défendront, et ils sont… très nombreux. Tu peux revenir ici si tu as besoin de te reposer."~ */
  IF ~  NumInParty(1)
!Global("Visit_Doubtful","AR1500",1)
~ THEN REPLY #21800 /* ~"Attends… je peux me reposer, maintenant ?"~ */ JOURNAL #21805 /* ~Soego m'a conseillé de ne pas attaquer les morts-vivants des Nations Mortes, car ils ne me feront aucun mal tant que je les laisserai en paix.~ */ GOTO 84
  IF ~  NumInPartyGT(1)
!Global("Visit_Doubtful","AR1500",1)
~ THEN REPLY #64569 /* ~"Attends… pouvons-nous nous reposer maintenant ?"~ */ JOURNAL #21805 /* ~Soego m'a conseillé de ne pas attaquer les morts-vivants des Nations Mortes, car ils ne me feront aucun mal tant que je les laisserai en paix.~ */ GOTO 84
  IF ~~ THEN REPLY #64570 /* ~Pars.~ */ JOURNAL #21805 /* ~Soego m'a conseillé de ne pas attaquer les morts-vivants des Nations Mortes, car ils ne me feront aucun mal tant que je les laisserai en paix.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 63.0
  SAY #21806 /* ~"Ta mémoire est remarquable. Je ne suis plus en poste à la morgue… au lieu de cela, je suis devenu missionnaire en ces lieux."~ */
  IF ~  Global("Soego_Strangle","GLOBAL",1)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64547 /* ~"Mais je pensais t'avoir brisé la nuque…"~ */ GOTO 73
  IF ~  Global("Mortuary_Soego_Killed","GLOBAL",1)
~ THEN REPLY #21808 /* ~"Mais je pensais que je t'avais *tué*…"~ */ GOTO 73
  IF ~~ THEN REPLY #21809 /* ~"Missionnaire ?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21811 /* ~"Que font les Hommes-Poussière ici ?"~ */ GOTO 66
  IF ~~ THEN REPLY #64610 /* ~"Je suis où ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64611 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21813 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 73 // from: 72.0 72.1 109.0 109.1
  SAY #21814 /* ~"La blessure que tu m'as infligée n'était pas mortelle. J'ai rapidement récupéré… et réalisé que je souhaiterais m'éloigner de la morgue."~ */
  IF ~  Global("Soego_Strangle","GLOBAL",1)
~ THEN REPLY #21815 /* ~"Soego, je t'ai cassé le cou… c'est pas un coup mortel ?"~ */ GOTO 101
  IF ~~ THEN REPLY #21816 /* ~"Tu n'es pas en colère ?"~ */ GOTO 74
  IF ~~ THEN REPLY #21817 /* ~"Tu as dit que tu étais un missionnaire ?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21818 /* ~"Que font les Hommes-Poussière ici ?"~ */ GOTO 66
  IF ~~ THEN REPLY #64612 /* ~"Très bien… alors où suis-je ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64613 /* ~"Je… vois. Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21820 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 74 // from: 73.1 101.2 104.0
  SAY #21821 /* ~"Non… devrais-je l'être ? Je suis quelque peu déçu qu'il ne fût pas temps pour moi de quitter ces lieux. Néanmoins, tu ne devrais pas retourner à la morgue, car nombre de mes collègues factotums ne seront pas contents de te voir."~ */
  IF ~~ THEN REPLY #64614 /* ~"Tu as dit que tu étais un missionnaire ?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21823 /* ~"Que font les Hommes-Poussière ici ?"~ */ GOTO 66
  IF ~~ THEN REPLY #64615 /* ~"Je suis où ?"~ */ GOTO 77
  IF ~~ THEN REPLY #64616 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21825 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 75 // from:
  SAY #21716 /* ~"Ta mémoire est remarquable. Je ne suis plus en poste à la morgue… au lieu de cela, je suis devenu missionnaire en ces lieux. Tu ne devrais pas retourner à la morgue, car nombre de mes collègues factotums ne seront pas contents de te voir après ton attaque de nos quartiers généraux."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #21832 /* ~"Tu es déjà mort, Sans-Nom. Ressusciter était du plus… inconvenant."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from: 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
  SAY #21837 /* ~"Tu es dans les catacombes des Nations Mortes. Les gardes t'ont amené ici."~ */
  IF ~~ THEN REPLY #21840 /* ~"Qui es-tu ?"~ */ GOTO 64
  IF ~~ THEN REPLY #21841 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #21843 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 78 // from: 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
  SAY #21844 /* ~"Je ne sais pas. Demande à l'un des 'citoyens' d'ici."~ */
  IF ~~ THEN REPLY #21847 /* ~"Qui es-tu ?"~ */ GOTO 64
  IF ~~ THEN REPLY #21848 /* ~"Où suis-je ?"~ */ GOTO 77
  IF ~~ THEN REPLY #21850 /* ~"Peut-être. Au revoir."~ */ GOTO 71
END

IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */
~  CreatureInArea("AR1500")
Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 79 // from:
  SAY #21851 /* ~"Ah, quelqu'un pour se rallier à notre cause ! En tant qu'agent de Tant-en-Un, on m'a prévenu de ton arrivée. Nous avons besoin de toi pour trouver le chemin qui mène à la salle du trône du Roi Silencieux et le tuer. Fais-le, et Tant-en-Un te récompensera."~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
GlobalGT("Soego","GLOBAL",0)
GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #66181 /* ~"Soego… Emoric voulait savoir où tu te trouvais."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 110
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Soego","GLOBAL",0)
~ THEN REPLY #21852 /* ~"Attends, c'est toi Soego ? Emoric voulait savoir où tu étais."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ JOURNAL #21856 /* ~J'ai trouvé Soego. Il était atteint de lycanthropie, ce qui l'a conduit dans les catacombes. Son esprit ne lui appartenait déjà plus et il avait perdu ses croyances d'Homme-Poussière.~ */ GOTO 110
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
Global("Soego_Strangle","GLOBAL",1)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64623 /* ~"Attends une minute… ne t'ai-je pas brisé la nuque à la Morgue ?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 112
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
Global("Mortuary_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64624 /* ~"Attends une minute… je croyais t'avoir tué à la Morgue…"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 112
  IF ~  Global("Soego_Strangle","GLOBAL",0)
Global("Mortuary_Soego_Killed","GLOBAL",0)
!Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21853 /* ~"Comment est-ce que je peux trouver le Roi Silencieux ?"~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ JOURNAL #21857 /* ~Soego m'a dit qu'il ne savait pas comment pénétrer dans la salle du trône du Roi Silencieux. Mais il faudra bien que j'y parvienne si je veux tuer ce dernier.~ */ GOTO 80
  IF ~  Global("Soego_Strangle","GLOBAL",0)
Global("Mortuary_Soego_Killed","GLOBAL",0)
!Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21854 /* ~"Je vois. Au revoir, alors."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 71
END

IF ~~ THEN BEGIN 80 // from: 79.4 110.2 112.0
  SAY #21858 /* ~"Je ne sais pas… Je suis ici depuis longtemps et je ne trouve toujours pas d'accès à sa salle du trône. Peut-être auras-tu plus de chance, puisque tu n'es pas accablé par la haine et l'intolérance dont je suis la victime."~ */
  IF ~~ THEN REPLY #21860 /* ~"La haine et l'intolérance ?"~ */ GOTO 81
  IF ~~ THEN REPLY #21862 /* ~"Je vois. Alors, au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #21864 /* ~"Les opinions de ma faction sont populaires auprès de certains, mais pas tous. Les dignitaires les plus importants de cette civilisation ne les apprécient pas."~ */
  IF ~~ THEN REPLY #21870 /* ~"Je vois. Alors, au revoir."~ */ GOTO 71
END

IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */
~  CreatureInArea("AR1500")
Global("Met_Soego2","GLOBAL",1)
~ THEN BEGIN 82 // from:
  SAY #21913 /* ~"Ah, nous nous retrouvons."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Soego_Told","GLOBAL",0)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24206 /* ~"Le Roi Silencieux est mort et depuis un certain temps déjà. Il n'y a *plus* de Roi Silencieux."~ */ DO ~SetGlobal("Soego_Told","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 94
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Soego_Told","GLOBAL",0)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #21915 /* ~"Le Roi Silencieux est mort et depuis un certain temps déjà. Il n'y a *plus* de Roi Silencieux."~ */ DO ~SetGlobal("Soego_Told","GLOBAL",1)
~ JOURNAL #21926 /* ~J'ai interrogé Soego au sujet de son journal. Il s'est transformé en rat-garou et m'a attaqué.~ */ GOTO 94
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #21914 /* ~"C'est toi Soego ? Emoric voulait savoir où tu étais."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
~ GOTO 109
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #21916 /* ~"J'étais dans ta salle et j'ai vu ton journal."~ */ DO ~SetGlobal("Soego_Fled","GLOBAL",1)
Enemy()
~ JOURNAL #21926 /* ~J'ai interrogé Soego au sujet de son journal. Il s'est transformé en rat-garou et m'a attaqué.~ */ GOTO 100
  IF ~  Global("Doubtful_Skel","GLOBAL",1)
~ THEN REPLY #21917 /* ~"J'ai rencontré un squelette - ici, dans un des couloirs - qui semble à deux doigts de rechercher la Vraie Mort."~ */ DO ~SetGlobal("Doubtful_Skel","GLOBAL",2)
SetGlobal("Visit_Doubtful","AR1500",1)
~ GOTO 97
  IF ~  NumInParty(1)
!Global("Visit_Doubtful","AR1500",1)
~ THEN REPLY #21920 /* ~"J'ai besoin de repos."~ */ GOTO 84
  IF ~  NumInPartyGT(1)
!Global("Visit_Doubtful","AR1500",1)
~ THEN REPLY #21922 /* ~"Nous avons besoin de repos."~ */ GOTO 84
  IF ~~ THEN REPLY #21924 /* ~"J'ai des questions…"~ */ GOTO 83
  IF ~~ THEN REPLY #21925 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
  SAY #21943 /* ~"Je répondrai si je le peux."~ */
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
~ THEN REPLY #21944 /* ~"Parle-moi d'Hargrimm."~ */ GOTO 88
  IF ~  Global("Know_Acaste","GLOBAL",1)
~ THEN REPLY #21945 /* ~"Parle-moi d'Acaste."~ */ GOTO 89
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21946 /* ~"Parle-moi de Salie Marie."~ */ GOTO 90
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21947 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 91
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #21948 /* ~"Que sais-tu de cette 'civilisation' ?"~ */ GOTO 92
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #21949 /* ~"Que sais-tu de cette 'civilisation' ?"~ */ GOTO 93
  IF ~~ THEN REPLY #21951 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 71.0 71.1 82.5 82.6
  SAY #21954 /* ~"Bien sûr. Tu seras en sécurité dans cette chambre pendant que tu te reposes."~ */
  IF ~~ THEN REPLY #21956 /* ~"Merci…"~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #21958 /* ~"Bien sûr. Laisse-moi guérir quelques-unes de tes blessures."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #21963 /* ~"Bien sûr. Laissez-moi guérir vos blessures… celles de qui ?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #21969 /* ~"Et voilà. Personne d'autre ?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 88 // from: 83.0 91.0
  SAY #21975 /* ~"Un vieux têtu, mais à la piété et la dévotion admirables. C'est mon plus grand rival en ce lieu, et il veille sur cette civilisation depuis de nombreuses années. Ses passions naissent de sa piété et sa dévotion à la tâche… ce sont des qualités admirables, mais déplacées."~ */
  IF ~~ THEN REPLY #21976 /* ~"J'ai d'autres questions…"~ */ GOTO 83
  IF ~~ THEN REPLY #21977 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 83.1
  SAY #21978 /* ~"Acaste est une brute. Je crains que seul le Roi Silencieux ne la retienne. S'il venait à partir, les goules d'Acaste envahiraient bientôt les catacombes."~ */
  IF ~~ THEN REPLY #21979 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 91
  IF ~~ THEN REPLY #21980 /* ~"J'ai d'autres questions…"~ */ GOTO 83
  IF ~~ THEN REPLY #21981 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 83.2
  SAY #21982 /* ~"Salie Marie a bon cœur, mais elle est un peu lente. Je ne comprends pas grand-chose à ce qu'elle dit, mais les zombis et elle ne sont pas enclins à la violence."~ */
  IF ~~ THEN REPLY #21983 /* ~"J'ai d'autres questions…"~ */ GOTO 83
  IF ~~ THEN REPLY #21984 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 83.3 89.0
  SAY #21985 /* ~"Je n'ai jamais vu le Roi Silencieux. J'aimerais pouvoir te parler de lui, mais je ne l'ai jamais vu. On dit que sa salle du trône se trouve au-delà des portes enflammées, mais je n'ai pas le droit d'y entrer… Hargrimm, le haut-prêtre, ne m'y autorise pas."~ */
  IF ~~ THEN REPLY #21986 /* ~"Parle-moi de Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 88
  IF ~~ THEN REPLY #21987 /* ~"J'ai d'autres questions…"~ */ GOTO 83
  IF ~~ THEN REPLY #21988 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 83.4
  SAY #21989 /* ~"Ils sont ici depuis de nombreux siècles, je pense, et s'occupent de ceux qui sont morts dans leurs salles. Une telle dévotion à la tâche n'est plus nécessaire… c'est presque un crime."~ */
  IF ~~ THEN REPLY #21990 /* ~"J'ai d'autres questions…"~ */ GOTO 83
  IF ~~ THEN REPLY #21991 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 83.5
  SAY #21992 /* ~"Ils sont ici depuis de nombreux siècles, je pense, et s'occupent de ceux qui sont morts dans leurs salles. Une telle dévotion à la tâche n'est plus nécessaire… c'est presque un crime."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 220
END

IF ~~ THEN BEGIN 94 // from: 82.0 82.1
  SAY #21993 /* ~"Quoi ? Est-ce vrai ? Ah, Tant-en-Un te paierait sûrement pour ces informations…"~ */
  IF ~  !Global("CR_Vic","GLOBAL",1)
Global("Know_Many","GLOBAL",0)
~ THEN REPLY #25248 /* ~"Tant-en-Un ?"~ */ JOURNAL #25254 /* ~J'ai expliqué à Soego que le Roi Silencieux n'était rien de plus qu'un cadavre desséché. Il m'a dit d'en informer Tant-en-Un et qu'il me donnerait une récompense. Tant-en-Un est l'esprit des rats-crâne de la Ruche, dans les Dédales de la Pensée, à l'est des catacombes de la Pierre Pleureuse.~ */ GOTO 111
  IF ~  !Global("CR_Vic","GLOBAL",1)
Global("Know_Many","GLOBAL",1)
~ THEN REPLY #25252 /* ~"Intéressant. J'ai d'autres questions…"~ */ JOURNAL #25254 /* ~J'ai expliqué à Soego que le Roi Silencieux n'était rien de plus qu'un cadavre desséché. Il m'a dit d'en informer Tant-en-Un et qu'il me donnerait une récompense. Tant-en-Un est l'esprit des rats-crâne de la Ruche, dans les Dédales de la Pensée, à l'est des catacombes de la Pierre Pleureuse.~ */ GOTO 83
  IF ~  !Global("CR_Vic","GLOBAL",1)
Global("Know_Many","GLOBAL",1)
~ THEN REPLY #25253 /* ~"Peut-être. Au revoir."~ */ JOURNAL #25254 /* ~J'ai expliqué à Soego que le Roi Silencieux n'était rien de plus qu'un cadavre desséché. Il m'a dit d'en informer Tant-en-Un et qu'il me donnerait une récompense. Tant-en-Un est l'esprit des rats-crâne de la Ruche, dans les Dédales de la Pensée, à l'est des catacombes de la Pierre Pleureuse.~ */ EXIT
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21994 /* ~"Bien. J'ai des questions…"~ */ JOURNAL #21996 /* ~J'ai expliqué à Soego que le Roi Silencieux n'était rien de plus qu'un cadavre desséché. Il faudra que je prévienne Tant-en-Un moi-même dès que j'en aurai l'occasion.~ */ GOTO 83
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21995 /* ~"Je lui dirai moi-même quand je sortirai d'ici. Au revoir."~ */ JOURNAL #21996 /* ~J'ai expliqué à Soego que le Roi Silencieux n'était rien de plus qu'un cadavre desséché. Il faudra que je prévienne Tant-en-Un moi-même dès que j'en aurai l'occasion.~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR1500")
GlobalGT("Soego_Exposed","GLOBAL",0)
~ THEN BEGIN 95 // from:
  SAY #21997 /* ~"Quel… Traître !"~ */
  IF ~~ THEN REPLY #21998 /* ~"Qu'-"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #22003 /* ~"Hé… cette porte mène à mes salles privées. N'entre pas dans les salles."~ */
  IF ~~ THEN REPLY #22004 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 82.4
  SAY #22005 /* ~"Oh ! Je vais lui parler sur-le-champ !"~ */
  IF ~~ THEN REPLY #22006 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from:
  SAY #22007 /* ~"Non, j'y vais."~ */
  IF ~~ THEN REPLY #22008 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #22009 /* ~"Malheureusement, non. Mais, ça pourrait changer."~ */
  IF ~~ THEN REPLY #22010 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 82.3
  SAY #22011 /* ~Soego marque une courte pause. "Je vois." Il commence soudain à se transformer de manière saisissante…~ */
  IF ~~ THEN REPLY #22012 /* ~"Qu'est-ce qu'… ?"~ */ DO ~ClearAllActions()
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 73.0
  SAY #22014 /* ~"Euh… ta mémoire te fait du tort, très cher. Mon cou a été blessé, c'est sûr… tordu. Mais brisé ? Non."~ */
  IF ~  !Global("Lawful_Soego_1","GLOBAL",1)
~ THEN REPLY #22015 /* ~"Permets-moi d'être d'un autre avis. Qui es-tu Soego ?"~ */ GOTO 106
  IF ~  Global("Lawful_Soego_1","GLOBAL",1)
~ THEN REPLY #22016 /* ~"Permets-moi d'être d'un autre avis. Qui es-tu Soego ?"~ */ GOTO 103
  IF ~~ THEN REPLY #22018 /* ~"Tu n'es pas en colère ?"~ */ GOTO 74
  IF ~~ THEN REPLY #22019 /* ~"Tu as dit que tu étais un missionnaire ?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #22020 /* ~"Que font les Hommes-Poussière ici ?"~ */ GOTO 66
  IF ~~ THEN REPLY #22022 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 102 // from:
  SAY #22023 /* ~Il échappe à ton étreinte avec une vitesse exceptionnelle. Crachant et ricanant, il s'écrie "C'est idiot, d'attaquer un agent de l'esprit de groupe des rats-crâne !" Il entame soudain une stupéfiante métamorphose…~ */
  IF ~~ THEN REPLY #22024 /* ~"Qu'est-ce qu'… ?"~ */ DO ~SetGlobal("Soego","GLOBAL",4)
SetGlobal("Soego_Fled","GLOBAL",2)
Enemy()
~ JOURNAL #21856 /* ~J'ai trouvé Soego. Il était atteint de lycanthropie, ce qui l'a conduit dans les catacombes. Son esprit ne lui appartenait déjà plus et il avait perdu ses croyances d'Homme-Poussière.~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 101.1
  SAY #22026 /* ~"Quelle question ridicule ! Tu t'es réveillé sur table de préparation à la morgue… tu me l'as toi-même dit. Mes blessures étaient certainement moindres que les tiennes, pour que les Récupérateurs te prennent pour un cadavre, non ?"~ */
  IF ~~ THEN REPLY #22027 /* ~"C'est vrai, mais… peu importe."~ */ GOTO 104
  IF ~~ THEN REPLY #22028 /* ~"Ma condition est… unique."~ */ GOTO 105
  IF ~~ THEN REPLY #22029 /* ~"Non. Il y a quelque chose qui cloche ici et j'aurai vite fait de trouver ce que c'est."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.2 105.0 105.1 106.1 107.0
  SAY #22032 /* ~Il hausse les épaules. "Très bien."~ */
  IF ~~ THEN REPLY #22033 /* ~"Tu n'es pas en colère à cause de ce qui s'est passé ?"~ */ GOTO 74
  IF ~~ THEN REPLY #22034 /* ~"Tu as dit que tu étais un missionnaire ?"~ */ GOTO 65
  IF ~  !Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #22035 /* ~"Alors que font les Hommes-Poussière ici ?"~ */ GOTO 66
  IF ~~ THEN REPLY #22038 /* ~"Bon, je m'en vais. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 105 // from: 103.1
  SAY #22039 /* ~Il sourit. "Nous sommes tous uniques, très cher. Tous. Tu ne le nierais pas, tout de même ?"~ */
  IF ~~ THEN REPLY #22040 /* ~"C'est vrai, mais… peu importe."~ */ GOTO 104
  IF ~~ THEN REPLY #22041 /* ~"Non. Il y a quelque chose qui cloche ici et j'aurai vite fait de trouver ce que c'est."~ */ GOTO 104
END

IF ~~ THEN BEGIN 106 // from: 101.0
  SAY #22043 /* ~"Qu'est-ce que -? Quel est ce genre de question ?"~ */
  IF ~~ THEN REPLY #22044 /* ~"Tu m'as entendu. Tu n'es pas un Homme-poussière ordinaire … qu'est-ce que tu *es*, Soego ?"~ */ GOTO 107
  IF ~~ THEN REPLY #22045 /* ~"Laisse tomber. Peu importe."~ */ GOTO 104
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #22047 /* ~Soego te regarde d'un air menaçant. "Je ne sais pas de *quoi* tu parles, très cher."~ */
  IF ~~ THEN REPLY #22048 /* ~"Il y a quelque chose qui cloche ici et j'aurai vite fait de trouver ce que c'est."~ */ GOTO 104
END

IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5)
GlobalLT("Soego","GLOBAL",3)
!Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 108 // from:
  SAY #22050 /* ~"Ah, un autre vivant. La plupart sont éliminés par les goules avant d'atteindre cette partie des catacombes ; tu as de la chance, très cher."~ */
  IF ~  Global("Soego","GLOBAL",0)
~ THEN REPLY #22051 /* ~"C'est toi Soego ? Emoric voulait savoir où tu étais."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ JOURNAL #22052 /* ~J'ai trouvé Soego. Il a découvert un groupe de gardiens morts-vivants qui gardaient les catacombes. Il essaie de les convaincre de rejoindre la Vraie Mort.~ */ GOTO 109
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #66173 /* ~"Soego… Emoric voulait savoir où tu te trouvais."~ */ DO ~SetGlobal("Met_Soego2","GLOBAL",1)
SetGlobal("Soego","GLOBAL",3)
SetGlobal("Soego_Talk","AR1500",2)
EndCutSceneMode()
~ GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 82.2 108.0 108.1
  SAY #22053 /* ~"Oui, c'est moi. Je fais œuvre de missionnaire pour les Hommes-Poussière, ici."~ */
  IF ~  Global("Soego_Strangle","GLOBAL",1)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64617 /* ~"Très bien. Mais… Je croyais t'avoir brisé la nuque…"~ */ GOTO 73
  IF ~  Global("Mortuary_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64618 /* ~"Bien. Mais… je croyais t'avoir *tué*…"~ */ GOTO 73
  IF ~~ THEN REPLY #22054 /* ~"Il y a d'autres Hommes-Poussière ici ?"~ */ GOTO 66
  IF ~~ THEN REPLY #50792 /* ~"Où suis-je ?"~ */ GOTO 77
  IF ~~ THEN REPLY #50793 /* ~"Pourquoi suis-je prisonnier ici ?"~ */ GOTO 78
  IF ~~ THEN REPLY #22056 /* ~"Bon, je m'en vais. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 110 // from: 79.0 79.1
  SAY #22057 /* ~"Oui, et je suis ici."~ */
  IF ~  Global("Soego_Strangle","GLOBAL",1)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64625 /* ~"Attends une minute… ne t'ai-je pas brisé la nuque à la Morgue ?"~ */ GOTO 112
  IF ~  Global("Mortuary_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64626 /* ~"Attends une minute… je croyais t'avoir tué à la Morgue…"~ */ GOTO 112
  IF ~  Global("Soego_Strangle","GLOBAL",0)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22058 /* ~"Bien. Et maintenant comment est-ce que je peux trouver le Roi Silencieux ?"~ */ JOURNAL #21857 /* ~Soego m'a dit qu'il ne savait pas comment pénétrer dans la salle du trône du Roi Silencieux. Mais il faudra bien que j'y parvienne si je veux tuer ce dernier.~ */ GOTO 80
  IF ~  Global("Soego_Strangle","GLOBAL",0)
Global("Mortuary_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22060 /* ~"Bien. Au revoir."~ */ GOTO 71
END

IF ~~ THEN BEGIN 111 // from: 94.0
  SAY #25249 /* ~"Oui, l'esprit commun des rats-crâne. Va dans les catacombes situées à l'est de la Pierre Pleureuse. Tu y trouveras ta voie.~ */
  IF ~~ THEN REPLY #25250 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 83
  IF ~~ THEN REPLY #25251 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 79.2 79.3 110.0 110.1
  SAY #64620 /* ~Il t'interrompt d'un geste de la main. "Rien, ce n'était rien pour moi. J'avais déjà reçu le don de lycanthropie; je me suis très rapidement remis de mes blessures."~ */
  IF ~~ THEN REPLY #64621 /* ~"Je… vois. Alors comment puis-je arriver jusqu'au Roi Silencieux ?"~ */ GOTO 80
  IF ~~ THEN REPLY #64622 /* ~"Très bien… Au revoir, alors."~ */ GOTO 71
END

IF ~~ THEN BEGIN 113 // from: 38.1
  SAY #66709 /* ~"Bonjour…" L'homme se tourne vers toi et s'incline, ce qui te permet de remarquer que ses yeux ne sont pas injectés de sang, finalement ; le rouge semble être leur couleur naturelle. "Je me nomme Soego. En quoi puis-je t'aider ?"~ */
  IF ~~ THEN REPLY #66712 /* ~"Je voudrais sortir de la Morgue. Peux-tu m'aider ?"~ */ GOTO 114
  IF ~~ THEN REPLY #66713 /* ~"J'ai des questions…"~ */ GOTO 114
  IF ~~ THEN REPLY #66714 /* ~"Je ne fais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.1
  SAY #66710 /* ~Au beau milieu de ta phrase, Soego te dédie un large rictus qui révèle ses dents sales et pointues. Il se penche vers toi et commence à te sentir.~ */
  IF ~~ THEN REPLY #66715 /* ~"Euh… pourquoi est-ce que tu me renifles comme ça ?"~ */ GOTO 115
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #66716 /* ~Brise-lui la nuque quand il se penche vers toi.~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #66717 /* ~Brise-lui la nuque quand il se penche vers toi.~ */ GOTO 19
  IF ~~ THEN REPLY #66718 /* ~"Peu importe… Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #66711 /* ~"Tes habits… cette robe… elle sent l'odeur de quelqu'un d'autre. Elle ne t'appartient pas." Soego te dédie un étrange sourire et une lueur sauvage brille dans son regard. "Qui es-tu vraiment ?"~ */
  IF ~~ THEN REPLY #66719 /* ~"Je… euh, j'ai pris cette robe pour ne pas me faire remarquer. Je me suis réveillé dans une des salles de préparation, en haut."~ */ GOTO 42
  IF ~~ THEN REPLY #66720 /* ~"Tu as raison, cette robe n'est pas à moi. Mais quant à savoir à qui elle appartient, cela ne te regarde pas."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #66721 /* ~Brise-lui la nuque avant qu'il ne puisse appeler à l'aide.~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #66722 /* ~Brise-lui la nuque avant qu'il ne puisse appeler à l'aide.~ */ GOTO 19
  IF ~~ THEN REPLY #66723 /* ~"C'est sans importance. Je m'en vais."~ */ GOTO 17
END
