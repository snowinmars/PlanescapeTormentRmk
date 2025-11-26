// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARTA~

IF ~  Global("Marta","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2831 /* ~Tu aperçois une femme forte, vêtue d'un habit de grosse toile, qui arpente la pièce d'un pas lourd. Ses articulations craquent chaque fois qu'elle se penche et saisit des objets sur les tables. Ses cheveux sont attachés en arrière avec un crochet en os. Elle a l'air aigrie. Elle marmonne d'une voix chantante.~ */
  IF ~~ THEN REPLY #20473 /* ~"Bonjour."~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #20474 /* ~Pars.~ */ EXIT
END

IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2832 /* ~Tu aperçois Marta. Elle traîne dans la salle, ses articulations saillant lorsqu'elle se baisse pour ramasser des objets sur les tables. Elle marmonne d'une voix étrange et chantante.~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20475 /* ~"Bonjour, Marta."~ */ GOTO 2
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20476 /* ~"J'ai des questions à te poser, Marta…"~ */ GOTO 30
  IF ~~ THEN REPLY #20477 /* ~Ignore Marta, explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #20432 /* ~Elle semble ne pas t'entendre. Au lieu de cela, elle retourne en chancelant vers l'une des longues tables et commence à dépouiller l'un des cadavres. "Allez……" Elle fait claquer ses dents. "Sois pas difficile avec Marta… c'est qu'il est difficile, hein Marta… ? Oui, oui, c'est vrai…"~ */
  IF ~~ THEN REPLY #20478 /* ~"Euh… Bonjour ?"~ */ GOTO 4
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20479 /* ~Regarde ce qu'elle fait.~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20480 /* ~Regarde ce qu'elle fait.~ */ GOTO 3
  IF ~~ THEN REPLY #20481 /* ~Ignore Marta, explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2
  SAY #20433 /* ~D'après ce que tu peux voir, il semble qu'elle soit en train d'arracher les dents de la bouche du cadavre… munie seulement de ses mains et de ses ongles. Quand cela ne suffit pas, elle sort un burin en bois fendu et un maillet et frappe les gencives jusqu'à ce que la dent sorte, puis la met dans un sac attaché à sa taille.~ */
  IF ~~ THEN REPLY #20482 /* ~"Euh… Qu'est-ce que tu fais ?"~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #20483 /* ~Ignore Marta, explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #20434 /* ~Marta bondit brusquement loin du corps et, effrayée, pousse un petit cri perçant. "Ahh !" Elle retrouve son souffle puis siffle, en colère - à l'attention du cadavre sur la table. "Si t'étais pas mort, t'aurais pu l'dire plus tôt, espèce de sale petit cadavre, ouais ! T'as pas *honte* ?"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20484 /* ~D'une voix forte : "Honte à *toi* ! M'arracher les dents comme ça… Tu n'as donc aucun respect pour les morts ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20485 /* ~D'une voix forte : "Honte à *toi* ! Arracher mes sutures et mes dents… Tu n'as donc aucun respect pour les morts ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20486 /* ~"C'est moi qui ai parlé, pas le cadavre."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20487 /* ~"C'est moi qui ai parlé, pas le cadavre."~ */ GOTO 10
  IF ~~ THEN REPLY #20488 /* ~Ignore Marta, explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #20435 /* ~"Aaah !" Marta porte les mains à ses hanches et souffle d'indignation "Comme si tu t'nais à tes dents ! Toutes pourries et cassées et marron - c'est à se d'mander comment elles sont pas déjà tombées d'ton râtelier !" Elle se gratte la tête. "Pas vrai, Marta ? Ouais, toutes pourries et gâtées, qu'elles sont…"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20489 /* ~D'une voix forte : "Ooooooh… tu seras *punie* pour ce que tu as fait, Marta. Je te *hanterai* pour le restant de tes jours…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20490 /* ~"C'est moi qui ai parlé, pas le cadavre."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20491 /* ~"C'est moi qui ai parlé, pas le cadavre."~ */ GOTO 10
  IF ~~ THEN REPLY #20492 /* ~Ignore Marta, explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20436 /* ~"Hah ! T'entends ça, Marta ? Entends-tu ?" Le visage de Marta se tord comme un vieux torchon. "Je l'entends, Marta ! Je l'entends !" Avec un grognement, elle commence à marteler le cadavre avec ses poings, produisant des clac à chaque coup. "Hante *moi*, si tu peux ! Prends ça ! Et ça !"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20493 /* ~D'une voix forte : "Ooooooh… Arrête… Arrête… Je ne te hanterai plus… Pardonne-moi…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20494 /* ~"C'est moi qui ai parlé, pas le cadavre."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20495 /* ~"C'est moi qui ai parlé, pas le cadavre."~ */ GOTO 10
  IF ~~ THEN REPLY #20496 /* ~Ignore Marta, explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20437 /* ~"Maudissables morts…" Marta respire profondément et laisse le burin tomber à ses côtés. "C'est bien mieux comme ça, hein Marta ? Oui, oui… tranquille cadavre… oui."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20497 /* ~"C'est moi qui ai parlé, pas le cadavre."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20498 /* ~"C'est moi qui ai parlé, pas le cadavre."~ */ GOTO 10
  IF ~~ THEN REPLY #20499 /* ~Ignore Marta, explore la pièce.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.1 7.0
  SAY #20438 /* ~Marta plisse les yeux et se retourne. "Hein ? Comment t'es arrivé là si rapidement ?" Elle murmure pour elle-même. "Marta, comment il a fait ça ? J'comprends pas, j'comprends pas."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 207
END

IF ~~ THEN BEGIN 9 // from:
  SAY #20439 /* ~Marta continue à marmonner, parlant de *cadavres* et de *gratitude*, mais tu ne comprends pas vraiment.~ */
  IF ~~ THEN REPLY #20500 /* ~"Qui es-tu ?"~ */ JOURNAL #18470 /* ~J'ai rencontré une couturière un peu brouillon prénommée Marta dans le Village Enseveli. Elle parle toute seule comme si elle avait un double… sait-on jamais, c'est peut-être le cas.~ */ GOTO 11
  IF ~~ THEN REPLY #20501 /* ~"Euh… Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3 5.2 6.2 7.1
  SAY #20440 /* ~Marta plisse les yeux et se retourne. "Hein ? Comment t'es arrivé ici si rapidement ?" Elle murmure pour elle-même. "Marta, comment il a fait ça ? J'comprends pas, j'comprends pas."~ */
  IF ~~ THEN REPLY #20502 /* ~"Qui es-tu ?"~ */ JOURNAL #18470 /* ~J'ai rencontré une couturière un peu brouillon prénommée Marta dans le Village Enseveli. Elle parle toute seule comme si elle avait un double… sait-on jamais, c'est peut-être le cas.~ */ GOTO 11
  IF ~~ THEN REPLY #20503 /* ~"Euh… Très bien. Je dois m'en aller. Au revoir."~ */ JOURNAL #18470 /* ~J'ai rencontré une couturière un peu brouillon prénommée Marta dans le Village Enseveli. Elle parle toute seule comme si elle avait un double… sait-on jamais, c'est peut-être le cas.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0 13.0 30.0
  SAY #20441 /* ~"Marta, est-ce que celui-là t'a demandé qui t'étais ? Ouais, il l'a fait, il l'a fait…" Elle commence à fredonner. "Personne d'autre que moi, je suis Marta, Marta la Couturière… hmnnnn… Mar-ta - la - cou - tu - rière… Mar-ta - la - cou - tu - rière…" Elle se retourne vers le cadavre, tout en fredonnant son propre nom.~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20504 /* ~"Que fais-tu ?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",2)
~ GOTO 12
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20505 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 12
  IF ~~ THEN REPLY #20506 /* ~"Euh… Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 13.1 30.1
  SAY #20442 /* ~Marta se retourne vers le cadavre en ronchonnant. "J'essaie d'faire abandonner à ce bige ses sutures et ses dents, mais il n'est pas très coopératif, non, non…" Elle pointe le doigt, comme pour réprimander un enfant. "Têtu comme une bourrique il est, hein Marta ?" Elle grimace. "Oui, oui, têtu…"~ */
  IF ~~ THEN REPLY #20507 /* ~"Des sutures… et des dents ? De quoi tu parles ?"~ */ GOTO 14
  IF ~~ THEN REPLY #20508 /* ~"Je… vois. Je peux te poser d'autres questions ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20509 /* ~"Euh… Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.4 16.9 17.1 18.1 19.2 20.1 21.0 23.4 24.4 25.4 26.2 26.3 27.0 28.1 29.1 31.2 37.0 39.4
  SAY #20443 /* ~"Est-ce qu'il a d'mandé une question, Marta… ?" Elle cligne des yeux, puis fronce les sourcils. "Ouais, Marta, même qu'il a l'air de quelqu'un qu'aurait demandé…"~ */
  IF ~~ THEN REPLY #20510 /* ~"Qui es-tu ?"~ */ JOURNAL #18470 /* ~J'ai rencontré une couturière un peu brouillon prénommée Marta dans le Village Enseveli. Elle parle toute seule comme si elle avait un double… sait-on jamais, c'est peut-être le cas.~ */ GOTO 11
  IF ~~ THEN REPLY #20511 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20512 /* ~"Pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20513 /* ~"Pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20514 /* ~"Tu peux fouiller mon corps pour voir s'il y a quelque chose ?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20515 /* ~"Tu peux fouiller mon corps pour voir s'il y a quelque chose ?"~ */ GOTO 23
  IF ~~ THEN REPLY #20516 /* ~"Je peux me reposer ici ?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20517 /* ~"Tu arraches les sutures des cadavres… Je peux t'acheter une aiguille et du fil ?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20518 /* ~"Parmi ce que tu as récupéré sur les cadavres, tu n'as rien d'autre à me donner ?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20519 /* ~"Je peux voir ce que tu as récupéré sur les cadavres récemment ?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20520 /* ~"Pas de questions. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #20444 /* ~"J'dois retirer les sutures, la denture… Hé, peut-être qu'tu peux m'donner un coup de main… J'*t'ai* aidé, vieille folle… pas besoin d'prendre ce ton avec moi… pour tirer les sutures et la denture, et les trucs dedans."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20521 /* ~"Les trucs dedans ?"~ */ EXTERN ~DMORTE~ 208
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20522 /* ~"Les trucs dedans ?"~ */ GOTO 31
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20523 /* ~"Pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20524 /* ~"Pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ GOTO 16
  IF ~~ THEN REPLY #20525 /* ~"Je… vois. Je peux te poser d'autres questions ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20526 /* ~"Euh… Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #20445 /* ~"Les trucs."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 209
END

IF ~~ THEN BEGIN 16 // from: 13.2 13.3 14.2 14.3 30.2 30.3 31.0 31.1
  SAY #20446 /* ~"Mets-les d'côté, Marta, c'est ce que je fais ici." Elle se gratte la tête. "Ouais, Marta… l'fil de suture et la denture sont précieux, on les transforme en sous-sous. 'Dépouille les cadav' qu'on t'amène', qu'ils disent à Marta : 'Enlève la denture, les sutures, les trucs dedans les cadavres, dépouille-les jusqu'aux os et on les vendra aux Hommes-Poussière'."~ */
  IF ~~ THEN REPLY #20527 /* ~"Tu vends les cadavres aux Hommes-Poussière… ?"~ */ GOTO 17
  IF ~~ THEN REPLY #20528 /* ~"Qui te demande de faire ça ?"~ */ GOTO 19
  IF ~~ THEN REPLY #20529 /* ~"Qu'est-ce que tu trouves dans les corps ?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20530 /* ~"Tu recherches des choses à l'intérieur des corps ? Tu peux fouiller dans mon corps pour voir s'il y a quelque chose ?"~ */ GOTO 22
  IF ~  !NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20531 /* ~"Tu recherches des choses à l'intérieur des corps ? Tu peux fouiller dans mon corps pour voir s'il y a quelque chose ?"~ */ GOTO 23
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20532 /* ~"Tu arraches les sutures des cadavres… Je peux t'acheter du fil et une aiguille ?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20533 /* ~"Parmi ce que tu as récupéré sur les cadavres, tu n'as rien d'autre à me donner ?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20534 /* ~"Je peux voir ce que tu as récupéré sur les cadavres récemment ?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20535 /* ~"Ça te dérange si je me repose ici ?"~ */ GOTO 29
  IF ~~ THEN REPLY #20536 /* ~"Je… vois. Je peux te poser d'autres questions ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20537 /* ~"Euh… Très bien. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20447 /* ~Marta fronce les sourcils. "A-t-on pas dit qu'on les vendrait, Marta ?" Elle fronce encore les sourcils et secoue la tête. "Ouais, Marta. Les Hommes-Poussière achètent les cadav', mais on prend tout c'qu'on peut d'abord."~ */
  IF ~~ THEN REPLY #20539 /* ~"Qui te demande de dépouiller les cadavres ?"~ */ GOTO 19
  IF ~~ THEN REPLY #20540 /* ~"Je… vois. Je peux te poser d'autres questions ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20541 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY #20448 /* ~"Des trucs, des trucs…" Elle hausse les épaules maladroitement. "Les autres les prennent."~ */
  IF ~~ THEN REPLY #20542 /* ~"Qui ça ?"~ */ GOTO 19
  IF ~~ THEN REPLY #20543 /* ~"Je… vois. Je peux te poser d'autres questions ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20544 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.1 17.0 18.0
  SAY #20449 /* ~"Quint Gros tas cochon dingue, et l'autre boiti-boita, boita-boiti Phare-rôde Pharod, pas vrai, Marta ?" Elle sourit étrangement et secoue la tête. "Ouais, bien vrai, Marta…"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #20545 /* ~"Pharod ? Où il est ?"~ */ GOTO 20
  IF ~~ THEN REPLY #20546 /* ~"Qu'est-ce qu'ils font des trucs que tu récupères sur les cadavres ?"~ */ GOTO 21
  IF ~~ THEN REPLY #20547 /* ~"Je… vois. Je peux te poser d'autres questions ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20548 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20450 /* ~Marta hausse les épaules. "Où il est Pharod, qu'il demande ? L'est là, Marta, pas vrai… ?" Elle secoue la tête. "Ouais, Pharod est ici, Marta. Dans un des bâtiments ici, qu'il est…"~ */
  IF ~~ THEN REPLY #20549 /* ~"Qu'est-ce qu'ils font des trucs que tu récupères sur les cadavres ?"~ */ GOTO 21
  IF ~~ THEN REPLY #20550 /* ~"Je… vois. Je peux te poser d'autres questions ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20551 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #20451 /* ~"Les vendent. Les vendent pour des qui-brillent."~ */
  IF ~~ THEN REPLY #20552 /* ~"Je… vois. Je peux te poser d'autres questions ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20553 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.4 16.3 30.4
  SAY #20452 /* ~Marta t'observe de biais. "Humm." Puis acquiesce. "Marta peut faire ça, hein Marta ? Ouais, tu peux."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 210
END

IF ~~ THEN BEGIN 23 // from: 13.5 16.4 30.5
  SAY #20453 /* ~Marta t'observe de biais. "Humm." Puis acquiesce. "Marta peut faire ça, hein Marta ? Ouais, tu peux." Elle tire un burin fendu. "Où ? Où…" Marta t'étudie, comme si elle cherchait le meilleur endroit pour t'ouvrir.~ */
  IF ~~ THEN REPLY #20554 /* ~"On essaie l'estomac, d'accord… ?"~ */ GOTO 38
  IF ~~ THEN REPLY #20555 /* ~"Et la cage thoracique… ?"~ */ GOTO 33
  IF ~~ THEN REPLY #20556 /* ~"Regarde dans mes intestins… Il y a peut-être quelque chose qui s'y est logé."~ */ GOTO 34
  IF ~~ THEN REPLY #20557 /* ~"Ouvre mon crâne, s'il te plaît."~ */ GOTO 32
  IF ~~ THEN REPLY #20558 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #20559 /* ~"Euh… Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #20454 /* ~"Où ? Où…" Marta t'étudie, comme si elle cherchait le meilleur endroit pour t'ouvrir.~ */
  IF ~~ THEN REPLY #20560 /* ~"On essaie l'estomac, d'accord… ?"~ */ GOTO 38
  IF ~~ THEN REPLY #20561 /* ~"Et la cage thoracique… ?"~ */ GOTO 33
  IF ~~ THEN REPLY #20562 /* ~"Regarde dans mes intestins… Il y a peut-être quelque chose qui s'y est logé."~ */ GOTO 34
  IF ~~ THEN REPLY #20563 /* ~"Ouvre mon crâne, s'il te plaît."~ */ GOTO 32
  IF ~~ THEN REPLY #20564 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #20565 /* ~"Euh… Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 32.0 33.0 34.1 38.0
  SAY #20455 /* ~Ta vue se brouille pendant un instant, puis tu te reconcentres, pour apercevoir Marta qui remue la tête. "Rien, rien trouvé, hein, Marta ?" Elle secoue la tête. "Non, rien, Marta, pas de chance… on essaie encore ?"~ */
  IF ~~ THEN REPLY #20566 /* ~"On… On… On essaie l'estomac, d'accord… ?"~ */ GOTO 38
  IF ~~ THEN REPLY #20567 /* ~"Huh… heuh… Et ma cage thoracique… ?"~ */ GOTO 33
  IF ~~ THEN REPLY #20568 /* ~"Re… Re… Regarde dans les intestins… Peut-être que quelque chose s'y est logé."~ */ GOTO 34
  IF ~~ THEN REPLY #20569 /* ~"Ou.. Ou… Ouvre mon crâne, s'il te plaît."~ */ GOTO 32
  IF ~~ THEN REPLY #20570 /* ~"Naa - naan - non, j'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #20571 /* ~"Pas… Pas… encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.7 16.5 30.7
  SAY #20456 /* ~Elle semble troublée. "Acheter ? Sous-sous ? T'es bien ici pour en ramasser… c'est bien pour ça que t'es là, hein ? Pour ramasser l'fil, les os, les dents qui claquent ?"~ */
  IF ~~ THEN REPLY #20572 /* ~Mensonge : "Ouais, je suis là pour les récupérer."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_4","GLOBALLaw",-1)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Teeth",Protagonist,1,0,0)
~ GOTO 27
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20573 /* ~"Non, je ne suis pas là pour ça, mais je vais t'en acheter."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 28
  IF ~  PartyGold(0)
~ THEN REPLY #20574 /* ~"Non, je ne suis pas là pour ça, mais je t'en achèterai… Quand j'aurai de l'argent à dépenser. Pour l'instant, j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 13
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20575 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #20576 /* ~"Euh… Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20457 /* ~"Voilà, ce qu'tu cherchais…" Elle te donne les objets. "Tout c'que j'ai, tout c'que j'ai…"~ */
  IF ~~ THEN REPLY #20577 /* ~"Merci. J'ai d'autres questions…"~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #20578 /* ~"Merci… Ça me sera peut-être utile. Au revoir."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #20458 /* ~Elle regarde fixement les pièces dans ta main, pas certaine de ce qu'elle doit en faire. "Y brillent les Qui-brille…" Elle fronce les sourcils. "Qu'est-ce qu'ils voulaient encore, Marta ?" Elle marmonne. "Marta… Marta, qu'est-ce qu'ils voulaient ?"~ */
  IF ~~ THEN REPLY #20579 /* ~"Je peux voir ce que tu as ?"~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20580 /* ~"Peu importe. J'ai d'autres questions…"~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #20581 /* ~"Euh… Peu importe. Au revoir."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 13.6 16.8 30.6
  SAY #20459 /* ~Marta acquiesce. "Maison Marta, Marta dormir ici ; tu peux dormir si tu l'veux, oui. Je crois pas que Marta est contre… pas vrai, Marta ?" Elle secoue la tête. "Non, non, Marta, je suis pas contre si t'es pas contre…"~ */
  IF ~~ THEN REPLY #20583 /* ~"Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #20584 /* ~"Je ne veux pas me reposer tout de suite. J'aurais d'abord d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #20585 /* ~"Je reviendrai peut-être quand j'aurai besoin de dormir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 1.1
  SAY #20460 /* ~Marta te regarde furtivement pendant que tu parles. "Est-ce qu'il a dit des questions, Marta… ?" Marta cligne des yeux, puis fronce les sourcils. "Ouais, Marta, il l'a dit, il a le regard de celui qui pose des questions, bien vrai…"~ */
  IF ~~ THEN REPLY #20586 /* ~"Qui es-tu ?"~ */ GOTO 11
  IF ~~ THEN REPLY #20587 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20588 /* ~"Pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20589 /* ~"Pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20590 /* ~"Tu peux fouiller mon corps pour voir s'il y a quelque chose ?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20591 /* ~"Tu peux fouiller mon corps pour voir s'il y a quelque chose ?"~ */ GOTO 23
  IF ~~ THEN REPLY #20592 /* ~"Je peux me reposer ici ?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20593 /* ~"Tu arraches les sutures des cadavres… Je peux t'acheter du fil et une aiguille?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20594 /* ~"Parmi ce que tu as récupéré sur les cadavres, tu n'as rien d'autre à me donner ?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20595 /* ~"Je peux voir ce que tu as récupéré sur les cadavres récemment ?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20596 /* ~"Pas de questions. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.1
  SAY #20461 /* ~"Des trucs dedans, des trucs dedans… oui, Marta ?" Elle acquiesce, puis secoue la tête. "Quand y'en a, Marta, quand y'en a…"~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20597 /* ~"Pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20598 /* ~"Pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"~ */ JOURNAL #20538 /* ~Marta la Couturière semble chargée de récupérer les cadavres qui lui sont donnés, de leur arracher les dents, de découdre leurs points de suture et de chercher tous les objets de valeur susceptibles de se trouver sur ou dans les corps, pour ensuite les recoudre.~ */ GOTO 16
  IF ~~ THEN REPLY #20599 /* ~"Je… vois. Je peux te poser d'autres questions ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20600 /* ~"Euh… Très bien. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.3 24.3 25.3 39.3
  SAY #20462 /* ~Tu es allongé sur la table et la dernière chose que tu vois est Marta perchée sur toi, un burin et un marteau dans les mains. Un *crac* aigu se fait entendre et tu te mets à crier tandis que tout devient noir.~ */
  IF ~~ THEN REPLY #20601 /* ~Tu sombres dans l'obscurité…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #20602 /* ~J'ai demandé à Marta, la Couturière azimutée du Village Enseveli, de fouiller mon crâne pour voir s'il y avait quelque chose à l'intérieur. Il n'y avait rien.~ */ GOTO 25
END

IF ~~ THEN BEGIN 33 // from: 23.1 24.1 25.1 39.1
  SAY #20463 /* ~Tu es allongé sur la table et Marta est perchée sur toi, avec un burin et un marteau dans les mains. Un *crac* aigu se fait entendre lorsqu'elle ouvre ta cage thoracique et tu refoules tes hurlements pendant qu'elle commence à fouiller dans tes poumons… Tu essaies de respirer, mais ton corps s'engourdit, puis la douleur te fait perdre conscience.~ */
  IF ~~ THEN REPLY #20603 /* ~Tu sombres dans l'obscurité…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 23.2 24.2 25.2 39.2
  SAY #20464 /* ~Tu es allongé sur la table et Marta est perchée sur toi, un couteau rouillé dans les mains. Une vive douleur t'envahit alors qu'elle perce ton abdomen puis le déchire vers le bas en utilisant son couteau comme une scie, exposant tes entrailles. Malgré la douleur, tu regardes silencieusement et avec morbidité, pendant qu'elle répand tes organes, bafouillant pour elle-même…~ */
  IF ~  Global("Marta_Ring","GLOBAL",0)
~ THEN REPLY #20604 /* ~Regarde…~ */ GOTO 35
  IF ~  Global("Marta_Ring","GLOBAL",1)
~ THEN REPLY #20605 /* ~Tout devient noir…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #20465 /* ~"Ah !" Tu ressens une violente douleur alors qu'elle soulève la masse dégoûtante de tes intestins et que le sang et d'autres liquides ruissellent. "Regarde ça, Marta… regarde ça… Je vois, je vois, coupe ici, coupe ici…" Marta effectue une petite et adroite incision sur le côté de tes intestins, et un *tinnng* se fait entendre alors que quelque chose de petit et métallique tombe sur le sol.~ */
  IF ~~ THEN REPLY #20606 /* ~"Urhhhkk…"~ */ DO ~SetGlobal("Marta_Ring","GLOBAL",1)
GiveItemCreate("Ring02",Protagonist,1,0,0)
GiveItemCreate("Intest",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #20607 /* ~J'ai demandé à Marta, la Couturière azimutée du Village Enseveli, de fouiller mes intestins pour voir s'il y avait quelque chose à l'intérieur. Elle y a trouvé un anneau… et m'a laissé des intestins en plus.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #20466 /* ~Marta laisse alors tomber la masse dégoulinante sur ton torse, puis se baisse pour ramasser l'objet… un anneau, semble-t-il, et te le montre furtivement. "Joli, joli, hein, Marta ?" Elle acquiesce. "Oui, Marta, faut pas avaler de telles choses, non, non…"~ */
  IF ~~ THEN REPLY #20608 /* ~"M - merci… Autre… chose… ?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 13.8 16.6 30.8
  SAY #20467 /* ~"J'ai plus rien, pas vrai, Marta ?" Elle acquiesce. "Tout pris la dernière fois, celui-là, plus rien, plus rien…"~ */
  IF ~~ THEN REPLY #20609 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #20610 /* ~"Alors, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.0 24.0 25.0 39.0
  SAY #20468 /* ~Tu es allongé sur la table et Marta est penchée sur toi, un couteau rouillé dans les mains. Une vive douleur t'envahit lorsqu'elle perce ton abdomen puis elle t'entaille vers le bas en utilisant son couteau comme une scie, exposant tes entrailles. Malgré la douleur, tu regardes silencieusement, d'un air morbide, pendant qu'elle soulève ton estomac…~ */
  IF ~~ THEN REPLY #20611 /* ~Regarde…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0
  SAY #45007 /* ~Marta secoue la tête. "Rien de plus et plus de rien, hein, Marta ? Faut-il que nous essayions ailleurs ?"~ */
  IF ~~ THEN REPLY #45009 /* ~"On… On… On essaie l'estomac, d'accord… ?"~ */ GOTO 38
  IF ~~ THEN REPLY #45010 /* ~"Huh… heuh… Et ma cage thoracique… ?"~ */ GOTO 33
  IF ~~ THEN REPLY #45011 /* ~"Tu… tu… tu veux bien vérifier… mes intestins… encore une fois ?"~ */ GOTO 34
  IF ~~ THEN REPLY #45012 /* ~"Ou… ou… ouvre-moi le crâne, si tu juges que c'est nécessaire."~ */ GOTO 32
  IF ~~ THEN REPLY #45013 /* ~"Naa - naan - non, j'avais d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #45014 /* ~"Pas… Pas… encore. Au revoir."~ */ EXIT
END
