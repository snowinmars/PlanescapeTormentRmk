init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm506_logic import Zm506Logic
    zm506Logic = Zm506Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM506.DLG
# ###


# s0 # say45419
label zm506_s0: # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    'zm506_s0{#zm506_s0}'
    # nr 'This heavily stitched corpse is shuffling lazily back and forth between two slabs. The number "506" has been stitched on its forehead… and the side of its neck… and its right arm… in fact, the skin of this peeling corpse has been sewn up with so many stitches its skin looks like a bizarre street map.{#zm506_s0_1}'

    menu:
        'zm506_s0_r45420{#zm506_s0_r45420}' if zm506Logic.r45420_condition(): # 'Examine the stitches.{#zm506_s0_r45420}'
            # a0 # r45420
            jump zm506_s3

        'zm506_s0_r45421{#zm506_s0_r45421}' if zm506Logic.r45421_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm506_s0_r45421}'
            # a1 # r45421
            jump zm506_s1

        'zm506_s0_r45422{#zm506_s0_r45422}' if zm506Logic.r45422_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm506_s0_r45422}'
            # a2 # r45422
            jump zm506_s2

        'zm506_s0_r45423{#zm506_s0_r45423}': # '"It was great talking to you. Farewell."{#zm506_s0_r45423}'
            # a3 # r45423
            jump zm506_dispose

        'zm506_s0_r45424{#zm506_s0_r45424}': # 'Leave the corpse in peace.{#zm506_s0_r45424}'
            # a4 # r45424
            jump zm506_dispose


# s1 # say45425
label zm506_s1: # from 0.1 4.0 4.1 5.0 5.1 5.2
    'zm506_s1{#zm506_s1}'
    # nr 'The corpse stares straight ahead, oblivious.{#zm506_s1_1}'

    menu:
        'zm506_s1_r45478{#zm506_s1_r45478}': # 'Leave the corpse in peace.{#zm506_s1_r45478}'
            # a5 # r45478
            jump zm506_dispose


# s2 # say45426
label zm506_s2: # from 0.2 5.3
    'zm506_s2{#zm506_s2}'
    # nr 'The corpse does not stir. It looks like it is too far gone to answer any of your questions.{#zm506_s2_1}'

    menu:
        'zm506_s2_r45479{#zm506_s2_r45479}': # 'Leave the corpse in peace.{#zm506_s2_r45479}'
            # a6 # r45479
            jump zm506_dispose


# s3 # say45427
label zm506_s3: # from 0.0
    'zm506_s3{#zm506_s3}'
    # nr 'The stitches encircle the corpse, running from its arms, across its chest, up its neck, and into the damp mass of white hair. As you follow the crossroads of stitches, you notice someone has jammed a needle into the corpse„s forehead… the needle is attached to a thread stitching up the side of the skull. You could probably unravel it if you had something to cut the thread.{#zm506_s3_1}'

    menu:
        'zm506_s3_r45480{#zm506_s3_r45480}' if zm506Logic.r45480_condition(): # 'Cut the stitches with your scalpel, then pull out the needle and thread.{#zm506_s3_r45480}'
            # a7 # r45480
            $ zm506Logic.r45480_action()
            jump zm506_s4

        'zm506_s3_r45481{#zm506_s3_r45481}' if zm506Logic.r45481_condition(): # '"Hmmm. Maybe there„s something around here I can use to cut the thread… I“ll be back."{#zm506_s3_r45481}'
            # a8 # r45481
            jump zm506_dispose

        'zm506_s3_r45482{#zm506_s3_r45482}': # 'Examine the corpse again.{#zm506_s3_r45482}'
            # a9 # r45482
            jump zm506_s0

        'zm506_s3_r45483{#zm506_s3_r45483}': # 'Leave the corpse alone.{#zm506_s3_r45483}'
            # a10 # r45483
            jump zm506_dispose


# s4 # say45428
label zm506_s4: # from 3.0
    'zm506_s4{#zm506_s4}'
    # nr 'You slice the thread neatly with the scalpel, then pluck out the needle and pull the stitches out. As you do, the skin covering the forehead peels back to reveal the corpse„s chalk-white skull - where, to your surprise, the number "78" has been chiseled.{#zm506_s4_1}'

    menu:
        'zm506_s4_r45484{#zm506_s4_r45484}' if zm506Logic.r45484_condition(): # '"Seems you got two different designations there, corpse."{#zm506_s4_r45484}'
            # a11 # r45484
            $ zm506Logic.r45484_action()
            jump zm506_s1

        'zm506_s4_r45496{#zm506_s4_r45496}' if zm506Logic.r45496_condition(): # '"Seems you got two different designations there, corpse."{#zm506_s4_r45496}'
            # a12 # r45496
            jump zm506_s1

        'zm506_s4_r50097{#zm506_s4_r50097}': # 'Examine the corpse again.{#zm506_s4_r50097}'
            # a13 # r50097
            jump zm506_s5

        'zm506_s4_r66889{#zm506_s4_r66889}': # 'Leave the corpse in peace.{#zm506_s4_r66889}'
            # a14 # r66889
            jump zm506_dispose


# s5 # say45429
label zm506_s5: # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    'zm506_s5{#zm506_s5}'
    # nr 'This heavily stitched corpse is shuffling lazily back and forth between two slabs. Although the number "506" has been stitched almost all over its body, the skin on its forehead has peeled back from the skull, revealing the number "78" chiseled into the bone.{#zm506_s5_1}'

    menu:
        'zm506_s5_r45502{#zm506_s5_r45502}' if zm506Logic.r45502_condition(): # '"Seems you got two different designations there, corpse."{#zm506_s5_r45502}'
            # a15 # r45502
            $ zm506Logic.r45502_action()
            jump zm506_s1

        'zm506_s5_r45508{#zm506_s5_r45508}' if zm506Logic.r45508_condition(): # '"Seems you got two different designations there, corpse."{#zm506_s5_r45508}'
            # a16 # r45508
            jump zm506_s1

        'zm506_s5_r45510{#zm506_s5_r45510}' if zm506Logic.r45510_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm506_s5_r45510}'
            # a17 # r45510
            jump zm506_s1

        'zm506_s5_r45512{#zm506_s5_r45512}' if zm506Logic.r45512_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm506_s5_r45512}'
            # a18 # r45512
            jump zm506_s2

        'zm506_s5_r45513{#zm506_s5_r45513}': # '"It was great talking to you. Farewell."{#zm506_s5_r45513}'
            # a19 # r45513
            jump zm506_dispose

        'zm506_s5_r45514{#zm506_s5_r45514}': # 'Leave the corpse in peace.{#zm506_s5_r45514}'
            # a20 # r45514
            jump zm506_dispose
