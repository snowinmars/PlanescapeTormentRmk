init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf444_logic import Zf444Logic
    zf444Logic = Zf444Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF444.DLG
# ###


# s0 # say35210
label zf444_s0: # - # IF ~  True()
    'zf444_s0{#zf444_s0}'
    # nr 'This female corpse is in terrible shape. What seem to be hundreds of tiny bites - from rats, perhaps - pock the tough, preservative-treated skin of the body. Judging from the puckered flesh around the wounds, they were most likely inflicted before the corpse was prepared. Her lips are sewn together, and the number "444" has been stained onto her face with dark blue ink.{#zf444_s0_1}'

    menu:
        'zf444_s0_r35211{#zf444_s0_r35211}' if zf444Logic.r35211_condition(): # '"So… doing anything later?"{#zf444_s0_r35211}'
            # a0 # r35211
            $ zf444Logic.r35211_action()
            jump zf444_s1

        'zf444_s0_r35228{#zf444_s0_r35228}' if zf444Logic.r35228_condition(): # '"So… doing anything later?"{#zf444_s0_r35228}'
            # a1 # r35228
            jump zf444_s1

        'zf444_s0_r35229{#zf444_s0_r35229}' if zf444Logic.r35229_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zf444_s0_r35229}'
            # a2 # r35229
            jump zf444_s1

        'zf444_s0_r35230{#zf444_s0_r35230}' if zf444Logic.r35230_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zf444_s0_r35230}'
            # a3 # r35230
            jump zf444_s2

        'zf444_s0_r35235{#zf444_s0_r35235}' if zf444Logic.r35235_condition(): # '"It was great talking to you. Farewell."{#zf444_s0_r35235}'
            # a4 # r35235
            jump morte_s358  # EXTERN

        'zf444_s0_r35236{#zf444_s0_r35236}' if zf444Logic.r35236_condition(): # 'Leave the corpse in peace.{#zf444_s0_r35236}'
            # a5 # r35236
            jump morte_s358  # EXTERN

        'zf444_s0_r35237{#zf444_s0_r35237}' if zf444Logic.r35237_condition(): # '"It was great talking to you. Farewell."{#zf444_s0_r35237}'
            # a6 # r35237
            jump zf444_dispose

        'zf444_s0_r35238{#zf444_s0_r35238}' if zf444Logic.r35238_condition(): # 'Leave the corpse in peace.{#zf444_s0_r35238}'
            # a7 # r35238
            jump zf444_dispose

        'zf444_s0_r35239{#zf444_s0_r35239}' if zf444Logic.r35239_condition(): # '"It was great talking to you. Farewell."{#zf444_s0_r35239}'
            # a8 # r35239
            jump zf444_dispose

        'zf444_s0_r35240{#zf444_s0_r35240}' if zf444Logic.r35240_condition(): # 'Leave the corpse in peace.{#zf444_s0_r35240}'
            # a9 # r35240
            jump zf444_dispose


# s1 # say35212
label zf444_s1: # from 0.0 0.1 0.2
    'zf444_s1{#zf444_s1}'
    # nr 'The corpse continues to stare at you.{#zf444_s1_1}'

    menu:
        'zf444_s1_r35213{#zf444_s1_r35213}' if zf444Logic.r35213_condition(): # '"Farewell then."{#zf444_s1_r35213}'
            # a10 # r35213
            jump morte_s358  # EXTERN

        'zf444_s1_r35226{#zf444_s1_r35226}' if zf444Logic.r35226_condition(): # '"Farewell then."{#zf444_s1_r35226}'
            # a11 # r35226
            jump zf444_dispose

        'zf444_s1_r35227{#zf444_s1_r35227}' if zf444Logic.r35227_condition(): # '"Farewell then."{#zf444_s1_r35227}'
            # a12 # r35227
            jump zf444_dispose


# s2 # say35231
label zf444_s2: # from 0.3
    'zf444_s2{#zf444_s2}'
    # nr 'This corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zf444_s2_1}'

    menu:
        'zf444_s2_r35232{#zf444_s2_r35232}' if zf444Logic.r35232_condition(): # '"Farewell then."{#zf444_s2_r35232}'
            # a13 # r35232
            jump morte_s358  # EXTERN

        'zf444_s2_r35233{#zf444_s2_r35233}' if zf444Logic.r35233_condition(): # '"Farewell then."{#zf444_s2_r35233}'
            # a14 # r35233
            jump zf444_dispose

        'zf444_s2_r35234{#zf444_s2_r35234}' if zf444Logic.r35234_condition(): # '"Farewell then."{#zf444_s2_r35234}'
            # a15 # r35234
            jump zf444_dispose


# s3 # say35241
label zf444_s3: # - # IF ~  False()
    'zf444_s3{#zf444_s3}'
    # nr 'This corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zf444_s3_1}'

    menu:
