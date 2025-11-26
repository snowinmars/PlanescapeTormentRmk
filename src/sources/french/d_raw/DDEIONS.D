// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEIONS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEIONS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from: 5.2 9.5 10.8 11.3 12.3 13.4 14.2 25.3 27.4 28.4 30.2 31.3 32.2 41.4 41.5 42.3 42.4 43.4 44.4
  SAY #69459 /* ~"Je t'attendrai dans les couloirs de la mort, mon Amour." Elle sourit, mais avec tristesse. Elle ferme les yeux et, dans un mouvement éthéré, disparaît.~ [DEN008B] */
  IF ~  Global("Morte_Deionarra_Quip_1","GLOBAL",1)
~ THEN REPLY #701 /* ~Pars.~ */ DO ~SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #699 /* ~Pars.~ */ DO ~SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXTERN ~DMORTE~ 105
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #9616 /* ~Pars.~ */ DO ~SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
END

IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",1203)
!Global("Current_Area","GLOBAL",1200)
~ THEN BEGIN 1 // from:
  SAY #5 /* ~Tu vois apparaître devant toi le fantôme d'une femme d'une grande beauté ; elle a les bras croisés, les yeux fermés, de longs cheveux ondoyants et une jupe qui semble mue par une brise surnaturelle. Elle se retourne légèrement et cille des yeux.~ */
  IF ~~ THEN REPLY #703 /* ~"Bonjour… ?"~ */ GOTO 2
  IF ~~ THEN REPLY #704 /* ~Attends.~ */ GOTO 2
  IF ~~ THEN REPLY #705 /* ~Pars avant que l'esprit ne prenne ses marques.~ */ DO ~SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #706 /* ~Ses yeux s'ouvrent lentement et se mettent à cligner, comme si elle était troublée et incertaine de l'endroit où elle se trouve. Elle regarde lentement autour d'elle et t'aperçoit. Son expression, alors tranquille, devient féroce. "Toi ! Mais qu'est-ce qui t'a poussé à venir jusqu'ici ?! Es-tu venu te délecter des souffrances que tu as provoquées ? Au cas où, même une fois morte, je pourrais toujours t'être d'une quelconque utilité… ?" Sa voix s'éteint dans un sifflement. "… mon Amour."~ [DEN001] */
  IF ~~ THEN REPLY #707 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Deionarra","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #708 /* ~"'Mon amour' ? On se connaît ?"~ */ DO ~SetGlobal("Deionarra","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #709 /* ~"'Mon amour' ? On se connaît ?"~ */ DO ~SetGlobal("Deionarra","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1 2.2 10.0
  SAY #710 /* ~Le spectre tend la main, suppliante. "Comment se fait-il que les voleurs de l'esprit continuent à effacer mon nom de ta mémoire ? Tu ne te *souviens* pas de moi, mon Amour ?" Le fantôme tend les bras vers toi. "Réfléchis…" Sa voix redevient désespérée. "Deionarra… Ce nom doit bien *évoquer* quelques souvenirs."~ */
  IF ~~ THEN REPLY #711 /* ~"Non, pardon. J'ai perdu la mémoire."~ */ GOTO 6
  IF ~~ THEN REPLY #712 /* ~Mensonge : "Oui… oui, ce nom me *dit* quelque chose."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Deionarra_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #713 /* ~"La mémoire *semble* me revenir… Dis-m'en plus. Tes paroles éclairciront peut-être mon esprit, Deionarra."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #714 /* ~"La mémoire *semble* me revenir… Dis-m'en plus. Tes paroles éclairciront peut-être mon esprit, Deionarra."~ */ GOTO 9
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #1308 /* ~"Non. Au revoir… Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6080 /* ~"Non. Au revoir… Deionarra."~ */ GOTO 26
END

IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2)
!Global("Current_Area","GLOBAL",1203)
!Global("Current_Area","GLOBAL",1200)
~ THEN BEGIN 4 // from:
  SAY #715 /* ~De nouveau, Deionarra se matérialise… cette fois, le désespoir se lit sur son visage, et ses bras tendus semblent essayer d'atteindre quelque chose. Elle disparaît peu à peu, et sur son visage, le désespoir se transforme en rage. "Tu es revenu ! Pourquoi continues-tu de me tourmenter ?"~ [DEN002] */
  IF ~~ THEN REPLY #765 /* ~"J'ai besoin de savoir beaucoup de choses. J'ai quelques questions à te poser…"~ */ GOTO 33
  IF ~~ THEN REPLY #1307 /* ~"J'arrête de te tourmente. Au revoir."~ */ GOTO 26
END

IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1)
!Global("Current_Area","GLOBAL",1203)
!Global("Current_Area","GLOBAL",1200)
~ THEN BEGIN 5 // from:
  SAY #716 /* ~De nouveau, Deionarra se matérialise… cette fois, le désespoir se lit sur son visage, et ses bras tendus semblent essayer d'atteindre quelque chose. Elle disparaît peu à peu, et sur son visage, le désespoir se transforme en soulagement. "Mon Amour… tu m'es revenu ! Serait-ce possible que la mémoire te soit revenue ?"~ [DEN003A] */
  IF ~~ THEN REPLY #766 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #767 /* ~"Pas encore. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1309 /* ~"Pas encore. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY #717 /* ~"Je le craignais. Je n'existe plus pour toi… C'était pour toi un inconvénient. Maintenant, tu as une excuse pour te débarrasser de moi !"~ */
  IF ~~ THEN REPLY #720 /* ~"Un 'inconvénient' ? 'Te débarrasser de moi' ? Je ne te connais pas, esprit… J'ai perdu la mémoire. Dis-moi… Qui es-tu ? Qu'est-ce que tu sais de moi ?"~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #718 /* ~"La mémoire *semble* me revenir… Dis-m'en plus. Tes paroles éclairciront peut-être mon esprit, Deionarra."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #719 /* ~"La mémoire *semble* me revenir… Dis-m'en plus. Tes paroles éclairciront peut-être mon esprit, Deionarra."~ */ GOTO 9
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #721 /* ~"Je me suis peut-être déjà débarrassé de toi, mais je crois que je vais devoir recommencer. Au revoir, esprit."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #1310 /* ~"Je dois partir, Deionarra. Au revoir."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1311 /* ~"Je me suis peut-être déjà débarrassé de toi, mais je crois que je vais devoir recommencer. Au revoir, esprit."~ */ GOTO 26
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #764 /* ~"Je dois partir, Deionarra. Au revoir."~ */ GOTO 26
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY #722 /* ~"Oui…" dit-elle pleine d'espoir. "Quels souvenirs mon nom évoque-t-il ?"~ */
  IF ~~ THEN REPLY #700 /* ~"Aucun. J'ai menti."~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #702 /* ~Mensonge : "Ton nom évoque des pensées passionnées, mais leur contenu demeure obscur. Peut-être que si tu m'en disais plus…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Deionarra_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_2","GLOBALLaw",-1)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #723 /* ~"Je ne sais pas vraiment… mais il me semble que la mémoire me revient à mesure que nous parlons. Dis-m'en plus. Peut-être que tes paroles éclairciront mon esprit, Deionarra."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #724 /* ~"Je ne sais pas vraiment… mais il me semble que la mémoire me revient à mesure que nous parlons. Dis-m'en plus. Peut-être que tes paroles éclairciront mon esprit, Deionarra."~ */ GOTO 9
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #1312 /* ~"Je dois partir, Deionarra. Au revoir."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6084 /* ~"Je dois partir, Deionarra. Au revoir."~ */ GOTO 26
END

IF ~~ THEN BEGIN 8 // from: 7.0 47.2
  SAY #725 /* ~Le visage de Deionarra se change en masque de colère. "Espèce de chien lépreux ! Traître de mon cœur ! J'aimerais te maudire mais cela serait inutile car tu es déjà pourchassé par ce tourment qui hante toutes tes réincarnations ! Pars !" Elle croise les bras et ferme les yeux.~ */
  IF ~  Global("Morte_Deionarra_Quip_1","GLOBAL",1)
~ THEN REPLY #747 /* ~"Très bien…"~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
~ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #1313 /* ~"Très bien…"~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
~ EXTERN ~DMORTE~ 105
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #13255 /* ~Pars.~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 3.3 6.1 6.2 7.1 7.2 7.3
  SAY #726 /* ~"Oh, le destin a enfin pitié ! Même la mort ne réussit pas à me chasser de ton esprit, mon Amour ! Ne vois-tu pas ? Ta mémoire reviendra ! Dis-moi comment t'aider et je le ferai !"~ */
  IF ~~ THEN REPLY #729 /* ~"Tu sais qui je suis ?"~ */ GOTO 11
  IF ~~ THEN REPLY #730 /* ~"Tu peux me dire où je suis ?"~ */ GOTO 12
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #731 /* ~"Je dois m'enfuir de cet endroit. Tu peux m'aider ?"~ */ GOTO 43
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #732 /* ~"Je dois m'enfuir de cet endroit. Tu peux m'aider ?"~ */ GOTO 44
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #1314 /* ~"Rien pour le moment, Deionarra, mais je reviendrai. Au revoir."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6127 /* ~"Rien pour le moment, Deionarra, mais je reviendrai. Au revoir."~ */ GOTO 0
END

IF ~~ THEN BEGIN 10 // from: 5.0 11.1 12.1 13.1 14.0 25.1 27.2 28.0 30.0 31.1 32.0 34.1 35.1 36.0 41.1 42.0 43.1 44.2 74.0
  SAY #733 /* ~"Que désires-tu savoir ?"~ */
  IF ~~ THEN REPLY #734 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #735 /* ~"Tu peux me dire qui je suis ?"~ */ GOTO 11
  IF ~~ THEN REPLY #736 /* ~"Tu peux me dire où je suis ?"~ */ GOTO 12
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #737 /* ~"Je dois m'enfuir de cet endroit. Tu peux m'aider ?"~ */ GOTO 43
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #738 /* ~"Je dois m'enfuir de cet endroit. Tu peux m'aider ?"~ */ GOTO 44
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #768 /* ~"C'était quoi cette vision dont tu as parlé tout à l'heure ?"~ */ GOTO 22
  IF ~  Global("Deionarra_Curse","GLOBAL",1)
~ THEN REPLY #1315 /* ~"Tu peux annuler le maléfice que tu m'as lancé ?"~ */ GOTO 41
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #6107 /* ~"Rien pour le moment, Deionarra, mais je reviendrai. Au revoir."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6128 /* ~"Rien pour le moment, Deionarra, mais je reviendrai. Au revoir."~ */ GOTO 0
END

IF ~~ THEN BEGIN 11 // from: 6.0 9.0 10.1
  SAY #739 /* ~"Tu es à la fois béni et maudit, mon Amour. Et tu es celui qui hante à jamais mes pensées et mon cœur !"~ */
  IF ~~ THEN REPLY #740 /* ~"'Béni et maudit' ? Qu'est-ce que tu veux dire ?"~ */ GOTO 13
  IF ~~ THEN REPLY #741 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #742 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1316 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 12 // from: 9.1 10.2
  SAY #743 /* ~"Où tu es ? Eh bien, tu es ici, avec moi, mon Amour… comme au temps où nous étions en vie. Désormais, la Frontière Éternelle nous sépare."~ */
  IF ~~ THEN REPLY #744 /* ~"La 'Frontière Éternelle' ?"~ */ GOTO 14
  IF ~~ THEN REPLY #745 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #746 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #792 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #748 /* ~"La nature de ta malédiction semble claire, mon Amour. Regarde-toi." Elle te désigne du doigt. "La mort ne veut pas de toi. Tes souvenirs t'ont abandonné. Tu ne t'es jamais demandé pourquoi ?"~ */
  IF ~~ THEN REPLY #749 /* ~"En fait, j'essaie toujours de retrouver mes repères. Qu'est-ce que tu peux me dire d'autre sur moi ?"~ */ GOTO 27
  IF ~~ THEN REPLY #750 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #751 /* ~"Mis à part les souvenirs… et en supposant que la mort n'ait pas voulu de moi… en quoi consiste cette malédiction ?"~ */ GOTO 25
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #790 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1318 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #752 /* ~Deionarra a l'air triste. "C'est une barrière que tu ne franchiras jamais, mon Amour. C'est une barrière entre ta vie et ce qu'il reste de la mienne."~ */
  IF ~~ THEN REPLY #753 /* ~"Je… je vois. Tu pourrais peut-être répondre à d'autres questions…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #755 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1319 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 15 // from: 3.4 5.1 6.3 6.4 7.4 9.4 10.7 11.2 12.2 13.3 14.1 25.2 27.3 28.1 28.3 30.1 31.2 32.1 41.2 41.3 42.1 42.2 43.3 44.3 47.3
  SAY #756 /* ~"Attends… j'ai beaucoup appris en voyageant avec toi, mon Amour. Ce que tu as perdu, je l'ai gagné. Je ne t'ai pas révélé tout ce que je savais. Je vois clair… alors que tu tâtonnes dans l'obscurité en quête d'une étincelle de raison."~ */
  IF ~~ THEN REPLY #757 /* ~"Quoi que tu saches, ça peut attendre. Au revoir."~ */ GOTO 26
  IF ~~ THEN REPLY #758 /* ~"Qu'est-ce que tu peux bien avoir à dire qui pourrait m'intéresser ?"~ */ GOTO 17
  IF ~~ THEN REPLY #759 /* ~"Et qu'est-ce que tu vois que moi je ne vois pas ?"~ */ GOTO 17
  IF ~~ THEN REPLY #761 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 26
END

IF ~~ THEN BEGIN 16 // from: 20.0 21.0
  SAY #762 /* ~Deionarra semble interloquée. Puis le ton de sa voix change et se fait presque implorant. "Mon but n'est pas de t'arracher un serment, mon Amour. Mais j'ai attendu si longtemps que tu me rejoignes…"~ */
  IF ~~ THEN REPLY #763 /* ~"Si tu ne veux pas m'extirper un serment, Deionarra, alors ne le fais pas. Maintenant, dis-m'en plus sur ta vision, et on ne parlera plus de serment et de promesses."~ */ GOTO 40
END

IF ~~ THEN BEGIN 17 // from: 15.1 15.2
  SAY #769 /* ~"Le temps relâche son emprise et le frisson de l'oubli nous appelle doucement, mon Amour. Des images furtives de l'avenir se pressent devant mes yeux. Je te vois, mon Amour, comme aujourd'hui et…" Deionarra se tait.~ */
  IF ~~ THEN REPLY #770 /* ~"Pourquoi ce silence, tout à coup ? Ton discours t'a épuisée ?"~ */ GOTO 18
  IF ~~ THEN REPLY #771 /* ~"Qu'est-ce qu'il y a ? Qu'est-ce que tu vois ?"~ */ GOTO 18
  IF ~~ THEN REPLY #772 /* ~"Les visions du futur ne m'intéressent pas. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #773 /* ~"Je vois ton avenir. Il ondule à travers les plans et se répand. Dois-je te dire ce que je vois ?"~ */
  IF ~~ THEN REPLY #774 /* ~"Dis-le-moi."~ */ GOTO 20
  IF ~~ THEN REPLY #775 /* ~"Je ne veux pas savoir. Le futur se révélera bien… assez tôt."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.1
  SAY #776 /* ~"Tu as toujours été ainsi, mon Amour. Tu refusais de tenir compte de l'appel de la mort. Le temps sera-t-il le prochain à être éconduit ?" Elle ferme les yeux et, dans un mouvement éthéré, disparaît.~ */
  IF ~  Global("Morte_Deionarra_Quip_1","GLOBAL",1)
~ THEN REPLY #803 /* ~Pars.~ */ DO ~SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #6085 /* ~Pars.~ */ DO ~SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXTERN ~DMORTE~ 105
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #13256 /* ~Pars.~ */ DO ~SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #777 /* ~"Avant tout, j'exige une promesse. Promets-moi de revenir, de trouver un moyen de venir me sauver ou de me rejoindre."~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #778 /* ~"J'ai du mal à croire qu'une femme que j'ai autrefois aimée veuille m'extirper des promesses en me promettant des révélations. Tu ne me fais donc pas confiance, Deionarra ?"~ */ GOTO 16
  IF ~~ THEN REPLY #779 /* ~"Le prix d'une telle promesse est trop élevé."~ */ GOTO 21
  IF ~~ THEN REPLY #780 /* ~Mensonge : "Je te jure de trouver un moyen de te sauver ou de te rejoindre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Deionarra_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_3","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #781 /* ~"Pas question que je te promette ça, spectre ! Cesse de me tourmenter avec l'avenir… Tais-toi ou pars !"~ */ GOTO 26
  IF ~~ THEN REPLY #782 /* ~"Je… je ferai ce que je pourrai."~ */ GOTO 40
  IF ~~ THEN REPLY #6093 /* ~Serment : "Je te jure de trouver un moyen de te sauver ou de te rejoindre."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Deionarra_1","GLOBALGood",2)
IncrementGlobalOnceEx("GLOBALLawful_Deionarra_1","GLOBALLaw",2)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #783 /* ~Deionarra croise les bras. "En effet, mon Amour. Le prix de l'immortalité n'était visiblement pas assez élevé. L'intégrité est-elle trop pénible pour ceux de ton espèce ?"~ */
  IF ~~ THEN REPLY #804 /* ~"J'ai du mal à croire qu'une femme que j'ai autrefois aimée veuille m'extirper des promesses en me promettant des révélations. Tu ne me fais donc pas confiance, Deionarra ?"~ */ GOTO 16
  IF ~~ THEN REPLY #805 /* ~Mensonge : "Je te jure de trouver un moyen de te sauver ou de te rejoindre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Deionarra_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_3","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #806 /* ~"Pas question que je te promette ça, spectre ! Cesse de me tourmenter avec l'avenir… Tais-toi ou va-t'en !"~ */ GOTO 26
  IF ~~ THEN REPLY #807 /* ~"Je… je ferai ce que je pourrai."~ */ GOTO 40
  IF ~~ THEN REPLY #808 /* ~Serment : "Je te jure de trouver un moyen de te sauver ou de te rejoindre."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Deionarra_1","GLOBALGood",2)
IncrementGlobalOnceEx("GLOBALLawful_Deionarra_1","GLOBALLaw",2)
~ GOTO 22
  IF ~~ THEN REPLY #6094 /* ~"Peut-être. Au revoir, Deionarra."~ */ GOTO 26
END

IF ~~ THEN BEGIN 22 // from: 10.5 20.2 20.5 21.1 21.4 40.0
  SAY #784 /* ~"Voici ce que mes yeux voient, mon Amour, libérés des chaînes du temps…"~ [DEN020] */
  IF ~~ THEN REPLY #786 /* ~Attends qu'elle continue.~ */ DO ~SetGlobal("Prophecy","GLOBAL",1)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #785 /* ~"Trois ennemis, tu rencontreras, mais aucun d'eux ne te surpassera dans ta pleine gloire. Ombres du mal, du bien et de la neutralité, elles sont issues des lois des plans et n'obéissent qu'à elles."~ [DEN021] */
  IF ~~ THEN REPLY #787 /* ~Attends qu'elle continue.~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #788 /* ~"Tu arriveras à une prison de regrets et de douleur où les ombres elles-mêmes sont devenues folles. Un terrible sacrifice te sera alors demandé, mon Amour. Pour trouver le repos, il te faudra détruire ce qui te maintient en vie et sacrifier ton immortalité."~ [DEN022] */
  IF ~~ THEN REPLY #789 /* ~"'Détruire ce qui me maintient en vie' ?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 13.2 29.0
  SAY #791 /* ~"Je ne doute pas de ta capacité à ressusciter. Je crois que chaque réincarnation affaiblit tes pensées et tes souvenirs. Tu dis avoir perdu la mémoire. C'est peut-être une conséquence de tes innombrables morts. Dans ce cas, que perdras-tu lors des prochaines morts ? Si tu perds l'esprit, tu ne sauras même pas que tu es immortel. Tu seras vraiment maudit."~ */
  IF ~~ THEN REPLY #812 /* ~"'Mes innombrables morts' ? Et ça dure depuis combien de temps ?"~ */ GOTO 30
  IF ~~ THEN REPLY #811 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #813 /* ~"Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1320 /* ~"Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 26 // from: 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
  SAY #793 /* ~Deionarra a l'air furieuse. "Alors pars, comme tu l'as fait tant de fois ! Viens-tu uniquement pour me tourmenter ? Pars et ne reviens jamais !" Elle ferme les yeux, et dans un mouvement éthéré, disparaît.~ */
  IF ~  Global("Morte_Deionarra_Quip_1","GLOBAL",1)
~ THEN REPLY #6081 /* ~Pars.~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #6082 /* ~Pars.~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXTERN ~DMORTE~ 105
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #13257 /* ~Pars.~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 13.0
  SAY #795 /* ~"Un jour, tu as déclaré que tu m'aimais et que tu m'aimerais jusqu'à ce que la mort nous sépare. Je l'ai cru, ignorant la vérité sur toi, sur ce que tu étais."~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #797 /* ~"Et je suis quoi ?"~ */ GOTO 28
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66911 /* ~"Et que suis-je ?"~ */ GOTO 72
  IF ~~ THEN REPLY #796 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #798 /* ~"Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1321 /* ~"Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #799 /* ~Elle ouvre la bouche pour parler mais aucun son n'en sort. Elle paraît troublée un moment. "Je… ne peux pas en parler. Je…" Sa voix se brise. "Demande-moi n'importe quoi sauf ça."~ */
  IF ~~ THEN REPLY #800 /* ~"Très bien… J'ai d'autres questions…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #801 /* ~"Tu prétends me connaître, mais tu n'as pas l'air de savoir grand-chose d'intéressant sur moi. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #802 /* ~"Tu prétends me connaître, mais tu n'as pas l'air de savoir grand-chose d'intéressant sur moi. Au revoir, Deionarra."~ */ GOTO 26
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #1322 /* ~"Alors, au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1323 /* ~"Alors, au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 29 // from: 24.0
  SAY #809 /* ~"Je sais que tu dois mourir… pendant que tu le peux encore. La boucle *doit* être bouclée, mon Amour. Cette vie n'est pas pour toi. Tu dois retrouver ce qui t'a été pris et voyager dans l'au-delà, dans les plaines de la mort."~ [DEN023] */
  IF ~~ THEN REPLY #810 /* ~"'Mourir pendant que je le peux encore' ?"~ */ JOURNAL #26087 /* ~J'ai rencontré le fantôme d'une femme nommée Deionarra, qui m'a prédit que je devrai affronter trois ennemis, mais que ces derniers ne 'me surpasseront pas dans ma pleine gloire'. Ce sont des ombres du bien, de la neutralité et du mal, qui sont issues des lois des plans et n'obéissent qu'à elles. Deionarra a ajouté que j'entrerai un jour dans une prison 'de regrets et de douleur', où 'les ombres elles-mêmes sont devenues folles'. Là, il me faudra faire un terrible sacrifice car, pour arriver à mon but, je devrai 'détruire ce qui me maintient en vie, et sacrifier mon immortalité'.~ */ GOTO 25
END

IF ~~ THEN BEGIN 30 // from: 25.0
  SAY #814 /* ~"Je ne sais pas vraiment. Mais cela dure depuis trop longtemps."~ */
  IF ~~ THEN REPLY #815 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #816 /* ~"Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1324 /* ~"Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 31 // from: 45.0
  SAY #817 /* ~"Les portes sont les orifices de l'existence qui mènent à des lieux dans les plans intérieurs et extérieurs… Si tu trouves la bonne clé, tu peux t'échapper par l'une d'entre elles."~ */
  IF ~~ THEN REPLY #819 /* ~"La clé ?"~ */ GOTO 32
  IF ~~ THEN REPLY #818 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #820 /* ~"Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1325 /* ~"Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #821 /* ~Deionarra se tait un moment, comme si elle tentait de se souvenir. "Les portails se révéleront quand tu auras la bonne 'clé'. Malheureusement, ces clés peuvent prendre plusieurs formes… une émotion, un morceau de bois, un poignard en verre argenté, un bout de tissu, un air à fredonner… Les Hommes-Poussière sont, je le crains, les seuls à connaître les clés nécessaires pour quitter cet endroit, mon Amour."~ */
  IF ~~ THEN REPLY #824 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #823 /* ~"Alors, je vais devoir interroger l'un d'entre eux. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #1326 /* ~"Alors, je vais devoir interroger l'un d'entre eux. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 33 // from: 4.0
  SAY #6083 /* ~"Je n'ai rien à te répondre ! Ton cœur infidèle t'a emmené jusque-là, qu'il te guide jusqu'au bout du chemin ! Maintenant, disparais !"~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #6129 /* ~Mensonge : "Ce n'est pas la Deionarra que je connaissais. La Deionarra que j'aimais était gentille, douce… et elle n'aurait jamais abandonné une âme en peine. Es-tu vraiment tombée si bas ?"~ */ DO ~SetGlobal("Deionarra","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~~ THEN REPLY #6130 /* ~"J'ai besoin de ton aide, Deionarra. Me repousseras-tu au moment où j'ai le plus besoin de toi ?"~ */ GOTO 37
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #6131 /* ~Bluff : "Très bien. Je respecterai ta volonté, Deionarra… Je vais partir et je ne reviendrai jamais."~ */ DO ~SetGlobal("Deionarra","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_4","GLOBALLaw",-1)
~ GOTO 34
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #6132 /* ~Bluff : "Très bien. Je respecterai ta volonté, Deionarra… Je vais partir et je ne reviendrai jamais."~ */ DO ~SetGlobal("Deionarra","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_4","GLOBALLaw",-1)
~ GOTO 34
  IF ~~ THEN REPLY #6133 /* ~"Pardon, je ne voulais pas te blesser, Deionarra. Je vais partir. Je ne te tourmenterai plus."~ */ DO ~SetGlobal("Deionarra","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #6134 /* ~Pars discrètement.~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 33.2 33.3 33.4
  SAY #6086 /* ~L'expression furieuse qui se lit sur le visage de Deionarra fond comme de l'eau… la vitesse de la métamorphose est aussi effrayante que l'expression désespérée qui se lit maintenant sur son visage. "Non ! Attends, mon Amour." Sa voix est suppliante. "Je t'en prie, pardonne-moi, je t'en supplie ! Ne pars pas !"~ */
  IF ~~ THEN REPLY #6095 /* ~"Deionarra, ma patience a des limites face à tes accès de colère. Si tu veux qu'on continue à parler, il va *falloir* que tu te contrôles ou nous ne nous parlerons plus jamais. Tu seras seule. Est-ce que c'est clair ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Deionarra_4","GLOBALGood",-1)
~ GOTO 36
  IF ~~ THEN REPLY #6096 /* ~"Je te pardonne. Maintenant, j'ai besoin de ton aide, Deionarra."~ */ GOTO 10
END

IF ~~ THEN BEGIN 35 // from: 33.0
  SAY #6087 /* ~L'expression furieuse qui se lit sur le visage de Deionarra fond comme de l'eau… la vitesse de la métamorphose est aussi effrayante que l'expression désespérée qui se lit maintenant sur son visage. "Non… non, non… Je suis toujours la Deionarra de ton souvenir, mon Amour. Pardonne-moi, je t'en supplie."~ */
  IF ~~ THEN REPLY #6097 /* ~"Deionarra, ma patience a des limites face à tes accès de colère. Si tu veux qu'on continue à parler, il va *falloir* que tu te contrôles ou nous ne nous parlerons plus jamais. Tu seras seule. Est-ce que c'est clair ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Deionarra_4","GLOBALGood",-1)
~ GOTO 36
  IF ~~ THEN REPLY #6098 /* ~"Je te pardonne. Maintenant, j'ai besoin de ton aide, Deionarra."~ */ GOTO 10
END

IF ~~ THEN BEGIN 36 // from: 34.0 35.0
  SAY #6088 /* ~Sa voix devient un murmure. "Oui… oui, je t'en conjure. Ne pars pas." Son expression suppliante te fait légèrement trembler… non pas de peur, mais de plaisir. Il te semble que ce n'est pas la première fois que tu manipules cette femme.~ */
  IF ~~ THEN REPLY #6099 /* ~"Bon, écoute, Deionarra. J'ai quelques questions à te poser…"~ */ GOTO 10
END

IF ~~ THEN BEGIN 37 // from: 33.1 47.0
  SAY #6089 /* ~"Moi, te *repousser* ?! Tu OSES m'accuser de te REPOUSSER ?!" Deionarra décrit un arc de cercle avec ses bras, puis les ramène devant elle, l'index de chaque main te désignant, comme si elle faisait acte de sorcellerie. "Tu OSES…!"~ */
  IF ~~ THEN REPLY #6100 /* ~"Silence ! Écoute-moi, esprit ! J'en ai marre de tes petits jeux -"~ */ DO ~SetGlobal("Deionarra_Curse","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #6101 /* ~Prépare-toi à te défendre.~ */ DO ~SetGlobal("Deionarra_Curse","GLOBAL",1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #6090 /* ~"Brûle ! Que tu brûles comme si les flammes de Baator te dévoraient de l'intérieur ! Brûle, et sache que ce n'est là qu'une *fraction* de ma haine envers toi ! Je te maudis, de tout mon cœur et de toute mon âme, pour que tu ne sois jamais libre des chaînes de ta misérable vie. Que tu te flétrisses et que tu meurs, que ton cerveau s'atrophie tandis qu'il suppure dans ton corps pourri !"~ */
  IF ~~ THEN REPLY #6102 /* ~"Attention à tes maléfices, mignonne ! Je n'ai aucune patience -"~ */ GOTO 39
  IF ~~ THEN REPLY #6103 /* ~"Deionarra ! Attends, je suis venu m'excuser…"~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #6091 /* ~"Une fois prononcée, cette malédiction ne peut plus être annulée." La voix de Deionarra devient un sifflement. "N'oublie pas : j'ai toute l'éternité, mon Amour. J'attendrai ton arrivée aux portes de la mort." Elle sourit, mais il n'y a aucune joie dans ce sourire. "Nous nous *retrouverons*."~ */
  IF ~~ THEN REPLY #6104 /* ~"Attends une minute ! Je voudrais parler de -"~ */ GOTO 48
  IF ~~ THEN REPLY #6105 /* ~"Répare ce que tu as fait ! Je te préviens -"~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from: 16.0 20.4 21.3
  SAY #6092 /* ~Deionarra se raidit. Elle semble sur le point de dire quelque chose, puis soupire d'un air désespéré. "Fort bien, mon Amour… comme toujours, je vais devoir te faire confiance." Elle ferme les yeux.~ */
  IF ~~ THEN REPLY #6106 /* ~Attends…~ */ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 10.6
  SAY #6108 /* ~Deionarra secoue la tête d'un air triste. "Une fois lancée, cette malédiction ne peut plus être annulée. Pardonne-moi, mon Amour."~ */
  IF ~~ THEN REPLY #6110 /* ~"N'y a-t-il personne qui puisse la lever ?"~ */ GOTO 42
  IF ~~ THEN REPLY #6111 /* ~"Je… je vois. J'ai autre chose à te demander…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #6112 /* ~"Je crois qu'il est un peu tard pour demander pardon. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #6113 /* ~"Quelqu'un pourra peut-être m'aider. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6114 /* ~"Je crois qu'il est un peu tard pour demander pardon. Au revoir, Deionarra."~ */ GOTO 0
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6115 /* ~"Quelqu'un pourra peut-être m'aider. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #6109 /* ~"Si c'est le cas, je ne les connais pas." Deionarra a l'air pleine d'espoir. "Mais j'en connais des plus puissants que moi qui seraient peut-être capables de la lever. Une fois de plus, je te demande pardon, mon Amour. Je ne sais pas ce que j'ai fait."~ */
  IF ~~ THEN REPLY #6116 /* ~"J'ai autre chose à te demander…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #6117 /* ~"Je crois qu'il est un peu tard pour demander pardon. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #6118 /* ~"Quelqu'un pourra peut-être m'aider. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6119 /* ~"Je crois qu'il est un peu tard pour demander pardon. Au revoir, Deionarra."~ */ GOTO 0
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6120 /* ~"Quelqu'un pourra peut-être m'aider. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 43 // from: 9.2 10.3 44.0
  SAY #6121 /* ~"Partir… ?" La voix de Deionarra devient un sifflement, puis redevient plus forte. "*Partir* ?! C'est à moi, qui suis prisonnière ici à cause de toi, que tu demandes comment *partir* d'ici ?!"~ */
  IF ~~ THEN REPLY #6137 /* ~"Oui, je dois m'enfuir d'ici. Connais-tu un moyen de sortir ?"~ */ GOTO 47
  IF ~~ THEN REPLY #6138 /* ~"Excuse-moi de t'avoir demandé ça. Je ne voulais pas t'offenser. S'il te plaît, j'aimerais te poser d'autres questions…"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #6139 /* ~"Deionarra, je suis en danger. Peux-tu m'indiquer un lieu sûr ? Je reviendrai dès que je le pourrai."~ */ GOTO 46
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #6140 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6141 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 44 // from: 9.3 10.4
  SAY #6122 /* ~Alors que tu es sur le point de poser la question à Deionarra, ta gorge reste nouée. Il te semble que, si tu lui avoues que tu cherches un moyen de t'échapper, elle pensera que tu l'abandonnes. Si tu veux lui demander comment partir, tu dois le faire avec tact.~ */
  IF ~~ THEN REPLY #6142 /* ~"Est-ce que tu peux me dire comment sortir d'ici ?"~ */ GOTO 43
  IF ~~ THEN REPLY #6143 /* ~"Deionarra, je suis en danger. Peux-tu m'indiquer un lieu sûr ? Je reviendrai dès que je le pourrai."~ */ GOTO 46
  IF ~~ THEN REPLY #6144 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 10
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #6145 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6146 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 0
END

IF ~~ THEN BEGIN 45 // from: 46.0 46.1
  SAY #6123 /* ~"Je sens que cet endroit recèle de nombreuses portes invisibles à l'œil humain. Peut-être pourrais-tu utiliser l'une d'entre elles pour t'échapper."~ */
  IF ~~ THEN REPLY #6124 /* ~"Des portes ?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 46 // from: 43.2 44.1 47.1
  SAY #6125 /* ~"En danger ?" Deionarra semble inquiète. "Bien sûr, mon Amour. Je ferai mon possible pour t'aider…" Elle ferme les yeux quelques instants, au cours desquels tu remarques un zéphyr éthéré qui traverse son corps et fait bouger ses cheveux. Au bout d'un moment, le zéphyr meurt, et les yeux de Deionarra s'ouvrent doucement. "Il y a peut-être un moyen."~ */
  IF ~  Global("Deionarra_Portal","GLOBAL",1)
~ THEN REPLY #6147 /* ~"Oui ?"~ */ GOTO 45
  IF ~  Global("Deionarra_Portal","GLOBAL",0)
~ THEN REPLY #6148 /* ~"Oui ?"~ */ DO ~SetGlobal("Deionarra_Portal","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 45
END

IF ~~ THEN BEGIN 47 // from: 43.0
  SAY #6135 /* ~"Tu viens à moi dans la mort, juste pour me dire que tu as besoin de mon aide pour pouvoir m'abandonner *encore* ?!" Son visage est un masque de colère. "Je suis *morte* pour toi, mon Amour. J'en *souffre* encore aujourd'hui !"~ */
  IF ~~ THEN REPLY #6149 /* ~"Deionarra, s'il te plaît… j'ai besoin de ton aide. Me repousseras-tu au moment où j'ai le plus besoin de toi ?"~ */ GOTO 37
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #6150 /* ~"Deionarra, je te le demande uniquement parce que je suis en danger. Peux-tu m'indiquer un lieu sûr ? Je reviendrai dès que je le pourrai."~ */ GOTO 46
  IF ~~ THEN REPLY #6151 /* ~"Peu importe. Écoute, j'ai d'autres questions à te poser…"~ */ GOTO 8
  IF ~  Global("Prophecy","GLOBAL",0)
~ THEN REPLY #6152 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 15
  IF ~  Global("Prophecy","GLOBAL",1)
~ THEN REPLY #6153 /* ~"Je dois partir. Au revoir, Deionarra."~ */ GOTO 26
END

IF ~~ THEN BEGIN 48 // from: 33.5 39.0 39.1
  SAY #6136 /* ~Deionarra ferme les yeux, et, dans un souffle éthéré, disparaît.~ */
  IF ~  Global("Morte_Deionarra_Quip_1","GLOBAL",1)
~ THEN REPLY #6154 /* ~Pars.~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #6155 /* ~Pars.~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXTERN ~DMORTE~ 105
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Deionarra_Quip_1","GLOBAL",0)
~ THEN REPLY #13258 /* ~Pars.~ */ DO ~SetGlobal("Deionarra","GLOBAL",2)
SetGlobal("Deio_Wake_Up","GLOBAL",0)
~ EXIT
END

IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",1203)
~ THEN BEGIN 49 // from:
  SAY #63356 /* ~Tu vois devant toi une silhouette fantomatique absolument magnifique. Elle a de long cheveux flottants et sa robe est agitée par une sorte de brise éthérée. Ses yeux se posent sur toi et tu ressens une étrange sensation, comme si tu regardais plusieurs paires d'yeux en même temps.~ */
  IF ~~ THEN REPLY #63357 /* ~"Es-tu Deionarra… ?"~ */ GOTO 51
END

IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",1203)
~ THEN BEGIN 50 // from:
  SAY #63358 /* ~Devant toi, se tient la silhouette fantomatique de Deionarra. Sa robe immatérielle est agitée par une sorte de brise éthérée. Ses yeux se posent sur toi et tu ressens une étrange sensation comme si tu regardais plusieurs paires d'yeux en même temps.~ */
  IF ~~ THEN REPLY #63359 /* ~"Deionarra… ?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 49.0 50.0
  SAY #63360 /* ~"Mon amour, enfin je t'ai *trouvé*… Je te cherche depuis que ce cristal t'a dissocié - cette Forteresse est grande de plusieurs kilomètres et je craignais de t'avoir perdu." Ses yeux fantomatiques t'examinent à l'affût de nouvelles blessures. "Est-ce que tu vas bien ?"~ */
  IF ~~ THEN REPLY #63362 /* ~"Je crois - le cristal m'a dissocié, mais je suis de nouveau un et un seul. Mais, maintenant, je suis piégé ici."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #63363 /* ~"Je pense que le véritable objectif du cristal était de t'emprisonner ici. Mais ce n'est pas un obstacle pour un être comme moi." Elle ferme les yeux. "Mes yeux perçoivent beaucoup de choses et je connais bien les couloirs de cette Forteresse."~ */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 58.0 59.0
  SAY #63364 /* ~"Si tu es emprisonné ici, mon Amour, je ferai en sorte que tu sois libéré. Où souhaites-tu aller ?"~ */
  IF ~~ THEN REPLY #63365 /* ~"Je souhaite débusquer mon adversaire et le vaincre."~ */ GOTO 54
  IF ~~ THEN REPLY #63366 /* ~"Je souhaite aller à l'endroit où se trouve ma mortalité - et la récupérer."~ */ GOTO 54
  IF ~  GlobalGT("Fortress_Party","GLOBAL",1)
!Global("Fortress_Ignus","GLOBAL",1)
!Global("Fortress_Vhailor","GLOBAL",1)
~ THEN REPLY #63367 /* ~"Je souhaite rejoindre mes amis."~ */ GOTO 54
  IF ~  GlobalGT("Fortress_Party","GLOBAL",1)
!Global("Fortress_Ignus","GLOBAL",1)
!Global("Fortress_Vhailor","GLOBAL",1)
~ THEN REPLY #63368 /* ~"Je souhaite rejoindre mes compagnons. Ils ont des choses dont j'ai besoin."~ */ GOTO 54
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #63369 /* ~"Je souhaite te parler un moment et te dire comment tu es morte… et pourquoi."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 53.2 53.3
  SAY #63370 /* ~"Comme tu le désires, mon Amour." Elle tend une main vers toi. "Touche ma main et les murs de cette Forteresse n'existeront plus."~ */
  IF ~  Global("Deionarra_Forgives","GLOBAL",1)
~ THEN REPLY #63371 /* ~Touche sa main…~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1203cd11",FALSE)
~ EXIT
  IF ~  Global("Deionarra_Forgives","GLOBAL",0)
~ THEN REPLY #64594 /* ~Touche sa main…~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1203cd21",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.4
  SAY #63372 /* ~"De quoi parles-tu ?"~ */
  IF ~~ THEN REPLY #63373 /* ~Vérité : "Quand je t'ai amenée dans la forteresse, je voulais que tu y meures. Il fallait que quelqu'un reste ici pour établir un lien avec ce plan. Je savais que ton immense amour pour moi ferait échec à la mort et te permettrait de devenir un esprit. C'est pour cela que tu souffres."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Deionarra_2","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Deionarra_2","GLOBALGood",1)
SetAnimState(Myself,ANIM_MIMESTAND)
~ GOTO 56
  IF ~~ THEN REPLY #63374 /* ~Mensonge : "Si tu as trouvé la mort dans cette Forteresse, c'est à cause de l'ennemi qui nous y attend. Il voulait que tu meures pour nous séparer. Je vais bientôt l'affronter et j'aurai ma vengeance."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Deionarra_5","GLOBALGood",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #63375 /* ~Alors que tu prononces ces mots, le visage de Deionarra n'est plus qu'un masque. ~ */
  IF ~~ THEN REPLY #63376 /* ~Mensonge : "Je suis désolé, Deionarra."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Deionarra_6","GLOBALGood",-2)
~ GOTO 57
  IF ~~ THEN REPLY #63377 /* ~Vérité : "Je suis désolé, Deionarra."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Deionarra_3","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Deionarra_3","GLOBALGood",1)
~ GOTO 57
  IF ~~ THEN REPLY #63378 /* ~Vérité : "C'était nécessaire, Deionarra - je suis désolé que tu en aies souffert."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 56.2
  SAY #63379 /* ~"M'aimes-tu ? Si tu réponds oui, mon Amour, alors rien de ce qui s'est passé n'a d'importance."~ */
  IF ~~ THEN REPLY #63380 /* ~Ment : "Bien sûr que je t'aime. Même la mort ne peut rompre le lien qui nous unit."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Deionarra_7","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Deionarra_7","GLOBALGood",-1)
~ GOTO 58
  IF ~~ THEN REPLY #63381 /* ~Vérité : "Bien que je ne te connaissais pas au début, je suis tombé amoureux de toi. Tes souffrances sont devenues les miennes, et je ferai tout ce qu'il est possible de faire pour t'aider."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Deionarra_4","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Deionarra_4","GLOBALGood",1)
~ GOTO 58
  IF ~~ THEN REPLY #63382 /* ~Vérité : "Je suis désolé, Deionarra. Ce n'est pas le cas. Je ne t'ai jamais vraiment connue. Peut-être que si nous nous étions rencontrés dans d'autres circonstances…"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Deionarra_5","GLOBALLaw",2)
~ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 55.1 57.0 57.1
  SAY #63383 /* ~"Alors je t'aiderai, mon Amour. Dis-moi comment et je le ferai."~ */
  IF ~~ THEN REPLY #63384 /* ~"Je suis emprisonné ici. Peux-tu m'aider à fuir ?"~ */ DO ~SetGlobal("Deionarra_Forgives","GLOBAL",1)
~ GOTO 53
END

IF ~~ THEN BEGIN 59 // from: 57.2
  SAY #63385 /* ~"Alors… tout sera fini entre nous, mon amour. Je suis restée ici pour toi, pour nulle autre raison. Je t'aiderai une dernière fois, puis je franchirai la Frontière Éternelle comme j'aurais déjà dû le faire."~ */
  IF ~~ THEN REPLY #63386 /* ~"Alors je te demanderai une dernière chose avant de te laisser en paix. Je suis emprisonné ici. Peux-tu m'aider ?"~ */ GOTO 53
END

IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */
~  Global("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",1200)
Global("1200_Cut_Scene_2","GLOBAL",0)
~ THEN BEGIN 60 // from:
  SAY #63387 /* ~Tu vois devant toi une silhouette fantomatique absolument magnifique. Elle a de long cheveux flottants et sa robe est agitée par une sorte de brise éthérée. Elle se tient à la limite de la chaussée de pierres noires, le regard perdu dans le vide du plan.~ */
  IF ~~ THEN REPLY #63388 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("1200_Cut_Scene_2","GLOBAL",1)
StartCutSceneMode()
SetGlobal("cd_int_1","LOCALS",1)
StartCutSceneEx("1200cut1",FALSE)
~ GOTO 62
  IF ~~ THEN REPLY #63389 /* ~Laisse seule la silhouette spectrale.~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */
~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",1200)
Global("1200_Cut_Scene_2","GLOBAL",0)
~ THEN BEGIN 61 // from:
  SAY #63390 /* ~Devant toi se tient la silhouette fantomatique de Deionarra. Sa robe immatérielle est agitée par une sorte de brise éthérée. Elle se tient à la limite de la chaussée de pierres noires, le regard perdu dans le vide du plan.~ */
  IF ~~ THEN REPLY #63391 /* ~"Deionarra… ?"~ */ DO ~SetGlobal("1200_Cut_Scene_2","GLOBAL",1)
StartCutSceneMode()
SetGlobal("cd_int_1","LOCALS",1)
StartCutSceneEx("1200cut1",FALSE)
~ GOTO 62
  IF ~~ THEN REPLY #63392 /* ~Laisse seule Deionarra.~ */ EXIT
END

IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200)
Global("1200_Cut_Scene_2","GLOBAL",1)
~ THEN BEGIN 62 // from: 60.0 61.0
  SAY #63393 /* ~"Mon Amour ! Tu ne devrais *pas* être ici ! Tu dois partir !"~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #63394 /* ~"Pourquoi ? Qui es-tu, esprit… quel est cet endroit ?"~ */ GOTO 63
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #63395 /* ~"Deionarra, quel est cet endroit ? Est-ce la Forteresse ?"~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1
  SAY #63396 /* ~"C'est la Forteresse des Regrets. C'est l'endroit où l'instant de ma mort est retenu prisonnier et je ne peux m'éloigner de ses corridors. Si tu trouves un moyen de retourner à Sigil, utilise-le ; si tu restes ici, mon Amour, tu mourras."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #63397 /* ~"Je suis immortel, esprit; j'apprécie ton avertissement, mais la mort est la dernière de mes préoccupations."~ */ GOTO 64
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #63398 /* ~"Je suis immortel, Deionarra ; je pense que je ne risque pas grand-chose, même ici."~ */ GOTO 64
  IF ~~ THEN REPLY #63399 /* ~"Qu'en est-il de mon immortalité ? Je suis certainement encore immortel, même ici… ?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0 63.1 63.2
  SAY #63400 /* ~Elle secoue la tête. "Non, mon Amour. Cette Forteresse a quelque chose de particulier - l'aura qui l'entoure l'isole du reste des plans. C'est cette aura qui est une barrière à ton immortalité."~ */
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #63401 /* ~"Une aura ? Le Pilier m'a révélé que, quand je mourais, un autre succombait à ma place -"~ */ GOTO 66
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #63402 /* ~"Comment cette aura pourrait-elle être un obstacle ? Cela n'a aucun sens."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #63403 /* ~"Pendant que je surveillais cet endroit, j'ai découvert la nature de ton immortalité, mon Amour. Elle se nourrit de la vie des autres. Au moment de ta mort, un autre être vivant est choisi à ta place, ce qui te permet de survivre. Cette âme qui meurt à ta place devient une ombre dans cette Forteresse. Je crois que cette aura empêche ton immortalité de trouver une autre victime."~ */
  IF ~~ THEN REPLY #63404 /* ~"Ainsi… quand je meurs, un autre succombe à ma place. Et si je ne peux trouver un autre être vivant pour mourir à ma place…"~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 64.0 65.0
  SAY #63405 /* ~"Aussi, si tu meurs ici, c'est la fin, car rien ne vit en ces lieux - tu dois donc être prudent. Retourne à Sigil, quitte cet endroit maudit !"~ */
  IF ~  GlobalGT("Fortress_Party","GLOBAL",2)
~ THEN REPLY #63406 /* ~"Mais - mes alliés sont ici : et cela signifie qu'ils sont à l'intérieur de cette aura. Que va-t-il *leur* arriver si je meurs ?"~ */ GOTO 67
  IF ~  Global("Fortress_Party","GLOBAL",2)
~ THEN REPLY #63407 /* ~"Mais - l'un de mes alliés est ici : et cela signifie qu'il est à l'intérieur de cette aura. Que va-t-il arriver à mon compagnon si je meurs ?"~ */ GOTO 67
  IF ~  Global("Fortress_Party","GLOBAL",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #63408 /* ~"Deionarra, peux-tu me dire autre chose qui pourrait m'être utile ? Qu'est-ce qui m'attend à l'intérieur ?"~ */ GOTO 68
  IF ~  Global("Fortress_Party","GLOBAL",1)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #63409 /* ~"Esprit, peux-tu me dire autre chose qui pourrait m'être utile ? Qu'est-ce qui m'attend à l'intérieur ?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1
  SAY #63410 /* ~"Mon Amour, si tu as amené *quelque chose* de vivant ici, elle est en danger - à cause des ombres mais aussi à cause de toi. Si tu devais mourir ici, ton immortalité chercherait la chose vivante la plus proche, et elle mourra à ta place. Tu dois partir, maintenant !"~ */
  IF ~~ THEN REPLY #63411 /* ~"Je ne peux faire *marche arrière*. Alors, peux-tu me dire *autre chose* qui pourrait m'être utile ? Qu'est-ce qui m'attend à l'intérieur ?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 66.2 66.3 67.0
  SAY #63412 /* ~"Il n'y a pas de ténèbres naturelles dans la Forteresse, mon Amour, seules les ombres de ceux qui sont morts à ta place. Les énergies de ce plan les nourrissent et leur haine pour toi ne connaît aucune limite. Elles ne te permettront pas de partir." Elle jette un regard aux murs de la Forteresse . "N'entre pas, je t'en supplie !"~ */
  IF ~  GlobalGT("Fortress_Party","GLOBAL",2)
~ THEN REPLY #63413 /* ~"Mais - mes alliés sont là-dedans. Je ne peux les abandonner. Sais-tu où ils pourraient être ?"~ */ GOTO 69
  IF ~  Global("Fortress_Party","GLOBAL",2)
~ THEN REPLY #63414 /* ~"Mais - l'un  de mes alliés est là-dedans. Je ne peux l'abandonner. Sais-tu où mon compagnon pourrait être ?"~ */ GOTO 69
  IF ~  Global("Fortress_Party","GLOBAL",1)
~ THEN REPLY #63415 /* ~"Je dois entrer dans la Forteresse. Je ne peux pas reculer."~ */ JOURNAL #68117 /* ~Deionarra m'a dit qu'une vaste antichambre pleine d'ombres se trouve derrière l'entrée de la Forteresse. Elle a ajouté qu'il y avait là plusieurs horloges, dont je me serais autrefois servi pour sortir de l'antichambre, d'après ce que je lui en aurais dit. Il faudra que je les inspecte de près si je les vois.~ */ GOTO 75
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #63416 /* ~"Si tu es venu avec d'autres, ils ont été séparés de toi à ton arrivée - c'est dans la nature de cet endroit de séparer les êtres vivants… puis de les tuer." Elle semble affolée. "La Forteresse est grande de plusieurs kilomètres - y trouver tes amis sera difficile."~ */
  IF ~~ THEN REPLY #63417 /* ~"Je dois les trouver. Je n'ai pas le choix."~ */ JOURNAL #68117 /* ~Deionarra m'a dit qu'une vaste antichambre pleine d'ombres se trouve derrière l'entrée de la Forteresse. Elle a ajouté qu'il y avait là plusieurs horloges, dont je me serais autrefois servi pour sortir de l'antichambre, d'après ce que je lui en aurais dit. Il faudra que je les inspecte de près si je les vois.~ */ GOTO 75
END

IF ~~ THEN BEGIN 70 // from: 75.0
  SAY #63418 /* ~"Encore une chose…" Deionarra marque une pause, comme si elle essayait de se remémorer un vieux souvenir fuyant. "Il y a… il y a de grandes horloges dans l'antichambre…" Sa voix devient plus assurée. "Tu as dit autrefois que ces horloges avaient été la clé permettant de fuir l'antichambre… lorsque tu étais emprisonné ici." Elle t'observe. "Je sais que je ne peux pas te détourner de ton but, mon Amour… Alors, je veillerai sur toi, et je t'aiderai si je le peux."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
PartyHasItem("DwedRing")
~ THEN REPLY #63419 /* ~"J'ai amené ton anneau, Deionarra. J'ai trouvé ce que tu m'as légué."~ */ DO ~TransformPartyItem("Dwedring","DsupRing",1,0,0)
~ GOTO 71
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #63420 /* ~"Je te remercie, esprit. Je dois y aller maintenant."~ */ EXIT
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #63421 /* ~"Je te remercie, Deionarra. Je dois y aller maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #63422 /* ~"L'anneau contient encore une partie de moi, mon Amour. Quand tu le portes, tu portes mon cœur avec toi." Elle ferme les yeux un moment et, soudain, tu te sens baigné de chaleur. Deionarra ouvre les yeux, puis sourit. "Je savais que tu reviendrais vers moi avec. Maintenant conserve-le avec ma bénédiction et garde-le près de ton cœur. Par son intermédiaire, je te défendrai."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #63423 /* ~"Je te remercie, Deionarra. Je dois y aller maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 27.1
  SAY #66912 /* ~"Tu… je ne peux…" Elle s'immobilise brusquement, puis se remet à parler lentement, comme si sa propre voix lui faisait peur. "La vérité, c'est que tu es un être qui est mort de nombreuses fois. Tes nombreux décès t'ont fait perdre le contact avec les réalités de l'existence, et tu tiens dans ta main l'étincelle de la vie… et de la mort. C'est pour cette raison que tu peux ressusciter ceux qui meurent près de toi." ~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #66913 /* ~Alors que Deionarra te parle, tu ressens une étrange sensation au niveau de la nuque. Quelque chose te pousse à regarder ta main et, quand tu le fais, tu vois par transparence le sang qui coule lentement dans tes veines pour irriguer tes muscles et donner vie à ton corps…~ */
  IF ~~ THEN REPLY #66914 /* ~"Qu…"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Deionarra_Raise_Dead","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD)
ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD)
ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD)
~ JOURNAL #66917 /* ~Je ne sais si je dois être horrifié ou impressionné. Quand je me suis entretenu avec Deionarra à la Morgue, elle m'a dit que mes nombreuses morts m'avaient conféré un certain contrôle sur la vie et la mort. Quand je vois un cadavre, je peux déceler l'étincelle de vie qui est encore en lui et la ramener à la surface. Pour une raison que j'ignore, cette capacité ne fonctionne que sur mes compagnons, et seulement s'ils meurent en ma présence. Pourquoi ? Le fait de me suivre les lie-t-il à moi d'une manière ou d'une autre ?~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #66915 /* ~Et tu sais que Deionarra a raison. Tu te rappelles soudain comment trouver et faire renaître la moindre étincelle de vie, ce qui t'intrigue et te fascine à la fois.

^NREMARQUE : tu viens de te rappeler comment ramener les autres à la vie. Pour utiliser le pouvoir, clique sur 'Capacité spéciale' dans le menu rapide. Seuls peuvent bénéficier de ce pouvoir les membres de ton groupe qui sont morts en ta présence ; il ne fonctionne pas sur les individus qui ne t'accompagnent pas dans ta quête, ni sur les compagnons que tu retires de ton groupe une fois morts.^-~ */
  IF ~~ THEN REPLY #66916 /* ~"J-je… j'ai d'autres questions…"~ */ GOTO 10
END

IF ~~ THEN BEGIN 75 // from: 68.2 69.0
  SAY #68114 /* ~"Très bien, mon amour. Si tu souhaites continuer, il faut que tu saches ceci : une fois l'entrée de la forteresse franchie, tu te retrouveras dans une grande antichambre emplie d'ombres. Dépêche-toi et ne les laisse surtout pas se rassembler autour de toi, sans quoi tu mourras !"~ */
  IF ~~ THEN GOTO 70
END
