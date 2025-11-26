// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAOLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAOLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 3 2 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45487 /* ~"Bienvenue dans la cathédrale d'Aoskar. Es-tu venu vénérer le dieu avec moi ? Tu seras son second disciple." Et l'homme se lance dans un long exposé des vertus d'Aoskar.~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60902 /* ~"J'ai besoin de conseils à propos d'une boîte et d'un fiélon."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45488 /* ~"J'ai besoin de conseils à propos d'une boîte et d'un fiélon."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45489 /* ~"Pourquoi est-ce qu'il n'y a pas d'autres disciples d'Aoskar ?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45490 /* ~"Parle-moi encore d'Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45491 /* ~"J'ai envie de devenir disciple d'Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45492 /* ~"Une autre fois, peut-être. Au revoir."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 2 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45493 /* ~"La brebis égarée est de retour. Viens, allons remercier Aoskar et célébrons ton retour. J'imagine que tu as changé d'avis et que tu as décidé de rejoindre l'assemblée des fidèles."~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60951 /* ~"J'ai besoin de conseils au sujet d'une boîte et d'un démon."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45494 /* ~"J'ai besoin de conseils au sujet d'une boîte et d'un démon."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45495 /* ~"Quelle assemblée des fidèles ? Nous ne sommes que deux, ici."~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45497 /* ~"Parle-moi encore d'Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45498 /* ~"J'ai envie de devenir disciple d'Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45499 /* ~"Peut-être une autre fois. Au revoir."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 2 // from:
  SAY #45500 /* ~"Puisse Aoskar t'ouvrir la voie. En quoi puis-je t'être utile ?"~ */
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45501 /* ~"Je voudrais t'acheter la gemme que tu as prise sur la Boîte de Moridor."~ */ GOTO 13
  IF ~~ THEN REPLY #45503 /* ~"Parle-moi encore d'Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45504 /* ~"Pourquoi est-ce qu'il n'y a pas d'autres disciples d'Aoskar ?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45506 /* ~"J'ai envie de devenir disciple d'Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45507 /* ~"Qu'est-ce qui s'est passé ? J'allais devenir disciple d'Aoskar et, d'un seul coup, voilà que je me retrouve dans une espèce de labyrinthe." ~ */ GOTO 17
  IF ~~ THEN REPLY #45509 /* ~"Rien pour l'instant. Au revoir."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Disciple","Global",1)
~ THEN BEGIN 3 // from:
  SAY #45511 /* ~"Tu es de retour ! Excuse ma surprise, mais aucun autre disciple n'était jamais revenu avant toi. Tous les autres ont disparu sans laisser de trace. En quoi puis-je t'être utile ?"~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60964 /* ~"J'ai besoin de conseils au sujet d'une boîte et d'un démon."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45599 /* ~"J'ai besoin de conseils au sujet d'une boîte et d'un démon."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45600 /* ~"Je voudrais t'acheter cette gemme que tu as prise sur la Boîte de Moridor."~ */ GOTO 13
  IF ~~ THEN REPLY #45601 /* ~"Parle-moi encore d'Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45602 /* ~"Qu'est-ce qui s'est passé ? J'allais devenir disciple d'Aoskar et, d'un seul coup, voilà que je me retrouve dans une espèce de labyrinthe." ~ */ GOTO 17
  IF ~~ THEN REPLY #45603 /* ~"Rien pour l'instant. Au revoir."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shutup","Global",1)
~ THEN BEGIN 4 // from:
  SAY #45604 /* ~Aola a l'air d'être en transe. De temps en temps, tu l'entends chanter les louanges d'Aoskar.~ */
  IF ~~ THEN REPLY #45605 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #45606 /* ~Tu expliques ton problème à Aola. Il réfléchit longuement avant de répondre : "Bien que n'étant qu'un humble disciple du grand Aoskar, je peux en effet te venir en aide. Mais tu dois d'abord me céder la boîte."~ */
  IF ~~ THEN REPLY #45607 /* ~Donne-lui la boîte.~ */ DO ~DestroyPartyItem("Dbox",TRUE)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45608 /* ~Aola pose la Boîte de Moridor au centre d'une structure pyramidale et murmure une prière à la gloire d'Aoskar. La lueur caractéristique des portails brille sur les quatre côtés de la pyramide. Aola tend la main au travers de l'un d'eux et ouvre tranquillement la Boîte de Moridor.~ */
  IF ~~ THEN REPLY #45609 /* ~Continue.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45610 /* ~Poussant un cri d'effroi, tu tentes de l'en empêcher, mais il est déjà trop tard. Aussitôt, la boîte se désintègre, ne laissant derrière elle qu'une atroce fumée qui emplit la pyramide. Une atmosphère de vive terreur plane sur la pièce et tu as du mal à te retenir de partir en courant.~ */
  IF ~~ THEN REPLY #45611 /* ~Continue.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45612 /* ~Tu t'aperçois que, dès que les volutes de fumée touchent les faces de la pyramide, elles sont aspirées par les portails. Lorsque la dernière disparaît, l'impression de terreur se dissipe avec elle. Aola t'adresse un sourire nerveux. "Vois le pouvoir d'Aoskar, Gardien des Portes !"~ */
  IF ~~ THEN REPLY #45613 /* ~"Je suis sûr qu'un fiélon si puissant qu'il a fallu tant de sorts pour l'emprisonner n'aura aucun problème pour revenir ici. Et il viendra te chercher…" ~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45615 /* ~"J'ai pris cette donnée en considération. Vois-tu, chaque face de la pyramide était un portail menant à un plan différent. J'ai donc littéralement éparpillé l'essence du fiélon aux quatre coins du multivers. Savais-tu que certaines races trouvent que les démons sont un véritable délice ?" Il se met à ricaner en éparpillant les cendres et en récupérant la gemme qui était sertie sur la boîte. "Je la prends en guise de paiement. Elle aidera à rebâtir ma splendide cathédrale."~ */
  IF ~~ THEN REPLY #45617 /* ~"Garde la gemme, tu l'as amplement méritée. Au revoir."~ */ DO ~SetGlobal("FedEx","Global",10)
SetGlobal("Shutup","Global",1)
CreateItem("DGem",1,0,0)
SetGlobal("Epsilon","Global",2)
AddexperienceParty(1000)
~ JOURNAL #60389 /* ~La Boîte de Moridor ne présente plus le moindre danger grâce à l'intervention d'un prêtre d'Aoskar. En échange de son aide, le prêtre a pris la pierre précieuse qui était sertie dans le couvercle de la boîte. C'est une superbe gemme, comme l'on pouvait s'y attendre. Après tout, elle a servi à capturer un démon…~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.2 2.2 11.1
  SAY #45618 /* ~"J'ai eu de nombreux disciples au fil des ans. Malheureusement, tous ont disparu. C'est très frustrant. Dès qu'ils deviennent initiés, je cesse de les voir. Depuis quelque temps, la rumeur circule que la Dame elle-même est responsable de leur disparition. Plus personne ne vient ici. Tu es le premier humain que j'ai vu depuis bien longtemps."~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45619 /* ~"Je n'ai pas peur. Je souhaite devenir disciple d'Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("Aoskar","Global",0)
~ THEN REPLY #45620 /* ~"Parle-moi encore d'Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45621 /* ~"Je n'ai aucune envie de me mettre la Dame à dos. Il vaut mieux que je m'en aille. Au revoir."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.3 1.3 2.1 3.3 10.1
  SAY #45623 /* ~Soudain, une franche adulation devient perceptible dans le ton d'Aola : "Aoskar est le Gardien des Portes. Il recèle en lui le pouvoir des portails et des opportunités. Sigil, la Cité des Portes, était autrefois son domaine avant qu'il n'en soit "chassé" par cette maudite Dame. Plus personne, ou presque, ne vénère encore mon dieu car la Dame l'interdit. Mais ça changera quand j'aurai fait prendre conscience à tous de la magnificence d'Aoskar. Même la Dame ne pourra résister à la volonté du peuple !"~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45624 /* ~"Je souhaite devenir disciple d'Aoskar."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("One","Global",0)
~ THEN REPLY #45626 /* ~"Pourquoi est-ce qu'il n'y a pas d'autres disciples d'Aoskar ?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45629 /* ~"Je n'ai aucune envie de me mettre la Dame à dos. Il vaut mieux que je m'en aille. Au revoir."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.4 1.4 2.3 10.0 11.0
  SAY #45631 /* ~"Merveilleux ! Ça faisait si longtemps que plus personne ne me l'avait demandé." Aola te fait effectuer quelques rituels d'une grande complexité puis annonce : "Te voici désormais disciple d'Aoskar. Va prêcher la bonne parole afin que tous les habitants de Sigil voient la magnificence de notre dieu."~ */
  IF ~~ THEN REPLY #45634 /* ~"Au revoir."~ */ DO ~SetGlobal("Shutup","Global",1)
SetGlobal("Lady","Global",50)
SetGlobal("Disciple","Global",1)
SetGlobal("DMaze","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 3.2
  SAY #45635 /* ~"Par chance pour toi, je n'ai pas encore eu le temps de procéder à la vente. Voici mon prix : trois cents cuivres."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45636 /* ~"Je la prends."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldGT(99)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #61596 /* ~"Et si on disait cent cuivres ?"~ */ GOTO 19
  IF ~  PartyGoldLT(300)
~ THEN REPLY #45638 /* ~"Je n'ai pas suffisamment d'argent."~ */ GOTO 15
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45639 /* ~"C'est du vol ! Je refuse de verser une telle somme !"~ */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.0 19.0
  SAY #45641 /* ~"Puisse Aoskar, le dieu des portails, des portes et des 'opportunités' te sourire."~ */
  IF ~~ THEN REPLY #45643 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2 19.1 19.2
  SAY #45645 /* ~"C'est déplorable, mais je ne peux vraiment pas descendre en dessous. Peut-être pourrais-tu revenir après avoir gagné un peu de jonc. D'ici là, je me ferai un plaisir de te mettre cette gemme de côté."~ */
  IF ~~ THEN REPLY #45646 /* ~"Au revoir."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY #45648 /* ~"J'ai vraiment besoin d'argent pour reconstruire ma cathédrale. Tu es sûr de ne pas vouloir réfléchir à la question ? Je suis sûr que j'en obtiendrais au moins autant au marché."~ */
  IF ~~ THEN REPLY #45649 /* ~"Je le prends."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("DGem",Protagonist)
~ GOTO 14
  IF ~~ THEN REPLY #45651 /* ~"Laisse tomber."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.4
  SAY #45654 /* ~"On dirait qu'on t'a fait passer par un portail. Seuls les disciples expérimentés d'Aoskar ou de la Dame sont capables d'une telle chose. Ça pourrait expliquer la disparition de mes autres disciples. Il faut que je réfléchisse à la question. Laisse-moi, je te prie."~ */
  IF ~~ THEN REPLY #45657 /* ~"Au revoir."~ */ DO ~SetGlobal("DMaze","Global",2)
SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.0 1.0 3.0
  SAY #60914 /* ~Après lui avoir expliqué la situation difficile dans laquelle tu te trouves, Aola examine brièvement la boîte, puis te la rend. "Apparemment, cette boîte n'a rien d'extraordinaire. Maintenant, si tu veux bien me laisser, j'ai à faire."~ */
  IF ~~ THEN REPLY #60925 /* ~"Au revoir."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #61597 /* ~"Je ne sais pas ce que c'est, mais je t'aime bien. Je te laisse la gemme pour deux cent cuivres, pas un de moins. Qu'en dis-tu ?"~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #61598 /* ~"Je la prends."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(200)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldLT(200)
~ THEN REPLY #61600 /* ~"Je n'ai pas suffisamment d'argent."~ */ GOTO 15
  IF ~~ THEN REPLY #61599 /* ~"Laisse tomber."~ */ GOTO 15
END
