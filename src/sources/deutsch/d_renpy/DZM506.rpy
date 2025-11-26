init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm506_logic import Zm506Logic
    zm506Logic = Zm506Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM506.DLG
# ###


# s0 # say45419
label zm506_s0: # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    nr 'Diese an allen Enden zusammengeflickte Leiche schlurft träge hin und her. Auf ihrer Stirn… und seitlich am Hals… und auf dem rechten Arm… ist die Zahl "506" eingenäht. Die Haut dieser zerfallenden Leiche ist mit so vielen Stichen bedeckt, daß sie wie eine bizarre Landkarte aussieht.'

    menu:
        'Schau dir die Stiche genauer an.' if zm506Logic.r45420_condition():
            # a0 # r45420
            jump zm506_s3

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm506Logic.r45421_condition():
            # a1 # r45421
            jump zm506_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm506Logic.r45422_condition():
            # a2 # r45422
            jump zm506_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a3 # r45423
            jump zm506_dispose

        'Laß die Leiche in Ruhe.':
            # a4 # r45424
            jump zm506_dispose


# s1 # say45425
label zm506_s1: # from 0.1 4.0 4.1 5.0 5.1 5.2
    nr 'Die Leiche starrt mit leerem Blick geradeaus.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a5 # r45478
            jump zm506_dispose


# s2 # say45426
label zm506_s2: # from 0.2 5.3
    nr 'Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.'

    menu:
        'Laß die Leiche in Ruhe.':
            # a6 # r45479
            jump zm506_dispose


# s3 # say45427
label zm506_s3: # from 0.0
    nr 'Die Stiche laufen über die gesamte Leiche: von den Armen über die Brust und den Hals hoch in die feuchte Masse weißen Haares. Als du dem Liniengewirr folgst, bemerkst du, daß jemand der Leiche eine Nadel in die Stirn gebohrt hat… Daran hängt ein Faden, mit dem der Schädel seitlich zusammengenäht wurde. Du könntest die Nähte aufziehen, wenn du es schaffen würdest, den Faden abzuschneiden.'

    menu:
        'Durchtrenne die Nähte mit deinem Skalpell, zieh die Nadel heraus und trenn die Naht auf.' if zm506Logic.r45480_condition():
            # a7 # r45480
            $ zm506Logic.r45480_action()
            jump zm506_s4

        '"Hmmm. Hier muß es doch irgendwas geben, womit ich den Faden durchtrennen kann… Bin gleich wieder da."' if zm506Logic.r45481_condition():
            # a8 # r45481
            jump zm506_dispose

        'Untersuche die Leiche noch einmal.':
            # a9 # r45482
            jump zm506_s0

        'Laß die Leiche in Ruhe.':
            # a10 # r45483
            jump zm506_dispose


# s4 # say45428
label zm506_s4: # from 3.0
    nr 'Du durchtrennst den Faden sauber mit dem Skalpell. Dann ziehst du die Nadel heraus und ziehst die Stiche auf. Die Haut löst sich von der Stirn ab und gibt den Blick auf den kreideweißen Schädel der Leiche frei. Darauf ist zu deinem Erstaunen die Zahl "78" eingemeißelt.'

    menu:
        '"Sieht ganz so aus, als hättest du da zwei unterschiedliche Nummern, Leiche."' if zm506Logic.r45484_condition():
            # a11 # r45484
            $ zm506Logic.r45484_action()
            jump zm506_s1

        '"Sieht ganz so aus, als hättest du da zwei unterschiedliche Nummern, Leiche."' if zm506Logic.r45496_condition():
            # a12 # r45496
            jump zm506_s1

        'Untersuche die Leiche nochmal.':
            # a13 # r50097
            jump zm506_s5

        'Laß die Leiche in Ruhe.':
            # a14 # r66889
            jump zm506_dispose


# s5 # say45429
label zm506_s5: # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    nr 'Diese an allen Ende zusammengeflickte Leiche schlurft träge zwischen zwei Totenbänken hin und her. Obwohl fast über den ganzen Körper verteilt die Zahl "506" aufgenäht wurde, ist die Haut der Stirn abgeblättert und gibt den Blick auf die - direkt in den Knochen eingemeißelte - Zahl "78" frei.'

    menu:
        '"Sieht ganz so aus, als hättest du da zwei unterschiedliche Nummern, Leiche."' if zm506Logic.r45502_condition():
            # a15 # r45502
            $ zm506Logic.r45502_action()
            jump zm506_s1

        '"Sieht ganz so aus, als hättest du da zwei unterschiedliche Nummern, Leiche."' if zm506Logic.r45508_condition():
            # a16 # r45508
            jump zm506_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."' if zm506Logic.r45510_condition():
            # a17 # r45510
            jump zm506_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.' if zm506Logic.r45512_condition():
            # a18 # r45512
            jump zm506_s2

        '"Es war nett, mit dir gesprochen zu haben. Leb wohl."':
            # a19 # r45513
            jump zm506_dispose

        'Laß die Leiche in Ruhe.':
            # a20 # r45514
            jump zm506_dispose
