// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMENGINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMENGINE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48686 /* ~Tu vois un cube à deux bras, deux jambes et deux petites ailes sur les côtés. La face avant du cube s'orne d'un visage capable d'expression. Alors que tu t'approches, la créature tourne les yeux vers toi.~ */
  IF ~~ THEN REPLY #48687 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #48688 /* ~Ignore la créature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48689 /* ~"Bonjour." La créature parle d'une voix monotone et neutre.~ */
  IF ~~ THEN REPLY #48690 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48691 /* ~"Peu importe. Au revoir."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.2 7.1 8.1 9.1 10.2 11.3 12.2 13.1 14.1 15.1 16.1 18.0 19.1 21.0 26.0 27.0 28.2 29.1 30.2 31.1 34.0
  SAY #48692 /* ~La créature continue à te regarder sans afficher la moindre expression. "Pose ta question."~ */
  IF ~~ THEN REPLY #48693 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48694 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 6
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48695 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 9
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48696 /* ~"De quoi est capable le Rubikon, exactement ?"~ */ GOTO 19
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #48697 /* ~"Je veux créer un donjon à explorer."~ */ GOTO 22
  IF ~  Global("Portal_Lens","GLOBAL",1)
~ THEN REPLY #48698 /* ~"Je veux utiliser les lentilles du portail pour voyager quelque part."~ */ GOTO 25
  IF ~  !Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #54222 /* ~"Comment est-ce que je sors d'ici ?"~ */ GOTO 31
  IF ~  Global("Rubikon_Direct","GLOBAL",3)
~ THEN REPLY #66393 /* ~"Y a-t-il des dangers liés au Rubikon dont je devrais être informé ?"~ */ GOTO 32
  IF ~~ THEN REPLY #68063 /* ~"Il faut que j'y aille, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48700 /* ~"Nous sommes des modrones."~ */
  IF ~~ THEN REPLY #48701 /* ~"Tu t'appelles Modrone ?"~ */ GOTO 4
  IF ~~ THEN REPLY #48702 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48703 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #48704 /* ~"Nous sommes des modrones. Nous n'avons pas de nom. Nous sommes des modrones. Tout ce que tu vois ici est modrone. Nous ne sommes qu'un."~ */
  IF ~~ THEN REPLY #48705 /* ~"Si vous n'avez pas de noms, comment est-ce que vous vous distinguez entre modrones ?"~ */ GOTO 5
  IF ~~ THEN REPLY #48706 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48707 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48708 /* ~Il y a une pause alors que le modrone réfléchit à ta question. "Nous savons. Nous sommes des modrones. Nous faisons partie intégrante de l'ensemble. Tout comme tu admets que la main est partie intégrante du bras, nous admettons que chacun est partie intégrante de l'ensemble."~ */
  IF ~~ THEN REPLY #48709 /* ~"Et toi, en tant qu'individu… ?"~ */ GOTO 27
  IF ~~ THEN REPLY #48710 /* ~"C'est intéressant. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48711 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #48712 /* ~"Nous sommes des modrones, nous sommes des tétradrones."~ */
  IF ~~ THEN REPLY #48713 /* ~"C'est quoi, un modrone ?"~ */ GOTO 7
  IF ~~ THEN REPLY #48714 /* ~"C'est quoi, un tétradrone ?"~ */ GOTO 8
  IF ~~ THEN REPLY #48715 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48716 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48717 /* ~"Nous sommes des modrones. C'est ainsi que s'identifie notre race."~ */
  IF ~~ THEN REPLY #48718 /* ~"Alors, c'est quoi, un tétradrone ?"~ */ GOTO 8
  IF ~~ THEN REPLY #48719 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48720 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48721 /* ~"Dans notre race, nous sommes identifiés sous le type tétradrone."~ */
  IF ~~ THEN REPLY #48722 /* ~"Alors, c'est quoi, un modrone ?"~ */ GOTO 7
  IF ~~ THEN REPLY #48723 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48724 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 31.0
  SAY #48725 /* ~"C'est le Projet de Construction de Donjon Rubikon."~ */
  IF ~~ THEN REPLY #48726 /* ~"C'est quoi, exactement ?"~ */ GOTO 10
  IF ~~ THEN REPLY #48727 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48728 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #48729 /* ~En te répondant, le modrone commence à émettre un léger bourdonnement. "L'objectif du Projet Rubikon est de déterminer la dynamique, sociale et asociale, entourant l'environnement qu'on appelle communément un donjon et de tenter d'expliquer les aberrations qui tendent à se produire dans de tels environnements."~ */
  IF ~~ THEN REPLY #48730 /* ~"Comment est-ce que vous comptez faire ça ?"~ */ GOTO 11
  IF ~~ THEN REPLY #48731 /* ~"De quelles aberrations tu parles ?"~ */ GOTO 12
  IF ~~ THEN REPLY #48732 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48733 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #48734 /* ~"Rubikon est capable de former une série de salles reliées de manière à former ce qu'on appelle communément un *donjon*. Chaque donjon peut disposer d'un des trois paramètres de difficulté suivants : facile, normal ou difficile. Le donjon est alors rempli de monstres, de pièges et de trésors en fonction du niveau de difficulté choisi. Une fois créé, le donjon peut être exploré dans sa totalité." Le modrone commence à émettre un léger bourdonnement.~ */
  IF ~~ THEN REPLY #48735 /* ~"C'est quoi, ce bourdonnement ?"~ */ GOTO 30
  IF ~~ THEN REPLY #48736 /* ~"Tu as dit quelque chose à propos d'aberrations ?"~ */ GOTO 12
  IF ~~ THEN REPLY #48737 /* ~"Intéressant. Je voudrais essayer un de ces donjons."~ */ GOTO 13
  IF ~~ THEN REPLY #48738 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48739 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 30.0
  SAY #48740 /* ~"Questions nécessitant des réponses : qu'est-ce qui attire les gens dans les donjons ? Pourquoi les gens cherchent-ils toujours à y pénétrer s'ils sont si dangereux ? Pourquoi les donjons existent-ils ? Quelle est la dynamique d'un donjon en bon fonctionnement ? Nous ne comprenons pas…" Il marque une pause. "Enfin… je… ne comprends pas…"~ */
  IF ~~ THEN REPLY #48748 /* ~"Intéressant. Je voudrais essayer un de ces donjons."~ */ GOTO 13
  IF ~~ THEN REPLY #48749 /* ~"Tu as commencé à dire *je* au lieu de *nous*…"~ */ GOTO 28
  IF ~~ THEN REPLY #48750 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48751 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0 28.0 29.0 30.1
  SAY #48752 /* ~Après une longue pause, le modrone te répond. "Demande refusée… Projet interrompu en raison d'un… accident."~ */
  IF ~~ THEN REPLY #48753 /* ~"Quel accident ?"~ */ GOTO 14
  IF ~~ THEN REPLY #48754 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48755 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #48756 /* ~"La construction de donjon est devenue instable, cause incertaine. Des dispositifs de sécurité positive se sont activés, entraînant l'effondrement du donjon, cause incertaine. Dysfonctionnement de la lentille du portail entraînant la rupture de tout contact avec le plan natal de Méchanus. Réinitialisation du donjon nécessaire."~ */
  IF ~~ THEN REPLY #48757 /* ~"Alors, réinitialise-le !"~ */ GOTO 15
  IF ~~ THEN REPLY #48758 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48759 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #48760 /* ~"La réinitialisation ne peut être effectuée que par le directeur du projet. Directeur du projet désintégré. Dysfonctionnement de la lentille du portail entraînant la rupture du contact avec Méchanus. Impossible d'obtenir un directeur remplaçant de Méchanus."~ */
  IF ~~ THEN REPLY #48761 /* ~"Si je comprends bien, tu ne peux pas lancer la réinitialisation sans directeur, mais tu ne peux pas avoir de directeur sans réinitialisation. C'est bien ça ?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #48762 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48763 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #48764 /* ~Le modrone semble contrarié et commence à s'agiter. "Évaluation correcte. Projet interrompu."~ */
  IF ~~ THEN REPLY #48765 /* ~"Écoute, je suis un aventurier et je suis habitué à parcourir des donjons. Pourquoi est-ce que tu ne me laisserais pas devenir ton directeur ?"~ */ DO ~SetGlobal("Rubikon_Direct","GLOBAL",3)
~ GOTO 17
  IF ~~ THEN REPLY #48766 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48767 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #48768 /* ~La salle s'emplit soudain d'un bourdonnement qui diminue tout aussi soudainement. "Assistance bienvenue. Tu es désormais directeur de projet. Conseille sur les tâches à accomplir."~ */
  IF ~~ THEN REPLY #48769 /* ~"Réinitialise le donjon."~ */ DO ~FixEngineRoom()
GenerateModronMaze()
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #48770 /* ~"Réinitialisation en cours…" La pièce s'emplit d'un tambourinement sourd qui relève plus de la sensation que de l'audition. "Effondrement du donjon existant…" Le bruit s'intensifie jusqu'à faire vibrer le sol. "Initialisation du nouveau donjon…" Le bruit augmente en volume jusqu'à te donner l'impression que ta tête va exploser. Soudain, le silence revient. "Réinitialisation terminée. Statut de construction de donjon : facile. En attente de nouvelles instructions, Directeur."~ */
  IF ~~ THEN REPLY #48771 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48772 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #48773 /* ~"Rubikon est capable de former une série de salles reliées de manière à former ce qu'on appelle communément un *donjon*. Chaque donjon peut disposer d'un des trois paramètres de difficulté suivants : facile, normal ou difficile. Le donjon est alors rempli de monstres, de pièges et de trésors en fonction du niveau de difficulté choisi. Une fois créé, le donjon peut être exploré dans sa totalité." Le modrone s'arrête. "D'autres possibilités sont disponibles via la lentille du portail."~ */
  IF ~~ THEN REPLY #48774 /* ~"Quelles autres possibilités ?"~ */ DO ~SetGlobal("Portal_Lens","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #48775 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48776 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #48777 /* ~"Rubikon peut former une porte vers d'autres endroits en se reliant provisoirement à des portails connus et existants. Cet effet est connu sous le nom de *lentille de portail*. Cela permet d'utiliser le portail depuis le Rubikon sans avoir à se rendre à l'emplacement du portail."~ */
  IF ~~ THEN REPLY #48778 /* ~"Alors, si je connais un portail, je peux rejoindre sa destination d'ici ?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #48779 /* ~"Exact, directeur."~ */
  IF ~~ THEN REPLY #48780 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48781 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.4
  SAY #48782 /* ~"Sélectionne un niveau de difficulté."~ */
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48783 /* ~"Le niveau facile est déjà sélectionné, alors tu n'as qu'à créer un nouveau donjon."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48784 /* ~"Le niveau facile est sélectionné ; remplace-le par normal."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",0)
~ THEN REPLY #48785 /* ~"Le niveau facile est sélectionné ; remplace-le par difficile."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48786 /* ~"Le niveau normal est déjà sélectionné ; tu n'as qu'à créer un nouveau donjon."~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48787 /* ~"Le niveau normal est sélectionné ; remplace-le par facile."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",1)
~ THEN REPLY #48788 /* ~"Le niveau normal est sélectionné ; remplace-le par difficile."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",2)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48789 /* ~"Le niveau difficile est déjà sélectionné ; tu n'as qu'à créer un nouveau donjon." ~ */ DO ~GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48790 /* ~"Le niveau difficile est sélectionné ; remplace-le par normal."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",1)
GenerateModronMaze()
~ GOTO 23
  IF ~  Global("MazeDifficulty","GLOBAL",2)
~ THEN REPLY #48791 /* ~"Le niveau difficile est sélectionné ; remplace-le par facile."~ */ DO ~SetGlobal("MazeDifficulty","GLOBAL",0)
GenerateModronMaze()
~ GOTO 23
  IF ~~ THEN REPLY #48792 /* ~"Peu importe, ne change rien."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1 22.2 22.3 22.4 22.5 22.6 22.7 22.8
  SAY #48793 /* ~"Effondrement du donjon en cours…" La pièce s'emplit d'un tambourinement sourd. "Initialisation du nouveau donjon…" Le sol commence à vibrer, puis le calme revient. "Donjon créé. En attente de nouvelles instructions, Directeur."~ */
  IF ~~ THEN REPLY #48794 /* ~"C'est tout pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.9
  SAY #48795 /* ~"Paramètres courants intacts. En attente de nouvelles instructions, Directeur."~ */
  IF ~~ THEN REPLY #48796 /* ~"C'est tout pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 2.5
  SAY #48797 /* ~"Indique ta destination, Directeur."~ */
  IF ~  Global("AR0100_Visited","GLOBAL",1)
~ THEN REPLY #48905 /* ~"La Ruche, près du Square du Chiffonnier."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0100",[2068.468],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #48906 /* ~"La Ruche, près de la Morgue."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #48907 /* ~"La Ruche, près du marché."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #48908 /* ~"La Ruche, près du Bar du Cadavre fumant."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #48909 /* ~"Le Bas Quartier."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #48910 /* ~"Le Quartier des Gratte-papier."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #48911 /* ~"Les catacombes de la Pierre Pleureuse."~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #48912 /* ~"Peu importe. C'est tout pour le moment. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #48913 /* ~Tu vois l'ingénieur modrone. "Bonjour."~ */
  IF ~~ THEN REPLY #48914 /* ~"J'ai quelques questions…~ */ GOTO 2
  IF ~~ THEN REPLY #48915 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.0
  SAY #48916 /* ~"Je…" Troublé, le modrone s'arrête une seconde. Un vif bourdonnement emplit la pièce avant de se dissiper rapidement. "Nous sommes modrones. Nous faisons partie de l'ensemble. L'ensemble est modrone. Et c'est tout."~ */
  IF ~~ THEN REPLY #48917 /* ~"C'est intéressant. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48918 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.1
  SAY #48919 /* ~Le modrone te lance un regard inquiet, puis jette un coup d'œil dans la pièce. "Tu fais erreur. Nous sommes modrones. Nous sommes l'ensemble… Nous n'en discuterons pas."~ */
  IF ~~ THEN REPLY #48920 /* ~"Très bien. Je voudrais essayer un des donjons dont tu as parlé."~ */ GOTO 13
  IF ~~ THEN REPLY #48921 /* ~"Je sais ce que j'ai entendu. Tu as commencé par dire *je* et…"~ */ GOTO 29
  IF ~~ THEN REPLY #48922 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48923 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #48924 /* ~Le modrone fronce les sourcils. Tu ressens une pointe de colère dans le ton de sa voix. "Non. Nous sommes modrones. Nous faisons partie de l'ensemble. Nous n'en discuterons pas davantage." Un bourdonnement de colère emplit la salle avant de se dissiper.~ */
  IF ~~ THEN REPLY #48925 /* ~"Très bien. Je voudrais essayer un des donjons dont tu as parlé."~ */ GOTO 13
  IF ~~ THEN REPLY #48926 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48927 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 11.0
  SAY #48928 /* ~"Rubikon est une précieuse réalisation et…" Il s'arrête un moment. "Je… nous… sommes contents."~ */
  IF ~~ THEN REPLY #48929 /* ~"Tu as dit quelque chose à propos d'aberrations ?"~ */ GOTO 12
  IF ~~ THEN REPLY #48930 /* ~"Intéressant. Je voudrais essayer un de ces donjons."~ */ GOTO 13
  IF ~~ THEN REPLY #48931 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #48932 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.6
  SAY #66394 /* ~Le modrone hésite avant de répondre. "Sortie hors d'atteinte, projet en attente…" La salle s'emplit d'un bourdonnement qui stoppe soudainement.~ */
  IF ~~ THEN REPLY #66395 /* ~"Quel projet ? De quoi tu parles ?"~ */ GOTO 9
  IF ~~ THEN REPLY #66396 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #66397 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 2.7
  SAY #68064 /* ~"Oui, Directeur. Ne te sépare pas de tes compagnons dans le dédale. Si celui-ci venait à être transformé ou si son niveau de difficulté était modifié, toutes les créatures présentes à l'intérieur seraient détruites."~ */
  IF ~~ THEN REPLY #68065 /* ~"Je vois. Je ne dois pas reconstituer mon groupe à l'intérieur du dédale. Autre chose ?"~ */ JOURNAL #68071 /* ~Tant que je me trouve dans le dédale des modrones, mon groupe ne peut se reformer. Si jamais le labyrinthe venait à se transformer ou si son niveau de difficulté était modifié, tous ceux qui se trouvent à l'intérieur mourraient.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #68066 /* ~"Oui, Directeur. Ne laisse rien tomber dans le dédale. Si celui-ci venait à être transformé ou si son niveau de difficulté était modifié, tous les objets présents à l'intérieur seraient détruits."~ */
  IF ~~ THEN REPLY #68067 /* ~"Je vois. Je ne dois rien lâcher d'important à l'intérieur du dédale. Autre chose ?"~ */ JOURNAL #68072 /* ~Tant que je me trouve dans le dédale des modrones, je dois veiller à ne rien laisser tomber d'important. Si jamais le labyrinthe venait à se transformer ou si son niveau de difficulté était modifié, tout ce qui se trouve à l'intérieur serait détruit.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #68068 /* ~Il réfléchit un instant. "Non, Directeur."~ */
  IF ~~ THEN REPLY #68069 /* ~"Je vois. J'aurais d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #68070 /* ~"Très bien. Au revoir."~ */ EXIT
END
