init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte_logic import MorteLogic
    morteLogic = MorteLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE.DLG
# ###


# s0 # say986
label morte_s0: # -
    nr '"Hé, chef. Ça va ? Tu fais le mort ou t„essaies de tromper les Hommes-Poussière ? J“ai vraiment cru que tu étais mort."{#morte_s0_1}'

    menu:
        '"Qui es-tu ?"{#morte_s0_r987}':
            # a0 # r987
            jump morte_s1

        'Ignore le crâne parlant et explore la pièce.{#morte_s0_r989}':
            # a1 # r989
            jump morte_dispose

        'Respire à fond, secoue la tête et ignore le crâne qui te parle.{#morte_s0_r988}':
            # a2 # r988
            jump morte_dispose

        '"Je suis sûr que tu as des milliers de choses intelligentes à dire, Morte, mais j„ai besoin que tu te taises, que tu ranges tes billes et que tu me rejoignes MAINTENANT."{#morte_s0_r17833}':
            # a3 # r17833
            $ morteLogic.r17833_action()
            jump morte_dispose


# s1 # say990
label morte_s1: # from 0.0 29.0 31.0
    nr '"Moi ?" Le crâne semble indigné. "Et *toi* d„abord, galeux ? Qui es-tu ?"{#morte_s1_1}'

    menu:
        '"Je… je ne sais pas."{#morte_s1_r992}':
            # a4 # r992
            jump morte_s2

        '"Je ne sais pas… Visiblement, j„ai tout oublié."{#morte_s1_r995}':
            # a5 # r995
            jump morte_s3

        '"Je t„ai posé la question en premier, crâne."{#morte_s1_r993}':
            # a6 # r993
            jump morte_s4

        'Ignore le crâne et explore la pièce.{#morte_s1_r991}':
            # a7 # r991
            jump morte_dispose


# s2 # say997
label morte_s2: # from 1.0 4.0 5.0
    nr '"Tu ne sais pas qui tu es, hein ? Tu aurais pu dire „Va caguer, bige“. Bon, c„est pas grave… Fais comme si t“étais un béjaune. Je m„en fiche. Je suis Morte. Salut, et enchanté."{#morte_s2_1}'

    menu:
        '"Je suis où, Morte ?"{#morte_s2_r998}':
            # a8 # r998
            jump morte_s6

        '"Tu sais comment je peux sortir d„ici ?"{#morte_s2_r1006}' if morteLogic.r1006_condition():
            # a9 # r1006
            jump morte_s21

        '"Comment j„ai atterri ici ?"{#morte_s2_r1080}':
            # a10 # r1080
            jump morte_s20

        'Ignore Morte et explore la pièce.{#morte_s2_r1087}':
            # a11 # r1087
            jump morte_dispose


# s3 # say999
label morte_s3: # from 1.1 4.1 5.1
    nr '"Tu ne te *souviens* pas ? Tu as dû passer une sacrée nuit ! J„espère que personne n“a été blessé… Mon nom, c„est Morte. Salut, et enchanté." Il s“arrête. "Dis-moi *une* chose : tu fais partie des Sensats qui pratiquent l„automutilation ou bien c“est quelqu„un qui t“a fait ces cicatrices ?"{#morte_s3_1}'

    menu:
        '"Un Sensat ?"{#morte_s3_r1000}':
            # a12 # r1000
            jump morte_s12

        '"Des cicatrices ?"{#morte_s3_r1001}':
            # a13 # r1001
            jump morte_s13

        'Ignore Morte et explore la pièce.{#morte_s3_r1002}':
            # a14 # r1002
            jump morte_dispose


# s4 # say1003
label morte_s4: # from 1.2
    nr '"Ouais, et moi le deuxième. C„est quoi ton nom ?"{#morte_s4_1}'

    menu:
        '"Je… ne sais pas."{#morte_s4_r1004}':
            # a15 # r1004
            jump morte_s2

        '"Je ne sais pas… Je ne m„en souviens pas."{#morte_s4_r1005}':
            # a16 # r1005
            jump morte_s3

        '"Réponds-moi d„abord, crâne."{#morte_s4_r1007}':
            # a17 # r1007
            jump morte_s5

        'Ignore le crâne et explore la pièce.{#morte_s4_r994}':
            # a18 # r994
            jump morte_dispose


# s5 # say1008
label morte_s5: # from 4.2
    nr '"T„es vraiment coincé, y a pas à dire. Ça va, ça va… *Je* vais jouer le type sympa… Moi, c“est Morte. Morte Rictus. Et maintenant, quel est ce prénom assez malchanceux pour t„avoir comme maître ?"{#morte_s5_1}'

    menu:
        '"Je… je ne sais pas."{#morte_s5_r1009}':
            # a19 # r1009
            jump morte_s2

        '"Je ne sais pas… Visiblement, j„ai tout oublié."{#morte_s5_r1010}':
            # a20 # r1010
            jump morte_s3

        'Ignore Morte et explore la pièce.{#morte_s5_r1011}':
            # a21 # r1011
            jump morte_dispose


# s6 # say1012
label morte_s6: # from 2.0 29.1 31.1
    nr '"Tu es dans ce trou appelé la Morgue… c„est une immense structure noire aussi accueillante qu“une prison."{#morte_s6_1}'

    menu:
        '"„La Morgue“ ? Je suis mort ?"{#morte_s6_r1013}':
            # a22 # r1013
            jump morte_s7

        '"Comment je peux sortir d„ici ?"{#morte_s6_r1015}' if morteLogic.r1015_condition():
            # a23 # r1015
            jump morte_s21

        'Ignore Morte et explore la pièce.{#morte_s6_r1085}':
            # a24 # r1085
            jump morte_dispose


# s7 # say1014
label morte_s7: # from 6.0 9.0
    nr '"Ben, j„en sais rien… mais il n“y a pas d„autre Morgue dans ce bled. Les biges apportent les cadavres ici. Ils les enterrent, ils les brûlent, et s“ils ont de la chance, ils seront ressuscités en tant qu„esclaves. Ce n“est pas le meilleur endroit des plans. À ta place, je chercherais la sortie la plus proche et je jouerais un air à cet endroit."{#morte_s7_1}'

    menu:
        '"Pardon… La „Morgue“ ? C„est quoi cet endroit ?"{#morte_s7_r1016}':
            # a25 # r1016
            jump morte_s10

        '"Ressuscités en tant qu„esclaves ?"{#morte_s7_r1017}':
            # a26 # r1017
            jump morte_s9

        '"Tant que je peux encore marcher ?"{#morte_s7_r1018}':
            # a27 # r1018
            jump morte_s11

        '"Tu dis que des gens traînent des corps morts ici ? Et c„est comme ça que j“ai atterri ici ?"{#morte_s7_r1019}' if morteLogic.r1019_condition():
            # a28 # r1019
            jump morte_s8

        'Ignore Morte et explore la pièce.{#morte_s7_r1020}':
            # a29 # r1020
            jump morte_dispose


# s8 # say1021
label morte_s8: # from 7.3
    nr 'Il s„arrête. "Ouais, je suppose. L“un de ces bons à rien t„a cru mort et t“a ramené ici. Tu m„as bien eu avec ton simulacre… Tu devrais plutôt retrouver le bige qui t“a amené ici et lui poser la question, hein ?" Morte acquiesce. "Pas mal réfléchi pour un mort encore chaud… Je vois que ta caboche fonctionne toujours."{#morte_s8_1}'

    menu:
        '"Pourquoi quelqu„un m“aurait amené ici ?"{#morte_s8_r1029}':
            # a30 # r1029
            jump morte_s14

        '"J„ai d“autres questions…"{#morte_s8_r1030}':
            # a31 # r1030
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s8_r1137}':
            # a32 # r1137
            jump morte_dispose


# s9 # say1022
label morte_s9: # from 7.1
    nr '"Ouais, c„est une vie agréable… mis à part les applications quasi constantes de formol et les points de suture, c“est le paradis."{#morte_s9_1}'

    menu:
        '"Je suis censé être ici ? Je suis mort ?"{#morte_s9_r1113}':
            # a33 # r1113
            jump morte_s7

        '"De quoi j„ai l“air ? J„ai beaucoup de cicatrices ?"{#morte_s9_r1114}':
            # a34 # r1114
            jump morte_s13

        '"Peu importe. J„ai d“autres questions…"{#morte_s9_r1115}':
            # a35 # r1115
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s9_r1116}':
            # a36 # r1116
            jump morte_dispose


# s10 # say1023
label morte_s10: # from 7.0
    nr '"Euh… comme je te l„ai déjà dit, la Morgue. Est-ce que ça va ? Tu n“as pas l„air dans ton assiette."{#morte_s10_1}'

    menu:
        '"Je suis censé être ici ? Je suis mort ?"{#morte_s10_r1109}':
            # a37 # r1109
            jump morte_s16

        '"De quoi *j„ai* l“air ? J„ai beaucoup de cicatrices ?"{#morte_s10_r1110}':
            # a38 # r1110
            jump morte_s13

        '"Peu importe. J„ai d“autres questions…"{#morte_s10_r1111}':
            # a39 # r1111
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s10_r1112}':
            # a40 # r1112
            jump morte_dispose


# s11 # say1024
label morte_s11: # from 7.2
    nr '"De mon point de vue, chef, il y avait peu de chances que tu t„en remettes. On dirait que tu t“apprêtes à régler ton ardoise, si tu vois ce que je veux dire."{#morte_s11_1}'

    menu:
        '"Je suis mort ? Et c„est pour ça que je suis ici ?"{#morte_s11_r1133}':
            # a41 # r1133
            jump morte_s16

        '"De quoi j„ai l“air ?"{#morte_s11_r1134}':
            # a42 # r1134
            jump morte_s13

        '"Peu importe. J„ai d“autres questions…"{#morte_s11_r1135}':
            # a43 # r1135
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s11_r1136}':
            # a44 # r1136
            jump morte_dispose


# s12 # say1025
label morte_s12: # from 3.0 33.0
    nr '"Tu connais pas les Sensats ? Oh, *tu* vas être épaté ! Ce sont des lascars qui font tout ce qui est possible de faire dans les plans, et même… laisse tomber. C„est quoi, ces cicatrices ?"{#morte_s12_1}'

    menu:
        '"Des cicatrices ?"{#morte_s12_r1027}':
            # a45 # r1027
            jump morte_s13

        '"Peu importe. J„ai d“autres questions…"{#morte_s12_r1028}':
            # a46 # r1028
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s12_r1143}':
            # a47 # r1143
            jump morte_dispose


# s13 # say1026
label morte_s13: # from 3.1 9.1 10.1 11.1 12.0 33.1
    nr '"C„est comme si un lascar avait décidé de te peindre avec un couteau. Tu as des cicatrices partout… même sur le dos." Il s“arrête. "Eh, bige, tu as toute une galerie de tatouages dans le dos. Il y a un message."{#morte_s13_1}'

    menu:
        '"Qu„est-ce que ça dit ?"{#morte_s13_r1088}':
            # a48 # r1088
            $ morteLogic.r1088_action()
            jump morte_s34

        '"Peu importe. J„ai d“autres questions…"{#morte_s13_r1089}':
            # a49 # r1089
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s13_r1090}':
            # a50 # r1090
            jump morte_dispose


# s14 # say1031
label morte_s14: # from 8.0 29.3
    nr '"Certaines personnes dans ce bled ramassent les morts dans la rue et les vendent contre du jonc. C„est pas joli-joli de joindre les deux bouts comme ça, mais ici, c“est le pot de chambre des plans et les options sont limitées."{#morte_s14_1}'

    menu:
        '"Du jonc ? C„est quoi, du “jonc„ ?"{#morte_s14_r1032}':
            # a51 # r1032
            jump morte_s15

        '"Peu importe. J„ai d“autres questions…"{#morte_s14_r1033}':
            # a52 # r1033
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s14_r1142}':
            # a53 # r1142
            jump morte_dispose


# s15 # say1034
label morte_s15: # from 14.0
    nr '"Eh… l„argent. Le jonc, c“est de l„argent. Il n“y en avait pas là d„où tu viens ?"{#morte_s15_1}'

    menu:
        '"Je ne me souviens pas d„où je viens."{#morte_s15_r1035}':
            # a54 # r1035
            jump morte_s19

        '"Laisse tomber. J„ai d“autres questions…"{#morte_s15_r1036}':
            # a55 # r1036
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s15_r1138}':
            # a56 # r1138
            jump morte_dispose


# s16 # say1037
label morte_s16: # from 10.0 11.0
    nr 'Il s„arrête. "Je sais pas. Tu *me* poses de ces questions… Les morts-vivants ne font pas ça par ici. À mon avis, les Hommes-Poussière se sont trompés ; tu n“étais pas mort. Tu te souviens pas avoir signé un contrat ? D„habitude, ils remplissent un tas de documents juridiques avant de sortir quelqu“un du livre des morts."{#morte_s16_1}'

    menu:
        '"Euh… un contrat ? Non, je ne me souviens pas en avoir signé un. En fait, je ne me souviens pas de grand-chose."{#morte_s16_r1038}':
            # a57 # r1038
            jump morte_s32

        '"Le livre des morts ?"{#morte_s16_r1039}':
            # a58 # r1039
            jump morte_s17

        '"Juridiques ?"{#morte_s16_r1040}':
            # a59 # r1040
            jump morte_s18

        '"Laisse tomber. J„ai d“autres questions…"{#morte_s16_r1041}':
            # a60 # r1041
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s16_r1150}':
            # a61 # r1150
            jump morte_dispose


# s17 # say1042
label morte_s17: # from 16.1 18.0
    nr '"Ouais, le „livre des morts“. Tu connais ? Euh… peut-être pas. Écoute, oublie le „livre des morts“. Si tu es vivant, ça veut dire que tu n„es pas dedans."{#morte_s17_1}'

    menu:
        '"C„était quoi ce contrat… juridique… ce truc dont tu as parlé ?"{#morte_s17_r1151}':
            # a62 # r1151
            jump morte_s18

        '"J„ai d“autres questions…"{#morte_s17_r1152}':
            # a63 # r1152
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s17_r1153}':
            # a64 # r1153
            jump morte_dispose


# s18 # say1043
label morte_s18: # from 16.2 17.0
    nr '"Ouais, ça te donne pas envie de tout casser ? C„est la loi qui régit Sigil. Tu peux même pas soulager ta vessie sans avoir à signer un contrat."{#morte_s18_1}'

    menu:
        '"Qu„est-ce que tu disais à propos du “livre des morts„ ?"{#morte_s18_r1154}':
            # a65 # r1154
            jump morte_s17

        '"Peu importe. J„ai d“autres questions…"{#morte_s18_r1155}':
            # a66 # r1155
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s18_r1156}':
            # a67 # r1156
            jump morte_dispose


# s19 # say1044
label morte_s19: # from 15.0
    nr '"Par tous les dieux, on dirait que *tu* es complètement paumé. Tu n„as aucune idée de l“endroit d„où tu viens ? Quelque part, une nation de Béjaunes a perdu son roi. Tu le fais exprès ou tu as toujours été aussi bête ?"{#morte_s19_1}'

    menu:
        '"Je ne sais pas… Je ne me souviens de rien."{#morte_s19_r1139}':
            # a68 # r1139
            jump morte_s32

        '"Peu importe. J„ai d“autres questions…"{#morte_s19_r1140}':
            # a69 # r1140
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s19_r1141}':
            # a70 # r1141
            jump morte_dispose


# s20 # say1045
label morte_s20: # from 2.2 31.2
    nr '"Chef, je n„en ai pas la moindre idée. En tout cas, tu sais vraiment bien jouer le mort. Quand tu étais allongé là, je n“ai pas vu ta poitrine bouger ou tes yeux ciller… rien. Est-ce que tu avais bu ? C„est ce qu“il s„est passé ?"{#morte_s20_1}'

    menu:
        '"Je ne sais pas… Je ne me souviens de rien."{#morte_s20_r1097}':
            # a71 # r1097
            jump morte_s32

        '"Peu importe. J„ai d“autres questions…"{#morte_s20_r1098}':
            # a72 # r1098
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s20_r1099}':
            # a73 # r1099
            jump morte_dispose


# s21 # say1046
label morte_s21: # from 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1
    nr '"Eh ben, en *voilà* une bonne question. Le temps presse, chef. Si les Hommes-Poussière te trouvent, ils tenteront de corriger ton „problème“ de résurrection en te jetant dans le crématorium. Si tu continues à faire le mort, tu finiras de toute façon au crématorium. Un vrai dilemme de modrone, hein ? Que faire ?"{#morte_s21_1}'

    menu:
        '"Des Hommes-Poussière ?"{#morte_s21_r1047}':
            # a74 # r1047
            jump morte_s30

        '"Je… je m„échapperai."{#morte_s21_r1048}':
            # a75 # r1048
            jump morte_s22

        '"J„expliquerai la situation à ces… Hommes-Poussière."{#morte_s21_r1049}':
            # a76 # r1049
            jump morte_s25

        '"Qu„est-ce que je dois faire ?"{#morte_s21_r1050}' if morteLogic.r1050_condition():
            # a77 # r1050
            jump morte_s23

        '"Pourquoi tu ne me le dis pas ? On dirait que tu as déjà une réponse."{#morte_s21_r1051}' if morteLogic.r1051_condition():
            # a78 # r1051
            jump morte_s23

        'Ignore Morte et explore la pièce.{#morte_s21_r1081}':
            # a79 # r1081
            jump morte_dispose


# s22 # say1052
label morte_s22: # from 21.1
    nr '"Oh, *bonne* idée, chef ! Pourquoi n„y ai-*je* pas pensé ? Comment vas-tu t“échapper, hein ? Je vais te donner une piste. Cela demande un peu de coopération de ta part."{#morte_s22_1}'

    menu:
        '"Ça m„intéresse. Continue à parler."{#morte_s22_r1053}':
            # a80 # r1053
            jump morte_s23

        '"Laisse tomber. J„ai d“autres questions…"{#morte_s22_r1054}':
            # a81 # r1054
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s22_r1145}':
            # a82 # r1145
            jump morte_dispose


# s23 # say1055
label morte_s23: # from 21.3 21.4 22.0 26.0
    nr '"Tel que je le vois, tu dois sortir d„ici, c“est évident. Moi, je peux me permettre d„attendre. Tout ce que *je* risque, c“est de mourir d„ennui. On pourrait se donner un coup de main."{#morte_s23_1}'

    menu:
        '"Continue à parler…"{#morte_s23_r1058}':
            # a83 # r1058
            jump morte_s24

        '"Tu n„as pas de mains. Qu“est-ce que *tu* pourrais bien faire pour m„aider ?"{#morte_s23_r1059}':
            # a84 # r1059
            jump morte_s24

        '"Laisse tomber. J„ai d“autres questions…"{#morte_s23_r1060}':
            # a85 # r1060
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s23_r1146}':
            # a86 # r1146
            jump morte_dispose


# s24 # say1061
label morte_s24: # from 23.0 23.1
    nr '"Ça n„a peut-être pas l“air évident à première vue, mais je peux t„aider à sortir de là. Étant manchot, ça me pose un petit problème. Toi, il te manque quelque chose dans la boîte crânienne alors que moi j“ai suffisamment d„expérience et de savoir-faire pour te sortir de ce bouge. On coopère et on s“en sort tous les deux. Ça marche, bige ?"{#morte_s24_1}'

    menu:
        '"C„est d“accord."{#morte_s24_r1057}':
            # a87 # r1057
            jump morte_s28

        '"D„accord. J“ai le mauvais pressentiment que le destin veut qu„on voyage ensemble, Morte."{#morte_s24_r1062}':
            # a88 # r1062
            jump morte_s27

        '"Laisse tomber. J„ai d“autres questions…"{#morte_s24_r1063}':
            # a89 # r1063
            jump morte_s31

        '"Non merci. Te parler est suffisamment pénible. Je trouverai moi-même un moyen de sortir."{#morte_s24_r1147}':
            # a90 # r1147
            jump morte_dispose


# s25 # say1064
label morte_s25: # from 21.2
    nr '"Oh, *bonne* idée, chef ! Pourquoi n„y ai-je pas pensé ?" Il prend un ton moqueur. "Hé, M. Homme-Poussière, j“étais mort et je me suis réveillé dans votre petite Morgue. Pouvez-vous m„aider ?" C“est sûr qu„ils vont t“aider ! Ils te regarderont quelques secondes, appelleront les gardes et te jetteront dans un four rien que pour toi."{#morte_s25_1}'

    menu:
        '"Ça me paraît un peu extrême… Pourquoi ils feraient ça ?"{#morte_s25_r1065}':
            # a91 # r1065
            jump morte_s26

        '"Eh bien, leurs gardes ont intérêt à être costauds pour venir à bout de moi."{#morte_s25_r1066}':
            # a92 # r1066
            jump morte_s26

        '"Laisse tomber. J„ai d“autres questions…"{#morte_s25_r1067}':
            # a93 # r1067
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s25_r1149}':
            # a94 # r1149
            jump morte_dispose


# s26 # say1068
label morte_s26: # from 25.0 25.1
    nr '"Fais-moi confiance… Quoi que tu fasses, quoi que tu dises, ils t„auront. Tu n“es pas assez fort pour briser une tombe de pierre ou survivre à la chaleur du Plan Élémentaire du Feu. C„est déjà assez dur comme ça de revenir d“entre les morts. Ne fais pas l„idiot."{#morte_s26_1}'

    menu:
        '"Alors, ton plan, c„est… ?"{#morte_s26_r1069}':
            # a95 # r1069
            jump morte_s23

        '"Peu importe. J„ai d“autres questions…"{#morte_s26_r1070}':
            # a96 # r1070
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s26_r1148}':
            # a97 # r1148
            jump morte_dispose


# s27 # say1071
label morte_s27: # from 24.1
    nr '"Au diable le destin, pour ce que j„en ai à faire. Écoute, chef. Observe combien de fois les mots “mauvais„ et “destin„ se retrouvent dans la même phrase et tu comprendras l“un des petits mystères de la vie. Le destin peut bien aller se faire pendre avec du lierre-rasoir. Il existe *toujours* une alternative."{#morte_s27_1}'

    menu:
        '"Je m„en souviendrai."{#morte_s27_r1073}':
            # a98 # r1073
            jump morte_s28

        '"Assez parlé. C„est quoi ton super plan ?"{#morte_s27_r1074}':
            # a99 # r1074
            jump morte_s28


# s28 # say1072
label morte_s28: # from 24.0 27.0 27.1
    nr '"D„accord… bon, allez, jouons un air à cet endroit. Les portes là-bas sont fermées à clé. Il nous faut la clé. Il y a des chances pour que l“un des cadavres qui déambulent dans la pièce l„ait.{#morte_s28_1}'

    menu:
        '"Des cadavres qui déambulent ?"{#morte_s28_r1079}':
            # a100 # r1079
            $ morteLogic.r1079_action()
            jump morte_s240


# s29 # say996
label morte_s29: # -
    nr '"Alors comme ça, on se remet à parler à Morte *maintenant*, hein ?"{#morte_s29_1}'

    menu:
        '"Qui es-tu ?"{#morte_s29_r1075}':
            # a101 # r1075
            jump morte_s1

        '"Où suis-je ?"{#morte_s29_r1076}':
            # a102 # r1076
            jump morte_s6

        '"Tu sais comment je peux sortir d„ici ?"{#morte_s29_r1077}' if morteLogic.r1077_condition():
            # a103 # r1077
            jump morte_s21

        '"Comment j„ai atterri ici ?"{#morte_s29_r1078}':
            # a104 # r1078
            jump morte_s14

        'Ignore Morte et explore la pièce.{#morte_s29_r1086}':
            # a105 # r1086
            jump morte_dispose


# s30 # say1082
label morte_s30: # from 21.0
    nr '"Les Hommes-Poussière ? Ils surveillent cet endroit. Tu ne peux pas les manquer… ils sont obsédés par la noirceur et la rigidité cadavérique du visage. Ils se font appeler „les Hommes-Poussière“ et se font passer pour une faction, mais ce n„est en fait qu“une bande de goules adoratrices de la mort."{#morte_s30_1}'

    menu:
        '"Alors, comment je peux sortir d„ici ?"{#morte_s30_r1083}' if morteLogic.r1083_condition():
            # a106 # r1083
            jump morte_s21

        '"Peu importe. J„ai d“autres questions…"{#morte_s30_r1084}':
            # a107 # r1084
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s30_r1144}':
            # a108 # r1144
            jump morte_dispose


# s31 # say1091
label morte_s31: # from 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2
    nr '"Ouais ? Et *quelles* questions ?"{#morte_s31_1}'

    menu:
        '"Qui es-tu ?"{#morte_s31_r1092}':
            # a109 # r1092
            jump morte_s1

        '"Où suis-je ?"{#morte_s31_r1093}':
            # a110 # r1093
            jump morte_s6

        '"Comment j„ai atterri ici ?"{#morte_s31_r1094}':
            # a111 # r1094
            jump morte_s20

        '"Comment je peux sortir d„ici ?"{#morte_s31_r1095}' if morteLogic.r1095_condition():
            # a112 # r1095
            jump morte_s21

        'Ignore Morte et explore la pièce.{#morte_s31_r1096}':
            # a113 # r1096
            jump morte_dispose


# s32 # say1100
label morte_s32: # from 16.0 19.0 20.0
    nr '"Tu te souviens de *rien ?* Allez, tout ça, c„est des conneries de tanar“ri. T„es sérieux ?"{#morte_s32_1}'

    menu:
        '"Oui."{#morte_s32_r1101}':
            # a114 # r1101
            jump morte_s33

        '"Peu importe. J„ai d“autres questions…"{#morte_s32_r1102}':
            # a115 # r1102
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s32_r1103}':
            # a116 # r1103
            jump morte_dispose


# s33 # say1104
label morte_s33: # from 32.0
    nr '"Par tous les dieux et leurs mères… ben chef, y a des chances que tes souvenirs aient décidé de piquer une tête dans ta boîte grise. Avec un peu d„chance, ils remonteront bientôt prendre l“air, fais-moi confiance. T„as dû avoir une nuit bien arrosée. Reste à espérer que t“as blessé personne et que t„as pas eu d“ennuis avec les autorités… au fait, en parlant de ça, tu s„rais pas l“un d„ces Sensats qui aiment l“automutilation, ou est-ce que c„est quelqu“un qui t„a fait ces cicatrices ?"{#morte_s33_1}'

    menu:
        '"Un Sensat ?"{#morte_s33_r1105}':
            # a117 # r1105
            jump morte_s12

        '"Des cicatrices ?"{#morte_s33_r1106}':
            # a118 # r1106
            jump morte_s13

        '"J„ai d“autres questions…"{#morte_s33_r1107}':
            # a119 # r1107
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s33_r1108}':
            # a120 # r1108
            jump morte_dispose


# s34 # say1117
label morte_s34: # from 13.0
    nr '"On dirait des directions…" Morte se racle la gorge. "Voyons. Ça commence par…"  ^NREMARQUE : "Je sais que tu as l„impression d“avoir bu plusieurs barils d„eau du Styx, mais tu dois te ressaisir. Parmi tes biens, tu devrais trouver un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les parties manquantes de la chanson, s“il n„est pas déjà inscrit dans le livre des morts.   Ne perds ni ces lambeaux de chair NI ce journal, sinon nous finirons à nouveau dans le Styx, compris ? Et fais-moi confiance, quoi que tu fasses, NE DIS à personne QUI tu es, CE qui t“est arrivé, ni D„OÙ tu viens, sinon tu risques de te retrouver vite fait au crématorium."^{#morte_s34_1}'

    menu:
        '"Pas étonnant que mon dos me fasse mal. Tu connais un certain Pharod ?"{#morte_s34_r1118}':
            # a121 # r1118
            jump morte_s36

        '"Tu as vu un journal sur moi lorsque j„étais étendu ici ?"{#morte_s34_r1119}':
            # a122 # r1119
            jump morte_s35

        '"Tu sais comment je peux sortir d„ici ?"{#morte_s34_r1120}' if morteLogic.r1120_condition():
            # a123 # r1120
            jump morte_s21

        '"J„ai d“autres questions…"{#morte_s34_r1121}':
            # a124 # r1121
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s34_r1122}':
            # a125 # r1122
            jump morte_dispose


# s35 # say1123
label morte_s35: # from 34.1 36.0
    nr '"Non… tu es arrivé ici nu comme un ver. De toute façon, on dirait que tu as assez d„un roman écrit sur ton corps."{#morte_s35_1}'

    menu:
        '"Tu connais un certain Pharod ?"{#morte_s35_r1124}':
            # a126 # r1124
            jump morte_s36

        '"Comment je peux sortir d„ici ?"{#morte_s35_r1125}' if morteLogic.r1125_condition():
            # a127 # r1125
            jump morte_s21

        '"Peu importe. J„ai d“autres questions…"{#morte_s35_r1126}':
            # a128 # r1126
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s35_r1127}':
            # a129 # r1127
            jump morte_dispose


# s36 # say1128
label morte_s36: # from 34.0 35.0
    nr '"Connais pas. Ceci dit, je ne connais pas grand monde. Mais il doit bien y avoir un bige qui sait où trouver ce type… une fois que nous serons sortis d„ici, évidemment."{#morte_s36_1}'

    menu:
        '"J„avais un journal sur moi quand j“étais étendu ici ?"{#morte_s36_r1129}':
            # a130 # r1129
            jump morte_s35

        '"Comment je peux sortir d„ici ?"{#morte_s36_r1130}' if morteLogic.r1130_condition():
            # a131 # r1130
            jump morte_s21

        '"Peu importe. J„ai d“autres questions…"{#morte_s36_r1131}':
            # a132 # r1131
            jump morte_s31

        'Ignore Morte et explore la pièce.{#morte_s36_r1132}':
            # a133 # r1132
            jump morte_dispose


# s37 # say1818
label morte_s37: # -
    nr '"Quelle chance ! Nous avions probablement perdu ce que nous cherchions dans ta guitoune, ma belle."{#morte_s37_1}'

    menu:
        '"En fait, j„ai perdu un journal."{#morte_s37_r1820}':
            # a134 # r1820
            jump harlotn_s2  # EXTERN

        '"Tu pourrais peut-être m„aider à retrouver ce que j“ai perdu."{#morte_s37_r1819}':
            # a135 # r1819
            jump harlotn_s3  # EXTERN

        '"Je n„ai rien perdu, mais j“ai quelques questions…"{#morte_s37_r1821}':
            # a136 # r1821
            jump harlotn_s9  # EXTERN

        '"Je dois m„en aller. Au revoir."{#morte_s37_r1822}':
            # a137 # r1822
            jump harlotn_s11  # EXTERN


# s38 # say1844
label morte_s38: # -
    nr '"Chef, tu me passes un peu de jonc… ça… ça fait longtemps, tu sais."{#morte_s38_1}'

    menu:
        '"Euh… eh bien, je suppose que ça ne peut pas *faire de mal*…"{#morte_s38_r1845}':
            # a138 # r1845
            $ morteLogic.r1845_action()
            jump harlotn_s7  # EXTERN

        '"Je ne vais même pas te demander comment tu as l„intention de t“y prendre."{#morte_s38_r1846}':
            # a139 # r1846
            $ morteLogic.r1846_action()
            jump harlotn_s7  # EXTERN

        '"Écoute… On doit vraiment partir, Morte. Au revoir, mademoiselle."{#morte_s38_r1847}':
            # a140 # r1847
            $ morteLogic.r1847_action()
            jump morte_dispose


# s39 # say2000
label morte_s39: # -
    nr '"Elle parle d„argent."{#morte_s39_1}'

    menu:
        '"Oh !"{#morte_s39_r2001}':
            # a141 # r2001
            jump annah_s5  # EXTERN


# s40 # say2048
label morte_s40: # -
    nr '"Heureusement que ni toi ni ta queue n„êtes à vendre. Tu n“arriverais jamais à en vivre, de toute façon."{#morte_s40_1}'

    menu:
        '"Euh…"{#morte_s40_r2049}':
            # a142 # r2049
            jump annah_s13  # EXTERN


# s41 # say2067
label morte_s41: # -
    nr '"C„est une tieffeline, chef. Du sang de démon coule dans leurs veines. Ça les rend paranos et agressifs… belle queue, pourtant. Dommage qu“elle soit attachée à un corps si laid."{#morte_s41_1}'

    menu:
        '"Ouah, maintenant…"{#morte_s41_r2068}':
            # a143 # r2068
            jump annah_s17  # EXTERN

        '"Hé, bravo, Morte."{#morte_s41_r2069}':
            # a144 # r2069
            jump annah_s17  # EXTERN


# s42 # say2074
label morte_s42: # -
    nr '"*Essaie* de m„éclater la mâchoire, petite ! Tout ce que j“entends, c„est le bla-bla d“une traînée de la Ruche ! Vas-y, frappe ! Essaie et je t„arrache les jambes avec les dents !"{#morte_s42_1}'

    menu:
        '"Ça suffit !"{#morte_s42_r2076}':
            # a145 # r2076
            jump annah_s18  # EXTERN

        '"Ça suffit ! On s„en va."{#morte_s42_r2075}':
            # a146 # r2075
            jump annah_s14  # EXTERN


# s43 # say2079
label morte_s43: # -
    nr '"Un mimir est une encyclopédie vivante. C„est moi, chef."{#morte_s43_1}'

    menu:
        '"J„y suis."{#morte_s43_r2080}':
            # a147 # r2080
            $ morteLogic.r2080_action()
            jump annah_s21  # EXTERN


# s44 # say2348
label morte_s44: # -
    nr '"Laisse tomber, chef. Parler à un gith, c„est comme tenter de se sortir du lierre-rasoir."{#morte_s44_1}'

    menu:
        '"Gith ?"{#morte_s44_r9029}' if morteLogic.r9029_condition():
            # a148 # r9029
            $ morteLogic.r9029_action()
            jump morte_s135

        '"Gith ?"{#morte_s44_r9030}' if morteLogic.r9030_condition():
            # a149 # r9030
            jump morte_s135

        '"Je n„ai pas l“intention de partir tout de suite. Je vais d„abord lui poser des questions…"{#morte_s44_r9031}':
            # a150 # r9031
            jump gith_s7  # EXTERN

        'Laisse le gith tranquille.{#morte_s44_r9032}':
            # a151 # r9032
            jump morte_dispose


# s45 # say2354
label morte_s45: # -
    nr '"Je ne perdrais pas de temps à essayer de parler sérieusement avec Ignorance-la-bienheureuse. Allons-nous-en, chef."{#morte_s45_1}'

    menu:
        '"Je n„ai pas l“intention de partir tout de suite. Je vais d„abord lui poser des questions…"{#morte_s45_r9033}':
            # a152 # r9033
            jump gith_s7  # EXTERN

        'Laisse le gith tranquille.{#morte_s45_r9034}':
            # a153 # r9034
            jump morte_dispose


# s46 # say2601
label morte_s46: # externs zf916_s2 zf916_s1 zf916_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s46_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s46_r2603}':
            # a154 # r2603
            $ morteLogic.r2603_action()
            jump morte_s47

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s46_r2602}':
            # a155 # r2602
            $ morteLogic.r2602_action()
            jump morte_s47


# s47 # say2604
label morte_s47: # from 46.0 46.1 121.1 121.2
    nr '"Quoi… tu es AVEUGLE ? ! Elle m„a dragué ! C“était évident, elle me VOULAIT honteusement !"{#morte_s47_1}'

    menu:
        '"Dis plutôt qu„elle voulait que tu *partes*. Ayant porté toute son attention sur MOI, elle n“a certainement pas dû remarquer la présence d„un crâne sans cervelle."{#morte_s47_r2605}':
            # a156 # r2605
            $ morteLogic.r2605_action()
            jump morte_s49

        '"Je crois que tu as trop d„imagination. C“est une zombi. Un cadavre. Elle est morte. Elle n„a sans doute même pas remarqué que tu étais là."{#morte_s47_r2606}':
            # a157 # r2606
            jump morte_s48

        '"Je trouve que tu as un peu trop d„imagination."{#morte_s47_r2607}':
            # a158 # r2607
            jump morte_s48

        '"Peu importe, Morte. Allons-y."{#morte_s47_r2608}':
            # a159 # r2608
            jump morte_dispose


# s48 # say2609
label morte_s48: # from 47.1 47.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes . C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s48_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s48_r2610}':
            # a160 # r2610
            jump morte_dispose


# s49 # say2611
label morte_s49: # from 47.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les pépées d“outre-tombe s„en foutent bien du “physique„, “regarde-moi comme je suis beau„ et “je suis couvert de cicatrices et j„ai l“air d„un dur“. Elles veulent un gars avec de l„ESPRIT. C“est moi, chef. Toi ? Des cadavres comme TOI, c„est monnaie courante.{#morte_s49_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s49_r2612}':
            # a161 # r2612
            jump morte_dispose


# s50 # say2709
label morte_s50: # -
    nr '"Quoi ? Qu„est-ce que c“est ? Est-ce que cette pépée t„ennuie ?"{#morte_s50_1}'

    jump test_s7  # EXTERN


# s51 # say2711
label morte_s51: # -
    nr '"Je le crois. Il devrait peut-être retourner au menu principal et me laisser."{#morte_s51_1}'

    jump test_s0  # EXTERN


# s52 # say2782
label morte_s52: # -
    nr '"Oh, pour l„amour des Puissances ! Un dabus !"{#morte_s52_1}'

    menu:
        '"Qu„est-ce qui ne va pas ?"{#morte_s52_r2783}':
            # a162 # r2783
            jump morte_s53


# s53 # say2788
label morte_s53: # from 52.0
    nr '"C„est un dabus. Ils *s“expriment* en rébus, ces puzzles de mots barbants. Si *tu* ne sais pas ce qu„il dit, nous ferions mieux de trouver un natif ou un autre moyen de communication… si c“est vraiment nécessaire. Quel groupe assommant ! Tu paries qu„ils *peuvent* parler, mais qu“ils préfèrent coder tout ce qu„ils disent ne serait-ce que pour le plaisir d“énerver tout le monde."{#morte_s53_1}'

    menu:
        '"C„est quoi un “dabus„ ?"{#morte_s53_r2791}':
            # a163 # r2791
            jump morte_s54


# s54 # say2789
label morte_s54: # from 53.0
    nr '"La chanson dit que ce sont les gardes de la Dame des Douleurs. Ils flottent, cassent, réparent et rapiècent Sigil selon ses caprices. Ils sont pires que des mouches vertes." Morte soupire. "Mais interdiction de les écraser, sinon la Dame… se fâche."{#morte_s54_1}'

    menu:
        '"La „Dame des Douleurs“ ? Qui c„est ?"{#morte_s54_r6952}' if morteLogic.r6952_condition():
            # a164 # r6952
            $ morteLogic.r6952_action()
            jump morte_s113

        '"Qu„est-ce que tu peux me dire sur la Dame des Douleurs ?"{#morte_s54_r6953}' if morteLogic.r6953_condition():
            # a165 # r6953
            jump morte_s113

        '"Je vois."{#morte_s54_r6954}' if morteLogic.r6954_condition():
            # a166 # r6954
            jump dabus_s3  # EXTERN


# s55 # say3473
label morte_s55: # externs eivene_s3
    nr '"La morte me semble un peu dure d„oreille, chef. On laisse tomber, d“accord ?"{#morte_s55_1}'

    menu:
        '"Qu„est-ce qu“elle a aux mains ?"{#morte_s55_r3474}':
            # a167 # r3474
            $ morteLogic.j38205_s55_r3474_action()
            jump morte_s56

        'Donne une petite tape à la femme, attire son attention.{#morte_s55_r3475}':
            # a168 # r3475
            jump eivene_s4  # EXTERN

        'Laisse-la tranquille.{#morte_s55_r3476}':
            # a169 # r3476
            jump morte_dispose


# s56 # say3477
label morte_s56: # from 55.0
    nr '"Hé, chef… c„est une *tieffeline*. Ils ont du sang fiélon dans les veines, parce que leurs ancêtres ont flirté avec le démon. Certains sont vraiment bizarres dans leurs têtes… et ils ont aussi l“air bizarre."{#morte_s56_1}'

    menu:
        'Donne une petite tape à la femme, attire son attention.{#morte_s56_r3478}':
            # a170 # r3478
            jump eivene_s4  # EXTERN

        'Laisse-la tranquille.{#morte_s56_r3479}':
            # a171 # r3479
            jump morte_dispose


# s57 # say3480
label morte_s57: # externs eivene_s20
    nr '"La morte me semble un peu dure d„oreille, chef. On laisse tomber, d“accord ?"{#morte_s57_1}'

    menu:
        '"Qu„est-ce qu“elle a aux mains ?"{#morte_s57_r3483}':
            # a172 # r3483
            $ morteLogic.j38205_s57_r3483_action()
            jump morte_s58

        'Pars.{#morte_s57_r3484}':
            # a173 # r3484
            jump morte_dispose


# s58 # say3481
label morte_s58: # from 57.0
    nr '"Hé, chef… c„est une *tieffeline*. Ils ont une pointe de sang fiélon dans les veines, parce que leurs ancêtres ont flirté avec le démon. Certains sont vraiment bizarres dans leurs têtes… et généralement, ils ont aussi l“air bizarre."{#morte_s58_1}'

    menu:
        'Pars.{#morte_s58_r3482}':
            # a174 # r3482
            jump morte_dispose


# s59 # say3487
label morte_s59: # externs eivene_s9
    nr '"On dirait que tu t„es fait une nouvelle amie, chef. Je vous laisse en tête-à-tête… ?"{#morte_s59_1}'

    menu:
        '"Ça suffit, Morte."{#morte_s59_r3488}':
            # a175 # r3488
            jump eivene_s11  # EXTERN

        'Continue à jouer le zombi.{#morte_s59_r3489}':
            # a176 # r3489
            jump eivene_s11  # EXTERN

        'Repousse la femme.{#morte_s59_r3490}':
            # a177 # r3490
            jump eivene_s10  # EXTERN


# s60 # say3492
label morte_s60: # externs eivene_s13
    nr '"C„est la deuxième fois de ma vie que je suis content de ne pas avoir de nez."{#morte_s60_1}'

    jump eivene_s14  # EXTERN


# s61 # say3870
label morte_s61: # externs dust_s40
    nr '"Eh ! Eh ! Qu„est-ce que tu fais ?"{#morte_s61_1}'

    menu:
        '"*J„allais* parler à ce type. Ça pose un problème ?"{#morte_s61_r3871}':
            # a178 # r3871
            $ morteLogic.r3871_action()
            jump morte_s62

        '"Rien, continuons."{#morte_s61_r3872}':
            # a179 # r3872
            jump morte_dispose


# s62 # say3873
label morte_s62: # from 61.0
    nr '"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c„est une histoire d“incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l„autre, ils te brûleront ou t“enterreront. Allez, ne joue pas les azimutés, allons-nous en."{#morte_s62_1}'

    menu:
        '"Merci du conseil, mais je compte *bien* aller parler à ce type."{#morte_s62_r3874}':
            # a180 # r3874
            $ morteLogic.r3874_action()
            jump morte_s64

        '"D„accord, continuons."{#morte_s62_r3875}':
            # a181 # r3875
            jump morte_dispose


# s63 # say3876
label morte_s63: # externs dust_s40
    nr '"Eh ! T„es sourd ? Qu“est-ce que tu fais ?"{#morte_s63_1}'

    menu:
        '"Écoute, je vais aller parler à ce type. Ça pose un problème ?"{#morte_s63_r3877}':
            # a182 # r3877
            $ morteLogic.r3877_action()
            jump morte_s64

        '"Rien, continuons."{#morte_s63_r3878}':
            # a183 # r3878
            jump morte_dispose


# s64 # say3879
label morte_s64: # from 62.0 63.0
    nr '"C„est ça, ne m“écoute *pas*… tu signes ton arrêt de mort."{#morte_s64_1}'

    menu:
        '"Ouais, et tu peux jouer le chant funèbre. Pour l„instant, tais-toi."{#morte_s64_r3880}':
            # a184 # r3880
            jump dust_s3  # EXTERN

        '"Non, tu as raison. Laisse tomber. Continuons."{#morte_s64_r3881}':
            # a185 # r3881
            jump morte_dispose


# s65 # say3964
label morte_s65: # -
    nr '"Eh, chef, c„est du vandalisme. Ces boulons sont probablement les seules pièces qui tenaient ce sac d“os ensemble. La nécromancie a ses limites avec des gars comme ça, tu sais ?"{#morte_s65_1}'

    menu:
        '"Et alors ?"{#morte_s65_r3965}':
            # a186 # r3965
            $ morteLogic.r3965_action()
            jump morte_s66

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."{#morte_s65_r3966}':
            # a187 # r3966
            $ morteLogic.r3966_action()
            jump morte_s66

        '"Bon, très bien. Peu importe. Peut-être une autre fois."{#morte_s65_r3967}':
            # a188 # r3967
            jump morte_s66


# s66 # say3968
label morte_s66: # from 65.0 65.1 65.2
    nr '"Oh, c„est pas un problème." Morte exécute une drôle de révérence que tu interprètes comme un haussement d“épaule. "J„étais pas certain que tu connaisses. Vas-y, je t“en prie."{#morte_s66_1}'

    menu:
        'Essaie de déboulonner les articulations du squelette.{#morte_s66_r3969}' if morteLogic.r3969_condition():
            # a189 # r3969
            jump skelw_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s66_r3970}' if morteLogic.r3970_condition():
            # a190 # r3970
            jump skelw_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s66_r3971}' if morteLogic.r3971_condition():
            # a191 # r3971
            jump skelw_s6  # EXTERN

        'Peu importe. Ce sera pour la prochaine fois.{#morte_s66_r3972}' if morteLogic.r3972_condition():
            # a192 # r3972
            $ morteLogic.r3972_action()
            jump morte_s67

        'Peu importe. Ce sera pour la prochaine fois.{#morte_s66_r3973}' if morteLogic.r3973_condition():
            # a193 # r3973
            jump morte_dispose


# s67 # say3974
label morte_s67: # from 66.3
    nr '"Hmmmm. Va savoir si cette barbe grise serait fâchée que *je* lui emprunte son corps…"{#morte_s67_1}'

    menu:
        '"Barbe grise ?"{#morte_s67_r3975}':
            # a194 # r3975
            jump morte_s68

        '"Je ne pense pas qu„il soit en mesure de protester."{#morte_s67_r3976}':
            # a195 # r3976
            jump morte_s69

        '"Quelque chose me dit que tu serais deux fois plus horripilant si tu avais des bras. Partons."{#morte_s67_r3977}':
            # a196 # r3977
            jump morte_s70


# s68 # say3978
label morte_s68: # from 67.0
    nr '"Barbe grise… tu sais, un vieux schnock, un croulant…"{#morte_s68_1}'

    menu:
        '"Eh bien, je ne pense pas qu„il soit en mesure de protester. Pourquoi ne pas prendre son corps ?"{#morte_s68_r3979}':
            # a197 # r3979
            jump morte_s69

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s68_r3980}':
            # a198 # r3980
            jump morte_s70


# s69 # say3981
label morte_s69: # from 67.1 68.0
    nr 'Morte observe le squelette un instant, puis secoue la tête. "Non… il m„en faut un plus frais. Et avec un peu plus de dignité… celui-ci est craquelé et fracturé."{#morte_s69_1}'

    menu:
        '"Et pas toi ?"{#morte_s69_r3982}':
            # a199 # r3982
            jump morte_s70

        '"Bon, très bien. Allons-y."{#morte_s69_r3983}':
            # a200 # r3983
            jump morte_dispose


# s70 # say3984
label morte_s70: # from 67.2 68.1 69.0 127.0
    nr '"Oh, tu es vraiment impayable." Morte te lance un regard furieux. "TU peux te moquer, bige. Les miroirs demandent pitié quand tu t„approches."{#morte_s70_1}'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."{#morte_s70_r3985}':
            # a201 # r3985
            jump morte_s71

        '"Allons-y."{#morte_s70_r3986}':
            # a202 # r3986
            jump morte_dispose


# s71 # say3987
label morte_s71: # from 70.0
    nr 'Morte grogne. Tu te demandes comment il a fait sans poumons.{#morte_s71_1}'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."{#morte_s71_r3988}':
            # a203 # r3988
            $ morteLogic.r3988_action()
            jump morte_s72

        '"Allons-y."{#morte_s71_r3989}':
            # a204 # r3989
            jump morte_dispose


# s72 # say3990
label morte_s72: # from 71.0
    nr '"La liste de mes regrets s„allonge : j“aurais jamais dû t„aider à sortir de la salle de préparation." Morte grogne encore. "J“aurais dû te laisser pourrir… encore plus, j„veux dire."{#morte_s72_1}'

    menu:
        '"Je suis content pour toi. Allons-y."{#morte_s72_r3991}':
            # a205 # r3991
            jump morte_dispose


# s73 # say4018
label morte_s73: # externs giantsk_s9 giantsk_s8 giantsk_s7 giantsk_s6 giantsk_s5 giantsk_s4 giantsk_s1 giantsk_s0
    nr 'Morte grimace.{#morte_s73_1}'

    menu:
        '"Euh, ça veut dire oui ou… ?"{#morte_s73_r4019}':
            # a206 # r4019
            jump morte_s74


# s74 # say4020
label morte_s74: # from 73.0
    nr '"Oh… pardon." Morte flotte au-dessus de la tête du squelette. Il l„observe, puis redescend, tout en examinant l“armure et la lame. "Oh, oui. Oui, oui, je crois que ça fera l„affaire."{#morte_s74_1}'

    menu:
        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."{#morte_s74_r4023}' if morteLogic.r4023_condition():
            # a207 # r4023
            jump giantsk_s2  # EXTERN

        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."{#morte_s74_r4024}' if morteLogic.r4024_condition():
            # a208 # r4024
            jump giantsk_s3  # EXTERN

        '"Je ne sais pas. Cette chose ne m„a pas l“air d„être à ta portée."{#morte_s74_r4025}':
            # a209 # r4025
            jump morte_s75

        '"Je crois qu„on ferait mieux de le laisser tranquille."{#morte_s74_r4026}':
            # a210 # r4026
            jump morte_s75


# s75 # say4021
label morte_s75: # from 74.2 74.3
    nr '"Pourquoi, au nom de Baator, m„as-tu DEMANDÉ si je le voulais ? Tu exerçais tes compétences en cruauté ?" Morte fait une moue indignée. "Après tout ce que j“ai fait pour toi…"{#morte_s75_1}'

    menu:
        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."{#morte_s75_r4027}' if morteLogic.r4027_condition():
            # a211 # r4027
            jump giantsk_s2  # EXTERN

        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."{#morte_s75_r4028}' if morteLogic.r4028_condition():
            # a212 # r4028
            jump giantsk_s3  # EXTERN

        '"Je pensais à ta sécurité, Morte. J„ai peur de te blesser en t“attachant la tête là-dessus."{#morte_s75_r4029}':
            # a213 # r4029
            $ morteLogic.r4029_action()
            jump morte_s76

        '"Je crois vraiment qu„on devrait le laisser tranquille. Allons-nous-en."{#morte_s75_r4030}':
            # a214 # r4030
            jump morte_dispose


# s76 # say4022
label morte_s76: # from 75.2
    nr 'Morte t„observe un instant. "Quoi, on est MARIÉS ou quoi ? C“est quoi ce délire „Surtout, fais attention à toi“ ?" Morte te jette un regard furieux. "Si tu tenais VRAIMENT à moi, tu trouverais un moyen de mettre ma tête sur ce squelette géant."{#morte_s76_1}'

    menu:
        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."{#morte_s76_r4031}' if morteLogic.r4031_condition():
            # a215 # r4031
            jump giantsk_s2  # EXTERN

        '"Bon, très bien… Donne-moi une seconde pour enlever la tête de cette chose."{#morte_s76_r4032}' if morteLogic.r4032_condition():
            # a216 # r4032
            jump giantsk_s3  # EXTERN

        '"Excuse-moi, je ne m„inquiète pas pour toi à ce point-là. Allons-y."{#morte_s76_r4033}':
            # a217 # r4033
            jump morte_dispose

        '"Je te dis de le laisser tranquille. Maintenant, allons-nous-en."{#morte_s76_r4034}' if morteLogic.r4034_condition():
            # a218 # r4034
            jump morte_dispose


# s77 # say4134
label morte_s77: # -
    nr '"Eh ! Eh ! Qu„est-ce que tu fais ?"{#morte_s77_1}'

    menu:
        '"*J„allais* parler à ce type. Ça pose un problème ?"{#morte_s77_r4144}':
            # a219 # r4144
            $ morteLogic.r4144_action()
            jump morte_s78

        '"Rien, continuons."{#morte_s77_r4145}':
            # a220 # r4145
            $ morteLogic.r4145_action()
            jump morte_dispose


# s78 # say4135
label morte_s78: # from 77.0
    nr '"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c„est une histoire d“incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l„autre, ils te brûleront ou t“enterreront. Allez, ne joue pas les azimutés, allons-nous en."{#morte_s78_1}'

    menu:
        '"Merci du conseil, mais je compte *bien* aller parler à ce type."{#morte_s78_r4142}':
            # a221 # r4142
            $ morteLogic.r4142_action()
            jump morte_s80

        '"D„accord, continuons."{#morte_s78_r4143}':
            # a222 # r4143
            $ morteLogic.r4143_action()
            jump morte_dispose


# s79 # say4136
label morte_s79: # -
    nr '"Eh ! T„es sourd ? Qu“est-ce que tu fais ?"{#morte_s79_1}'

    menu:
        '"Écoute, je vais aller parler à ce type. Ça pose un problème ?"{#morte_s79_r4140}':
            # a223 # r4140
            $ morteLogic.r4140_action()
            jump morte_s80

        '"Rien, continuons."{#morte_s79_r4141}':
            # a224 # r4141
            jump morte_dispose


# s80 # say4137
label morte_s80: # from 78.0 79.0
    nr '"Alors, ne m„écoute *pas*… c“est ta mort."{#morte_s80_1}'

    menu:
        '"Ouais, et tu peux jouer le chant funèbre. Pour l„instant, tais-toi."{#morte_s80_r4138}':
            # a225 # r4138
            jump dustgu_s12  # EXTERN

        '"Non, tu as raison. Laisse tomber. Continuons."{#morte_s80_r4139}':
            # a226 # r4139
            jump morte_dispose


# s81 # say4338
label morte_s81: # externs dustfem_s40
    nr '"Eh ! Eh ! Qu„est-ce que tu fais ?"{#morte_s81_1}'

    menu:
        '"*J„allais* parler à cette dame. Ça te pose un problème ?"{#morte_s81_r4339}':
            # a227 # r4339
            $ morteLogic.r4339_action()
            jump morte_s82

        '"Rien, continuons."{#morte_s81_r4340}':
            # a228 # r4340
            jump morte_dispose


# s82 # say4341
label morte_s82: # from 81.0
    nr '"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c„est une histoire d“incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l„autre, ils te brûleront ou t“enterreront. Allez, ne joue pas les azimutés, allons-nous en."{#morte_s82_1}'

    menu:
        '"Merci du conseil, mais je compte *bien* aller parler à cette dame."{#morte_s82_r4342}':
            # a229 # r4342
            $ morteLogic.r4342_action()
            jump morte_s84

        '"D„accord, continuons."{#morte_s82_r4343}':
            # a230 # r4343
            jump morte_dispose


# s83 # say4344
label morte_s83: # externs dustfem_s40
    nr '"Eh ! T„es sourd ? Qu“est-ce que tu fais ?"{#morte_s83_1}'

    menu:
        '"Écoute, je vais aller parler à cette dame. Y a un problème ?"{#morte_s83_r4345}':
            # a231 # r4345
            $ morteLogic.r4345_action()
            jump morte_s84

        '"Rien, continuons."{#morte_s83_r4346}':
            # a232 # r4346
            jump morte_dispose


# s84 # say4347
label morte_s84: # from 82.0 83.0
    nr '"Alors, ne m„écoute *pas*… c“est ta mort."{#morte_s84_1}'

    menu:
        '"Ouais, et tu peux jouer le chant funèbre. Pour l„instant, tais-toi."{#morte_s84_r4348}':
            # a233 # r4348
            jump dustfem_s3  # EXTERN

        '"Non, tu as raison. Laisse tomber. Continuons."{#morte_s84_r4349}':
            # a234 # r4349
            jump morte_dispose


# s85 # say4675
label morte_s85: # externs vaxis_s9
    nr 'Morte se met à chuchoter. "Par les Puissances… ce bige est un *Anarchiste*. Se faire passer pour un zombi doit être un must chez les zozos."{#morte_s85_1}'

    menu:
        '"Anarchiste ?"{#morte_s85_r4676}':
            # a235 # r4676
            $ morteLogic.j64512_s85_r4676_action()
            jump morte_s86


# s86 # say4677
label morte_s86: # from 85.0
    nr '"Les Anarchistes… C„est une faction…" Morte semble vouloir exprimer un torrent d“insultes, mais il remarque que le zombi vous observe et vous écoute. "… ils, heu, veulent *libérer* tout le monde des chaînes du gouvernement. Faire tomber l„ordre établi et en créer un autre."{#morte_s86_1}'

    menu:
        'Vérité : "Cette quête semble noble. Quelques entorses à l„ordre ne feraient pas de mal de temps en temps."{#morte_s86_r4678}':
            # a236 # r4678
            $ morteLogic.r4678_action()
            jump vaxis_s11  # EXTERN

        'Mensonge : "Cette quête semble noble. Un Anarchiste poursuivant un dessein aussi grandiose *ne peut être* que mon ami."{#morte_s86_r4679}':
            # a237 # r4679
            $ morteLogic.r4679_action()
            jump vaxis_s11  # EXTERN

        '"Ça me paraît légèrement… contradictoire."{#morte_s86_r4680}':
            # a238 # r4680
            jump vaxis_s10  # EXTERN

        '"J„ai rarement entendu quelque chose d“aussi stupide."{#morte_s86_r4681}':
            # a239 # r4681
            jump vaxis_s10  # EXTERN

        'Vérité : "Tout cela n„a rien de constructif. L“ordre et la loi sont indissociables du progrès."{#morte_s86_r4682}':
            # a240 # r4682
            $ morteLogic.r4682_action()
            jump vaxis_s10  # EXTERN


# s87 # say4683
label morte_s87: # externs vaxis_s13
    nr 'Il murmure. "Il se demande si tu es fou, zinzin, marteau… et moi aussi. Maintenant, arrête ton délire „Je me suis réveillé des morts“, d„accord ? Tu me fais honte."{#morte_s87_1}'

    menu:
        '"Je TE gêne ?"{#morte_s87_r4684}':
            # a241 # r4684
            jump morte_s88

        '"Je voulais juste savoir de quoi ce… cadavre… parlait. Tu comprends ?"{#morte_s87_r4685}':
            # a242 # r4685
            jump morte_s88

        '"Ce n„est pas de ma faute si personne dans cette maison de… “d„azimutés“… ne parle normalement… ou n„a L“AIR normal."{#morte_s87_r4686}' if morteLogic.r4686_condition():
            # a243 # r4686
            jump morte_s88

        '"Écoute, je ne vais PAS mentir à ce type. Il vaut mieux être franc avec lui."{#morte_s87_r4687}':
            # a244 # r4687
            $ morteLogic.r4687_action()
            jump morte_s88


# s88 # say4688
label morte_s88: # from 87.0 87.1 87.2 87.3
    nr 'Morte soupire. "Écoute, chef. Reprends tes esprits. Tu ne peux pas toujours dire la VÉRITÉ à tout le monde. On ne peut pas laisser tous les peleurs nous prendre pour des pigeons, hein ?"{#morte_s88_1}'

    menu:
        '"Les „peleurs“ ? Des „pigeons“ ? Qu„est-ce que - oh, laisse tomber."{#morte_s88_r4689}':
            # a245 # r4689
            jump vaxis_s15  # EXTERN

        '"Ça suffit, Morte."{#morte_s88_r4690}':
            # a246 # r4690
            jump vaxis_s15  # EXTERN

        '"Je… je m„en souviendrai. Je voudrais continuer de parler à ce “zombi„."{#morte_s88_r4691}':
            # a247 # r4691
            jump vaxis_s15  # EXTERN


# s89 # say4692
label morte_s89: # externs vaxis_s23
    nr '"Attends…" Morte a l„air surpris. "Ce bige doit être un *Anarchiste*. Eh… Se faire passer pour un zombi doit être un must chez ces zozos."{#morte_s89_1}'

    menu:
        '"Anarchiste ?"{#morte_s89_r4693}':
            # a248 # r4693
            $ morteLogic.j64512_s89_r4693_action()
            jump morte_s90


# s90 # say4694
label morte_s90: # from 89.0
    nr '"Les Anarchistes… c„est une faction qui passe son temps à épier les autorités et à trouver des moyens de démolir tout ce qui pue l“ordre et le contrôle." Morte grogne. "Les Anarchistes pensent que tous les biges des plans seront libres et heureux de chercher leur propre „vérité“ une fois que l„ordre établi aura été détruit. Ils veulent établir un ordre nouveau - le non-ordre."{#morte_s90_1}'

    menu:
        'Vérité : "Cette quête semble noble. Quelques entorses à l„ordre ne feraient pas de mal de temps en temps."{#morte_s90_r4695}':
            # a249 # r4695
            $ morteLogic.r4695_action()
            jump vaxis_s71  # EXTERN

        '"Ça me paraît légèrement… contradictoire."{#morte_s90_r4696}':
            # a250 # r4696
            jump vaxis_s71  # EXTERN

        '"J„ai rarement entendu quelque chose d“aussi stupide."{#morte_s90_r4697}':
            # a251 # r4697
            jump vaxis_s71  # EXTERN

        '"Peu importe."{#morte_s90_r4698}':
            # a252 # r4698
            jump vaxis_s71  # EXTERN

        'Vérité : "Tout cela n„a rien de constructif. L“ordre et la loi sont indissociables du progrès."{#morte_s90_r4699}':
            # a253 # r4699
            $ morteLogic.r4699_action()
            jump vaxis_s71  # EXTERN


# s91 # say4700
label morte_s91: # externs vaxis_s46
    nr '"Il dit que ce bige de Pharod a vendu beaucoup de cadavres… aux Hommes-Poussière. C„est le travail des Récupérateurs : ils rassemblent les cadavres et les vendent aux Hommes-Poussière. On dirait que Pharod a vendu tellement de morts que les Hommes-Poussière pensent qu“il a inscrit toute la Ruche dans le livre des morts avant que son heure sonne… tu sais… il aurait tué des gens."{#morte_s91_1}'

    menu:
        '"Je vois. Je voudrais savoir autre chose…"{#morte_s91_r4701}':
            # a254 # r4701
            jump vaxis_s43  # EXTERN

        '"Ce Pharod a l„air d“un saint. J„aurai peut-être des questions plus tard. Reste dans le coin."{#morte_s91_r4702}':
            # a255 # r4702
            jump morte_dispose


# s92 # say4703
label morte_s92: # externs vaxis_s47
    nr '"Il veut savoir si quelqu„un t“a volé. C„est probablement ce qui s“est passé."{#morte_s92_1}'

    menu:
        '"Je vois. Je voudrais savoir autre chose…"{#morte_s92_r4704}':
            # a256 # r4704
            jump vaxis_s43  # EXTERN

        '"Ouais, j„ai hâte de trouver ce voleur. Écoute, j“aurai peut-être des questions plus tard. Reste dans le coin."{#morte_s92_r4705}':
            # a257 # r4705
            jump morte_dispose


# s93 # say4706
label morte_s93: # externs vaxis_s39
    nr '"Ouais, *ils* sont vraiment idiots."{#morte_s93_1}'

    jump vaxis_s61  # EXTERN


# s94 # say4708
label morte_s94: # externs vaxis_s65
    nr '"Je n„arrive pas à croire que tu supportes ça. Tu es AZIMUTÉ ou quoi ?"{#morte_s94_1}'

    menu:
        '"Plutôt azimuté, j„imagine…"{#morte_s94_r64535}' if morteLogic.r64535_condition():
            # a258 # r64535
            $ morteLogic.r64535_action()
            jump vaxis_s66  # EXTERN

        '"Plutôt azimuté, j„imagine…"{#morte_s94_r64534}' if morteLogic.r64534_condition():
            # a259 # r64534
            $ morteLogic.r64534_action()
            jump vaxis_s66  # EXTERN


# s95 # say4710
label morte_s95: # externs vaxis_s66
    nr '"Peux-tu faire des points de suture plus serrés ?"{#morte_s95_1}'

    menu:
        '"Avête, Mote -"{#morte_s95_r4711}':
            # a260 # r4711
            jump vaxis_s67  # EXTERN

        '"Mmm-HMMPH !"{#morte_s95_r4712}':
            # a261 # r4712
            jump vaxis_s67  # EXTERN


# s96 # say5029
label morte_s96: # -
    nr '"Eh ! Eh ! Qu„est-ce que tu fais ?"{#morte_s96_1}'

    menu:
        '"*J„allais* parler à ce type. Ça pose un problème ?"{#morte_s96_r5030}':
            # a262 # r5030
            $ morteLogic.r5030_action()
            jump morte_s97

        '"Rien, continuons."{#morte_s96_r5031}':
            # a263 # r5031
            jump morte_dispose


# s97 # say5032
label morte_s97: # from 96.0
    nr '"Si tu veux aller branler ton râtelier avec les Hommes-Poussière, je ne veux pas en être mêlé. Entre eux et moi, c„est une histoire d“incompatibilité… Et toi, tu ne devrais pas trop les fréquenter. Un jour ou l„autre, ils te brûleront ou t“enterreront. Allez, ne joue pas les azimutés, allons-nous en."{#morte_s97_1}'

    menu:
        '"Merci du conseil, mais je compte *bien* aller parler à ce type."{#morte_s97_r5033}':
            # a264 # r5033
            $ morteLogic.r5033_action()
            jump morte_s99

        '"D„accord, continuons."{#morte_s97_r5034}':
            # a265 # r5034
            jump morte_dispose


# s98 # say5035
label morte_s98: # -
    nr '"Eh ! T„es sourd ? Qu“est-ce que tu fais ?"{#morte_s98_1}'

    menu:
        '"Écoute, je vais aller parler à ce type. Ça pose un problème ?"{#morte_s98_r5036}':
            # a266 # r5036
            $ morteLogic.r5036_action()
            jump morte_s99

        '"Rien, continuons."{#morte_s98_r5037}':
            # a267 # r5037
            jump morte_dispose


# s99 # say5038
label morte_s99: # from 97.0 98.0
    nr '"Alors, ne m„écoute *pas*… c“est ta mort."{#morte_s99_1}'

    menu:
        '"Ouais, et tu peux jouer le chant funèbre. Pour l„instant, tais-toi."{#morte_s99_r5039}':
            # a268 # r5039
            jump soego_s3  # EXTERN

        '"Non, tu as raison. Laisse tomber. Continuons."{#morte_s99_r5040}':
            # a269 # r5040
            jump morte_dispose


# s100 # say5041
label morte_s100: # externs soego_s20
    nr '"Qu„est-ce que tu *fiches* ?! Si tu veux le tuer, fais-le !"{#morte_s100_1}'

    menu:
        '"C„est fait ! Je lui ai brisé la nuque ! Il ne devrait même plus bouger !"{#morte_s100_r5042}':
            # a270 # r5042
            jump soego_s21  # EXTERN


# s101 # say5043
label morte_s101: # externs soego_s10
    nr '"Au moins, il *peut* marcher." Morte grogne. "Le flottement perd tout son charme dès qu„on veut frapper quelqu“un."{#morte_s101_1}'

    jump soego_s11  # EXTERN


# s102 # say5049
label morte_s102: # externs dhall_s5
    nr '"Oh là là, chef ! Qu„est-ce que tu fabriques ?!"{#morte_s102_1}'

    menu:
        '"J„allais parler à ce scribe. Il sait peut-être comment je me suis retrouvé ici."{#morte_s102_r5050}':
            # a271 # r5050
            jump morte_s103


# s103 # say5052
label morte_s103: # from 102.0
    nr '"Écoute, branler ton râtelier avec les Hommes-Poussière, c„est bien la DERNIÈRE chose à faire -"{#morte_s103_1}'

    jump dhall_s0  # EXTERN


# s104 # say5053
label morte_s104: # externs dhall_s0
    nr '"Et on devrait *surtout* pas échanger la chanson avec ces malades d„Hommes-Poussière. Allez, on y va. Plus vite on se sera tiré de c“t endroit, mi…"{#morte_s104_1}'

    jump dhall_s1  # EXTERN


# s105 # say6071
label morte_s105: # externs deionarra_s8 deionarra_s48 deionarra_s26 deionarra_s19 deionarra_s0
    nr '"De retour, chef ? Tu t„étais littéralement volatilisé."{#morte_s105_1}'

    menu:
        '"Non, pas du tout. Sais-tu qui était cet esprit ?"{#morte_s105_r6075}':
            # a272 # r6075
            $ morteLogic.r6075_action()
            jump morte_s106

        '"Ça va. Continuons."{#morte_s105_r6076}':
            # a273 # r6076
            jump morte_dispose


# s106 # say6072
label morte_s106: # from 105.0
    nr '"Hein ? Un esprit ?"{#morte_s106_1}'

    menu:
        '"Ce spectre à qui je parlais. La femme."{#morte_s106_r6077}':
            # a274 # r6077
            jump morte_s107


# s107 # say6073
label morte_s107: # from 106.0
    nr '"Tu branlais ton râtelier avec une femme ? Où ça ?" Morte regarde autour de lui d„un air agité. "Elle était comment ?"{#morte_s107_1}'

    menu:
        '"Elle était sur la bière. Tu ne l„as pas vue ?"{#morte_s107_r6078}':
            # a275 # r6078
            jump morte_s108


# s108 # say6074
label morte_s108: # from 107.0
    nr '"Eh… non, tu es resté là un moment, immobile comme une statue. J„avais peur que tu m“aies encore fait un coup fumeux."{#morte_s108_1}'

    menu:
        '"Non, ça va… enfin, je crois. Continuons."{#morte_s108_r6079}':
            # a276 # r6079
            jump morte_dispose


# s109 # say6324
label morte_s109: # -
    nr '"Ça m„rappelle un boulot que j“ai fait autrefois." Il paraît embarrassé. "Enfin, j„veux dire… sans les bras."{#morte_s109_1}'

    menu:
        'Examine le cadavre.{#morte_s109_r6325}' if morteLogic.r6325_condition():
            # a277 # r6325
            jump post_s3  # EXTERN

        'Examine le cadavre.{#morte_s109_r6326}' if morteLogic.r6326_condition():
            # a278 # r6326
            jump post_s4  # EXTERN

        '"Hmmm. Je me demande si ça marcherait avec les autres affiches…"{#morte_s109_r6327}' if morteLogic.r6327_condition():
            # a279 # r6327
            jump post_s5  # EXTERN

        '"Hmmmm. Je me demande si ça marcherait avec les autres affiches…"{#morte_s109_r6328}' if morteLogic.r6328_condition():
            # a280 # r6328
            jump post_s5  # EXTERN

        'Examine les autres affiches.{#morte_s109_r6329}' if morteLogic.r6329_condition():
            # a281 # r6329
            jump post_s5  # EXTERN

        'Utilise Histoires-Os-Conter sur le cadavre.{#morte_s109_r6330}' if morteLogic.r6330_condition():
            # a282 # r6330
            jump post_s2  # EXTERN

        'Laisse le cadavre tranquille.{#morte_s109_r6331}':
            # a283 # r6331
            jump morte_dispose


# s110 # say6609
label morte_s110: # externs s42_s3 s42_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"{#morte_s110_1}'

    menu:
        '"Et alors ?"{#morte_s110_r6658}':
            # a284 # r6658
            $ morteLogic.r6658_action()
            jump s42_s1  # EXTERN

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."{#morte_s110_r6659}':
            # a285 # r6659
            $ morteLogic.r6659_action()
            jump s42_s1  # EXTERN

        '"Bon, très bien. Peu importe. Peut-être une autre fois."{#morte_s110_r6660}':
            # a286 # r6660
            jump s42_s1  # EXTERN


# s111 # say6610
label morte_s111: # externs s42_s3 s42_s2 s42_s0
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"{#morte_s111_1}'

    menu:
        '"„Barbe grise“ ?"{#morte_s111_r6661}':
            # a287 # r6661
            jump s42_s1  # EXTERN

        '"À mon avis, il est mal placé pour protester."{#morte_s111_r6662}':
            # a288 # r6662
            jump s42_s1  # EXTERN

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s111_r6663}':
            # a289 # r6663
            jump s42_s1  # EXTERN


# s112 # say6611
label morte_s112: # externs s42_s13
    nr '"Arrête ! Ses bras vont se casser."{#morte_s112_1}'

    menu:
        'Croise les bras sur la poitrine.{#morte_s112_r6664}' if morteLogic.r6664_condition():
            # a290 # r6664
            jump s42_s4  # EXTERN

        'Imite les gestes du squelette… Attends de voir ce qui se passe.{#morte_s112_r6665}' if morteLogic.r6665_condition():
            # a291 # r6665
            jump s42_s9  # EXTERN

        '"Euh…"{#morte_s112_r6666}':
            # a292 # r6666
            jump s42_s10  # EXTERN

        'Laisse le squelette tranquille.{#morte_s112_r6667}':
            # a293 # r6667
            jump morte_dispose


# s113 # say6771
label morte_s113: # from 54.0 54.1
    nr '"Elle dirige cette cité. Tu la reconnaîtras en la voyant : elle a des lames tout autour du visage, elle est immense et elle flotte comme eux." Morte fait un signe de tête au dabus, qui vous regarde tous les deux. "Personne ne sait grand-chose sur elle… Elle ne parle pas beaucoup. Le tout est de ne pas la mettre en colère. Si tu l„aperçois, un bon conseil : tire-toi en courant."{#morte_s113_1}'

    menu:
        '"Je vois."{#morte_s113_r2784}':
            # a294 # r2784
            jump dabus_s3  # EXTERN


# s114 # say6784
label morte_s114: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Trouve un natif de Sigil."{#morte_s114_1}'

    menu:
        '"Je vois."{#morte_s114_r6955}':
            # a295 # r6955
            jump dabus_s3  # EXTERN


# s115 # say6786
label morte_s115: # -
    nr '"Oh, ils *ont* des noms. J„en suis sûr."{#morte_s115_1}'

    jump annah_s43  # EXTERN


# s116 # say6790
label morte_s116: # -
    nr '"C„est c“que *tu* dis, fiélonne."{#morte_s116_1}'

    menu:
        '"Ça suffit, Morte - Peux-tu lui poser d„autres questions, Annah ?"{#morte_s116_r6956}':
            # a296 # r6956
            jump annah_s40  # EXTERN

        '"Laisse tomber. Partons."{#morte_s116_r6957}':
            # a297 # r6957
            $ morteLogic.r6957_action()
            jump dabus_s6  # EXTERN


# s117 # say6794
label morte_s117: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Amène donc la petite fiélonne par ici." Il s„incline vers Annah. "C“est une native de la Ruche."{#morte_s117_1}'

    menu:
        '"Peut-être …"{#morte_s117_r6958}':
            # a298 # r6958
            jump dabus_s3  # EXTERN


# s118 # say6797
label morte_s118: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ?" Il s„incline vers Dak“kon. "Amène donc le Pharisien-deux-fois-plus-silencieux pour traduire."{#morte_s118_1}'

    menu:
        '"Peut-être …"{#morte_s118_r6959}':
            # a299 # r6959
            jump dabus_s3  # EXTERN


# s119 # say6800
label morte_s119: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Fais venir un tanar„ri." Il s“incline vers Tombée-en-Disgrâce. "Elle doit sûrement négocier la chanson avec eux sans arrêt."{#morte_s119_1}'

    menu:
        '"Peut-être …"{#morte_s119_r6960}':
            # a300 # r6960
            jump dabus_s3  # EXTERN


# s120 # say7040
label morte_s120: # -
    nr 'Tandis que tu t„éloignes, tu remarques que Morte te regarde avec insistance. "Eh ? Eh ?"{#morte_s120_1}'

    menu:
        '"Qu„est-ce qu“il y a ?"{#morte_s120_r7055}':
            # a301 # r7055
            jump morte_s121


# s121 # say7041
label morte_s121: # from 120.0
    nr '"T„as *vu* la façon dont cette beauté cadavérique m“a dévoré des yeux ?" Morte claque des dents, comme par anticipation. "Elle cherchait quelque matois chanceux pour décongeler son cercueil."{#morte_s121_1}'

    menu:
        '"*S„il te plaît*, ne recommence pas."{#morte_s121_r7056}' if morteLogic.r7056_condition():
            # a302 # r7056
            $ morteLogic.r7056_action()
            jump morte_s122

        '"De quoi tu *parles* ?"{#morte_s121_r7057}' if morteLogic.r7057_condition():
            # a303 # r7057
            $ morteLogic.r7057_action()
            jump morte_s47

        '"Quoi, ce regard d„outre-tombe aux yeux vides ?"{#morte_s121_r7058}' if morteLogic.r7058_condition():
            # a304 # r7058
            $ morteLogic.r7058_action()
            jump morte_s47


# s122 # say7042
label morte_s122: # from 121.0
    nr 'Morte t„ignore et se met à réfléchir. "C“est pas que je tienne absolument à ce que l„on s“intéresse à moi, c„est juste que j“aime bien que l„on me considère comme autre chose qu“un vulgaire crâne, tu vois ? J„éprouve des sentiments qui vont au-delà de mes instincts primaires. Je veux plus qu“une petite aventure à la dérobée."{#morte_s122_1}'

    menu:
        '"Continue et *je* te largue quelque part."{#morte_s122_r7059}':
            # a305 # r7059
            jump morte_s123

        '"Morte, tu *es* un crâne. Personne ne peut te voir autrement que comme un crâne. Accepte-le."{#morte_s122_r7060}':
            # a306 # r7060
            jump morte_s124

        '"Je comprends. Maintenant, allons-nous-en, d„accord ?"{#morte_s122_r7061}':
            # a307 # r7061
            jump morte_dispose


# s123 # say7043
label morte_s123: # from 122.0
    nr '"Oh là là, chef…" Morte recule légèrement. "Ce qui plaît aux femmes, ce sont les amants, pas les guerriers."{#morte_s123_1}'

    menu:
        '"Tu es sans doute la *dernière* personne dont je suivrai les conseils romantiques."{#morte_s123_r7062}':
            # a308 # r7062
            jump morte_s126

        '"Peu importe, Morte. Allons-y."{#morte_s123_r7063}':
            # a309 # r7063
            jump morte_dispose


# s124 # say7044
label morte_s124: # from 122.1
    nr '"Ouais, ben, j„suis peut-être qu“un crâne, mais un crâne au grand cœur."{#morte_s124_1}'

    menu:
        '"En fait, tu n„as *rien* de tout ça."{#morte_s124_r7064}':
            # a310 # r7064
            jump morte_s125

        '"Peu importe, Morte. Allons-y."{#morte_s124_r7065}':
            # a311 # r7065
            jump morte_dispose


# s125 # say7045
label morte_s125: # from 124.0
    nr '"Quoi ? T„es tombé dans ma vie pour cracher sur mes rêves et mes aspirations ?! Parfait, très bien. J“ai peut-être pas de cœur, mais *j„ai* une âme."{#morte_s125_1}'

    menu:
        '"Eh bien, en fait, je parie que tu… Laisse tomber. Allons-y."{#morte_s125_r7066}':
            # a312 # r7066
            jump morte_dispose

        '"Peu importe, Morte. Allons-y."{#morte_s125_r7067}':
            # a313 # r7067
            jump morte_dispose


# s126 # say7046
label morte_s126: # from 123.0
    nr '"Si tu avais la moitié de l„intelligence que tu possédais avant de mourir, tu serais plus malin." Morte prend un ton encore plus suffisant. "Sur l“amour, j„en connais un rayon."{#morte_s126_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s126_r7068}':
            # a314 # r7068
            jump morte_dispose


# s127 # say7071
label morte_s127: # -
    nr 'Morte examine le squelette un moment, puis secoue la tête. "Nan… celui-là est trop propre… y„a presque plus de viande dessus. En plus, j“arriverais jamais à enlever toute cette chaux."{#morte_s127_1}'

    menu:
        '"Je ne sais pas s„il est “trop propre„… Tu aurais deux ou trois choses à apprendre sur la propreté."{#morte_s127_r7076}':
            # a315 # r7076
            jump morte_s70

        '"Bon, très bien. Allons-y."{#morte_s127_r7077}':
            # a316 # r7077
            jump morte_dispose


# s128 # say7130
label morte_s128: # -
    nr '"Ouais !"{#morte_s128_1}'

    jump hivef1_s8  # EXTERN


# s129 # say7187
label morte_s129: # -
    nr '"Un mimir est une encyclopédie vivante. C„est moi, chef."{#morte_s129_1}'

    menu:
        '"Je vois. Bon, ne te fais pas de bile pour ça, Morte. Vu son apparence, je vais sans doute t„éviter de mourir une deuxième fois."{#morte_s129_r7483}':
            # a317 # r7483
            $ morteLogic.r7483_action()
            jump harlotn_s8  # EXTERN

        '"Allons-nous-en d„ici. Au revoir, mademoiselle."{#morte_s129_r7484}':
            # a318 # r7484
            jump morte_dispose


# s130 # say7188
label morte_s130: # -
    nr 'Morte regarde, hypnotisé, tandis que la catin lâche une série de jurons. À la fin de cette avalanche d„injures, Morte reste un moment sans rien dire, puis se tourne vers toi. "Ouah, chef. On dirait que v“là d„nouvelles blagues pour l“arsenal." Il se retourne vers la catin, qui reprend son souffle. "Ça y est, j„suis amoureux."~ [MRT387]{#morte_s130_1}'

    menu:
        'Pars.{#morte_s130_r7485}':
            # a319 # r7485
            $ morteLogic.r7485_action()
            jump morte_dispose


# s131 # say7775
label morte_s131: # -
    nr '"Oh là là, chef." Morte t„interrompt avant même que tu aies pu t“adresser à la créature. "Laisse tomber. Va pas branler ton râtelier avec n„importe quel fiélon dans la rue. Allez, on y va."{#morte_s131_1}'

    menu:
        '"Je voulais lui poser quelques questions…"{#morte_s131_r7776}':
            # a320 # r7776
            jump morte_s132

        'Laisse la créature tranquille.{#morte_s131_r7777}':
            # a321 # r7777
            jump morte_dispose


# s132 # say7778
label morte_s132: # from 131.0
    nr '"Non." Morte regarde la créature, puis se retourne vers toi et baisse considérablement le ton. "Ils sont susceptibles. Tirons-nous."{#morte_s132_1}'

    menu:
        '"J„en prends le risque."{#morte_s132_r7779}':
            # a322 # r7779
            jump bishab_s11  # EXTERN

        'Laisse la créature tranquille.{#morte_s132_r7780}':
            # a323 # r7780
            jump morte_dispose


# s133 # say7805
label morte_s133: # -
    nr 'Morte soupire tandis que tu es sur le point de t„adresser à la créature.{#morte_s133_1}'

    menu:
        '"Oui ?"{#morte_s133_r7806}':
            # a324 # r7806
            jump morte_s134


# s134 # say7807
label morte_s134: # from 133.0
    nr '"Oh, rien… L„école de la vie est la meilleure, tu sais." Il s“incline vers la créature. "Vas-y."{#morte_s134_1}'

    menu:
        '"Oui."{#morte_s134_r7808}':
            # a325 # r7808
            jump bishab_s11  # EXTERN

        '"D„accord, peu importe. Allons-y."{#morte_s134_r7809}':
            # a326 # r7809
            jump morte_dispose


# s135 # say2349
label morte_s135: # from 44.0 44.1
    nr '"Ouais, un „gith“…" Morte jette un coup d„œil sur le gith, qui continue de te dévisager. "On en reparlera une autre fois."{#morte_s135_1}'

    menu:
        '"Je n„ai pas l“intention de partir tout de suite. Je vais d„abord lui poser des questions…"{#morte_s135_r9035}':
            # a327 # r9035
            jump gith_s7  # EXTERN

        'Laisse le gith tranquille.{#morte_s135_r9036}':
            # a328 # r9036
            jump morte_dispose


# s136 # say9860
label morte_s136: # -
    nr '"Viens, chef… ou tu auras tué ce pauvre bougre avant de réussir à le réveiller !"{#morte_s136_1}'

    menu:
        '"Tu as raison, Morte - Allons-nous-en."{#morte_s136_r9882}':
            # a329 # r9882
            jump morte_dispose


# s137 # say11946
label morte_s137: # -
    nr 'Morte s„approche. "C“est quoi, la chanson, chef ?"{#morte_s137_1}'

    menu:
        '"Tu vois ces dents ?"{#morte_s137_r11974}':
            # a330 # r11974
            jump morte_s138

        '"Rien, peu importe."{#morte_s137_r11975}':
            # a331 # r11975
            jump morte_dispose


# s138 # say11947
label morte_s138: # from 137.0
    nr 'Morte examine la paume de ta main. "Beurrrk." Il paraît pris d„une fascination morbide. "De vilaines petites biges, non ?"{#morte_s138_1}'

    jump morte_dispose


# s139 # say11948
label morte_s139: # -
    nr '"Bâcle ça." Morte tressaille. "Tu voudrais de ces trucs en *toi* ?"{#morte_s139_1}'

    menu:
        '"Allez, Morte, elles ont l„air de bien t“aimer. Regarde comme elles te dévorent des yeux."{#morte_s139_r11976}':
            # a332 # r11976
            jump morte_s140

        'Prends Morte, fourre les dents dans sa bouche.{#morte_s139_r11977}':
            # a333 # r11977
            $ morteLogic.r11977_action()
            jump morte_s141

        '"Alors, peu importe."{#morte_s139_r11978}':
            # a334 # r11978
            jump morte_dispose


# s140 # say11949
label morte_s140: # from 139.0
    nr '"Ces petits cagueurs feraient mieux de ne pas m„approcher, ou…" Morte s“interrompt. "Tu sais, je vois mal ce qui pourrait faire peur à des dents."{#morte_s140_1}'

    menu:
        'Examine les dents.{#morte_s140_r11979}':
            # a335 # r11979
            jump morte_dispose

        'Prends Morte, fourre les dents dans sa bouche.{#morte_s140_r11980}':
            # a336 # r11980
            $ morteLogic.r11980_action()
            jump morte_s141

        '"Alors, peu importe."{#morte_s140_r11981}':
            # a337 # r11981
            jump morte_dispose


# s141 # say11950
label morte_s141: # from 139.1 140.1
    nr 'La lutte est brève. Tu immobilises Morte d„une clé de tête (seule prise possible), les dents sautent de ta main sur sa mâchoire. Il a beau te mordre pour essayer de se dégager, la lutte est brève. Il hurle lorsqu“elles lui arrachent ses propres dents et se jettent dans les cavités mises à nu.{#morte_s141_1}'

    menu:
        '"Voilà, Morte. Ce n„était pas si terrible, hein ?"{#morte_s141_r11982}':
            # a338 # r11982
            $ morteLogic.r11982_action()
            jump morte_s143


# s142 # say11951
label morte_s142: # from 149.0
    nr 'Morte continue de hurler. Les dents plantent leurs racines en lui avec des bruits de chignole tout à fait horribles.{#morte_s142_1}'

    menu:
        '"Morte ? Ça va ?"{#morte_s142_r11983}':
            # a339 # r11983
            $ morteLogic.r11983_action()
            jump morte_s143


# s143 # say11952
label morte_s143: # from 141.0 142.0
    nr 'Morte ne semble pas t„entendre. Il hurle, hurle, sans relâche, et soudain il claque des mâchoires avec violence. Il y parvient par trois fois, puis ses dents du haut et du bas s“enclenchent les unes dans les autres, de sorte qu„il ne peut plus ouvrir la bouche.{#morte_s143_1}'

    menu:
        '"Oh là là !"{#morte_s143_r11984}':
            # a340 # r11984
            jump morte_s144


# s144 # say11953
label morte_s144: # from 143.0
    nr 'Il marmonne quelque chose à ton endroit, les yeux écarquillés.{#morte_s144_1}'

    menu:
        '"Alors… elles te plaisent ?"{#morte_s144_r11985}' if morteLogic.r11985_condition():
            # a341 # r11985
            jump morte_s145

        '"Morte, ça va ?"{#morte_s144_r11986}' if morteLogic.r11986_condition():
            # a342 # r11986
            jump morte_s150


# s145 # say11954
label morte_s145: # from 144.0
    nr 'Ses dents se débloquent soudain et il prend une profonde inspiration. "Je te *tuerai* pour ça, dit-il. C„était un sale tour."{#morte_s145_1}'

    menu:
        '"Comment tu te sens ?"{#morte_s145_r11987}':
            # a343 # r11987
            jump morte_s146


# s146 # say11955
label morte_s146: # from 145.0 150.0
    nr 'Morte remue les mâchoires à titre d„expérience. "Curieux. Et intéressant." Soudain, ses dents s“allongent, devenant des crocs. "Ooooooh ! Elles changent !" Elle raccourcissent, rallongent, dents, crocs, dents, et ainsi de suite… "Ça va me plaire."{#morte_s146_1}'

    menu:
        '"Excuse-moi, Morte. Je ne voulais pas te faire de mal."{#morte_s146_r11988}' if morteLogic.r11988_condition():
            # a344 # r11988
            jump morte_s147

        '"Tu vois ? J„avais raison, non ?"{#morte_s146_r11989}' if morteLogic.r11989_condition():
            # a345 # r11989
            jump morte_s147


# s147 # say11956
label morte_s147: # from 146.0 146.1
    nr '"Oh, je me vengerai malgré tout", répond Morte. Il sourit, et ses dents, une fois de plus, deviennent des crocs. "Un peu de patience."{#morte_s147_1}'

    menu:
        '"Euh… la vengeance n„a jamais été une solution, Morte… Euh, allons-nous-en."{#morte_s147_r11990}' if morteLogic.r11990_condition():
            # a346 # r11990
            jump morte_dispose

        '"Tu finiras par me remercier. Tu verras."{#morte_s147_r11991}' if morteLogic.r11991_condition():
            # a347 # r11991
            jump morte_dispose


# s148 # say11957
label morte_s148: # -
    nr '"Qu„est-ce qu“il y a ?" Morte s„approche et examine la paume de ta main. "Hé… on dirait bien qu“elles préparent un mauvais coup, non ?"{#morte_s148_1}'

    menu:
        '"Sûrement, ne -"{#morte_s148_r11992}':
            # a348 # r11992
            jump morte_s149


# s149 # say11958
label morte_s149: # from 148.0
    nr 'Ce qui se passe ensuite est aussi difficile à décrire que pénible à regarder. Tu n„as pas le temps de serrer le poing que déjà les dents sautent de ta main sur sa mâchoire. Il hurle lorsqu“elles lui arrachent ses propres dents et se jettent dans les cavités mises à nu.{#morte_s149_1}'

    menu:
        '"Morte !"{#morte_s149_r11993}':
            # a349 # r11993
            jump morte_s142


# s150 # say11959
label morte_s150: # from 144.1
    nr 'Ses dents se débloquent toutes soudainement et il prend une profonde inspiration. "Je te *tuerai* pour ça, dit-il. C„était prémédité !"{#morte_s150_1}'

    menu:
        '"Écoute, ce n„est pas ce que je voulais… Je t“avais même prévenu. Euh… comment tu te sens ?"{#morte_s150_r11994}':
            # a350 # r11994
            jump morte_s146


# s151 # say12389
label morte_s151: # -
    nr 'Morte te parle à voix basse : "Chef, j„aime pas ça. Ils ne devraient pas être ici. La Guerre Sanglante n“a pas assez botté le cul des célestes pour que ces fiélons puissent prendre des congés. Ils *veulent* quelque chose. Fais attention où tu mets les pieds." Pendant ce temps, Tegar„in continue de répondre à son compagnon…{#morte_s151_1}'

    jump tegarin_s12  # EXTERN


# s152 # say12449
label morte_s152: # -
    nr '"Chef, je suis plus certain que jamais que ces biges sont pas clairs. On dirait qu„ils ont déserté, comme s“ils cherchaient un moyen d„élever leur statut sur Baator. Ne leur parle pas, chef… tu sais pas à quel jeu ils jouent, et tu pourrais littéralement… t“y brûler."{#morte_s152_1}'

    menu:
        '"D„accord, Morte. Juste quelques questions pour ces deux-là…"{#morte_s152_r12450}':
            # a351 # r12450
            jump aethel_s11  # EXTERN

        '"D„accord, Morte. J“en ai fini avec eux."{#morte_s152_r12451}':
            # a352 # r12451
            jump morte_dispose


# s153 # say12466
label morte_s153: # -
    nr 'Morte flotte dans les airs près de toi et te chuchote à l„oreille : "*Il* a raison, chef… J“sais pas ce qui t„a agacé."{#morte_s153_1}'

    menu:
        '"Très bien… Je voulais juste te poser une question…"{#morte_s153_r12553}':
            # a353 # r12553
            jump baria_s4  # EXTERN

        '"Tais-toi, espèce de crâne bavard ! Et toi, bestiole à quatre pattes : crève…"{#morte_s153_r12554}':
            # a354 # r12554
            $ morteLogic.r12554_action()
            jump morte_dispose

        '"Oh, non… C„était *toi*. Tu vas le regretter…"{#morte_s153_r12555}':
            # a355 # r12555
            $ morteLogic.r12555_action()
            jump morte_dispose

        '"Alors, laisse tomber. Au revoir."{#morte_s153_r12556}':
            # a356 # r12556
            $ morteLogic.r12556_action()
            jump morte_dispose


# s154 # say12467
label morte_s154: # -
    nr '"Ouais, ouais ! Faire quelque chose de sympa !"{#morte_s154_1}'

    jump baria_s20  # EXTERN


# s155 # say12621
label morte_s155: # -
    nr 'Morte semble surpris lorsque tous les yeux se posent sur lui. "Quoi ? Quoi ?" Tu as l„impression que s“il avait des lèvres, il sifflerait innocemment.{#morte_s155_1}'

    menu:
        '"Tu as une explication, Morte ?"{#morte_s155_r12854}':
            # a357 # r12854
            jump morte_s156

        '"C„est quoi, un “mimir„ ?"{#morte_s155_r12855}' if morteLogic.r12855_condition():
            # a358 # r12855
            $ morteLogic.r12855_action()
            jump morte_s157

        '"Ne fais pas attention à lui… Tu peux me répondre ?"{#morte_s155_r12856}':
            # a359 # r12856
            jump creed_s30  # EXTERN


# s156 # say12622
label morte_s156: # from 155.0
    nr '"Bon, je propose qu„on écoute cet homme. D“accord ?" Morte se tourne et fixe durement le chasseur de rats.{#morte_s156_1}'

    menu:
        '"Non… Écoutons ce que tu as à dire, Morte."{#morte_s156_r12857}':
            # a360 # r12857
            jump morte_s158

        '"Tout à l„heure… C“est quoi, un „mimir“ ?"{#morte_s156_r12858}' if morteLogic.r12858_condition():
            # a361 # r12858
            $ morteLogic.r12858_action()
            jump morte_s157

        'Retourne-toi vers le chasseur de rats.{#morte_s156_r12859}':
            # a362 # r12859
            jump creed_s32  # EXTERN


# s157 # say12623
label morte_s157: # from 155.1 156.1
    nr 'Morte roule des yeux d„un air gêné. "C“est une… encyclopédie sur pattes. Mais j„en suis pas très fier. Bon, écoutons ce type, d“accord ?"{#morte_s157_1}'

    menu:
        '"Très bien."{#morte_s157_r12860}':
            # a363 # r12860
            $ morteLogic.r12860_action()
            jump creed_s32  # EXTERN

        '"Non, j„en ai assez entendu. Au revoir, chasseur de rats."{#morte_s157_r12861}':
            # a364 # r12861
            $ morteLogic.r12861_action()
            jump creed_s59  # EXTERN


# s158 # say12624
label morte_s158: # from 156.0
    nr '"Oh allez, chef… pourquoi j„te cacherais des choses ? J“t„ai dit tout c“que *je* sais d„utile. Laissons simplement ce bige reprendre toute l“affaire."{#morte_s158_1}'

    menu:
        '"Très bien."{#morte_s158_r12862}':
            # a365 # r12862
            jump creed_s32  # EXTERN

        '"Peu importe. Allons-y… Au revoir, chasseur de rats."{#morte_s158_r12863}':
            # a366 # r12863
            jump creed_s59  # EXTERN


# s159 # say12625
label morte_s159: # -
    nr '"Ouais, chef ! T„as tout compris !"{#morte_s159_1}'

    jump creed_s40  # EXTERN


# s160 # say12626
label morte_s160: # -
    nr '"Mourir, chef… mourir."{#morte_s160_1}'

    menu:
        '"Mais toi, chasseur de rats, tu as plutôt l„air sympathique…"{#morte_s160_r12864}':
            # a367 # r12864
            jump creed_s49  # EXTERN

        '"Je comprends. Une autre question…"{#morte_s160_r12865}':
            # a368 # r12865
            jump creed_s15  # EXTERN

        '"Merci du renseignement. Au revoir."{#morte_s160_r12866}':
            # a369 # r12866
            jump creed_s59  # EXTERN


# s161 # say12627
label morte_s161: # -
    nr '"Mourir, chef… mourir."{#morte_s161_1}'

    menu:
        '"Ah… Qu„est-ce que tu disais sur les gens qui achètent des rats morts ?"{#morte_s161_r12867}':
            # a370 # r12867
            jump creed_s18  # EXTERN

        '"Je vois. J„ai une autre question…"{#morte_s161_r12868}':
            # a371 # r12868
            jump creed_s15  # EXTERN

        '"Je comprends. Au revoir."{#morte_s161_r12869}':
            # a372 # r12869
            jump creed_s59  # EXTERN


# s162 # say13748
label morte_s162: # -
    nr '"Bon, encore un arbre avec trop de branches cassées." Morte fait rouler ses yeux. "Ça ne sert à rien de causer avec des Xaositectes, chef. C„est une bande d“azimutés."{#morte_s162_1}'

    menu:
        '"Les Xaositectes ?"{#morte_s162_r13774}' if morteLogic.r13774_condition():
            # a373 # r13774
            $ morteLogic.r13774_action()
            jump morte_s163

        '"Qui sont les Xaositectes déjà ?"{#morte_s162_r13775}' if morteLogic.r13775_condition():
            # a374 # r13775
            $ morteLogic.r13775_action()
            jump morte_s163

        '"Je pensais qu„il pourrait m“apprendre quelque chose. Tant pis, allons-nous-en."{#morte_s162_r13776}' if morteLogic.r13776_condition():
            # a375 # r13776
            $ morteLogic.r13776_action()
            jump morte_dispose


# s163 # say13749
label morte_s163: # from 162.0 162.1
    nr '"C„est une “faction„ qui n“a pas de règles… sauf de garder en tête une seule pensée trop longtemps. On les appelle parfois les „Chaoteux“. Pas besoin de t„expliquer pourquoi."{#morte_s163_1}'

    menu:
        '"Comment est-ce qu„ils recrutent leurs membres ?"{#morte_s163_r13777}':
            # a376 # r13777
            jump morte_s164

        '"Je vois. Allons-y."{#morte_s163_r13778}':
            # a377 # r13778
            jump morte_dispose


# s164 # say13750
label morte_s164: # from 163.0
    nr '"On dirait qu„ils attirent les membres comme des mouches… enfin, des membres fous ou assez chaoteux, je suppose. Je ne pense pas qu“ils aient des recruteurs… bien que l„on ne puisse être sûr de rien."{#morte_s164_1}'

    menu:
        '"Je vois. Merci du renseignement."{#morte_s164_r13779}':
            # a378 # r13779
            jump morte_dispose


# s165 # say13828
label morte_s165: # -
    nr '"Bon, encore un qui n„a pas toute sa tête." Morte fait rouler ses yeux. "Ça ne sert à rien de causer avec des Xaositectes, chef. C“est une bande d„azimutés."{#morte_s165_1}'

    menu:
        '"Les Xaositectes ?"{#morte_s165_r13986}' if morteLogic.r13986_condition():
            # a379 # r13986
            $ morteLogic.r13986_action()
            jump morte_s166

        '"Qui sont les Xaositectes déjà ?"{#morte_s165_r13987}' if morteLogic.r13987_condition():
            # a380 # r13987
            $ morteLogic.r13987_action()
            jump morte_s166

        '"Je pensais qu„il pourrait m“apprendre quelque chose. Tant pis, allons-nous-en."{#morte_s165_r13988}' if morteLogic.r13988_condition():
            # a381 # r13988
            $ morteLogic.r13988_action()
            jump morte_dispose


# s166 # say13829
label morte_s166: # from 165.0 165.1
    nr '"C„est une “faction„ qui n“a pas de règles… sauf de garder en tête une seule pensée trop longtemps. On les appelle parfois les „Chaoteux“. Pas besoin de t„expliquer pourquoi."{#morte_s166_1}'

    menu:
        '"Comment est-ce qu„ils recrutent leurs membres ?"{#morte_s166_r13989}' if morteLogic.r13989_condition():
            # a382 # r13989
            jump morte_s167

        '"Je vois. Alors, allons-y."{#morte_s166_r13990}':
            # a383 # r13990
            jump morte_dispose


# s167 # say13830
label morte_s167: # from 166.0
    nr '"On dirait qu„ils attirent les membres comme des mouches… enfin, des membres fous ou assez chaoteux, je suppose. Je ne pense pas qu“ils aient des recruteurs… bien que l„on ne puisse être sûr de rien."{#morte_s167_1}'

    menu:
        '"Je vois. Merci du renseignement."{#morte_s167_r13991}':
            # a384 # r13991
            jump morte_dispose


# s168 # say14075
label morte_s168: # -
    nr '"Très bien dans ce cas…" Morte te siffle. "Allons-y, chef. Cet Homme-Poussière pourrait aussi bien être un fertilisant."{#morte_s168_1}'

    menu:
        '"D„accord. Allons-nous-en d“ici."{#morte_s168_r14275}' if morteLogic.r14275_condition():
            # a385 # r14275
            jump await_s6  # EXTERN

        '"D„accord. Allons-nous-en d“ici."{#morte_s168_r14276}' if morteLogic.r14276_condition():
            # a386 # r14276
            jump await_s6  # EXTERN

        '"D„accord. Allons-nous-en d“ici."{#morte_s168_r14277}' if morteLogic.r14277_condition():
            # a387 # r14277
            jump await_s6  # EXTERN

        '"D„accord. Allons-nous-en d“ici."{#morte_s168_r14278}' if morteLogic.r14278_condition():
            # a388 # r14278
            jump await_s15  # EXTERN


# s169 # say15339
label morte_s169: # -
    nr '"Fends ce bellâtre mielleux en deux, chef ! Montre-lui qui tu es !"{#morte_s169_1}'

    jump adyzoel_s19  # EXTERN


# s170 # say15340
label morte_s170: # -
    nr '"Ouais, réponds aux questions !"{#morte_s170_1}'

    jump adyzoel_s13  # EXTERN


# s171 # say15341
label morte_s171: # -
    nr '"Je parierais dix pièces de cuivre sur le gros type effrayé !" Morte plane près de toi et souffle : "Eh, c„est toi, chef. Ne nous laisse pas tomber."{#morte_s171_1}'

    jump adyzoel_s20  # EXTERN


# s172 # say15342
label morte_s172: # -
    nr '"Très bien, chef : tu l„as eu cette fois ! Pas de pitié !"{#morte_s172_1}'

    jump adyzoel_s19  # EXTERN


# s173 # say15343
label morte_s173: # -
    nr '"C„est ça, espèce d“élitiste pompeux, parfumé, au cul mielleux… tu as bien entendu !"{#morte_s173_1}'

    jump adyzoel_s32  # EXTERN


# s174 # say15344
label morte_s174: # -
    nr '"Qui *je* suis ? Ah ! J„aurais pu être ton père, mais ce singe m“a devancé !"{#morte_s174_1}'

    menu:
        '"Morte, tais-toi."{#morte_s174_r15490}':
            # a389 # r15490
            jump morte_s175

        'Laisse Morte continuer.{#morte_s174_r15491}':
            # a390 # r15491
            jump morte_s175


# s175 # say15345
label morte_s175: # from 174.0 174.1
    nr '"Qu„est-ce qui ne va pas, princesse ? T“as perdu ta langue ? Tu ferais mieux de refermer la mâchoire avant que quelque chose ne te tombe dans la gorge ! C„est ça, tu m“as bien entendu ! Ramasse ton soutien-gorge à dentelles et va te cacher sous les jupes dégoûtantes de ta mère ! Et donne-lui le bonjour par la même occasion !"{#morte_s175_1}'

    menu:
        '"Morte : la ferme, *maintenant*."{#morte_s175_r15492}':
            # a391 # r15492
            $ morteLogic.r15492_action()
            jump morte_s176

        'Laisse Morte continuer.{#morte_s175_r15493}':
            # a392 # r15493
            jump morte_s177


# s176 # say15346
label morte_s176: # from 175.0
    nr '"Euh ? Oh… désolé, chef. Ce genre de type me…"{#morte_s176_1}'

    jump adyzoel_s33  # EXTERN


# s177 # say15347
label morte_s177: # from 175.1
    nr '"Bon sang, si j„me retenais pas, je dirais -"{#morte_s177_1}'

    jump adyzoel_s33  # EXTERN


# s178 # say15348
label morte_s178: # -
    nr '"Quoi ? J„suis juste un mimir, chef ! Je peux pas me battre en duel !"{#morte_s178_1}'

    $ morteLogic.s178_action()
    jump adyzoel_s35  # EXTERN


# s179 # say15349
label morte_s179: # -
    nr '"C„est, euh… une sorte d“encyclopédie parlante. J„aime pas en parler, assez embarrassant à vrai dire."{#morte_s179_1}'

    if morteLogic.s179_condition():
        $ morteLogic.s179_action()
        jump adyzoel_s36  # EXTERN
    menu:
        '"Mais tu N„ES PAS un mimir, Morte…"{#morte_s179_r65537}' if morteLogic.r65537_condition():
            # a393 # r65537
            jump adyzoel_s36  # EXTERN


# s180 # say15350
label morte_s180: # -
    nr '"Allez, chef… tu vas le laisser s„en tirer comme ça ? Allons rosser ce roué chichiteux ! Je viserai les yeux et tu lui fonceras dessus !{#morte_s180_1}'

    menu:
        '"Tu as raison… Faisons-lui sa fête."{#morte_s180_r15494}':
            # a394 # r15494
            jump adyzoel_s19  # EXTERN

        '"Ce n„est pas le moment, Morte. Allons-y."{#morte_s180_r15495}':
            # a395 # r15495
            $ morteLogic.r15495_action()
            jump morte_dispose


# s181 # say16613
label morte_s181: # from 185.0
    nr '"Hein ? Ah, oui, chef, bien sûr, tout ce que tu voudras."{#morte_s181_1}'

    menu:
        '"Merci. J„ai des questions, Deuils…"{#morte_s181_r16881}' if morteLogic.r16881_condition():
            # a396 # r16881
            jump mftree_s28  # EXTERN

        '"Je ne plaisante pas, Morte. Tu peux faire un effort ?"{#morte_s181_r16882}' if morteLogic.r16882_condition():
            # a397 # r16882
            $ morteLogic.r16882_action()
            jump morte_s182

        '"Merci, Morte. Au revoir, Deuils-pour-Arbres."{#morte_s181_r16883}':
            # a398 # r16883
            jump morte_dispose


# s182 # say16614
label morte_s182: # from 181.1
    nr 'Morte te regarde un moment, silencieux, puis acquiesce. "Ouais. Si ça a autant d„importance pour toi, je le ferai."{#morte_s182_1}'

    menu:
        '"Merci. Annah ? Tu pourrais ?"{#morte_s182_r16884}' if morteLogic.r16884_condition():
            # a399 # r16884
            $ morteLogic.r16884_action()
            jump annah_s99  # EXTERN

        '"Merci. Ignus ?"{#morte_s182_r16885}' if morteLogic.r16885_condition():
            # a400 # r16885
            $ morteLogic.r16885_action()
            jump ignus_s11  # EXTERN

        '"Merci. Grâce, qu„en dites-vous ?"{#morte_s182_r16886}' if morteLogic.r16886_condition():
            # a401 # r16886
            $ morteLogic.r16886_action()
            jump grace_s14  # EXTERN

        '"Merci. Dak„kon, tu peux aider cet homme ?"{#morte_s182_r16887}' if morteLogic.r16887_condition():
            # a402 # r16887
            $ morteLogic.r16887_action()
            jump dakkon_s74  # EXTERN

        '"Merci. Dak„kon : aide cet homme."{#morte_s182_r16888}' if morteLogic.r16888_condition():
            # a403 # r16888
            $ morteLogic.r16888_action()
            jump dakkon_s75  # EXTERN

        '"Merci. Nordom, tu penses que tu pourrais l„aider ?"{#morte_s182_r16889}' if morteLogic.r16889_condition():
            # a404 # r16889
            $ morteLogic.r16889_action()
            jump nordom_s1  # EXTERN

        '"Merci. Vhailor, tu peux l„aider ?"{#morte_s182_r16890}' if morteLogic.r16890_condition():
            # a405 # r16890
            $ morteLogic.r16890_action()
            jump vhail_s1  # EXTERN

        '"Merci. J„ai des questions, Deuils…"{#morte_s182_r16891}':
            # a406 # r16891
            jump mftree_s28  # EXTERN

        '"Merci, Morte. Au revoir, Deuils-pour-Arbres."{#morte_s182_r16892}':
            # a407 # r16892
            jump morte_dispose


# s183 # say16615
label morte_s183: # -
    nr '"Dis, je ne vois *vraiment* pas où cela peut nous mener. C„est le sang séché d“une chose en pierre, chef. Ce n„est pas la façon de travailler de ces petits gars."{#morte_s183_1}'

    jump nordom_s2  # EXTERN


# s184 # say16616
label morte_s184: # -
    nr '"Et, allez, c„est reparti. Je ne peux pas *croire* que tu perdes ainsi ton temps, chef !"{#morte_s184_1}'

    jump nordom_s3  # EXTERN


# s185 # say16617
label morte_s185: # -
    nr '"Tu sais, chef, j„ai vu des trucs bizarres… mais que ce truc soit *possible*, ça me chiffonne."{#morte_s185_1}'

    menu:
        '"Merci, Nordom. Morte ? Qu„est-ce que t“en penses ?"{#morte_s185_r16893}' if morteLogic.r16893_condition():
            # a408 # r16893
            $ morteLogic.r16893_action()
            jump morte_s181

        '"Merci, Nordom. Annah ? Tu peux ?"{#morte_s185_r16894}' if morteLogic.r16894_condition():
            # a409 # r16894
            $ morteLogic.r16894_action()
            jump annah_s99  # EXTERN

        '"Merci, Nordom. Ignus ?"{#morte_s185_r16895}' if morteLogic.r16895_condition():
            # a410 # r16895
            $ morteLogic.r16895_action()
            jump ignus_s11  # EXTERN

        '"Merci, Nordom. Grâce, vous pourriez y réfléchir ?"{#morte_s185_r16896}' if morteLogic.r16896_condition():
            # a411 # r16896
            $ morteLogic.r16896_action()
            jump grace_s14  # EXTERN

        '"Merci, Nordom. Dak„kon, tu pourrais aider cet homme ?"{#morte_s185_r16897}' if morteLogic.r16897_condition():
            # a412 # r16897
            $ morteLogic.r16897_action()
            jump dakkon_s74  # EXTERN

        '"Merci, Nordom. Dak„kon : aide cet homme."{#morte_s185_r16898}' if morteLogic.r16898_condition():
            # a413 # r16898
            $ morteLogic.r16898_action()
            jump dakkon_s75  # EXTERN

        '"Merci, Nordom. Vhailor, tu pourrais aider ?"{#morte_s185_r16899}' if morteLogic.r16899_condition():
            # a414 # r16899
            $ morteLogic.r16899_action()
            jump vhail_s1  # EXTERN

        '"Merci, Nordom. J„ai quelques questions, Deuils…"{#morte_s185_r16900}':
            # a415 # r16900
            jump mftree_s28  # EXTERN

        '"Je te remercie, Nordom. Au revoir, Deuils-pour-Arbres."{#morte_s185_r16901}':
            # a416 # r16901
            jump morte_dispose


# s186 # say16618
label morte_s186: # -
    nr '"Oh ! J„peux pas regarder !"{#morte_s186_1}'

    jump ignus_s13  # EXTERN


# s187 # say17533
label morte_s187: # -
    nr '"Pourquoi pas, chef ? Ça sera drôle à botter pour se remonter le moral, pas vrai ? Hum… Je pourrai du moins le botter par procuration. Je voudrais bien voir ce saut de cinq mètres, aussi !"{#morte_s187_1}'

    menu:
        '"Qu„est-ce que tu en penses, Annah ?"{#morte_s187_r17583}' if morteLogic.r17583_condition():
            # a417 # r17583
            jump annah_s107  # EXTERN

        '"Je t„en prends un, marchand."{#morte_s187_r17584}' if morteLogic.r17584_condition():
            # a418 # r17584
            $ morteLogic.r17584_action()
            jump 300mer5_s5  # EXTERN

        '"Je préfère garder mes pièces de cuivre. J„ai des questions, marchand…"{#morte_s187_r17585}' if morteLogic.r17585_condition():
            # a419 # r17585
            jump 300mer5_s2  # EXTERN

        '"Je garde mes pièces de cuivre, marchand. Au revoir."{#morte_s187_r17586}' if morteLogic.r17586_condition():
            # a420 # r17586
            jump morte_dispose

        '"Je n„ai pas assez, marchand, mais j“ai quelques questions…"{#morte_s187_r17587}' if morteLogic.r17587_condition():
            # a421 # r17587
            jump 300mer5_s2  # EXTERN

        '"Je n„ai pas assez d“argent pour en acheter un. Peu importe, marchand. Au revoir."{#morte_s187_r17588}' if morteLogic.r17588_condition():
            # a422 # r17588
            jump morte_dispose


# s188 # say18801
label morte_s188: # -
    nr 'Morte se tourne vers le rucher. "Va caguer."{#morte_s188_1}'

    menu:
        '"Tu n„auras pas ce crâne."{#morte_s188_r18802}':
            # a423 # r18802
            $ morteLogic.r18802_action()
            jump colylfn_s5  # EXTERN

        '"Ce n„est pas ton crâne."{#morte_s188_r18803}':
            # a424 # r18803
            jump colylfn_s6  # EXTERN

        'Vérité : "Vas-y, prends le crâne."{#morte_s188_r18804}':
            # a425 # r18804
            jump colylfn_s9  # EXTERN

        'Attaque-le au moment où il baisse sa garde : "Vas-y, prends le crâne."{#morte_s188_r18805}':
            # a426 # r18805
            jump colylfn_s10  # EXTERN

        'Vérité : "Si tu peux me prouver que c„est bien ton crâne, je te le donne. Ce n“est que justice."{#morte_s188_r18578}':
            # a427 # r18578
            $ morteLogic.r18578_action()
            jump colylfn_s12  # EXTERN

        '"Qui es-tu ?"{#morte_s188_r18807}':
            # a428 # r18807
            jump colylfn_s13  # EXTERN

        '"Je t„achète le crâne. Ça te va ?"{#morte_s188_r18808}':
            # a429 # r18808
            $ morteLogic.r18808_action()
            jump colylfn_s14  # EXTERN


# s189 # say18809
label morte_s189: # -
    nr 'Morte tient l„un des doigts de l“homme entre ses dents comme un cigare macabre. Il parle le doigt à la bouche. "Touche-moi de nouveau et ta main ira rejoindre ton doigt, bige."{#morte_s189_1}'

    menu:
        '"Morte ! Rends-lui son doigt."{#morte_s189_r18810}':
            # a430 # r18810
            jump morte_s190

        '"Pas de chance. Disparais, bige."{#morte_s189_r18811}':
            # a431 # r18811
            jump colylfn_s11  # EXTERN

        '"Que ça te serve de leçon ! Au revoir."{#morte_s189_r18812}':
            # a432 # r18812
            jump colylfn_s11  # EXTERN


# s190 # say18813
label morte_s190: # from 189.0
    nr 'Morte crache le doigt sur l„homme. Il rebondit sur sa poitrine et tombe par terre.{#morte_s190_1}'

    menu:
        '"Pas de chance. Disparais, bige."{#morte_s190_r18814}':
            # a433 # r18814
            jump colylfn_s11  # EXTERN

        '"Que ça te serve de leçon ! Au revoir."{#morte_s190_r18815}':
            # a434 # r18815
            jump colylfn_s11  # EXTERN


# s191 # say18816
label morte_s191: # -
    nr 'Morte se tourne vers toi. "Chef, ne donne rien à ce vaurien."{#morte_s191_1}'

    menu:
        '"Je…"{#morte_s191_r18817}':
            # a435 # r18817
            jump colylfn_s15  # EXTERN


# s192 # say18818
label morte_s192: # -
    nr 'Morte se tourne vers l„homme. "J“te parlais *pas*, imbécile. Quand je te parlerai, tu le sauras, parce que j„le ferai en grognant et en grommelant pour être sûr que tu m“comprennes."{#morte_s192_1}'

    jump colylfn_s16  # EXTERN


# s193 # say18819
label morte_s193: # -
    nr '"Chef, *non*."{#morte_s193_1}'

    menu:
        'Donne-lui cinq pièces de cuivre.{#morte_s193_r18820}' if morteLogic.r18820_condition():
            # a436 # r18820
            $ morteLogic.r18820_action()
            jump colylfn_s18  # EXTERN

        'Donne-lui cinquante pièces de cuivre.{#morte_s193_r18821}' if morteLogic.r18821_condition():
            # a437 # r18821
            $ morteLogic.r18821_action()
            jump colylfn_s18  # EXTERN

        'Donne-lui cent pièces de cuivre.{#morte_s193_r18822}' if morteLogic.r18822_condition():
            # a438 # r18822
            $ morteLogic.r18822_action()
            jump colylfn_s18  # EXTERN

        'Donne-lui cinq cents pièces de cuivre.{#morte_s193_r18823}' if morteLogic.r18823_condition():
            # a439 # r18823
            $ morteLogic.r18823_action()
            jump colylfn_s18  # EXTERN

        '"Je n„ai pas assez d“argent à te donner."{#morte_s193_r18824}' if morteLogic.r18824_condition():
            # a440 # r18824
            jump colylfn_s19  # EXTERN

        '"Laisse tomber. C„est pas ton crâne et tu l“auras pas."{#morte_s193_r18825}':
            # a441 # r18825
            jump colylfn_s6  # EXTERN


# s194 # say18826
label morte_s194: # -
    nr '"Je flotte avec le plus grand idiot du Multivers."{#morte_s194_1}'

    menu:
        '"… Et quoi, Doigts Jaunes ? Si je te vole, tu feras *quoi* ?"{#morte_s194_r18827}':
            # a442 # r18827
            jump colylfn_s20  # EXTERN

        '"Bon, maintenant, j„ai quelques questions à te poser, Doigts Jaunes…"{#morte_s194_r18828}':
            # a443 # r18828
            jump colylfn_s23  # EXTERN

        '"Au revoir, Doigts Jaunes."{#morte_s194_r18829}' if morteLogic.r18829_condition():
            # a444 # r18829
            jump colylfn_s41  # EXTERN

        '"Au revoir, Doigts Jaunes."{#morte_s194_r18830}' if morteLogic.r18830_condition():
            # a445 # r18830
            $ morteLogic.r18830_action()
            jump morte_dispose


# s195 # say18831
label morte_s195: # -
    nr '"Chef ! Allez !"{#morte_s195_1}'

    jump colylfn_s52  # EXTERN


# s196 # say18832
label morte_s196: # -
    nr '"Rien de bien beau non plus, de là où je flotte."{#morte_s196_1}'

    menu:
        'Donne-lui cinq pièces de cuivre.{#morte_s196_r18833}' if morteLogic.r18833_condition():
            # a446 # r18833
            $ morteLogic.r18833_action()
            jump colylfn_s53  # EXTERN

        'Donne-lui dix pièces de cuivre.{#morte_s196_r18834}' if morteLogic.r18834_condition():
            # a447 # r18834
            $ morteLogic.r18834_action()
            jump colylfn_s53  # EXTERN

        'Donne-lui cinquante pièces de cuivre.{#morte_s196_r18835}' if morteLogic.r18835_condition():
            # a448 # r18835
            $ morteLogic.r18835_action()
            jump colylfn_s53  # EXTERN

        'Donne-lui cent pièces de cuivre.{#morte_s196_r18836}' if morteLogic.r18836_condition():
            # a449 # r18836
            $ morteLogic.r18836_action()
            jump colylfn_s53  # EXTERN

        '"Je retire ce que j„ai dit. Va-t“en et que je ne te revoie plus jamais."{#morte_s196_r18837}':
            # a450 # r18837
            jump colylfn_s61  # EXTERN


# s197 # say19031
label morte_s197: # -
    nr '"Eh toi, gros cogneur ! Comment va ton ami dans le mur ?"{#morte_s197_1}'

    jump ojo_s11  # EXTERN


# s198 # say19032
label morte_s198: # -
    nr 'Morte baisse la tête. "Tout ce que tu veux, chef."{#morte_s198_1}'

    menu:
        '"D„accord. Ojo, j“ai des questions."{#morte_s198_r19033}':
            # a451 # r19033
            jump ojo_s12  # EXTERN

        '"Ça va. Allons-y."{#morte_s198_r19034}':
            # a452 # r19034
            jump morte_dispose


# s199 # say19551
label morte_s199: # -
    nr '"Ouaoh, chef… quelle beauté, hein ? C„est pas partout qu“on peut trouver une petite mignonne comme ça, tu sais."{#morte_s199_1}'

    menu:
        '"Je ne trouve rien d„attirant à des cadavres en décomposition, Morte, femmes ou pas."{#morte_s199_r19666}':
            # a453 # r19666
            jump morte_s200

        '"Et bien, peut-être qu„en passant outre cette “horrible vieille chose pourrissante„…"{#morte_s199_r19667}':
            # a454 # r19667
            jump morte_s201


# s200 # say19552
label morte_s200: # from 199.0
    nr 'Les yeux de Morte roulent dans son crâne. "Euh ! Un jour tu comprendras ce que je veux dire."{#morte_s200_1}'

    menu:
        'Ignore-le, salue le zombi.{#morte_s200_r19668}' if morteLogic.r19668_condition():
            # a455 # r19668
            jump zomcitf_s1  # EXTERN

        'Ignore-le, salue le zombi.{#morte_s200_r19669}' if morteLogic.r19669_condition():
            # a456 # r19669
            jump zomcitf_s3  # EXTERN


# s201 # say19553
label morte_s201: # from 199.1
    nr '"Ouais, tu vois, c„est ce que je… eh !" Morte pivote vers toi. "Te moquerais-tu de moi ?"{#morte_s201_1}'

    menu:
        'Ignore-le, salue le zombi.{#morte_s201_r19670}' if morteLogic.r19670_condition():
            # a457 # r19670
            jump zomcitf_s1  # EXTERN

        'Ignore-le, salue le zombi.{#morte_s201_r19671}' if morteLogic.r19671_condition():
            # a458 # r19671
            jump zomcitf_s3  # EXTERN


# s202 # say19681
label morte_s202: # -
    nr '" Eh… j„sais pas si tu veux parler à cette… chose."{#morte_s202_1}'

    menu:
        '"Pourquoi pas, Morte ?"{#morte_s202_r19691}':
            # a459 # r19691
            jump morte_s203

        '"Bon, très bien. Allons-y."{#morte_s202_r19692}':
            # a460 # r19692
            jump morte_dispose

        'Ignore Morte, salue la goule.{#morte_s202_r19693}':
            # a461 # r19693
            jump ghocitm_s1  # EXTERN


# s203 # say19682
label morte_s203: # from 202.0
    nr '"C„étaient autrefois des humains… eux, ou leurs ancêtres, se sont nourris de cadavres et voilà ce qu“ils sont devenus. Pas très joli à voir, chef… guère plus que des animaux, en fait. Des animaux *dangereux*."{#morte_s203_1}'

    menu:
        '"Bon, très bien. Allons-y."{#morte_s203_r19694}':
            # a462 # r19694
            jump morte_dispose

        '"Je vais quand même aller lui parler."{#morte_s203_r19695}':
            # a463 # r19695
            jump ghocitm_s1  # EXTERN


# s204 # say19702
label morte_s204: # -
    nr '"Eh… j„sais pas si tu veux parler à cette… chose."{#morte_s204_1}'

    menu:
        '"Ça me surprend, Morte… C„est un mort-vivant, c“est une femme. Tu n„es pas si difficile d“habitude."{#morte_s204_r19713}':
            # a464 # r19713
            jump morte_s206

        '"Pourquoi pas, Morte ?"{#morte_s204_r19714}':
            # a465 # r19714
            jump morte_s205

        '"Bon, très bien. Allons-y."{#morte_s204_r19715}':
            # a466 # r19715
            jump morte_dispose

        'Ignore Morte, salue la goule.{#morte_s204_r19716}':
            # a467 # r19716
            jump ghocitf_s1  # EXTERN


# s205 # say19703
label morte_s205: # from 204.1 206.0
    nr '"C„étaient autrefois des humains… eux, ou leurs ancêtres, se sont nourris de cadavres et voilà ce qu“ils sont devenus. Pas très joli à voir, chef… guère plus que des animaux, en fait. Des animaux *dangereux*."{#morte_s205_1}'

    menu:
        '"Bon, très bien. Allons-y."{#morte_s205_r19717}':
            # a468 # r19717
            jump morte_dispose

        '"Je vais quand même aller lui parler."{#morte_s205_r19718}':
            # a469 # r19718
            jump ghocitf_s1  # EXTERN


# s206 # say19704
label morte_s206: # from 204.0
    nr '"C„est pas tout à fait la même chose, chef…"{#morte_s206_1}'

    jump morte_s205


# s207 # say20469
label morte_s207: # -
    nr '"Cette pilleuse de tombe est aveugle et presque sourde."{#morte_s207_1}'

    jump marta_s9  # EXTERN


# s208 # say20470
label morte_s208: # -
    nr '"Je crois qu„elle veut dire organes. J“espère qu„elle veut dire organes."{#morte_s208_1}'

    jump marta_s15  # EXTERN


# s209 # say20471
label morte_s209: # -
    nr 'Morte se tourne vers Marta. "Oui, des trucs." Il se tourne ensuite vers toi. "Ce n„est qu“une question de sémantique."{#morte_s209_1}'

    menu:
        '"Marta, pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"{#morte_s209_r20612}' if morteLogic.r20612_condition():
            # a470 # r20612
            $ morteLogic.r20612_action()
            jump marta_s16  # EXTERN

        '"Marta, pourquoi est-ce que tu arraches les dents et les sutures des cadavres ?"{#morte_s209_r20613}' if morteLogic.r20613_condition():
            # a471 # r20613
            $ morteLogic.j20538_s209_r20613_action()
            jump marta_s16  # EXTERN

        '"Euh… Très bien. Je dois m„en aller, Marta. Au revoir."{#morte_s209_r20614}':
            # a472 # r20614
            jump morte_dispose


# s210 # say20472
label morte_s210: # -
    nr '"Je ne vais *certainement* pas regarder ça."{#morte_s210_1}'

    jump marta_s24  # EXTERN


# s211 # say21602
label morte_s211: # -
    nr '"Oh, au nom des Puissances… ! Un dabus."{#morte_s211_1}'

    menu:
        '"Qu„est-ce qui ne va pas ?"{#morte_s211_r24695}':
            # a473 # r24695
            jump morte_s212


# s212 # say21603
label morte_s212: # from 211.0
    nr '"C„est un dabus. Ils *s“expriment* en rébus, ces puzzles de mots barbants. Si *tu* ne sais pas ce qu„il dit, nous ferions mieux de trouver un natif ou un autre moyen de communication… si c“est vraiment nécessaire. Quel groupe assommant ! Tu paries qu„ils *peuvent* parler, mais qu“ils préfèrent coder tout ce qu„ils disent ne serait-ce que pour le plaisir d“énerver tout le monde."{#morte_s212_1}'

    menu:
        '"Qu„est-ce qu“un „dabus“ ?"{#morte_s212_r24696}':
            # a474 # r24696
            jump morte_s213


# s213 # say21604
label morte_s213: # from 212.0
    nr '"La chanson dit que ce sont les gardes de la Dame des Douleurs. Ils flottent, cassent, réparent et rapiècent Sigil selon ses caprices. Ils sont pires que des mouches vertes." Morte soupire. "Mais interdiction de les écraser, sinon la Dame… se fâche."{#morte_s213_1}'

    menu:
        '"La „Dame des Douleurs“ ? Qui c„est ?"{#morte_s213_r24697}' if morteLogic.r24697_condition():
            # a475 # r24697
            $ morteLogic.r24697_action()
            jump morte_s214

        '"Que peux-tu me dire sur la Dame des Douleurs ?"{#morte_s213_r24698}' if morteLogic.r24698_condition():
            # a476 # r24698
            jump morte_s214

        '"Je vois."{#morte_s213_r24699}' if morteLogic.r24699_condition():
            # a477 # r24699
            jump fell_s8  # EXTERN


# s214 # say21605
label morte_s214: # from 213.0 213.1
    nr '"Elle dirige cette cité. Tu la reconnaîtras si tu la vois : elle a ces lames autour du visage, la taille d„un géant et elle flotte au-dessus du sol, comme ces gars." Morte fait un signe de tête en direction du dabus, qui vous observe tous les deux. "Personne ne sait grand-chose sur elle… elle ne parle pas beaucoup. Sache juste qu“il ne vaut mieux pas la mettre en colère. Si tu la vois, voici mon conseil : détale."{#morte_s214_1}'

    menu:
        '"Euh… attends un instant. Tu as dit que les dabus flottent, n„est-ce pas ? Celui-ci marche sur le sol."{#morte_s214_r24700}' if morteLogic.r24700_condition():
            # a478 # r24700
            jump morte_s215

        '"Euh… attends un instant. Tu as dit que les dabus flottent, n„est-ce pas ? Celui-ci marche sur le sol."{#morte_s214_r24701}' if morteLogic.r24701_condition():
            # a479 # r24701
            jump morte_s215

        '"Je vois."{#morte_s214_r24702}':
            # a480 # r24702
            jump fell_s8  # EXTERN


# s215 # say21606
label morte_s215: # from 214.0 214.1
    nr 'Morte regarde le dabus, et ses yeux s„écarquillent. "Ah-ha ! Je savais que vous autres têtes de boucs ne pouviez pas marcher ! Je le savais !" Morte se tourne joyeusement vers toi. "Ha ! Celui-là ne doit pas être assez bizarre pour décoller du sol."{#morte_s215_1}'

    menu:
        '"Peut-être bien…"{#morte_s215_r24703}':
            # a481 # r24703
            jump fell_s8  # EXTERN


# s216 # say21607
label morte_s216: # -
    nr 'Morte pouffe. "Je finirai dans les entrailles d„un tanar“ri avant d„arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Cherche un natif de Sigil."{#morte_s216_1}'

    menu:
        '"Je vois."{#morte_s216_r24704}':
            # a482 # r24704
            jump fell_s8  # EXTERN


# s217 # say21608
label morte_s217: # -
    nr 'Morte pouffe. "Je finirai dans les entrailles d„un tanar“ri avant d„arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Dis à la sale gamine de le faire." Il fait signe en direction d“Annah. "C„est une native de la Ruche."{#morte_s217_1}'

    menu:
        '"Peut-être…"{#morte_s217_r24705}':
            # a483 # r24705
            jump fell_s8  # EXTERN


# s218 # say21609
label morte_s218: # -
    nr 'Morte pouffe. "Je finirai dans les entrailles d„un tanar“ri avant d„arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Il indique Dak“kon de la tête. "Demande à Pharisien-deux-fois-plus-silencieux de traduire."{#morte_s218_1}'

    menu:
        '"Peut-être…"{#morte_s218_r24706}':
            # a484 # r24706
            jump fell_s8  # EXTERN


# s219 # say21610
label morte_s219: # -
    nr 'Morte pouffe. "Je finirai dans les entrailles d„un tanar“ri avant d„arriver à déchiffrer ce que cette tête de bouc essaie de dire. Tu veux un traducteur ? Demande à la tanar“ri de le faire." Il indique Tombée-en-Disgrâce de la tête. "Elle a sûrement dû avoir à faire avec ces gars plus d„une fois."{#morte_s219_1}'

    menu:
        '"Peut-être…"{#morte_s219_r24707}':
            # a485 # r24707
            jump fell_s8  # EXTERN


# s220 # say22061
label morte_s220: # externs soego_s93
    nr '"Tu veux juste les tuer ! La sensibilité guette les Hommes-Poussières, je vois."{#morte_s220_1}'

    menu:
        '"J„ai d“autres questions…"{#morte_s220_r22062}':
            # a486 # r22062
            jump soego_s83  # EXTERN

        '"C„est tout ce que je voulais savoir. Au revoir."{#morte_s220_r22063}':
            # a487 # r22063
            jump morte_dispose


# s221 # say22849
label morte_s221: # -
    nr 'Morte te fixe du regard et secoue la tête.{#morte_s221_1}'

    menu:
        '"Comment, cube héros ? „Morte est un crâne idiot“ ? Ah ça oui, hein, cube héros ?"{#morte_s221_r22850}':
            # a488 # r22850
            $ morteLogic.r22850_action()
            jump morte_s222

        'Mets le cube de côté.{#morte_s221_r22851}':
            # a489 # r22851
            jump morte_dispose


# s222 # say22852
label morte_s222: # from 221.0
    nr '"Hé ! Il a pas dit ça !"{#morte_s222_1}'

    menu:
        '"Si ! Il vient juste de le dire !"{#morte_s222_r22853}':
            # a490 # r22853
            $ morteLogic.r22853_action()
            jump morte_s223

        'Mets le cube de côté.{#morte_s222_r22854}':
            # a491 # r22854
            jump morte_dispose


# s223 # say22855
label morte_s223: # from 222.0
    nr '"Qu- ?! Donne-moi ça !"{#morte_s223_1}'

    menu:
        '"Non, c„est l“mien. Il veut rester qu„avec moi de toute façon. Pas vrai, cube héros ? Ben oui, bien sûr !"{#morte_s223_r22856}':
            # a492 # r22856
            $ morteLogic.r22856_action()
            jump morte_s224

        'Mets le cube de côté.{#morte_s223_r22857}':
            # a493 # r22857
            jump morte_dispose


# s224 # say22858
label morte_s224: # from 223.0
    nr '"Je. Veux. Juste. Le. Tenir. Une. Seconde."{#morte_s224_1}'

    menu:
        '"Mais t„as pas de mains."{#morte_s224_r22859}':
            # a494 # r22859
            jump morte_s225

        'Mets le cube de côté.{#morte_s224_r22860}':
            # a495 # r22860
            jump morte_dispose


# s225 # say22861
label morte_s225: # from 224.0
    nr 'J„le tiendrai entre mes DENTS."{#morte_s225_1}'

    menu:
        '"Non, je crois que j„vais juste le mettre de côté pour l“instant."{#morte_s225_r22862}':
            # a496 # r22862
            jump morte_s226


# s226 # say22863
label morte_s226: # from 225.0
    nr '"Je vais réduire ce cube modrone en morceaux."~ [MRT251]{#morte_s226_1}'

    menu:
        '"T„as entendu quelque chose cube héros ? Moi non plus !"{#morte_s226_r22864}':
            # a497 # r22864
            jump morte_dispose


# s227 # say22892
label morte_s227: # -
    nr '"Oooooh !" Morte claque des dents alors que Craddock se met à bouillonner… on l„entend presque prendre des notes dans sa tête.~ [MRT387]{#morte_s227_1}'

    jump craddo_s15  # EXTERN


# s228 # say24174
label morte_s228: # -
    nr '"Tu sais, chef, j„en avais vraiment marre de… ses pauses… constantes… De toute façon… c“est une… bonne chose… qu„il se soit… enfin… tu."{#morte_s228_1}'

    menu:
        '"Très drôle, Morte. Allons-y."{#morte_s228_r24175}':
            # a498 # r24175
            jump morte_dispose


# s229 # say24176
label morte_s229: # -
    nr '"Chef, pourquoi est-ce qu„on aurait besoin d“une réserve illimitée d„eau ? Où est le feu, hein ?"{#morte_s229_1}'

    menu:
        '"Cela pourrait nous servir plus tard, Morte. Allons-y."{#morte_s229_r24177}':
            # a499 # r24177
            jump morte_dispose

        '"Il faut qu„on le fasse, Morte."{#morte_s229_r24178}':
            # a500 # r24178
            jump morte_s230


# s230 # say24179
label morte_s230: # from 229.1
    nr '"La chose à faire ? Au cas où tu l„aurais oublié, chef, il faut que tu t“occupes de ta propre quête ! Mais bon, c„est toi qui décides. Pfff…"{#morte_s230_1}'

    menu:
        '"Merci pour ton approbation, Morte. Allons-y."{#morte_s230_r24180}':
            # a501 # r24180
            jump morte_dispose


# s231 # say24903
label morte_s231: # -
    nr '"Eh… ça va ? J„ai vraiment cru qu“t„étais clamsé."{#morte_s231_1}'

    menu:
        '"Qu… ? Qui es-tu ?"{#morte_s231_r24904}':
            # a502 # r24904
            $ morteLogic.r24904_action()
            jump morte_s232

        '"Je suis sûr que t„as des tas de choses intéressantes à dire, Morte, mais ferme-la et rejoins-moi IMMEDIATEMENT."{#morte_s231_r24905}':
            # a503 # r24905
            $ morteLogic.r24905_action()
            jump morte_dispose


# s232 # say24906
label morte_s232: # from 231.0
    nr '"Euh… qui je suis ? Et si *tu* commençais ? Qui tu es, toi ?"{#morte_s232_1}'

    menu:
        '"Je… ne me rappelle pas. J„arrive pas à m“en rappeler."{#morte_s232_r24907}':
            # a504 # r24907
            jump morte_s233

        '"C„est à *toi* que j“ai demandé en premier, crâne."{#morte_s232_r24908}':
            # a505 # r24908
            jump morte_s234


# s233 # say24909
label morte_s233: # from 232.0 234.0 235.0
    nr '"Tu ne te souviens pas de ton *nom* ? Eh, la prochaine fois que tu passes une nuit en ville, vas-y doucement sur la bibe. Je m„appelle Morte. Moi aussi je suis piégé ici."{#morte_s233_1}'

    menu:
        '"Piégé ?"{#morte_s233_r24910}':
            # a506 # r24910
            jump morte_s236


# s234 # say24911
label morte_s234: # from 232.1
    nr '"Ouais, „et je t“ai demandé en *deuxième*. Comment tu t„appelles ?"{#morte_s234_1}'

    menu:
        '"Je… ne me rappelle pas. J„arrive pas à m“en rappeler."{#morte_s234_r24912}':
            # a507 # r24912
            jump morte_s233

        '"Toi d„abord, crâne. C“est la dernière fois que je te le demande."{#morte_s234_r24913}':
            # a508 # r24913
            jump morte_s235


# s235 # say24914
label morte_s235: # from 234.1
    nr '"Pffff… c„que t“es têtu. Très bien, c„est *moi* qui vais jouer les gentils. Je m“appelle Morte. Et toi ?"{#morte_s235_1}'

    menu:
        '"Je… ne me rappelle pas. J„arrive pas à m“en rappeler."{#morte_s235_r24915}':
            # a509 # r24915
            jump morte_s233


# s236 # say24916
label morte_s236: # from 233.0
    nr '"Ouais, comme t„as pas encore eu le temps de te remettre d“aplomb, voilà la chanson : j„ai essayé toutes les portes et cette salle est fermée à clé plus sûrement qu“une ceinture de chasteté."{#morte_s236_1}'

    menu:
        '"On est enfermés… où ? Quel est cet endroit ?"{#morte_s236_r24917}':
            # a510 # r24917
            jump morte_s237


# s237 # say24918
label morte_s237: # from 236.0
    nr '"Ça s„appelle la “Morgue„… c“est un grand édifice noir avec tout le charme architectural d„une araignée pleine."{#morte_s237_1}'

    menu:
        '"„La Morgue“ ? Qu„est-ce… je suis mort ?"{#morte_s237_r24919}':
            # a511 # r24919
            jump morte_s238


# s238 # say24920
label morte_s238: # from 237.0
    nr '"Pas de mon point de vue. Tu as plein de cicatrices…. on dirait qu„un bige t“a peint avec un couteau. Raison de plus pour jouer un air à cet endroit avant que celui qui a commencé la gravure revienne finir son boulot."{#morte_s238_1}'

    menu:
        '"Comment on sort d„ici ?"{#morte_s238_r24921}':
            # a512 # r24921
            jump morte_s239


# s239 # say24922
label morte_s239: # from 238.0
    nr '"Bon, toutes les portes sont fermées, nous avons donc besoin de la clé. Il y a des chances qu„un des cadavres errants l“ait."{#morte_s239_1}'

    menu:
        '"Des cadavres errants ?"{#morte_s239_r24923}':
            # a513 # r24923
            jump morte_s240


# s240 # say24924
label morte_s240: # from 28.0 239.0
    nr '"Ouais, les gardiens de la Morgue utilisent des corps morts comme main-d„œuvre bon marché. Les cadavres sont aussi muets que des pierres. Ils sont inoffensifs et ne t“attaqueront que si tu les provoques."{#morte_s240_1}'

    menu:
        '"Y a-t-il un autre moyen ? Je ne veux pas les tuer juste pour une clé."{#morte_s240_r24925}':
            # a514 # r24925
            $ morteLogic.r24925_action()
            jump morte_s241

        '"Je devrais donc attaquer un de ces cadavres et lui faucher la clé ?"{#morte_s240_r24926}':
            # a515 # r24926
            jump morte_s242


# s241 # say24927
label morte_s241: # from 240.0
    nr '"Quoi, tu penses que ça va les vexer ? Ils sont MORTS. La bonne nouvelle, c„est que si tu les tues, ils pourront au moins se reposer avant que leurs gardiens les ressuscitent pour les remettre au travail."{#morte_s241_1}'

    menu:
        '"Bon, d„accord… J“en descendrai un et je prendrai la clé."{#morte_s241_r24928}':
            # a516 # r24928
            jump morte_s242


# s242 # say24929
label morte_s242: # from 240.1 241.0
    nr '"Bon, avant de faire ça, arme-toi. Je crois avoir vu un scalpel sur une des étagères par ici."  ^NREMARQUE : recherche une arme pour attaquer les zombis sur les étagères de cette pièce.^-{#morte_s242_1}'

    menu:
        '"D„accord, j“en chercherai un."{#morte_s242_r24930}':
            # a517 # r24930
            jump morte_s243


# s243 # say24931
label morte_s243: # from 242.0
    nr '"Une dernière chose : ces cadavres sont très lents, mais se faire frapper par l„un d“eux, c„est un peu comme embrasser un bélier. S“ils commencent à prendre l„avantage, n“oublie pas que tu peux COURIR et qu„eux ne le peuvent pas. Fais-en usage pour te mettre à l“abri."  ^NREMARQUE : <RUNAWAY> Si tu es en danger de mort, mets de la distance entre toi et les zombis en courant, le temps de récupérer.^-{#morte_s243_1}'

    menu:
        '"D„accord. Merci du conseil."{#morte_s243_r24932}':
            # a518 # r24932
            $ morteLogic.r24932_action()
            jump morte_dispose


# s244 # say25962
label morte_s244: # -
    nr '"C„est un genre d“encyclopédie sur pattes, chef. J„aime pas en parler à vrai dire."{#morte_s244_1}'

    if morteLogic.s244_condition():
        $ morteLogic.s244_action()
        jump cwrushf_s27  # EXTERN
    menu:
        '"Mais tu N„ES PAS un mimir, Morte…"{#morte_s244_r66902}' if morteLogic.r66902_condition():
            # a519 # r66902
            jump cwrushf_s27  # EXTERN


# s245 # say25964
label morte_s245: # -
    nr 'Morte agite ses sourcils et commence à planer vers la femme. "C„est pas tout ce que je-"{#morte_s245_1}'

    menu:
        '"Ça suffit, Morte."{#morte_s245_r25965}':
            # a520 # r25965
            jump morte_s246


# s246 # say25966
label morte_s246: # from 245.0
    nr '"Ouais, ouais. Ça va." Morte roule les yeux et commence à marmonner. "Pfff, je pourrais tout aussi bien être *mort*…"{#morte_s246_1}'

    menu:
        '"Dis… tu as bien dit „tout seul“. Pourquoi, ce n„est pas le cas, d“habitude ?"{#morte_s246_r25967}' if morteLogic.r25967_condition():
            # a521 # r25967
            jump cwrushf_s28  # EXTERN

        '"J„ai des questions à poser à cette femme…"{#morte_s246_r25968}':
            # a522 # r25968
            jump cwrushf_s2  # EXTERN

        'Laisse-la tranquille.{#morte_s246_r25969}':
            # a523 # r25969
            jump morte_dispose


# s247 # say25970
label morte_s247: # -
    nr 'Morte l„interrompt : "Bon, tu vois, chef, tout ça, ça dépend de la *qualité* de ton mimir. Certains - comme moi -- sont plus enchantés que d“autres, c„est tout. Plus… euh… “conscients„, c“est le terme."{#morte_s247_1}'

    menu:
        '"Hum."{#morte_s247_r25971}':
            # a524 # r25971
            jump cwrushf_s29  # EXTERN

        '"Je vois."{#morte_s247_r25972}':
            # a525 # r25972
            jump cwrushf_s29  # EXTERN


# s248 # say25973
label morte_s248: # -
    nr '"Eh ! J„essaie juste de m“amuser, chef !"{#morte_s248_1}'

    jump cwrushf_s27  # EXTERN


# s249 # say27285
label morte_s249: # -
    nr '"Un conseil, chef : je me tiendrai tranquille à présent - pas besoin de mettre plus de cadavres que nécessaire dans le livre des morts… en particulier des femmes. En plus, cela pourrait attirer les gardiens."{#morte_s249_1}'

    menu:
        '"Je ne crois pas que tu en aies déjà parlé… *Qui* sont ces gardiens ?"{#morte_s249_r27303}':
            # a526 # r27303
            jump morte_s250

        '"Tous ces cadavres… d„où ils viennent ?"{#morte_s249_r27304}':
            # a527 # r27304
            jump morte_s252

        '"Pourquoi tu t„intéresses aux cadavres féminins ?"{#morte_s249_r27305}':
            # a528 # r27305
            jump morte_s253

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte_s249_r27306}':
            # a529 # r27306
            jump morte_s257


# s250 # say27286
label morte_s250: # from 249.0 252.0 256.0
    nr '"Ils se donnent le nom d„Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C“est bande enfumée d„adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."{#morte_s250_1}'

    menu:
        '"Je ne comprends pas… Qu„est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m“enfuis ?"{#morte_s250_r27307}':
            # a530 # r27307
            jump morte_s251


# s251 # say27287
label morte_s251: # from 250.0
    nr '"Tu n„écoutais pas ?! J“ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu„à l“extérieur ?"{#morte_s251_1}'

    menu:
        '"Les cadavres que j„ai vus ici… d“où ils venaient ?"{#morte_s251_r27308}':
            # a531 # r27308
            jump morte_s252

        '"Tout à l„heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"{#morte_s251_r27309}':
            # a532 # r27309
            jump morte_s253

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte_s251_r27310}':
            # a533 # r27310
            jump morte_s257


# s252 # say27288
label morte_s252: # from 249.1 251.0 256.1
    nr '"La mort visite les plans tous les jours, chef. Ces empotés sont tout ce qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après la mort."{#morte_s252_1}'

    menu:
        '"Explique-moi… *Qui* sont ces gardiens ?"{#morte_s252_r27311}':
            # a534 # r27311
            jump morte_s250

        '"Tout à l„heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"{#morte_s252_r27312}':
            # a535 # r27312
            jump morte_s253

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte_s252_r27313}':
            # a536 # r27313
            jump morte_s257


# s253 # say27289
label morte_s253: # from 249.2 251.1 252.1
    nr '"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d„aller les charcuter ou les découper pour trouver des clés."{#morte_s253_1}'

    menu:
        '"La dernière chance ? De quoi… de quoi *tu* parles ?"{#morte_s253_r27314}':
            # a537 # r27314
            jump morte_s254


# s254 # say27290
label morte_s254: # from 253.0
    nr '"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu comprends ? Eh ? Eh ?"{#morte_s254_1}'

    menu:
        '"Non… non, en fait, non."{#morte_s254_r27315}':
            # a538 # r27315
            jump morte_s255

        '"Tu n„es pas sérieux ?"{#morte_s254_r27316}' if morteLogic.r27316_condition():
            # a539 # r27316
            jump morte_s255


# s255 # say27291
label morte_s255: # from 254.0 254.1
    nr '"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu„une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."{#morte_s255_1}'

    menu:
        '"Mais… attends… Tu n„as pas dit que je n“étais *pas* mort, tout à l„heure ?"{#morte_s255_r27317}':
            # a540 # r27317
            jump morte_s256


# s256 # say27292
label morte_s256: # from 255.0
    nr '"Bon… d„accord, *tu* n“es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l„un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d“envie. "Bien sûr, les gardiens devraient d„abord s“en séparer et il y a peu de chances…"{#morte_s256_1}'

    menu:
        '"Qui sont ces gardiens déjà ?"{#morte_s256_r27318}':
            # a541 # r27318
            jump morte_s250

        '"Mais d„où viennent tous ces cadavres ?"{#morte_s256_r27319}':
            # a542 # r27319
            jump morte_s252

        '"Très bien… Je vais essayer de m„en souvenir."{#morte_s256_r27320}':
            # a543 # r27320
            jump morte_s257


# s257 # say27293
label morte_s257: # from 249.3 251.2 252.2 256.2
    nr '"Écoute, chef. Tu es encore un peu enfumé après ton baiser avec la mort. Deux conseils ne seront pas de trop : un, si t„as des questions, *pose-les moi*, d“accord ?"  ^NREMARQUE : <SPEAKTO>^-{#morte_s257_1}'

    menu:
        '"Très bien… Si j„ai des questions, je te les poserai."{#morte_s257_r27321}':
            # a544 # r27321
            jump morte_s258


# s258 # say27294
label morte_s258: # from 257.0
    nr '"Deuxièmement, si tu es *aussi* oublieux que t„en as l“air, commence à écrire des choses - chaque fois que quelque chose te semble important, note-le pour ne pas l„oublier."{#morte_s258_1}'

    menu:
        '"Comme dans un journal ?"{#morte_s258_r27322}':
            # a545 # r27322
            jump morte_s259


# s259 # say27295
label morte_s259: # from 258.0
    nr '"Ouais, comme dans un journal. Si tu commences à ne plus trop te souvenir de choses importantes, comme l„endroit où tu es, jette un œil et rafraîchis-toi la mémoire. Compris ?"  ^NREMARQUE : Pour accéder au journal, sélectionne le bouton du journal dans le menu rapide. Le journal est mis à jour automatiquement durant la partie.^-{#morte_s259_1}'

    menu:
        '"Très bien… Compris. Allons-y."{#morte_s259_r27323}':
            # a546 # r27323
            jump morte_dispose


# s260 # say27296
label morte_s260: # -
    nr '"Il devrait y avoir un scalpel sur l„une de ces étagères. Je le trouverais avant d“en découdre avec un de ces cadavres."{#morte_s260_1}'

    menu:
        '"Très bien… Je vais continuer à chercher."{#morte_s260_r27324}':
            # a547 # r27324
            jump morte_dispose


# s261 # say27297
label morte_s261: # - # IF WEIGHT #8 /* Triggers after states #: 729 444 325 281 742 737 733 487 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Bien, tu as trouvé le scalpel ! Bon, va chercher ces cadavres… et ne t„en fais pas, je resterai derrière et te fournirai de précieux conseils tactiques."{#morte_s261_1}'

    menu:
        '"Tu pourrais peut-être *m„aider*, Morte."{#morte_s261_r27325}':
            # a548 # r27325
            jump morte_s262

        '"D„accord."{#morte_s261_r27326}':
            # a549 # r27326
            jump morte_dispose


# s262 # say27298
label morte_s262: # from 261.0
    nr '"Je t„aiderai. Les bons conseils ne sont pas si évidents."{#morte_s262_1}'

    menu:
        '"Je voulais dire m„aider à attaquer le *cadavre*."{#morte_s262_r27327}':
            # a550 # r27327
            jump morte_s263

        '"Bon, très bien."{#morte_s262_r27328}':
            # a551 # r27328
            jump morte_dispose


# s263 # say27299
label morte_s263: # from 262.0
    nr '"Moi ? Mais je suis un romantique, pas un soldat. Je te gênerai."{#morte_s263_1}'

    menu:
        '"Quand j„attaquerai ce cadavre, il vaudrait mieux que tu sois là si tu ne veux pas être le prochain à avoir droit à ce scalpel."{#morte_s263_r27329}':
            # a552 # r27329
            jump morte_s264

        '"Bon, très bien."{#morte_s263_r27330}':
            # a553 # r27330
            jump morte_dispose


# s264 # say27300
label morte_s264: # from 263.0
    nr '"Bon… d„accord. Je vais t“aider."  ^NREMARQUE : si tu veux que Morte t„aide à attaquer, il te suffit de vérifier que vous êtes tous deux sélectionnés lorsque vous attaquez le cadavre. Morte se joindra à l“attaque.^-{#morte_s264_1}'

    menu:
        '"Ça me fait plaisir qu„on se comprenne. Maintenant, au travail."{#morte_s264_r27331}':
            # a554 # r27331
            jump morte_dispose


# s265 # say27301
label morte_s265: # -
    nr '"Bien, tu t„es occupé du bon cadavre, on dirait. Maintenant il va falloir trouver la clé. Elle devrait se trouver sur son corps. Une fois qu“on l„aura, on pourra se tirer d“ici."{#morte_s265_1}'

    menu:
        '"Très bien."{#morte_s265_r27332}':
            # a555 # r27332
            jump morte_dispose


# s266 # say27302
label morte_s266: # -
    nr '"Parfait, voilà la clé. Elle doit rentrer dans le verrou de l„une des portes de la salle."{#morte_s266_1}'

    menu:
        '"Bon, je vais essayer toutes les portes."{#morte_s266_r27333}':
            # a556 # r27333
            jump morte_dispose


# s267 # say27911
label morte_s267: # -
    nr 'Morte te souffle à l„oreille : "Un homme de loi."{#morte_s267_1}'

    jump cwcafef_s15  # EXTERN


# s268 # say27912
label morte_s268: # -
    nr '"C„est un genre d“encyclopédie sur pattes, chef. J„aime pas en parler à vrai dire."{#morte_s268_1}'

    if morteLogic.s268_condition():
        $ morteLogic.s268_action()
        jump cwcafef_s50  # EXTERN
    menu:
        '"Mais tu N„ES PAS un mimir, Morte…"{#morte_s268_r65536}' if morteLogic.r65536_condition():
            # a557 # r65536
            jump cwcafef_s50  # EXTERN


# s269 # say27913
label morte_s269: # -
    nr 'Morte agite ses sourcils et commence à planer vers la femme. "C„est pas tout ce que je-"{#morte_s269_1}'

    menu:
        '"Ça suffit, Morte."{#morte_s269_r27914}':
            # a558 # r27914
            jump morte_s270


# s270 # say27915
label morte_s270: # from 269.0
    nr '"Ouais, ouais. Ça va." Morte roule les yeux et commence à marmonner. "Pfff, je pourrais tout aussi bien être *mort*…"{#morte_s270_1}'

    menu:
        '"Dis… tu as bien dit „tout seul“. Pourquoi, ce n„est pas le cas, d“habitude ?"{#morte_s270_r27916}' if morteLogic.r27916_condition():
            # a559 # r27916
            jump cwcafef_s51  # EXTERN

        '"J„ai des questions à poser à cette femme…"{#morte_s270_r27917}':
            # a560 # r27917
            jump cwcafef_s4  # EXTERN

        'Laisse-la tranquille.{#morte_s270_r27918}':
            # a561 # r27918
            jump morte_dispose


# s271 # say27919
label morte_s271: # -
    nr 'Morte l„interrompt : "Bon, tu vois, chef, tout ça, ça dépend de la *qualité* de ton mimir. Certains - comme moi -- sont plus enchantés que d“autres, c„est tout. Plus… euh… “conscients„, c“est le terme."{#morte_s271_1}'

    menu:
        '"Hum."{#morte_s271_r27920}':
            # a562 # r27920
            jump cwcafef_s52  # EXTERN

        '"Je vois."{#morte_s271_r27921}':
            # a563 # r27921
            jump cwcafef_s52  # EXTERN


# s272 # say27922
label morte_s272: # -
    nr '"Eh ! J„essaie juste de m“amuser, chef !"{#morte_s272_1}'

    jump cwcafef_s50  # EXTERN


# s273 # say28036
label morte_s273: # -
    nr 'Morte acquiesce avec satisfaction. "Eh, ce type n„est pas mauvais bougre."{#morte_s273_1}'

    menu:
        '"Bon, tiens… Reprends ton argent, Malmanier."{#morte_s273_r28041}':
            # a564 # r28041
            $ morteLogic.r28041_action()
            jump malmanr_s13  # EXTERN

        'Jette les dix pièces de cuivre à Malmanier.{#morte_s273_r28042}':
            # a565 # r28042
            $ morteLogic.r28042_action()
            jump malmanr_s14  # EXTERN

        '"Vraiment ? Je n„ai rien entendu, Morte. Allons-y."{#morte_s273_r28043}':
            # a566 # r28043
            jump malmanr_s15  # EXTERN


# s274 # say28037
label morte_s274: # -
    nr 'Morte acquiesce avec satisfaction. "Eh, ce type n„est pas mauvais bougre."{#morte_s274_1}'

    menu:
        '"Bon, tiens… Reprends ton argent, Malmanier."{#morte_s274_r28038}' if morteLogic.r28038_condition():
            # a567 # r28038
            $ morteLogic.r28038_action()
            jump malmanr_s13  # EXTERN

        'Jette les trente pièces de cuivre à Malmanier.{#morte_s274_r28039}' if morteLogic.r28039_condition():
            # a568 # r28039
            $ morteLogic.r28039_action()
            jump malmanr_s14  # EXTERN

        '"Bon, tiens… Reprends ton argent, Malmanier."{#morte_s274_r28040}' if morteLogic.r28040_condition():
            # a569 # r28040
            $ morteLogic.r28040_action()
            jump malmanr_s13  # EXTERN

        'Jette les cinquante pièces de cuivre à Malmanier.{#morte_s274_r28044}' if morteLogic.r28044_condition():
            # a570 # r28044
            $ morteLogic.r28044_action()
            jump malmanr_s14  # EXTERN

        '"Bon, tiens… Reprends ton argent, Malmanier."{#morte_s274_r28045}' if morteLogic.r28045_condition():
            # a571 # r28045
            $ morteLogic.r28045_action()
            jump malmanr_s13  # EXTERN

        'Jette les cinquante pièces de cuivre à Malmanier.{#morte_s274_r28046}' if morteLogic.r28046_condition():
            # a572 # r28046
            $ morteLogic.r28046_action()
            jump malmanr_s14  # EXTERN

        '"Bon, tiens… Reprends ton argent, Malmanier."{#morte_s274_r28047}' if morteLogic.r28047_condition():
            # a573 # r28047
            $ morteLogic.r28047_action()
            jump malmanr_s13  # EXTERN

        'Jette les quatre-vingt pièces de cuivre à Malmanier.{#morte_s274_r28048}' if morteLogic.r28048_condition():
            # a574 # r28048
            $ morteLogic.r28048_action()
            jump malmanr_s14  # EXTERN

        '"Vraiment ? Je n„ai rien entendu, Morte. Allons-y."{#morte_s274_r28049}':
            # a575 # r28049
            jump malmanr_s15  # EXTERN


# s275 # say28630
label morte_s275: # -
    nr '"Ça a l„air chiant."{#morte_s275_1}'

    jump grace_s60  # EXTERN


# s276 # say28631
label morte_s276: # -
    nr '"C„est une tanar“ri… une succube, chef."{#morte_s276_1}'

    jump grace_s72  # EXTERN


# s277 # say28632
label morte_s277: # -
    nr '"Bâcle ça, fiélonne !" Morte claque des dents. "J„suis TOUT À FAIT pour que la succube vienne avec nous… Même les Puissances savent que t“as rien d„une rigolote, *toi*."{#morte_s277_1}'

    jump annah_s166  # EXTERN


# s278 # say28633
label morte_s278: # -
    nr '"Eh, attends une minute ! C„est *moi* qui connais bien les plans ! C“est mon boulot, chef !"{#morte_s278_1}'

    menu:
        '"Je trouve que c„est plutôt bien d“avoir deux personnes qui connaissent bien les plans dans la bande. En plus, j„ai aussi dit “agréable„, Morte."{#morte_s278_r28634}':
            # a576 # r28634
            jump morte_s279


# s279 # say28635
label morte_s279: # from 278.0
    nr '"Agréable à regarder, peut-être ! Il suffit qu„une pépée se dénude un peu et tu l“enrôles aussi sec !" Morte se tait. "J„m“en fous en fait, mais je tenais à le dire."{#morte_s279_1}'

    menu:
        '"C„est noté, Morte. Bien… Dame Grâce, pardonnez-moi d“avoir été aussi direct, mais qu„est-ce que vous diriez de voyager avec nous ?"{#morte_s279_r28636}':
            # a577 # r28636
            jump grace_s79  # EXTERN


# s280 # say28637
label morte_s280: # -
    nr '"Ce que mon compagnon balafré veut dire, c„est nous DEUX… J“m„appelle Morte : je m“excuse pour l„impolitesse de mon compagnon qui ne nous a pas présentés… ce serait une EXCELLENTE idée si vous veniez aussi. Nous avons plein de place pour une succube. PLEIN de place."{#morte_s280_1}'

    jump grace_s119  # EXTERN


# s281 # say28738
label morte_s281: # - # IF WEIGHT #4 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  Global("Morte_Stolen","GLOBAL",2) !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Merci, chef. Trop heureux d„être de retour avec toi." Sa voix est emplie de sarcasme. "Et j“ai appris un nouveau tour quand j„étais là-bas et tout et tout."{#morte_s281_1}'

    menu:
        '"Ouais. C„est un plaisir de te retrouver."{#morte_s281_r28743}':
            # a578 # r28743
            $ morteLogic.r28743_action()
            jump morte_dispose

        '"Excuse-moi, l„ami. Je voulais le bluffer."{#morte_s281_r28744}' if morteLogic.r28744_condition():
            # a579 # r28744
            $ morteLogic.r28744_action()
            jump morte_s282

        '"Excuse-moi, l„ami. Je voulais le bluffer."{#morte_s281_r28745}' if morteLogic.r28745_condition():
            # a580 # r28745
            $ morteLogic.r28745_action()
            jump morte_s283


# s282 # say28739
label morte_s282: # from 281.1
    nr '"Vraiment ? C„est gentil de ta part, chef. Bonne idée. Tu es provisoirement pardonné. Mais ne recommence pas."{#morte_s282_1}'

    menu:
        '"Bien sûr, Morte. Allons-y."{#morte_s282_r28746}':
            # a581 # r28746
            jump morte_dispose


# s283 # say28740
label morte_s283: # from 281.2
    nr '"C„est bizarre, je n“arrive pas à te croire. Oublions ce qui s„est passé. Allons-y."{#morte_s283_1}'

    menu:
        '"Très bien."{#morte_s283_r28747}':
            # a582 # r28747
            jump morte_dispose

        '"Morte, je le bluffais. Tu vas voir."{#morte_s283_r28748}':
            # a583 # r28748
            jump morte_dispose


# s284 # say28741
label morte_s284: # -
    nr '"Merci, chef. Sortons d„ici !" Morte s“interrompt. "Oh, au fait, chef… ces types avaient vraiment toute leur tête. Ils m„ont montré quelque chose de rusé."{#morte_s284_1}'

    menu:
        '"Partons."{#morte_s284_r28749}':
            # a584 # r28749
            jump morte_dispose


# s285 # say28962
label morte_s285: # -
    nr '"Euh… chef ? T„as déjà vu des statues, non ? Tu sais bien qu“elles ne parlent pas ?{#morte_s285_1}'

    menu:
        '"Réfléchis, Morte : tu es un crâne flottant parlant qui se prive de la possibilité de devenir une statue vivante."{#morte_s285_r28967}' if morteLogic.r28967_condition():
            # a585 # r28967
            jump morte_s286

        '"J„ai rencontré un mage dénommé Salabesh qui a parlé d“un homme de pierre. C„est toi ?"{#morte_s285_r28968}' if morteLogic.r28968_condition():
            # a586 # r28968
            $ morteLogic.r28968_action()
            jump quisai_s5  # EXTERN

        '"Peut-être, Morte. Je vais juste le toucher…"{#morte_s285_r28969}':
            # a587 # r28969
            jump quisai_s3  # EXTERN

        'Pars.{#morte_s285_r28970}':
            # a588 # r28970
            jump morte_dispose


# s286 # say28963
label morte_s286: # from 285.0
    nr '"Bon… euh… Hum. Tu m„as compris, chef."{#morte_s286_1}'

    menu:
        '"J„ai rencontré un mage dénommé Salabesh qui a parlé d“un homme de pierre. C„est toi ?"{#morte_s286_r28971}' if morteLogic.r28971_condition():
            # a589 # r28971
            $ morteLogic.r28971_action()
            jump quisai_s5  # EXTERN

        '"Attends, Morte. Je vais juste le toucher…"{#morte_s286_r28972}':
            # a590 # r28972
            jump quisai_s3  # EXTERN

        'Pars.{#morte_s286_r28973}':
            # a591 # r28973
            jump morte_dispose


# s287 # say28964
label morte_s287: # -
    nr '"C„est peut-être un peu trop anatomiquement correct, chef ?"{#morte_s287_1}'

    menu:
        '"C„était une question de pure forme, Morte."{#morte_s287_r28974}':
            # a592 # r28974
            jump morte_s288


# s288 # say28965
label morte_s288: # from 287.0
    nr '"Bien sûr, chef. Je le savais."{#morte_s288_1}'

    menu:
        '"J„ai rencontré un mage dénommé Salabesh qui a parlé d“un homme de pierre. C„est toi ?"{#morte_s288_r28975}' if morteLogic.r28975_condition():
            # a593 # r28975
            $ morteLogic.r28975_action()
            jump quisai_s5  # EXTERN

        'Frappe la statue.{#morte_s288_r28976}':
            # a594 # r28976
            $ morteLogic.r28976_action()
            jump quisai_s23  # EXTERN

        'Pars.{#morte_s288_r28977}':
            # a595 # r28977
            jump morte_dispose


# s289 # say28966
label morte_s289: # -
    nr 'Morte roule les yeux et émet un son étouffé. "Par les Pouvoirs, non, pas encore un bige qui parle… comme… ça !"{#morte_s289_1}'

    menu:
        '"J„ai des questions à te poser sur toi…"{#morte_s289_r28978}':
            # a596 # r28978
            jump quisai_s11  # EXTERN

        '"J„ai des questions sur cet endroit."{#morte_s289_r28979}':
            # a597 # r28979
            jump quisai_s30  # EXTERN

        '"Que sais-tu de Ravel Puits-de-Rébus ?"{#morte_s289_r28980}' if morteLogic.r28980_condition():
            # a598 # r28980
            jump quisai_s29  # EXTERN

        '"Je reviendrai te parler plus tard. Au revoir."{#morte_s289_r28981}':
            # a599 # r28981
            jump morte_dispose


# s290 # say29677
label morte_s290: # -
    nr '"Hé, chef - il croise les doigts !"{#morte_s290_1}'

    jump quell_s21  # EXTERN


# s291 # say30527
label morte_s291: # -
    nr 'Morte annonce dans un murmure. "Il dit qu„il est avocat. Conseiller. Un de ces biges qui branlent leur râtelier au tribunal."{#morte_s291_1}'

    jump iannis_s10  # EXTERN


# s292 # say30816
label morte_s292: # -
    nr 'Morte se tourne et regarde derrière lui. "Où ?! Où ?!"{#morte_s292_1}'

    jump able_s2  # EXTERN


# s293 # say30817
label morte_s293: # -
    nr 'Morte sursaute. "Regarde, derrière toi - un autre crâne flottant !"{#morte_s293_1}'

    menu:
        'Cherche toi-même le crâne.{#morte_s293_r30822}' if morteLogic.r30822_condition():
            # a600 # r30822
            jump able_s10  # EXTERN

        'Laisse Morte s„amuser.{#morte_s293_r30823}' if morteLogic.r30823_condition():
            # a601 # r30823
            jump able_s10  # EXTERN

        '"Viens, Morte. J„ai des questions à lui poser…"{#morte_s293_r30824}' if morteLogic.r30824_condition():
            # a602 # r30824
            jump able_s10  # EXTERN


# s294 # say30818
label morte_s294: # -
    nr '"Là où je te montre ! Là !"{#morte_s294_1}'

    jump able_s11  # EXTERN


# s295 # say30819
label morte_s295: # -
    nr 'Morte déclare d„un ton faussement exaspéré : "Tu viens de le rater ! Toute une *troupe* ! Ça ne se produira sûrement pas de nouveau avant un million de révolutions du Grand Anneau !"{#morte_s295_1}'

    jump able_s12  # EXTERN


# s296 # say30820
label morte_s296: # -
    nr 'Morte remue légèrement, comme s„il haussait les épaules. "Je préfère en parler comme d“un aperçu éclairé sur la nature humaine."{#morte_s296_1}'

    menu:
        '"J„ai quelques questions…"{#morte_s296_r30825}' if morteLogic.r30825_condition():
            # a603 # r30825
            jump able_s16  # EXTERN

        'Attire de nouveau l„attention de l“homme.{#morte_s296_r30826}' if morteLogic.r30826_condition():
            # a604 # r30826
            $ morteLogic.r30826_action()
            jump able_s13  # EXTERN


# s297 # say30821
label morte_s297: # -
    nr '"Tu sais, chef, C„EST PEUT-ÊTRE ASSEZ DINGUE POUR MARCHER !"{#morte_s297_1}'

    jump able_s65  # EXTERN


# s298 # say31566
label morte_s298: # -
    nr '"Par les tétons tranchants de la Dame, qu„est-ce qui…"  Soudain, le silence tombe, alors que tu es privé du dernier de tes sens.~ [MRT387]{#morte_s298_1}'

    menu:
        'Meurs abominablement, victime du Terrible Maléfice de Gangroihydron.{#morte_s298_r31567}':
            # a605 # r31567
            $ morteLogic.r31567_action()
            jump morte_dispose


# s299 # say32367
label morte_s299: # -
    nr '"Les „soltifs“ ?! Bon sang ! Nous n„allons pas *écouter* ce baratin, si ? Allons… allons trouver quelque Sensat qui n“a jamais eu le plaisir de goûter à la passion fiévreuse des lèvres d„un crâne." Il remue les sourcils avec anticipation.{#morte_s299_1}'

    menu:
        '"Tais-toi, Morte. On reste… au moins un certain temps."{#morte_s299_r32368}':
            # a606 # r32368
            jump deathad_s1  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter.{#morte_s299_r32369}':
            # a607 # r32369
            jump deathad_s1  # EXTERN

        '"Tu as raison, Morte - Partons."{#morte_s299_r32370}':
            # a608 # r32370
            $ morteLogic.r32370_action()
            jump morte_dispose


# s300 # say32371
label morte_s300: # -
    nr 'Morte murmure : "C„est le début de plus de souffrances."{#morte_s300_1}'

    menu:
        'Fais un signe de tête à Morte sans rien dire.{#morte_s300_r32372}':
            # a609 # r32372
            jump deathad_s2  # EXTERN

        '"Morte - tais-toi."{#morte_s300_r32373}':
            # a610 # r32373
            jump deathad_s2  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,{#morte_s300_r32374}':
            # a611 # r32374
            jump deathad_s2  # EXTERN

        '"Sans blague ! On s„en va, Morte."{#morte_s300_r32375}':
            # a612 # r32375
            $ morteLogic.r32375_action()
            jump morte_dispose


# s301 # say32376
label morte_s301: # -
    nr 'Morte murmure : "Ça, c„est sûr."{#morte_s301_1}'

    menu:
        'Fais un signe de tête à Morte sans rien dire.{#morte_s301_r32377}':
            # a613 # r32377
            jump deathad_s3  # EXTERN

        '"Morte - tais-toi."{#morte_s301_r32378}':
            # a614 # r32378
            jump deathad_s3  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,{#morte_s301_r32379}':
            # a615 # r32379
            jump morte_s303

        '"Sans blague ! On s„en va, Morte."{#morte_s301_r32380}':
            # a616 # r32380
            $ morteLogic.r32380_action()
            jump morte_dispose


# s302 # say32381
label morte_s302: # -
    nr 'Morte murmure : "Et un ennui éternel."{#morte_s302_1}'

    menu:
        'Fais un signe de tête à Morte sans rien dire.{#morte_s302_r32382}':
            # a617 # r32382
            jump deathad_s5  # EXTERN

        '"S„il te plaît, Morte : silence."{#morte_s302_r32383}':
            # a618 # r32383
            jump deathad_s5  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,{#morte_s302_r32384}':
            # a619 # r32384
            jump deathad_s5  # EXTERN

        '"Sans blague ! On s„en va, Morte."{#morte_s302_r32385}':
            # a620 # r32385
            $ morteLogic.r32385_action()
            jump morte_dispose


# s303 # say32386
label morte_s303: # from 301.2
    nr 'Morte murmure : "On dirait qu„on sait tous les deux où on va atterrir après notre mort."{#morte_s303_1}'

    menu:
        'Fais un signe de tête à Morte sans rien dire.{#morte_s303_r32387}':
            # a621 # r32387
            jump deathad_s6  # EXTERN

        '"Morte : arrête de jacasser."{#morte_s303_r32388}':
            # a622 # r32388
            jump deathad_s6  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,{#morte_s303_r32389}':
            # a623 # r32389
            jump deathad_s6  # EXTERN

        '"Sans blague ! On s„en va, Morte."{#morte_s303_r32390}':
            # a624 # r32390
            $ morteLogic.r32390_action()
            jump morte_dispose


# s304 # say32391
label morte_s304: # -
    nr 'Morte murmure : "Et encore, si tu as de la chance."{#morte_s304_1}'

    menu:
        'Fais un signe de tête à Morte sans rien dire.{#morte_s304_r32392}':
            # a625 # r32392
            jump deathad_s8  # EXTERN

        '"Ça suffit, Morte."{#morte_s304_r32393}':
            # a626 # r32393
            jump deathad_s8  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,{#morte_s304_r32394}':
            # a627 # r32394
            jump deathad_s8  # EXTERN

        '"Sans blague ! On s„en va, Morte."{#morte_s304_r32395}':
            # a628 # r32395
            $ morteLogic.r32395_action()
            jump morte_dispose


# s305 # say32396
label morte_s305: # -
    nr 'Morte murmure : "Et c„est censé être motivant ? Il faut qu“on recommence *tout* ? Je suis impatient d„être à nouveau un crâne flottant. Ta ! Qu“il aille caguer. Quel idiot. Il parle comme quelqu„un qui n“est jamais mort !"{#morte_s305_1}'

    menu:
        'Fais un signe de tête à Morte sans rien dire.{#morte_s305_r32397}':
            # a629 # r32397
            jump deathad_s9  # EXTERN

        '"Allez, Morte. Silence."{#morte_s305_r32398}':
            # a630 # r32398
            jump deathad_s9  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,{#morte_s305_r32399}':
            # a631 # r32399
            jump deathad_s9  # EXTERN

        '"Sans blague ! On s„en va, Morte."{#morte_s305_r32400}':
            # a632 # r32400
            $ morteLogic.r32400_action()
            jump morte_dispose


# s306 # say32401
label morte_s306: # -
    nr 'Morte murmure : "Oh, ça c„est un fardeau que je ne suis pas prêt d“oublier."{#morte_s306_1}'

    menu:
        'Fais un signe de tête à Morte sans rien dire.{#morte_s306_r32402}':
            # a633 # r32402
            jump deathad_s11  # EXTERN

        '"Morte - tais-toi."{#morte_s306_r32403}':
            # a634 # r32403
            jump deathad_s11  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,{#morte_s306_r32404}':
            # a635 # r32404
            jump deathad_s11  # EXTERN

        '"Sans blague ! On s„en va, Morte."{#morte_s306_r32405}':
            # a636 # r32405
            $ morteLogic.r32405_action()
            jump morte_dispose


# s307 # say32406
label morte_s307: # -
    nr 'Morte dit tout haut : "Quelle soupe !"{#morte_s307_1}'

    jump deathad_s15  # EXTERN


# s308 # say32407
label morte_s308: # -
    nr 'Morte se met à l„abri, hors de vue du conférencier, puis se tourne vers toi et déclare : "Vas-y chef. Dis-lui le soltif."{#morte_s308_1}'

    menu:
        '"Oui, j„ai une question…"{#morte_s308_r32408}':
            # a637 # r32408
            jump deathad_s17  # EXTERN

        '"Je n„ai pas de questions. Mon ami s“est trompé."{#morte_s308_r32409}':
            # a638 # r32409
            jump deathad_s16  # EXTERN


# s309 # say32410
label morte_s309: # -
    nr '"Géant ! Une autre mort ! Je signe !" Un rire parcourt l„assistance. L“orateur paraît en colère.{#morte_s309_1}'

    menu:
        '"Qu„est-ce qui se passe quand ils meurent ?"{#morte_s309_r32411}':
            # a639 # r32411
            jump deathad_s26  # EXTERN

        '"J„ai une autre question…"{#morte_s309_r32412}':
            # a640 # r32412
            jump deathad_s17  # EXTERN

        '"C„est tout ce que je voulais savoir."{#morte_s309_r32413}':
            # a641 # r32413
            jump deathad_s18  # EXTERN


# s310 # say32651
label morte_s310: # -
    nr '"Tu veux que je m„occupe de cette azimutée, chef ?"{#morte_s310_1}'

    menu:
        '"Pas de pitié, Morte."{#morte_s310_r32661}':
            # a642 # r32661
            jump morte_s316

        '"Non, Morte… Je vais régler ça."{#morte_s310_r32662}':
            # a643 # r32662
            jump sarhava_s3  # EXTERN


# s311 # say32652
label morte_s311: # -
    nr '"J„adore tes manières d“enfumé, chef."{#morte_s311_1}'

    jump sarhava_s4  # EXTERN


# s312 # say32653
label morte_s312: # -
    nr 'Alors que tu t„agenouilles devant la femme, Morte s“écrie : "Chef ! Tu rigoles ! Je veux dire, à moins que tu sois dans ce *genre* de…"{#morte_s312_1}'

    menu:
        'Ignore Morte, lèche la botte de la femme.{#morte_s312_r32663}':
            # a644 # r32663
            jump sarhava_s14  # EXTERN

        '"Je ne veux pas d„ennuis, Morte. Si je ne fais pas gaffe, je risque d“attirer la garde."{#morte_s312_r32664}':
            # a645 # r32664
            jump morte_s313

        '"Tu as raison, Morte. Allons-y."{#morte_s312_r32665}':
            # a646 # r32665
            jump sarhava_s13  # EXTERN


# s313 # say32654
label morte_s313: # from 312.1
    nr '"Bien, ça me paraît pas idiot… mais enfin…"{#morte_s313_1}'

    menu:
        '"Laisse tomber, Morte. Madame… Arrêtons ça avant que j„appelle les gardes."{#morte_s313_r32666}':
            # a647 # r32666
            jump sarhava_s7  # EXTERN

        '"Tu as raison, Morte. Allons-nous-en."{#morte_s313_r32667}':
            # a648 # r32667
            jump sarhava_s13  # EXTERN


# s314 # say32655
label morte_s314: # -
    nr 'Morte glousse et claque sa mâchoire. "Un homme à femmes comme tous les autres, hein chef ?"{#morte_s314_1}'

    jump morte_dispose


# s315 # say32656
label morte_s315: # -
    nr '"Oh-oh…"{#morte_s315_1}'

    jump morte_dispose


# s316 # say32657
label morte_s316: # from 310.0
    nr 'Morte te fait un clin d„œil et appelle la femme : "Hé, toi ! Oui c“est ça, toi, l„espèce de grue… regarde-moi quand je te parle ! Qu“est-ce qui te rend si aigrie, hmm ?"{#morte_s316_1}'

    jump sarhava_s39  # EXTERN


# s317 # say32658
label morte_s317: # -
    nr '"Oh, est-ce que la petite princesse du désert a les nerfs parce que le fils du sultan voulait un autre fils ? Dis-moi, „Princesse du désert“, est-ce que tu passes la plupart de tes nuits à te battre et à boire, suivie par une poignée de lèche-bottes libidineux, en cherchant de manière pathétique à justifier ton existence auprès d„un père désapprobateur ?"{#morte_s317_1}'

    jump sarhava_s40  # EXTERN


# s318 # say32659
label morte_s318: # -
    nr '"Est-ce que tu crois que tes bagarres mesquines te feront te sentir mieux ? Te feront te sentir *bonne* à quelque chose ? Parce que NON ! Si c„est ta misérable manière de mieux accepter qui tu *es*, je te suggère de laisser tomber, rentre chez toi et de te trouver un courtisan pour rentrer dans son harem !"{#morte_s318_1}'

    jump sarhava_s41  # EXTERN


# s319 # say32660
label morte_s319: # -
    nr 'Morte se retourne vers toi. "Tu vois, chef, je *savais* ce qui allait se passer ici. On sait *tous* que Morte a mis dans le mille. Mais, oh non, la fière petite princesse du désert a fait des siennes en public, en humili--"{#morte_s319_1}'

    jump sarhava_s42  # EXTERN


# s320 # say33073
label morte_s320: # -
    nr '"La Guerre Sanglante ? Plus ennuyant que d„écouter un Greffier réciter les lois. Allons chercher quelques jeunes Sensats qui ont besoin d“être instruites dans le domaine de la passion !" Il remue les sourcils d„excitation.{#morte_s320_1}'

    menu:
        '"Non, Morte… Je veux écouter ça."{#morte_s320_r33074}':
            # a649 # r33074
            jump ghysis_s1  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,{#morte_s320_r33075}':
            # a650 # r33075
            jump ghysis_s1  # EXTERN

        '"D„accord, Morte - on y va."{#morte_s320_r33076}':
            # a651 # r33076
            $ morteLogic.r33076_action()
            jump morte_dispose


# s321 # say33300
label morte_s321: # -
    nr 'Morte écarquille les yeux et s„écrie "Ouah ! Regarde ! Une bouse qui parle !"{#morte_s321_1}'

    jump ghivem_s49  # EXTERN


# s322 # say33301
label morte_s322: # -
    nr 'Morte remue pour te désigner, tout en parlant à l„homme : "Je parlais de ce grand bige plein de cicatrices, affranchi… pas de toi ! Sans rancune, hein ?"{#morte_s322_1}'

    menu:
        '"Attention, Morte…"{#morte_s322_r33302}':
            # a652 # r33302
            jump ghivem_s51  # EXTERN

        'Ignore Morte.{#morte_s322_r33303}':
            # a653 # r33303
            jump ghivem_s51  # EXTERN


# s323 # say33423
label morte_s323: # -
    nr 'Morte écarquille les yeux et s„écrie "Ouah ! Regarde ! Une bouse qui parle !"{#morte_s323_1}'

    jump ghivef_s47  # EXTERN


# s324 # say33429
label morte_s324: # -
    nr 'Morte remue dans ta direction, tout en parlant à l„homme : "Je parlais de ce grand bige plein de cicatrices, affranchi… pas de toi ! Sans rancune, hein ?"{#morte_s324_1}'

    menu:
        '"Attention, Morte…"{#morte_s324_r33430}':
            # a654 # r33430
            jump ghivef_s49  # EXTERN

        'Ignore Morte.{#morte_s324_r33433}':
            # a655 # r33433
            jump ghivef_s49  # EXTERN


# s325 # say33958
label morte_s325: # - # IF WEIGHT #5 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Je savais que tu reviendrais, chef ! T„as finalement réalisé que t“avais besoin de moi, hein ?"~ [MRT516]{#morte_s325_1}'

    menu:
        '"Ouais… Allons-y."{#morte_s325_r33959}':
            # a656 # r33959
            $ morteLogic.r33959_action()
            jump morte_dispose

        '"Pas pour le moment, Morte."{#morte_s325_r33960}':
            # a657 # r33960
            jump morte_s326


# s326 # say33961
label morte_s326: # from 325.1
    nr '"Hmmff. Bien, je ne sais pas combien de temps je vais attendre ici, alors je vais te donner un DERNIÈRE chance. Tu es sûr que tu ne veux pas de mes sages conseils et de mon vif esprit ?"{#morte_s326_1}'

    menu:
        '"Morte, tu n„as RIEN de tout ça."{#morte_s326_r33962}':
            # a658 # r33962
            jump morte_s327

        '"Très bien, j„ai changé d“avis. Allez, partons."{#morte_s326_r33963}':
            # a659 # r33963
            $ morteLogic.r33963_action()
            jump morte_dispose

        '"Pas pour le moment, Morte. Peut-être plus tard."{#morte_s326_r33964}':
            # a660 # r33964
            jump morte_s327


# s327 # say33965
label morte_s327: # from 326.0 326.2
    nr '"Est-ce que tu essaies de me vexer, chef ? Qu„est-ce qu“il y a, c„est quelque chose que j“ai dit ? Le fait que je n„ai pas de bras ? Quoi ?"{#morte_s327_1}'

    menu:
        '"Très bien, j„ai changé d“avis. Allez, partons."{#morte_s327_r33966}':
            # a661 # r33966
            $ morteLogic.r33966_action()
            jump morte_dispose

        '"Non, ce n„est pas ça. C“est juste que je n„ai pas besoin de ta compagnie pour le moment. Au revoir, Morte."{#morte_s327_r33967}':
            # a662 # r33967
            jump morte_s328


# s328 # say33968
label morte_s328: # from 327.1
    nr '"Bien, je ne vais pas attendre pour TOUJOURS, alors tu ferais mieux de revenir, dès que tu auras changé d„avis."{#morte_s328_1}'

    menu:
        '"Je le ferai. Au revoir, Morte."{#morte_s328_r33969}':
            # a663 # r33969
            jump morte_dispose


# s329 # say33970
label morte_s329: # from 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0
    nr '"Mais qu„est-ce qui va pas, chef ?"{#morte_s329_1}'

    menu:
        '"Peux-tu me relire ce qui est tatoué sur mon dos ?"{#morte_s329_r65539}':
            # a664 # r65539
            jump morte_s649

        '"Peux-tu me parler de Sigil ?"{#morte_s329_r65540}':
            # a665 # r65540
            jump morte_s659

        '"Morte… Ça ne me dérange pas que tu me suives mais ne sais-tu rien faire *d„autre* que bavarder ?"{#morte_s329_r65541}' if morteLogic.r65541_condition():
            # a666 # r65541
            jump morte_s663

        '"Morte… Quels sont tes talents magiques déjà ?"{#morte_s329_r65542}' if morteLogic.r65542_condition():
            # a667 # r65542
            jump morte_s666

        '"Morte, pourquoi ne m„as-tu pas parlé de cette ligne supplémentaire dans le tatouage de mon dos ?"{#morte_s329_r65543}' if morteLogic.r65543_condition():
            # a668 # r65543
            jump morte_s654

        '"J„ai besoin d“un conseil. À ton avis, qu„est-ce qu“on devrait faire maintenant ?"{#morte_s329_r65544}':
            # a669 # r65544
            jump morte_s669

        '"Tu as dit que tu étais un mimir, n„est-ce pas, Morte ?"{#morte_s329_r65545}' if morteLogic.r65545_condition():
            # a670 # r65545
            jump morte_s684

        '"Raconte-moi encore une fois comment tu as fini sur le Pilier des Crânes."{#morte_s329_r65546}' if morteLogic.r65546_condition():
            # a671 # r65546
            jump morte_s693

        '"Morte, pourquoi tu as continué à voyager avec moi une fois que je t„ai sorti du Pilier ?"{#morte_s329_r65547}' if morteLogic.r65547_condition():
            # a672 # r65547
            jump morte_s715

        '"Qu„est-ce que tu sais de la Guerre Sanglante ?"{#morte_s329_r65548}' if morteLogic.r65548_condition():
            # a673 # r65548
            jump morte_s723

        '"Que sais-tu sur la guenaude noire nommée Ravel ?"{#morte_s329_r65549}' if morteLogic.r65549_condition():
            # a674 # r65549
            jump morte_s722

        '"Comment es-tu mort, Morte ?"{#morte_s329_r65550}':
            # a675 # r65550
            jump morte_s726

        '"Rien, Morte. Je vérifiais juste que tu étais toujours avec moi."{#morte_s329_r65551}':
            # a676 # r65551
            jump morte_dispose


# s330 # say34990
label morte_s330: # externs zf114_s2 zf114_s1 zf114_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s330_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s330_r34991}':
            # a677 # r34991
            $ morteLogic.r34991_action()
            jump morte_s331

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s330_r35001}':
            # a678 # r35001
            $ morteLogic.r35001_action()
            jump morte_s331


# s331 # say34992
label morte_s331: # from 330.0 330.1
    nr '"T„es AVEUGLE ou quoi ?! Elle me fixait du regard ! Elle me VOULAIT tellement que c“en était gênant."{#morte_s331_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s331_r34993}':
            # a679 # r34993
            $ morteLogic.r34993_action()
            jump morte_s332

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s331_r34996}':
            # a680 # r34996
            jump morte_s333

        '"Je trouve que tu as un peu trop d„imagination."{#morte_s331_r34999}':
            # a681 # r34999
            jump morte_s333

        '"Peu importe, Morte. Allons-y."{#morte_s331_r35000}':
            # a682 # r35000
            jump morte_dispose


# s332 # say34994
label morte_s332: # from 331.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s332_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s332_r34995}':
            # a683 # r34995
            jump morte_dispose


# s333 # say34997
label morte_s333: # from 331.1 331.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s333_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s333_r34998}':
            # a684 # r34998
            jump morte_dispose


# s334 # say35022
label morte_s334: # externs zf594_s2 zf594_s1 zf594_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s334_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s334_r35023}':
            # a685 # r35023
            $ morteLogic.r35023_action()
            jump morte_s335

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s334_r35033}':
            # a686 # r35033
            $ morteLogic.r35033_action()
            jump morte_s335


# s335 # say35024
label morte_s335: # from 334.0 334.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."{#morte_s335_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s335_r35025}':
            # a687 # r35025
            $ morteLogic.r35025_action()
            jump morte_s336

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s335_r35028}':
            # a688 # r35028
            jump morte_s337

        '"Je trouve que tu as un peu trop d„imagination."{#morte_s335_r35031}':
            # a689 # r35031
            jump morte_s337

        '"Peu importe, Morte. Allons-y."{#morte_s335_r35032}':
            # a690 # r35032
            jump morte_dispose


# s336 # say35026
label morte_s336: # from 335.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s336_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s336_r35027}':
            # a691 # r35027
            jump morte_dispose


# s337 # say35029
label morte_s337: # from 335.1 335.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s337_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s337_r35030}':
            # a692 # r35030
            jump morte_dispose


# s338 # say35054
label morte_s338: # externs zf626_s2 zf626_s1 zf626_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s338_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s338_r35055}':
            # a693 # r35055
            $ morteLogic.r35055_action()
            jump morte_s339

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s338_r35065}':
            # a694 # r35065
            $ morteLogic.r35065_action()
            jump morte_s339


# s339 # say35056
label morte_s339: # from 338.0 338.1
    nr '"T„es AVEUGLE ou quoi ?! Elle me fixait ! Elle me VOULAIT honteusement."{#morte_s339_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s339_r35057}':
            # a695 # r35057
            $ morteLogic.r35057_action()
            jump morte_s340

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s339_r35060}':
            # a696 # r35060
            jump morte_s341

        '"Je pense que tu as un peu trop d„imagination."{#morte_s339_r35063}':
            # a697 # r35063
            jump morte_s341

        '"Peu importe, Morte. Allons-y."{#morte_s339_r35064}':
            # a698 # r35064
            jump morte_dispose


# s340 # say35058
label morte_s340: # from 339.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s340_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s340_r35059}':
            # a699 # r35059
            jump morte_dispose


# s341 # say35061
label morte_s341: # from 339.1 339.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s341_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s341_r35062}':
            # a700 # r35062
            jump morte_dispose


# s342 # say35086
label morte_s342: # externs zf1096_s2 zf1096_s1 zf1096_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s342_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s342_r35087}':
            # a701 # r35087
            $ morteLogic.r35087_action()
            jump morte_s343

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s342_r35097}':
            # a702 # r35097
            $ morteLogic.r35097_action()
            jump morte_s343


# s343 # say35088
label morte_s343: # from 342.0 342.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."{#morte_s343_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s343_r35089}':
            # a703 # r35089
            $ morteLogic.r35089_action()
            jump morte_s344

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s343_r35092}':
            # a704 # r35092
            jump morte_s345

        '"Je pense que tu as un peu trop d„imagination."{#morte_s343_r35095}':
            # a705 # r35095
            jump morte_s345

        '"Peu importe, Morte. Allons-y."{#morte_s343_r35096}':
            # a706 # r35096
            jump morte_dispose


# s344 # say35090
label morte_s344: # from 343.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s344_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s344_r35091}':
            # a707 # r35091
            jump morte_dispose


# s345 # say35093
label morte_s345: # from 343.1 343.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s345_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s345_r35094}':
            # a708 # r35094
            jump morte_dispose


# s346 # say35118
label morte_s346: # externs zf1072_s2 zf1072_s1 zf1072_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s346_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s346_r35119}':
            # a709 # r35119
            $ morteLogic.r35119_action()
            jump morte_s347

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s346_r35129}':
            # a710 # r35129
            $ morteLogic.r35129_action()
            jump morte_s347


# s347 # say35120
label morte_s347: # from 346.0 346.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."{#morte_s347_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s347_r35121}':
            # a711 # r35121
            $ morteLogic.r35121_action()
            jump morte_s348

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s347_r35124}':
            # a712 # r35124
            jump morte_s349

        '"Je pense que tu as un peu trop d„imagination."{#morte_s347_r35127}':
            # a713 # r35127
            jump morte_s349

        '"Peu importe, Morte. Allons-y."{#morte_s347_r35128}':
            # a714 # r35128
            jump morte_dispose


# s348 # say35122
label morte_s348: # from 347.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s348_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s348_r35123}':
            # a715 # r35123
            jump morte_dispose


# s349 # say35125
label morte_s349: # from 347.1 347.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s349_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s349_r35126}':
            # a716 # r35126
            jump morte_dispose


# s350 # say35150
label morte_s350: # externs zf832_s2 zf832_s1 zf832_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s350_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s350_r35151}':
            # a717 # r35151
            $ morteLogic.r35151_action()
            jump morte_s351

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s350_r35161}':
            # a718 # r35161
            $ morteLogic.r35161_action()
            jump morte_s351


# s351 # say35152
label morte_s351: # from 350.0 350.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."{#morte_s351_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s351_r35153}':
            # a719 # r35153
            $ morteLogic.r35153_action()
            jump morte_s352

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s351_r35156}':
            # a720 # r35156
            jump morte_s353

        '"Je pense que tu as un peu trop d„imagination."{#morte_s351_r35159}':
            # a721 # r35159
            jump morte_s353

        '"Peu importe, Morte. Allons-y."{#morte_s351_r35160}':
            # a722 # r35160
            jump morte_dispose


# s352 # say35154
label morte_s352: # from 351.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s352_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s352_r35155}':
            # a723 # r35155
            jump morte_dispose


# s353 # say35157
label morte_s353: # from 351.1 351.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s353_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s353_r35158}':
            # a724 # r35158
            jump morte_dispose


# s354 # say35182
label morte_s354: # externs zf679_s2 zf679_s1 zf679_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s354_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s354_r35183}':
            # a725 # r35183
            $ morteLogic.r35183_action()
            jump morte_s355

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s354_r35193}':
            # a726 # r35193
            $ morteLogic.r35193_action()
            jump morte_s355


# s355 # say35184
label morte_s355: # from 354.0 354.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."{#morte_s355_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s355_r35185}':
            # a727 # r35185
            $ morteLogic.r35185_action()
            jump morte_s356

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s355_r35188}':
            # a728 # r35188
            jump morte_s357

        '"Je pense que tu as un peu trop d„imagination."{#morte_s355_r35191}':
            # a729 # r35191
            jump morte_s357

        '"Peu importe, Morte. Allons-y."{#morte_s355_r35192}':
            # a730 # r35192
            jump morte_dispose


# s356 # say35186
label morte_s356: # from 355.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s356_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s356_r35187}':
            # a731 # r35187
            jump morte_dispose


# s357 # say35189
label morte_s357: # from 355.1 355.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s357_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s357_r35190}':
            # a732 # r35190
            jump morte_dispose


# s358 # say35214
label morte_s358: # externs zf444_s2 zf444_s1 zf444_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s358_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s358_r35215}':
            # a733 # r35215
            $ morteLogic.r35215_action()
            jump morte_s359

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s358_r35225}':
            # a734 # r35225
            $ morteLogic.r35225_action()
            jump morte_s359


# s359 # say35216
label morte_s359: # from 358.0 358.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."{#morte_s359_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s359_r35217}':
            # a735 # r35217
            $ morteLogic.r35217_action()
            jump morte_s360

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s359_r35220}':
            # a736 # r35220
            jump morte_s361

        '"Je pense que tu as un peu trop d„imagination."{#morte_s359_r35223}':
            # a737 # r35223
            jump morte_s361

        '"Peu importe, Morte. Allons-y."{#morte_s359_r35224}':
            # a738 # r35224
            jump morte_dispose


# s360 # say35218
label morte_s360: # from 359.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s360_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s360_r35219}':
            # a739 # r35219
            jump morte_dispose


# s361 # say35221
label morte_s361: # from 359.1 359.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s361_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s361_r35222}':
            # a740 # r35222
            jump morte_dispose


# s362 # say35246
label morte_s362: # externs zf1148_s2 zf1148_s1 zf1148_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s362_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s362_r35247}':
            # a741 # r35247
            $ morteLogic.r35247_action()
            jump morte_s363

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s362_r35257}':
            # a742 # r35257
            $ morteLogic.r35257_action()
            jump morte_s363


# s363 # say35248
label morte_s363: # from 362.0 362.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."{#morte_s363_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s363_r35249}':
            # a743 # r35249
            $ morteLogic.r35249_action()
            jump morte_s364

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s363_r35252}':
            # a744 # r35252
            jump morte_s365

        '"Je pense que tu as un peu trop d„imagination."{#morte_s363_r35255}':
            # a745 # r35255
            jump morte_s365

        '"Peu importe, Morte. Allons-y."{#morte_s363_r35256}':
            # a746 # r35256
            jump morte_dispose


# s364 # say35250
label morte_s364: # from 363.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s364_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s364_r35251}':
            # a747 # r35251
            jump morte_dispose


# s365 # say35253
label morte_s365: # from 363.1 363.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s365_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s365_r35254}':
            # a748 # r35254
            jump morte_dispose


# s366 # say35278
label morte_s366: # externs zf891_s2 zf891_s1 zf891_s0
    nr '"Pssst. Tu as remarqué comme elle me dévore du regard ? Hein ? Tu as vu ça ? La façon dont elle a regardé la courbe de mon os occipital ?"{#morte_s366_1}'

    menu:
        '"De quoi tu *parles* ?"{#morte_s366_r35279}':
            # a749 # r35279
            $ morteLogic.r35279_action()
            jump morte_s367

        '"Tu veux parler de son regard vide d„outre-tombe ?"{#morte_s366_r35289}':
            # a750 # r35289
            $ morteLogic.r35289_action()
            jump morte_s367


# s367 # say35280
label morte_s367: # from 366.0 366.1
    nr '"Quoi… t„es AVEUGLE ?! Elle me fixait ! Elle me VOULAIT honteusement."{#morte_s367_1}'

    menu:
        '"Dis plutôt qu„elle te voulait *parti*. Il est clair qu“elle était tellement subjuguée par MOI qu„elle n“a même pas fait attention à ta petite tête de linotte à grande bouche."{#morte_s367_r35281}':
            # a751 # r35281
            $ morteLogic.r35281_action()
            jump morte_s368

        '"Je crois que tu te fais des films. C„est une zombi. Un cadavre. Elle est morte. Elle n“a sans doute même pas remarqué que tu étais là."{#morte_s367_r35284}':
            # a752 # r35284
            jump morte_s369

        '"Je pense que tu as un peu trop d„imagination."{#morte_s367_r35287}':
            # a753 # r35287
            jump morte_s369

        '"Peu importe, Morte. Allons-y."{#morte_s367_r35288}':
            # a754 # r35288
            jump morte_dispose


# s368 # say35282
label morte_s368: # from 367.0
    nr '"Toi ? Ouais, c„est ça ! Crois-moi, les filles d“outre-tombe s„fouttent pas mal du “physique„ et des “j„ai un corps“ et des „j“suis plein d„cicatrices et j“ai l„air d“un dur„. Elles veulent des gars avec de l“ESPRIT. C„est-à-dire moi, chef. Toi ? Les corps comme le tien sont plus communs qu“le cuivre."{#morte_s368_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s368_r35283}':
            # a755 # r35283
            jump morte_dispose


# s369 # say35285
label morte_s369: # from 367.1 367.2
    nr '"Ouais, ouais, c„est ça. Si t“étais mort depuis aussi longtemps que moi, tu connaîtrais les signes. Ils sont peut-être trop SUBTILS pour que tu les détectes. C„est pourquoi moi je passerai MES nuits avec une pépée succulente, fraîchement morte, pendant que toi, tu resteras planté là à dire “Hein ? Qu„est-c“qui se passe ?„ “Où sont mes sou-sou-souvenirs ?„"{#morte_s369_1}'

    menu:
        '"Peu importe, Morte. Allons-y."{#morte_s369_r35286}':
            # a756 # r35286
            jump morte_dispose


# s370 # say35310
label morte_s370: # from 377.3
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"{#morte_s370_1}'

    menu:
        '"Barbe grise ?"{#morte_s370_r35311}':
            # a757 # r35311
            jump morte_s371

        '"À mon avis, il est mal placé pour protester."{#morte_s370_r35326}':
            # a758 # r35326
            jump morte_s372

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s370_r35327}':
            # a759 # r35327
            jump morte_s373


# s371 # say35312
label morte_s371: # from 370.0
    nr '"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."{#morte_s371_1}'

    menu:
        '"Et bien, je crois qu„il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"{#morte_s371_r35313}':
            # a760 # r35313
            jump morte_s372

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s371_r35325}':
            # a761 # r35325
            jump morte_s373


# s372 # say35314
label morte_s372: # from 370.1 371.0
    nr 'Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j„en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."{#morte_s372_1}'

    menu:
        '"Et pas toi ?"{#morte_s372_r35315}':
            # a762 # r35315
            jump morte_s373

        '"Bon, très bien. Allons-y."{#morte_s372_r35324}':
            # a763 # r35324
            jump morte_dispose


# s373 # say35316
label morte_s373: # from 370.2 371.1 372.0
    nr '"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D„ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."{#morte_s373_1}'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."{#morte_s373_r35317}':
            # a764 # r35317
            jump morte_s374

        '"Allons-y."{#morte_s373_r35323}':
            # a765 # r35323
            jump morte_dispose


# s374 # say35318
label morte_s374: # from 373.0
    nr 'Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.{#morte_s374_1}'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."{#morte_s374_r35319}':
            # a766 # r35319
            $ morteLogic.r35319_action()
            jump morte_s375

        '"Allons-y."{#morte_s374_r35322}':
            # a767 # r35322
            jump morte_dispose


# s375 # say35320
label morte_s375: # from 374.0
    nr '"Je te ferai savoir que de t„aider à t“échapper de la salle de préparation vient juste d„être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."{#morte_s375_1}'

    menu:
        '"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."{#morte_s375_r35321}':
            # a768 # r35321
            jump morte_dispose


# s376 # say35341
label morte_s376: # externs s1221_s3 s1221_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"{#morte_s376_1}'

    menu:
        '"Et alors ?"{#morte_s376_r35342}':
            # a769 # r35342
            $ morteLogic.r35342_action()
            jump morte_s377

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."{#morte_s376_r35360}':
            # a770 # r35360
            $ morteLogic.r35360_action()
            jump morte_s377

        '"Bon, très bien. Peu importe. Peut-être une autre fois."{#morte_s376_r35361}':
            # a771 # r35361
            jump morte_s377


# s377 # say35343
label morte_s377: # from 376.0 376.1 376.2
    nr '"Oh, c„est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d“épaules. "J„savais pas si tu savais ça ou pas. Mais je t“en prie, vas-y."{#morte_s377_1}'

    menu:
        'Essaie de déboulonner les articulations du squelette.{#morte_s377_r35344}' if morteLogic.r35344_condition():
            # a772 # r35344
            jump s1221_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s377_r35352}' if morteLogic.r35352_condition():
            # a773 # r35352
            jump s1221_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s377_r35355}' if morteLogic.r35355_condition():
            # a774 # r35355
            jump s1221_s6  # EXTERN

        'Peu importe. Peut-être une autre fois.{#morte_s377_r35358}' if morteLogic.r35358_condition():
            # a775 # r35358
            $ morteLogic.r35358_action()
            jump morte_s370

        'Peu importe. Peut-être une autre fois.{#morte_s377_r35359}' if morteLogic.r35359_condition():
            # a776 # r35359
            jump morte_dispose


# s378 # say35387
label morte_s378: # from 385.3
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"{#morte_s378_1}'

    menu:
        '"Barbe grise ?"{#morte_s378_r35388}':
            # a777 # r35388
            jump morte_s379

        '"À mon avis, il est mal placé pour protester."{#morte_s378_r35403}':
            # a778 # r35403
            jump morte_s380

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s378_r35404}':
            # a779 # r35404
            jump morte_s381


# s379 # say35389
label morte_s379: # from 378.0
    nr '"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."{#morte_s379_1}'

    menu:
        '"Et bien, je crois qu„il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"{#morte_s379_r35390}':
            # a780 # r35390
            jump morte_s380

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s379_r35402}':
            # a781 # r35402
            jump morte_s381


# s380 # say35391
label morte_s380: # from 378.1 379.0
    nr 'Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j„en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."{#morte_s380_1}'

    menu:
        '"Et pas toi ?"{#morte_s380_r35392}':
            # a782 # r35392
            jump morte_s381

        '"Bon, très bien. Allons-y."{#morte_s380_r35401}':
            # a783 # r35401
            jump morte_dispose


# s381 # say35393
label morte_s381: # from 378.2 379.1 380.0
    nr '"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D„ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."{#morte_s381_1}'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."{#morte_s381_r35394}':
            # a784 # r35394
            jump morte_s382

        '"Allons-y."{#morte_s381_r35400}':
            # a785 # r35400
            jump morte_dispose


# s382 # say35395
label morte_s382: # from 381.0
    nr 'Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.{#morte_s382_1}'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."{#morte_s382_r35396}':
            # a786 # r35396
            $ morteLogic.r35396_action()
            jump morte_s383

        '"Allons-y."{#morte_s382_r35399}':
            # a787 # r35399
            jump morte_dispose


# s383 # say35397
label morte_s383: # from 382.0
    nr '"Je te ferai savoir que de t„aider à t“échapper de la salle de préparation vient juste d„être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."{#morte_s383_1}'

    menu:
        '"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."{#morte_s383_r35398}':
            # a788 # r35398
            jump morte_dispose


# s384 # say35418
label morte_s384: # externs s748_s3 s748_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"{#morte_s384_1}'

    menu:
        '"Et alors ?"{#morte_s384_r35419}':
            # a789 # r35419
            $ morteLogic.r35419_action()
            jump morte_s385

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."{#morte_s384_r35437}':
            # a790 # r35437
            $ morteLogic.r35437_action()
            jump morte_s385

        '"Bon, très bien. Peu importe. Peut-être une autre fois."{#morte_s384_r35438}':
            # a791 # r35438
            jump morte_s385


# s385 # say35420
label morte_s385: # from 384.0 384.1 384.2
    nr '"Oh, c„est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d“épaules. "J„savais pas si tu savais ça ou pas. Mais je t“en prie, vas-y."{#morte_s385_1}'

    menu:
        'Essaie de déboulonner les articulations du squelette.{#morte_s385_r35421}' if morteLogic.r35421_condition():
            # a792 # r35421
            jump s748_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s385_r35429}' if morteLogic.r35429_condition():
            # a793 # r35429
            jump s748_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s385_r35432}' if morteLogic.r35432_condition():
            # a794 # r35432
            jump s748_s6  # EXTERN

        'Peu importe. Peut-être une autre fois.{#morte_s385_r35435}' if morteLogic.r35435_condition():
            # a795 # r35435
            $ morteLogic.r35435_action()
            jump morte_s378

        'Peu importe. Peut-être une autre fois.{#morte_s385_r35436}' if morteLogic.r35436_condition():
            # a796 # r35436
            jump morte_dispose


# s386 # say35464
label morte_s386: # from 393.3
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"{#morte_s386_1}'

    menu:
        '"Barbe grise ?"{#morte_s386_r35465}':
            # a797 # r35465
            jump morte_s387

        '"À mon avis, il est mal placé pour protester."{#morte_s386_r35480}':
            # a798 # r35480
            jump morte_s388

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s386_r35481}':
            # a799 # r35481
            jump morte_s389


# s387 # say35466
label morte_s387: # from 386.0
    nr '"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."{#morte_s387_1}'

    menu:
        '"Et bien, je crois qu„il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"{#morte_s387_r35467}':
            # a800 # r35467
            jump morte_s388

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s387_r35479}':
            # a801 # r35479
            jump morte_s389


# s388 # say35468
label morte_s388: # from 386.1 387.0
    nr 'Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j„en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."{#morte_s388_1}'

    menu:
        '"Et pas toi ?"{#morte_s388_r35469}':
            # a802 # r35469
            jump morte_s389

        '"Bon, très bien. Allons-y."{#morte_s388_r35478}':
            # a803 # r35478
            jump morte_dispose


# s389 # say35470
label morte_s389: # from 386.2 387.1 388.0
    nr '"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D„ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."{#morte_s389_1}'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."{#morte_s389_r35471}':
            # a804 # r35471
            jump morte_s390

        '"Allons-y."{#morte_s389_r35477}':
            # a805 # r35477
            jump morte_dispose


# s390 # say35472
label morte_s390: # from 389.0
    nr 'Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.{#morte_s390_1}'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."{#morte_s390_r35473}':
            # a806 # r35473
            $ morteLogic.r35473_action()
            jump morte_s391

        '"Allons-y."{#morte_s390_r35476}':
            # a807 # r35476
            jump morte_dispose


# s391 # say35474
label morte_s391: # from 390.0
    nr '"Je te ferai savoir que de t„aider à t“échapper de la salle de préparation vient juste d„être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."{#morte_s391_1}'

    menu:
        '"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."{#morte_s391_r35475}':
            # a808 # r35475
            jump morte_dispose


# s392 # say35495
label morte_s392: # externs s996_s3 s996_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"{#morte_s392_1}'

    menu:
        '"Et alors ?"{#morte_s392_r35496}':
            # a809 # r35496
            $ morteLogic.r35496_action()
            jump morte_s393

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."{#morte_s392_r35514}':
            # a810 # r35514
            $ morteLogic.r35514_action()
            jump morte_s393

        '"Bon, très bien. Peu importe. Peut-être une autre fois."{#morte_s392_r35515}':
            # a811 # r35515
            jump morte_s393


# s393 # say35497
label morte_s393: # from 392.0 392.1 392.2
    nr '"Oh, c„est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d“épaules. "J„savais pas si tu savais ça ou pas. Mais je t“en prie, vas-y."{#morte_s393_1}'

    menu:
        'Essaie de déboulonner les articulations du squelette.{#morte_s393_r35498}' if morteLogic.r35498_condition():
            # a812 # r35498
            jump s996_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s393_r35506}' if morteLogic.r35506_condition():
            # a813 # r35506
            jump s996_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s393_r35509}' if morteLogic.r35509_condition():
            # a814 # r35509
            jump s996_s6  # EXTERN

        'Peu importe. Peut-être une autre fois.{#morte_s393_r35512}' if morteLogic.r35512_condition():
            # a815 # r35512
            $ morteLogic.r35512_action()
            jump morte_s386

        'Peu importe. Peut-être une autre fois.{#morte_s393_r35513}' if morteLogic.r35513_condition():
            # a816 # r35513
            jump morte_dispose


# s394 # say35541
label morte_s394: # from 401.3
    nr '"Hmmmm. Je me demande si cette barbe grise m„en voudrait si *je* lui empruntais son corps…"{#morte_s394_1}'

    menu:
        '"Barbe grise ?"{#morte_s394_r35542}':
            # a817 # r35542
            jump morte_s395

        '"À mon avis, il est mal placé pour protester."{#morte_s394_r35557}':
            # a818 # r35557
            jump morte_s396

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s394_r35558}':
            # a819 # r35558
            jump morte_s397


# s395 # say35543
label morte_s395: # from 394.0
    nr '"Barbe grise… tu sais, un type, un vieux gars, un chien jaune… vieux."{#morte_s395_1}'

    menu:
        '"Et bien, je crois qu„il est mal placé pour protester. Pourquoi ne pas prendre son corps ?"{#morte_s395_r35544}':
            # a820 # r35544
            jump morte_s396

        '"Quelque chose me dit que tu serais deux fois plus ennuyeux si tu avais des bras. Allons-y."{#morte_s395_r35556}':
            # a821 # r35556
            jump morte_s397


# s396 # say35545
label morte_s396: # from 394.1 395.0
    nr 'Morte observe le squelette pendant un instant, puis secoue la tête. "Nan… j„en veux un plus frais que ça. Et plus digne… celui-là est tout craqué et fracturé."{#morte_s396_1}'

    menu:
        '"Et pas toi ?"{#morte_s396_r35546}':
            # a822 # r35546
            jump morte_s397

        '"Bon, très bien. Allons-y."{#morte_s396_r35555}':
            # a823 # r35555
            jump morte_dispose


# s397 # say35547
label morte_s397: # from 394.2 395.1 396.0
    nr '"Oh, tu es vraiment très drôle." Morte te jette un regard mauvais. "D„ailleurs, TU peux parler, bige. Les miroirs crient au secours quand tu es dans les parages."{#morte_s397_1}'

    menu:
        '"Ah, ouais ? En tout cas, *moi* je suis entier."{#morte_s397_r35548}':
            # a824 # r35548
            jump morte_s398

        '"Allons-y."{#morte_s397_r35554}':
            # a825 # r35554
            jump morte_dispose


# s398 # say35549
label morte_s398: # from 397.0
    nr 'Morte grogne. Tu te demandes comment il a pu faire ça sans poumons.{#morte_s398_1}'

    menu:
        '"Tu sais, Morte, il n„y a rien de tel que de se promener en balançant les bras et en respirant de l“air frais dans les poumons. C„est GÉNIAL d“avoir un corps."{#morte_s398_r35550}':
            # a826 # r35550
            $ morteLogic.r35550_action()
            jump morte_s399

        '"Allons-y."{#morte_s398_r35553}':
            # a827 # r35553
            jump morte_dispose


# s399 # say35551
label morte_s399: # from 398.0
    nr '"Je te ferai savoir que de t„aider à t“échapper de la salle de préparation vient juste d„être ajouté à la liste grandissante de mes regrets." Morte grogne à nouveau. "Je devrais te laisser pourrir… un peu plus, je veux dire."{#morte_s399_1}'

    menu:
        '"Ça me fait plaisir de savoir ce que tu ressens. Allons-y."{#morte_s399_r35552}':
            # a828 # r35552
            jump morte_dispose


# s400 # say35572
label morte_s400: # externs s863_s3 s863_s0
    nr '"Ouah, chef. C„est du vandalisme. Ces boulons sont probablement la seule chose qui retient ce tas d“os en un seul morceau. La nécromancie peut pas faire grand-chose avec ces gars-là, tu sais ?"{#morte_s400_1}'

    menu:
        '"Et alors ?"{#morte_s400_r35573}':
            # a829 # r35573
            $ morteLogic.r35573_action()
            jump morte_s401

        '"Oh… Je ne voulais pas causer de dégâts irréversibles."{#morte_s400_r35591}':
            # a830 # r35591
            $ morteLogic.r35591_action()
            jump morte_s401

        '"Bon, très bien. Peu importe. Peut-être une autre fois."{#morte_s400_r35592}':
            # a831 # r35592
            jump morte_s401


# s401 # say35574
label morte_s401: # from 400.0 400.1 400.2
    nr '"Oh, c„est pas un problème." Morte effectue un étrange mouvement tanguant que tu penses identifier comme correspondant à un haussement d“épaules. "J„savais pas si tu savais ça ou pas. Mais je t“en prie, vas-y."{#morte_s401_1}'

    menu:
        'Essaie de déboulonner les articulations du squelette.{#morte_s401_r35575}' if morteLogic.r35575_condition():
            # a832 # r35575
            jump s863_s4  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s401_r35583}' if morteLogic.r35583_condition():
            # a833 # r35583
            jump s863_s5  # EXTERN

        'Essaie de déboulonner les articulations du squelette.{#morte_s401_r35586}' if morteLogic.r35586_condition():
            # a834 # r35586
            jump s863_s6  # EXTERN

        'Peu importe. Peut-être une autre fois.{#morte_s401_r35589}' if morteLogic.r35589_condition():
            # a835 # r35589
            $ morteLogic.r35589_action()
            jump morte_s394

        'Peu importe. Peut-être une autre fois.{#morte_s401_r35590}' if morteLogic.r35590_condition():
            # a836 # r35590
            jump morte_dispose


# s402 # say38265
label morte_s402: # -
    nr '"Elle me plaît déjà cette nana !"{#morte_s402_1}'

    menu:
        '"Tu peux peut-être écrire ou mimer, alors ?"{#morte_s402_r38267}':
            # a837 # r38267
            jump ecco_s7  # EXTERN


# s403 # say38266
label morte_s403: # -
    nr '"La vache !"{#morte_s403_1}'

    menu:
        '"Hein ?"{#morte_s403_r38268}':
            # a838 # r38268
            jump ecco_s34  # EXTERN


# s404 # say39000
label morte_s404: # -
    nr 'Morte souffle à voix basse : "C„est pas bon, chef. Fais attention où tu mets les pieds, sinon ils auront vite fait de te les couper… Ils sont plus puissants en bandes… chacun d“eux apporte quelque chose au cerveau de la bande. Ils sont *mortels*."{#morte_s404_1}'

    jump manyas1_s5  # EXTERN


# s405 # say39001
label morte_s405: # -
    nr 'Morte souffle à voix basse : "C„est pas bon, chef. Fais attention où tu mets les pieds, sinon ils auront vite fait de te les couper… Ils sont plus puissants en bandes… chacun d“eux apporte quelque chose au cerveau de la bande. Ils sont *mortels*."{#morte_s405_1}'

    jump manyas1_s58  # EXTERN


# s406 # say39002
label morte_s406: # -
    nr 'Morte souffle à voix basse : "Je sais pas ce qu„ils trafiquent, chef, mais fais gaffe. C“est un esprit de groupe, et chaque rat ajoute un peu plus à l„esprit, et ils se battent comme des - excuse l“expression - rats acculés. On est maintenant dans leur domaine, chef, et ils n„ont nulle part où aller. Pas de blagues."{#morte_s406_1}'

    jump manyas1_s78  # EXTERN


# s407 # say39564
label morte_s407: # -
    nr '"Ça, c„est une coïncidence ! Moi aussi, je collectionne les histoires."{#morte_s407_1}'

    jump yves_s2  # EXTERN


# s408 # say39565
label morte_s408: # -
    nr '"Moi ? Pourquoi est-ce *moi* qui devrais raconter une histoire ?"{#morte_s408_1}'

    menu:
        '"Alors, laisse tomber."{#morte_s408_r39713}':
            # a839 # r39713
            jump morte_s409

        '"Raconte une histoire, un point c„est tout, Morte."{#morte_s408_r39714}':
            # a840 # r39714
            jump morte_s413


# s409 # say39566
label morte_s409: # from 408.0
    nr '"Non, non, je m„en occupe… j“ai juste eu envie de me plaindre pour la forme. Et puis, j„adore attirer l“attention sur moi…"{#morte_s409_1}'

    menu:
        '"Pas question, Morte. Je ne veux pas l„entendre."{#morte_s409_r39715}':
            # a841 # r39715
            jump morte_s410

        '"D„accord… alors, vas-y."{#morte_s409_r39716}':
            # a842 # r39716
            $ morteLogic.r39716_action()
            jump morte_s414


# s410 # say39567
label morte_s410: # from 409.0
    nr '"S„il te plaît ! Allez ! S“il te plaîîît ? C„est une histoire géniale ! On y trouve plein de personnages, de l“action, une histoire qui se tient et un *dénouement* inattendu !"{#morte_s410_1}'

    menu:
        '"Elle ne doit pas être si géniale que ça."{#morte_s410_r39717}':
            # a843 # r39717
            jump morte_s411

        '"C„est quoi, un dénouement ?"{#morte_s410_r39718}':
            # a844 # r39718
            jump morte_s412

        '"D„accord… vas-y."{#morte_s410_r39719}':
            # a845 # r39719
            $ morteLogic.r39719_action()
            jump morte_s414


# s411 # say39568
label morte_s411: # from 410.0
    nr '"Si ! Je t„assure ! Allez !"{#morte_s411_1}'

    menu:
        '"Attends… c„est quoi, un dénouement ?"{#morte_s411_r39720}':
            # a846 # r39720
            jump morte_s412

        '"D„accord, vas-y."{#morte_s411_r39721}':
            # a847 # r39721
            $ morteLogic.r39721_action()
            jump morte_s414


# s412 # say39569
label morte_s412: # from 410.1 411.0
    nr '"J„suis pas trop sûr ! En tout cas, pour ce que j“en ai entendu, c„est vachement impressionnant !"{#morte_s412_1}'

    menu:
        '"D„accord, vas-y."{#morte_s412_r39722}':
            # a848 # r39722
            $ morteLogic.r39722_action()
            jump morte_s414


# s413 # say39570
label morte_s413: # from 408.1
    nr '"D„accord, d“accord…"{#morte_s413_1}'

    $ morteLogic.s413_action()
    jump morte_s414


# s414 # say39571
label morte_s414: # from 409.1 410.2 411.1 412.0 413.0
    nr '"Un vieil homme était assis seul sur un chemin sombre, d„accord ? Il était pas sûr de la direction à prendre, et il avait oublié sa destination et son identité. Il s“était assis un peu, histoire de reposer ses jambes fatiguées, et en levant la tête, il a eu la surprise de voir une vieille femme plantée devant lui. Elle lui a fait un sourire édenté et lui a dit dans un jacassement : „Et maintenant ton *troisième* vœu. Qu“est-ce que tu veux ?„"{#morte_s414_1}'

    menu:
        '"Vas-y, Morte…"{#morte_s414_r39724}':
            # a849 # r39724
            jump morte_s415

        '"Attends… j„ai une question à poser à Yvonne…"{#morte_s414_r39725}':
            # a850 # r39725
            jump yves_s4  # EXTERN

        '"On l„écoutera une autre fois, Morte. Au revoir, Yvonne."{#morte_s414_r39726}':
            # a851 # r39726
            jump morte_dispose


# s415 # say39572
label morte_s415: # from 414.0
    nr '"„Un troisième vœu ?“ bafouille l„homme. “Comment est-ce qu„il peut y avoir un troisième vœu puisque j“ai fait ni premier ni deuxième vœu ?„"{#morte_s415_1}'

    menu:
        '"Vas-y, Morte…"{#morte_s415_r39727}':
            # a852 # r39727
            jump morte_s416

        '"Attends… j„ai une question à poser à Yvonne…"{#morte_s415_r39728}':
            # a853 # r39728
            jump yves_s4  # EXTERN

        '"On l„écoutera une autre fois, Morte. Au revoir, Yvonne."{#morte_s415_r39729}':
            # a854 # r39729
            jump morte_dispose


# s416 # say39573
label morte_s416: # from 415.0
    nr '"„Tu as déjà fait deux vœux“, dit la sorcière, „mais le deuxième a été de rendre les choses comme elles étaient avant le premier. C“est pour ça que tu ne te souviens de rien ; parce que tout est comme avant que tu aies fait tes vœux.„ Elle ajoute au pauvre bige, dans un jacassement : “C„est pour ça qu“il ne t„en reste qu“un.„"{#morte_s416_1}'

    menu:
        '"Vas-y, Morte…"{#morte_s416_r39752}':
            # a855 # r39752
            jump morte_s417

        '"Attends… j„ai une question à poser à Yvonne…"{#morte_s416_r39753}':
            # a856 # r39753
            jump yves_s4  # EXTERN

        '"On l„écoutera une autre fois, Morte. Au revoir, Yvonne."{#morte_s416_r39754}':
            # a857 # r39754
            jump morte_dispose


# s417 # say39574
label morte_s417: # from 416.0
    nr '"„D“accord„, lui répond le vieil homme. “J„te crois pas, mais ça peut pas m“faire de mal de faire un vœu. Je veux savoir qui je suis.„"  "“Amusant„, lui répond la vieille femme en exauçant son vœu et en disparaissant pour toujours. “C„était ton premier vœu.“"{#morte_s417_1}'

    jump yves_s55  # EXTERN


# s418 # say39575
label morte_s418: # -
    nr '"Bon sang, qu„est-ce que c“était qu„ça, imbécile de polygone ?! C“est l„histoire la plus rasoir que j“aie jamais entendue !"{#morte_s418_1}'

    jump nordom_s11  # EXTERN


# s419 # say39576
label morte_s419: # -
    nr '"Des enjolivements ?"{#morte_s419_1}'

    jump nordom_s12  # EXTERN


# s420 # say39577
label morte_s420: # -
    nr '"*Allez*, fiélonne. Tu vas pas en perdre la queue."{#morte_s420_1}'

    jump annah_s196  # EXTERN


# s421 # say40068
label morte_s421: # -
    nr 'Morte tournoie autour de toi, en se moquant de la lapalissade de la fille. "Par les Puissances, chef… elle a raison ! J„avais jamais remarqué… tu es couvert de *cicatrices* !"{#morte_s421_1}'

    menu:
        '"Ce sont toutes de vieilles cicatrices. Ça va."{#morte_s421_r40069}' if morteLogic.r40069_condition():
            # a858 # r40069
            jump nenny_s2  # EXTERN

        '"Juste un peu ; ça ira."{#morte_s421_r40070}' if morteLogic.r40070_condition():
            # a859 # r40070
            jump nenny_s2  # EXTERN

        '"Oui, c„est vrai. Et des profondes."{#morte_s421_r40071}' if morteLogic.r40071_condition():
            # a860 # r40071
            jump nenny_s2  # EXTERN

        '"N„y fais pas attention. J“ai quelques questions…"{#morte_s421_r40072}':
            # a861 # r40072
            jump nenny_s3  # EXTERN

        '"Ne t„inquiète pas pour ça. Au revoir."{#morte_s421_r40073}':
            # a862 # r40073
            jump morte_dispose


# s422 # say40074
label morte_s422: # -
    nr 'Morte remue les sourcils. "T„es trop “direct„, tu comprends… c“est p„être à cause de ces trucs oscillants qui pen…"{#morte_s422_1}'

    menu:
        '"Morte, ça suffit."{#morte_s422_r40075}':
            # a863 # r40075
            jump morte_s423


# s423 # say40076
label morte_s423: # from 422.0
    nr 'Morte se tait.{#morte_s423_1}'

    menu:
        '"C„est pas grave, Nenny."{#morte_s423_r40077}' if morteLogic.r40077_condition():
            # a864 # r40077
            jump nenny_s9  # EXTERN

        '"Que ça ne se reproduise pas, Nenny."{#morte_s423_r40078}' if morteLogic.r40078_condition():
            # a865 # r40078
            jump nenny_s9  # EXTERN

        '"C„est pas grave, mademoiselle."{#morte_s423_r40079}' if morteLogic.r40079_condition():
            # a866 # r40079
            jump nenny_s9  # EXTERN

        '"Que ça ne se reproduise pas, ma belle."{#morte_s423_r40080}' if morteLogic.r40080_condition():
            # a867 # r40080
            jump nenny_s9  # EXTERN


# s424 # say40081
label morte_s424: # -
    nr '"Hé !"{#morte_s424_1}'

    jump nenny_s27  # EXTERN


# s425 # say40082
label morte_s425: # -
    nr 'Morte marmonne entre ses dents. "Je suppose que c„est bon signe s“il y a *quelque chose* là-dedans."{#morte_s425_1}'

    menu:
        '"J„ai une autre question, Nenny…"{#morte_s425_r40083}':
            # a868 # r40083
            jump nenny_s3  # EXTERN

        '"C„est tout ce que je voulais savoir, Nenny. Au revoir."{#morte_s425_r40084}':
            # a869 # r40084
            jump morte_dispose


# s426 # say40222
label morte_s426: # -
    nr '"Oooh, non… il faut que tu nous le dises, maintenant."{#morte_s426_1}'

    menu:
        '"Oui… s„il te plaît, m“sieur : raconte-nous."{#morte_s426_r40223}':
            # a870 # r40223
            jump brocus4_s4  # EXTERN

        '"Laisse, Morte. J„ai une autre question à lui poser…"{#morte_s426_r40224}':
            # a871 # r40224
            jump brocus4_s2  # EXTERN

        '"Laisse tomber, Morte ; on y va."{#morte_s426_r40225}':
            # a872 # r40225
            jump morte_dispose


# s427 # say40275
label morte_s427: # -
    nr 'Morte flotte près de toi, et te chuchote à l„oreille : "J“ai de la peine pour son amant. Il ne se rend pas compte de son malheur. Une pépée comme ça, c„est les embrouilles garanties."{#morte_s427_1}'

    menu:
        '"Ça ne me paraît pas sage, Juliette. Tu ferais mieux de profiter de ce que tu as."{#morte_s427_r40276}':
            # a873 # r40276
            jump sadjuli_s12  # EXTERN

        '"À quoi tu penses, Juliette ?"{#morte_s427_r40277}':
            # a874 # r40277
            jump sadjuli_s13  # EXTERN

        '"J„ai des questions, Juliette…"{#morte_s427_r40278}':
            # a875 # r40278
            jump sadjuli_s24  # EXTERN

        '"C„est tout ce que je voulais savoir, Juliette. Au revoir."{#morte_s427_r40279}':
            # a876 # r40279
            jump morte_dispose


# s428 # say40685
label morte_s428: # -
    nr 'Morte te murmure doucement à l„oreille : "Brrr… elle me donne la chair de poule, cette pépée."{#morte_s428_1}'

    menu:
        '"Mes excuses, ma chère… je ne savais pas s„il y avait quelqu“un."{#morte_s428_r40686}':
            # a877 # r40686
            jump marissa_s2  # EXTERN

        '"J„ai quelques questions, ma chère…"{#morte_s428_r40687}':
            # a878 # r40687
            jump marissa_s3  # EXTERN

        '"Alors au revoir, ma chère."{#morte_s428_r40688}':
            # a879 # r40688
            jump morte_dispose


# s429 # say40846
label morte_s429: # -
    nr '"Allez, chef ! On est dans un bâtiment rempli de quelques-unes des pépées les plus sexy de c„côté du multivers et tu t“arrêtes pour parler à des *modrones* ?"{#morte_s429_1}'

    menu:
        '"Qu„est-ce que tu peux m“en dire, Morte?"{#morte_s429_r40847}':
            # a880 # r40847
            jump morte_s430

        'Ignore Morte, salue le modrone.{#morte_s429_r40848}':
            # a881 # r40848
            $ morteLogic.r40848_action()
            jump brocus6_s3  # EXTERN

        '"Mes excuses, Morte, mais je parle au modrone."{#morte_s429_r40849}':
            # a882 # r40849
            jump morte_s431

        '"D„accord ; on y va, Morte."{#morte_s429_r40850}':
            # a883 # r40850
            jump morte_dispose


# s430 # say40851
label morte_s430: # from 429.0
    nr 'Morte émet un son de dégoût absolu. "Qu„est-ce qu“y a à en dire ? Des p„tits parasites à rouages tout c“qu„y a d“plus agaçants… ils cherchent toujours à imposer la loi et l„ordre dans le multivers. Pas le *bien*, note… juste la *loi*. Oublie-les et allons tchatcher avec ces dames, oké ?"{#morte_s430_1}'

    menu:
        'Ignore Morte, salue le modrone.{#morte_s430_r40852}':
            # a884 # r40852
            $ morteLogic.r40852_action()
            jump brocus6_s3  # EXTERN

        '"Mes excuses, Morte, mais je parle au modrone."{#morte_s430_r40853}':
            # a885 # r40853
            jump morte_s431

        '"D„accord ; on y va, Morte."{#morte_s430_r40854}':
            # a886 # r40854
            jump morte_dispose


# s431 # say40855
label morte_s431: # from 429.2 430.1
    nr 'Morte soupire bruyamment. "D„accord, peu importe - mais viens pas dire que j“t„avais pas prévenu. De toute façon, t“arriveras pas à en tirer grand-chose, chef… ils sont vraiment bizarres."{#morte_s431_1}'

    menu:
        '"Bonjour…"{#morte_s431_r40856}':
            # a887 # r40856
            $ morteLogic.r40856_action()
            jump brocus6_s3  # EXTERN


# s432 # say41135
label morte_s432: # -
    nr '"Ce que tu veux !" supplie Morte. "Fais-moi ce que tu veux !"{#morte_s432_1}'

    jump kesai_s2  # EXTERN


# s433 # say41136
label morte_s433: # -
    nr '"Ça me ferait presque pleurer, tiens ! Où était cette pépée quand j„avais un *corps ?!*"{#morte_s433_1}'

    jump kesai_s11  # EXTERN


# s434 # say41632
label morte_s434: # -
    nr '"Mon ami te trouvait attirante, mais *ouah* ! Il s„est complètement planté !"{#morte_s434_1}'

    jump kimasxi_s2  # EXTERN


# s435 # say41633
label morte_s435: # from 436.0
    nr '"D„accord, chef, comme tu voudras. Quelle sorcière, hein ?" Morte soupire, puis remue les sourcils. "*J“adore* ça !"{#morte_s435_1}'

    menu:
        '"Ça ne m„étonne pas, Morte, mais il faut que je lui parle."{#morte_s435_r41634}':
            # a888 # r41634
            jump kimasxi_s14  # EXTERN

        '"Très bien… Allons-y, Morte."{#morte_s435_r41635}':
            # a889 # r41635
            jump kimasxi_s4  # EXTERN


# s436 # say41636
label morte_s436: # -
    nr '"En tout cas, si j„en avais un, je l“aurais laissé derrière moi ! Alors comme ça, tu as entendu parler d„une “maison de tolérance„ et tu t“es dit que ce serait l„occasion de gagner un peu de jonc, espèce de sac à puces de putain des caniveaux ? Hah ! Je me demande comment ils ont pu te laisser entrer ici avec toutes ces tiques qui grouillent sur tes jambes poilues !"{#morte_s436_1}'

    menu:
        '"Ça suffit, vous deux."{#morte_s436_r41637}':
            # a890 # r41637
            jump morte_s435

        'Laisse-les.{#morte_s436_r41638}':
            # a891 # r41638
            jump kimasxi_s3  # EXTERN


# s437 # say41639
label morte_s437: # -
    nr '"*Il* ! On dirait „*qu“IL* en connaît déjà un rayon„, Kimasxi Langue-de-Vipère… sale catin minable !"{#morte_s437_1}'

    jump kimasxi_s18  # EXTERN


# s438 # say41640
label morte_s438: # -
    nr '"Mieux que toi, peut-être ?" Morte remue les sourcils. "Eh ? Eh ?"{#morte_s438_1}'

    jump kimasxi_s20  # EXTERN


# s439 # say41641
label morte_s439: # -
    nr '"OK, *tieffeline*, mais je dois admettre que j„ai appris deux ou trois choses… bien joué, chef !"~ [MRT387]{#morte_s439_1}'

    menu:
        '"C„est sûr, Morte."{#morte_s439_r41642}':
            # a892 # r41642
            jump kimasxi_s21  # EXTERN


# s440 # say41830
label morte_s440: # from 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1
    nr '"Écoute, chef ; on voit bien qu„t“es pas encore remis de ta rencontre avec la mort, alors j„ai deux conseils à te donner : premièrement, si t“as des questions, *pose-les moi*, d„accord ?"  ^NREMARQUE : <SPEAKTO>^-{#morte_s440_1}'

    menu:
        '"D„accord… si j“ai des questions, je te les poserai."{#morte_s440_r41831}':
            # a893 # r41831
            jump morte_s441


# s441 # say41832
label morte_s441: # from 440.0
    nr '"Deuxièmement, si t„es *aussi* distrait que t“en as l„air, commence à tout noter - chaque fois que tu tombes sur quelque chose qui *pourrait* être important, note-le pour pas oublier."{#morte_s441_1}'

    menu:
        '"Si je détenais ce journal que je suis *supposé* avoir sur moi, c„est ce que je ferais."{#morte_s441_r41833}':
            # a894 # r41833
            jump morte_s442


# s442 # say41834
label morte_s442: # from 441.0
    nr '"Alors commences-en un nouveau, chef. T„as rien à perdre. Y a plein de parchemin et d“encre par ici."{#morte_s442_1}'

    menu:
        '"Hmmmm. D„accord. Ça coûte rien… je vais en commencer un nouveau, alors."{#morte_s442_r41835}':
            # a895 # r41835
            jump morte_s443


# s443 # say41836
label morte_s443: # from 442.0
    nr '"Utilise-le pour garder une trace de tes mouvements. Si tu commences à t„embrouiller sur les trucs importants, comme qui tu es… ou plus important, qui *je* suis… utilise-le pour te rafraîchir la mémoire."  ^NREMARQUE : Pour accéder au journal, sélectionne le bouton du journal dans le menu rapide. Le journal est mis à jour automatiquement durant la partie.^-{#morte_s443_1}'

    menu:
        '"Très bien… Compris. Allons-y."{#morte_s443_r41837}':
            # a896 # r41837
            $ morteLogic.j39516_s443_r41837_action()
            jump morte_dispose


# s444 # say41838
label morte_s444: # from 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0 # IF WEIGHT #6 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) Global("AR0200_Visited","GLOBAL",0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Qu„est-ce qui te dérange, chef ?"~ [MRT515]{#morte_s444_1}'

    menu:
        '"Tu peux me relire ce qui est tatoué sur mon dos ?{#morte_s444_r41840}':
            # a897 # r41840
            jump morte_s445

        '"C„est quoi cet endroit déjà ?"{#morte_s444_r41841}':
            # a898 # r41841
            jump morte_s450

        '"Cet endroit est immense… qui s„en occupe ?"{#morte_s444_r41842}' if morteLogic.r41842_condition():
            # a899 # r41842
            jump morte_s451

        '"C„est qui, déjà, les gardiens de cet endroit ?"{#morte_s444_r41843}' if morteLogic.r41843_condition():
            # a900 # r41843
            jump morte_s451

        '"Tous ces cadavres… d„où ils viennent ?"{#morte_s444_r41844}':
            # a901 # r41844
            jump morte_s454

        '"Tout à l„heure, tu as dit que je devais veiller à ne pas tuer de cadavres *féminins*. Pourquoi ?"{#morte_s444_r41845}' if morteLogic.r41845_condition():
            # a902 # r41845
            jump morte_s455

        '"Qu„est-ce que je fais de ces bandages ?"{#morte_s444_r41846}' if morteLogic.r41846_condition():
            # a903 # r41846
            jump morte_s453

        '"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."{#morte_s444_r41847}' if morteLogic.r41847_condition():
            # a904 # r41847
            jump morte_s440

        '"Rien pour le moment, Morte. Je voulais juste savoir si je pouvais toujours compter sur toi."{#morte_s444_r41848}' if morteLogic.r41848_condition():
            # a905 # r41848
            jump morte_dispose


# s445 # say41849
label morte_s445: # from 444.0
    nr '"Oh, *allez,* chef. Ne m„dis pas qu“t„as déjà oublié."{#morte_s445_1}'

    menu:
        '"Il faut juste que je me rafraîchisse la mémoire."{#morte_s445_r41850}':
            # a906 # r41850
            jump morte_s446

        '"Bon, peu importe. J„ai d“autres questions…"{#morte_s445_r41851}':
            # a907 # r41851
            jump morte_s444

        '"Alors laisse tomber. On y va."{#morte_s445_r41852}' if morteLogic.r41852_condition():
            # a908 # r41852
            jump morte_s440

        '"Alors laisse tomber. On y va."{#morte_s445_r41853}' if morteLogic.r41853_condition():
            # a909 # r41853
            jump morte_dispose


# s446 # say41854
label morte_s446: # from 445.0
    nr '"Quelque chose me dit que je vais entendre ÇA souvent." Morte s„éclaircit la voix. "Voyons…"  “Je sais que tu as l„impression d“avoir bu plusieurs barils d„eau du Styx, mais il faut te RESSAISIR. Parmi tes biens, tu dois avoir un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les dernières notes de la chanson, s“il n„est pas déjà inscrit dans le livre des morts.“{#morte_s446_1}'

    menu:
        '"Pharod… hmmm. Continue."{#morte_s446_r41855}':
            # a910 # r41855
            jump morte_s447

        '"Peu importe. J„avais d“autres questions…"{#morte_s446_r41856}':
            # a911 # r41856
            jump morte_s444

        '"Laisse. J„en ai assez entendu. On y va."{#morte_s446_r41857}' if morteLogic.r41857_condition():
            # a912 # r41857
            jump morte_s440

        '"Laisse. J„en ai assez entendu. On y va."{#morte_s446_r41858}' if morteLogic.r41858_condition():
            # a913 # r41858
            jump morte_dispose


# s447 # say41859
label morte_s447: # from 446.0
    nr '"Oui, oui, attends." Morte s„interrompt un instant. "D“accord, voilà la fin…"  „Ne perds pas le journal ou on se retrouvera encore à traverser le Styx. Et quoi que tu fasses, NE raconte à personne QUI tu es et CE qui t“arrive, ou on t„enverra faire un rapide pèlerinage vers le crématorium. Fais ce que je te dis : LIS le journal, puis TROUVE Pharod.“{#morte_s447_1}'

    menu:
        '"Et il n„y avait pas de journal sur moi quand je me suis réveillé ?"{#morte_s447_r41860}':
            # a914 # r41860
            jump morte_s448

        '"Peu importe. J„avais d“autres questions…"{#morte_s447_r41861}':
            # a915 # r41861
            jump morte_s444

        '"Laisse. J„en ai assez entendu. On y va."{#morte_s447_r41862}' if morteLogic.r41862_condition():
            # a916 # r41862
            jump morte_s440

        '"Laisse. J„en ai assez entendu. On y va."{#morte_s447_r41863}' if morteLogic.r41863_condition():
            # a917 # r41863
            jump morte_dispose


# s448 # say41864
label morte_s448: # from 447.0
    nr '"Non… t„étais nu comme un ver. Comme j“te l„ai déjà dit, on dirait que t“as déjà un journal écrit sur le corps."{#morte_s448_1}'

    menu:
        '"Et tu es sûr que tu ne connais personne du nom de Pharod ?"{#morte_s448_r41865}':
            # a918 # r41865
            jump morte_s449

        '"C„est vrai. J“ai d„autres questions…"{#morte_s448_r41866}':
            # a919 # r41866
            jump morte_s444

        '"Bon, très bien. Allons-y."{#morte_s448_r41867}' if morteLogic.r41867_condition():
            # a920 # r41867
            jump morte_s440

        '"Bon, très bien. Allons-y."{#morte_s448_r41868}' if morteLogic.r41868_condition():
            # a921 # r41868
            jump morte_dispose


# s449 # say41869
label morte_s449: # from 448.0
    nr '"Non. Mais y doit bien y avoir un bige qui saura où le trouver. On va demander… UNE FOIS qu„on sera sorti d“ici."{#morte_s449_1}'

    menu:
        '"Avant d„y aller, j“ai d„autres questions…"{#morte_s449_r41870}':
            # a922 # r41870
            jump morte_s444

        '"Bon, très bien. Allons-y."{#morte_s449_r41871}' if morteLogic.r41871_condition():
            # a923 # r41871
            jump morte_s440

        '"Bon, très bien. Allons-y."{#morte_s449_r41872}' if morteLogic.r41872_condition():
            # a924 # r41872
            jump morte_dispose


# s450 # say41873
label morte_s450: # from 444.1
    nr '"Ça s„appelle la “Morgue„… c“est un grand édifice noir avec tout le charme architectural d„une araignée pleine."{#morte_s450_1}'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte_s450_r41874}':
            # a925 # r41874
            jump morte_s444

        '"C„est tout ce que je voulais savoir. Merci."{#morte_s450_r41875}' if morteLogic.r41875_condition():
            # a926 # r41875
            jump morte_s440

        '"C„est tout ce que je voulais savoir. Merci."{#morte_s450_r41876}' if morteLogic.r41876_condition():
            # a927 # r41876
            jump morte_dispose


# s451 # say41877
label morte_s451: # from 444.2 444.3
    nr '"Ils se donnent le nom d„Hommes-Poussière. Tu ne peux pas les rater : ils sont obsédés par le noir et la rigidité cadavérique du visage. C“est une bande enfumée d„adorateurs vampiriques de la mort, ils croient que tout le monde doit mourir… et que le plus tôt sera le mieux."{#morte_s451_1}'

    menu:
        '"Je ne comprends pas… Qu„est-ce que ça peut leur faire, à ces Hommes-Poussière, si je m“enfuis ?"{#morte_s451_r41878}':
            # a928 # r41878
            jump morte_s452

        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte_s451_r41879}':
            # a929 # r41879
            jump morte_s444

        '"Compris. J„ferais gaffe, alors."{#morte_s451_r41880}' if morteLogic.r41880_condition():
            # a930 # r41880
            jump morte_s440

        '"Compris. J„ferais gaffe, alors."{#morte_s451_r41881}' if morteLogic.r41881_condition():
            # a931 # r41881
            jump morte_dispose


# s452 # say41882
label morte_s452: # from 451.0
    nr '"Tu n„écoutais pas ?! J“ai dit que les Hommes-Poussière croient que TOUT LE MONDE doit mourir, et que le plus tôt sera le mieux. Tu crois que les cadavres que tu as rencontrés sont plus heureux dans le livre des morts qu„à l“extérieur ?"{#morte_s452_1}'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte_s452_r41883}':
            # a932 # r41883
            jump morte_s444

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte_s452_r41884}' if morteLogic.r41884_condition():
            # a933 # r41884
            jump morte_s440

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte_s452_r41885}' if morteLogic.r41885_condition():
            # a934 # r41885
            jump morte_dispose


# s453 # say41886
label morte_s453: # from 444.6
    nr '"Tu, ben… tu les *utilises*. Pour épancher le sang et tout ça."  ^NREMARQUE : <BANDAGES2>^-{#morte_s453_1}'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte_s453_r41887}':
            # a935 # r41887
            jump morte_s444

        '"Merci. Je devrais pouvoir y arriver."{#morte_s453_r41888}' if morteLogic.r41888_condition():
            # a936 # r41888
            jump morte_s440

        '"Merci. Je devrais pouvoir y arriver."{#morte_s453_r41889}' if morteLogic.r41889_condition():
            # a937 # r41889
            jump morte_dispose


# s454 # say41890
label morte_s454: # from 444.4
    nr '"La mort rend visite aux plans tous les jours, chef. Ces loques, c„est tout c“qui reste des pauvres bougres qui ont vendu leurs corps aux gardiens après leur mort."{#morte_s454_1}'

    menu:
        '"J„ai compris. J“ai d„autres questions à te poser…"{#morte_s454_r41891}':
            # a938 # r41891
            jump morte_s444

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte_s454_r41892}' if morteLogic.r41892_condition():
            # a939 # r41892
            jump morte_s440

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte_s454_r41893}' if morteLogic.r41893_condition():
            # a940 # r41893
            jump morte_dispose


# s455 # say41894
label morte_s455: # from 444.5
    nr '"Tu es *sérieux* ? Écoute, chef, ces petites mortes représentent la dernière chance pour deux courageux lascars comme nous. Nous devons être *chevaleresques*… Il est hors de question d„aller les charcuter ou les découper pour trouver les clés."{#morte_s455_1}'

    menu:
        '"Dernière chance ? De quoi tu *parles* ?"{#morte_s455_r41895}':
            # a941 # r41895
            jump morte_s456

        '"Peu importe. J„avais d“autres questions à te poser…"{#morte_s455_r41896}':
            # a942 # r41896
            jump morte_s444

        '"D„accord… Je vais… essayer de m“en souvenir."{#morte_s455_r41897}':
            # a943 # r41897
            jump morte_dispose


# s456 # say41898
label morte_s456: # from 455.0
    nr '"Chef, ELLES SONT mortes, NOUS SOMMES morts… tu piges ? Eh ? Eh ?"{#morte_s456_1}'

    menu:
        '"Non… non, en fait, non."{#morte_s456_r41899}':
            # a944 # r41899
            jump morte_s457

        '"C„est une *blague* ?"{#morte_s456_r41900}' if morteLogic.r41900_condition():
            # a945 # r41900
            jump morte_s457

        '"Peu importe. J„avais d“autres questions à te poser…"{#morte_s456_r41901}':
            # a946 # r41901
            jump morte_s444

        '"J„en ai assez entendu. On y va."{#morte_s456_r41902}':
            # a947 # r41902
            jump morte_dispose


# s457 # say41903
label morte_s457: # from 456.0 456.1
    nr '"Chef, on a une bonne entrée en matière avec ces dames boiteuses. Nous sommes *tous* morts ne serait-ce qu„une fois ; on aura au moins un sujet de conversation possible. Elles apprécieront des hommes qui ont notre expérience de la mort."{#morte_s457_1}'

    menu:
        '"Attends… tu as bien dit tout à l„heure que j“étais *pas* mort ?"{#morte_s457_r41904}':
            # a948 # r41904
            jump morte_s458

        '"Peu importe. J„avais d“autres questions à te poser…"{#morte_s457_r41905}':
            # a949 # r41905
            jump morte_s444

        '"J„en ai assez entendu. On y va."{#morte_s457_r41906}':
            # a950 # r41906
            jump morte_dispose


# s458 # say41907
label morte_s458: # from 457.0
    nr '"Bon… d„accord, *tu* n“es peut-être pas mort, mais *moi* si. Et comme je le vois, ça ne me déplairait pas de partager un cercueil avec l„un des cadavres délicieux que je vois ici." Morte commence à claquer des dents d“envie. "Bien sûr, les gardiens devraient d„abord s“en séparer et il y a peu de chances…"{#morte_s458_1}'

    menu:
        '"J„ai d“autres questions à te poser, Morte…"{#morte_s458_r41908}':
            # a951 # r41908
            jump morte_s444

        '"J„en ai assez entendu. On y va."{#morte_s458_r41909}':
            # a952 # r41909
            jump morte_dispose


# s459 # say41910
label morte_s459: # -
    nr '"Par les Puissances d„en haut. Tu PARLES d“un livre !"{#morte_s459_1}'

    menu:
        '"Quoi ?"{#morte_s459_r41911}':
            # a953 # r41911
            $ morteLogic.r41911_action()
            jump morte_s460


# s460 # say41913
label morte_s460: # from 459.0
    nr '"Si j„devais deviner, j“dirais que c„est le livre où ils gribouillent le nom de tous les pauvres bougres suffisamment malchanceux pour finir ici."{#morte_s460_1}'

    menu:
        '"Tu crois que mon nom pourrait y être inscrit ?"{#morte_s460_r41914}':
            # a954 # r41914
            jump morte_s461


# s461 # say41915
label morte_s461: # from 460.0
    nr '"Euh… ben… *j„suppose.* Pour le savoir, il faudrait que t“ailles branler ton râtelier avec l„Homme-Poussière flottant, là-bas. J“suis pas sûr que ce soit une bonne idée."{#morte_s461_1}'

    menu:
        '"Ben, j„ai besoin de réponses. Je vais aller lui parler."{#morte_s461_r41916}':
            # a955 # r41916
            jump morte_dispose


# s462 # say41919
label morte_s462: # -
    nr 'Morte soupire : "Je connais quelqu„un qui s“est échappé de l„asile."{#morte_s462_1}'

    menu:
        '"J„ai quelques questions, Méli…"{#morte_s462_r41920}':
            # a956 # r41920
            jump jumble_s2  # EXTERN

        '"C„est toi qui as lancé une malédiction à Pestilent, n“est-ce pas ?"{#morte_s462_r41921}' if morteLogic.r41921_condition():
            # a957 # r41921
            $ morteLogic.r41921_action()
            jump jumble_s8  # EXTERN

        '"J„aimerais que tu fasses disparaître la malédiction dont souffre Pestilent."{#morte_s462_r67864}' if morteLogic.r67864_condition():
            # a958 # r67864
            jump jumble_s9  # EXTERN

        '"Bon, je m„en vais, Méli. Au revoir."{#morte_s462_r41922}':
            # a959 # r41922
            jump morte_dispose


# s463 # say41923
label morte_s463: # -
    nr '"Oh oh… On dirait qu„on t“a lancé un sort, chef…"{#morte_s463_1}'

    menu:
        '"Qu„est-ce que tu m“as fait, Méli ?"{#morte_s463_r41924}':
            # a960 # r41924
            jump jumble_s7  # EXTERN

        '"Méli… S„il te plaît, annule ce que tu as fait."{#morte_s463_r41925}':
            # a961 # r41925
            jump jumble_s7  # EXTERN

        '"Quoi que tu aies fait, Méli, annule-le ou tu risques de le regretter, crois-moi."{#morte_s463_r41926}':
            # a962 # r41926
            jump jumble_s7  # EXTERN

        '"Allons-y, Morte."{#morte_s463_r41927}':
            # a963 # r41927
            jump morte_dispose


# s464 # say42929
label morte_s464: # -
    nr '"Ignore-la… Sois distant et indifférent. Ça ne donnera que plus de piquant à votre relation !"{#morte_s464_1}'

    jump montagu_s29  # EXTERN


# s465 # say42930
label morte_s465: # -
    nr '"Fais-moi confiance, gamin. Commence par l„ignorer, crée une situation de conflit, laisse-la réfléchir et c“est elle qui reviendra vers toi pour comprendre d„où vient le problème. Hein, chef ?"{#morte_s465_1}'

    menu:
        '"Oui… Elle comprendra qu„il y a un problème et, pour une fois, il mènera le jeu au lieu d“en être la victime."{#morte_s465_r42931}':
            # a964 # r42931
            jump montagu_s30  # EXTERN

        '"Non… C„est pas une bonne idée."{#morte_s465_r42932}':
            # a965 # r42932
            jump montagu_s31  # EXTERN


# s466 # say43543
label morte_s466: # -
    nr '"C„est pour ça que les giths ne devraient pas procréer. Ils parlent sans arrêt de ça, ou de la croyance qui en découle, ou ils sont toujours à la recherche d“un flagelleur mental ou d„un githyanki à tuer, etc., etc. Je crois qu“ils n„aiment même pas se moquer les uns des autres. Ils deviennent azimutés et perdent la tête en chemin, ou sinon ils sont tellement coincés qu“ils en perdent le sens de l„humour. Ils ne parlent que de fusion, d“union des esprits et de confiance communautaire, mais sache que la race s„est divisée dès qu“elle s„est libérée du joug des flagelleurs mentaux. Maintenant, ose me dire que la religion et l“idéologie n„entraîneront pas les plans vers l“effondrement."{#morte_s466_1}'

    jump kiina_s35  # EXTERN


# s467 # say43908
label morte_s467: # -
    nr '"Oh là là !"{#morte_s467_1}'

    menu:
        '"Tu es Nemelle ? On m„a dit que tu connaissais le mot magique de la carafe."{#morte_s467_r43909}' if morteLogic.r43909_condition():
            # a966 # r43909
            jump neml_s4  # EXTERN

        '"Nemelle ? Ton amie Aelwyn te cherche."{#morte_s467_r43910}' if morteLogic.r43910_condition():
            # a967 # r43910
            $ morteLogic.r43910_action()
            jump neml_s6  # EXTERN

        '"Tu cherches quelqu„un ?"{#morte_s467_r43911}' if morteLogic.r43911_condition():
            # a968 # r43911
            jump neml_s14  # EXTERN

        '"J„avais quelques questions…"{#morte_s467_r43912}':
            # a969 # r43912
            jump neml_s11  # EXTERN

        '"Je n„ai besoin de rien, Nemelle. Adieu."{#morte_s467_r43913}':
            # a970 # r43913
            jump morte_dispose


# s468 # say43914
label morte_s468: # -
    nr '"Oh là là !"{#morte_s468_1}'

    jump annah_s209  # EXTERN


# s469 # say43915
label morte_s469: # -
    nr '"Oh, quelle petite femme au sang chaud ! Tu manques d„affection ? Je peux aussi m“extasier sur toi si tu es jalouse…" Morte commence à flotter en direction d„Annah en faisant des bruits de salivation…{#morte_s469_1}'

    jump annah_s210  # EXTERN


# s470 # say43916
label morte_s470: # -
    nr 'Morte s„arrête brusquement, se détournant en marmonnant inintelligiblement.{#morte_s470_1}'

    menu:
        '"Tu es Nemelle ? On m„a dit que tu connaissais le mot magique de la carafe."{#morte_s470_r43917}' if morteLogic.r43917_condition():
            # a971 # r43917
            jump neml_s4  # EXTERN

        '"Nemelle ? Ton amie Aelwyn te cherche."{#morte_s470_r43918}' if morteLogic.r43918_condition():
            # a972 # r43918
            $ morteLogic.r43918_action()
            jump neml_s6  # EXTERN

        '"Tu cherches quelqu„un ?"{#morte_s470_r43919}' if morteLogic.r43919_condition():
            # a973 # r43919
            jump neml_s14  # EXTERN

        '"J„avais quelques questions…"{#morte_s470_r43920}':
            # a974 # r43920
            jump neml_s11  # EXTERN

        '"Je n„ai besoin de rien, Nemelle. Adieu."{#morte_s470_r43921}':
            # a975 # r43921
            jump morte_dispose


# s471 # say43922
label morte_s471: # -
    nr '"Allez, chef… Je suis sûr qu„on peut penser à *quelque chose*. Hein ? Hein ?"{#morte_s471_1}'

    menu:
        '"Laisse tomber, Morte. Allons-y."{#morte_s471_r43923}':
            # a976 # r43923
            jump morte_dispose


# s472 # say44244
label morte_s472: # -
    nr 'Morte s„approche et murmure : "Pas à moi. Je peux faire avec. Hein, chef ? Clin d“œil-clin d„œil, coup de coude-coup de coude…"{#morte_s472_1}'

    jump goncal_s20  # EXTERN


# s473 # say44245
label morte_s473: # -
    nr 'Horrifié, Morte intervient. "Non !!! Mec, t„es *fou* ?! T“es complètement azimuté !"{#morte_s473_1}'

    jump annah_s214  # EXTERN


# s474 # say44677
label morte_s474: # -
    nr 'Morte roule les yeux. "Les imbéciles se précipitent…"{#morte_s474_1}'

    jump yi'minn_s47  # EXTERN


# s475 # say44944
label morte_s475: # -
    nr '"J„adooooore la Salle des Fêtes."{#morte_s475_1}'

    jump udesire_s2  # EXTERN


# s476 # say45026
label morte_s476: # -
    nr 'Morte laisse échapper un long soupir. "Allez, chef ! Tu veux vraiment qu„on reste pour voir ça ?"{#morte_s476_1}'

    menu:
        '"Tais-toi un peu, Morte. Tu m„empêches d“entendre quoi que ce soit."{#morte_s476_r45027}':
            # a977 # r45027
            jump 3planea_s1  # EXTERN

        'Ne fais pas attention à Morte, continue à écouter,{#morte_s476_r45028}':
            # a978 # r45028
            jump 3planea_s1  # EXTERN

        '"Tu as raison, Morte - Allons-nous-en."{#morte_s476_r45029}':
            # a979 # r45029
            $ morteLogic.r45029_action()
            jump morte_dispose


# s477 # say45088
label morte_s477: # externs zm965_s0
    nr '"Hé. On dirait qu„on a oublié d“expliquer à ce type qu„il fallait cesser d“appliquer la Règle des Trois."{#morte_s477_1}'

    menu:
        '"Qu„est-ce que tu veux dire ?"{#morte_s477_r45089}':
            # a980 # r45089
            jump morte_s478


# s478 # say45091
label morte_s478: # from 477.0
    nr '"Ces cadavres n„ont plus grand-chose dans le ciboulot et ils sont incapables d“accomplir plus d„une tâche à la fois. Quand on leur dit de faire quelque chose, ils le font jusqu“à ce qu„on leur ordonne d“arrêter. Ce pauvre bougre a dû achever sa tâche et on aura oublié de lui en donner une autre."{#morte_s478_1}'

    menu:
        '"Qui leur donne leurs ordres ?"{#morte_s478_r45092}':
            # a981 # r45092
            jump morte_s481

        '"Tu viens d„évoquer la “Règle des Trois„. Qu“est-ce que c„est que ça ?"{#morte_s478_r45093}':
            # a982 # r45093
            $ morteLogic.j39477_s478_r45093_action()
            jump morte_s479

        '"D„accord. Allez, viens, continuons."{#morte_s478_r45094}':
            # a983 # r45094
            jump morte_dispose


# s479 # say45095
label morte_s479: # from 478.1 481.0
    nr '"Hein ? En fait, la Règle des Trois est une des „lois“ des plans. Elle explique que les événements s„enchaînent toujours par trois, que tout est composé de trois éléments, qu“on a toujours trois choix possibles… ce genre de chose, quoi."{#morte_s479_1}'

    menu:
        '"Tu n„as pas l“air de trop y croire."{#morte_s479_r45096}':
            # a984 # r45096
            jump morte_s480


# s480 # say45098
label morte_s480: # from 479.0
    nr '"Tout ça, c„est rien qu“un tissu d„inepties, si tu veux mon avis. Il suffit de prendre n“importe quel chiffre et de lui donner un sens mystique pour que les coïncidences s„accumulent."{#morte_s480_1}'

    menu:
        '"Je vois. Tout à l„heure, tu m“as dit que quelqu„un avait donné un ordre à ce cadavre, puis avait oublié de lui dire d“arrêter. Qui leur donne leurs directives ?"{#morte_s480_r45099}':
            # a985 # r45099
            jump morte_s481

        '"Compris. J„aurais bien voulu examiner encore un peu ce zombi…"{#morte_s480_r45100}':
            # a986 # r45100
            jump zm965_s1  # EXTERN

        '"D„accord. Allez, viens, continuons."{#morte_s480_r45101}':
            # a987 # r45101
            jump morte_dispose


# s481 # say45102
label morte_s481: # from 478.0 480.0
    nr '"C„est l“un des gardiens ou le nécromancien qui les a fait sortir du livre des morts. Un des gardiens, vraisemblablement. Ce sont eux qui ont besoin de main-d„œuvre à bas prix, après tout."{#morte_s481_1}'

    menu:
        '"Je vois. Qu„est-ce que tu voulais dire, tout à l“heure, au sujet de la „Règle des Trois“ ?"{#morte_s481_r45103}':
            # a988 # r45103
            $ morteLogic.j39477_s481_r45103_action()
            jump morte_s479

        '"Compris. J„aurais bien voulu examiner encore un peu ce zombi…"{#morte_s481_r45104}':
            # a989 # r45104
            jump zm965_s1  # EXTERN

        '"D„accord. Allez, viens, continuons."{#morte_s481_r45105}':
            # a990 # r45105
            jump morte_dispose


# s482 # say45540
label morte_s482: # externs zm985_s4 zm985_s0
    nr '"Euh, chef… je ne suis pas sûr que ce soit une bonne…"{#morte_s482_1}'

    jump zm985_s3  # EXTERN


# s483 # say45709
label morte_s483: # -
    nr '"Oh, une vente aux enchères ! On pourrait peut-être vendre Annah."{#morte_s483_1}'

    jump annah_s215  # EXTERN


# s484 # say45710
label morte_s484: # -
    nr '"Oh, une vente aux enchères ! On pourrait peut-être vendre Dak„kon."{#morte_s484_1}'

    jump dakkon_s163  # EXTERN


# s485 # say45711
label morte_s485: # -
    nr '"Oh, une vente aux enchères ! On pourrait peut-être me trouver un corps."{#morte_s485_1}'

    menu:
        '"D„accord, Morte. Je n“oublierai pas de demander."{#morte_s485_r45712}':
            # a991 # r45712
            jump giltsp_s4  # EXTERN

        '"Dans ce cas, continuons."{#morte_s485_r45713}':
            # a992 # r45713
            jump morte_dispose


# s486 # say45714
label morte_s486: # -
    nr '"Ce doit être ça, l„amour. C“est bien ça, hein, chef ?"{#morte_s486_1}'

    menu:
        '"Laissez tomber, tous les deux. Il faut que je pose quelques questions dans le coin."{#morte_s486_r45715}':
            # a993 # r45715
            jump giltsp_s4  # EXTERN

        '"Si tu le dis, Morte. Laissons ce type tranquille."{#morte_s486_r45716}':
            # a994 # r45716
            jump morte_dispose


# s487 # say45996
label morte_s487: # - # IF WEIGHT #0 ~  NumTimesTalkedTo(0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Eh, regarde : une autre tête flottante."{#morte_s487_1}'

    jump vault9_s0  # EXTERN


# s488 # say47813
label morte_s488: # -
    nr '"On dirait que cette masse se croit savante. Va caguer, arme."{#morte_s488_1}'

    menu:
        '"Silence. J„avais d“autres questions…"{#morte_s488_r47814}':
            # a995 # r47814
            jump justfer_s8  # EXTERN

        '"Assez parlé pour le moment."{#morte_s488_r47815}':
            # a996 # r47815
            jump morte_dispose


# s489 # say49443
label morte_s489: # -
    nr '"Ooh, un githyanki. Je parie que Dak„kon va être *super* ravi de t“aider."{#morte_s489_1}'

    menu:
        '"Merci pour cette remarque, Morte. Allons-y."{#morte_s489_r49444}':
            # a997 # r49444
            jump morte_dispose


# s490 # say50162
label morte_s490: # -
    nr '"Oh ! Ils *ont* des noms. J„en suis sûr."{#morte_s490_1}'

    jump annah_s242  # EXTERN


# s491 # say50164
label morte_s491: # -
    nr '"C„est *toi* qui le dis, tieffeline."{#morte_s491_1}'

    menu:
        '"Ça suffit, Morte - peux-tu lui poser d„autres questions, Annah ?"{#morte_s491_r50165}':
            # a998 # r50165
            jump annah_s240  # EXTERN

        '"Laisse tomber. Allons-nous en."{#morte_s491_r50166}':
            # a999 # r50166
            $ morteLogic.r50166_action()
            jump adabus_s6  # EXTERN


# s492 # say50263
label morte_s492: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Trouve un natif de Sigil."{#morte_s492_1}'

    menu:
        '"Je vois."{#morte_s492_r50264}':
            # a1000 # r50264
            jump adabus_s2  # EXTERN


# s493 # say50266
label morte_s493: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Amène donc la tieffeline par ici." Il fait un signe de tête dans la direction d„Annah. "C“est une native de la Ruche."{#morte_s493_1}'

    menu:
        '"Peut-être…"{#morte_s493_r50267}':
            # a1001 # r50267
            jump adabus_s2  # EXTERN


# s494 # say50269
label morte_s494: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ?" Il fait un signe de tête vers Dak„kon. "Amène donc le Pharisien-deux-fois-plus-silencieux pour traduire."{#morte_s494_1}'

    menu:
        '"Peut-être…"{#morte_s494_r50270}':
            # a1002 # r50270
            jump adabus_s2  # EXTERN


# s495 # say50272
label morte_s495: # -
    nr 'Morte prend un air moqueur. "J„préfèrerais passer dans les boyaux d“un tanar„ri plutôt que d“essayer de comprendre ce que disent ces faces de chèvres flottantes. Tu veux un traducteur ? Fais venir la tanar„ri." Il s“incline vers Tombée-en-Disgrâce. "Elle doit sûrement échanger la chanson avec eux sans arrêt."{#morte_s495_1}'

    menu:
        '"Peut-être…"{#morte_s495_r50273}':
            # a1003 # r50273
            jump adabus_s2  # EXTERN


# s496 # say50320
label morte_s496: # -
    nr '"Oh, pour l„amour des Puissances ! Fichu dabus !"{#morte_s496_1}'

    menu:
        '"Qu„est-ce qui ne va pas ?"{#morte_s496_r50321}':
            # a1004 # r50321
            jump morte_s497


# s497 # say50322
label morte_s497: # from 496.0
    nr '"C„est un dabus. Ils *s“expriment* en rébus, ces puzzles de mots barbants. Si *tu* ne sais pas ce qu„il dit, nous ferions mieux de trouver un natif ou un autre moyen de communication… si c“est vraiment nécessaire. Quel groupe assommant ! Tu paries qu„ils *peuvent* parler, mais qu“ils préfèrent coder tout ce qu„ils disent ne serait-ce que pour le plaisir d“énerver tout le monde."{#morte_s497_1}'

    menu:
        '"C„est quoi un “dabus„ ?"{#morte_s497_r50323}':
            # a1005 # r50323
            jump morte_s498


# s498 # say50324
label morte_s498: # from 497.0
    nr '"La chanson dit que ce sont les gardes de la Dame des Douleurs. Ils flottent, cassent, réparent et rapiècent Sigil selon ses caprices. Ils sont pires que des mouches vertes." Morte soupire. "Mais interdiction de s„en débarrasser, sinon la Dame… se fâche."{#morte_s498_1}'

    menu:
        '"La „Dame des Douleurs“ ? Qui c„est ?"{#morte_s498_r50325}' if morteLogic.r50325_condition():
            # a1006 # r50325
            $ morteLogic.r50325_action()
            jump morte_s499

        '"Que peux-tu me dire sur la Dame des Douleurs ?"{#morte_s498_r50328}' if morteLogic.r50328_condition():
            # a1007 # r50328
            jump morte_s499

        '"Je vois."{#morte_s498_r50329}' if morteLogic.r50329_condition():
            # a1008 # r50329
            jump adabus_s2  # EXTERN


# s499 # say50326
label morte_s499: # from 498.0 498.1
    nr '"Elle dirige cette cité. Tu la reconnaîtras si tu la vois : elle a ces lames autour du visage, la taille d„un géant et elle flotte, comme eux." Morte fait un signe de tête en direction du dabus, qui vous observe tous les deux. "Personne ne sait grand-chose sur elle… elle ne parle pas beaucoup. Sache juste qu“il ne vaut mieux pas la mettre en colère. Si tu la vois, voici mon conseil : détale."{#morte_s499_1}'

    menu:
        '"Je vois."{#morte_s499_r50327}':
            # a1009 # r50327
            jump adabus_s2  # EXTERN


# s500 # say50410
label morte_s500: # -
    nr '"Quoi ? Quoi ? Qu„est-ce qu“il y avait dedans, chef ?"{#morte_s500_1}'

    menu:
        '"Je ne sais pas quoi dire, Morte…"{#morte_s500_r50411}':
            # a1010 # r50411
            jump morte_s501

        '"Ça ne te regarde pas, Morte."{#morte_s500_r50412}':
            # a1011 # r50412
            jump morte_s501

        'Montre-lui le Manuscrit.{#morte_s500_r50413}':
            # a1012 # r50413
            jump morte_s503


# s501 # say50414
label morte_s501: # from 500.0 500.1
    nr '"QUOI ?! Tu me fais marcher, pas vrai ? Allez, laisse-moi voir !"{#morte_s501_1}'

    menu:
        'Montre-lui le Manuscrit.{#morte_s501_r50415}':
            # a1013 # r50415
            jump morte_s503

        '"Non, Morte. Oublie que tu l„as vu."{#morte_s501_r50416}':
            # a1014 # r50416
            $ morteLogic.r50416_action()
            jump morte_s502


# s502 # say50417
label morte_s502: # from 501.1
    nr 'Morte marmonne avec aigreur… mais laisse tomber.{#morte_s502_1}'

    jump codexi_s2  # EXTERN


# s503 # say50418
label morte_s503: # from 500.2 501.0
    nr 'Morte flotte au-dessus de ton épaule pour examiner le contenu du Manuscrit. Ses yeux sortent presque de ses orbites alors qu„il parcourt les pages : "Ooo. Ooooooo. Oh, je… mais… ouah."{#morte_s503_1}'

    jump codexi_s2  # EXTERN


# s504 # say50697
label morte_s504: # -
    nr '"Ouah ! Ouah ! Ouah ! Tu plaisantes, pas vrai ? Tu ne peux *pas* être sérieux, chef !"{#morte_s504_1}'

    menu:
        '"Si, très sérieux. Tu le prends, Vrischika ?"{#morte_s504_r50698}':
            # a1015 # r50698
            jump vrisch_s45  # EXTERN

        '"Bien sûr que non. J„avais une autre question, Vrischika…"{#morte_s504_r50699}':
            # a1016 # r50699
            jump vrisch_s7  # EXTERN

        '"Tu as raison, Morte ; ce n„était pas une bonne idée. Allons-nous-en."{#morte_s504_r50700}':
            # a1017 # r50700
            jump morte_dispose


# s505 # say50701
label morte_s505: # -
    nr '"Je ne peux pas le croire… Tu es tombé bien bas, chef, c„est le comble. Je *te* verrai à Baator, sale ordure de bas étage, minable, traître, ingrat, pourriture, fumier, affreux, salopard, amnésique ! Fais attention, pauvre bougre, continue comme ça et tu ne vas pas tarder à mourir pour de *bon*… je t“aurai prévenu !"{#morte_s505_1}'

    $ morteLogic.s505_action()
    jump vrisch_s46  # EXTERN


# s506 # say52571
label morte_s506: # -
    nr '"Elle l„a avalé, mais j“sais pas s„il est sorti de *ce* côté."{#morte_s506_1}'

    menu:
        '"Assez - écoute, Ravel, tu m„as pris ma mortalité et ça a causé plus de mal que de bien. Je veux la récupérer - tu l“as conservée trop longtemps à mon goût."{#morte_s506_r52572}':
            # a1018 # r52572
            jump ravel_s126  # EXTERN


# s507 # say52573
label morte_s507: # -
    nr '"Je crois que je sais qui devrait être mis en cage…"{#morte_s507_1}'

    jump ravel_s189  # EXTERN


# s508 # say52574
label morte_s508: # -
    nr '"Eh bien, j„avais rien de MIEUX à faire que d“aller dans l„un des dédales de la Dame pour rencontrer l“une des créatures les plus mauvaises qui ait jamais mis l„pied à Sigil, alors j“me suis dit : ben, pourquoi pas ?„{#morte_s508_1}'

    menu:
        '"Morte, tais-toi. Ravel, Je…"{#morte_s508_r52575}':
            # a1019 # r52575
            jump morte_s509


# s509 # say52576
label morte_s509: # from 508.0
    nr '"Que je me taise ?!" Morte claque des dents. "Et puis quoi encore ?! J„crois qu“on l„a assez écouté branler son râtelier et elle est gonflée d“balancer que j„ai pas de peau ! Et puis APRÈS ?! Faut dire qu“le fait qu„elle ait d“la peau l„EMBELLIT drôlement ! Est-ce qu“elle croit que *j„aime* être tout l“temps TOUT NU ? Et puis y„a *autre* chose -"{#morte_s509_1}'

    menu:
        '"Morte ! La ferme ! Ravel, écoute -"{#morte_s509_r52577}' if morteLogic.r52577_condition():
            # a1020 # r52577
            $ morteLogic.r52577_action()
            jump ravel_s66  # EXTERN

        '"Morte ! La ferme ! Ravel, écoute -"{#morte_s509_r52578}' if morteLogic.r52578_condition():
            # a1021 # r52578
            $ morteLogic.r52578_action()
            jump ravel_s67  # EXTERN

        '"Morte ! La ferme ! Ravel, écoute -"{#morte_s509_r52579}' if morteLogic.r52579_condition():
            # a1022 # r52579
            jump ravel_s68  # EXTERN


# s510 # say52644
label morte_s510: # -
    nr '"Bizarre. Alors on en est où, techniquement parlant ?"{#morte_s510_1}'

    menu:
        '"Je n„ai pas vraiment envie de connaître la réponse, Morte."{#morte_s510_r52771}':
            # a1023 # r52771
            jump pregal_s10  # EXTERN


# s511 # say53623
label morte_s511: # -
    nr '"Oh, on avait *vraiment* besoin d„ça."{#morte_s511_1}'

    jump pillar_s5  # EXTERN


# s512 # say53624
label morte_s512: # from 522.0 523.0 524.0
    nr 'Tandis que tu t„approches du pilier, Morte te siffle : "Pssst ! Chef ! Chef… Écoute, il faut pas qu“cette chose me voie. Sors-moi d„ici… Laisse-moi quelque part, et reprends-moi plus tard, ou quelque chose comme ça…"{#morte_s512_1}'

    menu:
        '"Pas question, Morte. Je vais aller lui parler. Maintenant…"{#morte_s512_r53625}' if morteLogic.r53625_condition():
            # a1024 # r53625
            $ morteLogic.r53625_action()
            jump pillar_s9  # EXTERN

        '"Pourquoi, Morte ? Qu„est-ce qui se passe ?"{#morte_s512_r53627}' if morteLogic.r53627_condition():
            # a1025 # r53627
            jump morte_s513

        '"Très bien. Dans ce cas, nous partons."{#morte_s512_r53628}':
            # a1026 # r53628
            jump morte_dispose


# s513 # say53626
label morte_s513: # from 512.1
    nr '"Euh… J„aime pas trop en parler. On avance, d“accord ?" La voix de Morte tremble de peur. Ses yeux passent de l„énorme pilier à toi.{#morte_s513_1}'

    menu:
        '"Tu ne peux pas me cacher tous ces secrets, Morte. Dis-moi ce qui se passe ici."{#morte_s513_r53629}':
            # a1027 # r53629
            $ morteLogic.r53629_action()
            jump morte_s514

        '"Plus de combines, Morte. Dis-moi *tout de suite* ce qui se passe ou tu risques de regretter de ne pas avoir voulu parler aux têtes."{#morte_s513_r53630}':
            # a1028 # r53630
            $ morteLogic.r53630_action()
            jump morte_s514

        '"Très bien. Dans ce cas, nous partons."{#morte_s513_r53631}':
            # a1029 # r53631
            jump morte_dispose


# s514 # say53632
label morte_s514: # from 513.0 513.1
    nr 'Morte soupire, incapable de te regarder dans les yeux. Il s„incline enfin. "D“accord, d„accord… J“vais t„dire. Y“a un pilier sur l„Averne, la première couche de Baator, qui est fait des têtes de tous ceux qui ont provoqué la mort d“autres à cause de leurs mensonges. Ben… c„est ça, là. Tu vois, c“est là qu„je m“suis retrouvé. Devine le reste."{#morte_s514_1}'

    menu:
        '"Alors… tu faisais partie de ces têtes ?"{#morte_s514_r53662}' if morteLogic.r53662_condition():
            # a1030 # r53662
            jump morte_s516

        '"Alors… tu faisais partie de ces têtes ?"{#morte_s514_r53663}' if morteLogic.r53663_condition():
            # a1031 # r53663
            jump morte_s515


# s515 # say53664
label morte_s515: # from 514.1
    nr '"Ouais. J„ai… exagéré un peu, une ou deux fois. C“est juste qu„une de mes suggestions a abouti à ta mort. L“une d„entre elles. Peut-être d“autres. Je sais pas, je ne me souviens plus."{#morte_s515_1}'

    menu:
        '"Je vois…"{#morte_s515_r53665}':
            # a1032 # r53665
            jump morte_s518


# s516 # say53666
label morte_s516: # from 514.0
    nr '"Ouais. J„ai… exagéré un peu, une ou deux fois. C“est juste qu„une de mes suggestions-"{#morte_s516_1}'

    jump annah_s269  # EXTERN


# s517 # say53667
label morte_s517: # -
    nr 'Morte continue, imperturbable. "… l„une de mes *suggestions* a abouti à ta mort. L“une d„entre elles. Peut-être d“autres. Je sais pas vraiment, je ne me souviens plus."{#morte_s517_1}'

    jump morte_s518


# s518 # say53668
label morte_s518: # from 515.0 517.0
    nr 'Morte fixe tes pieds - tu ne l„as jamais vu si pitoyable. "Ces souvenirs, ils… écoute, chef, je m“souviens même pas avoir *été* humain. J„me souviens pas d“la vie avant l„pilier…"{#morte_s518_1}'

    if morteLogic.s518_condition():
        jump dakkon_s183  # EXTERN
    menu:
        '"Continue…"{#morte_s518_r54105}' if morteLogic.r54105_condition():
            # a1033 # r54105
            jump morte_s520


# s519 # say53794
label morte_s519: # -
    nr 'Morte regarde Dak„kon, puis toi. "Oui, j“imagine. Et c„est à peu près comme ça qu“ça s„passe quand tu meurs. Tu… oublies. J“imagine que j„étais pas un membre illustre de la communauté quand j“étais vivant… Mais bon sang, qui l„est de toute façon ?" Morte soupire à nouveau. "C“est juste que j„peux pas m“en empêcher. Y„a rien d“pire que d„être tout l“temps honnête. Mais écoute, chef : si ce tas d„têtes me voit, il va m“vouloir méchamment - *méchamment*. Faut pas qu„ça arrive !"{#morte_s519_1}'

    menu:
        '"Pas question, Morte. Je vais aller lui parler. Maintenant…"{#morte_s519_r53795}':
            # a1034 # r53795
            $ morteLogic.r53795_action()
            jump pillar_s9  # EXTERN

        '"Attends… comment t„es-tu libéré du Pilier ?"{#morte_s519_r53796}':
            # a1035 # r53796
            jump morte_s521

        '"Un instant… pourquoi ne m„as-tu pas dit que tu me connaissais, quand on était à la Morgue ?"{#morte_s519_r53797}':
            # a1036 # r53797
            jump morte_s523

        '"Attends. Depuis combien de temps exactement me connais-tu, Morte ?"{#morte_s519_r53798}':
            # a1037 # r53798
            jump morte_s524

        '"Très bien. Allons-y, Morte."{#morte_s519_r53799}':
            # a1038 # r53799
            jump morte_dispose


# s520 # say53800
label morte_s520: # from 518.1
    nr '"Quoi qu„il en soit, j“imagine que j„étais pas un membre illustre de la communauté quand j“étais vivant… mais bon sang, qui l„est de toute façon ?" Morte soupire à nouveau. "C“est juste que j„peux pas m“en empêcher. Y„a rien d“pire que d„être tout l“temps honnête. Mais écoute, chef : si ce tas d„têtes me voit, il va m“vouloir méchamment - *méchamment*. Faut pas qu„ça arrive !"{#morte_s520_1}'

    menu:
        '"Pas question, Morte. Je vais aller lui parler. Maintenant…"{#morte_s520_r53801}':
            # a1039 # r53801
            $ morteLogic.r53801_action()
            jump pillar_s9  # EXTERN

        '"Attends… comment t„es-tu libéré du Pilier ?"{#morte_s520_r53802}':
            # a1040 # r53802
            jump morte_s521

        '"Un instant… pourquoi ne m„as-tu pas dit que tu me connaissais, quand on était à la Morgue ?"{#morte_s520_r53803}':
            # a1041 # r53803
            jump morte_s523

        '"Attends. Depuis combien de temps exactement me connais-tu, Morte ?"{#morte_s520_r53804}':
            # a1042 # r53804
            jump morte_s524

        '"Très bien. Allons-y, Morte."{#morte_s520_r53805}':
            # a1043 # r53805
            jump morte_dispose


# s521 # say53806
label morte_s521: # from 519.1 520.1 523.1 524.1
    nr '"Eh ben… tu m„as sorti d“là chef, chef. J„me suis battu pour m“retrouver à la surface du pilier - t„es déjà allé là-bas, tu sais de quoi j“parle - en hurlant jusqu„à ce que tu me remarques. J“ai supplié pour être libéré, en jurant que j„te suivrais, et que je partagerais mon savoir avec toi jusqu“à la fin de mes jours… J„m“étais pas rendu compte que ça allait prendre tout ce temps pour me libérer."{#morte_s521_1}'

    menu:
        '"Et tout le savoir du Pilier… ?"{#morte_s521_r53807}':
            # a1044 # r53807
            $ morteLogic.j53633_s521_r53807_action()
            jump morte_s522


# s522 # say53808
label morte_s522: # from 521.0
    nr '"Oh, ça… ben, j„ai pas non plus réalisé que je perdrais la plupart du savoir du pilier en en sortant. Cagueurs de pouvoirs, qu“est-ce que *ça* t„a fait exploser ! Mais tu m“as tout de même gardé. Et au début, j„me suis senti “attaché„ à toi… peut-être que ta sorcellerie m“avait transformé en une espèce d„animal de compagnie. Mais après deux siècles, j“ai réalisé que c„était *plus* que ça… quelque chose de plus profond. Plus que le paiement d“une dette, même si je suis sûr qu„il y a un rapport. Je me suis senti attiré, *connecté* à toi, en quelque sorte. Peut-être que c“est toutes tes souffrances, chef… ton tourment. Je sais pas. Peut-être que je l„ai assimilé au mien, quand j“étais dans le pilier."{#morte_s522_1}'

    menu:
        '"Je vais parler au Pilier. Maintenant…"{#morte_s522_r53809}':
            # a1045 # r53809
            jump morte_s512

        '"Pourquoi ne m„as-tu pas dit que tu me connaissais lorsque on était à la Morgue ?"{#morte_s522_r53810}':
            # a1046 # r53810
            jump morte_s523

        '"Depuis combien de temps exactement me connais-tu, Morte ?"{#morte_s522_r53811}':
            # a1047 # r53811
            jump morte_s524

        '"Très bien. Partons, Morte."{#morte_s522_r53812}':
            # a1048 # r53812
            jump morte_dispose


# s523 # say53813
label morte_s523: # from 519.2 520.2 522.1 524.2
    nr 'Morte prend soudain la défensive. "Parce que je *sais* jamais qui tu vas être ! Certaines de tes incarnations ont été complètement délirantes ! Une fois, tu t„es réveillé obsédé par l“idée que j„étais *ton* crâne et tu m“as chassé autour de l„Aiguille pour me fracasser et me dévorer… Heureusement, tu t“es fait écraser par un chariot dans la rue. Une autre fois, une „bonne et honnête“ version de toi a essayé de me jeter dans le pilier, parce que „c“était ma place„.“" Morte sourit d„un air narquois. "*C“est* pour ça que ça t„a jamais fait d“mal de rien savoir…"{#morte_s523_1}'

    menu:
        '"Je vais parler au Pilier. Maintenant…"{#morte_s523_r53814}':
            # a1049 # r53814
            jump morte_s512

        '"Comment t„es-tu libéré du Pilier ?"{#morte_s523_r53815}':
            # a1050 # r53815
            jump morte_s521

        '"Depuis combien de temps exactement me connais-tu, Morte ?"{#morte_s523_r53816}':
            # a1051 # r53816
            jump morte_s524

        '"Très bien. Partons, Morte."{#morte_s523_r53817}':
            # a1052 # r53817
            jump morte_dispose


# s524 # say53818
label morte_s524: # from 519.3 520.3 522.2 523.2
    nr '"J„sais pas. Des lustres, j“imagine. J„ai fait tout c“que j„pouvais pour t“aider à retrouver ton chemin, mais…" Morte soupire, puis s„élève pour rencontrer ton regard. "T“es rarement arrivé jusque là, chef. Sans mentir, seulement quatre ou cinq fois. Ça pourrait être la bonne… le „toi“ qui y arrive, qui découvre c„qui s“passe."{#morte_s524_1}'

    menu:
        '"Je vais parler au Pilier. Maintenant…"{#morte_s524_r53819}':
            # a1053 # r53819
            jump morte_s512

        '"Comment t„es-tu libéré du Pilier ?"{#morte_s524_r53820}':
            # a1054 # r53820
            jump morte_s521

        '"Pourquoi ne m„as-tu pas dit que tu me connaissais lorsque on était à la Morgue ?"{#morte_s524_r53821}':
            # a1055 # r53821
            jump morte_s523

        '"Très bien. Partons, Morte."{#morte_s524_r53822}':
            # a1056 # r53822
            jump morte_dispose


# s525 # say53823
label morte_s525: # -
    nr '"Oh, non…"{#morte_s525_1}'

    jump pillar_s10  # EXTERN


# s526 # say53824
label morte_s526: # -
    nr 'Morte tremble de peur et claque des dents. "J„peux pas retourner là-bas, chef ! J“peux pas ! J„peux pas ! J“peux pas !"{#morte_s526_1}'

    menu:
        '"Il n„est pas venu pour toi. Mais j“ai quelques questions, Pilier des Crânes…"{#morte_s526_r53825}' if morteLogic.r53825_condition():
            # a1057 # r53825
            $ morteLogic.r53825_action()
            jump pillar_s2  # EXTERN

        '"Il n„est pas venu pour toi. Mais j“ai quelques questions, Pilier des Crânes…"{#morte_s526_r53826}' if morteLogic.r53826_condition():
            # a1058 # r53826
            $ morteLogic.r53826_action()
            jump pillar_s2  # EXTERN

        '"Il n„est pas venu pour toi, Pilier des Crânes. Mais j“ai quelques questions…"{#morte_s526_r53827}' if morteLogic.r53827_condition():
            # a1059 # r53827
            jump pillar_s12  # EXTERN

        '"Partons, Morte. Allez."{#morte_s526_r53828}':
            # a1060 # r53828
            jump pillar_s50  # EXTERN


# s527 # say53829
label morte_s527: # -
    nr '"*Allez*, chef, est-ce que je viens pas tout juste de te *dire* ce que c„était ?! Il est composé des têtes des menteurs dont les “conseils„ ont abouti à la mort de ceux qu“ils conseillaient. Il peut répondre à beaucoup de questions - il en sait pas mal - mais il attend un sacré paiement pour ses services. Lui pose pas une question juste comme ça !"{#morte_s527_1}'

    jump pillar_s14  # EXTERN


# s528 # say53830
label morte_s528: # -
    nr '"Me remets pas là-dedans, chef. S„il te plaît !"{#morte_s528_1}'

    jump pillar_s17  # EXTERN


# s529 # say53831
label morte_s529: # -
    nr '"Chef ?! Non ! Non ! Tu peux *pas* ! Allez !"{#morte_s529_1}'

    menu:
        '"Ne t„en fais pas, Morte - je te sortirai de là plus tard."{#morte_s529_r53832}' if morteLogic.r53832_condition():
            # a1061 # r53832
            jump morte_s530

        '"Ne t„en fais pas, Morte - je te sortirai de là plus tard."{#morte_s529_r53833}' if morteLogic.r53833_condition():
            # a1062 # r53833
            jump morte_s530

        '"Ne t„en fais pas, Morte - je te sortirai de là plus tard."{#morte_s529_r53834}' if morteLogic.r53834_condition():
            # a1063 # r53834
            jump morte_s530

        '"Ne t„en fais pas, Morte - je te sortirai de là plus tard."{#morte_s529_r53835}' if morteLogic.r53835_condition():
            # a1064 # r53835
            jump morte_s531

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s529_r53836}' if morteLogic.r53836_condition():
            # a1065 # r53836
            jump pillar_s19  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s529_r53837}' if morteLogic.r53837_condition():
            # a1066 # r53837
            jump pillar_s20  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s529_r53838}' if morteLogic.r53838_condition():
            # a1067 # r53838
            jump pillar_s21  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s529_r53839}' if morteLogic.r53839_condition():
            # a1068 # r53839
            jump pillar_s22  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s529_r53840}' if morteLogic.r53840_condition():
            # a1069 # r53840
            jump pillar_s23  # EXTERN

        '"Partons, Morte. Allez."{#morte_s529_r53841}':
            # a1070 # r53841
            $ morteLogic.r53841_action()
            jump pillar_s50  # EXTERN


# s530 # say53842
label morte_s530: # from 529.0 529.1 529.2
    nr 'Morte te regarde d„un air sceptique. "T“es *sûr* ? Tu le *jures* ? Hé, qu„est-ce que j“raconte ?! Non ! Pas question ! Allez, tu peux *pas* m„remettre là-dedans !"{#morte_s530_1}'

    menu:
        'Attrape Morte, jette-le dans le Pilier des Crânes.{#morte_s530_r53843}':
            # a1071 # r53843
            $ morteLogic.r53843_action()
            jump morte_dispose

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s530_r53844}' if morteLogic.r53844_condition():
            # a1072 # r53844
            jump pillar_s19  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s530_r53863}' if morteLogic.r53863_condition():
            # a1073 # r53863
            jump pillar_s20  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s530_r53864}' if morteLogic.r53864_condition():
            # a1074 # r53864
            jump pillar_s21  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s530_r53865}' if morteLogic.r53865_condition():
            # a1075 # r53865
            jump pillar_s22  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s530_r53866}' if morteLogic.r53866_condition():
            # a1076 # r53866
            jump pillar_s23  # EXTERN

        '"Partons, Morte. Allez."{#morte_s530_r53867}':
            # a1077 # r53867
            $ morteLogic.r53867_action()
            jump pillar_s50  # EXTERN


# s531 # say53849
label morte_s531: # from 529.3
    nr 'Morte te regarde en silence pendant un instant, bouche bée. " QUOI ?! Jamais ! T„es pas aussi puissant que tu l“étais quand… écoute, oublie ça, tu peux pas l„faire, jamais d“la vie ! Allez, tu peux *pas* me remettre là-dedans !"{#morte_s531_1}'

    menu:
        'Attrape Morte, jette-le dans le Pilier des Crânes.{#morte_s531_r53850}':
            # a1078 # r53850
            $ morteLogic.r53850_action()
            jump morte_dispose

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s531_r53851}' if morteLogic.r53851_condition():
            # a1079 # r53851
            jump pillar_s19  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s531_r53852}' if morteLogic.r53852_condition():
            # a1080 # r53852
            jump pillar_s20  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s531_r53853}' if morteLogic.r53853_condition():
            # a1081 # r53853
            jump pillar_s21  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s531_r53854}' if morteLogic.r53854_condition():
            # a1082 # r53854
            jump pillar_s22  # EXTERN

        '"Très bien, Morte. Pilier des Crânes : quel autre tribut es-tu prêt à accepter ?"{#morte_s531_r53855}' if morteLogic.r53855_condition():
            # a1083 # r53855
            jump pillar_s23  # EXTERN

        '"Partons, Morte. Allez."{#morte_s531_r53856}':
            # a1084 # r53856
            $ morteLogic.r53856_action()
            jump pillar_s50  # EXTERN


# s532 # say53857
label morte_s532: # -
    nr '"Ouah, qu„… attends ! Pas si vite ! Pilier… Je peux te dire où est Fjhull Langue-fourchue ! Allez, tu veux pas l“savoir ? Et s„il te donne ça, au lieu de moi, hein ? Hein ? Qu“est-ce que t„en dis ?"{#morte_s532_1}'

    menu:
        '"Un instant, Morte. Nous n„allons pas trahir Fhjull."{#morte_s532_r53858}':
            # a1085 # r53858
            jump morte_s533

        'Attends la réponse du Pilier.{#morte_s532_r53859}':
            # a1086 # r53859
            jump pillar_s19  # EXTERN


# s533 # say53860
label morte_s533: # from 532.0
    nr '"Quoi ? T„es *azimuté* ?!* Tu te débarrasses de *moi*, mais pas de l“autre *FIÉLON* ?! S„il t“a aidé, c„est parce qu“il est lié à toi, maudit, c„est tout ! Et *moi* ? Qui t“a sorti de la morgue, mon pote ? Qui va se tenir - euh, flotter - à tes côtés quand tu devras faire face au pire dans la Forteresse de machin ?! Hein ?! Hein ?! PAS FHJULL GROS-CUL, ÇA C„EST SÛR !"{#morte_s533_1}'

    menu:
        '"Bien, bien. Qu„en dis-tu, Pilier ?"{#morte_s533_r53861}':
            # a1087 # r53861
            jump pillar_s19  # EXTERN

        '"Désolé, Morte. Tu vas y passer."{#morte_s533_r53862}':
            # a1088 # r53862
            jump pillar_s18  # EXTERN


# s534 # say54155
label morte_s534: # from 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0
    nr '"Pourquoi pas, chef ?" Morte secoue la tête. "Je veux dire, on s„est baladés sur TOUS les horribles plans possibles et imaginables du multivers. Pourquoi pas se jeter du haut de la falaise ?" Il soupire bruyamment. "Est-ce que TU es prêt ? Parce que si tu l“es pas…"{#morte_s534_1}'

    menu:
        '"Peux-tu me répéter ce qui se trouve au-delà de ce portail ?"{#morte_s534_r54156}':
            # a1089 # r54156
            jump morte_s544

        '"Je suis prêt, Morte. Je ne peux pas faire plus pour me préparer. Tu me suis ?"{#morte_s534_r54157}':
            # a1090 # r54157
            jump morte_s535

        '"Peut-être que tu as raison… laisse-moi d„abord me préparer un peu plus."{#morte_s534_r54158}':
            # a1091 # r54158
            jump morte_dispose


# s535 # say54159
label morte_s535: # from 534.1
    nr '"Ben je…" Morte jette un œil au rideau bleu brillant et soupire à nouveau bruyamment. "D„accord. Allons-y. N“importe quel endroit vaut mieux que d„se branler le râtelier à la Morgue, hein ?"{#morte_s535_1}'

    menu:
        '"Alors très bien…"{#morte_s535_r54160}':
            # a1092 # r54160
            $ morteLogic.r54160_action()
            jump morte_dispose


# s536 # say54161
label morte_s536: # -
    nr '"Euh…" Morte hésite, regarde furtivement le portail, puis toi, puis à nouveau le portail, puis soupire bruyamment. "Écoute, j„vais pas *trop* en dire ici, mais euh… Ben, y“a quelque chose qu„il faut que j“te dise…"{#morte_s536_1}'

    menu:
        '"Qu„y a-t-il, Morte ?"{#morte_s536_r54162}':
            # a1093 # r54162
            jump morte_s537

        '"Quoi ? Allez, Morte, nous devons partir…"{#morte_s536_r54163}':
            # a1094 # r54163
            jump morte_s537


# s537 # say54164
label morte_s537: # from 536.0 536.1
    nr '"Ben, c„est à propos de l“endroit où on va… ou plutôt… où on est… *allés*."{#morte_s537_1}'

    menu:
        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"{#morte_s537_r54165}' if morteLogic.r54165_condition():
            # a1095 # r54165
            jump morte_s540

        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"{#morte_s537_r54166}' if morteLogic.r54166_condition():
            # a1096 # r54166
            jump dakkon_s174  # EXTERN

        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"{#morte_s537_r54167}' if morteLogic.r54167_condition():
            # a1097 # r54167
            jump morte_s540


# s538 # say54168
label morte_s538: # -
    nr '"Euh… chef ?" Morte hésite, regarde furtivement le portail, puis toi, puis à nouveau le portail, puis soupire bruyamment. "Écoute, j„vais pas *trop* en dire ici, mais euh… ben, y“a quelque chose qu„il faut que j“te dise…"{#morte_s538_1}'

    menu:
        '"Qu„y a-t-il, Morte ?"{#morte_s538_r54169}':
            # a1098 # r54169
            jump morte_s539

        '"Quoi ? Allez, Morte, il faut que je parte…"{#morte_s538_r54170}':
            # a1099 # r54170
            jump morte_s539


# s539 # say54171
label morte_s539: # from 538.0 538.1
    nr '"Ben, c„est à propos de l“endroit où tu vas… ou plutôt… où on est… *allés*."{#morte_s539_1}'

    menu:
        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"{#morte_s539_r54172}' if morteLogic.r54172_condition():
            # a1100 # r54172
            jump morte_s540

        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"{#morte_s539_r54173}' if morteLogic.r54173_condition():
            # a1101 # r54173
            jump dakkon_s174  # EXTERN

        '"„Où on EST allés“ ? De quoi est-ce que tu parles ?"{#morte_s539_r54174}' if morteLogic.r54174_condition():
            # a1102 # r54174
            jump morte_s540


# s540 # say54175
label morte_s540: # from 537.0 537.2 539.0 539.2
    nr '"C„est… euh, c“est pas la PREMIÈRE fois qu„on fait ça… Tu vois, on est déjà allé à la “Forteresse des Regrets„… même si, on… Je… je le savais pas à l“époque."{#morte_s540_1}'

    menu:
        '"Tu ne le *savais* pas ? Comment est-ce possible ?"{#morte_s540_r54176}':
            # a1103 # r54176
            jump morte_s541

        '"Donc, depuis le TOUT DÉBUT… tu aurais pu me DIRE où était le portail, CE qu„était la clé du portail, POURQUOI je suis immortel, ce qui est ARRIVÉ à ma mortalité ET le fait que ce soit dans cette Forteresse ?! Morte, je vais te *TUER*… !"{#morte_s540_r54177}':
            # a1104 # r54177
            jump morte_s542

        '"Morte, j„attends des explications… plus de mensonges ou de subterfuges, pas maintenant."{#morte_s540_r54178}':
            # a1105 # r54178
            jump morte_s541

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s540_r54179}' if morteLogic.r54179_condition():
            # a1106 # r54179
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s540_r54180}' if morteLogic.r54180_condition():
            # a1107 # r54180
            $ morteLogic.r54180_action()
            jump morte_dispose


# s541 # say54181
label morte_s541: # from 540.0 540.2
    nr '"C„est difficile à expliquer tant que t“es pas *allé* là-bas… en plus, tu connaissais pas le euh, *l„autre* toi - il était pas exactement le genre de lascar à PARTAGER la chanson avec nous. J“veux dire, je sais qu„il cherchait UN endroit, mais j“savais pas pourquoi, où c„était, ou CE que c“était, alors je pouvais RIEN te dire, parce que je savais RIEN ! Je… je sais juste ce qui s„est passé quand on est ARRIVÉS là-bas…"{#morte_s541_1}'

    menu:
        '"Et… qu„est-ce qui s“est passé ?"{#morte_s541_r54189}' if morteLogic.r54189_condition():
            # a1108 # r54189
            jump morte_s544

        '"Et… qu„est-ce qui s“est passé ?"{#morte_s541_r54190}' if morteLogic.r54190_condition():
            # a1109 # r54190
            jump morte_s543

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s541_r54191}' if morteLogic.r54191_condition():
            # a1110 # r54191
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s541_r54192}' if morteLogic.r54192_condition():
            # a1111 # r54192
            $ morteLogic.r54192_action()
            jump morte_dispose


# s542 # say54193
label morte_s542: # from 540.1
    nr 'Morte paraît alarmé. "Non ! Non ! On… Je… ne SAVAIS rien ! C„est pas comme si t“étais l„plus bavard des lascars ! Ce… cet *autre* toi a gardé BEAUCOUP de chansons pour lui-même et on savait même pas POURQUOI on allait là-bas et QUEL endroit c“était ! Je sais juste ce qui s„est passé quand on est ARRIVÉS là-bas…"{#morte_s542_1}'

    menu:
        '"Et… qu„est-ce qui s“est passé ?"{#morte_s542_r54194}' if morteLogic.r54194_condition():
            # a1112 # r54194
            jump morte_s544

        '"Et… qu„est-ce qui s“est passé ?"{#morte_s542_r54195}' if morteLogic.r54195_condition():
            # a1113 # r54195
            jump morte_s543

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s542_r54196}' if morteLogic.r54196_condition():
            # a1114 # r54196
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s542_r54197}' if morteLogic.r54197_condition():
            # a1115 # r54197
            $ morteLogic.r54197_action()
            jump morte_dispose


# s543 # say54198
label morte_s543: # from 541.1 542.1
    nr '"Eh bien, on est allé à cette - cette FORTERESSE et avant même qu„on pose le pied là-bas, on s“est retrouvé SÉPARÉS, à combattre pour nos vies… alors la *première* chose que je veux te dire, c„est que si t“es déterminé à faire ça, y„a grande chance que ceux qui passeront à travers ce portail se retrouvent quelque part *loin* de tout le monde. Le problème, c“est que t„as toujours besoin que quelqu“un t„accompagne là-bas…"{#morte_s543_1}'

    menu:
        '"Pourquoi dis-tu ça ?"{#morte_s543_r54199}':
            # a1116 # r54199
            jump morte_s545

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s543_r54200}' if morteLogic.r54200_condition():
            # a1117 # r54200
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s543_r54201}' if morteLogic.r54201_condition():
            # a1118 # r54201
            $ morteLogic.r54201_action()
            jump morte_dispose


# s544 # say54202
label morte_s544: # from 534.0 541.0 542.0
    nr '"Eh bien, on est allé à cette - cette FORTERESSE et avant même qu„on pose le pied là-bas, on s“est retrouvé SÉPARÉS, à combattre pour nos vies… alors la *première* chose que je veux te dire, c„est que si t“es déterminé à faire ça, y„a des chances que ceux qui passeront à travers ce portail se retrouvent quelque part *loin* de tout le monde. Le problème, c“est que même séparés, on est peut-être ta seule chance…"{#morte_s544_1}'

    menu:
        '"Pourquoi dis-tu ça ?"{#morte_s544_r54203}':
            # a1119 # r54203
            jump morte_s545

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s544_r54204}' if morteLogic.r54204_condition():
            # a1120 # r54204
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s544_r54205}' if morteLogic.r54205_condition():
            # a1121 # r54205
            $ morteLogic.r54205_action()
            jump morte_dispose


# s545 # say54206
label morte_s545: # from 543.0 544.0
    nr '"Parce que ce qui t„attendait dans cette Forteresse t“a déjà battu une fois chef… À ce jour, je sais toujours pas comment tu t„es débrouillé pour survivre, mais si tu tombes encore, t“auras besoin de quelqu„un pour te sortir de cette Forteresse…"{#morte_s545_1}'

    menu:
        '"Morte, il faut que tu me dises tout ce que tu sais à propos de la Forteresse… c„est important."{#morte_s545_r54207}' if morteLogic.r54207_condition():
            # a1122 # r54207
            jump morte_s547

        '"Morte, il faut que tu me dises tout ce que tu sais à propos de la Forteresse… c„est important."{#morte_s545_r54208}' if morteLogic.r54208_condition():
            # a1123 # r54208
            jump morte_s546

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s545_r54209}' if morteLogic.r54209_condition():
            # a1124 # r54209
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s545_r54210}' if morteLogic.r54210_condition():
            # a1125 # r54210
            $ morteLogic.r54210_action()
            jump morte_dispose


# s546 # say54211
label morte_s546: # from 545.1
    nr '"Cette „Forteresse des Regrets“… elle s„étale sur des LIEUES, chef. C“est une Forteresse, mais ça ressemble plus à un PLAN, avec toute cette pierre, cette obscurité et ces ombres, partout ces ombres. Si tu vas là-bas… tu ferais mieux d„être préparé."{#morte_s546_1}'

    menu:
        '"Que s„est-il passé la première fois que nous sommes venus ici ?"{#morte_s546_r54212}':
            # a1126 # r54212
            jump morte_s548

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s546_r54213}' if morteLogic.r54213_condition():
            # a1127 # r54213
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s546_r54214}' if morteLogic.r54214_condition():
            # a1128 # r54214
            $ morteLogic.r54214_action()
            jump morte_dispose


# s547 # say54215
label morte_s547: # from 545.0
    nr '"Cette „Forteresse des Regrets“… elle s„étale sur des LIEUES, chef. C“est une Forteresse, mais ça ressemble plus à un PLAN, avec toute cette pierre, cette obscurité et ces ombres, partout ces ombres. Si on va là-bas… on ferait mieux d„être préparé."{#morte_s547_1}'

    menu:
        '"Que s„est-il passé la première fois que nous sommes venus ici ?"{#morte_s547_r54216}':
            # a1129 # r54216
            jump morte_s548

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s547_r54217}' if morteLogic.r54217_condition():
            # a1130 # r54217
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s547_r54218}' if morteLogic.r54218_condition():
            # a1131 # r54218
            $ morteLogic.r54218_action()
            jump morte_dispose


# s548 # say54219
label morte_s548: # from 546.0 547.0
    nr '"Chef, je sais pas ce qui t„est arrivé à TOI, mais je sais ce qui m“est arrivé à MOI… J„ai passé mon temps à courir de caveau en caveau, avec ces ombres au-dessus de moi, qui essayaient de m“avoir… puis j„ai juste… on s“est retrouvé „dehors“, comme si quelqu„un nous avait sortis…"{#morte_s548_1}'

    menu:
        '"Attends un instant. Quand tu parles de „nous“, on dirait que tu ne parles pas uniquement de toi et moi."{#morte_s548_r54220}' if morteLogic.r54220_condition():
            # a1132 # r54220
            jump morte_s565

        '"Attends un instant. Quand tu parles de „nous“, on dirait que tu ne parles pas uniquement de toi et moi."{#morte_s548_r54221}' if morteLogic.r54221_condition():
            # a1133 # r54221
            jump morte_s549

        '"Attends un instant. Quand tu parles de „nous“, on dirait que tu ne parles pas uniquement de toi et moi."{#morte_s548_r54223}' if morteLogic.r54223_condition():
            # a1134 # r54223
            jump morte_s550

        '"Je vois. Y a-t-il autre chose que tu peux me dire ?"{#morte_s548_r54225}':
            # a1135 # r54225
            jump morte_s552

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s548_r54226}' if morteLogic.r54226_condition():
            # a1136 # r54226
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s548_r54227}' if morteLogic.r54227_condition():
            # a1137 # r54227
            $ morteLogic.r54227_action()
            jump morte_dispose


# s549 # say54229
label morte_s549: # from 548.1
    nr 'Morte devient silencieux pendant un instant. "Non… d„autres étaient là. Il y avait… Dak“kon, cette gamine Sensat, Deionarra, cet archer aveugle à moitié bougre à force de picoler, et toi et moi… et c„est devenu infernal. On dirait bien qu“il n„y a que toi, moi, et Dak“kon qui nous en sommes tirés, mais pas les autres. Je sais pas ce qui leur est arrivé."{#morte_s549_1}'

    menu:
        '"Dak„kon ? Mais pourquoi… Il faudra que je lui pose la question ; mais tu dis que Deionarra et cet archer ne sont jamais revenus de la Forteresse ?"{#morte_s549_r54230}' if morteLogic.r54230_condition():
            # a1138 # r54230
            jump morte_s551

        '"Dak„kon ? Mais pourquoi… Il faudra que je lui pose la question ; mais tu dis que cette femme, Deionarra, et cet archer ne sont jamais revenus de la Forteresse ?"{#morte_s549_r54231}' if morteLogic.r54231_condition():
            # a1139 # r54231
            jump morte_s551

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s549_r54232}' if morteLogic.r54232_condition():
            # a1140 # r54232
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s549_r54233}' if morteLogic.r54233_condition():
            # a1141 # r54233
            $ morteLogic.r54233_action()
            jump morte_dispose


# s550 # say54234
label morte_s550: # from 548.2
    nr 'Morte devient silencieux pendant un instant. "Non… d„autres étaient là. Il y avait… ce vieux gith, Dak“kon, cette gamine Sensat, Deionarra, cet archer aveugle à moitié bougre à force de picoler et toi et moi… et c„est devenu infernal. On dirait bien qu“il n„y a que toi, moi, et Dak“kon qui nous en sommes tirés, mais pas les autres. Je sais pas ce qui leur est arrivé."{#morte_s550_1}'

    menu:
        '"Tu dis que Deionarra et cet archer ne sont jamais revenus de la Forteresse ?"{#morte_s550_r54235}' if morteLogic.r54235_condition():
            # a1142 # r54235
            jump morte_s551

        '"Tu dis que cette femme, Deionarra et cet archer ne sont jamais revenus de la Forteresse ?"{#morte_s550_r54236}' if morteLogic.r54236_condition():
            # a1143 # r54236
            jump morte_s551

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s550_r54237}' if morteLogic.r54237_condition():
            # a1144 # r54237
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s550_r54238}' if morteLogic.r54238_condition():
            # a1145 # r54238
            $ morteLogic.r54238_action()
            jump morte_dispose


# s551 # say54239
label morte_s551: # from 549.0 549.1 550.0 550.1
    nr 'Morte secoue la tête. "Pas que je sache."{#morte_s551_1}'

    menu:
        '"Y a-t-il autre chose que tu puisses me dire à propos de cette Forteresse ?"{#morte_s551_r54240}':
            # a1146 # r54240
            jump morte_s552

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s551_r54241}' if morteLogic.r54241_condition():
            # a1147 # r54241
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s551_r54242}' if morteLogic.r54242_condition():
            # a1148 # r54242
            $ morteLogic.r54242_action()
            jump morte_dispose


# s552 # say54243
label morte_s552: # from 548.3 551.0
    nr '"Je peux pas t„en dire plus, chef - excepté qu“on est certains de se retrouver divisés dès qu„on arrivera, c“est un endroit ÉNORME et ça grouille d„ombres… et quelque part dans cette Forteresse, il y a quelque chose de plus puissant que *n“importe lequel* d„entre nous. Y“a rien de plus à ajouter…"{#morte_s552_1}'

    menu:
        '"En es-tu *sûr* ? C„est peut-être la dernière fois que nous avons une chance de nous parler…"{#morte_s552_r54244}':
            # a1149 # r54244
            $ morteLogic.r54244_action()
            jump morte_s553

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s552_r54245}' if morteLogic.r54245_condition():
            # a1150 # r54245
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s552_r54246}' if morteLogic.r54246_condition():
            # a1151 # r54246
            $ morteLogic.r54246_action()
            jump morte_dispose


# s553 # say54249
label morte_s553: # from 552.0
    nr '"Eh bien…" Morte s„interrompt. "Ouais, y“a autre chose que tu devrais savoir - le TOI que j„ai connu avant, le TOI qui nous a menés ici, il était pas comme toi. Pas du tout."{#morte_s553_1}'

    menu:
        '"Qu„est-ce que tu veux dire ?"{#morte_s553_r54250}' if morteLogic.r54250_condition():
            # a1152 # r54250
            jump morte_s554

        '"Qu„est-ce que tu veux dire ?"{#morte_s553_r54252}' if morteLogic.r54252_condition():
            # a1153 # r54252
            jump morte_s555

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s553_r54255}' if morteLogic.r54255_condition():
            # a1154 # r54255
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s553_r54262}' if morteLogic.r54262_condition():
            # a1155 # r54262
            $ morteLogic.r54262_action()
            jump morte_dispose


# s554 # say54263
label morte_s554: # from 553.0
    nr '"L„autre TOI, il… il s“intéressait pas à grand monde. À personne. On aurait pu TOUS mourir dans la Forteresse et il aurait pas cillé. Alors… accroche-toi à tes différences, parce que… et ben, j„préfère nettement ce *toi*. TRÈS nettement."{#morte_s554_1}'

    menu:
        '"Mais ce n„est pas tout ce que tu as à dire, n“est-ce pas ?"{#morte_s554_r54264}' if morteLogic.r54264_condition():
            # a1156 # r54264
            jump morte_s556

        '"C„est tout ?"{#morte_s554_r54265}':
            # a1157 # r54265
            jump morte_s556

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s554_r54266}' if morteLogic.r54266_condition():
            # a1158 # r54266
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s554_r54267}' if morteLogic.r54267_condition():
            # a1159 # r54267
            $ morteLogic.r54267_action()
            jump morte_dispose


# s555 # say54268
label morte_s555: # from 553.1
    nr '"Ce que j„veux dire, c“est que malgré ton entêtement, t„as plus d“ESPRIT qu„il en a jamais eu. L“autre TOI, il… il était détaché de tout. Alors… je veux juste que tu gardes ça en tête."{#morte_s555_1}'

    menu:
        '"Mais ce n„est pas tout ce que tu as à dire, n“est-ce pas ?"{#morte_s555_r54269}' if morteLogic.r54269_condition():
            # a1160 # r54269
            jump morte_s556

        '"C„est tout ?"{#morte_s555_r54270}':
            # a1161 # r54270
            jump morte_s556

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s555_r54271}' if morteLogic.r54271_condition():
            # a1162 # r54271
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s555_r54272}' if morteLogic.r54272_condition():
            # a1163 # r54272
            $ morteLogic.r54272_action()
            jump morte_dispose


# s556 # say54273
label morte_s556: # from 554.0 554.1 555.0 555.1
    nr '"Non…" Morte s„interrompt. "Y“a une autre chose - j„ai peut-être pas beaucoup aimé *l“autre*, mais c„était un lascar intelligent - le lascar le plus futé que j“ai jamais rencontré. Il avait tout planifié. S„il est mort à la Forteresse, ça veut dire que… eh bien…"{#morte_s556_1}'

    menu:
        '"Tu ne me crois pas capable de réussir, n„est-ce pas ?"{#morte_s556_r54274}':
            # a1164 # r54274
            jump morte_s557

        '"Peu importe, Morte. Je suis maintenant prêt à franchir ce portail - tu me suis ?"{#morte_s556_r54275}' if morteLogic.r54275_condition():
            # a1165 # r54275
            jump morte_s534

        '"Peu importe, Morte. Adviendra ce qu„il adviendra. Je vais maintenant franchir ce portail."{#morte_s556_r54276}' if morteLogic.r54276_condition():
            # a1166 # r54276
            $ morteLogic.r54276_action()
            jump morte_dispose


# s557 # say54277
label morte_s557: # from 556.0
    nr '"Non…" Morte secoue la tête. "Ce n„est pas ça, chef. Il ne s“agit pas toujours de savoir qui est le plus futé, ou le plus puissant, ou le plus dur… parfois, ça se résume à qui tu es et à ce que tu veux. Bref, jadis, tu as voulu devenir immortel… mais, en fin de compte, est-ce que c„était ce que tu voulais *vraiment* ? Prends bien garde à ce que tu veux, cette fois-ci. Simple conseil."{#morte_s557_1}'

    menu:
        '"Très bien. Écoute, Morte… nous n„avons pas vraiment discuté de ça, mais tu sais que tu n“es pas obligé de venir avec moi, hein ? Je comprendrais très bien que tu ne veuilles pas."{#morte_s557_r54278}' if morteLogic.r54278_condition():
            # a1167 # r54278
            $ morteLogic.r54278_action()
            jump morte_s558

        '"Compris. Si tu as tout dit, allons-y. Tu es prêt ?"{#morte_s557_r54279}' if morteLogic.r54279_condition():
            # a1168 # r54279
            jump morte_s534

        '"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."{#morte_s557_r54280}' if morteLogic.r54280_condition():
            # a1169 # r54280
            $ morteLogic.r54280_action()
            jump morte_dispose


# s558 # say54281
label morte_s558: # from 557.0
    nr '"Ouais… Je sais, chef. Et je peux pas te mentir… Je veux pas y aller… mais je le ferai. Sache seulement qu„une fois qu“on aura passé ce portail, ça ne tiendra plus seulement qu„à *toi*. C“est avec nos vies que tu joues et on retombe pas sur nos pieds quand on meurt."{#morte_s558_1}'

    menu:
        '"Alors pourquoi est-ce que…"{#morte_s558_r54282}' if morteLogic.r54282_condition():
            # a1170 # r54282
            jump grace_s169  # EXTERN

        '"Alors pourquoi est-ce que…"{#morte_s558_r54283}' if morteLogic.r54283_condition():
            # a1171 # r54283
            jump grace_s170  # EXTERN

        '"Alors pourquoi est-ce que…"{#morte_s558_r54284}' if morteLogic.r54284_condition():
            # a1172 # r54284
            jump morte_s562

        '"Alors pourquoi est-ce que…"{#morte_s558_r54285}' if morteLogic.r54285_condition():
            # a1173 # r54285
            jump morte_s563

        '"Alors pourquoi est-ce que…"{#morte_s558_r54286}' if morteLogic.r54286_condition():
            # a1174 # r54286
            jump morte_s564


# s559 # say54762
label morte_s559: # -
    nr 'Morte réplique : "Tu ne sens pas meilleur. À quand remonte ton dernier bain ?"{#morte_s559_1}'

    jump grace_s176  # EXTERN


# s560 # say54763
label morte_s560: # -
    nr 'Morte réplique : "Tu ne sens pas meilleur. À quand remonte ton dernier bain ?"{#morte_s560_1}'

    jump grace_s177  # EXTERN


# s561 # say54764
label morte_s561: # -
    nr 'Morte réplique : "Tu ne sens pas meilleur. À quand remonte ton dernier bain ?"{#morte_s561_1}'

    jump trias_s8  # EXTERN


# s562 # say54831
label morte_s562: # from 558.2
    nr '"C„est ce qu“a dit Ravel dans le dédale… Elle a dit que tu attires les gens qui souffrent, comme un aimant." Morte secoue la tête. "Peut-être que c„est parce que *toi aussi* tu souffres depuis tout ce temps-là. Peut-être que si tu finis par tasser les choses… Peut-être aussi que *nous*, on connaîtra un peu de paix. Peut-être."{#morte_s562_1}'

    menu:
        '"Peut-être, en effet. Alors… tu es avec moi, Morte ?"{#morte_s562_r54832}' if morteLogic.r54832_condition():
            # a1175 # r54832
            jump morte_s534

        '"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."{#morte_s562_r54833}' if morteLogic.r54833_condition():
            # a1176 # r54833
            $ morteLogic.r54833_action()
            jump morte_dispose


# s563 # say54834
label morte_s563: # from 558.3
    nr '"C„est ce qu“a dit Ravel dans le dédale… Et qu„est-ce qu“a dit Fell à propos de ce symbole, le Tourment ? Il paraît que tu attires les gens qui souffrent, comme un aimant." Morte secoue la tête. Peut-être que c„est parce que *toi aussi* tu souffres depuis tout ce temps-là. Peut-être que si tu finis par tasser les choses… Peut-être aussi que *nous*, on connaîtra un peu de paix. Peut-être."{#morte_s563_1}'

    menu:
        '"Peut-être, en effet. Alors… tu es avec moi, Morte ?"{#morte_s563_r54835}' if morteLogic.r54835_condition():
            # a1177 # r54835
            jump morte_s534

        '"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."{#morte_s563_r54836}' if morteLogic.r54836_condition():
            # a1178 # r54836
            $ morteLogic.r54836_action()
            jump morte_dispose


# s564 # say54837
label morte_s564: # from 558.4
    nr '"Je te connais de longue date, chef, et y a *quelque chose* chez toi… Tu attires les gens qui souffrent, comme un aimant." Morte secoue la tête. Peut-être que c„est parce que *toi aussi* tu souffres depuis tout ce temps-là. Peut-être que si tu finis par tasser les choses… Peut-être aussi que *nous*, on connaîtra un peu de paix. Peut-être."{#morte_s564_1}'

    menu:
        '"Peut-être, en effet. Alors… tu es avec moi, Morte ?"{#morte_s564_r54838}' if morteLogic.r54838_condition():
            # a1179 # r54838
            jump morte_s534

        '"Compris; merci pour ton conseil, Morte. Je vais maintenant franchir le portail."{#morte_s564_r54839}' if morteLogic.r54839_condition():
            # a1180 # r54839
            $ morteLogic.r54839_action()
            jump morte_dispose


# s565 # say54840
label morte_s565: # from 548.0
    nr 'Morte devient silencieux.{#morte_s565_1}'

    jump dakkon_s175  # EXTERN


# s566 # say54841
label morte_s566: # -
    nr '"Le crâne, c„était moi." Morte ajoute tranquillement : "La femme était une pauvre fille du nom de Deionarra ; je n“ai jamais connu l„archer…"{#morte_s566_1}'

    jump dakkon_s177  # EXTERN


# s567 # say54842
label morte_s567: # -
    nr '"Ouais…" Morte fait un bruit de ferraille comme s„il tremblait. "Chef, à cette Forteresse… y a des ombres *partout*…"{#morte_s567_1}'

    jump dakkon_s178  # EXTERN


# s568 # say54843
label morte_s568: # -
    nr '"Elles m„ont parlé comme le Pilier des Crânes…" Morte baisse le ton. "Elles *savaient*…"{#morte_s568_1}'

    menu:
        '"Très bien ; écoutez, vous deux : dites-moi tout ce que vous savez à propos de cette forteresse…"{#morte_s568_r54844}':
            # a1181 # r54844
            jump dakkon_s179  # EXTERN


# s569 # say54845
label morte_s569: # -
    nr '"Je peux rien dire d„autre, chef… sauf qu“on sera sûrement divisés dès qu„on arrivera… C“est IMMENSE, et ça grouille d„ombres… Et quelque part dans cette Forteresse, y a quelque chose de plus puissant que *n“importe lequel* d„entre nous."{#morte_s569_1}'

    jump dakkon_s182  # EXTERN


# s570 # say54846
label morte_s570: # -
    nr '" Je peux rien dire d„autre, chef… sauf que quand on entre là-dedans, on se trouve divisés dès qu“on arrive… C„est IMMENSE, et ça grouille d“ombres… Et quelque part dans cette Forteresse, y a quelque chose de plus puissant que tout ce qu„on peut imaginer."{#morte_s570_1}'

    jump dakkon_s182  # EXTERN


# s571 # say55832
label morte_s571: # -
    nr '"Chef, on court droit aux ennuis… Ce modrone est devenu un renégat."{#morte_s571_1}'

    menu:
        '"Renégat ?"{#morte_s571_r55833}':
            # a1182 # r55833
            jump morte_s572


# s572 # say55834
label morte_s572: # from 571.0
    nr '"Ouais, tu vois, des fois, les modrones sont un peu chamboulés par le chaos, et quand ça arrive… Oh, la *meilleure* explication, c„est sans doute que ces modrones renégats sont plus ou moins… des modrones à l“envers."{#morte_s572_1}'

    menu:
        '"Alors, c„est un… modrone à l“envers ?"{#morte_s572_r55836}':
            # a1183 # r55836
            jump nordom_s21  # EXTERN


# s573 # say55837
label morte_s573: # -
    nr '"Chef, c„est très amusant tout ça, mais essayer d“enlever un tabouret de bar de sous les fesses d„un baatezu, ça vaudrait encore mieux que de branler notre râtelier avec cet idiot de polygone."{#morte_s573_1}'

    menu:
        '"Dis, tu sais ce que c„est des esprits d“engrenage, Morte ?"{#morte_s573_r55839}':
            # a1184 # r55839
            jump morte_s574


# s574 # say55841
label morte_s574: # from 573.0
    nr '"Chef, je vois pas ce que ce cube veut dire avec tout son boucan."{#morte_s574_1}'

    menu:
        '"Je te croyais l„*expert* des plans."{#morte_s574_r55842}':
            # a1185 # r55842
            jump morte_s575

        '"D„accord. Nordom, j“ai encore quelques questions à te poser…"{#morte_s574_r55843}':
            # a1186 # r55843
            jump nordom_s74  # EXTERN

        '"C„est bon, laisse tomber. Perdons pas de temps."{#morte_s574_r55844}':
            # a1187 # r55844
            jump morte_dispose


# s575 # say55845
label morte_s575: # from 574.0
    nr '"Qu… J„en sais plus que *toi*, espèce d“amnésique bégayant ! „Tiens, voilà trois infos de plus à fourrer dans ta p“tite boîte grise vide : un, y a PAS d„experts sur les plans, deux, c“est moi qui suis le plus proche de ce que tu cherches, et trois, je te conseille d„être poli avec moi. Pourquoi ? Voir la deuxième raison."{#morte_s575_1}'

    menu:
        '"D„accord. Nordom, j“ai encore quelques questions à te poser…"{#morte_s575_r55846}':
            # a1188 # r55846
            jump nordom_s74  # EXTERN

        '"C„est bon, laisse tomber. Perdons pas de temps."{#morte_s575_r55847}':
            # a1189 # r55847
            jump morte_dispose


# s576 # say55848
label morte_s576: # -
    nr '"Méchanus ? Rasoir dans tous les sens du terme, chef. Imagine un plan rempli de modrones et de gros engrenages qui tournent… Et tu as le magnifique et PASSIONNANT plan de Méchanus. Trop de lois, trop tatillon. Un endroit qui viendrait même pas à l„idée, surtout pas pour le visiter."{#morte_s576_1}'

    if morteLogic.s576_condition():
        $ morteLogic.s576_action()
        jump grace_s184  # EXTERN
    menu:
        '"Nordom, qu„est-ce que tu entendais tout à l“heure par „origine nulle“ ?"{#morte_s576_r55849}' if morteLogic.r55849_condition():
            # a1190 # r55849
            jump nordom_s65  # EXTERN

        '"Peu importe, Morte. J„en ai assez entendu. Allons-y."{#morte_s576_r55850}' if morteLogic.r55850_condition():
            # a1191 # r55850
            jump morte_dispose


# s577 # say55855
label morte_s577: # -
    nr '"Excuse-MOI mademoiselle la Prêtresse de Piété, mais Méchanus EST l„endroit le plus rasoir de l“univers… La seule chose qui pourrait le rendre intéressant, ce serait *ta* visite…" Morte lève les yeux au ciel. "Mais j„ai le sentiment que même *ça*, ça perdrait de son charme au bout d“un moment."{#morte_s577_1}'

    menu:
        '"Nordom, qu„est-ce que tu entendais tout à l“heure par „origine nulle“ ?"{#morte_s577_r55857}':
            # a1192 # r55857
            jump nordom_s65  # EXTERN

        '"Peu importe, Morte. J„en ai assez entendu. Allons-y."{#morte_s577_r55858}':
            # a1193 # r55858
            jump morte_dispose


# s578 # say55860
label morte_s578: # -
    nr '"Tous les modrones font partie de ce „bassin“, chef, une sorte de grosse banque d„énergie… Quand y a un modrone qui meurt, l“énergie qu„il a fallu pour le faire est récupérée dans la banque et un nouveau émerge. Le problème… c“est que si un modrone pète un peu les plombs, il coupe en quelque sorte ce lien, mais conserve un peu d„énergie."{#morte_s578_1}'

    if morteLogic.s578_condition():
        jump grace_s186  # EXTERN
    menu:
        '"Alors… Nordom, ce Méchanus est une source d„énergie ?{#morte_s578_r55862}':
            # a1194 # r55862
            jump nordom_s67  # EXTERN

        '"Je vois. Nordom, j„ai encore quelques questions à te poser…"{#morte_s578_r55864}':
            # a1195 # r55864
            jump nordom_s74  # EXTERN

        '"C„est tout ce que je voulais savoir. Perdons pas de temps."{#morte_s578_r55865}':
            # a1196 # r55865
            jump morte_dispose


# s579 # say55867
label morte_s579: # -
    nr 'Morte foudroie Tombée-en-Disgrâce du regard. "Cela ne te *gêne* pas ? La réponse était complète, merci. C„est *moi* la source d“informations ici, PAS toi, d„accord ?"{#morte_s579_1}'

    jump grace_s187  # EXTERN


# s580 # say55870
label morte_s580: # -
    nr '"Oh, *je* vois ! Peut-être que si j„étais une succube, tu prêterais plus d“attention à MES paroles, c„est ça ? Peut-être que si je montrais un petit morceau de peau de temps à autre, j“aurais le droit au respect, hein ? Tout cela est bien superficiel, chef ! Tiens, je devrais…"{#morte_s580_1}'

    jump grace_s191  # EXTERN


# s581 # say55871
label morte_s581: # -
    nr 'NŒUD NUL{#morte_s581_1}'

    jump morte_dispose


# s582 # say55873
label morte_s582: # -
    nr '"Voyez-vous ça ! T„as entendu, chef ?! Ce que la succube a dit ? Elle a raison. Je suis plus facile à comprendre… je “connais mieux la chanson„, tu vois ce que je veux dire ? Si je ne m“abuse, vous avez besoin de mes services ?"{#morte_s582_1}'

    menu:
        '"D„accord, et j“ai donc encore une question : vous dites tous les deux que Nordom fait partie de cette Source mais qu„il en est coupé. Et quand un modrone meurt, il est réabsorbé. Nordom aussi ?"{#morte_s582_r55875}' if morteLogic.r55875_condition():
            # a1197 # r55875
            jump morte_s583

        '"Je n„ai jamais dit le contraire, Morte. Alors… Nordom, cette source d“énergie dont tu as parlé… elle vient de Méchanus "{#morte_s582_r55876}':
            # a1198 # r55876
            jump nordom_s67  # EXTERN

        '"D„accord.  Nordom, j“ai encore quelques questions à te poser…"{#morte_s582_r55877}':
            # a1199 # r55877
            jump nordom_s74  # EXTERN

        '"C„est tout ce que je voulais savoir. Perdons pas de temps."{#morte_s582_r55879}':
            # a1200 # r55879
            jump morte_dispose


# s583 # say55882
label morte_s583: # from 582.0
    nr 'Morte fait „oui“ de la tête.{#morte_s583_1}'

    menu:
        '"Et s„il meurt, un autre Nordom est créé."{#morte_s583_r55884}':
            # a1201 # r55884
            jump morte_s584


# s584 # say55886
label morte_s584: # from 583.0
    nr '"Euh… non."{#morte_s584_1}'

    menu:
        '"Alors, que se passe-t-il ?"{#morte_s584_r55887}':
            # a1202 # r55887
            jump morte_s585


# s585 # say55890
label morte_s585: # from 584.0
    nr '"Et bien, ils prendront son énergie, chef, et ils cracheront un autre modrone, mais ce ne sera pas Nordom, parce que ce n„est plus *vraiment* un modrone ; il a en lui trop de choses des plans. Ils feront un remplaçant non-Nordom."{#morte_s585_1}'

    menu:
        '"Alors… en devenant renégat, il est devenu… mortel ?"{#morte_s585_r55892}':
            # a1203 # r55892
            jump morte_s586

        '"D„accord.  Nordom, j“ai encore quelques questions à te poser…"{#morte_s585_r55894}':
            # a1204 # r55894
            jump nordom_s74  # EXTERN

        '"C„est tout ce que je voulais savoir. Perdons pas de temps."{#morte_s585_r55895}':
            # a1205 # r55895
            jump morte_dispose


# s586 # say55897
label morte_s586: # from 585.0
    nr 'Morte se tait un instant. "Ma foi… oui, on peut voir les choses comme ça. Je veux dire, s„il n“avait pas eu sa petite rébellion de renégat, il serait parfait… S„il mourait, un autre modrone apparaîtrait, exactement comme lui. Mais comme il est maintenant “à l„envers“… eh bien, cette partie va être perdue quand il mourra."{#morte_s586_1}'

    menu:
        '"D„accord.  Nordom, j“ai encore quelques questions à te poser…"{#morte_s586_r55898}':
            # a1206 # r55898
            jump nordom_s74  # EXTERN

        '"C„est tout ce que je voulais savoir. Perdons pas de temps."{#morte_s586_r55900}':
            # a1207 # r55900
            jump nordom_s74  # EXTERN


# s587 # say55901
label morte_s587: # -
    nr '"Aïïïïïïeee ! Pour l„amour des Puissances et de ma raison, arrête ! Il va péter une manivelle si tu continues à lui demander ça !"{#morte_s587_1}'

    menu:
        '"C„est un peu *ça* le but de l“opération, Morte."{#morte_s587_r55902}':
            # a1208 # r55902
            $ morteLogic.r55902_action()
            jump morte_s588

        '"Euh, je voulais connaître la réponse, et il commençait à me la donner."{#morte_s587_r55905}':
            # a1209 # r55905
            jump morte_s589

        '"Peu importe. J„ai encore quelques questions à poser à Nordom…"{#morte_s587_r55906}':
            # a1210 # r55906
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."{#morte_s587_r55907}':
            # a1211 # r55907
            jump morte_dispose


# s588 # say55909
label morte_s588: # from 587.0
    nr '"Oh." Morte sourit de toutes ses dents. "Tu aurais pu DIRE quelque chose. Bref, poursuis. Bien sûr…" Morte fait *cliqueter* ses dents, imitant Nordom. "Si tu veux savoir des choses sur les modrones, demande-MOI."{#morte_s588_1}'

    menu:
        '"D„accord, Morte… Que peux-tu me dire des modrones ?"{#morte_s588_r55910}':
            # a1212 # r55910
            jump morte_s590

        '"Peu importe. J„ai encore quelques questions à poser à Nordom…"{#morte_s588_r55912}':
            # a1213 # r55912
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."{#morte_s588_r55913}':
            # a1214 # r55913
            jump morte_dispose


# s589 # say55914
label morte_s589: # from 587.1
    nr '"Écoute, chef, les modrones NORMAUX comprennent quasiment rien au-delà de leurs tâches élémentaires, et cet idiot de polygone sort tout droit des plans. Alors, va pas embrouiller le cube, d„accord ? Du moins, pas tant qu“il est armé. Si t„as des questions sur les modrones, demande-moi, pas à lui."{#morte_s589_1}'

    menu:
        '"D„accord, Morte… Que peux-tu me dire des modrones ?"{#morte_s589_r55915}':
            # a1215 # r55915
            jump morte_s590

        '"Peu importe. J„ai encore quelques questions à poser à Nordom…"{#morte_s589_r55917}':
            # a1216 # r55917
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."{#morte_s589_r55918}':
            # a1217 # r55918
            jump morte_dispose


# s590 # say55921
label morte_s590: # from 588.0 589.0
    nr '"C„est comme ça, chef : les modrones sont ces formes géométriques idiotes qui se déplacent avec un bruit de ferraille sur leur plan d“origine, Méchanus… Des as du rangement, de l„ordre, qui voudraient rendre le RESTE du multivers à leur image. C“est pour ça qu„ils sont tellement nuisibles."{#morte_s590_1}'

    menu:
        '"Quel mal y a-t-il à vouloir mettre de l„ordre dans le multivers ?"{#morte_s590_r55923}':
            # a1218 # r55923
            jump morte_s592

        '"Qu„est-ce que c“est, Méchanus ?"{#morte_s590_r55925}':
            # a1219 # r55925
            $ morteLogic.r55925_action()
            jump morte_s591

        '"Peu importe. J„ai encore quelques questions à poser à Nordom…"{#morte_s590_r55926}':
            # a1220 # r55926
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."{#morte_s590_r55928}':
            # a1221 # r55928
            jump morte_dispose


# s591 # say55930
label morte_s591: # from 590.1
    nr '"C„est le plan d“où viennent tous ces automates. Pose-lui la question, tu vas voir sa réponse. C„est leur foyer, c“est là qu„ils passent leur temps à ranger, à briquer… Et que je te catalogue, et que je te mette *ça* et puis *ça* en ordre, et que je te fasse une loi, et cetera et cetera."{#morte_s591_1}'

    menu:
        'Vérité : "Noble objectif, ce me semble ! Quel mal y a-t-il à vouloir mettre de l„ordre dans le multivers ?"{#morte_s591_r55931}':
            # a1222 # r55931
            $ morteLogic.r55931_action()
            jump morte_s592

        '"Ça n„a pas l“air de te réjouir outre mesure."{#morte_s591_r55935}':
            # a1223 # r55935
            jump morte_s592

        '" J„ai encore quelques questions à poser à Nordom…"{#morte_s591_r55936}':
            # a1224 # r55936
            jump nordom_s74  # EXTERN

        '"Laisse tomber. Perdons pas de temps."{#morte_s591_r55937}':
            # a1225 # r55937
            jump morte_dispose


# s592 # say55938
label morte_s592: # from 590.0 591.0 591.1
    nr 'Morte jette un coup d„œil à Nordom, qui lève son arbalète gauche à hauteur de la tête, comme s“il l„écoutait.{#morte_s592_1}'

    jump morte_s593


# s593 # say55940
label morte_s593: # from 592.0
    nr '"Parce que, chef, le chaos a sa juste place. Si tout était comme un *modrone* voit les choses, ce serait pas vraiment une vie… En tout cas, pas une vie que j„aurais envie de vivre. Ce qu“ils veulent, c„est tout *structurer*. Pouahhh."{#morte_s593_1}'

    menu:
        'Vérité : "Entièrement d„accord ; le chaos a sa place… trop de lois et on stagnerait tous. Dis, j“ai encore quelques questions à poser à Nordom…"{#morte_s593_r55941}':
            # a1226 # r55941
            $ morteLogic.r55941_action()
            jump nordom_s74  # EXTERN

        '"Je vois. Dis, j„ai encore quelques questions pour Nordom…"{#morte_s593_r55942}':
            # a1227 # r55942
            jump nordom_s74  # EXTERN

        '"D„accord, d“accord. Perdons pas de temps."{#morte_s593_r55944}':
            # a1228 # r55944
            jump morte_dispose


# s594 # say56029
label morte_s594: # -
    nr '"*J„aime* son odeur. Un délice."{#morte_s594_1}'

    jump fhjull_s27  # EXTERN


# s595 # say56030
label morte_s595: # -
    nr '"Minute, chef… Baator, ça sent MAUVAIS. Ce fiélon nous cache certainement quelque chose… Et même s„il y a un “Pilier des Crânes„, y aura bien quelqu“un d„autre qui sait comment atteindre la Forteresse *sans* passer par l“un des plus dangereux plans du multivers."{#morte_s595_1}'

    menu:
        '"Quels sont tes desseins, Langue-fourchue ?"{#morte_s595_r56031}':
            # a1229 # r56031
            jump fhjull_s88  # EXTERN

        '"Pourquoi tu veux pas aller là-bas, Morte ?"{#morte_s595_r56032}':
            # a1230 # r56032
            jump morte_s596


# s596 # say56033
label morte_s596: # from 595.1
    nr '"C„est un lieu dangereux, chef. J“aimerais autant pas y aller. Je connais déjà et c„est pas beau. Compris ?"{#morte_s596_1}'

    menu:
        '"Nous parlerons de ça plus tard, Langue-fourchue, j„ai quelques questions…"{#morte_s596_r56034}':
            # a1231 # r56034
            jump fhjull_s46  # EXTERN


# s597 # say56936
label morte_s597: # -
    nr '"Ce type est *partout* !"{#morte_s597_1}'

    menu:
        '"Oui, mais il nous a aidés. Allons-y."{#morte_s597_r56937}':
            # a1232 # r56937
            jump morte_dispose


# s598 # say59827
label morte_s598: # -
    nr '(NULL NODE){#morte_s598_1}'

    jump morte_dispose


# s599 # say60950
label morte_s599: # -
    nr '"Hé, c„est pas si mal d“être mort. Vois le bon côté des choses… au moins, tu n„as plus à t“exprimer avec ce charabia ridicule."{#morte_s599_1}'

    menu:
        '"Du calme, Morte. Je vais m„en occuper. Tu peux me dire ce qui s“est passé ?"{#morte_s599_r61111}':
            # a1233 # r61111
            jump morte_dispose

        '"Laisse tomber. Je vais te laisser tranquille."{#morte_s599_r61112}':
            # a1234 # r61112
            jump morte_dispose


# s600 # say61408
label morte_s600: # -
    nr '"Euh… dis donc, chef… qu„est-ce que tu en penses ? Tu prêterais un peu de jonc au vieux Morte ? Ça fait un sacré bout de temps, tu sais…"{#morte_s600_1}'

    menu:
        '"Oui, pourquoi pas ? Mademoiselle ?"{#morte_s600_r61411}' if morteLogic.r61411_condition():
            # a1235 # r61411
            jump ucho_s9  # EXTERN

        '"Navré, Morte. On n„a pas assez de cuivre. Allons-y."{#morte_s600_r61412}' if morteLogic.r61412_condition():
            # a1236 # r61412
            jump morte_dispose

        '"Il faut qu„on y aille, Morte. Au revoir, mademoiselle."{#morte_s600_r61413}':
            # a1237 # r61413
            jump morte_dispose


# s601 # say61409
label morte_s601: # -
    nr '"Entendu ! Merci, chef !" Il se détourne pour suivre la femme.{#morte_s601_1}'

    menu:
        'Attends son retour.{#morte_s601_r61414}':
            # a1238 # r61414
            $ morteLogic.r61414_action()
            jump ucho_s10  # EXTERN


# s602 # say61410
label morte_s602: # -
    nr 'Morte paraît à peine remarquer ta présence ; il alterne entre des petits rires et des soupirs satisfaits.{#morte_s602_1}'

    menu:
        '"Entendu… Je gage que tout s„est bien passé. Au revoir, mademoiselle."{#morte_s602_r61415}':
            # a1239 # r61415
            jump morte_dispose


# s603 # say61481
label morte_s603: # -
    nr '"Moi ? Je suis la tête de Vecna."~ [MRT562]{#morte_s603_1}'

    $ morteLogic.s603_action()
    jump morte_dispose


# s604 # say61482
label morte_s604: # -
    nr '"Les dieux sont miséricordieux !"~ [MRT485]{#morte_s604_1}'

    $ morteLogic.s604_action()
    jump morte_dispose


# s605 # say61483
label morte_s605: # -
    nr '"C„est une longue histoire dans laquelle la Tête de Vecna joue un rôle. Je ne veux pas en parler."~ [MRT559A]{#morte_s605_1}'

    jump grace_s3  # EXTERN


# s606 # say61484
label morte_s606: # -
    nr '"Est-ce qu„on ne pourrait pas *changer* de sujet ? Merci."~ [MRT559B]{#morte_s606_1}'

    $ morteLogic.s606_action()
    jump morte_dispose


# s607 # say61485
label morte_s607: # -
    nr '"Moi ? *lé pétit Morté*."~ [MRT560]{#morte_s607_1}'

    $ morteLogic.s607_action()
    jump morte_dispose


# s608 # say61486
label morte_s608: # -
    nr '"Que dire ? Je suis un *Mémento Morte*."~ [MRT561]{#morte_s608_1}'

    $ morteLogic.s608_action()
    jump morte_dispose


# s609 # say61487
label morte_s609: # -
    nr '"À condition de pouvoir poser ma tête sur tes coussins."~ [MRT486A]{#morte_s609_1}'

    jump grace_s7  # EXTERN


# s610 # say61488
label morte_s610: # -
    nr '"Rien ! Rien du tout. Du tout."~ [MRT486B]{#morte_s610_1}'

    $ morteLogic.s610_action()
    jump morte_dispose


# s611 # say61489
label morte_s611: # -
    nr '"Arf ! Arf ! Hi ! Hi ! Hi !"~ [MRT484]{#morte_s611_1}'

    $ morteLogic.s611_action()
    jump morte_dispose


# s612 # say62890
label morte_s612: # -
    nr '"C„est une tanar“ri… une succube, chef."{#morte_s612_1}'

    jump grace_s213  # EXTERN


# s613 # say63454
label morte_s613: # -
    nr '"Je ne peux me tenir sur rien. Rapport aux jambes, tu vois."~ [MRT482]{#morte_s613_1}'

    jump annah_s1  # EXTERN


# s614 # say63455
label morte_s614: # -
    nr '"Je pensais que tu étais belle, mais je me trompais."~ [MRT483]{#morte_s614_1}'

    jump annah_s3  # EXTERN


# s615 # say63456
label morte_s615: # -
    nr '"J„ai cessé de respirer la première fois que je t“ai vue, fiélonne."~ [MRT524]{#morte_s615_1}'

    $ morteLogic.s615_action()
    jump morte_dispose


# s616 # say63457
label morte_s616: # -
    nr '"Tu sais, j„ai un NOM."~ [MRT526]{#morte_s616_1}'

    jump annah_s6  # EXTERN


# s617 # say63458
label morte_s617: # -
    nr '"Tiens, c„est intéressant que tu en parles… pas plus tard que l“autre jour, je leur ai demandé combien ils m„offriraient pour toi."~ [MRT531]{#morte_s617_1}'

    jump annah_s8  # EXTERN


# s618 # say63459
label morte_s618: # -
    nr '"Tu sais, tu serais tellement plus charmante si tu te taisais."~ [MRT530]{#morte_s618_1}'

    jump annah_s10  # EXTERN


# s619 # say63460
label morte_s619: # -
    nr '"Mais mon cœur est déjà à toi, fiélonne."~ [MRT532]{#morte_s619_1}'

    jump annah_s12  # EXTERN


# s620 # say63462
label morte_s620: # -
    nr '"Il y a pire manière de s„en aller."~ [MRT525]{#morte_s620_1}'

    $ morteLogic.s620_action()
    jump morte_dispose


# s621 # say63463
label morte_s621: # -
    nr '"Tu sais, *tu* es en partie fiélon."~ [MRT533A]{#morte_s621_1}'

    jump annah_s15  # EXTERN


# s622 # say63464
label morte_s622: # -
    nr '"De là où je flotte, elle a l„air bien."~ [MRT533B]{#morte_s622_1}'

    $ morteLogic.s622_action()
    jump morte_dispose


# s623 # say63666
label morte_s623: # -
    nr '"J„ai remarqué. Pourquoi ne fais-tu pas part de ton intuition au chef, hein ?"~ [MRT563]{#morte_s623_1}'

    $ morteLogic.s623_action()
    jump morte_dispose


# s624 # say63667
label morte_s624: # -
    nr '"Flatulence, stupide polygone."~ [MRT468A]{#morte_s624_1}'

    jump nordom_s2  # EXTERN


# s625 # say63668
label morte_s625: # -
    nr '"Alors, pourquoi n„essaies-tu pas d“être plus „efficace“ dès maintenant, le super polygone."~ [MRT469A]{#morte_s625_1}'

    $ morteLogic.s625_action()
    jump morte_dispose


# s626 # say63669
label morte_s626: # -
    nr '"Je, euh, je n„ai jamais dit ça !"~ [MRT470B]{#morte_s626_1}'

    jump annah_s315  # EXTERN


# s627 # say63670
label morte_s627: # -
    nr '"Annah porte-t-elle encore des vêtements ?"~ [MRT565A]{#morte_s627_1}'

    jump nordom_s6  # EXTERN


# s628 # say63671
label morte_s628: # -
    nr '"Alors, la réponse est oui."~ [MRT565B]{#morte_s628_1}'

    $ morteLogic.s628_action()
    jump morte_dispose


# s629 # say63672
label morte_s629: # -
    nr '"Tu vas bientôt en avoir dix-neuf si tu ne fermes pas ton clapet."~ [MRT564]{#morte_s629_1}'

    $ morteLogic.s629_action()
    jump morte_dispose


# s630 # say63673
label morte_s630: # -
    nr '"Si cela signifie que tu obéisses à chacun de mes ordres sans poser de question, alors la réponse est oui."~ [MRT569A]{#morte_s630_1}'

    jump nordom_s9  # EXTERN


# s631 # say63674
label morte_s631: # -
    nr '"Bienvenue sur les plans, gamin."~ [MRT569B]{#morte_s631_1}'

    $ morteLogic.s631_action()
    jump morte_dispose


# s632 # say63675
label morte_s632: # -
    nr '"Tombée-en-Disgrâce est-elle nue ?"~ [MRT568A]{#morte_s632_1}'

    jump nordom_s11  # EXTERN


# s633 # say63676
label morte_s633: # -
    nr '"Alors, la réponse à ta question est oui."~ [MRT568B]{#morte_s633_1}'

    $ morteLogic.s633_action()
    jump morte_dispose


# s634 # say63677
label morte_s634: # -
    nr '"Annah, Tombée-en-Disgrâce et moi-même nous baignant dans un bain de boue Cimmérien."~ [MRT571A]{#morte_s634_1}'

    jump nordom_s13  # EXTERN


# s635 # say63678
label morte_s635: # -
    nr '"Hé. Certaines personnes lisent les dictionnaires, d„autres les écrivent."~ [MRT572B]{#morte_s635_1}'

    $ morteLogic.s635_action()
    jump morte_dispose


# s636 # say63679
label morte_s636: # -
    nr '"Annah, une bouteille d„ambre de feu de Furyondie et une suite à la Salle des Fêtes."~ [MRT573]{#morte_s636_1}'

    jump nordom_s15  # EXTERN


# s637 # say63680
label morte_s637: # -
    nr '"Oh, la *ferme* !"~ [MRT471D]{#morte_s637_1}'

    jump nordom_s17  # EXTERN


# s638 # say63681
label morte_s638: # -
    nr '"Va donc embêter quelqu„un d“autre, espèce de stupide boîte à calcul."~ [MRT576A]{#morte_s638_1}'

    jump nordom_s19  # EXTERN


# s639 # say63682
label morte_s639: # -
    nr '"Je ne sais pas, d„accord ? Il est juste… il est… tu sais… il est parti."~ [MRT576B]{#morte_s639_1}'

    jump nordom_s20  # EXTERN


# s640 # say63683
label morte_s640: # -
    nr '"Je vais te montrer, si tu ne fermes pas ton clapet."~ [MRT576C]{#morte_s640_1}'

    $ morteLogic.s640_action()
    jump morte_dispose


# s641 # say63684
label morte_s641: # -
    nr '"Va donc embrasser un piège à ours."~ [MRT575A]{#morte_s641_1}'

    jump grace_s373  # EXTERN


# s642 # say63685
label morte_s642: # -
    nr '"Crois-moi, Annah aurait bien besoin d„un baiser."~ [MRT575B]{#morte_s642_1}'

    $ morteLogic.s642_action()
    jump morte_dispose


# s643 # say63686
label morte_s643: # -
    nr '::il siffle innocemment::~ [MRT472A]{#morte_s643_1}'

    $ morteLogic.s643_action()
    jump morte_dispose


# s644 # say63688
label morte_s644: # -
    nr '"Personne ! Personne ne lui a dit !"~ [MRT473D]{#morte_s644_1}'

    $ morteLogic.s644_action()
    jump morte_dispose


# s645 # say63689
label morte_s645: # -
    nr '"C„est purement volontaire de leur part, espèce d“idiot. Euh… pour ce que j„en sais."~ [MRT577]{#morte_s645_1}'

    $ morteLogic.s645_action()
    jump morte_dispose


# s646 # say63858
label morte_s646: # -
    nr '"Fais-moi confiance, tu ne l„as jamais rencontré."~ [MRT475AA]{#morte_s646_1}'

    jump vhailor_s1  # EXTERN


# s647 # say64990
label morte_s647: # -
    nr '"Une minute, chef… regarde un peu ça." Tu baisses les yeux et remarques des traces de pas boueuses qui mènent à l„arche… et ne la contournent pas. "Il y a certainement un portail ici, ou quelque chose de ce genre."{#morte_s647_1}'

    menu:
        '"Un portail ? Comment l„ouvrir ?"{#morte_s647_r64991}':
            # a1240 # r64991
            jump morte_s648

        '"Peut-être. En route."{#morte_s647_r64993}':
            # a1241 # r64993
            jump morte_dispose


# s648 # say64992
label morte_s648: # from 647.0
    nr '"J„en sais rien, chef. J“imagine que c„est une clé commune : regarde comme ce passage est emprunté ! Peut-être que la plèbe qui vit ici pourrait te renseigner…"{#morte_s648_1}'

    menu:
        '"Je vais demander. En route."{#morte_s648_r64994}':
            # a1242 # r64994
            jump morte_dispose


# s649 # say65552
label morte_s649: # from 329.0 729.0
    nr '"Oh, *allez* chef. Ne me dis pas que tu as encore oublié."{#morte_s649_1}'

    menu:
        '"Il faut juste que je me rafraîchisse la mémoire."{#morte_s649_r65553}':
            # a1243 # r65553
            jump morte_s650

        '"Non, je pense que je veux écouter *toute* l„histoire cette fois. Vas-y, rafraîchis ma mémoire."{#morte_s649_r65554}' if morteLogic.r65554_condition():
            # a1244 # r65554
            jump morte_s650

        '"Bon, peu importe. J„ai d“autres questions…"{#morte_s649_r65555}':
            # a1245 # r65555
            jump morte_s329

        '"Alors laisse tomber. On y va."{#morte_s649_r65556}':
            # a1246 # r65556
            jump morte_dispose


# s650 # say65557
label morte_s650: # from 649.0 649.1
    nr '"Quelque chose me dit que je vais entendre ÇA souvent." Morte s„éclaircit la voix. "Voyons…"  “Je sais que tu as l„impression d“avoir bu plusieurs barils d„eau du Styx, mais il faut te RESSAISIR. Parmi tes biens, tu dois avoir un JOURNAL qui pourra éclaircir le soltif de cette affaire. PHAROD devrait pouvoir te donner les dernières notes de la chanson, s“il n„est pas déjà inscrit dans le livre des morts.“{#morte_s650_1}'

    menu:
        '"Pharod… hmmm. Continue."{#morte_s650_r65558}' if morteLogic.r65558_condition():
            # a1247 # r65558
            jump morte_s651

        '"Continue."{#morte_s650_r65559}' if morteLogic.r65559_condition():
            # a1248 # r65559
            jump morte_s651

        '"Peu importe. J„ai d“autres questions…"{#morte_s650_r65560}':
            # a1249 # r65560
            jump morte_s329

        '"Laisse. J„en ai assez entendu. On y va."{#morte_s650_r65561}':
            # a1250 # r65561
            jump morte_dispose


# s651 # say65562
label morte_s651: # from 650.0 650.1
    nr '"Oui, oui, attends." Morte s„interrompt un instant. "D“accord, voilà la fin…"  „Ne perds pas le journal ou on se retrouvera encore à traverser le Styx. Et quoi que tu fasses, NE raconte à personne QUI tu es et CE qui t“arrive, ou on t„enverra faire un rapide pèlerinage vers le crématorium. Fais ce que je te dis : LIS le journal, puis TROUVE Pharod.“{#morte_s651_1}'

    if morteLogic.s651_condition():
        jump morte_s653
    menu:
        '"Continue. Qu„est-ce que ça dit après ?"{#morte_s651_r65566}' if morteLogic.r65566_condition():
            # a1251 # r65566
            jump morte_s652

        '"Et il n„y avait pas de journal sur moi quand je me suis réveillé ?"{#morte_s651_r65565}' if morteLogic.r65565_condition():
            # a1252 # r65565
            jump morte_s682

        '"Bon, très bien. J„ai d“autres questions…"{#morte_s651_r65567}':
            # a1253 # r65567
            jump morte_s329

        '"Laisse. J„en ai assez entendu. On y va."{#morte_s651_r65568}':
            # a1254 # r65568
            jump morte_dispose


# s652 # say65563
label morte_s652: # from 651.1
    nr '"De quoi tu parles, chef ? C„est tout."{#morte_s652_1}'

    menu:
        '"Et pour „Ne fais pas confiance au crâne“ ?"{#morte_s652_r65569}' if morteLogic.r65569_condition():
            # a1255 # r65569
            $ morteLogic.r65569_action()
            jump morte_s654

        '"Et pour „Ne fais pas confiance au crâne“ ?"{#morte_s652_r65570}' if morteLogic.r65570_condition():
            # a1256 # r65570
            jump morte_s654

        '"Bon, peu importe. J„ai d“autres questions…"{#morte_s652_r65571}':
            # a1257 # r65571
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s652_r65572}':
            # a1258 # r65572
            jump morte_dispose


# s653 # say65564
label morte_s653: # from 651.0
    nr '"Et bien sûr, cette partie à la fin qui parle de ne pas faire confiance aux crânes."{#morte_s653_1}'

    menu:
        '"As ton avis, que signifie cette partie ? Tu penses qu„il s“agit de *toi* ?"{#morte_s653_r65574}':
            # a1259 # r65574
            jump morte_s655

        '"Bon, peu importe. J„ai d“autres questions…"{#morte_s653_r65575}':
            # a1260 # r65575
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s653_r65576}':
            # a1261 # r65576
            jump morte_dispose


# s654 # say65577
label morte_s654: # from 329.4 652.0 652.1 729.4
    nr '"Oh… *cette* partie à la fin ? Bah, je me suis dit que ce n„était pas important et je n“ai donc pas lu la ligne à voix haute."{#morte_s654_1}'

    menu:
        '"Oh, vraiment ? Et à ton avis, qu„est-ce que ça signifie ? Tu penses qu“il s„agit de *toi* ?"{#morte_s654_r65578}':
            # a1262 # r65578
            jump morte_s655

        '"Bon, peu importe. J„ai d“autres questions…"{#morte_s654_r65579}':
            # a1263 # r65579
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s654_r65580}':
            # a1264 # r65580
            jump morte_dispose


# s655 # say65581
label morte_s655: # from 653.0 654.0
    nr '"Ça m„étonnerait. J“veux dire, tu peux *me* faire confiance, n„est-ce pas, chef ?"{#morte_s655_1}'

    menu:
        '"Serais-tu en train de me *mentir*, Morte ?"{#morte_s655_r65582}':
            # a1265 # r65582
            jump morte_s656

        '"Bon, peu importe. J„ai d“autres questions…"{#morte_s655_r65583}':
            # a1266 # r65583
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s655_r65584}':
            # a1267 # r65584
            jump morte_dispose


# s656 # say65585
label morte_s656: # from 655.0
    nr '"Non ! Allez, c„est quoi ton problème, chef ? Je n“ai jamais été de mauvais conseil jusqu„ici."{#morte_s656_1}'

    menu:
        '"*Pas encore…* Tu ne m„as pas lu cette ligne et je n“aime pas ça ; et je voudrais savoir ce que tu as *encore* négligé de mentionner depuis que nous voyageons ensemble."{#morte_s656_r65587}':
            # a1268 # r65587
            jump morte_s657

        '"Bon, peu importe. J„ai d“autres questions…"{#morte_s656_r65586}':
            # a1269 # r65586
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s656_r65588}':
            # a1270 # r65588
            jump morte_dispose


# s657 # say65589
label morte_s657: # from 656.0
    nr '"Rien ! Je t„ai tout dit… enfin, PRESQUE tout, mais rien de *dangereux*, tu sais."{#morte_s657_1}'

    menu:
        '"S„il y a QUELQUE CHOSE d“autre, je pense qu„il vaut mieux que tu me le dises tout de suite."{#morte_s657_r65590}':
            # a1271 # r65590
            jump morte_s658

        '"Bon, peu importe. J„ai d“autres questions…"{#morte_s657_r65591}':
            # a1272 # r65591
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s657_r65592}':
            # a1273 # r65592
            jump morte_dispose


# s658 # say65593
label morte_s658: # from 657.0
    nr '"Chef, sérieusement, il n„y a rien d“autre. Je ne te cache rien."{#morte_s658_1}'

    menu:
        '"Bon, très bien, Morte. J„ai d“autres questions…"{#morte_s658_r65594}':
            # a1274 # r65594
            jump morte_s329

        '"J„espère que non. Allons-y."{#morte_s658_r65595}':
            # a1275 # r65595
            jump morte_dispose


# s659 # say65596
label morte_s659: # from 329.1 729.1
    nr '"Sigil est une ville en forme d„anneau située au sommet d“une aiguille infiniment grande et on prétend qu„elle est au centre des plans… Bien sûr, *comment* pourrait-elle être au sommet d“une aiguille infiniment grande *et* être au centre des plans ? Cela soulève quelques questions."{#morte_s659_1}'

    menu:
        '"Autre chose ?"{#morte_s659_r65597}':
            # a1276 # r65597
            jump morte_s660

        '"Peu importe. J„ai d“autres questions…"{#morte_s659_r65598}':
            # a1277 # r65598
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."{#morte_s659_r65599}':
            # a1278 # r65599
            jump morte_dispose


# s660 # say65600
label morte_s660: # from 659.0
    nr '"On appelle Sigil la „Cité des Portes“, principalement parce qu„elle possède une MULTITUDE de portes invisibles pour y entrer ou en sortir : une arche, un encadrement de porte, un cercle de tonneau, une étagère de livres ou une fenêtre ouverte peut être un portail si les conditions sont bonnes. Tout dépend si tu as la clé pour l“ouvrir."{#morte_s660_1}'

    menu:
        '"La clé ?"{#morte_s660_r65601}':
            # a1279 # r65601
            jump morte_s661

        '"Peu importe. J„ai d“autres questions…"{#morte_s660_r65602}':
            # a1280 # r65602
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."{#morte_s660_r65603}':
            # a1281 # r65603
            jump morte_dispose


# s661 # say65604
label morte_s661: # from 660.0
    nr '"Bon, je pense que comme ça tu vas comprendre : la plupart des portails sont en état de „sommeil“, tu vois ? Tu peux les franchir, passer à côté, au-dessus, mais rien ne se produit. Et bien, chaque portail a quelque chose pour le „réveiller“. Ça peut être un air qu„il faut fredonner, une miche de pain Bytopien vieux d“une semaine, ou encore te souvenir comment était ton premier baiser, etc. BOUM : le portail met les gaz et tu peux sauter dedans pour te rendre de l„autre côté."{#morte_s661_1}'

    menu:
        '"Où, par exemple?"{#morte_s661_r65605}':
            # a1282 # r65605
            jump morte_s662

        '"Peu importe. J„ai d“autres questions…"{#morte_s661_r65606}':
            # a1283 # r65606
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."{#morte_s661_r65607}':
            # a1284 # r65607
            jump morte_dispose


# s662 # say65608
label morte_s662: # from 661.0
    nr '"Partout, chef, vraiment. Tous les endroits imaginables ont leur portail. C„est pour cela que Sigil est si connue dans les plans."{#morte_s662_1}'

    menu:
        '"Je vois. J„ai d“autres questions…"{#morte_s662_r65609}':
            # a1285 # r65609
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."{#morte_s662_r65610}':
            # a1286 # r65610
            jump morte_dispose


# s663 # say65611
label morte_s663: # from 329.2 729.2
    nr '"Hé ! Bavarder est ce que je sais faire de mieux." Il fait grincer ses dents pendant un moment puis affiche un rictus. "Eh ? Eh ?"{#morte_s663_1}'

    menu:
        '"Oh ! Je suis heureux de l„entendre…"{#morte_s663_r65612}':
            # a1287 # r65612
            jump morte_s664

        '"Oui, je suis au courant pour la Litanie d„injures, Morte. Je suis plus curieux de savoir ce que tu as eu lorsque tu étais chez Lothar."{#morte_s663_r65613}' if morteLogic.r65613_condition():
            # a1288 # r65613
            jump morte_s667

        '"J„ai d“autres questions…"{#morte_s663_r65614}':
            # a1289 # r65614
            jump morte_s329

        '"Peu importe. Allons-y."{#morte_s663_r65615}':
            # a1290 # r65615
            jump morte_dispose


# s664 # say65616
label morte_s664: # from 663.0
    nr '"Non, mais sérieusement, chef. J„ai un truc pour bavarder avec quelqu“un. Je peux vraiment accaparer son attention, si tu vois ce que je veux dire. Je connais des insultes, des grossièretés, des trucs à faire dresser les cheveux sur la tête, tu vois ?"{#morte_s664_1}'

    menu:
        '"Euh… Comment ça, c„est utile ?"{#morte_s664_r65617}':
            # a1291 # r65617
            jump morte_s665

        '"J„ai d“autres questions…"{#morte_s664_r65618}':
            # a1292 # r65618
            jump morte_s329

        '"Peu importe. Allons-y."{#morte_s664_r65619}':
            # a1293 # r65619
            jump morte_dispose


# s665 # say65620
label morte_s665: # from 664.0
    nr '"C„est l“un de mes nombreux talents… j„appelle ça ma “Litanie d„injures“. Tu vois, quelquefois je peux vraiment accaparer l„attention de quelqu“un, rien qu„en faisant la *bonne* remarque. Bien sûr, je dois généralement m“enfuir en courant après… mais tu as compris."{#morte_s665_1}'

    menu:
        '"Comment ça fonctionne ?"{#morte_s665_r65621}':
            # a1294 # r65621
            $ morteLogic.r65621_action()
            jump morte_s666

        '"Autre chose ?"{#morte_s665_r65622}' if morteLogic.r65622_condition():
            # a1295 # r65622
            jump morte_s667

        '"J„ai d“autres questions…"{#morte_s665_r65623}':
            # a1296 # r65623
            jump morte_s329

        '"Hmmm. Ça peut être utile. Allons-y."{#morte_s665_r65624}':
            # a1297 # r65624
            jump morte_dispose


# s666 # say65626
label morte_s666: # from 329.3 665.0 729.3
    nr '"Et bien, je peux déblatérer des insultes à quelqu„un jusqu“à ce qu„il devienne furieux et me chasse."  ^NREMARQUE : Morte a une faculté nommée “Litanie d„injures“. C„est une capacité non magique ; si la cible n“arrive pas à résister, elle subit un malus dans sa classe d„armure, attaque et essaiera à tout prix d“engager un combat au corps à corps avec Morte. Plus Morte entend d„insultes et meilleur devient sa Litanie d“injures. La Litanie d„injures est TRÈS EFFICACE contre les mages.^-{#morte_s666_1}'

    menu:
        '"Peux-tu faire autre chose ?"{#morte_s666_r65627}' if morteLogic.r65627_condition():
            # a1298 # r65627
            jump morte_s667

        '"J„ai d“autres questions…"{#morte_s666_r65628}':
            # a1299 # r65628
            jump morte_s329

        '"Hmmm. Ça peut être utile. Allons-y."{#morte_s666_r65629}':
            # a1300 # r65629
            jump morte_dispose


# s667 # say65630
label morte_s667: # from 663.1 665.1 666.0
    nr '"Et bien, je me suis fait des amis pendant que j„attendais sagement sur l“étagère, chez Lothar, que tu me mettes en liberté provisoire. Au fait, merci d„avoir pris ton temps. Ils m“ont dit que si j„avais besoin d“aide, je pouvais passer les voir."{#morte_s667_1}'

    menu:
        '"Amis ? Que veux-tu dire ?"{#morte_s667_r65631}':
            # a1301 # r65631
            $ morteLogic.j65637_s667_r65631_action()
            jump morte_s668

        '"J„ai d“autres questions…"{#morte_s667_r65632}':
            # a1302 # r65632
            jump morte_s329

        '"Heureux de l„entendre alors. Allons-y."{#morte_s667_r65633}':
            # a1303 # r65633
            jump morte_dispose


# s668 # say65634
label morte_s668: # from 667.0
    nr '"Ben, je n„ai qu“à siffler et ils arrivent. Ce sont de vrais lascars et aussi des *traîtres*."  ^NREMARQUE : Morte possède dorénavant une capacité spéciale appelée le „Gang de crânes“. Lorsqu„il l“invoque, il peut faire apparaître une horde de crânes qui vont mordre un opposant de nombreuses fois. La force et les dégâts causés par les crânes varient en fonction du niveau de Morte et ce pouvoir ne peut être utilisé qu„un nombre de fois limité par jour.^-{#morte_s668_1}'

    menu:
        '"Je vois. J„ai d“autres questions…"{#morte_s668_r65635}':
            # a1304 # r65635
            jump morte_s329

        '"Heureux de l„entendre alors. Allons-y."{#morte_s668_r65636}':
            # a1305 # r65636
            jump morte_dispose


# s669 # say65638
label morte_s669: # from 329.5 729.5
    nr '"Et bien, voilà comment *je* vois les choses…"{#morte_s669_1}'

    menu:
        '"Continue…"{#morte_s669_r65639}' if morteLogic.r65639_condition():
            # a1306 # r65639
            jump morte_s671

        '"Continue…"{#morte_s669_r65640}' if morteLogic.r65640_condition():
            # a1307 # r65640
            jump morte_s672

        '"Continue…"{#morte_s669_r65641}' if morteLogic.r65641_condition():
            # a1308 # r65641
            jump morte_s673

        '"Continue…"{#morte_s669_r65642}' if morteLogic.r65642_condition():
            # a1309 # r65642
            jump morte_s670

        '"Continue…"{#morte_s669_r65643}' if morteLogic.r65643_condition():
            # a1310 # r65643
            jump morte_s674

        '"Continue…"{#morte_s669_r65644}' if morteLogic.r65644_condition():
            # a1311 # r65644
            jump morte_s675

        '"Continue…"{#morte_s669_r65645}' if morteLogic.r65645_condition():
            # a1312 # r65645
            jump morte_s677

        '"Continue…"{#morte_s669_r65646}' if morteLogic.r65646_condition():
            # a1313 # r65646
            jump morte_s680

        '"Continue…"{#morte_s669_r65647}' if morteLogic.r65647_condition():
            # a1314 # r65647
            jump morte_s681

        '"Peu importe. J„ai d“autres questions…"{#morte_s669_r65648}':
            # a1315 # r65648
            jump morte_s329

        '"Tout bien réfléchi, laisse tomber. Allons-y."{#morte_s669_r65649}':
            # a1316 # r65649
            jump morte_dispose


# s670 # say65650
label morte_s670: # from 669.3
    nr '"Ce que je pense, c„est que c“est ton plan, chef. Je ne peux plus dire grand-chose qui pourrait t„aider."{#morte_s670_1}'

    menu:
        '"*Ça* c„est un grand changement. J“ai d„autres questions…"{#morte_s670_r65651}':
            # a1317 # r65651
            jump morte_s329

        '"D„accord. Passons à autre chose alors."{#morte_s670_r65652}':
            # a1318 # r65652
            jump morte_dispose


# s671 # say65653
label morte_s671: # from 669.0
    nr '"Je pense que tu devrais essayer de dénicher ce „Pharod“, où qu„il crèche. Tu n“aurais pas eu ces indications tatouées sur ton dos s„il n“avait pas la moindre idée de ce que tu faisais. Un des habitants de ce secteur DOIT savoir où il se trouve."{#morte_s671_1}'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"{#morte_s671_r65654}':
            # a1319 # r65654
            jump morte_s329

        '"D„accord. Continuons à le chercher alors."{#morte_s671_r65655}':
            # a1320 # r65655
            jump morte_dispose


# s672 # say65656
label morte_s672: # from 669.1
    nr '"Moi j„dis qu“on devrait essayer de piquer cette „sphère en bronze“ aussi vite que possible et la rendre au vieux Bègue-béquille."{#morte_s672_1}'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"{#morte_s672_r65657}':
            # a1321 # r65657
            jump morte_s329

        '"D„accord. Passons à autre chose alors."{#morte_s672_r65658}':
            # a1322 # r65658
            jump morte_dispose


# s673 # say65659
label morte_s673: # from 669.2
    nr '"Moi j„dis qu“on devrait repérer où ton cadavre a échoué. Peut-être qu„on découvrira comment ton nom a pu entrer dans le livre des morts."{#morte_s673_1}'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"{#morte_s673_r65660}':
            # a1323 # r65660
            jump morte_s329

        '"D„accord. Passons à autre chose alors."{#morte_s673_r65661}':
            # a1324 # r65661
            jump morte_dispose


# s674 # say65662
label morte_s674: # from 669.4
    nr '"Moi j„dis qu“on devrait trouver quelqu„un qui en sait plus à ton sujet, et comment ça t“est arrivé. Il doit bien y avoir des lascars dans l„un des Quartiers qui en savent plus sur toi."{#morte_s674_1}'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"{#morte_s674_r65663}':
            # a1325 # r65663
            jump morte_s329

        '"D„accord. Passons à autre chose alors."{#morte_s674_r65664}':
            # a1326 # r65664
            jump morte_dispose


# s675 # say65665
label morte_s675: # from 669.5
    nr '"On dirait qu„on va devoir en découvrir plus sur cette guenaude noire, Ravel. Et je dois t“avouer, chef, que je ne suis *pas vraiment* impatient de la trouver. Mais les sages de la Salle des Fêtes et certaines pierres sensorielles pourront peut-être nous en dire plus."{#morte_s675_1}'

    menu:
        '"Salle des Fêtes ? Pierres sensorielles ?"{#morte_s675_r65666}' if morteLogic.r65666_condition():
            # a1327 # r65666
            $ morteLogic.j65669_s675_r65666_action()
            jump morte_s676

        '"Bonne remarque. J„ai d“autres questions…"{#morte_s675_r65667}':
            # a1328 # r65667
            jump morte_s329

        '"D„accord. Passons à autre chose alors."{#morte_s675_r65668}':
            # a1329 # r65668
            jump morte_dispose


# s676 # say65670
label morte_s676: # from 675.0
    nr '"Désolé, chef - j„oublie tout le temps que tu as toutes les connaissances d“un primaire complètement béjaune. Tu vois, la Salle des Fêtes est la bicoque principale de la faction des Sensats dans le Quartier des Gratte-Papier. Ils ont des bibliothèques de pierres sensorielles qui stockent les expériences, et ils ont plein de sages, de conférenciers et de mentors qui pourront peut-être nous aider à sortir de l„obscurité et comprendre ce qui se passe avec Ravel."{#morte_s676_1}'

    menu:
        '"Bonne remarque. J„ai d“autres questions…"{#morte_s676_r65671}':
            # a1330 # r65671
            jump morte_s329

        '"D„accord. Passons à autre chose alors."{#morte_s676_r65672}':
            # a1331 # r65672
            jump morte_dispose


# s677 # say65673
label morte_s677: # from 669.6
    nr '"Et bien, Ravel s„est fait enfermer. Mais il y a certainement UNE clé et UN portail qui pourrait nous y emmener, si tu veux toujours y aller."{#morte_s677_1}'

    menu:
        '"Tu sais ce que pourrait être la clé du dédale ?"{#morte_s677_r65674}' if morteLogic.r65674_condition():
            # a1332 # r65674
            $ morteLogic.j65678_s677_r65674_action()
            jump morte_s678

        '"Tu sais où je peux trouver un portail pour aller dans son dédale ?"{#morte_s677_r65675}':
            # a1333 # r65675
            jump morte_s679

        '"J„ai d“autres questions…"{#morte_s677_r65676}':
            # a1334 # r65676
            jump morte_s329

        '"D„accord. Passons à autre chose alors."{#morte_s677_r65677}':
            # a1335 # r65677
            jump morte_dispose


# s678 # say65679
label morte_s678: # from 677.0
    nr '"Aucune idée. Un „morceau de Ravel“ ? Ça pourrait être n„importe quoi : une de ses verrues desséchées, une de ses œuvres d“art, ou encore un peu de sa bave. C„est trop vague. Mais je parie que QUELQU“UN dans le Quartier des Gratte-Papier sait comment faucher un objet à cette sorcière azimutée. Si on ne trouve personne, on peut toujours aller voir les pierres sensorielles dans la Salle des Fêtes, peut-être que l„une d“entre-elles pourra nous dévoiler quelque chose d„utile."{#morte_s678_1}'

    menu:
        '"Tu sais où je peux trouver un portail pour aller dans son dédale ?"{#morte_s678_r65680}':
            # a1336 # r65680
            jump morte_s679

        '"Bonne remarque. J„ai d“autres questions…"{#morte_s678_r65681}':
            # a1337 # r65681
            jump morte_s329

        '"D„accord. Continuons à chercher alors.{#morte_s678_r65682}':
            # a1338 # r65682
            jump morte_dispose


# s679 # say65683
label morte_s679: # from 677.1 678.0
    nr '"J„suis pas trop sûr, chef. Il y a des tonnes de portails à Sigil. Essaie la Salle des Fêtes. Je doute qu“il soit là mais l„une des pierres sensorielles pourra peut-être nous dire quelque chose. Si ça ne marche pas, on n“a qu„à oublier tous ces va et vient et trouver quelqu“un qui nous FABRIQUE un portail."{#morte_s679_1}'

    menu:
        '"Très bien. J„ai d“autres questions…"{#morte_s679_r65684}':
            # a1339 # r65684
            jump morte_s329

        '"D„accord. Passons à autre chose alors."{#morte_s679_r65685}':
            # a1340 # r65685
            jump morte_dispose


# s680 # say65686
label morte_s680: # from 669.7
    nr '"Je propose qu„on trouve ce qu“on cherche et qu„on se tire d“ici, chef. Cet endroit me donne la chair de poule et je n„ai même pas de peau. D“accord ?"{#morte_s680_1}'

    menu:
        '"C„est vrai. J“ai d„autres questions…"{#morte_s680_r65687}':
            # a1341 # r65687
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s680_r65688}':
            # a1342 # r65688
            jump morte_dispose


# s681 # say65689
label morte_s681: # from 669.8
    nr '"Tu m„as eu, chef. C“est ton plan après tout, je ne fais que te suivre."{#morte_s681_1}'

    menu:
        '"C„est vrai. J“ai d„autres questions…"{#morte_s681_r65690}':
            # a1343 # r65690
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s681_r65691}':
            # a1344 # r65691
            jump morte_dispose


# s682 # say65692
label morte_s682: # from 651.2
    nr '"Non… t„étais nu comme un ver. Comme j“te l„ai déjà dit, on dirait que t“as déjà un journal écrit sur le corps."{#morte_s682_1}'

    menu:
        '"Et tu es sûr que tu ne connais personne du nom de Pharod ?"{#morte_s682_r65693}' if morteLogic.r65693_condition():
            # a1345 # r65693
            jump morte_s683

        '"C„est vrai. J“ai d„autres questions…"{#morte_s682_r65694}':
            # a1346 # r65694
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s682_r65695}':
            # a1347 # r65695
            jump morte_dispose


# s683 # say65696
label morte_s683: # from 682.0
    nr '"Non. Mais y doit bien y avoir un bige qui saura où le trouver. On va demander aux habitants."{#morte_s683_1}'

    menu:
        '"Avant d„y aller, j“ai d„autres questions…"{#morte_s683_r65697}':
            # a1348 # r65697
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s683_r65698}':
            # a1349 # r65698
            jump morte_dispose


# s684 # say65699
label morte_s684: # from 329.6 729.6
    nr '"Ouais, un mimir c„est une encyclopédie flottante. Tu rentres des informations et il en sort d“autres."{#morte_s684_1}'

    menu:
        '"Les mimirs ne sont donc pas fabriqués à partir de métal argenté ?"{#morte_s684_r65700}' if morteLogic.r65700_condition():
            # a1350 # r65700
            jump morte_s685

        '"Je vois. J„ai d“autres questions…"{#morte_s684_r65701}':
            # a1351 # r65701
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s684_r65702}':
            # a1352 # r65702
            jump morte_dispose


# s685 # say65703
label morte_s685: # from 684.0
    nr '"Et alors ? peut-être que certains le sont mais pas *moi*. Et il y a des choses plus bizarres que ça dans les plans, chef."{#morte_s685_1}'

    menu:
        '"Je ne pense pas que tu sois un mimir, Morte. Qu„est-ce que tu es ?"{#morte_s685_r65704}':
            # a1353 # r65704
            jump morte_s686

        '"Je vois. J„ai d“autres questions…"{#morte_s685_r65705}':
            # a1354 # r65705
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s685_r65706}':
            # a1355 # r65706
            jump morte_dispose


# s686 # say65707
label morte_s686: # from 685.0
    nr '"C„est quoi, cet interrogatoire ? Qu“est-ce que *tu* sais sur les mimirs, de toute façon ?"{#morte_s686_1}'

    menu:
        '"J„en sais assez pour pouvoir penser que tu me mens."{#morte_s686_r65708}' if morteLogic.r65708_condition():
            # a1356 # r65708
            jump morte_s687

        '"J„en sais assez pour pouvoir penser que tu me mens. D“abord, la ligne manquante sur mon dos disant de ne pas te faire confiance, et maintenant ça. Qu„est-ce que je suis censé croire ?"{#morte_s686_r65709}' if morteLogic.r65709_condition():
            # a1357 # r65709
            jump morte_s687

        '"Rien, j„imagine. J“ai d„autres questions…"{#morte_s686_r65710}':
            # a1358 # r65710
            $ morteLogic.j65712_s686_r65710_action()
            jump morte_s329

        '"Bon, peu importe. Allons-y."{#morte_s686_r65711}':
            # a1359 # r65711
            $ morteLogic.j65712_s686_r65711_action()
            jump morte_dispose


# s687 # say65713
label morte_s687: # from 686.0 686.1
    nr '"OK, je ne suis *pas* un mimir, mais je sais un tas de trucs et je *pourrais* très bien en être un."{#morte_s687_1}'

    menu:
        '"Qu„est-ce que tu *es* ?"{#morte_s687_r65714}':
            # a1360 # r65714
            jump morte_s688

        '"Peu importe. J„ai d“autres questions…"{#morte_s687_r65715}':
            # a1361 # r65715
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s687_r65716}':
            # a1362 # r65716
            jump morte_dispose


# s688 # say65717
label morte_s688: # from 687.0
    nr '"Je suis un crâne flottant qui en connaît un bout."{#morte_s688_1}'

    menu:
        '"Et ton odeur de Baator ?"{#morte_s688_r65718}' if morteLogic.r65718_condition():
            # a1363 # r65718
            jump morte_s690

        '"Et ton odeur de Baator ?"{#morte_s688_r65719}' if morteLogic.r65719_condition():
            # a1364 # r65719
            jump morte_s689

        '"Peu importe. J„ai d“autres questions…"{#morte_s688_r65720}':
            # a1365 # r65720
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s688_r65721}':
            # a1366 # r65721
            jump morte_dispose


# s689 # say65722
label morte_s689: # from 688.1
    nr '"Comment est-ce que TOI tu connaîtrais l„odeur de Baator ?!"{#morte_s689_1}'

    menu:
        '"Parce que je suis *allé* là-bas, Morte. J„ai marché sur l“Averne."{#morte_s689_r65723}':
            # a1367 # r65723
            jump morte_s691

        '"Peu importe. J„ai d“autres questions…"{#morte_s689_r65724}':
            # a1368 # r65724
            jump morte_s329

        '"Laisse tomber. Allons-y."{#morte_s689_r65725}':
            # a1369 # r65725
            jump morte_dispose


# s690 # say65726
label morte_s690: # from 688.0
    nr '"Comment est-ce que TOI tu connaîtrais l„odeur de Baator ? À moins que… hé ! Tu as parlé de moi avec la tanar“ri, c„est ça ?! Qu“est-ce qu„elle sait ?!"{#morte_s690_1}'

    menu:
        '"Elle a apparemment mis le doigt sur quelque chose. C„est l“odeur de Baator, pas vrai ?"{#morte_s690_r65727}':
            # a1370 # r65727
            jump morte_s691

        '"Peu importe. J„ai d“autres questions…"{#morte_s690_r65728}':
            # a1371 # r65728
            jump morte_s329

        '"Laisse tomber. Allons-y."{#morte_s690_r65729}':
            # a1372 # r65729
            jump morte_dispose


# s691 # say65730
label morte_s691: # from 689.0 690.0
    nr '"Et bien, oui, mais… Oui. Je pue un petit peu. *Excuse*-moi."{#morte_s691_1}'

    menu:
        '"*Pourquoi* tu sens comme Baator ?"{#morte_s691_r65731}':
            # a1373 # r65731
            $ morteLogic.r65731_action()
            jump morte_s692


# s692 # say65732
label morte_s692: # from 691.0
    nr '"J„étais aux Enfers pendant un moment. Plutôt longtemps, en fait. La puanteur s“incruste."{#morte_s692_1}'

    menu:
        '"Tu étais aux Enfers ? Qu„est-ce que tu y FAISAIS ?"{#morte_s692_r65733}':
            # a1374 # r65733
            $ morteLogic.r65733_action()
            jump morte_s693


# s693 # say65734
label morte_s693: # from 329.7 692.0 729.7
    nr '"Tu vois, il y a ce *pilier* sur l„Averne, le premier niveau de Baator ; on l“appelle le Pilier des Crânes, mais c„est plus une colonne de têtes."{#morte_s693_1}'

    jump morte_s694


# s694 # say65735
label morte_s694: # from 693.0
    nr '"Selon certains lascars, c„est *soi-disant* fait de têtes de biges, principalement des sages et des érudits, qui ont utilisé leurs connaissances lorsqu“ils étaient vivants pour transformer la vérité un tantinet… tellement qu„ils ont peut-être blessé, ou euh, tué quelqu“un. Et bien, lorsque je suis *mort*, je me suis retrouvé là-bas. Marrant, non ?"{#morte_s694_1}'

    menu:
        '"Pas vraiment."{#morte_s694_r65846}':
            # a1375 # r65846
            jump morte_s695


# s695 # say65736
label morte_s695: # from 694.0
    nr '"Euh…" Morte reste silencieux pendant un moment. "Ouais, tu as raison, ce n„est pas drôle du tout. Tu vois, je pense que je savais un tas de trucs quand j“étais vivant. Et peut-être que quand je savais quelque chose, je ne disais pas toujours la vérité. Je crois qu„en transformant la vérité une fois ou deux, j“ai peut-être provoqué l„inscription de quelqu“un dans le livre des morts plus tôt que prévu."{#morte_s695_1}'

    menu:
        '"Peux-tu te rappeler qui ?"{#morte_s695_r65737}':
            # a1376 # r65737
            jump morte_s697

        '"C„était moi, pas vrai ?"{#morte_s695_r65738}' if morteLogic.r65738_condition():
            # a1377 # r65738
            jump morte_s696

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s695_r65739}' if morteLogic.r65739_condition():
            # a1378 # r65739
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s695_r65740}' if morteLogic.r65740_condition():
            # a1379 # r65740
            jump morte_dispose


# s696 # say65741
label morte_s696: # from 695.1
    nr 'Morte te regarde pendant un moment. "Ouais. Je suis incapable de dire *comment* je le sais, chef, mais je pense que oui. Je pense que tu es celui qui m„y a envoyé ; la petite brindille qui fait tout basculer. Le hic, c“est que je ne me rappelle pas ce qui s„est passé. Je ne me souviens même pas d“avoir été un humain ni comment était ma vie avant de me réveiller sur le Pilier."{#morte_s696_1}'

    menu:
        '"Pourquoi tu as oublié ?"{#morte_s696_r65742}':
            # a1380 # r65742
            jump morte_s698

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s696_r65743}' if morteLogic.r65743_condition():
            # a1381 # r65743
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s696_r65744}' if morteLogic.r65744_condition():
            # a1382 # r65744
            jump morte_dispose


# s697 # say65745
label morte_s697: # from 695.0
    nr '"Je suis incapable de dire comment je le sais, chef, mais je pense que c„était *toi*. Au moins une fois. Le hic, c“est que je ne me rappelle pas ce qui s„est passé. Je ne me souviens même pas d“avoir été un humain ni à quoi je ressemblais avant de me réveiller sur le Pilier."{#morte_s697_1}'

    menu:
        '"Pourquoi tu as oublié ?"{#morte_s697_r65746}':
            # a1383 # r65746
            jump morte_s698

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s697_r65747}' if morteLogic.r65747_condition():
            # a1384 # r65747
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s697_r65748}' if morteLogic.r65748_condition():
            # a1385 # r65748
            jump morte_dispose


# s698 # say65749
label morte_s698: # from 696.0 697.0
    nr '"C„est ce qui se passe normalement quand on meurt, je suis sûr que tu connais ça. On… oublie. Je suppose que quand j“étais vivant, je n„étais pas une personne de confiance dans la communauté… Mais bon sang, qui l“est ?" Morte soupire. "C„est juste que j“y peux rien. Y„a rien de pire que d“être constamment *honnête*."{#morte_s698_1}'

    menu:
        '"À part être condamné aux Enfers. Cela paraît bien pire que de dire la vérité."{#morte_s698_r65750}' if morteLogic.r65750_condition():
            # a1386 # r65750
            $ morteLogic.r65750_action()
            jump morte_s699

        '"Mm, c„est vrai… mais tu devrais mentir avec prudence."{#morte_s698_r65751}' if morteLogic.r65751_condition():
            # a1387 # r65751
            $ morteLogic.r65751_action()
            jump morte_s699


# s699 # say65752
label morte_s699: # from 698.0 698.1
    nr '"Ouais. Tu as raison. *Encore une fois*." Morte fait claquer ses dents et ça te fait penser à quelqu„un qui pianote des doigts. "Je pense que tout ça, le bien et le mal, mentir et tromper, ça te rattrape un jour et quand je me suis fait inscrire dans le livre des morts, c“était à mon tour de payer."{#morte_s699_1}'

    menu:
        '"Comment tu t„es échappé du Pilier ?"{#morte_s699_r65753}':
            # a1388 # r65753
            $ morteLogic.j53633_s699_r65753_action()
            jump morte_s700

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s699_r65754}' if morteLogic.r65754_condition():
            # a1389 # r65754
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s699_r65755}' if morteLogic.r65755_condition():
            # a1390 # r65755
            jump morte_dispose


# s700 # say65757
label morte_s700: # from 699.0
    nr '"Et bien… tu m„as aidé, chef. Quand tu t“es pointé devant le Pilier des Crânes, je me suis poussé vers le devant. Mon savoir-faire et mon charme flagrants ont attiré ton attention. Tu savais que c„était *moi* la tête qui savait le plus de choses. Alors je t“ai proposé un marché."{#morte_s700_1}'

    menu:
        '"Un marché… ?"{#morte_s700_r65758}':
            # a1391 # r65758
            $ morteLogic.r65758_action()
            jump morte_s701

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s700_r65759}' if morteLogic.r65759_condition():
            # a1392 # r65759
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s700_r65760}' if morteLogic.r65760_condition():
            # a1393 # r65760
            jump morte_dispose


# s701 # say65761
label morte_s701: # from 700.0
    nr 'Pendant que Morte parle, ta vision semble se voiler de rouge et tu entends un hurlement, une horrible *plainte* accompagnée de murmures, de cris stridents, de martèlements provenant d„une multitude de voix. TOUTES implorent leur libération en hurlant et la voix de Morte… à peine audible, presque perdue dans la horde. Il a l“air désespéré, effrayé et… pitoyablement, tragiquement *perdu*.{#morte_s701_1}'

    menu:
        'Écho : "Toi. Crâne. Parle."{#morte_s701_r65762}':
            # a1394 # r65762
            jump morte_s702

        'Repousse le souvenir.{#morte_s701_r65763}':
            # a1395 # r65763
            $ morteLogic.r65763_action()
            jump morte_s706


# s702 # say65764
label morte_s702: # from 701.0
    nr 'Les hurlements cessent et tu regardes le minuscule crâne aux lignes rouges qui projette une lumière diabolique à travers ses fêlures et tourne les yeux vers toi. Du sang ainsi qu„une substance indéfinissable s“écoulent de ses fêlures et ses dents claquent comme s„il avait froid. "Je peux-peux t“aider, je sais-sais ce que tu cherches… Toutes ces têtes… Tout leur savoir… Pitié, je t„en *supplie* délivre-moi. Laisse-moi t“*aider*. Je te dirai tout, *absolument tout*."{#morte_s702_1}'

    menu:
        'Écho : "Le *feras*-tu ? JURE-le, crâne. JURE que tu vas me servir jusqu„à la fin des temps, ou tu resteras ici."{#morte_s702_r65765}':
            # a1396 # r65765
            jump morte_s703

        'Repousse le souvenir.{#morte_s702_r65766}':
            # a1397 # r65766
            $ morteLogic.r65766_action()
            jump morte_s706


# s703 # say65767
label morte_s703: # from 702.0
    nr '"Je jure. Je jure que… s„il te plaît, *pitié* délivre-moi… Je…" Tu regardes Morte alors qu“il déglutit d„une manière écœurante et son orgueil est tel qu“il en est presque tangible. "Je t„en… *supplie*. Laisse-moi t“*aider*. S„il te plaît."{#morte_s703_1}'

    menu:
        'Écho : "Très bien. Je vais te libérer."{#morte_s703_r65768}':
            # a1398 # r65768
            jump morte_s704

        'Repousse le souvenir.{#morte_s703_r65769}':
            # a1399 # r65769
            $ morteLogic.r65769_action()
            jump morte_s706


# s704 # say65770
label morte_s704: # from 703.0
    nr 'Ta vision bascule, comme si tu te déplaçais, et la cacophonie de plaintes et de hurlements recommence, une foule cauchemardesque de braillements, de sifflements, de sarcasmes et d„insultes… Tu sens tes mains glisser dans la fange répugnante du pilier, des crocs et des maxillaires te mordre, et tes mains se referment sur le petit crâne et l“arrachent du pilier comme une vieille croûte…{#morte_s704_1}'

    menu:
        'Écho : "C„est FAIT."{#morte_s704_r65771}':
            # a1400 # r65771
            jump morte_s705

        'Repousse le souvenir.{#morte_s704_r65772}':
            # a1401 # r65772
            $ morteLogic.r65772_action()
            jump morte_s706


# s705 # say65773
label morte_s705: # from 704.0
    nr 'Tu regardes le crâne sanglant dans tes mains couvertes de cicatrices, ses yeux couverts de la substance indéfinissable provenant du pilier et ses dents claquent une fois, deux fois. Cela te rappelle les gémissements d„un nourrisson, sans défense et - dans les yeux de l“homme que tu étais autrefois - pitoyable.{#morte_s705_1}'

    menu:
        'Écho : "Je t„ai libéré. Maintenant ta vie… et ta mort sont à moi… Morte."{#morte_s705_r65774}' if morteLogic.r65774_condition():
            # a1402 # r65774
            $ morteLogic.r65774_action()
            jump morte_s706

        'Écho : "Je t„ai libéré. Maintenant ta vie… et ta mort sont à moi… Morte."{#morte_s705_r65775}' if morteLogic.r65775_condition():
            # a1403 # r65775
            $ morteLogic.r65775_action()
            jump morte_s706


# s706 # say65776
label morte_s706: # from 701.1 702.1 703.1 704.1 705.0 705.1
    nr 'Ta vision vacille et les réminiscences du passé s„éloignent. Morte continue son bavardage. "On a parlé un moment, chef, toi et moi, pour voir si le contrat marcherait, et je pense qu“on était tous les deux très impressionnés l„un par l“autre, alors tu m„as fait sortir du pilier et depuis je suis, en quelque sorte, toujours resté avec toi."{#morte_s706_1}'

    menu:
        '"Euh… Qu„est-il arrivé ensuite ?"{#morte_s706_r65777}':
            # a1404 # r65777
            jump morte_s707

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s706_r65778}' if morteLogic.r65778_condition():
            # a1405 # r65778
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s706_r65779}' if morteLogic.r65779_condition():
            # a1406 # r65779
            jump morte_dispose


# s707 # say65780
label morte_s707: # from 706.0
    nr '"Et bien, je ne savais pas que je perdrais la plupart des connaissances du Pilier, une fois extrait… je veux dire, comment j„aurais pu le savoir, je n“étais jamais sorti de ce foutu pilier… d„ailleurs, tu étais très compréhensif…"{#morte_s707_1}'

    menu:
        '"Tu as perdu tout le savoir que tu avais dit posséder… ?"{#morte_s707_r65781}':
            # a1407 # r65781
            $ morteLogic.r65781_action()
            jump morte_s708

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s707_r65782}' if morteLogic.r65782_condition():
            # a1408 # r65782
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s707_r65783}' if morteLogic.r65783_condition():
            # a1409 # r65783
            jump morte_dispose


# s708 # say65784
label morte_s708: # from 707.0
    nr 'Ta vision vacille de nouveau, te donnant la nausée, et tu sens ton cœur se soulever. Tu entends des os craquer et se casser et Morte hurle, hurle de douleur, criant à quelqu„un de s“arrêter, s„arrêter de le *tuer*… et ta main envoie des coups de poing, encore et encore…{#morte_s708_1}'

    menu:
        'Écho : "Par BAATOR, crâne, tu m„as MENTI. Je vais TE REMETTRE DANS CE SATANÉ PILIER ET T“Y LAISSER *CREVER*."{#morte_s708_r65785}':
            # a1410 # r65785
            jump morte_s709

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s708_r65786}' if morteLogic.r65786_condition():
            # a1411 # r65786
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s708_r65787}' if morteLogic.r65787_condition():
            # a1412 # r65787
            jump morte_dispose


# s709 # say65788
label morte_s709: # from 708.0
    nr 'Il y a le cliquetis des os contre quelque chose qui semble être du métal, un sol ou un mur, puis le bruit des dents qui sont éjectées. Tu entends crier Morte comme un cochon qu„on égorge.{#morte_s709_1}'

    menu:
        'Écho : "SACHE QUE TA SOUFFRANCE SUR LE PILIER NE SERA *RIEN* COMPARÉE AUX TOURMENTS QUE JE VAIS TE FAIRE *SUBIR*."{#morte_s709_r65789}':
            # a1413 # r65789
            $ morteLogic.r65789_action()
            jump morte_s710

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s709_r65790}' if morteLogic.r65790_condition():
            # a1414 # r65790
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s709_r65791}' if morteLogic.r65791_condition():
            # a1415 # r65791
            jump morte_dispose


# s710 # say65792
label morte_s710: # from 709.0
    nr 'Ta vision vacille et les cris de Morte faiblissent, pour laisser peu à peu la place au rythme de ses bavardages. "Alors tu t„es rendu compte que j“avais encore mon utilité. Je me suis lié d„amitié avec toi, et depuis je ne t“ai pas quitté."{#morte_s710_1}'

    menu:
        '"Morte, qu„est-ce que je voulais de la part du Pilier ? Et ça fait combien de temps que je t“ai libéré ?"{#morte_s710_r65793}':
            # a1416 # r65793
            jump morte_s711

        '"Euh… Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s710_r65794}' if morteLogic.r65794_condition():
            # a1417 # r65794
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s710_r65795}' if morteLogic.r65795_condition():
            # a1418 # r65795
            jump morte_dispose


# s711 # say65796
label morte_s711: # from 710.0
    nr 'Morte réfléchit pendant un moment. "Et bien, combien de temps exactement, je ne sais pas, chef. Des siècles, j„imagine. J“ai fait tout mon possible pour t„aider à chaque fois, mais…" Morte soupire. "Ce n“est pas facile, et pour ce que tu voulais au pied du Pilier, je ne sais pas."{#morte_s711_1}'

    menu:
        '"Morte, pourquoi n„as-tu rien DIT à la morgue ?"{#morte_s711_r65797}':
            # a1419 # r65797
            jump morte_s712

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s711_r65798}' if morteLogic.r65798_condition():
            # a1420 # r65798
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s711_r65799}' if morteLogic.r65799_condition():
            # a1421 # r65799
            jump morte_dispose


# s712 # say65800
label morte_s712: # from 711.0
    nr 'Morte prend soudain la défensive. "Parce que je *sais* jamais qui tu vas être ! Certaines de tes incarnations ont été complètement délirantes ! Une fois, tu t„es réveillé obsédé par l“idée que j„étais *ton* crâne et tu m“as chassé autour de l„Aiguille pour me fracasser et me dévorer… Heureusement, tu t“es fait écraser par un chariot dans la rue. Une autre fois, une „bonne et honnête“ version de toi a essayé de me jeter dans le pilier, parce que „c“était ma place„." Morte sourit d“un air narquois. "*C„est* pour ça que ça t“a jamais fait d„mal de rien savoir…"{#morte_s712_1}'

    menu:
        '"Tu es donc resté avec moi pendant tout ce temps ?"{#morte_s712_r65801}' if morteLogic.r65801_condition():
            # a1422 # r65801
            jump morte_s713

        '"Laisse tomber, Morte. J„ai d“autres questions…"{#morte_s712_r65802}' if morteLogic.r65802_condition():
            # a1423 # r65802
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s712_r65803}' if morteLogic.r65803_condition():
            # a1424 # r65803
            jump morte_dispose


# s713 # say65804
label morte_s713: # from 712.0
    nr '"Et bien oui, chef, j„ai dit que je le ferais. Morte tient toujours ses promesses." Il fait une pause. "Enfin, la plupart d“entre elles. Hé hé. Il y avait cette gamine sur l„Arborée qui…"{#morte_s713_1}'

    $ morteLogic.s713_action()
    jump morte_s714


# s714 # say65805
label morte_s714: # from 713.0
    nr 'Soudainement tu te rends compte que le ton de Morte a changé. Après cette blague, tu te rends compte qu„il essaie de te cacher quelque chose. Quelque chose sur la raison pour laquelle il est avec toi.{#morte_s714_1}'

    menu:
        '"Morte, sérieusement, pourquoi est-ce que tu voyages toujours avec moi ?"{#morte_s714_r65806}':
            # a1425 # r65806
            jump morte_s715

        '"Bon, très bien. J„ai d“autres questions…"{#morte_s714_r65807}':
            # a1426 # r65807
            jump morte_s329

        '"Peu importe, Morte. Passons à autre chose."{#morte_s714_r65808}':
            # a1427 # r65808
            jump morte_dispose


# s715 # say65809
label morte_s715: # from 329.8 714.0 729.8
    nr '"Chef, j„ai dit que c“était parce que je l„avais promis, d“accord ?" Il semble irrité. "Qu„est-ce que ça pourrait être d“autre ?"{#morte_s715_1}'

    menu:
        '"Je ne sais pas. Tu n„avais pas besoin de me coller après que je t“avais libéré."{#morte_s715_r65810}':
            # a1428 # r65810
            jump morte_s716

        '"Peu importe. J„ai d“autres questions…"{#morte_s715_r65811}':
            # a1429 # r65811
            jump morte_s329

        '"Laisse tomber, Morte. Passons à autre chose."{#morte_s715_r65812}':
            # a1430 # r65812
            jump morte_dispose


# s716 # say65813
label morte_s716: # from 715.0
    nr '"Bien sûr que non, chef, mais je…" Et soudainement le ton de sa voix te rappelle *pourquoi* il est resté constamment avec toi.{#morte_s716_1}'

    menu:
        '"Tu te sens *coupable*. Parce que tu as provoqué ma mort il y a très longtemps, pas vrai ? Et depuis, tu souffres."{#morte_s716_r65814}':
            # a1431 # r65814
            jump morte_s717


# s717 # say65815
label morte_s717: # from 716.0
    nr '"Allez, chef. Moi me sentir *coupable* ? Je suis Morte."{#morte_s717_1}'

    menu:
        '"Non, je pense que c„est ça. Lorsque je suis venu te délivrer du sort que tu avais mérité, tu n“as pas pu *t„empêcher* d“essayer de m„aider. Et alors que tu aurais pu partir une fois que je t“avais libéré, tu es resté. Parce que tu te sentais redevable de quelque chose."{#morte_s717_r65816}':
            # a1432 # r65816
            jump morte_s718


# s718 # say65817
label morte_s718: # from 717.0
    nr 'Morte reste silencieux pendant un moment et t„observe. "Peut-être. Tu sais ce qui est marrant ? Au début, je ne savais pas comment serait la sensation… En quelque sorte, ça te bouffe petit à petit, tu vois ?"{#morte_s718_1}'

    jump morte_s719


# s719 # say65818
label morte_s719: # from 718.0
    nr '"Au début, j„ai cru que c“était un effet secondaire d„un quelconque enchantement qui te “liait„ à moi, mais au bout d“un ou deux siècles, je me suis rendu compte que c„était *plus* que ça… Quelque chose de plus profond. Je me sentais juste attiré, *connecté* par toi, d“une certaine manière. Peut-être à cause de toute cette souffrance, chef… Tes tourments. Je ne sais pas, je me suis peut-être senti… Je ne sais pas, *responsable* de ce que j„avais fait. Et si une de mes actions t“avait rendu dans cet état ?"{#morte_s719_1}'

    $ morteLogic.s719_action()
    jump morte_s720


# s720 # say65820
label morte_s720: # from 719.0
    nr '"Le truc, c„est que je ne pense pas que moi, ou la personne que j“étais à l„époque, ait jamais dû réellement *voir* les conséquences de mes mensonges et de mes duperies, et lorsque je t“ai aperçu pour la première fois quand j„étais coincé dans le Pilier, quelque part je *savais* que tu étais celui que j“avais trompé. C„était il y a longtemps…" Morte soupire. "C“est tout ce que je sais."{#morte_s720_1}'

    menu:
        '"Je vois. Merci de l„admettre, Morte."{#morte_s720_r65821}':
            # a1433 # r65821
            $ morteLogic.r65821_action()
            jump morte_s721


# s721 # say65822
label morte_s721: # from 720.0
    nr '"Non, ne me remercie pas…" Morte soupire et à ta grande surprise, sa voix semble plus dure, plus confiante. Certaines craquelures et certaines fractures de son crâne ont disparu, comme si elles avaient été guéries. "Non, c„est moi qui te remercie. Je sens que mes épaules sont soulagées d“un grand poids… façon de parler."{#morte_s721_1}'

    menu:
        '"J„ai d“autres questions…"{#morte_s721_r65823}':
            # a1434 # r65823
            jump morte_s329

        '"D„accord, Morte. Passons à autre chose."{#morte_s721_r65824}':
            # a1435 # r65824
            jump morte_dispose


# s722 # say65826
label morte_s722: # from 329.10 729.10
    nr '"Et bien, c„est une guenaude noire. Et il faut qu“elle ait été vraiment assez folle pour TE rendre immortel parmi tous les autres. Quoi, elle aurait pu me choisir." Morte lève les yeux au ciel. "Mais on n„a pas envie de rencontrer quelqu“un d„assez écervelé pour être aux prises avec la Dame des Douleurs.."{#morte_s722_1}'

    menu:
        '"Je vois. J„ai d“autres questions…"{#morte_s722_r65827}':
            # a1436 # r65827
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s722_r65828}':
            # a1437 # r65828
            jump morte_dispose


# s723 # say65829
label morte_s723: # from 329.9 729.9
    nr '"C„est une guerre. Une grande guerre sanglante et compliquée. Cela se produit partout, bien qu“on ne puisse pas toujours le voir."{#morte_s723_1}'

    menu:
        '"Continue…"{#morte_s723_r65830}':
            # a1438 # r65830
            jump morte_s724

        '"Peu importe. J„ai d“autres questions…"{#morte_s723_r65831}':
            # a1439 # r65831
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s723_r65832}':
            # a1440 # r65832
            jump morte_dispose


# s724 # say65833
label morte_s724: # from 723.0
    nr '"Tu vois, chef, c„est une guerre entre deux méchantes races : les démons et les diables. Autrefois, ils ne se connaissaient pas. Les diables étaient le Mal, mais c“était un mal ordonné. Les démons aussi étaient le Mal, mais ils étaient plus laxistes, plus fougueux, plus confus, moins organisés. Les diables étaient de vrais politiciens, les démons de vrais bouchers."{#morte_s724_1}'

    jump morte_s725


# s725 # say65834
label morte_s725: # from 724.0
    nr '"Puis un jour, les deux races se sont rencontrées. Elles se sont observées et elles n„ont pas aimé comment l“autre race faisait le mal. Et depuis elles n„ont pas cessé de se battre. C“est un énorme cauchemar. Mais au moins, ça laisse ces deux races occupées et elles ne sont plus en train de courir partout sur les plans."{#morte_s725_1}'

    menu:
        '"Je vois. J„ai d“autres questions…"{#morte_s725_r65835}':
            # a1441 # r65835
            jump morte_s329

        '"C„est tout ce que je voulais savoir. Allons-y."{#morte_s725_r65836}':
            # a1442 # r65836
            jump morte_dispose


# s726 # say65837
label morte_s726: # from 329.11 729.11
    nr '"Aucune idée, chef. En fait, je ne me rappelle pas quand je suis mort. Je ne peux pas dire que je me reproche grand-chose. Au moins il y a avait quelque chose qui m„attendait à ma mort, même si c“était que vivre en tant que crâne flottant. Ça aurait pu être pire."{#morte_s726_1}'

    menu:
        '"Qu„est-il arrivé à ton corps ?"{#morte_s726_r65839}':
            # a1443 # r65839
            jump morte_s727

        '"Je vois. J„ai d“autres questions…"{#morte_s726_r65840}':
            # a1444 # r65840
            jump morte_s329

        '"Bon, très bien. Allons-y."{#morte_s726_r65841}':
            # a1445 # r65841
            jump morte_dispose


# s727 # say65838
label morte_s727: # from 726.0
    nr '"Euh… Je ne sais pas, OK ? Il a juste disparu." Morte te regarde l„air furieux. "Mais ne t“imagine pas qu„il me MANQUE, car je suis heureux comme ça et je n“ai pas besoin de tes jugements imbéciles ou de tes remarques insidieuses, d„accord ?"{#morte_s727_1}'

    menu:
        '"Je vois. J„ai d“autres questions…"{#morte_s727_r65842}':
            # a1446 # r65842
            jump morte_s329

        '"Peu importe. Allons-y. Allez, magne-toi les fesses."{#morte_s727_r65843}':
            # a1447 # r65843
            jump morte_s728


# s728 # say65844
label morte_s728: # from 727.1
    nr 'Morte te regarde l„air furieux. "Je ne suis toujours pas persuadé que tu n“es pas une sorte de malédiction sur pattes destinée à me suivre partout."{#morte_s728_1}'

    menu:
        '"Et c„est toi qui dis ça. Allons-y."{#morte_s728_r65845}':
            # a1448 # r65845
            jump morte_dispose


# s729 # say66344
label morte_s729: # - # IF WEIGHT #7 /* Triggers after states #: 742 737 733 even though they appear after this state */ ~  Global("AR0200_Visited","GLOBAL",1) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Mais qu„est-ce qui va pas, chef ?"~ [MRT515]{#morte_s729_1}'

    menu:
        '"Peux-tu me relire ce qui est tatoué sur mon dos ?"{#morte_s729_r66345}':
            # a1449 # r66345
            jump morte_s649

        '"Peux-tu me parler de Sigil ?"{#morte_s729_r66346}':
            # a1450 # r66346
            jump morte_s659

        '"Morte… Ça ne me dérange pas que tu me suives mais ne sais-tu rien faire *d„autre* que bavarder ?"{#morte_s729_r66347}' if morteLogic.r66347_condition():
            # a1451 # r66347
            jump morte_s663

        '"Morte… Quels sont tes talents magiques déjà ?"{#morte_s729_r66348}' if morteLogic.r66348_condition():
            # a1452 # r66348
            jump morte_s666

        '"Morte, pourquoi ne m„as-tu pas parlé de cette ligne supplémentaire dans le tatouage de mon dos ?"{#morte_s729_r66349}' if morteLogic.r66349_condition():
            # a1453 # r66349
            jump morte_s654

        '"J„ai besoin d“un conseil. À ton avis, qu„est-ce qu“on devrait faire maintenant ?"{#morte_s729_r66350}':
            # a1454 # r66350
            jump morte_s669

        '"Tu as dit que tu étais un mimir, n„est-ce pas, Morte ?"{#morte_s729_r66351}' if morteLogic.r66351_condition():
            # a1455 # r66351
            jump morte_s684

        '"Raconte-moi encore une fois comment tu as fini sur le Pilier des Crânes."{#morte_s729_r66352}' if morteLogic.r66352_condition():
            # a1456 # r66352
            jump morte_s693

        '"Morte, pourquoi tu as continué à voyager avec moi une fois que je t„ai sorti du Pilier ?"{#morte_s729_r66353}' if morteLogic.r66353_condition():
            # a1457 # r66353
            jump morte_s715

        '"Qu„est-ce que tu sais de la Guerre Sanglante ?"{#morte_s729_r66354}' if morteLogic.r66354_condition():
            # a1458 # r66354
            jump morte_s723

        '"Que sais-tu sur la guenaude noire nommée Ravel ?"{#morte_s729_r66355}' if morteLogic.r66355_condition():
            # a1459 # r66355
            jump morte_s722

        '"Comment es-tu mort, Morte ?"{#morte_s729_r66356}':
            # a1460 # r66356
            jump morte_s726

        '"Rien, Morte. Je vérifiais juste que tu étais toujours avec moi."{#morte_s729_r66357}':
            # a1461 # r66357
            jump morte_dispose


# s730 # say66816
label morte_s730: # -
    nr '"Hé, chef, tu les crois, ces deux-là ? Sûr qu„ils pourraient m“apprendre un truc ou deux…"~ [MRT387]{#morte_s730_1}'

    menu:
        '"En effet, Morte. Allez, viens."{#morte_s730_r66817}':
            # a1462 # r66817
            jump morte_dispose


# s731 # say67510
label morte_s731: # -
    nr '"Je voudrais simplement dire que je ne dirai rien qui pourrait casser l„ambiance, chef. Ne fais surtout pas attention à moi, je vais juste rester là, à flotter et à surveiller."{#morte_s731_1}'

    jump annah_s418  # EXTERN


# s732 # say67600
label morte_s732: # -
    nr '"Vous allez arrêter tous les deux ou faut-il que j„aille chercher un dabus pour vous séparer !" grogne Morte. "Vous dabusez tout de même."{#morte_s732_1}'

    jump annah_s446  # EXTERN


# s733 # say68171
label morte_s733: # - # IF WEIGHT #1 ~  Global("Fortress_Morte","GLOBAL",3) Global("Absorb","GLOBAL",0)
    nr 'Morte prend brusquement la parole lorsque tu tends la main. "Holà, holà, du calme, chef ! Euh… il y a quelques petites choses qu„il faut que je te dise…"~ [MRT242]{#morte_s733_1}'

    menu:
        '"Morte ? Tu n„es pas mort ?"{#morte_s733_r68176}':
            # a1463 # r68176
            $ morteLogic.r68176_action()
            jump morte_s734


# s734 # say68172
label morte_s734: # from 733.0
    nr '"Eh bien - quand on est mort depuis aussi longtemps que moi, c„est facile de faire semblant. J“ai comme qui dirait écouté votre conversation. Utilise ce pouvoir sur quelqu„un d“autre ; moi, j„en ai pas besoin."{#morte_s734_1}'

    menu:
        '"Alors, comme ça, tu avais l„intention de rester planqué là pendant que je me faisais massacrer ?"{#morte_s734_r68177}':
            # a1464 # r68177
            jump morte_s735


# s735 # say68173
label morte_s735: # from 734.0
    nr '"Ouais, mais c„est pas comme si t“allais mourir, hein, chef ? Enfin, j„veux dire, si jamais t“échoues, t„auras besoin que quelqu“un se souvienne à ta place. Et puis, tu sais bien que je sers pas à grand-chose au combat, du moment qu„y a personne à mettre en boule…"{#morte_s735_1}'

    menu:
        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68178}' if morteLogic.r68178_condition():
            # a1465 # r68178
            jump morte_s736

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68189}' if morteLogic.r68189_condition():
            # a1466 # r68189
            $ morteLogic.r68189_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68190}' if morteLogic.r68190_condition():
            # a1467 # r68190
            $ morteLogic.r68190_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68191}' if morteLogic.r68191_condition():
            # a1468 # r68191
            $ morteLogic.r68191_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68192}' if morteLogic.r68192_condition():
            # a1469 # r68192
            $ morteLogic.r68192_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68193}' if morteLogic.r68193_condition():
            # a1470 # r68193
            $ morteLogic.r68193_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68194}' if morteLogic.r68194_condition():
            # a1471 # r68194
            $ morteLogic.r68194_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68239}' if morteLogic.r68239_condition():
            # a1472 # r68239
            $ morteLogic.r68239_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68438}' if morteLogic.r68438_condition():
            # a1473 # r68438
            $ morteLogic.r68438_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68439}' if morteLogic.r68439_condition():
            # a1474 # r68439
            $ morteLogic.r68439_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68446}' if morteLogic.r68446_condition():
            # a1475 # r68446
            $ morteLogic.r68446_action()
            jump morte_dispose

        '"Dans ce cas, c„est peut-être ce que je te ferai faire. Nous en reparlerons plus tard, Morte…"{#morte_s735_r68503}' if morteLogic.r68503_condition():
            # a1476 # r68503
            jump trans_s142  # EXTERN


# s736 # say68174
label morte_s736: # from 735.0
    nr 'Tu puises une nouvelle fois en toi.{#morte_s736_1}'

    menu:
        'Ressuscite Annah.{#morte_s736_r68175}' if morteLogic.r68175_condition():
            # a1477 # r68175
            $ morteLogic.r68175_action()
            jump morte_dispose

        'Ressuscite Dak„kon.{#morte_s736_r68179}' if morteLogic.r68179_condition():
            # a1478 # r68179
            $ morteLogic.r68179_action()
            jump morte_dispose

        'Ressuscite Tombée-en-Disgrâce.{#morte_s736_r68180}' if morteLogic.r68180_condition():
            # a1479 # r68180
            $ morteLogic.r68180_action()
            jump morte_dispose

        'Ressuscite Nordom.{#morte_s736_r68181}' if morteLogic.r68181_condition():
            # a1480 # r68181
            $ morteLogic.r68181_action()
            jump morte_dispose

        'Ressuscite Ignus.{#morte_s736_r68182}' if morteLogic.r68182_condition():
            # a1481 # r68182
            $ morteLogic.r68182_action()
            jump morte_dispose

        'Ressuscite Vhailor.{#morte_s736_r68183}' if morteLogic.r68183_condition():
            # a1482 # r68183
            $ morteLogic.r68183_action()
            jump morte_dispose


# s737 # say68310
label morte_s737: # - # IF WEIGHT #2 ~  Global("Fortress_Morte","GLOBAL",3) GlobalGT("Absorb","GLOBAL",0)
    nr 'Alors que ton pouvoir va envelopper Morte, celui-ci s„élève tout seul. "Euh, un petit instant, chef. Pas la peine de me ressusciter, tu vois. J“étais comme qui dirait en train de vous écouter causer sans me faire remarquer."{#morte_s737_1}'

    menu:
        'TU FAISAIS SEMBLANT D„ÊTRE MORT.{#morte_s737_r68311}':
            # a1483 # r68311
            jump morte_s738


# s738 # say68312
label morte_s738: # from 737.0
    nr '"Ce que je veux dire, c„est que je suis *déjà* mort, chef, et… euh, dis-moi, qu“est-ce qui est arrivé à ta voix ?"{#morte_s738_1}'

    menu:
        'JE SUIS DÉSORMAIS… AUTRE CHOSE. LE TEMPS M„EST COMPTÉ ET, BIENTÔT, MON DESTIN ME RATTRAPERA. SI TU VEUX, JE PEUX TE RENVOYER À SIGIL, MORTE.{#morte_s738_r68313}':
            # a1484 # r68313
            jump morte_s739


# s739 # say68314
label morte_s739: # from 738.0
    nr '"Que… me renvoyer, moi ? Et *toi* ? Allons, chef, j„suis peut-être un lâche, mais j“vais pas t„laisser là."{#morte_s739_1}'

    menu:
        'NOMBREUX SONT LES CRIMES COMMIS TANDIS QUE NOUS ÉTIONS SÉPARÉS, MA MORTALITÉ ET MOI. ET LE… PRIX À PAYER EST LOURD. TU NE PEUX TE RENDRE LÀ OÙ J„IRAI BIENTÔT.{#morte_s739_r68315}':
            # a1485 # r68315
            jump morte_s740


# s740 # say68316
label morte_s740: # from 739.0
    nr '"Eh ben… je peux venir avec toi, si tu veux, chef. On a connu pire, tous les d…"{#morte_s740_1}'

    menu:
        'PAS CETTE FOIS. PEUT-ÊTRE NOUS RETROUVERONS-NOUS UN JOUR, SUR UN AUTRE PLAN, MAIS PAS MAINTENANT.{#morte_s740_r68317}':
            # a1486 # r68317
            jump morte_s741


# s741 # say68318
label morte_s741: # from 740.0
    nr 'Morte te dévisage longuement puis soupire. "Sans s„mettre la larme à l“œil, ça a été un plaisir de t„connaître, chef."~ [MRT109]{#morte_s741_1}'

    menu:
        'AU REVOIR, MORTE.{#morte_s741_r68319}' if morteLogic.r68319_condition():
            # a1487 # r68319
            $ morteLogic.r68319_action()
            jump morte_dispose

        'AU REVOIR, MORTE.{#morte_s741_r68320}' if morteLogic.r68320_condition():
            # a1488 # r68320
            $ morteLogic.r68320_action()
            jump morte_dispose

        'AU REVOIR, MORTE.{#morte_s741_r68321}' if morteLogic.r68321_condition():
            # a1489 # r68321
            $ morteLogic.r68321_action()
            jump morte_dispose

        'AU REVOIR, MORTE.{#morte_s741_r68322}' if morteLogic.r68322_condition():
            # a1490 # r68322
            $ morteLogic.r68322_action()
            jump morte_dispose

        'AU REVOIR, MORTE.{#morte_s741_r68323}' if morteLogic.r68323_condition():
            # a1491 # r68323
            $ morteLogic.r68323_action()
            jump morte_dispose

        'AU REVOIR, MORTE.{#morte_s741_r68324}' if morteLogic.r68324_condition():
            # a1492 # r68324
            $ morteLogic.r68324_action()
            jump morte_dispose

        'AU REVOIR, MORTE.{#morte_s741_r68325}' if morteLogic.r68325_condition():
            # a1493 # r68325
            $ morteLogic.r68325_action()
            jump morte_dispose

        'AU REVOIR, MORTE.{#morte_s741_r68490}' if morteLogic.r68490_condition():
            # a1494 # r68490
            $ morteLogic.r68490_action()
            jump morte_dispose

        'AU REVOIR, MORTE.{#morte_s741_r68491}' if morteLogic.r68491_condition():
            # a1495 # r68491
            $ morteLogic.r68491_action()
            jump morte_dispose

        'AU REVOIR, MORTE.{#morte_s741_r68492}' if morteLogic.r68492_condition():
            # a1496 # r68492
            $ morteLogic.r68492_action()
            jump morte_dispose


# s742 # say68408
label morte_s742: # - # IF WEIGHT #3 ~  Global("Fortress_Morte","GLOBAL",4)
    nr 'Morte te dévisage longuement puis soupire. "Sans s„mettre la larme à l“œil, ça a été un plaisir de t„connaître, chef."~ [MRT109]{#morte_s742_1}'

    menu:
        '"Bon, alors allons-y…"{#morte_s742_r68409}':
            # a1497 # r68409
            jump morte_dispose
