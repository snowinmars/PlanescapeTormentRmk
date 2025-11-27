init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm569_logic import Zm569Logic
    zm569Logic = Zm569Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM569.DLG
# ###


# s0 # say24575
label zm569_s0: # - # IF ~  True()
    nr 'Diese trottende Leiche sieht so aus, als sei sie bereits seit mehreren Jahren tot. Die Haut auf ihrer Stirn ist zurückgepellt und legt den kalkweißen Schädel frei. Jemand hat die Zahl "569" in den freigelegten Knochen gemeißelt.{#zm569_s0_}'

    menu:
        '"Ich suche nach einem Schlüssel… Hast du zufällig einen?"{#zm569_s0_r24576}' if zm569Logic.r24576_condition():
            # a0 # r24576
            jump morte1_s31  # EXTERN

        '"Ich suche nach einem Schlüssel… Hast du zufällig einen?"{#zm569_s0_r24579}' if zm569Logic.r24579_condition():
            # a1 # r24579
            jump zm569_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm569_s0_r24580}' if zm569Logic.r24580_condition():
            # a2 # r24580
            jump zm569_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm569_s0_r24581}' if zm569Logic.r24581_condition():
            # a3 # r24581
            jump zm569_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm569_s0_r24584}' if zm569Logic.r24584_condition():
            # a4 # r24584
            jump zm569_s2

        'Untersuche die Leiche und sieh nach, ob sie einen Schlüssel bei sich hat.{#zm569_s0_r24585}' if zm569Logic.r24585_condition():
            # a5 # r24585
            jump zm569_s3

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm569_s0_r42290}':
            # a6 # r42290
            jump zm569_dispose

        'Laß die Leiche in Ruhe.{#zm569_s0_r42291}':
            # a7 # r42291
            jump zm569_dispose


# s1 # say24577
label zm569_s1: # from 0.1 0.2 0.3 3.1
    nr 'Die Leiche starrt dich stumm an.{#zm569_s1_}'

    menu:
        '"Ach, vergiß es. Leb wohl."{#zm569_s1_r24578}':
            # a8 # r24578
            jump zm569_dispose

        'Laß die Leiche in Ruhe.{#zm569_s1_r42292}':
            # a9 # r42292
            jump zm569_dispose


# s2 # say24582
label zm569_s2: # from 0.4
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.{#zm569_s2_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm569_s2_r24583}':
            # a10 # r24583
            jump zm569_dispose


# s3 # say42293
label zm569_s3: # from 0.5
    nr 'Diese Leiche scheint keinen Schlüssel bei sich zu haben… Und selbst wenn sie einen hätte, würde sie ihn wahrscheinlich gar nicht verwenden können. Ihre Finger sind gebrochen, als hätte sie jemand mit einem Hammer zertrümmert. Zufällig bemerkst du, daß ihre linke Schulter dick bandagiert ist… Den Verband könnte man sicher noch gebrauchen, wenn man vorher die Leiche loswerden könnte.{#zm569_s3_}'

    menu:
        '"Ich vermute, du hast ihn nicht… Weißt du zufällig, wer von deinen Leichenfreunden den Schlüssel hat, mit dem man hier rauskommt?"{#zm569_s3_r42294}' if zm569Logic.r42294_condition():
            # a11 # r42294
            jump morte1_s31  # EXTERN

        '"Ich vermute, du hast ihn nicht… Weißt du zufällig, wer von deinen Leichenfreunden den Schlüssel hat, mit dem man hier rauskommt?"{#zm569_s3_r42295}' if zm569Logic.r42295_condition():
            # a12 # r42295
            jump zm569_s1

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm569_s3_r42296}':
            # a13 # r42296
            jump zm569_dispose

        'Laß die Leiche in Ruhe.{#zm569_s3_r42297}':
            # a14 # r42297
            jump zm569_dispose
