init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


# s0 # say24564
label zm825_s0: # - # IF ~  True()
    nr 'This corpse„s head lolls back and forth on its shoulders… judging from the angle of the neck, it looks like this man may have been hanged. The number "825" has been painted on the side of his head.'

    menu:
        '"I„m looking for a key… do you happen to have one?"' if zm825Logic.r24565_condition():
            # a0 # r24565
            jump morte1_s31  # EXTERN

        '"I„m looking for a key… do you happen to have one?"' if zm825Logic.r24568_condition():
            # a1 # r24568
            jump zm825_s1

        '"So… seen anything interesting going on?"' if zm825Logic.r24569_condition():
            # a2 # r24569
            jump zm825_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm825Logic.r24570_condition():
            # a3 # r24570
            jump zm825_s1

        'Use Stories-Bones-Tell on the corpse.' if zm825Logic.r24573_condition():
            # a4 # r24573
            jump zm825_s2

        'Examine the corpse, see if it„s carrying a key.' if zm825Logic.r24574_condition():
            # a5 # r24574
            jump zm825_s3

        '"It was great talking to you. Farewell."':
            # a6 # r42308
            jump zm825_dispose

        'Leave the corpse in peace.':
            # a7 # r42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1: # from 0.1 0.2 0.3 3.1
    nr 'The corpse stares at the ground and does not answer.'

    menu:
        '"Never mind, then. Farewell."':
            # a8 # r24567
            jump zm825_dispose

        'Leave the corpse in peace.':
            # a9 # r42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2: # from 0.4
    nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the corpse in peace.':
            # a10 # r24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3: # from 0.5
    nr 'This corpse is carrying nothing… but you happen to notice its hands are heavily bandaged. The bandages might be usable if the corpse was disposed of first.'

    menu:
        '"Guess you don„t have the key… you don“t happen to know which of your other corpse friends has the key out of this place?"' if zm825Logic.r42312_condition():
            # a11 # r42312
            jump morte1_s31  # EXTERN

        '"Guess you don„t have the key… you don“t happen to know which of your other corpse friends has the key out of this place?"' if zm825Logic.r42313_condition():
            # a12 # r42313
            jump zm825_s1

        '"It was great talking to you. Farewell."':
            # a13 # r42314
            jump zm825_dispose

        'Leave the corpse in peace.':
            # a14 # r42315
            jump zm825_dispose
