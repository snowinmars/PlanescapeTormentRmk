init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm965_logic import Zm965Logic
    zm965Logic = Zm965Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM965.DLG
# ###


# s0 # say34920
label zm965_s0: # - # IF ~  NearbyDialog("Dmorte")
    nr 'This corpse is lumbering along a triangular path. Once it reaches one of the corners of the triangle, it pauses, then turns and staggers towards the next corner. It has "965" tattooed on the side of its skull. As you approach, it halts and stares at you.{#zm965_s0_1}'

    jump morte_s477  # EXTERN


# s1 # say34922
label zm965_s1: # externs morte_s481 morte_s480 # IF ~  !NearbyDialog("Dmorte")
    nr 'This corpse is lumbering along a triangular path. Once it reaches one of the corners of the triangle, it pauses, then turns and staggers towards the next corner. It has "965" tattooed on the side of its skull. As you approach, it halts and stares at you.{#zm965_s1_1}'

    menu:
        '"So… why are you walking in a triangle?"{#zm965_s1_r34923}' if zm965Logic.r34923_condition():
            # a0 # r34923
            $ zm965Logic.r34923_action()
            jump zm965_s2

        '"So… why are you walking in a triangle?"{#zm965_s1_r45070}' if zm965Logic.r45070_condition():
            # a1 # r45070
            jump zm965_s2

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm965_s1_r45071}' if zm965Logic.r45071_condition():
            # a2 # r45071
            jump zm965_s2

        'Use Stories-Bones-Tell on the corpse.{#zm965_s1_r45072}' if zm965Logic.r45072_condition():
            # a3 # r45072
            jump zm965_s3

        '"It was great talking to you. Farewell."{#zm965_s1_r45073}':
            # a4 # r45073
            jump zm965_dispose

        'Leave the corpse in peace.{#zm965_s1_r45074}':
            # a5 # r45074
            jump zm965_dispose


# s2 # say34927
label zm965_s2: # from 1.0 1.1 1.2
    nr 'The corpse stares at you blankly.{#zm965_s2_1}'

    menu:
        'Leave the corpse in peace.{#zm965_s2_r34928}':
            # a6 # r34928
            jump zm965_dispose


# s3 # say45069
label zm965_s3: # from 1.3
    nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zm965_s3_1}'

    menu:
        'Leave the corpse in peace.{#zm965_s3_r45075}':
            # a7 # r45075
            jump zm965_dispose
