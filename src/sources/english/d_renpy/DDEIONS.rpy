init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.deionarra_logic import DeionarraLogic
    deionarraLogic = DeionarraLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDEIONS.DLG
# ###


# s0 # say69459
label deionarra_s0: # from 5.2 9.5 10.8 11.3 12.3 13.4 14.2 25.3 27.4 28.4 30.2 31.3 32.2 41.4 41.5 42.3 42.4 43.4 44.4
    nr '"I shall wait for you in death„s halls, my Love." She smiles, but there is only sadness in it. She closes her eyes, and with an ethereal whisper, she fades.~ [DEN008B]{#deionarra_s0_1}'

    menu:
        'Leave.{#deionarra_s0_r701}' if deionarraLogic.r701_condition():
            # a0 # r701
            $ deionarraLogic.r701_action()
            jump deionarra_dispose

        'Leave.{#deionarra_s0_r699}' if deionarraLogic.r699_condition():
            # a1 # r699
            $ deionarraLogic.r699_action()
            jump morte_s105  # EXTERN

        'Leave.{#deionarra_s0_r9616}' if deionarraLogic.r9616_condition():
            # a2 # r9616
            $ deionarraLogic.r9616_action()
            jump deionarra_dispose


# s1 # say5
label deionarra_s1: # - # IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'You see a strikingly beautiful ghostly form before you; her arms are crossed, and her eyes are closed. She has long, flowing hair, and her gown seems stirred by some ethereal breeze. As you watch, she stirs slightly, and her eyes flicker.{#deionarra_s1_1}'

    menu:
        '"Greetings…?"{#deionarra_s1_r703}':
            # a3 # r703
            jump deionarra_s2

        'Wait.{#deionarra_s1_r704}':
            # a4 # r704
            jump deionarra_s2

        'Leave before the spirit gets her bearings.{#deionarra_s1_r705}':
            # a5 # r705
            $ deionarraLogic.r705_action()
            jump deionarra_dispose


# s2 # say706
label deionarra_s2: # from 1.0 1.1
    nr 'Her eyes slowly open, and she blinks in confusion for a moment, as if uncertain where she is. She looks around slowly, then sees you. Her tranquil face suddenly twists into a snarl. "You! What is it that brings *you* here?! Have you come to see first-hand the misery you have wrought? Perhaps in death I still hold some shred of use for you…?" Her voice drops to a hiss. "…„my Love.“"~ [DEN001]{#deionarra_s2_1}'

    menu:
        '"Who are you?"{#deionarra_s2_r707}':
            # a6 # r707
            $ deionarraLogic.r707_action()
            jump deionarra_s3

        '"„My Love“? Do I know you?"{#deionarra_s2_r708}' if deionarraLogic.r708_condition():
            # a7 # r708
            $ deionarraLogic.r708_action()
            jump deionarra_s3

        '"„My Love“? Do I know you?"{#deionarra_s2_r709}' if deionarraLogic.r709_condition():
            # a8 # r709
            $ deionarraLogic.r709_action()
            jump deionarra_s3


# s3 # say710
label deionarra_s3: # from 2.0 2.1 2.2 10.0
    nr 'The spirit makes a begging motion with her hands. "How can it be that the thieves of the mind continue to steal my name from your memory? Do you not *remember* me, my Love?" The ghost stretches out her arms. "Think…" Her voice becomes desperate again. "…the name *Deionarra* must evoke some memory within you."{#deionarra_s3_1}'

    menu:
        '"No, I„m sorry. My memories are lost to me."{#deionarra_s3_r711}':
            # a9 # r711
            jump deionarra_s6

        'Lie: "Yes… yes, the name *does* sound familiar."{#deionarra_s3_r712}':
            # a10 # r712
            $ deionarraLogic.r712_action()
            jump deionarra_s7

        '"I *think* I feel the stirrings of memory… tell me more. Perhaps your words shall chase the shadows from my mind, Deionarra."{#deionarra_s3_r713}' if deionarraLogic.r713_condition():
            # a11 # r713
            jump deionarra_s9

        '"I *think* I feel the stirrings of memory… tell me more. Perhaps your words shall chase the shadows from my mind, Deionarra."{#deionarra_s3_r714}' if deionarraLogic.r714_condition():
            # a12 # r714
            jump deionarra_s9

        '"It does not. Farewell… Deionarra."{#deionarra_s3_r1308}' if deionarraLogic.r1308_condition():
            # a13 # r1308
            jump deionarra_s15

        '"It does not. Farewell… Deionarra."{#deionarra_s3_r6080}' if deionarraLogic.r6080_condition():
            # a14 # r6080
            jump deionarra_s26


# s4 # say715
label deionarra_s4: # - # IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Once again, Deionarra materializes… this time, her face is filled with desperation, and her arms are out-stretched as if she is reaching for something. As she fades in, the desperation in her face changes to fury. "Again you have come! Why is it you continue to torment me?"~ [DEN002]{#deionarra_s4_1}'

    menu:
        '"There is much I need to know. I had some questions for you…"{#deionarra_s4_r765}':
            # a15 # r765
            jump deionarra_s33

        '"I shall torment you no more. Farewell."{#deionarra_s4_r1307}':
            # a16 # r1307
            jump deionarra_s26


# s5 # say716
label deionarra_s5: # - # IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Once again, Deionarra materializes… this time, her face is filled with desperation, and her arms are out-stretched as if she is reaching for something. As she fades in, the desperation in her face changes to relief. "My Love… you have returned to me! Can it be that your memories have returned?"~ [DEN003A]{#deionarra_s5_1}'

    menu:
        '"I had some questions for you…"{#deionarra_s5_r766}':
            # a17 # r766
            jump deionarra_s10

        '"Not yet. Farewell, Deionarra."{#deionarra_s5_r767}' if deionarraLogic.r767_condition():
            # a18 # r767
            jump deionarra_s15

        '"Not yet. Farewell, Deionarra."{#deionarra_s5_r1309}' if deionarraLogic.r1309_condition():
            # a19 # r1309
            jump deionarra_s0


# s6 # say717
label deionarra_s6: # from 3.0
    nr '"Then it is as I feared. I am truly lost to you… and what was once an inconvenience for you, you now have the excuse to discard me as you have my memory!"{#deionarra_s6_1}'

    menu:
        '"„Inconvenience“? „Discard you“? I do not know you, spirit… my memories are no more. Tell me… who are you? What do you know of me?"{#deionarra_s6_r720}':
            # a20 # r720
            jump deionarra_s11

        '"I *think* I feel the stirrings of memory… tell me more. Perhaps your words shall chase the shadows from my mind, Deionarra."{#deionarra_s6_r718}' if deionarraLogic.r718_condition():
            # a21 # r718
            jump deionarra_s9

        '"I *think* I feel the stirrings of memory… tell me more. Perhaps your words shall chase the shadows from my mind, Deionarra."{#deionarra_s6_r719}' if deionarraLogic.r719_condition():
            # a22 # r719
            jump deionarra_s9

        '"If discard you I have done, then it looks like I am forced to do so again. Farewell, spirit."{#deionarra_s6_r721}' if deionarraLogic.r721_condition():
            # a23 # r721
            jump deionarra_s15

        '"I must leave, Deionarra. Farewell."{#deionarra_s6_r1310}' if deionarraLogic.r1310_condition():
            # a24 # r1310
            jump deionarra_s15

        '"If discard you I have done, then it looks like I am forced to do so again. Farewell, spirit."{#deionarra_s6_r1311}' if deionarraLogic.r1311_condition():
            # a25 # r1311
            jump deionarra_s26

        '"I must leave, Deionarra. Farewell."{#deionarra_s6_r764}' if deionarraLogic.r764_condition():
            # a26 # r764
            jump deionarra_s26


# s7 # say722
label deionarra_s7: # from 3.1
    nr '"Yes…" She seems hopeful. "What memories does my name evoke?"{#deionarra_s7_1}'

    menu:
        '"None. I lied."{#deionarra_s7_r700}':
            # a27 # r700
            $ deionarraLogic.r700_action()
            jump deionarra_s8

        'Lie: "Your name evokes passionate thoughts, though their content is unclear. Perhaps if you were to tell me more…"{#deionarra_s7_r702}':
            # a28 # r702
            $ deionarraLogic.r702_action()
            jump deionarra_s9

        '"I am not certain… but I do feel the stirrings of memory as we speak. Tell me more. Perhaps your words shall chase the shadows from my mind, Deionarra."{#deionarra_s7_r723}' if deionarraLogic.r723_condition():
            # a29 # r723
            jump deionarra_s9

        '"I am not certain… but I do feel the stirrings of memory as we speak. Tell me more. Perhaps your words shall chase the shadows from my mind, Deionarra."{#deionarra_s7_r724}' if deionarraLogic.r724_condition():
            # a30 # r724
            jump deionarra_s9

        '"I must leave, Deionarra. Farewell."{#deionarra_s7_r1312}' if deionarraLogic.r1312_condition():
            # a31 # r1312
            jump deionarra_s15

        '"I must leave, Deionarra. Farewell."{#deionarra_s7_r6084}' if deionarraLogic.r6084_condition():
            # a32 # r6084
            jump deionarra_s26


# s8 # say725
label deionarra_s8: # from 7.0 47.2
    nr 'Deionarra„s face melts into a mask of fury. "You leprous dog! Traitor to my heart! I would wish you cursed, except that torment hounds you with every incarnation without need of my curses! Begone!" She crosses her arms and closes her eyes.{#deionarra_s8_1}'

    menu:
        '"Very well…"{#deionarra_s8_r747}' if deionarraLogic.r747_condition():
            # a33 # r747
            $ deionarraLogic.r747_action()
            jump deionarra_dispose

        '"Very well…"{#deionarra_s8_r1313}' if deionarraLogic.r1313_condition():
            # a34 # r1313
            $ deionarraLogic.r1313_action()
            jump morte_s105  # EXTERN

        'Leave.{#deionarra_s8_r13255}' if deionarraLogic.r13255_condition():
            # a35 # r13255
            $ deionarraLogic.r13255_action()
            jump deionarra_dispose


# s9 # say726
label deionarra_s9: # from 3.2 3.3 6.1 6.2 7.1 7.2 7.3
    nr '"Oh, at last the fates show mercy! Even death cannot chase me from your mind, my Love! Do you not see? Your memories shall return! Tell me how I can help you, and I shall!"{#deionarra_s9_1}'

    menu:
        '"Do you know who I am?"{#deionarra_s9_r729}':
            # a36 # r729
            jump deionarra_s11

        '"Can you tell me where I am?"{#deionarra_s9_r730}':
            # a37 # r730
            jump deionarra_s12

        '"I need to escape this place. Can you help me?"{#deionarra_s9_r731}' if deionarraLogic.r731_condition():
            # a38 # r731
            jump deionarra_s43

        '"I need to escape this place. Can you help me?"{#deionarra_s9_r732}' if deionarraLogic.r732_condition():
            # a39 # r732
            jump deionarra_s44

        '"Nothing now, Deionarra, though I shall return. Farewell."{#deionarra_s9_r1314}' if deionarraLogic.r1314_condition():
            # a40 # r1314
            jump deionarra_s15

        '"Nothing now, Deionarra, though I shall return. Farewell."{#deionarra_s9_r6127}' if deionarraLogic.r6127_condition():
            # a41 # r6127
            jump deionarra_s0


# s10 # say733
label deionarra_s10: # from 5.0 11.1 12.1 13.1 14.0 25.1 27.2 28.0 30.0 31.1 32.0 34.1 35.1 36.0 41.1 42.0 43.1 44.2 74.0
    nr '"What is it you wish to know?"{#deionarra_s10_1}'

    menu:
        '"Who are you?"{#deionarra_s10_r734}':
            # a42 # r734
            jump deionarra_s3

        '"Can you tell me who I am?"{#deionarra_s10_r735}':
            # a43 # r735
            jump deionarra_s11

        '"Can you tell me where I am?"{#deionarra_s10_r736}':
            # a44 # r736
            jump deionarra_s12

        '"I need to escape this place. Can you help me?"{#deionarra_s10_r737}' if deionarraLogic.r737_condition():
            # a45 # r737
            jump deionarra_s43

        '"I need to escape this place. Can you help me?"{#deionarra_s10_r738}' if deionarraLogic.r738_condition():
            # a46 # r738
            jump deionarra_s44

        '"What was that vision you spoke of before?"{#deionarra_s10_r768}' if deionarraLogic.r768_condition():
            # a47 # r768
            jump deionarra_s22

        '"Can you remove the curse you placed upon me?"{#deionarra_s10_r1315}' if deionarraLogic.r1315_condition():
            # a48 # r1315
            jump deionarra_s41

        '"Nothing now, Deionarra, though I shall return. Farewell."{#deionarra_s10_r6107}' if deionarraLogic.r6107_condition():
            # a49 # r6107
            jump deionarra_s15

        '"Nothing now, Deionarra, though I shall return. Farewell."{#deionarra_s10_r6128}' if deionarraLogic.r6128_condition():
            # a50 # r6128
            jump deionarra_s0


# s11 # say739
label deionarra_s11: # from 6.0 9.0 10.1
    nr '"You are one both blessed and cursed, my Love. And you are one who is never far from my thoughts and heart."{#deionarra_s11_1}'

    menu:
        '"„Blessed and cursed“? What do you mean?"{#deionarra_s11_r740}':
            # a51 # r740
            jump deionarra_s13

        '"I had some other questions for you…"{#deionarra_s11_r741}':
            # a52 # r741
            jump deionarra_s10

        '"I must leave. Farewell, Deionarra."{#deionarra_s11_r742}' if deionarraLogic.r742_condition():
            # a53 # r742
            jump deionarra_s15

        '"I must leave. Farewell, Deionarra."{#deionarra_s11_r1316}' if deionarraLogic.r1316_condition():
            # a54 # r1316
            jump deionarra_s0


# s12 # say743
label deionarra_s12: # from 9.1 10.2
    nr '"Where are you? Why, you are here with me, my Love… as in the times when life was something both of us shared. Now it is the Eternal Boundary that separates us."{#deionarra_s12_1}'

    menu:
        '"„Eternal Boundary“?"{#deionarra_s12_r744}':
            # a55 # r744
            jump deionarra_s14

        '"I had some other questions for you…"{#deionarra_s12_r745}':
            # a56 # r745
            jump deionarra_s10

        '"I must leave. Farewell, Deionarra."{#deionarra_s12_r746}' if deionarraLogic.r746_condition():
            # a57 # r746
            jump deionarra_s15

        '"I must leave. Farewell, Deionarra."{#deionarra_s12_r792}' if deionarraLogic.r792_condition():
            # a58 # r792
            jump deionarra_s0


# s13 # say748
label deionarra_s13: # from 11.0
    nr '"The nature of your curse should be apparent, my Love. Look at you." She points at you. "Death rejects you. Your memories have abandoned you. Do you not pause and wonder why?"{#deionarra_s13_1}'

    menu:
        '"I„m still trying to get my bearings, actually. What else can you tell me about myself?"{#deionarra_s13_r749}':
            # a59 # r749
            jump deionarra_s27

        '"I had some other questions…"{#deionarra_s13_r750}':
            # a60 # r750
            jump deionarra_s10

        '"Memories aside… and assuming death has rejected me… why is that a curse?"{#deionarra_s13_r751}':
            # a61 # r751
            jump deionarra_s25

        '"I must leave. Farewell, Deionarra."{#deionarra_s13_r790}' if deionarraLogic.r790_condition():
            # a62 # r790
            jump deionarra_s15

        '"I must leave. Farewell, Deionarra."{#deionarra_s13_r1318}' if deionarraLogic.r1318_condition():
            # a63 # r1318
            jump deionarra_s0


# s14 # say752
label deionarra_s14: # from 12.0
    nr 'Deionarra sounds saddened. "It is a barrier I fear you shall never cross, my Love. It is the barrier between your life and what remains of mine…"{#deionarra_s14_1}'

    menu:
        '"I… see. Perhaps you could answer some other questions…"{#deionarra_s14_r753}':
            # a64 # r753
            jump deionarra_s10

        '"I must leave. Farewell, Deionarra."{#deionarra_s14_r755}' if deionarraLogic.r755_condition():
            # a65 # r755
            jump deionarra_s15

        '"I must leave. Farewell, Deionarra."{#deionarra_s14_r1319}' if deionarraLogic.r1319_condition():
            # a66 # r1319
            jump deionarra_s0


# s15 # say756
label deionarra_s15: # from 3.4 5.1 6.3 6.4 7.4 9.4 10.7 11.2 12.2 13.3 14.1 25.2 27.3 28.1 28.3 30.1 31.2 32.1 41.2 41.3 42.1 42.2 43.3 44.3 47.3
    nr '"Hold a moment… I learned much when I traveled with you, my Love, and what you have lost, I have retained. I have not divulged all that I know to you. My sight is clear… whilst you fumble in the darkness for a spark of thought."{#deionarra_s15_1}'

    menu:
        '"Whatever you know can wait. Farewell."{#deionarra_s15_r757}':
            # a67 # r757
            jump deionarra_s26

        '"What could you possibly say that would be of any interest to me?"{#deionarra_s15_r758}':
            # a68 # r758
            jump deionarra_s17

        '"And what is it your sight sees that I do not?"{#deionarra_s15_r759}':
            # a69 # r759
            jump deionarra_s17

        '"I must leave. Farewell, Deionarra."{#deionarra_s15_r761}':
            # a70 # r761
            jump deionarra_s26


# s16 # say762
label deionarra_s16: # from 20.0 21.0
    nr 'Deionarra looks taken aback, then her tone changes, her voice becoming almost pleading. "I… do not mean to extract a vow from you, my Love. It is just that I have waited so long for you to join me beyond th…"{#deionarra_s16_1}'

    menu:
        '"If you do not mean to extract a vow from me, Deionarra, then do not do so. Now, tell your vision, and we will speak no more of vows and promises."{#deionarra_s16_r763}':
            # a71 # r763
            jump deionarra_s40


# s17 # say769
label deionarra_s17: # from 15.1 15.2
    nr '"Time itself relaxes its hold as the chill of oblivion slowly claims us, my Love. Glimpses of things yet to come swarm across my vision. I see you, my Love. I see you as you are now, and…" Deionarra grows quiet.{#deionarra_s17_1}'

    menu:
        '"Why are you suddenly silent? Has your ranting tired you?"{#deionarra_s17_r770}':
            # a72 # r770
            jump deionarra_s18

        '"What is it? What do you see?"{#deionarra_s17_r771}':
            # a73 # r771
            jump deionarra_s18

        '"I have no interest in visions of the future. Farewell."{#deionarra_s17_r772}':
            # a74 # r772
            jump deionarra_s19


# s18 # say773
label deionarra_s18: # from 17.0 17.1
    nr '"I see what lies ahead for you. It ripples through the planes, stemming outward from this point. Shall I speak of what I see?"{#deionarra_s18_1}'

    menu:
        '"Tell me."{#deionarra_s18_r774}':
            # a75 # r774
            jump deionarra_s20

        '"I do not wish to know. The future shall reveal itself… in time."{#deionarra_s18_r775}':
            # a76 # r775
            jump deionarra_s19


# s19 # say776
label deionarra_s19: # from 17.2 18.1
    nr '"You were always so, my Love. Already you refuse to heed death„s call. Shall time be the next one you spurn?" She closes her eyes, and with an ethereal whisper, she fades away.{#deionarra_s19_1}'

    menu:
        'Leave.{#deionarra_s19_r803}' if deionarraLogic.r803_condition():
            # a77 # r803
            $ deionarraLogic.r803_action()
            jump deionarra_dispose

        'Leave.{#deionarra_s19_r6085}' if deionarraLogic.r6085_condition():
            # a78 # r6085
            $ deionarraLogic.r6085_action()
            jump morte_s105  # EXTERN

        'Leave.{#deionarra_s19_r13256}' if deionarraLogic.r13256_condition():
            # a79 # r13256
            $ deionarraLogic.r13256_action()
            jump deionarra_dispose


# s20 # say777
label deionarra_s20: # from 18.0
    nr '"First, I require a promise. Promise you will return. That you will find some means to save me or join me."{#deionarra_s20_1}'

    menu:
        '"I find it hard to believe that a woman I once loved would blackmail promises from me with the promise of revelations. Have you no faith in me, Deionarra?"{#deionarra_s20_r778}' if deionarraLogic.r778_condition():
            # a80 # r778
            jump deionarra_s16

        '"The price of such a promise is too high."{#deionarra_s20_r779}':
            # a81 # r779
            jump deionarra_s21

        'Lie: "I swear I will find some means to save you or join you."{#deionarra_s20_r780}':
            # a82 # r780
            $ deionarraLogic.r780_action()
            jump deionarra_s22

        '"I will make no such promise, spectre! Tease me not with the future… speak your peace or begone!"{#deionarra_s20_r781}':
            # a83 # r781
            jump deionarra_s26

        '"I… will do what I can."{#deionarra_s20_r782}':
            # a84 # r782
            jump deionarra_s40

        'Make Vow: "I swear I will find some means to save you or join you."{#deionarra_s20_r6093}':
            # a85 # r6093
            $ deionarraLogic.r6093_action()
            jump deionarra_s22


# s21 # say783
label deionarra_s21: # from 20.1
    nr 'Deionarra folds her arms. "Indeed it is, my Love. The price of immortality was obviously not too high, however. Is integrity too much for one of your means?"{#deionarra_s21_1}'

    menu:
        '"I find it hard to believe that a woman I once loved would blackmail promises from me with the promise of revelations. Have you no faith in me, Deionarra?"{#deionarra_s21_r804}':
            # a86 # r804
            jump deionarra_s16

        'Lie: "I swear I will find some means to save you or join you."{#deionarra_s21_r805}':
            # a87 # r805
            $ deionarraLogic.r805_action()
            jump deionarra_s22

        '"I will make no such promise, spectre! Tease me not with the future… speak your peace or begone!"{#deionarra_s21_r806}':
            # a88 # r806
            jump deionarra_s26

        '"I… will do what I can."{#deionarra_s21_r807}':
            # a89 # r807
            jump deionarra_s40

        'Make Vow: "I swear I will find some means to save you or join you."{#deionarra_s21_r808}':
            # a90 # r808
            $ deionarraLogic.r808_action()
            jump deionarra_s22

        '"Perhaps so. Farewell, Deionarra."{#deionarra_s21_r6094}':
            # a91 # r6094
            jump deionarra_s26


# s22 # say784
label deionarra_s22: # from 10.5 20.2 20.5 21.1 21.4 40.0
    nr '"This is what my eyes see, my Love, unfettered by the shackles of time…"~ [DEN020]{#deionarra_s22_1}'

    menu:
        'Wait for her to continue.{#deionarra_s22_r786}':
            # a92 # r786
            $ deionarraLogic.r786_action()
            jump deionarra_s23


# s23 # say785
label deionarra_s23: # from 22.0
    nr '"You shall meet enemies three, but none more dangerous than yourself in your full glory. They are shades of evil, of good, and of neutrality given life and twisted by the laws of the planes."~ [DEN021]{#deionarra_s23_1}'

    menu:
        'Wait for her to continue.{#deionarra_s23_r787}':
            # a93 # r787
            jump deionarra_s24


# s24 # say788
label deionarra_s24: # from 23.0
    nr '"You shall come to a prison built of regrets and sorrow, where the shadows themselves have gone mad. There you will be asked to make a terrible sacrifice, my Love. For the matter to be laid to rest, you must destroy that which keeps you alive and be immortal no longer."~ [DEN022]{#deionarra_s24_1}'

    menu:
        '"„Destroy what keeps me alive“?"{#deionarra_s24_r789}':
            # a94 # r789
            jump deionarra_s29


# s25 # say791
label deionarra_s25: # from 13.2 29.0
    nr '"I do not doubt your ability to rise from the dead. I do believe that every incarnation weakens your thoughts and memories. You claim you have lost your memory. Perhaps it is a side effect of countless deaths? If so, what more will you lose in successive deaths? If you lose your mind, you will not even know enough to realize that you cannot die. You shall truly be doomed."{#deionarra_s25_1}'

    menu:
        '"„Countless deaths“? How long has this been going on?"{#deionarra_s25_r812}':
            # a95 # r812
            jump deionarra_s30

        '"I had some other questions…"{#deionarra_s25_r811}':
            # a96 # r811
            jump deionarra_s10

        '"Farewell, Deionarra."{#deionarra_s25_r813}' if deionarraLogic.r813_condition():
            # a97 # r813
            jump deionarra_s15

        '"Farewell, Deionarra."{#deionarra_s25_r1320}' if deionarraLogic.r1320_condition():
            # a98 # r1320
            jump deionarra_s0


# s26 # say793
label deionarra_s26: # from 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
    nr 'Deionarra looks furious. "Then leave, as you have a hundred thrice times before! Do you only come to torment me?! Leave and do not return!" She closes her eyes, and with an ethereal whisper, she fades away.{#deionarra_s26_1}'

    menu:
        'Leave.{#deionarra_s26_r6081}' if deionarraLogic.r6081_condition():
            # a99 # r6081
            $ deionarraLogic.r6081_action()
            jump deionarra_dispose

        'Leave.{#deionarra_s26_r6082}' if deionarraLogic.r6082_condition():
            # a100 # r6082
            $ deionarraLogic.r6082_action()
            jump morte_s105  # EXTERN

        'Leave.{#deionarra_s26_r13257}' if deionarraLogic.r13257_condition():
            # a101 # r13257
            $ deionarraLogic.r13257_action()
            jump deionarra_dispose


# s27 # say795
label deionarra_s27: # from 13.0
    nr '"I know that you once claimed you loved me and that you would love me until death claimed us both. I believed that, never knowing the truth of who you were, what you were."{#deionarra_s27_1}'

    menu:
        '"And what am I?"{#deionarra_s27_r797}' if deionarraLogic.r797_condition():
            # a102 # r797
            jump deionarra_s28

        '"And what am I?"{#deionarra_s27_r66911}' if deionarraLogic.r66911_condition():
            # a103 # r66911
            jump deionarra_s72

        '"I had some other questions…"{#deionarra_s27_r796}':
            # a104 # r796
            jump deionarra_s10

        '"Farewell, Deionarra."{#deionarra_s27_r798}' if deionarraLogic.r798_condition():
            # a105 # r798
            jump deionarra_s15

        '"Farewell, Deionarra."{#deionarra_s27_r1321}' if deionarraLogic.r1321_condition():
            # a106 # r1321
            jump deionarra_s0


# s28 # say799
label deionarra_s28: # from 27.0
    nr '"We have spoken on your nature before." Deionarra„s face takes on a distant expression. "We shall not do so again."{#deionarra_s28_1}'

    menu:
        '"All right… I had some other questions…"{#deionarra_s28_r800}':
            # a107 # r800
            jump deionarra_s10

        '"You claim to know me, yet you seem to know very little about me that is of any substance. Farewell, Deionarra."{#deionarra_s28_r801}' if deionarraLogic.r801_condition():
            # a108 # r801
            jump deionarra_s15

        '"You claim to know me, yet you seem to know very little about me that is of any substance. Farewell, Deionarra."{#deionarra_s28_r802}' if deionarraLogic.r802_condition():
            # a109 # r802
            jump deionarra_s26

        '"Farewell then, Deionarra."{#deionarra_s28_r1322}' if deionarraLogic.r1322_condition():
            # a110 # r1322
            jump deionarra_s15

        '"Farewell then, Deionarra."{#deionarra_s28_r1323}' if deionarraLogic.r1323_condition():
            # a111 # r1323
            jump deionarra_s0


# s29 # say809
label deionarra_s29: # from 24.0
    nr '"I know that you must die… while you still can. The circle *must* come to a close, my Love. You were not meant for this life. You must find that which was taken from you and travel beyond, into the lands of the dead."~ [DEN023]{#deionarra_s29_1}'

    menu:
        '"„Die while I still can“?"{#deionarra_s29_r810}':
            # a112 # r810
            $ deionarraLogic.j26087_s29_r810_action()
            jump deionarra_s25


# s30 # say814
label deionarra_s30: # from 25.0
    nr '"I do not truly know. Except that it has gone on long enough."{#deionarra_s30_1}'

    menu:
        '"I had some other questions…"{#deionarra_s30_r815}':
            # a113 # r815
            jump deionarra_s10

        '"Farewell, Deionarra."{#deionarra_s30_r816}' if deionarraLogic.r816_condition():
            # a114 # r816
            jump deionarra_s15

        '"Farewell, Deionarra."{#deionarra_s30_r1324}' if deionarraLogic.r1324_condition():
            # a115 # r1324
            jump deionarra_s0


# s31 # say817
label deionarra_s31: # from 45.0
    nr '"Portals are holes in existence, leading to destinations in the inner and outer planes… if you could find the proper key, you could escape through one of them."{#deionarra_s31_1}'

    menu:
        '"Key?"{#deionarra_s31_r819}':
            # a116 # r819
            jump deionarra_s32

        '"I had some other questions…"{#deionarra_s31_r818}':
            # a117 # r818
            jump deionarra_s10

        '"Farewell, Deionarra."{#deionarra_s31_r820}' if deionarraLogic.r820_condition():
            # a118 # r820
            jump deionarra_s15

        '"Farewell, Deionarra."{#deionarra_s31_r1325}' if deionarraLogic.r1325_condition():
            # a119 # r1325
            jump deionarra_s0


# s32 # say821
label deionarra_s32: # from 31.0
    nr 'Deionarra pauses for a moment, as if attempting to remember. "Portals will reveal themselves when you have the proper „key.“ Unfortunately, these keys can be almost anything… an emotion, a piece of wood, a dagger of silvered glass, a scrap of cloth, a tune you hum to yourself… I fear that the Dustmen are the only ones who would know the keys you could use to leave their halls, my Love."{#deionarra_s32_1}'

    menu:
        '"I see. I had some other questions…"{#deionarra_s32_r824}':
            # a120 # r824
            jump deionarra_s10

        '"Then I shall ask one of them. Farewell, Deionarra."{#deionarra_s32_r823}' if deionarraLogic.r823_condition():
            # a121 # r823
            jump deionarra_s15

        '"Then I shall ask one of them. Farewell, Deionarra."{#deionarra_s32_r1326}' if deionarraLogic.r1326_condition():
            # a122 # r1326
            jump deionarra_s0


# s33 # say6083
label deionarra_s33: # from 4.0
    nr '"I have no answers for you! Your unfaithful heart has guided you this far, let it guide you the rest of the way! Now begone!"{#deionarra_s33_1}'

    menu:
        'Lie: "This is not the Deionarra I remember. The Deionarra I loved was kind, gentle… and never abandoned a soul in need. Have you truly fallen so far?"{#deionarra_s33_r6129}' if deionarraLogic.r6129_condition():
            # a123 # r6129
            $ deionarraLogic.r6129_action()
            jump deionarra_s35

        '"I need your help, Deionarra. Will you spurn me when I need you the most?"{#deionarra_s33_r6130}':
            # a124 # r6130
            jump deionarra_s37

        'Bluff: "Very well. I shall respect your wishes, Deionarra… I will leave and never return."{#deionarra_s33_r6131}' if deionarraLogic.r6131_condition():
            # a125 # r6131
            $ deionarraLogic.r6131_action()
            jump deionarra_s34

        'Bluff: "Very well. I shall respect your wishes, Deionarra… I will leave and never return."{#deionarra_s33_r6132}' if deionarraLogic.r6132_condition():
            # a126 # r6132
            $ deionarraLogic.r6132_action()
            jump deionarra_s34

        '"I am sorry that I have hurt you, Deionarra. I will leave and torment you no more."{#deionarra_s33_r6133}':
            # a127 # r6133
            $ deionarraLogic.r6133_action()
            jump deionarra_s34

        'Leave quietly.{#deionarra_s33_r6134}':
            # a128 # r6134
            jump deionarra_s48


# s34 # say6086
label deionarra_s34: # from 33.2 33.3 33.4
    nr 'The furious expression on Deionarra„s face melts like water… the speed of the change is as frightening as the desperate expression now on her face. "No! Wait, my Love." Her voice is pleading. "Please forgive me, I beg of you! Do not leave!"{#deionarra_s34_1}'

    menu:
        '"Deionarra, my patience for your outbursts wears thin. If we are to continue speaking, you *will* control yourself, or we shall never speak again. You will be alone. Am I making myself plain?"{#deionarra_s34_r6095}':
            # a129 # r6095
            $ deionarraLogic.r6095_action()
            jump deionarra_s36

        '"I forgive you. Now, I need your help, Deionarra."{#deionarra_s34_r6096}':
            # a130 # r6096
            jump deionarra_s10


# s35 # say6087
label deionarra_s35: # from 33.0
    nr 'The furious expression on Deionarra„s face melts like water… the speed of the change is as frightening as the desperate expression now on her face. "No… no, no… I am still the Deionarra you remember, my Love. Please forgive me, I beg of you."{#deionarra_s35_1}'

    menu:
        '"Deionarra, my patience for your outbursts wears thin. If we are to continue speaking, you *will* control yourself, or we shall never speak again. You will be alone. Am I making myself plain?"{#deionarra_s35_r6097}':
            # a131 # r6097
            $ deionarraLogic.r6097_action()
            jump deionarra_s36

        '"I forgive you. Now, I need your help, Deionarra."{#deionarra_s35_r6098}':
            # a132 # r6098
            jump deionarra_s10


# s36 # say6088
label deionarra_s36: # from 34.0 35.0
    nr 'Her voice drops to the barest of whispers. "Yes… yes, please. Do not leave." Her pleading expression makes you shiver slightly… not out of fear, but out of pleasure. You have the feeling this is not the first time you have manipulated this woman.{#deionarra_s36_1}'

    menu:
        '"Now listen, Deionarra. I had some questions for you…"{#deionarra_s36_r6099}':
            # a133 # r6099
            jump deionarra_s10


# s37 # say6089
label deionarra_s37: # from 33.1 47.0
    nr '"Spurn *you?!* You DARE to accuse me of spurning YOU?!" Deionarra flings her arms outward in an arc, then brings them in front of her, the index finger of each hand pointed at you. It looks like she is calling forth some sort of sorcery. "You DARE…!"{#deionarra_s37_1}'

    menu:
        '"Silence! Hear me, spirit! I am losing patience for your games-"{#deionarra_s37_r6100}':
            # a134 # r6100
            $ deionarraLogic.r6100_action()
            jump deionarra_s38

        'Prepare to defend yourself.{#deionarra_s37_r6101}':
            # a135 # r6101
            $ deionarraLogic.r6101_action()
            jump deionarra_s38


# s38 # say6090
label deionarra_s38: # from 37.0 37.1
    nr '"Burn! May you burn as if the very fires of Baator were devouring you from within! Burn, and know it is but a *fraction* of my hatred for you! I curse you - I curse with all my heart and soul that you will never be free from the shackles of your wretched unlife. May you shrivel and die, your mind withering as it festers in your rotting body!"{#deionarra_s38_1}'

    menu:
        '"Watch your curses, woman! I have no patience-"{#deionarra_s38_r6102}':
            # a136 # r6102
            jump deionarra_s39

        '"Deionarra! Wait, I have come to apologize…"{#deionarra_s38_r6103}':
            # a137 # r6103
            jump deionarra_s39


# s39 # say6091
label deionarra_s39: # from 38.0 38.1
    nr '"Once spoken, the curse cannot be undone." Deionarra„s voice drops to a hiss. "Know this: I have all eternity, “my Love.„ I shall wait for you to come to death“s halls." She smiles, but there is no joy in it. "We *shall* be together again."{#deionarra_s39_1}'

    menu:
        '"Hold a moment! I would speak with -"{#deionarra_s39_r6104}':
            # a138 # r6104
            jump deionarra_s48

        '"Undo what you have done! I warn you-"{#deionarra_s39_r6105}':
            # a139 # r6105
            jump deionarra_s48


# s40 # say6092
label deionarra_s40: # from 16.0 20.4 21.3
    nr 'Deionarra stiffens. She looks as if she is about to say something, then sighs in defeat. "Very well, my Love… as before, I shall have to place my trust in you." She closes her eyes.{#deionarra_s40_1}'

    menu:
        'Wait…{#deionarra_s40_r6106}':
            # a140 # r6106
            jump deionarra_s22


# s41 # say6108
label deionarra_s41: # from 10.6
    nr 'Deionarra shakes her head sadly. "Once uttered, the curse may not be undone. Forgive me, my Love."{#deionarra_s41_1}'

    menu:
        '"Isn„t there anyone who could remove it?"{#deionarra_s41_r6110}':
            # a141 # r6110
            jump deionarra_s42

        '"I… see. I had something else I wanted to ask you…"{#deionarra_s41_r6111}':
            # a142 # r6111
            jump deionarra_s10

        '"I think it„s a little late to ask for forgiveness now. Farewell, Deionarra."{#deionarra_s41_r6112}' if deionarraLogic.r6112_condition():
            # a143 # r6112
            jump deionarra_s15

        '"Perhaps someone can help me. Farewell, Deionarra."{#deionarra_s41_r6113}' if deionarraLogic.r6113_condition():
            # a144 # r6113
            jump deionarra_s15

        '"I think it„s a little late to ask for forgiveness now. Farewell, Deionarra."{#deionarra_s41_r6114}' if deionarraLogic.r6114_condition():
            # a145 # r6114
            jump deionarra_s0

        '"Perhaps someone can help me. Farewell, Deionarra."{#deionarra_s41_r6115}' if deionarraLogic.r6115_condition():
            # a146 # r6115
            jump deionarra_s0


# s42 # say6109
label deionarra_s42: # from 41.0
    nr '"If so, they are not known to me." Deionarra looks hopeful. "But there are others who are more powerful than I that might be able to remove it. Again I ask your forgiveness, my Love. I know not what I did."{#deionarra_s42_1}'

    menu:
        '"I had something else I wanted to ask you…"{#deionarra_s42_r6116}':
            # a147 # r6116
            jump deionarra_s10

        '"I think it„s a little late to ask for forgiveness now. Farewell, Deionarra."{#deionarra_s42_r6117}' if deionarraLogic.r6117_condition():
            # a148 # r6117
            jump deionarra_s15

        '"Perhaps someone can help me. Farewell, Deionarra."{#deionarra_s42_r6118}' if deionarraLogic.r6118_condition():
            # a149 # r6118
            jump deionarra_s15

        '"I think it„s a little late to ask for forgiveness now. Farewell, Deionarra."{#deionarra_s42_r6119}' if deionarraLogic.r6119_condition():
            # a150 # r6119
            jump deionarra_s0

        '"Perhaps someone can help me. Farewell, Deionarra."{#deionarra_s42_r6120}' if deionarraLogic.r6120_condition():
            # a151 # r6120
            jump deionarra_s0


# s43 # say6121
label deionarra_s43: # from 9.2 10.3 44.0
    nr '"Leave…?" Deionarra„s voice drops to a hiss, then rises again. "*Leave?!* You ask me, who am trapped here because of you, how to *leave* this place?!"{#deionarra_s43_1}'

    menu:
        '"Yes, I need to escape this place. Do you know of a way out?"{#deionarra_s43_r6137}':
            # a152 # r6137
            jump deionarra_s47

        '"I apologize for my request. I did not mean to offend. Please, I had some other questions…"{#deionarra_s43_r6138}':
            # a153 # r6138
            jump deionarra_s10

        '"Deionarra, I am in danger. Can you guide me to a place of safety? I shall return as soon as I can to speak to you again."{#deionarra_s43_r6139}' if deionarraLogic.r6139_condition():
            # a154 # r6139
            jump deionarra_s46

        '"I must leave. Farewell, Deionarra."{#deionarra_s43_r6140}' if deionarraLogic.r6140_condition():
            # a155 # r6140
            jump deionarra_s15

        '"I must leave. Farewell, Deionarra."{#deionarra_s43_r6141}' if deionarraLogic.r6141_condition():
            # a156 # r6141
            jump deionarra_s0


# s44 # say6122
label deionarra_s44: # from 9.3 10.4
    nr 'As you are about to ask Deionarra the question, it catches in your throat. It occurs to you that if you tell her you are looking for an escape route, she may feel you are abandoning her. If you are going to ask her how to leave, you„ll need to be delicate about it.{#deionarra_s44_1}'

    menu:
        '"Can you tell me how to leave this place?"{#deionarra_s44_r6142}':
            # a157 # r6142
            jump deionarra_s43

        '"Deionarra, I am in danger. Can you guide me to a place of safety? I shall return as soon as I can to speak to you again."{#deionarra_s44_r6143}':
            # a158 # r6143
            jump deionarra_s46

        '"I had some other questions for you…"{#deionarra_s44_r6144}':
            # a159 # r6144
            jump deionarra_s10

        '"I must leave. Farewell, Deionarra."{#deionarra_s44_r6145}' if deionarraLogic.r6145_condition():
            # a160 # r6145
            jump deionarra_s15

        '"I must leave. Farewell, Deionarra."{#deionarra_s44_r6146}' if deionarraLogic.r6146_condition():
            # a161 # r6146
            jump deionarra_s0


# s45 # say6123
label deionarra_s45: # from 46.0 46.1
    nr '"I sense that this place holds many doors shrouded from mortal eyes. Perhaps you could use one of these portals as a means of escape."{#deionarra_s45_1}'

    menu:
        '"Portals?"{#deionarra_s45_r6124}':
            # a162 # r6124
            jump deionarra_s31


# s46 # say6125
label deionarra_s46: # from 43.2 44.1 47.1
    nr '"In danger?" Deionarra looks concerned. "Of course, my Love. I will aid you any way I can…" She closes her eyes for a moment, and you watch an ethereal zephyr pass through her body, stirring her hair. After a moment, the zephyr dies, and her eyes slowly open. "Perhaps there is a way."{#deionarra_s46_1}'

    menu:
        '"Yes?"{#deionarra_s46_r6147}' if deionarraLogic.r6147_condition():
            # a163 # r6147
            jump deionarra_s45

        '"Yes?"{#deionarra_s46_r6148}' if deionarraLogic.r6148_condition():
            # a164 # r6148
            $ deionarraLogic.r6148_action()
            jump deionarra_s45


# s47 # say6135
label deionarra_s47: # from 43.0
    nr '"You come to me in death, only to tell me that you need my aid so that you can abandon me *again?!*" Her face is a mask of fury. "I *died* for you, my Love. I *suffer* for it even now!"{#deionarra_s47_1}'

    menu:
        '"Deionarra, please… I need your help. Will you spurn me in my hour of need?"{#deionarra_s47_r6149}':
            # a165 # r6149
            jump deionarra_s37

        '"Deionarra, I only ask because I am in danger. Can you guide me to a place of safety? I shall return as soon as I can to speak to you again."{#deionarra_s47_r6150}' if deionarraLogic.r6150_condition():
            # a166 # r6150
            jump deionarra_s46

        '"Nevermind. Look, I had some other questions…"{#deionarra_s47_r6151}':
            # a167 # r6151
            jump deionarra_s8

        '"I must leave. Farewell, Deionarra."{#deionarra_s47_r6152}' if deionarraLogic.r6152_condition():
            # a168 # r6152
            jump deionarra_s15

        '"I must leave. Farewell, Deionarra."{#deionarra_s47_r6153}' if deionarraLogic.r6153_condition():
            # a169 # r6153
            jump deionarra_s26


# s48 # say6136
label deionarra_s48: # from 33.5 39.0 39.1
    nr 'Deionarra closes her eyes, and with an ethereal whisper, she fades away.{#deionarra_s48_1}'

    menu:
        'Leave.{#deionarra_s48_r6154}' if deionarraLogic.r6154_condition():
            # a170 # r6154
            $ deionarraLogic.r6154_action()
            jump deionarra_dispose

        'Leave.{#deionarra_s48_r6155}' if deionarraLogic.r6155_condition():
            # a171 # r6155
            $ deionarraLogic.r6155_action()
            jump morte_s105  # EXTERN

        'Leave.{#deionarra_s48_r13258}' if deionarraLogic.r13258_condition():
            # a172 # r13258
            $ deionarraLogic.r13258_action()
            jump deionarra_dispose


# s49 # say63356
label deionarra_s49: # - # IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'You see a strikingly beautiful ghostly form before you; she has long, flowing hair, and her gown seems stirred by some ethereal breeze. Her eyes rest on yours, and you feel a strange, disjointed sensation, as if you are looking at several pairs of eyes at once.{#deionarra_s49_1}'

    menu:
        '"Are you Deionarra…?"{#deionarra_s49_r63357}':
            # a173 # r63357
            jump deionarra_s51


# s50 # say63358
label deionarra_s50: # - # IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'Before you is the ghostly form of Deionarra; her spectral gown seems stirred by some ethereal breeze. Her eyes rest on yours, and you feel a strange, disjointed sensation, as if you are looking at several pairs of eyes at once.{#deionarra_s50_1}'

    menu:
        '"Deionarra…?"{#deionarra_s50_r63359}':
            # a174 # r63359
            jump deionarra_s51


# s51 # say63360
label deionarra_s51: # from 49.0 50.0
    nr '"My Love, at last I have *found* you… I searched for you after you were divided by the crystal - this Fortress spans hundreds of miles, and I feared you were lost to me." Her ghostly eyes take your measure, searching your bodies for new wounds. "Are you well?"{#deionarra_s51_1}'

    menu:
        '"I think so - the crystal divided me, but I am one again. Now I am trapped here, however."{#deionarra_s51_r63362}':
            # a175 # r63362
            jump deionarra_s52


# s52 # say63363
label deionarra_s52: # from 51.0
    nr '"I suspect trapping you here was the crystal„s true purpose. But it poses no barrier for one such as I." She closes her eyes. "Much do my eyes see, and the halls of this Fortress are well known to me."{#deionarra_s52_1}'

    jump deionarra_s53


# s53 # say63364
label deionarra_s53: # from 52.0 58.0 59.0
    nr '"If you are trapped here, my Love, I shall see to it you are set free. Where is it you wish to go?"{#deionarra_s53_1}'

    menu:
        '"I wish to find my adversary and defeat him."{#deionarra_s53_r63365}':
            # a176 # r63365
            jump deionarra_s54

        '"I wish to go to where my mortality is - and recover it."{#deionarra_s53_r63366}':
            # a177 # r63366
            jump deionarra_s54

        '"I wish to rejoin my friends."{#deionarra_s53_r63367}' if deionarraLogic.r63367_condition():
            # a178 # r63367
            jump deionarra_s54

        '"I wish to rejoin my companions. There are things I will need from them."{#deionarra_s53_r63368}' if deionarraLogic.r63368_condition():
            # a179 # r63368
            jump deionarra_s54

        '"I wish to speak to you for a moment, and tell you how you died… and why."{#deionarra_s53_r63369}' if deionarraLogic.r63369_condition():
            # a180 # r63369
            jump deionarra_s55


# s54 # say63370
label deionarra_s54: # from 53.0 53.1 53.2 53.3
    nr '"As you wish, My Love." She stretches out her hand. "Touch my hand, and the walls of this Fortress shall be walls no more."{#deionarra_s54_1}'

    menu:
        'Touch her hand…{#deionarra_s54_r63371}' if deionarraLogic.r63371_condition():
            # a181 # r63371
            $ deionarraLogic.r63371_action()
            jump deionarra_dispose

        'Touch her hand…{#deionarra_s54_r64594}' if deionarraLogic.r64594_condition():
            # a182 # r64594
            $ deionarraLogic.r64594_action()
            jump deionarra_dispose


# s55 # say63372
label deionarra_s55: # from 53.4
    nr '"What are you speaking of?"{#deionarra_s55_1}'

    menu:
        'Truth: "When I brought you to this Fortress, it was my intention that you die here. I needed someone to remain behind so that they would serve as a link to this place. I knew because you loved me so much, that your love would stave off death and allow you to become a spirit. And that is why you suffer now."{#deionarra_s55_r63373}':
            # a183 # r63373
            $ deionarraLogic.r63373_action()
            jump deionarra_s56

        'Lie: "When you died here in the Fortress, it was because of the adversary that awaits us. He wished you to die so that we would be apart. I go to confront him soon, and I will have my revenge on him."{#deionarra_s55_r63374}':
            # a184 # r63374
            $ deionarraLogic.r63374_action()
            jump deionarra_s58


# s56 # say63375
label deionarra_s56: # from 55.0
    nr 'Deionarra„s face is a mask as you speak the words.{#deionarra_s56_1}'

    menu:
        'Lie: "I am sorry, Deionarra."{#deionarra_s56_r63376}':
            # a185 # r63376
            $ deionarraLogic.r63376_action()
            jump deionarra_s57

        'Truth: "I am sorry, Deionarra."{#deionarra_s56_r63377}':
            # a186 # r63377
            $ deionarraLogic.r63377_action()
            jump deionarra_s57

        'Truth: "It was necessary, Deionarra - I am sorry that you have suffered."{#deionarra_s56_r63378}':
            # a187 # r63378
            jump deionarra_s57


# s57 # say63379
label deionarra_s57: # from 56.0 56.1 56.2
    nr '"Do you *love* me? If you say yes, my Love, then nothing that has happened matters."{#deionarra_s57_1}'

    menu:
        'Lie: "Of course I love you. Even death cannot kill the bond between us."{#deionarra_s57_r63380}':
            # a188 # r63380
            $ deionarraLogic.r63380_action()
            jump deionarra_s58

        'Truth: "Though I did not know you at first, I have come to love you. Your suffering has become mine, and I have found that I will do what I can to help you."{#deionarra_s57_r63381}':
            # a189 # r63381
            $ deionarraLogic.r63381_action()
            jump deionarra_s58

        'Truth: "I am sorry, Deionarra. I do not. I never knew you. Perhaps if I had met you under different circumstances…"{#deionarra_s57_r63382}':
            # a190 # r63382
            $ deionarraLogic.r63382_action()
            jump deionarra_s59


# s58 # say63383
label deionarra_s58: # from 55.1 57.0 57.1
    nr '"Then I will aid you, my Love. Tell me how I can help you, and I shall do it."{#deionarra_s58_1}'

    menu:
        '"I am trapped here. Can you help me escape?"{#deionarra_s58_r63384}':
            # a191 # r63384
            $ deionarraLogic.r63384_action()
            jump deionarra_s53


# s59 # say63385
label deionarra_s59: # from 57.2
    nr '"Then… this shall be the ending of things between us, my Love. I have remained here for you - for no other reason. I will help you one last time, then I shall travel beyond the Eternal Boundary, as I was meant."{#deionarra_s59_1}'

    menu:
        '"Then I will ask this last thing and leave you in peace: I am trapped here. Can you help me?"{#deionarra_s59_r63386}':
            # a192 # r63386
            jump deionarra_s53


# s60 # say63387
label deionarra_s60: # - # IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */ ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'You see a strikingly beautiful ghostly form; she has long, flowing hair, and her gown seems stirred by some ethereal breeze. She is standing at the edge of the black stone causeway, staring out into the emptiness of the Plane.{#deionarra_s60_1}'

    menu:
        '"Who are you?"{#deionarra_s60_r63388}':
            # a193 # r63388
            $ deionarraLogic.r63388_action()
            jump deionarra_s62

        'Leave the spectral figure alone.{#deionarra_s60_r63389}':
            # a194 # r63389
            jump deionarra_dispose


# s61 # say63390
label deionarra_s61: # - # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'Before you is the ghostly form of Deionarra; her spectral gown seems stirred by some ethereal breeze. She is standing at the edge of the black stone causeway, staring out into the emptiness of the Plane.{#deionarra_s61_1}'

    menu:
        '"Deionarra…?"{#deionarra_s61_r63391}':
            # a195 # r63391
            $ deionarraLogic.r63391_action()
            jump deionarra_s62

        'Leave Deionarra alone.{#deionarra_s61_r63392}':
            # a196 # r63392
            jump deionarra_dispose


# s62 # say63393
label deionarra_s62: # from 60.0 61.0 # IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",1)
    nr '"My Love! You should *not* be here! You must leave at once!"{#deionarra_s62_1}'

    menu:
        '"Why? Who are you, spirit… what is this place?"{#deionarra_s62_r63394}' if deionarraLogic.r63394_condition():
            # a197 # r63394
            jump deionarra_s63

        '"Deionarra, what is this place? Is this the Fortress?"{#deionarra_s62_r63395}' if deionarraLogic.r63395_condition():
            # a198 # r63395
            jump deionarra_s63


# s63 # say63396
label deionarra_s63: # from 62.0 62.1
    nr '"This is the Fortress of Regrets. It is the place that holds the moment of my death prisoner, and I may not stray far from its halls. If you can find a way back to Sigil you *must;* if you stay here, my Love, you shall die."{#deionarra_s63_1}'

    menu:
        '"I„m immortal, spirit; your warning is appreciated, but death is the least of my worries."{#deionarra_s63_r63397}' if deionarraLogic.r63397_condition():
            # a199 # r63397
            jump deionarra_s64

        '"I„m immortal, Deionarra; I don“t think I have much to worry about, even here."{#deionarra_s63_r63398}' if deionarraLogic.r63398_condition():
            # a200 # r63398
            jump deionarra_s64

        '"What about my immortality? Surely, I„m still immortal, even here…?"{#deionarra_s63_r63399}':
            # a201 # r63399
            jump deionarra_s64


# s64 # say63400
label deionarra_s64: # from 63.0 63.1 63.2
    nr 'She shakes her head. "No, my Love. There is something about this Fortress - the shell that surrounds it cuts it off from the rest of the planes. It is that shell that acts as a barrier to your immortality."{#deionarra_s64_1}'

    menu:
        '"A shell? The Pillar told me that when I die, another dies in my place. And if it can„t find someone to die for me -"{#deionarra_s64_r63401}' if deionarraLogic.r63401_condition():
            # a202 # r63401
            jump deionarra_s66

        '"How could this shell act as an obstacle? That makes no sense."{#deionarra_s64_r63402}' if deionarraLogic.r63402_condition():
            # a203 # r63402
            jump deionarra_s65


# s65 # say63403
label deionarra_s65: # from 64.1
    nr '"As I have maintained my vigil here in this place, I have come to learn the nature of your immortality, my Love. It is a thing which hungers for the lives of others. At the moment of your death, it claims another living thing in your place, allowing you to live. The soul that dies in your place is brought here, to the Fortress, as a shadow. I believe this shell prevents your immortality from finding another victim."{#deionarra_s65_1}'

    menu:
        '"So… when I die, another dies in my place. And if it can„t find another living thing to die *for* me…"{#deionarra_s65_r63404}':
            # a204 # r63404
            jump deionarra_s66


# s66 # say63405
label deionarra_s66: # from 64.0 65.0
    nr '"Then if you die in this place, it is the end, for there is nothing that *lives* here - so you must be careful. Return back to Sigil and leave this cursed place!"{#deionarra_s66_1}'

    menu:
        '"But - my allies are here: and that means they are inside this shell. What happens to *them* if I die?"{#deionarra_s66_r63406}' if deionarraLogic.r63406_condition():
            # a205 # r63406
            jump deionarra_s67

        '"But - one of my allies is in there. That means they are inside this shell. What happens to my companion if I die?"{#deionarra_s66_r63407}' if deionarraLogic.r63407_condition():
            # a206 # r63407
            jump deionarra_s67

        '"Deionarra, can you tell me anything else that might be helpful? What waits inside?"{#deionarra_s66_r63408}' if deionarraLogic.r63408_condition():
            # a207 # r63408
            jump deionarra_s68

        '"Spirit, can you tell me anything else that might be helpful? What waits inside?"{#deionarra_s66_r63409}' if deionarraLogic.r63409_condition():
            # a208 # r63409
            jump deionarra_s68


# s67 # say63410
label deionarra_s67: # from 66.0 66.1
    nr '"My Love, if you have brought *anything* that lives with you to this place, then it is in terrible danger - both from the shadows and from you. Should you die here, your immortality will hunt for the closest living thing in the Fortress, and *that* is the one that shall die in your place. You must leave here, now!"{#deionarra_s67_1}'

    menu:
        '"I can„t *go* back. So can you tell me *anything* else that might be helpful? What waits inside the Fortress?"{#deionarra_s67_r63411}':
            # a209 # r63411
            jump deionarra_s68


# s68 # say63412
label deionarra_s68: # from 66.2 66.3 67.0
    nr '"There is no natural darkness within the Fortress, my Love, only the shades of those who have died in your place. The energies of this Plane feed them, and their hatred for you is beyond all reason. They will not permit you to leave." She throws a glance at the walls of the Fortress. "Do *not* enter, I beg you!"{#deionarra_s68_1}'

    menu:
        '"But - my allies are in there. I cannot leave them. Do you have any idea where they might be?"{#deionarra_s68_r63413}' if deionarraLogic.r63413_condition():
            # a210 # r63413
            jump deionarra_s69

        '"But - one of my allies is in there. I cannot leave. Do you have any idea where my companion might be?"{#deionarra_s68_r63414}' if deionarraLogic.r63414_condition():
            # a211 # r63414
            jump deionarra_s69

        '"I have to enter the Fortress. I cannot go back."{#deionarra_s68_r63415}' if deionarraLogic.r63415_condition():
            # a212 # r63415
            $ deionarraLogic.j68117_s68_r63415_action()
            jump deionarra_s75


# s69 # say63416
label deionarra_s69: # from 68.0 68.1
    nr '"If you brought others, then they were cast from you when you arrived - it is the nature of this place to divide living things… then kill them." She looks distraught. "The Fortress is a thing of many miles - finding your friends here will be difficult."{#deionarra_s69_1}'

    menu:
        '"I have to find them. There is no choice in the matter."{#deionarra_s69_r63417}':
            # a213 # r63417
            $ deionarraLogic.j68117_s69_r63417_action()
            jump deionarra_s75


# s70 # say63418
label deionarra_s70: # from 75.0
    nr '"One thing more…" Deionarra pauses, as if trying to catch a fleeting memory. "Within… within the chamber are great clocks…" Her voice becomes steadier, more certain. "Clocks which you spoke of once as having been the key to you escaping that chamber… when you were trapped there once before." She looks at you. "I know I cannot stay you from your course, my Love - I shall watch for you, and help you if I can."{#deionarra_s70_1}'

    menu:
        '"I brought your ring, Deionarra. I found your legacy to me."{#deionarra_s70_r63419}' if deionarraLogic.r63419_condition():
            # a214 # r63419
            $ deionarraLogic.r63419_action()
            jump deionarra_s71

        '"You have my thanks, spirit. I must go now."{#deionarra_s70_r63420}' if deionarraLogic.r63420_condition():
            # a215 # r63420
            jump deionarra_dispose

        '"You have my thanks, Deionarra. I must go now."{#deionarra_s70_r63421}' if deionarraLogic.r63421_condition():
            # a216 # r63421
            jump deionarra_dispose


# s71 # say63422
label deionarra_s71: # from 70.0
    nr '"The ring still holds a part of me within it, my Love. When you carry it, you carry my heart with you." She closes her eyes for a moment, and you suddenly feel a warmth pass through you. Deionarra opens her eyes, then smiles. "I knew you would return to me with it in your keeping. Carry it now with my blessing, and keep it close to your heart. Through it, I will defend you."{#deionarra_s71_1}'

    menu:
        '"You have my thanks, Deionarra. I must go now."{#deionarra_s71_r63423}' if deionarraLogic.r63423_condition():
            # a217 # r63423
            jump deionarra_dispose


# s72 # say66912
label deionarra_s72: # from 27.1
    nr '"You… I… cannot…" She suddenly freezes, and she speaks slowly, carefully, as if her voice frightens her. "The truth is this: you are one who dies many deaths. These deaths have given the knowing of all things mortal, and in your hand lies the spark of life… and death. Those that die near you carry a trace of themselves that you can bring forth…"{#deionarra_s72_1}'

    jump deionarra_s73


# s73 # say66913
label deionarra_s73: # from 72.0
    nr 'As Deionarra speaks the words, a crawling sensation wells up in the back of your skull… you suddenly feel compelled to look at your hand. As you lift it up and *look* at it, you can SEE the blood coursing sluggishly through your arm, pouring into your muscles, and in turn, giving strength to your bones…{#deionarra_s73_1}'

    menu:
        '"Wh…"{#deionarra_s73_r66914}':
            # a218 # r66914
            $ deionarraLogic.j66917_s73_r66914_action()
            $ deionarraLogic.r66914_action()
            jump deionarra_s74


# s74 # say66915
label deionarra_s74: # from 73.0
    nr 'And you know Deionarra is *right.* You suddenly remember how to coax the dimmest spark of life from a body, and bring it forth… the thought both horrifies you and intrigues you.  ^NNOTE: You have remembered how to raise others from the dead. To access this ability, select the „Special Abilities“ button in the Quick Menu. You can only use this on party members that have died in your presence - it will not work on anyone who does not travel with you, and it will *not* work on party members you remove from the party while they are dead.^-{#deionarra_s74_1}'

    menu:
        '"I… I… I had other questions…"{#deionarra_s74_r66916}':
            # a219 # r66916
            jump deionarra_s10


# s75 # say68114
label deionarra_s75: # from 68.2 69.0
    nr '"Very well, my Love… if you intend to go on, you must know this - past the entrance to the Fortress is a great antechamber with countless shadows. You must move swiftly and not let them gather about you, or you shall surely be slain!"{#deionarra_s75_1}'

    jump deionarra_s70
