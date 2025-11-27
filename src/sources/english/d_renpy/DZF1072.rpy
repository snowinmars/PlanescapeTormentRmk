init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1072_logic import Zf1072Logic
    zf1072Logic = Zf1072Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1072.DLG
# ###


# s0 # say35114
label zf1072_s0: # - # IF ~  True()
    nr 'The smell of formaldehyde emanating from this corpse is particularly strong… it smells like it was applied recently, and with good reason: this corpse appears to be in an advanced stage of decay. Her jaw is missing, and some of the flesh has slid off her skull, revealing the number "1072" chiseled into the bone.{#zf1072_s0_}'

    menu:
        '"I think this one„s seen better days…"{#zf1072_s0_r35115}' if zf1072Logic.r35115_condition():
            # a0 # r35115
            $ zf1072Logic.r35115_action()
            jump zf1072_s1

        '"I think this one„s seen better days…"{#zf1072_s0_r35132}' if zf1072Logic.r35132_condition():
            # a1 # r35132
            jump zf1072_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zf1072_s0_r35133}' if zf1072Logic.r35133_condition():
            # a2 # r35133
            jump zf1072_s1

        'Use your Stories-Bones-Tell ability on the corpse.{#zf1072_s0_r35134}' if zf1072Logic.r35134_condition():
            # a3 # r35134
            jump zf1072_s2

        '"It was great talking to you. Farewell."{#zf1072_s0_r35139}' if zf1072Logic.r35139_condition():
            # a4 # r35139
            jump morte_s346  # EXTERN

        'Leave the corpse in peace.{#zf1072_s0_r35140}' if zf1072Logic.r35140_condition():
            # a5 # r35140
            jump morte_s346  # EXTERN

        '"It was great talking to you. Farewell."{#zf1072_s0_r35141}' if zf1072Logic.r35141_condition():
            # a6 # r35141
            jump zf1072_dispose

        'Leave the corpse in peace.{#zf1072_s0_r35142}' if zf1072Logic.r35142_condition():
            # a7 # r35142
            jump zf1072_dispose

        '"It was great talking to you. Farewell."{#zf1072_s0_r35143}' if zf1072Logic.r35143_condition():
            # a8 # r35143
            jump zf1072_dispose

        'Leave the corpse in peace.{#zf1072_s0_r35144}' if zf1072Logic.r35144_condition():
            # a9 # r35144
            jump zf1072_dispose


# s1 # say35116
label zf1072_s1: # from 0.0 0.1 0.2
    nr 'The corpse does not respond to your voice - the fact it has no jaw may have something to do with it. Either that, or it simply has nothing to say.{#zf1072_s1_}'

    menu:
        '"Farewell then."{#zf1072_s1_r35117}' if zf1072Logic.r35117_condition():
            # a10 # r35117
            jump morte_s346  # EXTERN

        '"Farewell then."{#zf1072_s1_r35130}' if zf1072Logic.r35130_condition():
            # a11 # r35130
            jump zf1072_dispose

        '"Farewell then."{#zf1072_s1_r35131}' if zf1072Logic.r35131_condition():
            # a12 # r35131
            jump zf1072_dispose


# s2 # say35135
label zf1072_s2: # from 0.3
    nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zf1072_s2_}'

    menu:
        '"Farewell then."{#zf1072_s2_r35136}' if zf1072Logic.r35136_condition():
            # a13 # r35136
            jump morte_s346  # EXTERN

        '"Farewell then."{#zf1072_s2_r35137}' if zf1072Logic.r35137_condition():
            # a14 # r35137
            jump zf1072_dispose

        '"Farewell then."{#zf1072_s2_r35138}' if zf1072Logic.r35138_condition():
            # a15 # r35138
            jump zf1072_dispose


# s3 # say35145
label zf1072_s3: # - # IF ~  False()
    nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zf1072_s3_}'

    menu:
