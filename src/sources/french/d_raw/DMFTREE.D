// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMFTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMFTREE~

IF ~  Global("Mourns","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9707 /* ~Tu vois un vieil homme fatigué. L'air chagrin, il observe l'arbre mort qui se trouve devant lui. Il marmonne tout en se tapotant le menton comme s'il réfléchissait, mais à quoi ? De temps à autre, il secoue la tête avec tristesse.~ */
  IF ~~ THEN REPLY #16643 /* ~"Bonjour…"~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #16644 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16560 /* ~Il semble momentanément surpris lorsque tu interromps le cours de ses pensées. Il parle d'une voix calme, lente mais aux accents tristes. "Oh… salut à toi l'ami. Comment te sens-tu aujourd'hui ?"~ */
  IF ~~ THEN REPLY #16645 /* ~"Je me sens bien."~ */ GOTO 2
  IF ~~ THEN REPLY #16646 /* ~"Je me sens triste."~ */ GOTO 3
  IF ~~ THEN REPLY #16647 /* ~"Ça a de l'importance ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #16648 /* ~"Peu importe pour le moment - J'ai des questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #16649 /* ~"Peu importe… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #16561 /* ~Il sourit mais ses yeux restent tristes. "C'est bien, l'ami. J'espère que la chance ne va pas t'abandonner." Il semble retourner vers l'arbre.~ */
  IF ~~ THEN REPLY #16650 /* ~"Et toi, comment te sens-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #16651 /* ~"Attends - j'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16652 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.1
  SAY #16562 /* ~On dirait qu'il devient encore plus triste. "Dommage, l'ami… désolé d'entendre ça. J'espère que la chance va te sourire." Il semble sur le point de retourner vers l'arbre.~ */
  IF ~~ THEN REPLY #16653 /* ~"Et toi, comment te sens-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #16654 /* ~"Attends - j'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16655 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16563 /* ~L'homme est pris au dépourvu mais acquiesce avec confiance. "Oui, l'ami. Pour moi, du moins… bien que ça ne change pas grand-chose, on dirait." Il semble sur le point de retourner vers l'arbre.~ */
  IF ~~ THEN REPLY #16656 /* ~"Alors, je me sens bien."~ */ GOTO 2
  IF ~~ THEN REPLY #16657 /* ~"Alors, je me sens triste."~ */ GOTO 3
  IF ~~ THEN REPLY #16658 /* ~"Ça ne change pas grand-chose ? Qu'est-ce que tu veux dire ?"~ */ GOTO 7
  IF ~~ THEN REPLY #16659 /* ~"Attends - j'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16660 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0
  SAY #16564 /* ~Il hausse les épaules légèrement et tente de sourire. "La chance me sourit, mais je suis quand même triste."~ */
  IF ~~ THEN REPLY #16661 /* ~"Pourquoi ça ?"~ */ GOTO 6
  IF ~~ THEN REPLY #16662 /* ~"C'est dommage. J'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16663 /* ~"C'est dommage. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 29.0
  SAY #16565 /* ~Il tapote l'arbre derrière lui. "Ce sont les arbres, ici, dans la Ruche. Ils meurent, l'ami, et personne ne s'en soucie." En voyant ton visage, il lève les mains, comme pour t'interrompre. "Il y en a peut-être qui s'en fichent, mais pour moi c'est important. C'est honteux de voir les derniers témoignages de vie et de beauté de ce quartier mourir faute de soins. Tu comprends ça, l'ami ?"~ */
  IF ~~ THEN REPLY #16664 /* ~"Oui… Tu as raison, c'est triste."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourns_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #16665 /* ~"Non. Tout finit par mourir un jour ou l'autre. Pourquoi te préoccuper du quand et du comment ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16666 /* ~"Non. À moins que les arbres aient une utilité pour quelqu'un, qui s'en soucierait ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mourns_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16667 /* ~"Oui. J'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16668 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 30.0
  SAY #16566 /* ~"C'est une longue histoire… et aucun passant ne s'en soucie vraiment, j'en suis sûr. Disons que tous les efforts que j'ai déployés pour que les choses changent ont été… ignorés."~ */
  IF ~~ THEN REPLY #16669 /* ~"Qu'est-ce que tu voulais qu'ils fassent ?"~ */ GOTO 9
  IF ~~ THEN REPLY #16670 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16671 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 6.1 6.2 14.4 14.5 17.4 17.5
  SAY #16567 /* ~Il soupire. "Je m'y attendais : tu es comme les autres. Laisse-moi à mes pensées, veux-tu ?" Il se détourne de toi.~ */
  IF ~~ THEN REPLY #16672 /* ~Pars.~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #16568 /* ~"Je voulais qu'ils… qu'ils…" Il semble exaspéré, frustré de ne pas trouver ses mots. "… *s'en soucient*. Est-ce trop demander, l'ami ?" Il te regarde sérieusement.~ */
  IF ~~ THEN REPLY #16673 /* ~"Qu'ils se soucient de quoi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #16674 /* ~"Je suppose que non. J'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16675 /* ~"Peut-être pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #16569 /* ~Il semble surpris et s'écrie : "Vraiment ? Oh ! Mais c'est merveilleux. Peut-être tu…" Il s'arrête l'air soupçonneux. Il se reprend et parle de son ton habituel et lent. "De toute façon, c'est bien. Je suppose que tu as des questions pour moi maintenant…"~ */
  IF ~~ THEN REPLY #16676 /* ~"Oui, je… euh, j'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16677 /* ~"Non, pas pour l'instant. Qu'est-ce que tu allais me demander ?"~ */ GOTO 11
  IF ~~ THEN REPLY #16678 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #16570 /* ~Pour la première fois, l'homme semble vraiment heureux. Radieux, il explique : "C'est difficile de survivre ici… jette un œil autour de toi et tu comprendras ce que j'veux dire, l'ami. Je ne suis pas sûr que les arbres puissent prospérer ici, même s'ils *avaient* assez de lumière et d'eau propre…"~ */
  IF ~~ THEN REPLY #16679 /* ~"Continue…"~ */ DO ~SetGlobal("Mourns_Belief","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #16680 /* ~"J'écouterai ça une autre fois. Au revoir."~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #16571 /* ~Il acquiesce avec enthousiasme. "Mais si assez de personnes *s'en soucient*… *veulent* vraiment qu'ils vivent… je sais qu'ils survivront ! Ils redeviendront verts et s'épanouiront !"~ */
  IF ~~ THEN REPLY #16681 /* ~"Quoi ? Ça n'a pas de sens."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mourns_1","GLOBALLaw",1)
~ GOTO 13
  IF ~~ THEN REPLY #16682 /* ~"Tu as peut-être raison."~ */ GOTO 14
  IF ~~ THEN REPLY #16683 /* ~"Peut-être. J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #16684 /* ~"C'est possible. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #16572 /* ~Il sourit d'un air entendu en secouant la tête. "Tu es nouveau ici, ça se voit. Tu ne comprends pas comment *fonctionnent* les choses à Sigil, l'ami. Croire c'est vivre… ici !"~ */
  IF ~~ THEN REPLY #16685 /* ~"Tu as peut-être raison."~ */ GOTO 14
  IF ~~ THEN REPLY #16686 /* ~"Peut-être. J'ai des questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #16687 /* ~"Peut-être. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #16573 /* ~"J'ai *raison*, j'en suis sûr." Une sorte d'assurance l'entoure comme une aura, il ne ressemble plus à l'homme auquel tu t'es adressé la première fois. "C'est tout c'que j'te demande, l'ami… que tu t'en soucies, que tu souhaites leur rétablissement. Si assez de personnes le veulent, cela finira par arriver. Peux-tu faire cela pour moi, l'ami ?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16688 /* ~Vérité : "Oui, je vais t'aider."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16689 /* ~Vérité : "Oui, je vais t'aider."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16690 /* ~Mensonge : "Oui, je vais t'aider."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16691 /* ~Mensonge : "Oui, je vais t'aider."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16692 /* ~"Non, mais j'ai des questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #16693 /* ~"Non, je ne peux pas. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0
  SAY #16574 /* ~"Excellent, l'ami, excellent ! Je te remercie… tu m'as redonné confiance. Je peux peut-être en trouver d'autres comme toi, qui écouteront… cela fera toute la différence. Maintenant, que puis-je faire pour toi l'ami ?"~ */
  IF ~~ THEN REPLY #16694 /* ~"J'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16695 /* ~"Rien, mais merci quand même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.1
  SAY #16575 /* ~"Excellent, l'ami, excellent ! Je te remercie… tu m'as redonné confiance. Je peux peut-être en trouver d'autres comme toi, qui écouteront… cela fera toute la différence. Et tes compagnons, l'ami ? Tu leur en parlerais pour moi ?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16698 /* ~"Morte ? Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16699 /* ~"Annah ? Tu peux faire quelque chose ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16700 /* ~"Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16701 /* ~"Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16702 /* ~"Dak'kon, tu peux aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16703 /* ~"Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16706 /* ~"Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16707 /* ~"Vhailor, tu peux l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16708 /* ~"Peut-être plus tard. J'ai des questions…"~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16709 /* ~"Peut-être une autre fois. Au revoir."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 12.3 13.1 13.2
  SAY #16576 /* ~"Attends, l'ami… écoute-moi." Une sorte d'assurance l'entoure comme une aura, il ne ressemble plus à l'homme auquel tu t'es adressé la première fois. "C'est tout c'que j'te demande, l'ami… que tu t'en soucies, que tu souhaites leur rétablissement. Si assez de personnes le veulent, cela finira par arriver. Peux-tu faire ça pour moi, l'ami ?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16710 /* ~Vérité : "Oui, je vais t'aider."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16711 /* ~Vérité : "Oui, je vais t'aider."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16713 /* ~Mensonge : "Oui, je vais t'aider."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16714 /* ~Mensonge : "Oui, je vais t'aider."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16715 /* ~"Non, mais j'ai des questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #16717 /* ~"Non, je ne peux pas. Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 28.5
  SAY #16577 /* ~"Regarde simplement autour de toi, l'ami. Peux-tu imaginer *quoi que ce soit* ayant la vie facile ici ? Outre ces conditions déplorables, les dabus viennent rarement dans cette partie de Sigil."~ */
  IF ~~ THEN REPLY #16718 /* ~"Les dabus ?"~ */ GOTO 19
  IF ~~ THEN REPLY #16720 /* ~"Pourquoi ça ?"~ */ GOTO 21
  IF ~~ THEN REPLY #16721 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16722 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 21.0
  SAY #16578 /* ~"Tu sais, les dabus. Tu les as sûrement déjà vus… ce sont les serviteurs de la Dame, ils s'occupent de la cité. Certaines parties plus que d'autres, bien sûr." Il regarde tristement l'arbre qui se trouve à côté de lui.~ */
  IF ~~ THEN REPLY #16723 /* ~"La Dame ?"~ */ GOTO 20
  IF ~~ THEN REPLY #16724 /* ~"Pourquoi est-ce qu'ils ne viennent pas souvent ?"~ */ GOTO 21
  IF ~~ THEN REPLY #16726 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16727 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 21.1
  SAY #16579 /* ~"La Dame des Douleurs, l'ami ? La Maîtresse de Sigil ?" Il s'arrête soudain de parler. En faisant un demi-cercle sur sa poitrine, il se penche pour chuchoter : "Il ne fait pas bon parler de la Dame. Sache seulement qu'elle contrôle à elle seule la cité - que cela soit apparent ou non - et ne parle plus d'elle."~ */
  IF ~~ THEN REPLY #16735 /* ~"Très bien. Pourquoi est-ce que les dabus ne viennent pas souvent ?"~ */ GOTO 21
  IF ~~ THEN REPLY #16736 /* ~"Je comprends. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16737 /* ~"Je ne te parlerai plus d'elle. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.1 20.0
  SAY #16580 /* ~"La Ruche est un lieu dangereux, mais ce n'est pas tout… les dabus sont surveillés par la Dame et personne n'est assez fou pour se prendre le bec avec elle, l'ami. Je suppose que tout ça c'est à cause de Fell."~ */
  IF ~~ THEN REPLY #16738 /* ~"Les dabus ?"~ */ GOTO 19
  IF ~~ THEN REPLY #16739 /* ~"La Dame ?"~ */ GOTO 20
  IF ~~ THEN REPLY #16740 /* ~"Qui est Fell ?"~ */ GOTO 22
  IF ~~ THEN REPLY #16741 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16742 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #16581 /* ~"Fell ? C'est… ah… et bien, l'ami. Je dirai juste que c'est le seul dabus qui ne serve pas la Dame. Je n'sais pas tout le 'soltif' de l'histoire, comme ils disent, mais il est évité par ses camarades et vit seul ici dans la Ruche. Il tient un salon de tatouage, mais tout Sigil ou presque s'en méfie."~ */
  IF ~~ THEN REPLY #16743 /* ~"Parle-moi de ce salon de tatouages."~ */ GOTO 23
  IF ~~ THEN REPLY #16744 /* ~"Pourquoi faut-il s'en méfier ?"~ */ GOTO 26
  IF ~~ THEN REPLY #16745 /* ~"Tu ne sais pas pourquoi on l'évite ?"~ */ GOTO 27
  IF ~~ THEN REPLY #16746 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16747 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 26.0 27.2 41.2 42.0 43.1
  SAY #16582 /* ~"Le salon de Fell se trouve seulement à quelques bâtiments d'ici, vers l'est ; il est repérable à son symbole personnel, un ovale blanc percé d'un éclair. Je n'y suis jamais allé, l'ami, mais d'après ce que je sais, il arrive à convertir les images de son discours… tu sais que les dabus parlent en images, non ? Des rébus ?"~ */
  IF ~~ THEN REPLY #16748 /* ~"Oui, continue."~ */ GOTO 24
  IF ~~ THEN REPLY #16749 /* ~"Ah bon ?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #16583 /* ~Il acquiesce. "Il arrive donc à convertir les images de son discours en tatouages. Et ce ne sont pas des tatouages ordinaires : on dit qu'ils ont quelque chose de magique, et pas seulement dans leur fabrication. Mais je n'en sais pas beaucoup plus."~ */
  IF ~~ THEN REPLY #16750 /* ~"Et pourquoi faut-il se méfier de cet endroit ?"~ */ GOTO 26
  IF ~~ THEN REPLY #16751 /* ~"Tu ne sais pas pourquoi on l'évite ?"~ */ GOTO 27
  IF ~~ THEN REPLY #16752 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16753 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #16584 /* ~"Oui. Tu verras ce que je veux dire si tu essaies de leur parler. Ils envoient des flots de symboles planer au-dessus de leurs têtes", il agite les doigts au-dessus de sa tête en guise d'illustration, "au lieu de parler. C'est à celui qui écoute de se débrouiller pour comprendre ce que dit le dabus, mais j'ai entendu dire que plus on pratique, meilleur on est." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #16754 /* ~"Je vois. Continue ce que tu disais."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 22.1 24.0 27.3 41.3 42.1 43.2
  SAY #16585 /* ~"Disons, l'ami, que depuis qu'il s'est séparé de la Dame, il y en a beaucoup qui pensent que ce n'est guère qu'une question de temps avant que l'ombre de la Dame lui tombe dessus. Personne ne veut être dans les parages lorsque *cela* arrivera et si ça arrive, bien sûr."~ */
  IF ~~ THEN REPLY #16755 /* ~"Parle-moi de ce salon de tatouages."~ */ GOTO 23
  IF ~~ THEN REPLY #16756 /* ~"Tu ne sais pas pourquoi on l'évite ?"~ */ GOTO 27
  IF ~~ THEN REPLY #16757 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16758 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2 24.1 26.1
  SAY #16586 /* ~"Comme je te l'ai dit, l'ami, je n'en suis pas très sûr. J'ai entendu de vagues rumeurs comme quoi il aurait été du mauvais côté de la barrière lorsqu'une Puissance quelconque aurait décidé de s'en prendre à la Dame. Tu peux toujours essayer de lui demander, l'ami. On dit qu'il est assez amical, bien qu'un peu étrange."~ */
  IF ~~ THEN REPLY #16759 /* ~"Une Puissance ?"~ */ GOTO 41
  IF ~~ THEN REPLY #16760 /* ~"La Dame ?"~ */ GOTO 42
  IF ~~ THEN REPLY #16761 /* ~"Parle-moi de ce salon de tatouages."~ */ GOTO 23
  IF ~~ THEN REPLY #16762 /* ~"Pourquoi faut-il se méfier de ce salon ?"~ */ GOTO 26
  IF ~~ THEN REPLY #16763 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16764 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.1 3.1 4.3 5.1 6.3 7.1 9.1 10.0 15.0 16.8 18.2 19.2 20.1 21.3 22.3 24.2 26.2 27.4 29.2 30.1 31.3 32.2 33.2 34.1 35.0 36.0 37.0 40.0 41.4 42.2 43.3 44.0 45.8 46.0 47.0 48.1 49.9 50.0 51.8 53.0 61.0
  SAY #16587 /* ~Il acquiesce et attend ta question.~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #22248 /* ~"Il me faut des herbes provenant de cette graine. Peux-tu m'aider ?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",3)
~ GOTO 54
  IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Tree_Helpers","AR0400",3)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16765 /* ~"Toujours pas de changement chez les arbres ?"~ */ GOTO 45
  IF ~  Global("Mourns","GLOBAL",3)
GlobalGT("Tree_Helpers","AR0400",2)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16766 /* ~"Toujours pas de changement chez les arbres ?"~ */ DO ~SetGlobal("Mourns_Quest","AR0400",2)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #16767 /* ~"Qui es-tu ?"~ */ GOTO 29
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16768 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 30
  IF ~~ THEN REPLY #16769 /* ~"Pourquoi est-ce que tous les arbres meurent ?"~ */ GOTO 18
  IF ~~ THEN REPLY #16770 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16771 /* ~"Je cherche un certain Pharod."~ */ GOTO 35
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16772 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 36
  IF ~~ THEN REPLY #16773 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #16588 /* ~"Les gens d'ici m'appellent 'Deuils-pour-Arbres'."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16774 /* ~"Pourquoi ça ?"~ */ GOTO 6
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16775 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 30
  IF ~~ THEN REPLY #16776 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16777 /* ~"Alors, au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.4 29.1 31.0 32.0
  SAY #16589 /* ~"Je perds mon temps, c'est tout c'que je fais, l'ami." Il soupire d'un air malheureux.~ */
  IF ~~ THEN REPLY #16778 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 7
  IF ~~ THEN REPLY #16779 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16780 /* ~"Bon, alors je te laisse. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.6
  SAY #16590 /* ~"C'est ce que Sigil a de pire à offrir, l'ami. Pas grand-chose de plus à dire là-dessus." Il sourit tristement.~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16781 /* ~"Qu'est-ce que tu fais là, alors ?"~ */ GOTO 30
  IF ~~ THEN REPLY #16782 /* ~"Et si je cherchais du travail ?"~ */ GOTO 32
  IF ~~ THEN REPLY #16783 /* ~"Où est-ce que je pourrais m'amuser un peu ?"~ */ GOTO 33
  IF ~~ THEN REPLY #16784 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16785 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1 34.0
  SAY #16591 /* ~"Dans la Ruche ? Cela m'étonnerait que tu en trouves, sauf si tu es un voleur. Tu pourrais toujours récolter des cadavres et les traîner jusqu'aux portes de la Morgue, si tu es à ce point désespéré. J'ai entendu dire que les Hommes-Poussière paient une misère pour eux afin d'empêcher que les rues et les allées de la Ruche ne deviennent encore plus sales."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16786 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 30
  IF ~~ THEN REPLY #16787 /* ~"Où est-ce que je pourrais m'amuser un peu ?"~ */ GOTO 33
  IF ~~ THEN REPLY #16788 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16789 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.2 32.1
  SAY #16592 /* ~"Écoute, l'ami… il faut être assez spécial pour trouver à s'amuser dans un endroit comme ici. À ta place, je chercherais des divertissements dans un autre quartier. C'est plus sûr."~ */
  IF ~~ THEN REPLY #16790 /* ~"Qu'est-ce qui est dangereux ?"~ */ GOTO 34
  IF ~~ THEN REPLY #16791 /* ~"Où est-ce que je pourrais trouver du travail ici ?"~ */ GOTO 32
  IF ~~ THEN REPLY #16792 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16793 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #16593 /* ~"Ici ? Tout, l'ami. Tout. Bon, hormis moi peut-être. Eh."~ */
  IF ~~ THEN REPLY #16794 /* ~"Où est-ce que je pourrais trouver du travail ici ?"~ */ GOTO 32
  IF ~~ THEN REPLY #16795 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16796 /* ~"C'est tout ce que voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.7
  SAY #16594 /* ~"Désolé, l'ami. Lorsque je suis venu ici pour la première fois, j'ai parlé à beaucoup de gens… mais je ne me rappelle personne de ce nom."~ */
  IF ~~ THEN REPLY #16797 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16798 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.8
  SAY #16595 /* ~"Je ne me souviens pas en avoir vu un ici. Où te rappelles-tu l'avoir eu pour la dernière fois, l'ami ?"~ */
  IF ~~ THEN REPLY #16799 /* ~"Je ne suis pas sûr. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16800 /* ~"Je n'en sais rien. Au revoir."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #16596 /* ~"Re-bonjour, l'ami."~ */
  IF ~~ THEN REPLY #16801 /* ~"Bonjour. J'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16802 /* ~"Bonjour… Et au revoir."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #16597 /* ~Il te regarde un instant avant de détourner son regard. "Oh, c'est encore toi… l'ami."~ */
  IF ~~ THEN REPLY #16803 /* ~"J'ai des questions…"~ */ GOTO 39
  IF ~~ THEN REPLY #16804 /* ~"Je voulais m'excuser pour mon impolitesse de tout à l'heure."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #16805 /* ~Mensonge : "Je regrette mon impolitesse de tout à l'heure… Je tenais à m'excuser."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #22239 /* ~"Bonjour… Et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #16598 /* ~"Je suis désolé… l'ami. J'ai beaucoup de soucis. Nous pourrons peut-être parler plus tard."~ */
  IF ~~ THEN REPLY #16806 /* ~"Je voulais m'excuser pour mon impolitesse de tout à l'heure."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #20431 /* ~Mensonge : "Je regrette mon impolitesse de tout à l'heure… Je tenais à m'excuser."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #16807 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 38.2 39.0 39.1
  SAY #16599 /* ~Il te regarde de nouveau un instant, calmement. "J'accepte tes excuses, l'ami. As-tu des questions à me poser ?"~ */
  IF ~~ THEN REPLY #16808 /* ~"Oui…"~ */ GOTO 28
  IF ~~ THEN REPLY #16809 /* ~"Non, j'ai dit ce que j'avais à dire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 27.0
  SAY #16600 /* ~"Une divinité, l'ami ? Un dieu ? Normalement la Dame n'a pas de problèmes avec eux, car elle les tient tous éloignés de Sigil. Il s'appelait Aoskar, mais je n'en sais guère plus."~ */
  IF ~~ THEN REPLY #16810 /* ~"La Dame ?"~ */ GOTO 42
  IF ~~ THEN REPLY #16811 /* ~"Il 's'appelait' ?"~ */ GOTO 43
  IF ~~ THEN REPLY #16812 /* ~"Parle-moi de ce salon de tatouages."~ */ GOTO 23
  IF ~~ THEN REPLY #16813 /* ~"Pourquoi faut-il se méfier de ce salon ?"~ */ GOTO 26
  IF ~~ THEN REPLY #16814 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16815 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.1 41.0 43.0
  SAY #16601 /* ~"La Dame des Douleurs, l'ami ? La Maîtresse de Sigil ?" Il s'arrête soudain de parler. En faisant un demi-cercle sur sa poitrine, il se penche pour chuchoter : "Il ne fait pas bon parler de la Dame. Sache seulement qu'elle contrôle à elle seule la cité - que cela soit apparent ou non - et ne parle plus d'elle."~ */
  IF ~~ THEN REPLY #16816 /* ~"Très bien. Parle-moi du salon de tatouages de Fell."~ */ GOTO 23
  IF ~~ THEN REPLY #16817 /* ~"Pourquoi faut-il se méfier du salon de Fell ?"~ */ GOTO 26
  IF ~~ THEN REPLY #16818 /* ~"Je comprends. J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16819 /* ~"Je ne te parlerai plus d'elle. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #16602 /* ~L'homme acquiesce gravement. "D'après ce que j'ai compris, la Dame l'a détruit. Je ne l'oublierais pas, si tu songes à avoir affaire à elle ou à ses serviteurs."~ */
  IF ~~ THEN REPLY #16820 /* ~"La Dame ?"~ */ GOTO 42
  IF ~~ THEN REPLY #16821 /* ~"Parle-moi du salon de tatouages de Fell."~ */ GOTO 23
  IF ~~ THEN REPLY #16822 /* ~"Pourquoi faut-il se méfier du salon de Fell ?"~ */ GOTO 26
  IF ~~ THEN REPLY #16823 /* ~"J'ai d'autres questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16824 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Mourns_Quest","AR0400",2)
~ THEN BEGIN 44 // from:
  SAY #16603 /* ~Deuils-pour-Arbres te gratifie d'un large sourire. "Ah, mon ami, te voilà revenu ! Tu attends quelque chose de moi ?"~ */
  IF ~~ THEN REPLY #16825 /* ~"Oui, j'ai des questions…"~ */ GOTO 28
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16826 /* ~"Non, je voulais demander à Morte de t'aider."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16827 /* ~"Non, je voulais demander à Annah de t'aider."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16828 /* ~"Non, je voulais demander à Ignus de t'aider."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16829 /* ~"Non, je voulais demander à Tombée-en-Disgrâce de t'aider."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16830 /* ~"Non, je voulais demander à Dak'kon de t'aider."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16831 /* ~"Non, mais j'ai trouvé quelqu'un pour t'aider. Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16832 /* ~"Non, je voulais demander à Nordom de t'aider."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16833 /* ~"Non, je voulais demander à Vhailor de t'aider."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16834 /* ~"Non, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.1
  SAY #16604 /* ~"Non, pas encore, l'ami. Mais je garde encore espoir, je parle tous les jours à des gens."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16835 /* ~"Je voulais demander à Morte de t'aider."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16836 /* ~"Je voulais demander à Annah de t'aider."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16837 /* ~"Je voulais demander à Ignus de t'aider."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16838 /* ~"Je voulais demander à Tombée-en-Disgrâce de t'aider."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16839 /* ~"Je voulais demander à Dak'kon de t'aider."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  InParty("Dakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16840 /* ~"Bien. J'ai trouvé quelqu'un pour t'aider. Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16841 /* ~"Je voulais demander à Nordom de t'aider."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16842 /* ~"Je voulais demander à Vhailor de t'aider."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16843 /* ~"C'est bien. J'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16844 /* ~"C'est bien. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 28.2
  SAY #16605 /* ~"Oui, l'ami ! C'est à peine perceptible, mais regarde : de la sève fraîche du tronc et une poignée de nouveaux bourgeons. Ce n'est plus qu'une question de temps, maintenant. Je te remercie encore pour m'avoir redonné espoir."~ */
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16845 /* ~"Je t'en prie. J'ai des questions…"~ */ GOTO 28
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16846 /* ~"De rien, Deuils-pour-Arbres. Au revoir."~ */ EXIT
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16847 /* ~"Je… t'en prie. J'ai des questions…"~ */ GOTO 47
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16848 /* ~"De… rien, Deuils-pour-Arbres. Au revoir."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.2 46.3
  SAY #16606 /* ~Deuils semble un instant perplexe. "Quelque chose ne va pas, l'ami ? Tu as l'air inquiet, on dirait…"~ */
  IF ~~ THEN REPLY #16849 /* ~"Ah… non. J'ai juste quelques questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16850 /* ~"Non, tout va bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 14.2 17.2
  SAY #16607 /* ~"Excellent, mon ami, excellent ! Je te remercie… tu m'as redonné confiance. Je peux peut-être en trouver d'autres comme toi, qui écouteront… cela fera toute la différence. Maintenant, que puis-je faire pour toi l'ami ?"~ */
  IF ~~ THEN REPLY #16851 /* ~Regarde les arbres, imagine-les morts.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 50
  IF ~~ THEN REPLY #16852 /* ~"J'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16853 /* ~"Rien, mais merci quand même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 14.3 17.3
  SAY #16608 /* ~"Excellent, mon ami, excellent ! Je te remercie… tu m'as redonné confiance. Je peux peut-être en trouver d'autres comme toi, qui écouteront… cela fera toute la différence. Et tes compagnons, l'ami ? Tu leur en parlerais pour moi ?"~ */
  IF ~~ THEN REPLY #16854 /* ~Regarde les arbres, imagine-les morts.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 51
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16855 /* ~"Morte ? Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16856 /* ~"Annah ? Tu peux faire quelque chose ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16857 /* ~"Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16858 /* ~"Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16859 /* ~"Dak'kon, tu peux aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16860 /* ~"Dak'kon : aide cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16861 /* ~"Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16862 /* ~"Vhailor, tu peux l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16863 /* ~"Peut-être plus tard. J'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16864 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #16609 /* ~Deuils-pour-Arbres te sourit, mais semble déconcerté. "Qu'y a-t-il de si amusant, l'ami ?"~ */
  IF ~~ THEN REPLY #16865 /* ~"Euh…Rien du tout, mon ami. J'ai des questions…"~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16866 /* ~"Oh, rien du tout. Au revoir, Deuils."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.0
  SAY #16610 /* ~Deuils-pour-Arbres te sourit, mais semble déconcerté. "Qu'y a-t-il de si amusant, l'ami ?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16867 /* ~"Rien, vraiment. Morte ? Qu'en penses-tu ?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16868 /* ~"C'est rien. Annah ? Tu pourrais ?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16869 /* ~"Je souriais ? Ne fais pas attention. Ignus ?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16870 /* ~"Rien du tout. Grâce, qu'en dites-vous ?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16871 /* ~"Rien, rien. Dak'kon, tu peux aider cet homme ?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16872 /* ~"Rien. Dak'kon : viens aider cet homme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16873 /* ~"Oh, rien. Nordom, tu penses que tu pourrais l'aider ?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16874 /* ~"Rien, Deuils. Vhailor, tu peux l'aider ?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16875 /* ~"Euh… Rien du tout. J'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16876 /* ~"Rien du tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #16611 /* ~Deuils-pour-Arbres est horrifié lorsqu'il réalise ce qui va se passer. Il bondit tout à coup et se jette entre Ignus et les arbres : "Non ! Arrête ! Tu ne peux pas faire ça !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16877 /* ~Continue…~ */ EXTERN ~DMORTE~ 186
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16878 /* ~Continue…~ */ EXTERN ~DIGNUS~ 13
END

IF ~  Global("Mourns","GLOBAL",3)
Global("Mourns_Quest","AR0400",2)
~ THEN BEGIN 53 // from:
  SAY #16612 /* ~Deuils-pour-Arbres te gratifie d'un large sourire. "Ah, mon ami, te voilà revenu ! Les arbres reprennent chaque jour des forces. Veux-tu quelque chose de moi ?"~ */
  IF ~~ THEN REPLY #16879 /* ~"Oui, j'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #16880 /* ~"Non, je ne faisais que passer. Au revoir, Deuils-pour-Arbres."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 28.0
  SAY #22240 /* ~Deuils-pour-Arbres prend la graine de tes mains et la lève à hauteur des yeux. "Quelle graine étrange… est-ce que ce sont des dents que je vois sur les bords ? Peut-être des épines… où l'as-tu trouvée l'ami ?"~ */
  IF ~~ THEN REPLY #22249 /* ~"La vieille Mebbeth, la sage-femme du Square a besoin d'herbes provenant de cette graine. Sais-tu où je peux en trouver ?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #22241 /* ~"Non…" Deuils-pour-Arbres continue à fixer la graine dans sa main. "C'est la première graine de ce type que je vois… Je… ah !" Il tressaille et un point sanglant se forme sur son pouce. "Ses épines sont en effet pointues. Peut-être devrais-tu la tenir."~ */
  IF ~~ THEN REPLY #22250 /* ~"Alors tu ne peux pas m'aider, non plus ?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #22242 /* ~"À moins que tu puisses planter celle-ci, je ne peux pas… encore une fois, je n'ai jamais vu de graine de ce genre, l'ami."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22251 /* ~"Si on voulait qu'elle pousse suffisamment, serait-il possible de la faire pousser ?"~ */ GOTO 58
  IF ~~ THEN REPLY #22252 /* ~"Est-ce qu'il y a moyen de la faire pousser plus vite ?"~ */ GOTO 58
  IF ~~ THEN REPLY #22254 /* ~"Je vais pas attendre que cette maudite chose pousse. Il me faut ces herbes tout de suite."~ */ GOTO 60
  IF ~~ THEN REPLY #22255 /* ~"Je suppose que je pourrais attendre qu'elle pousse… combien de temps faudra-t-il ?"~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.3
  SAY #22243 /* ~Deuils-pour-Arbres secoue la tête. "Je ne sais pas. Peut-être plusieurs saisons."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22256 /* ~"Si on voulait qu'elle pousse suffisamment, serait-il possible de la faire pousser ?"~ */ GOTO 58
  IF ~~ THEN REPLY #22257 /* ~"Est-ce qu'il y a moyen de la faire pousser plus vite ?"~ */ GOTO 58
  IF ~~ THEN REPLY #22258 /* ~"Je vais pas attendre que cette maudite chose pousse. Il me faut ces herbes tout de suite."~ */ GOTO 60
  IF ~~ THEN REPLY #22259 /* ~"J'ai *vraiment* besoin de ces herbes. Est-ce qu'on peut faire quelque chose ?"~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.0 56.1 57.0 57.1 57.3
  SAY #22244 /* ~Deuils-pour-Arbres regarde la graine. "Peut-être… si tu te *souciais* d'elle pendant qu'elle pousse…"~ */
  IF ~~ THEN REPLY #22260 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 59
  IF ~~ THEN REPLY #22261 /* ~Concentre-toi sur la graine, *veuille* qu'elle pousse.~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22262 /* ~"Bon, je suppose que cela vaut la peine d'essayer…"~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #22245 /* ~"C'est Sigil, l'ami. Tout est croyance. Tout… de l'aiguille sur laquelle repose Sigil, jusqu'à cette minuscule graine que tu tiens dans les mains. Si tu *crois* assez fort, tout est possible…"~ */
  IF ~~ THEN REPLY #22263 /* ~Concentre-toi sur la graine, *veuille* qu'elle pousse.~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22264 /* ~"Bon, je suppose que cela vaut la peine d'essayer…"~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 56.2 57.2 58.1 58.2 59.0 59.1
  SAY #22246 /* ~À ta grande surprise, après un *crac*, la graine s'ouvre et des brindilles sortent de sa surface, comme des doigts. Tu lâches instinctivement la graine, mais les brindilles se resserrent autour de ton poignet comme des serres et ne lâchent pas prise.~ */
  IF ~~ THEN REPLY #22265 /* ~"Qu'est-ce qui se passe ?"~ */ JOURNAL #21910 /* ~Le seul fait de *vouloir* que la graine pousse a provoqué sa floraison… maintenant cette fichue graine est enroulée autour de mon poignet et ne veut pas lâcher prise. Au moins, elle ne prend pas de place dans mon sac… il vaut quand même mieux que je la rapporte à Mebbeth et que je vois si c'est ce qu'elle voulait.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #22247 /* ~Deuils-pour-Arbres fixe les branches épineuses entourant ton poignet, abasourdi. "Je… pense que les épines sur ces branches sont plus que suffisantes pour ce dont ton amie a besoin."~ */
  IF ~~ THEN REPLY #22266 /* ~"J'espère qu'elle pourra m'enlever cette maudite chose. Attends, avant de partir, j'ai des questions…"~ */ GOTO 28
  IF ~~ THEN REPLY #22267 /* ~"Je vais les lui apporter, alors… merci pour ton aide. Au revoir."~ */ EXIT
END
