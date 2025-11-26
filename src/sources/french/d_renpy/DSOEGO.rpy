init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.soego_logic import SoegoLogic
    soegoLogic = SoegoLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DSOEGO.DLG
# ###


# s0 # say1431
label soego_s0: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Tu vois un homme aux traits tirés, vêtu d„une robe noire. Son visage étroit est extrêmement pâle ; on dirait qu“il n„a pas dormi. Ses épaules tombent et des poches pendent sous ses yeux injectés de sang. Il ne semble pas te voir… Il doit te confondre avec l“un des travailleurs cadavériques.'

    menu:
        '"Bonjour."':
            # a0 # r1432
            jump soego_s1

        '"Qui es-tu ?"':
            # a1 # r1433
            jump soego_s1

        '"C„est quoi, cet endroit ?"':
            # a2 # r1434
            jump soego_s1

        '"J„ai quelques questions…"':
            # a3 # r1435
            jump soego_s1

        'Laisse-le tranquille.':
            # a4 # r1436
            jump soego_dispose


# s1 # say1437
label soego_s1: # from 0.0 0.1 0.2 0.3
    nr 'La tête de l„Homme-Poussière se relève quand tu lui adresses la parole. "Pardon ? Tu m“as parlé ?"'

    menu:
        '"Oui, c„est vrai. J“ai quelques questions…"':
            # a5 # r1438
            $ soegoLogic.j63982_s1_r1438_action()
            jump soego_s2

        '"Non. Non, pas du tout."':
            # a6 # r1439
            $ soegoLogic.r1439_action()
            jump soego_s2

        'Adopte un silence de mort.' if soegoLogic.r1440_condition():
            # a7 # r1440
            jump soego_s3

        'Adopte un silence de mort.' if soegoLogic.r1441_condition():
            # a8 # r1441
            jump soego_s4

        'Va-t„en. Vite.':
            # a9 # r1442
            jump soego_s5


# s2 # say1443
label soego_s2: # from 1.0 1.1 3.0 3.3 4.0 4.1
    nr '"Par les Puissances !" L„Homme-Poussière sursaute et t“observe attentivement. Ses yeux ne sont pas injectés de sang, mais ils ont une teinte rouge. "M„sieur, je dois avouer, et ce n“est pas très flatteur, que tu fais un zombi très convaincant." Il s„incline légèrement. "Je suis Soego. Qu“est-ce qui t„amène ici…" Il jette un coup d“œil à tes cicatrices. "…dans un tel état ?"'

    menu:
        '"Ça ne te regarde pas."':
            # a10 # r1444
            jump soego_s6

        '"Je ne sais pas vraiment ce que je fais là. Je me suis réveillé là-haut sur l„une des dalles et ma mémoire est… un peu embrouillée."':
            # a11 # r1445
            jump soego_s7

        '"Je tourne en rond dans ces salles sans réussir à trouver la sortie. Peux-tu m„aider ?"' if soegoLogic.r1446_condition():
            # a12 # r1446
            jump soego_s8

        '"J„essaie de sortir d“ici."':
            # a13 # r1447
            jump soego_s13

        '"J„avais besoin de changer d“air."':
            # a14 # r1448
            $ soegoLogic.r1448_action()
            jump soego_s16

        'Je n„ai pas de temps à perdre. Au revoir.':
            # a15 # r4999
            jump soego_s17


# s3 # say1449
label soego_s3: # from 1.2
    nr 'L„Homme-Poussière t“observe un moment, puis il secoue la tête. "Des visions…" Il soupire et se frotte les yeux. "Ces accès de fièvre empirent…"'

    menu:
        '"Ce n„est pas ton imagination. J“ai quelques questions…"':
            # a16 # r1450
            $ soegoLogic.j63982_s3_r1450_action()
            jump soego_s2

        'Brise-lui la nuque pendant que son attention est relâchée.' if soegoLogic.r1451_condition():
            # a17 # r1451
            jump soego_s19

        'Brise-lui la nuque pendant que son attention est relâchée.' if soegoLogic.r1452_condition():
            # a18 # r1452
            jump soego_s22

        '"J„ai des questions."':
            # a19 # r1453
            $ soegoLogic.j63982_s3_r1453_action()
            jump soego_s2

        'Pars discrètement.':
            # a20 # r1454
            jump soego_dispose


# s4 # say1455
label soego_s4: # from 1.3
    nr 'L„Homme-Poussière t“observe attentivement et s„approche… Ses lèvres se retroussent et laissent voir une rangée de dents sales et pointues. Il commence à te renifler comme un rat.'

    menu:
        '"Euh… mais qu„as-tu à me renifler comme ça ?"':
            # a21 # r1456
            $ soegoLogic.r1456_action()
            jump soego_s2

        '"Écoute, j„ai quelques questions à te poser…"':
            # a22 # r1457
            $ soegoLogic.r1457_action()
            jump soego_s2

        'Brise-lui la nuque au moment où il se penche.' if soegoLogic.r1458_condition():
            # a23 # r1458
            jump soego_s19

        'Brise-lui la nuque au moment où il se penche.' if soegoLogic.r1459_condition():
            # a24 # r1459
            jump soego_s22

        'Va-t„en. Vite.':
            # a25 # r1460
            jump soego_s15


# s5 # say1461
label soego_s5: # from 1.4
    nr 'Tu te retournes, prêt à partir. L„Homme-Poussière laisse échapper un léger sifflement. Il s“approche et te renifle. "Par les Puissances !" L„Homme-Poussière recule, les yeux écarquillés. Tu remarques que ses yeux ne sont pas injectés de sang, mais qu“ils ont une teinte rouge. "M„sieur, je dois avouer, et ce n“est pas très flatteur, que tu fais un zombi très convaincant." Il s„incline légèrement. "Je suis Soego. Que veux-tu… dans un tel état ?"'

    menu:
        '"Ça ne te regarde pas."':
            # a26 # r1462
            jump soego_s6

        '"Je ne sais pas vraiment ce que je fais là. Je me suis réveillé là-haut sur l„une des dalles et ma mémoire est… un peu embrouillée."':
            # a27 # r1463
            jump soego_s7

        '"Je suis perdu et je cherche la sortie. Peux-tu m„aider ?"' if soegoLogic.r1464_condition():
            # a28 # r1464
            jump soego_s8

        '"J„essaie de sortir d“ici."':
            # a29 # r1465
            jump soego_s13

        '"J„avais besoin de changer d“air."':
            # a30 # r1466
            $ soegoLogic.r1466_action()
            jump soego_s16

        '"Je n„ai pas de temps à perdre. Au revoir."':
            # a31 # r1467
            jump soego_s17


# s6 # say1468
label soego_s6: # from 2.0 5.0 15.0 41.1 43.0 50.1 115.1
    nr '"Si, ça *me* regarde." Les yeux de Soego rougeoient ; les commissures de ses lèvres se convulsent de jouissance anticipée. "Peut-être…" Il ricane et laisse voir une rangée de dents sales et pointues. "Peut-être devrais-je appeler les gardes ? Oui… c„est ce que je vais faire."'

    menu:
        '"Attends ! Je suis perdu… Je tourne en rond dans ces salles sans pouvoir trouver la sortie. Peux-tu m„aider ?"' if soegoLogic.r1469_condition():
            # a32 # r1469
            jump soego_s8

        '"Arrête ! N„appelle pas les gardes ! Je veux juste sortir d“ici… Peux-tu m„aider ?"' if soegoLogic.r1470_condition():
            # a33 # r1470
            jump soego_s13

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r1471_condition():
            # a34 # r1471
            jump soego_s19

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r1472_condition():
            # a35 # r1472
            jump soego_s22

        '"Alors, fais-les venir. Je voudrais les rencontrer."':
            # a36 # r1473
            jump soego_s18


# s7 # say1474
label soego_s7: # from 2.1 5.1 13.3 15.1 42.1 57.0
    nr '"Ah bon ?" L„Homme-Poussière te scrute. "Tu as *vraiment* l“air bien préparé. Je me demande comment tu aurais pu supporter une telle douleur… Tu *souffres* ? Tu sembles souffrir."'

    menu:
        '"Comment je serais arrivé ici ?"':
            # a37 # r1475
            jump soego_s54

        '"Je n„ai pas de temps à perdre. Au revoir."':
            # a38 # r1476
            jump soego_s17


# s8 # say1477
label soego_s8: # from 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
    nr 'Soego hoche la tête, et les commissures de ses lèvres se tordent. "Eh bien… certainement. Ces couloirs peuvent dérouter nos visiteurs. Mais sache que la Morgue est interdite après les neuf coups de cloche. Je t„ouvre la porte d“entrée."'

    menu:
        '"Merci."' if soegoLogic.r1478_condition():
            # a39 # r1478
            $ soegoLogic.r1478_action()
            jump soego_dispose

        '"Merci."' if soegoLogic.r1479_condition():
            # a40 # r1479
            jump soego_s9


# s9 # say1480
label soego_s9: # from 8.1 56.1 60.1
    nr 'Soego met la main à sa ceinture, fouille un instant et siffle. "La clé !" Ses yeux rougeoient et ses lèvres se retroussent de colère… Son expression est presque bestiale. "Quelqu„un m“a volé la clé !" Il se tourne vers toi et grogne. "C„est toi ! C“est toi qui me l„as prise !"'

    menu:
        'En le bluffant : "Euh… attends ! Pourquoi est-ce que je te la demanderais si je l„avais volée ?"':
            # a41 # r1481
            jump soego_s18

        'Mensonge : "Qu„est-ce que tu racontes ?! Je n“avais rien à voir là-dedans !"':
            # a42 # r1482
            $ soegoLogic.r1482_action()
            jump soego_s18

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r1483_condition():
            # a43 # r1483
            jump soego_s19

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r1484_condition():
            # a44 # r1484
            jump soego_s22

        '"Et si c„était le cas ? Que comptes-tu faire ?"':
            # a45 # r1485
            jump soego_s18


# s10 # say1486
label soego_s10: # -
    nr 'Soego tire une grosse clé de sa ceinture et se dirige vers la porte d„entrée. Tu ne peux t“empêcher de remarquer sa démarche étrange… Il penche vers l„avant pour garder l“équilibre.'

    menu:
        '"Il a une démarche bizarre."' if soegoLogic.r1487_condition():
            # a46 # r1487
            jump morte_s101  # EXTERN

        'Attends qu„il ouvre la porte.' if soegoLogic.r1488_condition():
            # a47 # r1488
            jump soego_s11


# s11 # say1489
label soego_s11: # from 10.1
    nr 'Une fois qu„il a atteint la porte, Soego tourne la clé dans le verrou. L“instant d„après, on entend un grincement… le son traverse la salle principale, fait écho sur le sol en marbre.'

    menu:
        'Attends qu„il revienne.':
            # a48 # r1490
            $ soegoLogic.r1490_action()
            jump soego_s12


# s12 # say1491
label soego_s12: # from 11.0 # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    nr '"Très bien. L„entrée principale est ouverte, mais tu ne pourras pas l“utiliser pour rentrer de nouveau."'

    menu:
        '"Est-ce que je peux te poser quelques questions avant de partir ?"':
            # a49 # r1492
            $ soegoLogic.r1492_action()
            jump soego_s26

        '"Merci, Soego. Je m„en vais, maintenant."':
            # a50 # r1493
            $ soegoLogic.r1493_action()
            jump soego_dispose


# s13 # say1494
label soego_s13: # from 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
    nr '"Sortir ?" Soego fronce les sourcils. "Comment es-tu entré ?"'

    menu:
        '"J„étais là pour un enterrement, pour présenter mes hommages. Je voudrais partir… mais j“ai l„impression que je tourne en rond. Peux-tu m“aider à trouver la sortie ?"' if soegoLogic.r1495_condition():
            # a51 # r1495
            jump soego_s8

        '"Je n„en suis pas sûr."' if soegoLogic.r1496_condition():
            # a52 # r1496
            jump soego_s14

        '"Je n„en suis pas sûr."' if soegoLogic.r1497_condition():
            # a53 # r1497
            jump soego_s61

        '"Je me suis réveillé là-haut sur l„une des dalles, et ma mémoire est… un peu embrouillée."':
            # a54 # r1498
            jump soego_s7

        '"Je n„ai pas le temps. Au revoir."':
            # a55 # r1499
            jump soego_s17


# s14 # say1500
label soego_s14: # from 13.1
    nr 'Soego fait claquer sa langue. "Très curieux." Il t„observe à nouveau. "Est-il possible que tu sois l“un des Engagés ?"'

    menu:
        '"Euh, „engagés“ ?"':
            # a56 # r1501
            jump soego_s23

        '"Je n„ai pas de temps à perdre. Au revoir."':
            # a57 # r1502
            jump soego_s17


# s15 # say1503
label soego_s15: # from 4.4
    nr 'Tu te retournes et tu t„apprêtes à partir. L“Homme-Poussière arrête de te renifler et laisse échapper un sifflement. "Par les Puissances !" L„Homme-Poussière se recule, les yeux écarquillés. Tu remarques que ses yeux ne sont pas injectés de sang, mais qu“ils ont une teinte rouge. "M„sieur, je dois avouer, et ce n“est pas très flatteur, que tu fais un zombi très convaincant." Il s„incline légèrement. "Je suis Soego. Que veux-tu… dans un tel état ?"'

    menu:
        '"Ça ne te regarde pas."':
            # a58 # r1504
            jump soego_s6

        '"Je ne sais pas vraiment ce que je fais là. Je me suis réveillé là-haut sur l„une des dalles et ma mémoire est… un peu embrouillée."':
            # a59 # r1505
            jump soego_s7

        '"Je suis perdu et je cherche la sortie. Peux-tu m„aider ?"' if soegoLogic.r1506_condition():
            # a60 # r1506
            jump soego_s8

        '"J„essaie de sortir d“ici."':
            # a61 # r1508
            jump soego_s13

        '"J„avais besoin de changer d“air."':
            # a62 # r1509
            $ soegoLogic.r1509_action()
            jump soego_s16

        '"Je n„ai pas de temps à perdre. Au revoir."':
            # a63 # r1510
            jump soego_s17


# s16 # say1511
label soego_s16: # from 2.4 5.4 15.4
    nr '"Je vois…" Les yeux de Soego rougeoient ; les commissures de ses lèvres se convulsent de jouissance anticipée. "Peut-être…" Il ricane et laisse voir une rangée de dents sales et pointues. "Peut-être devrais-je appeler les gardes ? Oui… c„est ce que je vais faire."'

    menu:
        '"Attends ! Je suis perdu… Je tourne en rond dans ces salles sans pouvoir trouver la sortie. Peux-tu m„aider ?"' if soegoLogic.r1512_condition():
            # a64 # r1512
            jump soego_s8

        '"Arrête ! N„appelle pas les gardes ! Je veux juste sortir d“ici… Peux-tu m„aider ?"' if soegoLogic.r1513_condition():
            # a65 # r1513
            jump soego_s13

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r1514_condition():
            # a66 # r1514
            jump soego_s19

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r1515_condition():
            # a67 # r1515
            jump soego_s22

        '"Alors, fais-les venir. Je voudrais les rencontrer."':
            # a68 # r1516
            jump soego_s18


# s17 # say1517
label soego_s17: # from 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
    nr 'Tu te retournes, prêt à partir. Soego siffle de colère… Soudain, il se reprend et lève la main. "Non, non, tu ne peux pas partir, je le crains. Quelque chose a disparu. Nous devons régler ce problème…" Les commissures de ses lèvres se convulsent et ses yeux rougeoient. "… peut-être devrais-je appeler les gardes. Oui… c„est ce que je vais faire."'

    menu:
        '"Attends ! Je suis perdu… Je tourne en rond dans ces salles sans pouvoir trouver la sortie. Peux-tu m„aider ?"' if soegoLogic.r1518_condition():
            # a69 # r1518
            jump soego_s8

        '"Arrête ! N„appelle pas les gardes ! Je veux juste sortir d“ici… Peux-tu m„aider ?"' if soegoLogic.r1520_condition():
            # a70 # r1520
            jump soego_s13

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r1521_condition():
            # a71 # r1521
            jump soego_s19

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r1522_condition():
            # a72 # r1522
            jump soego_s22

        '"Alors, fais-les venir. Je voudrais les rencontrer."':
            # a73 # r1523
            jump soego_s18


# s18 # say1524
label soego_s18: # from 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
    nr 'Soego recule d„un pas, et frappe trois fois dans les mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.'

    menu:
        '"Alors très bien…"':
            # a74 # r1525
            $ soegoLogic.r1525_action()
            jump soego_dispose


# s19 # say1526
label soego_s19: # from 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
    nr 'Avant qu„il ait eu le temps de prononcer un mot, tu lui bloques les tempes dans tes mains, et tu lui retournes la tête vers la gauche d“un coup sec.'

    menu:
        '"Je ne peux pas te laisser prévenir tes amis…"':
            # a75 # r1528
            $ soegoLogic.r1528_action()
            jump soego_s20


# s20 # say1529
label soego_s20: # from 19.0
    nr 'Son cou se brise et on entend un *craquement*… mais au lieu de tomber inerte, l„Homme-Poussière pousse un cri étouffé et parvient à se dégager.'

    menu:
        '"Quoi… ?!"' if soegoLogic.r1530_condition():
            # a76 # r1530
            $ soegoLogic.r1530_action()
            jump morte_s100  # EXTERN

        '"Quoi… ?!"' if soegoLogic.r1531_condition():
            # a77 # r1531
            $ soegoLogic.r1531_action()
            jump soego_s21


# s21 # say1532
label soego_s21: # from 20.1
    nr 'L„Homme-Poussière a l“air aussi choqué que toi. Son regard est fou ; un bruit de gargouillement sort de sa gorge… tu es certain de lui avoir brisé le cou, car sa tête est retournée dans un angle peu naturel, mais il est encore en vie ! Tu regardes la scène, ébahi, et il frappe faiblement trois fois dans les mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.'

    menu:
        '"Alors très bien…"':
            # a78 # r1533
            $ soegoLogic.r1533_action()
            jump soego_dispose


# s22 # say1534
label soego_s22: # from 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
    nr '*Quelque chose* a dû alerter l„Homme-Poussière… Avant que tu puisses le frapper, il saute en arrière, les yeux rougeoyants et les babines retroussées. Dans un sifflement, il frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.'

    menu:
        '"Alors très bien…"':
            # a79 # r1535
            $ soegoLogic.r1535_action()
            jump soego_dispose


# s23 # say4792
label soego_s23: # from 14.0
    nr '"Certains ont signé le contrat permettant aux Hommes-Poussière d„utiliser leur corps après leur mort. Tu t“es peut-être emmêlé dans une confusion inhabituelle. Tu as l„air plus brillant que la plupart de nos zombis."'

    menu:
        '"Les gens te vendent leur corps après leur mort ?"':
            # a80 # r4793
            jump soego_s24

        '"Oh. J„ai d“autres questions…"':
            # a81 # r4794
            jump soego_s26

        '"Je n„ai pas de temps à perdre. Au revoir."':
            # a82 # r4795
            jump soego_s17


# s24 # say4796
label soego_s24: # from 23.0
    nr '"Oh oui, en échange d„une petite somme de cuivre, beaucoup sont prêts à vendre le corps dont ils n“auront plus besoin après avoir atteint la Vraie Mort."'

    menu:
        '"Que fais-tu de ces corps ?"':
            # a83 # r4797
            jump soego_s25

        '"Je… je vois. Ça t„ennuie si je te pose d“autres questions ?"':
            # a84 # r4798
            jump soego_s25

        '"Merci du renseignement. Au revoir."':
            # a85 # r4799
            jump soego_s17


# s25 # say4800
label soego_s25: # from 24.0 24.1
    nr '"Les corps exécutent toutes sortes de menues tâches autour de la Morgue. Ils vont chercher des cadavres, nettoient le sol, nous aident à préparer les corps avant l„enterrement… des tâches relativement simples. Mais ils sont capables de suivre n“importe quelle instruction compliquée."'

    menu:
        '"Eh bien, „engagé“ ou pas, comment ai-je fait pour arriver ici si j„étais en vie ?"':
            # a86 # r4801
            jump soego_s54

        '"Je… je vois. Ça t„ennuie si je te pose d“autres questions ?"':
            # a87 # r4802
            jump soego_s26

        '"Merci du renseignement. Au revoir."':
            # a88 # r4803
            jump soego_s17


# s26 # say4804
label soego_s26: # from 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
    nr 'Soego hoche la tête. "Tu peux poser tes questions."'

    menu:
        '"Je voudrais partir. Peux-tu me guider vers la sortie ?"' if soegoLogic.r4805_condition():
            # a89 # r4805
            jump soego_s8

        '"Peux-tu me sortir d„ici ?"' if soegoLogic.r4806_condition():
            # a90 # r4806
            jump soego_s13

        '"Sais-tu qu„au deuxième étage, il y a un cadavre qui n“est autre qu„un humain déguisé ?"' if soegoLogic.r4807_condition():
            # a91 # r4807
            jump soego_s27

        '"Si je puis me permettre… tu te sens bien ? Tu as l„air à plat."':
            # a92 # r4809
            $ soegoLogic.r4809_action()
            jump soego_s31

        '"Tu es Soego, c„est ça ? On m“a dit que tu étais un peu bizarre pour un Homme-Poussière. Que tu aimais les rats."' if soegoLogic.r4810_condition():
            # a93 # r4810
            $ soegoLogic.r4810_action()
            jump soego_s30

        '"Tu es Soego, c„est ça ? On m“a dit que tu étais un peu bizarre pour un Homme-Poussière. Que tu aimais les rats."' if soegoLogic.r4811_condition():
            # a94 # r4811
            jump soego_s29

        '"Connais-tu un certain Pharod ?"' if soegoLogic.r4832_condition():
            # a95 # r4832
            jump soego_s33

        '"J„ai perdu un journal. Tu n“en aurais pas vu un ?"' if soegoLogic.r4833_condition():
            # a96 # r4833
            jump soego_s37

        '"Peu importe. Je dois partir. Au revoir."' if soegoLogic.r4834_condition():
            # a97 # r4834
            jump soego_dispose

        '"Peu importe. Je dois partir. Au revoir."' if soegoLogic.r4835_condition():
            # a98 # r4835
            jump soego_s17


# s27 # say4808
label soego_s27: # from 26.2
    nr '"Pardon ?"'

    menu:
        '"Il y a un homme déguisé en cadavre là-haut. Je crois qu„il espionne les Hommes-Poussière."' if soegoLogic.r4836_condition():
            # a99 # r4836
            $ soegoLogic.r4836_action()
            jump soego_s28

        '"Il y a un homme déguisé en cadavre là-haut. Je crois qu„il espionne les Hommes-Poussière."' if soegoLogic.r4837_condition():
            # a100 # r4837
            $ soegoLogic.r4837_action()
            jump soego_s28

        '"Laisse tomber. J„ai d“autres questions…"':
            # a101 # r4838
            jump soego_s26

        '"Peu importe. Je dois partir. Au revoir."' if soegoLogic.r4839_condition():
            # a102 # r4839
            jump soego_dispose

        '"Peu importe. Je dois partir. Au revoir."' if soegoLogic.r916_condition():
            # a103 # r916
            jump soego_s17


# s28 # say4840
label soego_s28: # from 27.0 27.1
    nr '"Quoi ? Pourquoi est-ce que quelqu„un… ?" La voix de Soego se réduit subitement à un sifflement. Ses lèvres se retroussent et révèlent une rangée de dents irrégulières. "Un Anarchiste. *Ici*. " Soudain, il semble se souvenir de ta présence, et il se reprend. "Merci de m“avoir informé. Je veillerai à ce que les gardes règlent cette affaire."'

    menu:
        '"C„est rien. J“ai d„autres questions…"':
            # a104 # r4852
            jump soego_s26

        '"Peu importe. Je dois partir. Au revoir."' if soegoLogic.r4853_condition():
            # a105 # r4853
            jump soego_dispose

        '"Peu importe. Je dois partir. Au revoir."' if soegoLogic.r4854_condition():
            # a106 # r4854
            jump soego_s17


# s29 # say4855
label soego_s29: # from 26.5
    nr 'Tu es sur le point de le dire, quand, soudain, tu t„arrêtes. Tu ressens comme un picotement en regardant Soego… Tu as le sentiment qu“il vaudrait mieux que tu ne dises rien.'

    menu:
        '"On m„a dit que tu étais spécial, Soego. Que tu aimais les rats."':
            # a107 # r4856
            jump soego_s30

        '"Euh… dis-moi, je voudrais te demander quelque chose."':
            # a108 # r4857
            jump soego_s26

        '"Peu importe. Je dois partir. Au revoir."' if soegoLogic.r4858_condition():
            # a109 # r4858
            jump soego_dispose

        '"Peu importe. Je dois partir. Au revoir."' if soegoLogic.r4859_condition():
            # a110 # r4859
            jump soego_s17


# s30 # say4860
label soego_s30: # from 26.4 29.0
    nr 'Soego reste un moment sans rien dire ; il t„observe. Ses yeux brillent d“une lueur rouge, et il pousse un léger soupir. "Je crois que tu as abusé de l„hospitalité qui t“était offerte." À ta surprise, il recule d„un pas et tape dans ses mains à trois reprises. En guise de réponse, une énorme cloche en fer retentit à travers la Morgue.'

    menu:
        '"Qu„est-ce que… ? Qu“est-ce que tu fais ?"':
            # a111 # r4861
            $ soegoLogic.r4861_action()
            jump soego_dispose

        '"Puisque c„est comme ça, prépare-toi à mourir, Soego."':
            # a112 # r4862
            $ soegoLogic.r4862_action()
            jump soego_dispose


# s31 # say4863
label soego_s31: # from 26.3
    nr 'Soego esquisse un faible sourire, et les coins de sa bouche tremblent légèrement. "J„ai récemment été mala… légèrement souffrant, rien de plus. Mon sommeil est parfois… agité."'

    menu:
        '"Je peux faire quelque chose ?"':
            # a113 # r4864
            $ soegoLogic.r4864_action()
            jump soego_s32

        '"Oh. J„ai d“autres questions…"':
            # a114 # r4865
            jump soego_s26

        '"Je vois. Bon, il faut que je m„en aille. Au revoir."' if soegoLogic.r4866_condition():
            # a115 # r4866
            jump soego_dispose

        '"Je vois. Bon, il faut que je m„en aille. Au revoir."' if soegoLogic.r4867_condition():
            # a116 # r4867
            jump soego_s17


# s32 # say4868
label soego_s32: # from 31.0
    nr 'Soego secoue la tête. "Non, non, merci de t„inquiéter pour moi… Ça ira." Il fronce légèrement les sourcils. "Est-ce que je peux faire autre chose pour toi ?"'

    menu:
        '"Oui. J„ai d“autres questions…"':
            # a117 # r4869
            jump soego_s26

        '"Non, je ne vais pas te déranger plus longtemps. Merci pour le renseignement."' if soegoLogic.r4870_condition():
            # a118 # r4870
            jump soego_dispose

        '"Non, je ne vais pas te déranger plus longtemps. Merci pour le renseignement."' if soegoLogic.r4871_condition():
            # a119 # r4871
            jump soego_s17


# s33 # say4872
label soego_s33: # from 26.6
    nr '"Pharod ? Bien sûr que je le connais." Il fronce les sourcils, et ses yeux brillent d„une lueur rouge. "Un esprit morbide. Aucun respect pour les morts, et encore moins pour les vivants. C“est un charognard. Un Récupérateur."'

    menu:
        '"Un Récupérateur ?"':
            # a120 # r4873
            jump soego_s34

        '"Sais-tu où je peux le trouver ?"':
            # a121 # r4874
            jump soego_s36

        '"Oh. J„ai d“autres questions…"':
            # a122 # r4875
            jump soego_s26

        '"Je vois. Il vaudrait peut-être mieux que je m„en aille."' if soegoLogic.r4876_condition():
            # a123 # r4876
            jump soego_dispose

        '"Je vois. Il vaudrait peut-être mieux que je m„en aille."' if soegoLogic.r4877_condition():
            # a124 # r4877
            jump soego_s17


# s34 # say4878
label soego_s34: # from 33.0 36.0
    nr '"Les Récupérateurs gagnent leur vie en ramassant des corps qu„ils emmènent à la Morgue. Nous nous assurons de leur procurer un enterrement décent."'

    menu:
        '"Alors, si un Récupérateur trouve un corps… le mien, par exemple… il peut l„apporter ici pour te le vendre ?"' if soegoLogic.r4879_condition():
            # a125 # r4879
            jump soego_s35

        '"Alors, ce Récupérateur, Pharod… Sais-tu où je pourrais le trouver ?"':
            # a126 # r4880
            jump soego_s36

        '"Oh. J„ai d“autres questions…"':
            # a127 # r4881
            jump soego_s26

        '"Je vois. Bon, il faut que je m„en aille. Au revoir."' if soegoLogic.r4882_condition():
            # a128 # r4882
            jump soego_dispose

        '"Je vois. Bon, il faut que je m„en aille. Au revoir."' if soegoLogic.r4883_condition():
            # a129 # r4883
            jump soego_s17


# s35 # say4884
label soego_s35: # from 34.0
    nr '"Oui."'

    menu:
        '"Hmmmm. Il faut absolument que je trouve ce Pharod. Sais-tu où je peux le trouver ?"':
            # a130 # r4885
            jump soego_s36

        '"Oh. J„ai d“autres questions…"':
            # a131 # r4886
            jump soego_s26

        '"Merci du tuyau. Au revoir."' if soegoLogic.r4887_condition():
            # a132 # r4887
            jump soego_dispose

        '"Merci du tuyau. Au revoir."' if soegoLogic.r4888_condition():
            # a133 # r4888
            jump soego_s17


# s36 # say4889
label soego_s36: # from 33.1 34.1 35.0
    nr '"Je sais qu„il réside dans la Ruche, le taudis situé aux abords de la Morgue, mais je ne sais pas où exactement. Les autres Récupérateurs le savent peut-être."'

    menu:
        '"Que font les Récupérateurs déjà ?"':
            # a134 # r4890
            jump soego_s34

        '"Oh. J„ai d“autres questions…"':
            # a135 # r4891
            jump soego_s26

        '"Merci du tuyau. Au revoir."' if soegoLogic.r4892_condition():
            # a136 # r4892
            jump soego_dispose

        '"Merci du tuyau. Au revoir."' if soegoLogic.r4893_condition():
            # a137 # r4893
            jump soego_s17


# s37 # say4894
label soego_s37: # from 26.7
    nr '"Un journal ?" Soego semble troublé. "Non, je n„en ai pas vu."'

    menu:
        '"Alors, tant pis. J„ai d“autres questions…"':
            # a138 # r4895
            jump soego_s26

        '"Merci quand même. Au revoir."' if soegoLogic.r4896_condition():
            # a139 # r4896
            jump soego_dispose

        '"Merci quand même. Au revoir."' if soegoLogic.r4897_condition():
            # a140 # r4897
            jump soego_s17


# s38 # say4898
label soego_s38: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Tu vois un homme à l„air fatigué vêtu d“une robe noire. Son visage étroit est extrêmement pâle, et il semble ne pas avoir dormi depuis longtemps : ses épaules sont basses, et il a des poches sous ses yeux injectés de sang. Il a l„air perdu dans ses pensées.'

    menu:
        '"Bonjour…"' if soegoLogic.r66706_condition():
            # a141 # r66706
            $ soegoLogic.r66706_action()
            jump soego_s39

        '"Bonjour…"' if soegoLogic.r66707_condition():
            # a142 # r66707
            $ soegoLogic.r66707_action()
            jump soego_s113

        'Laisse-le à ses pensées.':
            # a143 # r66708
            jump soego_dispose


# s39 # say4904
label soego_s39: # from 38.0
    nr '"Bonjour…" L„homme se tourne vers toi et s“incline légèrement. Tu remarques soudain que ses yeux ne sont pas injectés de sang, mais simplement teintés de rouge. "Je suis Soego. Que puis-je…" Il semble soudain remarquer tes cicatrices, et les commissures de ses lèvres se tordent. "Pardon mais, tu es perdu ?"'

    menu:
        '"Oui."':
            # a144 # r4905
            jump soego_s40

        '"Non."':
            # a145 # r4906
            jump soego_s41

        '"Non, je ne suis pas perdu. J„ai quelques questions…"':
            # a146 # r4907
            jump soego_s41

        '"Non. Je cherchais seulement la sortie. Au revoir."':
            # a147 # r4908
            jump soego_s41


# s40 # say4909
label soego_s40: # from 39.0
    nr '"Eh bien, dans ce cas…" Les coins de la bouche de Soego tremblent de nouveau, comme par anticipation. "Je vais demander aux gardes de te raccompagner. Attends un instant." Il semble sur le point d„appeler les gardes.'

    menu:
        '"Attends une minute ! S„il te plaît… Inutile d“appeler les gardes. J„étais là pour un enterrement, et maintenant je tourne en rond dans les salles… Pourrais-tu me guider vers la sortie, s“il te plaît ?"' if soegoLogic.r4910_condition():
            # a148 # r4910
            jump soego_s8

        '"Non ! Je ne suis pas perdu - ce n„est pas ce que je voulais dire."':
            # a149 # r4911
            jump soego_s50

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r4912_condition():
            # a150 # r4912
            jump soego_s19

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r4913_condition():
            # a151 # r4913
            jump soego_s22

        'Va-t„en. Vite.':
            # a152 # r4914
            jump soego_s18

        'Attends.':
            # a153 # r4915
            jump soego_s18


# s41 # say4916
label soego_s41: # from 39.1 39.2 39.3
    nr '"Je ne me souviens pas de t„avoir laissé entrer." Soego te regarde d“un air soupçonneux, et ses yeux brillent d„une lueur rouge dans la lumière des lampes torches. "Puis-je te demander ce que tu fais ici ?"'

    menu:
        '"J„étais là pour un enterrement, pour présenter mes hommages. Je voudrais partir… mais j“ai l„impression que je tourne en rond. Peux-tu m“aider à trouver la sortie ?"' if soegoLogic.r4917_condition():
            # a154 # r4917
            jump soego_s8

        '"Ça ne te regarde pas."':
            # a155 # r4918
            jump soego_s6

        '"Je me suis réveillé sur une dalle de ta salle de préparation."':
            # a156 # r4919
            jump soego_s42

        '"Je suis là pour voir quelqu„un."':
            # a157 # r4920
            jump soego_s43

        '"J„étais là pour un enterrement, mais je crois qu“il y a eu erreur."' if soegoLogic.r4921_condition():
            # a158 # r4921
            jump soego_s53

        'Penche-toi comme pour lui murmurer quelque chose à l„oreille, puis au moment où il se penche à son tour, brise-lui la nuque.':
            # a159 # r4922
            jump soego_s51

        'Va-t„en. Vite.':
            # a160 # r4923
            jump soego_s18


# s42 # say4924
label soego_s42: # from 41.2 50.2 115.0
    nr 'Il a l„air surpris. "Tu… tu t“es réveillé sur l„une des dalles, en haut ?"'

    menu:
        '"Euh, non. Ce n„est pas ce que je voulais dire."':
            # a161 # r4925
            jump soego_s50

        '"Oui. Je sais que c„est difficile à croire, mais c“est la vérité : je me suis réveillé là-haut sur l„une des dalles."':
            # a162 # r4926
            $ soegoLogic.r4926_action()
            jump soego_s7


# s43 # say4927
label soego_s43: # from 41.3 50.3
    nr 'Soego acquiesce. "Qui viens-tu voir ici ? Je me ferai une joie de te guider."'

    menu:
        '"Ça ne te regarde pas."':
            # a163 # r4928
            jump soego_s6

        '"Je suis venu voir Dhall."' if soegoLogic.r4929_condition():
            # a164 # r4929
            jump soego_s44

        '"Je suis venu voir Deionarra."' if soegoLogic.r4930_condition():
            # a165 # r4930
            jump soego_s47

        'Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"' if soegoLogic.r4931_condition():
            # a166 # r4931
            $ soegoLogic.r4931_action()
            jump soego_s49

        'Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"' if soegoLogic.r4932_condition():
            # a167 # r4932
            jump soego_s49

        '"Euh, personne. Ce n„est pas ce que je voulais dire."':
            # a168 # r4933
            jump soego_s50


# s44 # say4934
label soego_s44: # from 43.1
    nr '"Dhall ? Dhall le Scribe se trouve dans la salle de réception à l„étage supérieur." Les coins de la bouche de Soego tremblent légèrement. "Il est très occupé et plutôt en mauvaise santé. À moins que ce ne soit pour une affaire urgente, je ne le dérangerais pas si j“étais toi."'

    menu:
        '"Qu„est-ce qui ne va pas chez Dhall ?"':
            # a169 # r4935
            jump soego_s46

        '"La salle de réception ?"':
            # a170 # r4936
            jump soego_s45

        '"Très bien. Ma visite sera brève. Au revoir."':
            # a171 # r4937
            jump soego_s62


# s45 # say4938
label soego_s45: # from 44.1
    nr '"Oui… la salle de réception est l„endroit où l“on amène les corps trouvés dans la cité. On les enregistre, puis on les prépare pour l„enterrement."'

    menu:
        '"Qu„est-ce qui ne va pas chez Dhall ?"':
            # a172 # r4939
            jump soego_s46

        '"Merci pour tes explications. Ma visite à Dhall sera brève. Au revoir."':
            # a173 # r4940
            jump soego_s62


# s46 # say4941
label soego_s46: # from 44.0 45.0
    nr '"Oh, rien de grave. Dhall est…" Soego claque des dents. "…*vieux*. Sa longue dévotion dans le recensement des morts touche à sa fin. La maladie qu„il a contractée ne tardera pas à l“achever."'

    menu:
        '"Très bien. Ma visite sera brève. Au revoir."':
            # a174 # r4942
            jump soego_s62


# s47 # say4943
label soego_s47: # from 43.2 53.2
    nr '"Deionarra ? Une femme de ce nom est enterrée dans la Salle de Commémoration du nord-ouest. C„est elle que tu cherches ?"'

    menu:
        '"Oui… Est-ce que tu peux me dire ce qui lui est arrivé ?"':
            # a175 # r4944
            jump soego_s48

        '"Oui. Je vais tout de suite aller lui présenter mes respects."':
            # a176 # r4945
            jump soego_s62


# s48 # say4946
label soego_s48: # from 47.0
    nr '"Je ne sais pas exactement, mais je crois qu„elle est ici depuis un certain temps. Son père sait peut-être ce qui lui est arrivé… Il vient souvent ici depuis son bureau du Haut Quartier. Il voulait qu“elle soit enterrée dans cette Salle de Commémoration."'

    menu:
        '"Merci pour tes indications. Je vais aller lui présenter mes respects."':
            # a177 # r4947
            jump soego_s62


# s49 # say4948
label soego_s49: # from 43.3 43.4 53.3 53.4
    nr '"Adahn…" Les yeux de Soego se plissent, et leur teinte rouge semble s„être accentuée. "Personne de ce nom, vivant ou mort, ne réside à la Morgue." Sa bouche tremble et, à ta surprise, il hume l“air pendant un instant.'

    menu:
        '"Euh… alors, j„ai dû mal m“exprimer."':
            # a178 # r4949
            jump soego_s50


# s50 # say4950
label soego_s50: # from 40.1 42.0 43.5 49.0 53.1 57.1
    nr 'Les coins de la bouche de Soego tremblent de nouveau, et ses yeux brillent. "Alors, que viens-tu faire ici ?"'

    menu:
        '"J„étais là pour un enterrement, pour présenter mes hommages. Je voudrais partir… mais j“ai l„impression que je tourne en rond. Peux-tu m“aider à trouver la sortie ?"' if soegoLogic.r4951_condition():
            # a179 # r4951
            jump soego_s8

        '"Ça ne te regarde pas."':
            # a180 # r4952
            jump soego_s6

        '"Je me suis réveillé sur une dalle de ta salle de préparation."':
            # a181 # r4953
            jump soego_s42

        '"Je suis là pour voir quelqu„un."':
            # a182 # r4954
            jump soego_s43

        '"J„étais là pour un enterrement."' if soegoLogic.r4955_condition():
            # a183 # r4955
            jump soego_s53

        'Penche-toi comme pour lui murmurer quelque chose à l„oreille, puis au moment où il se penche à son tour, brise-lui la nuque.':
            # a184 # r4956
            jump soego_s51

        'Enfuis-toi.':
            # a185 # r5028
            jump soego_s18


# s51 # say4957
label soego_s51: # from 41.5 50.5 53.5
    nr 'Soego fronce les sourcils en te voyant entrer, et tu remarques qu„il hume l“air, comme pour le goûter. Soudain, il plisse les yeux et semble sur le point d„appeler les gardes.'

    menu:
        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r4958_condition():
            # a186 # r4958
            jump soego_s19

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r4959_condition():
            # a187 # r4959
            jump soego_s52


# s52 # say4960
label soego_s52: # from 51.1
    nr 'Alors que tu t„avances vers lui, Soego recule. Ses yeux brillent d“une lueur rouge et il montre ses dents. Il tape dans ses mains à trois reprises. En guise de réponse, une énorme cloche en fer retentit à travers la Morgue.'

    menu:
        '"Bon, d„accord…"':
            # a188 # r4961
            $ soegoLogic.r4961_action()
            jump soego_dispose


# s53 # say4962
label soego_s53: # from 41.4 50.4
    nr '"Qui enterre-t-on ? Le service funèbre doit avoir lieu ailleurs dans la Morgue."'

    menu:
        '"Tu as mal compris… L„enterrement était pour MOI."':
            # a189 # r4963
            jump soego_s57

        '"Pardon… Ce n„est pas ce que je voulais dire. Je ne connais pas le nom du défunt."':
            # a190 # r4964
            jump soego_s50

        '"Elle s„appelle Deionarra."' if soegoLogic.r4965_condition():
            # a191 # r4965
            jump soego_s47

        'Mensonge : "Il s„appelle… euh, Adahn."' if soegoLogic.r4967_condition():
            # a192 # r4967
            $ soegoLogic.r4967_action()
            jump soego_s49

        'Mensonge : "Il s„appelle… euh, Adahn."' if soegoLogic.r4968_condition():
            # a193 # r4968
            jump soego_s49

        'Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.':
            # a194 # r4969
            jump soego_s51

        'Enfuis-toi.':
            # a195 # r4970
            jump soego_s18


# s54 # say4966
label soego_s54: # from 7.0 25.0
    nr '"Eh bien…" Soego plisse les yeux. Il semble troublé. "De toute évidence, une erreur a été commise. Il est possible que ta famille ou d„autres Hommes-Poussière t“aient amené ici, ou…" Soego soupire soudain, comme si une pensée désagréable venait de s„emparer de son esprit. "Ou l“un des *Récupérateurs*."'

    menu:
        '"Les Récupérateurs ?"':
            # a196 # r4971
            jump soego_s55


# s55 # say4972
label soego_s55: # from 54.0
    nr '"Oui, les Récupérateurs… de véritables charognards qui nous ramènent les corps des morts. Ils t„ont sans doute cru mort…" Soego soupire, et ses yeux brillent. "… et ils sont tellement bornés qu“ils ne se seraient même pas donné la peine de vérifier avant de t„amener ici." Soego t“observe . "Si tu ne t„étais pas réveillé, tu aurais rejoint la Vraie Mort avant l“heure."'

    menu:
        '"Alors, il y a eu un malentendu… et je voudrais partir. Tout de suite."':
            # a197 # r4973
            jump soego_s56


# s56 # say4974
label soego_s56: # from 55.0 59.1
    nr 'Soego acquiesce, et les coins de sa bouche tremblent. "Mais… bien sûr, bien sûr. Je vais t„ouvrir la porte d“entrée."'

    menu:
        '"D„accord."' if soegoLogic.r4975_condition():
            # a198 # r4975
            $ soegoLogic.r4975_action()
            jump soego_dispose

        '"D„accord."' if soegoLogic.r4976_condition():
            # a199 # r4976
            jump soego_s9


# s57 # say4977
label soego_s57: # from 53.0
    nr '"Toi ?"'

    menu:
        '"Oui, *moi*. Je me suis réveillé là-haut sur l„une des dalles."':
            # a200 # r4978
            jump soego_s7

        '"Pardon… Ce n„est pas ce que j“ai voulu dire."':
            # a201 # r4979
            jump soego_s50


# s58 # say4980
label soego_s58: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    nr 'Alors que tu t„approches, Soego hume l“air et lève les yeux au ciel. Lorsqu„il te voit, il fronce les sourcils. "Je t“ai ouvert la porte. Pourquoi es-tu encore là ?"'

    menu:
        '"J„aurai quelques questions à te poser avant de partir."':
            # a202 # r4981
            jump soego_s26

        '"Je vais vers la porte, maintenant. Au revoir."':
            # a203 # r4982
            jump soego_dispose


# s59 # say4983
label soego_s59: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    nr 'Alors que tu t„approches, Soego hume l“air et lève les yeux au ciel. Lorsqu„il te voit, il s“incline légèrement. "As-tu trouvé ce que tu cherchais ?"'

    menu:
        '"Oui, merci. Excuse-moi, je tourne en rond dans ces salles… Peux-tu m„aider à trouver la sortie ?"' if soegoLogic.r4984_condition():
            # a204 # r4984
            jump soego_s60

        '"Oui. Je veux partir tout de suite. Peux-tu me conduire jusqu„à la sortie ?"' if soegoLogic.r4985_condition():
            # a205 # r4985
            jump soego_s56

        '"Oui et je vais vers la porte. Au revoir."':
            # a206 # r4986
            jump soego_dispose


# s60 # say4987
label soego_s60: # from 59.0
    nr 'Soego acquiesce, et les coins de sa bouche tremblent. "Mais… bien sûr. Ces lieux *peuvent* troubler les visiteurs. Je vais t„ouvrir la porte d“entrée."'

    menu:
        '"Merci."' if soegoLogic.r4988_condition():
            # a207 # r4988
            $ soegoLogic.r4988_action()
            jump soego_dispose

        '"Merci."' if soegoLogic.r4989_condition():
            # a208 # r4989
            jump soego_s9


# s61 # say4990
label soego_s61: # from 13.2
    nr '"Voilà qui est bien étrange." Les yeux de Soego brillent d„une lueur rouge, et les coins de sa bouche tremblent légèrement, comme par anticipation. "Peut-être que…" Il prend un air sarcastique, montrant des dents sales et tranchantes. "Peut-être que je devrais appeler les gardes ? Oui… oui, je crois que c“est ce que je vais faire."'

    menu:
        '"Attends ! Je suis perdu… Je tourne en rond dans ces salles sans pouvoir trouver la sortie. Peux-tu m„aider ?"' if soegoLogic.r4991_condition():
            # a209 # r4991
            jump soego_s8

        '"Arrête ! N„appelle pas les gardes ! Je veux juste sortir d“ici… Peux-tu m„aider ?"' if soegoLogic.r4992_condition():
            # a210 # r4992
            jump soego_s13

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r4993_condition():
            # a211 # r4993
            jump soego_s19

        'Brise-lui la nuque avant qu„il se mette à crier.' if soegoLogic.r4994_condition():
            # a212 # r4994
            jump soego_s22

        '"Alors, fais-les venir. Je voudrais les rencontrer."':
            # a213 # r4995
            jump soego_s18


# s62 # say4996
label soego_s62: # from 44.2 45.1 46.0 47.1 48.0
    nr 'Soego acquiesce… et sa bouche tremble de nouveau. Il ne semble même pas s„en apercevoir. "Reviens quand tu auras présenté tes respects, et je t“ouvrirai la porte d„entrée. On ferme à neuf heures, alors tu devras quitter les lieux dès que tu auras terminé."'

    menu:
        '"Tu sais, je pourrais le faire une autre fois. Tu peux me laisser sortir maintenant ?"':
            # a214 # r4997
            jump soego_s8

        '"Merci. Je reviendrai."':
            # a215 # r4998
            jump soego_dispose


# s63 # say21653
label soego_s63: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    nr '"Ah, un autre vivant. La plupart sont éliminés par les goules avant d„atteindre cette partie des catacombes ; tu as de la chance, très cher."'

    menu:
        '"Tu es Soego, de la Morgue. Que fais-tu ici ?"' if soegoLogic.r21655_condition():
            # a216 # r21655
            $ soegoLogic.r21655_action()
            jump soego_s72

        '"Qui es-tu ?"' if soegoLogic.r21656_condition():
            # a217 # r21656
            $ soegoLogic.r21656_action()
            jump soego_s64

        '"Où suis-je ?"' if soegoLogic.r21657_condition():
            # a218 # r21657
            $ soegoLogic.r21657_action()
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"' if soegoLogic.r21658_condition():
            # a219 # r21658
            $ soegoLogic.r21658_action()
            jump soego_s78

        '"Peut-être. Au revoir."' if soegoLogic.r21660_condition():
            # a220 # r21660
            $ soegoLogic.r21660_action()
            jump soego_s71


# s64 # say21661
label soego_s64: # from 63.1 77.0 78.0
    nr '"Je suis Soego Cielmort, factotum des Hommes-Poussière. Je suis missionnaire en ces lieux." Il fait une demi-révérence.'

    menu:
        '"Missionnaire ?"':
            # a221 # r21662
            jump soego_s65

        '"Que font les Hommes-Poussière ici ?"' if soegoLogic.r21663_condition():
            # a222 # r21663
            jump soego_s66

        '"Où suis-je ?"':
            # a223 # r64595
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a224 # r64596
            jump soego_s78

        '"Bonjour et au revoir."':
            # a225 # r21665
            jump soego_s71


# s65 # say21666
label soego_s65: # from 64.0 72.2 73.2 74.0 101.3 104.1
    nr '"Oui, je suis venu dans ces catacombes, après avoir entendu une rumeur rapportant que des morts-vivants étaient *conscients* en ces lieux. J„espère pouvoir les sauver."'

    menu:
        '"Les sauver ?"':
            # a226 # r21667
            jump soego_s67

        '"Je suis où ?"':
            # a227 # r64597
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a228 # r64599
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a229 # r21669
            jump soego_s71


# s66 # say21670
label soego_s66: # from 64.1 72.3 73.3 74.1 101.4 104.2 109.2
    nr '"Je suis le seul. Je suis venu dans ces catacombes, après avoir entendu une rumeur rapportant que des morts-vivants étaient *conscients* en ces lieux. J„espère pouvoir les sauver."'

    menu:
        '"Les sauver ?"':
            # a230 # r21671
            jump soego_s67

        '"Je suis où ?"':
            # a231 # r64600
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a232 # r64601
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a233 # r21673
            jump soego_s71


# s67 # say21674
label soego_s67: # from 65.0 66.0
    nr '"Oui, la passion les enchaîne à cette fausse vie. J„espère pouvoir leur apprendre à renoncer à ces passions et laisser cette fausse vie derrière eux pour atteindre la Vraie Mort."'

    menu:
        '"Cette fausse vie ?"':
            # a234 # r21675
            jump soego_s68

        '"La Vraie Mort ?"':
            # a235 # r21676
            jump soego_s69

        '"Tu veux qu„ils meurent ?"':
            # a236 # r21767
            jump soego_s70

        '"Je suis où ?"':
            # a237 # r64602
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a238 # r64603
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a239 # r21770
            jump soego_s71


# s68 # say21771
label soego_s68: # from 67.0 69.0 70.0
    nr '"Ces… morts… sont si proches de la Vraie Mort… et pourtant ils s„accrochent à cette vie. Cette fausse vie est l“illusion de l„existence sur ce plan."'

    menu:
        '"La Vraie Mort ?"':
            # a240 # r21772
            jump soego_s69

        '"Tu veux qu„ils meurent ?"':
            # a241 # r21774
            jump soego_s70

        '"Je suis où ?"':
            # a242 # r64604
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a243 # r64605
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a244 # r21776
            jump soego_s71


# s69 # say21777
label soego_s69: # from 67.1 68.0 70.1
    nr '"Une absence totale de passion. La Vraie Mort est la véritable vie après cette illusion d„existence. C“est cet endroit que ces morts doivent atteindre pour se libérer."'

    menu:
        '"Qu„est-ce que cette “fausse vie„ dont tu as parlé ?"':
            # a245 # r21779
            jump soego_s68

        '"Tu veux qu„ils meurent ?"':
            # a246 # r21780
            jump soego_s70

        '"Je suis où ?"':
            # a247 # r64606
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a248 # r64607
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a249 # r21784
            jump soego_s71


# s70 # say21786
label soego_s70: # from 67.2 68.1 69.1
    nr '"Je leur souhaite de transcender ce plan d„existence, de se séparer de la passion. Ça peut les sauver."'

    menu:
        '"Qu„est-ce que cette “fausse vie„ dont tu as parlé ?"':
            # a250 # r21788
            jump soego_s68

        '"Tu as parlé de la „Vraie Mort“ ?"':
            # a251 # r21790
            jump soego_s69

        '"Je suis où ?"':
            # a252 # r64608
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a253 # r64609
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a254 # r21794
            jump soego_s71


# s71 # say21799
label soego_s71: # from 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
    nr '"Accorde-moi un instant avant de partir. N„attaque pas les morts-vivants ici, dans les catacombes. Je les ai convaincus de ne pas vous toucher, tes amis et toi, alors ne brise pas la trêve en les attaquant. Ils se défendront, et ils sont… très nombreux. Tu peux revenir ici si tu as besoin de te reposer."'

    menu:
        '"Attends… je peux me reposer, maintenant ?"' if soegoLogic.r21800_condition():
            # a255 # r21800
            $ soegoLogic.j21805_s71_r21800_action()
            jump soego_s84

        '"Attends… pouvons-nous nous reposer maintenant ?"' if soegoLogic.r64569_condition():
            # a256 # r64569
            $ soegoLogic.j21805_s71_r64569_action()
            jump soego_s84

        'Pars.':
            # a257 # r64570
            $ soegoLogic.j21805_s71_r64570_action()
            jump soego_dispose


# s72 # say21806
label soego_s72: # from 63.0
    nr '"Ta mémoire est remarquable. Je ne suis plus en poste à la morgue… au lieu de cela, je suis devenu missionnaire en ces lieux."'

    menu:
        '"Mais je pensais t„avoir brisé la nuque…"' if soegoLogic.r64547_condition():
            # a258 # r64547
            jump soego_s73

        '"Mais je pensais que je t„avais *tué*…"' if soegoLogic.r21808_condition():
            # a259 # r21808
            jump soego_s73

        '"Missionnaire ?"':
            # a260 # r21809
            jump soego_s65

        '"Que font les Hommes-Poussière ici ?"' if soegoLogic.r21811_condition():
            # a261 # r21811
            jump soego_s66

        '"Je suis où ?"':
            # a262 # r64610
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a263 # r64611
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a264 # r21813
            jump soego_s71


# s73 # say21814
label soego_s73: # from 72.0 72.1 109.0 109.1
    nr '"La blessure que tu m„as infligée n“était pas mortelle. J„ai rapidement récupéré… et réalisé que je souhaiterais m“éloigner de la morgue."'

    menu:
        '"Soego, je t„ai cassé le cou… c“est pas un coup mortel ?"' if soegoLogic.r21815_condition():
            # a265 # r21815
            jump soego_s101

        '"Tu n„es pas en colère ?"':
            # a266 # r21816
            jump soego_s74

        '"Tu as dit que tu étais un missionnaire ?"':
            # a267 # r21817
            jump soego_s65

        '"Que font les Hommes-Poussière ici ?"' if soegoLogic.r21818_condition():
            # a268 # r21818
            jump soego_s66

        '"Très bien… alors où suis-je ?"':
            # a269 # r64612
            jump soego_s77

        '"Je… vois. Pourquoi suis-je prisonnier ici ?"':
            # a270 # r64613
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a271 # r21820
            jump soego_s71


# s74 # say21821
label soego_s74: # from 73.1 101.2 104.0
    nr '"Non… devrais-je l„être ? Je suis quelque peu déçu qu“il ne fût pas temps pour moi de quitter ces lieux. Néanmoins, tu ne devrais pas retourner à la morgue, car nombre de mes collègues factotums ne seront pas contents de te voir."'

    menu:
        '"Tu as dit que tu étais un missionnaire ?"':
            # a272 # r64614
            jump soego_s65

        '"Que font les Hommes-Poussière ici ?"' if soegoLogic.r21823_condition():
            # a273 # r21823
            jump soego_s66

        '"Je suis où ?"':
            # a274 # r64615
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a275 # r64616
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a276 # r21825
            jump soego_s71


# s75 # say21716
label soego_s75: # -
    nr '"Ta mémoire est remarquable. Je ne suis plus en poste à la morgue… au lieu de cela, je suis devenu missionnaire en ces lieux. Tu ne devrais pas retourner à la morgue, car nombre de mes collègues factotums ne seront pas contents de te voir après ton attaque de nos quartiers généraux."'

    jump soego_dispose


# s76 # say21832
label soego_s76: # -
    nr '"Tu es déjà mort, Sans-Nom. Ressusciter était du plus… inconvenant."'

    jump soego_dispose


# s77 # say21837
label soego_s77: # from 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
    nr '"Tu es dans les catacombes des Nations Mortes. Les gardes t„ont amené ici."'

    menu:
        '"Qui es-tu ?"':
            # a277 # r21840
            jump soego_s64

        '"Pourquoi suis-je prisonnier ici ?"':
            # a278 # r21841
            jump soego_s78

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a279 # r21843
            jump soego_s71


# s78 # say21844
label soego_s78: # from 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
    nr '"Je ne sais pas. Demande à l„un des “citoyens„ d“ici."'

    menu:
        '"Qui es-tu ?"':
            # a280 # r21847
            jump soego_s64

        '"Où suis-je ?"':
            # a281 # r21848
            jump soego_s77

        '"Peut-être. Au revoir."':
            # a282 # r21850
            jump soego_s71


# s79 # say21851
label soego_s79: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    nr '"Ah, quelqu„un pour se rallier à notre cause ! En tant qu“agent de Tant-en-Un, on m„a prévenu de ton arrivée. Nous avons besoin de toi pour trouver le chemin qui mène à la salle du trône du Roi Silencieux et le tuer. Fais-le, et Tant-en-Un te récompensera."'

    menu:
        '"Soego… Emoric voulait savoir où tu te trouvais."' if soegoLogic.r66181_condition():
            # a283 # r66181
            $ soegoLogic.r66181_action()
            jump soego_s110

        '"Attends, c„est toi Soego ? Emoric voulait savoir où tu étais."' if soegoLogic.r21852_condition():
            # a284 # r21852
            $ soegoLogic.r21852_action()
            jump soego_s110

        '"Attends une minute… ne t„ai-je pas brisé la nuque à la Morgue ?"' if soegoLogic.r64623_condition():
            # a285 # r64623
            $ soegoLogic.r64623_action()
            jump soego_s112

        '"Attends une minute… je croyais t„avoir tué à la Morgue…"' if soegoLogic.r64624_condition():
            # a286 # r64624
            $ soegoLogic.r64624_action()
            jump soego_s112

        '"Comment est-ce que je peux trouver le Roi Silencieux ?"' if soegoLogic.r21853_condition():
            # a287 # r21853
            $ soegoLogic.r21853_action()
            jump soego_s80

        '"Je vois. Au revoir, alors."' if soegoLogic.r21854_condition():
            # a288 # r21854
            $ soegoLogic.r21854_action()
            jump soego_s71


# s80 # say21858
label soego_s80: # from 79.4 110.2 112.0
    nr '"Je ne sais pas… Je suis ici depuis longtemps et je ne trouve toujours pas d„accès à sa salle du trône. Peut-être auras-tu plus de chance, puisque tu n“es pas accablé par la haine et l„intolérance dont je suis la victime."'

    menu:
        '"La haine et l„intolérance ?"':
            # a289 # r21860
            jump soego_s81

        '"Je vois. Alors, au revoir."':
            # a290 # r21862
            jump soego_s71


# s81 # say21864
label soego_s81: # from 80.0
    nr '"Les opinions de ma faction sont populaires auprès de certains, mais pas tous. Les dignitaires les plus importants de cette civilisation ne les apprécient pas."'

    menu:
        '"Je vois. Alors, au revoir."':
            # a291 # r21870
            jump soego_s71


# s82 # say21913
label soego_s82: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    nr '"Ah, nous nous retrouvons."'

    menu:
        '"Le Roi Silencieux est mort et depuis un certain temps déjà. Il n„y a *plus* de Roi Silencieux."' if soegoLogic.r24206_condition():
            # a292 # r24206
            $ soegoLogic.r24206_action()
            jump soego_s94

        '"Le Roi Silencieux est mort et depuis un certain temps déjà. Il n„y a *plus* de Roi Silencieux."' if soegoLogic.r21915_condition():
            # a293 # r21915
            $ soegoLogic.r21915_action()
            jump soego_s94

        '"C„est toi Soego ? Emoric voulait savoir où tu étais."' if soegoLogic.r21914_condition():
            # a294 # r21914
            $ soegoLogic.r21914_action()
            jump soego_s109

        '"J„étais dans ta salle et j“ai vu ton journal."' if soegoLogic.r21916_condition():
            # a295 # r21916
            $ soegoLogic.r21916_action()
            jump soego_s100

        '"J„ai rencontré un squelette - ici, dans un des couloirs - qui semble à deux doigts de rechercher la Vraie Mort."' if soegoLogic.r21917_condition():
            # a296 # r21917
            $ soegoLogic.r21917_action()
            jump soego_s97

        '"J„ai besoin de repos."' if soegoLogic.r21920_condition():
            # a297 # r21920
            jump soego_s84

        '"Nous avons besoin de repos."' if soegoLogic.r21922_condition():
            # a298 # r21922
            jump soego_s84

        '"J„ai des questions…"':
            # a299 # r21924
            jump soego_s83

        '"Je ne faisais que passer. Au revoir."':
            # a300 # r21925
            jump soego_dispose


# s83 # say21943
label soego_s83: # from 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
    nr '"Je répondrai si je le peux."'

    menu:
        '"Parle-moi d„Hargrimm."' if soegoLogic.r21944_condition():
            # a301 # r21944
            jump soego_s88

        '"Parle-moi d„Acaste."' if soegoLogic.r21945_condition():
            # a302 # r21945
            jump soego_s89

        '"Parle-moi de Salie Marie."' if soegoLogic.r21946_condition():
            # a303 # r21946
            jump soego_s90

        '"Parle-moi du Roi Silencieux."' if soegoLogic.r21947_condition():
            # a304 # r21947
            jump soego_s91

        '"Que sais-tu de cette „civilisation“ ?"' if soegoLogic.r21948_condition():
            # a305 # r21948
            jump soego_s92

        '"Que sais-tu de cette „civilisation“ ?"' if soegoLogic.r21949_condition():
            # a306 # r21949
            jump soego_s93

        '"Peu importe. Au revoir."':
            # a307 # r21951
            jump soego_dispose


# s84 # say21954
label soego_s84: # from 71.0 71.1 82.5 82.6
    nr '"Bien sûr. Tu seras en sécurité dans cette chambre pendant que tu te reposes."'

    menu:
        '"Merci…"':
            # a308 # r21956
            $ soegoLogic.r21956_action()
            jump soego_dispose


# s85 # say21958
label soego_s85: # -
    nr '"Bien sûr. Laisse-moi guérir quelques-unes de tes blessures."'

    jump soego_dispose


# s86 # say21963
label soego_s86: # -
    nr '"Bien sûr. Laissez-moi guérir vos blessures… celles de qui ?"'

    jump soego_dispose


# s87 # say21969
label soego_s87: # -
    nr '"Et voilà. Personne d„autre ?"'

    jump soego_dispose


# s88 # say21975
label soego_s88: # from 83.0 91.0
    nr '"Un vieux têtu, mais à la piété et la dévotion admirables. C„est mon plus grand rival en ce lieu, et il veille sur cette civilisation depuis de nombreuses années. Ses passions naissent de sa piété et sa dévotion à la tâche… ce sont des qualités admirables, mais déplacées."'

    menu:
        '"J„ai d“autres questions…"':
            # a309 # r21976
            jump soego_s83

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a310 # r21977
            jump soego_dispose


# s89 # say21978
label soego_s89: # from 83.1
    nr '"Acaste est une brute. Je crains que seul le Roi Silencieux ne la retienne. S„il venait à partir, les goules d“Acaste envahiraient bientôt les catacombes."'

    menu:
        '"Parle-moi du Roi Silencieux."':
            # a311 # r21979
            $ soegoLogic.r21979_action()
            jump soego_s91

        '"J„ai d“autres questions…"':
            # a312 # r21980
            jump soego_s83

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a313 # r21981
            jump soego_dispose


# s90 # say21982
label soego_s90: # from 83.2
    nr '"Salie Marie a bon cœur, mais elle est un peu lente. Je ne comprends pas grand-chose à ce qu„elle dit, mais les zombis et elle ne sont pas enclins à la violence."'

    menu:
        '"J„ai d“autres questions…"':
            # a314 # r21983
            jump soego_s83

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a315 # r21984
            jump soego_dispose


# s91 # say21985
label soego_s91: # from 83.3 89.0
    nr '"Je n„ai jamais vu le Roi Silencieux. J“aimerais pouvoir te parler de lui, mais je ne l„ai jamais vu. On dit que sa salle du trône se trouve au-delà des portes enflammées, mais je n“ai pas le droit d„y entrer… Hargrimm, le haut-prêtre, ne m“y autorise pas."'

    menu:
        '"Parle-moi de Hargrimm."':
            # a316 # r21986
            $ soegoLogic.r21986_action()
            jump soego_s88

        '"J„ai d“autres questions…"':
            # a317 # r21987
            jump soego_s83

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a318 # r21988
            jump soego_dispose


# s92 # say21989
label soego_s92: # from 83.4
    nr '"Ils sont ici depuis de nombreux siècles, je pense, et s„occupent de ceux qui sont morts dans leurs salles. Une telle dévotion à la tâche n“est plus nécessaire… c„est presque un crime."'

    menu:
        '"J„ai d“autres questions…"':
            # a319 # r21990
            jump soego_s83

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a320 # r21991
            jump soego_dispose


# s93 # say21992
label soego_s93: # from 83.5
    nr '"Ils sont ici depuis de nombreux siècles, je pense, et s„occupent de ceux qui sont morts dans leurs salles. Une telle dévotion à la tâche n“est plus nécessaire… c„est presque un crime."'

    jump morte_s220  # EXTERN


# s94 # say21993
label soego_s94: # from 82.0 82.1
    nr '"Quoi ? Est-ce vrai ? Ah, Tant-en-Un te paierait sûrement pour ces informations…"'

    menu:
        '"Tant-en-Un ?"' if soegoLogic.r25248_condition():
            # a321 # r25248
            $ soegoLogic.j25254_s94_r25248_action()
            jump soego_s111

        '"Intéressant. J„ai d“autres questions…"' if soegoLogic.r25252_condition():
            # a322 # r25252
            $ soegoLogic.j25254_s94_r25252_action()
            jump soego_s83

        '"Peut-être. Au revoir."' if soegoLogic.r25253_condition():
            # a323 # r25253
            $ soegoLogic.j25254_s94_r25253_action()
            jump soego_dispose

        '"Bien. J„ai des questions…"' if soegoLogic.r21994_condition():
            # a324 # r21994
            $ soegoLogic.j21996_s94_r21994_action()
            jump soego_s83

        '"Je lui dirai moi-même quand je sortirai d„ici. Au revoir."' if soegoLogic.r21995_condition():
            # a325 # r21995
            $ soegoLogic.j21996_s94_r21995_action()
            jump soego_dispose


# s95 # say21997
label soego_s95: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    nr '"Quel… Traître !"'

    menu:
        '"Qu„-"':
            # a326 # r21998
            $ soegoLogic.r21998_action()
            jump soego_dispose


# s96 # say22003
label soego_s96: # -
    nr '"Hé… cette porte mène à mes salles privées. N„entre pas dans les salles."'

    menu:
        'Pars.':
            # a327 # r22004
            jump soego_dispose


# s97 # say22005
label soego_s97: # from 82.4
    nr '"Oh ! Je vais lui parler sur-le-champ !"'

    menu:
        '"Au revoir."':
            # a328 # r22006
            jump soego_dispose


# s98 # say22007
label soego_s98: # -
    nr '"Non, j„y vais."'

    menu:
        '"Au revoir."':
            # a329 # r22008
            jump soego_dispose


# s99 # say22009
label soego_s99: # -
    nr '"Malheureusement, non. Mais, ça pourrait changer."'

    menu:
        '"Je vois. Au revoir."':
            # a330 # r22010
            jump soego_dispose


# s100 # say22011
label soego_s100: # from 82.3
    nr 'Soego marque une courte pause. "Je vois." Il commence soudain à se transformer de manière saisissante…'

    menu:
        '"Qu„est-ce qu“… ?"':
            # a331 # r22012
            $ soegoLogic.r22012_action()
            jump soego_dispose


# s101 # say22014
label soego_s101: # from 73.0
    nr '"Euh… ta mémoire te fait du tort, très cher. Mon cou a été blessé, c„est sûr… tordu. Mais brisé ? Non."'

    menu:
        '"Permets-moi d„être d“un autre avis. Qui es-tu Soego ?"' if soegoLogic.r22015_condition():
            # a332 # r22015
            jump soego_s106

        '"Permets-moi d„être d“un autre avis. Qui es-tu Soego ?"' if soegoLogic.r22016_condition():
            # a333 # r22016
            jump soego_s103

        '"Tu n„es pas en colère ?"':
            # a334 # r22018
            jump soego_s74

        '"Tu as dit que tu étais un missionnaire ?"':
            # a335 # r22019
            jump soego_s65

        '"Que font les Hommes-Poussière ici ?"' if soegoLogic.r22020_condition():
            # a336 # r22020
            jump soego_s66

        '"C„est tout ce que je voulais savoir. Au revoir."':
            # a337 # r22022
            jump soego_s71


# s102 # say22023
label soego_s102: # -
    nr 'Il échappe à ton étreinte avec une vitesse exceptionnelle. Crachant et ricanant, il s„écrie "C“est idiot, d„attaquer un agent de l“esprit de groupe des rats-crâne !" Il entame soudain une stupéfiante métamorphose…'

    menu:
        '"Qu„est-ce qu“… ?"':
            # a338 # r22024
            $ soegoLogic.r22024_action()
            jump soego_dispose


# s103 # say22026
label soego_s103: # from 101.1
    nr '"Quelle question ridicule ! Tu t„es réveillé sur table de préparation à la morgue… tu me l“as toi-même dit. Mes blessures étaient certainement moindres que les tiennes, pour que les Récupérateurs te prennent pour un cadavre, non ?"'

    menu:
        '"C„est vrai, mais… peu importe."':
            # a339 # r22027
            jump soego_s104

        '"Ma condition est… unique."':
            # a340 # r22028
            jump soego_s105

        '"Non. Il y a quelque chose qui cloche ici et j„aurai vite fait de trouver ce que c“est."':
            # a341 # r22029
            jump soego_s104


# s104 # say22032
label soego_s104: # from 103.0 103.2 105.0 105.1 106.1 107.0
    nr 'Il hausse les épaules. "Très bien."'

    menu:
        '"Tu n„es pas en colère à cause de ce qui s“est passé ?"':
            # a342 # r22033
            jump soego_s74

        '"Tu as dit que tu étais un missionnaire ?"':
            # a343 # r22034
            jump soego_s65

        '"Alors que font les Hommes-Poussière ici ?"' if soegoLogic.r22035_condition():
            # a344 # r22035
            jump soego_s66

        '"Bon, je m„en vais. Au revoir."':
            # a345 # r22038
            jump soego_s71


# s105 # say22039
label soego_s105: # from 103.1
    nr 'Il sourit. "Nous sommes tous uniques, très cher. Tous. Tu ne le nierais pas, tout de même ?"'

    menu:
        '"C„est vrai, mais… peu importe."':
            # a346 # r22040
            jump soego_s104

        '"Non. Il y a quelque chose qui cloche ici et j„aurai vite fait de trouver ce que c“est."':
            # a347 # r22041
            jump soego_s104


# s106 # say22043
label soego_s106: # from 101.0
    nr '"Qu„est-ce que -? Quel est ce genre de question ?"'

    menu:
        '"Tu m„as entendu. Tu n“es pas un Homme-poussière ordinaire … qu„est-ce que tu *es*, Soego ?"':
            # a348 # r22044
            jump soego_s107

        '"Laisse tomber. Peu importe."':
            # a349 # r22045
            jump soego_s104


# s107 # say22047
label soego_s107: # from 106.0
    nr 'Soego te regarde d„un air menaçant. "Je ne sais pas de *quoi* tu parles, très cher."'

    menu:
        '"Il y a quelque chose qui cloche ici et j„aurai vite fait de trouver ce que c“est."':
            # a350 # r22048
            jump soego_s104


# s108 # say22050
label soego_s108: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    nr '"Ah, un autre vivant. La plupart sont éliminés par les goules avant d„atteindre cette partie des catacombes ; tu as de la chance, très cher."'

    menu:
        '"C„est toi Soego ? Emoric voulait savoir où tu étais."' if soegoLogic.r22051_condition():
            # a351 # r22051
            $ soegoLogic.r22051_action()
            jump soego_s109

        '"Soego… Emoric voulait savoir où tu te trouvais."' if soegoLogic.r66173_condition():
            # a352 # r66173
            $ soegoLogic.r66173_action()
            jump soego_s109


# s109 # say22053
label soego_s109: # from 82.2 108.0 108.1
    nr '"Oui, c„est moi. Je fais œuvre de missionnaire pour les Hommes-Poussière, ici."'

    menu:
        '"Très bien. Mais… Je croyais t„avoir brisé la nuque…"' if soegoLogic.r64617_condition():
            # a353 # r64617
            jump soego_s73

        '"Bien. Mais… je croyais t„avoir *tué*…"' if soegoLogic.r64618_condition():
            # a354 # r64618
            jump soego_s73

        '"Il y a d„autres Hommes-Poussière ici ?"':
            # a355 # r22054
            jump soego_s66

        '"Où suis-je ?"':
            # a356 # r50792
            jump soego_s77

        '"Pourquoi suis-je prisonnier ici ?"':
            # a357 # r50793
            jump soego_s78

        '"Bon, je m„en vais. Au revoir."':
            # a358 # r22056
            jump soego_s71


# s110 # say22057
label soego_s110: # from 79.0 79.1
    nr '"Oui, et je suis ici."'

    menu:
        '"Attends une minute… ne t„ai-je pas brisé la nuque à la Morgue ?"' if soegoLogic.r64625_condition():
            # a359 # r64625
            jump soego_s112

        '"Attends une minute… je croyais t„avoir tué à la Morgue…"' if soegoLogic.r64626_condition():
            # a360 # r64626
            jump soego_s112

        '"Bien. Et maintenant comment est-ce que je peux trouver le Roi Silencieux ?"' if soegoLogic.r22058_condition():
            # a361 # r22058
            $ soegoLogic.j21857_s110_r22058_action()
            jump soego_s80

        '"Bien. Au revoir."' if soegoLogic.r22060_condition():
            # a362 # r22060
            jump soego_s71


# s111 # say25249
label soego_s111: # from 94.0
    nr '"Oui, l„esprit commun des rats-crâne. Va dans les catacombes situées à l“est de la Pierre Pleureuse. Tu y trouveras ta voie.'

    menu:
        '"Intéressant. J„ai d“autres questions…"':
            # a363 # r25250
            jump soego_s83

        '"Peut-être. Au revoir."':
            # a364 # r25251
            jump soego_dispose


# s112 # say64620
label soego_s112: # from 79.2 79.3 110.0 110.1
    nr 'Il t„interrompt d“un geste de la main. "Rien, ce n„était rien pour moi. J“avais déjà reçu le don de lycanthropie; je me suis très rapidement remis de mes blessures."'

    menu:
        '"Je… vois. Alors comment puis-je arriver jusqu„au Roi Silencieux ?"':
            # a365 # r64621
            jump soego_s80

        '"Très bien… Au revoir, alors."':
            # a366 # r64622
            jump soego_s71


# s113 # say66709
label soego_s113: # from 38.1
    nr '"Bonjour…" L„homme se tourne vers toi et s“incline, ce qui te permet de remarquer que ses yeux ne sont pas injectés de sang, finalement ; le rouge semble être leur couleur naturelle. "Je me nomme Soego. En quoi puis-je t„aider ?"'

    menu:
        '"Je voudrais sortir de la Morgue. Peux-tu m„aider ?"':
            # a367 # r66712
            jump soego_s114

        '"J„ai des questions…"':
            # a368 # r66713
            jump soego_s114

        '"Je ne fais que passer. Au revoir."':
            # a369 # r66714
            jump soego_dispose


# s114 # say66710
label soego_s114: # from 113.0 113.1
    nr 'Au beau milieu de ta phrase, Soego te dédie un large rictus qui révèle ses dents sales et pointues. Il se penche vers toi et commence à te sentir.'

    menu:
        '"Euh… pourquoi est-ce que tu me renifles comme ça ?"':
            # a370 # r66715
            jump soego_s115

        'Brise-lui la nuque quand il se penche vers toi.' if soegoLogic.r66716_condition():
            # a371 # r66716
            jump soego_s22

        'Brise-lui la nuque quand il se penche vers toi.' if soegoLogic.r66717_condition():
            # a372 # r66717
            jump soego_s19

        '"Peu importe… Au revoir."':
            # a373 # r66718
            jump soego_s17


# s115 # say66711
label soego_s115: # from 114.0
    nr '"Tes habits… cette robe… elle sent l„odeur de quelqu“un d„autre. Elle ne t“appartient pas." Soego te dédie un étrange sourire et une lueur sauvage brille dans son regard. "Qui es-tu vraiment ?"'

    menu:
        '"Je… euh, j„ai pris cette robe pour ne pas me faire remarquer. Je me suis réveillé dans une des salles de préparation, en haut."':
            # a374 # r66719
            jump soego_s42

        '"Tu as raison, cette robe n„est pas à moi. Mais quant à savoir à qui elle appartient, cela ne te regarde pas."':
            # a375 # r66720
            jump soego_s6

        'Brise-lui la nuque avant qu„il ne puisse appeler à l“aide.' if soegoLogic.r66721_condition():
            # a376 # r66721
            jump soego_s22

        'Brise-lui la nuque avant qu„il ne puisse appeler à l“aide.' if soegoLogic.r66722_condition():
            # a377 # r66722
            jump soego_s19

        '"C„est sans importance. Je m“en vais."':
            # a378 # r66723
            jump soego_s17
