init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1445_logic import Zm1445Logic
    zm1445Logic = Zm1445Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1445.DLG
# ###


# s0 # say46756
label zm1445_s0: # - # IF ~  True()
    nr 'The flesh of this corpse is heavily pocked, its ears, the tip of its nose and some of its fingers rotted away to nothing… the man was most likely the victim of some horrid disease. The number "1445" has been tattooed upon his forehead, and his lips are tightly sewn together.'

    menu:
        '"So… seen anything interesting going on?"' if zm1445Logic.r46757_condition():
            # a0 # r46757
            $ zm1445Logic.r46757_action()
            jump zm1445_s1

        '"So… seen anything interesting going on?"' if zm1445Logic.r46760_condition():
            # a1 # r46760
            jump zm1445_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm1445Logic.r46761_condition():
            # a2 # r46761
            jump zm1445_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zm1445Logic.r46762_condition():
            # a3 # r46762
            jump zm1445_s2

        '"It was great talking to you. Farewell."':
            # a4 # r46765
            jump zm1445_dispose

        'Leave the corpse in peace.':
            # a5 # r46766
            jump zm1445_dispose


# s1 # say46758
label zm1445_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.'

    menu:
        'Leave the corpse in peace.':
            # a6 # r46759
            jump zm1445_dispose


# s2 # say46763
label zm1445_s2: # from 0.3
    nr 'The corpse makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the corpse in peace.':
            # a7 # r46764
            jump zm1445_dispose
