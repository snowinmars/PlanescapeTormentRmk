// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPLINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPLINT~

IF ~  NumTimesTalkedTo(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2989 /* ~La peau dorée de cet homme imposant scintille légèrement, presque comme si elle était métallique. Impossible de deviner s'il s'agit de sa couleur naturelle ou de peinture. Il te regarde approcher tranquillement et te salue respectueusement quand tu arrives à sa hauteur. "Bienvenue à la Salle des Fêtes, voyageur ; je suis Écharde, portier de la Salle des Fêtes et Prêtre-Roi d'Ur. Qu'est-ce que je peux faire pour toi ?" Malgré son humble offre d'assistance, sa voix est puissante et autoritaire, c'est un son profond et grondant qui résonne dans toute la salle.~ */
  IF ~~ THEN REPLY #65145 /* ~"Comment est-ce que tu pourrais m'aider ?"~ */ GOTO 2
  IF ~~ THEN REPLY #48511 /* ~"J'avais des questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #48512 /* ~"Pour l'instant, je n'ai besoin de rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0 3.3 4.3 5.0 6.3 7.1 8.1 9.0 10.8 11.0 12.0 13.0 14.0 15.1 16.0 17.9 18.4 19.1 20.0 20.1 21.1 22.0 23.5 27.0 30.0 31.1 32.1 35.2 36.0 37.0 38.0 39.0 41.0 43.1 44.0 45.0
  SAY #48513 /* ~"Nous serions ravis de répondre à autant de questions que possible, à condition qu'elles aient un lien avec la Salle des Fêtes ou la Société des Sensations."~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #51522 /* ~"Cet homme, Iannis. Je caressais l'espoir que vous pourriez lui permettre d'avoir temporairement accès au sensorium…"~ */ GOTO 40
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65152 /* ~"Est-ce qu'il y a un linguiste ou un érudit ici qui pourrait m'aider à comprendre la langue utilisée dans ce dodécaèdre ?"~ */ DO ~SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66262 /* ~"Méli Sensdumeurtre m'a maudit. Connais-tu quelqu'un qui soit capable de m'aider ?"~ */ JOURNAL #66264 /* ~J'ai dit à Écharde que Méli m'avait maudit, et il m'a conseillé d'aller voir un certain Salabesh. Selon lui, ce dernier devrait se trouver à proximité de la Salle des Fêtes. Il porte généralement une robe rouge et noire.~ */ GOTO 45
  IF ~~ THEN REPLY #48514 /* ~"Je voulais te poser des questions sur toi…"~ */ GOTO 5
  IF ~~ THEN REPLY #48515 /* ~"Qu'est-ce que tu peux faire pour moi, Écharde ?"~ */ GOTO 2
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48516 /* ~"Est-ce que je pourrais me reposer quelque part ?"~ */ GOTO 31
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #66170 /* ~"Est-ce que je pourrais me reposer quelque part ?"~ */ GOTO 44
  IF ~~ THEN REPLY #48517 /* ~"Parle-moi de la Salle des Fêtes."~ */ GOTO 6
  IF ~~ THEN REPLY #48518 /* ~"Parle-moi de la Société des Sensations."~ */ GOTO 7
  IF ~~ THEN REPLY #48519 /* ~"Je cherchais quelqu'un…"~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #48520 /* ~"Est-ce qu'il y a quelqu'un ici qui pourrait me renseigner sur Ravel Puits-de-Rébus ?"~ */ GOTO 35
  IF ~~ THEN REPLY #48521 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.4 32.0
  SAY #48522 /* ~"Nous faisons beaucoup de choses dans cette belle Salle des Fêtes, voyageur. Nous répondons aux questions que nos invités se posent sur ce lieu et ses habitants. Nous conduisons les visiteurs et les membres de la Société des Sensations vers les sensoriums ou les salles de lecture. Nous accueillons aussi les nouveaux membres de la société. Pour finir, c'est par notre biais que les achats aux voûtes de la Société sont faits… comme les malédictions, les objets, etc."~ */
  IF ~~ THEN REPLY #48523 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48524 /* ~"Tu peux m'indiquer le chemin des sensoriums ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48525 /* ~"Quelles sont les conférences disponibles ?"~ */ GOTO 4
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48526 /* ~"Je voudrais acheter quelque chose en provenance des voûtes des Sensats…"~ */ DO ~StartStore("Splinter",Protagonist)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48527 /* ~"Qu'est-ce que je dois faire pour acheter quelque chose en provenance des voûtes des Sensats ?"~ */ GOTO 18
  IF ~~ THEN REPLY #48528 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 8.0
  SAY #48529 /* ~"Il y en a deux ; le sensorium public, où les visiteurs ont le droit d'utiliser les pierres sensorielles pour un tarif de dix à cinquante communs, et le sensorium privé auquel seuls les membres de la Société des Sensations ont accès. Tu ne peux atteindre aucun des deux par toi-même ; nous devons t'y *emmener*."~ */
  IF ~~ THEN REPLY #48530 /* ~"Emmène-moi au sensorium public, alors."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48531 /* ~"Emmène-moi au sensorium privé, alors."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48532 /* ~"Qu'est-ce que je dois faire pour entrer dans le sensorium privé ?"~ */ GOTO 18
  IF ~~ THEN REPLY #48533 /* ~"Attends… J'avais une question à propos d'autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #48534 /* ~"En fait, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #48535 /* ~"Parmi les orateurs de la Salle des Fêtes, nous avons l'Avocat de la Mort, qui parle de la mort et de ce qui suit, Ghysis le Tordu, qui parle de la Guerre Sanglante et Trois-Plans-Alignés, qui parle de la puissance de l'alignement et de la croyance. À condition qu'ils soient tous présents et en forme, Nous pourrions te conduire vers l'une des conférences."~ */
  IF ~  !Dead("DeathAd")
~ THEN REPLY #48536 /* ~"Je voudrais assister à la conférence de l'Avocat de la Mort."~ */ GOTO 37
  IF ~  !Dead("Ghysis")
~ THEN REPLY #48537 /* ~"Je voudrais assister à la conférence de Ghysis le Tordu."~ */ GOTO 38
  IF ~  !Dead("3Planes")
~ THEN REPLY #48538 /* ~"Je voudrais assister à la conférence de Trois-Plans-Alignés."~ */ GOTO 39
  IF ~~ THEN REPLY #48539 /* ~"J'avais une question à propos d'autre chose…"~ */ GOTO 1
  IF ~~ THEN REPLY #48540 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #48541 /* ~"Il n'y a pas grand-chose à ajouter. Nous sommes Écharde, le portier de la Salle des Fêtes, fils demi-dieu d'Isahar et du Prêtre-Roi d'Ur. Des voyageurs sont venus dans notre monde et nous ont parlé de la Société des Sensations au point que fascinés, Nous les avons suivis. Nous avons laissé Ur aux mains de notre reine pour venir ici et faire l'apprentissage de la servitude et de l'humilité pendant un temps. Comme le temps ne passe pas ici comme à Ur, le siècle que Nous avons passé ici ne correspondrait qu'à quelques mois dans notre monde. Après une autre décennie, Nous pensons être prêts à rentrer à Ur pour y régner de nouveau."~ */
  IF ~~ THEN REPLY #48542 /* ~"Je… je vois. J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48543 /* ~"C'est… tout ce que je voulais savoir. Au revoir, Écharde."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7
  SAY #48544 /* ~"La Salle des Fêtes est l'un des plus grands édifices de Sigil, abritant, du fait de la présence de la Société des Sensations, la plus importante faction de la cité. Elle abrite des sensoriums, des salles de lecture, des salles d'entraînement destinés aux visiteurs comme aux membres de la Société.~ */
  IF ~~ THEN REPLY #48545 /* ~"Parle-moi de la Société des Sensations."~ */ GOTO 7
  IF ~~ THEN REPLY #48546 /* ~"Parle-moi des sensoriums."~ */ GOTO 8
  IF ~~ THEN REPLY #48547 /* ~"Parle-moi des salles d'entraînement."~ */ GOTO 9
  IF ~~ THEN REPLY #48548 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48549 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.8 6.0
  SAY #48550 /* ~"La croyance des Sensats repose sur le fait que le multivers ne peut être *véritablement* connu que par le biais des sens. À défaut de pouvoir la ressentir, une chose n'existe *pas*. Ce n'est que par l'expérience… par l'expérience de toutes les sensations… que l'on peut atteindre la pleine Vérité du multivers. La Société des Sensations permet de rassembler et de partager ces expériences, généralement via les sensoriums."~ */
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48551 /* ~"Est-ce que je pourrais devenir un Sensat ?"~ */ GOTO 17
  IF ~~ THEN REPLY #48552 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48553 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #48554 /* ~"Les sensoriums sont des salles qui abritent de multiples enregistrements ou pierres sensorielles. Ces pierres sont enchantées de manière à contenir diverses sensations ou expériences auxquelles d'autres pourront ensuite avoir accès à l'aide de ces pierres. Si tu le souhaites, Nous pouvons te conduire vers l'une d'entre elles."~ */
  IF ~~ THEN REPLY #48742 /* ~"Oui, vas-y."~ */ GOTO 3
  IF ~~ THEN REPLY #48556 /* ~"Non, mais j'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48557 /* ~"Non… pas pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #48558 /* ~"Il en existe trois - une pour les guerriers, une pour les voleurs et une pour les magiciens. Si tu veux t'y rendre, passe la porte centrale du mur oriental, ainsi que la porte suivante. Tu te retrouveras à l'angle d'un couloir… Le long de celui qui mène à l'est, il y a trois portes situées sur le mur du sud. Chaque porte mène à l'une des salles d'entraînement."~ */
  IF ~~ THEN REPLY #48559 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48560 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.9
  SAY #48561 /* ~"Qui est-ce que tu cherchais, voyageur ?"~ */
  IF ~  Global("P_Journal","GLOBAL",3)
Global("Know_Finam_Lang","GLOBAL",1)
~ THEN REPLY #48562 /* ~"Finam, le linguiste."~ */ GOTO 11
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #48563 /* ~"Maîtresse Jolmi de la maison Syrma…"~ */ GOTO 12
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #48564 /* ~"Hilarion."~ */ GOTO 36
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #48565 /* ~"Qui-Sai, le maître guerrier."~ */ GOTO 13
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #48566 /* ~"Eli Havelock, le maître voleur."~ */ GOTO 14
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #48567 /* ~"Madame Peignépine, la maîtresse mage."~ */ GOTO 15
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #48568 /* ~"Montague, un factotum d'ici."~ */ GOTO 16
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #48569 /* ~"Montague, un factotum d'ici."~ */ GOTO 16
  IF ~~ THEN REPLY #48570 /* ~"Personne, en fait. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48571 /* ~"Peu importe. Au revoir, Écharde."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 43.0
  SAY #48572 /* ~"Comme Finam ne donne actuellement pas de conférences ici, tu as plus de chances de le trouver chez lui. Va au sud de l'entrée de la Salle des Fêtes, entre la Galerie d'Yvana et l'Apothicaire. Ce sera à ta droite, une petite maison à cinq côtés à l'ouest du Magasin de brocante."~ */
  IF ~~ THEN REPLY #48573 /* ~"Merci. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48574 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #48575 /* ~"Jolmi a récemment choisi d'attendre dans cette salle. Nous pensons qu'elle cherche ou qu'elle attend quelqu'un. De toute façon, elle devrait être dans le coin."~ */
  IF ~~ THEN REPLY #48576 /* ~"Merci. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48577 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY #48579 /* ~"Qui-Sai est souvent à la recherche d'endroits calmes pour méditer. Il doit se trouver dans une salle moins fréquentée, à l'écart, immobile et dans un état de contemplation silencieuse."~ */
  IF ~~ THEN REPLY #48580 /* ~"Merci. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48581 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.4
  SAY #48582 /* ~"Eli Havelock a quitté le bâtiment il y a quelque temps ; il semblait en colère. Nous pensons qu'il doit vagabonder quelque part dans le Quartier près de la Salle des Fêtes."~ */
  IF ~~ THEN REPLY #48583 /* ~"Merci. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48584 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.5
  SAY #48585 /* ~Écharde plisse les yeux. "Tu la trouveras sans doute dans un des sensoriums. Madame Peignépine faillit à ses devoirs, ces temps-ci, et passe beaucoup trop de temps en compagnie des pierres sensorielles. Tu ne peux pas atteindre cet endroit par toi-même, mais nous pouvons t'emmener dans l'un d'eux, si tu le souhaites."~ */
  IF ~~ THEN REPLY #48586 /* ~"Oui, vas-y."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~~ THEN REPLY #48587 /* ~"Non, mais j'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48588 /* ~"Non… pas pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.6 10.7
  SAY #48589 /* ~"Montague est un jeune homme très occupé ; il est généralement entre cette salle et les trois autres qui se trouvent le long du mur oriental."~ */
  IF ~~ THEN REPLY #48590 /* ~"Merci. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48591 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.0 18.0
  SAY #48592 /* ~"Pour devenir membre de la Société des Sensations, il faut le vouloir et être prêt à partager ses propres expériences. Il en faut cinq - une pour chaque sens. Il est aussi possible de ne présenter qu'une seule expérience englobant les cinq sens. Il doit s'agir de nouvelles sensations ou d'améliorations sur notre stock courant. Si Nous les jugeons acceptables, elles seront placées dans des pierres sensorielles ; tu deviendras alors un Sensat et tu apprendras le Toucher Sensoriel. Il te permettra d'attirer à toi les blessures d'autrui et de t'en guérir en acceptant la souffrance qui en découle."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48593 /* ~"Je suis déjà membre des Hommes-Dieux, mais…"~ */ GOTO 23
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48594 /* ~"Je suis déjà membre des Hommes-Poussière, mais…"~ */ GOTO 23
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48595 /* ~"Je suis déjà membre de… d'une autre faction, mais…"~ */ GOTO 23
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48596 /* ~"Je suis déjà membre des Xaositectes, mais…"~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48597 /* ~"Je suis déjà membre des Hommes-Dieux. J'ai changé d'avis… Je ne les empaillerai pas."~ */ GOTO 22
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48598 /* ~"Je suis déjà membre des Hommes-Poussière. J'ai changé d'avis… Je ne les empaillerai pas."~ */ GOTO 22
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48599 /* ~"Je suis déjà membre de… d'une autre faction. J'ai changé d'avis… Je ne veux pas les empailler."~ */ GOTO 22
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48600 /* ~"Je suis déjà membre des Xaositectes. J'ai changé d'avis… Je ne les empaillerai pas."~ */ GOTO 22
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #48601 /* ~"Je suis prêt. Je veux devenir un Sensat."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~~ THEN REPLY #48602 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48603 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.4 3.2 31.0 35.1
  SAY #48604 /* ~"Tu dois être membre de la Société des Sensations."~ */
  IF ~~ THEN REPLY #48605 /* ~"Alors, est-ce que je pourrais devenir un Sensat ?"~ */ GOTO 17
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #48606 /* ~"Et si j'ai *déjà* été un Sensat ? Ça fait longtemps que je ne suis pas venu ici, mais je t'assure… j'étais un Sensat."~ */ GOTO 19
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #48607 /* ~Bluff : "Oh, mais je *suis* un Sensat, vraiment."~ */ GOTO 20
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #48608 /* ~Bluff : "Mais je suis membre, Écharde… Le seul problème, c'est que je ne suis pas venu ici depuis longtemps, très longtemps. J'ai recueilli énormément d'expériences en mon absence… autant que les cicatrices qui recouvrent mon corps."~ */ GOTO 21
  IF ~~ THEN REPLY #48609 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48610 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #48611 /* ~Écharde s'incline pour t'examiner de plus près. "Nous ne te reconnaissons pas… mais Nous ne voyons aucun mensonge sortir de ta bouche. Très bien. Nous t'accorderons l'accès aux privilèges dont seuls les membres de la Société des Sensations bénéficient… à condition que tu Nous montres les sensations que tu as récemment rassemblées."~ */
  IF ~~ THEN REPLY #48612 /* ~"Bon… je suis prêt."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48613 /* ~"Laisse tomber. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48614 /* ~"Peu importe. Au revoir, Écharde."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY #48615 /* ~"Un véritable Prêtre-Roi d'Ur peut déceler les mensonges. Il n'est pas sage de Nous mentir, voyageur."~ */
  IF ~~ THEN REPLY #48616 /* ~"Je plaisantais, c'est tout… Je ne mentais pas. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48617 /* ~"Alors, pardonne-moi. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48618 /* ~"Je voulais juste… plaisanter avec toi, Écharde. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #48619 /* ~"Alors, je te demande pardon, Écharde. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY #48620 /* ~Il plisse les yeux, grogne et t'examine. "Très… bien. Nous t'accorderons l'accès aux privilèges dont seuls les membres de la Société des Sensations bénéficient… à condition que tu Nous montres les sensations que tu as récemment rassemblées."~ */
  IF ~~ THEN REPLY #48621 /* ~"Bon… je suis prêt."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48622 /* ~"Laisse tomber. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48623 /* ~"Peu importe. Au revoir, Écharde."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.4 17.5 17.6 17.7
  SAY #48624 /* ~Écharde se contente de hocher la tête.~ */
  IF ~~ THEN REPLY #48625 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48626 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.0 17.1 17.2 17.3
  SAY #48627 /* ~"Ils ne te pardonneront pas. Il n'y aura pas de retour."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48628 /* ~"Je suis prêt à rejoindre la Société des Sensations. Je ressens plus aucune loyauté envers les Hommes-Dieux."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48629 /* ~"Je suis prêt à rejoindre la Société des Sensations. Je ressens plus aucune loyauté envers les Hommes-Poussière."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48630 /* ~"Je suis prêt à rejoindre la Société des Sensations. Je n'éprouve plus de loyauté pour… mon ancienne faction."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48631 /* ~"Je suis prêt à rejoindre la Société des Sensations. Je ressens plus aucune loyauté envers les Xaositectes."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48632 /* ~Mentir pour infiltrer les Sensats au profit des Anarchistes: "Je suis prêt à rejoindre la Société des Sensations. Je n'éprouve plus de loyauté pour… mon ancienne faction."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Splinter_1","GLOBALLaw",-1)
SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #48633 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #48634 /* ~"Je crois que ce n'est pas encore le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.8 23.0 23.1 23.2 23.3 23.4
  SAY #48635 /* ~"Premièrement, quelle *odeur* - ou expérience associée - as-tu à Nous offrir ?"~ */
  IF ~~ THEN REPLY #48636 /* ~"En fait, je voudrais faire part d'une expérience qui englobe les cinq sens : je me suis réveillé sans savoir où j'étais, sur une dalle métallique glacée et maculée de sang dans les entrailles de la Morgue, un endroit que seuls les Hommes-Poussière ou les cadavres dont ils s'occupent connaissent…"~ */ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 33.0
  SAY #48637 /* ~Il hoche la tête. "Une expérience troublante."~ */
  IF ~~ THEN REPLY #48638 /* ~"Et j'ai oublié l'épisode du crâne bavard qui s'est jeté sur moi dès que j'ai été sur pied. Ça te suffit, Écharde ?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #48639 /* ~"Oui… Nous devons maintenant trouver une pierre vide pour enregistrer ton expérience. Tu auras alors accès aux privilèges dont seuls les membres de la Société des Sensations bénéficient, et tu apprendras le Toucher Sensoriel."~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #48640 /* ~Accompagne-le pour enregistrer ton expérience et apprendre le Toucher sensoriel.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48641 /* ~Accompagne-le pour enregistrer ton expérience et faire semblant d'apprendre le Toucher sensoriel.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #48642 /* ~Tu retournes au foyer de la Salle des Fêtes avec Écharde.

"Bienvenue à la Société des Sensations, voyageur. Puissent tes futurs voyages et expériences te guider vers les grandes vérités du multivers."~ */
  IF ~~ THEN REPLY #48643 /* ~"Merci, Écharde. J'avais une question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48644 /* ~"Merci. Au revoir, Écharde."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.0 21.0
  SAY #48645 /* ~"Nous demandons cinq sensations, une pour chacun des cinq sens… ou une seule expérience englobant les cinq sens."~ */
  IF ~~ THEN REPLY #48646 /* ~"Alors, je ne ferai part que d'une seule expérience : je me suis réveillé sans savoir où j'étais, sur une dalle métallique glacée et tachée de sang dans les entrailles de la Morgue, un endroit que seuls les Hommes-Poussière ou les cadavres dont ils s'occupent connaissent…"~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 34.0
  SAY #48647 /* ~Il hoche la tête. "Une expérience troublante."~ */
  IF ~~ THEN REPLY #48648 /* ~"Et j'ai oublié l'épisode du crâne bavard qui s'est jeté sur moi dès que j'ai été sur pied. Ça te suffit, Écharde ?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #48649 /* ~"Oui. Nous te souhaitons la bienvenue, voyageur, et t'accordons l'accès aux privilèges dont seuls les membres de la Société des Sensations bénéficient."~ */
  IF ~~ THEN REPLY #48650 /* ~"Merci, Écharde. J'avais une question…"~ */ DO ~GiveExperience(Protagonist,10000)
~ GOTO 1
  IF ~~ THEN REPLY #48651 /* ~"Merci. Au revoir, Écharde."~ */ DO ~GiveExperience(Protagonist,10000)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.5
  SAY #48652 /* ~"La Salle des Fêtes abrite des logements, mais seuls les membres de la Société des Sensations peuvent en bénéficier. Si tu souhaites t'y rendre pour les visiter, d'ici, traverse la Salle des Fêtes en direction de l'est. Le gratte-papier qui s'y trouve autorise les Sensats à entrer dans les chambres."~ */
  IF ~~ THEN REPLY #48653 /* ~"Alors… Il n'y a aucun autre moyen d'avoir une chambre, ici ?"~ */ GOTO 18
  IF ~~ THEN REPLY #48654 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48655 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #48656 /* ~À ton approche, Écharde te lance un regard plus calme que jamais. "Nous te souhaitons, une nouvelle fois, la bienvenue à la Salle des Fêtes, voyageur. Qu'est-ce que Nous pouvons faire pour toi ?"~ */
  IF ~~ THEN REPLY #65146 /* ~"Comment est-ce que tu pourrais m'aider ?"~ */ GOTO 2
  IF ~~ THEN REPLY #48657 /* ~"J'ai des questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #48658 /* ~"Pour l'instant, je n'ai besoin de rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0
  SAY #48659 /* ~Écharde hoche la tête. "Continue."~ */
  IF ~~ THEN REPLY #48660 /* ~"Mon corps tout entier empestait la lotion d'embaumement, mais cette odeur n'était rien comparée à l'odeur cuivrée de sang qui m'entourait. Il y avait des dizaines de corps sur d'innombrables dalles couvertes de sang comme celle où je me suis réveillé, tous sur le point d'être étripés, vidés par des dispositifs à rouage cauchemardesques pour des raisons inconnues. Les seuls bruits que j'entendais étaient des grincements métalliques ainsi que les bruits de pas chancelants des ouvriers morts-vivants qui poussaient les brancards à travers la Morgue sur des rails rouillés."~ */ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 28.0
  SAY #48661 /* ~Écharde hoche la tête. "Continue."~ */
  IF ~~ THEN REPLY #48662 /* ~"Mon corps tout entier empestait la lotion d'embaumement, mais cette odeur n'était rien comparée à l'odeur cuivrée de sang qui m'entourait. Il y avait des dizaines de corps sur d'innombrables dalles couvertes de sang comme celle où je me suis réveillé, tous sur le point d'être étripés, vidés par des dispositifs à rouage cauchemardesques pour des raisons inconnues. Les seuls bruits que j'entendais étaient des grincements métalliques ainsi que les bruits de pas chancelants des ouvriers morts-vivants qui poussaient les brancards à travers la Morgue sur des rails rouillés."~ */ GOTO 29
END

IF ~~ THEN BEGIN 35 // from: 1.10
  SAY #48663 /* ~Écharde ferme les yeux et réfléchit brièvement. "Au sujet de Ravel, Nous te conseillons de t'adresser à Étouffe, c'est un magicien. Étouffe est toujours quelque part dans la Salle des Fêtes, au sensorium privé, le plus souvent."~ */
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48664 /* ~"Indique-moi le chemin du sensorium privé."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48665 /* ~"Qu'est-ce que je dois faire pour entrer dans le sensorium privé ?"~ */ GOTO 18
  IF ~~ THEN REPLY #48666 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48667 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 10.2
  SAY #48668 /* ~"Hilarion fait généralement les cent pas dans les salles de lecture. Passe d'abord la porte centrale du mur oriental, puis la porte suivante. Tu le trouveras certainement dans le couloir où tu arriveras."~ */
  IF ~~ THEN REPLY #48669 /* ~"Merci. J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #48670 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 4.0
  SAY #49868 /* ~"Dirige-toi vers la porte centrale du mur oriental, puis vers la porte suivante. Continue tout droit dans le couloir où tu arriveras et franchis la deuxième porte du côté nord."~ */
  IF ~~ THEN REPLY #49869 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #49870 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.1
  SAY #49871 /* ~"Dirige-toi vers la porte la plus au sud du mur oriental."~ */
  IF ~~ THEN REPLY #49872 /* ~"J'avais une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #49873 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 4.2
  SAY #49874 /* ~"Dirige-toi vers la porte centrale du mur oriental, puis vers la porte suivante. Continue tout droit dans le couloir où tu arriveras et franchis la première porte du côté nord."~ */
  IF ~~ THEN REPLY #49875 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #49876 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 1.0
  SAY #51517 /* ~"Et pour quelle raison permettrions-Nous une telle chose ?"~ */
  IF ~~ THEN REPLY #51518 /* ~"Parce que l'une des pierres renferme un fragment de la vie de sa fille. Elle est morte loin de chez elle, sans qu'elle l'ait revu depuis longtemps, et il pleure sa perte."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",2)
~ JOURNAL #51523 /* ~J'ai demandé à Écharde, le garde de la Salle des Fêtes, si Iannis pouvait venir voir la pierre sensorielle de sa fille. Écharde m'a donné son accord. Il ne me reste donc plus qu'à aller prévenir Iannis qu'il aura le droit d'entrer.~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #51519 /* ~Écharde acquiesce, réfléchit un moment, et acquiesce de nouveau. "Oui, Nous autoriserons ce Iannis à entrer dans le Sensorium privé - sous escorte, bien sûr. Tu peux lui dire qu'il en a la permission."~ */
  IF ~~ THEN REPLY #51520 /* ~"Merci, Écharde. J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #51521 /* ~"Tous mes remerciements. Au revoir Écharde."~ */ EXIT
END

IF ~  Global("Splinter","GLOBAL",1)
~ THEN BEGIN 42 // from:
  SAY #56842 /* ~Le géant ricane. "Tu ne troubleras plus les braves gens d'ici. Nous veillerons à ce que tu sois jeté loin d'ici." Il lève la main et ta vision s'obscurcit, tandis que la Salle des Fêtes s'évanouit autour de toi…~ */
  IF ~~ THEN REPLY #56843 /* ~"Quoi… ?"~ */ DO ~SetGlobal("Splinter","GLOBAL",0)
TeleportParty("AR0500",[980.2100],0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.1
  SAY #65147 /* ~"On connaît un homme qui pourrait peut-être t'aider : Finam."~ */
  IF ~~ THEN REPLY #65148 /* ~"Où est-ce qu'on peut le trouver ?"~ */ GOTO 11
  IF ~~ THEN REPLY #65150 /* ~"Merci. J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #65151 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 1.6
  SAY #66167 /* ~"La Salle des Fêtes propose en effet des logements. Si tu souhaites y jeter un œil, dirige-toi vers l'est et tu finiras par les atteindre. Adresse-toi à l'employé qui en a la charge."~ */
  IF ~~ THEN REPLY #66168 /* ~"J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #66169 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.2
  SAY #66258 /* ~"Nous te recommandons de t'adresser à un certain Salabesh. S'il n'est pas à la Salle des Fêtes en ce moment, nul doute qu'il se trouve dans les environs. C'est un homme grand et mince qui porte souvent une robe noire ou rouge."~ */
  IF ~~ THEN REPLY #66259 /* ~"Merci. J'ai une autre question…"~ */ GOTO 1
  IF ~~ THEN REPLY #66260 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
