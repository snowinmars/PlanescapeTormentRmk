init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte_logic import MorteLogic
    morteLogic = MorteLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE.DLG
# ###


# s0 # say986
label morte_s0: # -
    nr '"Hé, chef. Ça va ? Tu fais le mort ou t„essaies de tromper les Hommes-Poussière ? J“ai vraiment cru que tu étais mort."'

    menu:
        '"Qui es-tu ?"':
            # a0 # r987
            jump morte_s1

        'Ignore le crâne parlant et explore la pièce.':
            # a1 # r989
            jump morte_dispose

        'Respire à fond, secoue la tête et ignore le crâne qui te parle.':
            # a2 # r988
            jump morte_dispose

        '"Je suis sûr que tu as des milliers de choses intelligentes à dire, Morte, mais j„ai besoin que tu te taises, que tu ranges tes billes et que tu me rejoignes MAINTENANT."':
            # a3 # r17833
            $ morteLogic.r17833_action()
            jump morte_dispose


# s1 # say990
label morte_s1: # from 0.0 29.0 31.0
    nr '"Moi ?" Le crâne semble indigné. "Et *toi* d„abord, galeux ? Qui es-tu ?"'

    menu:
        '"Je… je ne sais pas."':
            # a4 # r992
            jump morte_s2

        '"Je ne sais pas… Visiblement, j„ai tout oublié."':
            # a5 # r995
            jump morte_s3

        '"Je t„ai posé la question en premier, crâne."':
            # a6 # r993
            jump morte_s4

        'Ignore le crâne et explore la pièce.':
            # a7 # r991
            jump morte_dispose


# s2 # say997
label morte_s2: # from 1.0 4.0 5.0
    nr '"Tu ne sais pas qui tu es, hein ? Tu aurais pu dire „Va caguer, bige“. Bon, c„est pas grave… Fais comme si t“étais un béjaune. Je m„en fiche. Je suis Morte. Salut, et enchanté."'

    menu:
        '"Je suis où, Morte ?"':
            # a8 # r998
            jump morte_s6

        '"Tu sais comment je peux sortir d„ici ?"' if morteLogic.r1006_condition():
            # a9 # r1006
            jump morte_s21

        '"Comment j„ai atterri ici ?"':
            # a10 # r1080
            jump morte_s20

        'Ignore Morte et explore la pièce.':
            # a11 # r1087
            jump morte_dispose


# s3 # say999
label morte_s3: # from 1.1 4.1 5.1
    nr '"Tu ne te *souviens* pas ? Tu as dû passer une sacrée nuit ! J„espère que personne n“a été blessé… Mon nom, c„est Morte. Salut, et enchanté." Il s“arrête. "Dis-moi *une* chose : tu fais partie des Sensats qui pratiquent l„automutilation ou bien c“est quelqu„un qui t“a fait ces cicatrices ?"'

    menu:
        '"Un Sensat ?"':
            # a12 # r1000
            jump morte_s12

        '"Des cicatrices ?"':
            # a13 # r1001
            jump morte_s13

        'Ignore Morte et explore la pièce.':
            # a14 # r1002
            jump morte_dispose


# s4 # say1003
label morte_s4: # from 1.2
    nr '"Ouais, et moi le deuxième. C„est quoi ton nom ?"'

    menu:
        '"Je… ne sais pas."':
            # a15 # r1004
            jump morte_s2

        '"Je ne sais pas… Je ne m„en souviens pas."':
            # a16 # r1005
            jump morte_s3

        '"Réponds-moi d„abord, crâne."':
            # a17 # r1007
            jump morte_s5

        'Ignore le crâne et explore la pièce.':
            # a18 # r994
            jump morte_dispose


# s5 # say1008
label morte_s5: # from 4.2
    nr '"T„es vraiment coincé, y a pas à dire. Ça va, ça va… *Je* vais jouer le type sympa… Moi, c“est Morte. Morte Rictus. Et maintenant, quel est ce prénom assez malchanceux pour t„avoir comme maître ?"'

    menu:
        '"Je… je ne sais pas."':
            # a19 # r1009
            jump morte_s2

        '"Je ne sais pas… Visiblement, j„ai tout oublié."':
            # a20 # r1010
            jump morte_s3

        'Ignore Morte et explore la pièce.':
            # a21 # r1011
            jump morte_dispose


# s6 # say1012
label morte_s6: # from 2.0 29.1 31.1
    nr '"Tu es dans ce trou appelé la Morgue… c„est une immense structure noire aussi accueillante qu“une prison."'

    menu:
        '"„La Morgue“ ? Je suis mort ?"':
            # a22 # r1013
            jump morte_s7

        '"Comment je peux sortir d„ici ?"' if morteLogic.r1015_condition():
            # a23 # r1015
            jump morte_s21

        'Ignore Morte et explore la pièce.':
            # a24 # r1085
            jump morte_dispose


# s7 # say1014
label morte_s7: # from 6.0 9.0
    nr '"Ben, j„en sais rien… mais il n“y a pas d„autre Morgue dans ce bled. Les biges apportent les cadavres ici. Ils les enterrent, ils les brûlent, et s“ils ont de la chance, ils seront ressuscités en tant qu„esclaves. Ce n“est pas le meilleur endroit des plans. À ta place, je chercherais la sortie la plus proche et je jouerais un air à cet endroit."'

    menu:
        '"Pardon… La „Morgue“ ? C„est quoi cet endroit ?"':
            # a25 # r1016
            jump morte_s10

        '"Ressuscités en tant qu„esclaves ?"':
            # a26 # r1017
            jump morte_s9

        '"Tant que je peux encore marcher ?"':
            # a27 # r1018
            jump morte_s11

        '"Tu dis que des gens traînent des corps morts ici ? Et c„est comme ça que j“ai atterri ici ?"' if morteLogic.r1019_condition():
            # a28 # r1019
            jump morte_s8

        'Ignore Morte et explore la pièce.':
            # a29 # r1020
            jump morte_dispose


# s8 # say1021
label morte_s8: # from 7.3
    nr 'Il s„arrête. "Ouais, je suppose. L“un de ces bons à rien t„a cru mort et t“a ramené ici. Tu m„as bien eu avec ton simulacre… Tu devrais plutôt retrouver le bige qui t“a amené ici et lui poser la question, hein ?" Morte acquiesce. "Pas mal réfléchi pour un mort encore chaud… Je vois que ta caboche fonctionne toujours."'

    menu:
        '"Pourquoi quelqu„un m“aurait amené ici ?"':
            # a30 # r1029
            jump morte_s14

        '"J„ai d“autres questions…"':
            # a31 # r1030
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a32 # r1137
            jump morte_dispose


# s9 # say1022
label morte_s9: # from 7.1
    nr '"Ouais, c„est une vie agréable… mis à part les applications quasi constantes de formol et les points de suture, c“est le paradis."'

    menu:
        '"Je suis censé être ici ? Je suis mort ?"':
            # a33 # r1113
            jump morte_s7

        '"De quoi j„ai l“air ? J„ai beaucoup de cicatrices ?"':
            # a34 # r1114
            jump morte_s13

        '"Peu importe. J„ai d“autres questions…"':
            # a35 # r1115
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a36 # r1116
            jump morte_dispose


# s10 # say1023
label morte_s10: # from 7.0
    nr '"Euh… comme je te l„ai déjà dit, la Morgue. Est-ce que ça va ? Tu n“as pas l„air dans ton assiette."'

    menu:
        '"Je suis censé être ici ? Je suis mort ?"':
            # a37 # r1109
            jump morte_s16

        '"De quoi *j„ai* l“air ? J„ai beaucoup de cicatrices ?"':
            # a38 # r1110
            jump morte_s13

        '"Peu importe. J„ai d“autres questions…"':
            # a39 # r1111
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a40 # r1112
            jump morte_dispose


# s11 # say1024
label morte_s11: # from 7.2
    nr '"De mon point de vue, chef, il y avait peu de chances que tu t„en remettes. On dirait que tu t“apprêtes à régler ton ardoise, si tu vois ce que je veux dire."'

    menu:
        '"Je suis mort ? Et c„est pour ça que je suis ici ?"':
            # a41 # r1133
            jump morte_s16

        '"De quoi j„ai l“air ?"':
            # a42 # r1134
            jump morte_s13

        '"Peu importe. J„ai d“autres questions…"':
            # a43 # r1135
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a44 # r1136
            jump morte_dispose


# s12 # say1025
label morte_s12: # from 3.0 33.0
    nr '"Tu connais pas les Sensats ? Oh, *tu* vas être épaté ! Ce sont des lascars qui font tout ce qui est possible de faire dans les plans, et même… laisse tomber. C„est quoi, ces cicatrices ?"'

    menu:
        '"Des cicatrices ?"':
            # a45 # r1027
            jump morte_s13

        '"Peu importe. J„ai d“autres questions…"':
            # a46 # r1028
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a47 # r1143
            jump morte_dispose


# s13 # say1026
label morte_s13: # from 3.1 9.1 10.1 11.1 12.0 33.1
    nr '"C„est comme si un lascar avait décidé de te peindre avec un couteau. Tu as des cicatrices partout… même sur le dos." Il s“arrête. "Eh, bige, tu as toute une galerie de tatouages dans le dos. Il y a un message."'

    menu:
        '"Qu„est-ce que ça dit ?"':
            # a48 # r1088
            $ morteLogic.r1088_action()
            jump morte_s34

        '"Peu importe. J„ai d“autres questions…"':
            # a49 # r1089
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a50 # r1090
            jump morte_dispose


# s14 # say1031
label morte_s14: # from 8.0 29.3
    nr '"Certaines personnes dans ce bled ramassent les morts dans la rue et les vendent contre du jonc. C„est pas joli-joli de joindre les deux bouts comme ça, mais ici, c“est le pot de chambre des plans et les options sont limitées."'

    menu:
        '"Du jonc ? C„est quoi, du “jonc„ ?"':
            # a51 # r1032
            jump morte_s15

        '"Peu importe. J„ai d“autres questions…"':
            # a52 # r1033
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a53 # r1142
            jump morte_dispose


# s15 # say1034
label morte_s15: # from 14.0
    nr '"Eh… l„argent. Le jonc, c“est de l„argent. Il n“y en avait pas là d„où tu viens ?"'

    menu:
        '"Je ne me souviens pas d„où je viens."':
            # a54 # r1035
            jump morte_s19

        '"Laisse tomber. J„ai d“autres questions…"':
            # a55 # r1036
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a56 # r1138
            jump morte_dispose


# s16 # say1037
label morte_s16: # from 10.0 11.0
    nr 'Il s„arrête. "Je sais pas. Tu *me* poses de ces questions… Les morts-vivants ne font pas ça par ici. À mon avis, les Hommes-Poussière se sont trompés ; tu n“étais pas mort. Tu te souviens pas avoir signé un contrat ? D„habitude, ils remplissent un tas de documents juridiques avant de sortir quelqu“un du livre des morts."'

    menu:
        '"Euh… un contrat ? Non, je ne me souviens pas en avoir signé un. En fait, je ne me souviens pas de grand-chose."':
            # a57 # r1038
            jump morte_s32

        '"Le livre des morts ?"':
            # a58 # r1039
            jump morte_s17

        '"Juridiques ?"':
            # a59 # r1040
            jump morte_s18

        '"Laisse tomber. J„ai d“autres questions…"':
            # a60 # r1041
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a61 # r1150
            jump morte_dispose


# s17 # say1042
label morte_s17: # from 16.1 18.0
    nr '"Ouais, le „livre des morts“. Tu connais ? Euh… peut-être pas. Écoute, oublie le „livre des morts“. Si tu es vivant, ça veut dire que tu n„es pas dedans."'

    menu:
        '"C„était quoi ce contrat… juridique… ce truc dont tu as parlé ?"':
            # a62 # r1151
            jump morte_s18

        '"J„ai d“autres questions…"':
            # a63 # r1152
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a64 # r1153
            jump morte_dispose


# s18 # say1043
label morte_s18: # from 16.2 17.0
    nr '"Ouais, ça te donne pas envie de tout casser ? C„est la loi qui régit Sigil. Tu peux même pas soulager ta vessie sans avoir à signer un contrat."'

    menu:
        '"Qu„est-ce que tu disais à propos du “livre des morts„ ?"':
            # a65 # r1154
            jump morte_s17

        '"Peu importe. J„ai d“autres questions…"':
            # a66 # r1155
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a67 # r1156
            jump morte_dispose


# s19 # say1044
label morte_s19: # from 15.0
    nr '"Par tous les dieux, on dirait que *tu* es complètement paumé. Tu n„as aucune idée de l“endroit d„où tu viens ? Quelque part, une nation de Béjaunes a perdu son roi. Tu le fais exprès ou tu as toujours été aussi bête ?"'

    menu:
        '"Je ne sais pas… Je ne me souviens de rien."':
            # a68 # r1139
            jump morte_s32

        '"Peu importe. J„ai d“autres questions…"':
            # a69 # r1140
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a70 # r1141
            jump morte_dispose


# s20 # say1045
label morte_s20: # from 2.2 31.2
    nr '"Chef, je n„en ai pas la moindre idée. En tout cas, tu sais vraiment bien jouer le mort. Quand tu étais allongé là, je n“ai pas vu ta poitrine bouger ou tes yeux ciller… rien. Est-ce que tu avais bu ? C„est ce qu“il s„est passé ?"'

    menu:
        '"Je ne sais pas… Je ne me souviens de rien."':
            # a71 # r1097
            jump morte_s32

        '"Peu importe. J„ai d“autres questions…"':
            # a72 # r1098
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a73 # r1099
            jump morte_dispose


# s21 # say1046
label morte_s21: # from 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1
    nr '"Eh ben, en *voilà* une bonne question. Le temps presse, chef. Si les Hommes-Poussière te trouvent, ils tenteront de corriger ton „problème“ de résurrection en te jetant dans le crématorium. Si tu continues à faire le mort, tu finiras de toute façon au crématorium. Un vrai dilemme de modrone, hein ? Que faire ?"'

    menu:
        '"Des Hommes-Poussière ?"':
            # a74 # r1047
            jump morte_s30

        '"Je… je m„échapperai."':
            # a75 # r1048
            jump morte_s22

        '"J„expliquerai la situation à ces… Hommes-Poussière."':
            # a76 # r1049
            jump morte_s25

        '"Qu„est-ce que je dois faire ?"' if morteLogic.r1050_condition():
            # a77 # r1050
            jump morte_s23

        '"Pourquoi tu ne me le dis pas ? On dirait que tu as déjà une réponse."' if morteLogic.r1051_condition():
            # a78 # r1051
            jump morte_s23

        'Ignore Morte et explore la pièce.':
            # a79 # r1081
            jump morte_dispose


# s22 # say1052
label morte_s22: # from 21.1
    nr '"Oh, *bonne* idée, chef ! Pourquoi n„y ai-*je* pas pensé ? Comment vas-tu t“échapper, hein ? Je vais te donner une piste. Cela demande un peu de coopération de ta part."'

    menu:
        '"Ça m„intéresse. Continue à parler."':
            # a80 # r1053
            jump morte_s23

        '"Laisse tomber. J„ai d“autres questions…"':
            # a81 # r1054
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a82 # r1145
            jump morte_dispose


# s23 # say1055
label morte_s23: # from 21.3 21.4 22.0 26.0
    nr '"Tel que je le vois, tu dois sortir d„ici, c“est évident. Moi, je peux me permettre d„attendre. Tout ce que *je* risque, c“est de mourir d„ennui. On pourrait se donner un coup de main."'

    menu:
        '"Continue à parler…"':
            # a83 # r1058
            jump morte_s24

        '"Tu n„as pas de mains. Qu“est-ce que *tu* pourrais bien faire pour m„aider ?"':
            # a84 # r1059
            jump morte_s24

        '"Laisse tomber. J„ai d“autres questions…"':
            # a85 # r1060
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a86 # r1146
            jump morte_dispose


# s24 # say1061
label morte_s24: # from 23.0 23.1
    nr '"Ça n„a peut-être pas l“air évident à première vue, mais je peux t„aider à sortir de là. Étant manchot, ça me pose un petit problème. Toi, il te manque quelque chose dans la boîte crânienne alors que moi j“ai suffisamment d„expérience et de savoir-faire pour te sortir de ce bouge. On coopère et on s“en sort tous les deux. Ça marche, bige ?"'

    menu:
        '"C„est d“accord."':
            # a87 # r1057
            jump morte_s28

        '"D„accord. J“ai le mauvais pressentiment que le destin veut qu„on voyage ensemble, Morte."':
            # a88 # r1062
            jump morte_s27

        '"Laisse tomber. J„ai d“autres questions…"':
            # a89 # r1063
            jump morte_s31

        '"Non merci. Te parler est suffisamment pénible. Je trouverai moi-même un moyen de sortir."':
            # a90 # r1147
            jump morte_dispose


# s25 # say1064
label morte_s25: # from 21.2
    nr '"Oh, *bonne* idée, chef ! Pourquoi n„y ai-je pas pensé ?" Il prend un ton moqueur. "Hé, M. Homme-Poussière, j“étais mort et je me suis réveillé dans votre petite Morgue. Pouvez-vous m„aider ?" C“est sûr qu„ils vont t“aider ! Ils te regarderont quelques secondes, appelleront les gardes et te jetteront dans un four rien que pour toi."'

    menu:
        '"Ça me paraît un peu extrême… Pourquoi ils feraient ça ?"':
            # a91 # r1065
            jump morte_s26

        '"Eh bien, leurs gardes ont intérêt à être costauds pour venir à bout de moi."':
            # a92 # r1066
            jump morte_s26

        '"Laisse tomber. J„ai d“autres questions…"':
            # a93 # r1067
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a94 # r1149
            jump morte_dispose


# s26 # say1068
label morte_s26: # from 25.0 25.1
    nr '"Fais-moi confiance… Quoi que tu fasses, quoi que tu dises, ils t„auront. Tu n“es pas assez fort pour briser une tombe de pierre ou survivre à la chaleur du Plan Élémentaire du Feu. C„est déjà assez dur comme ça de revenir d“entre les morts. Ne fais pas l„idiot."'

    menu:
        '"Alors, ton plan, c„est… ?"':
            # a95 # r1069
            jump morte_s23

        '"Peu importe. J„ai d“autres questions…"':
            # a96 # r1070
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a97 # r1148
            jump morte_dispose


# s27 # say1071
label morte_s27: # from 24.1
    nr '"Au diable le destin, pour ce que j„en ai à faire. Écoute, chef. Observe combien de fois les mots “mauvais„ et “destin„ se retrouvent dans la même phrase et tu comprendras l“un des petits mystères de la vie. Le destin peut bien aller se faire pendre avec du lierre-rasoir. Il existe *toujours* une alternative."'

    menu:
        '"Je m„en souviendrai."':
            # a98 # r1073
            jump morte_s28

        '"Assez parlé. C„est quoi ton super plan ?"':
            # a99 # r1074
            jump morte_s28


# s28 # say1072
label morte_s28: # from 24.0 27.0 27.1
    nr '"D„accord… bon, allez, jouons un air à cet endroit. Les portes là-bas sont fermées à clé. Il nous faut la clé. Il y a des chances pour que l“un des cadavres qui déambulent dans la pièce l„ait.'

    menu:
        '"Des cadavres qui déambulent ?"':
            # a100 # r1079
            $ morteLogic.r1079_action()
            jump morte_s240


# s29 # say996
label morte_s29: # -
    nr '"Alors comme ça, on se remet à parler à Morte *maintenant*, hein ?"'

    menu:
        '"Qui es-tu ?"':
            # a101 # r1075
            jump morte_s1

        '"Où suis-je ?"':
            # a102 # r1076
            jump morte_s6

        '"Tu sais comment je peux sortir d„ici ?"' if morteLogic.r1077_condition():
            # a103 # r1077
            jump morte_s21

        '"Comment j„ai atterri ici ?"':
            # a104 # r1078
            jump morte_s14

        'Ignore Morte et explore la pièce.':
            # a105 # r1086
            jump morte_dispose


# s30 # say1082
label morte_s30: # from 21.0
    nr '"Les Hommes-Poussière ? Ils surveillent cet endroit. Tu ne peux pas les manquer… ils sont obsédés par la noirceur et la rigidité cadavérique du visage. Ils se font appeler „les Hommes-Poussière“ et se font passer pour une faction, mais ce n„est en fait qu“une bande de goules adoratrices de la mort."'

    menu:
        '"Alors, comment je peux sortir d„ici ?"' if morteLogic.r1083_condition():
            # a106 # r1083
            jump morte_s21

        '"Peu importe. J„ai d“autres questions…"':
            # a107 # r1084
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a108 # r1144
            jump morte_dispose


# s31 # say1091
label morte_s31: # from 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2
    nr '"Ouais ? Et *quelles* questions ?"'

    menu:
        '"Qui es-tu ?"':
            # a109 # r1092
            jump morte_s1

        '"Où suis-je ?"':
            # a110 # r1093
            jump morte_s6

        '"Comment j„ai atterri ici ?"':
            # a111 # r1094
            jump morte_s20

        '"Comment je peux sortir d„ici ?"' if morteLogic.r1095_condition():
            # a112 # r1095
            jump morte_s21

        'Ignore Morte et explore la pièce.':
            # a113 # r1096
            jump morte_dispose


# s32 # say1100
label morte_s32: # from 16.0 19.0 20.0
    nr '"Tu te souviens de *rien ?* Allez, tout ça, c„est des conneries de tanar“ri. T„es sérieux ?"'

    menu:
        '"Oui."':
            # a114 # r1101
            jump morte_s33

        '"Peu importe. J„ai d“autres questions…"':
            # a115 # r1102
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a116 # r1103
            jump morte_dispose


# s33 # say1104
label morte_s33: # from 32.0
    nr '"Par tous les dieux et leurs mères… ben chef, y a des chances que tes souvenirs aient décidé de piquer une tête dans ta boîte grise. Avec un peu d„chance, ils remonteront bientôt prendre l“air, fais-moi confiance. T„as dû avoir une nuit bien arrosée. Reste à espérer que t“as blessé personne et que t„as pas eu d“ennuis avec les autorités… au fait, en parlant de ça, tu s„rais pas l“un d„ces Sensats qui aiment l“automutilation, ou est-ce que c„est quelqu“un qui t„a fait ces cicatrices ?"'

    menu:
        '"Un Sensat ?"':
            # a117 # r1105
            jump morte_s12

        '"Des cicatrices ?"':
            # a118 # r1106
            jump morte_s13

        '"J„ai d“autres questions…"':
            # a119 # r1107
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a120 # r1108
            jump morte_dispose


# s34 # say1117
label morte_s34: # from 13.0
    nr '"On dirait des directions…" Morte se racle la gorge. "Voyons. Ça commence par…"  ^NREMARQUE : "Je sais que tu as l„impression d“avoir bu plusieurs barils d„eau du Styx, mais tu dois te ressaisir. Parmi tes biens, tu devrais trouver un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les parties manquantes de la chanson, s“il n„est pas déjà inscrit dans le livre des morts.   Ne perds ni ces lambeaux de chair NI ce journal, sinon nous finirons à nouveau dans le Styx, compris ? Et fais-moi confiance, quoi que tu fasses, NE DIS à personne QUI tu es, CE qui t“est arrivé, ni D„OÙ tu viens, sinon tu risques de te retrouver vite fait au crématorium."^'

    menu:
        '"Pas étonnant que mon dos me fasse mal. Tu connais un certain Pharod ?"':
            # a121 # r1118
            jump morte_s36

        '"Tu as vu un journal sur moi lorsque j„étais étendu ici ?"':
            # a122 # r1119
            jump morte_s35

        '"Tu sais comment je peux sortir d„ici ?"' if morteLogic.r1120_condition():
            # a123 # r1120
            jump morte_s21

        '"J„ai d“autres questions…"':
            # a124 # r1121
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a125 # r1122
            jump morte_dispose


# s35 # say1123
label morte_s35: # from 34.1 36.0
    nr '"Non… tu es arrivé ici nu comme un ver. De toute façon, on dirait que tu as assez d„un roman écrit sur ton corps."'

    menu:
        '"Tu connais un certain Pharod ?"':
            # a126 # r1124
            jump morte_s36

        '"Comment je peux sortir d„ici ?"' if morteLogic.r1125_condition():
            # a127 # r1125
            jump morte_s21

        '"Peu importe. J„ai d“autres questions…"':
            # a128 # r1126
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a129 # r1127
            jump morte_dispose


# s36 # say1128
label morte_s36: # from 34.0 35.0
    nr '"Connais pas. Ceci dit, je ne connais pas grand monde. Mais il doit bien y avoir un bige qui sait où trouver ce type… une fois que nous serons sortis d„ici, évidemment."'

    menu:
        '"J„avais un journal sur moi quand j“étais étendu ici ?"':
            # a130 # r1129
            jump morte_s35

        '"Comment je peux sortir d„ici ?"' if morteLogic.r1130_condition():
            # a131 # r1130
            jump morte_s21

        '"Peu importe. J„ai d“autres questions…"':
            # a132 # r1131
            jump morte_s31

        'Ignore Morte et explore la pièce.':
            # a133 # r1132
            jump morte_dispose


# s37 # say1818
label morte_s37: # -
    nr '"Quelle chance ! Nous avions probablement perdu ce que nous cherchions dans ta guitoune, ma belle."'

    menu:
        '"En fait, j„ai perdu un journal."':
            # a134 # r1820
            jump harlotn_s2  # EXTERN

        '"Tu pourrais peut-être m„aider à retrouver ce que j“ai perdu."':
            # a135 # r1819
            jump harlotn_s3  # EXTERN

        '"Je n„ai rien perdu, mais j“ai quelques questions…"':
            # a136 # r1821
            jump harlotn_s9  # EXTERN

        '"Je dois m„en aller. Au revoir."':
            # a137 # r1822
            jump harlotn_s11  # EXTERN


# s38 # say1844
label morte_s38: # -
    nr '"Chef, tu me passes un peu de jonc… ça… ça fait longtemps, tu sais."'

    menu:
        '"Euh… eh bien, je suppose que ça ne peut pas *faire de mal*…"':
            # a138 # r1845
            $ morteLogic.r1845_action()
            jump harlotn_s7  # EXTERN

        '"Je ne vais même pas te demander comment tu as l„intention de t“y prendre."':
            # a139 # r1846
            $ morteLogic.r1846_action()
            jump harlotn_s7  # EXTERN

        '"Écoute… On doit vraiment partir, Morte. Au revoir, mademoiselle."':
            # a140 # r1847
            $ morteLogic.r1847_action()
            jump morte_dispose


# s39 # say2000
label morte_s39: # -
    nr '"Elle parle d„argent."'

    menu:
        '"Oh !"':
            # a141 # r2001
            jump annah_s5  # EXTERN


# s40 # say2048
label morte_s40: # -
    nr '"Heureusement que ni toi ni ta queue n„êtes à vendre. Tu n“arriverais jamais à en vivre, de toute façon."'

    menu:
        '"Euh…"':
            # a142 # r2049
            jump annah_s13  # EXTERN


# s41 # say2067
label morte_s41: # -
    nr '"C„est une tieffeline, chef. Du sang de démon coule dans leurs veines. Ça les rend paranos et agressifs… belle queue, pourtant. Dommage qu“elle soit attachée à un corps si laid."'

    menu:
        '"Ouah, maintenant…"':
            # a143 # r2068
            jump annah_s17  # EXTERN

        '"Hé, bravo, Morte."':
            # a144 # r2069
            jump annah_s17  # EXTERN


# s42 # say2074
label morte_s42: # -
    nr '"*Essaie* de m„éclater la mâchoire, petite ! Tout ce que j“entends, c„est le bla-bla d“une traînée de la Ruche ! Vas-y, frappe ! Essaie et je t„arrache les jambes avec les dents !"'

    menu:
        '"Ça suffit !"':
            # a145 # r2076
            jump annah_s18  # EXTERN

        '"Ça suffit ! On s„en va."':
            # a146 # r2075
            jump annah_s14  # EXTERN


# s43 # say2079
label morte_s43: # -
    nr '"Un mimir est une encyclopédie vivante. C„est moi, chef."'

    menu:
        '"J„y suis."':
            # a147 # r2080
            $ morteLogic.r2080_action()
            jump annah_s21  # EXTERN


# s44 # say2348
label morte_s44: # -
    nr '"Laisse tomber, chef. Parler à un gith, c„est comme tenter de se sortir du lierre-rasoir."'

    menu:
        '"Gith ?"' if morteLogic.r9029_condition():
            # a148 # r9029
            $ morteLogic.r9029_action()
            jump morte_s135

        '"Gith ?"' if morteLogic.r9030_condition():
            # a149 # r9030
            jump morte_s135

        '"Je n„ai pas l“intention de partir tout de suite. Je vais d„abord lui poser des questions…"':
            # a150 # r9031
            jump gith_s7  # EXTERN

        'Laisse le gith tranquille.':
            # a151 # r9032
            jump morte_dispose


# s45 # say2354
label morte_s45: # -
    nr '"Je ne perdrais pas de temps à essayer de parler sérieusement avec Ignorance-la-bienheureuse. Allons-nous-en, chef."'

    menu:
        '"Je n„ai pas l“intention de partir tout de suite. Je vais d„abord lui poser des questions…"':
            # a152 # r9033
            jump gith_s7  # EXTERN

        'Laisse le gith tranquille.':
            # a153 # r9034
            jump morte_dispose


# s46 # say2601
label morte_s46: # externs zf916_s2 zf916_s1 zf916_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a154 # r2603
            $ morteLogic.r2603_action()
            jump morte_s47

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a155 # r2602
            $ morteLogic.r2602_action()
            jump morte_s47


# s47 # say2604
label morte_s47: # from 46.0 46.1 121.1 121.2
    nr '"Quoi… tu es AVEUGLE ? ! Elle m„a dragué ! C“était évident, elle me VOULAIT honteusement !"'

    menu:
        '"Dis plutôt qu„elle voulait que tu *partes*. Ayant porté toute son attention sur MOI, elle n“a certainement pas dû remarquer la présence d„un crâne sans cervelle."':
            # a156 # r2605
            $ morteLogic.r2605_action()
            jump morte_s49

        '"Je crois que tu as trop d„imagination. C“est une zombi. Un cadavre. Elle est morte. Elle n„a sans doute même pas remarqué que tu étais là."':
            # a157 # r2606
            jump morte_s48

        '"Je trouve que tu as un peu trop d„imagination."':
            # a158 # r2607
            jump morte_s48

        '"Peu importe, Morte. Allons-y."':
            # a159 # r2608
            jump morte_dispose


# s48 # say2609
label morte_s48: # from 47.1 47.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes . C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a160 # r2610
            jump morte_dispose


# s49 # say2611
label morte_s49: # from 47.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les pépées d“outre-tombe s„en foutent bien du “physique„, “regarde-moi comme je suis beau„ et “je suis couvert de cicatrices et j„ai l“air d„un dur“. Elles veulent un gars avec de l„ESPRIT. C“est moi, chef. Toi ? Des cadavres comme TOI, c„est monnaie courante.'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a161 # r2612
            jump morte_dispose


# s50 # say2709
label morte_s50: # -
    nr '"Quoi ? Qu„est-ce que c“est ? Est-ce que cette pépée t„ennuie ?"'

    jump test_s7  # EXTERN


# s51 # say2711
label morte_s51: # -
    nr '"Je le crois. Il devrait peut-être retourner au menu principal et me laisser."'

    jump test_s0  # EXTERN


# s52 # say2782
label morte_s52: # -
    nr '"Oh, pour l„amour des Puissances ! Un dabus !"'

    menu:
        '"Qu„est-ce qui ne va pas ?"':
            # a162 # r2783
            jump morte_s53


# s53 # say2788
label morte_s53: # from 52.0
    nr '"C„est un dabus. Ils *s“expriment* en rébus, ces puzzles de mots barbants. Si *tu* ne sais pas ce qu„il dit, nous ferions mieux de trouver un natif ou un autre moyen de communication… si c“est vraiment nécessaire. Quel groupe assommant ! Tu paries qu„ils *peuvent* parler, mais qu“ils préfèrent coder tout ce qu„ils disent ne serait-ce que pour le plaisir d“énerver tout le monde."'

    menu:
        '"C„est quoi un “dabus„ ?"':
            # a163 # r2791
            jump morte_s54


# s54 # say2789
label morte_s54: # from 53.0
    nr '"La chanson dit que ce sont les gardes de la Dame des Douleurs. Ils flottent, cassent, réparent et rapiècent Sigil selon ses caprices. Ils sont pires que des mouches vertes." Morte soupire. "Mais interdiction de les écraser, sinon la Dame… se fâche."'

    menu:
        '"La „Dame des Douleurs“ ? Qui c„est ?"' if morteLogic.r6952_condition():
            # a164 # r6952
            $ morteLogic.r6952_action()
            jump morte_s113

        '"Qu„est-ce que tu peux me dire sur la Dame des Douleurs ?"' if morteLogic.r6953_condition():
            # a165 # r6953
            jump morte_s113

        '"Je vois."' if morteLogic.r6954_condition():
            # a166 # r6954
            jump dabus_s3  # EXTERN


# s55 # say3473
label morte_s55: # externs eivene_s3
    nr '"La morte me semble un peu dure d„oreille, chef. On laisse tomber, d“accord ?"'

    menu:
        '"Qu„est-ce qu“elle a aux mains ?"':
            # a167 # r3474
            $ morteLogic.j38205_s55_r3474_action()
            jump morte_s56

        'Donne une petite tape à la femme, attire son attention.':
            # a168 # r3475
            jump eivene_s4  # EXTERN

        'Laisse-la tranquille.':
            # a169 # r3476
            jump morte_dispose


# s56 # say3477
label morte_s56: # from 55.0
    nr '"Hé, chef… c„est une *tieffeline*. Ils ont du sang fiélon dans les veines, parce que leurs ancêtres ont flirté avec le démon. Certains sont vraiment bizarres dans leurs têtes… et ils ont aussi l“air bizarre."'

    menu:
        'Donne une petite tape à la femme, attire son attention.':
            # a170 # r3478
            jump eivene_s4  # EXTERN

        'Laisse-la tranquille.':
            # a171 # r3479
            jump morte_dispose


# s57 # say3480
label morte_s57: # externs eivene_s20
    nr '"La morte me semble un peu dure d„oreille, chef. On laisse tomber, d“accord ?"'

    menu:
        '"Qu„est-ce qu“elle a aux mains ?"':
            # a172 # r3483
            $ morteLogic.j38205_s57_r3483_action()
            jump morte_s58

        'Pars.':
            # a173 # r3484
            jump morte_dispose


# s58 # say3481
label morte_s58: # from 57.0
    nr '"Hé, chef… c„est une *tieffeline*. Ils ont une pointe de sang fiélon dans les veines, parce que leurs ancêtres ont flirté avec le démon. Certains sont vraiment bizarres dans leurs têtes… et généralement, ils ont aussi l“air bizarre."'

    menu:
        'Pars.':
            # a174 # r3482
            jump morte_dispose


# s59 # say3487
label morte_s59: # externs eivene_s9
    nr '"On dirait que tu t„es fait une nouvelle amie, chef. Je vous laisse en tête-à-tête… ?"'

    menu:
        '"Ça suffit, Morte."':
            # a175 # r3488
            jump eivene_s11  # EXTERN

        'Continue à jouer le zombi.':
            # a176 # r3489
            jump eivene_s11  # EXTERN

        'Repousse la femme.':
            # a177 # r3490
            jump eivene_s10  # EXTERN


# s60 # say3492
label morte_s60: # externs eivene_s13
    nr '"C„est la deuxième fois de ma vie que je suis content de ne pas avoir de nez."'

    jump eivene_s14  # EXTERN


# s61 # say3870
label morte_s61: # externs dust_s40
    nr '"Eh ! Eh ! Qu„est-ce que tu fais ?"'

    menu:
        '"*J„allais* parler à ce type. Ça pose un problème ?"':
            # a178 # r3871
            $ morteLogic.r3871_action()
            jump morte_s62

        '"Rien, continuons."':
            # a179 # r3872
            jump morte_dispose


# s62 # say3873
label morte_s62: # from 61.0
    nr '"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c„est une histoire d“incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l„autre, ils te brûleront ou t“enterreront. Allez, ne joue pas les azimutés, allons-nous en."'

    menu:
        '"Merci du conseil, mais je compte *bien* aller parler à ce type."':
            # a180 # r3874
            $ morteLogic.r3874_action()
            jump morte_s64

        '"D„accord, continuons."':
            # a181 # r3875
            jump morte_dispose


# s63 # say3876
label morte_s63: # externs dust_s40
    nr '"Eh ! T„es sourd ? Qu“est-ce que tu fais ?"'

    menu:
        '"Écoute, je vais aller parler à ce type. Ça pose un problème ?"':
            # a182 # r3877
            $ morteLogic.r3877_action()
            jump morte_s64

        '"Rien, continuons."':
            # a183 # r3878
            jump morte_dispose


# s64 # say3879
label morte_s64: # from 62.0 63.0
    nr '"C„est ça, ne m“écoute *pas*… tu signes ton arrêt de mort."'

    menu:
        '"Ouais, et tu peux jouer le chant funèbre. Pour l„instant, tais-toi."':
            # a184 # r3880
            jump dust_s3  # EXTERN

        '"Non, tu as raison. Laisse tomber. Continuons."':
            # a185 # r3881
            jump morte_dispose


# s65 # say3964
label morte_s65: # -
    nr '"Eh, chef, c„est du vandalisme. Ces boulons sont probablement les seules pièces qui tenaient ce sac d“os ensemble. La nécromancie a ses limites avec des gars comme ça, tu sais ?"'

    menu:
        '"Et alors ?"':
            # a186 # r3965
            $ morteLogic.r3965_action()
            jump morte_s66

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."':
            # a187 # r3966
            $ morteLogic.r3966_action()
            jump morte_s66

        '"Bon, très bien. Peu importe. Peut-être une autre fois."':
            # a188 # r3967
            jump morte_s66


# s66 # say3968
label morte_s66: # from 65.0 65.1 65.2
    nr '"Oh, c„est pas un problème." Morte exécute une drôle de révérence que tu interprètes comme un haussement d“épaule. "J„étais pas certain que tu connaisses. Vas-y, je t“en prie."'

    menu:
        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r3969_condition():
            # a189 # r3969
            jump skelw_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r3970_condition():
            # a190 # r3970
            jump skelw_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r3971_condition():
            # a191 # r3971
            jump skelw_s6  # EXTERN

        'Peu importe. Ce sera pour la prochaine fois.' if morteLogic.r3972_condition():
            # a192 # r3972
            $ morteLogic.r3972_action()
            jump morte_s67

        'Peu importe. Ce sera pour la prochaine fois.' if morteLogic.r3973_condition():
            # a193 # r3973
            jump morte_dispose


# s67 # say3974
label morte_s67: # from 66.3
    nr '"Hmmmm. Va savoir si cette barbe grise serait fâchée que *je* lui emprunte son corps…"'

    menu:
        '"Barbe grise ?"':
            # a194 # r3975
            jump morte_s68

        '"Je ne pense pas qu„il soit en mesure de protester."':
            # a195 # r3976
            jump morte_s69

        '"Quelque chose me dit que tu serais deux fois plus horripilant si tu avais des bras. Partons."':
            # a196 # r3977
            jump morte_s70


# s68 # say3978
label morte_s68: # from 67.0
    nr '"Barbe grise… tu sais, un vieux schnock, un croulant…"'

    menu:
        '"Eh bien, je ne pense pas qu„il soit en mesure de protester. Pourquoi ne pas prendre son corps ?"':
            # a197 # r3979
            jump morte_s69

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a198 # r3980
            jump morte_s70


# s69 # say3981
label morte_s69: # from 67.1 68.0
    nr 'Morte observe le squelette un instant, puis secoue la tête. "Non… il m„en faut un plus frais. Et avec un peu plus de dignité… celui-ci est craquelé et fracturé."'

    menu:
        '"Et pas toi ?"':
            # a199 # r3982
            jump morte_s70

        '"Bon, très bien. Allons-y."':
            # a200 # r3983
            jump morte_dispose


# s70 # say3984
label morte_s70: # from 67.2 68.1 69.0 127.0
    nr '"Oh, tu es vraiment impayable." Morte te lance un regard furieux. "TU peux te moquer, bige. Les miroirs demandent pitié quand tu t„approches."'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."':
            # a201 # r3985
            jump morte_s71

        '"Allons-y."':
            # a202 # r3986
            jump morte_dispose


# s71 # say3987
label morte_s71: # from 70.0
    nr 'Morte grogne. Tu te demandes comment il a fait sans poumons.'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."':
            # a203 # r3988
            $ morteLogic.r3988_action()
            jump morte_s72

        '"Allons-y."':
            # a204 # r3989
            jump morte_dispose


# s72 # say3990
label morte_s72: # from 71.0
    nr '"La liste de mes regrets s„allonge : j“aurais jamais dû t„aider à sortir de la salle de préparation." Morte grogne encore. "J“aurais dû te laisser pourrir… encore plus, j„veux dire."'

    menu:
        '"Je suis content pour toi. Allons-y."':
            # a205 # r3991
            jump morte_dispose


# s73 # say4018
label morte_s73: # externs giantsk_s9 giantsk_s8 giantsk_s7 giantsk_s6 giantsk_s5 giantsk_s4 giantsk_s1 giantsk_s0
    nr 'Morte grimace.'

    menu:
        '"Euh, ça veut dire oui ou… ?"':
            # a206 # r4019
            jump morte_s74


# s74 # say4020
label morte_s74: # from 73.0
    nr '"Oh… pardon." Morte flotte au-dessus de la tête du squelette. Il l„observe, puis redescend, tout en examinant l“armure et la lame. "Oh, oui. Oui, oui, je crois que ça fera l„affaire."'

    menu:
        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."' if morteLogic.r4023_condition():
            # a207 # r4023
            jump giantsk_s2  # EXTERN

        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."' if morteLogic.r4024_condition():
            # a208 # r4024
            jump giantsk_s3  # EXTERN

        '"Je ne sais pas. Cette chose ne m„a pas l“air d„être à ta portée."':
            # a209 # r4025
            jump morte_s75

        '"Je crois qu„on ferait mieux de le laisser tranquille."':
            # a210 # r4026
            jump morte_s75


# s75 # say4021
label morte_s75: # from 74.2 74.3
    nr '"Pourquoi, au nom de Baator, m„as-tu DEMANDÉ si je le voulais ? Tu exerçais tes compétences en cruauté ?" Morte fait une moue indignée. "Après tout ce que j“ai fait pour toi…"'

    menu:
        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."' if morteLogic.r4027_condition():
            # a211 # r4027
            jump giantsk_s2  # EXTERN

        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."' if morteLogic.r4028_condition():
            # a212 # r4028
            jump giantsk_s3  # EXTERN

        '"Je pensais à ta sécurité, Morte. J„ai peur de te blesser en t“attachant la tête là-dessus."':
            # a213 # r4029
            $ morteLogic.r4029_action()
            jump morte_s76

        '"Je crois vraiment qu„on devrait le laisser tranquille. Allons-nous-en."':
            # a214 # r4030
            jump morte_dispose


# s76 # say4022
label morte_s76: # from 75.2
    nr 'Morte t„observe un instant. "Quoi, on est MARIÉS ou quoi ? C“est quoi ce délire „Surtout, fais attention à toi“ ?" Morte te jette un regard furieux. "Si tu tenais VRAIMENT à moi, tu trouverais un moyen de mettre ma tête sur ce squelette géant."'

    menu:
        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."' if morteLogic.r4031_condition():
            # a215 # r4031
            jump giantsk_s2  # EXTERN

        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."' if morteLogic.r4032_condition():
            # a216 # r4032
            jump giantsk_s3  # EXTERN

        '"Excuse-moi, je ne m„inquiète pas pour toi à ce point-là. Allons-y."':
            # a217 # r4033
            jump morte_dispose

        '"Je te dis de le laisser tranquille. Maintenant, allons-nous-en."' if morteLogic.r4034_condition():
            # a218 # r4034
            jump morte_dispose


# s77 # say4134
label morte_s77: # -
    nr '"Eh ! Eh ! Qu„est-ce que tu fais ?"'

    menu:
        '"*J„allais* parler à ce type. Ça pose un problème ?"':
            # a219 # r4144
            $ morteLogic.r4144_action()
            jump morte_s78

        '"Rien, continuons."':
            # a220 # r4145
            $ morteLogic.r4145_action()
            jump morte_dispose


# s78 # say4135
label morte_s78: # from 77.0
    nr '"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c„est une histoire d“incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l„autre, ils te brûleront ou t“enterreront. Allez, ne joue pas les azimutés, allons-nous en."'

    menu:
        '"Merci du conseil, mais je compte *bien* aller parler à ce type."':
            # a221 # r4142
            $ morteLogic.r4142_action()
            jump morte_s80

        '"D„accord, continuons."':
            # a222 # r4143
            $ morteLogic.r4143_action()
            jump morte_dispose


# s79 # say4136
label morte_s79: # -
    nr '"Eh ! T„es sourd ? Qu“est-ce que tu fais ?"'

    menu:
        '"Écoute, je vais aller parler à ce type. Ça pose un problème ?"':
            # a223 # r4140
            $ morteLogic.r4140_action()
            jump morte_s80

        '"Rien, continuons."':
            # a224 # r4141
            jump morte_dispose


# s80 # say4137
label morte_s80: # from 78.0 79.0
    nr '"Alors, ne m„écoute *pas*… c“est ta mort."'

    menu:
        '"Ouais, et tu peux jouer le chant funèbre. Pour l„instant, tais-toi."':
            # a225 # r4138
            jump dustgu_s12  # EXTERN

        '"Non, tu as raison. Laisse tomber. Continuons."':
            # a226 # r4139
            jump morte_dispose


# s81 # say4338
label morte_s81: # externs dustfem_s40
    nr '"Eh ! Eh ! Qu„est-ce que tu fais ?"'

    menu:
        '"*J„allais* parler à cette dame. Ça te pose un problème ?"':
            # a227 # r4339
            $ morteLogic.r4339_action()
            jump morte_s82

        '"Rien, continuons."':
            # a228 # r4340
            jump morte_dispose


# s82 # say4341
label morte_s82: # from 81.0
    nr '"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c„est une histoire d“incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l„autre, ils te brûleront ou t“enterreront. Allez, ne joue pas les azimutés, allons-nous en."'

    menu:
        '"Merci du conseil, mais je compte *bien* aller parler à cette dame."':
            # a229 # r4342
            $ morteLogic.r4342_action()
            jump morte_s84

        '"D„accord, continuons."':
            # a230 # r4343
            jump morte_dispose


# s83 # say4344
label morte_s83: # externs dustfem_s40
    nr '"Eh ! T„es sourd ? Qu“est-ce que tu fais ?"'

    menu:
        '"Écoute, je vais aller parler à cette dame. Y a un problème ?"':
            # a231 # r4345
            $ morteLogic.r4345_action()
            jump morte_s84

        '"Rien, continuons."':
            # a232 # r4346
            jump morte_dispose


# s84 # say4347
label morte_s84: # from 82.0 83.0
    nr '"Alors, ne m„écoute *pas*… c“est ta mort."'

    menu:
        '"Ouais, et tu peux jouer le chant funèbre. Pour l„instant, tais-toi."':
            # a233 # r4348
            jump dustfem_s3  # EXTERN

        '"Non, tu as raison. Laisse tomber. Continuons."':
            # a234 # r4349
            jump morte_dispose


# s85 # say4675
label morte_s85: # externs vaxis_s9
    nr 'Morte se met à chuchoter. "Par les Puissances… ce bige est un *Anarchiste*. Se faire passer pour un zombi doit être un must chez les zozos."'

    menu:
        '"Anarchiste ?"':
            # a235 # r4676
            $ morteLogic.j64512_s85_r4676_action()
            jump morte_s86


# s86 # say4677
label morte_s86: # from 85.0
    nr '"Les Anarchistes… C„est une faction…" Morte semble vouloir exprimer un torrent d“insultes, mais il remarque que le zombi vous observe et vous écoute. "… ils, heu, veulent *libérer* tout le monde des chaînes du gouvernement. Faire tomber l„ordre établi et en créer un autre."'

    menu:
        'Vérité : "Cette quête semble noble. Quelques entorses à l„ordre ne feraient pas de mal de temps en temps."':
            # a236 # r4678
            $ morteLogic.r4678_action()
            jump vaxis_s11  # EXTERN

        'Mensonge : "Cette quête semble noble. Un Anarchiste poursuivant un dessein aussi grandiose *ne peut être* que mon ami."':
            # a237 # r4679
            $ morteLogic.r4679_action()
            jump vaxis_s11  # EXTERN

        '"Ça me paraît légèrement… contradictoire."':
            # a238 # r4680
            jump vaxis_s10  # EXTERN

        '"J„ai rarement entendu quelque chose d“aussi stupide."':
            # a239 # r4681
            jump vaxis_s10  # EXTERN

        'Vérité : "Tout cela n„a rien de constructif. L“ordre et la loi sont indissociables du progrès."':
            # a240 # r4682
            $ morteLogic.r4682_action()
            jump vaxis_s10  # EXTERN


# s87 # say4683
label morte_s87: # externs vaxis_s13
    nr 'Il murmure. "Il se demande si tu es fou, zinzin, marteau… et moi aussi. Maintenant, arrête ton délire „Je me suis réveillé des morts“, d„accord ? Tu me fais honte."'

    menu:
        '"Je TE gêne ?"':
            # a241 # r4684
            jump morte_s88

        '"Je voulais juste savoir de quoi ce… cadavre… parlait. Tu comprends ?"':
            # a242 # r4685
            jump morte_s88

        '"Ce n„est pas de ma faute si personne dans cette maison de… “d„azimutés“… ne parle normalement… ou n„a L“AIR normal."' if morteLogic.r4686_condition():
            # a243 # r4686
            jump morte_s88

        '"Écoute, je ne vais PAS mentir à ce type. Il vaut mieux être franc avec lui."':
            # a244 # r4687
            $ morteLogic.r4687_action()
            jump morte_s88


# s88 # say4688
label morte_s88: # from 87.0 87.1 87.2 87.3
    nr 'Morte soupire. "Écoute, chef. Reprends tes esprits. Tu ne peux pas toujours dire la VÉRITÉ à tout le monde. On ne peut pas laisser tous les peleurs nous prendre pour des pigeons, hein ?"'

    menu:
        '"Les „peleurs“ ? Des „pigeons“ ? Qu„est-ce que - oh, laisse tomber."':
            # a245 # r4689
            jump vaxis_s15  # EXTERN

        '"Ça suffit, Morte."':
            # a246 # r4690
            jump vaxis_s15  # EXTERN

        '"Je… je m„en souviendrai. Je voudrais continuer de parler à ce “zombi„."':
            # a247 # r4691
            jump vaxis_s15  # EXTERN


# s89 # say4692
label morte_s89: # externs vaxis_s23
    nr '"Attends…" Morte a l„air surpris. "Ce bige doit être un *Anarchiste*. Eh… Se faire passer pour un zombi doit être un must chez ces zozos."'

    menu:
        '"Anarchiste ?"':
            # a248 # r4693
            $ morteLogic.j64512_s89_r4693_action()
            jump morte_s90


# s90 # say4694
label morte_s90: # from 89.0
    nr '"Les Anarchistes… c„est une faction qui passe son temps à épier les autorités et à trouver des moyens de démolir tout ce qui pue l“ordre et le contrôle." Morte grogne. "Les Anarchistes pensent que tous les biges des plans seront libres et heureux de chercher leur propre „vérité“ une fois que l„ordre établi aura été détruit. Ils veulent établir un ordre nouveau - le non-ordre."'

    menu:
        'Vérité : "Cette quête semble noble. Quelques entorses à l„ordre ne feraient pas de mal de temps en temps."':
            # a249 # r4695
            $ morteLogic.r4695_action()
            jump vaxis_s71  # EXTERN

        '"Ça me paraît légèrement… contradictoire."':
            # a250 # r4696
            jump vaxis_s71  # EXTERN

        '"J„ai rarement entendu quelque chose d“aussi stupide."':
            # a251 # r4697
            jump vaxis_s71  # EXTERN

        '"Peu importe."':
            # a252 # r4698
            jump vaxis_s71  # EXTERN

        'Vérité : "Tout cela n„a rien de constructif. L“ordre et la loi sont indissociables du progrès."':
            # a253 # r4699
            $ morteLogic.r4699_action()
            jump vaxis_s71  # EXTERN


# s91 # say4700
label morte_s91: # externs vaxis_s46
    nr '"Il dit que ce bige de Pharod a vendu beaucoup de cadavres… aux Hommes-Poussière. C„est le travail des Récupérateurs : ils rassemblent les cadavres et les vendent aux Hommes-Poussière. On dirait que Pharod a vendu tellement de morts que les Hommes-Poussière pensent qu“il a inscrit toute la Ruche dans le livre des morts avant que son heure sonne… tu sais… il aurait tué des gens."'

    menu:
        '"Je vois. Je voudrais savoir autre chose…"':
            # a254 # r4701
            jump vaxis_s43  # EXTERN

        '"Ce Pharod a l„air d“un saint. J„aurai peut-être des questions plus tard. Reste dans le coin."':
            # a255 # r4702
            jump morte_dispose


# s92 # say4703
label morte_s92: # externs vaxis_s47
    nr '"Il veut savoir si quelqu„un t“a volé. C„est probablement ce qui s“est passé."'

    menu:
        '"Je vois. Je voudrais savoir autre chose…"':
            # a256 # r4704
            jump vaxis_s43  # EXTERN

        '"Ouais, j„ai hâte de trouver ce voleur. Écoute, j“aurai peut-être des questions plus tard. Reste dans le coin."':
            # a257 # r4705
            jump morte_dispose


# s93 # say4706
label morte_s93: # externs vaxis_s39
    nr '"Ouais, *ils* sont vraiment idiots."'

    jump vaxis_s61  # EXTERN


# s94 # say4708
label morte_s94: # externs vaxis_s65
    nr '"Je n„arrive pas à croire que tu supportes ça. Tu es AZIMUTÉ ou quoi ?"'

    menu:
        '"Plutôt azimuté, j„imagine…"' if morteLogic.r64535_condition():
            # a258 # r64535
            $ morteLogic.r64535_action()
            jump vaxis_s66  # EXTERN

        '"Plutôt azimuté, j„imagine…"' if morteLogic.r64534_condition():
            # a259 # r64534
            $ morteLogic.r64534_action()
            jump vaxis_s66  # EXTERN


# s95 # say4710
label morte_s95: # externs vaxis_s66
    nr '"Peux-tu faire des points de suture plus serrés ?"'

    menu:
        '"Avête, Mote -"':
            # a260 # r4711
            jump vaxis_s67  # EXTERN

        '"Mmm-HMMPH !"':
            # a261 # r4712
            jump vaxis_s67  # EXTERN


# s96 # say5029
label morte_s96: # -
    nr '"Eh ! Eh ! Qu„est-ce que tu fais ?"'

    menu:
        '"*J„allais* parler à ce type. Ça pose un problème ?"':
            # a262 # r5030
            $ morteLogic.r5030_action()
            jump morte_s97

        '"Rien, continuons."':
            # a263 # r5031
            jump morte_dispose


# s97 # say5032
label morte_s97: # from 96.0
    nr '"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c„est une histoire d“incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l„autre, ils te brûleront ou t“enterreront. Allez, ne joue pas les azimutés, allons-nous en."'

    menu:
        '"Merci du conseil, mais je compte *bien* aller parler à ce type."':
            # a264 # r5033
            $ morteLogic.r5033_action()
            jump morte_s99

        '"D„accord, continuons."':
            # a265 # r5034
            jump morte_dispose


# s98 # say5035
label morte_s98: # -
    nr '"Eh ! T„es sourd ? Qu“est-ce que tu fais ?"'

    menu:
        '"Écoute, je vais aller parler à ce type. Ça pose un problème ?"':
            # a266 # r5036
            $ morteLogic.r5036_action()
            jump morte_s99

        '"Rien, continuons."':
            # a267 # r5037
            jump morte_dispose


# s99 # say5038
label morte_s99: # from 97.0 98.0
    nr '"Alors, ne m„écoute *pas*… c“est ta mort."'

    menu:
        '"Ouais, et tu peux jouer le chant funèbre. Pour l„instant, tais-toi."':
            # a268 # r5039
            jump soego_s3  # EXTERN

        '"Non, tu as raison. Laisse tomber. Continuons."':
            # a269 # r5040
            jump morte_dispose


# s100 # say5041
label morte_s100: # externs soego_s20
    nr '"Qu„est-ce que tu *fiches* ?! Si tu veux le tuer, fais-le !"'

    menu:
        '"C„est fait ! Je lui ai brisé la nuque ! Il ne devrait même plus bouger !"':
            # a270 # r5042
            jump soego_s21  # EXTERN


# s101 # say5043
label morte_s101: # externs soego_s10
    nr '"Au moins, il *peut* marcher." Morte grogne. "Le flottement perd tout son charme dès qu„on veut frapper quelqu“un."'

    jump soego_s11  # EXTERN


# s102 # say5049
label morte_s102: # externs dhall_s5
    nr '"Oh là là, chef ! Qu„est-ce que tu fabriques ?!"'

    menu:
        '"J„allais parler à ce scribe. Il sait peut-être comment je me suis retrouvé ici."':
            # a271 # r5050
            jump morte_s103


# s103 # say5052
label morte_s103: # from 102.0
    nr '"Écoute, branler ton râtelier avec les Hommes-Poussière, c„est bien la DERNIÈRE chose à faire -"'

    jump dhall_s0  # EXTERN


# s104 # say5053
label morte_s104: # externs dhall_s0
    nr '"Et on devrait *surtout* pas échanger la chanson avec ces malades d„Hommes-Poussière. Allez, on y va. Plus vite on se sera tiré de c“t endroit, mi…"'

    jump dhall_s1  # EXTERN


# s105 # say6071
label morte_s105: # externs deionarra_s8 deionarra_s48 deionarra_s26 deionarra_s19 deionarra_s0
    nr '"De retour, chef ? Tu t„étais littéralement volatilisé."'

    menu:
        '"Non, pas du tout. Sais-tu qui était cet esprit ?"':
            # a272 # r6075
            $ morteLogic.r6075_action()
            jump morte_s106

        '"Ça va. Continuons."':
            # a273 # r6076
            jump morte_dispose


# s106 # say6072
label morte_s106: # from 105.0
    nr '"Hein ? Un esprit ?"'

    menu:
        '"Ce spectre à qui je parlais. La femme."':
            # a274 # r6077
            jump morte_s107


# s107 # say6073
label morte_s107: # from 106.0
    nr '"Tu branlais ton râtelier avec une femme ? Où ça ?" Morte regarde autour de lui d„un air agité. "Elle était comment ?"'

    menu:
        '"Elle était sur la bière. Tu ne l„as pas vue ?"':
            # a275 # r6078
            jump morte_s108


# s108 # say6074
label morte_s108: # from 107.0
    nr '"Eh… non, tu es resté là un moment, immobile comme une statue. J„avais peur que tu m“aies encore fait un coup fumeux."'

    menu:
        '"Non, ça va… enfin, je crois. Continuons."':
            # a276 # r6079
            jump morte_dispose


# s109 # say6324
label morte_s109: # -
    nr '"Ça m„rappelle un boulot que j“ai fait autrefois." Il paraît embarrassé. "Enfin, j„veux dire… sans les bras."'

    menu:
        'Examine le cadavre.' if morteLogic.r6325_condition():
            # a277 # r6325
            jump post_s3  # EXTERN

        'Examine le cadavre.' if morteLogic.r6326_condition():
            # a278 # r6326
            jump post_s4  # EXTERN

        '"Hmmm. Je me demande si ça marcherait avec les autres affiches…"' if morteLogic.r6327_condition():
            # a279 # r6327
            jump post_s5  # EXTERN

        '"Hmmmm. Je me demande si ça marcherait avec les autres affiches…"' if morteLogic.r6328_condition():
            # a280 # r6328
            jump post_s5  # EXTERN

        'Examine les autres affiches.' if morteLogic.r6329_condition():
            # a281 # r6329
            jump post_s5  # EXTERN

        'Utilise Histoires-Os-Conter sur le cadavre.' if morteLogic.r6330_condition():
            # a282 # r6330
            jump post_s2  # EXTERN

        'Laisse le cadavre tranquille.':
            # a283 # r6331
            jump morte_dispose


# s110 # say6609
label morte_s110: # externs s42_s3 s42_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"'

    menu:
        '"Et alors ?"':
            # a284 # r6658
            $ morteLogic.r6658_action()
            jump s42_s1  # EXTERN

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."':
            # a285 # r6659
            $ morteLogic.r6659_action()
            jump s42_s1  # EXTERN

        '"Bon, très bien. Peu importe. Peut-être une autre fois."':
            # a286 # r6660
            jump s42_s1  # EXTERN


# s111 # say6610
label morte_s111: # externs s42_s3 s42_s2 s42_s0
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"'

    menu:
        '"„Barbe grise“ ?"':
            # a287 # r6661
            jump s42_s1  # EXTERN

        '"À mon avis, il est mal placé pour protester."':
            # a288 # r6662
            jump s42_s1  # EXTERN

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a289 # r6663
            jump s42_s1  # EXTERN


# s112 # say6611
label morte_s112: # externs s42_s13
    nr '"Arrête ! Ses bras vont se casser."'

    menu:
        'Croise les bras sur la poitrine.' if morteLogic.r6664_condition():
            # a290 # r6664
            jump s42_s4  # EXTERN

        'Imite les gestes du squelette… Attends de voir ce qui se passe.' if morteLogic.r6665_condition():
            # a291 # r6665
            jump s42_s9  # EXTERN

        '"Euh…"':
            # a292 # r6666
            jump s42_s10  # EXTERN

        'Laisse le squelette tranquille.':
            # a293 # r6667
            jump morte_dispose


# s113 # say6771
label morte_s113: # from 54.0 54.1
    nr '"Elle dirige cette cité. Tu la reconnaîtras en la voyant : elle a des lames tout autour du visage, elle est immense et elle flotte comme eux." Morte fait un signe de tête au dabus, qui vous regarde tous les deux. "Personne ne sait grand-chose sur elle… Elle ne parle pas beaucoup. Le tout est de ne pas la mettre en colère. Si tu l„aperçois, un bon conseil : tire-toi en courant."'

    menu:
        '"Je vois."':
            # a294 # r2784
            jump dabus_s3  # EXTERN


# s114 # say6784
label morte_s114: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Trouve un natif de Sigil."'

    menu:
        '"Je vois."':
            # a295 # r6955
            jump dabus_s3  # EXTERN


# s115 # say6786
label morte_s115: # -
    nr '"Oh, ils *ont* des noms. J„en suis sûr."'

    jump annah_s43  # EXTERN


# s116 # say6790
label morte_s116: # -
    nr '"C„est c“que *tu* dis, fiélonne."'

    menu:
        '"Ça suffit, Morte - Peux-tu lui poser d„autres questions, Annah ?"':
            # a296 # r6956
            jump annah_s40  # EXTERN

        '"Laisse tomber. Partons."':
            # a297 # r6957
            $ morteLogic.r6957_action()
            jump dabus_s6  # EXTERN


# s117 # say6794
label morte_s117: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Amène donc la petite fiélonne par ici." Il s„incline vers Annah. "C“est une native de la Ruche."'

    menu:
        '"Peut-être …"':
            # a298 # r6958
            jump dabus_s3  # EXTERN


# s118 # say6797
label morte_s118: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ?" Il s„incline vers Dak“kon. "Amène donc le Pharisien-deux-fois-plus-silencieux pour traduire."'

    menu:
        '"Peut-être …"':
            # a299 # r6959
            jump dabus_s3  # EXTERN


# s119 # say6800
label morte_s119: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Fais venir un tanar„ri." Il s“incline vers Tombée-en-Disgrâce. "Elle doit sûrement négocier la chanson avec eux sans arrêt."'

    menu:
        '"Peut-être …"':
            # a300 # r6960
            jump dabus_s3  # EXTERN


# s120 # say7040
label morte_s120: # -
    nr 'Tandis que tu t„éloignes, tu remarques que Morte te regarde avec insistance. "Eh ? Eh ?"'

    menu:
        '"Qu„est-ce qu“il y a ?"':
            # a301 # r7055
            jump morte_s121


# s121 # say7041
label morte_s121: # from 120.0
    nr '"T„as *vu* la façon dont cette beauté cadavérique m“a dévoré des yeux ?" Morte claque des dents, comme par anticipation. "Elle cherchait quelque matois chanceux pour décongeler son cercueil."'

    menu:
        '"*S„il te plaît*, ne recommence pas."' if morteLogic.r7056_condition():
            # a302 # r7056
            $ morteLogic.r7056_action()
            jump morte_s122

        '"De quoi tu *parles* ?"' if morteLogic.r7057_condition():
            # a303 # r7057
            $ morteLogic.r7057_action()
            jump morte_s47

        '"Quoi, ce regard d„outre-tombe aux yeux vides ?"' if morteLogic.r7058_condition():
            # a304 # r7058
            $ morteLogic.r7058_action()
            jump morte_s47


# s122 # say7042
label morte_s122: # from 121.0
    nr 'Morte t„ignore et se met à réfléchir. "C“est pas que je tienne absolument à ce que l„on s“intéresse à moi, c„est juste que j“aime bien que l„on me considère comme autre chose qu“un vulgaire crâne, tu vois ? J„éprouve des sentiments qui vont au-delà de mes instincts primaires. Je veux plus qu“une petite aventure à la dérobée."'

    menu:
        '"Continue et *je* te largue quelque part."':
            # a305 # r7059
            jump morte_s123

        '"Morte, tu *es* un crâne. Personne ne peut te voir autrement que comme un crâne. Accepte-le."':
            # a306 # r7060
            jump morte_s124

        '"Je comprends. Maintenant, allons-nous-en, d„accord ?"':
            # a307 # r7061
            jump morte_dispose


# s123 # say7043
label morte_s123: # from 122.0
    nr '"Oh là là, chef…" Morte recule légèrement. "Ce qui plaît aux femmes, ce sont les amants, pas les guerriers."'

    menu:
        '"Tu es sans doute la *dernière* personne dont je suivrai les conseils romantiques."':
            # a308 # r7062
            jump morte_s126

        '"Peu importe, Morte. Allons-y."':
            # a309 # r7063
            jump morte_dispose


# s124 # say7044
label morte_s124: # from 122.1
    nr '"Ouais, ben, j„suis peut-être qu“un crâne, mais un crâne au grand cœur."'

    menu:
        '"En fait, tu n„as *rien* de tout ça."':
            # a310 # r7064
            jump morte_s125

        '"Peu importe, Morte. Allons-y."':
            # a311 # r7065
            jump morte_dispose


# s125 # say7045
label morte_s125: # from 124.0
    nr '"Quoi ? T„es tombé dans ma vie pour cracher sur mes rêves et mes aspirations ?! Parfait, très bien. J“ai peut-être pas de cœur, mais *j„ai* une âme."'

    menu:
        '"Eh bien, en fait, je parie que tu… Laisse tomber. Allons-y."':
            # a312 # r7066
            jump morte_dispose

        '"Peu importe, Morte. Allons-y."':
            # a313 # r7067
            jump morte_dispose


# s126 # say7046
label morte_s126: # from 123.0
    nr '"Si tu avais la moitié de l„intelligence que tu possédais avant de mourir, tu serais plus malin." Morte prend un ton encore plus suffisant. "Sur l“amour, j„en connais un rayon."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a314 # r7068
            jump morte_dispose


# s127 # say7071
label morte_s127: # -
    nr 'Morte examine le squelette un moment, puis secoue la tête. "Nan… celui-là est trop propre… y„a presque plus de viande dessus. En plus, j“arriverais jamais à enlever toute cette chaux."'

    menu:
        '"Je ne sais pas s„il est “trop propre„… Tu aurais deux ou trois choses à apprendre sur la propreté."':
            # a315 # r7076
            jump morte_s70

        '"Bon, très bien. Allons-y."':
            # a316 # r7077
            jump morte_dispose


# s128 # say7130
label morte_s128: # -
    nr '"Ouais !"'

    jump hivef1_s8  # EXTERN


# s129 # say7187
label morte_s129: # -
    nr '"Un mimir est une encyclopédie vivante. C„est moi, chef."'

    menu:
        '"Je vois. Bon, ne te fais pas de bile pour ça, Morte. Vu son apparence, je vais sans doute t„éviter de mourir une deuxième fois."':
            # a317 # r7483
            $ morteLogic.r7483_action()
            jump harlotn_s8  # EXTERN

        '"Allons-nous-en d„ici. Au revoir, mademoiselle."':
            # a318 # r7484
            jump morte_dispose


# s130 # say7188
label morte_s130: # -
    nr 'Morte regarde, hypnotisé, tandis que la catin lâche une série de jurons. À la fin de cette avalanche d„injures, Morte reste un moment sans rien dire, puis se tourne vers toi. "Ouah, chef. On dirait que v“là d„nouvelles blagues pour l“arsenal." Il se retourne vers la catin, qui reprend son souffle. "Ça y est, j„suis amoureux."~ [MRT387]'

    menu:
        'Pars.':
            # a319 # r7485
            $ morteLogic.r7485_action()
            jump morte_dispose


# s131 # say7775
label morte_s131: # -
    nr '"Oh là là, chef." Morte t„interrompt avant même que tu aies pu t“adresser à la créature. "Laisse tomber. Va pas branler ton râtelier avec n„importe quel fiélon dans la rue. Allez, on y va."'

    menu:
        '"Je voulais lui poser quelques questions…"':
            # a320 # r7776
            jump morte_s132

        'Laisse la créature tranquille.':
            # a321 # r7777
            jump morte_dispose


# s132 # say7778
label morte_s132: # from 131.0
    nr '"Non." Morte regarde la créature, puis se retourne vers toi et baisse considérablement le ton. "Ils sont susceptibles. Tirons-nous."'

    menu:
        '"J„en prends le risque."':
            # a322 # r7779
            jump bishab_s11  # EXTERN

        'Laisse la créature tranquille.':
            # a323 # r7780
            jump morte_dispose


# s133 # say7805
label morte_s133: # -
    nr 'Morte soupire tandis que tu es sur le point de t„adresser à la créature.'

    menu:
        '"Oui ?"':
            # a324 # r7806
            jump morte_s134


# s134 # say7807
label morte_s134: # from 133.0
    nr '"Oh, rien… L„école de la vie est la meilleure, tu sais." Il s“incline vers la créature. "Vas-y."'

    menu:
        '"Oui."':
            # a325 # r7808
            jump bishab_s11  # EXTERN

        '"D„accord, peu importe. Allons-y."':
            # a326 # r7809
            jump morte_dispose


# s135 # say2349
label morte_s135: # from 44.0 44.1
    nr '"Ouais, un „gith“…" Morte jette un coup d„œil sur le gith, qui continue de te dévisager. "On en reparlera une autre fois."'

    menu:
        '"Je n„ai pas l“intention de partir tout de suite. Je vais d„abord lui poser des questions…"':
            # a327 # r9035
            jump gith_s7  # EXTERN

        'Laisse le gith tranquille.':
            # a328 # r9036
            jump morte_dispose


# s136 # say9860
label morte_s136: # -
    nr '"Viens, chef… ou tu auras tué ce pauvre bougre avant de réussir à le réveiller !"'

    menu:
        '"Tu as raison, Morte - Allons-nous-en."':
            # a329 # r9882
            jump morte_dispose


# s137 # say11946
label morte_s137: # -
    nr 'Morte s„approche. "C“est quoi, la chanson, chef ?"'

    menu:
        '"Tu vois ces dents ?"':
            # a330 # r11974
            jump morte_s138

        '"Rien, peu importe."':
            # a331 # r11975
            jump morte_dispose


# s138 # say11947
label morte_s138: # from 137.0
    nr 'Morte examine la paume de ta main. "Beurrrk." Il paraît pris d„une fascination morbide. "De vilaines petites biges, non ?"'

    jump morte_dispose


# s139 # say11948
label morte_s139: # -
    nr '"Bâcle ça." Morte tressaille. "Tu voudrais de ces trucs en *toi* ?"'

    menu:
        '"Allez, Morte, elles ont l„air de bien t“aimer. Regarde comme elles te dévorent des yeux."':
            # a332 # r11976
            jump morte_s140

        'Prends Morte, fourre les dents dans sa bouche.':
            # a333 # r11977
            $ morteLogic.r11977_action()
            jump morte_s141

        '"Alors, peu importe."':
            # a334 # r11978
            jump morte_dispose


# s140 # say11949
label morte_s140: # from 139.0
    nr '"Ces petits cagueurs feraient mieux de ne pas m„approcher, ou…" Morte s“interrompt. "Tu sais, je vois mal ce qui pourrait faire peur à des dents."'

    menu:
        'Examine les dents.':
            # a335 # r11979
            jump morte_dispose

        'Prends Morte, fourre les dents dans sa bouche.':
            # a336 # r11980
            $ morteLogic.r11980_action()
            jump morte_s141

        '"Alors, peu importe."':
            # a337 # r11981
            jump morte_dispose


# s141 # say11950
label morte_s141: # from 139.1 140.1
    nr 'La lutte est brève. Tu immobilises Morte d„une clé de tête (seule prise possible), les dents sautent de ta main sur sa mâchoire. Il a beau te mordre pour essayer de se dégager, la lutte est brève. Il hurle lorsqu“elles lui arrachent ses propres dents et se jettent dans les cavités mises à nu.'

    menu:
        '"Voilà, Morte. Ce n„était pas si terrible, hein ?"':
            # a338 # r11982
            $ morteLogic.r11982_action()
            jump morte_s143


# s142 # say11951
label morte_s142: # from 149.0
    nr 'Morte continue de hurler. Les dents plantent leurs racines en lui avec des bruits de chignole tout à fait horribles.'

    menu:
        '"Morte ? Ça va ?"':
            # a339 # r11983
            $ morteLogic.r11983_action()
            jump morte_s143


# s143 # say11952
label morte_s143: # from 141.0 142.0
    nr 'Morte ne semble pas t„entendre. Il hurle, hurle, sans relâche, et soudain il claque des mâchoires avec violence. Il y parvient par trois fois, puis ses dents du haut et du bas s“enclenchent les unes dans les autres, de sorte qu„il ne peut plus ouvrir la bouche.'

    menu:
        '"Oh là là !"':
            # a340 # r11984
            jump morte_s144


# s144 # say11953
label morte_s144: # from 143.0
    nr 'Il marmonne quelque chose à ton endroit, les yeux écarquillés.'

    menu:
        '"Alors… elles te plaisent ?"' if morteLogic.r11985_condition():
            # a341 # r11985
            jump morte_s145

        '"Morte, ça va ?"' if morteLogic.r11986_condition():
            # a342 # r11986
            jump morte_s150


# s145 # say11954
label morte_s145: # from 144.0
    nr 'Ses dents se débloquent soudain et il prend une profonde inspiration. "Je te *tuerai* pour ça, dit-il. C„était un sale tour."'

    menu:
        '"Comment tu te sens ?"':
            # a343 # r11987
            jump morte_s146


# s146 # say11955
label morte_s146: # from 145.0 150.0
    nr 'Morte remue les mâchoires à titre d„expérience. "Curieux. Et intéressant." Soudain, ses dents s“allongent, devenant des crocs. "Ooooooh ! Elles changent !" Elle raccourcissent, rallongent, dents, crocs, dents, et ainsi de suite… "Ça va me plaire."'

    menu:
        '"Excuse-moi, Morte. Je ne voulais pas te faire de mal."' if morteLogic.r11988_condition():
            # a344 # r11988
            jump morte_s147

        '"Tu vois ? J„avais raison, non ?"' if morteLogic.r11989_condition():
            # a345 # r11989
            jump morte_s147


# s147 # say11956
label morte_s147: # from 146.0 146.1
    nr '"Oh, je me vengerai malgré tout", répond Morte. Il sourit, et ses dents, une fois de plus, deviennent des crocs. "Un peu de patience."'

    menu:
        '"Euh… la vengeance n„a jamais été une solution, Morte… Euh, allons-nous-en."' if morteLogic.r11990_condition():
            # a346 # r11990
            jump morte_dispose

        '"Tu finiras par me remercier. Tu verras."' if morteLogic.r11991_condition():
            # a347 # r11991
            jump morte_dispose


# s148 # say11957
label morte_s148: # -
    nr '"Qu„est-ce qu“il y a ?" Morte s„approche et examine la paume de ta main. "Hé… on dirait bien qu“elles préparent un mauvais coup, non ?"'

    menu:
        '"Sûrement, ne -"':
            # a348 # r11992
            jump morte_s149


# s149 # say11958
label morte_s149: # from 148.0
    nr 'Ce qui se passe ensuite est aussi difficile à décrire que pénible à regarder. Tu n„as pas le temps de serrer le poing que déjà les dents sautent de ta main sur sa mâchoire. Il hurle lorsqu“elles lui arrachent ses propres dents et se jettent dans les cavités mises à nu.'

    menu:
        '"Morte !"':
            # a349 # r11993
            jump morte_s142


# s150 # say11959
label morte_s150: # from 144.1
    nr 'Ses dents se débloquent toutes soudainement et il prend une profonde inspiration. "Je te *tuerai* pour ça, dit-il. C„était prémédité !"'

    menu:
        '"Écoute, ce n„est pas ce que je voulais… Je t“avais même prévenu. Euh… comment tu te sens ?"':
            # a350 # r11994
            jump morte_s146


# s151 # say12389
label morte_s151: # -
    nr 'Morte te parle à voix basse : "Chef, j„aime pas ça. Ils ne devraient pas être ici. La Guerre Sanglante n“a pas assez botté le cul des célestes pour que ces fiélons puissent prendre des congés. Ils *veulent* quelque chose. Fais attention où tu mets les pieds." Pendant ce temps, Tegar„in continue de répondre à son compagnon…'

    jump tegarin_s12  # EXTERN


# s152 # say12449
label morte_s152: # -
    nr '"Chef, je suis plus certain que jamais que ces biges sont pas clairs. On dirait qu„ils ont déserté, comme s“ils cherchaient un moyen d„élever leur statut sur Baator. Ne leur parle pas, chef… tu sais pas à quel jeu ils jouent, et tu pourrais littéralement… t“y brûler."'

    menu:
        '"D„accord, Morte. Juste quelques questions pour ces deux-là…"':
            # a351 # r12450
            jump aethel_s11  # EXTERN

        '"D„accord, Morte. J“en ai fini avec eux."':
            # a352 # r12451
            jump morte_dispose


# s153 # say12466
label morte_s153: # -
    nr 'Morte flotte dans les airs près de toi et te chuchote à l„oreille : "*Il* a raison, chef… J“sais pas ce qui t„a agacé."'

    menu:
        '"Très bien… Je voulais juste te poser une question…"':
            # a353 # r12553
            jump baria_s4  # EXTERN

        '"Tais-toi, espèce de crâne bavard ! Et toi, bestiole à quatre pattes : crève…"':
            # a354 # r12554
            $ morteLogic.r12554_action()
            jump morte_dispose

        '"Oh, non… C„était *toi*. Tu vas le regretter…"':
            # a355 # r12555
            $ morteLogic.r12555_action()
            jump morte_dispose

        '"Alors, laisse tomber. Au revoir."':
            # a356 # r12556
            $ morteLogic.r12556_action()
            jump morte_dispose


# s154 # say12467
label morte_s154: # -
    nr '"Ouais, ouais ! Faire quelque chose de sympa !"'

    jump baria_s20  # EXTERN


# s155 # say12621
label morte_s155: # -
    nr 'Morte semble surpris lorsque tous les yeux se posent sur lui. "Quoi ? Quoi ?" Tu as l„impression que s“il avait des lèvres, il sifflerait innocemment.'

    menu:
        '"Tu as une explication, Morte ?"':
            # a357 # r12854
            jump morte_s156

        '"C„est quoi, un “mimir„ ?"' if morteLogic.r12855_condition():
            # a358 # r12855
            $ morteLogic.r12855_action()
            jump morte_s157

        '"Ne fais pas attention à lui… Tu peux me répondre ?"':
            # a359 # r12856
            jump creed_s30  # EXTERN


# s156 # say12622
label morte_s156: # from 155.0
    nr '"Bon, je propose qu„on écoute cet homme. D“accord ?" Morte se tourne et fixe durement le chasseur de rats.'

    menu:
        '"Non… Écoutons ce que tu as à dire, Morte."':
            # a360 # r12857
            jump morte_s158

        '"Tout à l„heure… C“est quoi, un „mimir“ ?"' if morteLogic.r12858_condition():
            # a361 # r12858
            $ morteLogic.r12858_action()
            jump morte_s157

        'Retourne-toi vers le chasseur de rats.':
            # a362 # r12859
            jump creed_s32  # EXTERN


# s157 # say12623
label morte_s157: # from 155.1 156.1
    nr 'Morte roule des yeux d„un air gêné. "C“est une… encyclopédie sur pattes. Mais j„en suis pas très fier. Bon, écoutons ce type, d“accord ?"'

    menu:
        '"Très bien."':
            # a363 # r12860
            $ morteLogic.r12860_action()
            jump creed_s32  # EXTERN

        '"Non, j„en ai assez entendu. Au revoir, chasseur de rats."':
            # a364 # r12861
            $ morteLogic.r12861_action()
            jump creed_s59  # EXTERN


# s158 # say12624
label morte_s158: # from 156.0
    nr '"Oh allez, chef… pourquoi j„te cacherais des choses ? J“t„ai dit tout c“que *je* sais d„utile. Laissons simplement ce bige reprendre toute l“affaire."'

    menu:
        '"Très bien."':
            # a365 # r12862
            jump creed_s32  # EXTERN

        '"Peu importe. Allons-y… Au revoir, chasseur de rats."':
            # a366 # r12863
            jump creed_s59  # EXTERN


# s159 # say12625
label morte_s159: # -
    nr '"Ouais, chef ! T„as tout compris !"'

    jump creed_s40  # EXTERN


# s160 # say12626
label morte_s160: # -
    nr '"Mourir, chef… mourir."'

    menu:
        '"Mais toi, chasseur de rats, tu as plutôt l„air sympathique…"':
            # a367 # r12864
            jump creed_s49  # EXTERN

        '"Je comprends. Une autre question…"':
            # a368 # r12865
            jump creed_s15  # EXTERN

        '"Merci du renseignement. Au revoir."':
            # a369 # r12866
            jump creed_s59  # EXTERN


# s161 # say12627
label morte_s161: # -
    nr '"Mourir, chef… mourir."'

    menu:
        '"Ah… Qu„est-ce que tu disais sur les gens qui achètent des rats morts ?"':
            # a370 # r12867
            jump creed_s18  # EXTERN

        '"Je vois. J„ai une autre question…"':
            # a371 # r12868
            jump creed_s15  # EXTERN

        '"Je comprends. Au revoir."':
            # a372 # r12869
            jump creed_s59  # EXTERN


# s162 # say13748
label morte_s162: # -
    nr '"Bon, encore un arbre avec trop de branches cassées." Morte fait rouler ses yeux. "Ça ne sert à rien de causer avec des Xaositectes, chef. C„est une bande d“azimutés."'

    menu:
        '"Les Xaositectes ?"' if morteLogic.r13774_condition():
            # a373 # r13774
            $ morteLogic.r13774_action()
            jump morte_s163

        '"Qui sont les Xaositectes déjà ?"' if morteLogic.r13775_condition():
            # a374 # r13775
            $ morteLogic.r13775_action()
            jump morte_s163

        '"Je pensais qu„il pourrait m“apprendre quelque chose. Tant pis, allons-nous-en."' if morteLogic.r13776_condition():
            # a375 # r13776
            $ morteLogic.r13776_action()
            jump morte_dispose


# s163 # say13749
label morte_s163: # from 162.0 162.1
    nr '"C„est une “faction„ qui n“a pas de règles… sauf de garder en tête une seule pensée trop longtemps. On les appelle parfois les „Chaoteux“. Pas besoin de t„expliquer pourquoi."'

    menu:
        '"Comment est-ce qu„ils recrutent leurs membres ?"':
            # a376 # r13777
            jump morte_s164

        '"Je vois. Allons-y."':
            # a377 # r13778
            jump morte_dispose


# s164 # say13750
label morte_s164: # from 163.0
    nr '"On dirait qu„ils attirent les membres comme des mouches… enfin, des membres fous ou assez chaoteux, je suppose. Je ne pense pas qu“ils aient des recruteurs… bien que l„on ne puisse être sûr de rien."'

    menu:
        '"Je vois. Merci du renseignement."':
            # a378 # r13779
            jump morte_dispose


# s165 # say13828
label morte_s165: # -
    nr '"Bon, encore un qui n„a pas toute sa tête." Morte fait rouler ses yeux. "Ça ne sert à rien de causer avec des Xaositectes, chef. C“est une bande d„azimutés."'

    menu:
        '"Les Xaositectes ?"' if morteLogic.r13986_condition():
            # a379 # r13986
            $ morteLogic.r13986_action()
            jump morte_s166

        '"Qui sont les Xaositectes déjà ?"' if morteLogic.r13987_condition():
            # a380 # r13987
            $ morteLogic.r13987_action()
            jump morte_s166

        '"Je pensais qu„il pourrait m“apprendre quelque chose. Tant pis, allons-nous-en."' if morteLogic.r13988_condition():
            # a381 # r13988
            $ morteLogic.r13988_action()
            jump morte_dispose


# s166 # say13829
label morte_s166: # from 165.0 165.1
    nr '"C„est une “faction„ qui n“a pas de règles… sauf de garder en tête une seule pensée trop longtemps. On les appelle parfois les „Chaoteux“. Pas besoin de t„expliquer pourquoi."'

    menu:
        '"Comment est-ce qu„ils recrutent leurs membres ?"' if morteLogic.r13989_condition():
            # a382 # r13989
            jump morte_s167

        '"Je vois. Alors, allons-y."':
            # a383 # r13990
            jump morte_dispose


# s167 # say13830
label morte_s167: # from 166.0
    nr '"On dirait qu„ils attirent les membres comme des mouches… enfin, des membres fous ou assez chaoteux, je suppose. Je ne pense pas qu“ils aient des recruteurs… bien que l„on ne puisse être sûr de rien."'

    menu:
        '"Je vois. Merci du renseignement."':
            # a384 # r13991
            jump morte_dispose


# s168 # say14075
label morte_s168: # -
    nr '"Très bien dans ce cas…" Morte te siffle. "Allons-y, chef. Cet Homme-Poussière pourrait aussi bien être un fertilisant."'

    menu:
        '"D„accord. Allons-nous-en d“ici."' if morteLogic.r14275_condition():
            # a385 # r14275
            jump await_s6  # EXTERN

        '"D„accord. Allons-nous-en d“ici."' if morteLogic.r14276_condition():
            # a386 # r14276
            jump await_s6  # EXTERN

        '"D„accord. Allons-nous-en d“ici."' if morteLogic.r14277_condition():
            # a387 # r14277
            jump await_s6  # EXTERN

        '"D„accord. Allons-nous-en d“ici."' if morteLogic.r14278_condition():
            # a388 # r14278
            jump await_s15  # EXTERN


# s169 # say15339
label morte_s169: # -
    nr '"Fends ce bellâtre mielleux en deux, chef ! Montre-lui qui tu es !"'

    jump adyzoel_s19  # EXTERN


# s170 # say15340
label morte_s170: # -
    nr '"Ouais, réponds aux questions !"'

    jump adyzoel_s13  # EXTERN


# s171 # say15341
label morte_s171: # -
    nr '"Je parierais dix pièces de cuivre sur le gros type effrayé !" Morte plane près de toi et souffle : "Eh, c„est toi, chef. Ne nous laisse pas tomber."'

    jump adyzoel_s20  # EXTERN


# s172 # say15342
label morte_s172: # -
    nr '"Très bien, chef : tu l„as eu cette fois ! Pas de pitié !"'

    jump adyzoel_s19  # EXTERN


# s173 # say15343
label morte_s173: # -
    nr '"C„est ça, espèce d“élitiste pompeux, parfumé, au cul mielleux… tu as bien entendu !"'

    jump adyzoel_s32  # EXTERN


# s174 # say15344
label morte_s174: # -
    nr '"Qui *je* suis ? Ah ! J„aurais pu être ton père, mais ce singe m“a devancé !"'

    menu:
        '"Morte, tais-toi."':
            # a389 # r15490
            jump morte_s175

        'Laisse Morte continuer.':
            # a390 # r15491
            jump morte_s175


# s175 # say15345
label morte_s175: # from 174.0 174.1
    nr '"Qu„est-ce qui ne va pas, princesse ? T“as perdu ta langue ? Tu ferais mieux de refermer la mâchoire avant que quelque chose ne te tombe dans la gorge ! C„est ça, tu m“as bien entendu ! Ramasse ton soutien-gorge à dentelles et va te cacher sous les jupes dégoûtantes de ta mère ! Et donne-lui le bonjour par la même occasion !"'

    menu:
        '"Morte : la ferme, *maintenant*."':
            # a391 # r15492
            $ morteLogic.r15492_action()
            jump morte_s176

        'Laisse Morte continuer.':
            # a392 # r15493
            jump morte_s177


# s176 # say15346
label morte_s176: # from 175.0
    nr '"Euh ? Oh… désolé, chef. Ce genre de type me…"'

    jump adyzoel_s33  # EXTERN


# s177 # say15347
label morte_s177: # from 175.1
    nr '"Bon sang, si j„me retenais pas, je dirais -"'

    jump adyzoel_s33  # EXTERN


# s178 # say15348
label morte_s178: # -
    nr '"Quoi ? J„suis juste un mimir, chef ! Je peux pas me battre en duel !"'

    $ morteLogic.s178_action()
    jump adyzoel_s35  # EXTERN


# s179 # say15349
label morte_s179: # -
    nr '"C„est, euh… une sorte d“encyclopédie parlante. J„aime pas en parler, assez embarrassant à vrai dire."'

    if morteLogic.s179_condition():
        $ morteLogic.s179_action()
        jump adyzoel_s36  # EXTERN
    menu:
        '"Mais tu N„ES PAS un mimir, Morte…"' if morteLogic.r65537_condition():
            # a393 # r65537
            jump adyzoel_s36  # EXTERN


# s180 # say15350
label morte_s180: # -
    nr '"Allez, chef… tu vas le laisser s„en tirer comme ça ? Allons rosser ce roué chichiteux ! Je viserai les yeux et tu lui fonceras dessus !'

    menu:
        '"Tu as raison… Faisons-lui sa fête."':
            # a394 # r15494
            jump adyzoel_s19  # EXTERN

        '"Ce n„est pas le moment, Morte. Allons-y."':
            # a395 # r15495
            $ morteLogic.r15495_action()
            jump morte_dispose


# s181 # say16613
label morte_s181: # from 185.0
    nr '"Hein ? Ah, oui, chef, bien sûr, tout ce que tu voudras."'

    menu:
        '"Merci. J„ai des questions, Deuils…"' if morteLogic.r16881_condition():
            # a396 # r16881
            jump mftree_s28  # EXTERN

        '"Je ne plaisante pas, Morte. Tu peux faire un effort ?"' if morteLogic.r16882_condition():
            # a397 # r16882
            $ morteLogic.r16882_action()
            jump morte_s182

        '"Merci, Morte. Au revoir, Deuils-pour-Arbres."':
            # a398 # r16883
            jump morte_dispose


# s182 # say16614
label morte_s182: # from 181.1
    nr 'Morte te regarde un moment, silencieux, puis acquiesce. "Ouais. Si ça a autant d„importance pour toi, je le ferai."'

    menu:
        '"Merci. Annah ? Tu pourrais ?"' if morteLogic.r16884_condition():
            # a399 # r16884
            $ morteLogic.r16884_action()
            jump annah_s99  # EXTERN

        '"Merci. Ignus ?"' if morteLogic.r16885_condition():
            # a400 # r16885
            $ morteLogic.r16885_action()
            jump ignus_s11  # EXTERN

        '"Merci. Grâce, qu„en dites-vous ?"' if morteLogic.r16886_condition():
            # a401 # r16886
            $ morteLogic.r16886_action()
            jump grace_s14  # EXTERN

        '"Merci. Dak„kon, tu peux aider cet homme ?"' if morteLogic.r16887_condition():
            # a402 # r16887
            $ morteLogic.r16887_action()
            jump dakkon_s74  # EXTERN

        '"Merci. Dak„kon : aide cet homme."' if morteLogic.r16888_condition():
            # a403 # r16888
            $ morteLogic.r16888_action()
            jump dakkon_s75  # EXTERN

        '"Merci. Nordom, tu penses que tu pourrais l„aider ?"' if morteLogic.r16889_condition():
            # a404 # r16889
            $ morteLogic.r16889_action()
            jump nordom_s1  # EXTERN

        '"Merci. Vhailor, tu peux l„aider ?"' if morteLogic.r16890_condition():
            # a405 # r16890
            $ morteLogic.r16890_action()
            jump vhail_s1  # EXTERN

        '"Merci. J„ai des questions, Deuils…"':
            # a406 # r16891
            jump mftree_s28  # EXTERN

        '"Merci, Morte. Au revoir, Deuils-pour-Arbres."':
            # a407 # r16892
            jump morte_dispose


# s183 # say16615
label morte_s183: # -
    nr '"Dis, je ne vois *vraiment* pas où cela peut nous mener. C„est le sang séché d“une chose en pierre, chef. Ce n„est pas la façon de travailler de ces petits gars."'

    jump nordom_s2  # EXTERN


# s184 # say16616
label morte_s184: # -
    nr '"Et, allez, c„est reparti. Je ne peux pas *croire* que tu perdes ainsi ton temps, chef !"'

    jump nordom_s3  # EXTERN


# s185 # say16617
label morte_s185: # -
    nr '"Tu sais, chef, j„ai vu des trucs bizarres… mais que ce truc soit *possible*, ça me chiffonne."'

    menu:
        '"Merci, Nordom. Morte ? Qu„est-ce que t“en penses ?"' if morteLogic.r16893_condition():
            # a408 # r16893
            $ morteLogic.r16893_action()
            jump morte_s181

        '"Merci, Nordom. Annah ? Tu peux ?"' if morteLogic.r16894_condition():
            # a409 # r16894
            $ morteLogic.r16894_action()
            jump annah_s99  # EXTERN

        '"Merci, Nordom. Ignus ?"' if morteLogic.r16895_condition():
            # a410 # r16895
            $ morteLogic.r16895_action()
            jump ignus_s11  # EXTERN

        '"Merci, Nordom. Grâce, vous pourriez y réfléchir ?"' if morteLogic.r16896_condition():
            # a411 # r16896
            $ morteLogic.r16896_action()
            jump grace_s14  # EXTERN

        '"Merci, Nordom. Dak„kon, tu pourrais aider cet homme ?"' if morteLogic.r16897_condition():
            # a412 # r16897
            $ morteLogic.r16897_action()
            jump dakkon_s74  # EXTERN

        '"Merci, Nordom. Dak„kon : aide cet homme."' if morteLogic.r16898_condition():
            # a413 # r16898
            $ morteLogic.r16898_action()
            jump dakkon_s75  # EXTERN

        '"Merci, Nordom. Vhailor, tu pourrais aider ?"' if morteLogic.r16899_condition():
            # a414 # r16899
            $ morteLogic.r16899_action()
            jump vhail_s1  # EXTERN

        '"Merci, Nordom. J„ai quelques questions, Deuils…"':
            # a415 # r16900
            jump mftree_s28  # EXTERN

        '"Je te remercie, Nordom. Au revoir, Deuils-pour-Arbres."':
            # a416 # r16901
            jump morte_dispose


# s186 # say16618
label morte_s186: # -
    nr '"Oh ! J„peux pas regarder !"'

    jump ignus_s13  # EXTERN


# s187 # say17533
label morte_s187: # -
    nr '"Pourquoi pas, chef ? Ça sera drôle à botter pour se remonter le moral, pas vrai ? Hum… Je pourrai du moins le botter par procuration. Je voudrais bien voir ce saut de cinq mètres, aussi !"'

    menu:
        '"Qu„est-ce que tu en penses, Annah ?"' if morteLogic.r17583_condition():
            # a417 # r17583
            jump annah_s107  # EXTERN

        '"Je t„en prends un, marchand."' if morteLogic.r17584_condition():
            # a418 # r17584
            $ morteLogic.r17584_action()
            jump 300mer5_s5  # EXTERN

        '"Je préfère garder mes pièces de cuivre. J„ai des questions, marchand…"' if morteLogic.r17585_condition():
            # a419 # r17585
            jump 300mer5_s2  # EXTERN

        '"Je garde mes pièces de cuivre, marchand. Au revoir."' if morteLogic.r17586_condition():
            # a420 # r17586
            jump morte_dispose

        '"Je n„ai pas assez, marchand, mais j“ai quelques questions…"' if morteLogic.r17587_condition():
            # a421 # r17587
            jump 300mer5_s2  # EXTERN

        '"Je n„ai pas assez d“argent pour en acheter un. Peu importe, marchand. Au revoir."' if morteLogic.r17588_condition():
            # a422 # r17588
            jump morte_dispose


# s188 # say18801
label morte_s188: # -
    nr 'Morte se tourne vers le rucher. "Va caguer."'

    menu:
        '"Tu n„auras pas ce crâne."':
            # a423 # r18802
            $ morteLogic.r18802_action()
            jump colylfn_s5  # EXTERN

        '"Ce n„est pas ton crâne."':
            # a424 # r18803
            jump colylfn_s6  # EXTERN

        'Vérité : "Vas-y, prends le crâne."':
            # a425 # r18804
            jump colylfn_s9  # EXTERN

        'Attaque-le au moment où il baisse sa garde : "Vas-y, prends le crâne."':
            # a426 # r18805
            jump colylfn_s10  # EXTERN

        'Vérité : "Si tu peux me prouver que c„est bien ton crâne, je te le donne. Ce n“est que justice."':
            # a427 # r18578
            $ morteLogic.r18578_action()
            jump colylfn_s12  # EXTERN

        '"Qui es-tu ?"':
            # a428 # r18807
            jump colylfn_s13  # EXTERN

        '"Je t„achète le crâne. Ça te va ?"':
            # a429 # r18808
            $ morteLogic.r18808_action()
            jump colylfn_s14  # EXTERN


# s189 # say18809
label morte_s189: # -
    nr 'Morte tient l„un des doigts de l“homme entre ses dents comme un cigare macabre. Il parle le doigt à la bouche. "Touche-moi de nouveau et ta main ira rejoindre ton doigt, bige."'

    menu:
        '"Morte ! Rends-lui son doigt."':
            # a430 # r18810
            jump morte_s190

        '"Pas de chance. Disparais, bige."':
            # a431 # r18811
            jump colylfn_s11  # EXTERN

        '"Que ça te serve de leçon ! Au revoir."':
            # a432 # r18812
            jump colylfn_s11  # EXTERN


# s190 # say18813
label morte_s190: # from 189.0
    nr 'Morte crache le doigt sur l„homme. Il rebondit sur sa poitrine et tombe par terre.'

    menu:
        '"Pas de chance. Disparais, bige."':
            # a433 # r18814
            jump colylfn_s11  # EXTERN

        '"Que ça te serve de leçon ! Au revoir."':
            # a434 # r18815
            jump colylfn_s11  # EXTERN


# s191 # say18816
label morte_s191: # -
    nr 'Morte se tourne vers toi. "Chef, ne donne rien à ce vaurien."'

    menu:
        '"Je…"':
            # a435 # r18817
            jump colylfn_s15  # EXTERN


# s192 # say18818
label morte_s192: # -
    nr 'Morte se tourne vers l„homme. "J“te parlais *pas*, imbécile. Quand je te parlerai, tu le sauras, parce que j„le ferai en grognant et en grommelant pour être sûr que tu m“comprennes."'

    jump colylfn_s16  # EXTERN


# s193 # say18819
label morte_s193: # -
    nr '"Chef, *non*."'

    menu:
        'Donne-lui cinq pièces de cuivre.' if morteLogic.r18820_condition():
            # a436 # r18820
            $ morteLogic.r18820_action()
            jump colylfn_s18  # EXTERN

        'Donne-lui cinquante pièces de cuivre.' if morteLogic.r18821_condition():
            # a437 # r18821
            $ morteLogic.r18821_action()
            jump colylfn_s18  # EXTERN

        'Donne-lui cent pièces de cuivre.' if morteLogic.r18822_condition():
            # a438 # r18822
            $ morteLogic.r18822_action()
            jump colylfn_s18  # EXTERN

        'Donne-lui cinq cents pièces de cuivre.' if morteLogic.r18823_condition():
            # a439 # r18823
            $ morteLogic.r18823_action()
            jump colylfn_s18  # EXTERN

        '"Je n„ai pas assez d“argent à te donner."' if morteLogic.r18824_condition():
            # a440 # r18824
            jump colylfn_s19  # EXTERN

        '"Laisse tomber. C„est pas ton crâne et tu l“auras pas."':
            # a441 # r18825
            jump colylfn_s6  # EXTERN


# s194 # say18826
label morte_s194: # -
    nr '"Je flotte avec le plus grand idiot du Multivers."'

    menu:
        '"… Et quoi, Doigts Jaunes ? Si je te vole, tu feras *quoi* ?"':
            # a442 # r18827
            jump colylfn_s20  # EXTERN

        '"Bon, maintenant, j„ai quelques questions à te poser, Doigts Jaunes…"':
            # a443 # r18828
            jump colylfn_s23  # EXTERN

        '"Au revoir, Doigts Jaunes."' if morteLogic.r18829_condition():
            # a444 # r18829
            jump colylfn_s41  # EXTERN

        '"Au revoir, Doigts Jaunes."' if morteLogic.r18830_condition():
            # a445 # r18830
            $ morteLogic.r18830_action()
            jump morte_dispose


# s195 # say18831
label morte_s195: # -
    nr '"Chef ! Allez !"'

    jump colylfn_s52  # EXTERN


# s196 # say18832
label morte_s196: # -
    nr '"Rien de bien beau non plus, de là où je flotte."'

    menu:
        'Donne-lui cinq pièces de cuivre.' if morteLogic.r18833_condition():
            # a446 # r18833
            $ morteLogic.r18833_action()
            jump colylfn_s53  # EXTERN

        'Donne-lui dix pièces de cuivre.' if morteLogic.r18834_condition():
            # a447 # r18834
            $ morteLogic.r18834_action()
            jump colylfn_s53  # EXTERN

        'Donne-lui cinquante pièces de cuivre.' if morteLogic.r18835_condition():
            # a448 # r18835
            $ morteLogic.r18835_action()
            jump colylfn_s53  # EXTERN

        'Donne-lui cent pièces de cuivre.' if morteLogic.r18836_condition():
            # a449 # r18836
            $ morteLogic.r18836_action()
            jump colylfn_s53  # EXTERN

        '"Je retire ce que j„ai dit. Va-t“en et que je ne te revoie plus jamais."':
            # a450 # r18837
            jump colylfn_s61  # EXTERN


# s197 # say19031
label morte_s197: # -
    nr '"Eh toi, gros cogneur ! Comment va ton ami dans le mur ?"'

    jump ojo_s11  # EXTERN


# s198 # say19032
label morte_s198: # -
    nr 'Morte baisse la tête. "Tout ce que tu veux, chef."'

    menu:
        '"D„accord. Ojo, j“ai des questions."':
            # a451 # r19033
            jump ojo_s12  # EXTERN

        '"Ça va. Allons-y."':
            # a452 # r19034
            jump morte_dispose


# s199 # say19551
label morte_s199: # -
    nr '"Ouaoh, chef… quelle beauté, hein ? C„est pas partout qu“on peut trouver une petite mignonne comme ça, tu sais."'

    menu:
        '"Je ne trouve rien d„attirant à des cadavres en décomposition, Morte, femmes ou pas."':
            # a453 # r19666
            jump morte_s200

        '"Et bien, peut-être qu„en passant outre cette “horrible vieille chose pourrissante„…"':
            # a454 # r19667
            jump morte_s201


# s200 # say19552
label morte_s200: # from 199.0
    nr 'Les yeux de Morte roulent dans son crâne. "Euh ! Un jour tu comprendras ce que je veux dire."'

    menu:
        'Ignore-le, salue le zombi.' if morteLogic.r19668_condition():
            # a455 # r19668
            jump zomcitf_s1  # EXTERN

        'Ignore-le, salue le zombi.' if morteLogic.r19669_condition():
            # a456 # r19669
            jump zomcitf_s3  # EXTERN


# s201 # say19553
label morte_s201: # from 199.1
    nr '"Ouais, tu vois, c„est ce que je… eh !" Morte pivote vers toi. "Te moquerais-tu de moi ?"'

    menu:
        'Ignore-le, salue le zombi.' if morteLogic.r19670_condition():
            # a457 # r19670
            jump zomcitf_s1  # EXTERN

        'Ignore-le, salue le zombi.' if morteLogic.r19671_condition():
            # a458 # r19671
            jump zomcitf_s3  # EXTERN


# s202 # say19681
label morte_s202: # -
    nr '" Eh… j„sais pas si tu veux parler à cette… chose."'

    menu:
        '"Pourquoi pas, Morte ?"':
            # a459 # r19691
            jump morte_s203

        '"Bon, très bien. Allons-y."':
            # a460 # r19692
            jump morte_dispose

        'Ignore Morte, salue la goule.':
            # a461 # r19693
            jump ghocitm_s1  # EXTERN


# s203 # say19682
label morte_s203: # from 202.0
    nr '"C„étaient autrefois des humains… eux, ou leurs ancêtres, se sont nourris de cadavres et voilà ce qu“ils sont devenus. Pas très joli à voir, chef… guère plus que des animaux, en fait. Des animaux *dangereux*."'

    menu:
        '"Bon, très bien. Allons-y."':
            # a462 # r19694
            jump morte_dispose

        '"Je vais quand même aller lui parler."':
            # a463 # r19695
            jump ghocitm_s1  # EXTERN


# s204 # say19702
label morte_s204: # -
    nr '"Eh… j„sais pas si tu veux parler à cette… chose."'

    menu:
        '"Ça me surprend, Morte… C„est un mort-vivant, c“est une femme. Tu n„es pas si difficile d“habitude."':
            # a464 # r19713
            jump morte_s206

        '"Pourquoi pas, Morte ?"':
            # a465 # r19714
            jump morte_s205

        '"Bon, très bien. Allons-y."':
            # a466 # r19715
            jump morte_dispose

        'Ignore Morte, salue la goule.':
            # a467 # r19716
            jump ghocitf_s1  # EXTERN


# s205 # say19703
label morte_s205: # from 204.1 206.0
    nr '"C„étaient autrefois des humains… eux, ou leurs ancêtres, se sont nourris de cadavres et voilà ce qu“ils sont devenus. Pas très joli à voir, chef… guère plus que des animaux, en fait. Des animaux *dangereux*."'

    menu:
        '"Bon, très bien. Allons-y."':
            # a468 # r19717
            jump morte_dispose

        '"Je vais quand même aller lui parler."':
            # a469 # r19718
            jump ghocitf_s1  # EXTERN


# s206 # say19704
label morte_s206: # from 204.0
    nr '"C„est pas tout à fait la même chose, chef…"'

    jump morte_s205


# s207 # say20469
label morte_s207: # -
    nr '"Cette pilleuse de tombe est aveugle et presque sourde."'

    jump marta_s9  # EXTERN


# s208 # say20470
label morte_s208: # -
    nr '"Je crois qu„elle veut dire organes. J“espère qu„elle veut dire organes."'

    jump marta_s15  # EXTERN


# s209 # say20471
label morte_s209: # -
    nr 'Morte se tourne vers Marta. "Oui, des trucs." Il se tourne ensuite vers toi. "Ce n„est qu“une question de sémantique."'

    menu:
        '"Marta, pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"' if morteLogic.r20612_condition():
            # a470 # r20612
            $ morteLogic.r20612_action()
            jump marta_s16  # EXTERN

        '"Marta, pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"' if morteLogic.r20613_condition():
            # a471 # r20613
            $ morteLogic.j20538_s209_r20613_action()
            jump marta_s16  # EXTERN

        '"Euh… Très bien. Je dois m„en aller, Marta. Au revoir."':
            # a472 # r20614
            jump morte_dispose


# s210 # say20472
label morte_s210: # -
    nr '"Je ne vais *certainement* pas regarder ça."'

    jump marta_s24  # EXTERN


# s211 # say21602
label morte_s211: # -
    nr '"Oh, au nom des Puissances… ! Un dabus."'

    menu:
        '"Qu„est-ce qui ne va pas ?"':
            # a473 # r24695
            jump morte_s212


# s212 # say21603
label morte_s212: # from 211.0
    nr '"C„est un dabus. Ils *s“expriment* en rébus, ces puzzles de mots barbants. Si *tu* ne sais pas ce qu„il dit, nous ferions mieux de trouver un natif ou un autre moyen de communication… si c“est vraiment nécessaire. Quel groupe assommant ! Tu paries qu„ils *peuvent* parler, mais qu“ils préfèrent coder tout ce qu„ils disent ne serait-ce que pour le plaisir d“énerver tout le monde."'

    menu:
        '"Qu„est-ce qu“un „dabus“ ?"':
            # a474 # r24696
            jump morte_s213


# s213 # say21604
label morte_s213: # from 212.0
    nr '"La chanson dit que ce sont les gardes de la Dame des Douleurs. Ils flottent, cassent, réparent et rapiècent Sigil selon ses caprices. Ils sont pires que des mouches vertes." Morte soupire. "Mais interdiction de les écraser, sinon la Dame… se fâche."'

    menu:
        '"La „Dame des Douleurs“ ? Qui c„est ?"' if morteLogic.r24697_condition():
            # a475 # r24697
            $ morteLogic.r24697_action()
            jump morte_s214

        '"Que peux-tu me dire sur la Dame des Douleurs ?"' if morteLogic.r24698_condition():
            # a476 # r24698
            jump morte_s214

        '"Je vois."' if morteLogic.r24699_condition():
            # a477 # r24699
            jump fell_s8  # EXTERN


# s214 # say21605
label morte_s214: # from 213.0 213.1
    nr '"Elle dirige cette cité. Tu la reconnaîtras si tu la vois : elle a ces lames autour du visage, la taille d„un géant et elle flotte au-dessus du sol, comme ces gars." Morte fait un signe de tête en direction du dabus, qui vous observe tous les deux. "Personne ne sait grand-chose sur elle… elle ne parle pas beaucoup. Sache juste qu“il ne vaut mieux pas la mettre en colère. Si tu la vois, voici mon conseil : détale."'

    menu:
        '"Euh… attends un instant. Tu as dit que les dabus flottent, n„est-ce pas ? Celui-ci marche sur le sol."' if morteLogic.r24700_condition():
            # a478 # r24700
            jump morte_s215

        '"Euh… attends un instant. Tu as dit que les dabus flottent, n„est-ce pas ? Celui-ci marche sur le sol."' if morteLogic.r24701_condition():
            # a479 # r24701
            jump morte_s215

        '"Je vois."':
            # a480 # r24702
            jump fell_s8  # EXTERN


# s215 # say21606
label morte_s215: # from 214.0 214.1
    nr 'Morte regarde le dabus, et ses yeux s„écarquillent. "Ah-ha ! Je savais que vous autres têtes de boucs ne pouviez pas marcher ! Je le savais !" Morte se tourne joyeusement vers toi. "Ha ! Celui-là ne doit pas être assez bizarre pour décoller du sol."'

    menu:
        '"Peut-être bien…"':
            # a481 # r24703
            jump fell_s8  # EXTERN


# s216 # say21607
label morte_s216: # -
    nr 'Morte pouffe. "Je finirai dans les entrailles d„un tanar“ri avant d„arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Cherche un natif de Sigil."'

    menu:
        '"Je vois."':
            # a482 # r24704
            jump fell_s8  # EXTERN


# s217 # say21608
label morte_s217: # -
    nr 'Morte pouffe. "Je finirai dans les entrailles d„un tanar“ri avant d„arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Dis à la sale gamine de le faire." Il fait signe en direction d“Annah. "C„est une native de la Ruche."'

    menu:
        '"Peut-être…"':
            # a483 # r24705
            jump fell_s8  # EXTERN


# s218 # say21609
label morte_s218: # -
    nr 'Morte pouffe. "Je finirai dans les entrailles d„un tanar“ri avant d„arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Il indique Dak“kon de la tête. "Demande à Pharisien-deux-fois-plus-silencieux de traduire."'

    menu:
        '"Peut-être…"':
            # a484 # r24706
            jump fell_s8  # EXTERN


# s219 # say21610
label morte_s219: # -
    nr 'Morte pouffe. "Je finirai dans les entrailles d„un tanar“ri avant d„arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Demande à la tanar“ri de le faire." Il indique Tombée-en-Disgrâce de la tête. "Elle a sûrement dû avoir à faire avec ces gars plus d„une fois."'

    menu:
        '"Peut-être…"':
            # a485 # r24707
            jump fell_s8  # EXTERN


# s220 # say22061
label morte_s220: # externs soego_s93
    nr '"Tu veux juste les tuer ! La sensibilité guette les Hommes-Poussières, je vois."'

    menu:
        '"J„ai d“autres questions…"':
            # a486 # r22062
            jump soego_s83  # EXTERN

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a487 # r22063
            jump morte_dispose


# s221 # say22849
label morte_s221: # -
    nr 'Morte te fixe du regard et secoue la tête.'

    menu:
        '"Comment, cube héros ? „Morte est un crâne idiot“ ? Ah ça oui, hein, cube héros ?"':
            # a488 # r22850
            $ morteLogic.r22850_action()
            jump morte_s222

        'Mets le cube de côté.':
            # a489 # r22851
            jump morte_dispose


# s222 # say22852
label morte_s222: # from 221.0
    nr '"Hé ! Il a pas dit ça !"'

    menu:
        '"Si ! Il vient juste de le dire !"':
            # a490 # r22853
            $ morteLogic.r22853_action()
            jump morte_s223

        'Mets le cube de côté.':
            # a491 # r22854
            jump morte_dispose


# s223 # say22855
label morte_s223: # from 222.0
    nr '"Qu- ?! Donne-moi ça !"'

    menu:
        '"Non, c„est l“mien. Il veut rester qu„avec moi de toute façon. Pas vrai, cube héros ? Ben oui, bien sûr !"':
            # a492 # r22856
            $ morteLogic.r22856_action()
            jump morte_s224

        'Mets le cube de côté.':
            # a493 # r22857
            jump morte_dispose


# s224 # say22858
label morte_s224: # from 223.0
    nr '"Je. Veux. Juste. Le. Tenir. Une. Seconde."'

    menu:
        '"Mais t„as pas de mains."':
            # a494 # r22859
            jump morte_s225

        'Mets le cube de côté.':
            # a495 # r22860
            jump morte_dispose


# s225 # say22861
label morte_s225: # from 224.0
    nr 'J„le tiendrai entre mes DENTS."'

    menu:
        '"Non, je crois que j„vais juste le mettre de côté pour l“instant."':
            # a496 # r22862
            jump morte_s226


# s226 # say22863
label morte_s226: # from 225.0
    nr '"Je vais réduire ce cube modrone en morceaux."~ [MRT251]'

    menu:
        '"T„as entendu quelque chose cube héros ? Moi non plus !"':
            # a497 # r22864
            jump morte_dispose


# s227 # say22892
label morte_s227: # -
    nr '"Oooooh !" Morte claque des dents alors que Craddock se met à bouillonner… on l„entend presque prendre des notes dans sa tête.~ [MRT387]'

    jump craddo_s15  # EXTERN


# s228 # say24174
label morte_s228: # -
    nr '"Tu sais, chef, j„en avais vraiment marre de… ses pauses… constantes… De toute façon… c“est une… bonne chose… qu„il se soit… enfin… tu."'

    menu:
        '"Très drôle, Morte. Allons-y."':
            # a498 # r24175
            jump morte_dispose


# s229 # say24176
label morte_s229: # -
    nr '"Chef, pourquoi est-ce qu„on aurait besoin d“une réserve illimitée d„eau ? Où est le feu, hein ?"'

    menu:
        '"Cela pourrait nous servir plus tard, Morte. Allons-y."':
            # a499 # r24177
            jump morte_dispose

        '"Il faut qu„on le fasse, Morte."':
            # a500 # r24178
            jump morte_s230


# s230 # say24179
label morte_s230: # from 229.1
    nr '"La chose à faire ? Au cas où tu l„aurais oublié, chef, il faut que tu t“occupes de ta propre quête ! Mais bon, c„est toi qui décides. Pfff…"'

    menu:
        '"Merci pour ton approbation, Morte. Allons-y."':
            # a501 # r24180
            jump morte_dispose


# s231 # say24903
label morte_s231: # -
    nr '"Eh… ça va ? J„ai vraiment cru qu“t„étais clamsé."'

    menu:
        '"Qu… ? Qui es-tu ?"':
            # a502 # r24904
            $ morteLogic.r24904_action()
            jump morte_s232

        '"Je suis sûr que t„as des tas de choses intéressantes à dire, Morte, mais ferme-la et rejoins-moi IMMEDIATEMENT."':
            # a503 # r24905
            $ morteLogic.r24905_action()
            jump morte_dispose


# s232 # say24906
label morte_s232: # from 231.0
    nr '"Euh… qui je suis ? Et si *tu* commençais ? Qui tu es, toi ?"'

    menu:
        '"Je… ne me rappelle pas. J„arrive pas à m“en rappeler."':
            # a504 # r24907
            jump morte_s233

        '"C„est à *toi* que j“ai demandé en premier, crâne."':
            # a505 # r24908
            jump morte_s234


# s233 # say24909
label morte_s233: # from 232.0 234.0 235.0
    nr '"Tu ne te souviens pas de ton *nom* ? Eh, la prochaine fois que tu passes une nuit en ville, vas-y doucement sur la bibe. Je m„appelle Morte. Moi aussi je suis piégé ici."'

    menu:
        '"Piégé ?"':
            # a506 # r24910
            jump morte_s236


# s234 # say24911
label morte_s234: # from 232.1
    nr '"Ouais, „et je t“ai demandé en *deuxième*. Comment tu t„appelles ?"'

    menu:
        '"Je… ne me rappelle pas. J„arrive pas à m“en rappeler."':
            # a507 # r24912
            jump morte_s233

        '"Toi d„abord, crâne. C“est la dernière fois que je te le demande."':
            # a508 # r24913
            jump morte_s235


# s235 # say24914
label morte_s235: # from 234.1
    nr '"Pffff… c„que t“es têtu. Très bien, c„est *moi* qui vais jouer les gentils. Je m“appelle Morte. Et toi ?"'

    menu:
        '"Je… ne me rappelle pas. J„arrive pas à m“en rappeler."':
            # a509 # r24915
            jump morte_s233


# s236 # say24916
label morte_s236: # from 233.0
    nr '"Ouais, comme t„as pas encore eu le temps de te remettre d“aplomb, voilà la chanson : j„ai essayé toutes les portes et cette salle est fermée à clé plus sûrement qu“une ceinture de chasteté."'

    menu:
        '"On est enfermés… où ? Quel est cet endroit ?"':
            # a510 # r24917
            jump morte_s237


# s237 # say24918
label morte_s237: # from 236.0
    nr '"Ça s„appelle la “Morgue„… c“est un grand édifice noir avec tout le charme architectural d„une araignée pleine."'

    menu:
        '"„La Morgue“ ? Qu„est-ce… je suis mort ?"':
            # a511 # r24919
            jump morte_s238


# s238 # say24920
label morte_s238: # from 237.0
    nr '"Pas de mon point de vue. Tu as plein de cicatrices…. on dirait qu„un bige t“a peint avec un couteau. Raison de plus pour jouer un air à cet endroit avant que celui qui a commencé la gravure revienne finir son boulot."'

    menu:
        '"Comment on sort d„ici ?"':
            # a512 # r24921
            jump morte_s239


# s239 # say24922
label morte_s239: # from 238.0
    nr '"Bon, toutes les portes sont fermées, nous avons donc besoin de la clé. Il y a des chances qu„un des cadavres errants l“ait."'

    menu:
        '"Des cadavres errants ?"':
            # a513 # r24923
            jump morte_s240


# s240 # say24924
label morte_s240: # from 28.0 239.0
    nr '"Ouais, les gardiens de la Morgue utilisent des corps morts comme main-d„œuvre bon marché. Les cadavres sont aussi muets que des pierres. Ils sont inoffensifs et ne t“attaqueront que si tu les provoques."'

    menu:
        '"Y a-t-il un autre moyen ? Je ne veux pas les tuer juste pour une clé."':
            # a514 # r24925
            $ morteLogic.r24925_action()
            jump morte_s241

        '"Je devrais donc attaquer un de ces cadavres et lui faucher la clé ?"':
            # a515 # r24926
            jump morte_s242


# s241 # say24927
label morte_s241: # from 240.0
    nr '"Quoi, tu penses que ça va les vexer ? Ils sont MORTS. La bonne nouvelle, c„est que si tu les tues, ils pourront au moins se reposer avant que leurs gardiens les ressuscitent pour les remettre au travail."'

    menu:
        '"Bon, d„accord… J“en descendrai un et je prendrai la clé."':
            # a516 # r24928
            jump morte_s242


# s242 # say24929
label morte_s242: # from 240.1 241.0
    nr '"Bon, avant de faire ça, arme-toi. Je crois avoir vu un scalpel sur une des étagères par ici."  ^NREMARQUE : recherche une arme pour attaquer les zombis sur les étagères de cette pièce.^-'

    menu:
        '"D„accord, j“en chercherai un."':
            # a517 # r24930
            jump morte_s243


# s243 # say24931
label morte_s243: # from 242.0
    nr '"Une dernière chose : ces cadavres sont très lents, mais se faire frapper par l„un d“eux, c„est un peu comme embrasser un bélier. S“ils commencent à prendre l„avantage, n“oublie pas que tu peux COURIR et qu„eux ne le peuvent pas. Fais-en usage pour te mettre à l“abri."  ^NREMARQUE : <RUNAWAY> Si tu es en danger de mort, mets de la distance entre toi et les zombis en courant, le temps de récupérer.^-'

    menu:
        '"D„accord. Merci du conseil."':
            # a518 # r24932
            $ morteLogic.r24932_action()
            jump morte_dispose


# s244 # say25962
label morte_s244: # -
    nr '"C„est un genre d“encyclopédie sur pattes, chef. J„aime pas en parler à vrai dire."'

    if morteLogic.s244_condition():
        $ morteLogic.s244_action()
        jump cwrushf_s27  # EXTERN
    menu:
        '"Mais tu N„ES PAS un mimir, Morte…"' if morteLogic.r66902_condition():
            # a519 # r66902
            jump cwrushf_s27  # EXTERN


# s245 # say25964
label morte_s245: # -
    nr 'Morte agite ses sourcils et commence à planer vers la femme. "C„est pas tout ce que je-"'

    menu:
        '"Ça suffit, Morte."':
            # a520 # r25965
            jump morte_s246


# s246 # say25966
label morte_s246: # from 245.0
    nr '"Ouais, ouais. Ça va." Morte roule les yeux et commence à marmonner. "Pfff, je pourrais tout aussi bien être *mort*…"'

    menu:
        '"Dis… tu as bien dit „tout seul“. Pourquoi, ce n„est pas le cas, d“habitude ?"' if morteLogic.r25967_condition():
            # a521 # r25967
            jump cwrushf_s28  # EXTERN

        '"J„ai des questions à poser à cette femme…"':
            # a522 # r25968
            jump cwrushf_s2  # EXTERN

        'Laisse-la tranquille.':
            # a523 # r25969
            jump morte_dispose


# s247 # say25970
label morte_s247: # -
    nr 'Morte l„interrompt : "Bon, tu vois, chef, tout ça, ça dépend de la *qualité* de ton mimir. Certains - comme moi -- sont plus enchantés que d“autres, c„est tout. Plus… euh… “conscients„, c“est le terme."'

    menu:
        '"Hum."':
            # a524 # r25971
            jump cwrushf_s29  # EXTERN

        '"Je vois."':
            # a525 # r25972
            jump cwrushf_s29  # EXTERN


# s248 # say25973
label morte_s248: # -
    nr '"Eh ! J„essaie juste de m“amuser, chef !"'

    jump cwrushf_s27  # EXTERN


# s249 # say27285
label morte_s249: # -
    nr '"Un conseil, chef : je me tiendrai tranquille à présent - pas besoin de mettre plus de cadavres que nécessaire dans le livre des morts… en particulier des femmes. En plus, cela pourrait attirer les gardiens."'

    menu:
        '"Je ne crois pas que tu en aies déjà parlé… *Qui* sont ces gardiens ?"':
            # a526 # r27303
            jump morte_s250

        '"Tous ces cadavres… d„où ils viennent ?"':
            # a527 # r27304
            jump morte_s252

        '"Pourquoi tu t„intéresses aux cadavres féminins ?"':
            # a528 # r27305
            jump morte_s253

        '"D„accord… Je vais… essayer de m“en souvenir."':
            # a529 # r27306
            jump morte_s257


# s250 # say27286
label morte_s250: # from 249.0 252.0 256.0
    nr '"Ils se donnent le nom d„Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C“est bande enfumée d„adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."'

    menu:
        '"Je ne comprends pas… Qu„est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m“enfuis ?"':
            # a530 # r27307
            jump morte_s251


# s251 # say27287
label morte_s251: # from 250.0
    nr '"Tu n„écoutais pas ?! J“ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu„à l“extérieur ?"'

    menu:
        '"Les cadavres que j„ai vus ici… d“où ils venaient ?"':
            # a531 # r27308
            jump morte_s252

        '"Tout à l„heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"':
            # a532 # r27309
            jump morte_s253

        '"D„accord… Je vais… essayer de m“en souvenir."':
            # a533 # r27310
            jump morte_s257


# s252 # say27288
label morte_s252: # from 249.1 251.0 256.1
    nr '"La mort visite les plans tous les jours, chef. Ces empotés sont tout ce qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après la mort."'

    menu:
        '"Explique-moi… *Qui* sont ces gardiens ?"':
            # a534 # r27311
            jump morte_s250

        '"Tout à l„heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"':
            # a535 # r27312
            jump morte_s253

        '"D„accord… Je vais… essayer de m“en souvenir."':
            # a536 # r27313
            jump morte_s257


# s253 # say27289
label morte_s253: # from 249.2 251.1 252.1
    nr '"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d„aller les charcuter ou les découper pour trouver des clés."'

    menu:
        '"La dernière chance ? De quoi… de quoi *tu* parles ?"':
            # a537 # r27314
            jump morte_s254


# s254 # say27290
label morte_s254: # from 253.0
    nr '"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu comprends ? Eh ? Eh ?"'

    menu:
        '"Non… non, en fait, non."':
            # a538 # r27315
            jump morte_s255

        '"Tu n„es pas sérieux ?"' if morteLogic.r27316_condition():
            # a539 # r27316
            jump morte_s255


# s255 # say27291
label morte_s255: # from 254.0 254.1
    nr '"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu„une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."'

    menu:
        '"Mais… attends… Tu n„as pas dit que je n“étais *pas* mort, tout à l„heure ?"':
            # a540 # r27317
            jump morte_s256


# s256 # say27292
label morte_s256: # from 255.0
    nr '"Bon… d„accord, *tu* n“es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l„un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d“envie. "Bien sûr, les gardiens devraient d„abord s“en séparer et il y a peu de chances…"'

    menu:
        '"Qui sont ces gardiens déjà ?"':
            # a541 # r27318
            jump morte_s250

        '"Mais d„où viennent tous ces cadavres ?"':
            # a542 # r27319
            jump morte_s252

        '"Très bien… Je vais essayer de m„en souvenir."':
            # a543 # r27320
            jump morte_s257


# s257 # say27293
label morte_s257: # from 249.3 251.2 252.2 256.2
    nr '"Écoute, chef. Tu es encore un peu enfumé après ton baiser avec la mort. Deux conseils ne seront pas de trop : un, si t„as des questions, *pose-les moi*, d“accord ?"  ^NREMARQUE : <SPEAKTO>^-'

    menu:
        '"Très bien… Si j„ai des questions, je te les poserai."':
            # a544 # r27321
            jump morte_s258


# s258 # say27294
label morte_s258: # from 257.0
    nr '"Deuxièmement, si tu es *aussi* oublieux que t„en as l“air, commence à écrire des choses - chaque fois que quelque chose te semble important, note-le pour ne pas l„oublier."'

    menu:
        '"Comme dans un journal ?"':
            # a545 # r27322
            jump morte_s259


# s259 # say27295
label morte_s259: # from 258.0
    nr '"Ouais, comme dans un journal. Si tu commences à ne plus trop te souvenir de choses importantes, comme l„endroit où tu es, jette un œil et rafraîchis-toi la mémoire. Compris ?"  ^NREMARQUE : Pour accéder au journal, sélectionne le bouton du journal dans le menu rapide. Le journal est mis à jour automatiquement durant la partie.^-'

    menu:
        '"Très bien… Compris. Allons-y."':
            # a546 # r27323
            jump morte_dispose


# s260 # say27296
label morte_s260: # -
    nr '"Il devrait y avoir un scalpel sur l„une de ces étagères. Je le trouverais avant d“en découdre avec un de ces cadavres."'

    menu:
        '"Très bien… Je vais continuer à chercher."':
            # a547 # r27324
            jump morte_dispose


# s261 # say27297
label morte_s261: # - # IF WEIGHT #8 /* Triggers after states #: 729 444 325 281 742 737 733 487 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Bien, tu as trouvé le scalpel ! Bon, va chercher ces cadavres… et ne t„en fais pas, je resterai derrière et te fournirai de précieux conseils tactiques."'

    menu:
        '"Tu pourrais peut-être *m„aider*, Morte."':
            # a548 # r27325
            jump morte_s262

        '"D„accord."':
            # a549 # r27326
            jump morte_dispose


# s262 # say27298
label morte_s262: # from 261.0
    nr '"Je t„aiderai. Les bons conseils ne sont pas si évidents."'

    menu:
        '"Je voulais dire m„aider à attaquer le *cadavre*."':
            # a550 # r27327
            jump morte_s263

        '"Bon, très bien."':
            # a551 # r27328
            jump morte_dispose


# s263 # say27299
label morte_s263: # from 262.0
    nr '"Moi ? Mais je suis un romantique, pas un soldat. Je te gênerai."'

    menu:
        '"Quand j„attaquerai ce cadavre, il vaudrait mieux que tu sois là si tu ne veux pas être le prochain à avoir droit à ce scalpel."':
            # a552 # r27329
            jump morte_s264

        '"Bon, très bien."':
            # a553 # r27330
            jump morte_dispose


# s264 # say27300
label morte_s264: # from 263.0
    nr '"Bon… d„accord. Je vais t“aider."  ^NREMARQUE : si tu veux que Morte t„aide à attaquer, il te suffit de vérifier que vous êtes tous deux sélectionnés lorsque vous attaquez le cadavre. Morte se joindra à l“attaque.^-'

    menu:
        '"Ça me fait plaisir qu„on se comprenne. Maintenant, au travail."':
            # a554 # r27331
            jump morte_dispose


# s265 # say27301
label morte_s265: # -
    nr '"Bien, tu t„es occupé du bon cadavre, on dirait. Maintenant il va falloir trouver la clé. Elle devrait se trouver sur son corps. Une fois qu“on l„aura, on pourra se tirer d“ici."'

    menu:
        '"Très bien."':
            # a555 # r27332
            jump morte_dispose


# s266 # say27302
label morte_s266: # -
    nr '"Parfait, voilà la clé. Elle doit rentrer dans le verrou de l„une des portes de la salle."'

    menu:
        '"Bon, je vais essayer toutes les portes."':
            # a556 # r27333
            jump morte_dispose


# s267 # say27911
label morte_s267: # -
    nr 'Morte te souffle à l„oreille : "Un homme de loi."'

    jump cwcafef_s15  # EXTERN


# s268 # say27912
label morte_s268: # -
    nr '"C„est un genre d“encyclopédie sur pattes, chef. J„aime pas en parler à vrai dire."'

    if morteLogic.s268_condition():
        $ morteLogic.s268_action()
        jump cwcafef_s50  # EXTERN
    menu:
        '"Mais tu N„ES PAS un mimir, Morte…"' if morteLogic.r65536_condition():
            # a557 # r65536
            jump cwcafef_s50  # EXTERN


# s269 # say27913
label morte_s269: # -
    nr 'Morte agite ses sourcils et commence à planer vers la femme. "C„est pas tout ce que je-"'

    menu:
        '"Ça suffit, Morte."':
            # a558 # r27914
            jump morte_s270


# s270 # say27915
label morte_s270: # from 269.0
    nr '"Ouais, ouais. Ça va." Morte roule les yeux et commence à marmonner. "Pfff, je pourrais tout aussi bien être *mort*…"'

    menu:
        '"Dis… tu as bien dit „tout seul“. Pourquoi, ce n„est pas le cas, d“habitude ?"' if morteLogic.r27916_condition():
            # a559 # r27916
            jump cwcafef_s51  # EXTERN

        '"J„ai des questions à poser à cette femme…"':
            # a560 # r27917
            jump cwcafef_s4  # EXTERN

        'Laisse-la tranquille.':
            # a561 # r27918
            jump morte_dispose


# s271 # say27919
label morte_s271: # -
    nr 'Morte l„interrompt : "Bon, tu vois, chef, tout ça, ça dépend de la *qualité* de ton mimir. Certains - comme moi -- sont plus enchantés que d“autres, c„est tout. Plus… euh… “conscients„, c“est le terme."'

    menu:
        '"Hum."':
            # a562 # r27920
            jump cwcafef_s52  # EXTERN

        '"Je vois."':
            # a563 # r27921
            jump cwcafef_s52  # EXTERN


# s272 # say27922
label morte_s272: # -
    nr '"Eh ! J„essaie juste de m“amuser, chef !"'

    jump cwcafef_s50  # EXTERN


# s273 # say28036
label morte_s273: # -
    nr 'Morte acquiesce avec satisfaction. "Eh, ce type n„est pas mauvais bougre."'

    menu:
        '"Bon, tiens… Reprends ton argent, Malmanier."':
            # a564 # r28041
            $ morteLogic.r28041_action()
            jump malmanr_s13  # EXTERN

        'Jette les dix pièces de cuivre à Malmanier.':
            # a565 # r28042
            $ morteLogic.r28042_action()
            jump malmanr_s14  # EXTERN

        '"Vraiment ? Je n„ai rien entendu, Morte. Allons-y."':
            # a566 # r28043
            jump malmanr_s15  # EXTERN


# s274 # say28037
label morte_s274: # -
    nr 'Morte acquiesce avec satisfaction. "Eh, ce type n„est pas mauvais bougre."'

    menu:
        '"Bon, tiens… Reprends ton argent, Malmanier."' if morteLogic.r28038_condition():
            # a567 # r28038
            $ morteLogic.r28038_action()
            jump malmanr_s13  # EXTERN

        'Jette les trente pièces de cuivre à Malmanier.' if morteLogic.r28039_condition():
            # a568 # r28039
            $ morteLogic.r28039_action()
            jump malmanr_s14  # EXTERN

        '"Bon, tiens… Reprends ton argent, Malmanier."' if morteLogic.r28040_condition():
            # a569 # r28040
            $ morteLogic.r28040_action()
            jump malmanr_s13  # EXTERN

        'Jette les cinquante pièces de cuivre à Malmanier.' if morteLogic.r28044_condition():
            # a570 # r28044
            $ morteLogic.r28044_action()
            jump malmanr_s14  # EXTERN

        '"Bon, tiens… Reprends ton argent, Malmanier."' if morteLogic.r28045_condition():
            # a571 # r28045
            $ morteLogic.r28045_action()
            jump malmanr_s13  # EXTERN

        'Jette les cinquante pièces de cuivre à Malmanier.' if morteLogic.r28046_condition():
            # a572 # r28046
            $ morteLogic.r28046_action()
            jump malmanr_s14  # EXTERN

        '"Bon, tiens… Reprends ton argent, Malmanier."' if morteLogic.r28047_condition():
            # a573 # r28047
            $ morteLogic.r28047_action()
            jump malmanr_s13  # EXTERN

        'Jette les quatre-vingt pièces de cuivre à Malmanier.' if morteLogic.r28048_condition():
            # a574 # r28048
            $ morteLogic.r28048_action()
            jump malmanr_s14  # EXTERN

        '"Vraiment ? Je n„ai rien entendu, Morte. Allons-y."':
            # a575 # r28049
            jump malmanr_s15  # EXTERN


# s275 # say28630
label morte_s275: # -
    nr '"Ça a l„air chiant."'

    jump grace_s60  # EXTERN


# s276 # say28631
label morte_s276: # -
    nr '"C„est une tanar“ri… une succube, chef."'

    jump grace_s72  # EXTERN


# s277 # say28632
label morte_s277: # -
    nr '"Bâcle ça, fiélonne !" Morte claque des dents. "J„suis TOUT À FAIT pour que la succube vienne avec nous… Même les Puissances savent que t“as rien d„une rigolote, *toi*."'

    jump annah_s166  # EXTERN


# s278 # say28633
label morte_s278: # -
    nr '"Eh, attends une minute ! C„est *moi* qui connais bien les plans ! C“est mon boulot, chef !"'

    menu:
        '"Je trouve que c„est plutôt bien d“avoir deux personnes qui connaissent bien les plans dans la bande. En plus, j„ai aussi dit “agréable„, Morte."':
            # a576 # r28634
            jump morte_s279


# s279 # say28635
label morte_s279: # from 278.0
    nr '"Agréable à regarder, peut-être ! Il suffit qu„une pépée se dénude un peu et tu l“enrôles aussi sec !" Morte se tait. "J„m“en fous en fait, mais je tenais à le dire."'

    menu:
        '"C„est noté, Morte. Bien… Dame Grâce, pardonnez-moi d“avoir été aussi direct, mais qu„est-ce que vous diriez de voyager avec nous ?"':
            # a577 # r28636
            jump grace_s79  # EXTERN


# s280 # say28637
label morte_s280: # -
    nr '"Ce que mon compagnon balafré veut dire, c„est nous DEUX… J“m„appelle Morte : je m“excuse pour l„impolitesse de mon compagnon qui ne nous a pas présentés… ce serait une EXCELLENTE idée si vous veniez aussi. Nous avons plein de place pour une succube. PLEIN de place."'

    jump grace_s119  # EXTERN


# s281 # say28738
label morte_s281: # - # IF WEIGHT #4 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  Global("Morte_Stolen","GLOBAL",2) !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Merci, chef. Trop heureux d„être de retour avec toi." Sa voix est emplie de sarcasme. "Et j“ai appris un nouveau tour quand j„étais là-bas et tout et tout."'

    menu:
        '"Ouais. C„est un plaisir de te retrouver."':
            # a578 # r28743
            $ morteLogic.r28743_action()
            jump morte_dispose

        '"Excuse-moi, l„ami. Je voulais le bluffer."' if morteLogic.r28744_condition():
            # a579 # r28744
            $ morteLogic.r28744_action()
            jump morte_s282

        '"Excuse-moi, l„ami. Je voulais le bluffer."' if morteLogic.r28745_condition():
            # a580 # r28745
            $ morteLogic.r28745_action()
            jump morte_s283


# s282 # say28739
label morte_s282: # from 281.1
    nr '"Vraiment ? C„est gentil de ta part, chef. Bonne idée. Tu es provisoirement pardonné. Mais ne recommence pas."'

    menu:
        '"Bien sûr, Morte. Allons-y."':
            # a581 # r28746
            jump morte_dispose


# s283 # say28740
label morte_s283: # from 281.2
    nr '"C„est bizarre, je n“arrive pas à te croire. Oublions ce qui s„est passé. Allons-y."'

    menu:
        '"Très bien."':
            # a582 # r28747
            jump morte_dispose

        '"Morte, je le bluffais. Tu vas voir."':
            # a583 # r28748
            jump morte_dispose


# s284 # say28741
label morte_s284: # -
    nr '"Merci, chef. Sortons d„ici !" Morte s“interrompt. "Oh, au fait, chef… ces types avaient vraiment toute leur tête. Ils m„ont montré quelque chose de rusé."'

    menu:
        '"Partons."':
            # a584 # r28749
            jump morte_dispose


# s285 # say28962
label morte_s285: # -
    nr '"Euh… chef ? T„as déjà vu des statues, non ? Tu sais bien qu“elles ne parlent pas ?'

    menu:
        '"Réfléchis, Morte : tu es un crâne flottant parlant qui se prive de la possibilité de devenir une statue vivante."' if morteLogic.r28967_condition():
            # a585 # r28967
            jump morte_s286

        '"J„ai rencontré un mage dénommé Salabesh qui a parlé d“un homme de pierre. C„est toi ?"' if morteLogic.r28968_condition():
            # a586 # r28968
            $ morteLogic.r28968_action()
            jump quisai_s5  # EXTERN

        '"Peut-être, Morte. Je vais juste le toucher…"':
            # a587 # r28969
            jump quisai_s3  # EXTERN

        'Pars.':
            # a588 # r28970
            jump morte_dispose


# s286 # say28963
label morte_s286: # from 285.0
    nr '"Bon… euh… Hum. Tu m„as compris, chef."'

    menu:
        '"J„ai rencontré un mage dénommé Salabesh qui a parlé d“un homme de pierre. C„est toi ?"' if morteLogic.r28971_condition():
            # a589 # r28971
            $ morteLogic.r28971_action()
            jump quisai_s5  # EXTERN

        '"Attends, Morte. Je vais juste le toucher…"':
            # a590 # r28972
            jump quisai_s3  # EXTERN

        'Pars.':
            # a591 # r28973
            jump morte_dispose


# s287 # say28964
label morte_s287: # -
    nr '"C„est peut-être un peu trop anatomiquement correct, chef ?"'

    menu:
        '"C„était une question de pure forme, Morte."':
            # a592 # r28974
            jump morte_s288


# s288 # say28965
label morte_s288: # from 287.0
    nr '"Bien sûr, chef. Je le savais."'

    menu:
        '"J„ai rencontré un mage dénommé Salabesh qui a parlé d“un homme de pierre. C„est toi ?"' if morteLogic.r28975_condition():
            # a593 # r28975
            $ morteLogic.r28975_action()
            jump quisai_s5  # EXTERN

        'Frappe la statue.':
            # a594 # r28976
            $ morteLogic.r28976_action()
            jump quisai_s23  # EXTERN

        'Pars.':
            # a595 # r28977
            jump morte_dispose


# s289 # say28966
label morte_s289: # -
    nr 'Morte roule les yeux et émet un son étouffé. "Par les Pouvoirs, non, pas encore un bige qui parle… comme… ça !"'

    menu:
        '"J„ai des questions à te poser sur toi…"':
            # a596 # r28978
            jump quisai_s11  # EXTERN

        '"J„ai des questions sur cet endroit."':
            # a597 # r28979
            jump quisai_s30  # EXTERN

        '"Que sais-tu de Ravel Puits-de-Rébus ?"' if morteLogic.r28980_condition():
            # a598 # r28980
            jump quisai_s29  # EXTERN

        '"Je reviendrai te parler plus tard. Au revoir."':
            # a599 # r28981
            jump morte_dispose


# s290 # say29677
label morte_s290: # -
    nr '"Hé, chef - il croise les doigts !"'

    jump quell_s21  # EXTERN


# s291 # say30527
label morte_s291: # -
    nr 'Morte annonce dans un murmure. "Il dit qu„il est avocat. Conseiller. Un de ces biges qui branlent leur râtelier au tribunal."'

    jump iannis_s10  # EXTERN


# s292 # say30816
label morte_s292: # -
    nr 'Morte se tourne et regarde derrière lui. "Où ?! Où ?!"'

    jump able_s2  # EXTERN


# s293 # say30817
label morte_s293: # -
    nr 'Morte sursaute. "Regarde, derrière toi - un autre crâne flottant !"'

    menu:
        'Cherche toi-même le crâne.' if morteLogic.r30822_condition():
            # a600 # r30822
            jump able_s10  # EXTERN

        'Laisse Morte s„amuser.' if morteLogic.r30823_condition():
            # a601 # r30823
            jump able_s10  # EXTERN

        '"Viens, Morte. J„ai des questions à lui poser…"' if morteLogic.r30824_condition():
            # a602 # r30824
            jump able_s10  # EXTERN


# s294 # say30818
label morte_s294: # -
    nr '"Là où je te montre ! Là !"'

    jump able_s11  # EXTERN


# s295 # say30819
label morte_s295: # -
    nr 'Morte déclare d„un ton faussement exaspéré : "Tu viens de le rater ! Toute une *troupe* ! Ça ne se produira sûrement pas de nouveau avant un million de révolutions du Grand Anneau !"'

    jump able_s12  # EXTERN


# s296 # say30820
label morte_s296: # -
    nr 'Morte remue légèrement, comme s„il haussait les épaules. "Je préfère en parler comme d“un aperçu éclairé sur la nature humaine."'

    menu:
        '"J„ai quelques questions…"' if morteLogic.r30825_condition():
            # a603 # r30825
            jump able_s16  # EXTERN

        'Attire de nouveau l„attention de l“homme.' if morteLogic.r30826_condition():
            # a604 # r30826
            $ morteLogic.r30826_action()
            jump able_s13  # EXTERN


# s297 # say30821
label morte_s297: # -
    nr '"Tu sais, chef, C„EST PEUT-ÊTRE ASSEZ DINGUE POUR MARCHER !"'

    jump able_s65  # EXTERN


# s298 # say31566
label morte_s298: # -
    nr '"Par les tétons tranchants de la Dame, qu„est-ce qui…"  Soudain, le silence tombe, alors que tu es privé du dernier de tes sens.~ [MRT387]'

    menu:
        'Meurs abominablement, victime du Terrible Maléfice de Gangroihydron.':
            # a605 # r31567
            $ morteLogic.r31567_action()
            jump morte_dispose


# s299 # say32367
label morte_s299: # -
    nr '"Les „soltifs“ ?! Bon sang ! Nous n„allons pas *écouter* ce baratin, si ? Allons… allons trouver quelque Sensat qui n“a jamais eu le plaisir de goûter à la passion fiévreuse des lèvres d„un crâne." Il remue les sourcils avec anticipation.'

    menu:
        '"Tais-toi, Morte. On reste… au moins un certain temps."':
            # a606 # r32368
            jump deathad_s1  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter.':
            # a607 # r32369
            jump deathad_s1  # EXTERN

        '"Tu as raison, Morte - Partons."':
            # a608 # r32370
            $ morteLogic.r32370_action()
            jump morte_dispose


# s300 # say32371
label morte_s300: # -
    nr 'Morte murmure : "C„est le début de plus de souffrances."'

    menu:
        'Fais un signe de tête à Morte sans rien dire.':
            # a609 # r32372
            jump deathad_s2  # EXTERN

        '"Morte - tais-toi."':
            # a610 # r32373
            jump deathad_s2  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,':
            # a611 # r32374
            jump deathad_s2  # EXTERN

        '"Sans blague ! On s„en va, Morte."':
            # a612 # r32375
            $ morteLogic.r32375_action()
            jump morte_dispose


# s301 # say32376
label morte_s301: # -
    nr 'Morte murmure : "Ça, c„est sûr."'

    menu:
        'Fais un signe de tête à Morte sans rien dire.':
            # a613 # r32377
            jump deathad_s3  # EXTERN

        '"Morte - tais-toi."':
            # a614 # r32378
            jump deathad_s3  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,':
            # a615 # r32379
            jump morte_s303

        '"Sans blague ! On s„en va, Morte."':
            # a616 # r32380
            $ morteLogic.r32380_action()
            jump morte_dispose


# s302 # say32381
label morte_s302: # -
    nr 'Morte murmure : "Et un ennui éternel."'

    menu:
        'Fais un signe de tête à Morte sans rien dire.':
            # a617 # r32382
            jump deathad_s5  # EXTERN

        '"S„il te plaît, Morte : silence."':
            # a618 # r32383
            jump deathad_s5  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,':
            # a619 # r32384
            jump deathad_s5  # EXTERN

        '"Sans blague ! On s„en va, Morte."':
            # a620 # r32385
            $ morteLogic.r32385_action()
            jump morte_dispose


# s303 # say32386
label morte_s303: # from 301.2
    nr 'Morte murmure : "On dirait qu„on sait tous les deux où on va atterrir après notre mort."'

    menu:
        'Fais un signe de tête à Morte sans rien dire.':
            # a621 # r32387
            jump deathad_s6  # EXTERN

        '"Morte : arrête de jacasser."':
            # a622 # r32388
            jump deathad_s6  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,':
            # a623 # r32389
            jump deathad_s6  # EXTERN

        '"Sans blague ! On s„en va, Morte."':
            # a624 # r32390
            $ morteLogic.r32390_action()
            jump morte_dispose


# s304 # say32391
label morte_s304: # -
    nr 'Morte murmure : "Et encore, si tu as de la chance."'

    menu:
        'Fais un signe de tête à Morte sans rien dire.':
            # a625 # r32392
            jump deathad_s8  # EXTERN

        '"Ça suffit, Morte."':
            # a626 # r32393
            jump deathad_s8  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,':
            # a627 # r32394
            jump deathad_s8  # EXTERN

        '"Sans blague ! On s„en va, Morte."':
            # a628 # r32395
            $ morteLogic.r32395_action()
            jump morte_dispose


# s305 # say32396
label morte_s305: # -
    nr 'Morte murmure : "Et c„est censé être motivant ? Il faut qu“on recommence *tout* ? Je suis impatient d„être à nouveau un crâne flottant. Ta ! Qu“il aille caguer. Quel idiot. Il parle comme quelqu„un qui n“est jamais mort !"'

    menu:
        'Fais un signe de tête à Morte sans rien dire.':
            # a629 # r32397
            jump deathad_s9  # EXTERN

        '"Allez, Morte. Silence."':
            # a630 # r32398
            jump deathad_s9  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,':
            # a631 # r32399
            jump deathad_s9  # EXTERN

        '"Sans blague ! On s„en va, Morte."':
            # a632 # r32400
            $ morteLogic.r32400_action()
            jump morte_dispose


# s306 # say32401
label morte_s306: # -
    nr 'Morte murmure : "Oh, ça c„est un fardeau que je ne suis pas prêt d“oublier."'

    menu:
        'Fais un signe de tête à Morte sans rien dire.':
            # a633 # r32402
            jump deathad_s11  # EXTERN

        '"Morte - tais-toi."':
            # a634 # r32403
            jump deathad_s11  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,':
            # a635 # r32404
            jump deathad_s11  # EXTERN

        '"Sans blague ! On s„en va, Morte."':
            # a636 # r32405
            $ morteLogic.r32405_action()
            jump morte_dispose


# s307 # say32406
label morte_s307: # -
    nr 'Morte dit tout haut : "Quelle soupe !"'

    jump deathad_s15  # EXTERN


# s308 # say32407
label morte_s308: # -
    nr 'Morte se met à l„abri, hors de vue du conférencier, puis se tourne vers toi et déclare : "Vas-y chef. Dis-lui le soltif."'

    menu:
        '"Oui, j„ai une question…"':
            # a637 # r32408
            jump deathad_s17  # EXTERN

        '"Je n„ai pas de questions. Mon ami s“est trompé."':
            # a638 # r32409
            jump deathad_s16  # EXTERN


# s309 # say32410
label morte_s309: # -
    nr '"Géant ! Une autre mort ! Je signe !" Un rire parcourt l„assistance. L“orateur paraît en colère.'

    menu:
        '"Qu„est-ce qui se passe quand ils meurent ?"':
            # a639 # r32411
            jump deathad_s26  # EXTERN

        '"J„ai une autre question…"':
            # a640 # r32412
            jump deathad_s17  # EXTERN

        '"C„est tout ce que je voulais savoir."':
            # a641 # r32413
            jump deathad_s18  # EXTERN


# s310 # say32651
label morte_s310: # -
    nr '"Tu veux que je m„occupe de cette azimutée, chef ?"'

    menu:
        '"Pas de pitié, Morte."':
            # a642 # r32661
            jump morte_s316

        '"Non, Morte… Je vais régler ça."':
            # a643 # r32662
            jump sarhava_s3  # EXTERN


# s311 # say32652
label morte_s311: # -
    nr '"J„adore tes manières d“enfumé, chef."'

    jump sarhava_s4  # EXTERN


# s312 # say32653
label morte_s312: # -
    nr 'Alors que tu t„agenouilles devant la femme, Morte s“écrie : "Chef ! Tu rigoles ! Je veux dire, à moins que tu sois dans ce *genre* de…"'

    menu:
        'Ignore Morte, lèche la botte de la femme.':
            # a644 # r32663
            jump sarhava_s14  # EXTERN

        '"Je ne veux pas d„ennuis, Morte. Si je ne fais pas gaffe, je risque d“attirer la garde."':
            # a645 # r32664
            jump morte_s313

        '"Tu as raison, Morte. Allons-y."':
            # a646 # r32665
            jump sarhava_s13  # EXTERN


# s313 # say32654
label morte_s313: # from 312.1
    nr '"Bien, ça me paraît pas idiot… mais enfin…"'

    menu:
        '"Laisse tomber, Morte. Madame… Arrêtons ça avant que j„appelle les gardes."':
            # a647 # r32666
            jump sarhava_s7  # EXTERN

        '"Tu as raison, Morte. Allons-nous-en."':
            # a648 # r32667
            jump sarhava_s13  # EXTERN


# s314 # say32655
label morte_s314: # -
    nr 'Morte glousse et claque sa mâchoire. "Un homme à femmes comme tous les autres, hein chef ?"'

    jump morte_dispose


# s315 # say32656
label morte_s315: # -
    nr '"Oh-oh…"'

    jump morte_dispose


# s316 # say32657
label morte_s316: # from 310.0
    nr 'Morte te fait un clin d„œil et appelle la femme : "Hé, toi ! Oui c“est ça, toi, l„espèce de grue… regarde-moi quand je te parle ! Qu“est-ce qui te rend si aigrie, hmm ?"'

    jump sarhava_s39  # EXTERN


# s317 # say32658
label morte_s317: # -
    nr '"Oh, est-ce que la petite princesse du désert a les nerfs parce que le fils du sultan voulait un autre fils ? Dis-moi, „Princesse du désert“, est-ce que tu passes la plupart de tes nuits à te battre et à boire, suivie par une poignée de lèche-bottes libidineux, en cherchant de manière pathétique à justifier ton existence auprès d„un père désapprobateur ?"'

    jump sarhava_s40  # EXTERN


# s318 # say32659
label morte_s318: # -
    nr '"Est-ce que tu crois que tes bagarres mesquines te feront te sentir mieux ? Te feront te sentir *bonne* à quelque chose ? Parce que NON ! Si c„est ta misérable manière de mieux accepter qui tu *es*, je te suggère de laisser tomber, rentre chez toi et de te trouver un courtisan pour rentrer dans son harem !"'

    jump sarhava_s41  # EXTERN


# s319 # say32660
label morte_s319: # -
    nr 'Morte se retourne vers toi. "Tu vois, chef, je *savais* ce qui allait se passer ici. On sait *tous* que Morte a mis dans le mille. Mais, oh non, la fière petite princesse du désert a fait des siennes en public, en humili--"'

    jump sarhava_s42  # EXTERN


# s320 # say33073
label morte_s320: # -
    nr '"La Guerre Sanglante ? Plus ennuyant que d„écouter un Greffier réciter les lois. Allons chercher quelques jeunes Sensats qui ont besoin d“être instruites dans le domaine de la passion !" Il remue les sourcils d„excitation.'

    menu:
        '"Non, Morte… Je veux écouter ça."':
            # a649 # r33074
            jump ghysis_s1  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,':
            # a650 # r33075
            jump ghysis_s1  # EXTERN

        '"D„accord, Morte - on y va."':
            # a651 # r33076
            $ morteLogic.r33076_action()
            jump morte_dispose


# s321 # say33300
label morte_s321: # -
    nr 'Morte écarquille les yeux et s„écrie "Ouah ! Regarde ! Une bouse qui parle !"'

    jump ghivem_s49  # EXTERN


# s322 # say33301
label morte_s322: # -
    nr 'Morte remue pour te désigner, tout en parlant à l„homme : "Je parlais de ce grand bige plein de cicatrices, affranchi… pas de toi ! Sans rancune, hein ?"'

    menu:
        '"Attention, Morte…"':
            # a652 # r33302
            jump ghivem_s51  # EXTERN

        'Ignore Morte.':
            # a653 # r33303
            jump ghivem_s51  # EXTERN


# s323 # say33423
label morte_s323: # -
    nr 'Morte écarquille les yeux et s„écrie "Ouah ! Regarde ! Une bouse qui parle !"'

    jump ghivef_s47  # EXTERN


# s324 # say33429
label morte_s324: # -
    nr 'Morte remue dans ta direction, tout en parlant à l„homme : "Je parlais de ce grand bige plein de cicatrices, affranchi… pas de toi ! Sans rancune, hein ?"'

    menu:
        '"Attention, Morte…"':
            # a654 # r33430
            jump ghivef_s49  # EXTERN

        'Ignore Morte.':
            # a655 # r33433
            jump ghivef_s49  # EXTERN


# s325 # say33958
label morte_s325: # - # IF WEIGHT #5 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Je savais que tu reviendrais, chef ! T„as finalement réalisé que t“avais besoin de moi, hein ?"~ [MRT516]'

    menu:
        '"Ouais… Allons-y."':
            # a656 # r33959
            $ morteLogic.r33959_action()
            jump morte_dispose

        '"Pas pour le moment, Morte."':
            # a657 # r33960
            jump morte_s326


# s326 # say33961
label morte_s326: # from 325.1
    nr '"Hmmff. Bien, je ne sais pas combien de temps je vais attendre ici, alors je vais te donner un DERNIÈRE chance. Tu es sûr que tu ne veux pas de mes sages conseils et de mon vif esprit ?"'

    menu:
        '"Morte, tu n„as RIEN de tout ça."':
            # a658 # r33962
            jump morte_s327

        '"Très bien, j„ai changé d“avis. Allez, partons."':
            # a659 # r33963
            $ morteLogic.r33963_action()
            jump morte_dispose

        '"Pas pour le moment, Morte. Peut-être plus tard."':
            # a660 # r33964
            jump morte_s327


# s327 # say33965
label morte_s327: # from 326.0 326.2
    nr '"Est-ce que tu essaies de me vexer, chef ? Qu„est-ce qu“il y a, c„est quelque chose que j“ai dit ? Le fait que je n„ai pas de bras ? Quoi ?"'

    menu:
        '"Très bien, j„ai changé d“avis. Allez, partons."':
            # a661 # r33966
            $ morteLogic.r33966_action()
            jump morte_dispose

        '"Non, ce n„est pas ça. C“est juste que je n„ai pas besoin de ta compagnie pour le moment. Au revoir, Morte."':
            # a662 # r33967
            jump morte_s328


# s328 # say33968
label morte_s328: # from 327.1
    nr '"Bien, je ne vais pas attendre pour TOUJOURS, alors tu ferais mieux de revenir, dès que tu auras changé d„avis."'

    menu:
        '"Je le ferai. Au revoir, Morte."':
            # a663 # r33969
            jump morte_dispose


# s329 # say33970
label morte_s329: # from 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0
    nr '"Mais qu„est-ce qui va pas, chef ?"'

    menu:
        '"Peux-tu me relire ce qui est tatoué sur mon dos ?"':
            # a664 # r65539
            jump morte_s649

        '"Peux-tu me parler de Sigil ?"':
            # a665 # r65540
            jump morte_s659

        '"Morte… Ça ne me dérange pas que tu me suives mais ne sais-tu rien faire *d„autre* que bavarder ?"' if morteLogic.r65541_condition():
            # a666 # r65541
            jump morte_s663

        '"Morte… Quels sont tes talents magiques déjà ?"' if morteLogic.r65542_condition():
            # a667 # r65542
            jump morte_s666

        '"Morte, pourquoi ne m„as-tu pas parlé de cette ligne supplémentaire dans le tatouage de mon dos ?"' if morteLogic.r65543_condition():
            # a668 # r65543
            jump morte_s654

        '"J„ai besoin d“un conseil. À ton avis, qu„est-ce qu“on devrait faire maintenant ?"':
            # a669 # r65544
            jump morte_s669

        '"Tu as dit que tu étais un mimir, n„est-ce pas, Morte ?"' if morteLogic.r65545_condition():
            # a670 # r65545
            jump morte_s684

        '"Raconte-moi encore une fois comment tu as fini sur le Pilier des Crânes."' if morteLogic.r65546_condition():
            # a671 # r65546
            jump morte_s693

        '"Morte, pourquoi tu as continué à voyager avec moi une fois que je t„ai sorti du Pilier ?"' if morteLogic.r65547_condition():
            # a672 # r65547
            jump morte_s715

        '"Qu„est-ce que tu sais de la Guerre Sanglante ?"' if morteLogic.r65548_condition():
            # a673 # r65548
            jump morte_s723

        '"Que sais-tu sur la guenaude noire nommée Ravel ?"' if morteLogic.r65549_condition():
            # a674 # r65549
            jump morte_s722

        '"Comment es-tu mort, Morte ?"':
            # a675 # r65550
            jump morte_s726

        '"Rien, Morte. Je vérifiais juste que tu étais toujours avec moi."':
            # a676 # r65551
            jump morte_dispose


# s330 # say34990
label morte_s330: # externs zf114_s2 zf114_s1 zf114_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a677 # r34991
            $ morteLogic.r34991_action()
            jump morte_s331

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a678 # r35001
            $ morteLogic.r35001_action()
            jump morte_s331


# s331 # say34992
label morte_s331: # from 330.0 330.1
    nr '"T„es AVEUGLE ou quoi ?! Elle me fixait du regard ! Elle me VOULAIT tellement que c“en était gênant."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a679 # r34993
            $ morteLogic.r34993_action()
            jump morte_s332

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a680 # r34996
            jump morte_s333

        '"Je trouve que tu as un peu trop d„imagination."':
            # a681 # r34999
            jump morte_s333

        '"Peu importe, Morte. Allons-y."':
            # a682 # r35000
            jump morte_dispose


# s332 # say34994
label morte_s332: # from 331.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a683 # r34995
            jump morte_dispose


# s333 # say34997
label morte_s333: # from 331.1 331.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a684 # r34998
            jump morte_dispose


# s334 # say35022
label morte_s334: # externs zf594_s2 zf594_s1 zf594_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a685 # r35023
            $ morteLogic.r35023_action()
            jump morte_s335

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a686 # r35033
            $ morteLogic.r35033_action()
            jump morte_s335


# s335 # say35024
label morte_s335: # from 334.0 334.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a687 # r35025
            $ morteLogic.r35025_action()
            jump morte_s336

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a688 # r35028
            jump morte_s337

        '"Je trouve que tu as un peu trop d„imagination."':
            # a689 # r35031
            jump morte_s337

        '"Peu importe, Morte. Allons-y."':
            # a690 # r35032
            jump morte_dispose


# s336 # say35026
label morte_s336: # from 335.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a691 # r35027
            jump morte_dispose


# s337 # say35029
label morte_s337: # from 335.1 335.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a692 # r35030
            jump morte_dispose


# s338 # say35054
label morte_s338: # externs zf626_s2 zf626_s1 zf626_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a693 # r35055
            $ morteLogic.r35055_action()
            jump morte_s339

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a694 # r35065
            $ morteLogic.r35065_action()
            jump morte_s339


# s339 # say35056
label morte_s339: # from 338.0 338.1
    nr '"T„es AVEUGLE ou quoi ?! Elle me fixait ! Elle me VOULAIT honteusement."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a695 # r35057
            $ morteLogic.r35057_action()
            jump morte_s340

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a696 # r35060
            jump morte_s341

        '"Je pense que tu as un peu trop d„imagination."':
            # a697 # r35063
            jump morte_s341

        '"Peu importe, Morte. Allons-y."':
            # a698 # r35064
            jump morte_dispose


# s340 # say35058
label morte_s340: # from 339.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a699 # r35059
            jump morte_dispose


# s341 # say35061
label morte_s341: # from 339.1 339.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a700 # r35062
            jump morte_dispose


# s342 # say35086
label morte_s342: # externs zf1096_s2 zf1096_s1 zf1096_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a701 # r35087
            $ morteLogic.r35087_action()
            jump morte_s343

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a702 # r35097
            $ morteLogic.r35097_action()
            jump morte_s343


# s343 # say35088
label morte_s343: # from 342.0 342.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a703 # r35089
            $ morteLogic.r35089_action()
            jump morte_s344

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a704 # r35092
            jump morte_s345

        '"Je pense que tu as un peu trop d„imagination."':
            # a705 # r35095
            jump morte_s345

        '"Peu importe, Morte. Allons-y."':
            # a706 # r35096
            jump morte_dispose


# s344 # say35090
label morte_s344: # from 343.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a707 # r35091
            jump morte_dispose


# s345 # say35093
label morte_s345: # from 343.1 343.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a708 # r35094
            jump morte_dispose


# s346 # say35118
label morte_s346: # externs zf1072_s2 zf1072_s1 zf1072_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a709 # r35119
            $ morteLogic.r35119_action()
            jump morte_s347

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a710 # r35129
            $ morteLogic.r35129_action()
            jump morte_s347


# s347 # say35120
label morte_s347: # from 346.0 346.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a711 # r35121
            $ morteLogic.r35121_action()
            jump morte_s348

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a712 # r35124
            jump morte_s349

        '"Je pense que tu as un peu trop d„imagination."':
            # a713 # r35127
            jump morte_s349

        '"Peu importe, Morte. Allons-y."':
            # a714 # r35128
            jump morte_dispose


# s348 # say35122
label morte_s348: # from 347.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a715 # r35123
            jump morte_dispose


# s349 # say35125
label morte_s349: # from 347.1 347.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a716 # r35126
            jump morte_dispose


# s350 # say35150
label morte_s350: # externs zf832_s2 zf832_s1 zf832_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a717 # r35151
            $ morteLogic.r35151_action()
            jump morte_s351

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a718 # r35161
            $ morteLogic.r35161_action()
            jump morte_s351


# s351 # say35152
label morte_s351: # from 350.0 350.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a719 # r35153
            $ morteLogic.r35153_action()
            jump morte_s352

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a720 # r35156
            jump morte_s353

        '"Je pense que tu as un peu trop d„imagination."':
            # a721 # r35159
            jump morte_s353

        '"Peu importe, Morte. Allons-y."':
            # a722 # r35160
            jump morte_dispose


# s352 # say35154
label morte_s352: # from 351.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a723 # r35155
            jump morte_dispose


# s353 # say35157
label morte_s353: # from 351.1 351.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a724 # r35158
            jump morte_dispose


# s354 # say35182
label morte_s354: # externs zf679_s2 zf679_s1 zf679_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a725 # r35183
            $ morteLogic.r35183_action()
            jump morte_s355

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a726 # r35193
            $ morteLogic.r35193_action()
            jump morte_s355


# s355 # say35184
label morte_s355: # from 354.0 354.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a727 # r35185
            $ morteLogic.r35185_action()
            jump morte_s356

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a728 # r35188
            jump morte_s357

        '"Je pense que tu as un peu trop d„imagination."':
            # a729 # r35191
            jump morte_s357

        '"Peu importe, Morte. Allons-y."':
            # a730 # r35192
            jump morte_dispose


# s356 # say35186
label morte_s356: # from 355.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a731 # r35187
            jump morte_dispose


# s357 # say35189
label morte_s357: # from 355.1 355.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a732 # r35190
            jump morte_dispose


# s358 # say35214
label morte_s358: # externs zf444_s2 zf444_s1 zf444_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a733 # r35215
            $ morteLogic.r35215_action()
            jump morte_s359

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a734 # r35225
            $ morteLogic.r35225_action()
            jump morte_s359


# s359 # say35216
label morte_s359: # from 358.0 358.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a735 # r35217
            $ morteLogic.r35217_action()
            jump morte_s360

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a736 # r35220
            jump morte_s361

        '"Je pense que tu as un peu trop d„imagination."':
            # a737 # r35223
            jump morte_s361

        '"Peu importe, Morte. Allons-y."':
            # a738 # r35224
            jump morte_dispose


# s360 # say35218
label morte_s360: # from 359.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a739 # r35219
            jump morte_dispose


# s361 # say35221
label morte_s361: # from 359.1 359.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a740 # r35222
            jump morte_dispose


# s362 # say35246
label morte_s362: # externs zf1148_s2 zf1148_s1 zf1148_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a741 # r35247
            $ morteLogic.r35247_action()
            jump morte_s363

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a742 # r35257
            $ morteLogic.r35257_action()
            jump morte_s363


# s363 # say35248
label morte_s363: # from 362.0 362.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a743 # r35249
            $ morteLogic.r35249_action()
            jump morte_s364

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a744 # r35252
            jump morte_s365

        '"Je pense que tu as un peu trop d„imagination."':
            # a745 # r35255
            jump morte_s365

        '"Peu importe, Morte. Allons-y."':
            # a746 # r35256
            jump morte_dispose


# s364 # say35250
label morte_s364: # from 363.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a747 # r35251
            jump morte_dispose


# s365 # say35253
label morte_s365: # from 363.1 363.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a748 # r35254
            jump morte_dispose


# s366 # say35278
label morte_s366: # externs zf891_s2 zf891_s1 zf891_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"'

    menu:
        '"De quoi tu *parles* ?"':
            # a749 # r35279
            $ morteLogic.r35279_action()
            jump morte_s367

        '"Tu veux parler de son regard vide d„outre-tombe ?"':
            # a750 # r35289
            $ morteLogic.r35289_action()
            jump morte_s367


# s367 # say35280
label morte_s367: # from 366.0 366.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."':
            # a751 # r35281
            $ morteLogic.r35281_action()
            jump morte_s368

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."':
            # a752 # r35284
            jump morte_s369

        '"Je pense que tu as un peu trop d„imagination."':
            # a753 # r35287
            jump morte_s369

        '"Peu importe, Morte. Allons-y."':
            # a754 # r35288
            jump morte_dispose


# s368 # say35282
label morte_s368: # from 367.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a755 # r35283
            jump morte_dispose


# s369 # say35285
label morte_s369: # from 367.1 367.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"'

    menu:
        '"Peu importe, Morte. Allons-y."':
            # a756 # r35286
            jump morte_dispose


# s370 # say35310
label morte_s370: # from 377.3
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"'

    menu:
        '"Barbe grise ?"':
            # a757 # r35311
            jump morte_s371

        '"À mon avis, il est mal placé pour protester."':
            # a758 # r35326
            jump morte_s372

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a759 # r35327
            jump morte_s373


# s371 # say35312
label morte_s371: # from 370.0
    nr '"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."'

    menu:
        '"Et bien, je crois qu„il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"':
            # a760 # r35313
            jump morte_s372

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a761 # r35325
            jump morte_s373


# s372 # say35314
label morte_s372: # from 370.1 371.0
    nr 'Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j„en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."'

    menu:
        '"Et pas toi ?"':
            # a762 # r35315
            jump morte_s373

        '"Bon, très bien. Allons-y."':
            # a763 # r35324
            jump morte_dispose


# s373 # say35316
label morte_s373: # from 370.2 371.1 372.0
    nr '"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D„ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."':
            # a764 # r35317
            jump morte_s374

        '"Allons-y."':
            # a765 # r35323
            jump morte_dispose


# s374 # say35318
label morte_s374: # from 373.0
    nr 'Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."':
            # a766 # r35319
            $ morteLogic.r35319_action()
            jump morte_s375

        '"Allons-y."':
            # a767 # r35322
            jump morte_dispose


# s375 # say35320
label morte_s375: # from 374.0
    nr '"Je te ferai savoir que de t„aider à t“échapper de la salle de préparation vient juste d„être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."'

    menu:
        '"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."':
            # a768 # r35321
            jump morte_dispose


# s376 # say35341
label morte_s376: # externs s1221_s3 s1221_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"'

    menu:
        '"Et alors ?"':
            # a769 # r35342
            $ morteLogic.r35342_action()
            jump morte_s377

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."':
            # a770 # r35360
            $ morteLogic.r35360_action()
            jump morte_s377

        '"Bon, très bien. Peu importe. Peut-être une autre fois."':
            # a771 # r35361
            jump morte_s377


# s377 # say35343
label morte_s377: # from 376.0 376.1 376.2
    nr '"Oh, c„est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d“épaules. "J„savais pas si tu savais ça ou pas. Mais je t“en prie, vas-y."'

    menu:
        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35344_condition():
            # a772 # r35344
            jump s1221_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35352_condition():
            # a773 # r35352
            jump s1221_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35355_condition():
            # a774 # r35355
            jump s1221_s6  # EXTERN

        'Peu importe. Peut-être une autre fois.' if morteLogic.r35358_condition():
            # a775 # r35358
            $ morteLogic.r35358_action()
            jump morte_s370

        'Peu importe. Peut-être une autre fois.' if morteLogic.r35359_condition():
            # a776 # r35359
            jump morte_dispose


# s378 # say35387
label morte_s378: # from 385.3
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"'

    menu:
        '"Barbe grise ?"':
            # a777 # r35388
            jump morte_s379

        '"À mon avis, il est mal placé pour protester."':
            # a778 # r35403
            jump morte_s380

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a779 # r35404
            jump morte_s381


# s379 # say35389
label morte_s379: # from 378.0
    nr '"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."'

    menu:
        '"Et bien, je crois qu„il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"':
            # a780 # r35390
            jump morte_s380

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a781 # r35402
            jump morte_s381


# s380 # say35391
label morte_s380: # from 378.1 379.0
    nr 'Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j„en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."'

    menu:
        '"Et pas toi ?"':
            # a782 # r35392
            jump morte_s381

        '"Bon, très bien. Allons-y."':
            # a783 # r35401
            jump morte_dispose


# s381 # say35393
label morte_s381: # from 378.2 379.1 380.0
    nr '"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D„ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."':
            # a784 # r35394
            jump morte_s382

        '"Allons-y."':
            # a785 # r35400
            jump morte_dispose


# s382 # say35395
label morte_s382: # from 381.0
    nr 'Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."':
            # a786 # r35396
            $ morteLogic.r35396_action()
            jump morte_s383

        '"Allons-y."':
            # a787 # r35399
            jump morte_dispose


# s383 # say35397
label morte_s383: # from 382.0
    nr '"Je te ferai savoir que de t„aider à t“échapper de la salle de préparation vient juste d„être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."'

    menu:
        '"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."':
            # a788 # r35398
            jump morte_dispose


# s384 # say35418
label morte_s384: # externs s748_s3 s748_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"'

    menu:
        '"Et alors ?"':
            # a789 # r35419
            $ morteLogic.r35419_action()
            jump morte_s385

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."':
            # a790 # r35437
            $ morteLogic.r35437_action()
            jump morte_s385

        '"Bon, très bien. Peu importe. Peut-être une autre fois."':
            # a791 # r35438
            jump morte_s385


# s385 # say35420
label morte_s385: # from 384.0 384.1 384.2
    nr '"Oh, c„est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d“épaules. "J„savais pas si tu savais ça ou pas. Mais je t“en prie, vas-y."'

    menu:
        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35421_condition():
            # a792 # r35421
            jump s748_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35429_condition():
            # a793 # r35429
            jump s748_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35432_condition():
            # a794 # r35432
            jump s748_s6  # EXTERN

        'Peu importe. Peut-être une autre fois.' if morteLogic.r35435_condition():
            # a795 # r35435
            $ morteLogic.r35435_action()
            jump morte_s378

        'Peu importe. Peut-être une autre fois.' if morteLogic.r35436_condition():
            # a796 # r35436
            jump morte_dispose


# s386 # say35464
label morte_s386: # from 393.3
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"'

    menu:
        '"Barbe grise ?"':
            # a797 # r35465
            jump morte_s387

        '"À mon avis, il est mal placé pour protester."':
            # a798 # r35480
            jump morte_s388

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a799 # r35481
            jump morte_s389


# s387 # say35466
label morte_s387: # from 386.0
    nr '"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."'

    menu:
        '"Et bien, je crois qu„il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"':
            # a800 # r35467
            jump morte_s388

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a801 # r35479
            jump morte_s389


# s388 # say35468
label morte_s388: # from 386.1 387.0
    nr 'Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j„en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."'

    menu:
        '"Et pas toi ?"':
            # a802 # r35469
            jump morte_s389

        '"Bon, très bien. Allons-y."':
            # a803 # r35478
            jump morte_dispose


# s389 # say35470
label morte_s389: # from 386.2 387.1 388.0
    nr '"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D„ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."':
            # a804 # r35471
            jump morte_s390

        '"Allons-y."':
            # a805 # r35477
            jump morte_dispose


# s390 # say35472
label morte_s390: # from 389.0
    nr 'Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."':
            # a806 # r35473
            $ morteLogic.r35473_action()
            jump morte_s391

        '"Allons-y."':
            # a807 # r35476
            jump morte_dispose


# s391 # say35474
label morte_s391: # from 390.0
    nr '"Je te ferai savoir que de t„aider à t“échapper de la salle de préparation vient juste d„être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."'

    menu:
        '"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."':
            # a808 # r35475
            jump morte_dispose


# s392 # say35495
label morte_s392: # externs s996_s3 s996_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"'

    menu:
        '"Et alors ?"':
            # a809 # r35496
            $ morteLogic.r35496_action()
            jump morte_s393

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."':
            # a810 # r35514
            $ morteLogic.r35514_action()
            jump morte_s393

        '"Bon, très bien. Peu importe. Peut-être une autre fois."':
            # a811 # r35515
            jump morte_s393


# s393 # say35497
label morte_s393: # from 392.0 392.1 392.2
    nr '"Oh, c„est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d“épaules. "J„savais pas si tu savais ça ou pas. Mais je t“en prie, vas-y."'

    menu:
        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35498_condition():
            # a812 # r35498
            jump s996_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35506_condition():
            # a813 # r35506
            jump s996_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35509_condition():
            # a814 # r35509
            jump s996_s6  # EXTERN

        'Peu importe. Peut-être une autre fois.' if morteLogic.r35512_condition():
            # a815 # r35512
            $ morteLogic.r35512_action()
            jump morte_s386

        'Peu importe. Peut-être une autre fois.' if morteLogic.r35513_condition():
            # a816 # r35513
            jump morte_dispose


# s394 # say35541
label morte_s394: # from 401.3
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"'

    menu:
        '"Barbe grise ?"':
            # a817 # r35542
            jump morte_s395

        '"À mon avis, il est mal placé pour protester."':
            # a818 # r35557
            jump morte_s396

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a819 # r35558
            jump morte_s397


# s395 # say35543
label morte_s395: # from 394.0
    nr '"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."'

    menu:
        '"Et bien, je crois qu„il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"':
            # a820 # r35544
            jump morte_s396

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."':
            # a821 # r35556
            jump morte_s397


# s396 # say35545
label morte_s396: # from 394.1 395.0
    nr 'Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j„en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."'

    menu:
        '"Et pas toi ?"':
            # a822 # r35546
            jump morte_s397

        '"Bon, très bien. Allons-y."':
            # a823 # r35555
            jump morte_dispose


# s397 # say35547
label morte_s397: # from 394.2 395.1 396.0
    nr '"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D„ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."':
            # a824 # r35548
            jump morte_s398

        '"Allons-y."':
            # a825 # r35554
            jump morte_dispose


# s398 # say35549
label morte_s398: # from 397.0
    nr 'Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."':
            # a826 # r35550
            $ morteLogic.r35550_action()
            jump morte_s399

        '"Allons-y."':
            # a827 # r35553
            jump morte_dispose


# s399 # say35551
label morte_s399: # from 398.0
    nr '"Je te ferai savoir que de t„aider à t“échapper de la salle de préparation vient juste d„être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."'

    menu:
        '"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."':
            # a828 # r35552
            jump morte_dispose


# s400 # say35572
label morte_s400: # externs s863_s3 s863_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"'

    menu:
        '"Et alors ?"':
            # a829 # r35573
            $ morteLogic.r35573_action()
            jump morte_s401

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."':
            # a830 # r35591
            $ morteLogic.r35591_action()
            jump morte_s401

        '"Bon, très bien. Peu importe. Peut-être une autre fois."':
            # a831 # r35592
            jump morte_s401


# s401 # say35574
label morte_s401: # from 400.0 400.1 400.2
    nr '"Oh, c„est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d“épaules. "J„savais pas si tu savais ça ou pas. Mais je t“en prie, vas-y."'

    menu:
        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35575_condition():
            # a832 # r35575
            jump s863_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35583_condition():
            # a833 # r35583
            jump s863_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if morteLogic.r35586_condition():
            # a834 # r35586
            jump s863_s6  # EXTERN

        'Peu importe. Peut-être une autre fois.' if morteLogic.r35589_condition():
            # a835 # r35589
            $ morteLogic.r35589_action()
            jump morte_s394

        'Peu importe. Peut-être une autre fois.' if morteLogic.r35590_condition():
            # a836 # r35590
            jump morte_dispose


# s402 # say38265
label morte_s402: # -
    nr '"Elle me plaît déjà cette nana !"'

    menu:
        '"Tu peux peut-être écrire ou mimer, alors ?"':
            # a837 # r38267
            jump ecco_s7  # EXTERN


# s403 # say38266
label morte_s403: # -
    nr '"La vache !"'

    menu:
        '"Hein ?"':
            # a838 # r38268
            jump ecco_s34  # EXTERN


# s404 # say39000
label morte_s404: # -
    nr 'Morte souffle à voix basse : "C„est pas bon, chef. Fais attention où tu mets les pieds, sinon ils auront vite fait de te les couper… Ils sont plus puissants en bandes… chacun d“eux apporte quelque chose au cerveau de la bande. Ils sont *mortels*."'

    jump manyas1_s5  # EXTERN


# s405 # say39001
label morte_s405: # -
    nr 'Morte souffle à voix basse : "C„est pas bon, chef. Fais attention où tu mets les pieds, sinon ils auront vite fait de te les couper… Ils sont plus puissants en bandes… chacun d“eux apporte quelque chose au cerveau de la bande. Ils sont *mortels*."'

    jump manyas1_s58  # EXTERN


# s406 # say39002
label morte_s406: # -
    nr 'Morte souffle à voix basse : "Je sais pas ce qu„ils trafiquent, chef, mais fais gaffe. C“est un esprit de groupe, et chaque rat ajoute un peu plus à l„esprit, et ils se battent comme des - excuse l“expression - rats acculés. On est maintenant dans leur domaine, chef, et ils n„ont nulle part où aller. Pas de blagues."'

    jump manyas1_s78  # EXTERN


# s407 # say39564
label morte_s407: # -
    nr '"Ça, c„est une coïncidence ! Moi aussi, je collectionne les histoires."'

    jump yves_s2  # EXTERN


# s408 # say39565
label morte_s408: # -
    nr '"Moi ? Pourquoi est-ce *moi* qui devrais raconter une histoire ?"'

    menu:
        '"Alors, laisse tomber."':
            # a839 # r39713
            jump morte_s409

        '"Raconte une histoire, un point c„est tout, Morte."':
            # a840 # r39714
            jump morte_s413


# s409 # say39566
label morte_s409: # from 408.0
    nr '"Non, non, je m„en occupe… j“ai juste eu envie de me plaindre pour la forme. Et puis, j„adore attirer l“attention sur moi…"'

    menu:
        '"Pas question, Morte. Je ne veux pas l„entendre."':
            # a841 # r39715
            jump morte_s410

        '"D„accord… alors, vas-y."':
            # a842 # r39716
            $ morteLogic.r39716_action()
            jump morte_s414


# s410 # say39567
label morte_s410: # from 409.0
    nr '"S„il te plaît ! Allez ! S“il te plaîîît ? C„est une histoire géniale ! On y trouve plein de personnages, de l“action, une histoire qui se tient et un *dénouement* inattendu !"'

    menu:
        '"Elle ne doit pas être si géniale que ça."':
            # a843 # r39717
            jump morte_s411

        '"C„est quoi, un dénouement ?"':
            # a844 # r39718
            jump morte_s412

        '"D„accord… vas-y."':
            # a845 # r39719
            $ morteLogic.r39719_action()
            jump morte_s414


# s411 # say39568
label morte_s411: # from 410.0
    nr '"Si ! Je t„assure ! Allez !"'

    menu:
        '"Attends… c„est quoi, un dénouement ?"':
            # a846 # r39720
            jump morte_s412

        '"D„accord, vas-y."':
            # a847 # r39721
            $ morteLogic.r39721_action()
            jump morte_s414


# s412 # say39569
label morte_s412: # from 410.1 411.0
    nr '"J„suis pas trop sûr ! En tout cas, pour ce que j“en ai entendu, c„est vachement impressionnant !"'

    menu:
        '"D„accord, vas-y."':
            # a848 # r39722
            $ morteLogic.r39722_action()
            jump morte_s414


# s413 # say39570
label morte_s413: # from 408.1
    nr '"D„accord, d“accord…"'

    $ morteLogic.s413_action()
    jump morte_s414


# s414 # say39571
label morte_s414: # from 409.1 410.2 411.1 412.0 413.0
    nr '"Un vieil homme était assis seul sur un chemin sombre, d„accord ? Il était pas sûr de la direction à prendre, et il avait oublié sa destination et son identité. Il s“était assis un peu, histoire de reposer ses jambes fatiguées, et en levant la tête, il a eu la surprise de voir une vieille femme plantée devant lui. Elle lui a fait un sourire édenté et lui a dit dans un jacassement : „Et maintenant ton *troisième* vœu. Qu“est-ce que tu veux ?„"'

    menu:
        '"Vas-y, Morte…"':
            # a849 # r39724
            jump morte_s415

        '"Attends… j„ai une question à poser à Yvonne…"':
            # a850 # r39725
            jump yves_s4  # EXTERN

        '"On l„écoutera une autre fois, Morte. Au revoir, Yvonne."':
            # a851 # r39726
            jump morte_dispose


# s415 # say39572
label morte_s415: # from 414.0
    nr '"„Un troisième vœu ?“ bafouille l„homme. “Comment est-ce qu„il peut y avoir un troisième vœu puisque j“ai fait ni premier ni deuxième vœu ?„"'

    menu:
        '"Vas-y, Morte…"':
            # a852 # r39727
            jump morte_s416

        '"Attends… j„ai une question à poser à Yvonne…"':
            # a853 # r39728
            jump yves_s4  # EXTERN

        '"On l„écoutera une autre fois, Morte. Au revoir, Yvonne."':
            # a854 # r39729
            jump morte_dispose


# s416 # say39573
label morte_s416: # from 415.0
    nr '"„Tu as déjà fait deux vœux“, dit la sorcière, „mais le deuxième a été de rendre les choses comme elles étaient avant le premier. C“est pour ça que tu ne te souviens de rien ; parce que tout est comme avant que tu aies fait tes vœux.„ Elle ajoute au pauvre bige, dans un jacassement : “C„est pour ça qu“il ne t„en reste qu“un.„"'

    menu:
        '"Vas-y, Morte…"':
            # a855 # r39752
            jump morte_s417

        '"Attends… j„ai une question à poser à Yvonne…"':
            # a856 # r39753
            jump yves_s4  # EXTERN

        '"On l„écoutera une autre fois, Morte. Au revoir, Yvonne."':
            # a857 # r39754
            jump morte_dispose


# s417 # say39574
label morte_s417: # from 416.0
    nr '"„D“accord„, lui répond le vieil homme. “J„te crois pas, mais ça peut pas m“faire de mal de faire un vœu. Je veux savoir qui je suis.„"  "“Amusant„, lui répond la vieille femme en exauçant son vœu et en disparaissant pour toujours. “C„était ton premier vœu.“"'

    jump yves_s55  # EXTERN


# s418 # say39575
label morte_s418: # -
    nr '"Bon sang, qu„est-ce que c“était qu„ça, imbécile de polygone ?! C“est l„histoire la plus rasoir que j“aie jamais entendue !"'

    jump nordom_s11  # EXTERN


# s419 # say39576
label morte_s419: # -
    nr '"Des enjolivements ?"'

    jump nordom_s12  # EXTERN


# s420 # say39577
label morte_s420: # -
    nr '"*Allez*, fiélonne. Tu vas pas en perdre la queue."'

    jump annah_s196  # EXTERN


# s421 # say40068
label morte_s421: # -
    nr 'Morte tournoie autour de toi, en se moquant de la lapalissade de la fille. "Par les Puissances, chef… elle a raison ! J„avais jamais remarqué… tu es couvert de *cicatrices* !"'

    menu:
        '"Ce sont toutes de vieilles cicatrices. Ça va."' if morteLogic.r40069_condition():
            # a858 # r40069
            jump nenny_s2  # EXTERN

        '"Juste un peu ; ça ira."' if morteLogic.r40070_condition():
            # a859 # r40070
            jump nenny_s2  # EXTERN

        '"Oui, c„est vrai. Et des profondes."' if morteLogic.r40071_condition():
            # a860 # r40071
            jump nenny_s2  # EXTERN

        '"N„y fais pas attention. J“ai quelques questions…"':
            # a861 # r40072
            jump nenny_s3  # EXTERN

        '"Ne t„inquiète pas pour ça. Au revoir."':
            # a862 # r40073
            jump morte_dispose


# s422 # say40074
label morte_s422: # -
    nr 'Morte remue les sourcils. "T„es trop “direct„, tu comprends… c“est p„être à cause de ces trucs oscillants qui pen…"'

    menu:
        '"Morte, ça suffit."':
            # a863 # r40075
            jump morte_s423


# s423 # say40076
label morte_s423: # from 422.0
    nr 'Morte se tait.'

    menu:
        '"C„est pas grave, Nenny."' if morteLogic.r40077_condition():
            # a864 # r40077
            jump nenny_s9  # EXTERN

        '"Que ça ne se reproduise pas, Nenny."' if morteLogic.r40078_condition():
            # a865 # r40078
            jump nenny_s9  # EXTERN

        '"C„est pas grave, mademoiselle."' if morteLogic.r40079_condition():
            # a866 # r40079
            jump nenny_s9  # EXTERN

        '"Que ça ne se reproduise pas, ma belle."' if morteLogic.r40080_condition():
            # a867 # r40080
            jump nenny_s9  # EXTERN


# s424 # say40081
label morte_s424: # -
    nr '"Hé !"'

    jump nenny_s27  # EXTERN


# s425 # say40082
label morte_s425: # -
    nr 'Morte marmonne entre ses dents. "Je suppose que c„est bon signe s“il y a *quelque chose* là-dedans."'

    menu:
        '"J„ai une autre question, Nenny…"':
            # a868 # r40083
            jump nenny_s3  # EXTERN

        '"C„est tout ce que je voulais savoir, Nenny. Au revoir."':
            # a869 # r40084
            jump morte_dispose


# s426 # say40222
label morte_s426: # -
    nr '"Oooh, non… il faut que tu nous le dises, maintenant."'

    menu:
        '"Oui… s„il te plaît, m“sieur : raconte-nous."':
            # a870 # r40223
            jump brocus4_s4  # EXTERN

        '"Laisse, Morte. J„ai une autre question à lui poser…"':
            # a871 # r40224
            jump brocus4_s2  # EXTERN

        '"Laisse tomber, Morte ; on y va."':
            # a872 # r40225
            jump morte_dispose


# s427 # say40275
label morte_s427: # -
    nr 'Morte flotte près de toi, et te chuchote à l„oreille : "J“ai de la peine pour son amant. Il ne se rend pas compte de son malheur. Une pépée comme ça, c„est les embrouilles garanties."'

    menu:
        '"Ça ne me paraît pas sage, Juliette. Tu ferais mieux de profiter de ce que tu as."':
            # a873 # r40276
            jump sadjuli_s12  # EXTERN

        '"À quoi tu penses, Juliette ?"':
            # a874 # r40277
            jump sadjuli_s13  # EXTERN

        '"J„ai des questions, Juliette…"':
            # a875 # r40278
            jump sadjuli_s24  # EXTERN

        '"C„est tout ce que je voulais savoir, Juliette. Au revoir."':
            # a876 # r40279
            jump morte_dispose


# s428 # say40685
label morte_s428: # -
    nr 'Morte te murmure doucement à l„oreille : "Brrr… elle me donne la chair de poule, cette pépée."'

    menu:
        '"Mes excuses, ma chère… je ne savais pas s„il y avait quelqu“un."':
            # a877 # r40686
            jump marissa_s2  # EXTERN

        '"J„ai quelques questions, ma chère…"':
            # a878 # r40687
            jump marissa_s3  # EXTERN

        '"Alors au revoir, ma chère."':
            # a879 # r40688
            jump morte_dispose


# s429 # say40846
label morte_s429: # -
    nr '"Allez, chef ! On est dans un bâtiment rempli de quelques-unes des pépées les plus sexy de c„côté du multivers et tu t“arrêtes pour parler à des *modrones* ?"'

    menu:
        '"Qu„est-ce que tu peux m“en dire, Morte?"':
            # a880 # r40847
            jump morte_s430

        'Ignore Morte, salue le modrone.':
            # a881 # r40848
            $ morteLogic.r40848_action()
            jump brocus6_s3  # EXTERN

        '"Mes excuses, Morte, mais je parle au modrone."':
            # a882 # r40849
            jump morte_s431

        '"D„accord ; on y va, Morte."':
            # a883 # r40850
            jump morte_dispose


# s430 # say40851
label morte_s430: # from 429.0
    nr 'Morte émet un son de dégoût absolu. "Qu„est-ce qu“y a à en dire ? Des p„tits parasites à rouages tout c“qu„y a d“plus agaçants… ils cherchent toujours à imposer la loi et l„ordre dans le multivers. Pas le *bien*, note… juste la *loi*. Oublie-les et allons tchatcher avec ces dames, oké ?"'

    menu:
        'Ignore Morte, salue le modrone.':
            # a884 # r40852
            $ morteLogic.r40852_action()
            jump brocus6_s3  # EXTERN

        '"Mes excuses, Morte, mais je parle au modrone."':
            # a885 # r40853
            jump morte_s431

        '"D„accord ; on y va, Morte."':
            # a886 # r40854
            jump morte_dispose


# s431 # say40855
label morte_s431: # from 429.2 430.1
    nr 'Morte soupire bruyamment. "D„accord, peu importe - mais viens pas dire que j“t„avais pas prévenu. De toute façon, t“arriveras pas à en tirer grand-chose, chef… ils sont vraiment bizarres."'

    menu:
        '"Bonjour…"':
            # a887 # r40856
            $ morteLogic.r40856_action()
            jump brocus6_s3  # EXTERN


# s432 # say41135
label morte_s432: # -
    nr '"Ce que tu veux !" supplie Morte. "Fais-moi ce que tu veux !"'

    jump kesai_s2  # EXTERN


# s433 # say41136
label morte_s433: # -
    nr '"Ça me ferait presque pleurer, tiens ! Où était cette pépée quand j„avais un *corps ?!*"'

    jump kesai_s11  # EXTERN


# s434 # say41632
label morte_s434: # -
    nr '"Mon ami te trouvait attirante, mais *ouah* ! Il s„est complètement planté !"'

    jump kimasxi_s2  # EXTERN


# s435 # say41633
label morte_s435: # from 436.0
    nr '"D„accord, chef, comme tu voudras. Quelle sorcière, hein ?" Morte soupire, puis remue les sourcils. "*J“adore* ça !"'

    menu:
        '"Ça ne m„étonne pas, Morte, mais il faut que je lui parle."':
            # a888 # r41634
            jump kimasxi_s14  # EXTERN

        '"Très bien… Allons-y, Morte."':
            # a889 # r41635
            jump kimasxi_s4  # EXTERN


# s436 # say41636
label morte_s436: # -
    nr '"En tout cas, si j„en avais un, je l“aurais laissé derrière moi ! Alors comme ça, tu as entendu parler d„une “maison de tolérance„ et tu t“es dit que ce serait l„occasion de gagner un peu de jonc, espèce de sac à puces de putain des caniveaux ? Hah ! Je me demande comment ils ont pu te laisser entrer ici avec toutes ces tiques qui grouillent sur tes jambes poilues !"'

    menu:
        '"Ça suffit, vous deux."':
            # a890 # r41637
            jump morte_s435

        'Laisse-les.':
            # a891 # r41638
            jump kimasxi_s3  # EXTERN


# s437 # say41639
label morte_s437: # -
    nr '"*Il* ! On dirait „*qu“IL* en connaît déjà un rayon„, Kimasxi Langue-de-Vipère… sale catin minable !"'

    jump kimasxi_s18  # EXTERN


# s438 # say41640
label morte_s438: # -
    nr '"Mieux que toi, peut-être ?" Morte remue les sourcils. "Eh ? Eh ?"'

    jump kimasxi_s20  # EXTERN


# s439 # say41641
label morte_s439: # -
    nr '"OK, *tieffeline*, mais je dois admettre que j„ai appris deux ou trois choses… bien joué, chef !"~ [MRT387]'

    menu:
        '"C„est sûr, Morte."':
            # a892 # r41642
            jump kimasxi_s21  # EXTERN


# s440 # say41830
label morte_s440: # from 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1
    nr '"Écoute, chef ; on voit bien qu„t“es pas encore remis de ta rencontre avec la mort, alors j„ai deux conseils à te donner : premièrement, si t“as des questions, *pose-les moi*, d„accord ?"  ^NREMARQUE : <SPEAKTO>^-'

    menu:
        '"D„accord… si j“ai des questions, je te les poserai."':
            # a893 # r41831
            jump morte_s441


# s441 # say41832
label morte_s441: # from 440.0
    nr '"Deuxièmement, si t„es *aussi* distrait que t“en as l„air, commence à tout noter - chaque fois que tu tombes sur quelque chose qui *pourrait* être important, note-le pour pas oublier."'

    menu:
        '"Si je détenais ce journal que je suis *supposé* avoir sur moi, c„est ce que je ferais."':
            # a894 # r41833
            jump morte_s442


# s442 # say41834
label morte_s442: # from 441.0
    nr '"Alors commences-en un nouveau, chef. T„as rien à perdre. Y a plein de parchemin et d“encre par ici."'

    menu:
        '"Hmmmm. D„accord. Ça coûte rien… je vais en commencer un nouveau, alors."':
            # a895 # r41835
            jump morte_s443


# s443 # say41836
label morte_s443: # from 442.0
    nr '"Utilise-le pour garder une trace de tes mouvements. Si tu commences à t„embrouiller sur les trucs importants, comme qui tu es… ou plus important, qui *je* suis… utilise-le pour te rafraîchir la mémoire."  ^NREMARQUE : Pour accéder au journal, sélectionne le bouton du journal dans le menu rapide. Le journal est mis à jour automatiquement durant la partie.^-'

    menu:
        '"Très bien… Compris. Allons-y."':
            # a896 # r41837
            $ morteLogic.j39516_s443_r41837_action()
            jump morte_dispose


# s444 # say41838
label morte_s444: # from 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0 # IF WEIGHT #6 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) Global("AR0200_Visited","GLOBAL",0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Qu„est-ce qui te dérange, chef ?"~ [MRT515]'

    menu:
        '"Tu peux me relire ce qui est tatoué sur mon dos ?':
            # a897 # r41840
            jump morte_s445

        '"C„est quoi cet endroit déjà ?"':
            # a898 # r41841
            jump morte_s450

        '"Cet endroit est immense… qui s„en occupe ?"' if morteLogic.r41842_condition():
            # a899 # r41842
            jump morte_s451

        '"C„est qui, déjà, les gardiens de cet endroit ?"' if morteLogic.r41843_condition():
            # a900 # r41843
            jump morte_s451

        '"Tous ces cadavres… d„où ils viennent ?"':
            # a901 # r41844
            jump morte_s454

        '"Tout à l„heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"' if morteLogic.r41845_condition():
            # a902 # r41845
            jump morte_s455

        '"Qu„est-ce que je fais de ces bandages ?"' if morteLogic.r41846_condition():
            # a903 # r41846
            jump morte_s453

        '"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."' if morteLogic.r41847_condition():
            # a904 # r41847
            jump morte_s440

        '"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."' if morteLogic.r41848_condition():
            # a905 # r41848
            jump morte_dispose


# s445 # say41849
label morte_s445: # from 444.0
    nr '"Oh, *allez,* chef. Ne m„dis pas qu“t„as déjà oublié."'

    menu:
        '"Il faut juste que je me rafraîchisse la mémoire."':
            # a906 # r41850
            jump morte_s446

        '"Bon, peu importe. J„ai d“autres questions…"':
            # a907 # r41851
            jump morte_s444

        '"Alors laisse tomber. On y va."' if morteLogic.r41852_condition():
            # a908 # r41852
            jump morte_s440

        '"Alors laisse tomber. On y va."' if morteLogic.r41853_condition():
            # a909 # r41853
            jump morte_dispose


# s446 # say41854
label morte_s446: # from 445.0
    nr '"Quelque chose me dit que je vais entendre ÇA souvent." Morte s„éclaircit la voix. "Voyons…"  “Je sais que tu as l„impression d“avoir bu plusieurs barils d„eau du Styx, mais il faut te RESSAISIR. Parmi tes biens, tu dois avoir un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les dernières notes de la chanson, s“il n„est pas déjà inscrit dans le livre des morts.“'

    menu:
        '"Pharod… hmmm. Continue."':
            # a910 # r41855
            jump morte_s447

        '"Peu importe. J„avais d“autres questions…"':
            # a911 # r41856
            jump morte_s444

        '"Laisse. J„en ai assez entendu. On y va."' if morteLogic.r41857_condition():
            # a912 # r41857
            jump morte_s440

        '"Laisse. J„en ai assez entendu. On y va."' if morteLogic.r41858_condition():
            # a913 # r41858
            jump morte_dispose


# s447 # say41859
label morte_s447: # from 446.0
    nr '"Oui, oui, attends." Morte s„interrompt un instant. "D“accord, voilà la fin…"  „Ne perds pas le journal ou on se retrouvera encore à traverser le Styx. Et quoi que tu fasses, NE raconte à personne QUI tu es et CE qui t“arrive, ou on t„enverra faire un rapide pèlerinage vers le crématorium. Fais ce que je te dis : LIS le journal, puis TROUVE Pharod.“'

    menu:
        '"Et il n„y avait pas de journal sur moi quand je me suis réveillé ?"':
            # a914 # r41860
            jump morte_s448

        '"Peu importe. J„avais d“autres questions…"':
            # a915 # r41861
            jump morte_s444

        '"Laisse. J„en ai assez entendu. On y va."' if morteLogic.r41862_condition():
            # a916 # r41862
            jump morte_s440

        '"Laisse. J„en ai assez entendu. On y va."' if morteLogic.r41863_condition():
            # a917 # r41863
            jump morte_dispose


# s448 # say41864
label morte_s448: # from 447.0
    nr '"Non… t„étais nu comme un ver. Comme j“te l„ai déjà dit, on dirait que t“as déjà un journal écrit sur le corps."'

    menu:
        '"Et tu es sûr que tu ne connais personne du nom de Pharod ?"':
            # a918 # r41865
            jump morte_s449

        '"C„est vrai. J“ai d„autres questions…"':
            # a919 # r41866
            jump morte_s444

        '"Bon, très bien. Allons-y."' if morteLogic.r41867_condition():
            # a920 # r41867
            jump morte_s440

        '"Bon, très bien. Allons-y."' if morteLogic.r41868_condition():
            # a921 # r41868
            jump morte_dispose


# s449 # say41869
label morte_s449: # from 448.0
    nr '"Non. Mais y doit bien y avoir un bige qui saura où le trouver. On va demander… UNE FOIS qu„on sera sorti d“ici."'

    menu:
        '"Avant d„y aller, j“ai d„autres questions…"':
            # a922 # r41870
            jump morte_s444

        '"Bon, très bien. Allons-y."' if morteLogic.r41871_condition():
            # a923 # r41871
            jump morte_s440

        '"Bon, très bien. Allons-y."' if morteLogic.r41872_condition():
            # a924 # r41872
            jump morte_dispose


# s450 # say41873
label morte_s450: # from 444.1
    nr '"Ça s„appelle la “Morgue„… c“est un grand édifice noir avec tout le charme architectural d„une araignée pleine."'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"':
            # a925 # r41874
            jump morte_s444

        '"C„est tout ce que je voulais savoir. Merci."' if morteLogic.r41875_condition():
            # a926 # r41875
            jump morte_s440

        '"C„est tout ce que je voulais savoir. Merci."' if morteLogic.r41876_condition():
            # a927 # r41876
            jump morte_dispose


# s451 # say41877
label morte_s451: # from 444.2 444.3
    nr '"Ils se donnent le nom d„Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C“est une bande enfumée d„adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."'

    menu:
        '"Je ne comprends pas… Qu„est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m“enfuis ?"':
            # a928 # r41878
            jump morte_s452

        '"J„ai compris. J“ai d„autres questions à te poser…"':
            # a929 # r41879
            jump morte_s444

        '"Compris. J„ferais gaffe, alors."' if morteLogic.r41880_condition():
            # a930 # r41880
            jump morte_s440

        '"Compris. J„ferais gaffe, alors."' if morteLogic.r41881_condition():
            # a931 # r41881
            jump morte_dispose


# s452 # say41882
label morte_s452: # from 451.0
    nr '"Tu n„écoutais pas ?! J“ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu„à l“extérieur ?"'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"':
            # a932 # r41883
            jump morte_s444

        '"D„accord… Je vais… essayer de m“en souvenir."' if morteLogic.r41884_condition():
            # a933 # r41884
            jump morte_s440

        '"D„accord… Je vais… essayer de m“en souvenir."' if morteLogic.r41885_condition():
            # a934 # r41885
            jump morte_dispose


# s453 # say41886
label morte_s453: # from 444.6
    nr '"Tu, ben… tu les *utilises*. Pour épancher le sang et tout ça."  ^NREMARQUE : <BANDAGES2>^-'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"':
            # a935 # r41887
            jump morte_s444

        '"Merci. Je devrais pouvoir y arriver."' if morteLogic.r41888_condition():
            # a936 # r41888
            jump morte_s440

        '"Merci. Je devrais pouvoir y arriver."' if morteLogic.r41889_condition():
            # a937 # r41889
            jump morte_dispose


# s454 # say41890
label morte_s454: # from 444.4
    nr '"La mort rend visite aux plans tous les jours, chef. Ces loques, c„est tout c“qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après leur mort."'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"':
            # a938 # r41891
            jump morte_s444

        '"D„accord… Je vais… essayer de m“en souvenir."' if morteLogic.r41892_condition():
            # a939 # r41892
            jump morte_s440

        '"D„accord… Je vais… essayer de m“en souvenir."' if morteLogic.r41893_condition():
            # a940 # r41893
            jump morte_dispose


# s455 # say41894
label morte_s455: # from 444.5
    nr '"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d„aller les charcuter ou les découper pour trouver les clés."'

    menu:
        '"Dernière chance ? De quoi tu *parles* ?"':
            # a941 # r41895
            jump morte_s456

        '"Peu importe. J„avais d“autres questions à te poser…"':
            # a942 # r41896
            jump morte_s444

        '"D„accord… Je vais… essayer de m“en souvenir."':
            # a943 # r41897
            jump morte_dispose


# s456 # say41898
label morte_s456: # from 455.0
    nr '"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu piges ? Eh ? Eh ?"'

    menu:
        '"Non… non, en fait, non."':
            # a944 # r41899
            jump morte_s457

        '"C„est une *blague* ?"' if morteLogic.r41900_condition():
            # a945 # r41900
            jump morte_s457

        '"Peu importe. J„avais d“autres questions à te poser…"':
            # a946 # r41901
            jump morte_s444

        '"J„en ai assez entendu. On y va."':
            # a947 # r41902
            jump morte_dispose


# s457 # say41903
label morte_s457: # from 456.0 456.1
    nr '"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu„une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."'

    menu:
        '"Attends… tu as bien dit tout à l„heure que j“étais *pas* mort ?"':
            # a948 # r41904
            jump morte_s458

        '"Peu importe. J„avais d“autres questions à te poser…"':
            # a949 # r41905
            jump morte_s444

        '"J„en ai assez entendu. On y va."':
            # a950 # r41906
            jump morte_dispose


# s458 # say41907
label morte_s458: # from 457.0
    nr '"Bon… d„accord, *tu* n“es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l„un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d“envie. "Bien sûr, les gardiens devraient d„abord s“en séparer et il y a peu de chances…"'

    menu:
        '"J„ai d“autres questions à te poser, Morte…"':
            # a951 # r41908
            jump morte_s444

        '"J„en ai assez entendu. On y va."':
            # a952 # r41909
            jump morte_dispose


# s459 # say41910
label morte_s459: # -
    nr '"Par les Puissances d„en haut. Tu PARLES d“un livre !"'

    menu:
        '"Quoi ?"':
            # a953 # r41911
            $ morteLogic.r41911_action()
            jump morte_s460


# s460 # say41913
label morte_s460: # from 459.0
    nr '"Si j„devais deviner, j“dirais que c„est le livre où ils gribouillent le nom de tous les pauvres bougres suffisamment malchanceux pour finir ici."'

    menu:
        '"Tu crois que mon nom pourrait y être inscrit ?"':
            # a954 # r41914
            jump morte_s461


# s461 # say41915
label morte_s461: # from 460.0
    nr '"Euh… ben… *j„suppose.* Pour le savoir, il faudrait que t“ailles branler ton râtelier avec l„Homme-Poussière flottant, là-bas. J“suis pas sûr que ce soit une bonne idée."'

    menu:
        '"Ben, j„ai besoin de réponses. Je vais aller lui parler."':
            # a955 # r41916
            jump morte_dispose


# s462 # say41919
label morte_s462: # -
    nr 'Morte soupire : "Je connais quelqu„un qui s“est échappé de l„asile."'

    menu:
        '"J„ai quelques questions, Méli…"':
            # a956 # r41920
            jump jumble_s2  # EXTERN

        '"C„est toi qui as lancé une malédiction à Pestilent, n“est-ce pas ?"' if morteLogic.r41921_condition():
            # a957 # r41921
            $ morteLogic.r41921_action()
            jump jumble_s8  # EXTERN

        '"J„aimerais que tu fasses disparaître la malédiction dont souffre Pestilent."' if morteLogic.r67864_condition():
            # a958 # r67864
            jump jumble_s9  # EXTERN

        '"Bon, je m„en vais, Méli. Au revoir."':
            # a959 # r41922
            jump morte_dispose


# s463 # say41923
label morte_s463: # -
    nr '"Oh oh… On dirait qu„on t“a lancé un sort, chef…"'

    menu:
        '"Qu„est-ce que tu m“as fait, Méli ?"':
            # a960 # r41924
            jump jumble_s7  # EXTERN

        '"Méli… S„il te plaît, annule ce que tu as fait."':
            # a961 # r41925
            jump jumble_s7  # EXTERN

        '"Quoi que tu aies fait, Méli, annule-le ou tu risques de le regretter, crois-moi."':
            # a962 # r41926
            jump jumble_s7  # EXTERN

        '"Allons-y, Morte."':
            # a963 # r41927
            jump morte_dispose


# s464 # say42929
label morte_s464: # -
    nr '"Ignore-la… Sois distant et indifférent. Ça ne donnera que plus de piquant à votre relation !"'

    jump montagu_s29  # EXTERN


# s465 # say42930
label morte_s465: # -
    nr '"Fais-moi confiance, gamin. Commence par l„ignorer, crée une situation de conflit, laisse-la réfléchir et c“est elle qui reviendra vers toi pour comprendre d„où vient le problème. Hein, chef ?"'

    menu:
        '"Oui… Elle comprendra qu„il y a un problème et, pour une fois, il mènera le jeu au lieu d“en être la victime."':
            # a964 # r42931
            jump montagu_s30  # EXTERN

        '"Non… C„est pas une bonne idée."':
            # a965 # r42932
            jump montagu_s31  # EXTERN


# s466 # say43543
label morte_s466: # -
    nr '"C„est pour ça que les giths ne devraient pas procréer. Ils parlent sans arrêt de ça, ou de la croyance qui en découle, ou ils sont toujours à la recherche d“un flagelleur mental ou d„un githyanki à tuer, etc., etc. Je crois qu“ils n„aiment même pas se moquer les uns des autres. Ils deviennent azimutés et perdent la tête en chemin, ou sinon ils sont tellement coincés qu“ils en perdent le sens de l„humour. Ils ne parlent que de fusion, d“union des esprits et de confiance communautaire, mais sache que la race s„est divisée dès qu“elle s„est libérée du joug des flagelleurs mentaux. Maintenant, ose me dire que la religion et l“idéologie n„entraîneront pas les plans vers l“effondrement."'

    jump kiina_s35  # EXTERN


# s467 # say43908
label morte_s467: # -
    nr '"Oh là là !"'

    menu:
        '"Tu es Nemelle ? On m„a dit que tu connaissais le mot magique de la carafe."' if morteLogic.r43909_condition():
            # a966 # r43909
            jump neml_s4  # EXTERN

        '"Nemelle ? Ton amie Aelwyn te cherche."' if morteLogic.r43910_condition():
            # a967 # r43910
            $ morteLogic.r43910_action()
            jump neml_s6  # EXTERN

        '"Tu cherches quelqu„un ?"' if morteLogic.r43911_condition():
            # a968 # r43911
            jump neml_s14  # EXTERN

        '"J„avais quelques questions…"':
            # a969 # r43912
            jump neml_s11  # EXTERN

        '"Je n„ai besoin de rien, Nemelle. Adieu."':
            # a970 # r43913
            jump morte_dispose


# s468 # say43914
label morte_s468: # -
    nr '"Oh là là !"'

    jump annah_s209  # EXTERN


# s469 # say43915
label morte_s469: # -
    nr '"Oh, quelle petite femme au sang chaud ! Tu manques d„affection ? Je peux aussi m“extasier sur toi si tu es jalouse…" Morte commence à flotter en direction d„Annah en faisant des bruits de salivation…'

    jump annah_s210  # EXTERN


# s470 # say43916
label morte_s470: # -
    nr 'Morte s„arrête brusquement, se détournant en marmonnant inintelligiblement.'

    menu:
        '"Tu es Nemelle ? On m„a dit que tu connaissais le mot magique de la carafe."' if morteLogic.r43917_condition():
            # a971 # r43917
            jump neml_s4  # EXTERN

        '"Nemelle ? Ton amie Aelwyn te cherche."' if morteLogic.r43918_condition():
            # a972 # r43918
            $ morteLogic.r43918_action()
            jump neml_s6  # EXTERN

        '"Tu cherches quelqu„un ?"' if morteLogic.r43919_condition():
            # a973 # r43919
            jump neml_s14  # EXTERN

        '"J„avais quelques questions…"':
            # a974 # r43920
            jump neml_s11  # EXTERN

        '"Je n„ai besoin de rien, Nemelle. Adieu."':
            # a975 # r43921
            jump morte_dispose


# s471 # say43922
label morte_s471: # -
    nr '"Allez, chef… Je suis sûr qu„on peut penser à *quelque chose*. Hein ? Hein ?"'

    menu:
        '"Laisse tomber, Morte. Allons-y."':
            # a976 # r43923
            jump morte_dispose


# s472 # say44244
label morte_s472: # -
    nr 'Morte s„approche et murmure : "Pas à moi. Je peux faire avec. Hein, chef ? Clin d“œil-clin d„œil, coup de coude-coup de coude…"'

    jump goncal_s20  # EXTERN


# s473 # say44245
label morte_s473: # -
    nr 'Horrifié, Morte intervient. "Non !!! Mec, t„es *fou* ?! T“es complètement azimuté !"'

    jump annah_s214  # EXTERN


# s474 # say44677
label morte_s474: # -
    nr 'Morte roule les yeux. "Les imbéciles se précipitent…"'

    jump yi'minn_s47  # EXTERN


# s475 # say44944
label morte_s475: # -
    nr '"J„adooooore la Salle des Fêtes."'

    jump udesire_s2  # EXTERN


# s476 # say45026
label morte_s476: # -
    nr 'Morte laisse échapper un long soupir. "Allez, chef ! Tu veux vraiment qu„on reste pour voir ça ?"'

    menu:
        '"Tais-toi un peu, Morte. Tu m„empêches d“entendre quoi que ce soit."':
            # a977 # r45027
            jump 3planea_s1  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,':
            # a978 # r45028
            jump 3planea_s1  # EXTERN

        '"Tu as raison, Morte - Allons-nous-en."':
            # a979 # r45029
            $ morteLogic.r45029_action()
            jump morte_dispose


# s477 # say45088
label morte_s477: # externs zm965_s0
    nr '"Hé. On dirait qu„on a oublié d“expliquer à ce type qu„il fallait cesser d“appliquer la Règle des Trois."'

    menu:
        '"Qu„est-ce que tu veux dire ?"':
            # a980 # r45089
            jump morte_s478


# s478 # say45091
label morte_s478: # from 477.0
    nr '"Ces cadavres n„ont plus grand-chose dans le ciboulot et ils sont incapables d“accomplir plus d„une tâche à la fois. Quand on leur dit de faire quelque chose, ils le font jusqu“à ce qu„on leur ordonne d“arrêter. Ce pauvre bougre a dû achever sa tâche et on aura oublié de lui en donner une autre."'

    menu:
        '"Qui leur donne leurs ordres ?"':
            # a981 # r45092
            jump morte_s481

        '"Tu viens d„évoquer la “Règle des Trois„. Qu“est-ce que c„est que ça ?"':
            # a982 # r45093
            $ morteLogic.j39477_s478_r45093_action()
            jump morte_s479

        '"D„accord. Allez, viens, continuons."':
            # a983 # r45094
            jump morte_dispose


# s479 # say45095
label morte_s479: # from 478.1 481.0
    nr '"Hein ? En fait, la Règle des Trois est une des „lois“ des plans. Elle explique que les événements s„enchaînent toujours par trois, que tout est composé de trois éléments, qu“on a toujours trois choix possibles… ce genre de chose, quoi."'

    menu:
        '"Tu n„as pas l“air de trop y croire."':
            # a984 # r45096
            jump morte_s480


# s480 # say45098
label morte_s480: # from 479.0
    nr '"Tout ça, c„est rien qu“un tissu d„inepties, si tu veux mon avis. Il suffit de prendre n“importe quel chiffre et de lui donner un sens mystique pour que les coïncidences s„accumulent."'

    menu:
        '"Je vois. Tout à l„heure, tu m“as dit que quelqu„un avait donné un ordre à ce cadavre, puis avait oublié de lui dire d“arrêter. Qui leur donne leurs directives ?"':
            # a985 # r45099
            jump morte_s481

        '"Compris. J„aurais bien voulu examiner encore un peu ce zombi…"':
            # a986 # r45100
            jump zm965_s1  # EXTERN

        '"D„accord. Allez, viens, continuons."':
            # a987 # r45101
            jump morte_dispose


# s481 # say45102
label morte_s481: # from 478.0 480.0
    nr '"C„est l“un des gardiens ou le nécromancien qui les a fait sortir du livre des morts. Un des gardiens, vraisemblablement. Ce sont eux qui ont besoin de main-d„œuvre à bas prix, après tout."'

    menu:
        '"Je vois. Qu„est-ce que tu voulais dire, tout à l“heure, au sujet de la „Règle des Trois“ ?"':
            # a988 # r45103
            $ morteLogic.j39477_s481_r45103_action()
            jump morte_s479

        '"Compris. J„aurais bien voulu examiner encore un peu ce zombi…"':
            # a989 # r45104
            jump zm965_s1  # EXTERN

        '"D„accord. Allez, viens, continuons."':
            # a990 # r45105
            jump morte_dispose


# s482 # say45540
label morte_s482: # externs zm985_s4 zm985_s0
    nr '"Euh, chef… je ne suis pas sûr que ce soit une bonne…"'

    jump zm985_s3  # EXTERN


# s483 # say45709
label morte_s483: # -
    nr '"Oh, une vente aux enchères ! On pourrait peut-être vendre Annah."'

    jump annah_s215  # EXTERN


# s484 # say45710
label morte_s484: # -
    nr '"Oh, une vente aux enchères ! On pourrait peut-être vendre Dak„kon."'

    jump dakkon_s163  # EXTERN


# s485 # say45711
label morte_s485: # -
    nr '"Oh, une vente aux enchères ! On pourrait peut-être me trouver un corps."'

    menu:
        '"D„accord, Morte. Je n“oublierai pas de demander."':
            # a991 # r45712
            jump giltsp_s4  # EXTERN

        '"Dans ce cas, continuons."':
            # a992 # r45713
            jump morte_dispose


# s486 # say45714
label morte_s486: # -
    nr '"Ce doit être ça, l„amour. C“est bien ça, hein, chef ?"'

    menu:
        '"Laissez tomber, tous les deux. Il faut que je pose quelques questions dans le coin."':
            # a993 # r45715
            jump giltsp_s4  # EXTERN

        '"Si tu le dis, Morte. Laissons ce type tranquille."':
            # a994 # r45716
            jump morte_dispose


# s487 # say45996
label morte_s487: # - # IF WEIGHT #0 ~  NumTimesTalkedTo(0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Eh, regarde : une autre tête flottante."'

    jump vault9_s0  # EXTERN


# s488 # say47813
label morte_s488: # -
    nr '"On dirait que cette masse se croit savante. Va caguer, arme."'

    menu:
        '"Silence. J„avais d“autres questions…"':
            # a995 # r47814
            jump justfer_s8  # EXTERN

        '"Assez parlé pour le moment."':
            # a996 # r47815
            jump morte_dispose


# s489 # say49443
label morte_s489: # -
    nr '"Ooh, un githyanki. Je parie que Dak„kon va être *super* ravi de t“aider."'

    menu:
        '"Merci pour cette remarque, Morte. Allons-y."':
            # a997 # r49444
            jump morte_dispose


# s490 # say50162
label morte_s490: # -
    nr '"Oh ! Ils *ont* des noms. J„en suis sûr."'

    jump annah_s242  # EXTERN


# s491 # say50164
label morte_s491: # -
    nr '"C„est *toi* qui le dis, tieffeline."'

    menu:
        '"Ça suffit, Morte - peux-tu lui poser d„autres questions, Annah ?"':
            # a998 # r50165
            jump annah_s240  # EXTERN

        '"Laisse tomber. Allons-nous en."':
            # a999 # r50166
            $ morteLogic.r50166_action()
            jump adabus_s6  # EXTERN


# s492 # say50263
label morte_s492: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Trouve un natif de Sigil."'

    menu:
        '"Je vois."':
            # a1000 # r50264
            jump adabus_s2  # EXTERN


# s493 # say50266
label morte_s493: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Amène donc la tieffeline par ici." Il fait un signe de tête dans la direction d„Annah. "C“est une native de la Ruche."'

    menu:
        '"Peut-être…"':
            # a1001 # r50267
            jump adabus_s2  # EXTERN


# s494 # say50269
label morte_s494: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ?" Il fait un signe de tête vers Dak„kon. "Amène donc le Pharisien-deux-fois-plus-silencieux pour traduire."'

    menu:
        '"Peut-être…"':
            # a1002 # r50270
            jump adabus_s2  # EXTERN


# s495 # say50272
label morte_s495: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Fais venir la tanar„ri." Il s“incline vers Tombée-en-Disgrâce. "Elle doit sûrement échanger la chanson avec eux sans arrêt."'

    menu:
        '"Peut-être…"':
            # a1003 # r50273
            jump adabus_s2  # EXTERN


# s496 # say50320
label morte_s496: # -
    nr '"Oh, pour l„amour des Puissances ! Fichu dabus !"'

    menu:
        '"Qu„est-ce qui ne va pas ?"':
            # a1004 # r50321
            jump morte_s497


# s497 # say50322
label morte_s497: # from 496.0
    nr '"C„est un dabus. Ils *s“expriment* en rébus, ces puzzles de mots barbants. Si *tu* ne sais pas ce qu„il dit, nous ferions mieux de trouver un natif ou un autre moyen de communication… si c“est vraiment nécessaire. Quel groupe assommant ! Tu paries qu„ils *peuvent* parler, mais qu“ils préfèrent coder tout ce qu„ils disent ne serait-ce que pour le plaisir d“énerver tout le monde."'

    menu:
        '"C„est quoi un “dabus„ ?"':
            # a1005 # r50323
            jump morte_s498


# s498 # say50324
label morte_s498: # from 497.0
    nr '"La chanson dit que ce sont les gardes de la Dame des Douleurs. Ils flottent, cassent, réparent et rapiècent Sigil selon ses caprices. Ils sont pires que des mouches vertes." Morte soupire. "Mais interdiction de s„en débarrasser, sinon la Dame… se fâche."'

    menu:
        '"La „Dame des Douleurs“ ? Qui c„est ?"' if morteLogic.r50325_condition():
            # a1006 # r50325
            $ morteLogic.r50325_action()
            jump morte_s499

        '"Que peux-tu me dire sur la Dame des Douleurs ?"' if morteLogic.r50328_condition():
            # a1007 # r50328
            jump morte_s499

        '"Je vois."' if morteLogic.r50329_condition():
            # a1008 # r50329
            jump adabus_s2  # EXTERN


# s499 # say50326
label morte_s499: # from 498.0 498.1
    nr '"Elle dirige cette cité. Tu la reconnaîtras si tu la vois : elle a ces lames autour du visage, la taille d„un géant et elle flotte, comme eux." Morte fait un signe de tête en direction du dabus, qui vous observe tous les deux. "Personne ne sait grand-chose sur elle… elle ne parle pas beaucoup. Sache juste qu“il ne vaut mieux pas la mettre en colère. Si tu la vois, voici mon conseil : détale."'

    menu:
        '"Je vois."':
            # a1009 # r50327
            jump adabus_s2  # EXTERN


# s500 # say50410
label morte_s500: # -
    nr '"Quoi ? Quoi ? Qu„est-ce qu“il y avait dedans, chef ?"'

    menu:
        '"Je ne sais pas quoi dire, Morte…"':
            # a1010 # r50411
            jump morte_s501

        '"Ça ne te regarde pas, Morte."':
            # a1011 # r50412
            jump morte_s501

        'Montre-lui le Manuscrit.':
            # a1012 # r50413
            jump morte_s503


# s501 # say50414
label morte_s501: # from 500.0 500.1
    nr '"QUOI ?! Tu me fais marcher, pas vrai ? Allez, laisse-moi voir !"'

    menu:
        'Montre-lui le Manuscrit.':
            # a1013 # r50415
            jump morte_s503

        '"Non, Morte. Oublie que tu l„as vu."':
            # a1014 # r50416
            $ morteLogic.r50416_action()
            jump morte_s502


# s502 # say50417
label morte_s502: # from 501.1
    nr 'Morte marmonne avec aigreur… mais laisse tomber.'

    jump codexi_s2  # EXTERN


# s503 # say50418
label morte_s503: # from 500.2 501.0
    nr 'Morte flotte au-dessus de ton épaule pour examiner le contenu du Manuscrit. Ses yeux sortent presque de ses orbites alors qu„il parcourt les pages : "Ooo. Ooooooo. Oh, je… mais… ouah."'

    jump codexi_s2  # EXTERN


# s504 # say50697
label morte_s504: # -
    nr '"Ouah ! Ouah ! Ouah ! Tu plaisantes, pas vrai ? Tu ne peux *pas* être sérieux, chef !"'

    menu:
        '"Si, très sérieux. Tu le prends, Vrischika ?"':
            # a1015 # r50698
            jump vrisch_s45  # EXTERN

        '"Bien sûr que non. J„avais une autre question, Vrischika…"':
            # a1016 # r50699
            jump vrisch_s7  # EXTERN

        '"Tu as raison, Morte ; ce n„était pas une bonne idée. Allons-nous-en."':
            # a1017 # r50700
            jump morte_dispose


# s505 # say50701
label morte_s505: # -
    nr '"Je ne peux pas le croire… Tu es tombé bien bas, chef, c„est le comble. Je *te* verrai à Baator, sale ordure de bas étage, minable, traître, ingrat, pourriture, fumier, affreux, salopard, amnésique ! Fais attention, pauvre bougre, continue comme ça et tu ne vas pas tarder à mourir pour de *bon*… je t“aurai prévenu !"'

    $ morteLogic.s505_action()
    jump vrisch_s46  # EXTERN


# s506 # say52571
label morte_s506: # -
    nr '"Elle l„a avalé, mais j“sais pas s„il est sorti de *ce* côté."'

    menu:
        '"Assez - écoute, Ravel, tu m„as pris ma mortalité et ça a causé plus de mal que de bien. Je veux la récupérer - tu l“as conservée trop longtemps à mon goût."':
            # a1018 # r52572
            jump ravel_s126  # EXTERN


# s507 # say52573
label morte_s507: # -
    nr '"Je crois que je sais qui devrait être mis en cage…"'

    jump ravel_s189  # EXTERN


# s508 # say52574
label morte_s508: # -
    nr '"Eh bien, j„avais rien de MIEUX à faire que d“aller dans l„un des dédales de la Dame pour rencontrer l“une des créatures les plus mauvaises qui ait jamais mis l„pied à Sigil, alors j“me suis dit : ben, pourquoi pas ?„'

    menu:
        '"Morte, tais-toi. Ravel, Je…"':
            # a1019 # r52575
            jump morte_s509


# s509 # say52576
label morte_s509: # from 508.0
    nr '"Que je me taise ?!" Morte claque des dents. "Et puis quoi encore ?! J„crois qu“on l„a assez écouté branler son râtelier et elle est gonflée d“balancer que j„ai pas de peau ! Et puis APRÈS ?! Faut dire qu“le fait qu„elle ait d“la peau l„EMBELLIT drôlement ! Est-ce qu“elle croit que *j„aime* être tout l“temps TOUT NU ? Et puis y„a *autre* chose -"'

    menu:
        '"Morte ! La ferme ! Ravel, écoute -"' if morteLogic.r52577_condition():
            # a1020 # r52577
            $ morteLogic.r52577_action()
            jump ravel_s66  # EXTERN

        '"Morte ! La ferme ! Ravel, écoute -"' if morteLogic.r52578_condition():
            # a1021 # r52578
            $ morteLogic.r52578_action()
            jump ravel_s67  # EXTERN

        '"Morte ! La ferme ! Ravel, écoute -"' if morteLogic.r52579_condition():
            # a1022 # r52579
            jump ravel_s68  # EXTERN


# s510 # say52644
label morte_s510: # -
    nr '"Bizarre. Alors on en est où, techniquement parlant ?"'

    menu:
        '"Je n„ai pas vraiment envie de connaître la réponse, Morte."':
            # a1023 # r52771
            jump pregal_s10  # EXTERN


# s511 # say53623
label morte_s511: # -
    nr '"Oh, on avait *vraiment* besoin d„ça."'

    jump pillar_s5  # EXTERN


# s512 # say53624
label morte_s512: # from 522.0 523.0 524.0
    nr 'Tandis que tu t„approches du pilier, Morte te siffle : "Pssst ! Chef ! Chef… Écoute, il faut pas qu“cette chose me voie. Sors-moi d„ici… Laisse-moi quelque part, et reprends-moi plus tard, ou quelque chose comme ça…"'

    menu:
        '"Pas question, Morte. Je vais aller lui parler. Maintenant…"' if morteLogic.r53625_condition():
            # a1024 # r53625
            $ morteLogic.r53625_action()
            jump pillar_s9  # EXTERN

        '"Pourquoi, Morte ? Qu„est-ce qui se passe ?"' if morteLogic.r53627_condition():
            # a1025 # r53627
            jump morte_s513

        '"Très bien. Dans ce cas, nous partons."':
            # a1026 # r53628
            jump morte_dispose


# s513 # say53626
label morte_s513: # from 512.1
    nr '"Euh… J„aime pas trop en parler. On avance, d“accord ?" La voix de Morte tremble de peur. Ses yeux passent de l„énorme pilier à toi.'

    menu:
        '"Tu ne peux pas me cacher tous ces secrets, Morte. Dis-moi ce qui se passe ici."':
            # a1027 # r53629
            $ morteLogic.r53629_action()
            jump morte_s514

        '"Plus de combines, Morte. Dis-moi *tout de suite* ce qui se passe ou tu risques de regretter de ne pas avoir voulu parler aux têtes."':
            # a1028 # r53630
            $ morteLogic.r53630_action()
            jump morte_s514

        '"Très bien. Dans ce cas, nous partons."':
            # a1029 # r53631
            jump morte_dispose


# s514 # say53632
label morte_s514: # from 513.0 513.1
    nr 'Morte soupire, incapable de te regarder dans les yeux. Il s„incline enfin. "D“accord, d„accord… J“vais t„dire. Y“a un pilier sur l„Averne, la première couche de Baator, qui est fait des têtes de tous ceux qui ont provoqué la mort d“autres à cause de leurs mensonges. Ben… c„est ça, là. Tu vois, c“est là qu„je m“suis retrouvé. Devine le reste."'

    menu:
        '"Alors… tu faisais partie de ces têtes ?"' if morteLogic.r53662_condition():
            # a1030 # r53662
            jump morte_s516

        '"Alors… tu faisais partie de ces têtes ?"' if morteLogic.r53663_condition():
            # a1031 # r53663
            jump morte_s515


# s515 # say53664
label morte_s515: # from 514.1
    nr '"Ouais. J„ai… exagéré un peu, une ou deux fois. C“est juste qu„une de mes suggestions a abouti à ta mort. L“une d„entre elles. Peut-être d“autres. Je sais pas, je ne me souviens plus."'

    menu:
        '"Je vois…"':
            # a1032 # r53665
            jump morte_s518


# s516 # say53666
label morte_s516: # from 514.0
    nr '"Ouais. J„ai… exagéré un peu, une ou deux fois. C“est juste qu„une de mes suggestions-"'

    jump annah_s269  # EXTERN


# s517 # say53667
label morte_s517: # -
    nr 'Morte continue, imperturbable. "… l„une de mes *suggestions* a abouti à ta mort. L“une d„entre elles. Peut-être d“autres. Je sais pas vraiment, je ne me souviens plus."'

    jump morte_s518


# s518 # say53668
label morte_s518: # from 515.0 517.0
    nr 'Morte fixe tes pieds - tu ne l„as jamais vu si pitoyable. "Ces souvenirs, ils… écoute, chef, je m“souviens même pas avoir *été* humain. J„me souviens pas d“la vie avant l„pilier…"'

    if morteLogic.s518_condition():
        jump dakkon_s183  # EXTERN
    menu:
        '"Continue…"' if morteLogic.r54105_condition():
            # a1033 # r54105
            jump morte_s520


# s519 # say53794
label morte_s519: # -
    nr 'Morte regarde Dak„kon, puis toi. "Oui, j“imagine. Et c„est à peu près comme ça qu“ça s„passe quand tu meurs. Tu… oublies. J“imagine que j„étais pas un membre illustre de la communauté quand j“étais vivant… Mais bon sang, qui l„est de toute façon ?" Morte soupire à nouveau. "C“est juste que j„peux pas m“en empêcher. Y„a rien d“pire que d„être tout l“temps honnête. Mais écoute, chef : si ce tas d„têtes me voit, il va m“vouloir méchamment - *méchamment*. Faut pas qu„ça arrive !"'

    menu:
        '"Pas question, Morte. Je vais aller lui parler. Maintenant…"':
            # a1034 # r53795
            $ morteLogic.r53795_action()
            jump pillar_s9  # EXTERN

        '"Attends… comment t„es-tu libéré du Pilier ?"':
            # a1035 # r53796
            jump morte_s521

        '"Un instant… pourquoi ne m„as-tu pas dit que tu me connaissais, quand on était à la Morgue ?"':
            # a1036 # r53797
            jump morte_s523

        '"Attends. Depuis combien de temps exactement me connais-tu, Morte ?"':
            # a1037 # r53798
            jump morte_s524

        '"Très bien. Allons-y, Morte."':
            # a1038 # r53799
            jump morte_dispose


# s520 # say53800
label morte_s520: # from 518.1
    nr '"Quoi qu„il en soit, j“imagine que j„étais pas un membre illustre de la communauté quand j“étais vivant… mais bon sang, qui l„est de toute façon ?" Morte soupire à nouveau. "C“est juste que j„peux pas m“en empêcher. Y„a rien d“pire que d„être tout l“temps honnête. Mais écoute, chef : si ce tas d„têtes me voit, il va m“vouloir méchamment - *méchamment*. Faut pas qu„ça arrive !"'

    menu:
        '"Pas question, Morte. Je vais aller lui parler. Maintenant…"':
            # a1039 # r53801
            $ morteLogic.r53801_action()
            jump pillar_s9  # EXTERN

        '"Attends… comment t„es-tu libéré du Pilier ?"':
            # a1040 # r53802
            jump morte_s521

        '"Un instant… pourquoi ne m„as-tu pas dit que tu me connaissais, quand on était à la Morgue ?"':
            # a1041 # r53803
            jump morte_s523

        '"Attends. Depuis combien de temps exactement me connais-tu, Morte ?"':
            # a1042 # r53804
            jump morte_s524

        '"Très bien. Allons-y, Morte."':
            # a1043 # r53805
            jump morte_dispose


# s521 # say53806
label morte_s521: # from 519.1 520.1 523.1 524.1
    nr '"Eh ben… tu m„as sorti d“là chef, chef. J„me suis battu pour m“retrouver à la surface du pilier - t„es déjà allé là-bas, tu sais de quoi j“parle - en hurlant jusqu„à ce que tu me remarques. J“ai supplié pour être libéré, en jurant que j„te suivrais, et que je partagerais mon savoir avec toi jusqu“à la fin de mes jours… J„m“étais pas rendu compte que ça allait prendre tout ce temps pour me libérer."'

    menu:
        '"Et tout le savoir du Pilier… ?"':
            # a1044 # r53807
            $ morteLogic.j53633_s521_r53807_action()
            jump morte_s522


# s522 # say53808
label morte_s522: # from 521.0
    nr '"Oh, ça… ben, j„ai pas non plus réalisé que je perdrais la plupart du savoir du pilier en en sortant. Cagueurs de pouvoirs, qu“est-ce que *ça* t„a fait exploser ! Mais tu m“as tout de même gardé. Et au début, j„me suis senti “attaché„ à toi… peut-être que ta sorcellerie m“avait transformé en une espèce d„animal de compagnie. Mais après deux siècles, j“ai réalisé que c„était *plus* que ça… quelque chose de plus profond. Plus que le paiement d“une dette, même si je suis sûr qu„il y a un rapport. Je me suis senti attiré, *connecté* à toi, en quelque sorte. Peut-être que c“est toutes tes souffrances, chef… ton tourment. Je sais pas. Peut-être que je l„ai assimilé au mien, quand j“étais dans le pilier."'

    menu:
        '"Je vais parler au Pilier. Maintenant…"':
            # a1045 # r53809
            jump morte_s512

        '"Pourquoi ne m„as-tu pas dit que tu me connaissais lorsque on était à la Morgue ?"':
            # a1046 # r53810
            jump morte_s523

        '"Depuis combien de temps exactement me connais-tu, Morte ?"':
            # a1047 # r53811
            jump morte_s524

        '"Très bien. Partons, Morte."':
            # a1048 # r53812
            jump morte_dispose


# s523 # say53813
label morte_s523: # from 519.2 520.2 522.1 524.2
    nr 'Morte prend soudain la défensive. "Parce que je *sais* jamais qui tu vas être ! Certaines de tes incarnations ont été complètement délirantes ! Une fois, tu t„es réveillé obsédé par l“idée que j„étais *ton* crâne et tu m“as chassé autour de l„Aiguille pour me fracasser et me dévorer… Heureusement, tu t“es fait écraser par un chariot dans la rue. Une autre fois, une „bonne et honnête“ version de toi a essayé de me jeter dans le pilier, parce que „c“était ma place„.“" Morte sourit d„un air narquois. "*C“est* pour ça que ça t„a jamais fait d“mal de rien savoir…"'

    menu:
        '"Je vais parler au Pilier. Maintenant…"':
            # a1049 # r53814
            jump morte_s512

        '"Comment t„es-tu libéré du Pilier ?"':
            # a1050 # r53815
            jump morte_s521

        '"Depuis combien de temps exactement me connais-tu, Morte ?"':
            # a1051 # r53816
            jump morte_s524

        '"Très bien. Partons, Morte."':
            # a1052 # r53817
            jump morte_dispose


# s524 # say53818
label morte_s524: # from 519.3 520.3 522.2 523.2
    nr '"J„sais pas. Des lustres, j“imagine. J„ai fait tout c“que j„pouvais pour t“aider à retrouver ton chemin, mais…" Morte soupire, puis s„élève pour rencontrer ton regard. "T“es rarement arrivé jusque là, chef. Sans mentir, seulement quatre ou cinq fois. Ça pourrait être la bonne… le „toi“ qui y arrive, qui découvre c„qui s“passe."'

    menu:
        '"Je vais parler au Pilier. Maintenant…"':
            # a1053 # r53819
            jump morte_s512

        '"Comment t„es-tu libéré du Pilier ?"':
            # a1054 # r53820
            jump morte_s521

        '"Pourquoi ne m„as-tu pas dit que tu me connaissais lorsque on était à la Morgue ?"':
            # a1055 # r53821
            jump morte_s523

        '"Très bien. Partons, Morte."':
            # a1056 # r53822
            jump morte_dispose


# s525 # say53823
label morte_s525: # -
    nr '"Oh, non…"'

    jump pillar_s10  # EXTERN


# s526 # say53824
label morte_s526: # -
    nr 'Morte tremble de peur et claque des dents. "J„peux pas retourner là-bas, chef ! J“peux pas ! J„peux pas ! J“peux pas !"'

    menu:
        '"Il n„est pas venu pour toi. Mais j“ai quelques questions, Pilier des Crânes…"' if morteLogic.r53825_condition():
            # a1057 # r53825
            $ morteLogic.r53825_action()
            jump pillar_s2  # EXTERN

        '"Il n„est pas venu pour toi. Mais j“ai quelques questions, Pilier des Crânes…"' if morteLogic.r53826_condition():
            # a1058 # r53826
            $ morteLogic.r53826_action()
            jump pillar_s2  # EXTERN

        '"Il n„est pas venu pour toi, Pilier des Crânes. Mais j“ai quelques questions…"' if morteLogic.r53827_condition():
            # a1059 # r53827
            jump pillar_s12  # EXTERN

        '"Partons, Morte. Allez."':
            # a1060 # r53828
            jump pillar_s50  # EXTERN


# s527 # say53829
label morte_s527: # -
    nr '"*Allez*, chef, est-ce que je viens pas tout juste de te *dire* ce que c„était ?! Il est composé des têtes des menteurs dont les “conseils„ ont abouti à la mort de ceux qu“ils conseillaient. Il peut répondre à beaucoup de questions - il en sait pas mal - mais il attend un sacré paiement pour ses services. Lui pose pas une question juste comme ça !"'

    jump pillar_s14  # EXTERN


# s528 # say53830
label morte_s528: # -
    nr '"Me remets pas là-dedans, chef. S„il te plaît !"'

    jump pillar_s17  # EXTERN


# s529 # say53831
label morte_s529: # -
    nr '"Chef ?! Non ! Non ! Tu peux *pas* ! Allez !"'

    menu:
        '"Ne t„en fais pas, Morte - je te sortirai de là plus tard."' if morteLogic.r53832_condition():
            # a1061 # r53832
            jump morte_s530

        '"Ne t„en fais pas, Morte - je te sortirai de là plus tard."' if morteLogic.r53833_condition():
            # a1062 # r53833
            jump morte_s530

        '"Ne t„en fais pas, Morte - je te sortirai de là plus tard."' if morteLogic.r53834_condition():
            # a1063 # r53834
            jump morte_s530

        '"Ne t„en fais pas, Morte - je te sortirai de là plus tard."' if morteLogic.r53835_condition():
            # a1064 # r53835
            jump morte_s531

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53836_condition():
            # a1065 # r53836
            jump pillar_s19  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53837_condition():
            # a1066 # r53837
            jump pillar_s20  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53838_condition():
            # a1067 # r53838
            jump pillar_s21  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53839_condition():
            # a1068 # r53839
            jump pillar_s22  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53840_condition():
            # a1069 # r53840
            jump pillar_s23  # EXTERN

        '"Partons, Morte. Allez."':
            # a1070 # r53841
            $ morteLogic.r53841_action()
            jump pillar_s50  # EXTERN


# s530 # say53842
label morte_s530: # from 529.0 529.1 529.2
    nr 'Morte te regarde d„un air sceptique. "T“es *sûr* ? Tu le *jures* ? Hé, qu„est-ce que j“raconte ?! Non ! Pas question ! Allez, tu peux *pas* m„remettre là-dedans !"'

    menu:
        'Attrape Morte, jette-le dans le Pilier des Crânes.':
            # a1071 # r53843
            $ morteLogic.r53843_action()
            jump morte_dispose

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53844_condition():
            # a1072 # r53844
            jump pillar_s19  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53863_condition():
            # a1073 # r53863
            jump pillar_s20  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53864_condition():
            # a1074 # r53864
            jump pillar_s21  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53865_condition():
            # a1075 # r53865
            jump pillar_s22  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53866_condition():
            # a1076 # r53866
            jump pillar_s23  # EXTERN

        '"Partons, Morte. Allez."':
            # a1077 # r53867
            $ morteLogic.r53867_action()
            jump pillar_s50  # EXTERN


# s531 # say53849
label morte_s531: # from 529.3
    nr 'Morte te regarde en silence pendant un instant, bouche bée. " QUOI ?! Jamais ! T„es pas aussi puissant que tu l“étais quand… écoute, oublie ça, tu peux pas l„faire, jamais d“la vie ! Allez, tu peux *pas* me remettre là-dedans !"'

    menu:
        'Attrape Morte, jette-le dans le Pilier des Crânes.':
            # a1078 # r53850
            $ morteLogic.r53850_action()
            jump morte_dispose

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53851_condition():
            # a1079 # r53851
            jump pillar_s19  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53852_condition():
            # a1080 # r53852
            jump pillar_s20  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53853_condition():
            # a1081 # r53853
            jump pillar_s21  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53854_condition():
            # a1082 # r53854
            jump pillar_s22  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"' if morteLogic.r53855_condition():
            # a1083 # r53855
            jump pillar_s23  # EXTERN

        '"Partons, Morte. Allez."':
            # a1084 # r53856
            $ morteLogic.r53856_action()
            jump pillar_s50  # EXTERN


# s532 # say53857
label morte_s532: # -
    nr '"Ouah, qu„… attends ! Pas si vite ! Pilier… Je peux te dire où est Fjhull Langue-fourchue ! Allez, tu veux pas l“savoir ? Et s„il te donne ça, au lieu de moi, hein ? Hein ? Qu“est-ce que t„en dis ?"'

    menu:
        '"Un instant, Morte. Nous n„allons pas trahir Fhjull."':
            # a1085 # r53858
            jump morte_s533

        'Attends la réponse du Pilier.':
            # a1086 # r53859
            jump pillar_s19  # EXTERN


# s533 # say53860
label morte_s533: # from 532.0
    nr '"Quoi ? T„es *azimuté* ?!* Tu te débarrasses de *moi*, mais pas de l“autre *FIÉLON* ?! S„il t“a aidé, c„est parce qu“il est lié à toi, maudit, c„est tout ! Et *moi* ? Qui t“a sorti de la morgue, mon pote ? Qui va se tenir - euh, flotter - à tes côtés quand tu devras faire face au pire dans la Forteresse de machin ?! Hein ?! Hein ?! PAS FHJULL GROS-CUL, ÇA C„EST SÛR !"'

    menu:
        '"Bien, bien. Qu„en dis-tu, Pilier ?"':
            # a1087 # r53861
            jump pillar_s19  # EXTERN

        '"Désolé, Morte. Tu vas y passer."':
            # a1088 # r53862
            jump pillar_s18  # EXTERN


# s534 # say54155
label morte_s534: # from 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0
    nr '"Pourquoi pas, chef ?" Morte secoue la tête. "Je veux dire, on s„est baladés sur TOUS les horribles plans possibles et imaginables du multivers. Pourquoi pas se jeter du haut de la falaise ?" Il soupire bruyamment. "Est-ce que TU es prêt ? Parce que si tu l“es pas…"'

    menu:
        '"Peux-tu me répéter ce qui se trouve au-delà de ce portail ?"':
            # a1089 # r54156
            jump morte_s544

        '"Je suis prêt, Morte. Je ne peux pas faire plus pour me préparer. Tu me suis ?"':
            # a1090 # r54157
            jump morte_s535

        '"Peut-être que tu as raison… laisse-moi d„abord me préparer un peu plus."':
            # a1091 # r54158
            jump morte_dispose


# s535 # say54159
label morte_s535: # from 534.1
    nr '"Ben je…" Morte jette un œil au rideau bleu brillant et soupire à nouveau bruyamment. "D„accord. Allons-y. N“importe quel endroit vaut mieux que d„se branler le râtelier à la Morgue, hein ?"'

    menu:
        '"Alors très bien…"':
            # a1092 # r54160
            $ morteLogic.r54160_action()
            jump morte_dispose


# s536 # say54161
label morte_s536: # -
    nr '"Euh…" Morte hésite, regarde furtivement le portail, puis toi, puis à nouveau le portail, puis soupire bruyamment. "Écoute, j„vais pas *trop* en dire ici, mais euh… Ben, y“a quelque chose qu„il faut que j“te dise…"'

    menu:
        '"Qu„y a-t-il, Morte ?"':
            # a1093 # r54162
            jump morte_s537

        '"Quoi ? Allez, Morte, nous devons partir…"':
            # a1094 # r54163
            jump morte_s537


# s537 # say54164
label morte_s537: # from 536.0 536.1
    nr '"Ben, c„est à propos de l“endroit où on va… ou plutôt… où on est… *allés*."'

    menu:
        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"' if morteLogic.r54165_condition():
            # a1095 # r54165
            jump morte_s540

        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"' if morteLogic.r54166_condition():
            # a1096 # r54166
            jump dakkon_s174  # EXTERN

        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"' if morteLogic.r54167_condition():
            # a1097 # r54167
            jump morte_s540


# s538 # say54168
label morte_s538: # -
    nr '"Euh… chef ?" Morte hésite, regarde furtivement le portail, puis toi, puis à nouveau le portail, puis soupire bruyamment. "Écoute, j„vais pas *trop* en dire ici, mais euh… ben, y“a quelque chose qu„il faut que j“te dise…"'

    menu:
        '"Qu„y a-t-il, Morte ?"':
            # a1098 # r54169
            jump morte_s539

        '"Quoi ? Allez, Morte, il faut que je parte…"':
            # a1099 # r54170
            jump morte_s539


# s539 # say54171
label morte_s539: # from 538.0 538.1
    nr '"Ben, c„est à propos de l“endroit où tu vas… ou plutôt… où on est… *allés*."'

    menu:
        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"' if morteLogic.r54172_condition():
            # a1100 # r54172
            jump morte_s540

        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"' if morteLogic.r54173_condition():
            # a1101 # r54173
            jump dakkon_s174  # EXTERN

        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"' if morteLogic.r54174_condition():
            # a1102 # r54174
            jump morte_s540


# s540 # say54175
label morte_s540: # from 537.0 537.2 539.0 539.2
    nr '"C„est… euh, c“est pas la PREMIÈRE fois qu„on fait ça… Tu vois, on est déjà allé à la “Forteresse des Regrets„… même si, on… Je… je le savais pas à l“époque."'

    menu:
        '"Tu ne le *savais* pas ? Comment est-ce possible ?"':
            # a1103 # r54176
            jump morte_s541

        '"Donc, depuis le TOUT DÉBUT… tu aurais pu me DIRE où était le portail, CE qu„était la clé du portail, POURQUOI je suis immortel, ce qui est ARRIVÉ à ma mortalité ET le fait que ce soit dans cette Forteresse ?! Morte, je vais te *TUER*… !"':
            # a1104 # r54177
            jump morte_s542

        '"Morte, j„attends des explications… plus de mensonges ou de subterfuges, pas maintenant."':
            # a1105 # r54178
            jump morte_s541

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54179_condition():
            # a1106 # r54179
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54180_condition():
            # a1107 # r54180
            $ morteLogic.r54180_action()
            jump morte_dispose


# s541 # say54181
label morte_s541: # from 540.0 540.2
    nr '"C„est difficile à expliquer tant que t“es pas *allé* là-bas… en plus, tu connaissais pas le euh, *l„autre* toi - il était pas exactement le genre de lascar à PARTAGER la chanson avec nous. J“veux dire, je sais qu„il cherchait UN endroit, mais j“savais pas pourquoi, où c„était, ou CE que c“était, alors je pouvais RIEN te dire, parce que je savais RIEN ! Je… je sais juste ce qui s„est passé quand on est ARRIVÉS là-bas…"'

    menu:
        '"Et… qu„est-ce qui s“est passé ?"' if morteLogic.r54189_condition():
            # a1108 # r54189
            jump morte_s544

        '"Et… qu„est-ce qui s“est passé ?"' if morteLogic.r54190_condition():
            # a1109 # r54190
            jump morte_s543

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54191_condition():
            # a1110 # r54191
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54192_condition():
            # a1111 # r54192
            $ morteLogic.r54192_action()
            jump morte_dispose


# s542 # say54193
label morte_s542: # from 540.1
    nr 'Morte paraît alarmé. "Non ! Non ! On… Je… ne SAVAIS rien ! C„est pas comme si t“étais l„plus bavard des lascars ! Ce… cet *autre* toi a gardé BEAUCOUP de chansons pour lui-même et on savait même pas POURQUOI on allait là-bas et QUEL endroit c“était ! Je sais juste ce qui s„est passé quand on est ARRIVÉS là-bas…"'

    menu:
        '"Et… qu„est-ce qui s“est passé ?"' if morteLogic.r54194_condition():
            # a1112 # r54194
            jump morte_s544

        '"Et… qu„est-ce qui s“est passé ?"' if morteLogic.r54195_condition():
            # a1113 # r54195
            jump morte_s543

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54196_condition():
            # a1114 # r54196
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54197_condition():
            # a1115 # r54197
            $ morteLogic.r54197_action()
            jump morte_dispose


# s543 # say54198
label morte_s543: # from 541.1 542.1
    nr '"Eh bien, on est allé à cette - cette FORTERESSE et avant même qu„on pose le pied là-bas, on s“est retrouvé SÉPARÉS, à combattre pour nos vies… alors la *première* chose que je veux te dire, c„est que si t“es déterminé à faire ça, y„a grande chance que ceux qui passeront à travers ce portail se retrouvent quelque part *loin* de tout le monde. Le problème, c“est que t„as toujours besoin que quelqu“un t„accompagne là-bas…"'

    menu:
        '"Pourquoi dis-tu ça ?"':
            # a1116 # r54199
            jump morte_s545

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54200_condition():
            # a1117 # r54200
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54201_condition():
            # a1118 # r54201
            $ morteLogic.r54201_action()
            jump morte_dispose


# s544 # say54202
label morte_s544: # from 534.0 541.0 542.0
    nr '"Eh bien, on est allé à cette - cette FORTERESSE et avant même qu„on pose le pied là-bas, on s“est retrouvé SÉPARÉS, à combattre pour nos vies… alors la *première* chose que je veux te dire, c„est que si t“es déterminé à faire ça, y„a des chances que ceux qui passeront à travers ce portail se retrouvent quelque part *loin* de tout le monde. Le problème, c“est que même séparés, on est peut-être ta seule chance…"'

    menu:
        '"Pourquoi dis-tu ça ?"':
            # a1119 # r54203
            jump morte_s545

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54204_condition():
            # a1120 # r54204
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54205_condition():
            # a1121 # r54205
            $ morteLogic.r54205_action()
            jump morte_dispose


# s545 # say54206
label morte_s545: # from 543.0 544.0
    nr '"Parce que ce qui t„attendait dans cette Forteresse t“a déjà battu une fois chef… À ce jour, je sais toujours pas comment tu t„es débrouillé pour survivre, mais si tu tombes encore, t“auras besoin de quelqu„un pour te sortir de cette Forteresse…"'

    menu:
        '"Morte, il faut que tu me dises tout ce que tu sais à propos de la Forteresse… c„est important."' if morteLogic.r54207_condition():
            # a1122 # r54207
            jump morte_s547

        '"Morte, il faut que tu me dises tout ce que tu sais à propos de la Forteresse… c„est important."' if morteLogic.r54208_condition():
            # a1123 # r54208
            jump morte_s546

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54209_condition():
            # a1124 # r54209
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54210_condition():
            # a1125 # r54210
            $ morteLogic.r54210_action()
            jump morte_dispose


# s546 # say54211
label morte_s546: # from 545.1
    nr '"Cette „Forteresse des Regrets“… elle s„étale sur des LIEUES, chef. C“est une Forteresse, mais ça ressemble plus à un PLAN, avec toute cette pierre, cette obscurité et ces ombres, partout ces ombres. Si tu vas là-bas… tu ferais mieux d„être préparé."'

    menu:
        '"Que s„est-il passé la première fois que nous sommes venus ici ?"':
            # a1126 # r54212
            jump morte_s548

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54213_condition():
            # a1127 # r54213
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54214_condition():
            # a1128 # r54214
            $ morteLogic.r54214_action()
            jump morte_dispose


# s547 # say54215
label morte_s547: # from 545.0
    nr '"Cette „Forteresse des Regrets“… elle s„étale sur des LIEUES, chef. C“est une Forteresse, mais ça ressemble plus à un PLAN, avec toute cette pierre, cette obscurité et ces ombres, partout ces ombres. Si on va là-bas… on ferait mieux d„être préparé."'

    menu:
        '"Que s„est-il passé la première fois que nous sommes venus ici ?"':
            # a1129 # r54216
            jump morte_s548

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54217_condition():
            # a1130 # r54217
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54218_condition():
            # a1131 # r54218
            $ morteLogic.r54218_action()
            jump morte_dispose


# s548 # say54219
label morte_s548: # from 546.0 547.0
    nr '"Chef, je sais pas ce qui t„est arrivé à TOI, mais je sais ce qui m“est arrivé à MOI… J„ai passé mon temps à courir de caveau en caveau, avec ces ombres au-dessus de moi, qui essayaient de m“avoir… puis j„ai juste… on s“est retrouvé „dehors“, comme si quelqu„un nous avait sortis…"'

    menu:
        '"Attends un instant. Quand tu parles de „nous“, on dirait que tu ne parles pas uniquement de toi et moi."' if morteLogic.r54220_condition():
            # a1132 # r54220
            jump morte_s565

        '"Attends un instant. Quand tu parles de „nous“, on dirait que tu ne parles pas uniquement de toi et moi."' if morteLogic.r54221_condition():
            # a1133 # r54221
            jump morte_s549

        '"Attends un instant. Quand tu parles de „nous“, on dirait que tu ne parles pas uniquement de toi et moi."' if morteLogic.r54223_condition():
            # a1134 # r54223
            jump morte_s550

        '"Je vois. Y a-t-il autre chose que tu peux me dire ?"':
            # a1135 # r54225
            jump morte_s552

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54226_condition():
            # a1136 # r54226
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54227_condition():
            # a1137 # r54227
            $ morteLogic.r54227_action()
            jump morte_dispose


# s549 # say54229
label morte_s549: # from 548.1
    nr 'Morte devient silencieux pendant un instant. "Non… d„autres étaient là. Il y avait… Dak“kon, cette gamine Sensat, Deionarra, cet archer aveugle à moitié bougre à force de picoler, et toi et moi… et c„est devenu infernal. On dirait bien qu“il n„y a que toi, moi, et Dak“kon qui nous en sommes tirés, mais pas les autres. Je sais pas ce qui leur est arrivé."'

    menu:
        '"Dak„kon ? Mais pourquoi… Il faudra que je lui pose la question ; mais tu dis que Deionarra et cet archer ne sont jamais revenus de la Forteresse ?"' if morteLogic.r54230_condition():
            # a1138 # r54230
            jump morte_s551

        '"Dak„kon ? Mais pourquoi… Il faudra que je lui pose la question ; mais tu dis que cette femme, Deionarra, et cet archer ne sont jamais revenus de la Forteresse ?"' if morteLogic.r54231_condition():
            # a1139 # r54231
            jump morte_s551

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54232_condition():
            # a1140 # r54232
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54233_condition():
            # a1141 # r54233
            $ morteLogic.r54233_action()
            jump morte_dispose


# s550 # say54234
label morte_s550: # from 548.2
    nr 'Morte devient silencieux pendant un instant. "Non… d„autres étaient là. Il y avait… ce vieux gith, Dak“kon, cette gamine Sensat, Deionarra, cet archer aveugle à moitié bougre à force de picoler et toi et moi… et c„est devenu infernal. On dirait bien qu“il n„y a que toi, moi, et Dak“kon qui nous en sommes tirés, mais pas les autres. Je sais pas ce qui leur est arrivé."'

    menu:
        '"Tu dis que Deionarra et cet archer ne sont jamais revenus de la Forteresse ?"' if morteLogic.r54235_condition():
            # a1142 # r54235
            jump morte_s551

        '"Tu dis que cette femme, Deionarra et cet archer ne sont jamais revenus de la Forteresse ?"' if morteLogic.r54236_condition():
            # a1143 # r54236
            jump morte_s551

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54237_condition():
            # a1144 # r54237
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54238_condition():
            # a1145 # r54238
            $ morteLogic.r54238_action()
            jump morte_dispose


# s551 # say54239
label morte_s551: # from 549.0 549.1 550.0 550.1
    nr 'Morte secoue la tête. "Pas que je sache."'

    menu:
        '"Y a-t-il autre chose que tu puisses me dire à propos de cette Forteresse ?"':
            # a1146 # r54240
            jump morte_s552

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54241_condition():
            # a1147 # r54241
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54242_condition():
            # a1148 # r54242
            $ morteLogic.r54242_action()
            jump morte_dispose


# s552 # say54243
label morte_s552: # from 548.3 551.0
    nr '"Je peux pas t„en dire plus, chef - excepté qu“on est certains de se retrouver divisés dès qu„on arrivera, c“est un endroit ÉNORME et ça grouille d„ombres… et quelque part dans cette Forteresse, il y a quelque chose de plus puissant que *n“importe lequel* d„entre nous. Y“a rien de plus à ajouter…"'

    menu:
        '"En es-tu *sûr* ? C„est peut-être la dernière fois que nous avons une chance de nous parler…"':
            # a1149 # r54244
            $ morteLogic.r54244_action()
            jump morte_s553

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54245_condition():
            # a1150 # r54245
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54246_condition():
            # a1151 # r54246
            $ morteLogic.r54246_action()
            jump morte_dispose


# s553 # say54249
label morte_s553: # from 552.0
    nr '"Eh bien…" Morte s„interrompt. "Ouais, y“a autre chose que tu devrais savoir - le TOI que j„ai connu avant, le TOI qui nous a menés ici, il était pas comme toi. Pas du tout."'

    menu:
        '"Qu„est-ce que tu veux dire ?"' if morteLogic.r54250_condition():
            # a1152 # r54250
            jump morte_s554

        '"Qu„est-ce que tu veux dire ?"' if morteLogic.r54252_condition():
            # a1153 # r54252
            jump morte_s555

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54255_condition():
            # a1154 # r54255
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54262_condition():
            # a1155 # r54262
            $ morteLogic.r54262_action()
            jump morte_dispose


# s554 # say54263
label morte_s554: # from 553.0
    nr '"L„autre TOI, il… il s“intéressait pas à grand monde. À personne. On aurait pu TOUS mourir dans la Forteresse et il aurait pas cillé. Alors… accroche-toi à tes différences, parce que… et ben, j„préfère nettement ce *toi*. TRÈS nettement."'

    menu:
        '"Mais ce n„est pas tout ce que tu as à dire, n“est-ce pas ?"' if morteLogic.r54264_condition():
            # a1156 # r54264
            jump morte_s556

        '"C„est tout ?"':
            # a1157 # r54265
            jump morte_s556

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54266_condition():
            # a1158 # r54266
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54267_condition():
            # a1159 # r54267
            $ morteLogic.r54267_action()
            jump morte_dispose


# s555 # say54268
label morte_s555: # from 553.1
    nr '"Ce que j„veux dire, c“est que malgré ton entêtement, t„as plus d“ESPRIT qu„il en a jamais eu. L“autre TOI, il… il était détaché de tout. Alors… je veux juste que tu gardes ça en tête."'

    menu:
        '"Mais ce n„est pas tout ce que tu as à dire, n“est-ce pas ?"' if morteLogic.r54269_condition():
            # a1160 # r54269
            jump morte_s556

        '"C„est tout ?"':
            # a1161 # r54270
            jump morte_s556

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54271_condition():
            # a1162 # r54271
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54272_condition():
            # a1163 # r54272
            $ morteLogic.r54272_action()
            jump morte_dispose


# s556 # say54273
label morte_s556: # from 554.0 554.1 555.0 555.1
    nr '"Non…" Morte s„interrompt. "Y“a une autre chose - j„ai peut-être pas beaucoup aimé *l“autre*, mais c„était un lascar intelligent - le lascar le plus futé que j“ai jamais rencontré. Il avait tout planifié. S„il est mort à la Forteresse, ça veut dire que… eh bien…"'

    menu:
        '"Tu ne me crois pas capable de réussir, n„est-ce pas ?"':
            # a1164 # r54274
            jump morte_s557

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"' if morteLogic.r54275_condition():
            # a1165 # r54275
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."' if morteLogic.r54276_condition():
            # a1166 # r54276
            $ morteLogic.r54276_action()
            jump morte_dispose


# s557 # say54277
label morte_s557: # from 556.0
    nr '"Non…" Morte secoue la tête. "Ce n„est pas ça, chef. Il ne s“agit pas toujours de savoir qui est le plus futé, ou le plus puissant, ou le plus dur… parfois, ça se résume à qui tu es et à ce que tu veux. Bref, jadis, tu as voulu devenir immortel… mais, en fin de compte, est-ce que c„était ce que tu voulais *vraiment* ? Prends bien garde à ce que tu veux, cette fois-ci. Simple conseil."'

    menu:
        '"Très bien. Écoute, Morte… nous n„avons pas vraiment discuté de ça, mais tu sais que tu n“es pas obligé de venir avec moi, hein ? Je comprendrais très bien que tu ne veuilles pas."' if morteLogic.r54278_condition():
            # a1167 # r54278
            $ morteLogic.r54278_action()
            jump morte_s558

        '"Compris. Si tu as tout dit, allons-y. Tu es prêt ?"' if morteLogic.r54279_condition():
            # a1168 # r54279
            jump morte_s534

        '"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."' if morteLogic.r54280_condition():
            # a1169 # r54280
            $ morteLogic.r54280_action()
            jump morte_dispose


# s558 # say54281
label morte_s558: # from 557.0
    nr '"Ouais… Je sais, chef. Et je peux pas te mentir… Je veux pas y aller… mais je le ferai. Sache seulement qu„une fois qu“on aura passé ce portail, ça ne tiendra plus seulement qu„à *toi*. C“est avec nos vies que tu joues et on retombe pas sur nos pieds quand on meurt."'

    menu:
        '"Alors pourquoi est-ce que…"' if morteLogic.r54282_condition():
            # a1170 # r54282
            jump grace_s169  # EXTERN

        '"Alors pourquoi est-ce que…"' if morteLogic.r54283_condition():
            # a1171 # r54283
            jump grace_s170  # EXTERN

        '"Alors pourquoi est-ce que…"' if morteLogic.r54284_condition():
            # a1172 # r54284
            jump morte_s562

        '"Alors pourquoi est-ce que…"' if morteLogic.r54285_condition():
            # a1173 # r54285
            jump morte_s563

        '"Alors pourquoi est-ce que…"' if morteLogic.r54286_condition():
            # a1174 # r54286
            jump morte_s564


# s559 # say54762
label morte_s559: # -
    nr 'Morte réplique : "Tu ne sens pas meilleur. À quand remonte ton dernier bain ?"'

    jump grace_s176  # EXTERN


# s560 # say54763
label morte_s560: # -
    nr 'Morte réplique : "Tu ne sens pas meilleur. À quand remonte ton dernier bain ?"'

    jump grace_s177  # EXTERN


# s561 # say54764
label morte_s561: # -
    nr 'Morte réplique : "Tu ne sens pas meilleur. À quand remonte ton dernier bain ?"'

    jump trias_s8  # EXTERN


# s562 # say54831
label morte_s562: # from 558.2
    nr '"C„est ce qu“a dit Ravel dans le dédale… Elle a dit que tu attires les gens qui souffrent, comme un aimant." Morte secoue la tête. "Peut-être que c„est parce que *toi aussi* tu souffres depuis tout ce temps-là. Peut-être que si tu finis par tasser les choses… Peut-être aussi que *nous*, on connaîtra un peu de paix. Peut-être."'

    menu:
        '"Peut-être, en effet. Alors… tu es avec moi, Morte ?"' if morteLogic.r54832_condition():
            # a1175 # r54832
            jump morte_s534

        '"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."' if morteLogic.r54833_condition():
            # a1176 # r54833
            $ morteLogic.r54833_action()
            jump morte_dispose


# s563 # say54834
label morte_s563: # from 558.3
    nr '"C„est ce qu“a dit Ravel dans le dédale… Et qu„est-ce qu“a dit Fell à propos de ce symbole, le Tourment ? Il paraît que tu attires les gens qui souffrent, comme un aimant." Morte secoue la tête. Peut-être que c„est parce que *toi aussi* tu souffres depuis tout ce temps-là. Peut-être que si tu finis par tasser les choses… Peut-être aussi que *nous*, on connaîtra un peu de paix. Peut-être."'

    menu:
        '"Peut-être, en effet. Alors… tu es avec moi, Morte ?"' if morteLogic.r54835_condition():
            # a1177 # r54835
            jump morte_s534

        '"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."' if morteLogic.r54836_condition():
            # a1178 # r54836
            $ morteLogic.r54836_action()
            jump morte_dispose


# s564 # say54837
label morte_s564: # from 558.4
    nr '"Je te connais de longue date, chef, et y a *quelque chose* chez toi… Tu attires les gens qui souffrent, comme un aimant." Morte secoue la tête. Peut-être que c„est parce que *toi aussi* tu souffres depuis tout ce temps-là. Peut-être que si tu finis par tasser les choses… Peut-être aussi que *nous*, on connaîtra un peu de paix. Peut-être."'

    menu:
        '"Peut-être, en effet. Alors… tu es avec moi, Morte ?"' if morteLogic.r54838_condition():
            # a1179 # r54838
            jump morte_s534

        '"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."' if morteLogic.r54839_condition():
            # a1180 # r54839
            $ morteLogic.r54839_action()
            jump morte_dispose


# s565 # say54840
label morte_s565: # from 548.0
    nr 'Morte devient silencieux.'

    jump dakkon_s175  # EXTERN


# s566 # say54841
label morte_s566: # -
    nr '"Le crâne, c„était moi." Morte ajoute tranquillement : "La femme était une pauvre fille du nom de Deionarra ; je n“ai jamais connu l„archer…"'

    jump dakkon_s177  # EXTERN


# s567 # say54842
label morte_s567: # -
    nr '"Ouais…" Morte fait un bruit de ferraille comme s„il tremblait. "Chef, à cette Forteresse… y a des ombres *partout*…"'

    jump dakkon_s178  # EXTERN


# s568 # say54843
label morte_s568: # -
    nr '"Elles m„ont parlé comme le Pilier des Crânes…" Morte baisse le ton. "Elles *savaient*…"'

    menu:
        '"Très bien ; écoutez, vous deux : dites-moi tout ce que vous savez à propos de cette forteresse…"':
            # a1181 # r54844
            jump dakkon_s179  # EXTERN


# s569 # say54845
label morte_s569: # -
    nr '"Je peux rien dire d„autre, chef… sauf qu“on sera sûrement divisés dès qu„on arrivera… C“est IMMENSE, et ça grouille d„ombres… Et quelque part dans cette Forteresse, y a quelque chose de plus puissant que *n“importe lequel* d„entre nous."'

    jump dakkon_s182  # EXTERN


# s570 # say54846
label morte_s570: # -
    nr '" Je peux rien dire d„autre, chef… sauf que quand on entre là-dedans, on se trouve divisés dès qu“on arrive… C„est IMMENSE, et ça grouille d“ombres… Et quelque part dans cette Forteresse, y a quelque chose de plus puissant que tout ce qu„on peut imaginer."'

    jump dakkon_s182  # EXTERN


# s571 # say55832
label morte_s571: # -
    nr '"Chef, on court droit aux ennuis… Ce modrone est devenu un renégat."'

    menu:
        '"Renégat ?"':
            # a1182 # r55833
            jump morte_s572


# s572 # say55834
label morte_s572: # from 571.0
    nr '"Ouais, tu vois, des fois, les modrones sont un peu chamboulés par le chaos, et quand ça arrive… Oh, la *meilleure* explication, c„est sans doute que ces modrones renégats sont plus ou moins… des modrones à l“envers."'

    menu:
        '"Alors, c„est un… modrone à l“envers ?"':
            # a1183 # r55836
            jump nordom_s21  # EXTERN


# s573 # say55837
label morte_s573: # -
    nr '"Chef, c„est très amusant tout ça, mais essayer d“enlever un tabouret de bar de sous les fesses d„un baatezu, ça vaudrait encore mieux que de branler notre râtelier avec cet idiot de polygone."'

    menu:
        '"Dis, tu sais ce que c„est des esprits d“engrenage, Morte ?"':
            # a1184 # r55839
            jump morte_s574


# s574 # say55841
label morte_s574: # from 573.0
    nr '"Chef, je vois pas ce que ce cube veut dire avec tout son boucan."'

    menu:
        '"Je te croyais l„*expert* des plans."':
            # a1185 # r55842
            jump morte_s575

        '"D„accord. Nordom, j“ai encore quelques questions à te poser…"':
            # a1186 # r55843
            jump nordom_s74  # EXTERN

        '"C„est bon, laisse tomber. Perdons pas de temps."':
            # a1187 # r55844
            jump morte_dispose


# s575 # say55845
label morte_s575: # from 574.0
    nr '"Qu… J„en sais plus que *toi*, espèce d“amnésique bégayant ! „Tiens, voilà trois infos de plus à fourrer dans ta p“tite boîte grise vide : un, y a PAS d„experts sur les plans, deux, c“est moi qui suis le plus proche de ce que tu cherches, et trois, je te conseille d„être poli avec moi. Pourquoi ? Voir la deuxième raison."'

    menu:
        '"D„accord. Nordom, j“ai encore quelques questions à te poser…"':
            # a1188 # r55846
            jump nordom_s74  # EXTERN

        '"C„est bon, laisse tomber. Perdons pas de temps."':
            # a1189 # r55847
            jump morte_dispose


# s576 # say55848
label morte_s576: # -
    nr '"Méchanus ? Rasoir dans tous les sens du terme, chef. Imagine un plan rempli de modrones et de gros engrenages qui tournent… Et tu as le magnifique et PASSIONNANT plan de Méchanus. Trop de lois, trop tatillon. Un endroit qui viendrait même pas à l„idée, surtout pas pour le visiter."'

    if morteLogic.s576_condition():
        $ morteLogic.s576_action()
        jump grace_s184  # EXTERN
    menu:
        '"Nordom, qu„est-ce que tu entendais tout à l“heure par „origine nulle“ ?"' if morteLogic.r55849_condition():
            # a1190 # r55849
            jump nordom_s65  # EXTERN

        '"Peu importe, Morte. J„en ai assez entendu. Allons-y."' if morteLogic.r55850_condition():
            # a1191 # r55850
            jump morte_dispose


# s577 # say55855
label morte_s577: # -
    nr '"Excuse-MOI mademoiselle la Prêtresse de Piété, mais Méchanus EST l„endroit le plus rasoir de l“univers… La seule chose qui pourrait le rendre intéressant, ce serait *ta* visite…" Morte lève les yeux au ciel. "Mais j„ai le sentiment que même *ça*, ça perdrait de son charme au bout d“un moment."'

    menu:
        '"Nordom, qu„est-ce que tu entendais tout à l“heure par „origine nulle“ ?"':
            # a1192 # r55857
            jump nordom_s65  # EXTERN

        '"Peu importe, Morte. J„en ai assez entendu. Allons-y."':
            # a1193 # r55858
            jump morte_dispose


# s578 # say55860
label morte_s578: # -
    nr '"Tous les modrones font partie de ce „bassin“, chef, une sorte de grosse banque d„énergie… Quand y a un modrone qui meurt, l“énergie qu„il a fallu pour le faire est récupérée dans la banque et un nouveau émerge. Le problème… c“est que si un modrone pète un peu les plombs, il coupe en quelque sorte ce lien, mais conserve un peu d„énergie."'

    if morteLogic.s578_condition():
        jump grace_s186  # EXTERN
    menu:
        '"Alors… Nordom, ce Méchanus est une source d„énergie ?':
            # a1194 # r55862
            jump nordom_s67  # EXTERN

        '"Je vois. Nordom, j„ai encore quelques questions à te poser…"':
            # a1195 # r55864
            jump nordom_s74  # EXTERN

        '"C„est tout ce que je voulais savoir. Perdons pas de temps."':
            # a1196 # r55865
            jump morte_dispose


# s579 # say55867
label morte_s579: # -
    nr 'Morte foudroie Tombée-en-Disgrâce du regard. "Cela ne te *gêne* pas ? La réponse était complète, merci. C„est *moi* la source d“informations ici, PAS toi, d„accord ?"'

    jump grace_s187  # EXTERN


# s580 # say55870
label morte_s580: # -
    nr '"Oh, *je* vois ! Peut-être que si j„étais une succube, tu prêterais plus d“attention à MES paroles, c„est ça ? Peut-être que si je montrais un petit morceau de peau de temps à autre, j“aurais le droit au respect, hein ? Tout cela est bien superficiel, chef ! Tiens, je devrais…"'

    jump grace_s191  # EXTERN


# s581 # say55871
label morte_s581: # -
    nr 'NŒUD NUL'

    jump morte_dispose


# s582 # say55873
label morte_s582: # -
    nr '"Voyez-vous ça ! T„as entendu, chef ?! Ce que la succube a dit ? Elle a raison. Je suis plus facile à comprendre… je “connais mieux la chanson„, tu vois ce que je veux dire ? Si je ne m“abuse, vous avez besoin de mes services ?"'

    menu:
        '"D„accord, et j“ai donc encore une question : vous dites tous les deux que Nordom fait partie de cette Source mais qu„il en est coupé. Et quand un modrone meurt, il est réabsorbé. Nordom aussi ?"' if morteLogic.r55875_condition():
            # a1197 # r55875
            jump morte_s583

        '"Je n„ai jamais dit le contraire, Morte. Alors… Nordom, cette source d“énergie dont tu as parlé… elle vient de Méchanus "':
            # a1198 # r55876
            jump nordom_s67  # EXTERN

        '"D„accord.  Nordom, j“ai encore quelques questions à te poser…"':
            # a1199 # r55877
            jump nordom_s74  # EXTERN

        '"C„est tout ce que je voulais savoir. Perdons pas de temps."':
            # a1200 # r55879
            jump morte_dispose


# s583 # say55882
label morte_s583: # from 582.0
    nr 'Morte fait „oui“ de la tête.'

    menu:
        '"Et s„il meurt, un autre Nordom est créé."':
            # a1201 # r55884
            jump morte_s584


# s584 # say55886
label morte_s584: # from 583.0
    nr '"Euh… non."'

    menu:
        '"Alors, que se passe-t-il ?"':
            # a1202 # r55887
            jump morte_s585


# s585 # say55890
label morte_s585: # from 584.0
    nr '"Et bien, ils prendront son énergie, chef, et ils cracheront un autre modrone, mais ce ne sera pas Nordom, parce que ce n„est plus *vraiment* un modrone ; il a en lui trop de choses des plans. Ils feront un remplaçant non-Nordom."'

    menu:
        '"Alors… en devenant renégat, il est devenu… mortel ?"':
            # a1203 # r55892
            jump morte_s586

        '"D„accord.  Nordom, j“ai encore quelques questions à te poser…"':
            # a1204 # r55894
            jump nordom_s74  # EXTERN

        '"C„est tout ce que je voulais savoir. Perdons pas de temps."':
            # a1205 # r55895
            jump morte_dispose


# s586 # say55897
label morte_s586: # from 585.0
    nr 'Morte se tait un instant. "Ma foi… oui, on peut voir les choses comme ça. Je veux dire, s„il n“avait pas eu sa petite rébellion de renégat, il serait parfait… S„il mourait, un autre modrone apparaîtrait, exactement comme lui. Mais comme il est maintenant “à l„envers“… eh bien, cette partie va être perdue quand il mourra."'

    menu:
        '"D„accord.  Nordom, j“ai encore quelques questions à te poser…"':
            # a1206 # r55898
            jump nordom_s74  # EXTERN

        '"C„est tout ce que je voulais savoir. Perdons pas de temps."':
            # a1207 # r55900
            jump nordom_s74  # EXTERN


# s587 # say55901
label morte_s587: # -
    nr '"Aïïïïïïeee ! Pour l„amour des Puissances et de ma raison, arrête ! Il va péter une manivelle si tu continues à lui demander ça !"'

    menu:
        '"C„est un peu *ça* le but de l“opération, Morte."':
            # a1208 # r55902
            $ morteLogic.r55902_action()
            jump morte_s588

        '"Euh, je voulais connaître la réponse, et il commençait à me la donner."':
            # a1209 # r55905
            jump morte_s589

        '"Peu importe. J„ai encore quelques questions à poser à Nordom…"':
            # a1210 # r55906
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."':
            # a1211 # r55907
            jump morte_dispose


# s588 # say55909
label morte_s588: # from 587.0
    nr '"Oh." Morte sourit de toutes ses dents. "Tu aurais pu DIRE quelque chose. Bref, poursuis. Bien sûr…" Morte fait *cliqueter* ses dents, imitant Nordom. "Si tu veux savoir des choses sur les modrones, demande-MOI."'

    menu:
        '"D„accord, Morte… Que peux-tu me dire des modrones ?"':
            # a1212 # r55910
            jump morte_s590

        '"Peu importe. J„ai encore quelques questions à poser à Nordom…"':
            # a1213 # r55912
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."':
            # a1214 # r55913
            jump morte_dispose


# s589 # say55914
label morte_s589: # from 587.1
    nr '"Écoute, chef, les modrones NORMAUX comprennent quasiment rien au-delà de leurs tâches élémentaires, et cet idiot de polygone sort tout droit des plans. Alors, va pas embrouiller le cube, d„accord ? Du moins, pas tant qu“il est armé. Si t„as des questions sur les modrones, demande-moi, pas à lui."'

    menu:
        '"D„accord, Morte… Que peux-tu me dire des modrones ?"':
            # a1215 # r55915
            jump morte_s590

        '"Peu importe. J„ai encore quelques questions à poser à Nordom…"':
            # a1216 # r55917
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."':
            # a1217 # r55918
            jump morte_dispose


# s590 # say55921
label morte_s590: # from 588.0 589.0
    nr '"C„est comme ça, chef : les modrones sont ces formes géométriques idiotes qui se déplacent avec un bruit de ferraille sur leur plan d“origine, Méchanus… Des as du rangement, de l„ordre, qui voudraient rendre le RESTE du multivers à leur image. C“est pour ça qu„ils sont tellement nuisibles."'

    menu:
        '"Quel mal y a-t-il à vouloir mettre de l„ordre dans le multivers ?"':
            # a1218 # r55923
            jump morte_s592

        '"Qu„est-ce que c“est, Méchanus ?"':
            # a1219 # r55925
            $ morteLogic.r55925_action()
            jump morte_s591

        '"Peu importe. J„ai encore quelques questions à poser à Nordom…"':
            # a1220 # r55926
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."':
            # a1221 # r55928
            jump morte_dispose


# s591 # say55930
label morte_s591: # from 590.1
    nr '"C„est le plan d“où viennent tous ces automates. Pose-lui la question, tu vas voir sa réponse. C„est leur foyer, c“est là qu„ils passent leur temps à ranger, à briquer… Et que je te catalogue, et que je te mette *ça* et puis *ça* en ordre, et que je te fasse une loi, et cetera et cetera."'

    menu:
        'Vérité : "Noble objectif, ce me semble ! Quel mal y a-t-il à vouloir mettre de l„ordre dans le multivers ?"':
            # a1222 # r55931
            $ morteLogic.r55931_action()
            jump morte_s592

        '"Ça n„a pas l“air de te réjouir outre mesure."':
            # a1223 # r55935
            jump morte_s592

        '" J„ai encore quelques questions à poser à Nordom…"':
            # a1224 # r55936
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."':
            # a1225 # r55937
            jump morte_dispose


# s592 # say55938
label morte_s592: # from 590.0 591.0 591.1
    nr 'Morte jette un coup d„œil à Nordom, qui lève son arbalète gauche à hauteur de la tête, comme s“il l„écoutait.'

    jump morte_s593


# s593 # say55940
label morte_s593: # from 592.0
    nr '"Parce que, chef, le chaos a sa juste place. Si tout était comme un *modrone* voit les choses, ce serait pas vraiment une vie… En tout cas, pas une vie que j„aurais envie de vivre. Ce qu“ils veulent, c„est tout *structurer*. Pouahhh."'

    menu:
        'Vérité : "Entièrement d„accord ; le chaos a sa place… trop de lois et on stagnerait tous. Dis, j“ai encore quelques questions à poser à Nordom…"':
            # a1226 # r55941
            $ morteLogic.r55941_action()
            jump nordom_s74  # EXTERN

        '"Je vois. Dis, j„ai encore quelques questions pour Nordom…"':
            # a1227 # r55942
            jump nordom_s74  # EXTERN

        '"D„accord, d“accord. Perdons pas de temps."':
            # a1228 # r55944
            jump morte_dispose


# s594 # say56029
label morte_s594: # -
    nr '"*J„aime* son odeur. Un délice."'

    jump fhjull_s27  # EXTERN


# s595 # say56030
label morte_s595: # -
    nr '"Minute, chef… Baator, ça sent MAUVAIS. Ce fiélon nous cache certainement quelque chose… Et même s„il y a un “Pilier des Crânes„, y aura bien quelqu“un d„autre qui sait comment atteindre la Forteresse *sans* passer par l“un des plus dangereux plans du multivers."'

    menu:
        '"Quels sont tes desseins, Langue-fourchue ?"':
            # a1229 # r56031
            jump fhjull_s88  # EXTERN

        '"Pourquoi tu veux pas aller là-bas, Morte ?"':
            # a1230 # r56032
            jump morte_s596


# s596 # say56033
label morte_s596: # from 595.1
    nr '"C„est un lieu dangereux, chef. J“aimerais autant pas y aller. Je connais déjà et c„est pas beau. Compris ?"'

    menu:
        '"Nous parlerons de ça plus tard, Langue-fourchue, j„ai quelques questions…"':
            # a1231 # r56034
            jump fhjull_s46  # EXTERN


# s597 # say56936
label morte_s597: # -
    nr '"Ce type est *partout* !"'

    menu:
        '"Oui, mais il nous a aidés. Allons-y."':
            # a1232 # r56937
            jump morte_dispose


# s598 # say59827
label morte_s598: # -
    nr '(NULL NODE)'

    jump morte_dispose


# s599 # say60950
label morte_s599: # -
    nr '"Hé, c„est pas si mal d“être mort. Vois le bon côté des choses… au moins, tu n„as plus à t“exprimer avec ce charabia ridicule."'

    menu:
        '"Du calme, Morte. Je vais m„en occuper. Tu peux me dire ce qui s“est passé ?"':
            # a1233 # r61111
            jump morte_dispose

        '"Laisse tomber. Je vais te laisser tranquille."':
            # a1234 # r61112
            jump morte_dispose


# s600 # say61408
label morte_s600: # -
    nr '"Euh… dis donc, chef… qu„est-ce que tu en penses ? Tu prêterais un peu de jonc au vieux Morte ? Ça fait un sacré bout de temps, tu sais…"'

    menu:
        '"Oui, pourquoi pas ? Mademoiselle ?"' if morteLogic.r61411_condition():
            # a1235 # r61411
            jump ucho_s9  # EXTERN

        '"Navré, Morte. On n„a pas assez de cuivre. Allons-y."' if morteLogic.r61412_condition():
            # a1236 # r61412
            jump morte_dispose

        '"Il faut qu„on y aille, Morte. Au revoir, mademoiselle."':
            # a1237 # r61413
            jump morte_dispose


# s601 # say61409
label morte_s601: # -
    nr '"Entendu ! Merci, chef !" Il se détourne pour suivre la femme.'

    menu:
        'Attends son retour.':
            # a1238 # r61414
            $ morteLogic.r61414_action()
            jump ucho_s10  # EXTERN


# s602 # say61410
label morte_s602: # -
    nr 'Morte paraît à peine remarquer ta présence ; il alterne entre des petits rires et des soupirs satisfaits.'

    menu:
        '"Entendu… Je gage que tout s„est bien passé. Au revoir, mademoiselle."':
            # a1239 # r61415
            jump morte_dispose


# s603 # say61481
label morte_s603: # -
    nr '"Moi ? Je suis la tête de Vecna."~ [MRT562]'

    $ morteLogic.s603_action()
    jump morte_dispose


# s604 # say61482
label morte_s604: # -
    nr '"Les dieux sont miséricordieux !"~ [MRT485]'

    $ morteLogic.s604_action()
    jump morte_dispose


# s605 # say61483
label morte_s605: # -
    nr '"C„est une longue histoire dans laquelle la Tête de Vecna joue un rôle. Je ne veux pas en parler."~ [MRT559A]'

    jump grace_s3  # EXTERN


# s606 # say61484
label morte_s606: # -
    nr '"Est-ce qu„on ne pourrait pas *changer* de sujet ? Merci."~ [MRT559B]'

    $ morteLogic.s606_action()
    jump morte_dispose


# s607 # say61485
label morte_s607: # -
    nr '"Moi ? *lé pétit Morté*."~ [MRT560]'

    $ morteLogic.s607_action()
    jump morte_dispose


# s608 # say61486
label morte_s608: # -
    nr '"Que dire ? Je suis un *Mémento Morte*."~ [MRT561]'

    $ morteLogic.s608_action()
    jump morte_dispose


# s609 # say61487
label morte_s609: # -
    nr '"À condition de pouvoir poser ma tête sur tes coussins."~ [MRT486A]'

    jump grace_s7  # EXTERN


# s610 # say61488
label morte_s610: # -
    nr '"Rien ! Rien du tout. Du tout."~ [MRT486B]'

    $ morteLogic.s610_action()
    jump morte_dispose


# s611 # say61489
label morte_s611: # -
    nr '"Arf ! Arf ! Hi ! Hi ! Hi !"~ [MRT484]'

    $ morteLogic.s611_action()
    jump morte_dispose


# s612 # say62890
label morte_s612: # -
    nr '"C„est une tanar“ri… une succube, chef."'

    jump grace_s213  # EXTERN


# s613 # say63454
label morte_s613: # -
    nr '"Je ne peux me tenir sur rien. Rapport aux jambes, tu vois."~ [MRT482]'

    jump annah_s1  # EXTERN


# s614 # say63455
label morte_s614: # -
    nr '"Je pensais que tu étais belle, mais je me trompais."~ [MRT483]'

    jump annah_s3  # EXTERN


# s615 # say63456
label morte_s615: # -
    nr '"J„ai cessé de respirer la première fois que je t“ai vue, fiélonne."~ [MRT524]'

    $ morteLogic.s615_action()
    jump morte_dispose


# s616 # say63457
label morte_s616: # -
    nr '"Tu sais, j„ai un NOM."~ [MRT526]'

    jump annah_s6  # EXTERN


# s617 # say63458
label morte_s617: # -
    nr '"Tiens, c„est intéressant que tu en parles… pas plus tard que l“autre jour, je leur ai demandé combien ils m„offriraient pour toi."~ [MRT531]'

    jump annah_s8  # EXTERN


# s618 # say63459
label morte_s618: # -
    nr '"Tu sais, tu serais tellement plus charmante si tu te taisais."~ [MRT530]'

    jump annah_s10  # EXTERN


# s619 # say63460
label morte_s619: # -
    nr '"Mais mon cœur est déjà à toi, fiélonne."~ [MRT532]'

    jump annah_s12  # EXTERN


# s620 # say63462
label morte_s620: # -
    nr '"Il y a pire manière de s„en aller."~ [MRT525]'

    $ morteLogic.s620_action()
    jump morte_dispose


# s621 # say63463
label morte_s621: # -
    nr '"Tu sais, *tu* es en partie fiélon."~ [MRT533A]'

    jump annah_s15  # EXTERN


# s622 # say63464
label morte_s622: # -
    nr '"De là où je flotte, elle a l„air bien."~ [MRT533B]'

    $ morteLogic.s622_action()
    jump morte_dispose


# s623 # say63666
label morte_s623: # -
    nr '"J„ai remarqué. Pourquoi ne fais-tu pas part de ton intuition au chef, hein ?"~ [MRT563]'

    $ morteLogic.s623_action()
    jump morte_dispose


# s624 # say63667
label morte_s624: # -
    nr '"Flatulence, stupide polygone."~ [MRT468A]'

    jump nordom_s2  # EXTERN


# s625 # say63668
label morte_s625: # -
    nr '"Alors, pourquoi n„essaies-tu pas d“être plus „efficace“ dès maintenant, le super polygone."~ [MRT469A]'

    $ morteLogic.s625_action()
    jump morte_dispose


# s626 # say63669
label morte_s626: # -
    nr '"Je, euh, je n„ai jamais dit ça !"~ [MRT470B]'

    jump annah_s315  # EXTERN


# s627 # say63670
label morte_s627: # -
    nr '"Annah porte-t-elle encore des vêtements ?"~ [MRT565A]'

    jump nordom_s6  # EXTERN


# s628 # say63671
label morte_s628: # -
    nr '"Alors, la réponse est oui."~ [MRT565B]'

    $ morteLogic.s628_action()
    jump morte_dispose


# s629 # say63672
label morte_s629: # -
    nr '"Tu vas bientôt en avoir dix-neuf si tu ne fermes pas ton clapet."~ [MRT564]'

    $ morteLogic.s629_action()
    jump morte_dispose


# s630 # say63673
label morte_s630: # -
    nr '"Si cela signifie que tu obéisses à chacun de mes ordres sans poser de question, alors la réponse est oui."~ [MRT569A]'

    jump nordom_s9  # EXTERN


# s631 # say63674
label morte_s631: # -
    nr '"Bienvenue sur les plans, gamin."~ [MRT569B]'

    $ morteLogic.s631_action()
    jump morte_dispose


# s632 # say63675
label morte_s632: # -
    nr '"Tombée-en-Disgrâce est-elle nue ?"~ [MRT568A]'

    jump nordom_s11  # EXTERN


# s633 # say63676
label morte_s633: # -
    nr '"Alors, la réponse à ta question est oui."~ [MRT568B]'

    $ morteLogic.s633_action()
    jump morte_dispose


# s634 # say63677
label morte_s634: # -
    nr '"Annah, Tombée-en-Disgrâce et moi-même nous baignant dans un bain de boue Cimmérien."~ [MRT571A]'

    jump nordom_s13  # EXTERN


# s635 # say63678
label morte_s635: # -
    nr '"Hé. Certaines personnes lisent les dictionnaires, d„autres les écrivent."~ [MRT572B]'

    $ morteLogic.s635_action()
    jump morte_dispose


# s636 # say63679
label morte_s636: # -
    nr '"Annah, une bouteille d„ambre de feu de Furyondie et une suite à la Salle des Fêtes."~ [MRT573]'

    jump nordom_s15  # EXTERN


# s637 # say63680
label morte_s637: # -
    nr '"Oh, la *ferme* !"~ [MRT471D]'

    jump nordom_s17  # EXTERN


# s638 # say63681
label morte_s638: # -
    nr '"Va donc embêter quelqu„un d“autre, espèce de stupide boîte à calcul."~ [MRT576A]'

    jump nordom_s19  # EXTERN


# s639 # say63682
label morte_s639: # -
    nr '"Je ne sais pas, d„accord ? Il est juste… il est… tu sais… il est parti."~ [MRT576B]'

    jump nordom_s20  # EXTERN


# s640 # say63683
label morte_s640: # -
    nr '"Je vais te montrer, si tu ne fermes pas ton clapet."~ [MRT576C]'

    $ morteLogic.s640_action()
    jump morte_dispose


# s641 # say63684
label morte_s641: # -
    nr '"Va donc embrasser un piège à ours."~ [MRT575A]'

    jump grace_s373  # EXTERN


# s642 # say63685
label morte_s642: # -
    nr '"Crois-moi, Annah aurait bien besoin d„un baiser."~ [MRT575B]'

    $ morteLogic.s642_action()
    jump morte_dispose


# s643 # say63686
label morte_s643: # -
    nr '::il siffle innocemment::~ [MRT472A]'

    $ morteLogic.s643_action()
    jump morte_dispose


# s644 # say63688
label morte_s644: # -
    nr '"Personne ! Personne ne lui a dit !"~ [MRT473D]'

    $ morteLogic.s644_action()
    jump morte_dispose


# s645 # say63689
label morte_s645: # -
    nr '"C„est purement volontaire de leur part, espèce d“idiot. Euh… pour ce que j„en sais."~ [MRT577]'

    $ morteLogic.s645_action()
    jump morte_dispose


# s646 # say63858
label morte_s646: # -
    nr '"Fais-moi confiance, tu ne l„as jamais rencontré."~ [MRT475AA]'

    jump vhailor_s1  # EXTERN


# s647 # say64990
label morte_s647: # -
    nr '"Une minute, chef… regarde un peu ça." Tu baisses les yeux et remarques des traces de pas boueuses qui mènent à l„arche… et ne la contournent pas. "Il y a certainement un portail ici, ou quelque chose de ce genre."'

    menu:
        '"Un portail ? Comment l„ouvrir ?"':
            # a1240 # r64991
            jump morte_s648

        '"Peut-être. En route."':
            # a1241 # r64993
            jump morte_dispose


# s648 # say64992
label morte_s648: # from 647.0
    nr '"J„en sais rien, chef. J“imagine que c„est une clé commune : regarde comme ce passage est emprunté ! Peut-être que la plèbe qui vit ici pourrait te renseigner…"'

    menu:
        '"Je vais demander. En route."':
            # a1242 # r64994
            jump morte_dispose


# s649 # say65552
label morte_s649: # from 329.0 729.0
    nr '"Oh, *allez* chef. Ne me dis pas que tu as encore oublié."'

    menu:
        '"Il faut juste que je me rafraîchisse la mémoire."':
            # a1243 # r65553
            jump morte_s650

        '"Non, je pense que je veux écouter *toute* l„histoire cette fois. Vas-y, rafraîchis ma mémoire."' if morteLogic.r65554_condition():
            # a1244 # r65554
            jump morte_s650

        '"Bon, peu importe. J„ai d“autres questions…"':
            # a1245 # r65555
            jump morte_s329

        '"Alors laisse tomber. On y va."':
            # a1246 # r65556
            jump morte_dispose


# s650 # say65557
label morte_s650: # from 649.0 649.1
    nr '"Quelque chose me dit que je vais entendre ÇA souvent." Morte s„éclaircit la voix. "Voyons…"  “Je sais que tu as l„impression d“avoir bu plusieurs barils d„eau du Styx, mais il faut te RESSAISIR. Parmi tes biens, tu dois avoir un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les dernières notes de la chanson, s“il n„est pas déjà inscrit dans le livre des morts.“'

    menu:
        '"Pharod… hmmm. Continue."' if morteLogic.r65558_condition():
            # a1247 # r65558
            jump morte_s651

        '"Continue."' if morteLogic.r65559_condition():
            # a1248 # r65559
            jump morte_s651

        '"Peu importe. J„ai d“autres questions…"':
            # a1249 # r65560
            jump morte_s329

        '"Laisse. J„en ai assez entendu. On y va."':
            # a1250 # r65561
            jump morte_dispose


# s651 # say65562
label morte_s651: # from 650.0 650.1
    nr '"Oui, oui, attends." Morte s„interrompt un instant. "D“accord, voilà la fin…"  „Ne perds pas le journal ou on se retrouvera encore à traverser le Styx. Et quoi que tu fasses, NE raconte à personne QUI tu es et CE qui t“arrive, ou on t„enverra faire un rapide pèlerinage vers le crématorium. Fais ce que je te dis : LIS le journal, puis TROUVE Pharod.“'

    if morteLogic.s651_condition():
        jump morte_s653
    menu:
        '"Continue. Qu„est-ce que ça dit après ?"' if morteLogic.r65566_condition():
            # a1251 # r65566
            jump morte_s652

        '"Et il n„y avait pas de journal sur moi quand je me suis réveillé ?"' if morteLogic.r65565_condition():
            # a1252 # r65565
            jump morte_s682

        '"Bon, très bien. J„ai d“autres questions…"':
            # a1253 # r65567
            jump morte_s329

        '"Laisse. J„en ai assez entendu. On y va."':
            # a1254 # r65568
            jump morte_dispose


# s652 # say65563
label morte_s652: # from 651.1
    nr '"De quoi tu parles, chef ? C„est tout."'

    menu:
        '"Et pour „Ne fais pas confiance au crâne“ ?"' if morteLogic.r65569_condition():
            # a1255 # r65569
            $ morteLogic.r65569_action()
            jump morte_s654

        '"Et pour „Ne fais pas confiance au crâne“ ?"' if morteLogic.r65570_condition():
            # a1256 # r65570
            jump morte_s654

        '"Bon, peu importe. J„ai d“autres questions…"':
            # a1257 # r65571
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1258 # r65572
            jump morte_dispose


# s653 # say65564
label morte_s653: # from 651.0
    nr '"Et bien sûr, cette partie à la fin qui parle de ne pas faire confiance aux crânes."'

    menu:
        '"As ton avis, que signifie cette partie ? Tu penses qu„il s“agit de *toi* ?"':
            # a1259 # r65574
            jump morte_s655

        '"Bon, peu importe. J„ai d“autres questions…"':
            # a1260 # r65575
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1261 # r65576
            jump morte_dispose


# s654 # say65577
label morte_s654: # from 329.4 652.0 652.1 729.4
    nr '"Oh… *cette* partie à la fin ? Bah, je me suis dit que ce n„était pas important et je n“ai donc pas lu la ligne à voix haute."'

    menu:
        '"Oh, vraiment ? Et à ton avis, qu„est-ce que ça signifie ? Tu penses qu“il s„agit de *toi* ?"':
            # a1262 # r65578
            jump morte_s655

        '"Bon, peu importe. J„ai d“autres questions…"':
            # a1263 # r65579
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1264 # r65580
            jump morte_dispose


# s655 # say65581
label morte_s655: # from 653.0 654.0
    nr '"Ça m„étonnerait. J“veux dire, tu peux *me* faire confiance, n„est-ce pas, chef ?"'

    menu:
        '"Serais-tu en train de me *mentir*, Morte ?"':
            # a1265 # r65582
            jump morte_s656

        '"Bon, peu importe. J„ai d“autres questions…"':
            # a1266 # r65583
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1267 # r65584
            jump morte_dispose


# s656 # say65585
label morte_s656: # from 655.0
    nr '"Non ! Allez, c„est quoi ton problème, chef ? Je n“ai jamais été de mauvais conseil jusqu„ici."'

    menu:
        '"*Pas encore…* Tu ne m„as pas lu cette ligne et je n“aime pas ça ; et je voudrais savoir ce que tu as *encore* négligé de mentionner depuis que nous voyageons ensemble."':
            # a1268 # r65587
            jump morte_s657

        '"Bon, peu importe. J„ai d“autres questions…"':
            # a1269 # r65586
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1270 # r65588
            jump morte_dispose


# s657 # say65589
label morte_s657: # from 656.0
    nr '"Rien ! Je t„ai tout dit… enfin, PRESQUE tout, mais rien de *dangereux*, tu sais."'

    menu:
        '"S„il y a QUELQUE CHOSE d“autre, je pense qu„il vaut mieux que tu me le dises tout de suite."':
            # a1271 # r65590
            jump morte_s658

        '"Bon, peu importe. J„ai d“autres questions…"':
            # a1272 # r65591
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1273 # r65592
            jump morte_dispose


# s658 # say65593
label morte_s658: # from 657.0
    nr '"Chef, sérieusement, il n„y a rien d“autre. Je ne te cache rien."'

    menu:
        '"Bon, très bien, Morte. J„ai d“autres questions…"':
            # a1274 # r65594
            jump morte_s329

        '"J„espère que non. Allons-y."':
            # a1275 # r65595
            jump morte_dispose


# s659 # say65596
label morte_s659: # from 329.1 729.1
    nr '"Sigil est une ville en forme d„anneau située au sommet d“une aiguille infiniment grande et on prétend qu„elle est au centre des plans… Bien sûr, *comment* pourrait-elle être au sommet d“une aiguille infiniment grande *et* être au centre des plans ? Cela soulève quelques questions."'

    menu:
        '"Autre chose ?"':
            # a1276 # r65597
            jump morte_s660

        '"Peu importe. J„ai d“autres questions…"':
            # a1277 # r65598
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."':
            # a1278 # r65599
            jump morte_dispose


# s660 # say65600
label morte_s660: # from 659.0
    nr '"On appelle Sigil la „Cité des Portes“, principalement parce qu„elle possède une MULTITUDE de portes invisibles pour y entrer ou en sortir : une arche, un encadrement de porte, un cercle de tonneau, une étagère de livres ou une fenêtre ouverte peut être un portail si les conditions sont bonnes. Tout dépend si tu as la clé pour l“ouvrir."'

    menu:
        '"La clé ?"':
            # a1279 # r65601
            jump morte_s661

        '"Peu importe. J„ai d“autres questions…"':
            # a1280 # r65602
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."':
            # a1281 # r65603
            jump morte_dispose


# s661 # say65604
label morte_s661: # from 660.0
    nr '"Bon, je pense que comme ça tu vas comprendre : la plupart des portails sont en état de „sommeil“, tu vois ? Tu peux les franchir, passer à côté, au-dessus, mais rien ne se produit. Et bien, chaque portail a quelque chose pour le „réveiller“. Ça peut être un air qu„il faut fredonner, une miche de pain Bytopien vieux d“une semaine, ou encore te souvenir comment était ton premier baiser, etc. BOUM : le portail met les gaz et tu peux sauter dedans pour te rendre de l„autre côté."'

    menu:
        '"Où, par exemple?"':
            # a1282 # r65605
            jump morte_s662

        '"Peu importe. J„ai d“autres questions…"':
            # a1283 # r65606
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."':
            # a1284 # r65607
            jump morte_dispose


# s662 # say65608
label morte_s662: # from 661.0
    nr '"Partout, chef, vraiment. Tous les endroits imaginables ont leur portail. C„est pour cela que Sigil est si connue dans les plans."'

    menu:
        '"Je vois. J„ai d“autres questions…"':
            # a1285 # r65609
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."':
            # a1286 # r65610
            jump morte_dispose


# s663 # say65611
label morte_s663: # from 329.2 729.2
    nr '"Hé ! Bavarder est ce que je sais faire de mieux." Il fait grincer ses dents pendant un moment puis affiche un rictus. "Eh ? Eh ?"'

    menu:
        '"Oh ! Je suis heureux de l„entendre…"':
            # a1287 # r65612
            jump morte_s664

        '"Oui, je suis au courant pour la Litanie d„injures, Morte. Je suis plus curieux de savoir ce que tu as eu lorsque tu étais chez Lothar."' if morteLogic.r65613_condition():
            # a1288 # r65613
            jump morte_s667

        '"J„ai d“autres questions…"':
            # a1289 # r65614
            jump morte_s329

        '"Peu importe. Allons-y."':
            # a1290 # r65615
            jump morte_dispose


# s664 # say65616
label morte_s664: # from 663.0
    nr '"Non, mais sérieusement, chef. J„ai un truc pour bavarder avec quelqu“un. Je peux vraiment accaparer son attention, si tu vois ce que je veux dire. Je connais des insultes, des grossièretés, des trucs à faire dresser les cheveux sur la tête, tu vois ?"'

    menu:
        '"Euh… Comment ça, c„est utile ?"':
            # a1291 # r65617
            jump morte_s665

        '"J„ai d“autres questions…"':
            # a1292 # r65618
            jump morte_s329

        '"Peu importe. Allons-y."':
            # a1293 # r65619
            jump morte_dispose


# s665 # say65620
label morte_s665: # from 664.0
    nr '"C„est l“un de mes nombreux talents… j„appelle ça ma “Litanie d„injures“. Tu vois, quelquefois je peux vraiment accaparer l„attention de quelqu“un, rien qu„en faisant la *bonne* remarque. Bien sûr, je dois généralement m“enfuir en courant après… mais tu as compris."'

    menu:
        '"Comment ça fonctionne ?"':
            # a1294 # r65621
            $ morteLogic.r65621_action()
            jump morte_s666

        '"Autre chose ?"' if morteLogic.r65622_condition():
            # a1295 # r65622
            jump morte_s667

        '"J„ai d“autres questions…"':
            # a1296 # r65623
            jump morte_s329

        '"Hmmm. Ça peut être utile. Allons-y."':
            # a1297 # r65624
            jump morte_dispose


# s666 # say65626
label morte_s666: # from 329.3 665.0 729.3
    nr '"Et bien, je peux déblatérer des insultes à quelqu„un jusqu“à ce qu„il devienne furieux et me chasse."  ^NREMARQUE : Morte a une faculté nommée “Litanie d„injures“. C„est une capacité non magique ; si la cible n“arrive pas à résister, elle subit un malus dans sa classe d„armure, attaque et essaiera à tout prix d“engager un combat au corps à corps avec Morte. Plus Morte entend d„insultes et meilleur devient sa Litanie d“injures. La Litanie d„injures est TRÈS EFFICACE contre les mages.^-'

    menu:
        '"Peux-tu faire autre chose ?"' if morteLogic.r65627_condition():
            # a1298 # r65627
            jump morte_s667

        '"J„ai d“autres questions…"':
            # a1299 # r65628
            jump morte_s329

        '"Hmmm. Ça peut être utile. Allons-y."':
            # a1300 # r65629
            jump morte_dispose


# s667 # say65630
label morte_s667: # from 663.1 665.1 666.0
    nr '"Et bien, je me suis fait des amis pendant que j„attendais sagement sur l“étagère, chez Lothar, que tu me mettes en liberté provisoire. Au fait, merci d„avoir pris ton temps. Ils m“ont dit que si j„avais besoin d“aide, je pouvais passer les voir."'

    menu:
        '"Amis ? Que veux-tu dire ?"':
            # a1301 # r65631
            $ morteLogic.j65637_s667_r65631_action()
            jump morte_s668

        '"J„ai d“autres questions…"':
            # a1302 # r65632
            jump morte_s329

        '"Heureux de l„entendre alors. Allons-y."':
            # a1303 # r65633
            jump morte_dispose


# s668 # say65634
label morte_s668: # from 667.0
    nr '"Ben, je n„ai qu“à siffler et ils arrivent. Ce sont de vrais lascars et aussi des *traîtres*."  ^NREMARQUE : Morte possède dorénavant une capacité spéciale appelée le „Gang de crânes“. Lorsqu„il l“invoque, il peut faire apparaître une horde de crânes qui vont mordre un opposant de nombreuses fois. La force et les dégâts causés par les crânes varient en fonction du niveau de Morte et ce pouvoir ne peut être utilisé qu„un nombre de fois limité par jour.^-'

    menu:
        '"Je vois. J„ai d“autres questions…"':
            # a1304 # r65635
            jump morte_s329

        '"Heureux de l„entendre alors. Allons-y."':
            # a1305 # r65636
            jump morte_dispose


# s669 # say65638
label morte_s669: # from 329.5 729.5
    nr '"Et bien, voilà comment *je* vois les choses…"'

    menu:
        '"Continue…"' if morteLogic.r65639_condition():
            # a1306 # r65639
            jump morte_s671

        '"Continue…"' if morteLogic.r65640_condition():
            # a1307 # r65640
            jump morte_s672

        '"Continue…"' if morteLogic.r65641_condition():
            # a1308 # r65641
            jump morte_s673

        '"Continue…"' if morteLogic.r65642_condition():
            # a1309 # r65642
            jump morte_s670

        '"Continue…"' if morteLogic.r65643_condition():
            # a1310 # r65643
            jump morte_s674

        '"Continue…"' if morteLogic.r65644_condition():
            # a1311 # r65644
            jump morte_s675

        '"Continue…"' if morteLogic.r65645_condition():
            # a1312 # r65645
            jump morte_s677

        '"Continue…"' if morteLogic.r65646_condition():
            # a1313 # r65646
            jump morte_s680

        '"Continue…"' if morteLogic.r65647_condition():
            # a1314 # r65647
            jump morte_s681

        '"Peu importe. J„ai d“autres questions…"':
            # a1315 # r65648
            jump morte_s329

        '"Tout bien réfléchi, laisse tomber. Allons-y."':
            # a1316 # r65649
            jump morte_dispose


# s670 # say65650
label morte_s670: # from 669.3
    nr '"Ce que je pense, c„est que c“est ton plan, chef. Je ne peux plus dire grand-chose qui pourrait t„aider."'

    menu:
        '"*Ça* c„est un grand changement. J“ai d„autres questions…"':
            # a1317 # r65651
            jump morte_s329

        '"D„accord. Passons à autre chose alors."':
            # a1318 # r65652
            jump morte_dispose


# s671 # say65653
label morte_s671: # from 669.0
    nr '"Je pense que tu devrais essayer de dénicher ce „Pharod“, où qu„il crèche. Tu n“aurais pas eu ces indications tatouées sur ton dos s„il n“avait pas la moindre idée de ce que tu faisais. Un des habitants de ce secteur DOIT savoir où il se trouve."'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"':
            # a1319 # r65654
            jump morte_s329

        '"D„accord. Continuons à le chercher alors."':
            # a1320 # r65655
            jump morte_dispose


# s672 # say65656
label morte_s672: # from 669.1
    nr '"Moi j„dis qu“on devrait essayer de piquer cette „sphère en bronze“ aussi vite que possible et la rendre au vieux Bègue-béquille."'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"':
            # a1321 # r65657
            jump morte_s329

        '"D„accord. Passons à autre chose alors."':
            # a1322 # r65658
            jump morte_dispose


# s673 # say65659
label morte_s673: # from 669.2
    nr '"Moi j„dis qu“on devrait repérer où ton cadavre a échoué. Peut-être qu„on découvrira comment ton nom a pu entrer dans le livre des morts."'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"':
            # a1323 # r65660
            jump morte_s329

        '"D„accord. Passons à autre chose alors."':
            # a1324 # r65661
            jump morte_dispose


# s674 # say65662
label morte_s674: # from 669.4
    nr '"Moi j„dis qu“on devrait trouver quelqu„un qui en sait plus à ton sujet, et comment ça t“est arrivé. Il doit bien y avoir des lascars dans l„un des Quartiers qui en savent plus sur toi."'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"':
            # a1325 # r65663
            jump morte_s329

        '"D„accord. Passons à autre chose alors."':
            # a1326 # r65664
            jump morte_dispose


# s675 # say65665
label morte_s675: # from 669.5
    nr '"On dirait qu„on va devoir en découvrir plus sur cette guenaude noire, Ravel. Et je dois t“avouer, chef, que je ne suis *pas vraiment* impatient de la trouver. Mais les sages de la Salle des Fêtes et certaines pierres sensorielles pourront peut-être nous en dire plus."'

    menu:
        '"Salle des Fêtes ? Pierres sensorielles ?"' if morteLogic.r65666_condition():
            # a1327 # r65666
            $ morteLogic.j65669_s675_r65666_action()
            jump morte_s676

        '"Bonne remarque. J„ai d“autres questions…"':
            # a1328 # r65667
            jump morte_s329

        '"D„accord. Passons à autre chose alors."':
            # a1329 # r65668
            jump morte_dispose


# s676 # say65670
label morte_s676: # from 675.0
    nr '"Désolé, chef - j„oublie tout le temps que tu as toutes les connaissances d“un primaire complètement béjaune. Tu vois, la Salle des Fêtes est la bicoque principale de la faction des Sensats dans le Quartier des Gratte-Papier. Ils ont des bibliothèques de pierres sensorielles qui stockent les expériences, et ils ont plein de sages, de conférenciers et de mentors qui pourront peut-être nous aider à sortir de l„obscurité et comprendre ce qui se passe avec Ravel."'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"':
            # a1330 # r65671
            jump morte_s329

        '"D„accord. Passons à autre chose alors."':
            # a1331 # r65672
            jump morte_dispose


# s677 # say65673
label morte_s677: # from 669.6
    nr '"Et bien, Ravel s„est fait enfermer. Mais il y a certainement UNE clé et UN portail qui pourrait nous y emmener, si tu veux toujours y aller."'

    menu:
        '"Tu sais ce que pourrait être la clé du dédale ?"' if morteLogic.r65674_condition():
            # a1332 # r65674
            $ morteLogic.j65678_s677_r65674_action()
            jump morte_s678

        '"Tu sais où je peux trouver un portail pour aller dans son dédale ?"':
            # a1333 # r65675
            jump morte_s679

        '"J„ai d“autres questions…"':
            # a1334 # r65676
            jump morte_s329

        '"D„accord. Passons à autre chose alors."':
            # a1335 # r65677
            jump morte_dispose


# s678 # say65679
label morte_s678: # from 677.0
    nr '"Aucune idée. Un „morceau de Ravel“ ? Ça pourrait être n„importe quoi : une de ses verrues desséchées, une de ses œuvres d“art, ou encore un peu de sa bave. C„est trop vague. Mais je parie que QUELQU“UN dans le Quartier des Gratte-Papier sait comment faucher un objet à cette sorcière azimutée. Si on ne trouve personne, on peut toujours aller voir les pierres sensorielles dans la Salle des Fêtes, peut-être que l„une d“entre-elles pourra nous dévoiler quelque chose d„utile."'

    menu:
        '"Tu sais où je peux trouver un portail pour aller dans son dédale ?"':
            # a1336 # r65680
            jump morte_s679

        '"Bonne remarque. J„ai d“autres questions…"':
            # a1337 # r65681
            jump morte_s329

        '"D„accord. Continuons à chercher alors.':
            # a1338 # r65682
            jump morte_dispose


# s679 # say65683
label morte_s679: # from 677.1 678.0
    nr '"J„suis pas trop sûr, chef. Il y a des tonnes de portails à Sigil. Essaie la Salle des Fêtes. Je doute qu“il soit là mais l„une des pierres sensorielles pourra peut-être nous dire quelque chose. Si ça ne marche pas, on n“a qu„à oublier tous ces va et vient et trouver quelqu“un qui nous FABRIQUE un portail."'

    menu:
        '"Très bien. J„ai d“autres questions…"':
            # a1339 # r65684
            jump morte_s329

        '"D„accord. Passons à autre chose alors."':
            # a1340 # r65685
            jump morte_dispose


# s680 # say65686
label morte_s680: # from 669.7
    nr '"Je propose qu„on trouve ce qu“on cherche et qu„on se tire d“ici, chef. Cet endroit me donne la chair de poule et je n„ai même pas de peau. D“accord ?"'

    menu:
        '"C„est vrai. J“ai d„autres questions…"':
            # a1341 # r65687
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1342 # r65688
            jump morte_dispose


# s681 # say65689
label morte_s681: # from 669.8
    nr '"Tu m„as eu, chef. C“est ton plan après tout, je ne fais que te suivre."'

    menu:
        '"C„est vrai. J“ai d„autres questions…"':
            # a1343 # r65690
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1344 # r65691
            jump morte_dispose


# s682 # say65692
label morte_s682: # from 651.2
    nr '"Non… t„étais nu comme un ver. Comme j“te l„ai déjà dit, on dirait que t“as déjà un journal écrit sur le corps."'

    menu:
        '"Et tu es sûr que tu ne connais personne du nom de Pharod ?"' if morteLogic.r65693_condition():
            # a1345 # r65693
            jump morte_s683

        '"C„est vrai. J“ai d„autres questions…"':
            # a1346 # r65694
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1347 # r65695
            jump morte_dispose


# s683 # say65696
label morte_s683: # from 682.0
    nr '"Non. Mais y doit bien y avoir un bige qui saura où le trouver. On va demander aux habitants."'

    menu:
        '"Avant d„y aller, j“ai d„autres questions…"':
            # a1348 # r65697
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1349 # r65698
            jump morte_dispose


# s684 # say65699
label morte_s684: # from 329.6 729.6
    nr '"Ouais, un mimir c„est une encyclopédie flottante. Tu rentres des informations et il en sort d“autres."'

    menu:
        '"Les mimirs ne sont donc pas fabriqués à partir de métal argenté ?"' if morteLogic.r65700_condition():
            # a1350 # r65700
            jump morte_s685

        '"Je vois. J„ai d“autres questions…"':
            # a1351 # r65701
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1352 # r65702
            jump morte_dispose


# s685 # say65703
label morte_s685: # from 684.0
    nr '"Et alors ? peut-être que certains le sont mais pas *moi*. Et il y a des choses plus bizarres que ça dans les plans, chef."'

    menu:
        '"Je ne pense pas que tu sois un mimir, Morte. Qu„est-ce que tu es ?"':
            # a1353 # r65704
            jump morte_s686

        '"Je vois. J„ai d“autres questions…"':
            # a1354 # r65705
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1355 # r65706
            jump morte_dispose


# s686 # say65707
label morte_s686: # from 685.0
    nr '"C„est quoi, cet interrogatoire ? Qu“est-ce que *tu* sais sur les mimirs, de toute façon ?"'

    menu:
        '"J„en sais assez pour pouvoir penser que tu me mens."' if morteLogic.r65708_condition():
            # a1356 # r65708
            jump morte_s687

        '"J„en sais assez pour pouvoir penser que tu me mens. D“abord, la ligne manquante sur mon dos disant de ne pas te faire confiance, et maintenant ça. Qu„est-ce que je suis censé croire ?"' if morteLogic.r65709_condition():
            # a1357 # r65709
            jump morte_s687

        '"Rien, j„imagine. J“ai d„autres questions…"':
            # a1358 # r65710
            $ morteLogic.j65712_s686_r65710_action()
            jump morte_s329

        '"Bon, peu importe. Allons-y."':
            # a1359 # r65711
            $ morteLogic.j65712_s686_r65711_action()
            jump morte_dispose


# s687 # say65713
label morte_s687: # from 686.0 686.1
    nr '"OK, je ne suis *pas* un mimir, mais je sais un tas de trucs et je *pourrais* très bien en être un."'

    menu:
        '"Qu„est-ce que tu *es* ?"':
            # a1360 # r65714
            jump morte_s688

        '"Peu importe. J„ai d“autres questions…"':
            # a1361 # r65715
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1362 # r65716
            jump morte_dispose


# s688 # say65717
label morte_s688: # from 687.0
    nr '"Je suis un crâne flottant qui en connaît un bout."'

    menu:
        '"Et ton odeur de Baator ?"' if morteLogic.r65718_condition():
            # a1363 # r65718
            jump morte_s690

        '"Et ton odeur de Baator ?"' if morteLogic.r65719_condition():
            # a1364 # r65719
            jump morte_s689

        '"Peu importe. J„ai d“autres questions…"':
            # a1365 # r65720
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1366 # r65721
            jump morte_dispose


# s689 # say65722
label morte_s689: # from 688.1
    nr '"Comment est-ce que TOI tu connaîtrais l„odeur de Baator ?!"'

    menu:
        '"Parce que je suis *allé* là-bas, Morte. J„ai marché sur l“Averne."':
            # a1367 # r65723
            jump morte_s691

        '"Peu importe. J„ai d“autres questions…"':
            # a1368 # r65724
            jump morte_s329

        '"Laisse tomber. Allons-y."':
            # a1369 # r65725
            jump morte_dispose


# s690 # say65726
label morte_s690: # from 688.0
    nr '"Comment est-ce que TOI tu connaîtrais l„odeur de Baator ? À moins que… hé ! Tu as parlé de moi avec la tanar“ri, c„est ça ?! Qu“est-ce qu„elle sait ?!"'

    menu:
        '"Elle a apparemment mis le doigt sur quelque chose. C„est l“odeur de Baator, pas vrai ?"':
            # a1370 # r65727
            jump morte_s691

        '"Peu importe. J„ai d“autres questions…"':
            # a1371 # r65728
            jump morte_s329

        '"Laisse tomber. Allons-y."':
            # a1372 # r65729
            jump morte_dispose


# s691 # say65730
label morte_s691: # from 689.0 690.0
    nr '"Et bien, oui, mais… Oui. Je pue un petit peu. *Excuse*-moi."'

    menu:
        '"*Pourquoi* tu sens comme Baator ?"':
            # a1373 # r65731
            $ morteLogic.r65731_action()
            jump morte_s692


# s692 # say65732
label morte_s692: # from 691.0
    nr '"J„étais aux Enfers pendant un moment. Plutôt longtemps, en fait. La puanteur s“incruste."'

    menu:
        '"Tu étais aux Enfers ? Qu„est-ce que tu y FAISAIS ?"':
            # a1374 # r65733
            $ morteLogic.r65733_action()
            jump morte_s693


# s693 # say65734
label morte_s693: # from 329.7 692.0 729.7
    nr '"Tu vois, il y a ce *pilier* sur l„Averne, le premier niveau de Baator ; on l“appelle le Pilier des Crânes, mais c„est plus une colonne de têtes."'

    jump morte_s694


# s694 # say65735
label morte_s694: # from 693.0
    nr '"Selon certains lascars, c„est *soi-disant* fait de têtes de biges, principalement des sages et des érudits, qui ont utilisé leurs connaissances lorsqu“ils étaient vivants pour transformer la vérité un tantinet… tellement qu„ils ont peut-être blessé, ou euh, tué quelqu“un. Et bien, lorsque je suis *mort*, je me suis retrouvé là-bas. Marrant, non ?"'

    menu:
        '"Pas vraiment."':
            # a1375 # r65846
            jump morte_s695


# s695 # say65736
label morte_s695: # from 694.0
    nr '"Euh…" Morte reste silencieux pendant un moment. "Ouais, tu as raison, ce n„est pas drôle du tout. Tu vois, je pense que je savais un tas de trucs quand j“étais vivant. Et peut-être que quand je savais quelque chose, je ne disais pas toujours la vérité. Je crois qu„en transformant la vérité une fois ou deux, j“ai peut-être provoqué l„inscription de quelqu“un dans le livre des morts plus tôt que prévu."'

    menu:
        '"Peux-tu te rappeler qui ?"':
            # a1376 # r65737
            jump morte_s697

        '"C„était moi, pas vrai ?"' if morteLogic.r65738_condition():
            # a1377 # r65738
            jump morte_s696

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65739_condition():
            # a1378 # r65739
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65740_condition():
            # a1379 # r65740
            jump morte_dispose


# s696 # say65741
label morte_s696: # from 695.1
    nr 'Morte te regarde pendant un moment. "Ouais. Je suis incapable de dire *comment* je le sais, chef, mais je pense que oui. Je pense que tu es celui qui m„y a envoyé ; la petite brindille qui fait tout basculer. Le hic, c“est que je ne me rappelle pas ce qui s„est passé. Je ne me souviens même pas d“avoir été un humain ni comment était ma vie avant de me réveiller sur le Pilier."'

    menu:
        '"Pourquoi tu as oublié ?"':
            # a1380 # r65742
            jump morte_s698

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65743_condition():
            # a1381 # r65743
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65744_condition():
            # a1382 # r65744
            jump morte_dispose


# s697 # say65745
label morte_s697: # from 695.0
    nr '"Je suis incapable de dire comment je le sais, chef, mais je pense que c„était *toi*. Au moins une fois. Le hic, c“est que je ne me rappelle pas ce qui s„est passé. Je ne me souviens même pas d“avoir été un humain ni à quoi je ressemblais avant de me réveiller sur le Pilier."'

    menu:
        '"Pourquoi tu as oublié ?"':
            # a1383 # r65746
            jump morte_s698

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65747_condition():
            # a1384 # r65747
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65748_condition():
            # a1385 # r65748
            jump morte_dispose


# s698 # say65749
label morte_s698: # from 696.0 697.0
    nr '"C„est ce qui se passe normalement quand on meurt, je suis sûr que tu connais ça. On… oublie. Je suppose que quand j“étais vivant, je n„étais pas une personne de confiance dans la communauté… Mais bon sang, qui l“est ?" Morte soupire. "C„est juste que j“y peux rien. Y„a rien de pire que d“être constamment *honnête*."'

    menu:
        '"À part être condamné aux Enfers. Cela paraît bien pire que de dire la vérité."' if morteLogic.r65750_condition():
            # a1386 # r65750
            $ morteLogic.r65750_action()
            jump morte_s699

        '"Mm, c„est vrai… mais tu devrais mentir avec prudence."' if morteLogic.r65751_condition():
            # a1387 # r65751
            $ morteLogic.r65751_action()
            jump morte_s699


# s699 # say65752
label morte_s699: # from 698.0 698.1
    nr '"Ouais. Tu as raison. *Encore une fois*." Morte fait claquer ses dents et ça te fait penser à quelqu„un qui pianote des doigts. "Je pense que tout ça, le bien et le mal, mentir et tromper, ça te rattrape un jour et quand je me suis fait inscrire dans le livre des morts, c“était à mon tour de payer."'

    menu:
        '"Comment tu t„es échappé du Pilier ?"':
            # a1388 # r65753
            $ morteLogic.j53633_s699_r65753_action()
            jump morte_s700

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65754_condition():
            # a1389 # r65754
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65755_condition():
            # a1390 # r65755
            jump morte_dispose


# s700 # say65757
label morte_s700: # from 699.0
    nr '"Et bien… tu m„as aidé, chef. Quand tu t“es pointé devant le Pilier des Crânes, je me suis poussé vers le devant. Mon savoir-faire et mon charme flagrants ont attiré ton attention. Tu savais que c„était *moi* la tête qui savait le plus de choses. Alors je t“ai proposé un marché."'

    menu:
        '"Un marché… ?"':
            # a1391 # r65758
            $ morteLogic.r65758_action()
            jump morte_s701

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65759_condition():
            # a1392 # r65759
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65760_condition():
            # a1393 # r65760
            jump morte_dispose


# s701 # say65761
label morte_s701: # from 700.0
    nr 'Pendant que Morte parle, ta vision semble se voiler de rouge et tu entends un hurlement, une horrible *plainte* accompagnée de murmures, de cris stridents, de martèlements provenant d„une multitude de voix. TOUTES implorent leur libération en hurlant et la voix de Morte… à peine audible, presque perdue dans la horde. Il a l“air désespéré, effrayé et… pitoyablement, tragiquement *perdu*.'

    menu:
        'Écho : "Toi. Crâne. Parle."':
            # a1394 # r65762
            jump morte_s702

        'Repousse le souvenir.':
            # a1395 # r65763
            $ morteLogic.r65763_action()
            jump morte_s706


# s702 # say65764
label morte_s702: # from 701.0
    nr 'Les hurlements cessent et tu regardes le minuscule crâne aux lignes rouges qui projette une lumière diabolique à travers ses fêlures et tourne les yeux vers toi. Du sang ainsi qu„une substance indéfinissable s“écoulent de ses fêlures et ses dents claquent comme s„il avait froid. "Je peux-peux t“aider, je sais-sais ce que tu cherches… Toutes ces têtes… Tout leur savoir… Pitié, je t„en *supplie* délivre-moi. Laisse-moi t“*aider*. Je te dirai tout, *absolument tout*."'

    menu:
        'Écho : "Le *feras*-tu ? JURE-le, crâne. JURE que tu vas me servir jusqu„à la fin des temps, ou tu resteras ici."':
            # a1396 # r65765
            jump morte_s703

        'Repousse le souvenir.':
            # a1397 # r65766
            $ morteLogic.r65766_action()
            jump morte_s706


# s703 # say65767
label morte_s703: # from 702.0
    nr '"Je jure. Je jure que… s„il te plaît, *pitié* délivre-moi… Je…" Tu regardes Morte alors qu“il déglutit d„une manière écœurante et son orgueil est tel qu“il en est presque tangible. "Je t„en… *supplie*. Laisse-moi t“*aider*. S„il te plaît."'

    menu:
        'Écho : "Très bien. Je vais te libérer."':
            # a1398 # r65768
            jump morte_s704

        'Repousse le souvenir.':
            # a1399 # r65769
            $ morteLogic.r65769_action()
            jump morte_s706


# s704 # say65770
label morte_s704: # from 703.0
    nr 'Ta vision bascule, comme si tu te déplaçais, et la cacophonie de plaintes et de hurlements recommence, une foule cauchemardesque de braillements, de sifflements, de sarcasmes et d„insultes… Tu sens tes mains glisser dans la fange répugnante du pilier, des crocs et des maxillaires te mordre, et tes mains se referment sur le petit crâne et l“arrachent du pilier comme une vieille croûte…'

    menu:
        'Écho : "C„est FAIT."':
            # a1400 # r65771
            jump morte_s705

        'Repousse le souvenir.':
            # a1401 # r65772
            $ morteLogic.r65772_action()
            jump morte_s706


# s705 # say65773
label morte_s705: # from 704.0
    nr 'Tu regardes le crâne sanglant dans tes mains couvertes de cicatrices, ses yeux couverts de la substance indéfinissable provenant du pilier et ses dents claquent une fois, deux fois. Cela te rappelle les gémissements d„un nourrisson, sans défense et - dans les yeux de l“homme que tu étais autrefois - pitoyable.'

    menu:
        'Écho : "Je t„ai libéré. Maintenant ta vie… et ta mort sont à moi… Morte."' if morteLogic.r65774_condition():
            # a1402 # r65774
            $ morteLogic.r65774_action()
            jump morte_s706

        'Écho : "Je t„ai libéré. Maintenant ta vie… et ta mort sont à moi… Morte."' if morteLogic.r65775_condition():
            # a1403 # r65775
            $ morteLogic.r65775_action()
            jump morte_s706


# s706 # say65776
label morte_s706: # from 701.1 702.1 703.1 704.1 705.0 705.1
    nr 'Ta vision vacille et les réminiscences du passé s„éloignent. Morte continue son bavardage. "On a parlé un moment, chef, toi et moi, pour voir si le contrat marcherait, et je pense qu“on était tous les deux très impressionnés l„un par l“autre, alors tu m„as fait sortir du pilier et depuis je suis, en quelque sorte, toujours resté avec toi."'

    menu:
        '"Euh… Qu„est-il arrivé ensuite ?"':
            # a1404 # r65777
            jump morte_s707

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65778_condition():
            # a1405 # r65778
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65779_condition():
            # a1406 # r65779
            jump morte_dispose


# s707 # say65780
label morte_s707: # from 706.0
    nr '"Et bien, je ne savais pas que je perdrais la plupart des connaissances du Pilier, une fois extrait… je veux dire, comment j„aurais pu le savoir, je n“étais jamais sorti de ce foutu pilier… d„ailleurs, tu étais très compréhensif…"'

    menu:
        '"Tu as perdu tout le savoir que tu avais dit posséder… ?"':
            # a1407 # r65781
            $ morteLogic.r65781_action()
            jump morte_s708

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65782_condition():
            # a1408 # r65782
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65783_condition():
            # a1409 # r65783
            jump morte_dispose


# s708 # say65784
label morte_s708: # from 707.0
    nr 'Ta vision vacille de nouveau, te donnant la nausée, et tu sens ton cœur se soulever. Tu entends des os craquer et se casser et Morte hurle, hurle de douleur, criant à quelqu„un de s“arrêter, s„arrêter de le *tuer*… et ta main envoie des coups de poing, encore et encore…'

    menu:
        'Écho : "Par BAATOR, crâne, tu m„as MENTI. Je vais TE REMETTRE DANS CE SATANÉ PILIER ET T“Y LAISSER *CREVER*."':
            # a1410 # r65785
            jump morte_s709

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65786_condition():
            # a1411 # r65786
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65787_condition():
            # a1412 # r65787
            jump morte_dispose


# s709 # say65788
label morte_s709: # from 708.0
    nr 'Il y a le cliquetis des os contre quelque chose qui semble être du métal, un sol ou un mur, puis le bruit des dents qui sont éjectées. Tu entends crier Morte comme un cochon qu„on égorge.'

    menu:
        'Écho : "SACHE QUE TA SOUFFRANCE SUR LE PILIER NE SERA *RIEN* COMPARÉE AUX TOURMENTS QUE JE VAIS TE FAIRE *SUBIR*."':
            # a1413 # r65789
            $ morteLogic.r65789_action()
            jump morte_s710

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65790_condition():
            # a1414 # r65790
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65791_condition():
            # a1415 # r65791
            jump morte_dispose


# s710 # say65792
label morte_s710: # from 709.0
    nr 'Ta vision vacille et les cris de Morte faiblissent, pour laisser peu à peu la place au rythme de ses bavardages. "Alors tu t„es rendu compte que j“avais encore mon utilité. Je me suis lié d„amitié avec toi, et depuis je ne t“ai pas quitté."'

    menu:
        '"Morte, qu„est-ce que je voulais de la part du Pilier ? Et ça fait combien de temps que je t“ai libéré ?"':
            # a1416 # r65793
            jump morte_s711

        '"Euh… Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65794_condition():
            # a1417 # r65794
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65795_condition():
            # a1418 # r65795
            jump morte_dispose


# s711 # say65796
label morte_s711: # from 710.0
    nr 'Morte réfléchit pendant un moment. "Et bien, combien de temps exactement, je ne sais pas, chef. Des siècles, j„imagine. J“ai fait tout mon possible pour t„aider à chaque fois, mais…" Morte soupire. "Ce n“est pas facile, et pour ce que tu voulais au pied du Pilier, je ne sais pas."'

    menu:
        '"Morte, pourquoi n„as-tu rien DIT à la morgue ?"':
            # a1419 # r65797
            jump morte_s712

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65798_condition():
            # a1420 # r65798
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65799_condition():
            # a1421 # r65799
            jump morte_dispose


# s712 # say65800
label morte_s712: # from 711.0
    nr 'Morte prend soudain la défensive. "Parce que je *sais* jamais qui tu vas être ! Certaines de tes incarnations ont été complètement délirantes ! Une fois, tu t„es réveillé obsédé par l“idée que j„étais *ton* crâne et tu m“as chassé autour de l„Aiguille pour me fracasser et me dévorer… Heureusement, tu t“es fait écraser par un chariot dans la rue. Une autre fois, une „bonne et honnête“ version de toi a essayé de me jeter dans le pilier, parce que „c“était ma place„." Morte sourit d“un air narquois. "*C„est* pour ça que ça t“a jamais fait d„mal de rien savoir…"'

    menu:
        '"Tu es donc resté avec moi pendant tout ce temps ?"' if morteLogic.r65801_condition():
            # a1422 # r65801
            jump morte_s713

        '"Laisse tomber, Morte. J„ai d“autres questions…"' if morteLogic.r65802_condition():
            # a1423 # r65802
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."' if morteLogic.r65803_condition():
            # a1424 # r65803
            jump morte_dispose


# s713 # say65804
label morte_s713: # from 712.0
    nr '"Et bien oui, chef, j„ai dit que je le ferais. Morte tient toujours ses promesses." Il fait une pause. "Enfin, la plupart d“entre elles. Hé hé. Il y avait cette gamine sur l„Arborée qui…"'

    $ morteLogic.s713_action()
    jump morte_s714


# s714 # say65805
label morte_s714: # from 713.0
    nr 'Soudainement tu te rends compte que le ton de Morte a changé. Après cette blague, tu te rends compte qu„il essaie de te cacher quelque chose. Quelque chose sur la raison pour laquelle il est avec toi.'

    menu:
        '"Morte, sérieusement, pourquoi est-ce que tu voyages toujours avec moi ?"':
            # a1425 # r65806
            jump morte_s715

        '"Bon, très bien. J„ai d“autres questions…"':
            # a1426 # r65807
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."':
            # a1427 # r65808
            jump morte_dispose


# s715 # say65809
label morte_s715: # from 329.8 714.0 729.8
    nr '"Chef, j„ai dit que c“était parce que je l„avais promis, d“accord ?" Il semble irrité. "Qu„est-ce que ça pourrait être d“autre ?"'

    menu:
        '"Je ne sais pas. Tu n„avais pas besoin de me coller après que je t“avais libéré."':
            # a1428 # r65810
            jump morte_s716

        '"Peu importe. J„ai d“autres questions…"':
            # a1429 # r65811
            jump morte_s329

        '"Laisse tomber, Morte. Passons à autre chose."':
            # a1430 # r65812
            jump morte_dispose


# s716 # say65813
label morte_s716: # from 715.0
    nr '"Bien sûr que non, chef, mais je…" Et soudainement le ton de sa voix te rappelle *pourquoi* il est resté constamment avec toi.'

    menu:
        '"Tu te sens *coupable*. Parce que tu as provoqué ma mort il y a très longtemps, pas vrai ? Et depuis, tu souffres."':
            # a1431 # r65814
            jump morte_s717


# s717 # say65815
label morte_s717: # from 716.0
    nr '"Allez, chef. Moi me sentir *coupable* ? Je suis Morte."'

    menu:
        '"Non, je pense que c„est ça. Lorsque je suis venu te délivrer du sort que tu avais mérité, tu n“as pas pu *t„empêcher* d“essayer de m„aider. Et alors que tu aurais pu partir une fois que je t“avais libéré, tu es resté. Parce que tu te sentais redevable de quelque chose."':
            # a1432 # r65816
            jump morte_s718


# s718 # say65817
label morte_s718: # from 717.0
    nr 'Morte reste silencieux pendant un moment et t„observe. "Peut-être. Tu sais ce qui est marrant ? Au début, je ne savais pas comment serait la sensation… En quelque sorte, ça te bouffe petit à petit, tu vois ?"'

    jump morte_s719


# s719 # say65818
label morte_s719: # from 718.0
    nr '"Au début, j„ai cru que c“était un effet secondaire d„un quelconque enchantement qui te “liait„ à moi, mais au bout d“un ou deux siècles, je me suis rendu compte que c„était *plus* que ça… Quelque chose de plus profond. Je me sentais juste attiré, *connecté* par toi, d“une certaine manière. Peut-être à cause de toute cette souffrance, chef… Tes tourments. Je ne sais pas, je me suis peut-être senti… Je ne sais pas, *responsable* de ce que j„avais fait. Et si une de mes actions t“avait rendu dans cet état ?"'

    $ morteLogic.s719_action()
    jump morte_s720


# s720 # say65820
label morte_s720: # from 719.0
    nr '"Le truc, c„est que je ne pense pas que moi, ou la personne que j“étais à l„époque, ait jamais dû réellement *voir* les conséquences de mes mensonges et de mes duperies, et lorsque je t“ai aperçu pour la première fois quand j„étais coincé dans le Pilier, quelque part je *savais* que tu étais celui que j“avais trompé. C„était il y a longtemps…" Morte soupire. "C“est tout ce que je sais."'

    menu:
        '"Je vois. Merci de l„admettre, Morte."':
            # a1433 # r65821
            $ morteLogic.r65821_action()
            jump morte_s721


# s721 # say65822
label morte_s721: # from 720.0
    nr '"Non, ne me remercie pas…" Morte soupire et à ta grande surprise, sa voix semble plus dure, plus confiante. Certaines craquelures et certaines fractures de son crâne ont disparu, comme si elles avaient été guéries. "Non, c„est moi qui te remercie. Je sens que mes épaules sont soulagées d“un grand poids… façon de parler."'

    menu:
        '"J„ai d“autres questions…"':
            # a1434 # r65823
            jump morte_s329

        '"D„accord, Morte. Passons à autre chose."':
            # a1435 # r65824
            jump morte_dispose


# s722 # say65826
label morte_s722: # from 329.10 729.10
    nr '"Et bien, c„est une guenaude noire. Et il faut qu“elle ait été vraiment assez folle pour TE rendre immortel parmi tous les autres. Quoi, elle aurait pu me choisir." Morte lève les yeux au ciel. "Mais on n„a pas envie de rencontrer quelqu“un d„assez écervelé pour être aux prises avec la Dame des Douleurs.."'

    menu:
        '"Je vois. J„ai d“autres questions…"':
            # a1436 # r65827
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1437 # r65828
            jump morte_dispose


# s723 # say65829
label morte_s723: # from 329.9 729.9
    nr '"C„est une guerre. Une grande guerre sanglante et compliquée. Cela se produit partout, bien qu“on ne puisse pas toujours le voir."'

    menu:
        '"Continue…"':
            # a1438 # r65830
            jump morte_s724

        '"Peu importe. J„ai d“autres questions…"':
            # a1439 # r65831
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1440 # r65832
            jump morte_dispose


# s724 # say65833
label morte_s724: # from 723.0
    nr '"Tu vois, chef, c„est une guerre entre deux méchantes races : les démons et les diables. Autrefois, ils ne se connaissaient pas. Les diables étaient le Mal, mais c“était un mal ordonné. Les démons aussi étaient le Mal, mais ils étaient plus laxistes, plus fougueux, plus confus, moins organisés. Les diables étaient de vrais politiciens, les démons de vrais bouchers."'

    jump morte_s725


# s725 # say65834
label morte_s725: # from 724.0
    nr '"Puis un jour, les deux races se sont rencontrées. Elles se sont observées et elles n„ont pas aimé comment l“autre race faisait le mal. Et depuis elles n„ont pas cessé de se battre. C“est un énorme cauchemar. Mais au moins, ça laisse ces deux races occupées et elles ne sont plus en train de courir partout sur les plans."'

    menu:
        '"Je vois. J„ai d“autres questions…"':
            # a1441 # r65835
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."':
            # a1442 # r65836
            jump morte_dispose


# s726 # say65837
label morte_s726: # from 329.11 729.11
    nr '"Aucune idée, chef. En fait, je ne me rappelle pas quand je suis mort. Je ne peux pas dire que je me reproche grand-chose. Au moins il y a avait quelque chose qui m„attendait à ma mort, même si c“était que vivre en tant que crâne flottant. Ça aurait pu être pire."'

    menu:
        '"Qu„est-il arrivé à ton corps ?"':
            # a1443 # r65839
            jump morte_s727

        '"Je vois. J„ai d“autres questions…"':
            # a1444 # r65840
            jump morte_s329

        '"Bon, très bien. Allons-y."':
            # a1445 # r65841
            jump morte_dispose


# s727 # say65838
label morte_s727: # from 726.0
    nr '"Euh… Je ne sais pas, OK ? Il a juste disparu." Morte te regarde l„air furieux. "Mais ne t“imagine pas qu„il me MANQUE, car je suis heureux comme ça et je n“ai pas besoin de tes jugements imbéciles ou de tes remarques insidieuses, d„accord ?"'

    menu:
        '"Je vois. J„ai d“autres questions…"':
            # a1446 # r65842
            jump morte_s329

        '"Peu importe. Allons-y. Allez, magne-toi les fesses."':
            # a1447 # r65843
            jump morte_s728


# s728 # say65844
label morte_s728: # from 727.1
    nr 'Morte te regarde l„air furieux. "Je ne suis toujours pas persuadé que tu n“es pas une sorte de malédiction sur pattes destinée à me suivre partout."'

    menu:
        '"Et c„est toi qui dis ça. Allons-y."':
            # a1448 # r65845
            jump morte_dispose


# s729 # say66344
label morte_s729: # - # IF WEIGHT #7 /* Triggers after states #: 742 737 733 even though they appear after this state */ ~  Global("AR0200_Visited","GLOBAL",1) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Mais qu„est-ce qui va pas, chef ?"~ [MRT515]'

    menu:
        '"Peux-tu me relire ce qui est tatoué sur mon dos ?"':
            # a1449 # r66345
            jump morte_s649

        '"Peux-tu me parler de Sigil ?"':
            # a1450 # r66346
            jump morte_s659

        '"Morte… Ça ne me dérange pas que tu me suives mais ne sais-tu rien faire *d„autre* que bavarder ?"' if morteLogic.r66347_condition():
            # a1451 # r66347
            jump morte_s663

        '"Morte… Quels sont tes talents magiques déjà ?"' if morteLogic.r66348_condition():
            # a1452 # r66348
            jump morte_s666

        '"Morte, pourquoi ne m„as-tu pas parlé de cette ligne supplémentaire dans le tatouage de mon dos ?"' if morteLogic.r66349_condition():
            # a1453 # r66349
            jump morte_s654

        '"J„ai besoin d“un conseil. À ton avis, qu„est-ce qu“on devrait faire maintenant ?"':
            # a1454 # r66350
            jump morte_s669

        '"Tu as dit que tu étais un mimir, n„est-ce pas, Morte ?"' if morteLogic.r66351_condition():
            # a1455 # r66351
            jump morte_s684

        '"Raconte-moi encore une fois comment tu as fini sur le Pilier des Crânes."' if morteLogic.r66352_condition():
            # a1456 # r66352
            jump morte_s693

        '"Morte, pourquoi tu as continué à voyager avec moi une fois que je t„ai sorti du Pilier ?"' if morteLogic.r66353_condition():
            # a1457 # r66353
            jump morte_s715

        '"Qu„est-ce que tu sais de la Guerre Sanglante ?"' if morteLogic.r66354_condition():
            # a1458 # r66354
            jump morte_s723

        '"Que sais-tu sur la guenaude noire nommée Ravel ?"' if morteLogic.r66355_condition():
            # a1459 # r66355
            jump morte_s722

        '"Comment es-tu mort, Morte ?"':
            # a1460 # r66356
            jump morte_s726

        '"Rien, Morte. Je vérifiais juste que tu étais toujours avec moi."':
            # a1461 # r66357
            jump morte_dispose


# s730 # say66816
label morte_s730: # -
    nr '"Hé, chef, tu les crois, ces deux-là ? Sûr qu„ils pourraient m“apprendre un truc ou deux…"~ [MRT387]'

    menu:
        '"En effet, Morte. Allez, viens."':
            # a1462 # r66817
            jump morte_dispose


# s731 # say67510
label morte_s731: # -
    nr '"Je voudrais simplement dire que je ne dirai rien qui pourrait casser l„ambiance, chef. Ne fais surtout pas attention à moi, je vais juste rester là, à flotter et à surveiller."'

    jump annah_s418  # EXTERN


# s732 # say67600
label morte_s732: # -
    nr '"Vous allez arrêter tous les deux ou faut-il que j„aille chercher un dabus pour vous séparer !" grogne Morte. "Vous dabusez tout de même."'

    jump annah_s446  # EXTERN


# s733 # say68171
label morte_s733: # - # IF WEIGHT #1 ~  Global("Fortress_Morte","GLOBAL",3) Global("Absorb","GLOBAL",0)
    nr 'Morte prend brusquement la parole lorsque tu tends la main. "Holà, holà, du calme, chef ! Euh… il y a quelques petites choses qu„il faut que je te dise…"~ [MRT242]'

    menu:
        '"Morte ? Tu n„es pas mort ?"':
            # a1463 # r68176
            $ morteLogic.r68176_action()
            jump morte_s734


# s734 # say68172
label morte_s734: # from 733.0
    nr '"Eh bien - quand on est mort depuis aussi longtemps que moi, c„est facile de faire semblant. J“ai comme qui dirait écouté votre conversation. Utilise ce pouvoir sur quelqu„un d“autre ; moi, j„en ai pas besoin."'

    menu:
        '"Alors, comme ça, tu avais l„intention de rester planqué là pendant que je me faisais massacrer ?"':
            # a1464 # r68177
            jump morte_s735


# s735 # say68173
label morte_s735: # from 734.0
    nr '"Ouais, mais c„est pas comme si t“allais mourir, hein, chef ? Enfin, j„veux dire, si jamais t“échoues, t„auras besoin que quelqu“un se souvienne à ta place. Et puis, tu sais bien que je sers pas à grand-chose au combat, du moment qu„y a personne à mettre en boule…"'

    menu:
        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68178_condition():
            # a1465 # r68178
            jump morte_s736

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68189_condition():
            # a1466 # r68189
            $ morteLogic.r68189_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68190_condition():
            # a1467 # r68190
            $ morteLogic.r68190_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68191_condition():
            # a1468 # r68191
            $ morteLogic.r68191_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68192_condition():
            # a1469 # r68192
            $ morteLogic.r68192_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68193_condition():
            # a1470 # r68193
            $ morteLogic.r68193_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68194_condition():
            # a1471 # r68194
            $ morteLogic.r68194_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68239_condition():
            # a1472 # r68239
            $ morteLogic.r68239_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68438_condition():
            # a1473 # r68438
            $ morteLogic.r68438_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68439_condition():
            # a1474 # r68439
            $ morteLogic.r68439_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68446_condition():
            # a1475 # r68446
            $ morteLogic.r68446_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"' if morteLogic.r68503_condition():
            # a1476 # r68503
            jump trans_s142  # EXTERN


# s736 # say68174
label morte_s736: # from 735.0
    nr 'Tu puises une nouvelle fois en toi.'

    menu:
        'Ressuscite Annah.' if morteLogic.r68175_condition():
            # a1477 # r68175
            $ morteLogic.r68175_action()
            jump morte_dispose

        'Ressuscite Dak„kon.' if morteLogic.r68179_condition():
            # a1478 # r68179
            $ morteLogic.r68179_action()
            jump morte_dispose

        'Ressuscite Tombée-en-Disgrâce.' if morteLogic.r68180_condition():
            # a1479 # r68180
            $ morteLogic.r68180_action()
            jump morte_dispose

        'Ressuscite Nordom.' if morteLogic.r68181_condition():
            # a1480 # r68181
            $ morteLogic.r68181_action()
            jump morte_dispose

        'Ressuscite Ignus.' if morteLogic.r68182_condition():
            # a1481 # r68182
            $ morteLogic.r68182_action()
            jump morte_dispose

        'Ressuscite Vhailor.' if morteLogic.r68183_condition():
            # a1482 # r68183
            $ morteLogic.r68183_action()
            jump morte_dispose


# s737 # say68310
label morte_s737: # - # IF WEIGHT #2 ~  Global("Fortress_Morte","GLOBAL",3) GlobalGT("Absorb","GLOBAL",0)
    nr 'Alors que ton pouvoir va envelopper Morte, celui-ci s„élève tout seul. "Euh, un petit instant, chef. Pas la peine de me ressusciter, tu vois. J“étais comme qui dirait en train de vous écouter causer sans me faire remarquer."'

    menu:
        'TU FAISAIS SEMBLANT D„ÊTRE MORT.':
            # a1483 # r68311
            jump morte_s738


# s738 # say68312
label morte_s738: # from 737.0
    nr '"Ce que je veux dire, c„est que je suis *déjà* mort, chef, et… euh, dis-moi, qu“est-ce qui est arrivé à ta voix ?"'

    menu:
        'JE SUIS DÉSORMAIS… AUTRE CHOSE. LE TEMPS M„EST COMPTÉ ET, BIENTÔT, MON DESTIN ME RATTRAPERA. SI TU VEUX, JE PEUX TE RENVOYER À SIGIL, MORTE.':
            # a1484 # r68313
            jump morte_s739


# s739 # say68314
label morte_s739: # from 738.0
    nr '"Que… me renvoyer, moi ? Et *toi* ? Allons, chef, j„suis peut-être un lâche, mais j“vais pas t„laisser là."'

    menu:
        'NOMBREUX SONT LES CRIMES COMMIS TANDIS QUE NOUS ÉTIONS SÉPARÉS, MA MORTALITÉ ET MOI. ET LE… PRIX À PAYER EST LOURD. TU NE PEUX TE RENDRE LÀ OÙ J„IRAI BIENTÔT.':
            # a1485 # r68315
            jump morte_s740


# s740 # say68316
label morte_s740: # from 739.0
    nr '"Eh ben… je peux venir avec toi, si tu veux, chef. On a connu pire, tous les d…"'

    menu:
        'PAS CETTE FOIS. PEUT-ÊTRE NOUS RETROUVERONS-NOUS UN JOUR, SUR UN AUTRE PLAN, MAIS PAS MAINTENANT.':
            # a1486 # r68317
            jump morte_s741


# s741 # say68318
label morte_s741: # from 740.0
    nr 'Morte te dévisage longuement puis soupire. "Sans s„mettre la larme à l“œil, ça a été un plaisir de t„connaître, chef."~ [MRT109]'

    menu:
        'AU REVOIR, MORTE.' if morteLogic.r68319_condition():
            # a1487 # r68319
            $ morteLogic.r68319_action()
            jump morte_dispose

        'AU REVOIR, MORTE.' if morteLogic.r68320_condition():
            # a1488 # r68320
            $ morteLogic.r68320_action()
            jump morte_dispose

        'AU REVOIR, MORTE.' if morteLogic.r68321_condition():
            # a1489 # r68321
            $ morteLogic.r68321_action()
            jump morte_dispose

        'AU REVOIR, MORTE.' if morteLogic.r68322_condition():
            # a1490 # r68322
            $ morteLogic.r68322_action()
            jump morte_dispose

        'AU REVOIR, MORTE.' if morteLogic.r68323_condition():
            # a1491 # r68323
            $ morteLogic.r68323_action()
            jump morte_dispose

        'AU REVOIR, MORTE.' if morteLogic.r68324_condition():
            # a1492 # r68324
            $ morteLogic.r68324_action()
            jump morte_dispose

        'AU REVOIR, MORTE.' if morteLogic.r68325_condition():
            # a1493 # r68325
            $ morteLogic.r68325_action()
            jump morte_dispose

        'AU REVOIR, MORTE.' if morteLogic.r68490_condition():
            # a1494 # r68490
            $ morteLogic.r68490_action()
            jump morte_dispose

        'AU REVOIR, MORTE.' if morteLogic.r68491_condition():
            # a1495 # r68491
            $ morteLogic.r68491_action()
            jump morte_dispose

        'AU REVOIR, MORTE.' if morteLogic.r68492_condition():
            # a1496 # r68492
            $ morteLogic.r68492_action()
            jump morte_dispose


# s742 # say68408
label morte_s742: # - # IF WEIGHT #3 ~  Global("Fortress_Morte","GLOBAL",4)
    nr 'Morte te dévisage longuement puis soupire. "Sans s„mettre la larme à l“œil, ça a été un plaisir de t„connaître, chef."~ [MRT109]'

    menu:
        '"Bon, alors allons-y…"':
            # a1497 # r68409
            jump morte_dispose
