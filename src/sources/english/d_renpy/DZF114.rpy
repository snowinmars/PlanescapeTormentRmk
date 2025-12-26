init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf114_logic import Zf114Logic
    zf114Logic = Zf114Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###


# s0 # say34986
label zf114_s0: # - # IF ~  True()
    'zf114_s0{#zf114_s0}'
    # nr 'This woman„s corpse pauses in its trudging about as you approach. You notice the number "114" is carved into her forehead. Her mouth has been sewn shut, but the threading is slowly coming loose and faint moans issue from between her lips.{#zf114_s0_1}'

    menu:
        'zf114_s0_r34987{#zf114_s0_r34987}' if zf114Logic.r34987_condition(): # '"So… doing anything later?"{#zf114_s0_r34987}'
            # a0 # r34987
            $ zf114Logic.r34987_action()
            jump zf114_s1

        'zf114_s0_r35004{#zf114_s0_r35004}' if zf114Logic.r35004_condition(): # '"So… doing anything later?"{#zf114_s0_r35004}'
            # a1 # r35004
            jump zf114_s1

        'zf114_s0_r35005{#zf114_s0_r35005}' if zf114Logic.r35005_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zf114_s0_r35005}'
            # a2 # r35005
            jump zf114_s1

        'zf114_s0_r35006{#zf114_s0_r35006}' if zf114Logic.r35006_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zf114_s0_r35006}'
            # a3 # r35006
            jump zf114_s2

        'zf114_s0_r35011{#zf114_s0_r35011}' if zf114Logic.r35011_condition(): # '"It was great talking to you. Farewell."{#zf114_s0_r35011}'
            # a4 # r35011
            jump morte_s330  # EXTERN

        'zf114_s0_r35012{#zf114_s0_r35012}' if zf114Logic.r35012_condition(): # 'Leave the corpse in peace.{#zf114_s0_r35012}'
            # a5 # r35012
            jump morte_s330  # EXTERN

        'zf114_s0_r35013{#zf114_s0_r35013}' if zf114Logic.r35013_condition(): # '"It was great talking to you. Farewell."{#zf114_s0_r35013}'
            # a6 # r35013
            jump zf114_dispose

        'zf114_s0_r35014{#zf114_s0_r35014}' if zf114Logic.r35014_condition(): # 'Leave the corpse in peace.{#zf114_s0_r35014}'
            # a7 # r35014
            jump zf114_dispose

        'zf114_s0_r35015{#zf114_s0_r35015}' if zf114Logic.r35015_condition(): # '"It was great talking to you. Farewell."{#zf114_s0_r35015}'
            # a8 # r35015
            jump zf114_dispose

        'zf114_s0_r35016{#zf114_s0_r35016}' if zf114Logic.r35016_condition(): # 'Leave the corpse in peace.{#zf114_s0_r35016}'
            # a9 # r35016
            jump zf114_dispose


# s1 # say34988
label zf114_s1: # from 0.0 0.1 0.2
    'zf114_s1{#zf114_s1}'
    # nr 'The corpse continues to stare at you.{#zf114_s1_1}'

    menu:
        'zf114_s1_r34989{#zf114_s1_r34989}' if zf114Logic.r34989_condition(): # '"Farewell then."{#zf114_s1_r34989}'
            # a10 # r34989
            jump morte_s330  # EXTERN

        'zf114_s1_r35002{#zf114_s1_r35002}' if zf114Logic.r35002_condition(): # '"Farewell then."{#zf114_s1_r35002}'
            # a11 # r35002
            jump zf114_dispose

        'zf114_s1_r35003{#zf114_s1_r35003}' if zf114Logic.r35003_condition(): # '"Farewell then."{#zf114_s1_r35003}'
            # a12 # r35003
            jump zf114_dispose


# s2 # say35007
label zf114_s2: # from 0.3
    'zf114_s2{#zf114_s2}'
    # nr 'This corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zf114_s2_1}'

    menu:
        'zf114_s2_r35008{#zf114_s2_r35008}' if zf114Logic.r35008_condition(): # '"Farewell then."{#zf114_s2_r35008}'
            # a13 # r35008
            jump morte_s330  # EXTERN

        'zf114_s2_r35009{#zf114_s2_r35009}' if zf114Logic.r35009_condition(): # '"Farewell then."{#zf114_s2_r35009}'
            # a14 # r35009
            jump zf114_dispose

        'zf114_s2_r35010{#zf114_s2_r35010}' if zf114Logic.r35010_condition(): # '"Farewell then."{#zf114_s2_r35010}'
            # a15 # r35010
            jump zf114_dispose


# s3 # say35017
label zf114_s3: # - # IF ~  False()
    'zf114_s3{#zf114_s3}'
    # nr 'This corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zf114_s3_1}'

    menu:
