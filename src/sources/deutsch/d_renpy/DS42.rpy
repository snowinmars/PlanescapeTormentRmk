init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s42_logic import S42Logic
    s42Logic = S42Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS42.DLG
# ###


# s0 # say6595
label s42_s0: # - # IF ~  True()
    nr 'Das Skelett dreht sich um und steht dir gegenüber. Die Nummer "42" ist in seine Stirn gemeißelt, und einige seiner Knochen, besonders der Kiefer und die Gelenke, sind mit Lederriemen zusammengebunden. Sein Körper ist in einen schwarzen Kittel gehüllt.{#s42_s0_}'

    menu:
        '"Ich *glaube*, daß das die Leiche aus dieser Erinnerung ist, die ich hatte…"{#s42_s0_r6612}' if s42Logic.r6612_condition():
            # a0 # r6612
            jump s42_s1

        '"Entschuldige, hast du hier vielleicht ein paar Skelette rumlaufen sehen?"{#s42_s0_r6613}':
            # a1 # r6613
            $ s42Logic.r6613_action()
            jump s42_s1

        '"Eine Frage: Wozu der Kittel? Ich meine, du hast schließlich nichts, was du verhüllen müßtest."{#s42_s0_r6614}' if s42Logic.r6614_condition():
            # a2 # r6614
            $ s42Logic.r6614_action()
            jump s42_s1

        '"Eine Frage: Wozu der Kittel? Ich meine, du hast schließlich nichts, was du verhüllen müßtest."{#s42_s0_r6615}' if s42Logic.r6615_condition():
            # a3 # r6615
            jump s42_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#s42_s0_r6616}' if s42Logic.r6616_condition():
            # a4 # r6616
            jump s42_s2

        'Untersuche das Skelett gründlich.{#s42_s0_r6617}':
            # a5 # r6617
            $ s42Logic.r6617_action()
            jump s42_s3

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s42_s0_r6618}' if s42Logic.r6618_condition():
            # a6 # r6618
            $ s42Logic.r6618_action()
            jump morte_s110  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s42_s0_r6619}' if s42Logic.r6619_condition():
            # a7 # r6619
            jump s42_s6

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s42_s0_r6620}' if s42Logic.r6620_condition():
            # a8 # r6620
            jump s42_s6

        '"Was ist mit diesem Skelett, Morte? Ist es als Körper zu gebrauchen?"{#s42_s0_r6621}' if s42Logic.r6621_condition():
            # a9 # r6621
            jump s42_s1

        'Laß das Skelett in Ruhe.{#s42_s0_r6622}' if s42Logic.r6622_condition():
            # a10 # r6622
            jump morte_s111  # EXTERN

        'Laß das Skelett in Ruhe.{#s42_s0_r6623}' if s42Logic.r6623_condition():
            # a11 # r6623
            jump s42_dispose

        'Laß das Skelett in Ruhe.{#s42_s0_r6624}' if s42Logic.r6624_condition():
            # a12 # r6624
            jump s42_dispose


# s1 # say6596
label s42_s1: # from 0.0 0.1 0.2 0.3 0.9 3.0 3.3
    nr 'Durch deine Stimme aufgeschreckt, richtet sich das Skelett plötzlich auf. Es verschränkt seine Arme, und seine Finger haken sich in den Rippen ein.{#s42_s1_}'

    menu:
        'Verschränk die Arme vor der Brust.{#s42_s1_r6625}' if s42Logic.r6625_condition():
            # a13 # r6625
            jump s42_s4

        'Imitier die Geste… warte ab, was passiert.{#s42_s1_r6626}' if s42Logic.r6626_condition():
            # a14 # r6626
            jump s42_s9

        '"Äh…"{#s42_s1_r6627}':
            # a15 # r6627
            jump s42_s10

        'Laß das Skelett in Ruhe.{#s42_s1_r6628}':
            # a16 # r6628
            jump s42_dispose


# s2 # say6597
label s42_s2: # from 0.4
    nr 'Dieses Skelett antwortet nicht. Es sieht so aus, als ob es schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#s42_s2_}'

    menu:
        'Laß das Skelett in Ruhe.{#s42_s2_r6629}' if s42Logic.r6629_condition():
            # a17 # r6629
            $ s42Logic.r6629_action()
            jump morte_s111  # EXTERN

        'Laß das Skelett in Ruhe.{#s42_s2_r6630}' if s42Logic.r6630_condition():
            # a18 # r6630
            jump s42_dispose

        'Laß das Skelett in Ruhe.{#s42_s2_r6631}' if s42Logic.r6631_condition():
            # a19 # r6631
            jump s42_dispose


# s3 # say6598
label s42_s3: # from 0.5 10.2
    nr 'Du bist erstaunt, daß dieser Knochenhaufen noch in einem Stück ist. Seine vergilbten Knochen sind mit Gips und mehreren Lagen übelriechendem Leim verunstaltet… das, was du von den Knochen sehen kannst, ist von unzähligen feinen Rissen durchzogen. Obwohl sich irgend jemand die Mühe gemacht hat, dieses Skelett mit Lederriemen und Schrauben zusammenzuhalten, sind die Riemen jetzt ausgefranst und die Schrauben sehen so aus, als würden sie jeden Moment herausfallen.{#s42_s3_}'

    menu:
        '"Ich *glaube*, daß das die Leiche aus dieser Erinnerung ist, die ich hatte…"{#s42_s3_r63495}' if s42Logic.r63495_condition():
            # a20 # r63495
            jump s42_s1

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s42_s3_r6632}' if s42Logic.r6632_condition():
            # a21 # r6632
            $ s42Logic.r6632_action()
            jump morte_s110  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s42_s3_r6633}' if s42Logic.r6633_condition():
            # a22 # r6633
            jump s42_s6

        '"Hast du was dagegen, wenn ich mir ein paar von diesen Riemen und Bolzen borge?"{#s42_s3_r6634}' if s42Logic.r6634_condition():
            # a23 # r6634
            jump s42_s1

        'Laß das Skelett in Ruhe.{#s42_s3_r6635}' if s42Logic.r6635_condition():
            # a24 # r6635
            $ s42Logic.r6635_action()
            jump morte_s111  # EXTERN

        'Laß das Skelett in Ruhe.{#s42_s3_r6636}' if s42Logic.r6636_condition():
            # a25 # r6636
            jump s42_dispose

        'Laß das Skelett in Ruhe.{#s42_s3_r6637}' if s42Logic.r6637_condition():
            # a26 # r6637
            jump s42_dispose


# s4 # say6599
label s42_s4: # from 1.0 12.0
    nr 'Daraufhin läßt das Skelett die Arme nach unten fallen. Die Lederschnüre, die den Torso zusammenhalten, reißen, und der Brustkorb öffnet sich wie eine Doppeltür.{#s42_s4_}'

    menu:
        'Greif in den Brustkorb und taste ein bißchen herum.{#s42_s4_r6638}':
            # a27 # r6638
            jump s42_s5

        'Laß das Skelett in Ruhe.{#s42_s4_r6639}':
            # a28 # r6639
            jump s42_dispose


# s5 # say6600
label s42_s5: # from 4.0 9.0
    nr 'Zu deiner Überraschung verschwindet deine Hand, als du in den Brustkorb faßt… Du hast das seltsame Gefühl, daß sie *woanders* ist. Als du in den Brustkorb faßt, stößt deine Hand an einen unsichtbaren Gegenstand. Er hat etwa die Größe einer Faust und scheint an der Wirbelsäule des Skeletts befestigt zu sein.{#s42_s5_}'

    menu:
        'Nimm den Gegenstand heraus.{#s42_s5_r6640}':
            # a29 # r6640
            $ s42Logic.r6640_action()
            jump s42_s7

        'Laß das Skelett in Ruhe.{#s42_s5_r6641}':
            # a30 # r6641
            jump s42_dispose


# s6 # say6601
label s42_s6: # from 0.7 0.8 3.2
    nr 'Die Schrauben rutschen leicht aus den Gelenken. Das Skelett bricht zusammen, einige seiner Knocken zucken noch immer.{#s42_s6_}'

    menu:
        '"Tut mir echt leid, Gerippe…"{#s42_s6_r6642}':
            # a31 # r6642
            $ s42Logic.r6642_action()
            jump s42_dispose


# s7 # say6602
label s42_s7: # from 5.0
    nr 'Als du den Gegenstand herausziehst, fällt das Skelett plötzlich zusammen, und die Schrauben, mit denen die Gelenke gesichert wurden, fallen auf den Boden. Was immer dieser Gegenstand auch war - er scheint die einzige Sache gewesen zu sein, die das Skelett zusammengehalten hat.{#s42_s7_}'

    menu:
        'Sieh dir den Gegenstand genau an.{#s42_s7_r6643}' if s42Logic.r6643_condition():
            # a32 # r6643
            jump s42_s8

        'Sieh dir den Gegenstand genau an.{#s42_s7_r6644}' if s42Logic.r6644_condition():
            # a33 # r6644
            jump s42_s8


# s8 # say6603
label s42_s8: # from 7.0 7.1
    nr 'Es sieht wie ein unscheinbarer Eisenbrocken aus. Du kannst dir nicht vorstellen, warum irgend jemand ihn im Brustkorb eines Skeletts verstecken sollte.{#s42_s8_}'

    menu:
        'Untersuche das Stück Eisen.{#s42_s8_r6645}':
            # a34 # r6645
            $ s42Logic.r6645_action()
            jump s42_s14


# s9 # say6604
label s42_s9: # from 1.1 12.1
    nr 'Daraufhin läßt das Skelett die Arme nach unten fallen. Die Lederschnüre, die den Torso zusammenhalten, reißen, und der Brustkorb öffnet sich wie eine Doppeltür. Du kannst dir nicht erklären warum, aber du verspürst plötzlich den Drang, in den Brustkorb hineinzugreifen.{#s42_s9_}'

    menu:
        'Greif in den Brustkorb und taste ein bißchen herum.{#s42_s9_r6646}':
            # a35 # r6646
            jump s42_s5

        'Laß das Skelett in Ruhe.{#s42_s9_r6647}':
            # a36 # r6647
            jump s42_dispose


# s10 # say6605
label s42_s10: # from 1.2 12.2
    nr 'Das Skelett läßt die Arme fallen.{#s42_s10_}'

    menu:
        '"Ähh… hallo?"{#s42_s10_r6648}' if s42Logic.r6648_condition():
            # a37 # r6648
            jump s42_s12

        '"Ähh… hallo?"{#s42_s10_r6649}' if s42Logic.r6649_condition():
            # a38 # r6649
            jump s42_s13

        'Untersuche das Skelett gründlich.{#s42_s10_r6650}':
            # a39 # r6650
            $ s42Logic.r6650_action()
            jump s42_s3

        'Laß das Skelett in Ruhe.{#s42_s10_r6651}':
            # a40 # r6651
            jump s42_dispose


# s11 # say6606
label s42_s11: # -
    nr 'Er sieht wie ein unscheinbarer Eisenbrocken aus. Deine vorherige Inkarnation muß einen Grund gehabt haben, ihn hier zu verstecken.{#s42_s11_}'

    menu:
        'Sieh dir das das Stück Eisen sorgfältig an.{#s42_s11_r6652}':
            # a41 # r6652
            $ s42Logic.r6652_action()
            jump s42_s14


# s12 # say6607
label s42_s12: # from 10.0
    nr 'Das Skelett verschränkt wieder seine Arme vor der Brust.{#s42_s12_}'

    menu:
        'Verschränk die Arme vor der Brust.{#s42_s12_r6653}' if s42Logic.r6653_condition():
            # a42 # r6653
            jump s42_s4

        'Imitier die Geste… warte ab, was passiert.{#s42_s12_r6654}' if s42Logic.r6654_condition():
            # a43 # r6654
            jump s42_s9

        '"Äh…"{#s42_s12_r6655}':
            # a44 # r6655
            jump s42_s10

        'Laß das Skelett in Ruhe.{#s42_s12_r6656}':
            # a45 # r6656
            jump s42_dispose


# s13 # say6608
label s42_s13: # from 10.1
    nr 'Das Skelett verschränkt wieder seine Arme vor der Brust.{#s42_s13_}'

    jump morte_s112  # EXTERN


# s14 # say58983
label s42_s14: # from 8.0 11.0
    nr 'Als du den Eisenklumpen mit beiden Händen berührst, um ihn zu untersuchen, hörst du ein *Hssssss*, und das Metall verdunstet. Zurück bleiben ein merkwürdiger Dolch, eine Handvoll Münzen in einem schmutzigen Tuch und zwei blutige Tränen. Es sieht aus, als käme das alles aus dem *Innern* des Eisenklumpens.{#s42_s14_}'

    menu:
        'Nimm die Sachen an dich und geh.{#s42_s14_r58984}':
            # a46 # r58984
            $ s42Logic.r58984_action()
            jump s42_dispose
