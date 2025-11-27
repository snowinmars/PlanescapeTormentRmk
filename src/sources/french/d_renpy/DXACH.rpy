init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.xach_logic import XachLogic
    xachLogic = XachLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DXACH.DLG
# ###


# s0 # say500
label xach_s0: # - # IF ~  True()
    nr 'Tu vois le cadavre d„un homme. Le numéro “331„ est gravé sur son crâne. Ses yeux et ses lèvres sont cousus. Un trou béant creuse sa gorge. Il sent le *pourri*.{#xach_s0_}'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"{#xach_s0_r502}' if xachLogic.r502_condition():
            # a0 # r502
            $ xachLogic.r502_action()
            jump xach_s1

        '"Alors… Tu as vu quelque chose d„intéressant ?"{#xach_s0_r503}' if xachLogic.r503_condition():
            # a1 # r503
            jump xach_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#xach_s0_r1354}' if xachLogic.r1354_condition():
            # a2 # r1354
            jump xach_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#xach_s0_r1355}' if xachLogic.r1355_condition():
            # a3 # r1355
            jump xach_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#xach_s0_r1357}':
            # a4 # r1357
            jump xach_s1

        'Laisse le cadavre tranquille.{#xach_s0_r1358}':
            # a5 # r1358
            jump xach_dispose


# s1 # say501
label xach_s1: # from 0.0 0.1 0.2 0.4
    nr 'Le cadavre regarde silencieusement dans le vide de ses yeux aveugles.{#xach_s1_}'

    menu:
        '"Alors, au revoir."{#xach_s1_r505}':
            # a6 # r505
            jump xach_dispose


# s2 # say504
label xach_s2: # from 0.3
    nr '"Qu-qu…" Le zombi retrouve bizarrement sa voix. Il paraît inquiet. "Qui est-là ? Réponds-moi !"{#xach_s2_}'

    menu:
        '"Tu ne me vois donc pas ?"{#xach_s2_r507}':
            # a7 # r507
            jump xach_s3

        'Improvise : "C„est moi. Tu ne reconnais donc pas ma voix ?"{#xach_s2_r508}' if xachLogic.r508_condition():
            # a8 # r508
            jump xach_s30

        'Improvise : "C„est moi. Tu ne reconnais donc pas ma voix ?"{#xach_s2_r63307}' if xachLogic.r63307_condition():
            # a9 # r63307
            jump xach_s30

        '"Qui es-tu ?"{#xach_s2_r519}':
            # a10 # r519
            jump xach_s31

        '"Xachariah ?"{#xach_s2_r506}' if xachLogic.r506_condition():
            # a11 # r506
            jump xach_s4

        '"Tu n„auras aucune réponse aujourd“hui, cadavre. Au revoir."{#xach_s2_r520}':
            # a12 # r520
            jump xach_dispose


# s3 # say509
label xach_s3: # from 2.0
    nr '"Je suis aveugle, dans la mort comme dans la vie… Maintenant réponds-moi, qui es-tu ?"{#xach_s3_}'

    menu:
        'Improvise : "C„est moi. Tu ne reconnais donc pas ma voix ?"{#xach_s3_r510}' if xachLogic.r510_condition():
            # a13 # r510
            jump xach_s30

        'Improvise : "C„est moi. Tu ne reconnais donc pas ma voix ?"{#xach_s3_r63308}' if xachLogic.r63308_condition():
            # a14 # r63308
            jump xach_s30

        '"Qui es-tu ?"{#xach_s3_r511}':
            # a15 # r511
            jump xach_s31

        '"Xachariah ?"{#xach_s3_r521}' if xachLogic.r521_condition():
            # a16 # r521
            jump xach_s4

        '"Tu n„auras aucune réponse aujourd“hui, cadavre. Au revoir."{#xach_s3_r522}':
            # a17 # r522
            jump xach_dispose


# s4 # say512
label xach_s4: # from 2.4 3.3 30.0 31.0
    nr '"Quoi… toi !" Le zombi paraît surpris, mais rassuré. "Par le regard de la Dame…" Le ton de sa voix est émerveillé. "Tu n„es pas *mort*, matois ? Maudits soient ces yeux à demi morts… J“aimerais tant pouvoir te voir !"{#xach_s4_}'

    menu:
        '"Qui es-tu ?"{#xach_s4_r515}':
            # a18 # r515
            jump xach_s5

        '"Qu„est-ce que tu fais ici ?"{#xach_s4_r516}':
            # a19 # r516
            jump xach_s47

        '"C„est quoi, cet endroit ?"{#xach_s4_r517}':
            # a20 # r517
            jump xach_s6

        '"Je ne peux pas te parler plus longtemps. Je dois partir. Au revoir."{#xach_s4_r518}' if xachLogic.r518_condition():
            # a21 # r518
            jump xach_s41

        '"Je ne peux pas te parler plus longtemps. Je dois partir. Au revoir."{#xach_s4_r1394}' if xachLogic.r1394_condition():
            # a22 # r1394
            jump xach_dispose


# s5 # say514
label xach_s5: # from 4.0
    nr '"Difficile de reconnaître sous ce linceul de peau répugnant ce vieux Xachariah l„Idiot ! C“est moi, matois. Bénis soient les Pouvoirs, je n„aurais jamais cru te revoir… mais mon ouïe me dit que toi aussi, tu as changé. As-tu fait de mauvais choix ?" Le trou dans la gorge de Xachariah siffle. "Toi aussi, tu es mort ?"{#xach_s5_}'

    menu:
        '"C„est une longue histoire… mais je suis toujours en vie."{#xach_s5_r685}':
            # a23 # r685
            jump xach_s46

        '"Qu„est-ce que tu fais ici ?"{#xach_s5_r686}':
            # a24 # r686
            jump xach_s47

        '"Qu„est-ce que c“est que cet endroit ?"{#xach_s5_r687}':
            # a25 # r687
            jump xach_s6

        '"Je n„ai plus le temps de parler, Xachariah. Au revoir."{#xach_s5_r688}' if xachLogic.r688_condition():
            # a26 # r688
            jump xach_s41

        '"Je n„ai plus le temps de parler, Xachariah. Au revoir."{#xach_s5_r1393}' if xachLogic.r1393_condition():
            # a27 # r1393
            jump xach_dispose


# s6 # say513
label xach_s6: # from 4.2 5.2
    nr '"C„est la Morgue, matois. Tu le savais pas ?"{#xach_s6_}'

    menu:
        '"Qu„est-ce qui t“a mis dans cet état ?"{#xach_s6_r523}':
            # a28 # r523
            jump xach_s8

        '"Qu„est-ce que tu peux me dire sur la Morgue ?"{#xach_s6_r524}' if xachLogic.r524_condition():
            # a29 # r524
            $ xachLogic.r524_action()
            jump xach_s9

        '"Qu„est-ce que tu peux me dire sur ma vie antérieure ?"{#xach_s6_r525}':
            # a30 # r525
            jump xach_s16

        '"Qu„est-ce que tu peux me dire sur mes précédents compagnons ?"{#xach_s6_r526}':
            # a31 # r526
            jump xach_s23

        '"Je dois partir. Au revoir."{#xach_s6_r527}' if xachLogic.r527_condition():
            # a32 # r527
            jump xach_s41

        '"Je dois partir. Au revoir."{#xach_s6_r1392}' if xachLogic.r1392_condition():
            # a33 # r1392
            jump xach_dispose


# s7 # say528
label xach_s7: # from 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
    nr '"Hein ?"{#xach_s7_}'

    menu:
        '"Je veux récupérer cet objet maintenant, Xachariah…"{#xach_s7_r63484}' if xachLogic.r63484_condition():
            # a34 # r63484
            jump xach_s34

        '"Qu„est-ce qui t“a mis dans cet état ?"{#xach_s7_r637}':
            # a35 # r637
            jump xach_s8

        '"Qu„est-ce que tu peux me dire sur la Morgue ?"{#xach_s7_r638}':
            # a36 # r638
            jump xach_s9

        '"Qu„est-ce que tu peux me dire sur ma vie antérieure ?"{#xach_s7_r639}':
            # a37 # r639
            jump xach_s16

        '"Qu„est-ce que tu peux me dire sur mes précédents compagnons ?"{#xach_s7_r640}':
            # a38 # r640
            jump xach_s23

        '"Je dois partir. Au revoir, Xachariah."{#xach_s7_r1391}' if xachLogic.r1391_condition():
            # a39 # r1391
            jump xach_dispose

        '"Je dois partir. Au revoir, Xachariah."{#xach_s7_r641}' if xachLogic.r641_condition():
            # a40 # r641
            jump xach_s41


# s8 # say529
label xach_s8: # from 6.0 7.1
    nr 'Il baisse la voix comme s„il avait honte. "C“est dur, de marcher sur tes traces, matois, et j„en ai vu, des horreurs. Je me suis mis à boire, à boire sans cesse. Une fois que j“étais saoul comme un cochon, j„ai vendu mon corps aux Hommes-Poussière. Le destin a décidé de frapper un homme à terre, et je suis mort peu après."{#xach_s8_}'

    menu:
        '"J„ai d“autres questions…"{#xach_s8_r531}':
            # a41 # r531
            jump xach_s7

        '"J„en ai assez entendu. Au revoir."{#xach_s8_r545}' if xachLogic.r545_condition():
            # a42 # r545
            jump xach_s41

        '"J„en ai assez entendu. Au revoir."{#xach_s8_r1390}' if xachLogic.r1390_condition():
            # a43 # r1390
            jump xach_dispose


# s9 # say533
label xach_s9: # from 6.1 7.2
    nr '"Un lieu de mort dirigé par les Morts… Quelque chose ne tourne pas rond ici…"{#xach_s9_}'

    menu:
        '"Comme quoi ?"{#xach_s9_r534}':
            # a44 # r534
            jump xach_s10

        '"J„ai d“autres questions à te poser…"{#xach_s9_r536}':
            # a45 # r536
            jump xach_s7

        '"Je n„ai plus le temps de parler avec toi. Au revoir."{#xach_s9_r537}' if xachLogic.r537_condition():
            # a46 # r537
            jump xach_s41

        '"Je n„ai plus le temps de parler avec toi. Au revoir."{#xach_s9_r1389}' if xachLogic.r1389_condition():
            # a47 # r1389
            jump xach_dispose


# s10 # say535
label xach_s10: # from 9.0
    nr '"Tu veux connaître le soltif ? Y„a un zombi qui prétend être un zombi, mais qui n“en est pas un. Je ne tiens pas à savoir pourquoi, mais c„est une chose étrange."{#xach_s10_}'

    menu:
        '"Autre chose ?"{#xach_s10_r538}' if xachLogic.r538_condition():
            # a48 # r538
            jump xach_s11

        '"De quel zombi il s„agit ?"{#xach_s10_r539}':
            # a49 # r539
            jump xach_s12

        '"Intéressant. J„ai d“autres questions…"{#xach_s10_r540}':
            # a50 # r540
            jump xach_s7

        '"Je n„ai plus le temps de parler avec toi. Au revoir."{#xach_s10_r546}' if xachLogic.r546_condition():
            # a51 # r546
            jump xach_s41

        '"Je n„ai plus le temps de parler avec toi. Au revoir."{#xach_s10_r1388}' if xachLogic.r1388_condition():
            # a52 # r1388
            jump xach_dispose


# s11 # say541
label xach_s11: # from 10.0 12.0
    nr '"Autre chose. Ce vieux githzeraï… celui qui garde la salle de préparation… Dhall. Il t„a sauvé de l“incinération plusieurs fois. Tu as de la chance qu„il soit ton ami."{#xach_s11_}'

    menu:
        '"Qu„est-ce que Dhall a fait pour me sauver, exactement ?"{#xach_s11_r542}' if xachLogic.r542_condition():
            # a53 # r542
            jump xach_s13

        '"Je sais. J„ai d“autres questions…"{#xach_s11_r543}':
            # a54 # r543
            jump xach_s7

        '"Je n„ai plus le temps de parler avec toi. Au revoir."{#xach_s11_r544}' if xachLogic.r544_condition():
            # a55 # r544
            jump xach_s41

        '"Je n„ai plus le temps de parler avec toi. Au revoir."{#xach_s11_r1387}' if xachLogic.r1387_condition():
            # a56 # r1387
            jump xach_dispose


# s12 # say547
label xach_s12: # from 10.1
    nr '"Même si mes yeux pouvaient les voir, je ne pourrais pas les compter. Voici comment tu le reconnaîtras : sa voix sonne faux pour un zombi. Il ne répond pas comme les autres."{#xach_s12_}'

    menu:
        '"T„as remarqué autre chose d“étrange à la Morgue ?"{#xach_s12_r548}' if xachLogic.r548_condition():
            # a57 # r548
            jump xach_s11

        '"Hmmm. Intéressant. J„ai d“autres questions…"{#xach_s12_r554}':
            # a58 # r554
            jump xach_s7

        '"Je vais me mettre à la recherche de ce zombi. Au revoir."{#xach_s12_r549}' if xachLogic.r549_condition():
            # a59 # r549
            jump xach_s41

        '"Je vais me mettre à la recherche de ce zombi. Au revoir."{#xach_s12_r1386}' if xachLogic.r1386_condition():
            # a60 # r1386
            jump xach_dispose


# s13 # say550
label xach_s13: # from 11.0
    nr '"Il a retardé ta crémation jusqu„à ce que tu te réveilles sur ta dalle. J“ignore pourquoi."{#xach_s13_}'

    menu:
        '"Intéressant. J„ai d“autres questions…"{#xach_s13_r552}':
            # a61 # r552
            jump xach_s7

        '"Je dois partir. Au revoir."{#xach_s13_r553}' if xachLogic.r553_condition():
            # a62 # r553
            jump xach_s41

        '"Je dois partir. Au revoir."{#xach_s13_r1385}' if xachLogic.r1385_condition():
            # a63 # r1385
            jump xach_dispose


# s14 # say555
label xach_s14: # -
    nr '"Il pensait qu„il était nécessaire d“éviter que… Je n„arrive pas à me souvenir pourquoi c“était nécessaire."{#xach_s14_}'

    menu:
        '"Hmmm. Méfiant… J„ai d“autres questions…"{#xach_s14_r557}':
            # a64 # r557
            jump xach_s7

        '"Je vois. Je me demande si *c„était* nécessaire. Il faudrait que j“en parle avec Dhall … Au revoir."{#xach_s14_r556}' if xachLogic.r556_condition():
            # a65 # r556
            jump xach_s41

        '"Je vois. Je me demande si *c„était* nécessaire. Il faudrait que j“en parle avec Dhall … Au revoir."{#xach_s14_r1384}' if xachLogic.r1384_condition():
            # a66 # r1384
            jump xach_dispose


# s15 # say558
label xach_s15: # -
    nr 'Sa voix retombe, comme s„il avait honte. "Quand nos chemins se sont séparés, matois, plus guère de vie ne restait en moi. Il est difficile de suivre tes pas et j“ai vu bien des horreurs. J„ai commencé à boire et j“étais presque hébété par l„alcool. Une fois saoul, j“ai vendu mon corps aux Hommes-Poussière. Le sort m„a frappé au plus bas et je mourus peu de temps après."{#xach_s15_}'

    menu:
        '"J„ai d“autres questions…"{#xach_s15_r559}':
            # a67 # r559
            jump xach_s7

        '"Je dois partir. Au revoir."{#xach_s15_r560}' if xachLogic.r560_condition():
            # a68 # r560
            jump xach_s41

        '"Je dois partir. Au revoir."{#xach_s15_r1383}' if xachLogic.r1383_condition():
            # a69 # r1383
            jump xach_dispose


# s16 # say561
label xach_s16: # from 6.2 7.3
    nr '"Pourquoi ? Tu t„es oublié ?"{#xach_s16_}'

    menu:
        '"D„une certaine manière… oui."{#xach_s16_r562}':
            # a70 # r562
            jump xach_s17

        '"Non… Je voulais juste voir si tu étais vraiment la personne que tu prétendais être."{#xach_s16_r563}':
            # a71 # r563
            jump xach_s20

        '"Peu importe. J„ai d“autres questions…"{#xach_s16_r564}':
            # a72 # r564
            jump xach_s7

        '"Je dois partir. Au revoir."{#xach_s16_r565}' if xachLogic.r565_condition():
            # a73 # r565
            jump xach_s41

        '"Je dois partir. Au revoir."{#xach_s16_r1382}' if xachLogic.r1382_condition():
            # a74 # r1382
            jump xach_dispose


# s17 # say566
label xach_s17: # from 16.0 21.0 22.0
    nr '"Tu étais bizarre, toujours méfiant et à la recherche de quelque chose… Je parie que tu as eu bien des ennemis dans ta vie. Et pour sûr, ceux qui se sont frottés à toi ont fini dans les chapitres noirs du livre des morts."{#xach_s17_}'

    menu:
        '"Autre chose ? Autre chose de plus précis…"{#xach_s17_r569}':
            # a75 # r569
            jump xach_s18

        '"J„ai d“autres questions…"{#xach_s17_r570}':
            # a76 # r570
            jump xach_s7

        '"Je dois partir. Au revoir."{#xach_s17_r571}' if xachLogic.r571_condition():
            # a77 # r571
            jump xach_s41

        '"Je dois partir. Au revoir."{#xach_s17_r1381}' if xachLogic.r1381_condition():
            # a78 # r1381
            jump xach_dispose


# s18 # say567
label xach_s18: # from 17.0
    nr '"Tu pouvais être terriblement cruel… comme cette fois où tu m„as fait signer ce contrat, ou quand tu as abandonné cette gamine pleurnicharde sur l“Averne. Nous avons aussi eu de sacrés moments, parfois. Aucun d„entre nous n“a jamais pensé à déserter le navire, fiston."{#xach_s18_}'

    menu:
        '"Je… je vois. Quoi d„autre ? Il y a autre chose que tu pourrais me dire pour m“aider ?"{#xach_s18_r572}':
            # a79 # r572
            jump xach_s19

        '"Peu importe. J„ai d“autres questions…"{#xach_s18_r573}':
            # a80 # r573
            jump xach_s7

        '"Je dois partir. Au revoir."{#xach_s18_r574}' if xachLogic.r574_condition():
            # a81 # r574
            jump xach_s41

        '"Je dois partir. Au revoir."{#xach_s18_r1380}' if xachLogic.r1380_condition():
            # a82 # r1380
            jump xach_dispose


# s19 # say568
label xach_s19: # from 18.0
    nr '"Dans ton âme, tu as vu ce qu„il t“arrivait, comme un territoire que l„on prend lors d“une guerre. Pour toi, tout était semblable à une bataille. Tu étais le salaud le plus cruel que j„aie jamais rencontré. Rien ne comptait plus que d“atteindre ton but. La pauvre Deionarra, pleurante et suppliante, ne t„a pas ému. Le gith t“avait mis en garde contre tes stratégies. Le pauvre Xachariah voulait juste tenir le coup jusqu„à ce que nous arrivions sur les Plans. Tu agissais comme si tu étais invincible, mais nous n“étions que des humains. Maintenant, nous sommes certainement tous inscrits dans le livre des morts…{#xach_s19_}'

    menu:
        '"Autre chose ?"{#xach_s19_r63234}' if xachLogic.r63234_condition():
            # a83 # r63234
            jump xach_s32

        '"Deionarra ?"{#xach_s19_r576}':
            # a84 # r576
            jump xach_s26

        '"Le „gith“ ? Qu„est-ce que tu veux dire ?"{#xach_s19_r577}':
            # a85 # r577
            jump xach_s24

        '"J„ai d“autres questions…"{#xach_s19_r578}':
            # a86 # r578
            jump xach_s7

        '"Je vois… Je dois partir maintenant. Au revoir, Xachariah."{#xach_s19_r579}' if xachLogic.r579_condition():
            # a87 # r579
            jump xach_s41

        '"Je vois… Je dois partir maintenant. Au revoir, Xachariah."{#xach_s19_r1379}' if xachLogic.r1379_condition():
            # a88 # r1379
            jump xach_dispose


# s20 # say580
label xach_s20: # from 16.1
    nr '"Que te dire pour te prouver mon identité… Voyons, il reste d„autres souvenirs. Souviens-toi quand nous nous sommes frayés un chemin à travers l“Averne et nous avons rencontré ce groupe d„abishaï dans ce trou plein d“asticots."{#xach_s20_}'

    menu:
        'Mensonge : "Oui."{#xach_s20_r581}':
            # a89 # r581
            jump xach_s21

        '"Non."{#xach_s20_r582}':
            # a90 # r582
            jump xach_s22


# s21 # say583
label xach_s21: # from 20.0
    nr '"Eh bien, je suis content que l„un de nous au moins s“en souvienne, parce que je suis sûr de ne pas m„en souvenir moi-même. Qui es-tu, matois, et que cherches-tu en furetant dans les souvenirs des morts ?"{#xach_s21_}'

    menu:
        'J„espère découvrir qui je suis, Xachariah. Je l“ai oublié, et je crois que tu me connaissais. Que peux-tu me dire de ma vie antérieure ?{#xach_s21_r584}':
            # a91 # r584
            jump xach_s17

        '"Laisse tomber. J„ai d“autres questions."{#xach_s21_r586}':
            # a92 # r586
            jump xach_dispose

        '"Rien… Je dois partir. Au revoir, Xachariah."{#xach_s21_r587}' if xachLogic.r587_condition():
            # a93 # r587
            jump xach_s41

        '"Rien… Je dois partir. Au revoir, Xachariah."{#xach_s21_r1378}' if xachLogic.r1378_condition():
            # a94 # r1378
            jump xach_dispose


# s22 # say588
label xach_s22: # from 20.1
    nr '"Hum… Cet épisode ne s„est peut-être pas passé comme je m“en souviens. Souviens-toi quand Deionarra a failli entrer dans le livre des morts en tentant de t„empêcher d“entrer dans Maudith."{#xach_s22_}'

    menu:
        '"Non, pas vraiment… mais ce n„est pas grave. Alors, que peux-tu me dire de ma vie antérieure ?"{#xach_s22_r590}':
            # a95 # r590
            jump xach_s17

        '"Peu importe… J„ai d“autres questions."{#xach_s22_r591}':
            # a96 # r591
            jump xach_s7

        '"Je dois partir. Au revoir, Xachariah."{#xach_s22_r592}' if xachLogic.r592_condition():
            # a97 # r592
            jump xach_s41

        '"Je dois partir. Au revoir, Xachariah."{#xach_s22_r1377}' if xachLogic.r1377_condition():
            # a98 # r1377
            jump xach_dispose


# s23 # say589
label xach_s23: # from 6.3 7.4
    nr '"Quelle drôle d„équipe… Un homme à moitié mort qui n“aurait pas pu entrer dans le livre des morts (si laid que les Pouvoirs du mal n„en auraient pas voulu), la fille gémissante d“un avocat, un gith en exil, un crâne à la langue de chacal et un archer aveugle à moitié saoul comme moi."{#xach_s23_}'

    menu:
        '"Gith ?"{#xach_s23_r593}':
            # a99 # r593
            jump xach_s24

        '"La fille gémissante d„un avocat ?"{#xach_s23_r594}':
            # a100 # r594
            jump xach_s26

        '"Un crâne flottant ?"{#xach_s23_r595}':
            # a101 # r595
            jump xach_s28

        '"Tu étais un archer aveugle ?"{#xach_s23_r596}':
            # a102 # r596
            jump xach_s49

        '"Tu sais ce qui est arrivé à mon journal ?"{#xach_s23_r597}':
            # a103 # r597
            jump xach_s29

        '"Peu importe. J„ai d“autres questions…"{#xach_s23_r598}':
            # a104 # r598
            jump xach_s7

        '"Je dois partir. Au revoir, Xachariah."{#xach_s23_r599}' if xachLogic.r599_condition():
            # a105 # r599
            jump xach_s41

        '"Je dois partir. Au revoir, Xachariah."{#xach_s23_r1376}' if xachLogic.r1376_condition():
            # a106 # r1376
            jump xach_dispose


# s24 # say600
label xach_s24: # from 19.2 23.0 27.0
    nr '"Gith sinistre… hostile et silencieux, comme tous ceux de leur espèce. Je ne lui faisais pas un brin confiance. Tu vois, matois, ces gith chétifs n„ont que deux choses en tête : éviter l“esclavage et tuer les illithids à tête de calmar. Le reste ne compte pas. Il n„avait rien à fiche de nous, à part toi."{#xach_s24_}'

    menu:
        '"Comment ça ?"{#xach_s24_r601}' if xachLogic.r601_condition():
            # a107 # r601
            jump xach_s25

        '"À propos de certains de mes compagnons…"{#xach_s24_r602}':
            # a108 # r602
            jump xach_s27

        '"J„ai d“autres questions…"{#xach_s24_r603}':
            # a109 # r603
            jump xach_s7

        '"Hmmm. Intéressant. Merci, Xachariah."{#xach_s24_r604}' if xachLogic.r604_condition():
            # a110 # r604
            jump xach_s41

        '"Hmmm. Intéressant. Merci, Xachariah."{#xach_s24_r1375}' if xachLogic.r1375_condition():
            # a111 # r1375
            jump xach_dispose


# s25 # say605
label xach_s25: # from 24.0 26.0
    nr '"L„un des soltifs que j“ai jamais pu expliquer, matois. Tu peux peut-être m„éclairer ?"{#xach_s25_}'

    menu:
        '"Je ne sais pas moi-même. J„ai d“autres questions…"{#xach_s25_r606}':
            # a112 # r606
            jump xach_s7

        '"Je ferais peut-être mieux de trouver. Au revoir, Xachariah."{#xach_s25_r607}' if xachLogic.r607_condition():
            # a113 # r607
            jump xach_s41

        '"Je ferais peut-être mieux de trouver. Au revoir, Xachariah."{#xach_s25_r1374}' if xachLogic.r1374_condition():
            # a114 # r1374
            jump xach_dispose


# s26 # say608
label xach_s26: # from 19.1 23.1 27.1
    nr '"Cette gamine bagarreuse qui se comportait comme un soldat avait juré de te suivre jusqu„à Baator et de revenir. Et par les Puissances, c“est ce qu„elle a fait ! Elle était si obsédée par l“idée qu„elle pouvait te perdre. Elle tenait peu à moi ou au gith. Elle était folle d“amour pour toi, ce qui prouve qu„elle était azimutée. Je ne comprends pas pourquoi les femmes sont attirées par ta sale gueule, mais ça leur fait bouillir le sang. C“était une gamine riche du Quartier des Gratte-Papier. Tu voulais obtenir quelque chose d„elle, et le seul prix à payer était qu“elle t„accompagne."{#xach_s26_}'

    menu:
        '"Qu„est-ce que je lui voulais ?"{#xach_s26_r609}' if xachLogic.r609_condition():
            # a115 # r609
            jump xach_s25

        '"À propos de certains de mes compagnons…"{#xach_s26_r610}':
            # a116 # r610
            jump xach_s27

        '"J„ai d“autres questions…"{#xach_s26_r614}':
            # a117 # r614
            jump xach_s7

        '"J„en ai assez entendu. Au revoir, Xachariah."{#xach_s26_r611}' if xachLogic.r611_condition():
            # a118 # r611
            jump xach_s41

        '"J„en ai assez entendu. Au revoir, Xachariah."{#xach_s26_r1373}' if xachLogic.r1373_condition():
            # a119 # r1373
            jump xach_dispose


# s27 # say612
label xach_s27: # from 24.1 26.1 28.0 29.0 33.1 49.0
    nr '"Quoi ? Lequel ?"{#xach_s27_}'

    menu:
        '"Le gith."{#xach_s27_r613}':
            # a120 # r613
            jump xach_s24

        '"La fille gémissante d„un avocat."{#xach_s27_r615}':
            # a121 # r615
            jump xach_s26

        '"Le crâne flottant."{#xach_s27_r616}':
            # a122 # r616
            jump xach_s28

        '"Tu… tu étais un… archer aveugle ?"{#xach_s27_r617}':
            # a123 # r617
            jump xach_s49

        '"Peu importe. J„ai d“autres questions…"{#xach_s27_r618}':
            # a124 # r618
            jump xach_s7

        '"J„en ai assez entendu. Au revoir, Xachariah."{#xach_s27_r619}' if xachLogic.r619_condition():
            # a125 # r619
            jump xach_s41

        '"J„en ai assez entendu. Au revoir, Xachariah."{#xach_s27_r1372}' if xachLogic.r1372_condition():
            # a126 # r1372
            jump xach_dispose


# s28 # say620
label xach_s28: # from 23.2 27.2
    nr '"Ce crâne malpoli cherchait la bagarre ! Il faisait le beau et se moquait de ma condition !"{#xach_s28_}'

    menu:
        '"À propos de certains de mes compagnons…"{#xach_s28_r622}':
            # a127 # r622
            jump xach_s27

        '"J„ai d“autres questions…"{#xach_s28_r623}':
            # a128 # r623
            jump xach_s7

        '"J„en ai assez entendu. Au revoir, Xachariah."{#xach_s28_r624}' if xachLogic.r624_condition():
            # a129 # r624
            jump xach_s41

        '"J„en ai assez entendu. Au revoir, Xachariah."{#xach_s28_r1371}' if xachLogic.r1371_condition():
            # a130 # r1371
            jump xach_dispose


# s29 # say625
label xach_s29: # from 23.4
    nr '"Le carnet que tu avais cousu sur ta propre chair et qui contient plus de pages que je n„aie eu d“années dans ma vie ? ! Tant mieux si tu as perdu ce livre macabre ! Tu y gribouillais toujours quelque chose. Son odeur était affreuse. Tu avais toujours peur que quelqu„un te le prenne. Tu écrivais jusqu“à ce que la peau se décolle de tes doigts. Je me demandais si tu voulais vider ton cerveau en écrivant. Nous attendions parfois des jours pendant que tu écrivais. Je détestais ce livre infernal. Il semblait te tenir à cœur, mais pas de manière positive. La dernière fois que je l„ai vu, il était en ta possession. Si te ne l“as pas avec toi, matois, je ne sais pas où sur les Plans il pourrait bien être."{#xach_s29_}'

    menu:
        '"À propos de mes compagnons…"{#xach_s29_r626}':
            # a131 # r626
            jump xach_s27

        '"J„ai d“autres questions…"{#xach_s29_r627}':
            # a132 # r627
            jump xach_s7

        '"Merci du tuyau. Au revoir, Xachariah."{#xach_s29_r628}' if xachLogic.r628_condition():
            # a133 # r628
            jump xach_s41

        '"Merci du tuyau. Au revoir, Xachariah."{#xach_s29_r1370}' if xachLogic.r1370_condition():
            # a134 # r1370
            jump xach_dispose


# s30 # say629
label xach_s30: # from 2.1 2.2 3.0 3.1
    nr '"Ça me dit quelque chose… mais si tu es celui auquel je pense, alors… qui…" Le zombi se tait pendant un moment. "Qui suis-je ?"{#xach_s30_}'

    menu:
        '"Xachariah ?"{#xach_s30_r631}' if xachLogic.r631_condition():
            # a135 # r631
            jump xach_s4

        '"Je ne connais pas ton nom. Je reviendrai peut-être si je le trouve. Au revoir."{#xach_s30_r632}' if xachLogic.r632_condition():
            # a136 # r632
            jump xach_dispose


# s31 # say630
label xach_s31: # from 2.3 3.2
    nr '"Je…" Le zombi se tait. "… mon nom… m„a échappé. Je… ne sais plus… qui je suis."{#xach_s31_}'

    menu:
        '"Xachariah ?"{#xach_s31_r634}' if xachLogic.r634_condition():
            # a137 # r634
            jump xach_s4

        '"Je ne connais pas ton nom. Je reviendrai peut-être quand je l„aurai trouvé. Au revoir."{#xach_s31_r635}' if xachLogic.r635_condition():
            # a138 # r635
            jump xach_dispose

        '"Au revoir."{#xach_s31_r636}' if xachLogic.r636_condition():
            # a139 # r636
            jump xach_dispose


# s32 # say642
label xach_s32: # from 19.0
    nr '"En partant, tu as laissé quelque chose, matois… tu as laissé Dak„kon, sans maître, et le crâne, sans ami. Et moi ? Tu as tué quelque chose en moi qui n“a jamais refait surface. Bien du sang a coulé dans mon estomac et mes selles. C„était comme un morceau de plomb froid dans mes intestins."{#xach_s32_}'

    menu:
        '"Quoi ?"{#xach_s32_r645}':
            # a140 # r645
            $ xachLogic.r645_action()
            jump xach_s33

        '"J„ai d“autres questions…"{#xach_s32_r646}':
            # a141 # r646
            jump xach_s7

        '"Je dois partir. Au revoir, Xachariah."{#xach_s32_r648}' if xachLogic.r648_condition():
            # a142 # r648
            jump xach_s41

        '"Je dois partir. Au revoir, Xachariah."{#xach_s32_r1369}' if xachLogic.r1369_condition():
            # a143 # r1369
            jump xach_dispose


# s33 # say643
label xach_s33: # from 32.0
    nr '"Je… je ne sais pas. Mais il m„a changé. Changé en profondeur. J“agonisais quand tu l„as mis en moi, et je ne m“en suis pas soucié plus que ça sur le moment."{#xach_s33_}'

    menu:
        '"Je peux le reprendre ?"{#xach_s33_r649}':
            # a144 # r649
            jump xach_s34

        '"À propos de mes autres compagnons…"{#xach_s33_r650}':
            # a145 # r650
            jump xach_s27

        '"J„ai d“autres questions…"{#xach_s33_r651}':
            # a146 # r651
            jump xach_s7

        '"Je dois partir. Au revoir, Xachariah."{#xach_s33_r652}' if xachLogic.r652_condition():
            # a147 # r652
            jump xach_s41

        '"Je dois partir. Au revoir, Xachariah."{#xach_s33_r1368}' if xachLogic.r1368_condition():
            # a148 # r1368
            jump xach_dispose


# s34 # say644
label xach_s34: # from 7.0 33.0
    nr '"Il est enterré profondément. Sans scalpel ni couteau et sans mes indications, tu ne réussiras pas à le déloger. Tu as un scalpel ou un couteau ?"{#xach_s34_}'

    menu:
        '"Oui."{#xach_s34_r647}' if xachLogic.r647_condition():
            # a149 # r647
            jump xach_s36

        '"Non… mais je devais pouvoir arracher les sutures."{#xach_s34_r653}' if xachLogic.r653_condition():
            # a150 # r653
            jump xach_s36


# s35 # say654
label xach_s35: # -
    nr '"Eh bien, reviens quand tu en auras trouvé un et on tentera de sortir cet anneau."{#xach_s35_}'

    menu:
        '"J„ai d“autres questions…"{#xach_s35_r655}':
            # a151 # r655
            jump xach_s7

        '"Je vais aller en chercher un. Au revoir, Xachariah."{#xach_s35_r656}':
            # a152 # r656
            jump xach_dispose


# s36 # say657
label xach_s36: # from 34.0 34.1
    nr '"Coupe 10 cm en dessous du sternum et tâte."{#xach_s36_}'

    menu:
        'Fais-le.{#xach_s36_r658}':
            # a153 # r658
            jump xach_s37

        '"Peu importe, Xachariah… J„ai quelques questions à te poser à la place…"{#xach_s36_r659}':
            # a154 # r659
            jump xach_s7

        '"Impossible pour le moment, je dois partir. Au revoir, Xachariah."{#xach_s36_r660}' if xachLogic.r660_condition():
            # a155 # r660
            jump xach_s41

        '"Impossible pour le moment, je dois partir. Au revoir, Xachariah."{#xach_s36_r1367}' if xachLogic.r1367_condition():
            # a156 # r1367
            jump xach_dispose


# s37 # say661
label xach_s37: # from 36.0
    nr '"Un peu plus à gauche… encore…" Ta main saisit un objet.{#xach_s37_}'

    menu:
        'Arrache-le.{#xach_s37_r663}':
            # a157 # r663
            $ xachLogic.r663_action()
            jump xach_s38


# s38 # say662
label xach_s38: # from 37.0
    nr 'Tu sors un foie de zombi. "Par le regard de la Dame ! Pardon, matois… je croyais que les Hommes-Poussière nous avaient ôté tous les organes avant de nous sortir du livre des morts. Essaye encore. Peut-être à droite."{#xach_s38_}'

    menu:
        'Refais-le.{#xach_s38_r664}':
            # a158 # r664
            jump xach_s39


# s39 # say665
label xach_s39: # from 38.0
    nr '"Et voilà… un peu plus sur la droite, reviens… encore…" Tu sens quelque chose de froid et dur, un peu plus gros que ce à quoi tu t„attendais. "Je crois que c“est ça. Sors-le."{#xach_s39_}'

    menu:
        'Arrache-le.{#xach_s39_r666}':
            # a159 # r666
            $ xachLogic.r666_action()
            jump xach_s40


# s40 # say667
label xach_s40: # from 39.0
    nr 'Tu tiens un objet noirci, de la taille d„un poing et très lourd pour sa taille. "C“est ça. Euh… Il est plus gros que je l„aurais cru. Et… qu“est-ce que c„est ? On dirait… un cœur."{#xach_s40_}'

    menu:
        '"Je crois, oui. Merci, Xachariah. J„ai d“autres questions…"{#xach_s40_r668}':
            # a160 # r668
            jump xach_s7

        '"Je dois partir maintenant. Au revoir, Xachariah."{#xach_s40_r669}' if xachLogic.r669_condition():
            # a161 # r669
            jump xach_s41

        '"Je dois partir maintenant. Au revoir, Xachariah."{#xach_s40_r1366}' if xachLogic.r1366_condition():
            # a162 # r1366
            jump xach_dispose


# s41 # say670
label xach_s41: # from 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
    nr '"Avant de partir, j„aimerais que tu me rendes un petit service, matois."{#xach_s41_}'

    menu:
        '"Quoi ?"{#xach_s41_r672}':
            # a163 # r672
            $ xachLogic.r672_action()
            jump xach_s42

        '"J„ai déjà assez de services à rendre et de quêtes à entreprendre comme ça… Je dois partir, Xachariah. Au revoir."{#xach_s41_r671}':
            # a164 # r671
            $ xachLogic.r671_action()
            jump xach_s45


# s42 # say673
label xach_s42: # from 41.0
    nr 'Sa voix retombe, comme s„il avait honte. "J“ai commis des erreurs, parfois très graves. L„une des plus tragiques est certainement d“avoir signé le contrat des Hommes-Poussière. Si je n„avais pas bu autant de bibe, je ne l“aurais pas fait. Je le regrette, et j„ai pensé que tu pourrais m“aider."{#xach_s42_}'

    menu:
        '"Comment ça ?"{#xach_s42_r675}':
            # a165 # r675
            jump xach_s43

        '"J„ai déjà assez de services à rendre et de quêtes à entreprendre comme ça… Je dois partir, Xachariah. Au revoir."{#xach_s42_r676}':
            # a166 # r676
            jump xach_s45


# s43 # say677
label xach_s43: # from 42.0
    nr '"J„ai l“impression que ce corps va résister encore longtemps… et chaque jour est trop long pour moi. Étripe-moi, matois, en souvenir du bon vieux temps. L„idée de moisir dans cette Morgue pendant des années en compagnie de ces blafards me donne des frissons. Tu ne pourrais pas m“inscrire à nouveau dans le livre des morts ? Ma place est là-bas."{#xach_s43_}'

    menu:
        '"Si c„est ce que tu veux…"{#xach_s43_r679}':
            # a167 # r679
            $ xachLogic.r679_action()
            jump xach_s44

        '"Xachariah, je ne vais pas te tuer. Encore. Au revoir."{#xach_s43_r680}':
            # a168 # r680
            jump xach_s45


# s44 # say678
label xach_s44: # from 43.0
    nr 'Tu l„étripes et Xachariah tombe sur le sol dans un bruit sourd. Un sifflement faible s“échappe de son corps, sa poitrine se soulève une fois, puis dans un dernier râle, le cadavre s„éteint.{#xach_s44_}'

    menu:
        '"Repose en paix, Xachariah."{#xach_s44_r681}':
            # a169 # r681
            $ xachLogic.r681_action()
            jump xach_dispose


# s45 # say682
label xach_s45: # from 41.1 42.1 43.1
    nr '"Eh ben, tant pis. Je ne te suis plus d„aucune aide, je pense."{#xach_s45_}'

    menu:
        'Pars.{#xach_s45_r684}':
            # a170 # r684
            jump xach_dispose


# s46 # say683
label xach_s46: # from 5.0
    nr '"Eh ben, matois, aucun doute, tu as l„air bien mort. Mais comment peux-tu me parler ? Ta voix est aussi claire que du cristal."{#xach_s46_}'

    menu:
        '"Qu„est-ce que tu fais ici ?"{#xach_s46_r689}':
            # a171 # r689
            jump xach_s47

        '"J„ai des questions…"{#xach_s46_r690}':
            # a172 # r690
            jump xach_s7

        '"Je dois partir. Au revoir, Xachariah."{#xach_s46_r691}' if xachLogic.r691_condition():
            # a173 # r691
            jump xach_s41

        '"Je dois partir. Au revoir, Xachariah."{#xach_s46_r1365}' if xachLogic.r1365_condition():
            # a174 # r1365
            jump xach_dispose


# s47 # say692
label xach_s47: # from 4.1 5.1 46.0
    nr '"Je ne suis que d„une aide très modeste dans le lieu le plus dépourvu de vie qui existe. Si seulement je pouvais passer la Frontière Éternelle et avoir un plan qui serait ma maison, mais j“ai gaspillé mon âme et je me retrouve ici."{#xach_s47_}'

    menu:
        '"Ça fait quoi d„être un zombi ?"{#xach_s47_r693}':
            # a175 # r693
            jump xach_s48

        '"J„ai des questions…"{#xach_s47_r695}':
            # a176 # r695
            jump xach_s7

        '"Je dois partir. Au revoir, Xachariah."{#xach_s47_r696}' if xachLogic.r696_condition():
            # a177 # r696
            jump xach_s41

        '"Je dois partir. Au revoir, Xachariah."{#xach_s47_r1364}' if xachLogic.r1364_condition():
            # a178 # r1364
            jump xach_dispose


# s48 # say694
label xach_s48: # from 47.0
    nr '"C„est un travail honnête…" La suture de la bouche de Xachariah se défait, ses lèvres se rétractent et forment presque un sourire. "… Cela m“importe peu."{#xach_s48_}'

    menu:
        '"J„ai d“autres questions…"{#xach_s48_r697}':
            # a179 # r697
            jump xach_s7

        '"Eh bien, au revoir, Xachariah."{#xach_s48_r698}' if xachLogic.r698_condition():
            # a180 # r698
            $ xachLogic.r698_action()
            jump xach_s41

        '"Eh bien, au revoir, Xachariah."{#xach_s48_r633}' if xachLogic.r633_condition():
            # a181 # r633
            jump xach_dispose


# s49 # say63625
label xach_s49: # from 23.3 27.3
    nr '"C„est ce que j“étais. Tu as vraiment oublié, n„est-ce pas ? Tous les hommes ne voient pas uniquement avec leurs yeux, matois… certains discernent mieux les choses. Je pouvais sentir le cœur de mes ennemis - de *tes* ennemis - et mes flèches faisaient toujours mouche. Ah ! c“était il y a longtemps…"{#xach_s49_}'

    menu:
        '"À propos de certains de mes compagnons…"{#xach_s49_r63626}':
            # a182 # r63626
            jump xach_s27

        '"J„ai d“autres questions…"{#xach_s49_r63627}':
            # a183 # r63627
            jump xach_s7

        '"Hmmm. Intéressant. Merci, Xachariah."{#xach_s49_r63628}' if xachLogic.r63628_condition():
            # a184 # r63628
            jump xach_s41

        '"Hmmm. Intéressant. Merci, Xachariah."{#xach_s49_r63629}' if xachLogic.r63629_condition():
            # a185 # r63629
            jump xach_dispose
