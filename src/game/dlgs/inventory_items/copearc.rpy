init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.inventory_items.CopearcLogic import (CopearcLogic)

    copearcLogic = CopearcLogic(runtime.global_state_manager)


# ###
# Original:  DLG/COPEARC.DLG
# ###


# s0 # say46723
label copearc_s0: # - # IF ~  True()
    $ copearcLogic.talk_closed()
    'copearc_s0{#copearc_s0}'
    # nr 'This copper earring looks extremely old. It looks like it was meant to be worn, but there doesn„t seem to be a hook or any means of actually attaching it to your ear. There is a series of strange grooves on the inside of the earring, however.{#copearc_s0_1}'

    menu:
        'copearc_s0_r46724{#copearc_s0_r46724}': # 'Examine the grooves.{#copearc_s0_r46724}'
            # a0 # r46724
            jump copearc_s1

        'copearc_s0_r46725{#copearc_s0_r46725}' if copearcLogic.r46725_condition(): # 'Insert your fingernail into the notch that matches where the triangle was pointing in the fanged circle you saw on zombie #79„s forehead.{#copearc_s0_r46725}'
            # a1 # r46725
            $ copearcLogic.r46725_action()
            jump copearc_s2

        'copearc_s0_r46726{#copearc_s0_r46726}': # 'Put the earring away.{#copearc_s0_r46726}'
            # a2 # r46726
            jump copearc_dispose


# s1 # say46727
label copearc_s1: # from 0.0
    'copearc_s1{#copearc_s1}'
    # nr 'The grooves are evenly spaced along the inside of the earring - upon closer examination, they remind you of small fangs. They are definitely man-made, but you can„t figure out what they were intended for.{#copearc_s1_1}'

    menu:
        'copearc_s1_r46728{#copearc_s1_r46728}' if copearcLogic.r46728_condition(): # 'Insert your fingernail into the notch that matches where the triangle was pointing in the fanged circle you saw on zombie #79„s forehead.{#copearc_s1_r46728}'
            # a3 # r46728
            $ copearcLogic.r46728_action()
            jump copearc_s2

        'copearc_s1_r46729{#copearc_s1_r46729}': # 'Put the earring away.{#copearc_s1_r46729}'
            # a4 # r46729
            jump copearc_dispose


# s2 # say46730
label copearc_s2: # from 0.1 1.0
    $ copearcLogic.talk_opened()
    'copearc_s2{#copearc_s2}'
    # nr 'You hook your fingernail into the third groove from the top and press it inwards. As you do, there is a *click* and the top of the earring snaps open. Not only can you wear the earring now, it also looks like there is a secret compartment inside the earring.{#copearc_s2_1}'

    menu:
        'copearc_s2_r46731{#copearc_s2_r46731}': # 'Shake the earring, see if anything comes out.{#copearc_s2_r46731}'
            # a5 # r46731
            jump copearc_s3


# s3 # say46732
label copearc_s3: # from 2.0
    'copearc_s3{#copearc_s3}'
    # nr 'You shake the earring, but nothing comes out. Whatever was hidden in the earring is gone now.{#copearc_s3_1}'

    menu:
        'copearc_s3_r46733{#copearc_s3_r46733}': # 'Put the earring away.{#copearc_s3_r46733}'
            # a6 # r46733
            $ copearcLogic.r46733_action()
            jump copearc_dispose
