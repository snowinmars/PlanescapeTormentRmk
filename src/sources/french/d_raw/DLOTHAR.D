// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOTHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOTHAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2951 /* ~"Encore toi ? Qu'est-ce que tu lui veux encore, au vieux Lothar ? Je t'ai donné ton ami le crâne et j'ai répondu à tes questions. Je te préviens, je ne peux pas passer la journée à m'occuper de toi." Son regard s'abat sur toi comme un couperet.~ */
  IF ~~ THEN REPLY #2952 /* ~"Je voudrais avoir les réponses à d'autres questions."~ */ GOTO 1
  IF ~~ THEN REPLY #28728 /* ~"Je voulais juste te parler encore un peu."~ */ GOTO 2
  IF ~~ THEN REPLY #43392 /* ~"Je voudrais profiter de tes talents de guérisseur."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43393 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0 53.0 57.0
  SAY #28657 /* ~"Fais vite, le balafré. Je ne vais pas y passer la journée."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28730 /* ~"Parle-moi de Ravel Puits-de-Rébus ."~ */ GOTO 49
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28731 /* ~"Pourquoi est-ce que je fais partie des immortels ?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ JOURNAL #67691 /* ~Lothar m'a expliqué que j'étais immortel car ma mortalité m'a été arrachée par Ravel Puits-de-Rébus, l'horrible guenaude noire. Il m'a également dit que, si je voulais d'autres réponses, je devais aller trouver Ravel dans le Dédale où la Dame des Douleurs l'a enfermée. Il me reste juste à découvrir comment m'y rendre.~ */ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28732 /* ~"Pourquoi est-ce que je fais partie des immortels ?"~ */ GOTO 47
  IF ~~ THEN REPLY #28733 /* ~"Pourquoi est-ce que j'ai perdu la mémoire ?"~ */ GOTO 48
  IF ~~ THEN REPLY #43394 /* ~"Je voudrais profiter de tes talents de guérisseur."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43395 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 11.1
  SAY #28658 /* ~Il te regarde sans gêne, se déplace un peu et tu te vois parti.~ */
  IF ~~ THEN REPLY #28735 /* ~"Attends une minute…"~ */ DO ~TeleportParty("AR0500",[2270.3023],2)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #28659 /* ~"Es-tu venu reprendre le moulin à paroles ? Son jacassement incessant me fatigue."~ */
  IF ~~ THEN REPLY #28736 /* ~"Non, tu peux le garder."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #28737 /* ~"Oui. S'il te plaît, donne-le-moi."~ */ DO ~SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28660 /* ~Les yeux de Lothar brillent comme de l'acier. "D'un geste de la main, Lothar libère Morte, qui disparaît de l'étagère. "Tu le trouveras dehors, en haut, près de l'endroit par où tu es entré dans mon domaine." Il se détourne. "Au revoir."~ */
  IF ~~ THEN REPLY #61286 /* ~"Au revoir."~ */ JOURNAL #37700 /* ~Lothar m'a rendu Morte, et ce bien que je lui ais dit que je ne souhaitais pas récupérer cette pipelette. Je le retrouverai à la surface, près de l'endroit où je suis entré dans le domaine du Maître des Os.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #28661 /* ~D'un geste de la main, Lothar libère Morte qui disparaît de l'étagère. "Tu le trouveras dehors, en haut, près de l'endroit par où tu es entré dans mon domaine." Il se détourne. "Au revoir."~ */
  IF ~~ THEN REPLY #61287 /* ~"Au revoir."~ */ JOURNAL #38204 /* ~Lothar m'a rendu Morte. Je le récupérerai à la surface, près de l'endroit où je suis entré dans le domaine du Maître des Os.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #28662 /* ~"Tu es revenu, je vois. As-tu un crâne pour moi ?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28757 /* ~"J'ai un crâne humain."~ */ GOTO 35
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28758 /* ~"J'ai le crâne d'un rat-garou…"~ */ GOTO 35
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28759 /* ~"J'ai le crâne de Hargrimm, le prêtre squelette des Nations Mortes."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 37
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28760 /* ~"J'ai le crâne de Salie Marie, le chef des zombis des Nations Mortes."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 38
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28761 /* ~"J'ai le crâne d'Acaste, le chef des goules rebelles."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 39
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28762 /* ~"J'ai le crâne de Soego, le missionnaire rat-garou des Hommes-Poussière."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 40
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28763 /* ~"J'ai le crâne du Roi Silencieux, le souverain des Nations Mortes."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 41
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28764 /* ~"J'ai le crâne de Mantuok."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 36
  IF ~~ THEN REPLY #54116 /* ~"Pas encore."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.8
  SAY #28663 /* ~"Je te suggère d'en trouver un, si tu espères apprendre ce que tu dois savoir - et si tu veux récupérer ton pseudo-mimir caquetant."~ */
  IF ~~ THEN REPLY #28765 /* ~"Bien. Je vais revenir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #28664 /* ~"Alors ? Tu m'as apporté le crâne que j'exige en échange du tien ?" Lothar sourit en grimaçant.~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28766 /* ~"Il n'y a pas de crâne dans l'urne, Lothar."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28767 /* ~"Pas encore."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 14.1
  SAY #28665 /* ~"Alors vas-y. Je te suggère de ne pas revenir avant de l'avoir trouvé."~ */
  IF ~~ THEN REPLY #28768 /* ~"Très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 14.0 21.2 22.2 26.0 30.0 54.2
  SAY #28666 /* ~"Non ? Qu'est-ce que ça signifie ? La tombe était si bien piégée, si bien défendue contre les sorts de scrutation, que ça a été un vrai défi, même un défi pour moi ! Il doit bien y avoir une explication et…" Il prononce ces paroles lentement et avec colère : "TU vas me la fournir. Passe par le portail se trouvant dans les pièces du bas et cherche la réponse."~ */
  IF ~~ THEN REPLY #28769 /* ~"Je n'ai pas de réponse. Comment est-ce que je pourrais le savoir ?"~ */ GOTO 55
  IF ~~ THEN REPLY #31897 /* ~"Je crois que c'était un piège pour décourager les pilleurs de tombes qui recherchent ces cryptes."~ */ GOTO 55
  IF ~~ THEN REPLY #31898 /* ~"C'était ma tombe."~ */ GOTO 56
END

IF WEIGHT #5 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #28667 /* ~"Encore toi ?" Le vieil homme titube légèrement en te regardant. "Que veux-tu à présent du vieux Lothar ? Je t'ai fourni tes réponses. Je te préviens, je n'ai pas toute la journée à perdre." Son regard repose sur toi avec la force d'un marteau de forgeron.~ */
  IF ~~ THEN REPLY #28770 /* ~"Je voudrais que tu répondes à d'autres questions."~ */ GOTO 1
  IF ~~ THEN REPLY #28771 /* ~"Je voulais juste te parler encore un peu."~ */ GOTO 2
  IF ~~ THEN REPLY #28772 /* ~"Rien du tout, merci. Au revoir."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #28668 /* ~"Tu es revenu, je vois. As-tu un crâne pour moi ?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28773 /* ~"J'ai un crâne humain."~ */ GOTO 35
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28774 /* ~"J'ai le crâne de Mantuok."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
AddexperienceParty(15000)
~ GOTO 57
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28775 /* ~"J'ai le crâne de Hargrimm, le prêtre squelette des Nations Mortes."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
~ GOTO 42
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28776 /* ~"J'ai le crâne de Salie Marie, le chef des zombis des Nations Mortes."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
AddexperienceParty(15000)
~ GOTO 43
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28777 /* ~"J'ai le crâne d'Acaste, le chef des goules rebelles."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
AddexperienceParty(15000)
~ GOTO 44
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28778 /* ~"J'ai le crâne de Soego, le missionnaire rat-garou des Hommes-Poussière."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
AddexperienceParty(15000)
~ GOTO 45
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28779 /* ~"J'ai le crâne du Roi Silencieux, le souverain des Nations Mortes."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
AddexperienceParty(15000)
~ GOTO 46
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28780 /* ~"J'ai le crâne d'un rat-garou."~ */ GOTO 35
  IF ~~ THEN REPLY #54115 /* ~"Pas encore."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.8
  SAY #28669 /* ~"Je te suggère alors de retourner dans les catacombes et d'en trouver un autre, d'accord ?"~ */
  IF ~~ THEN REPLY #28782 /* ~"Bien, bien."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #28670 /* ~"Alors ? Tu as trouvé le crâne qui achètera tes réponses ?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28783 /* ~"Il n'y a pas de crâne dans l'urne, Lothar."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28784 /* ~"Pas encore."~ */ GOTO 9
END

IF WEIGHT #8 /* Triggers after states #: 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 15 // from:
  SAY #28671 /* ~"Ah ! Un visiteur. Qu'est-ce qui t'amène dans mon humble salon sans invitation et sans permission ?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #28785 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #28786 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 20
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28787 /* ~"Qui es-tu ?"~ */ GOTO 20
  IF ~~ THEN REPLY #47559 /* ~"Rien. Pardonne mon intrusion."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #28672 /* ~"Mais tu comprends que tu ne peux pas entrer dans les Os de la Nuit sans invitation et en ressortir si vite. Je vends des réponses, mon garçon et par tous les Pouvoirs, j'en aurai une de toi, ou ta tête ira décorer mon étagère."~ */
  IF ~~ THEN REPLY #28788 /* ~"Tu peux toujours essayer, vieil homme."~ */ GOTO 18
  IF ~~ THEN REPLY #28789 /* ~"Tu vends des réponses ? Alors dis-moi : qui suis-je ? Pourquoi est-ce que je fais partie des immortels ?"~ */ GOTO 20
  IF ~~ THEN REPLY #28791 /* ~"Je ne crois pas. Au revoir."~ */ GOTO 17
  IF ~~ THEN REPLY #43396 /* ~"Je voudrais profiter de tes talents de guérisseur. J'ai entendu parler de toi."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #28673 /* ~"Il te reste exactement une chance de me répondre avant que j'arrache la réponse de ton crâne grimaçant."~ */
  IF ~~ THEN REPLY #28792 /* ~"Eh bien, je suis ici pour acheter des réponses."~ */ GOTO 20
  IF ~~ THEN REPLY #28793 /* ~"Et tu as exactement une chance d'aller caguer avant que je te tue."~ */ GOTO 18
  IF ~~ THEN REPLY #43397 /* ~"Je voudrais profiter de tes talents de guérisseur. J'ai entendu parler de toi."~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.1 22.0 34.1
  SAY #28674 /* ~Les yeux du vieil homme brillent alors qu'il psalmodie une formule tortueuse de syllabes mystérieuses. La douleur emplit ton corps. L'obscurité envahit l'espace…~ */
  IF ~~ THEN REPLY #28794 /* ~"Euh…"~ */ DO ~SetGlobal("Game_Over","GLOBAL",1)
~ EXIT
END

IF WEIGHT #0 ~  GlobalLT("KidMorte_Speak","AR0508",2)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #28675 /* ~Un éclair de lumière et un panache de fumée t'aveuglent un instant, puis un vieil homme desséché apparaît devant toi. "On a des visiteurs, crâne ?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_Lothar","GLOBAL",1)
SetGlobal("KidMorte_Speak","AR0508",2)
~ EXTERN ~DKIDMORT~ 4
END

IF ~~ THEN BEGIN 20 // from: 15.0 15.1 15.2 16.1 16.3 17.0 17.2
  SAY #28676 /* ~"Pour toutes les réponses, pour tous les sorts, il y a un prix. Dans ton cas…" Le vieil homme s'interrompt. "Les crânes sont ma monnaie d'échange. Je pose des questions aux morts et ils me répondent. Ils ont accumulé un grand savoir tout au long de leur vie. Plus un crâne a de la valeur, plus on peut lui poser de questions… et plus le sort que je lancerai pour toi sera puissant."~ */
  IF ~~ THEN REPLY #28795 /* ~"Et alors ?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 21 // from: 54.0
  SAY #28677 /* ~Les yeux de Lothar brillent dangereusement. "Ce n'était pas une demande."~ */
  IF ~~ THEN REPLY #28797 /* ~"Laisse tomber, j'ai dit."~ */ GOTO 22
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28798 /* ~"D'accord, d'accord. Je vais aller chercher ton crâne."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47560 /* ~"Le tombeau est déjà vide."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #28678 /* ~"Une chance de plus pour toi, chair balafrée, avant que je décide de prendre ton crâne à la place."~ */
  IF ~~ THEN REPLY #28799 /* ~"Tu peux toujours essayer, Lothar."~ */ GOTO 18
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28800 /* ~"Inutile de te mettre en colère. Je vais aller chercher le crâne."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64538 /* ~"Le tombeau est déjà vide."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 23 // from:
  SAY #28679 /* ~Le vieil homme ignore Morte. "Salut, voyageur. Qui peux-tu bien être pour pénétrer dans l'humble salon de Lothar sans y avoir été convié ?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28801 /* ~"Tu as kidnappé mon ami. Libère-le. Sur-le-champ."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28802 /* ~"Tu as kidnappé mon ami. Libère-le. Tout de suite."~ */ GOTO 25
  IF ~~ THEN REPLY #28803 /* ~"Pardonne-moi, mais je crois que tu as quelque chose qui m'appartient."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28680 /* ~"Kidnappé ? Ton ami ? Je n'ai rien fait de tel. Où est cet ami ?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 5
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28681 /* ~"Kidnappé ? Ton ami ? Je n'ai rien fait de tel. Où est cet ami ?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 6
END

IF ~~ THEN BEGIN 26 // from: 21.1 22.1 54.1
  SAY #28682 /* ~"Tu dois traverser les Dédales de la Pensée, surveillés par les rats-crâne, ou les Nations Mortes, surveillées par les morts errants, puis tu dois ensuite traverser le royaume aquatique des Nations Englouties et trouver la catacombe de ce seigneur sans nom. Un aventurier… aussi… aguerri que toi ne devrait pas avoir de difficulté. Déplace le divan, passe le portail du mur est vers les pièces souterraines. Je te reverrai, j'en suis certain, et j'aurai tes réponses lorsque tu auras ce crâne."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28804 /* ~"J'y suis allé et il n'y a pas de corps dans la crypte."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28805 /* ~"Je vais revenir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.2
  SAY #28683 /* ~"Ah, oui ? Et qu'est-ce que c'est ?"~ */
  IF ~~ THEN REPLY #28806 /* ~"J'ai un crâne à moi sur cette étagère."~ */ GOTO 28
  IF ~~ THEN REPLY #28807 /* ~"Mon ami Morte, sur ton étagère."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #28684 /* ~"Tu veux cette pipelette de crâne qui ignore ce que sont la grâce et les bonnes manières ? Donne-moi un meilleur crâne en échange, si tu veux le récupérer", répond Lothar. "Je n'ai pas besoin de marchander pour quelque chose qui m'appartient déjà."~ */
  IF ~~ THEN REPLY #28809 /* ~"Il ne t'a jamais appartenu… ni à personne… d'ailleurs."~ */ GOTO 32
  IF ~~ THEN REPLY #28810 /* ~"Il est à moi."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28811 /* ~"Où est-ce que je peux trouver un plus grand crâne ?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64539 /* ~"Où puis-je trouver un meilleur crâne ?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from:
  SAY #28685 /* ~NŒUD VIDE ; PREVIENS COLIN SI TU LE TOUCHES~ */
  IF ~~ THEN REPLY #28812 /* ~"Très bien. Où est-ce que je peux trouver un plus grand crâne ?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #28813 /* ~"Il est à moi."~ */ GOTO 33
  IF ~~ THEN REPLY #28814 /* ~"Il ne t'a jamais appartenu, d'abord."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3 29.0 32.0 32.2 34.0 34.2 51.2 51.3
  SAY #28686 /* ~"Déplace le divan, passe le portail du mur est vers les chambres souterraines. Dans les catacombes en bas, il y a beaucoup de crânes. Il y en a un de grande valeur qui se trouve dans les cryptes enfouies des Hommes-Poussière, au-delà des Nations Englouties. Ramène-moi ce crâne - mes rats-garous ont échoué - et je te garantis que ton ami te sera rendu. Je pourrais même répondre à quelques questions."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #2970 /* ~"Je suis allé à la tombe dont tu as parlé. Elle est vide."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #66222 /* ~Lothar m'a dit de pousser le canapé situé au centre de la pièce pour révéler un passage secret menant à des souterrains. Une fois dans le complexe, je dois trouver les catacombes, puis un tombeau se trouvant sous les Nations Mortes. Là, je découvrirai un crâne de grande valeur. Dès que je l'aurai ramené à Lothar, ce dernier libérera Morte.~ */ GOTO 10
  IF ~~ THEN REPLY #2971 /* ~"Comment tu peux savoir que je tiendrai promesse ?"~ */ JOURNAL #66222 /* ~Lothar m'a dit de pousser le canapé situé au centre de la pièce pour révéler un passage secret menant à des souterrains. Une fois dans le complexe, je dois trouver les catacombes, puis un tombeau se trouvant sous les Nations Mortes. Là, je découvrirai un crâne de grande valeur. Dès que je l'aurai ramené à Lothar, ce dernier libérera Morte.~ */ GOTO 31
  IF ~~ THEN REPLY #28853 /* ~"Très bien. Je reviendrai et tu me donneras Morte. Au revoir."~ */ JOURNAL #66222 /* ~Lothar m'a dit de pousser le canapé situé au centre de la pièce pour révéler un passage secret menant à des souterrains. Une fois dans le complexe, je dois trouver les catacombes, puis un tombeau se trouvant sous les Nations Mortes. Là, je découvrirai un crâne de grande valeur. Dès que je l'aurai ramené à Lothar, ce dernier libérera Morte.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #28687 /* ~"Tu as ma parole. Ça devrait te suffire. À moins, évidemment, que tu préfères ne plus revoir ton ami…"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 7
END

IF ~~ THEN BEGIN 32 // from: 28.0 29.2 51.0
  SAY #28688 /* ~"Ton ignorance est incroyable. Tu ne sais presque rien sur presque rien. Donc : va me chercher un autre crâne pour remplacer celui-ci ou fais tes adieux à ton ami."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28854 /* ~"D'accord. Comment je fais pour trouver un crâne de même valeur ?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28855 /* ~"Rends-le-moi. Il est à moi."~ */ GOTO 33
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64540 /* ~"Parfait. Où puis-je trouver un autre crâne qui soit convenable ?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 28.1 29.1 32.1 51.1
  SAY #28689 /* ~Les mains de Lothar se serrent sur son bâton. "Le crâne est à MOI. Si tu en doutes, je prendrai aussi le tien."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 9
END

IF ~~ THEN BEGIN 34 // from:
  SAY #28690 /* ~"Le crâne parle avec sagesse. Écoute-le."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28856 /* ~"Très bien, alors. Comment je fais pour trouver un meilleur crâne ?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28857 /* ~"Je ne crois pas. Rends-le-moi ou tu vas me le payer."~ */ GOTO 18
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64541 /* ~"Très bien. Comment puis-je trouver un meilleur crâne ?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 6.0 6.1 12.0 12.7
  SAY #28691 /* ~Lothar tient le crâne et l'examine soigneusement. "Bah. Il ne vaut rien. Il ne peut rien me dire. J'exige un crâne de valeur si je dois perdre mon temps avec toi. Va !"~ */
  IF ~~ THEN REPLY #28858 /* ~"Bien, bien."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 6.7
  SAY #28692 /* ~Les yeux de Lothar bouillonnent de colère. "Alors, comme ça, tu tues mes serviteurs ? Donne-moi son crâne." Il examine le crâne avec attention et déclare : "Je sens la trahison sur ses os. C'était un espion prudent, mais pas assez, hein ? Je découvrirai ses secrets, n'aie crainte, et l'étendue de sa duplicité." Il fait un geste de la main et Morte disparaît de sur l'étagère. "Ton ami t'attendra à la surface, à l'endroit où tu es entré chez moi. Pose tes questions."~ */
  IF ~~ THEN REPLY #28859 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 37 // from: 6.2
  SAY #28693 /* ~Lothar te prend le crâne des mains et l'examine attentivement. "Hargrimm, tu dis ? Maître des Nations Mortes ? Il aura beaucoup d'informations pour moi. C'est un marché satisfaisant." Il fait un geste de la main et Morte disparaît de sur l'étagère. "Ton ami t'attendra à la surface, à l'endroit où tu es entré chez moi. Pose tes questions."~ */
  IF ~~ THEN REPLY #28860 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 38 // from: 6.3
  SAY #28694 /* ~Lothar te prend la tête de Salie Marie des mains, brosse l'excès de chair et l'examine attentivement. "La maîtresse des zombis des Nations Mortes, tu dis ? Ça ira." Il fait un geste de la main et Morte disparaît de sur l'étagère. "Ton ami t'attendra à la surface, à l'endroit où tu es entré chez moi. Pose tes questions."~ */
  IF ~~ THEN REPLY #28861 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 39 // from: 6.4
  SAY #28695 /* ~Lothar te prend la tête d'Acaste des mains, brosse l'excès de chair et l'examine attentivement. "La reine des goules ? Ça ira." Il fait un geste de la main et Morte disparaît de sur l'étagère. "Ton ami t'attendra à la surface, à l'endroit où tu es entré chez moi. Pose tes questions."~ */
  IF ~~ THEN REPLY #28862 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 40 // from: 6.5
  SAY #28696 /* ~Lothar te prend la tête de Soego des mains et l'examine attentivement, vérifiant ses dents. "Un missionnaire homme-poussière doublé d'un espion, tu dis ? Ça ira." Il fait un geste de la main et Morte disparaît de sur l'étagère. "Ton ami t'attendra à la surface, à l'endroit où tu es entré chez moi. Pose tes questions."~ */
  IF ~~ THEN REPLY #28863 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 41 // from: 6.6
  SAY #28697 /* ~Lothar te prend le crâne du Roi Silencieux des mains et le berce doucement. "Le Roi Silencieux, c'est ça ? Ça ira très bien !" Il murmure au crâne : "Tu vas me révéler tous tes secrets, mon nouvel ami." Il fait un geste de la main et Morte disparaît de sur l'étagère. "Ton ami t'attendra à la surface, à l'endroit où tu es entré chez moi. Pose tes questions."~ */
  IF ~~ THEN REPLY #28864 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 42 // from: 12.2
  SAY #28698 /* ~Lothar te prend le crâne des mains et l'examine attentivement. "Hargrimm, dis-tu ? Le chef des Nations Mortes ? Il aura beaucoup d'informations pour moi. Un marché satisfaisant. Tu auras tes réponses."~ */
  IF ~~ THEN REPLY #28865 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 43 // from: 12.3
  SAY #28699 /* ~Lothar te prend la tête de Salie Marie des mains, il en retire l'excès de chair et l'examine avec attention. "Le chef zombi des Nations Mortes, tu dis ? Ça fera l'affaire. Tu auras tes réponses."~ */
  IF ~~ THEN REPLY #28866 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 44 // from: 12.4
  SAY #28700 /* ~Lothar te prend la tête d'Acaste des mains, il en retire l'excès de chair et l'examine soigneusement. "La reine goule ? Ça fera l'affaire. Tu auras tes réponses."~ */
  IF ~~ THEN REPLY #28867 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 45 // from: 12.5
  SAY #28701 /* ~Lothar te prend la tête de Soego des mains et l'examine avec attention, en vérifiant les dents. "Un missionnaire Homme-Poussière et espion, hein ? Ça fera l'affaire et m'amusera en tout cas. Tu auras tes réponses."~ */
  IF ~~ THEN REPLY #28868 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 46 // from: 12.6
  SAY #28702 /* ~Lothar te prend le crâne du Roi Silencieux des mains et le berce gentiment. "Le Roi Silencieux, hein ? Cela fera sûrement l'affaire ! Tu auras tes réponses." Il murmure au crâne : "Tu me révéleras tous tes secrets, mon nouvel ami."~ */
  IF ~~ THEN REPLY #28869 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 47 // from: 1.1 1.2 48.0 48.1
  SAY #28703 /* ~"Ta mortalité - ton âme, si tu préfères, ce qui te permet de vivre et de mourir - t'a quitté. Elle t'a été enlevée par des moyens magiques, par Ravel Puits-de-Rébus, la guenaude noire. Ta mortalité est la clé de ton existence - lorsque tu la trouveras, tu trouveras tes réponses."~ */
  IF ~~ THEN REPLY #28870 /* ~"Parle-moi de cette Ravel."~ */ GOTO 49
  IF ~~ THEN REPLY #28871 /* ~"Qui ?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 1.3
  SAY #28704 /* ~"C'est un effet secondaire de la perte de ta mortalité."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28872 /* ~"J'ai perdu ma mortalité ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28873 /* ~"J'ai perdu ma mortalité ? Qu'est-ce que tu veux dire ?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 1.0 47.0 47.1
  SAY #28705 /* ~"Ravel Puits-de-Rébus est une énigme, même parmi les guenaudes noires. Certains diraient qu'elle est azimutée, d'autres qu'elle joue à un jeu plus subtil. C'est le mal personnifié et les fiélons que tu verras dans le coin semblent angéliques par rapport à elle. Elle est hors d'atteinte des hommes maintenant, que les Pouvoirs en soient remerciés, car elle a été enfermée dans un dédale par la Dame des Douleurs."~ */
  IF ~~ THEN REPLY #28874 /* ~"Un dédale ? Comment je vais la trouver ?"~ */ DO ~SetGlobal("bd_lothar_ravel_maze","global",1)
~ GOTO 50
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28875 /* ~"Qu'est-ce qu'elle a fait ?"~ */ GOTO 52
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28876 /* ~"Je vois. Merci. Au revoir, Lothar."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28706 /* ~"Les dédales sont de dimension réduite… de petits lieux entre les lieux. Pour y parvenir, tu dois trouver un portail et une clé. Je ne sais pas où se trouvent les portes ou les clés. Tu devrais peut-être demander à l'une de tes vieilles connaissances - tu en as certainement laissées beaucoup derrière. Ils te trouveront, sois-en sûr - prie pour qu'ils ne te veuillent que du bien. Tu devrais peut-être aller à la Salle des Fêtes - ils ont beaucoup de réponses là-bas."~ */
  IF ~~ THEN REPLY #28877 /* ~"Qu'est-ce que Ravel a fait ?"~ */ JOURNAL #31882 /* ~Lothar m'a conseillé de me rendre à la Salle des Fêtes pour trouver des réponses à mes questions sur Ravel Puits-de-Rébus.~ */ GOTO 52
  IF ~~ THEN REPLY #28878 /* ~"Merci, Lothar. Au revoir."~ */ JOURNAL #31882 /* ~Lothar m'a conseillé de me rendre à la Salle des Fêtes pour trouver des réponses à mes questions sur Ravel Puits-de-Rébus.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #28707 /* ~"Je ne t'ai pas donné la permission de parler, crâne !" Morte recule sous la voix menaçante de Lothar. "Balafré, si tu veux récupérer ton crâne, tu dois me rapporter un crâne de plus grande valeur des catacombes. Je ne vais pas marchander pour quelque chose qui m'appartient déjà. C'est à prendre ou à laisser."~ */
  IF ~~ THEN REPLY #28880 /* ~"Il ne t'a jamais appartenu… Ni à personne d'ailleurs."~ */ GOTO 32
  IF ~~ THEN REPLY #28881 /* ~"Il est à moi."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28882 /* ~"Où est-ce que je peux trouver un plus grand crâne ?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64542 /* ~"Où puis-je trouver un meilleur crâne ?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 52 // from: 49.1 50.0
  SAY #28708 /* ~"Elle fabriquait des jouets et des puzzles, résolvait des problèmes qui n'avaient pas besoin d'être résolus. Elle a décidé que Sigil, la Cage, serait le plus grand puzzle de tous et elle s'est mis en tête de le défaire - de laisser y entrer les armées de fiélons à sa disposition, sans doute pour déranger l'équilibre de la cité et faire de tout le bled un charnier. Remercie tous les Pouvoirs qui te sont chers qu'elle n'ait pas réussi."~ */
  IF ~~ THEN REPLY #28883 /* ~"Je la trouverai et je la forcerai à me rendre ma mortalité. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #31864 /* ~Les yeux de Lothar bouillonnent de colère. "Tuer mes serviteurs, hein ? Donne-moi son crâne." Il examine le crâne avec attention et déclare : "Je sens la trahison sur ses os. C'était un espion prudent, mais pas assez, hein ? Je découvrirai ses secrets, n'aie crainte, et sa duplicité."~ */
  IF ~~ THEN REPLY #31865 /* ~"J'ai beaucoup de questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 54 // from: 20.0
  SAY #2912 /* ~"Dans ce cas, Lothar ne te demandera qu'un crâne, un simple crâne, des catacombes ci-dessous, pour ce que tu demandes. Il y a une tombe verrouillée, au-delà des Nations Englouties, dans laquelle mes larbins n'ont pas encore réussi à pénétrer. Ramène-moi le crâne de l'un de ceux qui y gisent et je te donnerai toutes les réponses dont tu as besoin. TOUTES, si je le peux. RAMÈNE-moi ce crâne."~ */
  IF ~~ THEN REPLY #31867 /* ~"Pas question."~ */ JOURNAL #66223 /* ~Lothar m'a dit de pousser le canapé situé au centre de la pièce pour révéler un passage secret menant à des souterrains. Une fois dans le complexe, je dois trouver les catacombes, puis un tombeau se trouvant sous les Nations Mortes. Là, je découvrirai un crâne de grande valeur. Dès que je l'aurai ramené à Lothar, ce dernier répondra à mes questions.~ */ GOTO 21
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #31869 /* ~"C'est d'accord."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lothar m'a dit de pousser le canapé situé au centre de la pièce pour révéler un passage secret menant à des souterrains. Une fois dans le complexe, je dois trouver les catacombes, puis un tombeau se trouvant sous les Nations Mortes. Là, je découvrirai un crâne de grande valeur. Dès que je l'aurai ramené à Lothar, ce dernier répondra à mes questions.~ */ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47561 /* ~"Le tombeau est déjà vide."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lothar m'a dit de pousser le canapé situé au centre de la pièce pour révéler un passage secret menant à des souterrains. Une fois dans le complexe, je dois trouver les catacombes, puis un tombeau se trouvant sous les Nations Mortes. Là, je découvrirai un crâne de grande valeur. Dès que je l'aurai ramené à Lothar, ce dernier répondra à mes questions.~ */ GOTO 10
END

IF ~~ THEN BEGIN 55 // from: 10.0 10.1
  SAY #31900 /* ~"Il y a du vrai dans ce que tu dis, et pourtant… cette crypte a quelque chose de prometteur. Je vais y réfléchir, et je te conseille de m'imiter." Il fait volte-face, et se retourne vers toi presque aussitôt. "Rapporte-moi un autre crâne, dans ce cas, et notre accord tient toujours. Et n'essaie pas de me refiler de la camelote - je suis un connaisseur. Rapporte-moi un crâne de valeur."~ */
  IF ~~ THEN REPLY #31901 /* ~"Très bien. Au revoir."~ */ JOURNAL #31875 /* ~Lothar m'a dit d'aller récupérer un autre crâne pour remplacer celui que je n'ai pu trouver dans le tombeau piégé.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.2
  SAY #31902 /* ~"Ta tombe ? TA tombe ?" Il te regarde attentivement. "Nous allons enquêter plus profondément. Rapporte-moi un autre crâne, dans ce cas-là, et nous verrons quelles réponses je peux te donner. Notre accord tient toujours. Et n'essaie pas de me refiler de la camelote - je suis un connaisseur. Rapporte-moi un crâne de valeur.~ */
  IF ~~ THEN REPLY #31905 /* ~"Très bien. Au revoir."~ */ JOURNAL #31874 /* ~Lothar m'a chargé de trouver un autre crâne pour remplacer celui que je n'ai pas pu trouver dans le tombeau piégé.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 12.1
  SAY #54113 /* ~Les yeux de Lothar jettent des éclairs de colère. "Tuer mes serviteurs, hein ? Montre-moi ce crâne." Il examine attentivement le crâne, puis déclare : "Je peux sentir sa traîtrise à travers ses os. C'était un sacré fureteur, mais pas assez prudent, hein ? N'aie crainte, je lui arracherai ses secrets et je révélerai sa duplicité. Je répondrai à tes questions."~ */
  IF ~~ THEN REPLY #54114 /* ~"J'ai beaucoup de questions pour toi."~ */ GOTO 1
END
