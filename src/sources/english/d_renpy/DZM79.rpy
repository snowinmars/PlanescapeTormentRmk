init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm79_logic import Zm79Logic
    zm79Logic = Zm79Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM79.DLG
# ###


# s0 # say34942
label zm79_s0: # - # IF ~  True()
    nr 'The corpse„s meaty head was clearly severed at some point and hastily sewn back on. Several different sets of stitching - all in various states of unraveling - seem to indicate that the head is constantly being knocked back off and reattached during the course of its work. A number - "79" - has been cut into its temple, circumscribed by a fanged circle that appears to have been branded on its forehead.{#zm79_s0_1}'

    menu:
        '"So… seen anything interesting going on?"{#zm79_s0_r34943}':
            # a0 # r34943
            $ zm79Logic.r34943_action()
            jump zm79_s1

        'Examine the fanged circle.{#zm79_s0_r34946}' if zm79Logic.r34946_condition():
            # a1 # r34946
            $ zm79Logic.r34946_action()
            jump zm79_s3

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm79_s0_r34947}' if zm79Logic.r34947_condition():
            # a2 # r34947
            jump zm79_s1

        'Use your Stories-Bones-Tell ability on the corpse.{#zm79_s0_r34948}' if zm79Logic.r34948_condition():
            # a3 # r34948
            jump zm79_s2

        '"It was great talking to you. Farewell."{#zm79_s0_r34951}':
            # a4 # r34951
            jump zm79_dispose

        'Leave the corpse in peace.{#zm79_s0_r34952}':
            # a5 # r34952
            jump zm79_dispose


# s1 # say34944
label zm79_s1: # from 0.0 0.2
    nr 'The corpse continues to stare at you.{#zm79_s1_1}'

    menu:
        'Leave the corpse in peace.{#zm79_s1_r34945}':
            # a6 # r34945
            jump zm79_dispose


# s2 # say34949
label zm79_s2: # from 0.3 3.0 3.1
    nr 'The corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zm79_s2_1}'

    menu:
        'Leave the corpse in peace.{#zm79_s2_r34950}':
            # a7 # r34950
            jump zm79_dispose


# s3 # say64278
label zm79_s3: # from 0.1
    nr 'The fanged circle looks like it was branded on the corpse„s forehead long ago, presumably before it died. It might be a religious icon of some sort, or a rite of passage. You notice that one of the recesses between the inner “fangs„ has a small triangle within it, as if it has some special significance.{#zm79_s3_1}'

    menu:
        '"Hmmm. Interesting… how did that mark get there, corpse?"{#zm79_s3_r64279}' if zm79Logic.r64279_condition():
            # a8 # r64279
            $ zm79Logic.j64536_s3_r64279_action()
            jump zm79_s2

        '"Hmmm… I wonder if the space between the fangs match the grooves on this copper earring I have…"{#zm79_s3_r64280}' if zm79Logic.r64280_condition():
            # a9 # r64280
            $ zm79Logic.j64537_s3_r64280_action()
            jump zm79_s2
