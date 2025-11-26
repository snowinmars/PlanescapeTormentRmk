// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLENNY~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36484 /* ~Tu aperçois un jeune homme à l'air sauvage portant des vêtements de mauvaise qualité. Il scrute les environs et te regarde d'un air circonspect en t'apercevant.~ */
  IF ~~ THEN REPLY #36525 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36526 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36485 /* ~Il t'observe de haut en bas puis regarde aux alentours. Son regard revient sur toi, et il te fait un sourire malicieux. "Tu ferais mieux d'avoir d'bonnes raisons de déranger Lenny, bige."~ */
  IF ~~ THEN REPLY #36527 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36528 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 32.0
  SAY #36486 /* ~Il te rit au nez. "J'suis pas un rabatteur. Va en chercher un, si t'as des questions à poser." Son sourire s'agrandit. "Tu f'rais mieux d'partir avant que j'te saigne."~ */
  IF ~~ THEN REPLY #36529 /* ~"Je voudrais juste que tu répondes à quelques questions…"~ */ GOTO 3
  IF ~  Global("Know_Lenny","GLOBAL",1)
~ THEN REPLY #36530 /* ~"Et si je te disais que c'est Byron Tourloupe qui m'envoie ?"~ */ GOTO 4
  IF ~~ THEN REPLY #36531 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36487 /* ~"Bien, au revoir."~ */
  IF ~~ THEN REPLY #36532 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36488 /* ~Il arrête de sourire et t'examine pendant un instant. Ses yeux s'attardent sur tes cicatrices et il déglutit légèrement. Après un instant, il se renfrogne et paraît nerveux. "Tourloupe… t'envoie ? Pourquoi ?"~ */
  IF ~~ THEN REPLY #36533 /* ~"Il m'a dit que tu pourrais répondre à quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #36534 /* ~"Peu importe, c'est pas important. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 7.1 8.0 28.2 29.1 30.1 31.0
  SAY #36489 /* ~Il fronce les sourcils. "Quelles questions…" Tu remarques qu'il paraît tendu.~ */
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36535 /* ~"On m'a volé un crâne, et je veux le récupérer. Tu sais qui aurait pu faire le coup ?"~ */ JOURNAL #66540 /* ~Lenny, le voleur, prétend que c'est un certain Lothar qui m'a enlevé Morte. Je vais aller rendre visite à ce Lothar.~ */ GOTO 6
  IF ~  Global("Stolen_Papers","GLOBAL",1)
~ THEN REPLY #36536 /* ~"Je voudrais te demander quelque chose à propos des papiers que tu as volés à Trist."~ */ GOTO 9
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36537 /* ~"Je voudrais en savoir plus sur l'art du vol. Tu peux m'apprendre ?"~ */ GOTO 27
  IF ~~ THEN REPLY #36538 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 28
  IF ~~ THEN REPLY #36539 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36490 /* ~Il hésite un instant puis se décontracte légèrement. Tu as l'impression qu'il s'attend à ce que tu demandes autre chose. Il te sourit. "Un crâne volé, hein ? Ça serait l'boulot des gars d'Lothar, pas le mien."~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36540 /* ~"Qui est Lothar ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36541 /* ~"J'ai entendu parler de Lothar, je veux juste le trouver."~ */ GOTO 8
  IF ~~ THEN REPLY #36542 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #36543 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36491 /* ~Il sourit d'un air méchant. "Le Maître des Os, qu'ils l'appellent, et c'est c'qu'il est. Il est le plus haut des hauts-prêtres d'une grande puissance, mais j'sais pas qui." Il rit. "Il a sa guitoune à un endroit appelé les Os de la Nuit."~ */
  IF ~~ THEN REPLY #36544 /* ~"Où est cet endroit ?"~ */ JOURNAL #66541 /* ~Lenny prétend qu'on peut trouver Lothar dans une maison en ruine au sud de la tour de siège. Je vais l'interroger au sujet de la disparition de Morte.~ */ GOTO 8
  IF ~~ THEN REPLY #36545 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #36546 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #36492 /* ~Il fronce les sourcils.  "Je sais pas si j'veux être celui qui répondra à cette question…" Il te regarde d'un œil mauvais pendant un instant, puis hausse les épaules. "Un bâtiment en ruines au sud de la tour de siège, tu peux pas l'manquer." Il sourit à nouveau d'un air méchant.~ */
  IF ~~ THEN REPLY #36547 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #36548 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #36493 /* ~Il déglutit avec peine et te regarde fixement. Tu remarques que ses muscles se contractent et qu'il paraît prêt à détaler. Il place une main sur sa hanche de manière nonchalante, mais tu jurerais qu'il est aussi tendu qu'un ressort. "Je sais pas d'quoi tu parles, bige. Tu ferais mieux d'partir."~ */
  IF ~~ THEN REPLY #36549 /* ~Souris méchamment : "Tu sais très bien de quoi je parle, Lenny. Byron t'a demandé de voler des papiers à Trist. Je suis là pour les récupérer."~ */ GOTO 10
  IF ~~ THEN REPLY #36550 /* ~Vérité : "Donne-moi les papiers que tu as volés à Trist ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Lenny_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36551 /* ~Bluff : "Donne-moi les papiers que tu as volés à Trist ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lenny_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36552 /* ~"J'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2
  SAY #36494 /* ~Il déglutit avec peine et un tic nerveux agite l'un de ses yeux. Il regarde les cicatrices qui couvrent ton corps, puis essaie de te regarder dans les yeux - sans succès. "Les récup… J… J'ai détruit les papiers après les avoir fauchés, comme Byron m'a dit." Il réussit finalement à te regarder dans les yeux.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36553 /* ~"Vraiment ? Alors, pourquoi est-ce que tu es si nerveux, Lenny ? Laisse-moi deviner : Byron pense que tu as détruit les papiers, mais tu ne l'as peut-être pas fait. Tu les as peut-être gardés. Pour faire du chantage, qui sait ?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36554 /* ~"Alors, pourquoi tu es si nerveux, Lenny ? Je crois que tu mens."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67296 /* ~"Vraiment ? Alors, pourquoi es-tu si nerveux, Lenny ? Laisse-moi deviner : Byron pense que tu as détruit les papiers, mais peut-être que ce n'est pas le cas. Il est possible que tu les aies conservés. Pour faire du chantage, non ?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67297 /* ~" Alors pourquoi es-tu si nerveux, Lenny. Je pense que tu mens."~ */ GOTO 11
  IF ~~ THEN REPLY #67298 /* ~"Je dois y aller maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2 10.3
  SAY #36495 /* ~Il te fixe un court instant puis il tourne les talons et part en courant.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #36556 /* ~Attrape-le avant qu'il se sauve.~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #36557 /* ~Attrape-le avant qu'il se sauve.~ */ GOTO 13
  IF ~~ THEN REPLY #36558 /* ~Laisse-le partir.~ */ DO ~RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36496 /* ~Alors qu'il se met à courir, tu bondis et lui attrapes le bras. Il se débat pendant un instant, mais ne parvient pas à te faire lâcher prise. Il cesse finalement de se débattre. "D'accord, je ne les ai pas détruits ! J'vais te les donner, mais lâche-moi." Tu lâches prise.~ */
  IF ~~ THEN REPLY #36559 /* ~"Donne-les-moi, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36560 /* ~"Pourquoi tu les as gardés, Lenny ? Pour faire du chantage, je suppose."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36561 /* ~"Alors, tu les as bien gardés. Pourquoi ?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #36497 /* ~Alors qu'il se met à courir, tu bondis et lui attrapes le bras. Il échappe adroitement à ta prise et commence à te distancer. Voyant ta proie t'échapper, tu te jettes une seconde fois sur lui. Tu n'arrives pas à l'agripper, mais réussis à lui faire perdre l'équilibre. Il abandonne sa fuite. "D'accord, je ne les ai pas détruits ! J'vais te les donner, mais lâche-moi."~ */
  IF ~~ THEN REPLY #36562 /* ~"Donne-les-moi, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36563 /* ~"Pourquoi tu les as gardés, Lenny ? Pour faire du chantage, je suppose."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36564 /* ~"Alors, tu les as bien gardés. Pourquoi ?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #36498 /* ~Il soupire. "Je… Je ne les ai pas sur moi." Tu fronces les sourcils, et voit la peur grandir sur son visage. "Je le jure ! Je ne les ai pas ! Je les ai rangés à l'entrepôt !" Il continue à te regarder fixement, respirant difficilement.~ */
  IF ~~ THEN REPLY #36565 /* ~"Alors, on va aller les récupérer là-bas."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36499 /* ~Il secoue la tête d'un air triste. "On ne peut pas. Il y a des problèmes à l'entrepôt. Je ne sais pas ce qui se passe, mais il est fermé à cause de ça. J'ai essayé de récupérer les papiers, mais ils n'ont pas voulu me les rendre." Il te regarde d'un air penaud.~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36566 /* ~"J'ai réglé ce petit problème, on peut aller récupérer les papiers."~ */ GOTO 16
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36567 /* ~"Alors, je vais aller voir ça et je récupérerai les papiers moi-même."~ */ GOTO 16
  IF ~~ THEN REPLY #36568 /* ~"J'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1 21.1
  SAY #36500 /* ~Il hausse les épaules. "Bien. J'imagine que Tourloupe a encore gagné…" Il te regarde d'un air défiant.~ */
  IF ~~ THEN REPLY #36569 /* ~"Allons récupérer les papiers, Lenny."~ */ GOTO 17
  IF ~~ THEN REPLY #36570 /* ~"En fait, c'est Trist qui a gagné cette fois, Lenny."~ */ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 16.0 26.0
  SAY #36501 /* ~"Va à l'entrepôt et dis à l'employé *je suis ici pour un prêt* et il te donnera les papiers. À plus tard, bige." Il détale brusquement.~ */
  IF ~~ THEN REPLY #36571 /* ~Pars.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Stolen_Papers","GLOBAL",3)
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ JOURNAL #36021 /* ~Lenny garde les documents de prêt de Trist dans l'entrepôt. Je peux les obtenir auprès de l'employé.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1 13.1
  SAY #36502 /* ~Il grogne et te regarde d'un air défiant. "Je les ai gardés pour pouvoir empailler ton patron Tourloupe et garder Trist loin du bloc !" Il secoue la tête. "Chantage mon œil…"~ */
  IF ~~ THEN REPLY #36572 /* ~"L'empailler ?"~ */ GOTO 19
  IF ~~ THEN REPLY #36573 /* ~"Pourquoi l'empailler ?"~ */ GOTO 21
  IF ~~ THEN REPLY #36574 /* ~"Au fait, Tourloupe n'est pas mon patron."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0
  SAY #36503 /* ~"Oui, empailler." Il te regarde un instant avant de réaliser que tu ne comprends pas ce qu'il veut dire. "Ça veut dire que j'allais le trahir, le dénoncer à l'Harmonium."~ */
  IF ~~ THEN REPLY #36575 /* ~"Pourquoi l'empailler ?"~ */ GOTO 21
  IF ~~ THEN REPLY #36576 /* ~"Au fait, Tourloupe n'est pas mon patron."~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.2 13.2
  SAY #36504 /* ~Il grogne et te regarde d'un air défiant. "Je les ai gardés pour pouvoir empailler ton patron Tourloupe et garder Trist loin du bloc !"~ */
  IF ~~ THEN REPLY #36577 /* ~"L'empailler ?"~ */ GOTO 19
  IF ~~ THEN REPLY #36578 /* ~"Pourquoi l'empailler ?"~ */ GOTO 21
  IF ~~ THEN REPLY #36579 /* ~"Au fait, Tourloupe n'est pas mon patron."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1
  SAY #36505 /* ~Il te regarde avec quelque fierté. "Je suis peut-être un voleur, mais j'ai mes règles. J'tue pas les pauvres bougres, et j'fais pas c'que Tourloupe a fait à Trist et à son mari." Il secoue la tête et détourne le regard. "J'ai dit à ton patron que ce qu'il faisait était mal, et il m'a rit au nez."~ */
  IF ~~ THEN REPLY #36580 /* ~"Au fait, Tourloupe n'est pas mon patron."~ */ GOTO 22
  IF ~~ THEN REPLY #36581 /* ~"Allons chercher les papiers, Lenny."~ */ GOTO 16
END

IF ~~ THEN BEGIN 22 // from: 18.2 19.1 20.2 21.0 26.1
  SAY #36506 /* ~Il te fixe avec incrédulité. "Tu es sérieux ? Je pensais… mais tu as dit…" Il te regarde de près pendant une seconde, puis éclate de rire. "Tu m'as pelé pour qu'je crache la chanson !" Il secoue la tête et te regarde avec respect. "Bon travail, matois."~ */
  IF ~~ THEN REPLY #36582 /* ~"Allons chercher les papiers, Lenny."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36507 /* ~Il remue la tête tristement. "On ne peut pas. Il y a des problèmes à l'entrepôt. Je ne sais pas ce qui se passe, mais ils sont fermés à cause de ça. J'ai essayé de récupérer les papiers, mais ils ont pas voulu me les rendre." Il te regarde d'un air penaud. "C'est pour ça que j'ai pas aidé Trist moi-même, matois. J'arrive pas à obtenir les bougres de papiers."~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36583 /* ~"J'ai réglé ce petit problème, on peut aller récupérer les papiers."~ */ GOTO 24
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36584 /* ~"Alors, je vais aller voir ça et je récupérerai les papiers moi-même."~ */ GOTO 24
  IF ~~ THEN REPLY #36585 /* ~"J'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 35.1 36.0
  SAY #36508 /* ~Il te sourit. "Va à l'entrepôt et dis *Je suis venu pour un prêt* et il te donnera les papiers de Trist. Si tu lui dis ensuite *J'ai joué un air à Tourloupe*, il te donnera une prime… "~ */
  IF ~~ THEN REPLY #36586 /* ~"Quelle prime ?"~ */ DO ~AddexperienceParty(4000)
SetGlobal("Stolen_Papers","GLOBAL",3)
SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36509 /* ~Il rit. "Les preuves, matois. Ça nous débarrassera de Tourloupe pendant longtemps, très longtemps, si tu les donnes à la bonne personne…" Il réfléchit un instant. "S'il y a quelqu'un dans l'Harmonium à qui tu penses pouvoir faire confiance, donne-les lui."~ */
  IF ~  Dead("Byron")
~ THEN REPLY #36587 /* ~"Il ne traîne plus dans les rues, Lenny. Byron est mort."~ */ GOTO 41
  IF ~~ THEN REPLY #39445 /* ~"Très bien. Au revoir."~ */ JOURNAL #36022 /* ~Lenny a rangé dans l'entrepôt les preuves qu'il a amassées contre Byron Tourloupe. Il m'a demandé de les amener à quelqu'un de confiance au sein de l'Harmonium. Je pourrai obtenir les preuves en discutant avec le fonctionnaire.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY #36510 /* ~Il fronce les sourcils. "Qu'est-ce que tu veux dire ?"~ */
  IF ~~ THEN REPLY #36588 /* ~"Ça ne te regarde pas."~ */ GOTO 17
  IF ~~ THEN REPLY #36589 /* ~"Je ne travaille pas pour Tourloupe, Lenny."~ */ DO ~AddexperienceParty(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 5.2 33.1 34.1 38.1 40.1
  SAY #36511 /* ~"T'es sûr de vouloir laisser tomber ta profession actuelle pour devenir voleur ?"~ */
  IF ~~ THEN REPLY #36590 /* ~"Oui…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 42
  IF ~~ THEN REPLY #52390 /* ~"Non, laisse-moi y réfléchir quelque temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #36512 /* ~Il regarde alentour et hausse les épaules. "C'est le Bas Quartier ici, domaine des Communs. La vie ici n'est pas aussi désespérée que dans la Ruche, mais pas aussi bonne que dans le Quartier des Gratte-Papier." Il regarde à nouveau alentour. "À part ça, pas grand-chose à dire.~ */
  IF ~~ THEN REPLY #36591 /* ~"Qu'est-ce que tu peux me dire sur la Ruche ?"~ */ GOTO 29
  IF ~~ THEN REPLY #36592 /* ~"Qu'est-ce que tu peux me dire sur le Quartier des Gratte-Papier ?"~ */ GOTO 30
  IF ~~ THEN REPLY #36593 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #36594 /* ~"Merci, je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 30.0
  SAY #36513 /* ~Il secoue la tête et sourit. "J'imagine qu'on pourrait appeler ça les quartiers pauvres de Sigil. Y'a tout un tas de pauvres bougres ici sans autre endroit où aller que le livre des morts." Il s'interrompt. "Rien d'autre à ajouter."~ */
  IF ~~ THEN REPLY #36595 /* ~"Qu'est-ce que tu peux me dire sur le Quartier des Gratte-Papier ?"~ */ GOTO 30
  IF ~~ THEN REPLY #36596 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #36597 /* ~"Merci, je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.0
  SAY #36514 /* ~Il sourit. "Le nom l'indique en clair, bige. Des gratte-papier, des gratte-papier et encore plus de gratte-papier. Si tu veux brasser de la paperasse, c'est là qu'il faut que tu ailles." Il hausse les épaules. "Rien d'autre à ajouter."~ */
  IF ~~ THEN REPLY #36598 /* ~"Qu'est-ce que tu peux me dire sur la Ruche ?"~ */ GOTO 29
  IF ~~ THEN REPLY #36599 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #36600 /* ~"Merci, je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #36515 /* ~Il sourit puis pouffe. "La plupart des gens croient que Sigil est le centre du multivers. Personnellement, je pense que c'en est le trou du cul, et que les bougres qui y vivent sont le fumier qu'il sécrète." Il continue à sourire.~ */
  IF ~~ THEN REPLY #36601 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #36602 /* ~"Merci, je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 32 // from:
  SAY #36516 /* ~Tu aperçois Lenny. Il t'adresse un sourire moqueur alors que tu approches. "Eh bien, rebonjour, bige. À quoi dois-je l'honneur ?"~ */
  IF ~~ THEN REPLY #36603 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36604 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 38 40 even though they appear after this state */
~  Global("Stolen_Papers","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #36517 /* ~Tu aperçois Lenny. Il n'a pas l'air très content de te voir. "Qu'est-ce que tu veux, bige ?"~ */
  IF ~~ THEN REPLY #36605 /* ~"J'ai quelques questions…"~ */ GOTO 34
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36606 /* ~"Je voudrais en savoir plus sur l'art du vol. Tu peux m'apprendre ?"~ */ GOTO 27
  IF ~~ THEN REPLY #36607 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36518 /* ~Il fronce les sourcils. "Plus de questions, et plus de réponses. Retourne chez ton patron, Tourloupe, et dis-lui de me laisser en paix." Il te regarde de travers.~ */
  IF ~~ THEN REPLY #36608 /* ~"Tourloupe n'est pas mon patron."~ */ GOTO 35
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36609 /* ~"Je voudrais en savoir plus sur l'art du vol. Tu peux m'apprendre ?"~ */ GOTO 27
  IF ~~ THEN REPLY #36610 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36519 /* ~Il te fixe avec incrédulité. "Tu es sérieux ? Je pensais… mais tu as dit…" Il te regarde de près pendant une seconde, puis éclate de rire. "Tu m'as pelé pour que je chante !" Il secoue la tête et te regarde avec respect. "Bon travail, matois." Il s'interrompt. "Qu'est-ce que tu dirais de jouer un air à Tourloupe ?"~ */
  IF ~~ THEN REPLY #36611 /* ~"Lui jouer un air ?"~ */ GOTO 36
  IF ~~ THEN REPLY #36612 /* ~"Oui, ça me dirait bien."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36613 /* ~"Non, ça m'est égal maintenant que j'ai récupéré ce que je cherchais."~ */ GOTO 37
  IF ~~ THEN REPLY #36614 /* ~"Je ne crois pas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36520 /* ~Il sourit. "Oui, lui jouer un air… L'expulser des rues, le faire partir, ce genre de choses."~ */
  IF ~~ THEN REPLY #36615 /* ~"Oui, ça me dirait bien."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36616 /* ~"Non, ça m'est égal maintenant que j'ai récupéré ce que je cherchais."~ */ GOTO 37
  IF ~~ THEN REPLY #36617 /* ~"Je ne crois pas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2 36.1
  SAY #36521 /* ~Il hausse les épaules. "Eh bien, tout est dit alors. Adieu, bougre."~ */
  IF ~~ THEN REPLY #36618 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 40 even though they appear after this state */
~  GlobalGT("Evidence_Papers","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #36522 /* ~Tu aperçois Lenny. Il sourit à ton approche. "Salut, matois. Que puis-je faire pour toi ?"~ */
  IF ~~ THEN REPLY #36619 /* ~"J'ai quelques questions…"~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36620 /* ~"Je voudrais en savoir plus sur l'art du vol. Tu peux m'apprendre ?"~ */ GOTO 27
  IF ~~ THEN REPLY #36621 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.0
  SAY #36523 /* ~"Je t'ai dit tout ce que je savais, matois. Je n'ai plus de réponses pour toi."~ */
  IF ~~ THEN REPLY #36622 /* ~"Bien, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Byron_Arrested","GLOBAL",0)
~ THEN BEGIN 40 // from:
  SAY #36524 /* ~Tu aperçois Lenny. Il sourit à ton approche. "Salut, matois. J'ai entendu parler de ce qui est arrivé à Byron et je ne pourrais pas être plus heureux." Il sourit. "Que puis-je faire pour toi ?"~ */
  IF ~~ THEN REPLY #36623 /* ~"J'ai quelques questions…~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36624 /* ~"Je voudrais en savoir plus sur l'art du vol. Tu peux m'apprendre ?"~ */ GOTO 27
  IF ~~ THEN REPLY #36625 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 25.0
  SAY #39446 /* ~Il hésite, puis sourit malicieusement. "Vraiment ? C'est merveilleux… ça n'aurait pas pu arriver à quelqu'un de plus sympathique."~ */
  IF ~~ THEN REPLY #39447 /* ~"Au revoir, Lenny."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.0
  SAY #52391 /* ~"Montre-moi ce que tu sais faire et je de donnerai quelques conseils." Il te regarde attentivement tandis que tu lui montres ce que tu sais faire. Il t'arrête à plusieurs reprises pour t'expliquer comment améliorer tes talents. Au bout de quelques heures, tu te sens à l'aise avec tes talents de voleur.~ */
  IF ~  Global("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Merci, Lenny."~ */ DO ~SetGlobal("Thief_Training","GLOBAL",3)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 43
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Merci, Lenny."~ */ GOTO 43
  IF ~  !HasItem("Zpunch",Myself)
~ THEN REPLY #64222 /* ~"Merci. Je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 42.1
  SAY #64223 /* ~Lenny sourit et acquiesce. "Tiens, matois. Prends également ceci. Un cadeau de la part de Lenny, pour t'aider dans ta profession… Je n'en aurai plus besoin." Il te tend une paire de dagues coup-de-poing.~ */
  IF ~~ THEN REPLY #64224 /* ~"Merci, Lenny. Au revoir."~ */ DO ~GiveItem("Zpunch",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #64783 /* ~"Montre-moi ce que tu sais faire et je de donnerai quelques conseils." Il te regarde attentivement tandis que tu lui montres ce que tu sais faire. Il t'arrête à plusieurs reprises pour t'expliquer comment améliorer tes talents. Au bout de quelques heures, tu te sens à l'aise avec tes talents de voleur.~ */
  IF ~~ THEN REPLY #64784 /* ~"Merci. Je dois m'en aller."~ */ EXIT
END
