init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1201_logic import Zm1201Logic
    zm1201Logic = Zm1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1201.DLG
# ###


# s0 # say34953
label zm1201_s0: # - # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    nr 'Die Zahl "1201" ist mit Tinte auf die Stirn dieser Leiche geschrieben worden, und die Tinte ist in die Augen, über die Wangen und den Kiefer heruntergelaufen. Als du mit den Augen den Tintentränen auf dem Gesicht der Leiche nach unten folgst, bemerkst du, daß sie in die Naht gelaufen ist, die die Lippen der Leiche versiegelt, und daß sie sich in etwas gefangen hat, was wie eine Notiz aussieht, die der Leiche in den Mund gesteckt wurde.'

    menu:
        'Versuch, die Notiz herauszuziehen.' if zm1201Logic.r34954_condition():
            # a0 # r34954
            jump zm1201_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm1201Logic.r34957_condition():
            # a1 # r34957
            jump zm1201_s3

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm1201Logic.r34958_condition():
            # a2 # r34958
            jump zm1201_s4

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a3 # r34959
            jump zm1201_dispose

        'Laß die Leiche in Ruhe.':
            # a4 # r34962
            jump zm1201_dispose


# s1 # say34955
label zm1201_s1: # from 0.0
    nr 'Die Notiz hat sich mit dem Blutsaft im Mund des Zombies vermischt. Wenn du versuchen würdest, das Papier durch die Kreuzstiche hindurchzuziehen, würde es das Papier zerfetzen. Wenn du die Leiche in Stücke hacken würdest, würde die Notiz wohl ebenfalls zerstört werden. Du mußt also einen behutsamen Weg finden, die Stiche aufzulösen, bevor du die Notiz entfernst.'

    menu:
        'Schneid die Naht mit dem Skalpell durch.' if zm1201Logic.r34956_condition():
            # a5 # r34956
            $ zm1201Logic.r34956_action()
            jump zm1201_s2

        '"Hmmm. Es muß doch irgendwas geben, um diese Fäden zu durchtrennen…"' if zm1201Logic.r45122_condition():
            # a6 # r45122
            jump zm1201_dispose


# s2 # say34960
label zm1201_s2: # from 1.0
    nr 'Geschickt schneidest du die Naht durch, die den Mund der Leiche versiegelte, und der Unterkiefer sackt herab. Vorsichtig nimmst du den Zettel aus dem Mund der Leiche… Obschon sich das Papier nicht im besten Zustand befindet, scheint der Text immer noch lesbar zu sein.  ^NHINWEIS: <READSTUFF>^-'

    menu:
        'Untersuche die Leiche noch einmal.':
            # a7 # r34961
            jump zm1201_s5

        'Laß die Leiche in Ruhe.':
            # a8 # r45123
            jump zm1201_dispose


# s3 # say45124
label zm1201_s3: # from 0.1 5.0 5.1 5.2
    nr 'Die milchig-weißen Augen dieser Leiche starren dich mit leerem Blick an.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a9 # r45125
            jump zm1201_dispose


# s4 # say45126
label zm1201_s4: # from 0.2 5.3
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a10 # r45127
            jump zm1201_dispose


# s5 # say45128
label zm1201_s5: # from 2.0 # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    nr 'Die Zahl "1201" steht in Tinte auf der Stirn dieser Leiche. Sie sieht aus, als würde sie weinen, da die Tinte über die Augen, die Wangen und das Kinn hinuntergelaufen ist. Ihre Kinnlade hängt herab, und eine blutige Flüssigkeit tröpfelt ihr aus dem Mund.'

    menu:
        '"Tut mir leid, wenn ich an dir rumschnipple.Wollt nur mal sehn, was du im Mund hast."' if zm1201Logic.r45129_condition():
            # a11 # r45129
            $ zm1201Logic.r45129_action()
            jump zm1201_s3

        '"Tut mir leid, wenn ich an dir rumschnipple.Wollt nur mal sehn, was du im Mund hast."' if zm1201Logic.r45130_condition():
            # a12 # r45130
            jump zm1201_s3

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm1201Logic.r45131_condition():
            # a13 # r45131
            jump zm1201_s3

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm1201Logic.r45132_condition():
            # a14 # r45132
            jump zm1201_s4

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a15 # r45133
            jump zm1201_dispose

        'Laß die Leiche in Ruhe.':
            # a16 # r45134
            jump zm1201_dispose
