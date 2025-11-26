// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOPPER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOPPER~

IF ~  Global("Coppereyes","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2474 /* ~Devant toi se tient un homme grand et silencieux, qui pourrait très bien passer pour une statue. Mais les rides profondes de son visage donnent à penser que le sculpteur a peut-être taillé les rides avec trop de zèle. Il doit avoir plus de cinquante ans, mais combien de plus, c'est difficile à dire. Il se retourne lentement vers toi, et tu remarques l'éclat cuivré de ses yeux.~ */
  IF ~~ THEN REPLY #2475 /* ~"Bonjour."~ */ DO ~SetGlobal("Coppereyes","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2476 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~  Global("Coppereyes","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.0
  SAY #2477 /* ~Le vieil Œilcuivré t'observe. On distingue mal ses yeux derrière le puits noir de ses orbites, mais ils ont un éclat cuivré.~ */
  IF ~  Global("Know_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #2478 /* ~"Je voudrais signer un Contrat à mort."~ */ GOTO 2
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2479 /* ~"Je veux annuler le Contrat à mort que j'ai signé avec toi."~ */ GOTO 13
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2480 /* ~"Rends-moi le Contrat à mort que j'ai signé ou je le récupère de force."~ */ GOTO 7
  IF ~~ THEN REPLY #12003 /* ~"J'ai quelques questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #12004 /* ~"Excuse-moi… Je t'avais pris pour quelqu'un d'autre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #2481 /* ~Œilcuivré fait un signe de la tête, puis saisit lentement ses habits d'Homme-Poussière des deux mains. Avec sa main gauche, il tire un petit sac de peau humaine. Avec sa main droite, il sort un parchemin enroulé autour d'un stylo-phalange. Il pose lentement le sac et le parchemin sur la table en face de toi.~ */
  IF ~~ THEN REPLY #2482 /* ~Prends le parchemin et examine-le.~ */ GOTO 3
  IF ~~ THEN REPLY #2484 /* ~Signe le parchemin.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2485 /* ~Examine le sac.~ */ GOTO 8
  IF ~~ THEN REPLY #2486 /* ~Prends le sac.~ */ GOTO 9
  IF ~~ THEN REPLY #2493 /* ~"J'ai changé d'avis. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 3 // from: 2.0 3.3 8.0 9.0
  SAY #2487 /* ~C'est un contrat qui autorise les Hommes-Poussière à prendre possession du corps du signataire après son passage de la Frontière Éternelle. Le signataire, en échange, reçoit une certaine somme des Hommes-Poussière, convenue au moment de la signature. Tu supposes que, dans le sac, se trouve la somme que tu recevras à la signature du contrat.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,50,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2488 /* ~Remplace le parchemin par l'autre contrat et signe-le.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
DestroyItemObject("FalseCon",Protagonist,FALSE)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #2489 /* ~Remplace le parchemin par l'autre contrat et signe-le.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,49,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2490 /* ~Remplace le parchemin par l'autre contrat et signe-le.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #2491 /* ~Examine le parchemin.~ */ GOTO 3
  IF ~~ THEN REPLY #2492 /* ~Signe le parchemin.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2494 /* ~Examine le sac.~ */ GOTO 8
  IF ~~ THEN REPLY #2495 /* ~Prends le sac.~ */ GOTO 9
  IF ~~ THEN REPLY #12008 /* ~"J'ai changé d'avis. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY #2496 /* ~Œilcuivré ne montre pas qu'il a remarqué l'échange. Une fois le contrat signé, Œilcuivré fait un signe en regardant le sac. Au moment où tu veux saisir le sac et compter ton argent, le contrat disparaît de la table, dans les plis de son habit.~ */
  IF ~~ THEN REPLY #2498 /* ~"J'ai des questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #2499 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #2497 /* ~Œilcuivré ne montre pas qu'il a remarqué l'échange. Une fois le contrat signé, Œilcuivré fait un signe en regardant le sac. Il laisse le parchemin sur la table, comme s'il voulait que tu relises le contrat… et tu remarques, avec effroi, que ton tour de passe-passe n'a pas fonctionné. Les Hommes-Poussière sont désormais propriétaires de ton corps après ta mort.~ */
  IF ~~ THEN REPLY #2500 /* ~"Euh… attends une minute… Est-ce que je pourrais revoir le contrat ?"~ */ GOTO 6
  IF ~~ THEN REPLY #2501 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2502 /* ~Le parchemin disparaît dans les plis de l'habit d'Œilcuivré. Il fait un signe en direction du sac.~ */
  IF ~~ THEN REPLY #2503 /* ~"Donne-moi ce contrat ou je te tue !"~ */ GOTO 7
  IF ~~ THEN REPLY #2504 /* ~Prends le sac et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 6.0 13.0
  SAY #2505 /* ~Œilcuivré ne réagit pas, mais soudain, la pièce s'obscurcit.~ */
  IF ~~ THEN REPLY #2506 /* ~"Qu'est-ce qu -?!"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.5 8.2 9.2
  SAY #2507 /* ~Le sac est rempli de pièces de cuivre. Il semble y en avoir une centaine.~ */
  IF ~~ THEN REPLY #2508 /* ~Prends le parchemin et examine-le.~ */ GOTO 3
  IF ~~ THEN REPLY #2509 /* ~Signe le parchemin.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2510 /* ~Examine encore le sac.~ */ GOTO 8
  IF ~~ THEN REPLY #2511 /* ~Prends le sac.~ */ GOTO 9
  IF ~~ THEN REPLY #2512 /* ~"J'ai changé d'avis. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 2.3 3.6 8.3 9.3
  SAY #2513 /* ~Au moment où tu t'apprêtes à saisir le sac, il disparaît de la table. Tu clignes des yeux et il réapparaît. Œilcuivré t'observe toujours.~ */
  IF ~~ THEN REPLY #2514 /* ~Prends le parchemin et examine-le.~ */ GOTO 3
  IF ~~ THEN REPLY #2515 /* ~Signe le parchemin.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2516 /* ~Examine le sac.~ */ GOTO 8
  IF ~~ THEN REPLY #2517 /* ~Attrape encore le sac.~ */ GOTO 9
  IF ~~ THEN REPLY #2518 /* ~"J'ai changé d'avis. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 1.3 4.0 11.0
  SAY #2519 /* ~Œilcuivré se tait.~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2522 /* ~"Je suis ici pour signer le Contrat à mort."~ */ GOTO 2
  IF ~~ THEN REPLY #2523 /* ~"Euh… peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 3.4 8.1 9.1
  SAY #2520 /* ~Tu finis de signer, et Œilcuivré fait un signe en direction du sac sur sa gauche. À ce moment, le contrat disparaît de la table, dans les plis de son habit.~ */
  IF ~~ THEN REPLY #2521 /* ~"J'ai des questions à poser…"~ */ GOTO 10
  IF ~~ THEN REPLY #2526 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 3.7 8.4 9.4
  SAY #2524 /* ~Œilcuivré se tait et saisit simplement le sac et le parchemin, puis les range dans les plis de son habit.~ */
  IF ~~ THEN REPLY #2525 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #12005 /* ~Œilcuivré ne dit rien.~ */
  IF ~~ THEN REPLY #12006 /* ~"Je te donne une dernière chance. Rends-moi le contrat ou tu risques de le regretter."~ */ GOTO 7
  IF ~~ THEN REPLY #12007 /* ~"Euh… Peu importe. Au revoir."~ */ EXIT
END
