init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm506_logic import Zm506Logic
    zm506Logic = Zm506Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM506.DLG
# ###


# s0 # say45419
label zm506_s0: # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    nr 'Diese an allen Enden zusammengeflickte Leiche schlurft träge hin und her. Auf ihrer Stirn… und seitlich am Hals… und auf dem rechten Arm… ist die Zahl "506" eingenäht. Die Haut dieser zerfallenden Leiche ist mit so vielen Stichen bedeckt, daß sie wie eine bizarre Landkarte aussieht.{#zm506_s0_1}'

    menu:
        'Schau dir die Stiche genauer an.{#zm506_s0_r45420}' if zm506Logic.r45420_condition():
            # a0 # r45420
            jump zm506_s3

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm506_s0_r45421}' if zm506Logic.r45421_condition():
            # a1 # r45421
            jump zm506_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm506_s0_r45422}' if zm506Logic.r45422_condition():
            # a2 # r45422
            jump zm506_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm506_s0_r45423}':
            # a3 # r45423
            jump zm506_dispose

        'Laß die Leiche in Ruhe.{#zm506_s0_r45424}':
            # a4 # r45424
            jump zm506_dispose


# s1 # say45425
label zm506_s1: # from 0.1 4.0 4.1 5.0 5.1 5.2
    nr 'Die Leiche starrt mit leerem Blick geradeaus.{#zm506_s1_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm506_s1_r45478}':
            # a5 # r45478
            jump zm506_dispose


# s2 # say45426
label zm506_s2: # from 0.2 5.3
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.{#zm506_s2_1}'

    menu:
        'Laß die Leiche in Ruhe.{#zm506_s2_r45479}':
            # a6 # r45479
            jump zm506_dispose


# s3 # say45427
label zm506_s3: # from 0.0
    nr 'Die Stiche laufen über die gesamte Leiche: von den Armen über die Brust und den Hals hoch in die feuchte Masse weißen Haares. Als du dem Liniengewirr folgst, bemerkst du, daß jemand der Leiche eine Nadel in die Stirn gebohrt hat… Daran hängt ein Faden, mit dem der Schädel seitlich zusammengenäht wurde. Du könntest die Nähte aufziehen, wenn du es schaffen würdest, den Faden abzuschneiden.{#zm506_s3_1}'

    menu:
        'Durchtrenne die Nähte mit deinem Skalpell, zieh die Nadel heraus und trenn die Naht auf.{#zm506_s3_r45480}' if zm506Logic.r45480_condition():
            # a7 # r45480
            $ zm506Logic.r45480_action()
            jump zm506_s4

        '"Hmmm. Hier muß es doch irgendwas geben, womit ich den Faden durchtrennen kann… Bin gleich wieder da."{#zm506_s3_r45481}' if zm506Logic.r45481_condition():
            # a8 # r45481
            jump zm506_dispose

        'Untersuche die Leiche noch einmal.{#zm506_s3_r45482}':
            # a9 # r45482
            jump zm506_s0

        'Laß die Leiche in Ruhe.{#zm506_s3_r45483}':
            # a10 # r45483
            jump zm506_dispose


# s4 # say45428
label zm506_s4: # from 3.0
    nr 'Du durchtrennst den Faden sauber mit dem Skalpell. Dann ziehst du die Nadel heraus und ziehst die Stiche auf. Die Haut löst sich von der Stirn ab und gibt den Blick auf den kreideweißen Schädel der Leiche frei. Darauf ist zu deinem Erstaunen die Zahl "78" eingemeißelt.{#zm506_s4_1}'

    menu:
        '"Sieht ganz so aus, als hättest du da zwei unterschiedliche Nummern, Leiche."{#zm506_s4_r45484}' if zm506Logic.r45484_condition():
            # a11 # r45484
            $ zm506Logic.r45484_action()
            jump zm506_s1

        '"Sieht ganz so aus, als hättest du da zwei unterschiedliche Nummern, Leiche."{#zm506_s4_r45496}' if zm506Logic.r45496_condition():
            # a12 # r45496
            jump zm506_s1

        'Untersuche die Leiche nochmal.{#zm506_s4_r50097}':
            # a13 # r50097
            jump zm506_s5

        'Laß die Leiche in Ruhe.{#zm506_s4_r66889}':
            # a14 # r66889
            jump zm506_dispose


# s5 # say45429
label zm506_s5: # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    nr 'Diese an allen Ende zusammengeflickte Leiche schlurft träge zwischen zwei Totenbänken hin und her. Obwohl fast über den ganzen Körper verteilt die Zahl "506" aufgenäht wurde, ist die Haut der Stirn abgeblättert und gibt den Blick auf die - direkt in den Knochen eingemeißelte - Zahl "78" frei.{#zm506_s5_1}'

    menu:
        '"Sieht ganz so aus, als hättest du da zwei unterschiedliche Nummern, Leiche."{#zm506_s5_r45502}' if zm506Logic.r45502_condition():
            # a15 # r45502
            $ zm506Logic.r45502_action()
            jump zm506_s1

        '"Sieht ganz so aus, als hättest du da zwei unterschiedliche Nummern, Leiche."{#zm506_s5_r45508}' if zm506Logic.r45508_condition():
            # a16 # r45508
            jump zm506_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zm506_s5_r45510}' if zm506Logic.r45510_condition():
            # a17 # r45510
            jump zm506_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zm506_s5_r45512}' if zm506Logic.r45512_condition():
            # a18 # r45512
            jump zm506_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."{#zm506_s5_r45513}':
            # a19 # r45513
            jump zm506_dispose

        'Laß die Leiche in Ruhe.{#zm506_s5_r45514}':
            # a20 # r45514
            jump zm506_dispose
