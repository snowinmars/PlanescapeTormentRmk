init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm257_logic import Zm257Logic
    zm257Logic = Zm257Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM257.DLG
# ###


# s0 # say6507
label zm257_s0: # - # IF ~  True()
    'zm257_s0{#zm257_s0}'
    # nr 'The eyes of this corpse are set close together and the eyeballs themselves are slightly askew; one faces to the left and the other to the right. You can barely make out the number „257“ traced into its bruised forehead - it looks like the corpse has taken several blows to the head, making the number difficult to read.{#zm257_s0_1}'

    menu:
        'zm257_s0_r6510{#zm257_s0_r6510}' if zm257Logic.r6510_condition(): # '"Don„t you get dizzy with your eyeballs facing like that?"{#zm257_s0_r6510}'
            # a0 # r6510
            $ zm257Logic.r6510_action()
            jump zm257_s1

        'zm257_s0_r6511{#zm257_s0_r6511}' if zm257Logic.r6511_condition(): # '"Don„t you get dizzy with your eyeballs facing like that?"{#zm257_s0_r6511}'
            # a1 # r6511
            jump zm257_s1

        'zm257_s0_r6512{#zm257_s0_r6512}' if zm257Logic.r6512_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm257_s0_r6512}'
            # a2 # r6512
            jump zm257_s1

        'zm257_s0_r6513{#zm257_s0_r6513}' if zm257Logic.r6513_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm257_s0_r6513}'
            # a3 # r6513
            jump zm257_s2

        'zm257_s0_r6514{#zm257_s0_r6514}': # '"It was great talking to you. Farewell."{#zm257_s0_r6514}'
            # a4 # r6514
            jump zm257_dispose

        'zm257_s0_r6515{#zm257_s0_r6515}': # 'Leave the corpse in peace.{#zm257_s0_r6515}'
            # a5 # r6515
            jump zm257_dispose


# s1 # say6508
label zm257_s1: # from 0.0 0.1 0.2
    'zm257_s1{#zm257_s1}'
    # nr 'There is no flicker of understanding in the corpse„s eyes; they stare silently off to the left and right.{#zm257_s1_1}'

    menu:
        'zm257_s1_r6516{#zm257_s1_r6516}': # 'Leave the corpse in peace.{#zm257_s1_r6516}'
            # a6 # r6516
            jump zm257_dispose


# s2 # say6509
label zm257_s2: # from 0.3
    'zm257_s2{#zm257_s2}'
    # nr 'The spirit blasts back into the body with such violence that, with a single great muscular contraction, the corpse is hurtled backwards! The body is on its feet again in an instant, dancing and thrashing about madly, waving its arms and popping its stitches, flaps of loosened flesh flopping about as it prances to and fro, eyes goggling and rolling about in its head, giggling madly all the while…{#zm257_s2_1}'

    menu:
        'zm257_s2_r6517{#zm257_s2_r6517}': # '"Er… I have a question for you, spirit…"{#zm257_s2_r6517}'
            # a7 # r6517
            jump zm257_s3

        'zm257_s2_r9558{#zm257_s2_r9558}': # 'Leave the spirit alone.{#zm257_s2_r9558}'
            # a8 # r9558
            jump zm257_dispose


# s3 # say9553
label zm257_s3: # from 2.0
    'zm257_s3{#zm257_s3}'
    # nr 'The possessed corpse sings as it leaps and whirls about, the volume and pitch of its voice rising and falling in random patterns. "YOU are the SPIRIT I, the LIVING, answer my questions YOU SHALL!" Your confused expression seems to please it; it hooks its bony fingers into its mouth and pulls it into a ghastly grin, laughing maniacally and waggling its pasty, white tongue.{#zm257_s3_1}'

    menu:
        'zm257_s3_r9559{#zm257_s3_r9559}': # '"Very well… ask your questions."{#zm257_s3_r9559}'
            # a9 # r9559
            jump zm257_s4

        'zm257_s3_r9560{#zm257_s3_r9560}': # '"No. I would ask *you* a question…"{#zm257_s3_r9560}'
            # a10 # r9560
            jump zm257_s5

        'zm257_s3_r9561{#zm257_s3_r9561}': # 'Leave the chaotic spirit.{#zm257_s3_r9561}'
            # a11 # r9561
            jump zm257_s6


# s4 # say9554
label zm257_s4: # from 3.0 4.0 5.0
    'zm257_s4{#zm257_s4}'
    # nr 'The spirit seems to become calm for a moment before exploding into a stream of mind-numbingly loud, babbled nonsense. The cacophony is almost maddening; it threatens to drive you to your knees. And as abruptly as it began… it stops. The corpse stands there, twitching quietly.{#zm257_s4_1}'

    menu:
        'zm257_s4_r9562{#zm257_s4_r9562}': # '"I didn„t quite catch that. Could you repeat it for me?"{#zm257_s4_r9562}'
            # a12 # r9562
            $ zm257Logic.r9562_action()
            jump zm257_s4

        'zm257_s4_r9563{#zm257_s4_r9563}': # '"I do not understand. I have a question, however…"{#zm257_s4_r9563}'
            # a13 # r9563
            jump zm257_s5

        'zm257_s4_r9564{#zm257_s4_r9564}': # '"I do not understand you. Farewell."{#zm257_s4_r9564}'
            # a14 # r9564
            jump zm257_s6


# s5 # say9555
label zm257_s5: # from 3.1 4.1 5.1
    'zm257_s5{#zm257_s5}'
    # nr 'Again the spirit sings: "Questions OF THE living shall the DEAD answer THE; SO it was, is IT so, shall so IT BE. You my ANSWER will questions!" The look on your face seems to please it wildly; it begins to cavort so madly that you wonder if the corpse can take the abuse. You can almost hear its bones creak and fracture, tendons snapping, as it spins and hurls itself about.{#zm257_s5_1}'

    menu:
        'zm257_s5_r9565{#zm257_s5_r9565}': # '"All right… ask your questions."{#zm257_s5_r9565}'
            # a15 # r9565
            jump zm257_s4

        'zm257_s5_r9566{#zm257_s5_r9566}': # '"You do not understand. I had a question for *you*…"{#zm257_s5_r9566}'
            # a16 # r9566
            jump zm257_s5

        'zm257_s5_r9567{#zm257_s5_r9567}': # 'Give up and leave the babbling spirit.{#zm257_s5_r9567}'
            # a17 # r9567
            jump zm257_s6


# s6 # say9556
label zm257_s6: # from 3.2 4.2 5.2
    'zm257_s6{#zm257_s6}'
    # nr 'As the spirit fades away from the corpse, its jabbering mouth twists into a knowing smile. Its wild, flashing eyes bore into you with the piercing glare of a psychopath, and it whispers a single, carefully-formed word, drawn out like a string of precious pearls: "Limbo…"{#zm257_s6_1}'

    menu:
        'zm257_s6_r9568{#zm257_s6_r9568}': # '"What?"{#zm257_s6_r9568}'
            # a18 # r9568
            jump zm257_s7

        'zm257_s6_r9569{#zm257_s6_r9569}': # 'Ignore it, turn away.{#zm257_s6_r9569}'
            # a19 # r9569
            jump zm257_dispose


# s7 # say9557
label zm257_s7: # from 6.0
    'zm257_s7{#zm257_s7}'
    # nr '…and with that it is gone, leaving you no better off and feeling slightly unsettled. The zombie quietly resumes its work.{#zm257_s7_1}'

    jump zm257_dispose
