// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELLERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELLERA~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6342 /* ~"Tu apprendras que je ne suis pas sans défense, balafré. Ne t'approche pas."~ */
  IF ~~ THEN REPLY #6343 /* ~Terminé.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6344 /* ~"On voit que tu n'es pas d'ici. Pars sur-le-champ, intrus, ou les gardes vont faire plus que de te servir d'escorte."~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #6345 /* ~"Juste une question rapide."~ */ GOTO 2
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6346 /* ~"Juste une question rapide."~ */ GOTO 3
  IF ~~ THEN REPLY #6347 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #6348 /* ~"Fiche le camp. Tout de suite. Avant qu'une bavure ne soit commise, ce que nous regretterions tous."~ */
  IF ~~ THEN REPLY #6349 /* ~"Réponds juste à une question !"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6350 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #6351 /* ~Tu vois une githzeraï au visage balafré. Elle est peut-être belle selon les canons de la beauté githzeraï. "Je ne peux pas t'aider. Pars avant qu'il me faille appeler les gardes. Si je t'accorde cette faveur, c'est uniquement à cause de ton compagnon." Elle s'incline vers Dak'kon et dit : "Pardonne-moi, l'Honoré."~ */
  IF ~~ THEN REPLY #6352 /* ~"Tout ça, c'est très bien, mais je voudrais que tu répondes à quelques questions pour moi."~ */ GOTO 5
  IF ~~ THEN REPLY #6353 /* ~"Très bien." Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.0
  SAY #6354 /* ~"Tu ne me laisses pas le choix." Elle s'arrête, puis crie : "GARDES ! À MOI !"~ */
  IF ~~ THEN REPLY #6355 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 7.0
  SAY #6357 /* ~Elle se retourne vers Dak'kon. "Toutes mes excuses." Elle se retourne vers toi. "Permets-moi d'être plus claire. Pars. Maintenant. Ou je serai forcée d'appeler les gardes pour qu'ils 't'escortent' jusqu'à la sortie. Notre projet ne doit pas être mis en péril."~ */
  IF ~~ THEN REPLY #6356 /* ~"Je voudrais juste que tu répondes à quelques questions pour moi !"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6358 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #6359 /* ~"Tu ne me laisses pas le choix." Elle s'arrête, puis crie : "GARDES ! À MOI !"~ */
  IF ~~ THEN REPLY #6360 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6361 /* ~Elle reparle à Dak'kon. "Ne reviens jamais ici, l'Honoré. Je ne veux pas avoir à te dénoncer aux gardes. Pars."~ */
  IF ~~ THEN REPLY #6362 /* ~"Écoute, réponds juste à une ou deux questions."~ */ GOTO 5
  IF ~~ THEN REPLY #6363 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6364 /* ~Ses yeux noirs se fixent sur Dak'kon. "Tu ne me laisses pas le choix, l'Honoré. Pardonne-moi auprès de nos ancêtres." Elle se tourne et hausse la voix. "Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #6365 /* ~Terminé.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 9 // from:
  SAY #6366 /* ~Tu aperçois une femme githzeraï, chauve, aux joues balafrées et à la démarche féline. Tandis qu'elle se retourne vers toi, elle dévisage Dak'kon. Elle écarquille les yeux. Elle s'adresse à lui : "Tu emplis mon cœur de joie. Mon nom est Kel'lera. Puis-je t'aider ?"~ */
  IF ~~ THEN DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 4
END

IF ~~ THEN BEGIN 10 // from: 35.0
  SAY #6370 /* ~"Tu n'as qu'à m'interroger, et je te répondrai si je le peux. Ton compagnon porte le fardeau de ton secret dans cette affaire comme une partie de son honneur propre et, si je ne sais pas si je peux te faire confiance, je sais que je peux lui faire confiance."~ */
  IF ~~ THEN REPLY #6371 /* ~"Dis-moi à quoi sert cet appareil."~ */ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6372 /* ~"Quels sont les points faibles de cet appareil ?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6373 /* ~"Qui a entrepris la création de cet appareil ?"~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6374 /* ~"Qui a entrepris la création de cet appareil ?"~ */ GOTO 12
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6375 /* ~"Qu'est-ce que tu peux me dire sur le meurtre ?"~ */ GOTO 17
  IF ~~ THEN REPLY #6376 /* ~"Qu'est-ce que tu peux me dire sur les ingénieurs ?"~ */ GOTO 18
  IF ~~ THEN REPLY #6377 /* ~Aparté avec Dak'kon : "Qui est-ce et pourquoi te traite-t-elle avec autant de respect ?"~ */ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6378 /* ~"Rien pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0
  SAY #6379 /* ~"Notre appareil émet un jet de feu magique brûlant même ceux qui résistent au feu ordinaire. Nous travaillons sur des applications susceptibles de contourner la résistance magique de certaines créatures."~ */
  IF ~~ THEN REPLY #6380 /* ~"Quelles sont ses autres applications possibles ?"~ */ GOTO 15
  IF ~~ THEN REPLY #6381 /* ~"Très bien. Réponds à d'autres questions pour moi."~ */ GOTO 21
  IF ~~ THEN REPLY #6382 /* ~"C'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.3 21.2 35.1
  SAY #6383 /* ~Elle regarde Tombée-en-Disgrâce, et sa bouche fait une moue gracieuse. "Je m'excuse, honorée, mais je ne peux pas parler de ça. Certaines 'manifestations' de… comment dire… croyance, m'obligent tant contractuellement que magiquement à ne pas en parler." Elle se tourne vers la succube. "Mes excuses, Dame Grâce."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 9
END

IF ~~ THEN BEGIN 13 // from: 10.1 21.1
  SAY #6387 /* ~Elle regarde Dak'kon d'un air gêné. Ce dernier t'observe un moment, puis il se retourne vers elle pour la rassurer. "Fort bien. Le point faible est le mécanisme de mise à feu à l'arrière de l'appareil. Si cette partie venait à subir des dommages considérables, ce serait notre fin à tous. Ça déclencherait une réaction en chaîne qui anéantirait tous ceux qui sont attachées à cette machine. Le saboteur aurait vraisemblablement le temps de s'enfuir, mais pas ceux d'entre nous qui serions attachés à la machine."~ */
  IF ~~ THEN REPLY #6388 /* ~"Attachés ? Que veux-tu dire ?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 20
  IF ~~ THEN REPLY #6389 /* ~"Bien. Réponds à d'autres questions pour moi."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 21
  IF ~~ THEN REPLY #6390 /* ~"Merci." Pars.~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6391 /* ~La surveillante se tourne de nouveau vers Tombée-en-Disgrâce d'un air gêné et serre les dents. "Je ne peux pas en parler."~ */
  IF ~~ THEN REPLY #6392 /* ~"Bon, très bien. Réponds à quelques questions."~ */ GOTO 21
  IF ~~ THEN REPLY #6393 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #6394 /* ~"À part ses caractéristiques d'arme ? Il pourrait être très utile pour l'exploitation minière. À condition de le régler correctement, il peut moissonner les champs de céréales. Pour un temps, il serait capable de constituer une carapace en durcissant la substance des Limbes - on a essayé quelques applications moindres de cette invention dans ce plan - ou on pourrait même l'utiliser comme moyen de propulsion à travers les sphères des Carcères. Ses usages possibles ne sont limités que par l'imagination de son utilisateur. Ce n'est pas uniquement un engin de destruction."~ */
  IF ~~ THEN REPLY #6395 /* ~"Intéressant. Réponds à d'autres questions pour moi."~ */ GOTO 21
  IF ~~ THEN REPLY #6396 /* ~"Très bien. Au revoir." Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2 21.3
  SAY #6397 /* ~Elle jette un coup d'œil autour d'elle, soupire, puis répond : "Bien que je n'aie pas participé aux négociations, je pense que ce sont les baatezus qui se sont offert nos services. Ce jeton est pour toi un gage d'immunité diplomatique auprès des baatezus que tu pourrais trouver sur ta route."~ */
  IF ~~ THEN REPLY #6398 /* ~"Ce sera très utile, c'est sûr. Réponds à d'autres questions pour moi, s'il te plaît."~ */ GOTO 21
  IF ~~ THEN REPLY #6399 /* ~"Merci pour le renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.4 21.4
  SAY #6400 /* ~"Je ne peux pas t'en dire beaucoup. Mes ouvriers et moi sommes ici depuis un bon moment. Je te suggère d'interroger quelqu'un susceptible de rester dans la fonderie une fois la nuit tombée. J'en connais deux : Thildon, le directeur des travaux, et Saros, qui semble avoir la manie de la fauche."~ */
  IF ~~ THEN REPLY #6401 /* ~"Thildon et Saros, hein ? Très bien. Réponds à d'autres questions pour moi, s'il te plaît."~ */ GOTO 21
  IF ~~ THEN REPLY #6402 /* ~"Thildon et Saros, hein ? Je vais vérifier. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.5 21.5
  SAY #6403 /* ~Elle se renfrogne, ce qui creuse de nouvelles rides dans son visage balafré. "Parle à l'un de mes forgerons si tu veux *connaître* les ingénieurs. Tu n'entendras pas un mot gentil sur les ingénieurs sortir de ma bouche."~ */
  IF ~~ THEN REPLY #6404 /* ~"Pourquoi pas ?"~ */ GOTO 19
  IF ~~ THEN REPLY #6405 /* ~"Très bien. Alors, réponds à d'autres questions."~ */ GOTO 21
  IF ~~ THEN REPLY #6406 /* ~"Très bien." Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #6407 /* ~"Pourquoi ? Parce qu'ils ne semblent pas avoir ce projet à cœur comme leurs camarades. Parce que ce sont des rêveurs qui ne prennent aucune initiative. Enfin, parce que leurs intentions ne me disent rien qui vaille, et que je pense qu'elles servent leurs intérêts à eux seuls."~ */
  IF ~~ THEN REPLY #6408 /* ~"Je vois. Alors, je vais te poser une autre question."~ */ GOTO 21
  IF ~~ THEN REPLY #6409 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.0
  SAY #6410 /* ~"Nous sommes liés à cette machine à cause des rites magiques qui la font fonctionner. En cas d'erreur, ou, pire, de sabotage, moi et toutes les personnes ici présentes serions à coup sûr brûlées vives. Pire encore, nos esprits eux-mêmes seraient détruits, mis en miettes, et tomberaient dans l'oubli. Notre secret est-il clair à présent ?"~ */
  IF ~~ THEN REPLY #6411 /* ~"Je crois. Réponds à d'autres questions pour moi, s'il te plaît…"~ */ GOTO 21
  IF ~~ THEN REPLY #6412 /* ~"Je crois. Au revoir."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from: 11.1 13.1 14.0 15.0 16.0 17.0 18.1 19.0 20.0 36.1
  SAY #6413 /* ~"Demande, et je te renseignerai si je le peux. J'ai confiance en la discrétion de ton compagnon."~ */
  IF ~~ THEN REPLY #6414 /* ~"Dis-moi à quoi sert cet appareil."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6415 /* ~"Quels sont les points faibles de cet appareil ?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6416 /* ~"Qui a entrepris la création de cet appareil ?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 12
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6417 /* ~"Qui a entrepris la création de cet appareil ?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 16
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6418 /* ~"Qu'est-ce que tu peux me dire sur le meurtre ?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 17
  IF ~~ THEN REPLY #6419 /* ~"Qu'est-ce que tu peux me dire sur les ingénieurs ?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 18
  IF ~~ THEN REPLY #6420 /* ~Aparté avec Dak'kon : "Qui est-ce et pourquoi te traite-t-elle avec autant de respect ?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6421 /* ~"Rien pour l'instant. Au revoir."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #6422 /* ~Une femme githzeraï balafrée et chauve s'avance vers toi avec une incroyable grâce. Ses yeux lancent des éclairs à travers ton corps, en t'observant. Elle dit : "Ce jeton te donne des droits d'accès. Que veux-tu d'autre de moi ?"~ */
  IF ~~ THEN REPLY #6423 /* ~"Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 23
  IF ~~ THEN REPLY #6424 /* ~"Ne me parle pas sur ce ton ou je te fais fouetter."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kellera_1","GLOBALGood",-1)
~ GOTO 24
  IF ~~ THEN REPLY #6425 /* ~"Rien pour l'instant. Au revoir."~ */ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from: 22.0 26.1 27.0 28.1 29.0 31.0 32.0 33.1 34.0 37.1
  SAY #6426 /* ~"Pose tes questions, alors, et vite. Sache que j'ai beaucoup de travail qui m'attend."~ */
  IF ~~ THEN REPLY #6427 /* ~"Dis-moi à quoi sert cet appareil."~ */ GOTO 26
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6428 /* ~"Quels sont les points faibles de cet appareil ?"~ */ GOTO 28
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6429 /* ~"Qui a entrepris la création de cet appareil ?"~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6430 /* ~"Qui a entrepris la création de cet appareil ?"~ */ GOTO 30
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6431 /* ~"Qu'est-ce que tu peux me dire sur le meurtre ?"~ */ GOTO 32
  IF ~~ THEN REPLY #6432 /* ~"Qu'est-ce que tu peux me dire sur les ingénieurs ?"~ */ GOTO 33
  IF ~~ THEN REPLY #6433 /* ~"Rien pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 28.0
  SAY #6434 /* ~Elle plisse les yeux. "Tu oses venir me menacer ici ? Fiche le camp et laisse-moi digérer cet affront ou je demande aux gardes de jeter les restes de ta carcasse dans la rue."~ */
  IF ~~ THEN REPLY #6435 /* ~"Plutôt mourir."~ */ GOTO 25
  IF ~~ THEN REPLY #6436 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #6437 /* ~"Ça doit pouvoir s'arranger. GARDES ! Tuez cet intrus !"~ */
  IF ~~ THEN REPLY #6438 /* ~Prépare-toi à combattre.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #6439 /* ~"Notre appareil émet un jet de feu magique brûlant même ceux qui résistent au feu ordinaire. Nous travaillons sur des applications susceptibles de contourner la résistance magique de certaines créatures."~ */
  IF ~~ THEN REPLY #6440 /* ~"Quelles sont ses autres applications possibles ?"~ */ GOTO 27
  IF ~~ THEN REPLY #6441 /* ~"Très bien. Réponds à d'autres questions pour moi."~ */ GOTO 23
  IF ~~ THEN REPLY #6442 /* ~"C'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #6443 /* ~"À part ses caractéristiques d'arme ? Il pourrait être très utile pour l'exploitation minière. À condition de le régler correctement, il peut moissonner les champs de céréales. Pour un temps, il serait capable de constituer une carapace en durcissant la substance des Limbes - on a essayé quelques applications moindres de cette invention dans ce plan - ou on pourrait même l'utiliser comme moyen de propulsion à travers les sphères des Carcères. Ses usages possibles ne sont limités que par l'imagination de son utilisateur. Ce n'est pas uniquement un engin de destruction."~ */
  IF ~~ THEN REPLY #6444 /* ~"Intéressant. Réponds à d'autres questions."~ */ GOTO 23
  IF ~~ THEN REPLY #6445 /* ~"Très bien. Au revoir." Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1
  SAY #6446 /* ~"Je ne vois pas pourquoi tu devrais détenir cette information, Homme-Dieu ou pas. Je ne te la livrerai pas."~ */
  IF ~~ THEN REPLY #6447 /* ~"Et si je t'obligeais à parler ?"~ */ GOTO 24
  IF ~~ THEN REPLY #6448 /* ~"Très bien. Alors, peux-tu répondre à d'autres questions ?"~ */ GOTO 23
  IF ~~ THEN REPLY #6449 /* ~"Je comprends. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.2
  SAY #6450 /* ~Elle jette un coup d'œil autour d'elle, soupire, puis répond : "Bien que je n'aie pas participé aux négociations, je pense que ce sont les baatezus qui se sont offert nos services. Ce jeton est pour toi un gage d'immunité diplomatique auprès des baatezus que tu pourrais trouver sur ta route."~ */
  IF ~~ THEN REPLY #6451 /* ~"Ce sera très utile, c'est sûr. Réponds à d'autres questions pour moi, s'il te plaît."~ */ GOTO 23
  IF ~~ THEN REPLY #6452 /* ~"Merci pour le renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.3
  SAY #6453 /* ~Elle regarde Tombée-en-Disgrâce, et sa bouche fait une moue gracieuse. "Je m'excuse, honorée, mais je ne peux pas parler de ça. Certaines 'manifestations' de… comment dire… croyance, m'obligent tant contractuellement que magiquement à ne pas en parler." Elle se tourne vers la succube. "Mes excuses, Dame Grâce."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 10
END

IF ~~ THEN BEGIN 31 // from:
  SAY #6457 /* ~Une fois de plus, la directrice se tourne vers Tombée-en-Disgrâce d'un air gêné et gémit : "Je ne peux pas le dire !"~ */
  IF ~~ THEN REPLY #6458 /* ~"Bon, très bien. Réponds à quelques questions."~ */ GOTO 23
  IF ~~ THEN REPLY #6459 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.4
  SAY #6460 /* ~"Je ne peux pas t'en dire beaucoup. Mes ouvriers et moi sommes ici depuis un bon moment. Je te suggère d'interroger quelqu'un susceptible de rester dans la fonderie une fois la nuit tombée. J'en connais deux : Thildon, le directeur des travaux, et Saros, qui semble avoir la manie de la fauche."~ */
  IF ~~ THEN REPLY #6461 /* ~"Thildon et Saros, hein ? Très bien. Réponds à d'autres questions pour moi, s'il te plaît."~ */ GOTO 23
  IF ~~ THEN REPLY #6462 /* ~"Thildon et Saros, hein ? Je vais vérifier. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.5
  SAY #6463 /* ~Elle se renfrogne, ce qui creuse de nouvelles rides dans son visage balafré. "Parle à l'un de mes forgerons si tu veux *connaître* les ingénieurs. Tu n'entendras pas un mot gentil sur les ingénieurs sortir de ma bouche."~ */
  IF ~~ THEN REPLY #6464 /* ~"Pourquoi pas ?"~ */ GOTO 34
  IF ~~ THEN REPLY #6465 /* ~"Très bien. Alors, réponds à d'autres questions."~ */ GOTO 23
  IF ~~ THEN REPLY #6466 /* ~"Très bien." Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #6467 /* ~"Pourquoi ? Parce qu'ils ne semblent pas avoir ce projet à cœur comme leurs camarades. Parce que ce sont des rêveurs qui ne prennent aucune initiative. Enfin, parce que leurs intentions ne me disent rien qui vaille, et que je pense qu'elles servent leurs intérêts à eux seuls."~ */
  IF ~~ THEN REPLY #6468 /* ~"Je vois. Alors, je vais te poser une autre question."~ */ GOTO 23
  IF ~~ THEN REPLY #6469 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #6470 /* ~Elle te regarde, puis se retourne vers lui d'un air interrogateur. "Bien sûr, Le Vénéré, dans la mesure où tu parles en son nom et que tu t'engages à garder le secret sur ce qui se passe ici." Elle se retourne vers toi à contrecœur. "As-tu quelque chose à me demander ?"~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6455 /* ~"Oui."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6456 /* ~"Oui."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #7998 /* ~"Non. Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #6472 /* ~Kel'lera acquiesce.~ */
  IF ~~ THEN REPLY #6367 /* ~"Qu'est-ce que ça veut dire ?"~ */ EXTERN ~DGRACE~ 7
  IF ~~ THEN REPLY #6368 /* ~"Très bien. Alors, réponds à d'autres questions pour moi, si tu le veux bien."~ */ GOTO 21
  IF ~~ THEN REPLY #6369 /* ~"Très bien. Alors, je n'ai plus rien à faire ici. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #6384 /* ~Kel'lera acquiesce.~ */
  IF ~~ THEN REPLY #6385 /* ~"Qu'est-ce que ça veut dire ?"~ */ EXTERN ~DGRACE~ 8
  IF ~~ THEN REPLY #6386 /* ~"Très bien. Alors, réponds à d'autres questions pour moi, s'il te plaît."~ */ GOTO 23
  IF ~~ THEN REPLY #6454 /* ~"Très bien. Alors, je n'ai plus rien à faire ici. Au revoir."~ */ EXIT
END
