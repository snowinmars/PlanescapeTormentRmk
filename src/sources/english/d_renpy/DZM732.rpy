init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm732_logic import Zm732Logic
    zm732Logic = Zm732Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM732.DLG
# ###


# s0 # say6529
label zm732_s0: # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    'zm732_s0{#zm732_s0}'
    # nr 'This doddering corpse has had its eyes sewn shut as well as its mouth, and the number "732" is carved into its brow. The threadwork that keeps its ocular cavities sealed looks extremely old… you wonder if the eyes were sewn shut before or after the man„s death.{#zm732_s0_1}'

    menu:
        'zm732_s0_r6533{#zm732_s0_r6533}' if zm732Logic.r6533_condition(): # '"Sorry about taking that book from you… it just looked too interesting to pass up."{#zm732_s0_r6533}'
            # a0 # r6533
            $ zm732Logic.r6533_action()
            jump zm732_s1

        'zm732_s0_r6532{#zm732_s0_r6532}' if zm732Logic.r6532_condition(): # '"Sorry about taking that book from you… it just looked too interesting to pass up."{#zm732_s0_r6532}'
            # a1 # r6532
            jump zm732_s1

        'zm732_s0_r6534{#zm732_s0_r6534}' if zm732Logic.r6534_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm732_s0_r6534}'
            # a2 # r6534
            jump zm732_s1

        'zm732_s0_r6535{#zm732_s0_r6535}' if zm732Logic.r6535_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm732_s0_r6535}'
            # a3 # r6535
            jump zm732_s2

        'zm732_s0_r6536{#zm732_s0_r6536}': # '"It was great talking to you. Farewell."{#zm732_s0_r6536}'
            # a4 # r6536
            jump zm732_dispose

        'zm732_s0_r6537{#zm732_s0_r6537}': # 'Leave the corpse in peace.{#zm732_s0_r6537}'
            # a5 # r6537
            jump zm732_dispose


# s1 # say6530
label zm732_s1: # from 0.0 0.1 0.2
    'zm732_s1{#zm732_s1}'
    # nr 'The corpse continues to stare at you.{#zm732_s1_1}'

    menu:
        'zm732_s1_r6538{#zm732_s1_r6538}': # 'Leave the corpse in peace.{#zm732_s1_r6538}'
            # a6 # r6538
            jump zm732_dispose


# s2 # say6531
label zm732_s2: # from 0.3
    'zm732_s2{#zm732_s2}'
    # nr 'The corpse makes no reply. It looks like it is too far gone to answer any of your questions.{#zm732_s2_1}'

    menu:
        'zm732_s2_r6539{#zm732_s2_r6539}': # 'Leave the corpse in peace.{#zm732_s2_r6539}'
            # a7 # r6539
            jump zm732_dispose


# s3 # say64270
label zm732_s3: # - # IF ~  HasItem("TomeBA","ZM732")
    'zm732_s3{#zm732_s3}'
    # nr 'This doddering corpse has had its eyes sewn shut as well as its mouth, and the number "732" is carved into its brow. The threadwork that keeps its ocular cavities sealed looks extremely old… you wonder if the eyes were sewn shut before or after the man„s death. You notice he is carrying a huge tome in his hands, as if taking it somewhere.{#zm732_s3_1}'

    menu:
        'zm732_s3_r64271{#zm732_s3_r64271}': # 'Take the tome from his hands… carefully.{#zm732_s3_r64271}'
            # a8 # r64271
            $ zm732Logic.r64271_action()
            jump zm732_s4

        'zm732_s3_r64272{#zm732_s3_r64272}': # 'Leave the corpse in peace.{#zm732_s3_r64272}'
            # a9 # r64272
            jump zm732_dispose


# s4 # say64273
label zm732_s4: # from 3.0
    'zm732_s4{#zm732_s4}'
    # nr 'You carefully take the tome from the corpse„s hands - it doesn“t seem to notice. The tome appears to be a book of enchantments and wards - it is filled with diagrams and charts detailing various aspects of the necromantic arts. The book itself is extremely heavy; as awkward as the zombie is, it must be extremely strong.  ^NNOTE: <READSTUFF>^-{#zm732_s4_1}'

    menu:
        'zm732_s4_r64274{#zm732_s4_r64274}': # 'Examine the corpse again.{#zm732_s4_r64274}'
            # a10 # r64274
            jump zm732_s0

        'zm732_s4_r64275{#zm732_s4_r64275}': # 'Leave the corpse in peace.{#zm732_s4_r64275}'
            # a11 # r64275
            jump zm732_dispose
