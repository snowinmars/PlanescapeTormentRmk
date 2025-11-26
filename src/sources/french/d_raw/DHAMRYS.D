// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAMRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAMRYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3020 /* ~Cet homme à la mâchoire carrée se tourne vers toi, arborant un large sourire. "Comment vas-tu, matois ? Belle journée, n'est-ce pas ?" Il plisse les yeux, puis te tend la main.~ */
  IF ~~ THEN REPLY #3021 /* ~En lui serrant la main : "Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36645 /* ~"Ignore l'homme."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36646 /* ~"Hamrys, à ton service, membre de l'Harmonium et fabricant de cercueils de qualité pour les défunts. Je crois que je te connais, non… ? Voyons si je me souviens…" Il regarde l'autre client en souriant. "Laisse-moi te dire que j'étais doué pour les noms à l'Harmonium. Je connaissais tout le monde dans le Quartier…"~ */
  IF ~~ THEN REPLY #36647 /* ~Mensonge : "Je m'appelle Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Hamrys_1","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36648 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36649 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 14.2 15.3 16.1 17.1 18.0 19.0 20.1 21.0 23.1 24.1 25.1 29.1 31.1 32.1 33.1 34.1 35.1 36.1 37.2 38.3 39.1 40.1 41.1 42.1 43.1 45.0 47.0 48.1 49.2 50.2 52.1 54.2 55.2 57.1 59.1 60.0 61.3 62.1 63.1 64.1 65.0 66.0 67.2 68.2 69.1 71.2 72.2 73.0 74.1 76.0
  SAY #36650 /* ~Il acquiesce. "Pose ta question." Il te fait un large sourire.~ */
  IF ~  Global("Dream","GLOBAL",3)
Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36651 /* ~"Je voudrais acheter un oreiller de cercueil."~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36652 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 19
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36653 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ GOTO 20
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #36654 /* ~J'ai perdu un journal. Tu n'en aurais pas vu un ?~ */ GOTO 22
  IF ~  Global("Know_Hamrys_Father","GLOBAL",1)
~ THEN REPLY #36655 /* ~"J'ai entendu dire que ton père était mort. Tu peux me dire ce qui s'est passé ?"~ */ GOTO 41
  IF ~  !Global("Release_Dimtree","GLOBAL",5)
~ THEN REPLY #36656 /* ~"Qui est ton ami, là ?"~ */ GOTO 42
  IF ~~ THEN REPLY #36657 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 46
  IF ~~ THEN REPLY #36658 /* ~"Qu'est-ce que tu peux me dire sur la cité de Sigil ?"~ */ GOTO 55
  IF ~~ THEN REPLY #36659 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36660 /* ~Il te fait un signe de tête. "Ha ! Alors tu es ici pour acheter. Je peux te l'assurer, ce que je fais ici est le résultat de ma passion. La vraie valeur de ma profession réside dans la fabrication du cercueil… le faire, et le faire bien. C'est un acte de création méthodique, chaque pièce doit trouver sa place pour compléter le tout. C'est comme une métaphore pour la philosophie de l'Harmonium… nous créons l'ordre, et il n'est que beauté…"~ */
  IF ~~ THEN REPLY #36661 /* ~"J'ai simplement besoin d'un oreiller…"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36662 /* ~Il acquiesce à nouveau. "J'ai besoin de cinquante pièces de cuivre pour les planches de base, bien que la dépense ne couvre pas le temps de travail. Habituellement, c'est soit blanchi à la chaux, soit peint de la couleur du choix de la personne. Les planches elles-mêmes font habituellement un seizième d'empan d'épaisseur, parfois plus, en fonction de la nature du cadavre, si c'est un humain ou non. Ou s'ils craignent que la personne ne se réveille." Il rit.~ */
  IF ~~ THEN REPLY #36663 /* ~"J'ai simplement besoin d'un oreiller…"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36664 /* ~Il acquiesce à nouveau. "Certains préfèrent le pin bytopien, qui est traditionnel et parfait, mais je préfère les matériaux lourds de type chêne arboréen, simplement à cause de leur poids. Même un vingtième de pouce de chêne est plus solide qu'un seizième d'empan de pin…" Il s'interrompt un instant.~ */
  IF ~~ THEN REPLY #36665 /* ~"J'ai dit que j'avais simplement besoin d'un oreiller…"~ */ GOTO 6
  IF ~~ THEN REPLY #36666 /* ~"J'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36667 /* ~Il te fait un signe de tête. "Ensuite, j'aurai besoin d'une vingtaine multipliée par une vingtaine de vis à bois en métal, de huit pouces par un et quart. Un tas de boutiques en ont dans les environs, elles ne sont pas difficiles à trouver. J'aurai aussi besoin d'épingles en métal pour fixer la doublure intérieure, vaut mieux les prendre avec le reste. Puis il reste les lattes et les renforts d'angle, en fonction de ce que tu veux."~ */
  IF ~~ THEN REPLY #36668 /* ~"Tu m'écoutes ? J'ai dit que j'avais simplement besoin d'un oreiller !"~ */ GOTO 7
  IF ~~ THEN REPLY #36669 /* ~"J'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36670 /* ~Il porte la main à son menton. "Et même si je conserve la couleur du bois, quelquefois le client veut le peindre d'une certaine couleur, ou le graver… Je ne fais d'habitude pas ce genre de finition, bien que je le puisse, mais je sous-traite…" Il s'interrompt pour prendre son souffle. "Et les poignées à elles seules, c'est une autre histoire…" Il fait un signe de tête entendu.~ */
  IF ~~ THEN REPLY #36671 /* ~Soupir : "Qu'est-ce qu'elles ont les poignées ?"~ */ GOTO 8
  IF ~~ THEN REPLY #36672 /* ~"Si tu ne la fermes pas et que tu ne me donnes pas un oreiller, tu vas le regretter… longtemps."~ */ GOTO 10
  IF ~~ THEN REPLY #36673 /* ~"J'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #36674 /* ~"Un gros truc, les poignées : dans les poignées, tout dépend de la manière dont le cercueil sera porté : si tu as des personnes qualifiées pour porter le cercueil à hauteur d'épaule, tu n'as même pas à te soucier des poignées. Les porteurs professionnels ne les utilisent jamais, vois-tu. Si des amis ou la famille portent le cercueil, alors les poignées sont nécessaires. Tu auras besoin de poignées de corde ou même métalliques…" Il te regarde d'un air satisfait.~ */
  IF ~~ THEN REPLY #36675 /* ~"Tout ça, c'est très bien, mais je suis là parce que je veux un oreiller… Tu en as un ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36676 /* ~"Un exemple : je crois que le plus beau cercueil que j'aie jamais vu était en pin clair. Je ne sais pas où ils ont pu le trouver, dans la Bytopie ou ailleurs… Quoi qu'il en soit, il était merveilleusement assemblé, et décoré avec une bande en séquoia. Mais cet effet était gâché par toutes les cordes de chanvre qui entouraient la chose. Bien sûr, les porteurs avaient quelque chose à tenir, mais ruiner la beauté du cercueil avec une corde si mal tissée…" Hamrys secoue la tête.~ */
  IF ~~ THEN REPLY #36677 /* ~"Tout ça, c'est sûrement passionnant, mais je veux juste un oreiller…"~ */ GOTO 10
  IF ~~ THEN REPLY #36678 /* ~"J'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 9.0
  SAY #36679 /* ~"Puis il y a le problème des mesures. Elles peuvent être difficiles, j'essaie de le faire moi-même, car à l'occasion un client oublie de me communiquer la race d'un mort ou oublie quelque chose comme la taille… très important en effet. Aussi, si le client est toujours vivant, j'essaie de prévoir, au cas où le client 's'envelopperait' avant de mourir, tu vois ?" Il s'interrompt. "Puis il y a la fabrication elle-même…"~ */
  IF ~~ THEN REPLY #36680 /* ~"Hamrys…"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36681 /* ~"Il y a différentes façons de fixer les bouts et les côtés au fond du cercueil, et les uns aux autres. Certains utilisent des lattes ou des renforts d'angle avec un tas de vis à bois pour les maintenir. Tu peux aussi utiliser la méthode des dents de fiélons et couper des angles rentrants et sortants alternés le long des côtés à fixer, pour les assembler, comme une mâchoire de fiélon. Ça demande un peu plus de travail et de précision, mais le résultat est soigné et solide." Il s'interrompt pour reprendre sa respiration.~ */
  IF ~~ THEN REPLY #36682 /* ~"Hamrys…"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36683 /* ~"Puis il y a le couvercle. Le couvercle nécessite une monture ou une bordure, faite d'une bande de bois clouée à la boîte ou découpée sur le bord même. Une fois que tu as quelques trous pilotes percés dans la boîte principale, enfonce les vis dans le haut du couvercle, séparées d'environ la moitié d'un empan…" Tu as l'impression qu'il ne va pas arrêter de parler, maintenant qu'il est lancé.~ */
  IF ~~ THEN REPLY #36684 /* ~"Si tu ne la fermes pas et que tu ne me donnes pas un oreiller, tu vas le regretter… sérieusement." ~ */ GOTO 13
  IF ~~ THEN REPLY #36685 /* ~"J'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36686 /* ~Tu captures finalement son attention. Il fronce les sourcils, un air troublé sur son visage. "Pardon ?"~ */
  IF ~~ THEN REPLY #36687 /* ~"J'ai dit que j'avais besoin d'un oreiller de cercueil. C'est tout, juste un oreiller. Tu en as un ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36688 /* ~Il paraît soulagé et sourit. "Un oreiller ? Ah, je pensais que tu avais besoin d'un cercueil entier." Il porte à nouveau la main à son menton. "Je suis vraiment désolé, mais nos stocks d'oreillers sont épuisés. Avec les problèmes à l'entrepôt et tout…"~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36689 /* ~"Des problèmes à l'entrepôt ?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36690 /* ~"Oui, tu as parlé de problèmes. De quoi il s'agit déjà ?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #36691 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36692 /* ~"J'en ai assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #36693 /* ~"Oui… L'entrepôt souffre de *problèmes internes*, comme ils disent. Je ne peux pas ravitailler mon stock tant que leurs problèmes ne sont pas résolus." Il fronce les sourcils. "L'Harmonium ne laisserait jamais les choses en venir à ce point…" Le ton de sa voix baisse petit à petit comme s'il réfléchissait, puis il te regarde. "Peut-être pourrais-tu te renseigner sur ces problèmes pour moi ?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36694 /* ~"J'ai réglé le problème de l'entrepôt. Je vais aller y chercher un oreiller."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36695 /* ~"Je crois que je n'ai pas le choix si je veux un oreiller. Je m'en charge."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Il semble y avoir des problèmes à l'entrepôt. Si je veux récupérer un oreiller de cercueil, il va falloir que je me renseigne sur ce qui se passe et que je m'en occupe.~ */ GOTO 16
  IF ~~ THEN REPLY #36696 /* ~"C'est pas mon problème… Pourquoi tu ne t'en occupes pas ?"~ */ GOTO 17
  IF ~~ THEN REPLY #36697 /* ~"Je vais y réfléchir. J'ai quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #36698 /* ~"Il faut que je m'en aille, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.0 67.0 68.0
  SAY #36699 /* ~Il sourit. "Excellent. Si tu t'occupes de cette affaire correctement, peut-être auras-tu ton oreiller gratuitement…" Il te semble qu'il va se remettre à rabâcher. "Ça ne semble pas être un paiement généreux, mais permets-moi de t'en dire plus sur la fabrication de ces oreillers…"~ */
  IF ~~ THEN REPLY #36700 /* ~"Non merci ! Je m'y mets tout de suite. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #36701 /* ~"Une autre fois, j'ai des questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY #36702 /* ~Il fronce les sourcils. "J'ai essayé, mais sans succès. J'ai porté l'affaire devant l'Harmonium, mais ils ne peuvent pas m'aider à ce stade." Il te regarde innocemment et lève les mains dans un geste d'abandon. "Si tu as vraiment besoin de l'oreiller…" Il te regarde, attendant quelque chose.~ */
  IF ~~ THEN REPLY #36703 /* ~"Très bien. Je vais voir ça."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Il semble y avoir des problèmes à l'entrepôt. Si je veux récupérer un oreiller de cercueil, il va falloir que je me renseigne sur ce qui se passe et que je m'en occupe.~ */ GOTO 16
  IF ~~ THEN REPLY #36704 /* ~"Je vais y réfléchir. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36705 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0
  SAY #36706 /* ~Il claque des doigts. "Bien sûr ! Adahn ! Je pensais bien t'avoir reconnu. Bref, tu as besoin de mes services ?" Il t'observe, puis sourit, saisissant l'occasion de faire une plaisanterie à tes dépens. "Il me semble que tu as désespérément besoin d'un cercueil, et rapidement." Il paraît satisfait de lui-même.~ */
  IF ~~ THEN REPLY #36707 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36708 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.1
  SAY #36709 /* ~Il fronce les sourcils, en réfléchissant. "Je ne peux pas dire que j'aie entendu parler de ce gars. Le Maître des Os, tu dis ? Un titre amusant." Il sourit. "Dans un sens, je pourrais dire que c'est aussi mon titre, étant donné que j'ai tant à faire avec les cadavres. Je sais que la plupart sont encore charnus, mais il m'est souvent arrivé de faire des cercueils uniquement pour des os. Il y avait par exemple ce gars qui s'était fait nettoyer les os par quelque chose, jamais su quoi…"~ */
  IF ~~ THEN REPLY #36710 /* ~En l'interrompant : "J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36711 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36712 /* ~Il tique, puis hausse les épaules. "Pas la moindre idée de qui pourrait faire une telle chose. J'ai enterré pas mal de crânes dans le temps. Tu vois, la plupart des gens ne pensent pas à enterrer des crânes dans un cercueil, mais j'ai plein d'histoires de cercueils étranges. Entre autres, il y en a sur des gens qui voulaient simplement enterrer des crânes car le reste était introuvable. Il y avait un homme dont le corps avait tant été ravagé par les Xaositectes que…"~ */
  IF ~~ THEN REPLY #36713 /* ~En l'interrompant : "C'est quoi un Xaositecte ?"~ */ GOTO 21
  IF ~~ THEN REPLY #36714 /* ~En l'interrompant : "J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36715 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36716 /* ~Il s'arrête un certain temps avant de répondre à ta question. "Il n'y a pas moyen de répondre à cette question, l'ami. C'est l'une des factions de Sigil qui vénère le chaos." Il réfléchit, puis hausse les épaules. "La moitié du temps, il est impossible de leur parler, ils balbutient quelques phrase incomplètes et passent d'un sujet à l'autre. Leur esprit, s'ils en ont un, doit être une sacrée pagaille. Mais comme je le disais…"~ */
  IF ~~ THEN REPLY #36717 /* ~En l'interrompant : "J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36718 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.3
  SAY #36719 /* ~Il hausse les épaules. "Je ne peux pas dire que j'en ai vu… mis à part le mien. J'ai l'habitude de garder une trace de mes notes et réflexions, et c'est une lecture fantastique, que de revenir sur ses pensées datant d'un mois, un mois et demi." Il te fait un signe de tête comme si tu comprenais exactement ce dont il parlait.~ */
  IF ~~ THEN REPLY #36720 /* ~"C'est bien, mais…"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36721 /* ~Il continue son rabâchage. "J'ai demandé à plusieurs imprimeurs du Quartier des Gratte-Papier s'il était possible de les imprimer. On m'a dit qu'ils relataient plutôt bien la vie dans la cité et ce que j'ai pu observer lors de mes charges à l'Harmonium. Même si je n'ai pas eu d'éducation particulière, beaucoup pensent que mon style est frappant… mais cela suffit. Il serait plus facile de te rendre compte par toi-même : Je pourrais te lire mes passages les plus perspicaces…"~ */
  IF ~~ THEN REPLY #36722 /* ~"D'accord, vas-y."~ */ GOTO 24
  IF ~~ THEN REPLY #36723 /* ~"Pas maintenant, j'ai quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #36724 /* ~"Ça suffit pour aujourd'hui, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36725 /* ~Hamrys lit plusieurs passages de son journal monotone, tous plus ou moins ennuyeux. Tu cherches un moyen de t'échapper, lorsqu'il mentionne quelque chose à propos de son père que tu ne comprends pas vraiment. Sans raison apparente, cela attire ton attention.~ */
  IF ~~ THEN REPLY #36726 /* ~"Attends, tu as dit que ton père avait disparu ?"~ */ GOTO 25
  IF ~~ THEN REPLY #36727 /* ~"Tout ça, c'est très bien, mais j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36728 /* ~"Ça suffit pour aujourd'hui, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36729 /* ~Hamrys lève la main pour arrêter ton interruption jusqu'à ce qu'il finisse le paragraphe de son journal assommant. "Alors, qu'est-ce que tu en penses ? Plus perspicace que ce à quoi on s'attend de la part d'un membre de l'Harmonium, non ?" Il sourit. Il semble avoir ignoré ton interruption.~ */
  IF ~~ THEN REPLY #36730 /* ~"Oui, très perspicace. Tu as dit que ton père avait disparu ?"~ */ GOTO 26
  IF ~~ THEN REPLY #36731 /* ~"En fait, tes écrits sont… plus que je ne peux ingurgiter en une seule fois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36732 /* ~"J'ai assez entendu ta voix pour le restant de mes jours. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 41.0
  SAY #36733 /* ~Il acquiesce. "Oh, oui. Il y a de nombreuses années. Mon père était un tailleur de pierres de talent, et il ne fabriquait pas que des sarcophages mais était aussi doué pour la conception des tombes. Les gens de tout Sigil…" La pièce s'évanouit sous tes yeux, alors que des souvenirs envahissent ton conscient…~ */
  IF ~  !Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36734 /* ~Détends-toi et essaie de te rappeler.~ */ DO ~SetGlobal("Hamrys_Mem","AR0506",1)
PlaySoundNotRanged("SPTR_01")
AddexperienceParty(500)
~ JOURNAL #36029 /* ~Je crois que j'ai loué les services du père de Hamrys pour construire un tombeau et que je l'ai ensuite tué. Je ne sais pas pourquoi j'aurais fait ça…~ */ GOTO 27
  IF ~~ THEN REPLY #36735 /* ~Refoule tes souvenirs et continue à écouter Hamrys.~ */ GOTO 29
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #68426 /* ~Détends-toi et essaye de te souvenir.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.2
  SAY #36736 /* ~Tu te vois debout dans cette même boutique, parlant avec un vieil homme, et un enfant est assis et joue dans un coin. Sur le comptoir, entre le marchand et toi, se trouve un ensemble de plans. Il semble t'expliquer la complexité de la construction d'une tombe. Tout devient noir lorsque tu essaies d'examiner les plans.~ */
  IF ~~ THEN REPLY #36737 /* ~Continue.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #36738 /* ~Lorsque ta vue revient, tu te vois debout dans une caverne, devant une tombe. Un slogan est gravé au-dessus de l'entrée : Conçu pour l'Eternité. Le commerçant est debout à tes côtés, arborant un large sourire. Il t'indique quelque chose et commence à marcher dans la tombe. Tu lui emboîtes rapidement le pas et sors ta lame…~ */
  IF ~~ THEN REPLY #36739 /* ~Continue.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.1 28.0
  SAY #36740 /* ~Tu te retrouves de nouveau dans la boutique de Hamrys. Il te regarde d'un air inquiet. "Est-ce que tout va bien ?"~ */
  IF ~~ THEN REPLY #36741 /* ~"Dis-moi ce qui est arrivé à ton père."~ */ GOTO 30
  IF ~~ THEN REPLY #36742 /* ~"Je vais bien, j'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36743 /* ~"Non, il faut que je parte. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36744 /* ~"Il a disparu un beau jour, laissant ses affaires en cours. Le plus ennuyeux est qu'il a fallu longtemps pour régler les dettes causées par sa disparition. Et dans une certaine mesure, je suis toujours en train de régler les comptes. Mais j'ai tout de même une certaine aptitude pour le travail et…" Il soupire légèrement et regarde au loin.~ */
  IF ~~ THEN REPLY #36745 /* ~"Continue."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #36746 /* ~Il hausse les épaules. "Désolé, je rêvais… La disparition de mon père est la raison pour laquelle j'ai rejoint l'Harmonium, et pour laquelle je l'ai plus tard quitté. J'avais tout d'abord un désir brûlant de savoir ce qui lui était arrivé, et plus tard me suis senti obligé de continuer son œuvre." Il soupire. "Je n'ai jamais trouvé les réponses à mes questions. Ce qui est arrivé est un grand mystère…" Il redevient silencieux.~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36747 /* ~"Est-ce que ton père gardait les plans des tombes qu'il construisait ?"~ */ GOTO 32
  IF ~~ THEN REPLY #36748 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36749 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36750 /* ~Il réfléchit un instant. "Oui, en effet. Lorsque j'ai atteint l'âge d'hériter de ses affaires, j'ai parcouru ses registres. Ils étaient assez complets. Pourquoi ?"~ */
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36751 /* ~"Si je te décrivais une tombe, tu pourrais me dire si c'est ton père qui l'a construite ?"~ */ GOTO 33
  IF ~~ THEN REPLY #36752 /* ~"Pour rien, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36753 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36754 /* ~Il fronce les sourcils, puis hausse les épaules. "Je ne peux qu'essayer. Mon entraînement à l'Harmonium m'a doté d'une excellente mémoire, et je pourrais reconnaître le travail de mon père si tu me donnais assez de détails." Il te regarde, dans l'expectative.~ */
  IF ~~ THEN REPLY #36755 /* ~Décris la tombe de mémoire. ~ */ GOTO 34
  IF ~~ THEN REPLY #36756 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36757 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36758 /* ~Il réfléchit pendant un certain temps. "Il est probable que la tombe que tu décris soit l'œuvre de mon père, car le slogan est la marque de notre famille depuis des générations." Il s'arrête et te regarde étrangement. "Cette tombe, où se trouve-t-elle ?"~ */
  IF ~~ THEN REPLY #36759 /* ~Décris le lieu.~ */ GOTO 35
  IF ~~ THEN REPLY #36760 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36761 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36762 /* ~Tu décris l'emplacement en détail, te surprenant toi-même de ta connaissance de ces lieux. Hamrys te regarde d'un air inquiet. "Bizarre, je ne me souviens de rien dans les registres de la famille qui lui auraient permis de construire une tombe à cet endroit. Les Hommes-Poussière sont stricts en ce qui concerne les permis de construire, en particulier sous les rues de Sigil…"~ */
  IF ~~ THEN REPLY #36763 /* ~"Alors, tu reconnais l'endroit ?"~ */ GOTO 36
  IF ~~ THEN REPLY #36764 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36765 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36766 /* ~Il acquiesce de la tête avec enthousiasme. "Oh, oui. Ça me rappelle les catacombes de la Pierre Pleureuse." Il s'interrompt. "J'y ai jamais mis les pieds, mais j'ai bien souvent entendu décrire l'endroit du temps où je faisais partie de l'Harmonium."~ */
  IF ~~ THEN REPLY #36767 /* ~"Il faut que je sache si ton père a gardé les plans de cette tombe."~ */ GOTO 37
  IF ~~ THEN REPLY #36768 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36769 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #36770 /* ~"Oui… L'entrepôt où je stocke mes marchandises et mes papiers souffre de *problèmes internes*, comme ils disent. Une nouvelle direction, je n'y comprends rien. Je ne peux pas ravitailler mon stock et je crains de ne pouvoir récupérer mes papiers non plus." Il fronce les sourcils. "L'Harmonium ne laisserait jamais les choses en venir à ce point…" Le ton de sa voix baisse petit à petit comme s'il réfléchissait, puis il te regarde. "Peut-être pourrais-tu te renseigner sur ces problèmes pour moi ?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36771 /* ~"Des problèmes à l'entrepôt ?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36772 /* ~"Oui, tu as parlé de problèmes. De quoi il s'agit déjà ?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #36773 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36774 /* ~"Peu importe, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #36775 /* ~"Oui… L'entrepôt souffre de *problèmes internes*, comme ils disent. Je ne peux pas ravitailler mon stock tant que leurs problèmes ne sont pas résolus." Il fronce les sourcils. "L'Harmonium ne laisserait jamais les choses en venir à ce point…" Le ton de sa voix baisse petit à petit comme s'il réfléchissait, puis il te regarde. "Peut-être pourrais-tu te renseigner sur ces problèmes pour moi ?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36776 /* ~"J'ai réglé le problème de l'entrepôt. Je vais aller y chercher les plans."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36777 /* ~"Je suppose que je n'ai pas le choix si je veux ces plans. Je m'en charge."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Il semble y avoir des problèmes à l'entrepôt. Si je veux récupérer les plans du tombeau, il va falloir que je me renseigne sur ce qui se passe et que je m'en occupe.~ */ GOTO 39
  IF ~~ THEN REPLY #36778 /* ~"C'est pas mon problème… Pourquoi tu ne t'en occupes pas ?"~ */ GOTO 40
  IF ~~ THEN REPLY #36779 /* ~"Je vais y réfléchir. J'ai quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #36780 /* ~"Il faut que je m'en aille, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1 40.0 71.0 72.0
  SAY #36781 /* ~Il sourit. "Excellent. Si tu t'occupes correctement de cette affaire, peut-être auras-tu les plans gratuitement…" Il te semble qu'il va se remettre à rabâcher. "Ça ne semble pas être un paiement généreux, mais permets-moi de t'en dire plus sur la complexité de la création de ces plans…"~ */
  IF ~~ THEN REPLY #36782 /* ~"Non merci ! Je m'y mets tout de suite. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #36783 /* ~"Une autre fois, j'ai des questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #36784 /* ~Il fronce les sourcils. "J'ai essayé, mais sans succès. J'ai porté l'affaire devant l'Harmonium, mais ils ne peuvent pas m'aider." Il te regarde innocemment et lève les mains dans un geste d'abandon. "Si tu as vraiment besoin des plans…" Il te regarde, attendant quelque chose.~ */
  IF ~~ THEN REPLY #36785 /* ~"Très bien. Je vais voir ça."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 39
  IF ~~ THEN REPLY #36786 /* ~"Je vais y réfléchir. J'ai des questions…"~ */ JOURNAL #36028 /* ~Il semble y avoir des problèmes à l'entrepôt. Si je veux récupérer les plans du tombeau, il va falloir que je me renseigne sur ce qui se passe et que je m'en occupe.~ */ GOTO 2
  IF ~~ THEN REPLY #36787 /* ~"Laisse tomber. Au revoir."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.4
  SAY #36788 /* ~Il fronce les sourcils. "Eh bien, il a disparu il y a quelques temps de cela, et je ne peux qu'imaginer qu'il est mort. Où as-tu entendu cela ?"~ */
  IF ~~ THEN REPLY #36789 /* ~"Je ne m'en souviens pas. Tu dis qu'il a disparu ?"~ */ GOTO 26
  IF ~~ THEN REPLY #36790 /* ~"Peu importe, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36791 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.5
  SAY #36792 /* ~Il jette un coup d'œil au client. "Arbresombre ?" Il hausse les épaules, comme s'il ne l'avait pas encore remarqué. "Calme, dit pas grand-chose - pas vrai, Arbresombre ?" Arbresombre ne répond pas et regarde de la même expression absente. Quelques secondes après, il acquiesce. Hamrys hausse les épaules et se retourne vers toi. "Il est venu un jour et depuis c'est un habitué. Il n'a jamais rien acheté, mais ne cause pas de problèmes, alors je le laisse rester ici. Paraît pas dangereux. Tu vois, lorsque je faisais office à l'Harmonium, une partie de notre tâche consistait à prendre les gens sous notre aile, les protéger du chaos des rues, les pomponner…"~ */
  IF ~  Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36793 /* ~"Tu sais que c'est un zombi, n'est-ce pas ?"~ */ GOTO 43
  IF ~  !Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36794 /* ~"Je vois, j'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36795 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #36796 /* ~Il fronce les sourcils, regarde Arbresombre, puis toi. "Qu'est-ce que c'est que ces stupidités ? Arbresombre n'est pas un zombi. Il est peut-être calme, et ne remue pas beaucoup, mais c'est juste parce qu'il est doué pour écouter -"~ */
  IF ~~ THEN REPLY #36797 /* ~Donne un coup de poing à Arbresombre : "Regarde, Arbresombre est un zombi." ~ */ GOTO 44
  IF ~~ THEN REPLY #36798 /* ~"Peu importe. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36799 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #36800 /* ~Hamrys te regarde, choqué. "Au nom de l'Harmonium, qu'est-ce q- ?!" Tu gifles Arbresombre. Durement. Il ne sourcille pas. Hamrys devient rouge de colère et hurle. "Tu vas trop loin ! Je ne tolérerai pas qu'on frappe mes clients ! Par l'autorité de l'Harmonium, tu es en état d'arrestation -" Il s'arrête et s'interroge alors qu'Arbresombre ne réagit toujours pas.~ */
  IF ~~ THEN REPLY #36801 /* ~"C'est un zombi, Hamrys…"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #36802 /* ~Hébété, Hamrys contemple Arbresombre. "Je me demande comment il est mort." Tu as le sentiment que Hamrys ne saisit pas la situation. "Encore l'autre jour, il avait l'air tellement gaillard." Il grommelle, pour une fois à court de mots. "Ah, on dirait que ce vieil Arbresombre va avoir besoin d'un cercueil. Il a bien fait de finir ici. Mais quel type de cercueil…" Il semble s'apprêter à faire un discours.~ */
  IF ~~ THEN REPLY #36803 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36804 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 2.6
  SAY #36805 /* ~"Oui, le Bas Quartier…" Il se penche vers l'avant comme pour expliquer à un jeune enfant. "… tu sais, peu de nouveaux ou même de gens du Quartier le savent : la plupart des gens pensent que le Quartier a ce nom car il n'est pas aussi prestigieux que les autres quartiers, mais ça n'est pas tout. Sais-tu d'où vient le nom ? Humm ?" Il te regarde dans l'expectative.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #36806 /* ~"De tous les portails des Plans Inférieurs ?"~ */ GOTO 47
  IF ~~ THEN REPLY #36807 /* ~"Non, je ne sais pas d'où vient ce nom."~ */ GOTO 48
  IF ~~ THEN REPLY #36808 /* ~"Ça m'est égal. Tu peux me dire ce qu'il y a à voir dans le quartier ?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #36809 /* ~Il acquiesce, bien qu'il semble quelque peu déçu que tu le saches. "Oui, en effet. Ces portails vers les Plans Inférieurs sont en fait à l'origine de ce brouillard dans le ciel…" Il regarde en l'air, comme imaginant le ciel au-dessus de vos têtes. "… mais je suis sûr que tu es déjà au courant des mauvaises conditions de ce quartier."~ */
  IF ~~ THEN REPLY #36810 /* ~"Oui, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36811 /* ~"Non, dis-moi."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.1
  SAY #36812 /* ~"C'est à cause des portails vers les Plans Inférieurs ! Ils sont à l'origine du brouillard qui envahit cette zone. Heureusement, le vent qui provient de l'aiguille chasse la plus grande partie des brumes, mais elles peuvent atteindre les plus faibles et les rendre gravement malades." Il secoue tristement la tête. "Heureusement, mon entraînement à l'Harmonium m'a préparé à toutes sortes de conditions dangereuses, et après mes périples dans les Plans Inférieurs, le brouillard dans ce Quartier n'est pas grand-chose…"~ */
  IF ~~ THEN REPLY #36813 /* ~"Qu'est-ce qu'il y a à voir dans le Quartier ?"~ */ GOTO 49
  IF ~~ THEN REPLY #36814 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36815 /* ~"Il faut que je m'en aille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2 48.0
  SAY #36816 /* ~Il sourit. "Beaucoup, beaucoup. Par quoi commencer… S'il fallait ignorer tous les fours, les forges, les brasseries et les distilleries parmi les divers feux, sans parler des antres des alchimistes, des crématoriums, des salles de fumage de viande, et des brûleurs à charbon, et qu'on considère le Quartier comme un tout, on pourrait dire… Eh bien, il y a la Fonderie, la tour de siège et…" Il hésite et s'arrête pour réfléchir.~ */
  IF ~~ THEN REPLY #36817 /* ~"Parle-moi de la fonderie."~ */ GOTO 50
  IF ~~ THEN REPLY #36818 /* ~"Parle-moi de la tour de siège."~ */ GOTO 51
  IF ~~ THEN REPLY #36819 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36820 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0 52.0
  SAY #36821 /* ~"La Grande Fonderie est le quartier général des Adorateurs de la Source, que les néophytes appellent aussi les 'Hommes-Dieux', dû à leurs croyances qui veulent que tout un chacun puisse devenir une divinité." Il secoue la tête. "La Grande Fonderie est comme leur philosophie : une large structure qui ne produit que de la fumée." Il rit. "Tout de même, quand a-t-on vu pour la dernière fois un Croyant de la Source devenir subitement une divinité ? Jamais, de toute l'histoire de leur faction."~ */
  IF ~~ THEN REPLY #36822 /* ~"Parle-moi des Hommes-Dieux."~ */ GOTO 53
  IF ~~ THEN REPLY #36823 /* ~"Parle-moi de la tour de siège."~ */ GOTO 51
  IF ~~ THEN REPLY #36824 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36825 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1 54.0
  SAY #36826 /* ~"Ce gâchis couvert de lézardes ? C'est un des mystères du Quartier, mais j'ai quelques informations. Premièrement, elle n'a pas toujours été là, si je comprends bien. Elle est juste arrivée là une nuit, et personne n'a vu comment. Et tu as vu l'extérieur ? Elle a connu des batailles que la plupart ne pourraient pas imaginer. Moi, par contre, j'ai vu un peu de la Guerre Sanglante, et me suis même attaqué à un fiélon tanar'ri ou deux, avec seulement mes compagnons de l'Harmonium à mes côtés… et les traces sur cette tour semblent avoir été récoltées durant au moins plusieurs siècles." Il s'interrompt un instant.~ */
  IF ~~ THEN REPLY #36827 /* ~"Continue."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #36828 /* ~"Maintenant, écoute bien : mon expérience me permet de connaître l'origine de certaines des traces qui décorent la tour : certaines sont des explosions d'acide, venant probablement de quelque grand sorcier, certaines viennent des dents acérées des tanar'ris, d'autres ressemblent à des détonations de globes d'loth ou de fouets cornugon de baatezus. Quoi qu'il en soit, une grande partie des armes incrustées sur les côtés sont d'un genre que je n'ai jamais vu, et je m'y connais en armes de tous les mondes et de tous les plans. C'est à se demander ce qui se trouve à l'intérieur de la tour. Le lascar qui réussira à entrer aura probablement un musée à ses pieds. Intriguant, hein ?" Il te regarde fixement.~ */
  IF ~~ THEN REPLY #36829 /* ~"Parle-moi de la fonderie."~ */ GOTO 50
  IF ~~ THEN REPLY #36830 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36831 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.0
  SAY #36832 /* ~"En fait, l'ami, 'Hommes-Dieux' est le terme que les néophytes utilisent pour leur faction. Le véritable nom de leur organisation est en réalité les Adorateurs de la Source. Ils s'accrochent à une philosophie intéressante, mais loin d'être sans faille : ils pensent qu'on peut tous devenir une divinité si on se comporte correctement…" Il secoue la tête et prend un air songeur.~ */
  IF ~~ THEN REPLY #36833 /* ~"Continue."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #36834 /* ~"Comme mon service à l'Harmonium l'a rapidement prouvé, il y en a beaucoup qui ne deviendront jamais divins, quels que soient leurs efforts…" Il pouffe. "Néanmoins, les croyants de la Source travaillent dur…" Il hausse les épaules. "… et leur petite faction est assez charmante."~ */
  IF ~~ THEN REPLY #36835 /* ~"Parle-moi de la tour de siège."~ */ GOTO 51
  IF ~~ THEN REPLY #36836 /* ~"Tu peux me parler des autres factions ?"~ */ GOTO 61
  IF ~~ THEN REPLY #36837 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36838 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 2.7
  SAY #36839 /* ~"Sigil…" Il lâche un long soupir. "Sigil est la cité au centre de toutes choses, selon beaucoup. C'est la Cité des Portes. Il y a littéralement des milliers de portails ici. C'est le domaine de la Dame des Douleurs en personne." Il hausse les épaules. "Sigil… un sujet pouvant remplir des volumes, des volumes de volumes…"~ */
  IF ~~ THEN REPLY #36840 /* ~"Parle-moi de la Dame des Douleurs."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #36841 /* ~"Tu as parlé de portails. Tu en connais ?"~ */ GOTO 65
  IF ~~ THEN REPLY #36842 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36843 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #36844 /* ~"La Dame des Douleurs…" Hamrys se penche, et baisse légèrement le ton. "Un des plus grands mystères du multivers, tout le monde est d'accord. Je pense qu'elle a prouvé sans aucun doute que les femmes sont les créatures les plus dangereuses du multivers…" Il soupire.~ */
  IF ~~ THEN REPLY #36845 /* ~"Continue."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #36846 /* ~"Certains disent que c'est une déesse, une Puissance ayant élu domicile à Sigil. En vérité, elle n'obéit à aucune des règles concernant les Puissances que j'aie pu rencontrer. Les Puissances ont besoin d'adorateurs - ça leur donne leur puissance - mais la Dame n'aime pas être vénérée. Les gens qui tombent sous son ombre, ont leur chair déchirée par d'invisibles lames. J'ai vu d'horribles choses dans ma vie, des choses qui feraient fléchir les genoux des autres et les faire s'oublier. Ce n'est rien en comparaison d'une victime de la Dame."~ */
  IF ~~ THEN REPLY #36847 /* ~"Intéressant. Qu'est-ce que tu peux me dire d'autre ?"~ */ GOTO 58
  IF ~~ THEN REPLY #36848 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36849 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #36850 /* ~"Et puis, elle n'aime pas trop que les gens jouent aux dieux dans Sigil. Tu vois, peut-être que tu ne le sais pas, mais les Puissances ne peuvent pas entrer dans Sigil, ni Zeus, ni Râ, ni aucune autre. On ne sait pas comment, la présence de la Dame les tient à l'écart. Elles ne peuvent pas entrer, pas une seule, et ça leur démange les boyaux comme tu n'imagines pas. Sigil est un fruit délicat que tout le monde voudrait cueillir, et les Puissances cherchent en permanence un moyen d'y entrer. Elles n'ont toujours pas réussi."~ */
  IF ~~ THEN REPLY #36851 /* ~"Continue."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #36852 /* ~"Ça va un peu plus loin que ça. La Dame les tient à l'écart, mais elle empêche aussi tous ceux qui sont à l'intérieur de lui causer des dégâts. Elle est aidée par notre faction, l'Harmonium, puisque nous apprécions l'ordre. Mais de temps en temps, un stupide lascar se met en tête de se battre dans les rues de la cité, de tuer un ou deux dabus, de se faire quelques Chaoteux, ou de jeter des sorts de destruction massive. Pas très bon, ça vexe la Dame. Elle aime pas qu'on fasse du mal à sa cité. Elle tuerait… ou enfermerait dans un dédale… pour une telle chose."~ */
  IF ~~ THEN REPLY #36853 /* ~"Dans un dédale ?"~ */ GOTO 60
  IF ~~ THEN REPLY #36854 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36855 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #36856 /* ~"Tu n'as pas entendu parler des dédales ?" Il te regarde d'un air condescendant. "T'es un bleu. La Dame a des prisons extra-dimensionnelles dans lesquelles elle place les criminels spéciaux. Elle prend des bouts de Sigil, les transforme en dédales, puis les sépare de Sigil. Tu peux revenir chez toi un soir ou marcher dans la rue, quand soudain tout change. Tu n'es plus à l'endroit où tu étais. Tu es piégé. La chanson dit qu'il y a une manière de sortir de chaque dédale, mais le temps de trouver, t'es sûr de mourir."~ */
  IF ~~ THEN REPLY #36857 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36858 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.1 62.0 63.0 64.0
  SAY #36859 /* ~Il te sourit, heureux de discuter. "Certainement, l'ami. Je peux t'en dire un peu plus sur l'Harmonium, les Mercenaires ou les Greffiers. Par quoi tu veux que je commence ?"~ */
  IF ~~ THEN REPLY #36860 /* ~"Par les Greffiers."~ */ GOTO 62
  IF ~~ THEN REPLY #36861 /* ~"L'Harmonium."~ */ GOTO 63
  IF ~~ THEN REPLY #36862 /* ~"Les Rectifieurs."~ */ GOTO 64
  IF ~~ THEN REPLY #36863 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36864 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #36865 /* ~Il acquiesce. "La Fraternité de l'ordre est le nom correct de leur faction. Ils sont dévoués à la loi et au savoir. Ils passent la plupart de leur temps à approfondir les lois. Je ne parle pas que des lois des hommes. Non, non, leurs recherches sont beaucoup plus approfondies. Ils veulent connaître le pourquoi et le comment de chaque chose. Étant donné leur dévotion pour les lois, ils s'occupent des tribunaux de Sigil et font office d'avocats, juges, juristes et autres."~ */
  IF ~~ THEN REPLY #36866 /* ~"Parle-moi d'une autre faction…"~ */ GOTO 61
  IF ~~ THEN REPLY #36867 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36868 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #36869 /* ~Il se dresse fièrement. "La première faction de Sigil est, bien sûr, l'Harmonium. Nous sommes une faction dévouée à la préservation de l'ordre et de la loi sur Sigil, et il n'y a pas de fonction plus importante. Le progrès ne peut se produire que dans un état de paix et d'harmonie. D'autres pensent autrement, mais ils n'ont pas notre détermination et en conséquence échoueront."~ */
  IF ~~ THEN REPLY #36870 /* ~"Parle-moi d'une autre faction…"~ */ GOTO 61
  IF ~~ THEN REPLY #36871 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36872 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #36873 /* ~Il sourit. "Les Rectifieurs défendent la justice. Pour eux, la justice surpasse tout. Elle est parfaite et absolue. Ils dévouent leur vie au maintien de la justice. Mais elle doit être maintenue correctement, selon les lois. Ils pensent avec fermeté qu'imposer la justice dans le multivers le débarrassera du mal et le rendra parfait."~ */
  IF ~~ THEN REPLY #36874 /* ~"Parle-moi d'une autre faction…"~ */ GOTO 61
  IF ~~ THEN REPLY #36875 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36876 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 55.1
  SAY #36877 /* ~Il rit. "Les portails ? Si j'en connais ?" Il s'interrompt. "Eh bien, aucun personnellement, excepté les plus courants. J'imagine qu'on peut les trouver dans pratiquement tous les Quartiers… les portails sont des choses amusantes, ils s'intervertissent, parfois ils disparaissent… ils sont difficiles à suivre." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #36878 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36879 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 66 // from:
  SAY #36880 /* ~"Hé, salut. Tu cherches un cercueil ?" Il sourit d'un air amical.~ */
  IF ~~ THEN REPLY #36881 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36882 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 68 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",1)
~ THEN BEGIN 67 // from:
  SAY #36883 /* ~Hamrys te sourit. "Rebonjour. As-tu pris une décision pour ce qui est de m'aider avec mes problèmes à l'entrepôt ?"~ */
  IF ~~ THEN REPLY #36884 /* ~"Oui, je vais t'aider."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Il semble y avoir des problèmes à l'entrepôt. Si je veux récupérer un oreiller de cercueil, il va falloir que je me renseigne sur ce qui se passe et que je m'en occupe.~ */ GOTO 16
  IF ~~ THEN REPLY #36885 /* ~"Non, j'y réfléchis toujours. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #36886 /* ~"J'ai quelques questions…"~ */ GOTO 2
END

IF WEIGHT #7 /* Triggers after states #: 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",2)
~ THEN BEGIN 68 // from:
  SAY #36887 /* ~Hamrys te sourit. "Rebonjour. As-tu pris une décision pour ce qui est de m'aider avec mes problèmes à l'entrepôt ?"~ */
  IF ~~ THEN REPLY #36888 /* ~"Oui, je vais t'aider."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Il semble y avoir des problèmes à l'entrepôt. Si je veux récupérer un oreiller de cercueil, il va falloir que je me renseigne sur ce qui se passe et que je m'en occupe.~ */ GOTO 16
  IF ~~ THEN REPLY #36889 /* ~"Non. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #36890 /* ~"J'ai quelques questions…"~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",3)
~ THEN BEGIN 69 // from:
  SAY #36891 /* ~Hamrys te sourit. "Rebonjour. As-tu résolu les problèmes de l'entrepôt ?"~ */
  IF ~~ THEN REPLY #36892 /* ~"Non, pas encore. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #36893 /* ~"Non, mais j'ai quelques questions à te poser…"~ */ GOTO 2
END

IF WEIGHT #5 /* Triggers after states #: 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",4)
~ THEN BEGIN 70 // from:
  SAY #36894 /* ~Hamrys te sourit. "Rebonjour, matois. As-tu trouvé l'oreiller que tu cherchais ?"~ */
  IF ~~ THEN REPLY #52763 /* ~"Oui. J'ai réglé les problèmes à l'entrepôt et récupéré l'oreiller."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Pillow_Quest","GLOBAL",5)
~ JOURNAL #66530 /* ~J'ai dit à Hamrys que j'avais obtenu son oreiller de cercueil. Pour une fois, il ne m'a pas noyé sous un flot de paroles.~ */ GOTO 76
END

IF WEIGHT #4 /* Triggers after states #: 72 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #36897 /* ~Hamrys te sourit. "Rebonjour. As-tu pris une décision pour ce qui est de m'aider avec mes problèmes à l'entrepôt ?"~ */
  IF ~~ THEN REPLY #36912 /* ~"Oui, je vais t'aider."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Il semble y avoir des problèmes à l'entrepôt. Si je veux récupérer les plans du tombeau, il va falloir que je me renseigne sur ce qui se passe et que je m'en occupe.~ */ GOTO 39
  IF ~~ THEN REPLY #36913 /* ~"Non, j'y réfléchis toujours. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #36914 /* ~"J'ai quelques questions…"~ */ GOTO 2
END

IF WEIGHT #3 /* Triggers after states #: 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",2)
~ THEN BEGIN 72 // from:
  SAY #36915 /* ~Hamrys te sourit. "Rebonjour. As-tu pris une décision pour ce qui est de m'aider avec mes problèmes à l'entrepôt ?"~ */
  IF ~~ THEN REPLY #36916 /* ~"Oui, je vais t'aider."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Il semble y avoir des problèmes à l'entrepôt. Si je veux récupérer les plans du tombeau, il va falloir que je me renseigne sur ce qui se passe et que je m'en occupe.~ */ GOTO 39
  IF ~~ THEN REPLY #36917 /* ~"Non, j'y réfléchis toujours. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #36918 /* ~"J'ai quelques questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 73 // from: 15.0 38.0
  SAY #36919 /* ~Il te fait un large sourire. "Excellent. Y a-t-il quelque chose que je puisse faire pour toi ?"~ */
  IF ~~ THEN REPLY #36920 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36921 /* ~"Non, au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",3)
~ THEN BEGIN 74 // from:
  SAY #50440 /* ~Hamrys te sourit. "Rebonjour. As-tu résolu les problèmes de l'entrepôt ?"~ */
  IF ~~ THEN REPLY #50441 /* ~"Non, pas encore. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #50442 /* ~"Non, mais j'ai quelques questions à te poser…"~ */ GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",4)
~ THEN BEGIN 75 // from:
  SAY #50443 /* ~Hamrys te sourit. "Rebonjour, matois. Tu as trouvé les plans que tu cherchais ?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52766 /* ~"Oui. J'ai réglé le problème de l'entrepôt et trouvé les plans du tombeau. J'ai embarqué le coussin du cercueil, aussi."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",5)
AddexperienceParty(2000)
SetGlobal("Plans_Quest","GLOBAL",5)
~ JOURNAL #66531 /* ~J'ai dit à Hamrys que j'avais trouvé l'oreiller de cercueil et les plans du tombeau à l'entrepôt. Pour une fois, il n'a rien eu à me répondre.~ */ GOTO 76
  IF ~  !Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52767 /* ~"Oui. J'ai réglé le problème de l'entrepôt et trouvé les plans du tombeau."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",5)
AddexperienceParty(2000)
~ JOURNAL #66532 /* ~J'ai dit à Hamrys que j'avais les plans du tombeau. Pour une fois, il n'a rien eu à me répondre.~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 70.0 75.0 75.1
  SAY #52764 /* ~Il sourit et fait un signe de la tête. "Bien joué, matois. Comme je l'ai dit, tu peux garder tout ce que tu as récupéré de l'entrepôt en guise de récompense. Merci de ton aide."~ */
  IF ~~ THEN REPLY #61971 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #61972 /* ~"Au revoir, Hamrys."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Hamrys_Done","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #64164 /* ~"Bien le bonjour. Vous venez au marché pour un cercueil, déjà ?" Il sourit aimablement. "Je n'ai pas d'autre travail pour toi… En quoi puis-je t'être utile ?"~ */
  IF ~~ THEN REPLY #64165 /* ~"J'ai quelques questions…"~ */ EXIT
  IF ~~ THEN REPLY #64166 /* ~"Rien, au revoir. "~ */ EXIT
END
