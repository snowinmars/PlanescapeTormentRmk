init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s996_logic import S996Logic
    s996Logic = S996Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS996.DLG
# ###


# s0 # say35460
label s996_s0: # - # IF ~  True()
    nr 'Dieses Skelett scheint besonders alt zu sein, und die Lederriemen, die es zusammenbinden, sind schon rissig und abgenutzt. Das Wort "BEREUE" ist mit einiger Handfertigkeit sorgfältig in seine Stirn graviert worden. Eine rohere Hand hat später "996" auf beide Schläfen gemeißelt.'

    menu:
        '"Entschuldige, hast du hier vielleicht ein paar Skelette rumlaufen sehen?"' if s996Logic.r35461_condition():
            # a0 # r35461
            $ s996Logic.r35461_action()
            jump s996_s1

        '"Entschuldige bitte, aber hast du hier vielleicht ein paar Skelette herumlaufen sehen?"' if s996Logic.r35484_condition():
            # a1 # r35484
            jump s996_s1

        '"Darf ich vielleicht fragen: Wozu der Kittel? Ich meine, du hast doch eh nichts, was du verstecken könntest."' if s996Logic.r35485_condition():
            # a2 # r35485
            $ s996Logic.r35485_action()
            jump s996_s1

        '"Darf ich vielleicht fragen: Wozu der Kittel? Ich meine, du hast doch eh nichts, was du verstecken könntest."' if s996Logic.r35486_condition():
            # a3 # r35486
            jump s996_s1

        'Wende deine Erzählende-Knochen-Kraft auf das Skelett an.' if s996Logic.r35487_condition():
            # a4 # r35487
            jump s996_s2

        'Untersuche das Skelett gründlich.':
            # a5 # r35492
            $ s996Logic.r35492_action()
            jump s996_s3

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s996Logic.r35525_condition():
            # a6 # r35525
            $ s996Logic.r35525_action()
            jump morte_s392  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s996Logic.r35526_condition():
            # a7 # r35526
            jump s996_s4

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s996Logic.r35527_condition():
            # a8 # r35527
            jump s996_s5

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s996Logic.r35528_condition():
            # a9 # r35528
            jump s996_s6

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s996Logic.r35529_condition():
            # a10 # r35529
            jump s996_s4

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s996Logic.r35530_condition():
            # a11 # r35530
            jump s996_s5

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s996Logic.r35531_condition():
            # a12 # r35531
            jump s996_s6

        '"Was ist mit diesem Skelett, Morte? Ist es als Körper zu gebrauchen?"' if s996Logic.r35532_condition():
            # a13 # r35532
            jump morte_s388  # EXTERN

        'Laß das Skelett in Ruhe.' if s996Logic.r35533_condition():
            # a14 # r35533
            $ s996Logic.r35533_action()
            jump morte_s386  # EXTERN

        'Laß das Skelett in Ruhe.' if s996Logic.r35534_condition():
            # a15 # r35534
            jump s996_dispose

        'Laß das Skelett in Ruhe.' if s996Logic.r35535_condition():
            # a16 # r35535
            jump s996_dispose


# s1 # say35462
label s996_s1: # from 0.0 0.1 0.2 0.3
    nr 'Das Skelett reagiert nicht.'

    menu:
        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."' if s996Logic.r35463_condition():
            # a17 # r35463
            $ s996Logic.r35463_action()
            jump morte_s386  # EXTERN

        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."' if s996Logic.r35482_condition():
            # a18 # r35482
            jump s996_dispose

        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."' if s996Logic.r35483_condition():
            # a19 # r35483
            jump s996_dispose


# s2 # say35488
label s996_s2: # from 0.4
    nr 'Dieses Skelett antwortet nicht. Es sieht so aus, als ob es schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.'

    menu:
        'Laß das Skelett in Ruhe.' if s996Logic.r35489_condition():
            # a20 # r35489
            $ s996Logic.r35489_action()
            jump morte_s386  # EXTERN

        'Laß das Skelett in Ruhe.' if s996Logic.r35490_condition():
            # a21 # r35490
            jump s996_dispose

        'Laß das Skelett in Ruhe.' if s996Logic.r35491_condition():
            # a22 # r35491
            jump s996_dispose


# s3 # say35493
label s996_s3: # from 0.5
    nr 'Irgendwer hat sich die Mühe gemacht, die Knochen dieses Skeletts mit Lederbändern zu umwickeln. Sie sind so um das Gestell gewickelt, daß sie wie Muskeln und Sehnen aussehen. Die Bänder sind mit Metallbolzen an den Gelenken des Skeletts befestigt. Das Skelett sieht aus, als ob es eine harte Zeit hinter sich hätte: An vielen Stellen sind Teile der Knochen abgesprungen, und die zahlreichen Brüche sind mit Dichtungsmittel und stinkenden Klebstoffen repariert worden.'

    menu:
        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s996Logic.r35494_condition():
            # a23 # r35494
            $ s996Logic.r35494_action()
            jump morte_s392  # EXTERN

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if s996Logic.r35516_condition():
            # a24 # r35516
            jump s996_s4

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if s996Logic.r35517_condition():
            # a25 # r35517
            jump s996_s5

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if s996Logic.r35518_condition():
            # a26 # r35518
            jump s996_s6

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"' if s996Logic.r35519_condition():
            # a27 # r35519
            jump s996_s4

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"' if s996Logic.r35520_condition():
            # a28 # r35520
            jump s996_s5

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"' if s996Logic.r35521_condition():
            # a29 # r35521
            jump s996_s6

        'Laß das Skelett in Ruhe.' if s996Logic.r35522_condition():
            # a30 # r35522
            $ s996Logic.r35522_action()
            jump morte_s386  # EXTERN

        'Laß das Skelett in Ruhe.' if s996Logic.r35523_condition():
            # a31 # r35523
            jump s996_dispose

        'Laß das Skelett in Ruhe.' if s996Logic.r35524_condition():
            # a32 # r35524
            jump s996_dispose


# s4 # say35499
label s996_s4: # from 0.7 0.10 3.1 3.4
    nr 'Du ziehst an den Eisenbolzen, aber du bist nicht stark genug, sie herauszuziehen. Sie sitzen bombenfest.'

    menu:
        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."' if s996Logic.r35500_condition():
            # a33 # r35500
            $ s996Logic.r35500_action()
            jump morte_s386  # EXTERN

        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."' if s996Logic.r35501_condition():
            # a34 # r35501
            jump s996_dispose

        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."' if s996Logic.r35502_condition():
            # a35 # r35502
            jump s996_dispose

        'Laß das Skelett in Ruhe.' if s996Logic.r35503_condition():
            # a36 # r35503
            $ s996Logic.r35503_action()
            jump morte_s386  # EXTERN

        'Laß das Skelett in Ruhe.' if s996Logic.r35504_condition():
            # a37 # r35504
            jump s996_dispose

        'Laß das Skelett in Ruhe.' if s996Logic.r35505_condition():
            # a38 # r35505
            jump s996_dispose


# s5 # say35507
label s996_s5: # from 0.8 0.11 3.2 3.5
    nr 'Du ziehst mit aller Kraft an den Eisenbolzen, und nach kurzer Zeit heftigen Ziehens reißt du sie aus den Gelenken. Das Skelett fällt in sich zusammen; einige Knochen zucken noch.'

    menu:
        '"Tut mir echt leid, Gerippe…"':
            # a39 # r35508
            $ s996Logic.r35508_action()
            jump s996_dispose


# s6 # say35510
label s996_s6: # from 0.9 0.12 3.3 3.6
    nr 'Mit Hilfe deines Brecheisens reißt du die Bolzen aus den Gelenken des Skeletts. Das Skelett fällt zusammen; einige Knochen zucken noch.'

    menu:
        '"Tut mir leid, Knochengestell…"':
            # a40 # r35511
            $ s996Logic.r35511_action()
            jump s996_dispose


# s7 # say35536
label s996_s7: # - # IF ~  False()
    nr 'Dieses Skelett reagiert nicht. Es scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können.'

    menu:
