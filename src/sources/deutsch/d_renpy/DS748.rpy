init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s748_logic import S748Logic
    s748Logic = S748Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS748.DLG
# ###


# s0 # say35383
label s748_s0: # - # IF ~  True()
    nr 'Dieses Skelett mit der Zahl "748", die ihm über die Augenbrauen gemeißelt wurde, ist nur deshalb seltsam, weil einige seiner Zähne unecht zu sein scheinen, aus einem rötlich-braunen Stein gefertigt. Sie sind aber eindeutig nicht wertvoll, denn sonst hätten diejenigen, die sich um das Skelett kümmern, sie ihm abgenommen.'

    menu:
        '"Entschuldige, hast du hier vielleicht ein paar Skelette rumlaufen sehen?"' if s748Logic.r35384_condition():
            # a0 # r35384
            $ s748Logic.r35384_action()
            jump s748_s1

        '"Entschuldige bitte, aber hast du hier vielleicht ein paar Skelette herumlaufen sehen?"' if s748Logic.r35407_condition():
            # a1 # r35407
            jump s748_s1

        '"Darf ich vielleicht fragen: Wozu der Kittel? Ich meine, du hast doch eh nichts, was du verstecken könntest."' if s748Logic.r35408_condition():
            # a2 # r35408
            $ s748Logic.r35408_action()
            jump s748_s1

        '"Darf ich vielleicht fragen: Wozu der Kittel? Ich meine, du hast doch eh nichts, was du verstecken könntest."' if s748Logic.r35409_condition():
            # a3 # r35409
            jump s748_s1

        'Wende deine Erzählende-Knochen-Kraft auf das Skelett an.' if s748Logic.r35410_condition():
            # a4 # r35410
            jump s748_s2

        'Untersuche das Skelett gründlich.':
            # a5 # r35415
            $ s748Logic.r35415_action()
            jump s748_s3

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s748Logic.r35448_condition():
            # a6 # r35448
            $ s748Logic.r35448_action()
            jump morte_s384  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s748Logic.r35449_condition():
            # a7 # r35449
            jump s748_s4

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s748Logic.r35450_condition():
            # a8 # r35450
            jump s748_s5

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s748Logic.r35451_condition():
            # a9 # r35451
            jump s748_s6

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s748Logic.r35452_condition():
            # a10 # r35452
            jump s748_s4

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s748Logic.r35453_condition():
            # a11 # r35453
            jump s748_s5

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s748Logic.r35454_condition():
            # a12 # r35454
            jump s748_s6

        '"Was ist mit diesem Skelett, Morte? Ist es als Körper zu gebrauchen?"' if s748Logic.r35455_condition():
            # a13 # r35455
            jump morte_s380  # EXTERN

        'Laß das Skelett in Ruhe.' if s748Logic.r35456_condition():
            # a14 # r35456
            $ s748Logic.r35456_action()
            jump morte_s378  # EXTERN

        'Laß das Skelett in Ruhe.' if s748Logic.r35457_condition():
            # a15 # r35457
            jump s748_dispose

        'Laß das Skelett in Ruhe.' if s748Logic.r35458_condition():
            # a16 # r35458
            jump s748_dispose


# s1 # say35385
label s748_s1: # from 0.0 0.1 0.2 0.3
    nr 'Das Skelett reagiert nicht.'

    menu:
        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."' if s748Logic.r35386_condition():
            # a17 # r35386
            $ s748Logic.r35386_action()
            jump morte_s378  # EXTERN

        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."' if s748Logic.r35405_condition():
            # a18 # r35405
            jump s748_dispose

        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."' if s748Logic.r35406_condition():
            # a19 # r35406
            jump s748_dispose


# s2 # say35411
label s748_s2: # from 0.4
    nr 'Dieses Skelett antwortet nicht. Es sieht so aus, als ob es schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.'

    menu:
        'Laß das Skelett in Ruhe.' if s748Logic.r35412_condition():
            # a20 # r35412
            $ s748Logic.r35412_action()
            jump morte_s378  # EXTERN

        'Laß das Skelett in Ruhe.' if s748Logic.r35413_condition():
            # a21 # r35413
            jump s748_dispose

        'Laß das Skelett in Ruhe.' if s748Logic.r35414_condition():
            # a22 # r35414
            jump s748_dispose


# s3 # say35416
label s748_s3: # from 0.5
    nr 'Irgendwer hat sich die Mühe gemacht, die Knochen dieses Skeletts mit Lederbändern zu umwickeln. Sie sind so um das Gestell gewickelt, daß sie wie Muskeln und Sehnen aussehen. Die Bänder sind mit Metallbolzen an den Gelenken des Skeletts befestigt. Das Skelett sieht aus, als ob es eine harte Zeit hinter sich hätte: An vielen Stellen sind Teile der Knochen abgesprungen, und die zahlreichen Brüche sind mit Dichtungsmittel und stinkenden Klebstoffen repariert worden.'

    menu:
        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s748Logic.r35417_condition():
            # a23 # r35417
            $ s748Logic.r35417_action()
            jump morte_s384  # EXTERN

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if s748Logic.r35439_condition():
            # a24 # r35439
            jump s748_s4

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if s748Logic.r35440_condition():
            # a25 # r35440
            jump s748_s5

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if s748Logic.r35441_condition():
            # a26 # r35441
            jump s748_s6

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"' if s748Logic.r35442_condition():
            # a27 # r35442
            jump s748_s4

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"' if s748Logic.r35443_condition():
            # a28 # r35443
            jump s748_s5

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"' if s748Logic.r35444_condition():
            # a29 # r35444
            jump s748_s6

        'Laß das Skelett in Ruhe.' if s748Logic.r35445_condition():
            # a30 # r35445
            $ s748Logic.r35445_action()
            jump morte_s378  # EXTERN

        'Laß das Skelett in Ruhe.' if s748Logic.r35446_condition():
            # a31 # r35446
            jump s748_dispose

        'Laß das Skelett in Ruhe.' if s748Logic.r35447_condition():
            # a32 # r35447
            jump s748_dispose


# s4 # say35422
label s748_s4: # from 0.7 0.10 3.1 3.4
    nr 'Du ziehst an den Eisenbolzen, aber du bist nicht stark genug, sie herauszuziehen. Sie sitzen bombenfest.'

    menu:
        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."' if s748Logic.r35423_condition():
            # a33 # r35423
            $ s748Logic.r35423_action()
            jump morte_s378  # EXTERN

        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."' if s748Logic.r35424_condition():
            # a34 # r35424
            jump s748_dispose

        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."' if s748Logic.r35425_condition():
            # a35 # r35425
            jump s748_dispose

        'Laß das Skelett in Ruhe.' if s748Logic.r35426_condition():
            # a36 # r35426
            $ s748Logic.r35426_action()
            jump morte_s378  # EXTERN

        'Laß das Skelett in Ruhe.' if s748Logic.r35427_condition():
            # a37 # r35427
            jump s748_dispose

        'Laß das Skelett in Ruhe.' if s748Logic.r35428_condition():
            # a38 # r35428
            jump s748_dispose


# s5 # say35430
label s748_s5: # from 0.8 0.11 3.2 3.5
    nr 'Du ziehst mit aller Kraft an den Eisenbolzen, und nach kurzer Zeit heftigen Ziehens reißt du sie aus den Gelenken. Das Skelett fällt in sich zusammen; einige Knochen zucken noch.'

    menu:
        '"Tut mir echt leid, Gerippe…"':
            # a39 # r35431
            $ s748Logic.r35431_action()
            jump s748_dispose


# s6 # say35433
label s748_s6: # from 0.9 0.12 3.3 3.6
    nr 'Mit Hilfe deines Brecheisens reißt du die Bolzen aus den Gelenken des Skeletts. Das Skelett fällt zusammen; einige Knochen zucken noch.'

    menu:
        '"Tut mir leid, Knochengestell…"':
            # a40 # r35434
            $ s748Logic.r35434_action()
            jump s748_dispose


# s7 # say35459
label s748_s7: # - # IF ~  False()
    nr 'Dieses Skelett reagiert nicht. Es scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können.'

    menu:
