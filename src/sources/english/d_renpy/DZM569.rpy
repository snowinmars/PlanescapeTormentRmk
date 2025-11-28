init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm569_logic import Zm569Logic
    zm569Logic = Zm569Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM569.DLG
# ###


# s0 # say24575
label zm569_s0: # - # IF ~  True()
    nr 'This shambling corpse looks like it has been dead for several years. The skin along its forehead has peeled back, revealing its chalk-white skull. Someone has chiseled the number "569" into the exposed bone.{#zm569_s0_1}'

    menu:
        '"I„m looking for a key… do you happen to have one?"{#zm569_s0_r24576}' if zm569Logic.r24576_condition():
            # a0 # r24576
            jump morte1_s31  # EXTERN

        '"I„m looking for a key… do you happen to have one?"{#zm569_s0_r24579}' if zm569Logic.r24579_condition():
            # a1 # r24579
            jump zm569_s1

        '"So… seen anything interesting going on?"{#zm569_s0_r24580}' if zm569Logic.r24580_condition():
            # a2 # r24580
            jump zm569_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm569_s0_r24581}' if zm569Logic.r24581_condition():
            # a3 # r24581
            jump zm569_s1

        'Use Stories-Bones-Tell on the corpse.{#zm569_s0_r24584}' if zm569Logic.r24584_condition():
            # a4 # r24584
            jump zm569_s2

        'Examine the corpse, see if it„s carrying a key.{#zm569_s0_r24585}' if zm569Logic.r24585_condition():
            # a5 # r24585
            jump zm569_s3

        '"It was great talking to you. Farewell."{#zm569_s0_r42290}':
            # a6 # r42290
            jump zm569_dispose

        'Leave the corpse in peace.{#zm569_s0_r42291}':
            # a7 # r42291
            jump zm569_dispose


# s1 # say24577
label zm569_s1: # from 0.1 0.2 0.3 3.1
    nr 'The corpse stares at you in silence.{#zm569_s1_1}'

    menu:
        '"Never mind, then. Farewell."{#zm569_s1_r24578}':
            # a8 # r24578
            jump zm569_dispose

        'Leave the corpse in peace.{#zm569_s1_r42292}':
            # a9 # r42292
            jump zm569_dispose


# s2 # say24582
label zm569_s2: # from 0.4
    nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zm569_s2_1}'

    menu:
        'Leave the corpse in peace.{#zm569_s2_r24583}':
            # a10 # r24583
            jump zm569_dispose


# s3 # say42293
label zm569_s3: # from 0.5
    nr 'This corpse doesn„t appear to be carrying a key… and it doesn“t look like it would be able to use one if it did. Its fingers are broken, as if someone smashed them with a hammer. You do happen to notice that its left shoulder is heavily bandaged… the bandages might be usable if the corpse was disposed of first.{#zm569_s3_1}'

    menu:
        '"Guess you don„t have it… you don“t happen to know which of your other corpse friends has the key out of this place?"{#zm569_s3_r42294}' if zm569Logic.r42294_condition():
            # a11 # r42294
            jump morte1_s31  # EXTERN

        '"Guess you don„t have it… you don“t happen to know which of your other corpse friends has the key out of this place?"{#zm569_s3_r42295}' if zm569Logic.r42295_condition():
            # a12 # r42295
            jump zm569_s1

        '"It was great talking to you. Farewell."{#zm569_s3_r42296}':
            # a13 # r42296
            jump zm569_dispose

        'Leave the corpse in peace.{#zm569_s3_r42297}':
            # a14 # r42297
            jump zm569_dispose
