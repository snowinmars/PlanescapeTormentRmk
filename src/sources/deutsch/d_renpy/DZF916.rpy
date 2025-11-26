init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf916_logic import Zf916Logic
    zf916Logic = Zf916Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF916.DLG
# ###


# s0 # say24719
label zf916_s0: # - # IF ~  True()
    nr 'Die weibliche Leiche starrt dich aus leeren Augen an. Die Zahl "916" ist in ihre Stirn eingraviert, und ihre Lippen wurden zugenäht. Ein schwacher Geruch von Formaldehyd geht von ihrem Körper aus.'

    menu:
        '"Sag mal… hast du nachher schon was vor?"' if zf916Logic.r24720_condition():
            # a0 # r24720
            $ zf916Logic.r24720_action()
            jump zf916_s1

        '"Na… hast du nachher schon was vor?"' if zf916Logic.r24737_condition():
            # a1 # r24737
            jump zf916_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zf916Logic.r24738_condition():
            # a2 # r24738
            jump zf916_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zf916Logic.r24739_condition():
            # a3 # r24739
            jump zf916_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."' if zf916Logic.r24744_condition():
            # a4 # r24744
            jump morte_s46  # EXTERN

        'Laß die Leiche in Ruhe.' if zf916Logic.r24745_condition():
            # a5 # r24745
            jump morte_s46  # EXTERN

        'Danke für die anregende Unterhaltung. Leb wohl.' if zf916Logic.r24746_condition():
            # a6 # r24746
            jump zf916_dispose

        'Laß die Leiche in Ruhe.' if zf916Logic.r24747_condition():
            # a7 # r24747
            jump zf916_dispose

        'Es war nett, sich mit dir zu unterhalten. Leb wohl.' if zf916Logic.r24748_condition():
            # a8 # r24748
            jump zf916_dispose

        'Laß die Leiche in Ruhe.' if zf916Logic.r24749_condition():
            # a9 # r24749
            jump zf916_dispose


# s1 # say24721
label zf916_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.'

    menu:
        '"Dann leb wohl."' if zf916Logic.r24722_condition():
            # a10 # r24722
            jump morte_s46  # EXTERN

        '"Dann leb wohl."' if zf916Logic.r24735_condition():
            # a11 # r24735
            jump zf916_dispose

        '"Dann leb wohl."' if zf916Logic.r24736_condition():
            # a12 # r24736
            jump zf916_dispose


# s2 # say24740
label zf916_s2: # from 0.3
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.'

    menu:
        '"Dann leb wohl."' if zf916Logic.r24741_condition():
            # a13 # r24741
            jump morte_s46  # EXTERN

        '"Dann leb wohl."' if zf916Logic.r24742_condition():
            # a14 # r24742
            jump zf916_dispose

        '"Dann leb wohl."' if zf916Logic.r24743_condition():
            # a15 # r24743
            jump zf916_dispose


# s3 # say24750
label zf916_s3: # - # IF ~  False()
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.'

    menu:
