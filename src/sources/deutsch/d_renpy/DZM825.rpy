init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


# s0 # say24564
label zm825_s0: # - # IF ~  True()
    nr 'Der Kopf dieser Leiche rollt auf ihren Schultern vor und zurück. Vom Winkel des Halses zu urteilen, wurde dieser Mann wahrscheinlich aufgehängt. Die Zahl "825" ist auf die Seite seines Kopfes gemalt worden.'

    menu:
        '"Ich suche nach einem Schlüssel… Hast du zufällig einen?"' if zm825Logic.r24565_condition():
            # a0 # r24565
            jump morte1_s31  # EXTERN

        '"Ich suche nach einem Schlüssel… Hast du zufällig einen?"' if zm825Logic.r24568_condition():
            # a1 # r24568
            jump zm825_s1

        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"' if zm825Logic.r24569_condition():
            # a2 # r24569
            jump zm825_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm825Logic.r24570_condition():
            # a3 # r24570
            jump zm825_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm825Logic.r24573_condition():
            # a4 # r24573
            jump zm825_s2

        'Untersuche die Leiche und sieh nach, ob sie einen Schlüssel bei sich hat.' if zm825Logic.r24574_condition():
            # a5 # r24574
            jump zm825_s3

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a6 # r42308
            jump zm825_dispose

        'Laß die Leiche in Ruhe.':
            # a7 # r42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1: # from 0.1 0.2 0.3 3.1
    nr 'Die Leiche starrt auf den Boden und antwortet nicht.'

    menu:
        '"Ach, vergiß es. Leb wohl."':
            # a8 # r24567
            jump zm825_dispose

        'Laß die Leiche in Ruhe.':
            # a9 # r42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2: # from 0.4
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a10 # r24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3: # from 0.5
    nr 'Diese Leiche hat überhaupt nichts bei sich… Zufällig bemerkst du, daß ihre Hände dick bandagiert sind. Den Verband könnte man sicher noch gebrauchen, wenn man vorher die Leiche loswerden könnte.'

    menu:
        '"Ich vermute, du hast den Schlüssel nicht… Weißt du zufällig, wer von deinen Leichenfreunden den Schlüssel hat, mit dem man hier rauskommt?"' if zm825Logic.r42312_condition():
            # a11 # r42312
            jump morte1_s31  # EXTERN

        '"Ich vermute, du hast den Schlüssel nicht… Weißt du zufällig, wer von deinen Leichenfreunden den Schlüssel hat, mit dem man hier rauskommt?"' if zm825Logic.r42313_condition():
            # a12 # r42313
            jump zm825_s1

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a13 # r42314
            jump zm825_dispose

        'Laß die Leiche in Ruhe.':
            # a14 # r42315
            jump zm825_dispose
