init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm79_logic import Zm79Logic
    zm79Logic = Zm79Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM79.DLG
# ###


# s0 # say34942
label zm79_s0: # - # IF ~  True()
    nr 'Der fleischige Kopf der Leiche wurde eindeutig irgendwann abgetrennt und hastig wieder angenäht. Die verschiedenen Nähte - alle in verschiedenen Stadien der Auflösung - scheinen darauf hinzudeuten, daß der Kopf während seiner Arbeit ständig wieder abgerissen und erneut befestigt wird. Auf der Stirn ist die Zahl "79" eingeritzt, umgeben von einem gezackten Kreis, der offenbar ein Brandzeichen ist.{#zm79_s0_}'

    menu:
        '"Na… gibt„s hier irgendwas Interessantes zu berichten?"{#zm79_s0_r34943}':
            # a0 # r34943
            $ zm79Logic.r34943_action()
            jump zm79_s1

        'Sieh dir den gezackten Kreis an.{#zm79_s0_r34946}' if zm79Logic.r34946_condition():
            # a1 # r34946
            $ zm79Logic.r34946_action()
            jump zm79_s3

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm79_s0_r34947}' if zm79Logic.r34947_condition():
            # a2 # r34947
            jump zm79_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm79_s0_r34948}' if zm79Logic.r34948_condition():
            # a3 # r34948
            jump zm79_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm79_s0_r34951}':
            # a4 # r34951
            jump zm79_dispose

        'Laß die Leiche in Ruhe.{#zm79_s0_r34952}':
            # a5 # r34952
            jump zm79_dispose


# s1 # say34944
label zm79_s1: # from 0.0 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm79_s1_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm79_s1_r34945}':
            # a6 # r34945
            jump zm79_dispose


# s2 # say34949
label zm79_s2: # from 0.3 3.0 3.1
    nr 'Die Leiche reagiert nicht. Sie scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können..{#zm79_s2_}'

    menu:
        'Laß die Leiche in Ruhe.{#zm79_s2_r34950}':
            # a7 # r34950
            jump zm79_dispose


# s3 # say64278
label zm79_s3: # from 0.1
    nr 'Der Kreis mit den Zähnen sieht aus, als wäre er vor langer Zeit in die Stirn der Leiche eingebrannt worden, wahrscheinlich, bevor der Mensch gestorben ist. Es könnte irgendein religiöses oder rituelles Symbol sein. Du bemerkst, daß einer der Winkel zwischen den inneren „Fängen“ mit einem winzigen Dreieck versehen ist, als hätte er eine bestimmte Bedeutung.{#zm79_s3_}'

    menu:
        '"Hmmm. Interessant… wie ist diese Markierung dorthin geraten, Leiche?"{#zm79_s3_r64279}' if zm79Logic.r64279_condition():
            # a8 # r64279
            $ zm79Logic.j64536_s3_r64279_action()
            jump zm79_s2

        '"Hmmm… Ich frage mich, ob der Abstand zwischen den Fängen mit den Furchen auf dem Kupferohrring übereinstimmt, den ich hier habe…"{#zm79_s3_r64280}' if zm79Logic.r64280_condition():
            # a9 # r64280
            $ zm79Logic.j64537_s3_r64280_action()
            jump zm79_s2
