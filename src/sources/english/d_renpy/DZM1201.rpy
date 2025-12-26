init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1201_logic import Zm1201Logic
    zm1201Logic = Zm1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1201.DLG
# ###


# s0 # say34953
label zm1201_s0: # - # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    'zm1201_s0{#zm1201_s0}'
    # nr 'The number "1201" has been inked on the forehead of this corpse, and the ink has run down its eyes, cheeks and jaw. As you follow the ink tears down the corpse„s face, you notice it has run into the stitching sealing the corpse“s lips and has caught on what looks like the corner of a note stuck in the corpse„s mouth.{#zm1201_s0_1}'

    menu:
        'zm1201_s0_r34954{#zm1201_s0_r34954}' if zm1201Logic.r34954_condition(): # 'Try and pull the note out.{#zm1201_s0_r34954}'
            # a0 # r34954
            jump zm1201_s1

        'zm1201_s0_r34957{#zm1201_s0_r34957}' if zm1201Logic.r34957_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm1201_s0_r34957}'
            # a1 # r34957
            jump zm1201_s3

        'zm1201_s0_r34958{#zm1201_s0_r34958}' if zm1201Logic.r34958_condition(): # 'Use Stories-Bones-Tell on the corpse.{#zm1201_s0_r34958}'
            # a2 # r34958
            jump zm1201_s4

        'zm1201_s0_r34959{#zm1201_s0_r34959}': # '"It was great talking to you. Farewell."{#zm1201_s0_r34959}'
            # a3 # r34959
            jump zm1201_dispose

        'zm1201_s0_r34962{#zm1201_s0_r34962}': # 'Leave the corpse in peace.{#zm1201_s0_r34962}'
            # a4 # r34962
            jump zm1201_dispose


# s1 # say34955
label zm1201_s1: # from 0.0
    'zm1201_s1{#zm1201_s1}'
    # nr 'The note has mingled with the ichor in the zombie„s mouth. If you tried to pull the paper out through the cross-stitches, it would tear the paper to shreds. Hacking up the corpse to get at it looks like it will destroy the note - you“ll need to find a delicate way to remove the stitches before removing the note.{#zm1201_s1_1}'

    menu:
        'zm1201_s1_r34956{#zm1201_s1_r34956}' if zm1201Logic.r34956_condition(): # 'Use the scalpel to cut through the stitches.{#zm1201_s1_r34956}'
            # a5 # r34956
            $ zm1201Logic.r34956_action()
            jump zm1201_s2

        'zm1201_s1_r45122{#zm1201_s1_r45122}' if zm1201Logic.r45122_condition(): # '"Hmmm. Perhaps there might be something around that can slice through those stitches…"{#zm1201_s1_r45122}'
            # a6 # r45122
            jump zm1201_dispose


# s2 # say34960
label zm1201_s2: # from 1.0
    'zm1201_s2{#zm1201_s2}'
    # nr 'You deftly slice through the stitches sealing the corpse„s mouth, and the jaw sags open. You carefully pull the note from the corpse“s mouth… despite the condition of the paper, the writing on it still appears legible.  ^NNOTE: <READSTUFF>^-{#zm1201_s2_1}'

    menu:
        'zm1201_s2_r34961{#zm1201_s2_r34961}': # 'Examine the corpse again.{#zm1201_s2_r34961}'
            # a7 # r34961
            jump zm1201_s5

        'zm1201_s2_r45123{#zm1201_s2_r45123}': # 'Leave the corpse in peace.{#zm1201_s2_r45123}'
            # a8 # r45123
            jump zm1201_dispose


# s3 # say45124
label zm1201_s3: # from 0.1 5.0 5.1 5.2
    'zm1201_s3{#zm1201_s3}'
    # nr 'The corpse„s milky-white eyes stare at you vacantly.{#zm1201_s3_1}'

    menu:
        'zm1201_s3_r45125{#zm1201_s3_r45125}': # 'Leave the corpse in peace.{#zm1201_s3_r45125}'
            # a9 # r45125
            jump zm1201_dispose


# s4 # say45126
label zm1201_s4: # from 0.2 5.3
    'zm1201_s4{#zm1201_s4}'
    # nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zm1201_s4_1}'

    menu:
        'zm1201_s4_r45127{#zm1201_s4_r45127}': # 'Leave the corpse in peace.{#zm1201_s4_r45127}'
            # a10 # r45127
            jump zm1201_dispose


# s5 # say45128
label zm1201_s5: # from 2.0 # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    'zm1201_s5{#zm1201_s5}'
    # nr 'The number "1201" has been inked on the forehead of this corpse, and the ink has run down across its eyes, cheeks and jaw, making it look as if it is crying. Its jaw is hanging open, and a trail of ichor is trickling from the corner of its mouth.{#zm1201_s5_1}'

    menu:
        'zm1201_s5_r45129{#zm1201_s5_r45129}' if zm1201Logic.r45129_condition(): # '"Sorry about slicing those stitches… I just had to see what was in your mouth."{#zm1201_s5_r45129}'
            # a11 # r45129
            $ zm1201Logic.r45129_action()
            jump zm1201_s3

        'zm1201_s5_r45130{#zm1201_s5_r45130}' if zm1201Logic.r45130_condition(): # '"Sorry about slicing those stitches… I just had to see what was in your mouth."{#zm1201_s5_r45130}'
            # a12 # r45130
            jump zm1201_s3

        'zm1201_s5_r45131{#zm1201_s5_r45131}' if zm1201Logic.r45131_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm1201_s5_r45131}'
            # a13 # r45131
            jump zm1201_s3

        'zm1201_s5_r45132{#zm1201_s5_r45132}' if zm1201Logic.r45132_condition(): # 'Use Stories-Bones-Tell on the corpse.{#zm1201_s5_r45132}'
            # a14 # r45132
            jump zm1201_s4

        'zm1201_s5_r45133{#zm1201_s5_r45133}': # '"It was great talking to you. Farewell."{#zm1201_s5_r45133}'
            # a15 # r45133
            jump zm1201_dispose

        'zm1201_s5_r45134{#zm1201_s5_r45134}': # 'Leave the corpse in peace.{#zm1201_s5_r45134}'
            # a16 # r45134
            jump zm1201_dispose
