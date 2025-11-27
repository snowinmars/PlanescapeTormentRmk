init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM782.DLG
# ###


# s0 # say24708
label zm782_s0: # - # IF ~  True()
    nr 'This corpse stops and stares blankly at you as you approach. The number "782" is carved into his forehead, and his lips have been stitched closed. The faint smell of formaldehyde emanates from the body.{#zm782_s0_}'

    menu:
        '"I„m looking for a key… do you happen to have one?"{#zm782_s0_r24709}' if zm782Logic.r24709_condition():
            # a0 # r24709
            jump morte1_s34  # EXTERN

        '"I„m looking for a key… do you happen to have one?"{#zm782_s0_r24712}' if zm782Logic.r24712_condition():
            # a1 # r24712
            jump zm782_s1

        'Examine the corpse, see if it„s carrying a key.{#zm782_s0_r24713}':
            # a2 # r24713
            jump zm782_s2

        '"It was great talking to you. Farewell."{#zm782_s0_r24714}':
            # a3 # r24714
            jump zm782_s2

        'Leave the corpse in peace.{#zm782_s0_r24717}':
            # a4 # r24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1: # from 0.1
    nr 'The corpse makes no response.{#zm782_s1_}'

    menu:
        '"Never mind, then. Farewell."{#zm782_s1_r24711}':
            # a5 # r24711
            jump zm782_dispose

        'Leave the corpse in peace.{#zm782_s1_r42304}':
            # a6 # r42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2: # from 0.2 0.3
    nr 'This corpse looks like the one with the key. It is holding it tightly in its left hand, its thumb and forefinger locked around it in a death grip. It looks like you„ll need to hack the corpse“s hand off to free the key.{#zm782_s2_}'

    menu:
        '"I need that key, corpse… looks like you„re not long for this world."{#zm782_s2_r24716}':
            # a7 # r24716
            $ zm782Logic.r24716_action()
            jump zm782_dispose

        'Leave the corpse in peace.{#zm782_s2_r42305}':
            # a8 # r42305
            jump zm782_dispose
