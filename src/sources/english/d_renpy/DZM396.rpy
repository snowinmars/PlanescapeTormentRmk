init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm396_logic import Zm396Logic
    zm396Logic = Zm396Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM396.DLG
# ###


# s0 # say34931
label zm396_s0: # - # IF ~  HasItem("Bandage","ZM396")
    nr 'This corpse is shuffling from slab to slab, bandaging the corpses lying there. The number "396" is carved into his left temple, and his lips are stitched closed. You notice the corpse is carrying a roll of bandages in its hand… the bandages look usable.'

    menu:
        '"Mind if I borrow those bandages?"' if zm396Logic.r34932_condition():
            # a0 # r34932
            $ zm396Logic.r34932_action()
            jump zm396_s1

        '"Mind if I borrow those bandages?"' if zm396Logic.r34935_condition():
            # a1 # r34935
            jump zm396_s1

        'Try and take the bandages from the zombie.':
            # a2 # r34936
            $ zm396Logic.r34936_action()
            jump zm396_s3

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm396Logic.r34937_condition():
            # a3 # r34937
            jump zm396_s1

        'Use Stories-Bones-Tell on the corpse.' if zm396Logic.r34940_condition():
            # a4 # r34940
            jump zm396_s2

        '"It was great talking to you. Farewell."':
            # a5 # r34941
            jump zm396_dispose

        'Leave the corpse in peace.':
            # a6 # r45106
            jump zm396_dispose


# s1 # say34933
label zm396_s1: # from 0.0 0.1 0.3 4.0 4.1 4.2
    nr 'The corpse continues to stare at you.'

    menu:
        'Try and take the bandages from the zombie.' if zm396Logic.r34934_condition():
            # a7 # r34934
            $ zm396Logic.r34934_action()
            jump zm396_s3

        'Leave the corpse in peace.':
            # a8 # r45107
            jump zm396_dispose


# s2 # say34938
label zm396_s2: # from 0.4 4.3
    nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the corpse in peace.':
            # a9 # r34939
            jump zm396_dispose


# s3 # say45108
label zm396_s3: # from 0.2 1.0
    nr 'You snake your hand out and take the roll of bandages from the corpse„s hand. The corpse doesn“t even seem to notice; it continues going through the motions of bandaging the bodies.'

    menu:
        'Examine the corpse again.':
            # a10 # r45109
            jump zm396_s4

        'Leave the corpse in peace.':
            # a11 # r45110
            jump zm396_dispose


# s4 # say45111
label zm396_s4: # from 3.0 # IF ~  !HasItem("Bandage","ZM396")
    nr 'This corpse is shuffling from slab to slab, bandaging the corpses lying there. It is still carrying on about its duties, even without bandages. The number "396" is carved into his left temple, and his lips are stitched closed.'

    menu:
        '"Sorry about taking those bandages from you. It„s just that I need them more than the bodies here."' if zm396Logic.r45112_condition():
            # a12 # r45112
            $ zm396Logic.r45112_action()
            jump zm396_s1

        '"Sorry about taking those bandages from you. It„s just that I need them more than the bodies here."' if zm396Logic.r45113_condition():
            # a13 # r45113
            jump zm396_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm396Logic.r45114_condition():
            # a14 # r45114
            jump zm396_s1

        'Use Stories-Bones-Tell on the corpse.' if zm396Logic.r45115_condition():
            # a15 # r45115
            jump zm396_s2

        '"It was great talking to you. Farewell."':
            # a16 # r45116
            jump zm396_dispose

        'Leave the corpse in peace.':
            # a17 # r45117
            jump zm396_dispose
