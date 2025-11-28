init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM782.DLG
# ###


# s0 # say24708
label zm782_s0: # - # IF ~  True()
    nr 'Ten trup zatrzymuje się i beznamiętnie patrzy, kiedy doń podchodzisz. Na czole ma wyryty numer "782", a wargi zaszyte. Od ciała unosi się słaby odór formaliny.{#zm782_s0_1}'

    menu:
        '"Szukam klucza… czy ty przypadkiem go nie masz?"{#zm782_s0_r24709}' if zm782Logic.r24709_condition():
            # a0 # r24709
            jump morte1_s34  # EXTERN

        '"Szukam klucza… czy ty przypadkiem go nie masz?"{#zm782_s0_r24712}' if zm782Logic.r24712_condition():
            # a1 # r24712
            jump zm782_s1

        'Obejrzyj truposza, sprawdź, czy nie ma klucza.{#zm782_s0_r24713}':
            # a2 # r24713
            jump zm782_s2

        '"Miło było z tobą pogadać. Żegnaj."{#zm782_s0_r24714}':
            # a3 # r24714
            jump zm782_s2

        'Zostaw truposza w spokoju.{#zm782_s0_r24717}':
            # a4 # r24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1: # from 0.1
    nr 'Trup nie odpowiada.{#zm782_s1_1}'

    menu:
        '"W takim razie trudno. Żegnaj."{#zm782_s1_r24711}':
            # a5 # r24711
            jump zm782_dispose

        'Zostaw truposza w spokoju.{#zm782_s1_r42304}':
            # a6 # r42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2: # from 0.2 0.3
    nr 'Ten truposz wygląda na tego, który ma klucz. Trzyma go mocno w lewej dłoni. Kciuk i palec wskazujący zacisnęły się na nim w śmiertelnym uścisku. Chyba będziesz musiał odrąbać mu rękę, aby zdobyć ten klucz.{#zm782_s2_1}'

    menu:
        '"Potrzebuję tego klucza, trupku… nie bardzo chyba tęskno ci do tego świata."{#zm782_s2_r24716}':
            # a7 # r24716
            $ zm782Logic.r24716_action()
            jump zm782_dispose

        'Zostaw truposza w spokoju.{#zm782_s2_r42305}':
            # a8 # r42305
            jump zm782_dispose
