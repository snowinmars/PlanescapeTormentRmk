// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRIS~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #2925 /* ~C'est le cadavre d'un homme dont le visage au nez crochu arbore une expression de surprise. Il est difficile de deviner les circonstances de son décès : il est peut-être mort des suites des nombreuses et terribles entailles qui recouvrent son abdomen et sa gorge, ou suite à l'hémorragie survenue quand son bras droit a quasiment été tranché au niveau de l'épaule.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ EXTERN ~DANNAH~ 114
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #2926 /* ~C'est le cadavre d'un homme dont le visage au nez crochu arbore une expression de surprise. Il est difficile de deviner les circonstances de son décès : il est peut-être mort des suites des nombreuses et terribles entailles qui recouvrent son abdomen et sa gorge, ou suite à l'hémorragie survenue quand son bras droit a quasiment été tranché au niveau de l'épaule.~ */
  IF ~~ THEN REPLY #20657 /* ~"Triste façon de partir. Si je pouvais lui parler, il aurait une sacrée histoire à raconter…"~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Quint_Item","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #20658 /* ~Le corps au nez crochu remue légèrement et la voix flegmatique de Gris se fait entendre. "Tu l'as trouvé ? Je t'ai donné de claires indications, n'est-ce pas, et toi tu traînes pendant que je pourris ici. Ma foi, qu'est-ce que le vieux mort Gris peut faire pour toi maintenant ?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20659 /* ~"Où est le charme de Quint déjà ?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20660 /* ~"Où est ton magot déjà ?"~ */ GOTO 5
  IF ~~ THEN REPLY #20661 /* ~"Qu'est-ce qui t'est arrivé, dis-moi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #20662 /* ~"Qu'est-ce que tu peux me dire sur les catacombes ?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20663 /* ~"Parle-moi de toi."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20664 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20665 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20666 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_GStash","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #20667 /* ~Le corps au nez crochu remue légèrement et la voix flegmatique de Gris se fait entendre. "Tu l'as trouvé ? Je t'ai donné de claires indications, n'est-ce pas, et toi tu traînes pendant que je pourris ici. Ma foi, qu'est-ce que le vieux mort Gris peut faire pour toi maintenant ?"~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
~ THEN REPLY #20668 /* ~"Où est le charme de Quint déjà ?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20669 /* ~"Où est ton magot déjà ?"~ */ GOTO 5
  IF ~~ THEN REPLY #20670 /* ~"Qu'est-ce qui t'est arrivé, dis-moi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #20671 /* ~"Qu'est-ce que tu peux me dire sur les catacombes ?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20672 /* ~"Parle-moi de toi."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20673 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20674 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20675 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 9.0
  SAY #20676 /* ~"Je t'ai bien dit. C'est à gauche de la maison de Marta - la vieille sorcière aux cadavres timbrée ? - caché dans un tas de détritus. Regarde bien et tu l'trouveras."~ */
  IF ~~ THEN REPLY #20677 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #20678 /* ~"Merci, Gris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 9.1
  SAY #20679 /* ~"Je l'ai caché près d'Ojo - c'est l'idiot, OK ? - Je l'ai caché près de sa maison. J'me suis dit que personne d'autre soulèverait ces ordures pour m'le piquer, mais puisque tu es le dernier à qui je vais parler, ça serait aussi bien que tu l'aies. C'est du côté droit de sa maison quand tu fais face à la porte."~ */
  IF ~  Global("Know_GStash","GLOBAL",0)
~ THEN REPLY #20680 /* ~"Très bien. J'ai d'autres questions à te poser."~ */ GOTO 9
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #20681 /* ~"Très bien. J'ai d'autres questions à te poser."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 7.0 9.2
  SAY #20682 /* ~"Mes gars et moi on venait tout juste de forcer cette crypte… et crois-moi, c'était plus difficile que d'ouvrir une ceinture de chasteté. Après avoir bricolé pendant une éternité et réussi à ouvrir la porte, on est arrivés ici et on a cherché à ouvrir la crypte principale, lorsque mon sang a commencé à crier et que cette… cette *chose*… m'a lacéré et jeté dans cette crypte… J'la combattais et j'les entendais courir… mes affranchis… qu'est-ce qui leur est arrivé, hein ? Où est Burt ? Et Lowden ? Est-ce qu'ils s'en sont tirés ou ils sont dans le livre des morts ?"~ */
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20683 /* ~Vérité : "Ils sont morts."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20684 /* ~Mensonge : "Ils s'en sont tirés."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",1)
~ THEN REPLY #20685 /* ~Mensonge : "Je ne sais pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20686 /* ~Mensonge : "Ils sont morts."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 12
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20687 /* ~Mensonge : "Ils s'en sont tirés."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_2","GLOBALLaw",-1)
~ GOTO 13
  IF ~  Global("Know_BLDead","GLOBAL",0)
~ THEN REPLY #20688 /* ~Vérité : "Je ne sais pas."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_2","GLOBALLaw",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 9.4
  SAY #20689 /* ~"Ça, c'est mon terrain. Plein de cryptes bien mûres ici, presque ignorées de tous pendant près de…" Il s'arrête. "Ben, pas mal de temps à mon avis. Mes gars et moi on a ouvert pas mal de cryptes par ici… On venait tout juste d'arriver à celle-là quand le problème est arrivé."~ */
  IF ~~ THEN REPLY #20690 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 6
  IF ~~ THEN REPLY #20691 /* ~"De quelles cryptes tu peux me parler ?"~ */ GOTO 16
  IF ~~ THEN REPLY #20692 /* ~"Réponds à d'autres questions, d'accord ?"~ */ GOTO 9
  IF ~~ THEN REPLY #20693 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.5 9.6
  SAY #20694 /* ~"Gris. Gris le vautour. On m'appelle comme ça parce que j'suis capable de renifler les cryptes et d'piller l'meilleur avant que qui que ce soit ne le trouve. J'ai passé la plupart de mon temps à dépouiller les cadavres. Pourquoi tu me demandes ça ?"~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20695 /* ~"Quint te cherchait, Gris. Il a dit que tu avais quelque chose qui lui appartenait."~ */ GOTO 10
  IF ~  GlobalGT("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20696 /* ~"Tu es Gris, hein ? Je vais prévenir les autres villageois que tu es mort."~ */ GOTO 19
  IF ~  Global("Know_Gstash","GLOBAL",0)
~ THEN REPLY #20697 /* ~"Tu es Gris, hein ? Je vais prévenir les autres villageois que tu es mort."~ */ GOTO 19
  IF ~~ THEN REPLY #20698 /* ~"Pour rien."~ */ GOTO 21
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",1)
~ THEN BEGIN 9 // from: 4.0 5.0 5.1 7.2 12.0 13.0 14.0 15.0 16.1 17.0 18.0 19.1 20.0 21.0 25.0 26.1
  SAY #20701 /* ~Le cadavre laisse échapper un soupir. "Qu'est-ce que tu voulais savoir, bige ?"~ */
  IF ~  Global("Quint_Item","GLOBAL",2)
~ THEN REPLY #20702 /* ~"Où est le charme de Quint déjà ?"~ */ GOTO 4
  IF ~  Global("Know_GStash","GLOBAL",1)
~ THEN REPLY #10881 /* ~"Où est ton magot déjà ?"~ */ GOTO 5
  IF ~~ THEN REPLY #20703 /* ~"Qu'est-ce qui t'est arrivé, dis-moi ?"~ */ GOTO 6
  IF ~  Global("Know_Gris","GLOBAL",1)
Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20704 /* ~"Gris, dis-moi où se trouve le charme de Quint. Il m'a dit que tu le savais."~ */ GOTO 10
  IF ~~ THEN REPLY #20705 /* ~"Qu'est-ce que tu peux me dire sur les catacombes ?"~ */ GOTO 7
  IF ~  Global("Know_Gris","GLOBAL",1)
~ THEN REPLY #20706 /* ~"Parle-moi de toi."~ */ GOTO 15
  IF ~  !NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20707 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Know_Gris","GLOBAL",0)
~ THEN REPLY #20708 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("Know_Gris","GLOBAL",1)
SetGlobal("Know_Gris_Dead","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #20709 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.3
  SAY #20717 /* ~"Le charme de Quint ?" Le cadavre rit. "Si ce gros fils de traînée farci de vérole t'a envoyé ici pour ça, tu es au mauvais endroit, bige. Cette chose est dans le Village Enseveli."~ */
  IF ~~ THEN REPLY #20718 /* ~"Mais où est-il ?"~ */ GOTO 18
  IF ~~ THEN REPLY #20719 /* ~"Je vois. Je vais aller voir. Au revoir."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 2.6 3.6 9.7
  SAY #20720 /* ~"Gris. Gris le vautour. On m'appelle comme ça parce que j'suis capable de renifler les cryptes et d'piller l'meilleur avant que qui que ce soit ne les trouve. J'ai passé la plupart de mon temps à dépouiller les cadavres."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 116
END

IF ~~ THEN BEGIN 12 // from: 6.0 6.3
  SAY #20726 /* ~"Ouais, tant mieux. Ça m'énerverait de penser qu'ils s'en sont tirés en m'laissant ici pour mort."~ */
  IF ~~ THEN REPLY #20728 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20729 /* ~"Ouais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1 6.4
  SAY #20730 /* ~"Sales vermines ! Ils m'ont sûrement laissé à la merci du destin, en m'abandonnant à cette *chose* pendant qu'ils essayaient de se mettre à l'abri…"~ */
  IF ~~ THEN REPLY #20731 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20732 /* ~"Ouais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2 6.5
  SAY #20733 /* ~"Ouais, j'espère bien qu'ils n'ont pas réussi. Les sales cagueurs."~ */
  IF ~~ THEN REPLY #20734 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20735 /* ~"Ouais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4 3.4 9.5
  SAY #20736 /* ~"Tu m'as déjà demandé ça, bige. Gris, vautour, cryptes, catacombes, les Récupérateurs… qu'est-ce que tu veux savoir d'autre ?"~ */
  IF ~~ THEN REPLY #20737 /* ~"Réponds juste à quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20738 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.1
  SAY #20739 /* ~"Il y en a une à gauche de l'entrée, avec une bande de têtes de goules tournant autour… vaut mieux pas s'aventurer là-bas sans des torches et quelques arcs. Il y a une crypte avec de jolis carreaux à droite de l'entrée en descendant un escalier… puis il y a celle que j'explorais avant ces circonstances funestes… Je crois que la crypte avec les jolis carreaux doit cacher un secret… elle sent pas pareil. Et puis il y a une salle secrète dans les environs, mais j'connais pas de chemin pour y arriver."~ */
  IF ~~ THEN REPLY #20740 /* ~"Elle est où ?"~ */ GOTO 17
  IF ~~ THEN REPLY #20741 /* ~"J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20742 /* ~"Au revoir, Gris."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20743 /* ~"En descendant par les Nations Englouties, y'a un passage… j'me souviens plus exactement où, malheureusement."~ */
  IF ~~ THEN REPLY #20744 /* ~"D'accord. Alors, j'aurais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20745 /* ~"Merci, Gris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 10.1
  SAY #20746 /* ~"Hé, bige, si j'étais pas mort, tu me ferais pas chanter comme ça. Mais…" Il s'arrête pensivement. "Mais, puisque je suis un mort maintenant, j'vais te l'dire. Il est enterré dans les ordures sur le côté gauche de la maison de Marta la dépouilleuse de cadavres. J'espère que t'as rien contre fouiller dans les ordures."~ */
  IF ~~ THEN REPLY #20747 /* ~"Je trouverai. J'avais d'abord d'autres questions…"~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris le Vautour m'a dit où je pourrai trouver le charme antipoison de Quint - dans un tas de déchet situé à gauche de la maison de Marta, au Village Enseveli.~ */ GOTO 9
  IF ~~ THEN REPLY #20748 /* ~"Merci, Gris. Au revoir."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",2)
~ JOURNAL #66297 /* ~Gris le Vautour m'a dit où je pourrai trouver le charme antipoison de Quint - dans un tas de déchet situé à gauche de la maison de Marta, au Village Enseveli.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.1 8.2
  SAY #20749 /* ~"Bien, on dirait bien que je suis mort. Ne les salue pas de ma part. Ces vermines sont probablement déjà en train de se payer mon magot aux frais de mon cadavre."~ */
  IF ~~ THEN REPLY #20750 /* ~"Ton magot ?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20751 /* ~"Sans doute. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20752 /* ~"Sans doute. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.0
  SAY #20753 /* ~"Ouais… J'avais un petit paquet de côté près de mon plumard… Un petit paquet dont ce siffleur pourri de Pharod ne savait rien. C'est à côté de la maison de cet idiot d'Ojo, si j'me souviens bien."~ */
  IF ~~ THEN REPLY #20754 /* ~"Et bien, merci du conseil en tout cas. J'ai d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20755 /* ~"Merci du conseil. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 8.3
  SAY #20756 /* ~"Ouais, ben, ça doit être différent pour toi, j'en suis sûr."~ */
  IF ~~ THEN REPLY #20757 /* ~"Ouais, ben… Réponds à d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20758 /* ~"Euh… Ouais. Au revoir."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Gris_Talk","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #20759 /* ~C'est le cadavre d'un homme dont le visage au nez crochu arbore une expression de surprise. Difficile de dire comment il est mort : soit à cause des lacérations visibles au niveau de son abdomen et de sa gorge, soit à cause du sang qu'il a perdu lorsque son bras droit a été presque tranché au niveau de l'épaule. Le cadavre te répond d'une voix qui racle dans sa gorge. "Hé… non… non, la bête doit… courir ! … Pourquoi est-ce que je suis si engourdi… est-ce que je suis saoul ? Je sens plus mes mains… et mes jambes ? Que… la dernière chose dont je me souviens, c'est d'avoir été poussé ici… les gars étaient découpés par une espèce de truc énorme…"~ */
  IF ~~ THEN REPLY #20760 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #20761 /* ~"De quoi tu parles ?"~ */ DO ~SetGlobal("Gris_Talk","GLOBAL",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #20762 /* ~"Hein ? Par les Neuf Enfers, qui donc es-tu ? Montre-toi… Ooh, par les fesses poilues de Pan… J'suis mort, pas vrai ?"~ */
  IF ~~ THEN REPLY #20763 /* ~"J'en ai bien peur. Tu peux répondre à quelques questions ?"~ */ GOTO 24
  IF ~~ THEN REPLY #20764 /* ~"Et bien…"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #20765 /* ~"J'ai toujours su que je finirais comme ça… Dis-moi, matois… est-ce que je suis toujours dans les catacombes ?"~ */
  IF ~~ THEN REPLY #20766 /* ~"Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Gris_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #20767 /* ~Mensonge : "Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Gris_1","GLOBALLaw",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20768 /* ~Le ton du cadavre est amer. "Fallait s'y attendre, pas vrai. Aide les autres et personne t'aidera."~ */
  IF ~~ THEN REPLY #20769 /* ~"Bon. Je voulais juste te poser quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20770 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #20771 /* ~Le cadavre semble surpris. "Quelqu'un est venu me chercher ? J'peux pas dire que je m'y attendais d'leur part… probablement pour mon magot…"~ */
  IF ~~ THEN REPLY #20772 /* ~"Ton magot ?"~ */ DO ~SetGlobal("Know_Gstash","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #20773 /* ~"Bon. Je voulais juste te poser quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20774 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END
