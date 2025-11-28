init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dustfem_logic import DustfemLogic
    dustfemLogic = DustfemLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUSTFEM.DLG
# ###


# s0 # say298
label dustfem_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'La femme Homme-Poussière ne semble pas te voir. Elle doit te confondre avec l„un des ouvriers cadavériques.{#dustfem_s0_1}'

    menu:
        '"Bonjour."{#dustfem_s0_r299}':
            # a0 # r299
            jump dustfem_s1

        '"Qui es-tu ?"{#dustfem_s0_r318}':
            # a1 # r318
            jump dustfem_s1

        '"C„est quoi, cet endroit ?"{#dustfem_s0_r1168}':
            # a2 # r1168
            jump dustfem_s1

        '"J„ai quelques questions…"{#dustfem_s0_r1169}':
            # a3 # r1169
            jump dustfem_s1

        'Laisse-la tranquille.{#dustfem_s0_r1170}':
            # a4 # r1170
            jump dustfem_dispose


# s1 # say1171
label dustfem_s1: # from 0.0 0.1 0.2 0.3
    nr 'La femme Homme-Poussière sursaute, puis tourne la tête d„un coup sec pour te regarder. Elle a l“air choqué.{#dustfem_s1_1}'

    menu:
        'Brise-lui la nuque avant qu„elle ne se mette à crier.{#dustfem_s1_r1172}':
            # a5 # r1172
            jump dustfem_s41

        '"J„ai quelques questions."{#dustfem_s1_r1174}':
            # a6 # r1174
            jump dustfem_s2

        'Va-t„en. Vite.{#dustfem_s1_r1175}':
            # a7 # r1175
            jump dustfem_s2


# s2 # say1176
label dustfem_s2: # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    nr 'La femme Homme-Poussière recule d„un pas, puis elle frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.{#dustfem_s2_1}'

    menu:
        '"Alors très bien…"{#dustfem_s2_r1225}':
            # a8 # r1225
            $ dustfemLogic.r1225_action()
            jump dustfem_dispose


# s3 # say1177
label dustfem_s3: # externs morte_s84
    nr 'Cette femme au visage pâle est vêtue d„un habit long et sombre. Une légère odeur de moisi l“enveloppe. Son expression est sans vie. Elle semble absorbée par sa tâche.{#dustfem_s3_1}'

    menu:
        '"Bonjour."{#dustfem_s3_r1226}':
            # a9 # r1226
            jump dustfem_s4

        '"Qui es-tu ?"{#dustfem_s3_r1227}':
            # a10 # r1227
            jump dustfem_s4

        '"C„est quoi, cet endroit ?"{#dustfem_s3_r1228}':
            # a11 # r1228
            jump dustfem_s4

        '"J„ai quelques questions…"{#dustfem_s3_r1229}':
            # a12 # r1229
            jump dustfem_s4

        'Laisse-la tranquille.{#dustfem_s3_r1230}':
            # a13 # r1230
            jump dustfem_dispose


# s4 # say1178
label dustfem_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'La femme Homme-Poussière relève lentement la tête et se tourne vers toi. "Es-tu perdu ?"{#dustfem_s4_1}'

    menu:
        '"Oui."{#dustfem_s4_r1231}':
            # a14 # r1231
            jump dustfem_s5

        '"Non."{#dustfem_s4_r1232}':
            # a15 # r1232
            jump dustfem_s6

        '"Non, je ne suis pas perdu. J„ai quelques questions…"{#dustfem_s4_r1233}':
            # a16 # r1233
            jump dustfem_s6

        '"Au revoir."{#dustfem_s4_r1234}':
            # a17 # r1234
            jump dustfem_s2


# s5 # say1179
label dustfem_s5: # from 4.0 16.2 51.1
    nr '"J„appelle un garde pour te guider vers la sortie. Attends."{#dustfem_s5_1}'

    menu:
        'Brise-lui la nuque avant qu„elle ne se mette à crier.{#dustfem_s5_r1235}' if dustfemLogic.r1235_condition():
            # a18 # r1235
            jump dustfem_s44

        'Brise-lui la nuque avant qu„elle ne se mette à crier.{#dustfem_s5_r1236}' if dustfemLogic.r1236_condition():
            # a19 # r1236
            jump dustfem_s41

        'Va-t„en. Vite.{#dustfem_s5_r1237}':
            # a20 # r1237
            jump dustfem_s2

        'Attends.{#dustfem_s5_r1238}':
            # a21 # r1238
            jump dustfem_s2


# s6 # say1180
label dustfem_s6: # from 4.1 4.2 51.2 51.3
    nr '"Si tu n„es pas perdu, que fais-tu ici ?"{#dustfem_s6_1}'

    menu:
        '"Ça ne te regarde pas."{#dustfem_s6_r1239}':
            # a22 # r1239
            jump dustfem_s7

        '"Je me suis réveillé sur une dalle de ta salle de préparation."{#dustfem_s6_r1240}':
            # a23 # r1240
            jump dustfem_s8

        '"Je suis là pour voir quelqu„un."{#dustfem_s6_r1241}':
            # a24 # r1241
            jump dustfem_s9

        '"J„étais là pour un enterrement, mais je crois qu“il y a eu erreur."{#dustfem_s6_r1242}' if dustfemLogic.r1242_condition():
            # a25 # r1242
            jump dustfem_s16

        'Va-t„en. Vite.{#dustfem_s6_r1243}':
            # a26 # r1243
            jump dustfem_s2


# s7 # say1181
label dustfem_s7: # from 6.0 9.0 20.0
    nr '"Si, ça me regarde. Les gardes réussiront peut-être à te délier la langue." La femme Homme-Poussière recule d„un pas ; elle semble prête à appeler les gardes.{#dustfem_s7_1}'

    menu:
        'Brise-lui la nuque avant qu„elle ne se mette à crier.{#dustfem_s7_r1244}' if dustfemLogic.r1244_condition():
            # a27 # r1244
            jump dustfem_s44

        'Brise-lui la nuque avant qu„elle ne se mette à crier.{#dustfem_s7_r1245}' if dustfemLogic.r1245_condition():
            # a28 # r1245
            jump dustfem_s41

        '"Alors, fais-les venir. Je voudrais les rencontrer."{#dustfem_s7_r1246}':
            # a29 # r1246
            $ dustfemLogic.r1246_action()
            jump dustfem_dispose


# s8 # say1182
label dustfem_s8: # from 6.1 16.0 20.1
    nr '"Tu plaisantes ? Tu désires peut-être en faire profiter les gardes." La femme Homme-Poussière recule d„un pas ; elle semble prête à appeler les gardes.{#dustfem_s8_1}'

    menu:
        'Brise-lui la nuque avant qu„elle ne se mette à crier.{#dustfem_s8_r1247}' if dustfemLogic.r1247_condition():
            # a30 # r1247
            jump dustfem_s44

        'Brise-lui la nuque avant qu„elle ne se mette à crier.{#dustfem_s8_r1248}' if dustfemLogic.r1248_condition():
            # a31 # r1248
            jump dustfem_s41

        '"Alors, fais-les venir. Je voudrais les rencontrer."{#dustfem_s8_r1249}':
            # a32 # r1249
            $ dustfemLogic.r1249_action()
            jump dustfem_dispose


# s9 # say1183
label dustfem_s9: # from 6.2 20.2
    nr '"À qui viens-tu rendre visite ?"{#dustfem_s9_1}'

    menu:
        '"Ça ne te regarde pas."{#dustfem_s9_r1251}':
            # a33 # r1251
            jump dustfem_s7

        '"Je suis venu voir Dhall."{#dustfem_s9_r1253}' if dustfemLogic.r1253_condition():
            # a34 # r1253
            jump dustfem_s10

        '"Je suis là pour voir Dhall."{#dustfem_s9_r1255}' if dustfemLogic.r1255_condition():
            # a35 # r1255
            jump dustfem_s11

        '"Je suis là pour voir Deionarra."{#dustfem_s9_r1258}' if dustfemLogic.r1258_condition():
            # a36 # r1258
            jump dustfem_s13

        '"Je suis là pour voir Deionarra."{#dustfem_s9_r4336}' if dustfemLogic.r4336_condition():
            # a37 # r4336
            jump dustfem_s12

        '"Je suis là pour voir Soego."{#dustfem_s9_r33224}' if dustfemLogic.r33224_condition():
            # a38 # r33224
            jump dustfem_s15

        '"Je suis là pour voir Soego."{#dustfem_s9_r33226}' if dustfemLogic.r33226_condition():
            # a39 # r33226
            jump dustfem_s14

        'Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"{#dustfem_s9_r33227}' if dustfemLogic.r33227_condition():
            # a40 # r33227
            $ dustfemLogic.r33227_action()
            jump dustfem_s21

        'Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"{#dustfem_s9_r33229}' if dustfemLogic.r33229_condition():
            # a41 # r33229
            jump dustfem_s21

        '"Euh, personne. Ce n„était pas ce que je voulais dire."{#dustfem_s9_r33231}':
            # a42 # r33231
            jump dustfem_s20


# s10 # say1184
label dustfem_s10: # from 9.1
    nr '"Dhall est dans la salle de réception à cet étage. Je dois te prévenir… Dhall est très occupé et il ne se porte pas bien. Si tes affaires ne sont pas urgentes, je te suggère de ne pas le déranger."{#dustfem_s10_1}'

    menu:
        '"Très bien. Merci du renseignement."{#dustfem_s10_r1259}':
            # a43 # r1259
            jump dustfem_s48


# s11 # say1185
label dustfem_s11: # from 9.2
    nr '"Dhall doit être dans la salle de réception au premier étage. Il est très occupé et ne se porte pas très bien. Si tes affaires ne sont pas urgentes, je te suggère de ne pas le déranger."{#dustfem_s11_1}'

    menu:
        '"Très bien. Merci du renseignement."{#dustfem_s11_r1260}':
            # a44 # r1260
            jump dustfem_s48


# s12 # say1186
label dustfem_s12: # from 9.4 19.1
    nr '"Deionarra ? Je sais qu„une femme est enterrée dans la Salle de Commémoration au rez-de-chaussée. C“est peut-être elle."{#dustfem_s12_1}'

    menu:
        '"Très probablement. Merci."{#dustfem_s12_r1261}':
            # a45 # r1261
            jump dustfem_s48


# s13 # say1187
label dustfem_s13: # from 9.3
    nr '"Deionarra ? Je sais qu„une femme est enterrée dans la Salle de Commémoration du nord-ouest. C“est peut-être elle."{#dustfem_s13_1}'

    menu:
        '"Très probablement. Merci."{#dustfem_s13_r1262}':
            # a46 # r1262
            jump dustfem_s48


# s14 # say1188
label dustfem_s14: # from 9.6
    nr '"Je crois que Soego est près de la porte d„entrée au rez-de-chaussée. Il sert de guide pendant les heures d“anti-pic."{#dustfem_s14_1}'

    menu:
        '"Très bien. Merci."{#dustfem_s14_r1263}':
            # a47 # r1263
            jump dustfem_s48


# s15 # say1189
label dustfem_s15: # from 9.5
    nr '"Je crois que Soego est près de la porte d„entrée. Il sert de guide pendant les heures d“anti-pic."{#dustfem_s15_1}'

    menu:
        '"Très bien. Merci."{#dustfem_s15_r1264}':
            # a48 # r1264
            jump dustfem_s48


# s16 # say1190
label dustfem_s16: # from 6.3 20.3
    nr '"Qui enterre-t-on ? Le service funèbre doit avoir lieu ailleurs dans la Morgue."{#dustfem_s16_1}'

    menu:
        '"Tu ne comprends pas… L„erreur d“enterrement, c„était MOI."{#dustfem_s16_r1265}':
            # a49 # r1265
            jump dustfem_s8

        '"Ça se pourrait. Où ont lieu ces autres services ?"{#dustfem_s16_r1266}':
            # a50 # r1266
            jump dustfem_s17

        '"Tu peux m„indiquer la sortie ?"{#dustfem_s16_r1267}':
            # a51 # r1267
            jump dustfem_s5


# s17 # say1191
label dustfem_s17: # from 16.1
    nr '"Plusieurs chambres funéraires bordent le périmètre de la Morgue. Elles suivent la courbe du mur au rez-de-chaussée et au premier étage. Connais-tu l„identité du mort ?"{#dustfem_s17_1}'

    menu:
        '"Non."{#dustfem_s17_r1268}':
            # a52 # r1268
            jump dustfem_s18

        '"Oui."{#dustfem_s17_r1269}':
            # a53 # r1269
            jump dustfem_s19


# s18 # say1192
label dustfem_s18: # from 17.0
    nr '"Alors vérifie auprès de l„un des guides à la porte d“entrée. Il sera en mesure de t„aider."{#dustfem_s18_1}'

    menu:
        '"Très bien. Merci."{#dustfem_s18_r1270}':
            # a54 # r1270
            jump dustfem_dispose


# s19 # say1193
label dustfem_s19: # from 17.1
    nr 'L„Homme-Poussière attend.{#dustfem_s19_1}'

    menu:
        '"Pardon… Ce n„est pas ce que je voulais dire. Je ne connais pas le nom du défunt."{#dustfem_s19_r1271}':
            # a55 # r1271
            jump dustfem_s20

        '"Elle s„appelle Deionarra."{#dustfem_s19_r1272}' if dustfemLogic.r1272_condition():
            # a56 # r1272
            jump dustfem_s12

        'Mensonge : "Il s„appelle… euh, Adahn."{#dustfem_s19_r1273}' if dustfemLogic.r1273_condition():
            # a57 # r1273
            $ dustfemLogic.r1273_action()
            jump dustfem_s21

        'Mensonge : "Il s„appelle… euh, Adahn."{#dustfem_s19_r1274}' if dustfemLogic.r1274_condition():
            # a58 # r1274
            jump dustfem_s21

        'Penche-toi comme pour lui murmurer quelque chose à l„oreille, puis brise-lui la nuque.{#dustfem_s19_r1275}' if dustfemLogic.r1275_condition():
            # a59 # r1275
            jump dustfem_s44

        'Penche-toi comme pour lui murmurer quelque chose à l„oreille, puis brise-lui la nuque.{#dustfem_s19_r1276}' if dustfemLogic.r1276_condition():
            # a60 # r1276
            jump dustfem_s45

        'Enfuis-toi.{#dustfem_s19_r1277}':
            # a61 # r1277
            jump dustfem_s2


# s20 # say1194
label dustfem_s20: # from 9.9 19.0
    nr '"Je vois. Mais que veux-tu ?"{#dustfem_s20_1}'

    menu:
        '"Ça ne te regarde pas."{#dustfem_s20_r1278}':
            # a62 # r1278
            jump dustfem_s7

        '"Je me suis réveillé sur une dalle de ta salle de préparation."{#dustfem_s20_r1279}':
            # a63 # r1279
            jump dustfem_s8

        '"Je suis là pour voir quelqu„un."{#dustfem_s20_r1280}':
            # a64 # r1280
            jump dustfem_s9

        '"J„étais là pour un enterrement, mais je crois qu“il y a eu erreur."{#dustfem_s20_r1281}' if dustfemLogic.r1281_condition():
            # a65 # r1281
            jump dustfem_s16

        'Enfuis-toi.{#dustfem_s20_r1282}':
            # a66 # r1282
            jump dustfem_s2


# s21 # say1195
label dustfem_s21: # from 9.7 9.8 19.2 19.3
    nr '"Ce nom ne m„est pas familier. Vérifie auprès de l“un des guides, à la porte d„entrée… Il saura mieux te renseigner que moi."{#dustfem_s21_1}'

    menu:
        '"Très bien. C„est ce que je vais faire. Au revoir."{#dustfem_s21_r1283}':
            # a67 # r1283
            jump dustfem_dispose


# s22 # say1196
label dustfem_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Cette femme au visage pâle est vêtue d„un habit long et sombre. Une légère odeur de moisi l“enveloppe. Son expression est sans vie. Elle semble absorbée par sa tâche.{#dustfem_s22_1}'

    menu:
        '"Bonjour."{#dustfem_s22_r1284}':
            # a68 # r1284
            jump dustfem_s23

        'Laisse-la tranquille.{#dustfem_s22_r1285}':
            # a69 # r1285
            jump dustfem_dispose


# s23 # say1197
label dustfem_s23: # from 22.0
    nr 'Elle se retourne lentement ; ses yeux cillent sur ton habit. "Bonjour, initié."{#dustfem_s23_1}'

    menu:
        '"Qui es-tu ?"{#dustfem_s23_r1286}':
            # a70 # r1286
            jump dustfem_s24

        '"Qu„est-ce que c“est que cet endroit ?"{#dustfem_s23_r1287}':
            # a71 # r1287
            jump dustfem_s25

        '"J„ai des questions…"{#dustfem_s23_r1288}':
            # a72 # r1288
            jump dustfem_s26

        'Laisse-la tranquille.{#dustfem_s23_r1289}':
            # a73 # r1289
            jump dustfem_dispose


# s24 # say1198
label dustfem_s24: # from 23.0
    nr '"Je pourrais te retourner la question. Ton visage m„est inconnu. Qui es-tu ?"{#dustfem_s24_1}'

    menu:
        'Mensonge : "Le nom est… euh, Adahn."{#dustfem_s24_r1290}' if dustfemLogic.r1290_condition():
            # a74 # r1290
            $ dustfemLogic.r1290_action()
            jump dustfem_s49

        'Mensonge : "Le nom est… euh, Adahn."{#dustfem_s24_r1291}' if dustfemLogic.r1291_condition():
            # a75 # r1291
            jump dustfem_s49

        '"Qu„importe mon nom. Je dois partir. Au revoir."{#dustfem_s24_r1292}' if dustfemLogic.r1292_condition():
            # a76 # r1292
            jump dustfem_s47

        '"Qu„importe mon nom. Je dois partir. Au revoir."{#dustfem_s24_r1293}' if dustfemLogic.r1293_condition():
            # a77 # r1293
            jump dustfem_s46


# s25 # say1199
label dustfem_s25: # from 23.1
    nr '"Voici la Morgue…" L„Homme-Poussière t“observe un instant ; comme s„il digérait tes paroles. "C“est quoi déjà, ton nom… ?"{#dustfem_s25_1}'

    menu:
        'Mensonge : "Le nom est… euh, Adahn."{#dustfem_s25_r1294}' if dustfemLogic.r1294_condition():
            # a78 # r1294
            $ dustfemLogic.r1294_action()
            jump dustfem_s49

        'Mensonge : "Le nom est… euh, Adahn."{#dustfem_s25_r1295}' if dustfemLogic.r1295_condition():
            # a79 # r1295
            jump dustfem_s49

        '"Qu„importe mon nom. Je dois partir. Au revoir."{#dustfem_s25_r1296}' if dustfemLogic.r1296_condition():
            # a80 # r1296
            jump dustfem_s47

        '"Qu„importe mon nom. Je dois partir. Au revoir."{#dustfem_s25_r1297}' if dustfemLogic.r1297_condition():
            # a81 # r1297
            jump dustfem_s46


# s26 # say1200
label dustfem_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'L„Homme-Poussière attend patiemment que tu continues.{#dustfem_s26_1}'

    menu:
        '"Peux-tu me dire comment sortir d„ici ?"{#dustfem_s26_r1298}':
            # a82 # r1298
            jump dustfem_s27

        '"Connais-tu un certain Pharod ?"{#dustfem_s26_r1299}':
            # a83 # r1299
            jump dustfem_s28

        '"J„ai perdu un journal. Tu ne l“aurais pas vu ?"{#dustfem_s26_r1300}':
            # a84 # r1300
            jump dustfem_s39

        '"Tant pis. Excuse-moi de t„avoir dérangé."{#dustfem_s26_r1328}':
            # a85 # r1328
            jump dustfem_s48


# s27 # say1201
label dustfem_s27: # from 26.0
    nr '"Tu peux sortir tout simplement par la porte d„entrée, au rez-de-chaussée."{#dustfem_s27_1}'

    menu:
        '"J„ai d“autres questions…"{#dustfem_s27_r1329}':
            # a86 # r1329
            jump dustfem_s26

        '"Merci. Au revoir."{#dustfem_s27_r1330}':
            # a87 # r1330
            jump dustfem_s48


# s28 # say1202
label dustfem_s28: # from 26.1
    nr '"Ce nom…" L„Homme-Poussière hésite un instant. "Ce nom me *dit* quelque chose… Un Récupérateur portait le même. Dhall le Scribe le connaît peut-être."{#dustfem_s28_1}'

    menu:
        '"Un Récupérateur ?"{#dustfem_s28_r1331}':
            # a88 # r1331
            jump dustfem_s29

        '"Dhall ?"{#dustfem_s28_r1334}':
            # a89 # r1334
            jump dustfem_s30

        '"J„ai d“autres questions…"{#dustfem_s28_r1338}':
            # a90 # r1338
            jump dustfem_s26

        '"Merci de m„avoir accordé un peu de temps. Au revoir."{#dustfem_s28_r1395}':
            # a91 # r1395
            jump dustfem_s48


# s29 # say1203
label dustfem_s29: # from 28.0
    nr '"Les Récupérateurs sont ceux qui ramassent les cadavres dans les rues de Sigil et qui les portent à la Morgue…" L„Homme-Poussière fait une pause, puis fronce les sourcils. "Tu n“es pas du coin. Qui es-tu ?"{#dustfem_s29_1}'

    menu:
        '"Mon initiation est récente. Pardonne mon ignorance."{#dustfem_s29_r1396}' if dustfemLogic.r1396_condition():
            # a92 # r1396
            jump dustfem_s50

        '"Ça ne fait pas longtemps que je suis ici. J„essaie… de prendre mes repères."{#dustfem_s29_r1397}' if dustfemLogic.r1397_condition():
            # a93 # r1397
            jump dustfem_s47

        '"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."{#dustfem_s29_r1398}' if dustfemLogic.r1398_condition():
            # a94 # r1398
            jump dustfem_s47

        '"Si tu ne peux pas m„aider, je trouverai quelqu“un d„autre. Au revoir."{#dustfem_s29_r1399}' if dustfemLogic.r1399_condition():
            # a95 # r1399
            jump dustfem_s46


# s30 # say1204
label dustfem_s30: # from 28.1
    nr '"Dhall est hautement respecté dans notre faction. Personne n„a médité autant que lui sur la nature de la Vraie Mort. Personne n“est plus digne que lui. Il a tant de sagesse à donner. Si tu ne le connais pas encore, tu devrais saisir une occasion de lui parler. Il ne séjournera plus longtemps dans l„ombre de cette existence."{#dustfem_s30_1}'

    menu:
        '"Il ne traînera pas longtemps dans l„ombre de cette existence ?"{#dustfem_s30_r4280}':
            # a96 # r4280
            jump dustfem_s31

        '"Où est-ce que je peux trouver Dhall ?"{#dustfem_s30_r4281}' if dustfemLogic.r4281_condition():
            # a97 # r4281
            jump dustfem_s32

        '"Où est-ce que je peux trouver Dhall ?"{#dustfem_s30_r4282}' if dustfemLogic.r4282_condition():
            # a98 # r4282
            jump dustfem_s33

        '"J„ai d“autres questions…"{#dustfem_s30_r4283}':
            # a99 # r4283
            jump dustfem_s26

        '"Merci du renseignement. J„irai lui parler."{#dustfem_s30_r33245}':
            # a100 # r33245
            jump dustfem_s48


# s31 # say1205
label dustfem_s31: # from 30.0 32.0 33.0
    nr 'L„Homme-Poussière acquiesce. "Dhall est malade. Il est âgé, même selon les standards githzeraï. La mort succédera sans nul doute à la maladie dévastatrice qu“il a contracté. Il est chanceux."{#dustfem_s31_1}'

    menu:
        '"Les standards githzeraïs ?"{#dustfem_s31_r4284}':
            # a101 # r4284
            jump dustfem_s34

        '"C„est quoi un *githzeraï* ?"{#dustfem_s31_r4285}':
            # a102 # r4285
            jump dustfem_s35

        '"Il est chanceux ?"{#dustfem_s31_r4286}':
            # a103 # r4286
            jump dustfem_s36

        '"Je vois. J„ai d“autres questions…"{#dustfem_s31_r4287}':
            # a104 # r4287
            jump dustfem_s26

        '"Merci de m„avoir accordé un peu de temps. Je dois m“en aller."{#dustfem_s31_r4337}':
            # a105 # r4337
            jump dustfem_s48


# s32 # say1206
label dustfem_s32: # from 30.1
    nr '"Dhall est dans la salle de réception, dans l„aile nord-ouest, à cet étage. Je dois te prévenir… Dhall est absorbé par ses affaires et la maladie qui le ronge occupe le reste de son temps."{#dustfem_s32_1}'

    menu:
        '"Dhall est malade ?"{#dustfem_s32_r4288}':
            # a106 # r4288
            jump dustfem_s31

        '"Merci de m„avoir accordé un peu de temps. Je dois partir. Au revoir."{#dustfem_s32_r4289}':
            # a107 # r4289
            jump dustfem_s48


# s33 # say1207
label dustfem_s33: # from 30.2
    nr '"Dhall est très probablement dans la salle de réception au premier étage. Ne lui prends pas trop de son temps. Il est très pris par ses affaires et la maladie qui le ronge occupe le reste de son temps."{#dustfem_s33_1}'

    menu:
        '"Dhall est malade ?"{#dustfem_s33_r4290}':
            # a108 # r4290
            jump dustfem_s31

        '"Merci de m„avoir accordé un peu de temps. Je dois partir. Au revoir."{#dustfem_s33_r4291}':
            # a109 # r4291
            jump dustfem_s48


# s34 # say1208
label dustfem_s34: # from 31.0
    nr '"Oui, les githzeraïs ont une durée de vie plus longue que les humains."{#dustfem_s34_1}'

    menu:
        '"C„est quoi un *githzeraï* ?"{#dustfem_s34_r4292}':
            # a110 # r4292
            jump dustfem_s35

        '"En quoi est-ce que Dhall a de la chance de mourir ? Il n„est pas apprécié ?"{#dustfem_s34_r4293}':
            # a111 # r4293
            jump dustfem_s36

        '"Oh. J„ai d“autres questions…"{#dustfem_s34_r4294}':
            # a112 # r4294
            jump dustfem_s26

        '"Merci de m„avoir accordé un peu de temps. Au revoir."{#dustfem_s34_r4295}':
            # a113 # r4295
            jump dustfem_s48


# s35 # say1209
label dustfem_s35: # from 31.1 34.0
    nr '"Les githzeraï sont…" L„Homme-Poussière fait une pause, puis t“observe attentivement. "Tu n„es pas d“ici. Qui es-tu ?"{#dustfem_s35_1}'

    menu:
        '"Mon initiation est récente. Pardonne mon ignorance."{#dustfem_s35_r4296}' if dustfemLogic.r4296_condition():
            # a114 # r4296
            jump dustfem_s50

        '"Ça ne fait pas longtemps que je suis ici. J„essaie… de prendre mes repères."{#dustfem_s35_r4297}' if dustfemLogic.r4297_condition():
            # a115 # r4297
            jump dustfem_s47

        '"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."{#dustfem_s35_r4298}' if dustfemLogic.r4298_condition():
            # a116 # r4298
            jump dustfem_s47

        '"Si tu ne peux pas m„aider, je trouverai quelqu“un d„autre. Au revoir."{#dustfem_s35_r4300}' if dustfemLogic.r4300_condition():
            # a117 # r4300
            jump dustfem_s46


# s36 # say1210
label dustfem_s36: # from 31.2 34.1
    nr '"Il est chanceux car il atteindra la Vraie Mort. Il n„aura plus à vivre dans l“ombre de cette existence."{#dustfem_s36_1}'

    menu:
        '"Et… c„est une bonne chose ?"{#dustfem_s36_r4299}':
            # a118 # r4299
            jump dustfem_s37

        '"Je vois. Il a beaucoup de chance, en effet. J„ai d“autres questions…"{#dustfem_s36_r4301}':
            # a119 # r4301
            jump dustfem_s26

        '"Je vois. Bon, je dois m„en aller. Au revoir."{#dustfem_s36_r4302}':
            # a120 # r4302
            jump dustfem_s48


# s37 # say1211
label dustfem_s37: # from 36.0
    nr 'La femme Homme-Poussière acquiesce. "Oui". Elle fronce les sourcils, puis t„observe attentivement. "Tu n“es pas d„ici. Qui es-tu ?"{#dustfem_s37_1}'

    menu:
        '"Mon initiation est récente. Pardonne mon ignorance."{#dustfem_s37_r4303}' if dustfemLogic.r4303_condition():
            # a121 # r4303
            jump dustfem_s50

        '"Ça ne fait pas longtemps que je suis ici. J„essaie… de prendre mes repères."{#dustfem_s37_r4304}' if dustfemLogic.r4304_condition():
            # a122 # r4304
            jump dustfem_s47

        '"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."{#dustfem_s37_r4305}' if dustfemLogic.r4305_condition():
            # a123 # r4305
            jump dustfem_s47

        '"Si tu ne peux pas m„aider, je trouverai quelqu“un d„autre. Au revoir."{#dustfem_s37_r4306}' if dustfemLogic.r4306_condition():
            # a124 # r4306
            jump dustfem_s46


# s38 # say1212
label dustfem_s38: # -
    nr '"Tu n„es pas l“un des nôtres. Que fais-tu ici ? Es-tu un membre des Anarchistes ? Un espion d„une autre faction ?" La femme Homme-Poussière recule d“un pas. "Gardes ! Gardes !"{#dustfem_s38_1}'

    menu:
        '"Bon sang !"{#dustfem_s38_r4307}':
            # a125 # r4307
            $ dustfemLogic.r4307_action()
            jump dustfem_dispose

        '"Chhhh ! Je ne peux pas te répondre avec tous ces cris !"{#dustfem_s38_r4308}' if dustfemLogic.r4308_condition():
            # a126 # r4308
            $ dustfemLogic.r4308_action()
            jump dustfem_dispose

        '"Chhhh ! Je ne peux pas te répondre avec tous ces cris !"{#dustfem_s38_r4309}' if dustfemLogic.r4309_condition():
            # a127 # r4309
            $ dustfemLogic.r4309_action()
            jump dustfem_dispose


# s39 # say1213
label dustfem_s39: # from 26.2
    nr '"Un journal ? Je n„en ai vu aucun."{#dustfem_s39_1}'

    menu:
        '"J„ai d“autres questions…"{#dustfem_s39_r4310}':
            # a128 # r4310
            jump dustfem_s26

        '"Je dois m„en aller. Au revoir."{#dustfem_s39_r4311}':
            # a129 # r4311
            jump dustfem_s48


# s40 # say1214
label dustfem_s40: # -
    nr 'Cette femme au visage pâle est vêtue d„un habit long et sombre. Une légère odeur de moisi l“enveloppe. Son expression est sans vie. Elle semble absorbée par sa tâche.{#dustfem_s40_1}'

    menu:
        '"Bonjour."{#dustfem_s40_r4312}' if dustfemLogic.r4312_condition():
            # a130 # r4312
            jump morte_s81  # EXTERN

        '"Bonjour."{#dustfem_s40_r4313}' if dustfemLogic.r4313_condition():
            # a131 # r4313
            jump morte_s83  # EXTERN

        '"Bonjour."{#dustfem_s40_r4314}' if dustfemLogic.r4314_condition():
            # a132 # r4314
            jump dustfem_s4

        '"Bonjour."{#dustfem_s40_r4315}' if dustfemLogic.r4315_condition():
            # a133 # r4315
            jump dustfem_s4

        'Laisse-la tranquille.{#dustfem_s40_r4316}':
            # a134 # r4316
            jump dustfem_dispose


# s41 # say1215
label dustfem_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Avant que la femme Homme-Poussière ait eu le temps de dire un mot, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d„un coup sec.{#dustfem_s41_1}'

    menu:
        '"Je ne peux pas te laisser prévenir tes amis…"{#dustfem_s41_r4317}':
            # a135 # r4317
            $ dustfemLogic.r4317_action()
            jump dustfem_s42


# s42 # say1216
label dustfem_s42: # from 41.0 45.0
    nr 'Un *craquement* retentit ; le corps inerte de l„Homme-Poussière tombe dans tes bras.{#dustfem_s42_1}'

    menu:
        '"Je préfère que ce soit toi que moi, Homme-Poussière."{#dustfem_s42_r4318}' if dustfemLogic.r4318_condition():
            # a136 # r4318
            $ dustfemLogic.r4318_action()
            jump dustfem_s43

        '"Je préfère que ce soit toi que moi, Homme-Poussière."{#dustfem_s42_r4319}' if dustfemLogic.r4319_condition():
            # a137 # r4319
            $ dustfemLogic.r4319_action()
            jump dustfem_dispose


# s43 # say1217
label dustfem_s43: # from 42.0
    nr 'À ta grande surprise, cette action t„a paru instinctive, comme si tu l“avais déjà réalisée plusieurs fois… cela te rappelle vaguement quelque chose, mais le souvenir n„est pas assez fort pour refaire surface.{#dustfem_s43_1}'

    menu:
        'Laisse le corps, continue.{#dustfem_s43_r4320}':
            # a138 # r4320
            $ dustfemLogic.r4320_action()
            jump dustfem_dispose


# s44 # say1218
label dustfem_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Tu n„es pas assez rapide, et la femme Homme-Poussière évite ton mouvement. Elle recule d“un pas, frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.{#dustfem_s44_1}'

    menu:
        '"Alors très bien…"{#dustfem_s44_r4321}':
            # a139 # r4321
            $ dustfemLogic.r4321_action()
            jump dustfem_dispose


# s45 # say1219
label dustfem_s45: # from 19.5
    nr 'Tu te penches vers elle pour lui „murmurer“ quelque chose ; elle se penche aussi. Quand elle arrive à portée de mains, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d„un coup sec.{#dustfem_s45_1}'

    menu:
        '"Je ne peux pas te laisser prévenir tes amis…"{#dustfem_s45_r4322}':
            # a140 # r4322
            $ dustfemLogic.r4322_action()
            jump dustfem_s42


# s46 # say1220
label dustfem_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'La femme Homme-Poussière a l„air méfiante. Elle s“apprête à dire quelque chose, puis secoue légèrement la tête et retourne à sa tâche.{#dustfem_s46_1}'

    menu:
        'Éloigne-toi.{#dustfem_s46_r4323}':
            # a141 # r4323
            jump dustfem_dispose


# s47 # say1221
label dustfem_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'L„Homme-Poussière t“observe avec attention. "Tu n„es pas l“un des nôtres. Que fais-tu ici ? Es-tu membre des Anarchistes ? Ou un espion d„une autre faction ? Cela me semble être du ressort des gardes…"{#dustfem_s47_1}'

    menu:
        'Brise-lui la nuque avant qu„elle ne se mette à crier.{#dustfem_s47_r4324}' if dustfemLogic.r4324_condition():
            # a142 # r4324
            jump dustfem_s44

        'Brise-lui la nuque avant qu„elle ne se mette à crier.{#dustfem_s47_r4325}' if dustfemLogic.r4325_condition():
            # a143 # r4325
            jump dustfem_s41

        'Va-t„en. Vite.{#dustfem_s47_r4326}':
            # a144 # r4326
            jump dustfem_s2

        '"Non, non… Ce n„est pas, euh… Je veux dire, je n“espionne personne… En fait, je me suis réveillé sur l„une des dalles… et…"{#dustfem_s47_r4327}':
            # a145 # r4327
            jump dustfem_s2


# s48 # say1222
label dustfem_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'La femme Homme-Poussière hoche la tête, puis retourne à sa tâche.{#dustfem_s48_1}'

    menu:
        'Éloigne-toi.{#dustfem_s48_r4328}':
            # a146 # r4328
            jump dustfem_dispose


# s49 # say1223
label dustfem_s49: # from 24.0 24.1 25.0 25.1
    nr 'L„Homme-Poussière fronce les sourcils. "Ce nom ne me dit rien."{#dustfem_s49_1}'

    menu:
        '"Mon initiation est récente. Pardonne mon ignorance."{#dustfem_s49_r4329}' if dustfemLogic.r4329_condition():
            # a147 # r4329
            jump dustfem_s50

        '"Je suis… nouveau ici. Je… J„essaie d“apprendre la routine."{#dustfem_s49_r4331}' if dustfemLogic.r4331_condition():
            # a148 # r4331
            jump dustfem_s47

        '"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."{#dustfem_s49_r4332}' if dustfemLogic.r4332_condition():
            # a149 # r4332
            jump dustfem_s47

        '"Si tu ne peux pas m„aider, je trouverai quelqu“un d„autre. Au revoir."{#dustfem_s49_r4333}' if dustfemLogic.r4333_condition():
            # a150 # r4333
            jump dustfem_s46


# s50 # say1224
label dustfem_s50: # from 29.0 35.0 37.0 49.0
    nr 'La femme Homme-Poussière fronce toujours les sourcils, mais elle hoche légèrement la tête. "Très bien. Comment puis-je t„aider, initié ?"{#dustfem_s50_1}'

    menu:
        '"J„ai des questions…"{#dustfem_s50_r4334}':
            # a151 # r4334
            jump dustfem_s26

        '"Rien aujourd„hui. Au revoir."{#dustfem_s50_r4335}':
            # a152 # r4335
            jump dustfem_s46


# s51 # say66683
label dustfem_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'L„Homme-Poussière te dédie un regard dénué d“expression. "Tu es perdu ?"{#dustfem_s51_1}'

    menu:
        '"Non, je suis membre de la faction. Je fais juste le tour de la Morgue."{#dustfem_s51_r66684}' if dustfemLogic.r66684_condition():
            # a153 # r66684
            jump dustfem_s52

        '"Oui."{#dustfem_s51_r66685}' if dustfemLogic.r66685_condition():
            # a154 # r66685
            jump dustfem_s5

        '"Non."{#dustfem_s51_r66686}' if dustfemLogic.r66686_condition():
            # a155 # r66686
            jump dustfem_s6

        '"Je ne suis pas perdu, non. Par contre, j„aurais quelques questions à te poser…"{#dustfem_s51_r66687}' if dustfemLogic.r66687_condition():
            # a156 # r66687
            jump dustfem_s6

        '"Au revoir."{#dustfem_s51_r66688}' if dustfemLogic.r66688_condition():
            # a157 # r66688
            jump dustfem_s2


# s52 # say66689
label dustfem_s52: # from 51.0
    nr 'L„Homme-Poussière te regarde fixement puis hoche la tête. "Très bien. Si tu a besoin d“aide, fais-le moi savoir."{#dustfem_s52_1}'

    menu:
        '"Je n„y manquerai pas. Au revoir."{#dustfem_s52_r66690}':
            # a158 # r66690
            jump dustfem_dispose
