init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.giantsk_logic import GiantskLogic
    giantskLogic = GiantskLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DGIANTSK.DLG
# ###


# s0 # say292
label giantsk_s0: # - # IF ~  True()
    nr 'Vor dir steht ein riesiges Skelett in einer reich verzierten Bronzerüstung. Die Rüstung ist mit Schrauben am Körper befestigt, und auf dem Brustharnisch sind kunstvolle Symbole eingeritzt. Du fragst dich, woher das Skelett stammt: Du wußtest gar nicht, daß es so große Menschen gibt. Die riesige Klinge in seinen Händen sieht aus, als wöge sie soviel wie ein ganzes Fuhrwerk.{#giantsk_s0_1}'

    menu:
        '"Was dagegen, wenn ich dir die Klinge mal einen Moment abnehme? Du mußt doch wirklich müde sein, dieses Gewicht dauernd zu halten."{#giantsk_s0_r293}':
            # a0 # r293
            $ giantskLogic.r293_action()
            jump giantsk_s1

        '"Nun, wie lange stehst du denn hier schon? Schon lange?"{#giantsk_s0_r1165}':
            # a1 # r1165
            $ giantskLogic.r1165_action()
            jump giantsk_s1

        'Untersuche das riesige Skelett… aber vorsichtig.{#giantsk_s0_r3996}':
            # a2 # r3996
            jump giantsk_s4

        'Versuch, ob du die Zauber, die in den Brustharnisch des Skeletts eingeritzt sind, auflösen kannst.{#giantsk_s0_r3997}' if giantskLogic.r3997_condition():
            # a3 # r3997
            jump giantsk_s9

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s0_r3998}' if giantskLogic.r3998_condition():
            # a4 # r3998
            jump giantsk_s2

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s0_r3999}' if giantskLogic.r3999_condition():
            # a5 # r3999
            jump giantsk_s3

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s0_r4000}' if giantskLogic.r4000_condition():
            # a6 # r4000
            jump giantsk_s2

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s0_r4001}' if giantskLogic.r4001_condition():
            # a7 # r4001
            jump giantsk_s3

        '"Hey, wie wär„s mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"{#giantsk_s0_r4002}' if giantskLogic.r4002_condition():
            # a8 # r4002
            jump morte_s73  # EXTERN

        'Wende deine Erzählende-Knochen-Fähigkeit auf das Skelett an.{#giantsk_s0_r4003}' if giantskLogic.r4003_condition():
            # a9 # r4003
            jump giantsk_s1

        'Laß das Skelett in Ruhe.{#giantsk_s0_r4004}':
            # a10 # r4004
            jump giantsk_dispose


# s1 # say1166
label giantsk_s1: # from 0.0 0.1 0.9 # IF ~  False()
    nr 'Das Skelett sieht als, als wäre es schon zu lange tot, um irgendeine deiner Fragen beantworten zu können. Oder es kann dich nicht hören, weil es seinen Kopf zu hoch oben trägt.{#giantsk_s1_1}'

    menu:
        'Untersuche das riesige Skelett… aber vorsichtig.{#giantsk_s1_r1167}':
            # a11 # r1167
            jump giantsk_s4

        'Versuch, ob du die Zauber, die in den Brustharnisch des Skeletts eingeritzt sind, auflösen kannst.{#giantsk_s1_r4035}' if giantskLogic.r4035_condition():
            # a12 # r4035
            jump giantsk_s9

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s1_r4036}' if giantskLogic.r4036_condition():
            # a13 # r4036
            jump giantsk_s2

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s1_r4037}' if giantskLogic.r4037_condition():
            # a14 # r4037
            jump giantsk_s3

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s1_r4038}' if giantskLogic.r4038_condition():
            # a15 # r4038
            jump giantsk_s2

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s1_r4039}' if giantskLogic.r4039_condition():
            # a16 # r4039
            jump giantsk_s3

        '"Hey, wie wär„s mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"{#giantsk_s1_r4040}' if giantskLogic.r4040_condition():
            # a17 # r4040
            jump morte_s73  # EXTERN

        'Laß das Skelett in Ruhe.{#giantsk_s1_r4041}':
            # a18 # r4041
            jump giantsk_dispose


# s2 # say4005
label giantsk_s2: # from 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
    nr 'Als du das Skelett berührst ertönt der Klang einer Eisenglocke durch die ganze Leichenhalle… blitzartig erwacht das Skelett und erhebt seine Klinge zum Angriff!{#giantsk_s2_1}'

    menu:
        '"Du wirst dich noch danach zurücksehnen, tot zu sein, Knochengestell…"{#giantsk_s2_r4042}':
            # a19 # r4042
            $ giantskLogic.r4042_action()
            jump giantsk_dispose


# s3 # say4006
label giantsk_s3: # from 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
    nr 'Als du schon drauf und dran bist, hältst du plötzlich inne… und dein Blick fällt auf die Rüstung des Skeletts. Die auf dem Brustharnisch eingravierten Symbole bremsen dich irgendwie. Wenn diese Skelette Wächter sind, dann stört man sie vielleicht besser nicht… sonst wachen sie auf.{#giantsk_s3_1}'

    menu:
        '"Das Risiko nehme ich gerne auf mich…"{#giantsk_s3_r4043}':
            # a20 # r4043
            jump giantsk_s2

        'Untersuche das riesige Skelett… aber vorsichtig.{#giantsk_s3_r4044}':
            # a21 # r4044
            jump giantsk_s4

        'Laß das Skelett in Ruhe.{#giantsk_s3_r4046}':
            # a22 # r4046
            jump giantsk_dispose


# s4 # say4007
label giantsk_s4: # from 0.2 1.0 3.1 7.1 15.1 16.3
    nr 'Die komplexe Bronzerüstung ist mit Eisenbolzen am Brustkorb und an den Schulterblättern des Skeletts befestigt. Bei genauerer Betrachtung des Knochengerüsts unter der Rüstung bemerkst du, daß dieselben Eisenbolzen auch in den Schultern, Ellbogen und Kniegelenken sowie im Becken des Skeletts stecken. Dicke Lederriemen und Seile sind so um die Arme und Beine des Skeletts gewickelt, daß sie den Eindruck von Muskeln und Sehnen erwecken.{#giantsk_s4_1}'

    menu:
        'Untersuche die Rüstung.{#giantsk_s4_r4045}':
            # a23 # r4045
            jump giantsk_s5

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s4_r4048}' if giantskLogic.r4048_condition():
            # a24 # r4048
            jump giantsk_s2

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s4_r4049}' if giantskLogic.r4049_condition():
            # a25 # r4049
            jump giantsk_s3

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s4_r4050}' if giantskLogic.r4050_condition():
            # a26 # r4050
            jump giantsk_s2

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s4_r4051}' if giantskLogic.r4051_condition():
            # a27 # r4051
            jump giantsk_s3

        '"Hey, wie wär„s mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"{#giantsk_s4_r4052}' if giantskLogic.r4052_condition():
            # a28 # r4052
            jump morte_s73  # EXTERN

        'Laß das Skelett in Ruhe.{#giantsk_s4_r4053}':
            # a29 # r4053
            jump giantsk_dispose


# s5 # say4008
label giantsk_s5: # from 4.0
    nr 'Obwohl es sich offensichtlich um eine alte Rüstung handelt, wirkt sie gut gepflegt. Sie strahlt einen matten Glanz ab, und die Symbole auf dem Brustharnisch verändern sich im Licht des Feuers - und zwar immer dann, wenn du sie fixieren willst.{#giantsk_s5_1}'

    menu:
        'Sieh dir die Zeichen genau an.{#giantsk_s5_r4054}' if giantskLogic.r4054_condition():
            # a30 # r4054
            jump giantsk_s6

        'Sieh dir die Zeichen genau an.{#giantsk_s5_r4055}' if giantskLogic.r4055_condition():
            # a31 # r4055
            jump giantsk_s6

        'Betrachte die Symbole.{#giantsk_s5_r64293}' if giantskLogic.r64293_condition():
            # a32 # r64293
            jump giantsk_s7

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s5_r4056}' if giantskLogic.r4056_condition():
            # a33 # r4056
            jump giantsk_s2

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s5_r4057}' if giantskLogic.r4057_condition():
            # a34 # r4057
            jump giantsk_s3

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s5_r4058}' if giantskLogic.r4058_condition():
            # a35 # r4058
            jump giantsk_s2

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s5_r4059}' if giantskLogic.r4059_condition():
            # a36 # r4059
            jump giantsk_s3

        '"Hey, wie wär„s mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"{#giantsk_s5_r4060}' if giantskLogic.r4060_condition():
            # a37 # r4060
            jump morte_s73  # EXTERN

        'Laß das Skelett in Ruhe.{#giantsk_s5_r4061}':
            # a38 # r4061
            jump giantsk_dispose


# s6 # say4009
label giantsk_s6: # from 5.0 5.1
    nr 'Fast unbewußt entspannt sich dein Blick bei Betrachtung der Symbole. Jetzt verändern sich die Symbole nicht mehr. Du siehst nur noch eine Runenreihe, die quer über den gesamten Brustharnisch verläuft. Irgendwie erinnern dich die ineinandergreifenden Runen an Ketten… und bei diesem Gedanken fällt dir plötzlich ein, daß sie eine Art Abwehrzauber sind.{#giantsk_s6_1}'

    menu:
        'Sieh dir die Runen genau an und versuch, dich an die Zauber zu erinnern.{#giantsk_s6_r4062}' if giantskLogic.r4062_condition():
            # a39 # r4062
            jump giantsk_s8

        'Sieh dir die Runen genau an und versuch, dich an die Zauber zu erinnern.{#giantsk_s6_r4063}' if giantskLogic.r4063_condition():
            # a40 # r4063
            jump giantsk_s7

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s6_r4064}' if giantskLogic.r4064_condition():
            # a41 # r4064
            jump giantsk_s2

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s6_r4065}' if giantskLogic.r4065_condition():
            # a42 # r4065
            jump giantsk_s3

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s6_r4066}' if giantskLogic.r4066_condition():
            # a43 # r4066
            jump giantsk_s2

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s6_r4067}' if giantskLogic.r4067_condition():
            # a44 # r4067
            jump giantsk_s3

        '"Hey, wie wär„s mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"{#giantsk_s6_r4068}' if giantskLogic.r4068_condition():
            # a45 # r4068
            jump morte_s73  # EXTERN

        'Laß das Skelett in Ruhe.{#giantsk_s6_r4069}':
            # a46 # r4069
            jump giantsk_dispose


# s7 # say4010
label giantsk_s7: # from 5.2 6.1 7.2
    nr 'Du schaust dir die Runen eine Zeitlang genau an, schaffst es aber nicht, den Zauber zu entziffern. Er sieht ziemlich kompliziert aus und bereitet dir viel Kopfzerbrechen.{#giantsk_s7_1}'

    menu:
        'Vergleiche die Runen mit den Runen im Buch der Knochen und Asche.{#giantsk_s7_r64294}' if giantskLogic.r64294_condition():
            # a47 # r64294
            jump giantsk_s15

        'Sieh dir das Skelett noch einmal genau an.{#giantsk_s7_r4070}':
            # a48 # r4070
            jump giantsk_s4

        'Sieh dir die Runen noch einmal genau an.{#giantsk_s7_r4071}':
            # a49 # r4071
            jump giantsk_s7

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s7_r4072}' if giantskLogic.r4072_condition():
            # a50 # r4072
            jump giantsk_s2

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s7_r4073}' if giantskLogic.r4073_condition():
            # a51 # r4073
            jump giantsk_s3

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s7_r4074}' if giantskLogic.r4074_condition():
            # a52 # r4074
            jump giantsk_s2

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s7_r4075}' if giantskLogic.r4075_condition():
            # a53 # r4075
            jump giantsk_s3

        '"Hey, wie wär„s mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"{#giantsk_s7_r4076}' if giantskLogic.r4076_condition():
            # a54 # r4076
            jump morte_s73  # EXTERN

        'Laß das Skelett in Ruhe.{#giantsk_s7_r4077}':
            # a55 # r4077
            jump giantsk_dispose


# s8 # say4011
label giantsk_s8: # from 6.0
    nr 'Du schaust dir das quer über den Brustharnisch verlaufende Runenmuster genau an. Auf der untersten Ebene betrachtet handelt es sich wohl um einen schwächeren Rüstungszauber, doch die schädelförmigen Runen und kugelförmigen Embleme an den Rändern der Rüstung sprechen dafür, daß hier auch verschiedene stärkere Nekromantie- und Schutzzauber im Spiel sind. Bei Berührung wacht das Skelett wahrscheinlich auf… und verteidigt sich.{#giantsk_s8_1}'

    menu:
        'Versuch, ob du die Zauber irgendwie auflösen kannst.{#giantsk_s8_r4079}' if giantskLogic.r4079_condition():
            # a56 # r4079
            $ giantskLogic.r4079_action()
            jump giantsk_s9

        'Versuch, ob du die Zauber irgendwie auflösen kannst.{#giantsk_s8_r4080}' if giantskLogic.r4080_condition():
            # a57 # r4080
            jump giantsk_s9

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s8_r4081}' if giantskLogic.r4081_condition():
            # a58 # r4081
            jump giantsk_s2

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s8_r4082}' if giantskLogic.r4082_condition():
            # a59 # r4082
            jump giantsk_s3

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s8_r4083}' if giantskLogic.r4083_condition():
            # a60 # r4083
            jump giantsk_s2

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s8_r4084}' if giantskLogic.r4084_condition():
            # a61 # r4084
            jump giantsk_s3

        '"Hey, wie wär„s mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"{#giantsk_s8_r4085}' if giantskLogic.r4085_condition():
            # a62 # r4085
            jump morte_s73  # EXTERN

        'Laß das Skelett in Ruhe.{#giantsk_s8_r4078}':
            # a63 # r4078
            jump giantsk_dispose


# s9 # say4012
label giantsk_s9: # from 0.3 1.1 8.0 8.1
    nr 'Du vermutest, daß du die Runen auf dem Brustharnisch vernichten mußt, um den Zauber aufzudecken - doch dies ist wahrscheinlich einfacher gesagt als getan… das Muster ist sehr komplex, und bei Vernichtung des falschen Teils wird das Skelett womöglich zum Leben erweckt.{#giantsk_s9_1}'

    menu:
        'Vergleiche das Muster mit den Zaubersprüchen im Buch der Knochen und Asche, und versuche festzustellen, wie sie durchbrochen werden können.{#giantsk_s9_r64296}' if giantskLogic.r64296_condition():
            # a64 # r64296
            jump giantsk_s16

        'Setz zuerst die Runen für die Rüstungszauber außer Kraft, dann den nekromantischen und anschließend den Schutzzauber.{#giantsk_s9_r4086}':
            # a65 # r4086
            jump giantsk_s10

        'Setz zuerst die Runen für den Schutzzauber außer Kraft, und arbeite dich dann von hinten nach vorne durch das Runenmuster, heb den nekromantischen und anschließend den Rüstungszauber auf.{#giantsk_s9_r4087}' if giantskLogic.r4087_condition():
            # a66 # r4087
            $ giantskLogic.r4087_action()
            jump giantsk_s11

        'Setz zuerst die Runen für den Schutzzauber außer Kraft, und arbeite dich dann von hinten nach vorne durch das Runenmuster, heb den nekromantischen und anschließend den Rüstungszauber auf.{#giantsk_s9_r4088}' if giantskLogic.r4088_condition():
            # a67 # r4088
            $ giantskLogic.r4088_action()
            jump giantsk_s13

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s9_r4089}' if giantskLogic.r4089_condition():
            # a68 # r4089
            jump giantsk_s2

        'Versuch, dem Riesenskelett die Klinge aus den Händen zu winden.{#giantsk_s9_r4090}' if giantskLogic.r4090_condition():
            # a69 # r4090
            jump giantsk_s3

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s9_r4091}' if giantskLogic.r4091_condition():
            # a70 # r4091
            jump giantsk_s2

        'Versuch, die Bolzen herauszuhebeln, die die Rüstung am Skelett befestigen.{#giantsk_s9_r4092}' if giantskLogic.r4092_condition():
            # a71 # r4092
            jump giantsk_s3

        '"Hey, wie wär„s mit DIESEM Skelett, Morte? Ist dir das als Knochengerüst gut genug?"{#giantsk_s9_r4093}' if giantskLogic.r4093_condition():
            # a72 # r4093
            jump morte_s73  # EXTERN

        'Laß das Skelett in Ruhe.{#giantsk_s9_r4094}':
            # a73 # r4094
            jump giantsk_dispose


# s10 # say4013
label giantsk_s10: # from 9.1 16.0
    nr 'Als du anfängst, die Runen auf dem Brustharnisch zu bearbeiten, ertönt der Klang einer Eisenglocke durch die ganze Leichenhalle… blitzartig wacht das Skelett auf und erhebt seine Klinge zum Angriff!{#giantsk_s10_1}'

    menu:
        '"Du wirst dich noch danach zurücksehnen, tot zu sein, Knochengestell…"{#giantsk_s10_r4095}':
            # a74 # r4095
            $ giantskLogic.r4095_action()
            jump giantsk_dispose


# s11 # say4014
label giantsk_s11: # from 9.2 16.1
    nr 'Die Arbeit ist zunächst schwierig und nervenaufreibend, aber mit der Zeit schaffst du es, dich konzentrieren, so daß die Runen sich unter deinen Händen auflösen. Innerhalb weniger Minuten befreist du das Skelett von jeglichen Zaubern, die es zusammengehalten haben. Es bricht zusammen und fällt klappernd und mit einem heftigen Schlag zu Boden!{#giantsk_s11_1}'

    menu:
        '"Verfluchter Haufen Knochen…!"{#giantsk_s11_r4096}':
            # a75 # r4096
            $ giantskLogic.r4096_action()
            jump giantsk_s12


# s12 # say4015
label giantsk_s12: # from 11.0
    nr 'Du wartest kurz, doch niemand reagiert auf das Geräusch. Rasch durchwühlst du die am Boden liegenden Skeletteile. Die meisten sind zu schwer oder zu alt, als daß man noch irgend etwas damit anfangen könnte, doch dann entdeckst du ein Stück des Brustharnisches, auf dem noch mehr als die Hälfte einer Zauberformel zu sehen ist. Du hast das Gefühl, dies könnte noch sehr nützlich sein.{#giantsk_s12_1}'

    menu:
        '"Dann nehm„ ich“s einfach…"{#giantsk_s12_r4097}':
            # a76 # r4097
            $ giantskLogic.r4097_action()
            jump giantsk_dispose


# s13 # say4016
label giantsk_s13: # from 9.3 16.2
    nr 'Diesmal ist es einfacher, den Zauber zu bannen - die Runen lösen sich unter deinen Händen rasch auf. Innerhalb weniger Minuten hast du das Skelett frei von jeglichen Zaubern befreit, die es zusammengehalten haben. Weil du weißt, was als nächstes droht, fängst zu das Skelett auf, bevor es zu Boden fällt, und mit einem Ächzen legst du es sachte ab.{#giantsk_s13_1}'

    menu:
        '"Mal sehen, was wir hier haben…"{#giantsk_s13_r4098}':
            # a77 # r4098
            $ giantskLogic.r4098_action()
            jump giantsk_s14


# s14 # say4017
label giantsk_s14: # from 13.0
    nr 'Rasch durchwühlst du die Reste des Skeletts und nimmst wieder ein Stück des Brustharnisches ab. Auch darauf ist ein Teil eines gebannten Zaubers zu sehen, der dir sehr nützlich sein könnte.{#giantsk_s14_1}'

    menu:
        '"Dann nehm„ ich“s einfach…"{#giantsk_s14_r4099}' if giantskLogic.r4099_condition():
            # a78 # r4099
            $ giantskLogic.r4099_action()
            jump giantsk_dispose

        '"Dann nehm„ ich“s einfach…"{#giantsk_s14_r4100}' if giantskLogic.r4100_condition():
            # a79 # r4100
            $ giantskLogic.r4100_action()
            jump giantsk_dispose

        '"Dann nehm„ ich“s einfach…"{#giantsk_s14_r4101}' if giantskLogic.r4101_condition():
            # a80 # r4101
            $ giantskLogic.r4101_action()
            jump giantsk_dispose


# s15 # say64295
label giantsk_s15: # from 7.0
    nr 'Du ziehst das Buch zu Rate und vergleichst die Diagramme mit den Zeichen auf der Brustplatte. Soweit du feststellen kannst, handelt es sich bei den Runen um einen Rüstungszauber, aber einige schädelförmige Runen und kreisförmige Zeichen entlang der Kanten der Rüstung lassen darauf schließen, daß auch einige größere nekromantische und Abwehrzauber mit eingeschlossen sind. Wenn du das Skelett berührst, wird es vermutlich aufwachen… und sich verteidigen.{#giantsk_s15_1}'

    menu:
        'Ziehe das Buch der Knochen und Asche zu Rate, und versuche festzustellen, wie sie durchbrochen werden können.{#giantsk_s15_r64298}':
            # a81 # r64298
            jump giantsk_s16

        'Laß die Runen in Ruhe und untersuche noch einmal das Skelett.{#giantsk_s15_r64299}':
            # a82 # r64299
            jump giantsk_s4


# s16 # say64297
label giantsk_s16: # from 9.0 15.0
    nr 'Soweit du das aus dem Buch schließen kannst, scheint der Rüstungszauber sich nur auf die Brustplatte zu beziehen, der nekromantische Zauber ermöglicht es dem Skelett, aufzuerstehen, und der Abwehrzauber verleiht dem Skelett sein beschränktes Bewußtsein seiner Umgebung. Du schätzt, daß das Skelett es als Angriff auslegen würde, wenn du seinen Abwehrzauber  schwächst, es sei denn, du machst es zuvor für deine Gegenwart unempfänglich.{#giantsk_s16_1}'

    menu:
        'Zerstöre zunächst die Runen des Rüstungszaubers, dann die des nekromantischen Zaubers und zuletzt die des Abwehrzaubers.{#giantsk_s16_r64300}':
            # a83 # r64300
            jump giantsk_s10

        'Zerstöre zunächst die Runen des Abwehrzaubers und arbeite dich dann rückwärts durch das Muster, indem du den nekromantischen und zuletzt den Rüstungszauber auslöschst{#giantsk_s16_r64301}' if giantskLogic.r64301_condition():
            # a84 # r64301
            $ giantskLogic.r64301_action()
            jump giantsk_s11

        'Zerstöre zunächst die Runen des Abwehrzaubers und arbeite dich dann rückwärts durch das Muster, indem du den nekromantischen und zuletzt den Rüstungszauber auslöschst{#giantsk_s16_r64302}' if giantskLogic.r64302_condition():
            # a85 # r64302
            $ giantskLogic.r64302_action()
            jump giantsk_s13

        'Laß die Runen in Ruhe und untersuche noch einmal das Skelett.{#giantsk_s16_r64303}':
            # a86 # r64303
            jump giantsk_s4
