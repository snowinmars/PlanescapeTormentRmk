init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm985_logic import Zm985Logic
    zm985Logic = Zm985Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM985.DLG
# ###


# s0 # say45515
label zm985_s0: # - # IF ~  Global("Topple_985","GLOBAL",0)
    nr 'Diese Leiche - "985" - ist auf der Stelle stehengeblieben; nach dem Zustand ihres linken Beins zu urteilen, hat sich die Leichenfäule schon durch das Knie gefressen. Die Leiche schwankt dauernd hin und her, immer kurz davor, das Gleichgewicht zu verlieren.{#zm985_s0_1}'

    menu:
        'Gib der Leiche einen Schubs.{#zm985_s0_r45516}' if zm985Logic.r45516_condition():
            # a0 # r45516
            $ zm985Logic.r45516_action()
            jump morte_s482  # EXTERN

        'Gib der Leiche einen Schubs.{#zm985_s0_r45517}' if zm985Logic.r45517_condition():
            # a1 # r45517
            $ zm985Logic.r45517_action()
            jump zm985_s3

        'Versuche, die Leiche zu stabilisieren.{#zm985_s0_r45518}' if zm985Logic.r45518_condition():
            # a2 # r45518
            $ zm985Logic.r45518_action()
            jump zm985_s4

        'Versuche, die Leiche zu stabilisieren.{#zm985_s0_r45519}' if zm985Logic.r45519_condition():
            # a3 # r45519
            $ zm985Logic.r45519_action()
            jump zm985_s6

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm985_s0_r45520}' if zm985Logic.r45520_condition():
            # a4 # r45520
            jump zm985_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm985_s0_r45521}' if zm985Logic.r45521_condition():
            # a5 # r45521
            jump zm985_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm985_s0_r45522}':
            # a6 # r45522
            jump zm985_dispose

        'Laß die Leiche in Ruhe.{#zm985_s0_r45523}':
            # a7 # r45523
            jump zm985_dispose


# s1 # say45524
label zm985_s1: # from 0.4 5.0 5.1 5.2
    nr 'Die Leiche starrt wahrnehmungslos geradeaus. Man sieht ihr nicht an, ob sie dich gehört hat.{#zm985_s1_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm985_s1_r45525}':
            # a8 # r45525
            jump zm985_dispose


# s2 # say45526
label zm985_s2: # from 0.5 5.3
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.{#zm985_s2_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm985_s2_r45527}':
            # a9 # r45527
            jump zm985_dispose


# s3 # say45528
label zm985_s3: # from 0.1 6.0
    nr 'Im linken Bein der Leiche *knackt* es plötzlich, und sie fällt sie um wie ein abgesägter Baum. Ihr Torso prallt auf dem Straßenpflaster auf und platzt auf wie eine verfaulte Melone. Heraus läuft eine dreckige, blutige Brühe. Zu deiner Überraschung scheint niemand bemerkt zu haben, daß die Leiche umgekippt ist… Noch seltsamer ist, daß das linke Bein noch kurz aufrecht stehen bleibt, als würde es strammstehen. Als es umfällt, macht es einen *dumpfen* Schlag.{#zm985_s3_1}'

    $ zm985Logic.s3_action()
    jump zm985_s7


# s4 # say45530
label zm985_s4: # from 0.2
    nr 'Du greifst nach dem linken Arm der Leiche, um sie zu stabilisieren. Doch plötzlich schwankt sie nach rechts, so daß du im Endeffekt eher an ihr zerrst, als daß du sie ruhig hältst…{#zm985_s4_1}'

    $ zm985Logic.s4_action()
    jump morte_s482  # EXTERN


# s5 # say45531
label zm985_s5: # - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    nr 'Es scheint, als hätte jemand den linken Arm und das linke Bein der Leiche durch Ersatzteile von anderen Leichen ersetzt. Das linke Bein ist kürzer als das rechte, aber wenigstens steht sie jetzt.{#zm985_s5_1}'

    menu:
        '"Tut mir leid, daß ich dich vorhin umgeschubst habe. War keine Absicht."{#zm985_s5_r45532}' if zm985Logic.r45532_condition():
            # a10 # r45532
            $ zm985Logic.r45532_action()
            jump zm985_s1

        '"Tut mir leid, daß ich dich vorhin umgeschubst habe. War keine Absicht."{#zm985_s5_r45533}' if zm985Logic.r45533_condition():
            # a11 # r45533
            jump zm985_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm985_s5_r45534}' if zm985Logic.r45534_condition():
            # a12 # r45534
            jump zm985_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm985_s5_r45535}' if zm985Logic.r45535_condition():
            # a13 # r45535
            jump zm985_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm985_s5_r45536}':
            # a14 # r45536
            jump zm985_dispose

        'Laß die Leiche in Ruhe.{#zm985_s5_r45537}':
            # a15 # r45537
            jump zm985_dispose


# s6 # say45538
label zm985_s6: # from 0.3
    nr 'Du greifst nach dem linken Arm der Leiche, um sie zu stabilisieren. Doch plötzlich schwankt sie nach rechts, so daß du im Endeffekt eher an ihr zerrst, als daß du sie ruhig hältst…{#zm985_s6_1}'

    menu:
        '"Ah-oh…"{#zm985_s6_r45539}':
            # a16 # r45539
            $ zm985Logic.r45539_action()
            jump zm985_s3


# s7 # say64205
label zm985_s7: # from 3.0
    nr 'Als du die verwesten Überreste der Leiche betrachtest, stellst du fest, daß ihr linker Arm unversehrt zu sein scheint - er hat sich bei dem Sturz vom Körper gelöst und scheint von der Verwesung nicht betroffen zu sein, die den Rest des Körpers befallen hat.{#zm985_s7_1}'

    menu:
        '"Hmmm. Ich frage mich, ob ich für diesen Arm Verwendung hätte…"{#zm985_s7_r64206}':
            # a17 # r64206
            jump zm985_dispose
