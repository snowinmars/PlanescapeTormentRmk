init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.deionarra_logic import DeionarraLogic
    deionarraLogic = DeionarraLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDEIONS.DLG
# ###


# s0 # say69459
label deionarra_s0: # from 5.2 9.5 10.8 11.3 12.3 13.4 14.2 25.3 27.4 28.4 30.2 31.3 32.2 41.4 41.5 42.3 42.4 43.4 44.4
    nr '"Je t„attendrai dans les couloirs de la mort, mon Amour." Elle sourit, mais avec tristesse. Elle ferme les yeux et, dans un mouvement éthéré, disparaît.~ [DEN008B]'

    menu:
        'Pars.' if deionarraLogic.r701_condition():
            # a0 # r701
            $ deionarraLogic.r701_action()
            jump deionarra_dispose

        'Pars.' if deionarraLogic.r699_condition():
            # a1 # r699
            $ deionarraLogic.r699_action()
            jump morte_s105  # EXTERN

        'Pars.' if deionarraLogic.r9616_condition():
            # a2 # r9616
            $ deionarraLogic.r9616_action()
            jump deionarra_dispose


# s1 # say5
label deionarra_s1: # - # IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Tu vois apparaître devant toi le fantôme d„une femme d“une grande beauté ; elle a les bras croisés, les yeux fermés, de longs cheveux ondoyants et une jupe qui semble mue par une brise surnaturelle. Elle se retourne légèrement et cille des yeux.'

    menu:
        '"Bonjour… ?"':
            # a3 # r703
            jump deionarra_s2

        'Attends.':
            # a4 # r704
            jump deionarra_s2

        'Pars avant que l„esprit ne prenne ses marques.':
            # a5 # r705
            $ deionarraLogic.r705_action()
            jump deionarra_dispose


# s2 # say706
label deionarra_s2: # from 1.0 1.1
    nr 'Ses yeux s„ouvrent lentement et se mettent à cligner, comme si elle était troublée et incertaine de l“endroit où elle se trouve. Elle regarde lentement autour d„elle et t“aperçoit. Son expression, alors tranquille, devient féroce. "Toi ! Mais qu„est-ce qui t“a poussé à venir jusqu„ici ?! Es-tu venu te délecter des souffrances que tu as provoquées ? Au cas où, même une fois morte, je pourrais toujours t“être d„une quelconque utilité… ?" Sa voix s“éteint dans un sifflement. "… mon Amour."~ [DEN001]'

    menu:
        '"Qui es-tu ?"':
            # a6 # r707
            $ deionarraLogic.r707_action()
            jump deionarra_s3

        '"„Mon amour“ ? On se connaît ?"' if deionarraLogic.r708_condition():
            # a7 # r708
            $ deionarraLogic.r708_action()
            jump deionarra_s3

        '"„Mon amour“ ? On se connaît ?"' if deionarraLogic.r709_condition():
            # a8 # r709
            $ deionarraLogic.r709_action()
            jump deionarra_s3


# s3 # say710
label deionarra_s3: # from 2.0 2.1 2.2 10.0
    nr 'Le spectre tend la main, suppliante. "Comment se fait-il que les voleurs de l„esprit continuent à effacer mon nom de ta mémoire ? Tu ne te *souviens* pas de moi, mon Amour ?" Le fantôme tend les bras vers toi. "Réfléchis…" Sa voix redevient désespérée. "Deionarra… Ce nom doit bien *évoquer* quelques souvenirs."'

    menu:
        '"Non, pardon. J„ai perdu la mémoire."':
            # a9 # r711
            jump deionarra_s6

        'Mensonge : "Oui… oui, ce nom me *dit* quelque chose."':
            # a10 # r712
            $ deionarraLogic.r712_action()
            jump deionarra_s7

        '"La mémoire *semble* me revenir… Dis-m„en plus. Tes paroles éclairciront peut-être mon esprit, Deionarra."' if deionarraLogic.r713_condition():
            # a11 # r713
            jump deionarra_s9

        '"La mémoire *semble* me revenir… Dis-m„en plus. Tes paroles éclairciront peut-être mon esprit, Deionarra."' if deionarraLogic.r714_condition():
            # a12 # r714
            jump deionarra_s9

        '"Non. Au revoir… Deionarra."' if deionarraLogic.r1308_condition():
            # a13 # r1308
            jump deionarra_s15

        '"Non. Au revoir… Deionarra."' if deionarraLogic.r6080_condition():
            # a14 # r6080
            jump deionarra_s26


# s4 # say715
label deionarra_s4: # - # IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'De nouveau, Deionarra se matérialise… cette fois, le désespoir se lit sur son visage, et ses bras tendus semblent essayer d„atteindre quelque chose. Elle disparaît peu à peu, et sur son visage, le désespoir se transforme en rage. "Tu es revenu ! Pourquoi continues-tu de me tourmenter ?"~ [DEN002]'

    menu:
        '"J„ai besoin de savoir beaucoup de choses. J“ai quelques questions à te poser…"':
            # a15 # r765
            jump deionarra_s33

        '"J„arrête de te tourmente. Au revoir."':
            # a16 # r1307
            jump deionarra_s26


# s5 # say716
label deionarra_s5: # - # IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'De nouveau, Deionarra se matérialise… cette fois, le désespoir se lit sur son visage, et ses bras tendus semblent essayer d„atteindre quelque chose. Elle disparaît peu à peu, et sur son visage, le désespoir se transforme en soulagement. "Mon Amour… tu m“es revenu ! Serait-ce possible que la mémoire te soit revenue ?"~ [DEN003A]'

    menu:
        '"J„ai quelques questions à te poser…"':
            # a17 # r766
            jump deionarra_s10

        '"Pas encore. Au revoir, Deionarra."' if deionarraLogic.r767_condition():
            # a18 # r767
            jump deionarra_s15

        '"Pas encore. Au revoir, Deionarra."' if deionarraLogic.r1309_condition():
            # a19 # r1309
            jump deionarra_s0


# s6 # say717
label deionarra_s6: # from 3.0
    nr '"Je le craignais. Je n„existe plus pour toi… C“était pour toi un inconvénient. Maintenant, tu as une excuse pour te débarrasser de moi !"'

    menu:
        '"Un „inconvénient“ ? „Te débarrasser de moi“ ? Je ne te connais pas, esprit… J„ai perdu la mémoire. Dis-moi… Qui es-tu ? Qu“est-ce que tu sais de moi ?"':
            # a20 # r720
            jump deionarra_s11

        '"La mémoire *semble* me revenir… Dis-m„en plus. Tes paroles éclairciront peut-être mon esprit, Deionarra."' if deionarraLogic.r718_condition():
            # a21 # r718
            jump deionarra_s9

        '"La mémoire *semble* me revenir… Dis-m„en plus. Tes paroles éclairciront peut-être mon esprit, Deionarra."' if deionarraLogic.r719_condition():
            # a22 # r719
            jump deionarra_s9

        '"Je me suis peut-être déjà débarrassé de toi, mais je crois que je vais devoir recommencer. Au revoir, esprit."' if deionarraLogic.r721_condition():
            # a23 # r721
            jump deionarra_s15

        '"Je dois partir, Deionarra. Au revoir."' if deionarraLogic.r1310_condition():
            # a24 # r1310
            jump deionarra_s15

        '"Je me suis peut-être déjà débarrassé de toi, mais je crois que je vais devoir recommencer. Au revoir, esprit."' if deionarraLogic.r1311_condition():
            # a25 # r1311
            jump deionarra_s26

        '"Je dois partir, Deionarra. Au revoir."' if deionarraLogic.r764_condition():
            # a26 # r764
            jump deionarra_s26


# s7 # say722
label deionarra_s7: # from 3.1
    nr '"Oui…" dit-elle pleine d„espoir. "Quels souvenirs mon nom évoque-t-il ?"'

    menu:
        '"Aucun. J„ai menti."':
            # a27 # r700
            $ deionarraLogic.r700_action()
            jump deionarra_s8

        'Mensonge : "Ton nom évoque des pensées passionnées, mais leur contenu demeure obscur. Peut-être que si tu m„en disais plus…"':
            # a28 # r702
            $ deionarraLogic.r702_action()
            jump deionarra_s9

        '"Je ne sais pas vraiment… mais il me semble que la mémoire me revient à mesure que nous parlons. Dis-m„en plus. Peut-être que tes paroles éclairciront mon esprit, Deionarra."' if deionarraLogic.r723_condition():
            # a29 # r723
            jump deionarra_s9

        '"Je ne sais pas vraiment… mais il me semble que la mémoire me revient à mesure que nous parlons. Dis-m„en plus. Peut-être que tes paroles éclairciront mon esprit, Deionarra."' if deionarraLogic.r724_condition():
            # a30 # r724
            jump deionarra_s9

        '"Je dois partir, Deionarra. Au revoir."' if deionarraLogic.r1312_condition():
            # a31 # r1312
            jump deionarra_s15

        '"Je dois partir, Deionarra. Au revoir."' if deionarraLogic.r6084_condition():
            # a32 # r6084
            jump deionarra_s26


# s8 # say725
label deionarra_s8: # from 7.0 47.2
    nr 'Le visage de Deionarra se change en masque de colère. "Espèce de chien lépreux ! Traître de mon cœur ! J„aimerais te maudire mais cela serait inutile car tu es déjà pourchassé par ce tourment qui hante toutes tes réincarnations ! Pars !" Elle croise les bras et ferme les yeux.'

    menu:
        '"Très bien…"' if deionarraLogic.r747_condition():
            # a33 # r747
            $ deionarraLogic.r747_action()
            jump deionarra_dispose

        '"Très bien…"' if deionarraLogic.r1313_condition():
            # a34 # r1313
            $ deionarraLogic.r1313_action()
            jump morte_s105  # EXTERN

        'Pars.' if deionarraLogic.r13255_condition():
            # a35 # r13255
            $ deionarraLogic.r13255_action()
            jump deionarra_dispose


# s9 # say726
label deionarra_s9: # from 3.2 3.3 6.1 6.2 7.1 7.2 7.3
    nr '"Oh, le destin a enfin pitié ! Même la mort ne réussit pas à me chasser de ton esprit, mon Amour ! Ne vois-tu pas ? Ta mémoire reviendra ! Dis-moi comment t„aider et je le ferai !"'

    menu:
        '"Tu sais qui je suis ?"':
            # a36 # r729
            jump deionarra_s11

        '"Tu peux me dire où je suis ?"':
            # a37 # r730
            jump deionarra_s12

        '"Je dois m„enfuir de cet endroit. Tu peux m“aider ?"' if deionarraLogic.r731_condition():
            # a38 # r731
            jump deionarra_s43

        '"Je dois m„enfuir de cet endroit. Tu peux m“aider ?"' if deionarraLogic.r732_condition():
            # a39 # r732
            jump deionarra_s44

        '"Rien pour le moment, Deionarra, mais je reviendrai. Au revoir."' if deionarraLogic.r1314_condition():
            # a40 # r1314
            jump deionarra_s15

        '"Rien pour le moment, Deionarra, mais je reviendrai. Au revoir."' if deionarraLogic.r6127_condition():
            # a41 # r6127
            jump deionarra_s0


# s10 # say733
label deionarra_s10: # from 5.0 11.1 12.1 13.1 14.0 25.1 27.2 28.0 30.0 31.1 32.0 34.1 35.1 36.0 41.1 42.0 43.1 44.2 74.0
    nr '"Que désires-tu savoir ?"'

    menu:
        '"Qui es-tu ?"':
            # a42 # r734
            jump deionarra_s3

        '"Tu peux me dire qui je suis ?"':
            # a43 # r735
            jump deionarra_s11

        '"Tu peux me dire où je suis ?"':
            # a44 # r736
            jump deionarra_s12

        '"Je dois m„enfuir de cet endroit. Tu peux m“aider ?"' if deionarraLogic.r737_condition():
            # a45 # r737
            jump deionarra_s43

        '"Je dois m„enfuir de cet endroit. Tu peux m“aider ?"' if deionarraLogic.r738_condition():
            # a46 # r738
            jump deionarra_s44

        '"C„était quoi cette vision dont tu as parlé tout à l“heure ?"' if deionarraLogic.r768_condition():
            # a47 # r768
            jump deionarra_s22

        '"Tu peux annuler le maléfice que tu m„as lancé ?"' if deionarraLogic.r1315_condition():
            # a48 # r1315
            jump deionarra_s41

        '"Rien pour le moment, Deionarra, mais je reviendrai. Au revoir."' if deionarraLogic.r6107_condition():
            # a49 # r6107
            jump deionarra_s15

        '"Rien pour le moment, Deionarra, mais je reviendrai. Au revoir."' if deionarraLogic.r6128_condition():
            # a50 # r6128
            jump deionarra_s0


# s11 # say739
label deionarra_s11: # from 6.0 9.0 10.1
    nr '"Tu es à la fois béni et maudit, mon Amour. Et tu es celui qui hante à jamais mes pensées et mon cœur !"'

    menu:
        '"„Béni et maudit“ ? Qu„est-ce que tu veux dire ?"':
            # a51 # r740
            jump deionarra_s13

        '"J„ai d“autres questions à te poser…"':
            # a52 # r741
            jump deionarra_s10

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r742_condition():
            # a53 # r742
            jump deionarra_s15

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r1316_condition():
            # a54 # r1316
            jump deionarra_s0


# s12 # say743
label deionarra_s12: # from 9.1 10.2
    nr '"Où tu es ? Eh bien, tu es ici, avec moi, mon Amour… comme au temps où nous étions en vie. Désormais, la Frontière Éternelle nous sépare."'

    menu:
        '"La „Frontière Éternelle“ ?"':
            # a55 # r744
            jump deionarra_s14

        '"J„ai d“autres questions à te poser…"':
            # a56 # r745
            jump deionarra_s10

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r746_condition():
            # a57 # r746
            jump deionarra_s15

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r792_condition():
            # a58 # r792
            jump deionarra_s0


# s13 # say748
label deionarra_s13: # from 11.0
    nr '"La nature de ta malédiction semble claire, mon Amour. Regarde-toi." Elle te désigne du doigt. "La mort ne veut pas de toi. Tes souvenirs t„ont abandonné. Tu ne t“es jamais demandé pourquoi ?"'

    menu:
        '"En fait, j„essaie toujours de retrouver mes repères. Qu“est-ce que tu peux me dire d„autre sur moi ?"':
            # a59 # r749
            jump deionarra_s27

        '"J„ai d“autres questions…"':
            # a60 # r750
            jump deionarra_s10

        '"Mis à part les souvenirs… et en supposant que la mort n„ait pas voulu de moi… en quoi consiste cette malédiction ?"':
            # a61 # r751
            jump deionarra_s25

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r790_condition():
            # a62 # r790
            jump deionarra_s15

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r1318_condition():
            # a63 # r1318
            jump deionarra_s0


# s14 # say752
label deionarra_s14: # from 12.0
    nr 'Deionarra a l„air triste. "C“est une barrière que tu ne franchiras jamais, mon Amour. C„est une barrière entre ta vie et ce qu“il reste de la mienne."'

    menu:
        '"Je… je vois. Tu pourrais peut-être répondre à d„autres questions…"':
            # a64 # r753
            jump deionarra_s10

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r755_condition():
            # a65 # r755
            jump deionarra_s15

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r1319_condition():
            # a66 # r1319
            jump deionarra_s0


# s15 # say756
label deionarra_s15: # from 3.4 5.1 6.3 6.4 7.4 9.4 10.7 11.2 12.2 13.3 14.1 25.2 27.3 28.1 28.3 30.1 31.2 32.1 41.2 41.3 42.1 42.2 43.3 44.3 47.3
    nr '"Attends… j„ai beaucoup appris en voyageant avec toi, mon Amour. Ce que tu as perdu, je l“ai gagné. Je ne t„ai pas révélé tout ce que je savais. Je vois clair… alors que tu tâtonnes dans l“obscurité en quête d„une étincelle de raison."'

    menu:
        '"Quoi que tu saches, ça peut attendre. Au revoir."':
            # a67 # r757
            jump deionarra_s26

        '"Qu„est-ce que tu peux bien avoir à dire qui pourrait m“intéresser ?"':
            # a68 # r758
            jump deionarra_s17

        '"Et qu„est-ce que tu vois que moi je ne vois pas ?"':
            # a69 # r759
            jump deionarra_s17

        '"Je dois partir. Au revoir, Deionarra."':
            # a70 # r761
            jump deionarra_s26


# s16 # say762
label deionarra_s16: # from 20.0 21.0
    nr 'Deionarra semble interloquée. Puis le ton de sa voix change et se fait presque implorant. "Mon but n„est pas de t“arracher un serment, mon Amour. Mais j„ai attendu si longtemps que tu me rejoignes…"'

    menu:
        '"Si tu ne veux pas m„extirper un serment, Deionarra, alors ne le fais pas. Maintenant, dis-m“en plus sur ta vision, et on ne parlera plus de serment et de promesses."':
            # a71 # r763
            jump deionarra_s40


# s17 # say769
label deionarra_s17: # from 15.1 15.2
    nr '"Le temps relâche son emprise et le frisson de l„oubli nous appelle doucement, mon Amour. Des images furtives de l“avenir se pressent devant mes yeux. Je te vois, mon Amour, comme aujourd„hui et…" Deionarra se tait.'

    menu:
        '"Pourquoi ce silence, tout à coup ? Ton discours t„a épuisée ?"':
            # a72 # r770
            jump deionarra_s18

        '"Qu„est-ce qu“il y a ? Qu„est-ce que tu vois ?"':
            # a73 # r771
            jump deionarra_s18

        '"Les visions du futur ne m„intéressent pas. Au revoir."':
            # a74 # r772
            jump deionarra_s19


# s18 # say773
label deionarra_s18: # from 17.0 17.1
    nr '"Je vois ton avenir. Il ondule à travers les plans et se répand. Dois-je te dire ce que je vois ?"'

    menu:
        '"Dis-le-moi."':
            # a75 # r774
            jump deionarra_s20

        '"Je ne veux pas savoir. Le futur se révélera bien… assez tôt."':
            # a76 # r775
            jump deionarra_s19


# s19 # say776
label deionarra_s19: # from 17.2 18.1
    nr '"Tu as toujours été ainsi, mon Amour. Tu refusais de tenir compte de l„appel de la mort. Le temps sera-t-il le prochain à être éconduit ?" Elle ferme les yeux et, dans un mouvement éthéré, disparaît.'

    menu:
        'Pars.' if deionarraLogic.r803_condition():
            # a77 # r803
            $ deionarraLogic.r803_action()
            jump deionarra_dispose

        'Pars.' if deionarraLogic.r6085_condition():
            # a78 # r6085
            $ deionarraLogic.r6085_action()
            jump morte_s105  # EXTERN

        'Pars.' if deionarraLogic.r13256_condition():
            # a79 # r13256
            $ deionarraLogic.r13256_action()
            jump deionarra_dispose


# s20 # say777
label deionarra_s20: # from 18.0
    nr '"Avant tout, j„exige une promesse. Promets-moi de revenir, de trouver un moyen de venir me sauver ou de me rejoindre."'

    menu:
        '"J„ai du mal à croire qu“une femme que j„ai autrefois aimée veuille m“extirper des promesses en me promettant des révélations. Tu ne me fais donc pas confiance, Deionarra ?"' if deionarraLogic.r778_condition():
            # a80 # r778
            jump deionarra_s16

        '"Le prix d„une telle promesse est trop élevé."':
            # a81 # r779
            jump deionarra_s21

        'Mensonge : "Je te jure de trouver un moyen de te sauver ou de te rejoindre."':
            # a82 # r780
            $ deionarraLogic.r780_action()
            jump deionarra_s22

        '"Pas question que je te promette ça, spectre ! Cesse de me tourmenter avec l„avenir… Tais-toi ou pars !"':
            # a83 # r781
            jump deionarra_s26

        '"Je… je ferai ce que je pourrai."':
            # a84 # r782
            jump deionarra_s40

        'Serment : "Je te jure de trouver un moyen de te sauver ou de te rejoindre."':
            # a85 # r6093
            $ deionarraLogic.r6093_action()
            jump deionarra_s22


# s21 # say783
label deionarra_s21: # from 20.1
    nr 'Deionarra croise les bras. "En effet, mon Amour. Le prix de l„immortalité n“était visiblement pas assez élevé. L„intégrité est-elle trop pénible pour ceux de ton espèce ?"'

    menu:
        '"J„ai du mal à croire qu“une femme que j„ai autrefois aimée veuille m“extirper des promesses en me promettant des révélations. Tu ne me fais donc pas confiance, Deionarra ?"':
            # a86 # r804
            jump deionarra_s16

        'Mensonge : "Je te jure de trouver un moyen de te sauver ou de te rejoindre."':
            # a87 # r805
            $ deionarraLogic.r805_action()
            jump deionarra_s22

        '"Pas question que je te promette ça, spectre ! Cesse de me tourmenter avec l„avenir… Tais-toi ou va-t“en !"':
            # a88 # r806
            jump deionarra_s26

        '"Je… je ferai ce que je pourrai."':
            # a89 # r807
            jump deionarra_s40

        'Serment : "Je te jure de trouver un moyen de te sauver ou de te rejoindre."':
            # a90 # r808
            $ deionarraLogic.r808_action()
            jump deionarra_s22

        '"Peut-être. Au revoir, Deionarra."':
            # a91 # r6094
            jump deionarra_s26


# s22 # say784
label deionarra_s22: # from 10.5 20.2 20.5 21.1 21.4 40.0
    nr '"Voici ce que mes yeux voient, mon Amour, libérés des chaînes du temps…"~ [DEN020]'

    menu:
        'Attends qu„elle continue.':
            # a92 # r786
            $ deionarraLogic.r786_action()
            jump deionarra_s23


# s23 # say785
label deionarra_s23: # from 22.0
    nr '"Trois ennemis, tu rencontreras, mais aucun d„eux ne te surpassera dans ta pleine gloire. Ombres du mal, du bien et de la neutralité, elles sont issues des lois des plans et n“obéissent qu„à elles."~ [DEN021]'

    menu:
        'Attends qu„elle continue.':
            # a93 # r787
            jump deionarra_s24


# s24 # say788
label deionarra_s24: # from 23.0
    nr '"Tu arriveras à une prison de regrets et de douleur où les ombres elles-mêmes sont devenues folles. Un terrible sacrifice te sera alors demandé, mon Amour. Pour trouver le repos, il te faudra détruire ce qui te maintient en vie et sacrifier ton immortalité."~ [DEN022]'

    menu:
        '"„Détruire ce qui me maintient en vie“ ?"':
            # a94 # r789
            jump deionarra_s29


# s25 # say791
label deionarra_s25: # from 13.2 29.0
    nr '"Je ne doute pas de ta capacité à ressusciter. Je crois que chaque réincarnation affaiblit tes pensées et tes souvenirs. Tu dis avoir perdu la mémoire. C„est peut-être une conséquence de tes innombrables morts. Dans ce cas, que perdras-tu lors des prochaines morts ? Si tu perds l“esprit, tu ne sauras même pas que tu es immortel. Tu seras vraiment maudit."'

    menu:
        '"„Mes innombrables morts“ ? Et ça dure depuis combien de temps ?"':
            # a95 # r812
            jump deionarra_s30

        '"J„ai d“autres questions…"':
            # a96 # r811
            jump deionarra_s10

        '"Au revoir, Deionarra."' if deionarraLogic.r813_condition():
            # a97 # r813
            jump deionarra_s15

        '"Au revoir, Deionarra."' if deionarraLogic.r1320_condition():
            # a98 # r1320
            jump deionarra_s0


# s26 # say793
label deionarra_s26: # from 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
    nr 'Deionarra a l„air furieuse. "Alors pars, comme tu l“as fait tant de fois ! Viens-tu uniquement pour me tourmenter ? Pars et ne reviens jamais !" Elle ferme les yeux, et dans un mouvement éthéré, disparaît.'

    menu:
        'Pars.' if deionarraLogic.r6081_condition():
            # a99 # r6081
            $ deionarraLogic.r6081_action()
            jump deionarra_dispose

        'Pars.' if deionarraLogic.r6082_condition():
            # a100 # r6082
            $ deionarraLogic.r6082_action()
            jump morte_s105  # EXTERN

        'Pars.' if deionarraLogic.r13257_condition():
            # a101 # r13257
            $ deionarraLogic.r13257_action()
            jump deionarra_dispose


# s27 # say795
label deionarra_s27: # from 13.0
    nr '"Un jour, tu as déclaré que tu m„aimais et que tu m“aimerais jusqu„à ce que la mort nous sépare. Je l“ai cru, ignorant la vérité sur toi, sur ce que tu étais."'

    menu:
        '"Et je suis quoi ?"' if deionarraLogic.r797_condition():
            # a102 # r797
            jump deionarra_s28

        '"Et que suis-je ?"' if deionarraLogic.r66911_condition():
            # a103 # r66911
            jump deionarra_s72

        '"J„ai d“autres questions…"':
            # a104 # r796
            jump deionarra_s10

        '"Au revoir, Deionarra."' if deionarraLogic.r798_condition():
            # a105 # r798
            jump deionarra_s15

        '"Au revoir, Deionarra."' if deionarraLogic.r1321_condition():
            # a106 # r1321
            jump deionarra_s0


# s28 # say799
label deionarra_s28: # from 27.0
    nr 'Elle ouvre la bouche pour parler mais aucun son n„en sort. Elle paraît troublée un moment. "Je… ne peux pas en parler. Je…" Sa voix se brise. "Demande-moi n“importe quoi sauf ça."'

    menu:
        '"Très bien… J„ai d“autres questions…"':
            # a107 # r800
            jump deionarra_s10

        '"Tu prétends me connaître, mais tu n„as pas l“air de savoir grand-chose d„intéressant sur moi. Au revoir, Deionarra."' if deionarraLogic.r801_condition():
            # a108 # r801
            jump deionarra_s15

        '"Tu prétends me connaître, mais tu n„as pas l“air de savoir grand-chose d„intéressant sur moi. Au revoir, Deionarra."' if deionarraLogic.r802_condition():
            # a109 # r802
            jump deionarra_s26

        '"Alors, au revoir, Deionarra."' if deionarraLogic.r1322_condition():
            # a110 # r1322
            jump deionarra_s15

        '"Alors, au revoir, Deionarra."' if deionarraLogic.r1323_condition():
            # a111 # r1323
            jump deionarra_s0


# s29 # say809
label deionarra_s29: # from 24.0
    nr '"Je sais que tu dois mourir… pendant que tu le peux encore. La boucle *doit* être bouclée, mon Amour. Cette vie n„est pas pour toi. Tu dois retrouver ce qui t“a été pris et voyager dans l„au-delà, dans les plaines de la mort."~ [DEN023]'

    menu:
        '"„Mourir pendant que je le peux encore“ ?"':
            # a112 # r810
            $ deionarraLogic.j26087_s29_r810_action()
            jump deionarra_s25


# s30 # say814
label deionarra_s30: # from 25.0
    nr '"Je ne sais pas vraiment. Mais cela dure depuis trop longtemps."'

    menu:
        '"J„ai d“autres questions…"':
            # a113 # r815
            jump deionarra_s10

        '"Au revoir, Deionarra."' if deionarraLogic.r816_condition():
            # a114 # r816
            jump deionarra_s15

        '"Au revoir, Deionarra."' if deionarraLogic.r1324_condition():
            # a115 # r1324
            jump deionarra_s0


# s31 # say817
label deionarra_s31: # from 45.0
    nr '"Les portes sont les orifices de l„existence qui mènent à des lieux dans les plans intérieurs et extérieurs… Si tu trouves la bonne clé, tu peux t“échapper par l„une d“entre elles."'

    menu:
        '"La clé ?"':
            # a116 # r819
            jump deionarra_s32

        '"J„ai d“autres questions…"':
            # a117 # r818
            jump deionarra_s10

        '"Au revoir, Deionarra."' if deionarraLogic.r820_condition():
            # a118 # r820
            jump deionarra_s15

        '"Au revoir, Deionarra."' if deionarraLogic.r1325_condition():
            # a119 # r1325
            jump deionarra_s0


# s32 # say821
label deionarra_s32: # from 31.0
    nr 'Deionarra se tait un moment, comme si elle tentait de se souvenir. "Les portails se révéleront quand tu auras la bonne „clé“. Malheureusement, ces clés peuvent prendre plusieurs formes… une émotion, un morceau de bois, un poignard en verre argenté, un bout de tissu, un air à fredonner… Les Hommes-Poussière sont, je le crains, les seuls à connaître les clés nécessaires pour quitter cet endroit, mon Amour."'

    menu:
        '"Je vois. J„ai d“autres questions…"':
            # a120 # r824
            jump deionarra_s10

        '"Alors, je vais devoir interroger l„un d“entre eux. Au revoir, Deionarra."' if deionarraLogic.r823_condition():
            # a121 # r823
            jump deionarra_s15

        '"Alors, je vais devoir interroger l„un d“entre eux. Au revoir, Deionarra."' if deionarraLogic.r1326_condition():
            # a122 # r1326
            jump deionarra_s0


# s33 # say6083
label deionarra_s33: # from 4.0
    nr '"Je n„ai rien à te répondre ! Ton cœur infidèle t“a emmené jusque-là, qu„il te guide jusqu“au bout du chemin ! Maintenant, disparais !"'

    menu:
        'Mensonge : "Ce n„est pas la Deionarra que je connaissais. La Deionarra que j“aimais était gentille, douce… et elle n„aurait jamais abandonné une âme en peine. Es-tu vraiment tombée si bas ?"' if deionarraLogic.r6129_condition():
            # a123 # r6129
            $ deionarraLogic.r6129_action()
            jump deionarra_s35

        '"J„ai besoin de ton aide, Deionarra. Me repousseras-tu au moment où j“ai le plus besoin de toi ?"':
            # a124 # r6130
            jump deionarra_s37

        'Bluff : "Très bien. Je respecterai ta volonté, Deionarra… Je vais partir et je ne reviendrai jamais."' if deionarraLogic.r6131_condition():
            # a125 # r6131
            $ deionarraLogic.r6131_action()
            jump deionarra_s34

        'Bluff : "Très bien. Je respecterai ta volonté, Deionarra… Je vais partir et je ne reviendrai jamais."' if deionarraLogic.r6132_condition():
            # a126 # r6132
            $ deionarraLogic.r6132_action()
            jump deionarra_s34

        '"Pardon, je ne voulais pas te blesser, Deionarra. Je vais partir. Je ne te tourmenterai plus."':
            # a127 # r6133
            $ deionarraLogic.r6133_action()
            jump deionarra_s34

        'Pars discrètement.':
            # a128 # r6134
            jump deionarra_s48


# s34 # say6086
label deionarra_s34: # from 33.2 33.3 33.4
    nr 'L„expression furieuse qui se lit sur le visage de Deionarra fond comme de l“eau… la vitesse de la métamorphose est aussi effrayante que l„expression désespérée qui se lit maintenant sur son visage. "Non ! Attends, mon Amour." Sa voix est suppliante. "Je t“en prie, pardonne-moi, je t„en supplie ! Ne pars pas !"'

    menu:
        '"Deionarra, ma patience a des limites face à tes accès de colère. Si tu veux qu„on continue à parler, il va *falloir* que tu te contrôles ou nous ne nous parlerons plus jamais. Tu seras seule. Est-ce que c“est clair ?"':
            # a129 # r6095
            $ deionarraLogic.r6095_action()
            jump deionarra_s36

        '"Je te pardonne. Maintenant, j„ai besoin de ton aide, Deionarra."':
            # a130 # r6096
            jump deionarra_s10


# s35 # say6087
label deionarra_s35: # from 33.0
    nr 'L„expression furieuse qui se lit sur le visage de Deionarra fond comme de l“eau… la vitesse de la métamorphose est aussi effrayante que l„expression désespérée qui se lit maintenant sur son visage. "Non… non, non… Je suis toujours la Deionarra de ton souvenir, mon Amour. Pardonne-moi, je t“en supplie."'

    menu:
        '"Deionarra, ma patience a des limites face à tes accès de colère. Si tu veux qu„on continue à parler, il va *falloir* que tu te contrôles ou nous ne nous parlerons plus jamais. Tu seras seule. Est-ce que c“est clair ?"':
            # a131 # r6097
            $ deionarraLogic.r6097_action()
            jump deionarra_s36

        '"Je te pardonne. Maintenant, j„ai besoin de ton aide, Deionarra."':
            # a132 # r6098
            jump deionarra_s10


# s36 # say6088
label deionarra_s36: # from 34.0 35.0
    nr 'Sa voix devient un murmure. "Oui… oui, je t„en conjure. Ne pars pas." Son expression suppliante te fait légèrement trembler… non pas de peur, mais de plaisir. Il te semble que ce n“est pas la première fois que tu manipules cette femme.'

    menu:
        '"Bon, écoute, Deionarra. J„ai quelques questions à te poser…"':
            # a133 # r6099
            jump deionarra_s10


# s37 # say6089
label deionarra_s37: # from 33.1 47.0
    nr '"Moi, te *repousser* ?! Tu OSES m„accuser de te REPOUSSER ?!" Deionarra décrit un arc de cercle avec ses bras, puis les ramène devant elle, l“index de chaque main te désignant, comme si elle faisait acte de sorcellerie. "Tu OSES…!"'

    menu:
        '"Silence ! Écoute-moi, esprit ! J„en ai marre de tes petits jeux -"':
            # a134 # r6100
            $ deionarraLogic.r6100_action()
            jump deionarra_s38

        'Prépare-toi à te défendre.':
            # a135 # r6101
            $ deionarraLogic.r6101_action()
            jump deionarra_s38


# s38 # say6090
label deionarra_s38: # from 37.0 37.1
    nr '"Brûle ! Que tu brûles comme si les flammes de Baator te dévoraient de l„intérieur ! Brûle, et sache que ce n“est là qu„une *fraction* de ma haine envers toi ! Je te maudis, de tout mon cœur et de toute mon âme, pour que tu ne sois jamais libre des chaînes de ta misérable vie. Que tu te flétrisses et que tu meurs, que ton cerveau s“atrophie tandis qu„il suppure dans ton corps pourri !"'

    menu:
        '"Attention à tes maléfices, mignonne ! Je n„ai aucune patience -"':
            # a136 # r6102
            jump deionarra_s39

        '"Deionarra ! Attends, je suis venu m„excuser…"':
            # a137 # r6103
            jump deionarra_s39


# s39 # say6091
label deionarra_s39: # from 38.0 38.1
    nr '"Une fois prononcée, cette malédiction ne peut plus être annulée." La voix de Deionarra devient un sifflement. "N„oublie pas : j“ai toute l„éternité, mon Amour. J“attendrai ton arrivée aux portes de la mort." Elle sourit, mais il n„y a aucune joie dans ce sourire. "Nous nous *retrouverons*."'

    menu:
        '"Attends une minute ! Je voudrais parler de -"':
            # a138 # r6104
            jump deionarra_s48

        '"Répare ce que tu as fait ! Je te préviens -"':
            # a139 # r6105
            jump deionarra_s48


# s40 # say6092
label deionarra_s40: # from 16.0 20.4 21.3
    nr 'Deionarra se raidit. Elle semble sur le point de dire quelque chose, puis soupire d„un air désespéré. "Fort bien, mon Amour… comme toujours, je vais devoir te faire confiance." Elle ferme les yeux.'

    menu:
        'Attends…':
            # a140 # r6106
            jump deionarra_s22


# s41 # say6108
label deionarra_s41: # from 10.6
    nr 'Deionarra secoue la tête d„un air triste. "Une fois lancée, cette malédiction ne peut plus être annulée. Pardonne-moi, mon Amour."'

    menu:
        '"N„y a-t-il personne qui puisse la lever ?"':
            # a141 # r6110
            jump deionarra_s42

        '"Je… je vois. J„ai autre chose à te demander…"':
            # a142 # r6111
            jump deionarra_s10

        '"Je crois qu„il est un peu tard pour demander pardon. Au revoir, Deionarra."' if deionarraLogic.r6112_condition():
            # a143 # r6112
            jump deionarra_s15

        '"Quelqu„un pourra peut-être m“aider. Au revoir, Deionarra."' if deionarraLogic.r6113_condition():
            # a144 # r6113
            jump deionarra_s15

        '"Je crois qu„il est un peu tard pour demander pardon. Au revoir, Deionarra."' if deionarraLogic.r6114_condition():
            # a145 # r6114
            jump deionarra_s0

        '"Quelqu„un pourra peut-être m“aider. Au revoir, Deionarra."' if deionarraLogic.r6115_condition():
            # a146 # r6115
            jump deionarra_s0


# s42 # say6109
label deionarra_s42: # from 41.0
    nr '"Si c„est le cas, je ne les connais pas." Deionarra a l“air pleine d„espoir. "Mais j“en connais des plus puissants que moi qui seraient peut-être capables de la lever. Une fois de plus, je te demande pardon, mon Amour. Je ne sais pas ce que j„ai fait."'

    menu:
        '"J„ai autre chose à te demander…"':
            # a147 # r6116
            jump deionarra_s10

        '"Je crois qu„il est un peu tard pour demander pardon. Au revoir, Deionarra."' if deionarraLogic.r6117_condition():
            # a148 # r6117
            jump deionarra_s15

        '"Quelqu„un pourra peut-être m“aider. Au revoir, Deionarra."' if deionarraLogic.r6118_condition():
            # a149 # r6118
            jump deionarra_s15

        '"Je crois qu„il est un peu tard pour demander pardon. Au revoir, Deionarra."' if deionarraLogic.r6119_condition():
            # a150 # r6119
            jump deionarra_s0

        '"Quelqu„un pourra peut-être m“aider. Au revoir, Deionarra."' if deionarraLogic.r6120_condition():
            # a151 # r6120
            jump deionarra_s0


# s43 # say6121
label deionarra_s43: # from 9.2 10.3 44.0
    nr '"Partir… ?" La voix de Deionarra devient un sifflement, puis redevient plus forte. "*Partir* ?! C„est à moi, qui suis prisonnière ici à cause de toi, que tu demandes comment *partir* d“ici ?!"'

    menu:
        '"Oui, je dois m„enfuir d“ici. Connais-tu un moyen de sortir ?"':
            # a152 # r6137
            jump deionarra_s47

        '"Excuse-moi de t„avoir demandé ça. Je ne voulais pas t“offenser. S„il te plaît, j“aimerais te poser d„autres questions…"':
            # a153 # r6138
            jump deionarra_s10

        '"Deionarra, je suis en danger. Peux-tu m„indiquer un lieu sûr ? Je reviendrai dès que je le pourrai."' if deionarraLogic.r6139_condition():
            # a154 # r6139
            jump deionarra_s46

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r6140_condition():
            # a155 # r6140
            jump deionarra_s15

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r6141_condition():
            # a156 # r6141
            jump deionarra_s0


# s44 # say6122
label deionarra_s44: # from 9.3 10.4
    nr 'Alors que tu es sur le point de poser la question à Deionarra, ta gorge reste nouée. Il te semble que, si tu lui avoues que tu cherches un moyen de t„échapper, elle pensera que tu l“abandonnes. Si tu veux lui demander comment partir, tu dois le faire avec tact.'

    menu:
        '"Est-ce que tu peux me dire comment sortir d„ici ?"':
            # a157 # r6142
            jump deionarra_s43

        '"Deionarra, je suis en danger. Peux-tu m„indiquer un lieu sûr ? Je reviendrai dès que je le pourrai."':
            # a158 # r6143
            jump deionarra_s46

        '"J„ai d“autres questions à te poser…"':
            # a159 # r6144
            jump deionarra_s10

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r6145_condition():
            # a160 # r6145
            jump deionarra_s15

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r6146_condition():
            # a161 # r6146
            jump deionarra_s0


# s45 # say6123
label deionarra_s45: # from 46.0 46.1
    nr '"Je sens que cet endroit recèle de nombreuses portes invisibles à l„œil humain. Peut-être pourrais-tu utiliser l“une d„entre elles pour t“échapper."'

    menu:
        '"Des portes ?"':
            # a162 # r6124
            jump deionarra_s31


# s46 # say6125
label deionarra_s46: # from 43.2 44.1 47.1
    nr '"En danger ?" Deionarra semble inquiète. "Bien sûr, mon Amour. Je ferai mon possible pour t„aider…" Elle ferme les yeux quelques instants, au cours desquels tu remarques un zéphyr éthéré qui traverse son corps et fait bouger ses cheveux. Au bout d“un moment, le zéphyr meurt, et les yeux de Deionarra s„ouvrent doucement. "Il y a peut-être un moyen."'

    menu:
        '"Oui ?"' if deionarraLogic.r6147_condition():
            # a163 # r6147
            jump deionarra_s45

        '"Oui ?"' if deionarraLogic.r6148_condition():
            # a164 # r6148
            $ deionarraLogic.r6148_action()
            jump deionarra_s45


# s47 # say6135
label deionarra_s47: # from 43.0
    nr '"Tu viens à moi dans la mort, juste pour me dire que tu as besoin de mon aide pour pouvoir m„abandonner *encore* ?!" Son visage est un masque de colère. "Je suis *morte* pour toi, mon Amour. J“en *souffre* encore aujourd„hui !"'

    menu:
        '"Deionarra, s„il te plaît… j“ai besoin de ton aide. Me repousseras-tu au moment où j„ai le plus besoin de toi ?"':
            # a165 # r6149
            jump deionarra_s37

        '"Deionarra, je te le demande uniquement parce que je suis en danger. Peux-tu m„indiquer un lieu sûr ? Je reviendrai dès que je le pourrai."' if deionarraLogic.r6150_condition():
            # a166 # r6150
            jump deionarra_s46

        '"Peu importe. Écoute, j„ai d“autres questions à te poser…"':
            # a167 # r6151
            jump deionarra_s8

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r6152_condition():
            # a168 # r6152
            jump deionarra_s15

        '"Je dois partir. Au revoir, Deionarra."' if deionarraLogic.r6153_condition():
            # a169 # r6153
            jump deionarra_s26


# s48 # say6136
label deionarra_s48: # from 33.5 39.0 39.1
    nr 'Deionarra ferme les yeux, et, dans un souffle éthéré, disparaît.'

    menu:
        'Pars.' if deionarraLogic.r6154_condition():
            # a170 # r6154
            $ deionarraLogic.r6154_action()
            jump deionarra_dispose

        'Pars.' if deionarraLogic.r6155_condition():
            # a171 # r6155
            $ deionarraLogic.r6155_action()
            jump morte_s105  # EXTERN

        'Pars.' if deionarraLogic.r13258_condition():
            # a172 # r13258
            $ deionarraLogic.r13258_action()
            jump deionarra_dispose


# s49 # say63356
label deionarra_s49: # - # IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'Tu vois devant toi une silhouette fantomatique absolument magnifique. Elle a de long cheveux flottants et sa robe est agitée par une sorte de brise éthérée. Ses yeux se posent sur toi et tu ressens une étrange sensation, comme si tu regardais plusieurs paires d„yeux en même temps.'

    menu:
        '"Es-tu Deionarra… ?"':
            # a173 # r63357
            jump deionarra_s51


# s50 # say63358
label deionarra_s50: # - # IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'Devant toi, se tient la silhouette fantomatique de Deionarra. Sa robe immatérielle est agitée par une sorte de brise éthérée. Ses yeux se posent sur toi et tu ressens une étrange sensation comme si tu regardais plusieurs paires d„yeux en même temps.'

    menu:
        '"Deionarra… ?"':
            # a174 # r63359
            jump deionarra_s51


# s51 # say63360
label deionarra_s51: # from 49.0 50.0
    nr '"Mon amour, enfin je t„ai *trouvé*… Je te cherche depuis que ce cristal t“a dissocié - cette Forteresse est grande de plusieurs kilomètres et je craignais de t„avoir perdu." Ses yeux fantomatiques t“examinent à l„affût de nouvelles blessures. "Est-ce que tu vas bien ?"'

    menu:
        '"Je crois - le cristal m„a dissocié, mais je suis de nouveau un et un seul. Mais, maintenant, je suis piégé ici."':
            # a175 # r63362
            jump deionarra_s52


# s52 # say63363
label deionarra_s52: # from 51.0
    nr '"Je pense que le véritable objectif du cristal était de t„emprisonner ici. Mais ce n“est pas un obstacle pour un être comme moi." Elle ferme les yeux. "Mes yeux perçoivent beaucoup de choses et je connais bien les couloirs de cette Forteresse."'

    jump deionarra_s53


# s53 # say63364
label deionarra_s53: # from 52.0 58.0 59.0
    nr '"Si tu es emprisonné ici, mon Amour, je ferai en sorte que tu sois libéré. Où souhaites-tu aller ?"'

    menu:
        '"Je souhaite débusquer mon adversaire et le vaincre."':
            # a176 # r63365
            jump deionarra_s54

        '"Je souhaite aller à l„endroit où se trouve ma mortalité - et la récupérer."':
            # a177 # r63366
            jump deionarra_s54

        '"Je souhaite rejoindre mes amis."' if deionarraLogic.r63367_condition():
            # a178 # r63367
            jump deionarra_s54

        '"Je souhaite rejoindre mes compagnons. Ils ont des choses dont j„ai besoin."' if deionarraLogic.r63368_condition():
            # a179 # r63368
            jump deionarra_s54

        '"Je souhaite te parler un moment et te dire comment tu es morte… et pourquoi."' if deionarraLogic.r63369_condition():
            # a180 # r63369
            jump deionarra_s55


# s54 # say63370
label deionarra_s54: # from 53.0 53.1 53.2 53.3
    nr '"Comme tu le désires, mon Amour." Elle tend une main vers toi. "Touche ma main et les murs de cette Forteresse n„existeront plus."'

    menu:
        'Touche sa main…' if deionarraLogic.r63371_condition():
            # a181 # r63371
            $ deionarraLogic.r63371_action()
            jump deionarra_dispose

        'Touche sa main…' if deionarraLogic.r64594_condition():
            # a182 # r64594
            $ deionarraLogic.r64594_action()
            jump deionarra_dispose


# s55 # say63372
label deionarra_s55: # from 53.4
    nr '"De quoi parles-tu ?"'

    menu:
        'Vérité : "Quand je t„ai amenée dans la forteresse, je voulais que tu y meures. Il fallait que quelqu“un reste ici pour établir un lien avec ce plan. Je savais que ton immense amour pour moi ferait échec à la mort et te permettrait de devenir un esprit. C„est pour cela que tu souffres."':
            # a183 # r63373
            $ deionarraLogic.r63373_action()
            jump deionarra_s56

        'Mensonge : "Si tu as trouvé la mort dans cette Forteresse, c„est à cause de l“ennemi qui nous y attend. Il voulait que tu meures pour nous séparer. Je vais bientôt l„affronter et j“aurai ma vengeance."':
            # a184 # r63374
            $ deionarraLogic.r63374_action()
            jump deionarra_s58


# s56 # say63375
label deionarra_s56: # from 55.0
    nr 'Alors que tu prononces ces mots, le visage de Deionarra n„est plus qu“un masque.'

    menu:
        'Mensonge : "Je suis désolé, Deionarra."':
            # a185 # r63376
            $ deionarraLogic.r63376_action()
            jump deionarra_s57

        'Vérité : "Je suis désolé, Deionarra."':
            # a186 # r63377
            $ deionarraLogic.r63377_action()
            jump deionarra_s57

        'Vérité : "C„était nécessaire, Deionarra - je suis désolé que tu en aies souffert."':
            # a187 # r63378
            jump deionarra_s57


# s57 # say63379
label deionarra_s57: # from 56.0 56.1 56.2
    nr '"M„aimes-tu ? Si tu réponds oui, mon Amour, alors rien de ce qui s“est passé n„a d“importance."'

    menu:
        'Ment : "Bien sûr que je t„aime. Même la mort ne peut rompre le lien qui nous unit."':
            # a188 # r63380
            $ deionarraLogic.r63380_action()
            jump deionarra_s58

        'Vérité : "Bien que je ne te connaissais pas au début, je suis tombé amoureux de toi. Tes souffrances sont devenues les miennes, et je ferai tout ce qu„il est possible de faire pour t“aider."':
            # a189 # r63381
            $ deionarraLogic.r63381_action()
            jump deionarra_s58

        'Vérité : "Je suis désolé, Deionarra. Ce n„est pas le cas. Je ne t“ai jamais vraiment connue. Peut-être que si nous nous étions rencontrés dans d„autres circonstances…"':
            # a190 # r63382
            $ deionarraLogic.r63382_action()
            jump deionarra_s59


# s58 # say63383
label deionarra_s58: # from 55.1 57.0 57.1
    nr '"Alors je t„aiderai, mon Amour. Dis-moi comment et je le ferai."'

    menu:
        '"Je suis emprisonné ici. Peux-tu m„aider à fuir ?"':
            # a191 # r63384
            $ deionarraLogic.r63384_action()
            jump deionarra_s53


# s59 # say63385
label deionarra_s59: # from 57.2
    nr '"Alors… tout sera fini entre nous, mon amour. Je suis restée ici pour toi, pour nulle autre raison. Je t„aiderai une dernière fois, puis je franchirai la Frontière Éternelle comme j“aurais déjà dû le faire."'

    menu:
        '"Alors je te demanderai une dernière chose avant de te laisser en paix. Je suis emprisonné ici. Peux-tu m„aider ?"':
            # a192 # r63386
            jump deionarra_s53


# s60 # say63387
label deionarra_s60: # - # IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */ ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'Tu vois devant toi une silhouette fantomatique absolument magnifique. Elle a de long cheveux flottants et sa robe est agitée par une sorte de brise éthérée. Elle se tient à la limite de la chaussée de pierres noires, le regard perdu dans le vide du plan.'

    menu:
        '"Qui es-tu ?"':
            # a193 # r63388
            $ deionarraLogic.r63388_action()
            jump deionarra_s62

        'Laisse seule la silhouette spectrale.':
            # a194 # r63389
            jump deionarra_dispose


# s61 # say63390
label deionarra_s61: # - # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'Devant toi se tient la silhouette fantomatique de Deionarra. Sa robe immatérielle est agitée par une sorte de brise éthérée. Elle se tient à la limite de la chaussée de pierres noires, le regard perdu dans le vide du plan.'

    menu:
        '"Deionarra… ?"':
            # a195 # r63391
            $ deionarraLogic.r63391_action()
            jump deionarra_s62

        'Laisse seule Deionarra.':
            # a196 # r63392
            jump deionarra_dispose


# s62 # say63393
label deionarra_s62: # from 60.0 61.0 # IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",1)
    nr '"Mon Amour ! Tu ne devrais *pas* être ici ! Tu dois partir !"'

    menu:
        '"Pourquoi ? Qui es-tu, esprit… quel est cet endroit ?"' if deionarraLogic.r63394_condition():
            # a197 # r63394
            jump deionarra_s63

        '"Deionarra, quel est cet endroit ? Est-ce la Forteresse ?"' if deionarraLogic.r63395_condition():
            # a198 # r63395
            jump deionarra_s63


# s63 # say63396
label deionarra_s63: # from 62.0 62.1
    nr '"C„est la Forteresse des Regrets. C“est l„endroit où l“instant de ma mort est retenu prisonnier et je ne peux m„éloigner de ses corridors. Si tu trouves un moyen de retourner à Sigil, utilise-le ; si tu restes ici, mon Amour, tu mourras."'

    menu:
        '"Je suis immortel, esprit; j„apprécie ton avertissement, mais la mort est la dernière de mes préoccupations."' if deionarraLogic.r63397_condition():
            # a199 # r63397
            jump deionarra_s64

        '"Je suis immortel, Deionarra ; je pense que je ne risque pas grand-chose, même ici."' if deionarraLogic.r63398_condition():
            # a200 # r63398
            jump deionarra_s64

        '"Qu„en est-il de mon immortalité ? Je suis certainement encore immortel, même ici… ?"':
            # a201 # r63399
            jump deionarra_s64


# s64 # say63400
label deionarra_s64: # from 63.0 63.1 63.2
    nr 'Elle secoue la tête. "Non, mon Amour. Cette Forteresse a quelque chose de particulier - l„aura qui l“entoure l„isole du reste des plans. C“est cette aura qui est une barrière à ton immortalité."'

    menu:
        '"Une aura ? Le Pilier m„a révélé que, quand je mourais, un autre succombait à ma place -"' if deionarraLogic.r63401_condition():
            # a202 # r63401
            jump deionarra_s66

        '"Comment cette aura pourrait-elle être un obstacle ? Cela n„a aucun sens."' if deionarraLogic.r63402_condition():
            # a203 # r63402
            jump deionarra_s65


# s65 # say63403
label deionarra_s65: # from 64.1
    nr '"Pendant que je surveillais cet endroit, j„ai découvert la nature de ton immortalité, mon Amour. Elle se nourrit de la vie des autres. Au moment de ta mort, un autre être vivant est choisi à ta place, ce qui te permet de survivre. Cette âme qui meurt à ta place devient une ombre dans cette Forteresse. Je crois que cette aura empêche ton immortalité de trouver une autre victime."'

    menu:
        '"Ainsi… quand je meurs, un autre succombe à ma place. Et si je ne peux trouver un autre être vivant pour mourir à ma place…"':
            # a204 # r63404
            jump deionarra_s66


# s66 # say63405
label deionarra_s66: # from 64.0 65.0
    nr '"Aussi, si tu meurs ici, c„est la fin, car rien ne vit en ces lieux - tu dois donc être prudent. Retourne à Sigil, quitte cet endroit maudit !"'

    menu:
        '"Mais - mes alliés sont ici : et cela signifie qu„ils sont à l“intérieur de cette aura. Que va-t-il *leur* arriver si je meurs ?"' if deionarraLogic.r63406_condition():
            # a205 # r63406
            jump deionarra_s67

        '"Mais - l„un de mes alliés est ici : et cela signifie qu“il est à l„intérieur de cette aura. Que va-t-il arriver à mon compagnon si je meurs ?"' if deionarraLogic.r63407_condition():
            # a206 # r63407
            jump deionarra_s67

        '"Deionarra, peux-tu me dire autre chose qui pourrait m„être utile ? Qu“est-ce qui m„attend à l“intérieur ?"' if deionarraLogic.r63408_condition():
            # a207 # r63408
            jump deionarra_s68

        '"Esprit, peux-tu me dire autre chose qui pourrait m„être utile ? Qu“est-ce qui m„attend à l“intérieur ?"' if deionarraLogic.r63409_condition():
            # a208 # r63409
            jump deionarra_s68


# s67 # say63410
label deionarra_s67: # from 66.0 66.1
    nr '"Mon Amour, si tu as amené *quelque chose* de vivant ici, elle est en danger - à cause des ombres mais aussi à cause de toi. Si tu devais mourir ici, ton immortalité chercherait la chose vivante la plus proche, et elle mourra à ta place. Tu dois partir, maintenant !"'

    menu:
        '"Je ne peux faire *marche arrière*. Alors, peux-tu me dire *autre chose* qui pourrait m„être utile ? Qu“est-ce qui m„attend à l“intérieur ?"':
            # a209 # r63411
            jump deionarra_s68


# s68 # say63412
label deionarra_s68: # from 66.2 66.3 67.0
    nr '"Il n„y a pas de ténèbres naturelles dans la Forteresse, mon Amour, seules les ombres de ceux qui sont morts à ta place. Les énergies de ce plan les nourrissent et leur haine pour toi ne connaît aucune limite. Elles ne te permettront pas de partir." Elle jette un regard aux murs de la Forteresse . "N“entre pas, je t„en supplie !"'

    menu:
        '"Mais - mes alliés sont là-dedans. Je ne peux les abandonner. Sais-tu où ils pourraient être ?"' if deionarraLogic.r63413_condition():
            # a210 # r63413
            jump deionarra_s69

        '"Mais - l„un  de mes alliés est là-dedans. Je ne peux l“abandonner. Sais-tu où mon compagnon pourrait être ?"' if deionarraLogic.r63414_condition():
            # a211 # r63414
            jump deionarra_s69

        '"Je dois entrer dans la Forteresse. Je ne peux pas reculer."' if deionarraLogic.r63415_condition():
            # a212 # r63415
            $ deionarraLogic.j68117_s68_r63415_action()
            jump deionarra_s75


# s69 # say63416
label deionarra_s69: # from 68.0 68.1
    nr '"Si tu es venu avec d„autres, ils ont été séparés de toi à ton arrivée - c“est dans la nature de cet endroit de séparer les êtres vivants… puis de les tuer." Elle semble affolée. "La Forteresse est grande de plusieurs kilomètres - y trouver tes amis sera difficile."'

    menu:
        '"Je dois les trouver. Je n„ai pas le choix."':
            # a213 # r63417
            $ deionarraLogic.j68117_s69_r63417_action()
            jump deionarra_s75


# s70 # say63418
label deionarra_s70: # from 75.0
    nr '"Encore une chose…" Deionarra marque une pause, comme si elle essayait de se remémorer un vieux souvenir fuyant. "Il y a… il y a de grandes horloges dans l„antichambre…" Sa voix devient plus assurée. "Tu as dit autrefois que ces horloges avaient été la clé permettant de fuir l“antichambre… lorsque tu étais emprisonné ici." Elle t„observe. "Je sais que je ne peux pas te détourner de ton but, mon Amour… Alors, je veillerai sur toi, et je t“aiderai si je le peux."'

    menu:
        '"J„ai amené ton anneau, Deionarra. J“ai trouvé ce que tu m„as légué."' if deionarraLogic.r63419_condition():
            # a214 # r63419
            $ deionarraLogic.r63419_action()
            jump deionarra_s71

        '"Je te remercie, esprit. Je dois y aller maintenant."' if deionarraLogic.r63420_condition():
            # a215 # r63420
            jump deionarra_dispose

        '"Je te remercie, Deionarra. Je dois y aller maintenant."' if deionarraLogic.r63421_condition():
            # a216 # r63421
            jump deionarra_dispose


# s71 # say63422
label deionarra_s71: # from 70.0
    nr '"L„anneau contient encore une partie de moi, mon Amour. Quand tu le portes, tu portes mon cœur avec toi." Elle ferme les yeux un moment et, soudain, tu te sens baigné de chaleur. Deionarra ouvre les yeux, puis sourit. "Je savais que tu reviendrais vers moi avec. Maintenant conserve-le avec ma bénédiction et garde-le près de ton cœur. Par son intermédiaire, je te défendrai."'

    menu:
        '"Je te remercie, Deionarra. Je dois y aller maintenant."' if deionarraLogic.r63423_condition():
            # a217 # r63423
            jump deionarra_dispose


# s72 # say66912
label deionarra_s72: # from 27.1
    nr '"Tu… je ne peux…" Elle s„immobilise brusquement, puis se remet à parler lentement, comme si sa propre voix lui faisait peur. "La vérité, c“est que tu es un être qui est mort de nombreuses fois. Tes nombreux décès t„ont fait perdre le contact avec les réalités de l“existence, et tu tiens dans ta main l„étincelle de la vie… et de la mort. C“est pour cette raison que tu peux ressusciter ceux qui meurent près de toi."'

    jump deionarra_s73


# s73 # say66913
label deionarra_s73: # from 72.0
    nr 'Alors que Deionarra te parle, tu ressens une étrange sensation au niveau de la nuque. Quelque chose te pousse à regarder ta main et, quand tu le fais, tu vois par transparence le sang qui coule lentement dans tes veines pour irriguer tes muscles et donner vie à ton corps…'

    menu:
        '"Qu…"':
            # a218 # r66914
            $ deionarraLogic.r66914_action()
            jump deionarra_s74


# s74 # say66915
label deionarra_s74: # from 73.0
    nr 'Et tu sais que Deionarra a raison. Tu te rappelles soudain comment trouver et faire renaître la moindre étincelle de vie, ce qui t„intrigue et te fascine à la fois.  ^NREMARQUE : tu viens de te rappeler comment ramener les autres à la vie. Pour utiliser le pouvoir, clique sur “Capacité spéciale„ dans le menu rapide. Seuls peuvent bénéficier de ce pouvoir les membres de ton groupe qui sont morts en ta présence ; il ne fonctionne pas sur les individus qui ne t“accompagnent pas dans ta quête, ni sur les compagnons que tu retires de ton groupe une fois morts.^-'

    menu:
        '"J-je… j„ai d“autres questions…"':
            # a219 # r66916
            jump deionarra_s10


# s75 # say68114
label deionarra_s75: # from 68.2 69.0
    nr '"Très bien, mon amour. Si tu souhaites continuer, il faut que tu saches ceci : une fois l„entrée de la forteresse franchie, tu te retrouveras dans une grande antichambre emplie d“ombres. Dépêche-toi et ne les laisse surtout pas se rassembler autour de toi, sans quoi tu mourras !"'

    jump deionarra_s70
