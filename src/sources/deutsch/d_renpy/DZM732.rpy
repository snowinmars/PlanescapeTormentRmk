init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm732_logic import Zm732Logic
    zm732Logic = Zm732Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM732.DLG
# ###


# s0 # say6529
label zm732_s0: # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    nr 'Dieser tatterigen Leiche wurden die Augen und der Mund zugenäht, und die Zahl "732" ist in ihre Augenbraue geritzt. Die Fäden, die ihre Augenhöhlen zugenäht halten, sehen extrem alt aus… Du fragst dich, ob ihre Augen vor oder nach dem Tod des Mannes zugenäht wurden.{#zm732_s0_1}'

    menu:
        '"Tut mir leid, daß ich dir das Buch weggenommen habe… Es sah einfach zu interessant aus."{#zm732_s0_r6533}' if zm732Logic.r6533_condition():
            # a0 # r6533
            $ zm732Logic.r6533_action()
            jump zm732_s1

        '"Tut mir leid, daß ich dir das Buch weggenommen habe… Es sah einfach zu interessant aus."{#zm732_s0_r6532}' if zm732Logic.r6532_condition():
            # a1 # r6532
            jump zm732_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm732_s0_r6534}' if zm732Logic.r6534_condition():
            # a2 # r6534
            jump zm732_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm732_s0_r6535}' if zm732Logic.r6535_condition():
            # a3 # r6535
            jump zm732_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm732_s0_r6536}':
            # a4 # r6536
            jump zm732_dispose

        'Laß die Leiche in Ruhe.{#zm732_s0_r6537}':
            # a5 # r6537
            jump zm732_dispose


# s1 # say6530
label zm732_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zm732_s1_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm732_s1_r6538}':
            # a6 # r6538
            jump zm732_dispose


# s2 # say6531
label zm732_s2: # from 0.3
    nr 'Die Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zm732_s2_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm732_s2_r6539}':
            # a7 # r6539
            jump zm732_dispose


# s3 # say64270
label zm732_s3: # - # IF ~  HasItem("TomeBA","ZM732")
    nr 'Dieser Tatterleiche wurden die Augen und der Mund zugenäht, und die Zahl "732" wurde ihm in die Stirn geritzt. Die Fäden, die seine Augenhöhlen verschlossen halten, sehen extrem alt aus… Du fragst dich, ob die Augen vor oder nach dem Tod des Mannes zugenäht wurden. Du erblickst ein riesiges Buch in seinen Händen, das er scheinbar irgendwohin tragen wollte.{#zm732_s3_1}'

    menu:
        'Nimm den Wälzer aus seinen Händen… vorsichtig.{#zm732_s3_r64271}':
            # a8 # r64271
            $ zm732Logic.r64271_action()
            jump zm732_s4

        'Laß die Leiche in Ruhe.{#zm732_s3_r64272}':
            # a9 # r64272
            jump zm732_dispose


# s4 # say64273
label zm732_s4: # from 3.0
    nr 'Vorsichtig nimmst du das alte Buch aus den Händen der Leiche - Sie scheint es nicht zu bemerken. Das Buch stellt sich als Buch über Zauberei und Bannsprüche heraus - Es ist mit Diagrammen und Tabellen gefüllt, die sich detailliert mit unterschiedlichen Aspekten der nekromantischen Künste befassen. Das Buch selbst ist extrem schwer; so unbeholfen der Zombie ist, er muss extrem stark sein.  ^NHINWEIS: <READSTUFF>^-{#zm732_s4_1}'

    menu:
        'Untersuche die Leiche noch einmal.{#zm732_s4_r64274}':
            # a10 # r64274
            jump zm732_s0

        'Laß die Leiche in Ruhe.{#zm732_s4_r64275}':
            # a11 # r64275
            jump zm732_dispose
