init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1041_logic import Zm1041Logic
    zm1041Logic = Zm1041Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1041.DLG
# ###


# s0 # say6573
label zm1041_s0: # - # IF ~  Global("Bei","GLOBAL",0)
    nr 'Le numéro „1041“ est gravé sur le front de ce cadavre mâle réanimé. Malgré sa chair tendue et desséchée, l„ensemble devait autrefois avoir quelque aspect “exotique„. Les lèvres de ce zombi sont cousues, probablement pour empêcher tout gémissement, et l“ensemble dégage une forte odeur de formol.{#zm1041_s0_}'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"{#zm1041_s0_r6576}' if zm1041Logic.r6576_condition():
            # a0 # r6576
            $ zm1041Logic.r6576_action()
            jump zm1041_s1

        '"Alors… t„as vu quelque chose d“intéressant ?"{#zm1041_s0_r6577}' if zm1041Logic.r6577_condition():
            # a1 # r6577
            jump zm1041_s1

        '"Je sais que tu n„es pas un zombi. Tu ne trompes personne."{#zm1041_s0_r6578}' if zm1041Logic.r6578_condition():
            # a2 # r6578
            jump zm1041_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm1041_s0_r6579}' if zm1041Logic.r6579_condition():
            # a3 # r6579
            jump zm1041_s2

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm1041_s0_r6580}' if zm1041Logic.r6580_condition():
            # a4 # r6580
            jump zm1041_s37

        '"Je suis heureux de t„avoir parlé. Au revoir."{#zm1041_s0_r6581}':
            # a5 # r6581
            jump zm1041_dispose

        'Laisse le cadavre tranquille.{#zm1041_s0_r9095}':
            # a6 # r9095
            jump zm1041_dispose


# s1 # say6574
label zm1041_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.{#zm1041_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm1041_s1_r6582}':
            # a7 # r6582
            jump zm1041_dispose


# s2 # say6575
label zm1041_s2: # from 0.3
    nr 'Le cadavre chancelle quelque peu tandis que l„esprit regagne son ancienne demeure. Ses yeux en forme d“amandes s„assombrissent de nouveau, une légère ombre couleur bronze recouvrant la chair pâle. Le corps se redresse et époussette ses vêtements.  Remarquant enfin son interlocuteur, le fantôme te regarde pendant un moment d“un air intrigué, puis s„incline légèrement.{#zm1041_s2_}'

    menu:
        'Réponds à son salut.{#zm1041_s2_r6583}':
            # a8 # r6583
            $ zm1041Logic.r6583_action()
            jump zm1041_s3

        '"J„ai quelques questions…"{#zm1041_s2_r9096}':
            # a9 # r9096
            $ zm1041Logic.r9096_action()
            jump zm1041_s4

        'Laisse l„esprit.{#zm1041_s2_r9097}':
            # a10 # r9097
            $ zm1041Logic.r9097_action()
            jump zm1041_dispose


# s3 # say9060
label zm1041_s3: # from 2.0
    nr 'L„esprit sourit l“espace d„un instant, visiblement satisfait. Puis il prend la pose, une main derrière lui, et prend la parole d“une voix douce et chantante.  "Suiang jianne shyr nan bye yih nan ; Dong feng wu lih bay hua tsarn ; Chuen tsarn daw syy sy fang jinn ; Lah Jiuh cherng huei ley shyy gan."  Cela dit, il reste là, immobile, à attendre ta réponse d„un air patient.{#zm1041_s3_}'

    menu:
        '"Je… euh…"{#zm1041_s3_r9098}':
            # a11 # r9098
            jump zm1041_s5

        '"Je ne sais pas du tout de quoi tu parles… Tu ne comprends vraiment rien de ce que je te dis ?"{#zm1041_s3_r9099}':
            # a12 # r9099
            jump zm1041_s5

        '"Je ne te comprends pas. Au revoir."{#zm1041_s3_r9100}':
            # a13 # r9100
            jump zm1041_dispose


# s4 # say9061
label zm1041_s4: # from 2.1
    nr 'Tu ouvres la bouche pour lui poser une question, mais l„esprit te coupe la parole d“une voix douce et chantante :  "Suiang jianne shyr nan bye yih nan ; Dong feng wu lih bay hua tsarn ; Chuen tsarn daw syy sy fang jinn ; Lah Jiuh cherng huei ley shyy gan."  Cela dit, il reste là, immobile, à attendre ta réponse d„un air patient.{#zm1041_s4_}'

    menu:
        '"Je… euh…"{#zm1041_s4_r9101}':
            # a14 # r9101
            jump zm1041_s5

        '"Je ne sais pas du tout de quoi tu parles… Tu ne comprends vraiment rien de ce que je te dis ?"{#zm1041_s4_r9102}':
            # a15 # r9102
            jump zm1041_s5

        '"Je ne te comprends pas. Au revoir."{#zm1041_s4_r9103}':
            # a16 # r9103
            jump zm1041_dispose


# s5 # say9062
label zm1041_s5: # from 3.0 3.1 4.0 4.1
    nr 'L„esprit s“interrompt, comme pour réfléchir, puis il reprend la parole d„une voix dont l“accent très marqué ne dissimule pas le raffinement. "Je vous en prie, cher monsieur, pardonnez-moi. Voici bien longtemps que je n„ai pas dû parler votre langue. Sans doute mon esprit s“est-il retrouvé convoqué ici pour répondre à vos questions. Qu„aimeriez-vous donc savoir ?"{#zm1041_s5_}'

    menu:
        '"Qui es-tu ?"{#zm1041_s5_r9104}':
            # a17 # r9104
            jump zm1041_s6

        '"D„où viens-tu ?"{#zm1041_s5_r9105}':
            # a18 # r9105
            jump zm1041_s7

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"{#zm1041_s5_r9106}':
            # a19 # r9106
            jump zm1041_s8

        '"Où es-tu… Où réside ton esprit… en ce moment ?"{#zm1041_s5_r9107}':
            # a20 # r9107
            jump zm1041_s11

        '"Que sais-tu sur cet endroit ?"{#zm1041_s5_r9108}':
            # a21 # r9108
            jump zm1041_s9

        '"Connais-tu un certain Pharod ?"{#zm1041_s5_r9109}' if zm1041Logic.r9109_condition():
            # a22 # r9109
            jump zm1041_s10

        '"Rien, peu importe."{#zm1041_s5_r9110}':
            # a23 # r9110
            jump zm1041_dispose


# s6 # say9063
label zm1041_s6: # from 5.0 14.0
    nr '"C„est une question difficile… il m“est plus aisé de vous dire qui *j„étais*. En l“espèce, Zhuang Bei, tuteur et garde du corps de Liu Xixi, fille du Censeur Chi„an."{#zm1041_s6_}'

    menu:
        '"Tuteur *et* garde du corps ?"{#zm1041_s6_r9111}':
            # a24 # r9111
            jump zm1041_s12

        '"Hmm. Impressionnant."{#zm1041_s6_r9112}':
            # a25 # r9112
            jump zm1041_s13

        '"Je vois. J„ai d“autres questions…"{#zm1041_s6_r9113}':
            # a26 # r9113
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1041_s6_r9114}':
            # a27 # r9114
            jump zm1041_dispose


# s7 # say9064
label zm1041_s7: # from 5.1 14.1
    nr '"Je vivais en un lieu appelé Shou Lung… que je considérais jadis comme le centre de l„univers." L“idée paraît l„amuser. "Il y a tant de lieux, tant de mondes… Je me considérais alors comme un fin lettré, et pourtant j“en savais si peu à ma mort…"{#zm1041_s7_}'

    menu:
        '"Comment es-tu arrivé ici depuis ce „Shou Lung“ ?"{#zm1041_s7_r9115}':
            # a28 # r9115
            jump zm1041_s16

        '"Je vois. J„ai d“autres questions…"{#zm1041_s7_r9116}':
            # a29 # r9116
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1041_s7_r9117}':
            # a30 # r9117
            jump zm1041_dispose


# s8 # say9065
label zm1041_s8: # from 5.2 14.2
    nr '"J„ai été assassiné par l“un des hommes que j„ai accompagné par hasard ici. Je l“ai cherché dans cette cité des semaines durant - apprenant ainsi votre langue - et c„est lui qui m“a trouvé. Assassin patenté, il a déjoué mes précautions et m„a tué durant mon sommeil."{#zm1041_s8_}'

    menu:
        '"Accompagné par hasard ?"{#zm1041_s8_r9118}':
            # a31 # r9118
            jump zm1041_s16

        '"Assassiné ?"{#zm1041_s8_r9119}':
            # a32 # r9119
            jump zm1041_s16

        '"Je vois, mais sais-tu ce que ton cadavre fait ici ?"{#zm1041_s8_r9120}':
            # a33 # r9120
            jump zm1041_s17

        '"Tu t„exprimes bien pour quelqu“un qui a eu si peu de temps pour apprendre une langue."{#zm1041_s8_r9121}':
            # a34 # r9121
            jump zm1041_s18

        '"Je vois. J„ai d“autres questions…"{#zm1041_s8_r9122}':
            # a35 # r9122
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1041_s8_r9123}':
            # a36 # r9123
            jump zm1041_dispose


# s9 # say9066
label zm1041_s9: # from 5.4 14.4
    nr '"Ce bâtiment ? Oh, j„en avais entendu parler, je savais que mon cadavre devait y travailler, voilà tout." "Je n“en sais pas plus sur cette vaste cité, „Sigil“. J„ai passé des semaines à chercher ceux avec lesquels je me suis trouvé ici et à apprendre la langue ; cela me désolait, mais je n“ai eu de temps pour rien d„autre. Les merveilles innombrables de ce lieu auraient pu m“en apprendre tellement…"{#zm1041_s9_}'

    menu:
        '"Ton cadavre devait servir ici ? Comment est-ce arrivé ?"{#zm1041_s9_r9124}':
            # a37 # r9124
            jump zm1041_s17

        '"Accompagné par hasard ?"{#zm1041_s9_r9125}':
            # a38 # r9125
            jump zm1041_s16

        '"Tu t„exprimes bien pour quelqu“un qui a eu si peu de temps pour apprendre une langue."{#zm1041_s9_r9126}':
            # a39 # r9126
            jump zm1041_s18

        '"Je vois. J„ai d“autres questions…"{#zm1041_s9_r9127}':
            # a40 # r9127
            jump zm1041_s14

        '"Très bien. Nous aurons peut-être l„occasion de rediscuter une autre fois."{#zm1041_s9_r9128}':
            # a41 # r9128
            jump zm1041_dispose


# s10 # say9067
label zm1041_s10: # from 5.5 14.5
    nr '"Non, ce nom ne me dit rien, je regrette."{#zm1041_s10_}'

    menu:
        '"Je comprends. J„ai d“autres questions…"{#zm1041_s10_r9129}':
            # a42 # r9129
            jump zm1041_s14

        '"Très bien. Nous aurons peut-être l„occasion de rediscuter une autre fois."{#zm1041_s10_r9130}':
            # a43 # r9130
            jump zm1041_dispose


# s11 # say9068
label zm1041_s11: # from 5.3 14.3
    nr 'L„esprit prend un air chagrin. "Je… Mon esprit réside dans le royaume de l“Illustre Magistrat Yen-Wang-Yeh, le Palais du Jugement."{#zm1041_s11_}'

    menu:
        '"Quelque chose ne va pas ? Cet endroit est-il si terrible ?"{#zm1041_s11_r9131}':
            # a44 # r9131
            jump zm1041_s15

        '"Je comprends. J„ai d“autres questions…"{#zm1041_s11_r9132}':
            # a45 # r9132
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1041_s11_r9133}':
            # a46 # r9133
            jump zm1041_dispose


# s12 # say9069
label zm1041_s12: # from 6.0 16.1
    nr '"Oui ; ce n„est pas rare, là d“où je viens. Ma tâche consistait à escorter mademoiselle Liu en toutes circonstances, pour la protéger, et aussi pour l„éduquer. J“avais une certaine réputation, et comme soldat, et comme érudit, voyez-vous. Un meilleur soldat lui aurait peut-être davantage servi, cependant…"{#zm1041_s12_}'

    menu:
        '"Davantage servi ? As-tu échoué ?"{#zm1041_s12_r9134}':
            # a47 # r9134
            jump zm1041_s16

        '"Peut-être. J„ai d“autres questions…"{#zm1041_s12_r9135}':
            # a48 # r9135
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1041_s12_r9136}':
            # a49 # r9136
            jump zm1041_dispose


# s13 # say9070
label zm1041_s13: # from 6.1
    nr '"Oui. Trop, peut-être. J„ai… manqué à mon devoir envers mademoiselle Liu et le Censeur.{#zm1041_s13_}'

    menu:
        '"Comment cela ?"{#zm1041_s13_r9137}':
            # a50 # r9137
            jump zm1041_s16

        '"J„ai d“autres questions…"{#zm1041_s13_r9138}':
            # a51 # r9138
            jump zm1041_s14

        '"Je vois. Nous aurons peut-être l„occasion de rediscuter une autre fois."{#zm1041_s13_r9139}':
            # a52 # r9139
            jump zm1041_dispose


# s14 # say9071
label zm1041_s14: # from 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
    nr 'L„esprit hoche la tête avec une grâce étonnante pour un cadavre décati. "N“hésitez pas, posez-moi les questions que vous voulez."{#zm1041_s14_}'

    menu:
        '"Qui es-tu ?"{#zm1041_s14_r9140}':
            # a53 # r9140
            jump zm1041_s6

        '"D„où viens-tu ?"{#zm1041_s14_r9141}':
            # a54 # r9141
            jump zm1041_s7

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"{#zm1041_s14_r9142}':
            # a55 # r9142
            jump zm1041_s8

        '"Où es-tu… Où réside ton esprit… en ce moment ?"{#zm1041_s14_r9143}':
            # a56 # r9143
            jump zm1041_s11

        '"Que sais-tu sur cet endroit ?"{#zm1041_s14_r9144}':
            # a57 # r9144
            jump zm1041_s9

        '"Connais-tu un certain Pharod ?"{#zm1041_s14_r9145}' if zm1041Logic.r9145_condition():
            # a58 # r9145
            jump zm1041_s10

        '"Que disais-tu lorsque tu es apparu la première fois ?"{#zm1041_s14_r9146}':
            # a59 # r9146
            jump zm1041_s26

        '"Peu importe. Au revoir."{#zm1041_s14_r9147}':
            # a60 # r9147
            jump zm1041_dispose


# s15 # say9072
label zm1041_s15: # from 11.0
    nr '"Voyez-vous…" L„esprit se frotte les mains - des mains desséchées -, perdu dans ses réflexions. "À mon arrivée, je devais rejoindre ma *véritable* destination finale dans de brefs délais. Mais il s“est produit un incident alors qu„on m“escortait à travers le Palais, et on m„a laissé seul dans une petite pièce en promettant de s“occuper de moi sous peu."{#zm1041_s15_}'

    menu:
        '"Et alors… ?"{#zm1041_s15_r9148}':
            # a61 # r9148
            jump zm1041_s19

        '"Ta destination finale ? Où devait-on t„envoyer ?"{#zm1041_s15_r9149}':
            # a62 # r9149
            jump zm1041_s20

        '"Attends… Avant de te laisser continuer, J„ai d“autres questions."{#zm1041_s15_r9150}':
            # a63 # r9150
            jump zm1041_s14

        '"J„écouterai peut-être la suite une autre fois. Au revoir."{#zm1041_s15_r9151}':
            # a64 # r9151
            jump zm1041_dispose


# s16 # say9073
label zm1041_s16: # from 7.0 8.0 8.1 9.1 12.0 13.0
    nr '"Voilà toute l„histoire. En tant que tuteur et garde du corps de Liu Xixi, je suis bien sûr chargé et de son éducation et de sa protection. Un soir où le ciel était dégagé, nous nous tenions sur un balcon dominant la Cour intérieure. Je lui apprenais les diverses constellations.{#zm1041_s16_}'

    menu:
        '"S„il te plaît, continue."{#zm1041_s16_r9152}':
            # a65 # r9152
            jump zm1041_s21

        '"Tuteur *et* garde du corps ?"{#zm1041_s16_r9153}':
            # a66 # r9153
            jump zm1041_s12

        '"J„écouterai peut-être la suite une autre fois. Au revoir."{#zm1041_s16_r9154}':
            # a67 # r9154
            jump zm1041_dispose


# s17 # say9074
label zm1041_s17: # from 8.2 9.0
    nr '"Ah, ça. Un soir, une jeune femme a pris contact avec moi dans la rue ; elle faisait partie des Hommes-Poussière, l„organisation qui gère ces installations." "Elle m“a proposé un marché : en échange d„une petite somme d“argent, mon cadavre pourrait être… utilisé… ici après mon trépas."{#zm1041_s17_}'

    menu:
        '"Et ça ne t„a pas paru un peu étrange ?"{#zm1041_s17_r9155}':
            # a68 # r9155
            jump zm1041_s22

        '"Je vois. Encore une question, si tu permets…"{#zm1041_s17_r9156}':
            # a69 # r9156
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."{#zm1041_s17_r9157}':
            # a70 # r9157
            jump zm1041_dispose


# s18 # say9075
label zm1041_s18: # from 8.3 9.2
    nr '"La linguistique est un de mes principaux centres d„intérêt. Une fois lettré, j“ai constaté que j„apprenais de nouvelles langues sans aucun problème."{#zm1041_s18_}'

    menu:
        '"Ceci expliquerait cela. Une autre question…"{#zm1041_s18_r9158}':
            # a71 # r9158
            jump zm1041_s14

        '"Je comprends. Merci de m„avoir parlé avec moi. Au revoir."{#zm1041_s18_r9159}':
            # a72 # r9159
            jump zm1041_dispose


# s19 # say9076
label zm1041_s19: # from 15.0 20.0
    nr '"Et bien… nul n„est jamais revenu me chercher. J“ai attendu durant des jours entiers, en vain. J„ai fini par explorer le Palais, dans l“espoir de rencontrer quelqu„un qui m“indiquerait le chemin…" Il pousse un soupir chargé de fragrance de lotion d„embaumement. "Il y a 9001 pièces, ici ; de chacune de celles que j“ai visitées, on m„a renvoyé vers une autre. À ce qu“il semble, je suis égaré, et tout le monde m„a oublié."{#zm1041_s19_}'

    menu:
        '"Je vois. Mais j„ai une autre question…"{#zm1041_s19_r9160}':
            # a73 # r9160
            jump zm1041_s14

        '"Puis-je t„aider d“une manière ou d„une autre ?"{#zm1041_s19_r9161}':
            # a74 # r9161
            $ zm1041Logic.r9161_action()
            jump zm1041_s24

        '"Pauvre imbécile… Je me demande combien de temps ils vont te laisser errer !"{#zm1041_s19_r9162}':
            # a75 # r9162
            $ zm1041Logic.r9162_action()
            jump zm1041_s25

        '"Je te souhaite bonne chance. Au revoir."{#zm1041_s19_r9163}':
            # a76 # r9163
            jump zm1041_dispose


# s20 # say9077
label zm1041_s20: # from 15.1
    nr '"Je ne saurais dire. Tout cela est si frustrant !" Il s„interrompt, le temps de retrouver son calme ; les articulations et les tendons du cadavre crissent doucement tout en se relâchant.{#zm1041_s20_}'

    menu:
        '"Je t„en prie, continue ton histoire."{#zm1041_s20_r9164}':
            # a77 # r9164
            jump zm1041_s19

        '"J„imagine… J“ai une autre question…"{#zm1041_s20_r9165}':
            # a78 # r9165
            jump zm1041_s14

        '"J„écouterai peut-être la suite une autre fois. Au revoir."{#zm1041_s20_r9166}':
            # a79 # r9166
            jump zm1041_dispose


# s21 # say9078
label zm1041_s21: # from 16.0
    nr '"Certes. Nous observions donc le ciel quand deux assassins se sont laissés tomber du toit sur le balcon, sans doute pour tuer ou enlever mademoiselle Liu. Tout en criant à la garde, j„ai pris ma lame et je me suis jeté devant elle pour la protéger. Au cours du combat, la balustrade a cédé et nous sommes tombés tous les quatre dans le Portail de Jade."{#zm1041_s21_}'

    menu:
        '"Le quoi ? Le Portail de Jade ?"{#zm1041_s21_r9167}':
            # a80 # r9167
            jump zm1041_s23

        '"Attends… Avant de te laisser continuer, J„ai d“autres questions."{#zm1041_s21_r9168}':
            # a81 # r9168
            jump zm1041_s14

        '"J„écouterai peut-être la suite une autre fois. Au revoir."{#zm1041_s21_r9169}':
            # a82 # r9169
            jump zm1041_dispose


# s22 # say9079
label zm1041_s22: # from 17.0
    nr '"Au début, peut-être… l„idée est assez macabre, somme toute. Mais après avoir parlé avec elle un moment, il m“est apparu que les Hommes-Poussière ont une vision de la mort semblable à la mienne. Mon corps ? Un simple véhicule. Selon moi, la „Vraie Mort“ dont ils parlent est l„état supérieur que je veux atteindre… détaché du monde matériel. Si mon corps, une fois sa fonction de réceptacle mortel achevée, peut servir à quoi que ce soit ici, tant mieux." L“esprit te dédie un sourire cordial.{#zm1041_s22_}'

    menu:
        '"Je vois ce que tu veux dire. Une autre question…"{#zm1041_s22_r9170}':
            # a83 # r9170
            jump zm1041_s14

        '"Intéressant. Il vaut mieux que je m„en aille maintenant. Au revoir."{#zm1041_s22_r9171}':
            # a84 # r9171
            jump zm1041_dispose


# s23 # say9080
label zm1041_s23: # from 21.0
    nr '"Oh ! Pardonnez-moi. J„avais présumé que vous saviez… Le Portail de Jade est un bassin dallé de carreaux de stéatite verts et blancs situé dans la Cour Intérieure. On l“appelle le Portail car, à ce qui se dit, des images fugitives d„un autre lieu apparaissent parfois dans ses eaux scintillantes."{#zm1041_s23_}'

    menu:
        '"Je vois. Je t„en prie, continue ton histoire."{#zm1041_s23_r9172}':
            # a85 # r9172
            jump zm1041_s27

        '"Avant de te laisser continuer, j„aurais d“autres questions…"{#zm1041_s23_r9173}':
            # a86 # r9173
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir pour l“instant. Au revoir."{#zm1041_s23_r9174}':
            # a87 # r9174
            jump zm1041_dispose


# s24 # say9081
label zm1041_s24: # from 19.1
    nr '"Trop aimable. Je crains hélas que vous n„y puissiez rien… Je gage que, le moment venu, on me mettra sur le bon chemin. Je ne saurais trop vous remercier, toutefois."{#zm1041_s24_}'

    menu:
        '"Bien sûr. Dis-moi, j„ai une autre question…"{#zm1041_s24_r9175}':
            # a88 # r9175
            jump zm1041_s14

        '"Pas d„inquiétudes. Je ferais mieux de m“en aller. Adieu."{#zm1041_s24_r9176}':
            # a89 # r9176
            jump zm1041_dispose


# s25 # say9082
label zm1041_s25: # from 19.2 33.1 35.1
    nr 'L„esprit te dévisage froidement, et ses yeux s“illuminent d„une lueur spectrale ; il semble que tu l“aies froissé.{#zm1041_s25_}'

    menu:
        '"Toutes mes excuses. Puis-je te demander autre chose ?"{#zm1041_s25_r9177}':
            # a90 # r9177
            jump zm1041_s14

        'Pars, laisse l„esprit flotter là.{#zm1041_s25_r9178}':
            # a91 # r9178
            jump zm1041_dispose


# s26 # say9083
label zm1041_s26: # from 14.6
    nr '"Oh, ça… ah… c„était un poème. Difficile à traduire. Vous avez peut-être d“autres questions ?" Il te sourit d„un air gêné.{#zm1041_s26_}'

    menu:
        '"Oui… Oui."{#zm1041_s26_r9179}':
            # a92 # r9179
            jump zm1041_s14

        '"Non… Mais j„aimerais en savoir plus sur ce poème."{#zm1041_s26_r9180}':
            # a93 # r9180
            jump zm1041_s28

        '"Non. En fait, je crois que je vais partir. Au revoir."{#zm1041_s26_r9181}':
            # a94 # r9181
            jump zm1041_dispose


# s27 # say9084
label zm1041_s27: # from 23.0
    nr '"Comme je le disais, nous sommes tombés dans le Portail de Jade. Je n„avais jamais cru qu“il s„agissait d“un *véritable* portail, mais c„était le cas ! Je me suis retrouvé allongé dans une ruelle inconnue, la jambe brisée. Le temps que je reprenne mes esprits, les assassins s“enfuyaient, l„un d“eux portant Liu Xixi sur son épaule."{#zm1041_s27_}'

    menu:
        '"Étrange. Continue, je t„en prie."{#zm1041_s27_r9182}':
            # a95 # r9182
            jump zm1041_s31

        '"Oh. Avant de te laisser continuer, j„aurais d“autres questions…"{#zm1041_s27_r9183}':
            # a96 # r9183
            jump zm1041_s14

        '"Je vois. Merci, mais il vaut mieux que je m„en aille maintenant."{#zm1041_s27_r9184}':
            # a97 # r9184
            jump zm1041_dispose


# s28 # say9085
label zm1041_s28: # from 26.1
    nr '"Très bien." Il réfléchit, en se tapotant le bout des doigts - de longs doigts osseux. Lorsqu„il reprend la parole ensuite, c“est sur un ton mesuré et cadencé :  "Il est aussi difficile de se rencontrer que de se séparer. Le vent du nord faiblit ; des centaines de fleurs se fanent. Meurent les vers printaniers, et la soie ne revient plus. La cire des bougies devient cendres, et les larmes cessent."  Il t„adresse un petit sourire poli.{#zm1041_s28_}'

    menu:
        '"Ah… j„ai une autre question."{#zm1041_s28_r9185}':
            # a98 # r9185
            jump zm1041_s14

        '"Intéressant. Qu„est-ce que ça veut dire ?"{#zm1041_s28_r9186}':
            # a99 # r9186
            jump zm1041_s29

        '"Alors, tu dis que j„aurais dû laisser ton esprit tranquille ? Je t“ai offensé en t„appelant ici ?"{#zm1041_s28_r9187}' if zm1041Logic.r9187_condition():
            # a100 # r9187
            jump zm1041_s30

        '"Oh. Je te remercie pour ces explications. Au revoir."{#zm1041_s28_r9188}':
            # a101 # r9188
            jump zm1041_dispose


# s29 # say9086
label zm1041_s29: # from 28.1
    nr '"Et bien, j„ai honte d“admettre que je tentais subtilement de dire… que tu ferais mieux de laisser les esprits des morts en paix. Je n„ai plus aucun désir de prendre part à ce…" D“un grand geste de la main, l„esprit indique tout ce qui l“entoure. "… monde."{#zm1041_s29_}'

    menu:
        '"Hmm. Je vois. J„avais autre chose à te demander."{#zm1041_s29_r9189}':
            # a102 # r9189
            jump zm1041_s14

        '"Je comprends. Alors, au revoir."{#zm1041_s29_r9190}':
            # a103 # r9190
            jump zm1041_dispose


# s30 # say9087
label zm1041_s30: # from 28.2
    nr '"Euh… et bien… non. J„espérais me montrer moins direct ; éviter la confrontation, voyez-vous. Il se trouve que je n“ai plus aucun désir de prendre part à ce…" D„un grand geste de la main, l“esprit indique tout ce qui l„entoure. "… monde."{#zm1041_s30_}'

    menu:
        '"Hmm. Je vois. J„avais autre chose à te demander…"{#zm1041_s30_r9191}':
            # a104 # r9191
            jump zm1041_s14

        '"Je comprends. Alors, au revoir."{#zm1041_s30_r9192}':
            # a105 # r9192
            jump zm1041_dispose


# s31 # say9088
label zm1041_s31: # from 27.0
    nr '"Oh, c„est tout. J“ai arpenté la ville en boitant bas jusqu„à ce que je trouve quelqu“un pour soigner ma jambe ; le peu d„argent que j“avais y est passé. J„ai appris la langue locale au contact de ce guérisseur et d“autres personnes, tout en cherchant partout les deux assassins et ma pupille."{#zm1041_s31_}'

    menu:
        '"Et tu ne les as jamais retrouvés ?"{#zm1041_s31_r9193}':
            # a106 # r9193
            jump zm1041_s32

        '"Hmm. Tu sais, je trouve cela étrange que tu aies appris la langue si vite…"{#zm1041_s31_r9194}':
            # a107 # r9194
            jump zm1041_s38

        '"Oh. Avant de te laisser continuer, j„aurais d“autres questions…"{#zm1041_s31_r9195}':
            # a108 # r9195
            jump zm1041_s14

        '"J„écouterai la suite une autre fois. Au revoir."{#zm1041_s31_r9196}':
            # a109 # r9196
            jump zm1041_dispose


# s32 # say9089
label zm1041_s32: # from 31.0 38.0
    nr '"J„en ai retrouvé un, mais il a refusé de parler. Je l“ai exécuté et j„ai gardé sa tête dans un sac de soie, afin de la rapporter au Censeur quand je lui ramènerais sa fille." Il fronce les sourcils. "Quant à l“autre, il m„a échappé, et, surtout… il m“a assassiné avant que je puisse le tuer et secourir ma pupille. C„est triste, mais tout cela appartient au passé, désormais."{#zm1041_s32_}'

    menu:
        '"Aurais-tu su comment retourner dans ton pays, si tu avais sauvé… „Xixi“ ?"{#zm1041_s32_r9197}':
            # a110 # r9197
            jump zm1041_s33

        '"C„est une histoire intéressante. Mais J“ai d„autres questions…"{#zm1041_s32_r9198}':
            # a111 # r9198
            jump zm1041_s14

        '"Fascinant. Il vaut mieux que je te laisse maintenant. Au revoir."{#zm1041_s32_r9199}':
            # a112 # r9199
            jump zm1041_dispose


# s33 # say9090
label zm1041_s33: # from 32.0
    nr '"Non, mais je pense que j„aurais trouvé un moyen. Peu importe, à présent."{#zm1041_s33_}'

    menu:
        '"Je me demande s„ils sont toujours dans la cité. Je pourrais peut-être les trouver et aider cette fille."{#zm1041_s33_r9200}':
            # a113 # r9200
            $ zm1041Logic.r9200_action()
            jump zm1041_s34

        '"Ça a l„air facile pour toi de ne pas te préoccuper de tes devoirs sous prétexte que tu es mort. Je ne sais pas si je pourrais laisser passer une chose pareille."{#zm1041_s33_r9201}':
            # a114 # r9201
            $ zm1041Logic.r9201_action()
            jump zm1041_s25

        '"Intéressant. Permets-moi de te demander autre chose…"{#zm1041_s33_r9202}':
            # a115 # r9202
            jump zm1041_s14

        '"Hmm. Je vais te quitter maintenant. Bonne chance."{#zm1041_s33_r9203}':
            # a116 # r9203
            jump zm1041_dispose


# s34 # say9091
label zm1041_s34: # from 33.0
    nr '"Ton offre te marque comme un esprit noble, mais… il s„est écoulé plus de soixante-quinze ans depuis mon assassinat. Mon meurtrier doit être mort depuis longtemps, et Xixi aussi, sans doute."{#zm1041_s34_}'

    menu:
        '"Hmm. Peu importe. J„ai une autre question…"{#zm1041_s34_r9205}':
            # a117 # r9205
            jump zm1041_s14

        '"Bon, peu importe. Au revoir."{#zm1041_s34_r9206}':
            # a118 # r9206
            jump zm1041_dispose


# s35 # say9092
label zm1041_s35: # -
    nr '"L„assassin a des traits comparables aux miens, et un lotus tatoué sur le front." Voyant ta perplexité, il ajoute : "C“est une sorte de fleur, à sept pétales. Liu Xixi est une jeune fille ; elle n„a que quatorze ans. Elle saurait peut-être où trouver le portail, et comment l“activer. Il se peut que l„assassin le sache également."{#zm1041_s35_}'

    menu:
        '"Si je la vois, je ferai mon possible pour l„aider en souvenir de toi."{#zm1041_s35_r9207}':
            # a119 # r9207
            $ zm1041Logic.r9207_action()
            jump zm1041_s36

        '"Peu importe. Je n„ai pas le temps."{#zm1041_s35_r9208}':
            # a120 # r9208
            $ zm1041Logic.r9208_action()
            jump zm1041_s25

        '"Très bien. J„ai une autre question…"{#zm1041_s35_r9209}':
            # a121 # r9209
            $ zm1041Logic.r9209_action()
            jump zm1041_s14

        '"C„est tout ce qu“il me faut. Au revoir."{#zm1041_s35_r9210}':
            # a122 # r9210
            $ zm1041Logic.r9210_action()
            jump zm1041_dispose


# s36 # say9093
label zm1041_s36: # from 35.0
    nr '"Vous êtes généreux, et vous avez le sens de l„honneur. Ne le faites pas pour moi, cependant… c“est la jeune fille et son père que vous aidez."{#zm1041_s36_}'

    menu:
        '"Très bien. J„ai une autre question…"{#zm1041_s36_r9211}':
            # a123 # r9211
            jump zm1041_s14

        '"Je comprends. Au revoir, esprit."{#zm1041_s36_r9212}':
            # a124 # r9212
            jump zm1041_dispose


# s37 # say9094
label zm1041_s37: # from 0.4 # IF ~  Global("Bei","GLOBAL",1)
    nr '"Je ne m„attendais certes pas à vous revoir." L“esprit s„incline poliment, mais son visage reste fermé. "Que voulez-vous de moi ?"{#zm1041_s37_}'

    menu:
        '"Une question…"{#zm1041_s37_r9213}':
            # a125 # r9213
            jump zm1041_s14

        '"Rien. Je vais te laisser."{#zm1041_s37_r9214}':
            # a126 # r9214
            jump zm1041_dispose


# s38 # say9718
label zm1041_s38: # from 31.1
    nr '"La linguistique est un de mes principaux centres d„intérêt. Une fois lettré, j“ai constaté que j„apprenais de nouvelles langues sans aucun problème."{#zm1041_s38_}'

    menu:
        '"Ceci expliquerait cela. Alors, tu n„as jamais trouvé les assassins ?"{#zm1041_s38_r9719}':
            # a127 # r9719
            jump zm1041_s32

        '"Je vois. Permets-moi de te demander autre chose, maintenant…"{#zm1041_s38_r9720}':
            # a128 # r9720
            jump zm1041_s14

        '"Je comprends. Merci de m„avoir parlé avec moi. Au revoir."{#zm1041_s38_r9721}':
            # a129 # r9721
            jump zm1041_dispose
