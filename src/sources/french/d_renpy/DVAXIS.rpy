init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    nr 'Le cadavre, les pieds traînants, t„observe, le regard vide. Le nombre “821„ est gravé sur son front et ses lèvres sont cousues. Une faible odeur de formol émane de son corps.{#vaxis_s0_1}'

    menu:
        '"Alors… t„as vu quelque chose d“intéressant ?"{#vaxis_s0_r454}' if vaxisLogic.r454_condition():
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        '"Alors… t„as vu quelque chose d“intéressant ?"{#vaxis_s0_r455}' if vaxisLogic.r455_condition():
            # a1 # r455
            jump vaxis_s5

        '"Je sais que tu n„es pas un zombi. Tu ne trompes personne."{#vaxis_s0_r456}' if vaxisLogic.r456_condition():
            # a2 # r456
            jump vaxis_s5

        'Utilise Histoires-Os-Conter sur le cadavre.{#vaxis_s0_r457}' if vaxisLogic.r457_condition():
            # a3 # r457
            jump vaxis_s1

        '"Je suis heureux de t„avoir parlé. Au revoir."{#vaxis_s0_r458}':
            # a4 # r458
            jump vaxis_s5

        'Laisse le cadavre tranquille.{#vaxis_s0_r459}':
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    nr 'Bizarrement, tes capacités ne semblent pas fonctionner sur ce cadavre.{#vaxis_s1_1}'

    menu:
        'Donne-lui un coup dans l„œil.{#vaxis_s1_r461}':
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'Laisse le cadavre tranquille.{#vaxis_s1_r462}':
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    nr 'Le cadavre glapit quand tu lui touches l„œil. Ses mains tentent de couvrir son visage. Il marmonne ce que tu prends pour des obscénités.{#vaxis_s2_1}'

    menu:
        '"Tu n„es pas un zombi ! Qui es-tu ?"{#vaxis_s2_r464}':
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        '"Pourquoi ce déguisement de cadavre ?"{#vaxis_s2_r465}':
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        'Va-t„en. Vite.{#vaxis_s2_r466}':
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    nr 'Tu te retournes, décidé à partir, et le „zombi“ marmonne… Il semble qu„il veut dire quelque chose, mais c“est difficile car ses lèvres sont cousues. "Ki Hé tu ? Keu Weu tu ?"{#vaxis_s3_1}'

    menu:
        '"Je cherche un moyen de sortir d„ici. Peux-tu m“aider ?"{#vaxis_s3_r468}' if vaxisLogic.r468_condition():
            # a11 # r468
            jump vaxis_s7

        '"Qui es-tu ?"{#vaxis_s3_r469}':
            # a12 # r469
            jump vaxis_s7

        '"Dis-moi qui tu es ou j„appelle les gardes."{#vaxis_s3_r470}':
            # a13 # r470
            jump vaxis_s7

        'Mensonge : "Tiens… Je te cherchais."{#vaxis_s3_r472}' if vaxisLogic.r472_condition():
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '"C„est moi qui pose les questions ici, *zombi*. Dis-moi qui tu es ou je transforme ce déguisement en réalité."{#vaxis_s3_r473}':
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        '"Pardon, je ne voulais pas te déranger… qui que tu sois. Au revoir."{#vaxis_s3_r474}':
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    nr 'Tu te retournes, décidé à partir, et le zombi grogne sourdement. "Ne ti rien fur MOA. SHUT ! Ne ti RIEN ozom-hou-sièr." Il pose son doigt sur ses lèvres. "Shhhh !" Puis il passe son doigt en travers du cou. "Ou je te tu tan ton sommeil. Kom-tri ?"{#vaxis_s4_1}'

    menu:
        '"C„est une MENACE ? C“en est trop… Prépare-toi à mourir."{#vaxis_s4_r475}':
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        'Mensonge : "Je n„aurais même pas *pensé* à parler de toi aux Hommes-Poussière."{#vaxis_s4_r476}':
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'Vérité : "Je te promets de ne pas parler de toi aux Hommes-Poussière."{#vaxis_s4_r477}':
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        '"Peu importe. Occupe-toi de tes affaires et je m„occuperai des miennes."{#vaxis_s4_r478}':
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    nr 'Tu t„adresses au zombi et il cille de surprise. "Hein ? Koi ?"{#vaxis_s5_1}'

    menu:
        '"Tu n„es pas un zombi ! Qui es-tu ?"{#vaxis_s5_r480}':
            # a21 # r480
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        '"Pourquoi ce déguisement de cadavre ?"{#vaxis_s5_r481}':
            # a22 # r481
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'Va-t„en. Vite.{#vaxis_s5_r482}':
            # a23 # r482
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    nr 'Le „zombi“ tente de répondre derrière ses lèvres cousues. Son expression particulière est mi-effrayée, mi-fâchée. "Ki Hé tu ? Keu Weu tu ?"{#vaxis_s6_1}'

    menu:
        '"Je cherche un moyen de sortir d„ici. Peux-tu m“aider ?"{#vaxis_s6_r484}' if vaxisLogic.r484_condition():
            # a24 # r484
            jump vaxis_s7

        '"Qui es-tu ?"{#vaxis_s6_r485}':
            # a25 # r485
            jump vaxis_s7

        '"Dis-moi qui tu es ou j„appelle les gardes."{#vaxis_s6_r486}':
            # a26 # r486
            jump vaxis_s7

        'Mensonge : "Tiens… Je te cherchais."{#vaxis_s6_r487}' if vaxisLogic.r487_condition():
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '"C„est moi qui pose les questions ici, *zombi*. Dis-moi qui tu es ou je transforme ce déguisement en réalité."{#vaxis_s6_r488}':
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        '"Pardon, je ne voulais pas te déranger… qui que tu sois. Au revoir."{#vaxis_s6_r489}':
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    nr 'Le zombi ne semble pas t„avoir entendu. Il t“examine des pieds à la tête pendant un instant, puis il fronce les sourcils. "Keu hé tu isi ?" Il plisse les yeux, méfiant. "Toa èstion dé hom-hou-sièr ?"{#vaxis_s7_1}'

    menu:
        '"Non. J„essaie de m“enfuir."{#vaxis_s7_r491}' if vaxisLogic.r491_condition():
            # a30 # r491
            jump vaxis_s12

        '"Je n„espionne personne. Je suis là par accident. Peux-tu m“aider à sortir ?"{#vaxis_s7_r492}' if vaxisLogic.r492_condition():
            # a31 # r492
            jump vaxis_s31

        'Mensonge : "Oui, j„espionne… les Hommes-Poussière."{#vaxis_s7_r493}' if vaxisLogic.r493_condition():
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'Mensonge : "Oui, j„espionne… les Hommes-Poussière."{#vaxis_s7_r494}' if vaxisLogic.r494_condition():
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        '"Tu as intérêt à me dire ce que TU fais là ou j„appelle les gardes."{#vaxis_s7_r495}' if vaxisLogic.r495_condition():
            # a34 # r495
            jump vaxis_s21

        '"Tu as intérêt à me dire ce que TU fais là ou j„appelle les gardes."{#vaxis_s7_r496}' if vaxisLogic.r496_condition():
            # a35 # r496
            jump vaxis_s17

        '"Écoute, c„est moi qui pose les questions ici, *zombi*. Dis-moi ce que tu fais là ou je transforme ce déguisement en réalité."{#vaxis_s7_r1306}' if vaxisLogic.r1306_condition():
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        '"Écoute, c„est moi qui pose les questions ici, *zombi*. Dis-moi ce que tu fais là ou je transforme ce déguisement en réalité."{#vaxis_s7_r1348}' if vaxisLogic.r1348_condition():
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        '"Je dois m„en aller. Au revoir."{#vaxis_s7_r1349}':
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    nr 'Il t„observe intensément."Toa èstion ? Toa es dans la celloule ?"{#vaxis_s8_1}'

    menu:
        '"Hein ?"{#vaxis_s8_r4671}':
            # a39 # r4671
            jump vaxis_s10

        '"Une cellule ?"{#vaxis_s8_r1352}':
            # a40 # r1352
            jump vaxis_s10

        'Mensonge : "Oui… je te cherchais. Je suis content de t„avoir enfin trouvé !"{#vaxis_s8_r1359}' if vaxisLogic.r1359_condition():
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'Mensonge : "Oui… mais je ne peux pas trop en parler pour le moment, si tu vois ce que je veux dire. Quelle est *ta* mission ici ?"{#vaxis_s8_r1360}' if vaxisLogic.r1360_condition():
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'Mensonge : "Oui… mais je ne peux pas trop en parler pour le moment. Que fais-tu ici ?"{#vaxis_s8_r1361}' if vaxisLogic.r1361_condition():
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        '"Euh, je n„ai pas le temps de parler pour le moment… Ce sera pour une autre fois."{#vaxis_s8_r1362}':
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    nr 'Il t„observe intensément."Toa èstion ? Toa es dans la celloule ?"{#vaxis_s9_1}'

    menu:
        '"Hein ?"{#vaxis_s9_r4359}':
            # a45 # r4359
            jump morte_s85  # EXTERN

        '"Une cellule ?"{#vaxis_s9_r4360}':
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    nr 'Il fronce les sourcils. "Toa ha èstion !" Il te chasse d„un geste. "Wa ! Wa !"{#vaxis_s10_1}'

    menu:
        '"Commence par me dire ce que tu fais ici ou j„appelle les gardes."{#vaxis_s10_r4362}' if vaxisLogic.r4362_condition():
            # a47 # r4362
            jump vaxis_s21

        '"Commence par me dire ce que tu fais ici ou j„appelle les gardes."{#vaxis_s10_r4363}' if vaxisLogic.r4363_condition():
            # a48 # r4363
            jump vaxis_s17

        '"Réponds à mes satanées questions ou je transforme ce déguisement en réalité avant que tu aies le temps de compter jusqu„à trois."{#vaxis_s10_r4364}' if vaxisLogic.r4364_condition():
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        '"Réponds à mes satanées questions ou je transforme ce déguisement en réalité avant que tu aies le temps de compter jusqu„à trois."{#vaxis_s10_r4365}' if vaxisLogic.r4365_condition():
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        '"D„accord, d“accord… je m„en vais."{#vaxis_s10_r4367}':
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    nr 'Le zombi hoche la tête, et tu crois remarquer qu„il pouffe sous son déguisement de zombi.{#vaxis_s11_1}'

    menu:
        '"Peux-tu m„aider à m“enfuir ?"{#vaxis_s11_r4368}' if vaxisLogic.r4368_condition():
            # a52 # r4368
            jump vaxis_s12

        '"Alors, qu„est-ce que tu fais ici ?"{#vaxis_s11_r4369}':
            # a53 # r4369
            jump vaxis_s28

        'Mensonge : "Alors, tu espionnes pour le compte des Anarchistes ? Eh bien, moi aussi j„espionne les Hommes-Poussière… Mais je ne peux pas vraiment en parler pour le moment, si tu vois ce que je veux dire. Quelle est *ta* mission ici ?"{#vaxis_s11_r4370}' if vaxisLogic.r4370_condition():
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'Mensonge : "Alors, tu espionnes pour le compte des Anarchistes ? J„espionne les Hommes-Poussière… Mais je ne peux pas vraiment en parler pour le moment. Qu“est-ce que tu fais ici ?"{#vaxis_s11_r4371}' if vaxisLogic.r4371_condition():
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        '"Euh, je n„ai pas le temps de parler pour le moment… Ce sera pour une autre fois."{#vaxis_s11_r4372}':
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    nr 'Le zombi a l„air intéressé. "Tu ha dézennui ? Keu hé-tu ?"{#vaxis_s12_1}'

    menu:
        '"Je me suis réveillé là-haut sur l„une des dalles."{#vaxis_s12_r4374}':
            # a57 # r4374
            jump vaxis_s13

        '"Je ne sais pas comment, je me suis retrouvé… coincé ici. Peux-tu m„aider à sortir ?"{#vaxis_s12_r4375}':
            # a58 # r4375
            jump vaxis_s31

        '"J„en parlerai peut-être une autre fois."{#vaxis_s12_r4376}':
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    nr 'Le zombi te regarde comme si tu étais fou. "Toa asi-mutè ?"{#vaxis_s13_1}'

    menu:
        '"Oui, je suis azimuté. Très „azimuté“."{#vaxis_s13_r4378}':
            # a60 # r4378
            jump vaxis_s14

        '"„Azimuté“ ? Qu„est-ce que c“est que ça ?"{#vaxis_s13_r4379}' if vaxisLogic.r4379_condition():
            # a61 # r4379
            jump vaxis_s16

        '"„Azimuté“ ? Qu„est-ce que c“est que ça ?"{#vaxis_s13_r4380}' if vaxisLogic.r4380_condition():
            # a62 # r4380
            jump morte_s87  # EXTERN

        '"Je sais que c„est difficile à croire, mais c“est la vérité : je me suis réveillé là-haut sur l„une des dalles."{#vaxis_s13_r4381}':
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        '"Euh, non… En fait, je me suis retrouvé coincé ici. Peux-tu m„aider à sortir ?"{#vaxis_s13_r4382}':
            # a64 # r4382
            jump vaxis_s31

        '"Oublie cette conversation. Je dois partir."{#vaxis_s13_r4383}':
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    nr 'Il te regarde, siffle et te chasse d„un geste. " Toa tingue ! Wa ! Wa !"{#vaxis_s14_1}'

    menu:
        '"Je ne bougerai pas. Dis-moi ce que tu fais ici ou j„appelle les gardes."{#vaxis_s14_r4385}' if vaxisLogic.r4385_condition():
            # a66 # r4385
            jump vaxis_s21

        '"Je ne bougerai pas. Dis-moi ce que tu fais ici ou j„appelle les gardes."{#vaxis_s14_r4386}' if vaxisLogic.r4386_condition():
            # a67 # r4386
            jump vaxis_s17

        '"Tu vas d„abord répondre à mes satanées questions ou je transforme ce déguisement en réalité."{#vaxis_s14_r4387}' if vaxisLogic.r4387_condition():
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        '"Tu vas d„abord répondre à mes satanées questions ou je transforme ce déguisement en réalité."{#vaxis_s14_r4388}' if vaxisLogic.r4388_condition():
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        '"D„accord, d“accord… Au revoir."{#vaxis_s14_r4389}':
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    nr 'Le faux zombi vous regarde méfiant.{#vaxis_s15_1}'

    menu:
        '"C„est la vérité, je me suis réveillé sur une de ces dalles funéraires."{#vaxis_s15_r4391}':
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        '"Euh, pardon. En fait, je me suis retrouvé coincé ici. Peux-tu m„aider à sortir ?"{#vaxis_s15_r4392}':
            # a72 # r4392
            jump vaxis_s31

        '"Peu importe. Je dois partir maintenant."{#vaxis_s15_r4393}':
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    nr 'Il te regarde, siffle et te chasse d„un geste. " Toa tingue ! Wa ! Wa ! Peurk ! Pah !"{#vaxis_s16_1}'

    menu:
        '"Je ne bougerai pas. Dis-moi ce que tu fais ici ou j„appelle les gardes."{#vaxis_s16_r4395}' if vaxisLogic.r4395_condition():
            # a74 # r4395
            jump vaxis_s21

        '"Je ne bougerai pas. Dis-moi ce que tu fais ici ou j„appelle les gardes."{#vaxis_s16_r4396}' if vaxisLogic.r4396_condition():
            # a75 # r4396
            jump vaxis_s17

        '"Tu vas d„abord répondre à mes satanées questions ou je transforme ce déguisement en réalité."{#vaxis_s16_r4397}' if vaxisLogic.r4397_condition():
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        '"Tu vas d„abord répondre à mes satanées questions ou je transforme ce déguisement en réalité."{#vaxis_s16_r4398}' if vaxisLogic.r4398_condition():
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        '"D„accord, d“accord… Je m„en vais."{#vaxis_s16_r4399}':
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    nr 'Il a l„air effrayé un instant, puis il t“observe et un rictus traverse son visage. "Toa crache le soltiv a moa, moa je donne soltiv a *toa*. Moa, jé dézami isi, *pah toa*. Isi pah ta plas. Hom-hou-sièr te tuhé. Moa ésapé."{#vaxis_s17_1}'

    menu:
        '"Tu ne t„échapperas pas si je te TUE. Maintenant, réponds à mes questions ou je transforme ce déguisement en réalité."{#vaxis_s17_r4401}' if vaxisLogic.r4401_condition():
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        '"Tu ne t„échapperas pas si je te TUE. Maintenant, réponds à mes questions ou je transforme ce déguisement en réalité."{#vaxis_s17_r4402}' if vaxisLogic.r4402_condition():
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        '"Alors, va au diable. Je m„en vais."{#vaxis_s17_r4403}':
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    nr 'Le zombi plisse les yeux et siffle. "Tuh ésèyeu de meu mèt dan liv dé moh ? Jé dézami isi, *pah toa*. Tu meu tous, mézami teu tuh."{#vaxis_s18_1}'

    menu:
        '"Je prends le risque. Prépare-toi à mourir."{#vaxis_s18_r4405}':
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_dispose

        '"Alors, va au diable. Je m„en vais, mais je te conseille de bien faire attention… *zombi*."{#vaxis_s18_r4406}':
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    nr 'Il a l„air effrayé un instant, puis il observe ta carrure, et un rictus traverse son visage. "Tuh ésèyeu de meu mèt dan lif dé moh ? Jé dézami isi, *pah toa.* Tu meu tous, mézami teu tuh."{#vaxis_s19_1}'

    menu:
        '"Je prends le risque. Prépare-toi à mourir."{#vaxis_s19_r4408}':
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_dispose

        '"Et si je parlais de ton déguisement aux gardes ?"{#vaxis_s19_r4409}' if vaxisLogic.r4409_condition():
            # a85 # r4409
            jump vaxis_s21

        '"Et si je parlais de ton déguisement aux gardes ?"{#vaxis_s19_r4410}' if vaxisLogic.r4410_condition():
            # a86 # r4410
            jump vaxis_s20

        '"Alors, va au diable. Je m„en vais, mais je te conseille de bien faire attention… *zombi*."{#vaxis_s19_r4411}':
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    nr 'Le zombi plisse les yeux et siffle. "Toa crache le soltiv a moa, moa je donne soltiv a *toa*. Moa, jé dézami isi, *pah toa*. Isi pah ta plas. Hom-hou-sièr te tuhé. Moa ésapé."{#vaxis_s20_1}'

    menu:
        '"C„était ta dernière chance, cadavre. Prépare-toi à mourir."{#vaxis_s20_r4413}':
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_dispose

        '"Alors, va au diable. Je m„en vais, mais je te conseille de faire bien attention, *zombi*."{#vaxis_s20_r4414}':
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    nr 'Quelque chose dans ton regard fait s„effondrer l“expression du zombi. "Noh-noh-noh ! Neu pah apeulé lé gahd !" Il a l„air effrayé. "Moa-moa èstioné lézom-hou-sièr, dih seu keu voa. Pah plus."{#vaxis_s21_1}'

    menu:
        '"Tu espionnes ? Pour le compte de qui ?"{#vaxis_s21_r4416}':
            # a90 # r4416
            jump vaxis_s23

        '"Qu„as-tu vu sur les Hommes-Poussière ?"{#vaxis_s21_r4417}':
            # a91 # r4417
            jump vaxis_s29

        '"J„ai d“autres questions…"{#vaxis_s21_r4418}':
            # a92 # r4418
            jump vaxis_s43

        '"C„est tout ce que je voulais savoir. Au revoir, *zombi*."{#vaxis_s21_r4419}':
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    nr '"Noh-noh-noh ! Pah fèr mal !" Tu as quelques kilos de muscles en plus que le zombi, ce qui commence à influencer sa décision, et changer son expression. "Pah fèr mal ! Moa-moa èstioné lézom-hou-sièr, dih seu keu voa. Pah plus."{#vaxis_s22_1}'

    menu:
        '"Tu espionnes ? Pour le compte de qui ?"{#vaxis_s22_r4421}':
            # a94 # r4421
            jump vaxis_s23

        '"Qu„as-tu vu sur les Hommes-Poussière ?"{#vaxis_s22_r4422}':
            # a95 # r4422
            jump vaxis_s29

        '"J„ai d“autres questions…"{#vaxis_s22_r4423}':
            # a96 # r4423
            jump vaxis_s43

        '"C„est tout ce que je voulais savoir. Maintenant, écarte-toi de mon chemin, *zombi*."{#vaxis_s22_r4424}':
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    nr 'Le zombi sombre dans un silence effrayé. Il semble ne pas vouloir en dire plus.{#vaxis_s23_1}'

    menu:
        '"Allez. Pour le compte de qui espionnes-tu cet endroit ?"{#vaxis_s23_r4426}' if vaxisLogic.r4426_condition():
            # a98 # r4426
            jump vaxis_s70

        '"Allez. Pour le compte de qui espionnes-tu cet endroit ?"{#vaxis_s23_r4427}' if vaxisLogic.r4427_condition():
            # a99 # r4427
            jump morte_s89  # EXTERN

        '"Tu souffriras BEAUCOUP moins si tu me dis tout de suite pour le compte de qui tu espionnes."{#vaxis_s23_r4428}' if vaxisLogic.r4428_condition():
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        '"Tu souffriras BEAUCOUP moins si tu me dis tout de suite pour le compte de qui tu espionnes."{#vaxis_s23_r4429}' if vaxisLogic.r4429_condition():
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        '"Alors, peu importe. Que faisaient les Hommes-Poussière quand tu les as vus ?"{#vaxis_s23_r4430}':
            # a102 # r4430
            jump vaxis_s29

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s23_r4431}':
            # a103 # r4431
            jump vaxis_s43

        '"Alors, laisse tomber. Au revoir, *zombi*."{#vaxis_s23_r4432}':
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    nr '"Tuh meu sèrs ? Hourkoa ?" Il plisse les yeux. "Toa pon masaj hour moa ?"{#vaxis_s24_1}'

    menu:
        'Mensonge : "Oui, j„ai un message pour toi."{#vaxis_s24_r4434}':
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        '"Un message de qui ?"{#vaxis_s24_r4435}':
            # a106 # r4435
            jump vaxis_s27

        '"Non, je n„ai pas de message."{#vaxis_s24_r4436}':
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    nr 'Il siffle de colère. "Kès--tu *weu,* pij ?"{#vaxis_s25_1}'

    menu:
        '"Je cherche un moyen de sortir d„ici. Peux-tu m“aider ?"{#vaxis_s25_r4438}' if vaxisLogic.r4438_condition():
            # a108 # r4438
            jump vaxis_s31

        '"Je voulais des renseignements…"{#vaxis_s25_r4439}':
            # a109 # r4439
            jump vaxis_s43

        '"Dis-moi ce que tu fais ici ou j„appelle les gardes."{#vaxis_s25_r4440}' if vaxisLogic.r4440_condition():
            # a110 # r4440
            jump vaxis_s21

        '"Dis-moi ce que tu fais ici ou j„appelle les gardes."{#vaxis_s25_r4441}' if vaxisLogic.r4441_condition():
            # a111 # r4441
            jump vaxis_s17

        '"Je veux que tu répondes à mes satanées questions ou je transforme ton déguisement en réalité avant que tu aies le temps de compter jusqu„à trois."{#vaxis_s25_r4442}' if vaxisLogic.r4442_condition():
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        '"Je veux que tu répondes à mes satanées questions ou je transforme ton déguisement en réalité avant que tu aies le temps de compter jusqu„à trois."{#vaxis_s25_r4443}' if vaxisLogic.r4443_condition():
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        '"Pardon, je ne voulais pas te déranger… qui que tu sois. Au revoir."{#vaxis_s25_r4444}':
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    nr '"Kèl masaj ?"{#vaxis_s26_1}'

    menu:
        '"Tu vas me dire quelle est ta mission."{#vaxis_s26_r4446}' if vaxisLogic.r4446_condition():
            # a115 # r4446
            jump vaxis_s28

        'Mensonge : "J„ai tes nouveaux ordres."{#vaxis_s26_r4447}' if vaxisLogic.r4447_condition():
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'Mensonge : "J„ai… tes nouveaux ordres."{#vaxis_s26_r4448}' if vaxisLogic.r4448_condition():
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        '"Désolé, je n„ai pas de message."{#vaxis_s26_r4449}':
            # a118 # r4449
            jump vaxis_s27

        '"Peu importe. Désolé de t„avoir dérangé. Au revoir."{#vaxis_s26_r4450}':
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    nr 'Il plisse les yeux de colère. "Toa pah masseur. Ki hé-tu ?"{#vaxis_s27_1}'

    menu:
        '"Je cherche un moyen de sortir d„ici. Peux-tu m“aider ?"{#vaxis_s27_r4452}' if vaxisLogic.r4452_condition():
            # a120 # r4452
            jump vaxis_s31

        '"Je voulais des renseignements…"{#vaxis_s27_r4453}':
            # a121 # r4453
            jump vaxis_s43

        '"Dis-moi ce que tu fais ici ou j„appelle les gardes."{#vaxis_s27_r4454}' if vaxisLogic.r4454_condition():
            # a122 # r4454
            jump vaxis_s21

        '"Dis-moi ce que tu fais ici ou j„appelle les gardes."{#vaxis_s27_r4455}' if vaxisLogic.r4455_condition():
            # a123 # r4455
            jump vaxis_s17

        '"C„est moi qui pose les questions ici, *zombi*. Dis-moi qui tu es ou je transforme ce déguisement en réalité."{#vaxis_s27_r4456}' if vaxisLogic.r4456_condition():
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '"C„est moi qui pose les questions ici, *zombi*. Dis-moi qui tu es ou je transforme ce déguisement en réalité."{#vaxis_s27_r4457}' if vaxisLogic.r4457_condition():
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        '"Pardon, je ne voulais pas te déranger… qui que tu sois. Au revoir."{#vaxis_s27_r4458}':
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    nr '"Moa èstioné hom-hou-sièr. Dir seu keu je voa. Pah plus."{#vaxis_s28_1}'

    menu:
        '"Qu„as-tu vu sur les Hommes-Poussière ?"{#vaxis_s28_r4460}':
            # a127 # r4460
            jump vaxis_s29

        '"Je vois. J„avais autre chose à te demander…"{#vaxis_s28_r4461}':
            # a128 # r4461
            jump vaxis_s43

        '"C„est tout ce que je voulais savoir. Au revoir."{#vaxis_s28_r4462}':
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    nr '"Rien. Il son rien. Rien trouvé. Mohr, mohr, keu dé mohr. Hom-hou-sièr rien fèr." Il plisse les yeux, convaincu. "Mé je surwèil."{#vaxis_s29_1}'

    menu:
        '"Je vois. J„avais autre chose à te demander…"{#vaxis_s29_r4464}':
            # a130 # r4464
            jump vaxis_s43

        '"C„est tout ce que je voulais savoir. Au revoir."{#vaxis_s29_r4465}':
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    nr 'Il plisse les yeux, comme s„il essayait de comprendre. "Kèl ordr ?“{#vaxis_s30_1}'

    menu:
        '"Dis-moi en quoi consiste ta mission."{#vaxis_s30_r4467}':
            # a132 # r4467
            jump vaxis_s28

        '"Je dois trouver un moyen de m„échapper sans me faire repérer."{#vaxis_s30_r4468}':
            # a133 # r4468
            jump vaxis_s49

        '"Je suis là pour te délivrer. Donne-moi tous les renseignements que tu as recueillis, tout ce que tu possèdes et pars."{#vaxis_s30_r4469}' if vaxisLogic.r4469_condition():
            # a134 # r4469
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        '"Si tu as besoin de moi, je suis à ta disposition."{#vaxis_s30_r4470}':
            # a135 # r4470
            jump vaxis_s35

        '"Tes ordres devront attendre une autre fois. Je reviendrai."{#vaxis_s30_r4471}':
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    nr 'Il reste silencieux un instant, puis hoche doucement la tête, comme s„il comprenait. "Purkoi tèderèjeu ?"{#vaxis_s31_1}'

    menu:
        '"Parce que j„ai besoin de ton aide."{#vaxis_s31_r4473}':
            # a137 # r4473
            jump vaxis_s32

        '"Peut-être pourrions-nous nous rendre mutuellement service. Que veux-tu en échange ?"{#vaxis_s31_r4474}' if vaxisLogic.r4474_condition():
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        '"Parce que je ne *parlerai* de ton petit déguisement à personne… À condition que tu m„aides."{#vaxis_s31_r4475}' if vaxisLogic.r4475_condition():
            # a139 # r4475
            jump vaxis_s33

        '"Parce que je ne *parlerai* de ton petit déguisement à personne… À condition que tu m„aides."{#vaxis_s31_r4476}' if vaxisLogic.r4476_condition():
            # a140 # r4476
            jump vaxis_s34

        '"Tu as l„air de quelqu“un qui préfère se déguiser en cadavre plutôt qu„en DEVENIR un. Ça te paraît clair ?"{#vaxis_s31_r4477}' if vaxisLogic.r4477_condition():
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        '"Tu as l„air de quelqu“un qui préfère se déguiser en cadavre plutôt qu„en DEVENIR un. Ça te paraît clair ?"{#vaxis_s31_r4478}' if vaxisLogic.r4478_condition():
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        '"Oublie notre rencontre. Je dois partir. Au revoir."{#vaxis_s31_r4479}':
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    nr 'Le zombi ricane à demi. "Touleumont *abezoin* te kélkeushoz, mépérson don rien. Tu me *don* kélkeushoz, *peutét* je téd."{#vaxis_s32_1}'

    menu:
        '"Que veux-tu ?"{#vaxis_s32_r4481}':
            # a144 # r4481
            jump vaxis_s35

        '"Que dirais-tu de m„aider si je n“appelle pas les gardes ?"{#vaxis_s32_r4482}' if vaxisLogic.r4482_condition():
            # a145 # r4482
            jump vaxis_s33

        '"Que dirais-tu de m„aider si je n“appelle pas les gardes ?"{#vaxis_s32_r4483}' if vaxisLogic.r4483_condition():
            # a146 # r4483
            jump vaxis_s34

        '"Tu as l„air de quelqu“un qui préfèrerait respirer plutôt que de me dire non. Maintenant… pour la dernière fois : comment faire pour sortir d„ici ?"{#vaxis_s32_r4484}' if vaxisLogic.r4484_condition():
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        '"Tu as l„air de quelqu“un qui préfèrerait respirer plutôt que de me dire non. Maintenant… pour la dernière fois : comment faire pour sortir d„ici ?"{#vaxis_s32_r4485}' if vaxisLogic.r4485_condition():
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        '"Ça ne m„intéresse pas. Au revoir."{#vaxis_s32_r4486}':
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    nr 'Il te dévisage des pieds à la tête, comme s„il se demandait ce qu“il pouvait te prendre ; il regarde tes cicatrices, puis change d„avis. "Hmpf. Tu peu éshapé atravér léportay."{#vaxis_s33_1}'

    menu:
        '"Des portails ?"{#vaxis_s33_r4672}':
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    nr 'Il a l„air effrayé un instant, puis il t“observe et un rictus traverse son visage. "Toa crache le soltiv a moa, moa je donne soltiv a *toa*. Moa, jé dézami isi, *pah toa*. Isi pah ta plas. Hom-hou-sièr te tuhé. Moa ésapé."{#vaxis_s34_1}'

    menu:
        '"Tu ne t„échapperas pas si je te TUE. Alors, parle ou je transforme ce déguisement en réalité."{#vaxis_s34_r4489}' if vaxisLogic.r4489_condition():
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        '"Tu ne t„échapperas pas si je te TUE. Parle ou je transforme ce déguisement en réalité."{#vaxis_s34_r4490}' if vaxisLogic.r4490_condition():
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        '"Alors, va au diable. Je m„en vais."{#vaxis_s34_r4492}':
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    nr '"Tu toa prendrun *clé* pourmoa. Bezoin dun clé enfér. Dans la sambre d„emboumoment."{#vaxis_s35_1}'

    menu:
        '"Tu veux parler de cette clé ?"{#vaxis_s35_r4494}' if vaxisLogic.r4494_condition():
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        '"Bon. Où est cette clé ?"{#vaxis_s35_r4495}':
            # a155 # r4495
            jump vaxis_s36

        '"Je n„ai pas de temps à perdre avec ça. Aide-moi à m“enfuir ou j„appelle les gardes."{#vaxis_s35_r4496}' if vaxisLogic.r4496_condition():
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        '"Je n„ai pas de temps à perdre avec ça. Aide-moi à m“enfuir ou j„appelle les gardes."{#vaxis_s35_r4497}' if vaxisLogic.r4497_condition():
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        '"Pas question d„aller chercher quoi que ce soit pour toi. Aide-moi à m“enfuir ou je te tords le cou."{#vaxis_s35_r4498}' if vaxisLogic.r4498_condition():
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        '"Pas question d„aller chercher quoi que ce soit pour toi. Aide-moi à m“enfuir ou je te tords le cou."{#vaxis_s35_r4499}' if vaxisLogic.r4499_condition():
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        '"Non, merci. Peut-être une autre fois."{#vaxis_s35_r4500}':
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    nr '"Un fiy-hou-sièr a la clé." Il désigne ses yeux. "èla lézieujon…" Il fait ensuite un geste qui te rappelle une paire de cisailles. "lam sur lé doa."{#vaxis_s36_1}'

    menu:
        '"Nos chemins se sont déjà croisés. Voilà la clé."{#vaxis_s36_r4502}' if vaxisLogic.r4502_condition():
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        '"Une femme Homme-Poussière… avec des yeux jaunes et des lames en guise de doigts ? Je l„ai déjà rencontrée dans la salle d“embaumement. Attends ici - je reviens rapidement avec la clef."{#vaxis_s36_r64520}' if vaxisLogic.r64520_condition():
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        '"Une femme Homme-Poussière… aux yeux jaunes et ayant des lames en guise de doigts ? Alors d„accord. Je reviendrai avec la clé."{#vaxis_s36_r4503}' if vaxisLogic.r4503_condition():
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        '"À t„entendre, cette femme Homme-Poussière a l“air vraiment mignonne. Vous êtes sûrs que vous ne voulez pas que je vous la présente, à tous les deux ?"{#vaxis_s36_r4504}':
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    nr 'Le zombi cligne des yeux. Il ne semble pas t„avoir compris.{#vaxis_s37_1}'

    menu:
        '"C„était une blague, tu vois, tu es sup… Laisse tomber, je vais aller chercher ta clé."{#vaxis_s37_r4506}' if vaxisLogic.r4506_condition():
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        '"C„était une blague, vois-tu. Tu étais censé… non, laisse tomber, je vais te chercher ta clé."{#vaxis_s37_r66150}' if vaxisLogic.r66150_condition():
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    nr 'Le zombi plisse les yeux. "Si tu te fé prendr, neu di rien sur moa, ou jeu teu tuh dan ton someiy."{#vaxis_s38_1}'

    menu:
        '"Je vais trouver ta satanée clé… mais tu ferais mieux d„éviter de me menacer, compris ?"{#vaxis_s38_r4508}' if vaxisLogic.r4508_condition():
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        '"Je reviendrai."{#vaxis_s38_r4509}' if vaxisLogic.r4509_condition():
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        '"Je vais trouver ta satanée clé… mais tu ferais mieux d„éviter de me menacer, compris ?"{#vaxis_s38_r4510}' if vaxisLogic.r4510_condition():
            # a169 # r4510
            jump vaxis_dispose

        '"Je reviendrai."{#vaxis_s38_r4511}' if vaxisLogic.r4511_condition():
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    nr '"Moa bon déghizé. Moa osi bèl sikatris. Moa porté bocou laussion enbo„ment. Moa fèr BON zombi." Le zombi glousse à travers ses lèvres cousues, puis se frappe la tête. "Hom-hou-sièr stupid."{#vaxis_s39_1}'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    nr '"Je taten isi. Trouf laclé." Le zombi esquisse un sourire. "Aprè je tèd."{#vaxis_s40_1}'

    menu:
        '"Si je la trouve, je te la rapporte."{#vaxis_s40_r4515}':
            # a171 # r4515
            jump vaxis_dispose

        '"Alors, laisse tomber."{#vaxis_s40_r4516}':
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    nr 'Les yeux du zombi s„écarquillent. Il lève la main et claque des doigts. "Don !"{#vaxis_s41_1}'

    menu:
        '"Attends. Je veux d„abord quelque chose."{#vaxis_s41_r4518}':
            # a173 # r4518
            jump vaxis_dispose

        '"Voilà."{#vaxis_s41_r4519}':
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    nr 'Les yeux du zombi s„écarquillent. Il t“arrache la clé des mains. Il se retourne et hoche la tête en disant : "Bien."{#vaxis_s42_1}'

    menu:
        '"Bon… comment est-ce que je vais sortir d„ici ?"{#vaxis_s42_r4521}' if vaxisLogic.r4521_condition():
            # a175 # r4521
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        '"Bon… je voudrais savoir quelque chose…"{#vaxis_s42_r4522}' if vaxisLogic.r4522_condition():
            # a176 # r4522
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    nr '"Keuweutu safoir ?"{#vaxis_s43_1}'

    menu:
        '"Comment puis-je m„enfuir d“ici ?"{#vaxis_s43_r64508}' if vaxisLogic.r64508_condition():
            # a177 # r64508
            jump vaxis_s49

        '"Comment est-ce que je peux faire pour m„enfuir d“ici ?"{#vaxis_s43_r4524}' if vaxisLogic.r4524_condition():
            # a178 # r4524
            jump vaxis_s49

        '"Peux-tu me rappeler où se trouve le portail dont tu parlais tout à l„heure ?"{#vaxis_s43_r4525}' if vaxisLogic.r4525_condition():
            # a179 # r4525
            jump vaxis_s52

        '"Peux-tu me déguiser en zombi ?"{#vaxis_s43_r4526}' if vaxisLogic.r4526_condition():
            # a180 # r4526
            jump vaxis_s63

        '"Peux-tu encore me déguiser en zombi ?"{#vaxis_s43_r4527}' if vaxisLogic.r4527_condition():
            # a181 # r4527
            jump vaxis_s63

        '"Qu„est-ce que tu fais ici ?"{#vaxis_s43_r4528}' if vaxisLogic.r4528_condition():
            # a182 # r4528
            jump vaxis_s28

        '"Connais-tu un certain Pharod ?"{#vaxis_s43_r4673}' if vaxisLogic.r4673_condition():
            # a183 # r4673
            jump vaxis_s44

        '"J„ai perdu un journal. Tu ne l“aurais pas vu ?"{#vaxis_s43_r4530}' if vaxisLogic.r4530_condition():
            # a184 # r4530
            jump vaxis_s47

        '"Qu„est-ce que tu peux me dire sur Dhall ?"{#vaxis_s43_r4531}' if vaxisLogic.r4531_condition():
            # a185 # r4531
            jump vaxis_s53

        '"Qu„est-ce que tu peux me dire sur Deionarra ?"{#vaxis_s43_r4532}' if vaxisLogic.r4532_condition():
            # a186 # r4532
            jump vaxis_s54

        '"Qu„est-ce que tu peux me dire sur Soego ?"{#vaxis_s43_r4533}' if vaxisLogic.r4533_condition():
            # a187 # r4533
            jump vaxis_s55

        '"Comment as-tu fait pour ressembler à ça ?"{#vaxis_s43_r4534}' if vaxisLogic.r4534_condition():
            # a188 # r4534
            jump vaxis_s60

        '"Comment as-tu fait pour ressembler à ça ?"{#vaxis_s43_r4535}' if vaxisLogic.r4535_condition():
            # a189 # r4535
            jump vaxis_s39

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s43_r4536}':
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    nr '"Farod ?" Le zombi fronce brièvement les sourcils, pensif. "Moa… il vi isi dan la rush." Il secoue la tête. "Je sé pah ou." Il fronce les sourcils à nouveau. "Hom-hou-sièr trè fou, ilnèm pah Farod."{#vaxis_s44_1}'

    menu:
        '"La Ruche ?"{#vaxis_s44_r4538}':
            # a191 # r4538
            jump vaxis_s45

        '"Pourquoi les Hommes-Poussière n„aiment pas Pharod ?"{#vaxis_s44_r4539}':
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s44_r4540}':
            # a193 # r4540
            jump vaxis_s43

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s44_r4541}':
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    nr '"Dan bahkartié."{#vaxis_s45_1}'

    menu:
        '"Pourquoi les Hommes-Poussière n„aiment pas Pharod ?"{#vaxis_s45_r4543}':
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s45_r4544}':
            # a196 # r4544
            jump vaxis_s43

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s45_r4545}':
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    nr '"Sétunrékupérateuh. Il aport lémor ala mork, léven ozom-hou-sièr. BOCOU deumor. Lézom-hou-sièr safpah ou trouvé lémor. Jeucroakil mélébij danleulifdémor."{#vaxis_s46_1}'

    menu:
        '"Euh… quoi ?"{#vaxis_s46_r4547}' if vaxisLogic.r4547_condition():
            # a198 # r4547
            jump vaxis_s48

        '"Euh… quoi ?"{#vaxis_s46_r4548}' if vaxisLogic.r4548_condition():
            # a199 # r4548
            jump morte_s91  # EXTERN

        '"Oh. Je voudrais savoir autre chose…"{#vaxis_s46_r4549}':
            # a200 # r4549
            jump vaxis_s43

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s46_r4550}':
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    nr '"Sépah. Débijteuplèz ?"{#vaxis_s47_1}'

    menu:
        '"Euh… quoi ?"{#vaxis_s47_r4552}' if vaxisLogic.r4552_condition():
            # a202 # r4552
            jump vaxis_s48

        '"Euh… quoi ?"{#vaxis_s47_r4553}' if vaxisLogic.r4553_condition():
            # a203 # r4553
            jump morte_s92  # EXTERN

        '"Oh. Je voudrais savoir autre chose…"{#vaxis_s47_r4554}':
            # a204 # r4554
            jump vaxis_s43

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s47_r4555}':
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    nr 'Le zombi tente de parler, fait une pause, essaye encore, puis hausse les épaules. Apparemment, il ne peut pas donner de meilleure explication.{#vaxis_s48_1}'

    menu:
        '"Oh. Je voudrais savoir autre chose…"{#vaxis_s48_r4557}':
            # a206 # r4557
            jump vaxis_s43

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s48_r4558}':
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    nr 'Le zombi grogne. "Tupeu éshapé par léportay." Il agite les mains. "Pouh."{#vaxis_s49_1}'

    menu:
        '"Des portails ? Quels portails ?"{#vaxis_s49_r4560}':
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    nr '"Portay…" Le zombi agite les mains. "Portay partou."{#vaxis_s50_1}'

    menu:
        '"Peux-tu me montrer l„un de ces portails ?"{#vaxis_s50_r4564}' if vaxisLogic.r4564_condition():
            # a209 # r4564
            jump vaxis_s31

        '"Peux-tu me montrer l„un de ces portails ?"{#vaxis_s50_r64509}' if vaxisLogic.r64509_condition():
            # a210 # r64509
            jump vaxis_s51

        '"Peux-tu me montrer l„un de ces portails ?"{#vaxis_s50_r64510}' if vaxisLogic.r64510_condition():
            # a211 # r64510
            jump vaxis_s51

        '"Peux-tu me montrer l„un de ces portails ?"{#vaxis_s50_r64511}' if vaxisLogic.r64511_condition():
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    nr 'Le zombi hoche la tête. "Tu sor, wa juskalarsh sur sètétaj, saleunorouèst, Y te fo un„" Il brandit son index recourbé. "Kantalaclé; wa juskalarsh, sotalakript seukrèt ; éshaptoa parla. Sortiseukrèt." Il hoche la tête. "Tupeu TREUPOSER laba."{#vaxis_s51_1}'

    menu:
        '"Un doigt crochu squelettique ? Où puis-je en trouver un ?"{#vaxis_s51_r64527}' if vaxisLogic.r64527_condition():
            # a213 # r64527
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        '"J„ai d“autres questions…"{#vaxis_s51_r4568}' if vaxisLogic.r4568_condition():
            # a214 # r4568
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        '"Une voûte au rez-de-chaussée, salle nord-ouest ? Bon, je vais aller voir ça."{#vaxis_s51_r4569}' if vaxisLogic.r4569_condition():
            # a215 # r4569
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    nr '"Ecout ! Souvientoa !" Le zombi semble en colère. "arshembrouyé, sètétaj, saleunorouèst…" Il tend l„index puis le recourbe. "Tua beuzoin deufalanj, kourbé. Wa kript seukrèt. Sortiseukrèt. Tupeu treuposer laba."{#vaxis_s52_1}'

    menu:
        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s52_r4571}':
            # a216 # r4571
            jump vaxis_s43

        '"Voûte, rez-de-chaussée, salle nord-ouest, s„ouvre avec une phalange crochue ? Bon, j“ai compris cette fois."{#vaxis_s52_r4572}':
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    nr '"Scribe." Il hausse les épaules. "Vieux. Joune."{#vaxis_s53_1}'

    menu:
        '"Il n„y a rien à ajouter, je suppose. Il y a autre chose que je voudrais savoir…"{#vaxis_s53_r4574}':
            # a218 # r4574
            jump vaxis_s43

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s53_r4575}':
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    nr '"Hein ?" Il fronce les sourcils. "kiétèl ?"{#vaxis_s54_1}'

    menu:
        '"Laisse tomber. Il y a autre chose que je voudrais savoir…"{#vaxis_s54_r4577}':
            # a220 # r4577
            jump vaxis_s43

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s54_r4578}':
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    nr '"Guid. Alamork. Port entré. Keuweutudeului ?"{#vaxis_s55_1}'

    menu:
        '"Qu„est-ce que tu sais sur lui ?"{#vaxis_s55_r4580}':
            # a222 # r4580
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s55_r4581}':
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    nr '"Réaksion bizar, pah hom-hou-sièr, pah anarshist, zieu shangé…" Il hausse les épaules. "Kom ra… étranj."{#vaxis_s56_1}'

    menu:
        '"Heureusement qu„il est le seul à être bizarre par ici. Il y a autre chose que je voudrais savoir…"{#vaxis_s56_r4583}':
            # a224 # r4583
            jump vaxis_s43

        '"Peu importe. J„aurai peut-être des questions plus tard. Ne t“éloigne pas."{#vaxis_s56_r4584}':
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    nr 'Tu vois le faux zombi. Tu es impressionné par le déguisement de cet homme. Sa respiration est si légère que tu la perçois à peine.{#vaxis_s57_1}'

    menu:
        '"Bonjour."{#vaxis_s57_r4586}' if vaxisLogic.r4586_condition():
            # a226 # r4586
            jump vaxis_s58

        '"Bonjour."{#vaxis_s57_r4587}' if vaxisLogic.r4587_condition():
            # a227 # r4587
            jump vaxis_s58

        '"Bonjour."{#vaxis_s57_r4588}' if vaxisLogic.r4588_condition():
            # a228 # r4588
            jump vaxis_s59

        '"Bonjour."{#vaxis_s57_r4589}' if vaxisLogic.r4589_condition():
            # a229 # r4589
            jump vaxis_s58

        'Laisse-le tranquille.{#vaxis_s57_r4590}':
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    nr 'Le zombi jette un coup d„œil circulaire pour s“assurer que personne ne regarde, puis il se retourne vers toi. "Kwa ?"{#vaxis_s58_1}'

    menu:
        '"Voici la clé de la salle d„embaumement que tu voulais."{#vaxis_s58_r4592}' if vaxisLogic.r4592_condition():
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        '"Voici la clé de la salle d„embaumement que tu voulais."{#vaxis_s58_r4593}' if vaxisLogic.r4593_condition():
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        '"Où est cette clé dont tu parlais tout à l„heure ?"{#vaxis_s58_r4594}' if vaxisLogic.r4594_condition():
            # a233 # r4594
            jump vaxis_s36

        '"J„ai des questions à te poser…"{#vaxis_s58_r4595}':
            # a234 # r4595
            jump vaxis_s43

        '"Peu importe."{#vaxis_s58_r4596}':
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    nr 'Le zombi jette un coup d„œil circulaire pour s“assurer que personne ne regarde, puis il te fait le geste de partir et siffle. "Waten ! Wa !"{#vaxis_s59_1}'

    menu:
        '"Non. J„ai d“abord quelques questions à te poser…"{#vaxis_s59_r4598}':
            # a236 # r4598
            jump vaxis_s43

        '"Alors, peu importe."{#vaxis_s59_r4599}' if vaxisLogic.r4599_condition():
            # a237 # r4599
            jump vaxis_s4

        '"Alors, peu importe."{#vaxis_s59_r4600}' if vaxisLogic.r4600_condition():
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    nr '"Moa bon déghizé. Moa osi bèl sikatris. Moa porté bocou laussion embo„ment. Moa fèr BON zombi." Le zombi glousse à travers ses lèvres cousues, puis se frappe la tête. "Hom-hou-sièr stupid."{#vaxis_s60_1}'

    menu:
        '"Ouais, ils sont stupides, c„est vrai."{#vaxis_s60_r4602}':
            # a239 # r4602
            jump vaxis_s61

        '"Ça ne fait pas mal ?"{#vaxis_s60_r4603}':
            # a240 # r4603
            jump vaxis_s62

        '"Ce déguisement n„est pas mal du tout. Dis-moi… pourrais-tu me déguiser en zombi moi aussi ?"{#vaxis_s60_r4604}' if vaxisLogic.r4604_condition():
            # a241 # r4604
            jump vaxis_s63

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s60_r4605}':
            # a242 # r4605
            jump vaxis_s43

        '"Je dois partir. Au revoir."{#vaxis_s60_r4606}':
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    nr 'Visiblement, le sarcasme ne prend pas sur le zombi. Il hoche la tête, avide. "Hom-hou-sièr stupid. Moa fèr BON zombi."{#vaxis_s61_1}'

    menu:
        '"Ça ne fait pas mal ?"{#vaxis_s61_r4608}':
            # a244 # r4608
            jump vaxis_s62

        '"Ce déguisement n„est pas mal du tout. Pourrais-tu me déguiser en zombi ?"{#vaxis_s61_r4609}' if vaxisLogic.r4609_condition():
            # a245 # r4609
            jump vaxis_s63

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s61_r4610}' if vaxisLogic.r4610_condition():
            # a246 # r4610
            jump vaxis_s64

        '"Je dois partir. Au revoir."{#vaxis_s61_r4611}' if vaxisLogic.r4611_condition():
            # a247 # r4611
            jump vaxis_s64

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s61_r4612}' if vaxisLogic.r4612_condition():
            # a248 # r4612
            jump vaxis_s43

        '"Je dois partir. Au revoir."{#vaxis_s61_r4613}' if vaxisLogic.r4613_condition():
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    nr 'Il regarde tes cicatrices. "Jeute pozla mèmkestion. Moa pah fèr mal." Il se frappe la poitrine. "Moa FOR."{#vaxis_s62_1}'

    menu:
        '"Ce déguisement n„est pas mal du tout. Pourrais-tu me déguiser en zombi ?"{#vaxis_s62_r4615}' if vaxisLogic.r4615_condition():
            # a250 # r4615
            jump vaxis_s63

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s62_r4616}' if vaxisLogic.r4616_condition():
            # a251 # r4616
            jump vaxis_s64

        '"Je dois partir. Au revoir."{#vaxis_s62_r4617}' if vaxisLogic.r4617_condition():
            # a252 # r4617
            jump vaxis_s64

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s62_r4618}' if vaxisLogic.r4618_condition():
            # a253 # r4618
            jump vaxis_s43

        '"Je dois partir. Au revoir."{#vaxis_s62_r4674}' if vaxisLogic.r4674_condition():
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    nr 'Il te dévisage des pieds à la tête pendant quelques instants, il marmonne, puis hoche la tête. "Oui. Moa beuzoin bèn laussion embo„ment." Il désigne les cicatrices sur ton torse. "Eunéguiy édufil."{#vaxis_s63_1}'

    menu:
        '"Voilà."{#vaxis_s63_r4620}' if vaxisLogic.r4620_condition():
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        '"Je vais y réfléchir. J„ai d“autres questions…"{#vaxis_s63_r4621}':
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        '"Non, merci. Peut-être une autre fois… Au revoir."{#vaxis_s63_r4622}':
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        '"De la lotion d„embaumement et du fil ? Je vais voir si je peux trouver ça."{#vaxis_s63_r4623}':
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    nr 'Il te dévisage des pieds à la tête avec une expression étrange. "Toafèr bonzombi. Jeupeufèr deutoa un zombi ? Bon déghizmen."{#vaxis_s64_1}'

    menu:
        '"Merci quand même. J„ai d“autres questions à te poser…"{#vaxis_s64_r4625}':
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        '"Bien sûr. Peux-tu t„en charger ?"{#vaxis_s64_r4626}':
            # a260 # r4626
            jump vaxis_s63

        '"Pourquoi pas ? J„ai déjà l“impression d„être un mort-vivant."{#vaxis_s64_r4627}':
            # a261 # r4627
            jump vaxis_s63

        '"Non… Non… c„est pas la peine. Au revoir."{#vaxis_s64_r4628}':
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    nr 'Le zombi saisit les articles, et se met au travail…{#vaxis_s65_1}'

    menu:
        'Essaie de ne pas bouger.{#vaxis_s65_r4630}' if vaxisLogic.r4630_condition():
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'Essaie de ne pas bouger.{#vaxis_s65_r4631}' if vaxisLogic.r4631_condition():
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        'Essaie de ne pas bouger.{#vaxis_s65_r4632}' if vaxisLogic.r4632_condition():
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'Essaie de rester immobile.{#vaxis_s65_r64533}' if vaxisLogic.r64533_condition():
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    nr 'Le zombi applique de la lotion d„embaumement sur tout ton corps, puis recoud plusieurs de tes cicatrices. Il commence par les pieds et finit par coudre tes lèvres.{#vaxis_s66_1}'

    menu:
        '"Mmm-hmmph-mmm… Merfi."{#vaxis_s66_r4634}' if vaxisLogic.r4634_condition():
            # a267 # r4634
            jump vaxis_s67

        '"Mmm-hmmph-mmm… Merfi."{#vaxis_s66_r4635}' if vaxisLogic.r4635_condition():
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        '"Mmm-hmmph-mmm… Merfi."{#vaxis_s66_r4636}' if vaxisLogic.r4636_condition():
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    nr 'Le zombi lève la main. "Tenzion ! Parler, ça tire sur les points d„suture, ça abîme. Zombi parle pas. Tu veux parler ? Parle lentement, tenzion."  ^NREMARQUE : Nul ne s“attend à ce qu„un zombi parle. Si tu parles tout en te faisant passer pour un zombi, tu risques de dévoiler ta couverture.^-{#vaxis_s67_1}'

    menu:
        '"Mmph… mmm. Je… je comprends."{#vaxis_s67_r4638}':
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    nr 'Il fronce les sourcils. "Déghizmen pah tenir lonten… natron sèsh é poin tombé." Il hausse les épaules. "Neutiendra peutèt pah plu loin kelamork."  ^NREMARQUE : Courir annulera aussitôt ton déguisement. Si la course automatique est activée, désactive-la si tu souhaites garder ton déguisement après avoir fini de parler à Vaxis.^-{#vaxis_s68_1}'

    menu:
        'Autre signe de tête, pars.{#vaxis_s68_r4640}':
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    nr 'Le zombi fronce les sourcils. "On sédéjavukelkepah ?"{#vaxis_s69_1}'

    menu:
        '"Peut-être. Où m„aurais-tu déjà vu ?"{#vaxis_s69_r4642}':
            # a272 # r4642
            jump vaxis_dispose

        'X.{#vaxis_s69_r4643}':
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    nr 'À ta grande surprise, le zombi se détourne… Il observe les alentours attentivement.{#vaxis_s70_1}'

    menu:
        '"Tu ne veux pas parler ? Alors, prépare-toi à hurler."{#vaxis_s70_r4645}':
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_dispose

        '"Alors, peu importe. Que faisaient les Hommes-Poussière quand tu les as vus ?"{#vaxis_s70_r4646}':
            # a275 # r4646
            jump vaxis_s29

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s70_r4647}':
            # a276 # r4647
            jump vaxis_s43

        '"Alors, laisse tomber. Au revoir, *zombi*."{#vaxis_s70_r4648}':
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    nr 'Le zombi vous observe craintif. Il reste silencieux, mais quelque chose dans son expression te fait penser que Morte avait raison.{#vaxis_s71_1}'

    menu:
        '"Les Anarchistes, hein ? C„est pour eux que tu espionnes cet endroit ?"{#vaxis_s71_r4650}':
            # a278 # r4650
            jump vaxis_s70

        '"Tu souffriras BEAUCOUP moins si tu me dis tout de suite pourquoi les Anarchistes t„ont demandé d“espionner cet endroit."{#vaxis_s71_r4651}':
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        '"Alors, peu importe. Que faisaient les Hommes-Poussière quand tu les as vus ?"{#vaxis_s71_r4652}':
            # a280 # r4652
            jump vaxis_s29

        '"Il y a autre chose que je voudrais savoir…"{#vaxis_s71_r4653}':
            # a281 # r4653
            jump vaxis_s43

        '"Alors, laisse tomber. Au revoir, *zombi*."{#vaxis_s71_r4654}':
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    nr 'Le zombi a l„air déçu, mais il hausse les épaules et cherche quelque chose dans sa tunique tachée. "Silens. Hom-hou-sièr silensieu. Rien deunéf deupui dèrnié rapor." Après quelques instants, il te tend des objets, et grogne. "Voala." Leur odeur fait penser qu“ils ont été cachés pour d„éviter d“être trouvés s„il avait été fouillé. "Moa partir biento."{#vaxis_s72_1}'

    menu:
        '"Partir ? Comment ?"{#vaxis_s72_r4656}' if vaxisLogic.r4656_condition():
            # a283 # r4656
            jump vaxis_s51

        '"Très bien. Au revoir, Vaxis."{#vaxis_s72_r64532}' if vaxisLogic.r64532_condition():
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    nr 'Le zombi grogne. "Le portail est une voûte - rezzz-de-chauzée, saleunorouest. Ilfo falanj deuskelet pourouvrir." Il hoche la tête. "Bonshanse."{#vaxis_s73_1}'

    menu:
        '"Euh… d„accord."{#vaxis_s73_r4659}':
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    nr 'Le zombi plisse les yeux et siffle. "Tuh ésèyeu de meu mèt dan liv dé moh ? Jé dézami isi, *pah toa.* Tu meu tous, mézami teu tuh."{#vaxis_s74_1}'

    menu:
        '"C„était ta dernière chance. Prépare-toi à mourir."{#vaxis_s74_r4661}':
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_dispose

        '"Alors, va au diable. Je m„en vais. Je te conseille de faire attention… *zombi* !"{#vaxis_s74_r4662}':
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    nr 'Il a l„air effrayé un instant, puis il observe ta carrure, et un rictus traverse son visage. "Tuh ésèyeu de meu mèt dan lif dé moh ? Jé dézami isi, *pah toa.* Tu meu tous, mézami teu tuh."{#vaxis_s75_1}'

    menu:
        '"Et si je parlais de ton déguisement aux gardes ?"{#vaxis_s75_r4664}' if vaxisLogic.r4664_condition():
            # a288 # r4664
            jump vaxis_s33

        '"Et si je parlais de ton déguisement aux gardes ?"{#vaxis_s75_r4665}' if vaxisLogic.r4665_condition():
            # a289 # r4665
            jump vaxis_s76

        '"Je prends le risque. Prépare-toi à mourir."{#vaxis_s75_r4666}':
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_dispose

        '"Alors, va au diable. Je m„en vais, mais je te conseille de bien faire attention… *zombi*."{#vaxis_s75_r4667}':
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    nr 'Le zombi plisse les yeux et siffle." " Toa crache le soltiv a moa, moa je donne soltiv a *toa*. Moa, jé dézami isi, *pah toa.* Isi pah ta plas. Hom-hou-sièr te tuhé. Moa ésapé."{#vaxis_s76_1}'

    menu:
        '"C„était ta dernière chance, cadavre. Prépare-toi à mourir."{#vaxis_s76_r4669}':
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_dispose

        '"Alors, va au diable. Je m„en vais, mais je te conseille de bien faire attention… *zombi*."{#vaxis_s76_r4670}':
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    nr 'Il hausse les épaules. "C„doi èt keq“par… Va don foir dans leuh dèbara, à lètage. C„est p“têt lah."{#vaxis_s77_1}'

    menu:
        '"Très bien. J„ai d“autres questions…"{#vaxis_s77_r64524}':
            # a294 # r64524
            jump vaxis_s43

        '"Très bien. J„irai voir là-haut pour ce doigt crochu, puis j“irai au rez-de-chaussée, vers l„une des voûtes dans la salle nord-ouest. J“ai compris."{#vaxis_s77_r64525}':
            # a295 # r64525
            jump vaxis_dispose
