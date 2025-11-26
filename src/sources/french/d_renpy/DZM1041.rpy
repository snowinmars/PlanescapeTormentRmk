init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1041_logic import Zm1041Logic
    zm1041Logic = Zm1041Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1041.DLG
# ###


# s0 # say6573
label zm1041_s0: # - # IF ~  Global("Bei","GLOBAL",0)
    nr 'Le numéro „1041“ est gravé sur le front de ce cadavre mâle réanimé. Malgré sa chair tendue et desséchée, l„ensemble devait autrefois avoir quelque aspect “exotique„. Les lèvres de ce zombi sont cousues, probablement pour empêcher tout gémissement, et l“ensemble dégage une forte odeur de formol.'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"' if zm1041Logic.r6576_condition():
            # a0 # r6576
            $ zm1041Logic.r6576_action()
            jump zm1041_s1

        '"Alors… t„as vu quelque chose d“intéressant ?"' if zm1041Logic.r6577_condition():
            # a1 # r6577
            jump zm1041_s1

        '"Je sais que tu n„es pas un zombi. Tu ne trompes personne."' if zm1041Logic.r6578_condition():
            # a2 # r6578
            jump zm1041_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm1041Logic.r6579_condition():
            # a3 # r6579
            jump zm1041_s2

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm1041Logic.r6580_condition():
            # a4 # r6580
            jump zm1041_s37

        '"Je suis heureux de t„avoir parlé. Au revoir."':
            # a5 # r6581
            jump zm1041_dispose

        'Laisse le cadavre tranquille.':
            # a6 # r9095
            jump zm1041_dispose


# s1 # say6574
label zm1041_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.'

    menu:
        'Laisse le cadavre tranquille.':
            # a7 # r6582
            jump zm1041_dispose


# s2 # say6575
label zm1041_s2: # from 0.3
    nr 'Le cadavre chancelle quelque peu tandis que l„esprit regagne son ancienne demeure. Ses yeux en forme d“amandes s„assombrissent de nouveau, une légère ombre couleur bronze recouvrant la chair pâle. Le corps se redresse et époussette ses vêtements.  Remarquant enfin son interlocuteur, le fantôme te regarde pendant un moment d“un air intrigué, puis s„incline légèrement.'

    menu:
        'Réponds à son salut.':
            # a8 # r6583
            $ zm1041Logic.r6583_action()
            jump zm1041_s3

        '"J„ai quelques questions…"':
            # a9 # r9096
            $ zm1041Logic.r9096_action()
            jump zm1041_s4

        'Laisse l„esprit.':
            # a10 # r9097
            $ zm1041Logic.r9097_action()
            jump zm1041_dispose


# s3 # say9060
label zm1041_s3: # from 2.0
    nr 'L„esprit sourit l“espace d„un instant, visiblement satisfait. Puis il prend la pose, une main derrière lui, et prend la parole d“une voix douce et chantante.  "Suiang jianne shyr nan bye yih nan ; Dong feng wu lih bay hua tsarn ; Chuen tsarn daw syy sy fang jinn ; Lah Jiuh cherng huei ley shyy gan."  Cela dit, il reste là, immobile, à attendre ta réponse d„un air patient.'

    menu:
        '"Je… euh…"':
            # a11 # r9098
            jump zm1041_s5

        '"Je ne sais pas du tout de quoi tu parles… Tu ne comprends vraiment rien de ce que je te dis ?"':
            # a12 # r9099
            jump zm1041_s5

        '"Je ne te comprends pas. Au revoir."':
            # a13 # r9100
            jump zm1041_dispose


# s4 # say9061
label zm1041_s4: # from 2.1
    nr 'Tu ouvres la bouche pour lui poser une question, mais l„esprit te coupe la parole d“une voix douce et chantante :  "Suiang jianne shyr nan bye yih nan ; Dong feng wu lih bay hua tsarn ; Chuen tsarn daw syy sy fang jinn ; Lah Jiuh cherng huei ley shyy gan."  Cela dit, il reste là, immobile, à attendre ta réponse d„un air patient.'

    menu:
        '"Je… euh…"':
            # a14 # r9101
            jump zm1041_s5

        '"Je ne sais pas du tout de quoi tu parles… Tu ne comprends vraiment rien de ce que je te dis ?"':
            # a15 # r9102
            jump zm1041_s5

        '"Je ne te comprends pas. Au revoir."':
            # a16 # r9103
            jump zm1041_dispose


# s5 # say9062
label zm1041_s5: # from 3.0 3.1 4.0 4.1
    nr 'L„esprit s“interrompt, comme pour réfléchir, puis il reprend la parole d„une voix dont l“accent très marqué ne dissimule pas le raffinement. "Je vous en prie, cher monsieur, pardonnez-moi. Voici bien longtemps que je n„ai pas dû parler votre langue. Sans doute mon esprit s“est-il retrouvé convoqué ici pour répondre à vos questions. Qu„aimeriez-vous donc savoir ?"'

    menu:
        '"Qui es-tu ?"':
            # a17 # r9104
            jump zm1041_s6

        '"D„où viens-tu ?"':
            # a18 # r9105
            jump zm1041_s7

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"':
            # a19 # r9106
            jump zm1041_s8

        '"Où es-tu… Où réside ton esprit… en ce moment ?"':
            # a20 # r9107
            jump zm1041_s11

        '"Que sais-tu sur cet endroit ?"':
            # a21 # r9108
            jump zm1041_s9

        '"Connais-tu un certain Pharod ?"' if zm1041Logic.r9109_condition():
            # a22 # r9109
            jump zm1041_s10

        '"Rien, peu importe."':
            # a23 # r9110
            jump zm1041_dispose


# s6 # say9063
label zm1041_s6: # from 5.0 14.0
    nr '"C„est une question difficile… il m“est plus aisé de vous dire qui *j„étais*. En l“espèce, Zhuang Bei, tuteur et garde du corps de Liu Xixi, fille du Censeur Chi„an."'

    menu:
        '"Tuteur *et* garde du corps ?"':
            # a24 # r9111
            jump zm1041_s12

        '"Hmm. Impressionnant."':
            # a25 # r9112
            jump zm1041_s13

        '"Je vois. J„ai d“autres questions…"':
            # a26 # r9113
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a27 # r9114
            jump zm1041_dispose


# s7 # say9064
label zm1041_s7: # from 5.1 14.1
    nr '"Je vivais en un lieu appelé Shou Lung… que je considérais jadis comme le centre de l„univers." L“idée paraît l„amuser. "Il y a tant de lieux, tant de mondes… Je me considérais alors comme un fin lettré, et pourtant j“en savais si peu à ma mort…"'

    menu:
        '"Comment es-tu arrivé ici depuis ce „Shou Lung“ ?"':
            # a28 # r9115
            jump zm1041_s16

        '"Je vois. J„ai d“autres questions…"':
            # a29 # r9116
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a30 # r9117
            jump zm1041_dispose


# s8 # say9065
label zm1041_s8: # from 5.2 14.2
    nr '"J„ai été assassiné par l“un des hommes que j„ai accompagné par hasard ici. Je l“ai cherché dans cette cité des semaines durant - apprenant ainsi votre langue - et c„est lui qui m“a trouvé. Assassin patenté, il a déjoué mes précautions et m„a tué durant mon sommeil."'

    menu:
        '"Accompagné par hasard ?"':
            # a31 # r9118
            jump zm1041_s16

        '"Assassiné ?"':
            # a32 # r9119
            jump zm1041_s16

        '"Je vois, mais sais-tu ce que ton cadavre fait ici ?"':
            # a33 # r9120
            jump zm1041_s17

        '"Tu t„exprimes bien pour quelqu“un qui a eu si peu de temps pour apprendre une langue."':
            # a34 # r9121
            jump zm1041_s18

        '"Je vois. J„ai d“autres questions…"':
            # a35 # r9122
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a36 # r9123
            jump zm1041_dispose


# s9 # say9066
label zm1041_s9: # from 5.4 14.4
    nr '"Ce bâtiment ? Oh, j„en avais entendu parler, je savais que mon cadavre devait y travailler, voilà tout." "Je n“en sais pas plus sur cette vaste cité, „Sigil“. J„ai passé des semaines à chercher ceux avec lesquels je me suis trouvé ici et à apprendre la langue ; cela me désolait, mais je n“ai eu de temps pour rien d„autre. Les merveilles innombrables de ce lieu auraient pu m“en apprendre tellement…"'

    menu:
        '"Ton cadavre devait servir ici ? Comment est-ce arrivé ?"':
            # a37 # r9124
            jump zm1041_s17

        '"Accompagné par hasard ?"':
            # a38 # r9125
            jump zm1041_s16

        '"Tu t„exprimes bien pour quelqu“un qui a eu si peu de temps pour apprendre une langue."':
            # a39 # r9126
            jump zm1041_s18

        '"Je vois. J„ai d“autres questions…"':
            # a40 # r9127
            jump zm1041_s14

        '"Très bien. Nous aurons peut-être l„occasion de rediscuter une autre fois."':
            # a41 # r9128
            jump zm1041_dispose


# s10 # say9067
label zm1041_s10: # from 5.5 14.5
    nr '"Non, ce nom ne me dit rien, je regrette."'

    menu:
        '"Je comprends. J„ai d“autres questions…"':
            # a42 # r9129
            jump zm1041_s14

        '"Très bien. Nous aurons peut-être l„occasion de rediscuter une autre fois."':
            # a43 # r9130
            jump zm1041_dispose


# s11 # say9068
label zm1041_s11: # from 5.3 14.3
    nr 'L„esprit prend un air chagrin. "Je… Mon esprit réside dans le royaume de l“Illustre Magistrat Yen-Wang-Yeh, le Palais du Jugement."'

    menu:
        '"Quelque chose ne va pas ? Cet endroit est-il si terrible ?"':
            # a44 # r9131
            jump zm1041_s15

        '"Je comprends. J„ai d“autres questions…"':
            # a45 # r9132
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a46 # r9133
            jump zm1041_dispose


# s12 # say9069
label zm1041_s12: # from 6.0 16.1
    nr '"Oui ; ce n„est pas rare, là d“où je viens. Ma tâche consistait à escorter mademoiselle Liu en toutes circonstances, pour la protéger, et aussi pour l„éduquer. J“avais une certaine réputation, et comme soldat, et comme érudit, voyez-vous. Un meilleur soldat lui aurait peut-être davantage servi, cependant…"'

    menu:
        '"Davantage servi ? As-tu échoué ?"':
            # a47 # r9134
            jump zm1041_s16

        '"Peut-être. J„ai d“autres questions…"':
            # a48 # r9135
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a49 # r9136
            jump zm1041_dispose


# s13 # say9070
label zm1041_s13: # from 6.1
    nr '"Oui. Trop, peut-être. J„ai… manqué à mon devoir envers mademoiselle Liu et le Censeur.'

    menu:
        '"Comment cela ?"':
            # a50 # r9137
            jump zm1041_s16

        '"J„ai d“autres questions…"':
            # a51 # r9138
            jump zm1041_s14

        '"Je vois. Nous aurons peut-être l„occasion de rediscuter une autre fois."':
            # a52 # r9139
            jump zm1041_dispose


# s14 # say9071
label zm1041_s14: # from 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
    nr 'L„esprit hoche la tête avec une grâce étonnante pour un cadavre décati. "N“hésitez pas, posez-moi les questions que vous voulez."'

    menu:
        '"Qui es-tu ?"':
            # a53 # r9140
            jump zm1041_s6

        '"D„où viens-tu ?"':
            # a54 # r9141
            jump zm1041_s7

        '"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"':
            # a55 # r9142
            jump zm1041_s8

        '"Où es-tu… Où réside ton esprit… en ce moment ?"':
            # a56 # r9143
            jump zm1041_s11

        '"Que sais-tu sur cet endroit ?"':
            # a57 # r9144
            jump zm1041_s9

        '"Connais-tu un certain Pharod ?"' if zm1041Logic.r9145_condition():
            # a58 # r9145
            jump zm1041_s10

        '"Que disais-tu lorsque tu es apparu la première fois ?"':
            # a59 # r9146
            jump zm1041_s26

        '"Peu importe. Au revoir."':
            # a60 # r9147
            jump zm1041_dispose


# s15 # say9072
label zm1041_s15: # from 11.0
    nr '"Voyez-vous…" L„esprit se frotte les mains - des mains desséchées -, perdu dans ses réflexions. "À mon arrivée, je devais rejoindre ma *véritable* destination finale dans de brefs délais. Mais il s“est produit un incident alors qu„on m“escortait à travers le Palais, et on m„a laissé seul dans une petite pièce en promettant de s“occuper de moi sous peu."'

    menu:
        '"Et alors… ?"':
            # a61 # r9148
            jump zm1041_s19

        '"Ta destination finale ? Où devait-on t„envoyer ?"':
            # a62 # r9149
            jump zm1041_s20

        '"Attends… Avant de te laisser continuer, J„ai d“autres questions."':
            # a63 # r9150
            jump zm1041_s14

        '"J„écouterai peut-être la suite une autre fois. Au revoir."':
            # a64 # r9151
            jump zm1041_dispose


# s16 # say9073
label zm1041_s16: # from 7.0 8.0 8.1 9.1 12.0 13.0
    nr '"Voilà toute l„histoire. En tant que tuteur et garde du corps de Liu Xixi, je suis bien sûr chargé et de son éducation et de sa protection. Un soir où le ciel était dégagé, nous nous tenions sur un balcon dominant la Cour intérieure. Je lui apprenais les diverses constellations.'

    menu:
        '"S„il te plaît, continue."':
            # a65 # r9152
            jump zm1041_s21

        '"Tuteur *et* garde du corps ?"':
            # a66 # r9153
            jump zm1041_s12

        '"J„écouterai peut-être la suite une autre fois. Au revoir."':
            # a67 # r9154
            jump zm1041_dispose


# s17 # say9074
label zm1041_s17: # from 8.2 9.0
    nr '"Ah, ça. Un soir, une jeune femme a pris contact avec moi dans la rue ; elle faisait partie des Hommes-Poussière, l„organisation qui gère ces installations." "Elle m“a proposé un marché : en échange d„une petite somme d“argent, mon cadavre pourrait être… utilisé… ici après mon trépas."'

    menu:
        '"Et ça ne t„a pas paru un peu étrange ?"':
            # a68 # r9155
            jump zm1041_s22

        '"Je vois. Encore une question, si tu permets…"':
            # a69 # r9156
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a70 # r9157
            jump zm1041_dispose


# s18 # say9075
label zm1041_s18: # from 8.3 9.2
    nr '"La linguistique est un de mes principaux centres d„intérêt. Une fois lettré, j“ai constaté que j„apprenais de nouvelles langues sans aucun problème."'

    menu:
        '"Ceci expliquerait cela. Une autre question…"':
            # a71 # r9158
            jump zm1041_s14

        '"Je comprends. Merci de m„avoir parlé avec moi. Au revoir."':
            # a72 # r9159
            jump zm1041_dispose


# s19 # say9076
label zm1041_s19: # from 15.0 20.0
    nr '"Et bien… nul n„est jamais revenu me chercher. J“ai attendu durant des jours entiers, en vain. J„ai fini par explorer le Palais, dans l“espoir de rencontrer quelqu„un qui m“indiquerait le chemin…" Il pousse un soupir chargé de fragrance de lotion d„embaumement. "Il y a 9001 pièces, ici ; de chacune de celles que j“ai visitées, on m„a renvoyé vers une autre. À ce qu“il semble, je suis égaré, et tout le monde m„a oublié."'

    menu:
        '"Je vois. Mais j„ai une autre question…"':
            # a73 # r9160
            jump zm1041_s14

        '"Puis-je t„aider d“une manière ou d„une autre ?"':
            # a74 # r9161
            $ zm1041Logic.r9161_action()
            jump zm1041_s24

        '"Pauvre imbécile… Je me demande combien de temps ils vont te laisser errer !"':
            # a75 # r9162
            $ zm1041Logic.r9162_action()
            jump zm1041_s25

        '"Je te souhaite bonne chance. Au revoir."':
            # a76 # r9163
            jump zm1041_dispose


# s20 # say9077
label zm1041_s20: # from 15.1
    nr '"Je ne saurais dire. Tout cela est si frustrant !" Il s„interrompt, le temps de retrouver son calme ; les articulations et les tendons du cadavre crissent doucement tout en se relâchant.'

    menu:
        '"Je t„en prie, continue ton histoire."':
            # a77 # r9164
            jump zm1041_s19

        '"J„imagine… J“ai une autre question…"':
            # a78 # r9165
            jump zm1041_s14

        '"J„écouterai peut-être la suite une autre fois. Au revoir."':
            # a79 # r9166
            jump zm1041_dispose


# s21 # say9078
label zm1041_s21: # from 16.0
    nr '"Certes. Nous observions donc le ciel quand deux assassins se sont laissés tomber du toit sur le balcon, sans doute pour tuer ou enlever mademoiselle Liu. Tout en criant à la garde, j„ai pris ma lame et je me suis jeté devant elle pour la protéger. Au cours du combat, la balustrade a cédé et nous sommes tombés tous les quatre dans le Portail de Jade."'

    menu:
        '"Le quoi ? Le Portail de Jade ?"':
            # a80 # r9167
            jump zm1041_s23

        '"Attends… Avant de te laisser continuer, J„ai d“autres questions."':
            # a81 # r9168
            jump zm1041_s14

        '"J„écouterai peut-être la suite une autre fois. Au revoir."':
            # a82 # r9169
            jump zm1041_dispose


# s22 # say9079
label zm1041_s22: # from 17.0
    nr '"Au début, peut-être… l„idée est assez macabre, somme toute. Mais après avoir parlé avec elle un moment, il m“est apparu que les Hommes-Poussière ont une vision de la mort semblable à la mienne. Mon corps ? Un simple véhicule. Selon moi, la „Vraie Mort“ dont ils parlent est l„état supérieur que je veux atteindre… détaché du monde matériel. Si mon corps, une fois sa fonction de réceptacle mortel achevée, peut servir à quoi que ce soit ici, tant mieux." L“esprit te dédie un sourire cordial.'

    menu:
        '"Je vois ce que tu veux dire. Une autre question…"':
            # a83 # r9170
            jump zm1041_s14

        '"Intéressant. Il vaut mieux que je m„en aille maintenant. Au revoir."':
            # a84 # r9171
            jump zm1041_dispose


# s23 # say9080
label zm1041_s23: # from 21.0
    nr '"Oh ! Pardonnez-moi. J„avais présumé que vous saviez… Le Portail de Jade est un bassin dallé de carreaux de stéatite verts et blancs situé dans la Cour Intérieure. On l“appelle le Portail car, à ce qui se dit, des images fugitives d„un autre lieu apparaissent parfois dans ses eaux scintillantes."'

    menu:
        '"Je vois. Je t„en prie, continue ton histoire."':
            # a85 # r9172
            jump zm1041_s27

        '"Avant de te laisser continuer, j„aurais d“autres questions…"':
            # a86 # r9173
            jump zm1041_s14

        '"C„est tout ce que je voulais savoir pour l“instant. Au revoir."':
            # a87 # r9174
            jump zm1041_dispose


# s24 # say9081
label zm1041_s24: # from 19.1
    nr '"Trop aimable. Je crains hélas que vous n„y puissiez rien… Je gage que, le moment venu, on me mettra sur le bon chemin. Je ne saurais trop vous remercier, toutefois."'

    menu:
        '"Bien sûr. Dis-moi, j„ai une autre question…"':
            # a88 # r9175
            jump zm1041_s14

        '"Pas d„inquiétudes. Je ferais mieux de m“en aller. Adieu."':
            # a89 # r9176
            jump zm1041_dispose


# s25 # say9082
label zm1041_s25: # from 19.2 33.1 35.1
    nr 'L„esprit te dévisage froidement, et ses yeux s“illuminent d„une lueur spectrale ; il semble que tu l“aies froissé.'

    menu:
        '"Toutes mes excuses. Puis-je te demander autre chose ?"':
            # a90 # r9177
            jump zm1041_s14

        'Pars, laisse l„esprit flotter là.':
            # a91 # r9178
            jump zm1041_dispose


# s26 # say9083
label zm1041_s26: # from 14.6
    nr '"Oh, ça… ah… c„était un poème. Difficile à traduire. Vous avez peut-être d“autres questions ?" Il te sourit d„un air gêné.'

    menu:
        '"Oui… Oui."':
            # a92 # r9179
            jump zm1041_s14

        '"Non… Mais j„aimerais en savoir plus sur ce poème."':
            # a93 # r9180
            jump zm1041_s28

        '"Non. En fait, je crois que je vais partir. Au revoir."':
            # a94 # r9181
            jump zm1041_dispose


# s27 # say9084
label zm1041_s27: # from 23.0
    nr '"Comme je le disais, nous sommes tombés dans le Portail de Jade. Je n„avais jamais cru qu“il s„agissait d“un *véritable* portail, mais c„était le cas ! Je me suis retrouvé allongé dans une ruelle inconnue, la jambe brisée. Le temps que je reprenne mes esprits, les assassins s“enfuyaient, l„un d“eux portant Liu Xixi sur son épaule."'

    menu:
        '"Étrange. Continue, je t„en prie."':
            # a95 # r9182
            jump zm1041_s31

        '"Oh. Avant de te laisser continuer, j„aurais d“autres questions…"':
            # a96 # r9183
            jump zm1041_s14

        '"Je vois. Merci, mais il vaut mieux que je m„en aille maintenant."':
            # a97 # r9184
            jump zm1041_dispose


# s28 # say9085
label zm1041_s28: # from 26.1
    nr '"Très bien." Il réfléchit, en se tapotant le bout des doigts - de longs doigts osseux. Lorsqu„il reprend la parole ensuite, c“est sur un ton mesuré et cadencé :  "Il est aussi difficile de se rencontrer que de se séparer. Le vent du nord faiblit ; des centaines de fleurs se fanent. Meurent les vers printaniers, et la soie ne revient plus. La cire des bougies devient cendres, et les larmes cessent."  Il t„adresse un petit sourire poli.'

    menu:
        '"Ah… j„ai une autre question."':
            # a98 # r9185
            jump zm1041_s14

        '"Intéressant. Qu„est-ce que ça veut dire ?"':
            # a99 # r9186
            jump zm1041_s29

        '"Alors, tu dis que j„aurais dû laisser ton esprit tranquille ? Je t“ai offensé en t„appelant ici ?"' if zm1041Logic.r9187_condition():
            # a100 # r9187
            jump zm1041_s30

        '"Oh. Je te remercie pour ces explications. Au revoir."':
            # a101 # r9188
            jump zm1041_dispose


# s29 # say9086
label zm1041_s29: # from 28.1
    nr '"Et bien, j„ai honte d“admettre que je tentais subtilement de dire… que tu ferais mieux de laisser les esprits des morts en paix. Je n„ai plus aucun désir de prendre part à ce…" D“un grand geste de la main, l„esprit indique tout ce qui l“entoure. "… monde."'

    menu:
        '"Hmm. Je vois. J„avais autre chose à te demander."':
            # a102 # r9189
            jump zm1041_s14

        '"Je comprends. Alors, au revoir."':
            # a103 # r9190
            jump zm1041_dispose


# s30 # say9087
label zm1041_s30: # from 28.2
    nr '"Euh… et bien… non. J„espérais me montrer moins direct ; éviter la confrontation, voyez-vous. Il se trouve que je n“ai plus aucun désir de prendre part à ce…" D„un grand geste de la main, l“esprit indique tout ce qui l„entoure. "… monde."'

    menu:
        '"Hmm. Je vois. J„avais autre chose à te demander…"':
            # a104 # r9191
            jump zm1041_s14

        '"Je comprends. Alors, au revoir."':
            # a105 # r9192
            jump zm1041_dispose


# s31 # say9088
label zm1041_s31: # from 27.0
    nr '"Oh, c„est tout. J“ai arpenté la ville en boitant bas jusqu„à ce que je trouve quelqu“un pour soigner ma jambe ; le peu d„argent que j“avais y est passé. J„ai appris la langue locale au contact de ce guérisseur et d“autres personnes, tout en cherchant partout les deux assassins et ma pupille."'

    menu:
        '"Et tu ne les as jamais retrouvés ?"':
            # a106 # r9193
            jump zm1041_s32

        '"Hmm. Tu sais, je trouve cela étrange que tu aies appris la langue si vite…"':
            # a107 # r9194
            jump zm1041_s38

        '"Oh. Avant de te laisser continuer, j„aurais d“autres questions…"':
            # a108 # r9195
            jump zm1041_s14

        '"J„écouterai la suite une autre fois. Au revoir."':
            # a109 # r9196
            jump zm1041_dispose


# s32 # say9089
label zm1041_s32: # from 31.0 38.0
    nr '"J„en ai retrouvé un, mais il a refusé de parler. Je l“ai exécuté et j„ai gardé sa tête dans un sac de soie, afin de la rapporter au Censeur quand je lui ramènerais sa fille." Il fronce les sourcils. "Quant à l“autre, il m„a échappé, et, surtout… il m“a assassiné avant que je puisse le tuer et secourir ma pupille. C„est triste, mais tout cela appartient au passé, désormais."'

    menu:
        '"Aurais-tu su comment retourner dans ton pays, si tu avais sauvé… „Xixi“ ?"':
            # a110 # r9197
            jump zm1041_s33

        '"C„est une histoire intéressante. Mais J“ai d„autres questions…"':
            # a111 # r9198
            jump zm1041_s14

        '"Fascinant. Il vaut mieux que je te laisse maintenant. Au revoir."':
            # a112 # r9199
            jump zm1041_dispose


# s33 # say9090
label zm1041_s33: # from 32.0
    nr '"Non, mais je pense que j„aurais trouvé un moyen. Peu importe, à présent."'

    menu:
        '"Je me demande s„ils sont toujours dans la cité. Je pourrais peut-être les trouver et aider cette fille."':
            # a113 # r9200
            $ zm1041Logic.r9200_action()
            jump zm1041_s34

        '"Ça a l„air facile pour toi de ne pas te préoccuper de tes devoirs sous prétexte que tu es mort. Je ne sais pas si je pourrais laisser passer une chose pareille."':
            # a114 # r9201
            $ zm1041Logic.r9201_action()
            jump zm1041_s25

        '"Intéressant. Permets-moi de te demander autre chose…"':
            # a115 # r9202
            jump zm1041_s14

        '"Hmm. Je vais te quitter maintenant. Bonne chance."':
            # a116 # r9203
            jump zm1041_dispose


# s34 # say9091
label zm1041_s34: # from 33.0
    nr '"Ton offre te marque comme un esprit noble, mais… il s„est écoulé plus de soixante-quinze ans depuis mon assassinat. Mon meurtrier doit être mort depuis longtemps, et Xixi aussi, sans doute."'

    menu:
        '"Hmm. Peu importe. J„ai une autre question…"':
            # a117 # r9205
            jump zm1041_s14

        '"Bon, peu importe. Au revoir."':
            # a118 # r9206
            jump zm1041_dispose


# s35 # say9092
label zm1041_s35: # -
    nr '"L„assassin a des traits comparables aux miens, et un lotus tatoué sur le front." Voyant ta perplexité, il ajoute : "C“est une sorte de fleur, à sept pétales. Liu Xixi est une jeune fille ; elle n„a que quatorze ans. Elle saurait peut-être où trouver le portail, et comment l“activer. Il se peut que l„assassin le sache également."'

    menu:
        '"Si je la vois, je ferai mon possible pour l„aider en souvenir de toi."':
            # a119 # r9207
            $ zm1041Logic.r9207_action()
            jump zm1041_s36

        '"Peu importe. Je n„ai pas le temps."':
            # a120 # r9208
            $ zm1041Logic.r9208_action()
            jump zm1041_s25

        '"Très bien. J„ai une autre question…"':
            # a121 # r9209
            $ zm1041Logic.r9209_action()
            jump zm1041_s14

        '"C„est tout ce qu“il me faut. Au revoir."':
            # a122 # r9210
            $ zm1041Logic.r9210_action()
            jump zm1041_dispose


# s36 # say9093
label zm1041_s36: # from 35.0
    nr '"Vous êtes généreux, et vous avez le sens de l„honneur. Ne le faites pas pour moi, cependant… c“est la jeune fille et son père que vous aidez."'

    menu:
        '"Très bien. J„ai une autre question…"':
            # a123 # r9211
            jump zm1041_s14

        '"Je comprends. Au revoir, esprit."':
            # a124 # r9212
            jump zm1041_dispose


# s37 # say9094
label zm1041_s37: # from 0.4 # IF ~  Global("Bei","GLOBAL",1)
    nr '"Je ne m„attendais certes pas à vous revoir." L“esprit s„incline poliment, mais son visage reste fermé. "Que voulez-vous de moi ?"'

    menu:
        '"Une question…"':
            # a125 # r9213
            jump zm1041_s14

        '"Rien. Je vais te laisser."':
            # a126 # r9214
            jump zm1041_dispose


# s38 # say9718
label zm1041_s38: # from 31.1
    nr '"La linguistique est un de mes principaux centres d„intérêt. Une fois lettré, j“ai constaté que j„apprenais de nouvelles langues sans aucun problème."'

    menu:
        '"Ceci expliquerait cela. Alors, tu n„as jamais trouvé les assassins ?"':
            # a127 # r9719
            jump zm1041_s32

        '"Je vois. Permets-moi de te demander autre chose, maintenant…"':
            # a128 # r9720
            jump zm1041_s14

        '"Je comprends. Merci de m„avoir parlé avec moi. Au revoir."':
            # a129 # r9721
            jump zm1041_dispose
