init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


# s0 # say24564
label zm825_s0: # - # IF ~  True()
    nr 'This corpse„s head lolls back and forth on its shoulders… judging from the angle of the neck, it looks like this man may have been hanged. The number "825" has been painted on the side of his head.{#zm825_s0_1}'

    menu:
        '"I„m looking for a key… do you happen to have one?"{#zm825_s0_r24565}' if zm825Logic.r24565_condition():
            # a0 # r24565
            jump morte1_s31  # EXTERN

        '"I„m looking for a key… do you happen to have one?"{#zm825_s0_r24568}' if zm825Logic.r24568_condition():
            # a1 # r24568
            jump zm825_s1

        '"So… seen anything interesting going on?"{#zm825_s0_r24569}' if zm825Logic.r24569_condition():
            # a2 # r24569
            jump zm825_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm825_s0_r24570}' if zm825Logic.r24570_condition():
            # a3 # r24570
            jump zm825_s1

        'Use Stories-Bones-Tell on the corpse.{#zm825_s0_r24573}' if zm825Logic.r24573_condition():
            # a4 # r24573
            jump zm825_s2

        'Examine the corpse, see if it„s carrying a key.{#zm825_s0_r24574}' if zm825Logic.r24574_condition():
            # a5 # r24574
            jump zm825_s3

        '"It was great talking to you. Farewell."{#zm825_s0_r42308}':
            # a6 # r42308
            jump zm825_dispose

        'Leave the corpse in peace.{#zm825_s0_r42309}':
            # a7 # r42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1: # from 0.1 0.2 0.3 3.1
    nr 'The corpse stares at the ground and does not answer.{#zm825_s1_1}'

    menu:
        '"Never mind, then. Farewell."{#zm825_s1_r24567}':
            # a8 # r24567
            jump zm825_dispose

        'Leave the corpse in peace.{#zm825_s1_r42310}':
            # a9 # r42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2: # from 0.4
    nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zm825_s2_1}'

    menu:
        'Leave the corpse in peace.{#zm825_s2_r24572}':
            # a10 # r24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3: # from 0.5
    nr 'This corpse is carrying nothing… but you happen to notice its hands are heavily bandaged. The bandages might be usable if the corpse was disposed of first.{#zm825_s3_1}'

    menu:
        '"Guess you don„t have the key… you don“t happen to know which of your other corpse friends has the key out of this place?"{#zm825_s3_r42312}' if zm825Logic.r42312_condition():
            # a11 # r42312
            jump morte1_s31  # EXTERN

        '"Guess you don„t have the key… you don“t happen to know which of your other corpse friends has the key out of this place?"{#zm825_s3_r42313}' if zm825Logic.r42313_condition():
            # a12 # r42313
            jump zm825_s1

        '"It was great talking to you. Farewell."{#zm825_s3_r42314}':
            # a13 # r42314
            jump zm825_dispose

        'Leave the corpse in peace.{#zm825_s3_r42315}':
            # a14 # r42315
            jump zm825_dispose
