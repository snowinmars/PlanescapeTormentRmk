// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43405 /* ~"Hé, ne me touche pas ! Laisse-moi tranquille !"~ */
  IF ~~ THEN REPLY #43406 /* ~"Je voulais juste… Laisse tomber."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #43407 /* ~"Ils t'ont eu, hein ? Dommage."~ */
  IF ~~ THEN REPLY #43408 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
!Dead("Sandoz")
~ THEN BEGIN 2 // from:
  SAY #43409 /* ~"Merci de ta pitié. Dorénavant, je resterai dans le droit chemin, d'accord ?"~ */
  IF ~~ THEN REPLY #43410 /* ~"Bien sûr, Saros. Tu veux bien répondre à quelques questions ?"~ */ GOTO 4
  IF ~~ THEN REPLY #43411 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 6 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",3)
GlobalLT("G_Test2","GLOBAL",12)
~ THEN BEGIN 3 // from:
  SAY #43412 /* ~"Qu'est-ce que tu as trouvé ? Tu vas me rendre ma liberté ?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43413 /* ~"Thildon dit que tu as planté la pique sur le lieu du meurtre et que tu essaies de le faire accuser parce que vous êtes fâchés, tous les deux."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43414 /* ~"Thildon m'a dit que toi et Bedai-Lihn êtes des Anarchistes et que vous essayez de le faire accuser parce qu'il a refusé d'entrer dans votre mouvement."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43415 /* ~"J'en sais assez pour prendre ma décision."~ */ GOTO 18
  IF ~~ THEN REPLY #43416 /* ~"Non, pas encore. Mais j'ai d'autres questions à te poser."~ */ GOTO 15
  IF ~~ THEN REPLY #43417 /* ~"Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.2 8.0 10.2 11.0 13.0
  SAY #43418 /* ~"Bien sûr. Tout ce que tu voudras…"~ */
  IF ~~ THEN REPLY #43419 /* ~"Parle-moi de toi."~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43420 /* ~"Parle-moi de la Grande Fonderie."~ */ GOTO 9
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43421 /* ~"Parle-moi de la Grande Fonderie."~ */ GOTO 8
  IF ~~ THEN REPLY #43422 /* ~"Parle-moi des Anarchistes."~ */ GOTO 10
  IF ~~ THEN REPLY #43423 /* ~"Parle-moi des gens d'ici."~ */ GOTO 11
  IF ~~ THEN REPLY #43424 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43425 /* ~"Voyons… J'ai grandi à la Grande Fonderie avec ma sœur Sarossa. Mon père, Sandoz, travaille ici comme régisseur, alors il passe beaucoup de temps à l'extérieur pour essayer de trouver de nouveaux membres et d'accroître l'influence de la faction. Ma sœur Sarossa est une sorte de guenaude, mais elle s'y connaît. Elle peut transformer les gens pour les faire ressembler à ce qu'ils sont."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43426 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 13
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43427 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 13
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43428 /* ~"J'ai déjà entendu parler de ça. Tu veux bien répondre à d'autres questions ?"~ */ GOTO 4
  IF ~~ THEN REPLY #43429 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
Dead("Sandoz")
~ THEN BEGIN 6 // from:
  SAY #43430 /* ~"Laisse-moi tranquille. Mon père est mort."~ */
  IF ~~ THEN REPLY #43431 /* ~"J'ai quelques questions."~ */ GOTO 7
  IF ~~ THEN REPLY #43432 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #43433 /* ~"Je t'ai dit de me laisser tranquille !"~ */
  IF ~~ THEN REPLY #43434 /* ~"D'accord, d'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #43435 /* ~"J'ai grandi ici. Je jouais autour de la fonderie principale et je courais entre les baraquements. Ça pue, il y a du bruit et les gens sont parfois… ce ne sont que des gens, je suppose… mais c'est quand même chez moi."~ */
  IF ~~ THEN REPLY #43436 /* ~"Très touchant. Réponds encore à quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #43437 /* ~"Merci, Saros. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY #43438 /* ~"Ils sont tous morts. Tous ceux qui jouaient avec moi quand j'étais petit… Ils sont tous morts dans cette explosion. Je me sentais chez moi à la Grande Fonderie, mais maintenant, ça me fait mal. Tu peux me laisser seul ?"~ */
  IF ~~ THEN REPLY #43439 /* ~"C'est dur, gamin. J'ai d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #43440 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3
  SAY #43441 /* ~"Je préférerais éviter de parler de ça. Je croyais qu'ils allaient m'aider et que ma vie deviendrait passionnante, mais au lieu de ça, ils se sont attaqués à moi. Je crois qu'ils doivent se protéger quand tout le monde est contre eux… mais je voulais juste être un des leurs."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",0)
~ THEN REPLY #43442 /* ~"Ça va à l'encontre des principes mêmes de l'anarchie, Saros. Tu es censé être toi-même."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Saros_1","GLOBALLaw",-1)
AddexperienceParty(200)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",1)
~ THEN REPLY #43443 /* ~"Ça va à l'encontre des principes mêmes de l'anarchie, Saros. Tu es censé être toi-même."~ */ GOTO 14
  IF ~~ THEN REPLY #43444 /* ~"Bien sûr. Tu n'es qu'un enfant. Ça te passera. Réponds à d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #43445 /* ~"Je comprends. Ça te passera. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.4
  SAY #43446 /* ~Il hausse les épaules. "Ce ne sont que des gens."~ */
  IF ~~ THEN REPLY #43447 /* ~"Très intéressant. Tu peux répondre à d'autres questions ?"~ */ GOTO 4
  IF ~~ THEN REPLY #43448 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #43449 /* ~"Alors, pour être des leurs, il ne faut pas que j'en ai envie, c'est ça ?"~ */
  IF ~~ THEN REPLY #43450 /* ~"En gros, oui. En étant toi-même, tu deviens plus qu'un pion. Réfléchis-y. Au revoir."~ */ JOURNAL #39515 /* ~J'ai dit à Saros comment devenir Anarchiste.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1
  SAY #43451 /* ~"Il lui suffit de regarder quelqu'un pour savoir ce qu'il faut ajouter et enlever. Je ne sais pas comment elle fait. Mon père disait toujours que c'était en rapport avec son ascendance vers un autre niveau. Il disait *qu'elle* était un Homme-Dieu de naissance."~ */
  IF ~~ THEN REPLY #43452 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #43453 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #43454 /* ~"Tu me l'as déjà dit ! Tu ne pourrais pas être un peu plus original ? Pourquoi tu répètes sans arrêt la même chose ? Tu attends autre chose de moi ?"~ */
  IF ~~ THEN REPLY #43455 /* ~"Je ne crois pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 16.0 19.0 20.0 21.0 23.1 28.2 29.0
  SAY #43456 /* ~"Qu'est-ce que tu voulais savoir ?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43457 /* ~"Thildon dit que tu as planté la pique sur le lieu du meurtre et que tu essaies de le faire accuser parce que vous êtes fâchés, tous les deux."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43458 /* ~"Thildon m'a dit que toi et Bedai-Lihn êtes des Anarchistes et que vous essayez de le faire accuser parce qu'il a refusé d'entrer dans votre mouvement."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43459 /* ~"J'en sais assez pour prendre ma décision."~ */ GOTO 18
  IF ~~ THEN REPLY #43460 /* ~"Parle-moi de toi."~ */ GOTO 19
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43461 /* ~"Parle-moi de la Grande Fonderie."~ */ GOTO 20
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43462 /* ~"Parle-moi de la Grande Fonderie."~ */ GOTO 21
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
~ THEN REPLY #43463 /* ~"Parle-moi des Anarchistes."~ */ GOTO 22
  IF ~~ THEN REPLY #43464 /* ~"Parle-moi des gens d'ici."~ */ GOTO 23
  IF ~~ THEN REPLY #43465 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.0 15.0
  SAY #43466 /* ~"Bien sûr ! Il est coupable, et il veut détourner ton attention ! Je l'ai vu tuer cet homme ! Oh, on a eu nos désaccords, mais ça ne veut pas dire que je tiens à le voir mort. Il n'a pas à être arrêté parce que c'est un bige de la pire espèce, mais parce qu'il a tué Avildon ! Dis-lui qu'il lui faut une preuve !"~ */
  IF ~~ THEN REPLY #43468 /* ~"Bon, très bien. J'ai d'autres questions à te poser."~ */ JOURNAL #39514 /* ~Saros nie avoir voulu faire accuser Thildon, même s'il affirme que ce dernier est bien le coupable. Comme si je ne savais pas qu'il faut bien qu'il y ait un meurtrier…~ */ GOTO 15
  IF ~~ THEN REPLY #43469 /* ~"C'est ça. Au revoir."~ */ JOURNAL #39514 /* ~Saros nie avoir voulu faire accuser Thildon, même s'il affirme que ce dernier est bien le coupable. Comme si je ne savais pas qu'il faut bien qu'il y ait un meurtrier…~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.1 15.1 22.0 22.1
  SAY #43470 /* ~Saros blêmit. "Elle n'a rien à voir avec ça. Ça ne concerne que moi. Mais la vérité, c'est que Thildon a poussé Avildon dans les engrenages. J'ai mis la pique là pour que tout le monde sache qu'il était là, parce que je ne suis qu'un enfant et que personne ne m'aurait cru. N'est-ce pas ? Je reconnais que j'ai planté la pique. Mais si je l'ai fait, c'est uniquement pour être sûr qu'il serait puni pour le crime qu'il a commis."~ */
  IF ~~ THEN REPLY #43471 /* ~"Alors, je vais voir comment annoncer ça à Keldor."~ */ JOURNAL #39513 /* ~Saros a reconnu sans difficulté que c'était lui qui avait mis le poinçon près du corps. Il prétend avoir agi pour que l'on se rende compte de la culpabilité de Thildon.~ */ GOTO 18
  IF ~~ THEN REPLY #43472 /* ~"Pourquoi ? Et si tu faisais ça pour l'accuser d'un autre crime ?"~ */ JOURNAL #39513 /* ~Saros a reconnu sans difficulté que c'était lui qui avait mis le poinçon près du corps. Il prétend avoir agi pour que l'on se rende compte de la culpabilité de Thildon.~ */ GOTO 27
  IF ~~ THEN REPLY #43473 /* ~"On verra ça. Au revoir."~ */ JOURNAL #39513 /* ~Saros a reconnu sans difficulté que c'était lui qui avait mis le poinçon près du corps. Il prétend avoir agi pour que l'on se rende compte de la culpabilité de Thildon.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.2 15.2 17.0
  SAY #43474 /* ~"Qu'est-ce que tu as décidé ?" Il semble se retenir de pleurer.~ */
  IF ~~ THEN REPLY #43475 /* ~"Tu le sauras quand je le lui aurai dit."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #43476 /* ~"J'ai peur. J'ai peur que tu m'accuses d'être l'assassin, et ce n'est pas moi !"~ */
  IF ~~ THEN REPLY #43477 /* ~"On verra ça. Réponds à d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #43478 /* ~"C'est ce que je ferais si tu es coupable. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #43479 /* ~"On dirait que tout va de travers ici en ce moment… Ils disent que c'est une épreuve de la vie, mais… Je ne sais pas…"~ */
  IF ~~ THEN REPLY #43480 /* ~"Réponds à d'autres questions, alors…"~ */ GOTO 15
  IF ~~ THEN REPLY #43481 /* ~"C'est partout pareil. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.5
  SAY #43482 /* ~"J'ai grandi ici. Je jouais autour de la fonderie principale et je courais entre les baraquements. Ça pue, il y a du bruit et les gens sont peut-être comme Thildon… mais c'est quand même chez moi."~ */
  IF ~~ THEN REPLY #43483 /* ~"Je vois. Réponds à d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #43484 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY #43485 /* ~"Ils sont… Des gens sont venus me parler et ils m'ont dit que j'étais le genre de personne dont ils avaient besoin, parce que j'ai accès à tout et que personne ne fait jamais attention à moi… Je ne savais pas que quelqu'un allait mourir. Je croyais que je devais juste jouer les espions. Mais, c'est alors que Thildon a poussé Avildon dans les engrenages et qu'il a dit qu'il m'accuserait et… Je ne sais même pas qui étaient les gens qui m'ont parlé !"~ */
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #43486 /* ~"Alors, est-ce que toi et Bedai-Lihn avez tendu un piège à Thildon ? C'est ce qu'il croit. Il a l'air sûr qu'elle était dans le coup."~ */ GOTO 17
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43487 /* ~"Alors, est-ce que toi et Bedai-Lihn avez tendu un piège à Thildon ? C'est ce qu'il croit. Il a l'air sûr qu'elle était dans le coup."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
END

IF ~~ THEN BEGIN 23 // from: 15.7
  SAY #43488 /* ~"Ce sont des forgerons et des ouvriers. Je pense que leurs intentions sont bonnes, mais ils sont tous si sérieux et *ennuyeux* ! Il faudrait qu'ils s'animent un peu. Comme, disons, les Sensats."~ */
  IF ~~ THEN REPLY #43489 /* ~"Tu aimes bien les Sensats, hein ?"~ */ GOTO 28
  IF ~~ THEN REPLY #43490 /* ~"Je comprends que tu puisses penser ça. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #43491 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalLT("G_Test2","GLOBAL",4)
GlobalGT("G_Test2","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #43492 /* ~"Ce pauvre forgeron… Je n'arrive pas à croire ce qui lui est arrivé…"~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
~ THEN REPLY #43493 /* ~"J'ai entendu dire que tu avais peut-être vu ce qui s'était passé ou qu'éventuellement, tu aurais des indices."~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #43494 /* ~"C'est affreux d'être coincé comme ça dans les rouages. J'ai quelques questions…"~ */ GOTO 26
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43495 /* ~"J'ai entendu dire que tu avais peut-être vu ce qui s'était passé ou qu'éventuellement, tu aurais des indices."~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #64942 /* ~"Moi non plus. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.2 26.0 26.1
  SAY #43496 /* ~"Qui t'a dit ça ? La directrice ? Elle a raison. Je viens parfois ici la nuit, quand il n'y a personne." Il regarde autour de lui, comme s'il craignait d'être espionné, puis se penche vers toi. "J'ai vu Thildon sortir d'ici en rampant. Je suis sûr que c'était lui, car il a laissé tomber quelque chose." Il te tend une pique surmontée d'un manche en bois sur lequel est gravé 'Thildon'.~ */
  IF ~~ THEN REPLY #43497 /* ~"Merci. Je reviendrai sûrement t'interroger."~ */ JOURNAL #39512 /* ~Saros m'a tendu un poinçon sur lequel était gravé le nom de Thildon. Il m'a dit qu'il l'avait trouvé à côté du corps, la nuit du meurtre.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 30.0 31.0 32.0 33.1 34.2 35.0 36.0 37.0
  SAY #43498 /* ~"Demande-moi ce que tu veux."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"J'ai entendu dire que tu avais peut-être vu ce qui s'était passé ou qu'éventuellement, tu aurais des indices."~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"J'ai entendu dire que tu avais peut-être vu ce qui s'était passé ou qu'éventuellement, tu aurais des indices."~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #43500 /* ~"Parle-moi de toi."~ */ GOTO 30
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43501 /* ~"Parle-moi de la Grande Fonderie."~ */ GOTO 31
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43502 /* ~"Parle-moi de la Grande Fonderie."~ */ GOTO 32
  IF ~~ THEN REPLY #43503 /* ~"Parle-moi des gens d'ici."~ */ GOTO 33
  IF ~~ THEN REPLY #43504 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #43505 /* ~"Parce que… Parce que… Je ne vois pas ce qui pourrait te faire croire ça. Mais je te promets… Va lui parler et répète-lui ce que je t'ai dit ; ensuite, tu pourras te faire ta propre opinion."~ */
  IF ~~ THEN REPLY #43506 /* ~"Je vais le faire. Reste ici."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.0
  SAY #43507 /* ~"Ils savent ce qu'est la vie. Ils savent vivre. Ce n'est pas comme ces gens. Ils n'arrêtent pas de feindre qu'il y a un noble but à tout ça, mais moi, je n'en vois aucun. Ma sœur dit que la vie est bien plus que ce que nous révèlent nos sens, mais je ne vois pas d'où elle tient ça, car tout ce qu'elle sait lui vient de ses sens. Je ne comprends pas pourquoi les gens inventent ça."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43508 /* ~"C'est qui, ta sœur ?"~ */ GOTO 29
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43509 /* ~"C'est qui, ta sœur ?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 29
  IF ~~ THEN REPLY #43510 /* ~"Hum. Je vois. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #43511 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #43512 /* ~"Sarossa ? Il lui suffit de regarder quelqu'un pour savoir ce qu'il faut ajouter et enlever. Je ne sais pas comment elle fait. Mon père disait toujours que c'était en rapport avec son ascendance vers un autre niveau. Il disait *qu'elle* était un Homme-Dieu de naissance."~ */
  IF ~~ THEN REPLY #43513 /* ~"Intéressant. Je voudrais te poser d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #43514 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY #43515 /* ~"De moi ? Je m'appelle Saros. J'ai grandi ici. Je courais à travers la Grande Fonderie, je jouais avec des tas de choses… J'aime à peu près tout le monde ici, sauf Thildon. Il n'arrête pas de dire que je suis mal élevé et que mon père n'est pas à la hauteur. Tout ce que je sais, c'est que Thildon est le pire bougre que je connaisse."~ */
  IF ~~ THEN REPLY #43516 /* ~"J'en suis sûr. J'ai encore quelques questions."~ */ GOTO 26
  IF ~~ THEN REPLY #43517 /* ~"Compris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY #43518 /* ~"On dirait que tout va de travers ici en ce moment… Ils disent que c'est une épreuve de la vie, mais… Je ne sais pas…"~ */
  IF ~~ THEN REPLY #43519 /* ~"Réponds à d'autres questions, alors…"~ */ GOTO 26
  IF ~~ THEN REPLY #43520 /* ~"C'est partout pareil. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.4
  SAY #43521 /* ~"J'ai grandi ici. Je jouais autour de la fonderie principale et je courais entre les baraquements. Ça pue, il y a du bruit et les gens sont peut-être comme Thildon… mais c'est quand même chez moi."~ */
  IF ~~ THEN REPLY #43522 /* ~"Je vois. Réponds à d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #43523 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.5
  SAY #43524 /* ~"Ce sont des forgerons et des ouvriers. Je pense que leurs intentions sont bonnes, mais ils sont tous si sérieux et *ennuyeux* ! Il faudrait qu'ils s'animent un peu. Comme, disons, les Sensats."~ */
  IF ~~ THEN REPLY #43525 /* ~"Tu aimes bien les Sensats, hein ?"~ */ GOTO 34
  IF ~~ THEN REPLY #43526 /* ~"Je comprends que tu puisses penser ça. J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #43527 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #43528 /* ~"Ils savent ce qu'est la vie. Ils savent vivre. Ce n'est pas comme ces gens. Ils n'arrêtent pas de feindre qu'il y a un noble but à tout ça, mais moi, je n'en vois aucun. Ma sœur dit que la vie est bien plus que ce que nous révèlent nos sens, mais je ne vois pas d'où elle tient ça, car tout ce qu'elle sait lui vient de ses sens. Je ne comprends pas pourquoi les gens inventent ça."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43529 /* ~"C'est qui, ta sœur ?"~ */ GOTO 35
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43530 /* ~"C'est qui, ta sœur ?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 35
  IF ~~ THEN REPLY #43531 /* ~"Hum. Je vois. J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #43532 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #43534 /* ~"Sarossa ? Il lui suffit de regarder quelqu'un pour savoir ce qu'il faut ajouter et enlever. Je ne sais pas comment elle fait. Mon père disait toujours que c'était en rapport avec son ascendance vers un autre niveau. Il disait *qu'elle* était un Homme-Dieu de naissance."~ */
  IF ~~ THEN REPLY #43535 /* ~"Intéressant. Je voudrais te poser d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #43536 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 36 // from:
  SAY #43537 /* ~"Encore toi, hein ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #43538 /* ~"Je voulais juste te poser quelques questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #43539 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from:
  SAY #43540 /* ~Tu vois un jeune homme blond roux. Ce n'est plus tout à fait un adolescent, ni encore un adulte, et dans ses yeux, tu vois qu'il essaie d'être le plus adulte possible sans avoir la moindre idée de ce qu'il doit faire - autrement dit, il a l'air innocent. "Hé, étranger. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #43541 /* ~"Tu peux peut-être répondre à quelques questions…"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #43542 /* ~"Rien, merci. Au revoir."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ EXIT
END
