// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19349 /* ~Ce cadavre mâle en décomposition semble d'abord ne pas remarquer ta présence. Lorsque tu t'approches il se tourne et incline lentement la tête comme s'il te souhaitait la bienvenue.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19397 /* ~"Bonjour…"~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19398 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #19399 /* ~Laisse le zombi tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1
  SAY #19350 /* ~Le zombi gémit doucement en réponse : "Ggnhuuu… fnnnnuuugh…" À chaque expiration, la puanteur de la chair en décomposition emplit l'air.~ */
  IF ~~ THEN REPLY #19400 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #19401 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19351 /* ~"Stuuuhhh… mmmaaa-uuhrrr." Le zombi émet une série de gémissements inintelligibles… tu ne comprends rien à ce qu'il dit.~ */
  IF ~~ THEN REPLY #19402 /* ~"Je ne te comprends pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0
  SAY #19352 /* ~Le zombi gémit doucement en réponse. Seule ta capacité à converser avec les morts te permet de le comprendre. "Booonnnjour."~ */
  IF ~~ THEN REPLY #19403 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #19404 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19353 /* ~Le cadavre se tient là un moment, oscillant d'un pied sur l'autre, avant de répondre. "Quest-yon ?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19405 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #19407 /* ~"Où suis-je ?"~ */ GOTO 7
  IF ~~ THEN REPLY #19408 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 8
  IF ~  !Dead("Soego2")
~ THEN REPLY #19410 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Dead("Soego2")
~ THEN REPLY #19523 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19411 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19413 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 23
  IF ~~ THEN REPLY #19415 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 25.1
  SAY #19357 /* ~La tête du mort oscille lentement. "Quest… yons."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19417 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #19418 /* ~"Où suis-je ?"~ */ GOTO 7
  IF ~~ THEN REPLY #19419 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19420 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19421 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19422 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19423 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 23
  IF ~~ THEN REPLY #19424 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19358 /* ~Un long silence s'instaure. "Uuuuhhh ?" Le zombi hausse les épaules, l'une plus haut que l'autre. "Deeeemande Mmmarie, Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19425 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19426 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19427 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19359 /* ~"Maaaison. Mmma maison." Avec ce qui lui reste de muscles faciaux, il esquisse un sourire. "Teeerre du Roooi Sssilencieux, Naaa-syon Mooortes."~ */
  IF ~~ THEN REPLY #19428 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19429 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19430 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19375 /* ~Le zombi te regarde fixement un moment. "Mmmon dee-voir. Mmmon traaavail, pppour le Roi SSSilencieux. Je sssers bbbien mmma mmmaaaison."~ */
  IF ~~ THEN REPLY #19431 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19432 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19433 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19377 /* ~"Bbbeaucoup. Nnnnous, sssquelettes, gooouules." Son bras se lève lentement, en direction de l'est. "Rrrats." Son bras oscille lourdement pour te désigner. "Vivvants."~ */
  IF ~~ THEN REPLY #19434 /* ~"Est-ce qu'il y a d'autres vivants ici, à part moi ?"~ */ GOTO 11
  IF ~~ THEN REPLY #19435 /* ~"Parle-moi des tiens."~ */ GOTO 13
  IF ~~ THEN REPLY #19436 /* ~"Parle-moi de l'autre mort-vivant."~ */ GOTO 14
  IF ~~ THEN REPLY #19437 /* ~"Parle-moi des rats."~ */ GOTO 17
  IF ~~ THEN REPLY #19438 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19439 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19380 /* ~"Bbbeaucoup. Nnnnous, osss, gooouules." Son bras se lève lentement, en direction de l'est. "Rrratsss."~ */
  IF ~~ THEN REPLY #19440 /* ~"Parle-moi des tiens."~ */ GOTO 13
  IF ~~ THEN REPLY #19441 /* ~"Parle-moi de l'autre mort-vivant."~ */ GOTO 14
  IF ~~ THEN REPLY #19442 /* ~"Parle-moi des rats."~ */ GOTO 17
  IF ~~ THEN REPLY #19443 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19444 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19382 /* ~La tête du cadavre se balance d'avant en arrière, d'avant en arrière. "Sssoooegoooo…"~ */
  IF ~~ THEN REPLY #19445 /* ~"Qui est Soego ?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19446 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19447 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19448 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19449 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19383 /* ~"Hooommes-pppoussière. Deeemande Mmmarie, Sssaaalie Mmmaaaarie."~ */
  IF ~~ THEN REPLY #19450 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19451 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19452 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19453 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19454 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19384 /* ~Le zombi étend ses mains en décomposition sur sa poitrine rongée par les vers. "Ffffort !" Il pointe en direction de ses pieds d'une main, puis de sa tempe, où un morceau de chair s'est détaché, laissant à nu son crâne. "Llllent. Hhhehhh…" Le cadavre émet un gargouillement désagréable qui te fait penser à un gloussement. "Ccconduits par Sssaaalie Mmmaaarie…"~ */
  IF ~~ THEN REPLY #19455 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19456 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19457 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19458 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19459 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19385 /* ~"Qqquiii ? Oooss ? Goouuules ?"~ */
  IF ~~ THEN REPLY #19460 /* ~"Des os… Des squelettes ?"~ */ GOTO 15
  IF ~~ THEN REPLY #19461 /* ~"Les goules."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19462 /* ~"Peu importe. Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19463 /* ~"Peu importe. Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19464 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19465 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19386 /* ~"Ooooss !" Il a l'air admiratif. "Ccconduis-nous, mmmène-nous. Enssemble, nous construisssons les Naaa-syons Mooortes."~ */
  IF ~~ THEN REPLY #19466 /* ~"Les squelettes vous gouvernent ?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19467 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19468 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19469 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19470 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19387 /* ~"Hhhargrimmm ccconduit les oosss. Ppparle au Roi Sssilencieux, puis ppparle à Ssssaaalie Mmmarie. Mmmarie nous ppparle, nous donnne du ttravail." Il penche la tête.~ */
  IF ~~ THEN REPLY #19471 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19472 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19473 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19474 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19475 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19476 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19388 /* ~Son bras se lève de nouveau lentement et pointe vers l'est. "Rrrats…" Les lambeaux humides de sa lèvre supérieure esquissent un ricanement ; un fluide noir et visqueux s'écoule le long de ses dents marron-jaune. "Mangeeee les morts… mangeee…. maaauvais. Pppeur, mmmaintenant, des goouuules. Ils restttent à l'éccccart."~ */
  IF ~~ THEN REPLY #19477 /* ~"Les rats mangent les cadavres ici ?"~ */ GOTO 18
  IF ~~ THEN REPLY #19478 /* ~"Vous avez fait une trêve avec les rats ?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19479 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19480 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19481 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19482 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19389 /* ~"Uuuhn… deemmande Mmmarie. Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19483 /* ~"Parle-moi de… Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19484 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19485 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19486 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19487 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19390 /* ~Le zombi montre son ventre, où des trous dans sa chair en décomposition exposent plusieurs organes internes. "Tttoujours fffaaim. Les lllois du Roi Sssilencieux les emmpêchent deee mmmanger les morts, iiici. Les goouuules ssservent à nnous protéger, gggardent ces hallls."~ */
  IF ~~ THEN REPLY #19488 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19489 /* ~"De qui ils protègent ces salles ?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19490 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19491 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19492 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19493 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19391 /* ~"Rrratsss. Et…" Il lève un bras et pointe vers le haut. "Les viiivants, au-desssus. Ils viiiennent voooler les morts, les dérrranger."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19494 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19495 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19496 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19497 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 25.0
  SAY #19392 /* ~"Elllee nooous cooonduit. Nooous sssurveille. Nooous transmet la paaarole du Roi Sssilencieux."~ */
  IF ~~ THEN REPLY #19498 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19499 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19500 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19393 /* ~"Ssseigneur des Naaa-syons Moortes. Demmmande Mmmarie. Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19501 /* ~"Parle-moi de Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19502 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19503 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19394 /* ~Le cadavre reste immobile, il te fixe. Il parle enfin. "Nnnon. Demmmande Mmmaaarie. Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19504 /* ~"Parle-moi de Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19505 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19506 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19395 /* ~Comme le zombi te regarde, il semble l'espace d'une seconde te reconnaître de ses yeux morts. "Uuuhhhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19507 /* ~"Bonjour…"~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19508 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #19509 /* ~Laisse le zombi tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.5 5.5
  SAY #19396 /* ~Le cadavre secoue la tête. "Demmmmande Mmmarie. Sssaaalie Mmmaaarie."~ */
  IF ~~ THEN REPLY #19510 /* ~"Parle-moi de Salie Marie."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19511 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #19512 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
