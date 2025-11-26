// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27334 /* ~Cet homme bien vêtu, soigné se délasse, profitant du bon air tout en sirotant une boisson achetée au café voisin.~ */
  IF ~~ THEN REPLY #2895 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #2896 /* ~Laisse l'homme tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27335 /* ~"Bonjour à-" il s'interrompt en te regardant de plus prés. "Ah…, toi aussi." Il sourit d'un air embarrassé.~ */
  IF ~~ THEN REPLY #2897 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #2898 /* ~"Quelque chose vous dérange dans mon aspect ?"~ */ GOTO 2
  IF ~~ THEN REPLY #27383 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #27336 /* ~"Non, monsieur, c'est moi. Je n'ai pas l'habitude de voir un homme si… expérimenté…" Il ferme un instant les yeux, en maintenant sa main sur sa poitrine en signe d'excuse. "Je te prie d'excuser mon étonnement lorsque je t'ai vu pour la première fois."~ */
  IF ~~ THEN REPLY #27384 /* ~"Expérimenté ?"~ */ GOTO 3
  IF ~~ THEN REPLY #27385 /* ~"J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27386 /* ~"Ne t'inquiète pas. Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27337 /* ~"Qui a beaucoup voyagé, si tu préfères. C'est ton aspect, monsieur - enfin, un peu échevelé, rude. Tu trouveras peut-être que tu dépares un peu, ici. Mais Sigil n'en est pas à ça près, hein ? Je pense que le Quartier des Gratte-Papier en voit juste un peu moins que le reste de la cité, c'est tout. Hormis la Salle des Fêtes, bien sûr."~ */
  IF ~~ THEN REPLY #27387 /* ~"Le Quartier des Gratte-Papier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #27388 /* ~"La Salle des Fêtes ?"~ */ GOTO 22
  IF ~~ THEN REPLY #27389 /* ~"Tu veux dire que j'ai l'air d'un mort, c'est ça ? Eh bien, tu sais, je suis mort !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27390 /* ~"Hum. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27391 /* ~"Ça se comprend, je suppose. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.9 13.2 15.2 17.2 18.3 20.2 21.2 22.4 23.4 24.2 25.8 26.1 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1
  SAY #27338 /* ~"Demande ce que tu veux… je répondrai si je peux."~ */
  IF ~~ THEN REPLY #27392 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #27393 /* ~"Qu'est-ce qu'il y a d'intéressant par ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #27394 /* ~"Où est-ce que je pourrais trouver du travail par ici ?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27395 /* ~"Je voulais t'interroger sur un endroit précis…"~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27396 /* ~"Je veux juste des indications…"~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27397 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 42
  IF ~~ THEN REPLY #27398 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27339 /* ~Il semble amusé. "Ben, c'est le Quartier des Gratte-Papier ! Tu débarques à Sigil, hein ? Attends -- t'as l'air d'un homme qui cherche des réponses, pas des questions… et qui s'occupe de ce qui le regarde. Fais pas attention à ma question." Il sourit.~ */
  IF ~~ THEN REPLY #27399 /* ~"Qu'est-ce que tu peux me dire sur ce Quartier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #27400 /* ~"Exact. En fait, j'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27401 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27340 /* ~"Eh bien, la plus grande partie du Quartier -- dans laquelle je suis à jamais condamné à passer la majorité de mon temps, semble-t-il -- est remplie des salles d'archives et des bâtiments administratifs… mais pas cette section."~ */
  IF ~~ THEN REPLY #27402 /* ~"Pourquoi est-ce que tu es 'condamné' à rester ici ?"~ */ GOTO 10
  IF ~~ THEN REPLY #27403 /* ~"Qu'est-ce qui rend cette partie différente ?"~ */ GOTO 7
  IF ~~ THEN REPLY #27404 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27405 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27341 /* ~"La Salle des Fêtes, d'abord. La Maison de tolérance des Plaisirs Intellectuels, aussi… c'est pas une maison de tolérance ordinaire, tu sais… elle satisfait plus les appétits cérébraux. Tentant quand même !" Il sourit sournoisement.~ */
  IF ~~ THEN REPLY #27406 /* ~"Continue…"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27407 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27408 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27342 /* ~"Il y a d'autres endroits que je pourrais mentionner…" Il les énumère sur ses doigts au fur et à mesure. "… le domicile de l'avocat, l'apothicaire, la Galerie d'Art et d'Antiquités, les catacombes sous le Quartier et le tailleur. Oh ! J'allais oublier… il y a une sorte de magasin de brocante, aussi."~ */
  IF ~~ THEN REPLY #27409 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27410 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27343 /* ~L'homme *réfléchit* en fronçant les sourcils. "Je prends la liberté de supposer que tu ne cherches pas d'emploi permanent. Tu peux chercher du travail temporaire au domicile de l'avocat ou chez l'apothicaire. La Salle des Fêtes est le lieu de prédilection des petits trafics. Tu pourrais y trouver quelque chose."~ */
  IF ~~ THEN REPLY #27411 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27412 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27344 /* ~Il hausse les épaules, regardant ailleurs l'air peiné. "Mon devoir est ici, monsieur. C'est mon moyen de subsistance. C'est mon lieu de travail."~ */
  IF ~~ THEN REPLY #27414 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 11
  IF ~~ THEN REPLY #27415 /* ~"Alors, qu'est-ce qui rend cette partie si différente du reste du Quartier ?"~ */ GOTO 7
  IF ~~ THEN REPLY #27416 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27417 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27345 /* ~Il lève les mains, en remuant la tête. "Oh, non, monsieur, pas maintenant. Ne parlons pas d'assurances et de papiers pendant ma pause, un point c'est tout." Il sourit poliment.~ */
  IF ~~ THEN REPLY #27418 /* ~"Alors, qu'est-ce qui rend cette partie si différente du reste du Quartier ?"~ */ GOTO 7
  IF ~~ THEN REPLY #27419 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27420 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 20.1 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27346 /* ~"Oh ? Lequel ?"~ */
  IF ~~ THEN REPLY #27421 /* ~"La maison de l'avocat."~ */ GOTO 13
  IF ~~ THEN REPLY #27423 /* ~"L'apothicaire."~ */ GOTO 16
  IF ~~ THEN REPLY #27468 /* ~"La boutique d'art."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27469 /* ~"La maison de tolérance."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27470 /* ~"La maison de tolérance."~ */ GOTO 19
  IF ~~ THEN REPLY #27471 /* ~"Les catacombes sous le Quartier."~ */ GOTO 21
  IF ~~ THEN REPLY #27472 /* ~"La Salle des Fêtes."~ */ GOTO 22
  IF ~~ THEN REPLY #27473 /* ~"Le magasin de brocante."~ */ GOTO 23
  IF ~~ THEN REPLY #27474 /* ~"Le tailleur."~ */ GOTO 24
  IF ~~ THEN REPLY #27475 /* ~"Peu importe. Je voudrais t'interroger sur autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27476 /* ~"Nulle part, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27347 /* ~"Les avocats aident à plaider des affaires, à rédiger des documents juridiques et servent de représentants légaux à leurs clients. Iannis, l'avocat du quartier, a une bonne réputation et il est très fiable. Il réside et travaille dans le Quartier depuis très, très longtemps."~ */
  IF ~~ THEN REPLY #27477 /* ~"Comment on va chez Iannis ?"~ */ GOTO 26
  IF ~~ THEN REPLY #27478 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27479 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27480 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #27348 /* ~"Les avocats aident à plaider des affaires, à rédiger des documents juridiques et servent de représentants légaux à leurs clients."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27349 /* ~" Iannis, l'avocat du quartier, a une bonne réputation et il est très fiable. Il réside et travaille dans le Quartier depuis très, très longtemps."~ */
  IF ~~ THEN REPLY #27481 /* ~"Comment on va chez Iannis ?"~ */ GOTO 26
  IF ~~ THEN REPLY #27482 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27483 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27484 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 27.0
  SAY #27350 /* ~"L'apothicaire vend différents onguents, potions, herbes et autres." Il fronce les sourcils un instant. "Les propriétaires de l'endroit sont un peu azimutés, toujours en train de goûter la marchandise. De braves hommes, pourtant."~ */
  IF ~~ THEN REPLY #27485 /* ~"Comment on va chez l'apothicaire ?"~ */ GOTO 27
  IF ~~ THEN REPLY #27486 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27487 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 28.0
  SAY #27351 /* ~"La Galerie d'Art et d'Antiquités d'Yvanna est un endroit très mystérieux. Elle possède une collection de pièces d'art, d'antiquités et d'artefacts qui proviennent de tous les plans."~ */
  IF ~~ THEN REPLY #27488 /* ~"Comment on va à la boutique d'art ?"~ */ GOTO 28
  IF ~~ THEN REPLY #27489 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27490 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27491 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.3 29.0
  SAY #27352 /* ~"C'est un établissement de Sensats qui distrait les sens et l'esprit." Il ferme les yeux un moment, en souriant béatement. "C'est tenu par la plus charmante des femmes, Tombée-en-Disgrâce. Je te le recommande vivement si tu viens pour la première fois dans le Quartier."~ */
  IF ~~ THEN REPLY #27492 /* ~"De Sensats ?"~ */ GOTO 36
  IF ~~ THEN REPLY #27493 /* ~"Comment on va à la Maison de tolérance ?"~ */ GOTO 29
  IF ~~ THEN REPLY #27494 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27495 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27496 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.4 29.1
  SAY #27353 /* ~"C'est un établissement de Sensats qui distrait les sens et l'esprit. C'est tenu par la plus charmante des femmes, Tombée-en-Disgrâce." Il s'interrompt pour s'incliner devant Grâce.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 126
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27354 /* ~"Oh, mais vous méritez bien ces louanges, Dame Grâce. Très honoré de vous présenter ce compliment en personne." Il se tourne vers toi.~ */
  IF ~~ THEN REPLY #27497 /* ~"J'ai oublié… Comment on va à la Maison de tolérance ?"~ */ GOTO 29
  IF ~~ THEN REPLY #27498 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27499 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27500 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5 30.0
  SAY #27355 /* ~"Je ne comprends toujours pas pourquoi les dabus ne les ont pas encore fermées. Elles regorgent de monstres, à ce que l'on dit, de choses horribles qui baragouinent et bavent dans l'obscurité."~ */
  IF ~~ THEN REPLY #27501 /* ~"Comment je peux y aller ?"~ */ GOTO 30
  IF ~~ THEN REPLY #27502 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27503 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27504 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.6 31.0
  SAY #27356 /* ~"C'est l'un des établissements les plus surprenants de Sigil… c'est le quartier général de la faction des Sensats, connue dans tout le multivers pour ses concerts, ses expositions artistiques et ses conférences. Mais son attrait principal reste les sensoriums."~ */
  IF ~~ THEN REPLY #27505 /* ~"Des Sensats ?"~ */ GOTO 36
  IF ~~ THEN REPLY #27506 /* ~"Des sensoriums ?"~ */ GOTO 38
  IF ~~ THEN REPLY #27507 /* ~"Où se trouve la Salle des Fêtes ?"~ */ GOTO 31
  IF ~~ THEN REPLY #27508 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27509 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27510 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7 32.0
  SAY #27357 /* ~"Je ne prétendrai pas y être allé, mais je sais que c'est dirigé par une sorte d'importateur… un demi-fiélon, en fait, dont les marchandises proviennent des Plans Inférieurs."~ */
  IF ~~ THEN REPLY #27511 /* ~"Un demi-fiélon ?"~ */ GOTO 35
  IF ~~ THEN REPLY #27512 /* ~"Les Plans Inférieurs ?"~ */ GOTO 34
  IF ~~ THEN REPLY #27513 /* ~"Où est-ce que je peux trouver cet endroit ?"~ */ GOTO 32
  IF ~~ THEN REPLY #27514 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27515 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27516 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.8 33.0
  SAY #27358 /* ~"Goncalves est un excellent tailleur, mais il a mauvais caractère et se vexe facilement. Je dois te prévenir : il te jugera vraisemblablement à ton apparence et tu auras peut-être du mal à t'en faire un ami."~ */
  IF ~~ THEN REPLY #27517 /* ~"Où est la boutique de Goncalves ?"~ */ GOTO 33
  IF ~~ THEN REPLY #27518 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27519 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27520 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27359 /* ~"Pour aller où, monsieur ?"~ */
  IF ~~ THEN REPLY #27521 /* ~"Chez l'avocat."~ */ GOTO 26
  IF ~~ THEN REPLY #27522 /* ~"Chez l'apothicaire."~ */ GOTO 27
  IF ~~ THEN REPLY #27523 /* ~"À la boutique d'art."~ */ GOTO 28
  IF ~~ THEN REPLY #27524 /* ~"À la maison de tolérance."~ */ GOTO 29
  IF ~~ THEN REPLY #27525 /* ~"Aux catacombes sous le Quartier."~ */ GOTO 30
  IF ~~ THEN REPLY #27526 /* ~"À la Salle des Fêtes."~ */ GOTO 31
  IF ~~ THEN REPLY #27527 /* ~"Au magasin de brocante."~ */ GOTO 32
  IF ~~ THEN REPLY #27528 /* ~"Chez le tailleur."~ */ GOTO 33
  IF ~~ THEN REPLY #27529 /* ~"Peu importe. Je voudrais t'interroger sur autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27530 /* ~"Nulle part, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27360 /* ~"La maison de Iannis se trouve au sud de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. Ce sera sur le côté est de la route."~ */
  IF ~~ THEN REPLY #27531 /* ~"Qu'est-ce que tu peux me dire sur l'avocat ?"~ */ GOTO 13
  IF ~~ THEN REPLY #27533 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27534 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27361 /* ~"Suis la route de l'est en partant de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. À l'endroit où la route fait une fourche entre le nord-est et le sud-est, prends la route du sud… tu la trouveras là, à l'est de la route. Elle est orientée au sud et comporte trois fenêtres de verre teinté."~ */
  IF ~~ THEN REPLY #27535 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 16
  IF ~~ THEN REPLY #27536 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27537 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27362 /* ~"Suis la route de l'est en partant de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. À l'endroit où la route fait une fourche entre le nord-est et le sud-est, prends la route du sud… tu la trouveras là, à l'ouest de la route. Elle est orientée au sud et les tuiles de son toit sont maintenues par de grosses pierres."~ */
  IF ~~ THEN REPLY #27538 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #27542 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27543 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 20.0 25.3
  SAY #27363 /* ~"La Maison de tolérance des Plaisirs Intellectuels, hein ?" Il sourit d'un air entendu. "C'est juste à l'est de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. C'est un grand bâtiment rond, dont l'entrée est orientée au sud."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27544 /* ~"Qu'est-ce que tu peux me dire sur la Maison de tolérance ?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27545 /* ~"Qu'est-ce que tu peux me dire sur la Maison de tolérance ?"~ */ GOTO 19
  IF ~~ THEN REPLY #27546 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27547 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27364 /* ~Il fronce les sourcils. "Hum. Il y a plusieurs entrées ici, ça je le sais… mais c'est tout. Je te préviens quand même que rien ne ressort de ces catacombes… y compris ceux qui y entrent."~ */
  IF ~~ THEN REPLY #27548 /* ~"Qu'est-ce que tu peux me dire d'autre sur eux ?"~ */ GOTO 21
  IF ~~ THEN REPLY #27549 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27550 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27365 /* ~"La Salle des Fêtes est très facile à trouver. C'est un édifice massif dans la partie nord-est de cette zone."~ */
  IF ~~ THEN REPLY #27553 /* ~"Qu'est-ce que tu peux me dire sur la Salle des Fêtes ?"~ */ GOTO 22
  IF ~~ THEN REPLY #27554 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27555 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27366 /* ~"Je n'y suis jamais allé, mais on me l'a montré - c'est dans la section sud-est de cette zone. Un édifice original, installé au sommet d'un grand escalier. Tu peux pas le manquer."~ */
  IF ~~ THEN REPLY #27556 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 23
  IF ~~ THEN REPLY #27557 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27558 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27367 /* ~"Tu trouveras la boutique de Goncalves le tailleur juste au nord-est de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. C'est un grand bâtiment, dont l'entrée est orientée au sud."~ */
  IF ~~ THEN REPLY #27559 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 24
  IF ~~ THEN REPLY #27560 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 4
  IF ~~ THEN REPLY #27561 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27368 /* ~Il acquiesce, baissant la voix. "Tu sais, monsieur… Baator, les Abysses et le reste. Des endroits terribles."~ */
  IF ~~ THEN REPLY #27562 /* ~"Tu as dit que c'était un demi-fiélon ?"~ */ GOTO 35
  IF ~~ THEN REPLY #27563 /* ~"Où est-ce que je peux trouver ce magasin de brocante ?"~ */ GOTO 32
  IF ~~ THEN REPLY #27564 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27565 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27566 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27369 /* ~"Pas une tieffeline, attention, mais bien un demi-fiélon. La fille d'un Incube et d'une mortelle, dit-on. Je ne m'intéresse pas aux ragots, alors ne parlons plus d'elle."~ */
  IF ~~ THEN REPLY #27567 /* ~"Tu as dit que ses marchandises venaient des Plans Inférieurs ?"~ */ GOTO 34
  IF ~~ THEN REPLY #27568 /* ~"Où est-ce que je peux trouver ce magasin de brocante ?"~ */ GOTO 32
  IF ~~ THEN REPLY #27569 /* ~"Je voulais t'interroger sur un autre endroit…"~ */ GOTO 12
  IF ~~ THEN REPLY #27570 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27571 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 22.0
  SAY #27370 /* ~"Oui. La 'Société des Sensations' est leur nom correct. Ils croient que la véritable nature du multivers ne peut être découverte que par l'expérience directe…"~ */
  IF ~~ THEN REPLY #27572 /* ~"Je vois. Continue."~ */ GOTO 48
  IF ~~ THEN REPLY #27573 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27574 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27371 /* ~"Avec les sensoriums, ils ont en fait trouvé un moyen de partager leurs expériences avec d'autres."~ */
  IF ~~ THEN REPLY #27575 /* ~"Des sensoriums ?"~ */ GOTO 38
  IF ~~ THEN REPLY #27576 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27577 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27372 /* ~"Les Sensats ont créé un moyen de saisir les expériences, de les enfermer dans des pierres et de laisser les *autres* en faire l'expérience. Les Sensats parcourent les plans et recherchent dans leur moi des expériences à partager avec les autres… tout ce qu'ils ont ressenti ou éprouvé ou presque se trouve dans leurs sensoriums."~ */
  IF ~~ THEN REPLY #27578 /* ~"Où se trouvent ces sensoriums ?"~ */ GOTO 39
  IF ~~ THEN REPLY #27579 /* ~"Est-ce que ces expériences… ressemblent à des souvenirs ?"~ */ GOTO 40
  IF ~~ THEN REPLY #27580 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27581 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27373 /* ~"Dans la Salle des Fêtes. Il y a des sensoriums qui sont ouverts au public et d'autres qui sont réservés aux Sensats. Il y a un petit droit d'entrée, mais le prix est franchement modique par rapport à l'expérience que tu en retires."~ */
  IF ~~ THEN REPLY #27582 /* ~"Où se trouve la Salle des Fêtes ?"~ */ GOTO 31
  IF ~~ THEN REPLY #27583 /* ~"Est-ce que ces expériences… ressemblent à des souvenirs ?"~ */ GOTO 40
  IF ~~ THEN REPLY #27584 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27585 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27374 /* ~"Dans un *sens*, oui, mais très intense… et ce ne sont pas des souvenirs à toi, mais ceux d'un autre qu'il a enfermés dans la pierre."~ */
  IF ~~ THEN REPLY #27586 /* ~"Comment ça ? Est-ce qu'on perd sa mémoire ou son expérience une fois qu'elles sont mises dans la pierre ?"~ */ GOTO 41
  IF ~~ THEN REPLY #27587 /* ~"Où se trouvent ces sensoriums ?"~ */ GOTO 39
  IF ~~ THEN REPLY #27588 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27589 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27375 /* ~"Non…" Il fronce les sourcils. "Je ne crois pas. Je crois que la pierre *copie* l'expérience sensorielle. Tu peux demander à un Sensat pour en être sûr, mais c'est ce que j'ai cru comprendre."~ */
  IF ~~ THEN REPLY #27590 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27591 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27376 /* ~"Le nom me dit quelque chose… est-ce une sorte de buste ? Ou un personnage de livre… ? Je ne m'en souviens pas."~ */
  IF ~~ THEN REPLY #27592 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27593 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27377 /* ~"Ah, le Vagabond croise encore mon chemin." L'homme te sourit par-dessus sa tasse. "D'autres questions ?"~ */
  IF ~~ THEN REPLY #27594 /* ~"Oui."~ */ GOTO 4
  IF ~~ THEN REPLY #27595 /* ~"En fait, non… Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27378 /* ~L'homme hausse les sourcils. "Pardon ?"~ */
  IF ~~ THEN REPLY #27596 /* ~"J'ai dit que j'étais mort ! Mort, mort, la-la ! Mort, mort, la-la…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27597 /* ~"Peu importe. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27598 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27379 /* ~Il prend une expression méfiante. "Ah, oui… n'est-ce pas vrai pour nous tous. Je dois m'en aller, monsieur. J'ai la sensation que du boulot urgent m'attend ailleurs."~ */
  IF ~~ THEN REPLY #27599 /* ~"Attends ! Je ne t'ai pas dit *pourquoi* je suis mort…"~ */ GOTO 46
  IF ~~ THEN REPLY #27600 /* ~"Attends un peu. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27601 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27380 /* ~Il recule d'un pas. "J'avoue que cette question ne m'intéresse pas du tout, monsieur."~ */
  IF ~~ THEN REPLY #27602 /* ~"Parce que j'ai tué trop de gens dans mes vies antérieures."~ */ GOTO 47
  IF ~~ THEN REPLY #27603 /* ~"Bon, peu importe. J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27604 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27381 /* ~"Gardes !"~ */
  IF ~~ THEN REPLY #27605 /* ~Attaque-le.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27606 /* ~Essaie de partir avant que quelqu'un arrive.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27382 /* ~"Ils passent leur vie à faire l'expérience de tout ce qu'ils peuvent dans le multivers ; ils voyagent beaucoup, à la fois dans les plans et dans les profondeurs de leurs esprits et de leurs émotions. Mais ils vont plus loin, tu sais…"~ */
  IF ~~ THEN REPLY #27607 /* ~"Comment cela ?"~ */ GOTO 37
  IF ~~ THEN REPLY #27608 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #27609 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
