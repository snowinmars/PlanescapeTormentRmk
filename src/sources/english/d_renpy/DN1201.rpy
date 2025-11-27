init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.n1201_logic import N1201Logic
    n1201Logic = N1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DN1201.DLG
# ###


# s0 # say44993
label n1201_s0: # from 1.6 3.0 # IF ~  True()
    nr 'This foul-smelling note has a strange looking diagram inscribed beneath the writing. It looks as if it„s instructing you to fold the corners of the note so their points touch the center. There is a series of strange marks on each corner - one mark on the upper right, two marks on the lower right, three marks on the lower left, and no marks on the upper left.{#n1201_s0_}'

    menu:
        'Fold the upper right into the center.{#n1201_s0_r44994}':
            # a0 # r44994
            $ n1201Logic.r44994_action()
            jump n1201_s1

        'Fold the lower right into the center.{#n1201_s0_r44995}':
            # a1 # r44995
            $ n1201Logic.r44995_action()
            jump n1201_s1

        'Fold the lower left into the center.{#n1201_s0_r44996}':
            # a2 # r44996
            $ n1201Logic.r44996_action()
            jump n1201_s1

        'Fold the upper left into the center.{#n1201_s0_r44997}':
            # a3 # r44997
            $ n1201Logic.r44997_action()
            jump n1201_s1

        'Leave the note alone.{#n1201_s0_r44998}':
            # a4 # r44998
            $ n1201Logic.r44998_action()
            jump n1201_dispose


# s1 # say44999
label n1201_s1: # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    nr 'You fold the corner inwards so its point touches the center.{#n1201_s1_}'

    menu:
        'Fold the upper right into the center.{#n1201_s1_r45000}' if n1201Logic.r45000_condition():
            # a5 # r45000
            $ n1201Logic.r45000_action()
            jump n1201_s1

        'Fold the lower right into the center.{#n1201_s1_r45001}' if n1201Logic.r45001_condition():
            # a6 # r45001
            $ n1201Logic.r45001_action()
            jump n1201_s1

        'Fold the lower right into the center.{#n1201_s1_r45002}' if n1201Logic.r45002_condition():
            # a7 # r45002
            $ n1201Logic.r45002_action()
            jump n1201_s1

        'Fold the lower left into the center.{#n1201_s1_r45003}' if n1201Logic.r45003_condition():
            # a8 # r45003
            $ n1201Logic.r45003_action()
            jump n1201_s1

        'Fold the upper left into the center.{#n1201_s1_r45004}' if n1201Logic.r45004_condition():
            # a9 # r45004
            $ n1201Logic.r45004_action()
            jump n1201_s1

        'Fold the upper left into the center.{#n1201_s1_r45005}' if n1201Logic.r45005_condition():
            # a10 # r45005
            jump n1201_s2

        'Unfold the note, start again.{#n1201_s1_r45006}':
            # a11 # r45006
            $ n1201Logic.r45006_action()
            jump n1201_s0

        'Unfold the note and leave it alone.{#n1201_s1_r45008}':
            # a12 # r45008
            $ n1201Logic.r45008_action()
            jump n1201_dispose


# s2 # say45015
label n1201_s2: # from 1.5
    nr 'As you fold the upper left inward to the center, you watch as the upper right unfolds by itself, resuming its normal position.{#n1201_s2_}'

    menu:
        'Fold the upper right back into the center.{#n1201_s2_r45016}':
            # a13 # r45016
            jump n1201_s4

        'Fold the lower left corner inwards.{#n1201_s2_r45017}':
            # a14 # r45017
            $ n1201Logic.r45017_action()
            jump n1201_s3

        'Unfold the note and leave it alone.{#n1201_s2_r45018}':
            # a15 # r45018
            $ n1201Logic.r45018_action()
            jump n1201_dispose


# s3 # say45019
label n1201_s3: # from 2.1
    nr 'As you fold the lower left corner inwards, it stays for a moment, then the other two corners unfold outwards. Nothing happens.{#n1201_s3_}'

    menu:
        'Examine the note again.{#n1201_s3_r45020}':
            # a16 # r45020
            jump n1201_s0

        'Put the note away.{#n1201_s3_r45021}':
            # a17 # r45021
            jump n1201_dispose


# s4 # say45022
label n1201_s4: # from 2.0
    nr 'As you fold the upper right corner back to the center, the lower left corner mirrors the action, until all the corners touch in the center. You watch for a moment, and the corners of the paper raise up, turning the note into a small four-sided paper pyramid.{#n1201_s4_}'

    menu:
        'Open the sides of the pyramid.{#n1201_s4_r45023}':
            # a18 # r45023
            $ n1201Logic.r45023_action()
            jump n1201_s5


# s5 # say45024
label n1201_s5: # from 4.0
    nr 'You peel back the sides of the pyramid, and the paper disintegrates to dust. Inside is a small triangle-shaped earring. It catches the light and gleams brightly.{#n1201_s5_}'

    menu:
        'Take the triangle earring…{#n1201_s5_r45025}':
            # a19 # r45025
            $ n1201Logic.r45025_action()
            jump n1201_dispose
