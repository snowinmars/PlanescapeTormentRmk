init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dust_logic import DustLogic
    dustLogic = DustLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUST.DLG
# ###


# s0 # say300
label dust_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'L„Homme-Poussière ne t“a pas remarqué. Il a dû te confondre avec l„un des ouvriers cadavériques.'

    menu:
        '"Bonjour."':
            # a0 # r302
            jump dust_s1

        '"Qui es-tu ?"':
            # a1 # r303
            jump dust_s1

        '"C„est quoi cet endroit ?"':
            # a2 # r304
            jump dust_s1

        '"J„ai quelques questions…"':
            # a3 # r305
            jump dust_s1

        'Laisse-le tranquille.':
            # a4 # r306
            jump dust_dispose


# s1 # say307
label dust_s1: # from 0.0 0.1 0.2 0.3
    nr 'L„Homme-Poussière saute, tourne brusquement la tête et te regarde. Il a l“air choqué.'

    menu:
        'Brise-lui la nuque avant qu„il se mette à crier.':
            # a5 # r310
            jump dust_s41

        '"J„ai des questions…"':
            # a6 # r312
            jump dust_s2

        'Va-t„en. Vite.':
            # a7 # r1332
            jump dust_s2


# s2 # say309
label dust_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    nr 'L„Homme-Poussière recule d“un pas, puis frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.'

    menu:
        '"Alors très bien…"':
            # a8 # r313
            $ dustLogic.r313_action()
            jump dust_dispose


# s3 # say314
label dust_s3: # externs morte_s64
    nr 'L„homme pâle est vêtu d“un habit long et sombre. Il sent légèrement le moisi. Son visage est sans expression et il semble absorbé dans son travail.'

    menu:
        '"Bonjour."':
            # a9 # r315
            jump dust_s4

        '"Qui es-tu ?"':
            # a10 # r316
            jump dust_s4

        '"C„est quoi, cet endroit ?"':
            # a11 # r317
            jump dust_s4

        '"J„ai quelques questions…"':
            # a12 # r319
            jump dust_s4

        'Laisse-le tranquille.':
            # a13 # r382
            jump dust_dispose


# s4 # say321
label dust_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'L„Homme-Poussière relève lentement la tête et se tourne vers toi. "Es-tu perdu ?"'

    menu:
        '"Oui."':
            # a14 # r322
            jump dust_s5

        '"Non."':
            # a15 # r323
            jump dust_s6

        '"Non, je ne suis pas perdu. J„ai quelques questions…"':
            # a16 # r324
            jump dust_s6

        '"Au revoir."':
            # a17 # r325
            jump dust_s5


# s5 # say326
label dust_s5: # from 4.0 4.3 6.4 16.2 51.1
    nr '"J„appelle un garde pour te guider vers la sortie. Attends."'

    menu:
        'Brise-lui la nuque avant qu„il se mette à crier.' if dustLogic.r327_condition():
            # a18 # r327
            jump dust_s44

        'Brise-lui la nuque avant qu„il se mette à crier.' if dustLogic.r328_condition():
            # a19 # r328
            jump dust_s41

        'Va-t„en. Vite.':
            # a20 # r329
            jump dust_s2

        'Attends.':
            # a21 # r1333
            jump dust_s2


# s6 # say330
label dust_s6: # from 4.1 4.2 51.2 51.3
    nr '"Si tu n„es pas perdu, que fais-tu ici ?"'

    menu:
        '"Ça ne te regarde pas."':
            # a22 # r331
            jump dust_s7

        '"Je me suis réveillé sur une dalle de ta salle de préparation."':
            # a23 # r332
            jump dust_s8

        '"Je suis là pour voir quelqu„un."':
            # a24 # r333
            jump dust_s9

        '"J„étais là pour un enterrement, mais je crois qu“il y a eu erreur."' if dustLogic.r334_condition():
            # a25 # r334
            jump dust_s16

        'Va-t„en. Vite.':
            # a26 # r337
            jump dust_s5


# s7 # say335
label dust_s7: # from 6.0 9.0 20.0
    nr '"Si, ça me regarde. Les gardes réussiront peut-être à te délier la langue." L„Homme-Poussière recule d“un pas ; il semble prêt à appeler les gardes.'

    menu:
        'Brise-lui la nuque avant qu„il se mette à crier.' if dustLogic.r344_condition():
            # a27 # r344
            jump dust_s44

        'Brise-lui la nuque avant qu„il se mette à crier.' if dustLogic.r3887_condition():
            # a28 # r3887
            jump dust_s41

        '"Alors, fais-les venir. Je voudrais les rencontrer."':
            # a29 # r3888
            $ dustLogic.r3888_action()
            jump dust_dispose


# s8 # say336
label dust_s8: # from 6.1 16.0 20.1
    nr '"Tu plaisantes ? Tu désires peut-être en faire profiter les gardes." L„Homme-Poussière recule d“un pas ; il semble prêt à appeler les gardes.'

    menu:
        'Brise-lui la nuque avant qu„il se mette à crier.' if dustLogic.r358_condition():
            # a30 # r358
            jump dust_s44

        'Brise-lui la nuque avant qu„il se mette à crier.' if dustLogic.r3885_condition():
            # a31 # r3885
            jump dust_s41

        '"Alors, fais-les venir. Je voudrais les rencontrer."':
            # a32 # r3886
            $ dustLogic.r3886_action()
            jump dust_dispose


# s9 # say338
label dust_s9: # from 6.2 20.2
    nr '"À qui viens-tu rendre visite ?"'

    menu:
        '"Ça ne te regarde pas."':
            # a33 # r3922
            jump dust_s7

        '"Je suis là pour voir Dhall."' if dustLogic.r342_condition():
            # a34 # r342
            jump dust_s10

        '"Je suis là pour voir Dhall."' if dustLogic.r343_condition():
            # a35 # r343
            jump dust_s11

        '"Je suis là pour voir Deionarra."' if dustLogic.r33183_condition():
            # a36 # r33183
            jump dust_s13

        '"Je suis là pour voir Deionarra."' if dustLogic.r33185_condition():
            # a37 # r33185
            jump dust_s12

        '"Je suis là pour voir Soego."' if dustLogic.r33186_condition():
            # a38 # r33186
            jump dust_s15

        '"Je suis là pour voir Soego."' if dustLogic.r33187_condition():
            # a39 # r33187
            jump dust_s14

        'Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"' if dustLogic.r33189_condition():
            # a40 # r33189
            $ dustLogic.r33189_action()
            jump dust_s21

        'Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"' if dustLogic.r33190_condition():
            # a41 # r33190
            jump dust_s21

        '"Euh, personne. Ce n„était pas ce que je voulais dire."':
            # a42 # r33191
            jump dust_s20


# s10 # say345
label dust_s10: # from 9.1
    nr '"Dhall est dans la salle de réception à cet étage. Je te préviens… Dhall est très occupé et il ne se porte pas très bien. Si tes affaires ne sont pas urgentes, je te suggère de ne pas le déranger."'

    menu:
        '"Très bien. Merci du renseignement."':
            # a43 # r347
            jump dust_s48


# s11 # say346
label dust_s11: # from 9.2
    nr '"Dhall doit être dans la salle de réception au premier étage. Il est très occupé et ne se porte pas très bien. Si tes affaires ne sont pas urgentes, je te suggère de ne pas le déranger."'

    menu:
        '"Très bien. Merci du renseignement."':
            # a44 # r348
            jump dust_s48


# s12 # say349
label dust_s12: # from 9.4 19.1
    nr '"Deionarra ? Je sais qu„une femme est enterrée dans la Salle de Commémoration au rez-de-chaussée. C“est peut-être elle."'

    menu:
        '"Très probablement. Merci."':
            # a45 # r352
            jump dust_s48


# s13 # say350
label dust_s13: # from 9.3
    nr '"Deionarra ? Je sais qu„une femme est enterrée dans la Salle de Commémoration du nord-ouest. C“est peut-être elle."'

    menu:
        '"Très probablement. Merci."':
            # a46 # r353
            jump dust_s48


# s14 # say351
label dust_s14: # from 9.6
    nr '"Je crois que Soego est près de la porte d„entrée au rez-de-chaussée. Il sert de guide pendant les heures d“anti-pic."'

    menu:
        '"Très bien. Merci."':
            # a47 # r354
            jump dust_s48


# s15 # say355
label dust_s15: # from 9.5
    nr '"Je crois que Soego est près de la porte d„entrée. Il sert de guide pendant les heures d“anti-pic."'

    menu:
        '"Très bien. Merci."':
            # a48 # r356
            jump dust_s48


# s16 # say357
label dust_s16: # from 6.3 20.3
    nr '"Qui enterre-t-on ? Le service funèbre doit probablement avoir lieu ailleurs dans la Morgue."'

    menu:
        '"Tu ne comprends pas… L„erreur d“enterrement, c„était MOI."':
            # a49 # r359
            jump dust_s8

        '"Ça se pourrait. Où ont lieu ces autres services ?"':
            # a50 # r360
            jump dust_s17

        '"Tu peux m„indiquer la sortie ?"':
            # a51 # r361
            jump dust_s5


# s17 # say362
label dust_s17: # from 16.1
    nr '"Plusieurs chambres funéraires bordent le périmètre de la Morgue. Elles suivent la courbe du mur du rez-de-chaussée et du premier étage. Connais-tu l„identité du mort ?"'

    menu:
        '"Non."':
            # a52 # r363
            jump dust_s18

        '"Oui."':
            # a53 # r364
            jump dust_s19


# s18 # say365
label dust_s18: # from 17.0
    nr '"Alors vérifie auprès de l„un des guides à la porte d“entrée. Il sera en mesure de t„aider."'

    menu:
        '"Très bien. Merci."':
            # a54 # r366
            jump dust_dispose


# s19 # say367
label dust_s19: # from 17.1
    nr 'L„Homme-Poussière attend.'

    menu:
        '"Pardon… Ce n„est pas ce que je voulais dire. Je ne connais pas le nom du défunt."':
            # a55 # r369
            jump dust_s20

        '"Elle s„appelle Deionarra."' if dustLogic.r370_condition():
            # a56 # r370
            jump dust_s12

        'Mensonge : "Il s„appelle… euh, Adahn."' if dustLogic.r371_condition():
            # a57 # r371
            $ dustLogic.r371_action()
            jump dust_s21

        'Mensonge : "Il s„appelle… euh, Adahn."' if dustLogic.r372_condition():
            # a58 # r372
            jump dust_s21

        'Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.' if dustLogic.r373_condition():
            # a59 # r373
            jump dust_s44

        'Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.' if dustLogic.r1335_condition():
            # a60 # r1335
            jump dust_s45

        'Enfuis-toi.':
            # a61 # r1336
            jump dust_s2


# s20 # say374
label dust_s20: # from 9.9 19.0
    nr '"Je vois. Mais que veux-tu ?"'

    menu:
        '"Ça ne te regarde pas."':
            # a62 # r375
            jump dust_s7

        '"Je me suis réveillé sur une dalle de ta salle de préparation."':
            # a63 # r376
            jump dust_s8

        '"Je suis là pour voir quelqu„un."':
            # a64 # r377
            jump dust_s9

        '"J„étais là pour un enterrement, mais je crois qu“il y a eu erreur."' if dustLogic.r378_condition():
            # a65 # r378
            jump dust_s16

        'Enfuis-toi.':
            # a66 # r379
            jump dust_s2


# s21 # say368
label dust_s21: # from 9.7 9.8 19.2 19.3
    nr '"Ce nom ne m„est pas familier. Vérifie auprès de l“un des guides, à la porte d„entrée… Il saura mieux te renseigner que moi."'

    menu:
        '"Très bien. C„est ce que je vais faire. Au revoir."':
            # a67 # r380
            jump dust_s48


# s22 # say294
label dust_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'L„homme pâle est vêtu d“une robe longue et sombre. Il sent légèrement le moisi. Son visage est sans expression et il semble absorbé par sa tâche.'

    menu:
        '"Bonjour."':
            # a68 # r295
            jump dust_s23

        'Laisse-le tranquille.':
            # a69 # r297
            jump dust_dispose


# s23 # say381
label dust_s23: # from 22.0
    nr 'Il se retourne lentement et ses yeux se mettent à clignoter à la vue de ta robe. "Bonjour, initié."'

    menu:
        '"Qui es-tu ?"':
            # a70 # r383
            jump dust_s24

        '"Qu„est-ce que c“est que cet endroit ?"':
            # a71 # r384
            jump dust_s25

        '"J„ai des questions…"':
            # a72 # r391
            jump dust_s26

        'Laisse-le tranquille.':
            # a73 # r392
            jump dust_dispose


# s24 # say393
label dust_s24: # from 23.0
    nr '"Je pourrais te retourner la question. Ton visage m„est inconnu. Qui es-tu ?"'

    menu:
        'Mensonge : "Le nom est… euh, Adahn."' if dustLogic.r450_condition():
            # a74 # r450
            $ dustLogic.r450_action()
            jump dust_s49

        'Mensonge : "Le nom est… euh, Adahn."' if dustLogic.r1337_condition():
            # a75 # r1337
            jump dust_s49

        '"Qu„importe mon nom. Je dois partir. Au revoir."' if dustLogic.r3904_condition():
            # a76 # r3904
            jump dust_s47

        '"Qu„importe mon nom. Je dois partir. Au revoir."' if dustLogic.r3905_condition():
            # a77 # r3905
            jump dust_s46


# s25 # say394
label dust_s25: # from 23.1
    nr '"Voici la Morgue…" L„Homme-Poussière t“observe un instant ; comme s„il digérait tes paroles. "C“est quoi ton nom déjà… ?"'

    menu:
        'Mensonge : "Le nom est… euh, Adahn."' if dustLogic.r399_condition():
            # a78 # r399
            $ dustLogic.r399_action()
            jump dust_s49

        'Mensonge : "Le nom est… euh, Adahn."' if dustLogic.r3906_condition():
            # a79 # r3906
            jump dust_s49

        '"Qu„importe mon nom. Je dois partir. Au revoir."' if dustLogic.r3907_condition():
            # a80 # r3907
            jump dust_s47

        '"Qu„importe mon nom. Je dois partir. Au revoir."' if dustLogic.r3908_condition():
            # a81 # r3908
            jump dust_s46


# s26 # say400
label dust_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'L„Homme-Poussière attend patiemment que tu continues.'

    menu:
        '"Peux-tu me dire comment sortir d„ici ?"':
            # a82 # r401
            jump dust_s27

        '"Tu connais un certain Pharod ?"':
            # a83 # r402
            jump dust_s28

        '"J„ai perdu un journal. Tu ne l“aurais pas vu ?"':
            # a84 # r403
            jump dust_s39

        '"Tant pis. Excuse-moi de t„avoir dérangé."':
            # a85 # r404
            jump dust_s48


# s27 # say405
label dust_s27: # from 26.0
    nr '"Tu peux sortir tout simplement par la porte d„entrée, au rez-de-chaussée."'

    menu:
        '"J„ai d“autres questions…"':
            # a86 # r406
            jump dust_s26

        '"Merci. Au revoir."':
            # a87 # r407
            jump dust_s48


# s28 # say408
label dust_s28: # from 26.1
    nr '"Ce nom…" L„Homme-Poussière hésite un instant. "Ce nom me *dit* quelque chose… Un Récupérateur portait le même. Dhall le Scribe le connaît peut-être."'

    menu:
        '"Un Récupérateur ?"':
            # a88 # r409
            jump dust_s29

        '"Dhall ?"':
            # a89 # r410
            jump dust_s30

        '"J„ai d“autres questions…"':
            # a90 # r411
            jump dust_s26

        '"Merci de m„avoir accordé un peu de temps. Au revoir."':
            # a91 # r425
            jump dust_s48


# s29 # say412
label dust_s29: # from 28.0
    nr '"Les Récupérateurs sont ceux qui ramassent les cadavres dans les rues de Sigil et qui les portent à la Morgue…" L„Homme-Poussière fait une pause, puis fronce les sourcils. "Tu n“es pas du coin. Qui es-tu ?"'

    menu:
        '"Mon initiation est récente. Pardonne mon ignorance."' if dustLogic.r413_condition():
            # a92 # r413
            jump dust_s50

        '"Ça ne fait pas longtemps que je suis ici. J„essaie… de prendre mes repères."' if dustLogic.r3918_condition():
            # a93 # r3918
            jump dust_s47

        '"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."' if dustLogic.r3919_condition():
            # a94 # r3919
            jump dust_s47

        '"Si tu ne peux pas m„aider, je trouverai quelqu“un d„autre. Au revoir."' if dustLogic.r3920_condition():
            # a95 # r3920
            jump dust_s46


# s30 # say414
label dust_s30: # from 28.1
    nr '"Dhall est hautement respecté dans notre faction. Personne n„a médité autant que lui sur la nature de la Vraie Mort et personne n“en est plus digne que lui. Il a tant de sagesse à donner. Si tu ne le connais pas encore, tu devrais saisir une occasion de lui parler. Il ne séjournera plus longtemps dans l„ombre de cette existence."'

    menu:
        '"*Il ne traînera pas longtemps dans l„ombre de cette existence ?*"':
            # a96 # r415
            jump dust_s31

        '"Où est-ce que je peux trouver Dhall ?"' if dustLogic.r416_condition():
            # a97 # r416
            jump dust_s32

        '"Où est-ce que je peux trouver Dhall ?"' if dustLogic.r417_condition():
            # a98 # r417
            jump dust_s33

        '"J„ai d“autres questions…"':
            # a99 # r418
            jump dust_s26

        '"Merci du renseignement. J„irai lui parler."':
            # a100 # r33204
            jump dust_s48


# s31 # say419
label dust_s31: # from 30.0 32.0 33.0
    nr 'Il acquiesce. "Dhall est malade. Il est âgé, même selon les standards githzeraïs. La mort succédera sans nul doute à la maladie dévastatrice qu„il a contracté. Il est chanceux."'

    menu:
        '"Les standards githzeraïs ?"':
            # a101 # r420
            jump dust_s34

        '"C„est quoi un *githzeraï* ?"':
            # a102 # r421
            jump dust_s35

        '"Il est chanceux ?"':
            # a103 # r422
            jump dust_s36

        '"Je vois. J„ai d“autres questions…"':
            # a104 # r423
            jump dust_s26

        '"Merci de m„avoir accordé un peu de temps. Je dois m“en aller."':
            # a105 # r424
            jump dust_s48


# s32 # say427
label dust_s32: # from 30.1
    nr '"Dhall est dans la salle de réception, dans l„aile nord-ouest, à cet étage. Je te préviens… Dhall est absorbé par ses affaires et la maladie qui le ronge occupe le reste de son temps."'

    menu:
        '"Dhall est malade ?"':
            # a106 # r428
            jump dust_s31

        '"Merci de m„avoir accordé un peu de temps. Je dois partir. Au revoir."':
            # a107 # r429
            jump dust_s48


# s33 # say426
label dust_s33: # from 30.2
    nr '"Dhall est très probablement dans la salle de réception au premier étage. Ne l„accapare pas trop. Il est très pris par ses affaires et la maladie qui le ronge occupe le reste de son temps."'

    menu:
        '"Dhall est malade ?"':
            # a108 # r430
            jump dust_s31

        '"Merci de m„avoir accordé un peu de temps. Je dois te laisser. Au revoir."':
            # a109 # r431
            jump dust_s48


# s34 # say432
label dust_s34: # from 31.0
    nr '"Oui, les githzeraïs ont une durée de vie plus longue que les humains."'

    menu:
        '"C„est quoi un *githzeraï* ?"':
            # a110 # r433
            jump dust_s35

        '"En quoi est-ce que Dhall a de la chance de mourir ? Il n„est pas apprécié ?"':
            # a111 # r437
            jump dust_s36

        '"Oh. J„ai d“autres questions…"':
            # a112 # r438
            jump dust_s26

        '"Merci de m„avoir accordé un peu de temps. Au revoir."':
            # a113 # r440
            jump dust_s48


# s35 # say435
label dust_s35: # from 31.1 34.0
    nr '"Les githzeraïs sont…" L„Homme-Poussière fait une pause, puis fronce les sourcils et t“observe. "Tu n„es pas d“ici. Qui es-tu ?"'

    menu:
        '"Mon initiation est récente. Pardonne mon ignorance."' if dustLogic.r436_condition():
            # a114 # r436
            jump dust_s50

        '"Ça ne fait pas longtemps que je suis ici. J„essaie… de prendre mes repères."' if dustLogic.r3909_condition():
            # a115 # r3909
            jump dust_s47

        '"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."' if dustLogic.r3910_condition():
            # a116 # r3910
            jump dust_s47

        '"Si tu ne peux pas m„aider, je trouverai quelqu“un d„autre. Au revoir."' if dustLogic.r3911_condition():
            # a117 # r3911
            jump dust_s46


# s36 # say439
label dust_s36: # from 31.2 34.1
    nr '"Il est chanceux car il atteindra la Vraie Mort. Il n„aura plus à vivre dans l“ombre de cette existence."'

    menu:
        '"Et… c„est une bonne chose ?"':
            # a118 # r441
            jump dust_s37

        '"Je vois. Il a beaucoup de chance, en effet. J„ai d“autres questions…"':
            # a119 # r442
            jump dust_s26

        '"Je vois. Bon, je dois m„en aller. Au revoir."':
            # a120 # r443
            jump dust_s48


# s37 # say444
label dust_s37: # from 36.0
    nr 'L„Homme-Poussière acquiesce. "Oui." Il fronce les sourcils puis te dévisage. "Tu n“es pas d„ici. Qui es-tu ?"'

    menu:
        '"Mon initiation est récente. Pardonne mon ignorance."' if dustLogic.r445_condition():
            # a121 # r445
            jump dust_s50

        '"Ça ne fait pas longtemps que je suis ici. J„essaie… de prendre mes repères."' if dustLogic.r446_condition():
            # a122 # r446
            jump dust_s47

        '"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."' if dustLogic.r3912_condition():
            # a123 # r3912
            jump dust_s47

        '"Si tu ne peux pas m„aider, je trouverai quelqu“un d„autre. Au revoir."' if dustLogic.r3913_condition():
            # a124 # r3913
            jump dust_s46


# s38 # say447
label dust_s38: # -
    nr '"Tu n„es pas l“un des nôtres. Que fais-tu ici ? Es-tu un membre des Anarchistes ? Un espion d„une autre faction ? Gardes ! Gardes !"'

    menu:
        '"Bon sang !"':
            # a125 # r448
            $ dustLogic.r448_action()
            jump dust_dispose

        '"Chhhh ! Je ne peux pas te répondre avec tous ces cris !"' if dustLogic.r449_condition():
            # a126 # r449
            $ dustLogic.r449_action()
            jump dust_dispose

        '"Chhhh ! Je ne peux pas te répondre avec tous ces cris !"' if dustLogic.r1339_condition():
            # a127 # r1339
            $ dustLogic.r1339_action()
            jump dust_dispose


# s39 # say398
label dust_s39: # from 26.2
    nr '"Un journal ? Je n„en ai vu aucun."'

    menu:
        '"J„ai d“autres questions…"':
            # a128 # r451
            jump dust_s26

        '"Je dois m„en aller. Au revoir."':
            # a129 # r452
            jump dust_s48


# s40 # say1419
label dust_s40: # -
    nr 'L„homme pâle est vêtu d“un habit long et sombre. Il sent légèrement le moisi. Son visage est sans expression et il semble absorbé par sa tâche.'

    menu:
        '"Bonjour."' if dustLogic.r1420_condition():
            # a130 # r1420
            jump morte_s61  # EXTERN

        '"Bonjour."' if dustLogic.r1421_condition():
            # a131 # r1421
            jump morte_s63  # EXTERN

        '"Bonjour."' if dustLogic.r1422_condition():
            # a132 # r1422
            jump dust_s4

        '"Bonjour."' if dustLogic.r1423_condition():
            # a133 # r1423
            jump dust_s4

        'Laisse-le tranquille.':
            # a134 # r1424
            jump dust_dispose


# s41 # say1425
label dust_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Avant que l„Homme-Poussière ait eu le temps de dire un mot, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d“un coup sec.'

    menu:
        '"Je ne peux pas te laisser prévenir tes amis…"':
            # a135 # r1426
            $ dustLogic.r1426_action()
            jump dust_s42


# s42 # say1427
label dust_s42: # from 41.0 45.0
    nr 'Un *craquement* retentit ; le corps inerte de l„Homme-Poussière tombe dans tes bras.'

    menu:
        '"Je préfère que ce soit toi que moi, Homme-Poussière."' if dustLogic.r1428_condition():
            # a136 # r1428
            $ dustLogic.r1428_action()
            jump dust_s43

        '"Je préfère que ce soit toi que moi, Homme-Poussière."' if dustLogic.r1429_condition():
            # a137 # r1429
            $ dustLogic.r1429_action()
            jump dust_dispose


# s43 # say1430
label dust_s43: # from 42.0
    nr 'À ta grande surprise, cette action t„a paru instinctive, comme si tu l“avais déjà réalisée plusieurs fois… cela te rappelle vaguement quelque chose, mais le souvenir n„est pas assez fort pour refaire surface.'

    menu:
        'Laisse le corps, continue.':
            # a138 # r3882
            $ dustLogic.r3882_action()
            jump dust_dispose


# s44 # say3883
label dust_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Tu n„es pas assez rapide et l“Homme-Poussière évite ton mouvement. Il recule d„un pas, frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.'

    menu:
        '"Alors très bien…"':
            # a139 # r3884
            $ dustLogic.r3884_action()
            jump dust_dispose


# s45 # say3889
label dust_s45: # from 19.5
    nr 'Tu te penches vers lui pour lui „murmurer“ quelque chose ; il se penche aussi. Quand il arrive à portée de mains, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d„un coup sec.'

    menu:
        '"Je ne peux pas te laisser prévenir tes amis…"':
            # a140 # r3890
            $ dustLogic.r3890_action()
            jump dust_s42


# s46 # say3891
label dust_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'L„Homme-Poussière a l“air méfiant. Il s„apprête à dire quelque chose, puis secoue légèrement la tête et retourne à sa tâche.'

    menu:
        'Éloigne-toi.':
            # a141 # r3892
            jump dust_dispose


# s47 # say3893
label dust_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'L„Homme-Poussière t“observe avec attention. "Tu n„es pas l“un des nôtres. Que fais-tu ici ? Es-tu membre des Anarchistes ? Ou un espion d„une autre faction ? Cela me semble être du ressort des gardes…"'

    menu:
        'Brise-lui la nuque avant qu„il se mette à crier.' if dustLogic.r3914_condition():
            # a142 # r3914
            jump dust_s44

        'Brise-lui la nuque avant qu„il se mette à crier.' if dustLogic.r3915_condition():
            # a143 # r3915
            jump dust_s41

        '"Non, non… Ce n„est pas, euh… Je veux dire, je n“espionne personne… En fait, je me suis réveillé sur l„une des dalles… et…"':
            # a144 # r3916
            jump dust_s2

        'Va-t„en. Vite.':
            # a145 # r3917
            jump dust_s2


# s48 # say3894
label dust_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'L„Homme-Poussière hoche la tête, puis retourne à sa tâche.'

    menu:
        'Éloigne-toi.':
            # a146 # r3895
            jump dust_dispose


# s49 # say3896
label dust_s49: # from 24.0 24.1 25.0 25.1
    nr 'L„Homme-Poussière fronce les sourcils. "Ce nom ne me dit rien."'

    menu:
        '"Mon initiation est récente. Pardonne mon ignorance."' if dustLogic.r3898_condition():
            # a147 # r3898
            jump dust_s50

        '"Je suis… nouveau ici. Je… J„essaie d“apprendre la routine."' if dustLogic.r3899_condition():
            # a148 # r3899
            jump dust_s47

        '"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."' if dustLogic.r3900_condition():
            # a149 # r3900
            jump dust_s47

        '"Si tu ne peux pas m„aider, je trouverai quelqu“un d„autre. Au revoir."' if dustLogic.r3901_condition():
            # a150 # r3901
            jump dust_s46


# s50 # say3897
label dust_s50: # from 29.0 35.0 37.0 49.0
    nr 'L„Homme-Poussière fronce toujours les sourcils, mais il hoche légèrement la tête. "Très bien. Comment puis-je t“aider, initié ?"'

    menu:
        '"J„ai des questions…"':
            # a151 # r3902
            jump dust_s26

        '"Rien aujourd„hui. Au revoir."':
            # a152 # r3903
            jump dust_s46


# s51 # say66674
label dust_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'L„Homme-Poussière te dédie un regard dénué d“expression. "Tu es perdu ?"'

    menu:
        '"Non, je suis membre de la faction. Je fais juste le tour de la Morgue."' if dustLogic.r66675_condition():
            # a153 # r66675
            jump dust_s52

        '"Oui."' if dustLogic.r66676_condition():
            # a154 # r66676
            jump dust_s5

        '"Non."' if dustLogic.r66677_condition():
            # a155 # r66677
            jump dust_s6

        '"Je ne suis pas perdu, non. Par contre, j„aurais quelques questions à te poser…"' if dustLogic.r66678_condition():
            # a156 # r66678
            jump dust_s6

        '"Au revoir."' if dustLogic.r66679_condition():
            # a157 # r66679
            jump dust_s2


# s52 # say66681
label dust_s52: # from 51.0
    nr 'L„Homme-Poussière te regarde fixement puis hoche la tête. "Très bien. Si tu a besoin d“aide, fais-le moi savoir."'

    menu:
        '"Je n„y manquerai pas. Au revoir."':
            # a158 # r66682
            jump dust_dispose
