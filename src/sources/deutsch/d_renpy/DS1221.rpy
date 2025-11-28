init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s1221_logic import S1221Logic
    s1221Logic = S1221Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS1221.DLG
# ###


# s0 # say35306
label s1221_s0: # - # IF ~  True()
    nr 'Dieses belebte Skelett stinkt fürchterlich, als ob es erst vor kurzem präpariert worden sei. Sein Kiefer und die wichtigsten Gelenke sind straff mit Lederriemen umwickelt, und ein roher Kittel ist ihm übergeworfen worden. Die Zahl "1221" ist ihm in die Stirn gemeißelt worden.{#s1221_s0_1}'

    menu:
        '"Entschuldige, hast du hier vielleicht ein paar Skelette rumlaufen sehen?"{#s1221_s0_r35307}' if s1221Logic.r35307_condition():
            # a0 # r35307
            $ s1221Logic.r35307_action()
            jump s1221_s1

        '"Entschuldige bitte, aber hast du hier vielleicht ein paar Skelette herumlaufen sehen?"{#s1221_s0_r35330}' if s1221Logic.r35330_condition():
            # a1 # r35330
            jump s1221_s1

        '"Darf ich vielleicht fragen: Wozu der Kittel? Ich meine, du hast doch eh nichts, was du verstecken könntest."{#s1221_s0_r35331}' if s1221Logic.r35331_condition():
            # a2 # r35331
            $ s1221Logic.r35331_action()
            jump s1221_s1

        '"Darf ich vielleicht fragen: Wozu der Kittel? Ich meine, du hast doch eh nichts, was du verstecken könntest."{#s1221_s0_r35332}' if s1221Logic.r35332_condition():
            # a3 # r35332
            jump s1221_s1

        'Wende deine Erzählende-Knochen-Kraft auf das Skelett an.{#s1221_s0_r35333}' if s1221Logic.r35333_condition():
            # a4 # r35333
            jump s1221_s2

        'Untersuche das Skelett gründlich.{#s1221_s0_r35338}':
            # a5 # r35338
            $ s1221Logic.r35338_action()
            jump s1221_s3

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s1221_s0_r35371}' if s1221Logic.r35371_condition():
            # a6 # r35371
            $ s1221Logic.r35371_action()
            jump morte_s376  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s1221_s0_r35372}' if s1221Logic.r35372_condition():
            # a7 # r35372
            jump s1221_s4

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s1221_s0_r35373}' if s1221Logic.r35373_condition():
            # a8 # r35373
            jump s1221_s5

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s1221_s0_r35374}' if s1221Logic.r35374_condition():
            # a9 # r35374
            jump s1221_s6

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s1221_s0_r35375}' if s1221Logic.r35375_condition():
            # a10 # r35375
            jump s1221_s4

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s1221_s0_r35376}' if s1221Logic.r35376_condition():
            # a11 # r35376
            jump s1221_s5

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s1221_s0_r35377}' if s1221Logic.r35377_condition():
            # a12 # r35377
            jump s1221_s6

        '"Was ist mit diesem Skelett, Morte? Ist es als Körper zu gebrauchen?"{#s1221_s0_r35378}' if s1221Logic.r35378_condition():
            # a13 # r35378
            jump morte_s372  # EXTERN

        'Laß das Skelett in Ruhe.{#s1221_s0_r35379}' if s1221Logic.r35379_condition():
            # a14 # r35379
            $ s1221Logic.r35379_action()
            jump morte_s370  # EXTERN

        'Laß das Skelett in Ruhe.{#s1221_s0_r35380}' if s1221Logic.r35380_condition():
            # a15 # r35380
            jump s1221_dispose

        'Laß das Skelett in Ruhe.{#s1221_s0_r35381}' if s1221Logic.r35381_condition():
            # a16 # r35381
            jump s1221_dispose


# s1 # say35308
label s1221_s1: # from 0.0 0.1 0.2 0.3
    nr 'Das Skelett antwortet nicht.{#s1221_s1_1}'

    menu:
        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."{#s1221_s1_r35309}' if s1221Logic.r35309_condition():
            # a17 # r35309
            $ s1221Logic.r35309_action()
            jump morte_s370  # EXTERN

        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."{#s1221_s1_r35328}' if s1221Logic.r35328_condition():
            # a18 # r35328
            jump s1221_dispose

        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."{#s1221_s1_r35329}' if s1221Logic.r35329_condition():
            # a19 # r35329
            jump s1221_dispose


# s2 # say35334
label s1221_s2: # from 0.4
    nr 'Dieses Skelett antwortet nicht. Es sieht so aus, als ob es schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#s1221_s2_1}'

    menu:
        'Laß das Skelett in Ruhe.{#s1221_s2_r35335}' if s1221Logic.r35335_condition():
            # a20 # r35335
            $ s1221Logic.r35335_action()
            jump morte_s370  # EXTERN

        'Laß das Skelett in Ruhe.{#s1221_s2_r35336}' if s1221Logic.r35336_condition():
            # a21 # r35336
            jump s1221_dispose

        'Laß das Skelett in Ruhe.{#s1221_s2_r35337}' if s1221Logic.r35337_condition():
            # a22 # r35337
            jump s1221_dispose


# s3 # say35339
label s1221_s3: # from 0.5
    nr 'Irgendwer hat sich die Mühe gemacht, die Knochen dieses Skeletts mit Lederbändern zu umwickeln. Sie sind so um das Gestell gewickelt, daß sie wie Muskeln und Sehnen aussehen. Die Bänder sind mit Metallbolzen an den Gelenken des Skeletts befestigt. Das Skelett sieht aus, als ob es eine harte Zeit hinter sich hätte: An vielen Stellen sind Teile der Knochen abgesprungen, und die zahlreichen Brüche sind mit Dichtungsmittel und stinkenden Klebstoffen repariert worden.{#s1221_s3_1}'

    menu:
        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.{#s1221_s3_r35340}' if s1221Logic.r35340_condition():
            # a23 # r35340
            $ s1221Logic.r35340_action()
            jump morte_s376  # EXTERN

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.{#s1221_s3_r35362}' if s1221Logic.r35362_condition():
            # a24 # r35362
            jump s1221_s4

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.{#s1221_s3_r35363}' if s1221Logic.r35363_condition():
            # a25 # r35363
            jump s1221_s5

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.{#s1221_s3_r35364}' if s1221Logic.r35364_condition():
            # a26 # r35364
            jump s1221_s6

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"{#s1221_s3_r35365}' if s1221Logic.r35365_condition():
            # a27 # r35365
            jump s1221_s4

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"{#s1221_s3_r35366}' if s1221Logic.r35366_condition():
            # a28 # r35366
            jump s1221_s5

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"{#s1221_s3_r35367}' if s1221Logic.r35367_condition():
            # a29 # r35367
            jump s1221_s6

        'Laß das Skelett in Ruhe.{#s1221_s3_r35368}' if s1221Logic.r35368_condition():
            # a30 # r35368
            $ s1221Logic.r35368_action()
            jump morte_s370  # EXTERN

        'Laß das Skelett in Ruhe.{#s1221_s3_r35369}' if s1221Logic.r35369_condition():
            # a31 # r35369
            jump s1221_dispose

        'Laß das Skelett in Ruhe.{#s1221_s3_r35370}' if s1221Logic.r35370_condition():
            # a32 # r35370
            jump s1221_dispose


# s4 # say35345
label s1221_s4: # from 0.7 0.10 3.1 3.4
    nr 'Du ziehst an den Eisenbolzen, aber du bist nicht stark genug, sie herauszuziehen. Sie sitzen bombenfest.{#s1221_s4_1}'

    menu:
        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."{#s1221_s4_r35346}' if s1221Logic.r35346_condition():
            # a33 # r35346
            $ s1221Logic.r35346_action()
            jump morte_s370  # EXTERN

        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."{#s1221_s4_r35347}' if s1221Logic.r35347_condition():
            # a34 # r35347
            jump s1221_dispose

        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."{#s1221_s4_r35348}' if s1221Logic.r35348_condition():
            # a35 # r35348
            jump s1221_dispose

        'Laß das Skelett in Ruhe.{#s1221_s4_r35349}' if s1221Logic.r35349_condition():
            # a36 # r35349
            $ s1221Logic.r35349_action()
            jump morte_s370  # EXTERN

        'Laß das Skelett in Ruhe.{#s1221_s4_r35350}' if s1221Logic.r35350_condition():
            # a37 # r35350
            jump s1221_dispose

        'Laß das Skelett in Ruhe.{#s1221_s4_r35351}' if s1221Logic.r35351_condition():
            # a38 # r35351
            jump s1221_dispose


# s5 # say35353
label s1221_s5: # from 0.8 0.11 3.2 3.5
    nr 'Du ziehst mit aller Kraft an den Eisenbolzen, und nach kurzer Zeit heftigen Ziehens reißt du sie aus den Gelenken. Das Skelett fällt in sich zusammen; einige Knochen zucken noch.{#s1221_s5_1}'

    menu:
        '"Tut mir echt leid, Gerippe…"{#s1221_s5_r35354}':
            # a39 # r35354
            $ s1221Logic.r35354_action()
            jump s1221_dispose


# s6 # say35356
label s1221_s6: # from 0.9 0.12 3.3 3.6
    nr 'Mit Hilfe deines Brecheisens reißt du die Bolzen aus den Gelenken des Skeletts. Das Skelett fällt zusammen; einige Knochen zucken noch.{#s1221_s6_1}'

    menu:
        '"Tut mir leid, Knochengestell…"{#s1221_s6_r35357}':
            # a40 # r35357
            $ s1221Logic.r35357_action()
            jump s1221_dispose


# s7 # say35382
label s1221_s7: # - # IF ~  False()
    nr 'Dieses Skelett reagiert nicht. Es scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können.{#s1221_s7_1}'

    menu:
