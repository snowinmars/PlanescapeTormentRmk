// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17512 /* ~"Saute, Lim-Lim, saute !" Le marchand semble soudain te remarquer. "Bonjour ! Voudrais-tu acheter un de ces Lim-Lims enjoués et divertissants, M'sieur ?"~ */
  IF ~~ THEN REPLY #17537 /* ~"Non, mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17539 /* ~"Pas tout de suite. Qu'est-ce que c'est que ces 'Lim-Lims' ?"~ */ GOTO 3
  IF ~~ THEN REPLY #17540 /* ~"Oui."~ */ GOTO 4
  IF ~~ THEN REPLY #17541 /* ~"Non merci. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Buy_LL","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #17513 /* ~"Regardez comme ils… oh, de retour, m'sieur ? Pour acheter un Lim-Lim ?"~ */
  IF ~~ THEN REPLY #17542 /* ~"Non, mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17543 /* ~"Pas tout de suite. Qu'est-ce que c'est que ces 'Lim-Lims' ?"~ */ GOTO 3
  IF ~~ THEN REPLY #17544 /* ~"Oui."~ */ GOTO 4
  IF ~~ THEN REPLY #17545 /* ~"Non merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.3 4.5 6.1 7.1 9.0
  SAY #17515 /* ~"J'ai bien peur de ne pouvoir répondre qu'à des questions sur les Lim-Lims, m'sieur."~ */
  IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN REPLY #17546 /* ~"Alors, tu peux peut-être me dire pourquoi le mien s'est sauvé."~ */ GOTO 7
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17547 /* ~"Mais qu'est-ce que c'est ?"~ */ GOTO 3
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17548 /* ~"Je voudrais en acheter un."~ */ GOTO 4
  IF ~~ THEN REPLY #17549 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1
  SAY #17516 /* ~"Ils viennent de l'Outreterre, m'sieur, pas tout à fait des insectes ni des animaux. Ils sont amicaux, enjoués et vraiment loyaux." Il jette un regard oblique aux Lim-Lims, puis s'approche pour murmurer : "Assez goûteux aussi, si besoin est."~ */
  IF ~~ THEN REPLY #17550 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17551 /* ~"Je voudrais en acheter un."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.2 3.1
  SAY #17517 /* ~"Un Lim-Lim se nourrit tout seul, en mangeant des insectes, de petits rongeurs et autres. Ils te suivront partout, ils ne salissent pas, sont silencieux, font de l'exercice en sautant sans arrêt et encore mieux - ils peuvent sauter cinq mètres quand on les pousse avec des morceaux de charbon ardent ! Un pour quarante pièces seulement, m'sieur, une misère pour un ami et un compagnon aussi amusant !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17553 /* ~"Morte ? Qu'est-ce que tu en penses ?"~ */ EXTERN ~DMORTE~ 187
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17555 /* ~"Qu'est-ce que tu en penses, Annah ?"~ */ EXTERN ~DANNAH~ 107
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17556 /* ~"J'en prends un, alors"~ */ DO ~TakePartyGold(40)
~ GOTO 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17557 /* ~"Je préfère garder mes pièces de cuivre. Mais j'ai des questions…"~ */ GOTO 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17559 /* ~"En fait, je vais garder mes pièces de cuivre. Au revoir."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17560 /* ~"Je n'ai pas assez, mais j'ai quelques questions…"~ */ GOTO 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17562 /* ~"Je n'ai pas assez d'argent pour en acheter un. Tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #17518 /* ~"Très bien, m'sieur ! Voici…"~ */
  IF ~~ THEN REPLY #17563 /* ~"Mon Lim-Lim à moi…"~ */ DO ~SetGlobal("Buy_LL","GLOBAL",1)
GiveItemCreate("LimLim",Protagonist,1,0,0)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #17519 /* ~"Regardes comme ils… oh, de retour, m'sieur ? Où est ton Lim-Lim ?"~ */
  IF ~~ THEN REPLY #17565 /* ~"Il s'est sauvé. Tu m'avais dit qu'il me suivrait partout."~ */ GOTO 7
  IF ~~ THEN REPLY #17567 /* ~"Je n'ai pas envie d'en parler. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17568 /* ~"Ne m'en parle pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 6.0
  SAY #17520 /* ~"Vraiment ? C'est bizarre !"~ */
  IF ~~ THEN REPLY #17569 /* ~"J'exige un dédommagement."~ */ GOTO 8
  IF ~~ THEN REPLY #17570 /* ~"C'est pas grave. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17572 /* ~"Ne t'inquiète pas pour ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17521 /* ~"Mais m'sieur… ce n'est pas de ma faute ! Un Lim-Lim non dressé, peut-être bien volé…"~ */
  IF ~~ THEN REPLY #17573 /* ~"Rends-moi mes quarante pièces de cuivre."~ */ GOTO 11
  IF ~~ THEN REPLY #17574 /* ~"Rends-moi mes quarante pièces plus vingt autres en dédommagement."~ */ GOTO 11
  IF ~~ THEN REPLY #17575 /* ~"Rends-moi mes quarante pièces plus quarante autres en dédommagement."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Buy_LL","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #17522 /* ~"Regardes comme ils… oh, de retour, m'sieur ?"~ */
  IF ~~ THEN REPLY #17730 /* ~"Oui. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #17731 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #17526 /* ~(Nœud nul)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 8.1 8.2
  SAY #17527 /* ~"M-ma-mais tu peux pas ! Tu peux pas me tenir pour responsable, c'est pas possible !"~ */
  IF ~~ THEN REPLY #17576 /* ~"Bien sûr que si. Ce n'est que justice. Tu m'avais dit qu'il me suivrait partout."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_LL_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #17577 /* ~Vérité : "Tu paies ou tu vas en enfer, à toi de choisir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17579 /* ~Bluff : "Tu paies ou tu vas en enfer, à toi de choisir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_LL_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17580 /* ~"Alors, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2
  SAY #17528 /* ~"Très bien, je ! Qu'est-ce que c'est que ça, là-bas ?" Il décampe soudain !~ */
  IF ~~ THEN REPLY #17581 /* ~"Qu'est-ce que…"~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #17529 /* ~"Saute, Lim-Lim, sau-oooh !" Le marchand te repère et commence à s'enfuir.~ */
  IF ~~ THEN REPLY #17582 /* ~"La vache…"~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END
