init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm396_logic import Zm396Logic
    zm396Logic = Zm396Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM396.DLG
# ###


# s0 # say34931
label zm396_s0: # - # IF ~  HasItem("Bandage","ZM396")
    nr 'Diese Leiche schlurft von Totenbank zu Totenbank und bandagiert die darauf liegenden Leichen. In ihre linke Schläfe ist die Zahl "396" geritzt, und ihre Lippen sind zugenäht. Du merkst, daß die Leiche in ihrer Hand eine Rolle Bandagen trägt… Die Bandagen sehen brauchbar aus.'

    menu:
        '"Hast du was dagegen, wenn ich mir mal diese Bandagen ausleihe?"' if zm396Logic.r34932_condition():
            # a0 # r34932
            $ zm396Logic.r34932_action()
            jump zm396_s1

        '"Hast du was dagegen, wenn ich mir mal diese Bandagen ausleihe?"' if zm396Logic.r34935_condition():
            # a1 # r34935
            jump zm396_s1

        'Versuch, dem Zombie die Bandagen abzunehmen.':
            # a2 # r34936
            $ zm396Logic.r34936_action()
            jump zm396_s3

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm396Logic.r34937_condition():
            # a3 # r34937
            jump zm396_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm396Logic.r34940_condition():
            # a4 # r34940
            jump zm396_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a5 # r34941
            jump zm396_dispose

        'Laß die Leiche in Ruhe.':
            # a6 # r45106
            jump zm396_dispose


# s1 # say34933
label zm396_s1: # from 0.0 0.1 0.3 4.0 4.1 4.2
    nr 'Die Leiche starrt dich weiter an.'

    menu:
        'Versuch, dem Zombie die Bandagen abzunehmen.' if zm396Logic.r34934_condition():
            # a7 # r34934
            $ zm396Logic.r34934_action()
            jump zm396_s3

        'Laß die Leiche in Ruhe.':
            # a8 # r45107
            jump zm396_dispose


# s2 # say34938
label zm396_s2: # from 0.4 4.3
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a9 # r34939
            jump zm396_dispose


# s3 # say45108
label zm396_s3: # from 0.2 1.0
    nr 'Geschickt stibitzt du der Leiche die Verbandsrolle aus der Hand. Sie scheint nichts zu bemerken und fährt unbeirrt mit derselben Handbewegung fort - als würde sie weiter Leichen bandagieren.'

    menu:
        'Untersuche die Leiche noch einmal.':
            # a10 # r45109
            jump zm396_s4

        'Laß die Leiche in Ruhe.':
            # a11 # r45110
            jump zm396_dispose


# s4 # say45111
label zm396_s4: # from 3.0 # IF ~  !HasItem("Bandage","ZM396")
    nr 'Diese Leiche schlurft von einer Totenbank zur nächsten und umwickelt die dort liegenden Leichen mit Bandagen. Sie erledigt fleißig ihre Pflicht, obwohl sie gar keine Bandagen mehr hat. Auf der linken Schläfe ist die Zahl "396" eingeritzt, und ihre Lippen sind zugenäht.'

    menu:
        '"Tut mir leid, wenn ich dir die Bandagen wegnehme. Aber ich brauch sie dringender als diese Leichen."' if zm396Logic.r45112_condition():
            # a12 # r45112
            $ zm396Logic.r45112_action()
            jump zm396_s1

        '"Tut mir leid, wenn ich dir die Bandagen wegnehme. Aber ich brauch sie dringender als diese Leichen."' if zm396Logic.r45113_condition():
            # a13 # r45113
            jump zm396_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm396Logic.r45114_condition():
            # a14 # r45114
            jump zm396_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm396Logic.r45115_condition():
            # a15 # r45115
            jump zm396_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a16 # r45116
            jump zm396_dispose

        'Laß die Leiche in Ruhe.':
            # a17 # r45117
            jump zm396_dispose
