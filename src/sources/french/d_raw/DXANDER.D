// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANDER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6657 /* ~Le vieil homme te regarde sans crainte et dit : "Alors, comme ça, c'est toi qui cause tout ce raffut ? Déguerpis. J'ai rien à te dire."~ */
  IF ~~ THEN REPLY #6668 /* ~Pars.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6669 /* ~Le vieil homme tourne les yeux vers toi une ou deux fois et dit : "Je ne peux pas t'aider. Faut que tu partes avec les gardes." Il se penche sur l'appareil qu'il a dans les mains.~ */
  IF ~~ THEN REPLY #6670 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Evil_Xander_1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #6671 /* ~"Et tu t'imagines que je vais t'aider alors que tu m'as menacé ? T'es encore plus coriace que j'croyais. J'exige des excuses. Tout de suite."~ */
  IF ~~ THEN REPLY #6672 /* ~"Va donc aux Neuf Enfers, vieux fou."~ */ GOTO 15
  IF ~~ THEN REPLY #6673 /* ~Mensonge : "Toutes mes excuses. Je me suis laissé emporter par la colère. Ça ne se reproduira plus."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #6674 /* ~"Toutes mes excuses. Je me suis laissé emporter par la colère. Ça ne se reproduira plus."~ */ GOTO 16
  IF ~~ THEN REPLY #6675 /* ~"Non. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 15 even though they appear after this state */
~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #6676 /* ~"Les machines ne fonctionnent plus. Je suppose que, maintenant que cette bige de Bedai-Lihn est morte, c'est à moi de t'expliquer comment les réparer. Voilà ce que tu dois faire…" Il commence son explication. Tu n'es pas certain d'avoir tout compris.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #6677 /* ~"Je crois que j'y suis. En d'autres termes, j'enlève le principal rouage, je le nettoie avec de la graisse, j'aiguise les dents émoussées et je remets le tout en place ?"~ */ DO ~SetGlobal("GearRepair","GLOBAL",4)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #6678 /* ~"Je crois que j'y suis… Quelle était la pièce à propos de la principale unité de motivation… Non, attends. Je n'y suis pas du tout."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #6679 /* ~"C'est ça. Je peux continuer mon travail, ou est-ce que tu vas continuer à m'enquiquiner avec tes satanées questions ?"~ */
  IF ~~ THEN REPLY #6680 /* ~"Eh bien, en fait, je vais te poser d'autres questions."~ */ GOTO 27
  IF ~~ THEN REPLY #6681 /* ~"Non, c'était tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #6682 /* ~"De toute évidence, tu n'arriveras pas à réparer ça. Je suppose que je vais devoir m'en occuper moi-même." Il grogne et se lève. "Certains biges nous rendent la vie dure à nous autres, barbes grises", marmonne-t-il.~ */
  IF ~~ THEN REPLY #6683 /* ~"Avant que tu partes, je voudrais te poser d'autres questions."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 27
  IF ~~ THEN REPLY #6684 /* ~"Ouais, eh bien, certains d'entre nous ont d'autres talents. Bige."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",4)
~ THEN BEGIN 6 // from: 12.2
  SAY #6685 /* ~"Quand tu seras prêt pour la clé des rêves, balafré, dis-le-moi et je te la confierai."~ */
  IF ~~ THEN REPLY #6686 /* ~"Donne-moi la clé."~ */ GOTO 7
  IF ~~ THEN REPLY #6687 /* ~"Non. Pas encore. Réponds à d'autres questions."~ */ GOTO 27
  IF ~~ THEN REPLY #6688 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6689 /* ~Il s'arrête, comme pour rassembler des pensées éparpillées. "Ferme les yeux et tends ta main", dit-il. "Tu dois sentir cette clé avant de la voir ; sinon, elle ne fonctionnera pas."~ */
  IF ~~ THEN REPLY #6690 /* ~Fais ce qu'il dit.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6691 /* ~Jette un coup d'œil.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 11.0
  SAY #6692 /* ~Tu sens que l'on touche la paume de ta main calleuse. C'est d'abord presque imperceptible, mais l'impression de solidité se renforce en peu de temps, jusqu'à ce qu'enfin, Xander dise : "Ouvre les yeux." Lorsque tu les ouvres, tu ne vois qu'une plume noire dans la paume de ta main. "J'ai fini mon travail", dit Xander. "Utilise cette clé pour ouvrir la porte gauche de la Grande Fonderie et le faiseur de rêves t'apparaîtra."~ */
  IF ~~ THEN REPLY #6693 /* ~"Une plume ? Tout ce travail pour une plume ?"~ */ JOURNAL #68034 /* ~J'ai enfin mené à bien cette fichue quête du faiseur de rêve. Et, en guise de récompense, j'ai reçu… une plume. Il s'agit apparemment de la clé qui m'ouvrira la porte des rêves. J'espère qu'elle en vaut la peine.~ */ GOTO 10
  IF ~~ THEN REPLY #6695 /* ~"Merci, Xander. Au revoir."~ */ DO ~EscapeArea()
~ JOURNAL #68034 /* ~J'ai enfin mené à bien cette fichue quête du faiseur de rêve. Et, en guise de récompense, j'ai reçu… une plume. Il s'agit apparemment de la clé qui m'ouvrira la porte des rêves. J'espère qu'elle en vaut la peine.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #6696 /* ~Tu regardes à travers la fente de tes yeux tandis que Xander se concentre pendant un moment tout en maintenant sa main en l'air au-dessus de la tienne. Rien ne se passe. Xander ouvre les yeux, regarde ta main vide et s'écrie : "J't'ai dit de fermer les yeux, bige ! C'est pas un jeu ! Tu penses que ça m'fait plaisir de perdre mon temps pour ton espèce de machin ? Tu crois que j'veux sentir que tu doutes de mon travail ? Ferme les yeux, bige, et garde-les fermés, ou tu n'auras pas la clé !"~ */
  IF ~~ THEN REPLY #6697 /* ~"Donne-moi la clé, vieil homme. Tout de suite."~ */ GOTO 11
  IF ~~ THEN REPLY #6698 /* ~Fais ce qu'il dit.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6699 /* ~"Laisse tomber. J'ai mieux à faire que d'écouter les délires d'un azimuté." Pars.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #6700 /* ~"C'est la touche finale sur ce faiseur de rêves, bougre. Tu crois que j'accepterais que quelqu'un fiche tout ça en l'air ? J'suis pas idiot. Tu veux encore quelque chose ou j'peux r'tourner bosser ?"~ */
  IF ~~ THEN REPLY #6702 /* ~"Retourne travailler."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #6703 /* ~"Retourne travailler, avec mes remerciements."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #6704 /* ~Il rougit en contenant un flux d'exclamations. Il soupire puis dit, sur un ton de colère retenue : "Bige, cette clé ne fonctionne que si on y croit. Soit tu me fais confiance et tu fermes les yeux, soit tu refuses, et tu ne réaliseras jamais tes rêves. À toi de choisir. L'ami."~ */
  IF ~~ THEN REPLY #6705 /* ~Fais ce qu'il dit.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
~ GOTO 8
  IF ~~ THEN REPLY #6706 /* ~"Laisse tomber. J'ai mieux à faire que d'écouter les délires d'un azimuté."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",3)
~ THEN BEGIN 12 // from: 19.2
  SAY #6707 /* ~"Il te reste encore un objet à me donner, et nous pourrons commencer le processus du faiseur de rêves. J'ai besoin d'un oreiller qui est resté quelque temps dans un cercueil. Il provoquera un sommeil aussi profond que la mort. Il ouvrira ton esprit aux émanations du faiseur de rêves. Un trait de génie de ma part, pour ainsi dire."~ */
  IF ~  !PartyHasItem("DrmPllw")
~ THEN REPLY #6708 /* ~"Un oreiller de cercueil, hein ? Tu l'auras. Mais d'abord, réponds à quelques questions supplémentaires."~ */ GOTO 27
  IF ~~ THEN REPLY #6709 /* ~"Je n'ai pas vraiment envie de continuer à aller chercher ces objets pour toi."~ */ GOTO 13
  IF ~  PartyHasItem("DrmPllw")
~ THEN REPLY #6710 /* ~"J'ai l'oreiller que tu m'as demandé. Réglons cette affaire."~ */ DO ~TakePartyItemNum("DrmPllw",1)
SetGlobal("Dream","GLOBAL",4)
~ JOURNAL #68035 /* ~J'ai récupéré l'oreiller de cercueil d'Hamrys pour Xander. Je me demande ce qu'il va m'envoyer chercher, maintenant.~ */ GOTO 6
  IF ~~ THEN REPLY #6711 /* ~"Je vais m'en charger."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 19.1 21.1
  SAY #6712 /* ~"Ah non ? Alors, laisse-moi te rappeler que tu vas chercher ces objets pour un projet que TU as fondé, pour un projet que TU as voulu créer et pour un appareil si peu pratique qu'il a coûté la vie aux membres de ma famille sur quatre générations, tout ça pour TOI. Si tu veux que ce projet aboutisse, termine les étapes finales et arrête de geindre."~ */
  IF ~~ THEN REPLY #6713 /* ~"Vieil homme, ne me parle pas sur ce ton ou ce seront les dernières paroles que tu prononceras."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Xander_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #6714 /* ~"Bon. Très bien. Je vais m'en charger. Mais arrête de hurler."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6715 /* ~"Tu ficherais en l'air tous ces efforts ? Tu perdrais tes rêves simplement parce que tu n'aimes pas qu'on te traite d'idiot ? Si tu penses pouvoir terminer ce projet sans mon expérience, tant mieux pour toi. Et, si tu penses qu'une parole moqueuse mérite la peine de mort, c'est encore pire. Tu crois vraiment pouvoir résoudre tes problèmes en menaçant tout ce qui bouge ? Les plans ne fonctionnent pas comme ça, mon pote balafré."~ */
  IF ~~ THEN REPLY #6716 /* ~"J'ai déjà tué pour moins que ça."~ */ GOTO 16
  IF ~~ THEN REPLY #6717 /* ~"Je vais partir maintenant. Avant de faire une erreur que nous regretterions tous les deux."~ */ EXIT
END

IF WEIGHT #2 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 15 // from: 2.0
  SAY #6718 /* ~"Va caguer, bougre. Tu ne retrouveras jamais tes rêves. Ton précieux faiseur de rêves n'est plus."~ */
  IF ~~ THEN REPLY #6719 /* ~Terminé.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.1 2.2 14.0
  SAY #6720 /* ~"Je n'en doute pas, bougre d'imbécile. Ton attitude abrutie est la goutte d'eau qui fait déborder le vase. Toi et ton faiseur de rêves n'avez plus qu'à retourner droit dans les Abysses." Il semble sur le point d'appeler les gardes.~ */
  IF ~  CheckStatGT(Protagonist,13,DEX)
~ THEN REPLY #6721 /* ~Brise-lui la nuque avant qu'il puisse finir.~ */ DO ~Kill(Myself)
PlaySoundNotRanged("SPE_11")
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #6722 /* ~Brise-lui la nuque avant qu'il puisse finir.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #6723 /* ~Fuis.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #6724 /* ~Tes mains deviennent floues lorsque tu les places autour du coup du vieil ingénieur. Tu l'écrases comme une brindille et il meurt à tes pieds, les yeux écarquillés. Ça lui apprendra. Malheureusement, toutes les autres personnes présentes dans la Salle ont assisté à la scène. L'alarme retentit.~ */
  IF ~~ THEN REPLY #6725 /* ~"Bon, très bien."~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #6726 /* ~Il esquive tes mains tendues et hurle pour appeler les gardes. Ils accourent.~ */
  IF ~~ THEN REPLY #6727 /* ~"Mince."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #7 ~  Global("Dream","GLOBAL",2)
~ THEN BEGIN 19 // from: 21.0
  SAY #6728 /* ~"Cette machine nécessite une cagette équipée de rasoirs joliment travaillés, afin de rappeler la puissance destructrice des rêves et leur pouvoir de capturer nos cœurs et notre imagination. Recherche dans la tour de siège une cage que j'ai commandée."~ */
  IF ~~ THEN REPLY #6729 /* ~"Comment est-ce que je peux entrer là-dedans ?"~ */ GOTO 20
  IF ~~ THEN REPLY #6749 /* ~"Je ne sais pas si j'ai envie d'aller chercher ces objets pour toi."~ */ GOTO 13
  IF ~  PartyHasItem("DrmCage")
~ THEN REPLY #6865 /* ~"Je l'ai. Maintenant, donne-moi mes rêves."~ */ DO ~TakePartyItemNum("DrmCage",1)
SetGlobal("Dream","GLOBAL",3)
~ JOURNAL #68036 /* ~Après que je lui ai rapporté la cage à oiseaux garnie de lames de rasoir, Xander m'a demandé d'aller lui chercher un oreiller dans un cercueil, pour pouvoir dormir du sommeil des morts.~ */ GOTO 12
  IF ~~ THEN REPLY #6866 /* ~"Une cage. C'est d'un commun ! Très bien. Réponds d'abord à quelques questions."~ */ GOTO 27
  IF ~~ THEN REPLY #6868 /* ~"Une cage ornée de rasoirs. Je reviens."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #6751 /* ~"Tu as déjà montré que tu avais de la ressource. Alors, trouve un moyen."~ */
  IF ~~ THEN REPLY #6752 /* ~"Bien. Alors, réponds à d'autres questions pour moi."~ */ GOTO 27
  IF ~~ THEN REPLY #6753 /* ~"Je trouverai. À très bientôt."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Dream","GLOBAL",1)
~ THEN BEGIN 21 // from: 24.0 26.0 28.1 29.1 30.0
  SAY #6754 /* ~"Pour commencer les dernières étapes de l'élaboration du faiseur de rêves, il me faut un morceau de ta peau immergée dans ton sang, pour que la machine puisse se familiariser avec ton essence physique. Ce mélange doit être conservé dans une bouteille bleu-vert, afin de symboliser la mer de rêve sur laquelle tu flotteras."~ */
  IF ~  PartyHasItem("DrmVial")
~ THEN REPLY #6755 /* ~"Je l'ai ici. Prends-le. Montre-moi mes rêves."~ */ DO ~TakePartyItemNum("DrmVial",1)
SetGlobal("Dream","GLOBAL",2)
~ JOURNAL #68037 /* ~J'ai rapporté une fiole de chair et de sang pour Xander et son… mon… faiseur de rêve. Aussitôt, il m'a demandé une cage à oiseaux garnie de lames de rasoir.~ */ GOTO 19
  IF ~~ THEN REPLY #6756 /* ~"Je ne sais pas si j'ai envie d'aller te chercher ça."~ */ GOTO 13
  IF ~~ THEN REPLY #6757 /* ~"De la chair et du sang, hum ? J'en ai assez vu dernièrement. Commence par répondre à une question pour moi."~ */ GOTO 27
  IF ~~ THEN REPLY #6758 /* ~"Réponds juste à une ou deux questions. Ton faiseur de rêve ne m'intéresse pas."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 22
  IF ~~ THEN REPLY #6759 /* ~"Chair, sang et flacon. Bien. Je reviens."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.3 33.1
  SAY #6760 /* ~À voir Xander, on a l'impression que tu lui as vidé les tripes. "Ça ne t'intéresse pas ? Mais… ça a consumé quatre générations de la famille… mon arrière-grand-père disait que tu attendais ça avec tant d'impatience…"~ */
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #6761 /* ~"Ton arrière-grand-père ? Quoi ? Dis-moi ce que tu sais sur moi."~ */ GOTO 23
  IF ~~ THEN REPLY #6762 /* ~"Non. Ça ne m'intéresse pas. Réponds juste à quelques questions."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,0,0)
~ GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #6763 /* ~"Tu as dit à mon arrière-grand-père Xéro que tu n'arrivais plus à rêver. Tu lui as dit que tu voulais pouvoir rêver de nouveau. Tu lui as offert une importante somme d'argent pour qu'il construise une machine capable de récupérer les rêves que tu avais perdus. Tu as dit que tu reviendrais le voir d'ici quelques années, mais tu ne l'as jamais fait."

Des souvenirs te reviennent.~ */
  IF ~~ THEN REPLY #6764 /* ~Réprime-les.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #6765 /* ~Accepte-les.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #6766 /* ~Accepte-les.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #6767 /* ~À force de volonté, tu empêches ce souvenir de remplir ta tête.

"Le travail sur la machine s'est poursuivi à la mort de Xéro. Ma grand-mère Nula a repris le projet sous un angle plus ésotérique, utilisant des herbes et des pierres de mosaïque pour créer des formules magiques capables d'appeler des fragments de rêves en provenance du Plan Astral et du Plan Éthéré. Mon oncle est allé plus loin et a réussi à obtenir l'aide des fiélons et des forces célestes pour construire cet appareil. Quant à moi… j'ai mis au point les rites qui mettront son potentiel en mouvement… et tu pourras ainsi récupérer tes rêves."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6768 /* ~"Très bien. Tu as réussi à me convaincre. Que dois-je faire pour retrouver mes rêves ?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6769 /* ~"Je n'en ai pas besoin pour le moment. Réponds juste à d'autres questions."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6770 /* ~"Intéressant. Je t'en reparlerai peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.2
  SAY #6772 /* ~Le souvenir du jeune artificier Xéno Xander bouleverse les paroles de son descendant et tu te souviens de ce brillant jeune homme présentant avec fierté son invention. "Je l'ai baptisée Pacification", dit-il. Vous observez tous les deux des particules magiques qui se déposent délicatement autour de vous et tu ressens une paix profonde dans ton cœur. "En effet", dis-tu. "Reste à espérer que tu puisses travailler aussi bien avec ce constructeur de rêves."

Nihl Xander s'arrête et demande : "Tu m'écoutes ?"~ */
  IF ~~ THEN REPLY #6773 /* ~"Quoi ? Bien sûr. Tu peux répéter ce que tu viens de dire ?"~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ GOTO 26
  IF ~~ THEN REPLY #6774 /* ~"Non. Au revoir."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #6775 /* ~Il semble quelque peu agacé, mais il se ravise. "Le travail sur la machine s'est poursuivi à la mort de Xéro. Ma grand-mère Nula a repris le projet sous un angle plus ésotérique, utilisant des herbes et pierres de mosaïque pour créer des formules magiques capables d'appeler des fragments de rêves en provenance du Plan Astral et du Plan Éthéré. Mon oncle est allé plus loin et a réussi à obtenir l'aide des fiélons et des forces célestes pour construire cet appareil. Quant à moi… j'ai mis au point les rites qui mettront son potentiel en mouvement… et tu pourras ainsi récupérer tes rêves."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6776 /* ~"Très bien. Tu as réussi à me convaincre. Que dois-je faire pour retrouver mes rêves ?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6777 /* ~"Je n'en ai pas besoin pour le moment. Réponds juste à d'autres questions."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6778 /* ~"Intéressant. Je t'en reparlerai peut-être. Au revoir."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 4.0 5.0 6.1 12.0 19.3 20.0 21.2 22.1 24.1 26.1 28.2 29.2 30.1 31.0 32.0 33.2 34.0 35.1 36.0 38.0
  SAY #6779 /* ~La concentration marque son front déjà plissé. "Que veux-tu savoir ?"~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6780 /* ~"Tu as parlé d'un faiseur de rêve tout à l'heure. Je voudrais que tu m'en dises plus."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6781 /* ~"Dis-moi ce que tu sais sur le meurtre du forgeron."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
~ THEN REPLY #6782 /* ~"On m'a demandé de réparer ce matériel à la Fonderie. Tu peux me dire comment ?~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6785 /* ~"Qui es-tu ?"~ */ GOTO 33
  IF ~~ THEN REPLY #6787 /* ~"Qu'est-ce que tu peux me dire sur les Hommes-Dieux ?"~ */ GOTO 35
  IF ~~ THEN REPLY #6788 /* ~"Parle-moi de tes collègues."~ */ GOTO 34
  IF ~~ THEN REPLY #6789 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 39
  IF ~  GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #8742 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
  IF ~  Global("Dream","GLOBAL",5)
~ THEN REPLY #66567 /* ~"Rien pour le moment. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 33.0
  SAY #6791 /* ~"C'est à la fois une machine et un rite. C'est un état d'esprit et une construction de vapeur et de sang, qui accorde des rêves à ceux qui pénètrent en son sein. Elle a été créée pour toi et elle t'attend. Es-tu en mesure de la terminer ? Il t'attend depuis des décennies."~ */
  IF ~~ THEN REPLY #6792 /* ~"Comment sais-tu que cette machine a été construite pour moi ?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6793 /* ~"Oui."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6795 /* ~"Non. J'y reviendrai peut-être. Réponds à d'autres questions."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6796 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #6798 /* ~"Parce que mon arrière-grand-père, Xéno Xander, a sculpté ton visage dans la pierre pour qu'on puisse te reconnaître quand tu reviendrais chercher le travail que tu as commandé. Il a toujours pensé que tu reviendrais, mais personne ne croyait vraiment à ton retour. Notre famille a achevé ce travail parce qu'elle avait juré de le faire… et maintenant, te voilà."~ */
  IF ~~ THEN REPLY #6799 /* ~"As-tu gardé cette pierre ?"~ */ GOTO 30
  IF ~~ THEN REPLY #6801 /* ~"Je devais avoir mes raisons. Finissons-le."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6802 /* ~"Ça ne m'intéresse pas. Réponds à une autre question pour moi."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #6803 /* ~"Non. On me l'a volée il y a un an. Je n'ai vu qu'une ombre s'enfuir. C'est le seul objet qu'on ait pris chez moi. Je n'ai aucune idée de l'individu qui a pu s'en emparer, mais je saurais reconnaître sa silhouette."~ */
  IF ~~ THEN REPLY #6804 /* ~"Très bien. Finissons le faiseur de rêve."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6805 /* ~"Ça ne m'intéresse pas pour le moment. Mais je voudrais te poser d'autres questions."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6806 /* ~"Le faiseur de rêve ne m'intéresse pas. En tout cas, pas pour le moment. Au revoir."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 37.1 37.2
  SAY #6808 /* ~"Va voir Bedai-Lihn. Elle saura. Elle s'intéresse aux trivialités de cet endroit. Ce n'est pas une vraie rêveuse. Elle s'intéresse à ce qui fait bouger cet endroit. Elle n'a pas un travail de conception."~ */
  IF ~~ THEN REPLY #6809 /* ~"Très bien. J'ai d'autres questions à te poser."~ */ GOTO 27
  IF ~~ THEN REPLY #6810 /* ~"Très bien, je vais lui parler tout de suite."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.1 37.0
  SAY #6812 /* ~"J'sais pas grand-chose. J'travaille ici sur ma construction et j'me concentre sur mon boulot. J'fais pas attention à ce que font les ouvriers : ils font leur travail et j'fais l'mien."~ */
  IF ~~ THEN REPLY #6816 /* ~"Je… je vois. Alors, réponds à d'autres questions."~ */ GOTO 27
  IF ~~ THEN REPLY #6817 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 27.3 37.3
  SAY #6819 /* ~"Je suis Nihl Xander, arrière-petit-fils de l'artificier Xéro Xander, ingénieur, rêveur et créateur. Et j'ai achevé son travail, celui que tu as commandé, le faiseur de rêves ! Te sens-tu capable de l'utiliser, maintenant ?"~ */
  IF ~~ THEN REPLY #6820 /* ~"Un faiseur de rêve ? Qu'est-ce que c'est que ça ?"~ */ GOTO 28
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6821 /* ~"Non. J'ai d'autres questions à te poser."~ */ GOTO 22
  IF ~  GlobalGT("Dream","GLOBAL",0)
~ THEN REPLY #6823 /* ~"Non. J'ai d'autres questions à te poser."~ */ GOTO 27
  IF ~~ THEN REPLY #6824 /* ~"Non."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.5 37.5 40.0
  SAY #6827 /* ~"Bah. Ils n'ont pas de véritable feu. Ils parlent de création et se vantent de leur potentiel, mais ils ne créent rien d'original. Leur imagination est limitée, obnubilée par les petits détails. Comme je le dis, un vrai rêveur crée un grand projet, puis se concentre sur les détails. Il n'y a que les fourmis de l'imagination qui commencent par les détails… ces petits insectes qui ne demandent qu'à être nourris."~ */
  IF ~~ THEN REPLY #6829 /* ~"C'est très charitable de ta part. Réponds à d'autres questions pour moi, s'il te plaît."~ */ GOTO 27
  IF ~~ THEN REPLY #6830 /* ~"Je vois… Bon, je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.4 37.4
  SAY #6831 /* ~Il soupire et reprend ses esprits. "C'est une longue histoire. Commençons par le commencement. Voyons, toutes les créatures veulent quelque chose, n'est-ce pas ? Elles créent, elles construisent, elles détruisent, elles rêvent, elles combattent, elles font l'amour… tout cela parce qu'elles en veulent plus. Même au plus bas niveau de l'existence, la moindre créature se bat pour améliorer sa condition. Certaines réussissent. D'autres échouent." ~ */
  IF ~~ THEN REPLY #6832 /* ~"Continue."~ */ GOTO 41
  IF ~~ THEN REPLY #6833 /* ~"Laisse tomber. Je préférerais te poser d'autres questions."~ */ GOTO 27
  IF ~~ THEN REPLY #6834 /* ~"Finalement, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 41.0
  SAY #6836 /* ~"Le régisseur Keldor est juste là sur l'estrade. Parle-lui. Ou sinon, trouve ce bige suicidaire de Sandoz et parle-lui. En as-tu fini avec moi maintenant ?"~ */
  IF ~~ THEN REPLY #6837 /* ~"Pas encore."~ */ GOTO 27
  IF ~~ THEN REPLY #6838 /* ~"Oui. Au revoir."~ */ EXIT
END

IF WEIGHT #10 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from: 39.1 40.1 41.1
  SAY #6839 /* ~Tu aperçois un homme à la chevelure broussailleuse, habillé très à la mode… si l'on considère que la mode est passée depuis un demi-siècle. Ses vêtements sont des guenilles améliorées et il prend un air dédaigneux envers les personnes qu'il rencontre, à moins que ce ne soit son comportement habituel. Il ne daigne même pas te regarder avant que tu lui adresses la parole, puis ses yeux se mettent à t'examiner. "T'as besoin de quelque chose ?" lance-t-il.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6841 /* ~"Dis-moi ce que tu sais sur le meurtre du forgeron."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
~ THEN REPLY #6842 /* ~"On m'a demandé de réparer ce matériel à la Fonderie. Tu peux me dire comment ?~ */ GOTO 31
  IF ~  Global("GearRepair","GLOBAL",2)
!Dead("Bedai")
~ THEN REPLY #6843 /* ~"On m'a demandé de réparer ce matériel à la Fonderie. Tu peux me dire comment ?~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6846 /* ~"Qui es-tu ?"~ */ GOTO 33
  IF ~~ THEN REPLY #6847 /* ~"Qu'est-ce que tu peux me dire sur les Hommes-Dieux ?"~ */ GOTO 35
  IF ~~ THEN REPLY #6849 /* ~"Parle-moi de tes collègues."~ */ GOTO 34
  IF ~~ THEN REPLY #6850 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6852 /* ~Il explose : "J'peux l'aider en la secouant un peu ! L'immortalité est l'une des pires malédictions de l'imagination humaine. Tout le monde pense en avoir besoin, sans savoir ce dont il s'agit. Faut être cinglé pour accepter un tel cadeau !" Il reprend sur un ton plus calme. "En plus, j'ai pas encore trouvé le moyen de faire faire ça à mes machines."~ */
  IF ~~ THEN REPLY #6853 /* ~"Je vois. Alors, réponds à d'autres questions pour moi."~ */ GOTO 27
  IF ~~ THEN REPLY #6854 /* ~"Je vois. Mais, ça ne m'est pas d'une grande aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.6 37.6
  SAY #8743 /* ~"Qu'est-ce que je fais ? Je suis l'ingénieur ultime. J'ai étudié sous l'égide du forgeron tanar'ri Kazan. Il recuisait les mots dans sa forge de haine, les trempait dans sa cuve de désespoir et les envoyait massacrer la stupidité. On lui apportait des bouts de phrases, des mots acides, et il créait des armes d'une puissance terrifiante capables d'abattre l'ennemi et d'annihiler les idées fausses. Je gage que vous avez déjà vu le résultat de son travail."~ */
  IF ~~ THEN REPLY #8756 /* ~"Alors, tu crées des armes maléfiques ici ?"~ */ GOTO 40
  IF ~~ THEN REPLY #8758 /* ~"Oui, sûrement. Réponds à d'autres questions pour moi."~ */ GOTO 37
  IF ~~ THEN REPLY #8759 /* ~"Oui, sans doute. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8747 /* ~"Pas du tout ! C'est la tolérance, et non la haine, qui a bâti ma forge. J'ai aussi étudié auprès de l'artisan archon Térasaphiréa, qui savait traduire une belle idée en caresse apaisante et mettre du baume au cœur du plus noir des fiélons. Sa volonté était faite par l'amour et la dévotion. Mon travail mêle ces deux influences, comme la psyché d'un mortel mêle démoniaque et sublime."~ */
  IF ~~ THEN REPLY #8761 /* ~"Tes collègues sont-ils aussi bien formés que toi ?"~ */ GOTO 34
  IF ~~ THEN REPLY #8762 /* ~"Fascinant ! Puis-je te poser d'autres questions ?"~ */ GOTO 37
  IF ~~ THEN REPLY #8764 /* ~"Il va falloir que j'y réfléchisse. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.0
  SAY #8748 /* ~"Décisions, actions, réactions, tout cela crée une fondation sur laquelle ériger autre chose. Il me paraît donc évident que notre condition présente, déjà notable, forme la base d'un état encore supérieur. Et de quoi pourrait-il s'agir, sinon de la divinité ? C'est ainsi que je l'ai toujours envisagé et, franchement, je ne suis pas d'humeur à tenir une discussion philosophique. Pour ça, trouvez-vous un régisseur."~ */
  IF ~~ THEN REPLY #8765 /* ~"Où puis-je trouver un régisseur ?"~ */ GOTO 36
  IF ~~ THEN REPLY #8766 /* ~"Je vois. Réponds à d'autres questions pour moi, s'il te plaît."~ */ GOTO 37
  IF ~~ THEN REPLY #8767 /* ~"Je vois. Au revoir."~ */ EXIT
END
