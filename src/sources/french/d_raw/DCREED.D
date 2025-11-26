// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCREED.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCREED~

IF ~  Global("Creeden","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #10080 /* ~Ce type crasseux ne tarde pas à remarquer l'attention que tu lui portes, et il te saute dessus pour te vanter sa "marchandise". Il porte une longue perche en bois d'où pendent des dizaines de rats cuits écorchés qu'il désigne d'une grosse main dégoûtante, sans se départir d'un large sourire qui révèle des dents jaunes plantées toutes de guingois. "Hé, matois, comment va ? Tu veux goûter quel genre de p'tits rats par cette belle journée ? Y sont délicieux !"~ */
  IF ~~ THEN REPLY #12628 /* ~Examine les 'p'tits rats'.~ */ GOTO 2
  IF ~~ THEN REPLY #12629 /* ~"Je préférerais encore manger des abats."~ */ GOTO 4
  IF ~~ THEN REPLY #12630 /* ~"Quel genre de… 'p'tits rats' tu vends ?"~ */ GOTO 5
  IF ~~ THEN REPLY #12631 /* ~"Pas aujourd'hui… Mais j'ai une question à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #12632 /* ~"Il n'y a rien qui m'intéresse, merci. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",1)
~ THEN BEGIN 1 // from:
  SAY #12560 /* ~"Eh, matois ; bonjour. Tu n'aurais pas une petite envie de petits rats goûteux, hein ?"~ */
  IF ~~ THEN REPLY #12633 /* ~"Pourquoi pas… Qu'est-ce que tu me proposes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #12634 /* ~"Je préfère manger ma propre chair plutôt que ces immondices !"~ */ GOTO 4
  IF ~~ THEN REPLY #12635 /* ~"Non, pas aujourd'hui. Mais, j'ai quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12636 /* ~"Non, merci. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #12561 /* ~Chaque rat a été dépecé et étripé, pattes et queues ôtées ; ils sont attachés au bâton à l'aide de crochets qui leur percent le cou. Alors que tu examines toutes les façons dont ils ont été préparés, tu réalises que leurs têtes sont légèrement déformées - un nœud bulbeux d'os dépasse de chaque crâne, couvert de volutes qui font penser à de la cervelle.~ */
  IF ~~ THEN REPLY #12637 /* ~"Ces rats ont l'air bizarre."~ */ GOTO 3
  IF ~~ THEN REPLY #12638 /* ~"Je vais en prendre un."~ */ GOTO 5
  IF ~~ THEN REPLY #12639 /* ~"Pas question que je mange ces saletés."~ */ GOTO 4
  IF ~~ THEN REPLY #12640 /* ~"Rien pour moi, merci. Mais j'ai une question à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #12641 /* ~"Pas de rat pour moi, merci. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9344 /* ~"Ah, t'as l'œil, matois ! Tout ce que je vends, c'est de la vermine à cerveau, ouais… Tu vas sûrement trouver qu'ils ont une saveur bien plus riche que le rat ordinaire. Délicieux !" Il te les propose une fois de plus, en agitant le bâton devant ton visage pour t'allécher… les rats se balancent, suspendus comme de minuscules portions de bœuf.~ */
  IF ~~ THEN REPLY #12642 /* ~"De la vermine à cerveau ?"~ */ GOTO 22
  IF ~~ THEN REPLY #12643 /* ~"Je vais en goûter un."~ */ GOTO 5
  IF ~~ THEN REPLY #12644 /* ~"C'est répugnant. Je préférerais encore manger des abats plutôt que ces immondices."~ */ GOTO 4
  IF ~~ THEN REPLY #12645 /* ~"Intéressant. J'ai une question à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #12646 /* ~"C'est tout ce que voulais savoir. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.2 3.2 5.4 6.1 7.1 8.1 9.1 59.1 60.1
  SAY #12562 /* ~L'homme ne semble pas du tout perturbé ; en fait, il te fait un clin d'œil et sourit joyeusement. "Laisse-moi te dire, matois -- tu sais pas ce que tu perds ! J'serai encore là si tu changes d'avis…" L'homme se remet à vanter ses rats aux passants."~ */
  IF ~~ THEN DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 2.1 3.1 10.1 11.1 12.1 13.1 15.11 59.0 60.0 61.0
  SAY #12563 /* ~"Bien, matois, bien ! Quel genre tu voudrais ?" Il les désigne tous de son ongle crasseux. "Je les ai cuits, épicés, bouillis et flambés ! Tout frais, délicieux… et trois pièces de cuivre seulement les deux !"~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12647 /* ~"Cuits."~ */ DO ~TakePartyGold(3)
~ GOTO 6
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12648 /* ~"Épicés."~ */ DO ~TakePartyGold(3)
~ GOTO 7
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12649 /* ~"Bouillis."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12650 /* ~"Grillés."~ */ DO ~TakePartyGold(3)
~ GOTO 9
  IF ~~ THEN REPLY #12651 /* ~"Délicieux ? Ça m'étonnerait. Qui peut manger des saletés pareilles ?"~ */ GOTO 4
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12652 /* ~"Je n'ai pas assez… Mais j'ai quelques questions…"~ */ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12653 /* ~"Je n'ai pas assez… Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12654 /* ~"Tout bien réfléchi, aucun pour moi. Mais, j'ai une question…"~ */ GOTO 15
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12655 /* ~"Finalement, je n'ai pas si faim que ça. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12564 /* ~Tu lui tends tes pièces et à l'aide d'une broche en bois, il attrape lestement les deux rats cuits, les décroche et te les place dans la main. "Bon appétit, matois !", dit-il avec un clin d'œil.~ */
  IF ~~ THEN REPLY #12656 /* ~Mange le 'p'tit rat'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #12657 /* ~Jette-le de dégoût.~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12565 /* ~Tu lui tends tes pièces et à l'aide d'une broche en bois, il attrape lestement les deux rats épicés, les décroche et te les place dans la main. "Bon appétit, matois !", dit-il avec un clin d'œil.~ */
  IF ~~ THEN REPLY #12658 /* ~Mange le 'p'tit rat'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #12659 /* ~Jette-le de dégoût.~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #12566 /* ~Tu lui tends tes pièces et à l'aide d'une broche en bois, il attrape lestement les deux rats bouillis, les décroche et te les place dans la main. "Bon appétit, matois !", dit-il avec un clin d'œil.~ */
  IF ~~ THEN REPLY #12660 /* ~Mange le 'p'tit rat'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #12661 /* ~Jette-le de dégoût.~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #12567 /* ~Tu lui tends les pièces et à l'aide d'une broche en bois, il attrape lestement les deux rats flambés, les décroche et te les place dans la main. "Bon appétit, matois !", dit-il avec un clin d'œil.~ */
  IF ~~ THEN REPLY #12662 /* ~Mange le 'p'tit rat'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #12663 /* ~Jette-le de dégoût.~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #12568 /* ~La viande de rat est tendre et moelleuse ; elle se détache facilement des os et fond dans la bouche. C'est légèrement gras et plutôt relevé, ça te rappelle un… autre… type de viande. L'homme te regarde avec l'air d'attendre quelque chose. "T'as aimé ? T'en veux d'autres ?"~ */
  IF ~~ THEN REPLY #12664 /* ~"C'était bon, mais j'ai une question à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #12665 /* ~"D'accord, je vais en prendre un autre."~ */ GOTO 5
  IF ~~ THEN REPLY #12666 /* ~"Non, c'était infect."~ */ GOTO 14
  IF ~~ THEN REPLY #12667 /* ~"Ça me suffira. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #12569 /* ~La viande de rat est aromatisée et assez épicée ; on dirait qu'elle a été marinée dans un mélange d'herbes avant d'être cuite. Elle est un peu grasse et plutôt relevée, le goût te rappelle un… autre… type de viande. L'homme te regarde avec l'air d'attendre quelque chose. "T'as aimé ? T'en veux d'autres ?"~ */
  IF ~~ THEN REPLY #12668 /* ~"C'était bon, mais j'ai une question à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #12669 /* ~"D'accord, je vais en prendre un autre."~ */ GOTO 5
  IF ~~ THEN REPLY #12670 /* ~"Non, c'était infect."~ */ GOTO 14
  IF ~~ THEN REPLY #12671 /* ~"Ça me suffira. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #12570 /* ~La viande de rat, préparée ainsi, est assez tendre et caoutchouteuse. Elle te rappelle légèrement le goût… d'une… autre viande. Tu es certain que cela aurait meilleur goût préparé autrement ; tu as du mal à imaginer pourquoi *quiconque* ferait bouillir de la viande pour la manger. L'homme te regarde avec l'air d'attendre quelque chose. "T'as aimé ? T'en veux d'autres ?"~ */
  IF ~~ THEN REPLY #12672 /* ~"C'était bon, mais j'ai une question à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #12673 /* ~"D'accord, je vais en prendre un autre."~ */ GOTO 5
  IF ~~ THEN REPLY #12674 /* ~"Non, c'était infect."~ */ GOTO 14
  IF ~~ THEN REPLY #12675 /* ~"Ça me suffira. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #12571 /* ~Le rat est brûlé et croustillant à l'extérieur, mais tendre et juteux à l'intérieur. Légèrement gras et d'un goût plutôt relevé, il te rappelle… une autre… viande. L'homme te regarde avec l'air d'attendre quelque chose. "T'as aimé ? T'en veux d'autres ?"~ */
  IF ~~ THEN REPLY #12676 /* ~"C'était bon, mais j'ai une question à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #12677 /* ~"D'accord, je vais en prendre un autre."~ */ GOTO 5
  IF ~~ THEN REPLY #12678 /* ~"Non, c'était infect."~ */ GOTO 14
  IF ~~ THEN REPLY #12679 /* ~"Ça me suffira. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 12.2 13.2 61.1
  SAY #12572 /* ~Il a l'air véritablement surpris. "Quel dommage, matois. Bonne journée." Il semble sur le point de partir.~ */
  IF ~~ THEN REPLY #12680 /* ~"Attends, j'ai une question à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #12681 /* ~Laisse-le partir.~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.3 1.2 2.3 3.3 5.5 5.7 10.0 11.0 12.0 13.0 14.0 16.1 17.1 18.2 19.2 20.0 21.1 22.1 23.3 24.1 25.2 26.2 27.2 28.2 29.2 30.2 33.1 34.1 35.2 36.2 37.2 38.1 39.5 40.2 41.3 42.1 43.2 44.1 45.0 46.1 47.3 48.3 49.0 50.0 51.2 52.2 53.1 54.0 55.1 56.1 57.1 58.1 60.2 61.2 62.1 63.0
  SAY #12573 /* ~Il change avec désinvolture son bâton d'épaule. "C'est quoi ta question, matois ?"~ */
  IF ~  Global("RP_Portal","GLOBAL",2)
~ THEN REPLY #48399 /* ~"On m'a dit de m'adresser à un certain Crédo, devant le Bureau de Lutte contre la Vermine et la Maladie, pour l'interroger sur le porche rempli d'ordures du Square du Chiffonnier. Tu peux m'aider ?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",3)
~ JOURNAL #47844 /* ~Un dénommé Crédo m'a indiqué que, si je souhaitais franchir l'arche encombrée de déchets du Square du Chiffonnier, je devais en parler à une femme du nom de Pointe-en-Fer. Selon lui, elle crèche dans un tas de bois de construction au nord-est du Bureau de Lutte contre la vermine et la maladie.~ */ GOTO 63
  IF ~~ THEN REPLY #12682 /* ~"Qui es-tu ?"~ */ GOTO 21
  IF ~~ THEN REPLY #12683 /* ~"Je voulais te parler des rats…"~ */ GOTO 23
  IF ~~ THEN REPLY #12684 /* ~"C'est quoi ce bâtiment là, derrière toi ?"~ */ GOTO 17
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12685 /* ~"Tu peux me parler de cette… cité ?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12686 /* ~"Tu peux me parler de Sigil ?"~ */ GOTO 28
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #12687 /* ~"Tu peux me parler de ces bas quartiers ?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 35
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #12688 /* ~"Tu peux me parler de la Ruche ?"~ */ GOTO 36
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12689 /* ~"Tu peux me parler de la Dame des Douleurs ?"~ */ GOTO 50
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12690 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12691 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ?"~ */ GOTO 54
  IF ~~ THEN REPLY #12692 /* ~"Je voudrais un des rats que tu as là."~ */ GOTO 5
  IF ~~ THEN REPLY #12693 /* ~"Rien. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 16 // from: 23.0
  SAY #12574 /* ~"Quoi ? Ceux-ci ?" Il secoue son bâton et les rats dépiautés esquissent une sorte de danse macabre. "Je les attrape moi-même, ouais… dans les caves et les allées dans la Ruche."~ */
  IF ~~ THEN REPLY #12694 /* ~"Je vois. Parle-moi de cette 'Ruche'."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #12695 /* ~"J'ai une autre question à te poser."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12696 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 17 // from: 15.3
  SAY #12575 /* ~Il jette un coup d'œil par-dessus son épaule. "C'est le Bureau de Lutte contre la vermine et la maladie, matois. Je vends mes queues de rats ici pour du jonc, puis je fais cuire ces vermines et j'les vends."~ */
  IF ~~ THEN REPLY #12697 /* ~"Il y en a qui achètent ces queues de rats ?"~ */ GOTO 18
  IF ~~ THEN REPLY #12698 /* ~"J'ai une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #12699 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 18 // from: 17.0 26.1 47.1 48.2 57.0
  SAY #12576 /* ~"C'est vrai, matois ! Il y a un bige dans le Bureau de lutte contre la vermine et la maladie, du nom de Lort, qui te donne une prime pour eux. Une pièce de cuivre par queue, c'est le tarif. Mais il faut qu'ce soit de la vermine à cerveau… pas des rats ordinaires."~ */
  IF ~~ THEN REPLY #12700 /* ~"Parle-moi encore de ce Lort."~ */ GOTO 19
  IF ~~ THEN REPLY #12701 /* ~"Les vermines à cerveau ?"~ */ GOTO 22
  IF ~~ THEN REPLY #12702 /* ~"Intéressant. Réponds à autre chose pour moi…"~ */ GOTO 15
  IF ~~ THEN REPLY #12703 /* ~"Je vois. C'est tout pour le moment. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #12577 /* ~"Il s'appelle Phinéas, Phinéas Lort. J'crois bien que c'était un genre de grossium, qui a été chassé par ses rivaux et qui est maintenant coincé ici au fin fond de Sigil. Le bige est assis tout seul jour et nuit, il attend qu'on lui apporte des queues et il verse la prime. Tu sais pas le plus fort ? Le pauvre bougre doit être allergique aux rats, parce qu'il est toujours infesté de boutons ! J'remercie les puissances de ne pas être ce type."~ */
  IF ~~ THEN REPLY #12704 /* ~"Il a été écarté par ses rivaux ? Tu sais ce qui s'est passé ?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #12705 /* ~"Sigil ?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12706 /* ~"Très bien. J'ai une autre question…"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12707 /* ~"J'irai peut-être lui rendre visite un de ces jours. Au revoir."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12578 /* ~"Ça, pour êt' bavard, il est bavard - 'l branlera son râtelier pendant des heures pour dire combien il est intelligent et tout l'reste. Ça a peut-être quelque chose à voir avec ça." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #12708 /* ~"Je comprends. Une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #12709 /* ~"J'irai peut-être lui parler. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY #12579 /* ~"Quoi, moi ? Pourquoi, j'suis Crédo, ou Cred - le Boucher-des-Rats !" Il sourit pompeusement, exposant deux rangées dépareillées de dents cassées, tordues et jaunies.~ */
  IF ~~ THEN REPLY #12710 /* ~"Tu as l'air… plus sympathique… que la plupart des gens qui vivent dans le coin."~ */ GOTO 49
  IF ~~ THEN REPLY #12711 /* ~"Tu tombes bien, Crédo. J'ai une autre question à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #12712 /* ~"On aura peut-être l'occasion de reparler ensemble, Crédo. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 3.0 18.1 23.2 47.2
  SAY #12580 /* ~"Ouais, matois, de la vermine à cerveau. Des créatures infectes. Bon, tes rats normaux, ils mangent de la nourriture stockée et prolifèrent, répandent des maladies et tout ça… un désagrément, rien de plus. Mais ces *rats-crâne* - de la vermine à cerveau, que *je* chasse - c'est bien pire. Si tu en rassembles plus d'une petite poignée, ils commencent à devenir très intelligents… *vraiment* intelligents."~ */
  IF ~~ THEN REPLY #12713 /* ~"Ils deviennent plus intelligents ?"~ */ GOTO 24
  IF ~~ THEN REPLY #12714 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12715 /* ~"C'est tout ce que voulais savoir. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 23 // from: 15.2
  SAY #12581 /* ~Il s'esclaffe bruyamment, son haleine est fétide et pue l'oignon. "Plutôt affranchi dans le domaine, si tu veux savoir ! Quelle est ta question, matois ?"~ */
  IF ~~ THEN REPLY #12716 /* ~"Tu les trouves où, tous ces rats ?"~ */ GOTO 16
  IF ~~ THEN REPLY #12717 /* ~"Quels sont les meilleurs endroits pour chasser les rats ?"~ */ GOTO 62
  IF ~~ THEN REPLY #12718 /* ~"Parle-moi de ces rats que tu chasses."~ */ GOTO 22
  IF ~~ THEN REPLY #12719 /* ~"Rien. Je n'ai rien d'autre à te demander…"~ */ GOTO 15
  IF ~~ THEN REPLY #12720 /* ~"Peu importe. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #12582 /* ~"Aussi sûr que tu m'vois là ! Si j'en rencontrais plus de deux vingtaines, je m'enfuirais vers ma case comme *ça*…" Il fait un bruit sec pour illustrer sa remarque. "… Sûr ! S'il y en a trop, ben… ben, ils deviennent aussi intelligents qu'un homme, vrai de vrai !"~ */
  IF ~~ THEN REPLY #12721 /* ~"Continue…"~ */ GOTO 25
  IF ~~ THEN REPLY #12722 /* ~"Intéressant. Je voudrais te demander autre chose…"~ */ GOTO 15
  IF ~~ THEN REPLY #12723 /* ~"Je vois… C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12583 /* ~"Voici c'que j'peux te conseiller de mieux, matois… si tu veux attraper de la vermine à cerveau, contente-toi de petits lots. Une douzaine environ, au plus. Mais j'vais te dire…." Il se rapproche, son haleine fétide sur ton visage et chuchote : "Si t'en rencontres plus… plus que ça… sauve-toi comme si t'étais dans l'ombre de la Dame !" Il reprend ses distances.~ */
  IF ~~ THEN REPLY #12724 /* ~"Pourquoi ? Qu'est-ce qu'il y a à craindre ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #12725 /* ~"La Dame ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #12726 /* ~"Bon, je ferai gaffe. J'ai une autre question…"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12727 /* ~"Je m'en souviendrai. Au revoir."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12584 /* ~"De la sorcellerie, matois… sorcellerie ! S'il y a trop de ces p'tits fiélons dans un endroit, ils ont toutes sortes d'étranges pouvoirs ! Ils feraient sortir le cerveau d'un lascar par ses oreilles, ouais ! Assez épouvantable… rien qu'du mal, je t'dis. C'est pour cette raison que Sigil a vraiment envie de s'en débarrasser… la prime, et tout le reste."~ */
  IF ~~ THEN REPLY #12728 /* ~"Sigil ?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12729 /* ~"Une prime ? Il y a quelqu'un qui paie pour des queues de rats ?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #12730 /* ~"Je comprends. Je voudrais te demander quelque chose…"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12731 /* ~"Je vois. C'est tout ce que je voulais savoir pour l'instant. Au revoir."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 27 // from: 15.4
  SAY #12585 /* ~"Sigil, hein ? Pourquoi elle t'intéresse la vielle Cage, matois ?"~ */
  IF ~~ THEN REPLY #12732 /* ~"Pourquoi tu l'appelles la Cage ?"~ */ GOTO 29
  IF ~~ THEN REPLY #12733 /* ~"Où se trouve exactement cet endroit ?"~ */ GOTO 42
  IF ~~ THEN REPLY #12734 /* ~"Rien, en fait. Mais j'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12735 /* ~"Rien… Peu importe. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 28 // from: 15.5 19.1 26.0
  SAY #12586 /* ~"Oui, Sigil… la Cage… qu'est-ce que tu veux savoir, matois ?"~ */
  IF ~~ THEN REPLY #12736 /* ~"Pourquoi tu l'appelles la Cage ?"~ */ GOTO 29
  IF ~~ THEN REPLY #12737 /* ~"Où se trouve exactement cet endroit ?"~ */ GOTO 42
  IF ~~ THEN REPLY #12738 /* ~"Rien, en fait. Mais j'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12739 /* ~"Rien… Peu importe. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #12587 /* ~Il secoue la tête et rit, la vermine morte se balançant sur son bâton. "Tu vois, matois, c'est à cause de toutes les portes. Certains appellent Sigil la 'Cité des Portes'… des portes magiques et partout, aussi… elles conduisent n'importe où. Et c'est bien *n'importe où* ! Mais la ruse… c'est qu'elles sont toutes fermées ! C'est vraiment une cage ici… on ne peut entrer et sortir que si on a la bonne clé."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12740 /* ~"Parle-moi de ces portes et de ces clés."~ */ GOTO 30
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12741 /* ~"Parle-moi de ces portes et de ces clés."~ */ GOTO 31
  IF ~~ THEN REPLY #12742 /* ~"Je vois. Je voudrais te poser une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #12743 /* ~"C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #12588 /* ~"Heh-hooo ! Tu veux toutes les savoir les chansons, hein ! Bon, je vais te faire un résumé : la Cage est pleine de portes. Ces portes sont partout, dans toute la cité… mais tu peux pas les voir, sauf si t'as la bonne clé. Chaque porte a sa propre clé et chaque clé est différente. La clé peut être une vraie clé, en laiton et tout, d'accord ? Mais ça peut aussi être… par exemple… un rat cuit ! Ou une petite gigue que tu danses devant la porte. Si t'as la bonne clé, tu passes et tu vas où te mène la porte."~ */
  IF ~~ THEN REPLY #12744 /* ~"Comment est-ce que tu peux savoir où mène une porte ?"~ */ GOTO 33
  IF ~~ THEN REPLY #12745 /* ~"Comment tu peux savoir quelles clés ouvrent les différentes portes ?"~ */ GOTO 34
  IF ~~ THEN REPLY #12746 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12747 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #12589 /* ~Le chasseur de rats dévisage de façon railleuse Morte, qui flotte dans les airs derrière toi. "Pourquoi un matois n'interrogerait pas son mimir pour connaître le soltif…"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 155
END

IF ~~ THEN BEGIN 32 // from:
  SAY #12590 /* ~Le chasseur de rats te regarde troublé en se grattant la tête, il réalise soudain qu'il est une fois de plus le centre de l'attention. Il se débarrasse de cette expression ahurie et se reprend.~ */
  IF ~~ THEN REPLY #12748 /* ~Laisse-le parler.~ */ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 30.0 34.0
  SAY #12591 /* ~Il fronce les sourcils, ruminant la réponse dans sa tête. "Si tu connaissais la clé, tu s'rais déjà là où conduit la porte. Si t'en ouvrais une par accident, faudrait qu'tu sois très prudent. Tu pourrais essayer de glisser la tête et de jeter un coup d'œil… mais certaines t'aspirent ! Tu risquerais de te retrouver dans des lieux infects, matois, n'oublie pas.~ */
  IF ~~ THEN REPLY #12749 /* ~"Comment tu peux savoir quelles clés ouvrent les différentes portes ?"~ */ GOTO 34
  IF ~~ THEN REPLY #12750 /* ~"Intéressant. Je voudrais te demander autre chose…"~ */ GOTO 15
  IF ~~ THEN REPLY #12751 /* ~"Je comprends. Merci d'avoir répondu à mes questions. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 34 // from: 30.1 33.0
  SAY #12592 /* ~Il hausse les épaules, en agitant le bâton, ce qui fait que la vermine cuite s'entrechoque encore. "Il te suffit d'interroger ceux qui connaissent le soltif de ce genre de choses. Tu vois, certaines portes restent en place, d'autres bougent… il faudrait être azimuté pour les connaître toutes. J'utilise pas beaucoup ces portes, alors j'pourrais pas vraiment t'aider."~ */
  IF ~~ THEN REPLY #12752 /* ~"Comment est-ce que tu peux savoir où mène une porte ?"~ */ GOTO 33
  IF ~~ THEN REPLY #12753 /* ~"Intéressant. Je voudrais te demander autre chose…"~ */ GOTO 15
  IF ~~ THEN REPLY #12754 /* ~"Je comprends. Merci d'avoir répondu à mes questions. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 35 // from: 15.6
  SAY #12593 /* ~Il semble perplexe un moment. "Quoi, la Ruche, ici ? Qu'est-ce que tu cherches, matois ?"~ */
  IF ~~ THEN REPLY #12755 /* ~"Tu sais pourquoi ça s'appelle la Ruche ?"~ */ GOTO 37
  IF ~~ THEN REPLY #12756 /* ~"Qu'est-ce qu'il y a d'intéressant par ici ?"~ */ GOTO 39
  IF ~~ THEN REPLY #12757 /* ~"Rien, peu importe. J'ai autre chose à te demander…"~ */ GOTO 15
  IF ~~ THEN REPLY #12758 /* ~"Peu importe, c'est tout. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 36 // from: 15.7 16.0
  SAY #12594 /* ~"Sous mon toit et là où je fais mes affaires ! Qu'est-ce que tu cherches, matois ?"~ */
  IF ~~ THEN REPLY #12759 /* ~"Tu sais pourquoi ça s'appelle la Ruche ?"~ */ GOTO 37
  IF ~~ THEN REPLY #12760 /* ~"Qu'est-ce qu'il y a d'intéressant par ici ?"~ */ GOTO 39
  IF ~~ THEN REPLY #12761 /* ~"Rien, peu importe. J'ai autre chose à te demander…"~ */ GOTO 15
  IF ~~ THEN REPLY #12762 /* ~"Peu importe, c'est tout. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #12595 /* ~"Hum…" le chasseur de rats se gratte le menton et ses doigts y laissent des traces de graisse. "Y a pas mal d'histoires là-dessus, ouais… je crois qu'il y a plusieurs bâtiments quelque part, un foutoir de cabanes et de ruines qui sert de lieu de rendez-vous. On l'appelait la Ruche, c'est de là que vient le nom de ces taudis… de tout ce quartier."~ */
  IF ~~ THEN REPLY #12763 /* ~"Un lieu de rendez-vous ? Pour qui ?"~ */ GOTO 38
  IF ~~ THEN REPLY #12764 /* ~"Je vois. Qu'est-ce qu'il y a d'intéressant par ici ?"~ */ GOTO 39
  IF ~~ THEN REPLY #12765 /* ~"Hmmm. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12766 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #12596 /* ~Les manières amicales de l'homme deviennent menaçantes. "Des fauteurs de trouble, matois. Même si t'arrivais à trouver l'endroit, je te conseille de ne pas t'en approcher. C'est tout c'que j'ai à dire." Il s'essuie le nez pour signifier la fin de son discours, son visage redevient serein.~ */
  IF ~~ THEN REPLY #12767 /* ~"Je comprends. Qu'est-ce qu'il y a d'intéressant dans le coin ?"~ */ GOTO 39
  IF ~~ THEN REPLY #12768 /* ~"Je vois. Alors, je voudrais te demander autre chose…"~ */ GOTO 15
  IF ~~ THEN REPLY #12769 /* ~"Très bien. Alors, au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 39 // from: 35.1 36.1 37.1 38.0
  SAY #12597 /* ~"J'suis pas bien sûr de comprendre c'que tu veux, matois. Dis-le-moi et peut-être que le vieux Crédo pourra te mettre sur la bonne voie."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12770 /* ~"J'voudrais me payer du bon temps."~ */ EXTERN ~DMORTE~ 159
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12771 /* ~"J'voudrais me payer du bon temps."~ */ GOTO 40
  IF ~~ THEN REPLY #12772 /* ~"Je cherche du travail."~ */ GOTO 47
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12773 /* ~"Je cherche un certain Pharod."~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12774 /* ~"Je cherche un journal. Est-ce que tu en as vu un ?"~ */ GOTO 54
  IF ~~ THEN REPLY #12775 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12776 /* ~"Peu importe. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #12598 /* ~"Il y a des endroits moins dangereux … le Bar de la Poussière accumulée et du Cadavre fumant. J'pourrais pas vraiment te recommander d'autre endroit, matois."~ */
  IF ~~ THEN REPLY #12777 /* ~"Tu pourrais m'indiquer où se trouvent ces endroits ?"~ */ GOTO 55
  IF ~~ THEN REPLY #12778 /* ~"Dangereux ?"~ */ GOTO 41
  IF ~~ THEN REPLY #12779 /* ~"Merci. J'ai une autre question."~ */ GOTO 15
  IF ~~ THEN REPLY #12780 /* ~"Je m'arrêterai peut-être dans l'un de ces endroits. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 41 // from: 40.1 55.0
  SAY #12599 /* ~Il réfléchit un moment avant de répondre. "Bon, matois, tu vois… les choses sont pas super ici. La vie est dure. C'est un endroit désespéré, plein d'gens désespérés. J'dirais juste que certains types font n'importe quoi pour s'en sortir, sans tenir compte des autres. C'est facile de se perdre dans la Ruche, ouais."~ */
  IF ~~ THEN REPLY #12781 /* ~"Mais toi, tu as plutôt l'air sympathique…"~ */ GOTO 49
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12782 /* ~"Se perdre ?"~ */ EXTERN ~DMORTE~ 160
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12783 /* ~"Se perdre ?"~ */ GOTO 56
  IF ~~ THEN REPLY #12784 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12785 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 42 // from: 27.1 28.1
  SAY #12600 /* ~"Euh… où elle n'est pas, matois ? Comme Sigil touche vraiment à tout… il n'y a pas d'endroit où elle n'est pas. Pas sûr qu'elle existe quelque part dans le véritable sens du mot… dans un endroit, j'veux dire. La plupart des affranchis te diront qu'elle se trouve dans l'Outreterre."~ */
  IF ~~ THEN REPLY #12786 /* ~"L'Outreterre ?"~ */ GOTO 43
  IF ~~ THEN REPLY #12787 /* ~"Bizarre. Je voudrais te demander autre chose…"~ */ GOTO 15
  IF ~~ THEN REPLY #12788 /* ~"Je crois que je comprends. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #12601 /* ~"Ah, matois, c'est bien vrai. C'est le dénommé 'Centre des Plans' où se trouve Sigil. C'est bien là mon problème ; si t'es dans Sigil, tu peux pas en sortir sans utiliser une porte magique. Il n'y a pas de façon 'normale' d'en sortir et de passer dans l'Outreterre."~ */
  IF ~~ THEN REPLY #12789 /* ~"Continue…"~ */ GOTO 44
  IF ~~ THEN REPLY #12790 /* ~"Des portes ?"~ */ GOTO 46
  IF ~~ THEN REPLY #12791 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12792 /* ~"J'écouterai peut-être la suite une autre fois. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 44 // from: 43.0 46.0
  SAY #12602 /* ~"Vrai. Et si tu es hors de Sigil… dans l'Outreterre… tu peux pas rentrer dans Sigil. Il y a juste cette aiguille infinie de rochers, qui perce les nuages du centre de l'Outreterre et sur laquelle Sigil est censée tournoyer !"~ */
  IF ~~ THEN REPLY #12793 /* ~"Oui… Continue…"~ */ GOTO 45
  IF ~~ THEN REPLY #12794 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12795 /* ~"J'écouterai peut-être la suite une autre fois. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #12603 /* ~Il acquiesce. "Dis-moi, matois : si tu peux pas passer de Sigil dans l'Outreterre ou de l'Outreterre dans Sigil, qui peut affirmer qu'elle existe vraiment, hein ?" Il acquiesce avec sagesse, content de sa petite impasse. "Je pense que Sigil s'étale sur tous les plans, à la fois Partout et Nulle part."~ */
  IF ~~ THEN REPLY #12796 /* ~"Peut-être. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12797 /* ~"Cette théorie est intéressante. Je vais y réfléchir. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY #12604 /* ~"Ah, matois, les portes. Je vais t'expliquer : la Cage est pleine de portes. Ces portes sont partout, dans toute la cité de Sigil… mais tu peux pas les voir, sauf si t'as la bonne clé. Chaque porte a sa clé et chaque clé est différente. Si t'as la bonne clé, tu peux passer et aller où te mène la porte."~ */
  IF ~~ THEN REPLY #12798 /* ~"D'accord, continue."~ */ GOTO 44
  IF ~~ THEN REPLY #12799 /* ~"Avant de te laisser continuer, je voudrais te demander autre chose…"~ */ GOTO 15
  IF ~~ THEN REPLY #12800 /* ~"J'écouterai peut-être la suite une autre fois. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 47 // from: 39.2
  SAY #12605 /* ~"Y a pas beaucoup de travail dans la Ruche, vraiment… la plupart essaie de trouver de la bouffe et de rester en vie. Tu peux recueillir les morts, comme les Récupérateurs… ou tu peux brûler de la vermine à cerveau pour une prime."~ */
  IF ~~ THEN REPLY #12801 /* ~"Les Récupérateurs ?"~ */ GOTO 48
  IF ~~ THEN REPLY #12802 /* ~"Il y a des gens qui achètent des rats morts ?"~ */ GOTO 18
  IF ~~ THEN REPLY #12803 /* ~"Les vermines à cerveau ?"~ */ GOTO 22
  IF ~~ THEN REPLY #12804 /* ~"Je vois. J'ai une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #12805 /* ~"Très bien. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 48 // from: 47.0 52.0 58.0
  SAY #12606 /* ~Il acquiesce. "N'importe qui peut recueillir des cadavres et les porter à la Morgue, les Hommes-Poussière te donnent une pièce de cuivre par mort, je crois. Les Récupérateurs font ça pour vivre, pillant en général les corps avant de les vendre. Je sais…" Il baisse la voix et regarde rapidement autour. "… que certains aident les biges à se perdre, si tu vois c'que je veux dire. Des ordures, ouais."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12806 /* ~"Se perdre ?"~ */ EXTERN ~DMORTE~ 161
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12807 /* ~"Se perdre ?"~ */ GOTO 57
  IF ~~ THEN REPLY #12808 /* ~"Qu'est-ce que tu disais sur les gens qui achètent des rats morts ?"~ */ GOTO 18
  IF ~~ THEN REPLY #12809 /* ~"Intéressant. J'ai une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #12810 /* ~"Très bien. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 49 // from: 21.0 41.0 56.0
  SAY #12607 /* ~"J'essaie, matois. Ça fait partie de mon activité, je crois… la plupart des types ici sont méfiants et pas aimables, mais tout matois doit savoir que Crédo a toujours le sourire et prépare beaucoup de rats fraîchement cuits pour eux !" Il te fait un clin d'œil.~ */
  IF ~~ THEN REPLY #12811 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12812 /* ~"C'est compréhensible. Au revoir, Crédo."~ */ GOTO 59
END

IF ~~ THEN BEGIN 50 // from: 15.8 25.1
  SAY #12608 /* ~"Ah, la Maîtresse de Sigil. Je parle pas de la Dame, matois… et tu d'vrais pas poser des questions non plus. Ça t'portera malheur, ouais." Il fait un signe semi-circulaire sur sa poitrine.~ */
  IF ~~ THEN REPLY #12813 /* ~"Alors, je voudrais te demander autre chose."~ */ GOTO 15
  IF ~~ THEN REPLY #12814 /* ~"Alors, je m'en vais. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 15.9 39.3
  SAY #12609 /* ~Il semble un peu surpris. "Pharod ? Pourquoi un matois chercherait un homme comme lui ?"~ */
  IF ~~ THEN REPLY #12815 /* ~"C'est une longue histoire - il faut juste que je le trouve."~ */ GOTO 52
  IF ~~ THEN REPLY #12816 /* ~"Ça ne te regarde pas, chasseur de rats."~ */ GOTO 53
  IF ~~ THEN REPLY #12817 /* ~"Oublie ce que je t'ai demandé. Réponds à autre chose…"~ */ GOTO 15
  IF ~~ THEN REPLY #12818 /* ~"Laisse tomber, peu importe. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 52 // from: 51.0 53.0
  SAY #12610 /* ~"C'est le chef d'une bande de Récupérateurs, il… se déplace tout le temps, sûrement pour éviter les ennuis. Il passe de temps en temps dans le Square du Chiffonnier. C'est un type très rusé, Pharod. Vaut mieux que tu t'méfies de ce matois."~ */
  IF ~~ THEN REPLY #12819 /* ~"Les Récupérateurs ?"~ */ GOTO 48
  IF ~~ THEN REPLY #12820 /* ~"Où se trouve ce 'Square du Chiffonnier' ?"~ */ GOTO 58
  IF ~~ THEN REPLY #12821 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12822 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #12611 /* ~Crédo fronce les sourcils. "Bien, matois, c'est pas mon affaire de savoir où s'trouve ce genre de types."~ */
  IF ~~ THEN REPLY #12823 /* ~"Il faut que je le trouve, c'est important… Excuse-moi d'avoir été désagréable. Tu pourrais m'aider ?"~ */ GOTO 52
  IF ~~ THEN REPLY #12824 /* ~"Bon, très bien. Tu peux peut-être répondre à autre chose…"~ */ GOTO 15
  IF ~~ THEN REPLY #12825 /* ~"Soit ! Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 54 // from: 15.10 39.4
  SAY #12612 /* ~"Désolé, matois - j'en ai pas vu récemment."~ */
  IF ~~ THEN REPLY #12826 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12827 /* ~"Bon, je vais continuer à chercher. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 55 // from: 40.0
  SAY #12613 /* ~"Sûrement, matois. Le Bar de la Poussière accumulée se trouve en face de la Morgue et celui du Cadavre fumant à l'est de là.~ */
  IF ~~ THEN REPLY #12828 /* ~"Merci. Tu as parlé d'un endroit dangereux, non ?"~ */ GOTO 41
  IF ~~ THEN REPLY #12829 /* ~"Merci. Mais j'ai une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #12830 /* ~"Je m'arrêterai peut-être dans l'un de ces endroits. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 41.2
  SAY #12614 /* ~"Ah, matois… perdu. Dans le livre des morts."~ */
  IF ~~ THEN REPLY #12831 /* ~"Je vois… Mais toi, tu as plutôt l'air sympathique…"~ */ GOTO 49
  IF ~~ THEN REPLY #12832 /* ~"Je comprends. Une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #12833 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 48.1
  SAY #12615 /* ~"C'est ça, matois… perdu. Dans le livre des morts."~ */
  IF ~~ THEN REPLY #12834 /* ~"Je vois. Qu'est-ce que tu disais sur les gens qui achètent des rats morts ?"~ */ GOTO 18
  IF ~~ THEN REPLY #12835 /* ~"Je comprends. J'ai une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #12836 /* ~"Très bien. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 52.1 62.0
  SAY #12616 /* ~"J'vais te montrer, matois - donne-moi ta carte." L'homme désigne un point sur la carte, y laissant une empreinte grasse par la même occasion.~ */
  IF ~~ THEN REPLY #12837 /* ~"Merci. Tu as parlé de Récupérateurs, non ?"~ */ GOTO 48
  IF ~~ THEN REPLY #12838 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12839 /* ~"Merci du renseignement. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 3.4 15.12 16.2 17.2 18.3 19.3 20.1 21.2 22.2 23.4 24.2 25.3 26.3 27.3 28.3 29.3 30.3 33.2 34.2 35.3 36.3 37.3 38.2 39.6 40.3 41.4 42.2 43.3 44.2 45.1 46.2 47.4 48.4 49.1 50.1 51.3 52.3 53.2 54.1 55.2 56.2 57.2 58.2 62.2 63.1
  SAY #12617 /* ~Il te touche le bras : "Je vois que tu t'en vas, matois, mais avant, qu'est-ce que tu dirais d'un de ces petits rats délicieux ? Pour le voyage, disons ?"~ */
  IF ~~ THEN REPLY #12840 /* ~"Pourquoi pas…"~ */ GOTO 5
  IF ~~ THEN REPLY #12841 /* ~"Je préférerais manger ma langue."~ */ GOTO 4
  IF ~~ THEN REPLY #12842 /* ~"Non, merci. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",2)
~ THEN BEGIN 60 // from:
  SAY #12618 /* ~"Salut, matois ; te revoilà. T'as changé d'avis ? T'es revenu pour un des délicieux rats de Crédo ?" Il agite son bâton à rats comme pour te faire envie.~ */
  IF ~~ THEN REPLY #12843 /* ~"Pourquoi pas… Qu'est-ce que tu me proposes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #12844 /* ~"Je préférerais manger ma langue."~ */ GOTO 4
  IF ~~ THEN REPLY #12845 /* ~"Non, pas aujourd'hui. Mais, j'ai quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12846 /* ~"Non, merci. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~  Global("Creeden","AR0300",3)
~ THEN BEGIN 61 // from:
  SAY #12619 /* ~"Salut, matois ; rebonjour. Cette fois, est-ce que je vais réussir à te persuader de goûter à l'un de ces délicieux rats ? J'sais que t'as pas aimé l'autre fois, mais Crédo a peut-être un autre parfum qui te plaira plus…"~ */
  IF ~~ THEN REPLY #12847 /* ~"Pourquoi pas… Qu'est-ce que tu me proposes ?"~ */ GOTO 5
  IF ~~ THEN REPLY #12848 /* ~"Ça ne m'intéresse pas, chasseur de rats."~ */ GOTO 14
  IF ~~ THEN REPLY #12849 /* ~"Non, pas aujourd'hui. Mais, j'ai quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #12850 /* ~"Non, merci. Au revoir."~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 23.1
  SAY #12620 /* ~"Dans le temps, ça aurait été plus simple de te répondre, matois… tu vois, les petits salopards se font rares ces derniers temps. Je les piégeais facilement dans les rues sombres et les celliers, mais je les ai trop chassés. Essaie peut-être le Square du Chiffonnier ; toutes ces piles d'ordures plaisent aux rats."~ */
  IF ~~ THEN REPLY #12851 /* ~"Où se trouve ce 'Square du Chiffonnier' ?"~ */ GOTO 58
  IF ~~ THEN REPLY #12852 /* ~"Merci. J'ai une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #12853 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 15.0
  SAY #48396 /* ~Il réfléchit un moment. "Oui, je sais de quoi tu parles. J'ai vu une jeune fille qui s'appelait Pointe-en-Fer aller par-là une fois, alors que j'étais à la recherche de rats. Mais je ne sais pas comment elle a fait. Tu devrais la trouver au nord-est d'ici, en train de farfouiller dans un tas de bois."~ */
  IF ~~ THEN REPLY #48397 /* ~"Merci. J'avais une autre question…"~ */ GOTO 15
  IF ~~ THEN REPLY #48398 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 59
END
