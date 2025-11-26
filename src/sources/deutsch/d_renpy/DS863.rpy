init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s863_logic import S863Logic
    s863Logic = S863Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS863.DLG
# ###


# s0 # say35537
label s863_s0: # from 10.0 # IF ~  !HasItem("DRemind","S863")
    nr 'Dieses Skelett sieht aus, als hätte es turbulente Zeiten erlebt, entweder im Kampf oder beim Herunterfallen einer Treppe zu viel. Beide Arme und Beine sind gebrochen und mit Hilfe von Lederbändern und dünnen Eisenstangen wieder zusammengeflickt. Auf der Stirn trägt das Skelett die Zahl "863"… aber am Hinterkopf ist der Schädel eingedrückt und bildet eine leere Höhle.'

    menu:
        '"Tut mir leid, daß ich mir das Pergament genommen habe, habe ich glaube kaum, daß du es in nächster Zeit abgeliefert hättest."' if s863Logic.r35538_condition():
            # a0 # r35538
            $ s863Logic.r35538_action()
            jump s863_s1

        '"Tut mir leid, daß ich mir das Pergament genommen habe, habe ich glaube kaum, daß du es in nächster Zeit abgeliefert hättest."' if s863Logic.r35561_condition():
            # a1 # r35561
            jump s863_s1

        '"Ich muß das fragen: Hast du dir die Knochen im Kampf gebrochen, oder weil du irgendwo runtergefallen bist?"' if s863Logic.r35562_condition():
            # a2 # r35562
            $ s863Logic.r35562_action()
            jump s863_s1

        '"Ich muß das fragen: Hast du dir die Knochen im Kampf gebrochen, oder weil du irgendwo runtergefallen bist?"' if s863Logic.r35563_condition():
            # a3 # r35563
            jump s863_s1

        'Wende deine Erzählende-Knochen-Kraft auf das Skelett an.' if s863Logic.r35564_condition():
            # a4 # r35564
            jump s863_s2

        'Untersuche das Skelett gründlich.':
            # a5 # r35569
            $ s863Logic.r35569_action()
            jump s863_s3

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s863Logic.r35602_condition():
            # a6 # r35602
            $ s863Logic.r35602_action()
            jump morte_s400  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s863Logic.r35603_condition():
            # a7 # r35603
            jump s863_s4

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s863Logic.r35604_condition():
            # a8 # r35604
            jump s863_s5

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s863Logic.r35605_condition():
            # a9 # r35605
            jump s863_s6

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s863Logic.r35606_condition():
            # a10 # r35606
            jump s863_s4

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s863Logic.r35607_condition():
            # a11 # r35607
            jump s863_s5

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s863Logic.r35608_condition():
            # a12 # r35608
            jump s863_s6

        '"Was ist mit diesem Skelett, Morte? Ist es als Körper zu gebrauchen?"' if s863Logic.r35609_condition():
            # a13 # r35609
            jump morte_s396  # EXTERN

        'Laß das Skelett in Ruhe.' if s863Logic.r35610_condition():
            # a14 # r35610
            $ s863Logic.r35610_action()
            jump morte_s394  # EXTERN

        'Laß das Skelett in Ruhe.' if s863Logic.r35611_condition():
            # a15 # r35611
            jump s863_dispose

        'Laß das Skelett in Ruhe.' if s863Logic.r35612_condition():
            # a16 # r35612
            jump s863_dispose


# s1 # say35539
label s863_s1: # from 0.0 0.1 0.2 0.3
    nr 'Das Skelett reagiert nicht.'

    menu:
        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."' if s863Logic.r35540_condition():
            # a17 # r35540
            $ s863Logic.r35540_action()
            jump morte_s394  # EXTERN

        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."' if s863Logic.r35559_condition():
            # a18 # r35559
            jump s863_dispose

        '"War nett, mit dir zu reden, Gerippe. Bleib gesund."' if s863Logic.r35560_condition():
            # a19 # r35560
            jump s863_dispose


# s2 # say35565
label s863_s2: # from 0.4
    nr 'Dieses Skelett antwortet nicht. Es sieht so aus, als ob es schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.'

    menu:
        'Laß das Skelett in Ruhe.' if s863Logic.r35566_condition():
            # a20 # r35566
            $ s863Logic.r35566_action()
            jump morte_s394  # EXTERN

        'Laß das Skelett in Ruhe.' if s863Logic.r35567_condition():
            # a21 # r35567
            jump s863_dispose

        'Laß das Skelett in Ruhe.' if s863Logic.r35568_condition():
            # a22 # r35568
            jump s863_dispose


# s3 # say35570
label s863_s3: # from 0.5
    nr 'Irgendwer hat sich die Mühe gemacht, die Knochen dieses Skeletts mit Lederbändern zu umwickeln. Sie sind so um das Gestell gewickelt, daß sie wie Muskeln und Sehnen aussehen. Die Bänder sind mit Metallbolzen an den Gelenken des Skeletts befestigt. Das Skelett sieht aus, als ob es eine harte Zeit hinter sich hätte: An vielen Stellen sind Teile der Knochen abgesprungen, und die zahlreichen Brüche sind mit Dichtungsmittel und stinkenden Klebstoffen repariert worden.'

    menu:
        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if s863Logic.r35571_condition():
            # a23 # r35571
            $ s863Logic.r35571_action()
            jump morte_s400  # EXTERN

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if s863Logic.r35593_condition():
            # a24 # r35593
            jump s863_s4

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if s863Logic.r35594_condition():
            # a25 # r35594
            jump s863_s5

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if s863Logic.r35595_condition():
            # a26 # r35595
            jump s863_s6

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"' if s863Logic.r35596_condition():
            # a27 # r35596
            jump s863_s4

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"' if s863Logic.r35597_condition():
            # a28 # r35597
            jump s863_s5

        '"Was dagegen, wenn ich mir „n paar von diesen Bändern und Bolzen borge?"' if s863Logic.r35598_condition():
            # a29 # r35598
            jump s863_s6

        'Laß das Skelett in Ruhe.' if s863Logic.r35599_condition():
            # a30 # r35599
            $ s863Logic.r35599_action()
            jump morte_s394  # EXTERN

        'Laß das Skelett in Ruhe.' if s863Logic.r35600_condition():
            # a31 # r35600
            jump s863_dispose

        'Laß das Skelett in Ruhe.' if s863Logic.r35601_condition():
            # a32 # r35601
            jump s863_dispose


# s4 # say35576
label s863_s4: # from 0.7 0.10 3.1 3.4
    nr 'Du ziehst an den Eisenbolzen, aber du bist nicht stark genug, sie herauszuziehen. Sie sitzen bombenfest.'

    menu:
        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."' if s863Logic.r35577_condition():
            # a33 # r35577
            $ s863Logic.r35577_action()
            jump morte_s394  # EXTERN

        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."' if s863Logic.r35578_condition():
            # a34 # r35578
            jump s863_dispose

        '"Wenn ich das richtige Werkzeug hätte, würd ich sie vielleicht rauskriegen… hmmmn. Vielleicht komm ich wieder, Knochengestell."' if s863Logic.r35579_condition():
            # a35 # r35579
            jump s863_dispose

        'Laß das Skelett in Ruhe.' if s863Logic.r35580_condition():
            # a36 # r35580
            $ s863Logic.r35580_action()
            jump morte_s394  # EXTERN

        'Laß das Skelett in Ruhe.' if s863Logic.r35581_condition():
            # a37 # r35581
            jump s863_dispose

        'Laß das Skelett in Ruhe.' if s863Logic.r35582_condition():
            # a38 # r35582
            jump s863_dispose


# s5 # say35584
label s863_s5: # from 0.8 0.11 3.2 3.5
    nr 'Du ziehst mit aller Kraft an den Eisenbolzen, und nach kurzer Zeit heftigen Ziehens reißt du sie aus den Gelenken. Das Skelett fällt in sich zusammen; einige Knochen zucken noch.'

    menu:
        '"Tut mir echt leid, Gerippe…"':
            # a39 # r35585
            $ s863Logic.r35585_action()
            jump s863_dispose


# s6 # say35587
label s863_s6: # from 0.9 0.12 3.3 3.6
    nr 'Mit Hilfe deines Brecheisens reißt du die Bolzen aus den Gelenken des Skeletts. Das Skelett fällt zusammen; einige Knochen zucken noch.'

    menu:
        '"Tut mir leid, Knochengestell…"':
            # a40 # r35588
            $ s863Logic.r35588_action()
            jump s863_dispose


# s7 # say35613
label s863_s7: # - # IF ~  False()
    nr 'Dieses Skelett reagiert nicht. Es scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können.'

    menu:

# s8 # say64262
label s863_s8: # - # IF ~  HasItem("DRemind","S863")
    nr 'Das Skelett hat entweder eine Menge Kämpfe hinter sich oder ist ein paar Treppen zuviel hinuntergefallen.. Seine Arme und Beine sind beide gebrochen und wurden mit Hilfe von Lederriemen und Stangen zusammengeflickt. Auf der Vorderseite seines Schädels steht die Nummer "863"… aber die Rückseite des Schädels ist nach innen gewölbt und bildet eine leere Höhle. Du stellst fest, daß das jemand ausgenutzt hat und ein zusammengerolltes Stück Pergament in den Schädel gesteckt hat.'

    menu:
        'Nimm das Pergament aus dem Schädel des Skeletts.':
            # a41 # r64263
            jump s863_s9

        'Laß das Skelett in Ruhe.':
            # a42 # r64264
            jump s863_dispose


# s9 # say64265
label s863_s9: # from 8.0
    nr 'Du ziehst das Pergament aus dem Schädel des Arbeiters - seltsamerweise sieht es so aus, als wäre der Schädel dazu *bestimmt,* Nachrichten aufzubewahren. Ein dünner Faden ist an dem Pergament befestigt und an einem Haken im Inneren des Schädels angebracht, damit das Pergament nicht versehentlich herausfällt.'

    menu:
        'Löse den Haken und nimm das Pergament.':
            # a43 # r64266
            $ s863Logic.r64266_action()
            jump s863_s10


# s10 # say64267
label s863_s10: # from 9.0
    nr 'Du hakst die Schnur aus und überfliegst das Pergament - Es sieht wie eine Erinnerungshilfe von einem der Wächter der Leichenhalle aus. Der Notiz nach zu urteilen, ist dieses Skelett eine Art Laufbote. Als du einen zweiten Blick auf das Skelett wirfst, begreifst du, dass es vor der Tafel anhielt, weil es nicht weiß, wie es an ihr vorbeikommt.  ^NHINWEIS: <READSTUFF>^-'

    menu:
        'Betrachte das Skelett genauer.':
            # a44 # r64268
            jump s863_s0

        'Laß das Skelett in Ruhe.':
            # a45 # r64269
            jump s863_dispose
