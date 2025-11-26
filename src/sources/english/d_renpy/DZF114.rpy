init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf114_logic import Zf114Logic
    zf114Logic = Zf114Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###


# s0 # say34986
label zf114_s0: # - # IF ~  True()
    nr 'This woman„s corpse pauses in its trudging about as you approach. You notice the number "114" is carved into her forehead. Her mouth has been sewn shut, but the threading is slowly coming loose and faint moans issue from between her lips.'

    menu:
        '"So… doing anything later?"' if zf114Logic.r34987_condition():
            # a0 # r34987
            $ zf114Logic.r34987_action()
            jump zf114_s1

        '"So… doing anything later?"' if zf114Logic.r35004_condition():
            # a1 # r35004
            jump zf114_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zf114Logic.r35005_condition():
            # a2 # r35005
            jump zf114_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zf114Logic.r35006_condition():
            # a3 # r35006
            jump zf114_s2

        '"It was great talking to you. Farewell."' if zf114Logic.r35011_condition():
            # a4 # r35011
            jump morte_s330  # EXTERN

        'Leave the corpse in peace.' if zf114Logic.r35012_condition():
            # a5 # r35012
            jump morte_s330  # EXTERN

        '"It was great talking to you. Farewell."' if zf114Logic.r35013_condition():
            # a6 # r35013
            jump zf114_dispose

        'Leave the corpse in peace.' if zf114Logic.r35014_condition():
            # a7 # r35014
            jump zf114_dispose

        '"It was great talking to you. Farewell."' if zf114Logic.r35015_condition():
            # a8 # r35015
            jump zf114_dispose

        'Leave the corpse in peace.' if zf114Logic.r35016_condition():
            # a9 # r35016
            jump zf114_dispose


# s1 # say34988
label zf114_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.'

    menu:
        '"Farewell then."' if zf114Logic.r34989_condition():
            # a10 # r34989
            jump morte_s330  # EXTERN

        '"Farewell then."' if zf114Logic.r35002_condition():
            # a11 # r35002
            jump zf114_dispose

        '"Farewell then."' if zf114Logic.r35003_condition():
            # a12 # r35003
            jump zf114_dispose


# s2 # say35007
label zf114_s2: # from 0.3
    nr 'This corpse makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
        '"Farewell then."' if zf114Logic.r35008_condition():
            # a13 # r35008
            jump morte_s330  # EXTERN

        '"Farewell then."' if zf114Logic.r35009_condition():
            # a14 # r35009
            jump zf114_dispose

        '"Farewell then."' if zf114Logic.r35010_condition():
            # a15 # r35010
            jump zf114_dispose


# s3 # say35017
label zf114_s3: # - # IF ~  False()
    nr 'This corpse makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
