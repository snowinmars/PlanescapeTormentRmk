// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGCORV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGCORV~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 22 20 21 33 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37282 /* ~Tu aperçois un grand homme portant une armure plaquée. L'armure est d'une conception inhabituelle, avec des pointes s'échappant des épaules, des coudes et des avant-bras. Il te salue de la tête en te voyant, puis ses yeux s'égarent sur le marché. "Bonjour, citoyen. Je suis le garde Corvus."~ */
  IF ~~ THEN REPLY #37283 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37284 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37285 /* ~"En quoi puis-je t'aider, citoyen ?" Il te regarde d'un air amical, mais jette un coup d'œil par-dessus ton épaule.~ */
  IF ~~ THEN REPLY #37286 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37287 /* ~"À mon avis, tu ne peux rien pour moi. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.2 8.1 9.0 11.0 12.0 13.1 14.2 16.0 17.0 18.0 19.0 22.0 23.0 25.1 26.0 28.2 29.1 30.0 31.2 33.0 34.0 35.4 36.0 42.0 43.1 44.0
  SAY #37288 /* ~Il acquiesce. "Je t'aiderai si je le peux, citoyen." Il regarde le marché, attendant ta question.~ */
  IF ~~ THEN REPLY #37289 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37290 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 6
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37291 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Know_Lenny","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37292 /* ~"Tu connais un certain Lenny ?"~ */ GOTO 24
  IF ~  Global("Know_Byron","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37293 /* ~"Tu connais un certain Byron Tourloupe ?"~ */ GOTO 27
  IF ~  Global("Know_Anarchists","GLOBAL",1)
~ THEN REPLY #37294 /* ~"Tu sais qu'il y a des Anarchistes à l'entrepôt ?"~ */ GOTO 35
  IF ~~ THEN REPLY #37295 /* ~"Je voudrais acheter des armes."~ */ GOTO 11
  IF ~~ THEN REPLY #37296 /* ~"Je voudrais acheter des objets magiques."~ */ GOTO 12
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37297 /* ~Essaie de voir ce qu'il regarde.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37298 /* ~Essaie de voir ce qu'il regarde.~ */ GOTO 19
  IF ~  !Global("Byron_Arrested","GLOBAL",1)
Global("Corvus_Zac","GLOBAL",1)
~ THEN REPLY #24718 /* ~"Je voulais te parler de Zac, le marchand."~ */ JOURNAL #66255 /* ~Corvus, le garde de l'Harmonium, recherche des indices pouvant l'aider à résoudre le meurtre d'un marchand dénommé Zac. Je vais ouvrir l'œil, au cas où…~ */ GOTO 42
  IF ~~ THEN REPLY #66254 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37299 /* ~Il te fait une légère révérence. "Je suis Corvus, le garde de l'Harmonium, citoyen. J'aide à maintenir le calme sur ce marché." Il regarde alentour pendant un instant, puis te regarde.~ */
  IF ~~ THEN REPLY #37300 /* ~"Parle-moi de l'Harmonium."~ */ GOTO 4
  IF ~~ THEN REPLY #37301 /* ~"J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37302 /* ~"Nos croyances sont simples : nous sommes la Lumière. Nous sommes la Voie. Nous sommes l'Ordre. Nous sommes la Vérité. Nous conservons et faisons respecter l'ordre dans Sigil. Nous sommes la police dans cette cité." Il regarde de nouveau alentour.~ */
  IF ~~ THEN REPLY #37303 /* ~"Qu'est-ce que tu peux me dire sur les autres factions ?"~ */ GOTO 5
  IF ~~ THEN REPLY #37304 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37305 /* ~"Je ne sais que peu à leur propos, citoyen. Je suis désolé, mais il faut que tu poses tes questions à l'un des représentants de leur ordre." Il sourit, puis regarde alentour.~ */
  IF ~~ THEN REPLY #37306 /* ~"J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 2.1 10.0
  SAY #37307 /* ~Son regard revient sur toi, et il se renfrogne. "Je te déconseille de déranger Lothar, citoyen. Je doute que tu veuilles réellement le trouver."~ */
  IF ~~ THEN REPLY #37308 /* ~"Pourquoi ?"~ */ JOURNAL #66533 /* ~J'ai parlé de Lothar avec Corvus, le garde de l'Harmonium. Ce dernier m'a dit que Lothar était très puissant et qu'il valait mieux le fuir. Mais je dois tout de même le trouver.~ */ GOTO 7
  IF ~~ THEN REPLY #37309 /* ~"Il faut vraiment que je le trouve."~ */ JOURNAL #66534 /* ~Corvus dit qu'il est possible de trouver Lothar dans une maison en ruine du Bas Quartier.~ */ GOTO 9
  IF ~~ THEN REPLY #37310 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37311 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37312 /* ~Il fronce les sourcils, regardant au loin. "Je suis réaliste, citoyen, ainsi qu'un agent de l'Harmonium. En tant que réaliste, je sais qu'il y en a qui sont au-dessus des lois. C'est l'une des vérités de la vie." Il s'interrompt.~ */
  IF ~~ THEN REPLY #37313 /* ~"Continue."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37314 /* ~"Certains ne craignent pas la loi grâce à leurs relations dans cette cité, d'autres grâce à leur pouvoir et à la peur qu'ils inspirent aux gens. Lothar est une puissance avec laquelle il faut compter, citoyen. Il est intouchable, si tu vois ce que je veux dire.~ */
  IF ~~ THEN REPLY #37315 /* ~"Il faut quand même que je le trouve."~ */ JOURNAL #66534 /* ~Corvus dit qu'il est possible de trouver Lothar dans une maison en ruine du Bas Quartier.~ */ GOTO 9
  IF ~~ THEN REPLY #37316 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37317 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #37318 /* ~Il soupire, regardant le marché alentour. "Très bien, citoyen. Sa guitoune se trouve quelque part au sud, dans une maison en ruines. Bonne chance."~ */
  IF ~~ THEN REPLY #37319 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37320 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37321 /* ~Il te regarde quelques instants avant de répondre. "On dirait le travail de Lothar, le Maître des Os."~ */
  IF ~~ THEN REPLY #37322 /* ~"Où est-ce que je peux trouver ce 'Lothar' ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 2.6
  SAY #37323 /* ~"Il faut que tu parles à Anze, citoyen. Il peut t'aider. Il est à côté du fourneau."~ */
  IF ~~ THEN REPLY #37324 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37325 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.7
  SAY #37326 /* ~"Il faut que tu parles à Aalek, citoyen. Il peut t'aider. Il est de l'autre côté du marché."~ */
  IF ~~ THEN REPLY #37327 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37328 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 18.1
  SAY #37329 /* ~Tu regardes par-dessus ton épaule et aperçois Karina qui gambade aux alentours. Corvus semble avoir les yeux fixés sur elle.~ */
  IF ~~ THEN REPLY #37330 /* ~"Elle s'appelle Karina."~ */ GOTO 14
  IF ~~ THEN REPLY #37331 /* ~Ne fais pas attention à la situation.~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37332 /* ~Son attention revient sur toi. "Je te demande pardon, tu la connais, citoyen ?" Il regarde à nouveau Karina. "Une voix d'ange, et une si jolie chose…"~ */
  IF ~~ THEN REPLY #37333 /* ~"Oui, et elle est seule… Elle apprécierait sûrement la compagnie d'un gentleman…"~ */ DO ~AddexperienceParty(2000)
SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~Le garde de l'Harmonium, Corvus, avait l'air de s'être entiché d'une jeune femme du nom de Karina. Je lui ai dit qu'elle se sentait seule et qu'elle avait besoin d'un ami.~ */ GOTO 15
  IF ~~ THEN REPLY #37334 /* ~"Oui. Tous ses soupirants doivent dire la même chose…"~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Corvus_1","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #37335 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 14.0 18.3
  SAY #37336 /* ~Il te regarde, puis son regard revient sur Karina. "Excuse-moi un instant, citoyen." Il se dirige vers Karina.~ */
  IF ~~ THEN REPLY #37342 /* ~"D'accord."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #37343 /* ~Corvus retourne vers toi, un sourire éclatant sur le visage. "Merci, l'ami. Une merveilleuse jeune femme…" Il paraît rêveur.~ */
  IF ~~ THEN REPLY #37344 /* ~"De rien, j'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37345 /* ~"Au revoir, Corvus."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #37346 /* ~Il soupire et son attention revient sur toi. Il ne semble pas être très heureux à cet instant. "Que disais-tu, citoyen ?"~ */
  IF ~~ THEN REPLY #37347 /* ~"J'ai des questions à te poser…"~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 22 20 21 33 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37348 /* ~Tu aperçois Corvus, le garde de l'Harmonium. "Salut à nouveau, citoyen. En quoi puis-je t'aider ?" Il regarde par-dessus ton épaule et semble chercher quelqu'un.~ */
  IF ~~ THEN REPLY #37349 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37350 /* ~Essaie de voir ce qu'il regarde.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37351 /* ~Essaie de voir ce qu'il regarde.~ */ GOTO 19
  IF ~  Global("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37352 /* ~"J'ai découvert que Karina ne sort avec personne. Je crois qu'elle apprécierait la compagnie d'un gentleman…"~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~Le garde de l'Harmonium, Corvus, avait l'air de s'être entiché d'une jeune femme du nom de Karina. Je lui ai dit qu'elle se sentait seule et qu'elle avait besoin d'un ami.~ */ GOTO 15
  IF ~~ THEN REPLY #37353 /* ~"À mon avis, tu ne peux rien pour moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.9 18.2
  SAY #37354 /* ~Tu regardes par-dessus ton épaule et remarques une jeune femme se promenant sur le marché. Corvus semble avoir les yeux rivés sur elle.~ */
  IF ~~ THEN REPLY #37355 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37356 /* ~"Tu as l'air préoccupé. Qu'est-ce que tu regardes ?"~ */ GOTO 43
  IF ~~ THEN REPLY #66273 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 33 even though they appear after this state */
~  Dead("Karina")
~ THEN BEGIN 20 // from:
  SAY #37357 /* ~Tu aperçois un garde de l'Harmonium. Il paraît désespéré et semble à peine se contrôler. "Pardonne-moi, citoyen. Je ne peux pas te parler maintenant… Je viens de subir une grande perte et désire rester seul."~ */
  IF ~~ THEN REPLY #37358 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 33 even though they appear after this state */
~  Dead("Karina")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #37359 /* ~Tu aperçois un garde de l'Harmonium. Il paraît désespéré et semble à peine se contrôler. "Pardonne-moi, citoyen. Je ne peux pas te parler maintenant… Je viens de subir une grande perte et désire rester seul."~ */
  IF ~~ THEN REPLY #37360 /* ~Pars.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 even though they appear after this state */
~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #37361 /* ~Tu aperçois Corvus le garde de l'Harmonium. Il sourit à ton approche et te fait une légère révérence. "Salut l'ami. J'espère que tu vas bien."~ */
  IF ~~ THEN REPLY #37362 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37363 /* ~"Comment allez-vous, Karina et toi ?"~ */ GOTO 23
  IF ~~ THEN REPLY #37364 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #37365 /* ~Il arbore un large sourire. "Nous allons bien, merci. Je te suis redevable pour ta bonté, mon ami."~ */
  IF ~~ THEN REPLY #37366 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37367 /* ~"Je t'en prie. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3
  SAY #37368 /* ~Il réfléchit en fronçant les sourcils. "Lenny… oui, je connais un voleur de ce nom. Il est près de la tour de siège, d'habitude."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37369 /* ~"Que peux-tu me dire sur lui ?"~ */ JOURNAL #36025 /* ~Corvus dit que Lenny est un maître voleur qui a évité de se faire arrêter plusieurs fois. Il m'a aussi expliqué que Lenny semble être une personne morale qui ne ferait de mal à personne.~ */ GOTO 25
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37370 /* ~"Que peux-tu me dire sur lui ?"~ */ GOTO 30
  IF ~~ THEN REPLY #37371 /* ~"Merci. Je dois m'en aller, maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #37373 /* ~"Officiellement, rien." Il s'interrompt un instant avant de répondre. "Officieusement, c'est un voleur, et un bon - un maître, devrais-je dire. Bien qu'il soit un voleur, il semble avoir une certaine éthique, et n'a jamais été soupçonné de meurtre ou d'agression. Il a réussi à éviter la loi en de nombreuses occasions…" Il s'interrompt.~ */
  IF ~~ THEN REPLY #37374 /* ~"Autre chose ?"~ */ JOURNAL #36024 /* ~Corvus m'a dit qu'il faisait suffisamment confiance à Lenny pour pouvoir lui tourner le dos.~ */ GOTO 26
  IF ~~ THEN REPLY #37375 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37376 /* ~"Merci. Je dois m'en aller, maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37377 /* ~"Oui… Je n'aurais pas peur de tourner le dos à Lenny. Il y a peu de personnes à propos desquelles je peux dire cela, mais Lenny est l'une d'entre elles." Il hausse les épaules. "C'est tout, mon ami."~ */
  IF ~~ THEN REPLY #37378 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37379 /* ~"Merci. Je dois m'en aller, maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.4
  SAY #37380 /* ~Il fronce les sourcils et acquiesce de la tête. "Oui, je connais Byron."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37381 /* ~"Qu'est-ce que tu peux me dire sur lui ?"~ */ JOURNAL #36023 /* ~Corvus dit que Byron Tourloupe est soupçonné de meurtre. On pense qu'il est le principal responsable du crime dans le marché à ciel ouvert du Bas Quartier.~ */ GOTO 28
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37382 /* ~"Que peux-tu me dire sur lui ?"~ */ GOTO 30
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37383 /* ~"J'ai la preuve qu'il est impliqué dans des affaires criminelles ici, à Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #37384 /* ~"Merci. Je dois m'en aller, maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #37385 /* ~"Officiellement, rien." Il s'interrompt un instant avant de répondre. "Officieusement, il est suspecté d'être derrière la plupart des activités criminelles du marché. On pense qu'il est responsable du meurtre d'un marchand nommé Zac. La liste des crimes qu'on lui attribue est assez longue." Il s'interrompt.~ */
  IF ~~ THEN REPLY #37386 /* ~"Autre chose ?"~ */ JOURNAL #37391 /* ~Corvus dit qu'il ne tournerait jamais le dos à Byron Tourloupe ou qu'il ne resterait jamais seul avec lui.~ */ GOTO 29
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37387 /* ~"J'ai la preuve qu'il est impliqué dans des affaires criminelles ici, à Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #37388 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37389 /* ~"Merci. Je dois m'en aller, maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37392 /* ~"Oui… Je ne lui tournerais pas le dos, et je réfléchirais à deux fois avant de me retrouver seul avec lui." Il hausse les épaules. "C'est tout, mon ami."~ */
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37393 /* ~"J'ai la preuve qu'il est impliqué dans des affaires criminelles ici, à Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #37394 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37395 /* ~"Merci. Je dois m'en aller, maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.1 27.1
  SAY #37396 /* ~Il te regarde d'un air sévère. "Tout ce que je sais à propos de cet individu ne regarde que l'Harmonium, citoyen. Je ne peux pas discuter de tels sujets avec les étrangers. Peut-être que si je te connaissais mieux…"~ */
  IF ~~ THEN REPLY #37397 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37398 /* ~"Merci. Je dois m'en aller, maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 28.1 29.0
  SAY #37399 /* ~Il te regarde d'un air intéressé. "Oh ? Puis-je voir ces preuves ?"~ */
  IF ~  !Dead("Byron")
~ THEN REPLY #37400 /* ~Donne-lui les papiers.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~J'ai apporté à Corvus, le Garde de l'Harmonium, les documents qui prouvent que Byron Tourloupe est un escroc. Il a arrêté Byron et se charge de le faire juger.~ */ GOTO 32
  IF ~  Dead("Byron")
~ THEN REPLY #37401 /* ~Donne-lui les papiers.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~J'ai apporté à Corvus, le Garde de l'Harmonium, les documents qui prouvent que Byron Tourloupe est un escroc. Il a arrêté Byron et se charge de le faire juger.~ */ GOTO 34
  IF ~~ THEN REPLY #37402 /* ~"Je vais y réfléchir. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #39441 /* ~"Je crois qu'il vaudrait mieux que je parte. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #37404 /* ~Il examine minutieusement les papiers puis les plie et les range. Il te fait un signe de tête et sourit. "Excellent travail, citoyen. Le contenu de ces documents est très détaillé. Je veillerai personnellement à ce que Byron Tourloupe comparaisse devant les tribunaux." Il te salue et se retourne pour partir. "Je reviens tout de suite."~ */
  IF ~~ THEN REPLY #37405 /* ~"D'accord."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Byron_Arrested","GLOBAL",1)
~ GOTO 33
END

IF WEIGHT #1 ~  Global("Byron_Arrested","GLOBAL",3)
~ THEN BEGIN 33 // from: 32.0
  SAY #37406 /* ~Il revient rapidement et te sourit. "C'est fait. Tourloupe a été chassé, les preuves ont été présentées aux tribunaux et il passera bientôt en jugement." Il te fait une légère révérence. "Encore merci."~ */
  IF ~~ THEN REPLY #37407 /* ~"De rien. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37408 /* ~"Merci. Je dois m'en aller, maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #39442 /* ~Il examine attentivement les papiers, puis les plie et les range. Il te fait un signe de tête et sourit. "Excellent travail, citoyen. Je veillerai à ce que ces documents soient présentés aux tribunaux pour que tous soient mis au courant de l'infamie de Byron." Il fronce les sourcils. "Mais Byron Tourloupe est mort et devra maintenant affronter le jugement des dieux."~ */
  IF ~~ THEN REPLY #39443 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #39444 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.5
  SAY #43033 /* ~Il fronce les sourcils et reste plongé dans ses pensées quelques instants. "Eh bien, il y a des anarchistes éparpillés dans toute la cité, citoyen. S'ils n'enfreignent pas la loi, on ne peut pas grand-chose contre eux."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",0)
~ THEN REPLY #43034 /* ~"Je croyais qu'ils étaient considérés comme un groupuscule dangereux qui devait être neutralisé pour éviter tout problème ?"~ */ GOTO 36
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #43035 /* ~"Leur chef m'a demandé de tuer un officier de l'Harmonium appelé Mesure Trois Vorten."~ */ GOTO 37
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #43036 /* ~"Eh bien, je sais de source sûre qu'ils sont responsables de la mort de Mesure Trois Vorten."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",5)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 40
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #43037 /* ~"Eh bien, je sais de source sûre qu'ils sont responsables de la mort de Mesure Trois Vorten."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",6)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 41
  IF ~~ THEN REPLY #43038 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #43039 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #43040 /* ~Il soupire. "Je suis d'accord avec ce point de vue, citoyen. Mais personnellement, je crois qu'il vaut mieux éviter de se précipiter ; ça ne sert à rien d'accuser sans preuves qu'il y a bien eu méfaits. Si tu me fournis des preuves, je veillerai à ce qu'on s'occupe de ces anarchistes. Sinon, ils ont le droit de se réunir et de discuter."~ */
  IF ~~ THEN REPLY #43041 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #43042 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY #43043 /* ~Il te lance un regard inquiet. "Ce que tu avances est grave, citoyen. Tu es sûr de vouloir porter une telle accusation ?"~ */
  IF ~~ THEN REPLY #43044 /* ~"Oui."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",4)
AddexperienceParty(2000)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #66535 /* ~J'ai dit à Corvus que les Anarchistes m'avaient demandé de tuer Mesure Trois Vorten. Il m'a assuré qu'il se chargerait d'eux.~ */ GOTO 38
  IF ~~ THEN REPLY #43045 /* ~"Non, je ne crois pas."~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #43046 /* ~"Très bien. Je veillerai à ce qu'on s'occupe d'eux. Excellent travail, citoyen." Il te sourit.~ */
  IF ~~ THEN REPLY #43047 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #43048 /* ~Il hausse les épaules. "Alors, le sujet est clos."~ */
  IF ~~ THEN REPLY #43049 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #43050 /* ~"Comment pourrais-tu le savoir… à moins que tu ne sois impliqué ?" Il te fixe quelques instants avant de continuer. "Comme tu es un ami, je vais oublier que c'est toi qui m'as révélé ces informations. Maintenant, je vais veiller à ce qu'on s'occupe des anarchistes. Bonne journée, citoyen."~ */
  IF ~~ THEN REPLY #43052 /* ~"Au revoir."~ */ JOURNAL #66536 /* ~J'ai dit à Corvus que les Anarchistes étaient responsables de la mort de la Mesure Trois Vorten. Il s'est aussitôt douté que j'étais également dans le coup, mais n'en a rien dit. Sans doute est-ce en souvenir de notre amitié qu'il a décidé de fermer les yeux. Il m'a dit qu'il se chargeait des Anarchistes.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.3
  SAY #43053 /* ~"Comment pourrais-tu le savoir… à moins que tu ne sois impliqué ?" Il te fixe quelques instants avant de continuer. "Je vais veiller à ce qu'on s'occupe des anarchistes, citoyen. Bonne journée."~ */
  IF ~~ THEN REPLY #43054 /* ~"Au revoir."~ */ DO ~Enemy()
~ JOURNAL #66537 /* ~J'ai dit à Corvus que les Anarchistes étaient responsables de la mort de la Mesure Trois Vorten. Il s'est aussitôt douté que j'étais également dans le coup, mais n'en a rien dit. Par contre, il ne veut plus me voir.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.10
  SAY #66251 /* ~"Tout ce que je sais a trait à l'Harmonium, citoyen. Je ne peux en parler librement…" Il s'interrompt un court instant avant de reprendre : "Tout ce que je peux dire, c'est que Zac a été assassiné et que l'enquête suit son cours. Si tu découvres quoi que ce soit à ce sujet, je te prie de me le faire savoir dans les plus brefs délais." ~ */
  IF ~~ THEN REPLY #66252 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #66253 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.1
  SAY #66266 /* ~Il reporte son attention vers toi. "Toutes mes excuses, citoyens…" Il suit la jeune femme des yeux et te murmure : "Elle a une voix d'ange, et elle est si jolie…" Il soupire.~ */
  IF ~~ THEN REPLY #66267 /* ~"Pourquoi ne vas-tu pas lui parler ? Elle a l'air de te plaire…"~ */ JOURNAL #66539 /* ~Corvus est apparemment amoureux d'une jeune femme du marché de plein air. Je lui ai conseillé d'aller parler à la belle, mais il trouve qu'elle est trop bien pour lui. Peut-être vais-je aller la voir pour me faire une idée à son sujet.~ */ GOTO 44
  IF ~~ THEN REPLY #66268 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #66269 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #66270 /* ~Après quelques instants de silence gêné, il reporte son attention vers toi. "Je… je ne pourrai jamais… je veux dire… une femme comme elle… elle doit déjà être…" Il soupire et s'interrompt. "Puis-je faire autre chose pour t'aider, citoyen ?"~ */
  IF ~~ THEN REPLY #66271 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #66272 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END
