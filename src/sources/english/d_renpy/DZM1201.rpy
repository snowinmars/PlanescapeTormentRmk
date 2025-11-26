init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1201_logic import Zm1201Logic
    zm1201Logic = Zm1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1201.DLG
# ###


# s0 # say34953
label zm1201_s0: # - # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    nr 'The number "1201" has been inked on the forehead of this corpse, and the ink has run down its eyes, cheeks and jaw. As you follow the ink tears down the corpse„s face, you notice it has run into the stitching sealing the corpse“s lips and has caught on what looks like the corner of a note stuck in the corpse„s mouth.'

    menu:
        'Try and pull the note out.' if zm1201Logic.r34954_condition():
            # a0 # r34954
            jump zm1201_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm1201Logic.r34957_condition():
            # a1 # r34957
            jump zm1201_s3

        'Use Stories-Bones-Tell on the corpse.' if zm1201Logic.r34958_condition():
            # a2 # r34958
            jump zm1201_s4

        '"It was great talking to you. Farewell."':
            # a3 # r34959
            jump zm1201_dispose

        'Leave the corpse in peace.':
            # a4 # r34962
            jump zm1201_dispose


# s1 # say34955
label zm1201_s1: # from 0.0
    nr 'The note has mingled with the ichor in the zombie„s mouth. If you tried to pull the paper out through the cross-stitches, it would tear the paper to shreds. Hacking up the corpse to get at it looks like it will destroy the note - you“ll need to find a delicate way to remove the stitches before removing the note.'

    menu:
        'Use the scalpel to cut through the stitches.' if zm1201Logic.r34956_condition():
            # a5 # r34956
            $ zm1201Logic.r34956_action()
            jump zm1201_s2

        '"Hmmm. Perhaps there might be something around that can slice through those stitches…"' if zm1201Logic.r45122_condition():
            # a6 # r45122
            jump zm1201_dispose


# s2 # say34960
label zm1201_s2: # from 1.0
    nr 'You deftly slice through the stitches sealing the corpse„s mouth, and the jaw sags open. You carefully pull the note from the corpse“s mouth… despite the condition of the paper, the writing on it still appears legible.  ^NNOTE: <READSTUFF>^-'

    menu:
        'Examine the corpse again.':
            # a7 # r34961
            jump zm1201_s5

        'Leave the corpse in peace.':
            # a8 # r45123
            jump zm1201_dispose


# s3 # say45124
label zm1201_s3: # from 0.1 5.0 5.1 5.2
    nr 'The corpse„s milky-white eyes stare at you vacantly.'

    menu:
        'Leave the corpse in peace.':
            # a9 # r45125
            jump zm1201_dispose


# s4 # say45126
label zm1201_s4: # from 0.2 5.3
    nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the corpse in peace.':
            # a10 # r45127
            jump zm1201_dispose


# s5 # say45128
label zm1201_s5: # from 2.0 # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    nr 'The number "1201" has been inked on the forehead of this corpse, and the ink has run down across its eyes, cheeks and jaw, making it look as if it is crying. Its jaw is hanging open, and a trail of ichor is trickling from the corner of its mouth.'

    menu:
        '"Sorry about slicing those stitches… I just had to see what was in your mouth."' if zm1201Logic.r45129_condition():
            # a11 # r45129
            $ zm1201Logic.r45129_action()
            jump zm1201_s3

        '"Sorry about slicing those stitches… I just had to see what was in your mouth."' if zm1201Logic.r45130_condition():
            # a12 # r45130
            jump zm1201_s3

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm1201Logic.r45131_condition():
            # a13 # r45131
            jump zm1201_s3

        'Use Stories-Bones-Tell on the corpse.' if zm1201Logic.r45132_condition():
            # a14 # r45132
            jump zm1201_s4

        '"It was great talking to you. Farewell."':
            # a15 # r45133
            jump zm1201_dispose

        'Leave the corpse in peace.':
            # a16 # r45134
            jump zm1201_dispose
