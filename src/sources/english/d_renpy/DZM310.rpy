init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm310_logic import Zm310Logic
    zm310Logic = Zm310Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM310.DLG
# ###


# s0 # say6495
label zm310_s0: # - # IF ~  Global("Oinosian","GLOBAL",0)
    nr 'This reanimated corpse has had its lips sewn together and the numbers "310" carved into its brow; the smell of formaldehyde permeates the area around it. It turns its lifeless eyes upon you as you move to bar its path.{#zm310_s0_1}'

    menu:
        '"So… seen anything interesting going on?"{#zm310_s0_r6499}' if zm310Logic.r6499_condition():
            # a0 # r6499
            $ zm310Logic.r6499_action()
            jump zm310_s1

        '"So… seen anything interesting going on?"{#zm310_s0_r6500}' if zm310Logic.r6500_condition():
            # a1 # r6500
            jump zm310_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm310_s0_r6501}' if zm310Logic.r6501_condition():
            # a2 # r6501
            jump zm310_s1

        'Use your Stories-Bones-Tell ability on the corpse.{#zm310_s0_r6502}' if zm310Logic.r6502_condition():
            # a3 # r6502
            $ zm310Logic.r6502_action()
            jump zm310_s2

        '"It was great talking to you. Farewell."{#zm310_s0_r6503}':
            # a4 # r6503
            jump zm310_dispose

        'Leave the corpse in peace.{#zm310_s0_r6504}':
            # a5 # r6504
            jump zm310_dispose


# s1 # say6496
label zm310_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.{#zm310_s1_1}'

    menu:
        'Leave the corpse in peace.{#zm310_s1_r6505}':
            # a6 # r6505
            jump zm310_dispose


# s2 # say6498
label zm310_s2: # from 0.3
    nr 'For a moment you think this corpse is simply too far gone to reply… but suddenly you recognize true misery etched into its features, and feel behind it a sense of despair so profound that the spirit must have returned to its shell of old.{#zm310_s2_1}'

    menu:
        '"I would ask you a question…"{#zm310_s2_r6506}':
            # a7 # r6506
            jump zm310_s3

        'Leave the spirit in peace.{#zm310_s2_r9657}':
            # a8 # r9657
            jump zm310_s17


# s3 # say9642
label zm310_s3: # from 2.0 4.2 5.2 6.2 7.2 8.1 9.0 10.0 11.2 12.1 13.1 14.1 15.1 16.0 18.0
    nr 'It speaks in a slow monotone, the voice of one broken and without hope. Even now it is nearly indistinguishable from a soulless zombie. "What would ye know, m„lord?"{#zm310_s3_1}'

    menu:
        '"Who are you?"{#zm310_s3_r9658}':
            # a9 # r9658
            jump zm310_s4

        '"Where are you from?"{#zm310_s3_r9659}':
            # a10 # r9659
            jump zm310_s5

        '"How did you end up here? As a zombie, I mean?"{#zm310_s3_r9660}':
            # a11 # r9660
            jump zm310_s6

        '"Where are you… where your spirit resides… now?"{#zm310_s3_r9661}':
            # a12 # r9661
            jump zm310_s7

        '"Why are you wrought with such despair?"{#zm310_s3_r9662}':
            # a13 # r9662
            jump zm310_s8

        '"What do you know of this place?"{#zm310_s3_r9663}':
            # a14 # r9663
            jump zm310_s9

        '"Do you know someone named Pharod?"{#zm310_s3_r9664}' if zm310Logic.r9664_condition():
            # a15 # r9664
            jump zm310_s10

        '"Nothing, never mind."{#zm310_s3_r9665}':
            # a16 # r9665
            jump zm310_s17


# s4 # say9643
label zm310_s4: # from 3.0
    nr 'The spirit speaks so softly you must strain to hear it; the corpse„s mouth barely moves to form each word. "I am no one, m“lord; a wretched insect clinging desperately to the Wasting Tower in Oinos. I was once called Arabhiem, though, m„lord… so long, so very long ago."{#zm310_s4_1}'

    menu:
        '"The Wasting Tower?"{#zm310_s4_r9666}':
            # a17 # r9666
            jump zm310_s13

        '"Oinos?"{#zm310_s4_r9667}':
            # a18 # r9667
            jump zm310_s7

        '"I had another question…"{#zm310_s4_r9668}':
            # a19 # r9668
            jump zm310_s3

        '"There is nothing more I wished to know. Farewell."{#zm310_s4_r9669}':
            # a20 # r9669
            jump zm310_s17


# s5 # say9644
label zm310_s5: # from 3.1
    nr '"I lived in Sigil, m„lord. In the Hive. T“was not so awful a place as I once thought, now that my home is… Oinos." The corpse blinks, so slowly that for a moment you thought it had simply shut its eyes.{#zm310_s5_1}'

    menu:
        '"The Hive?"{#zm310_s5_r9670}':
            # a21 # r9670
            jump zm310_s12

        '"Oinos?"{#zm310_s5_r9671}':
            # a22 # r9671
            jump zm310_s7

        '"I had another question…"{#zm310_s5_r9672}':
            # a23 # r9672
            jump zm310_s3

        '"That is all I wished to know. Farewell."{#zm310_s5_r9673}':
            # a24 # r9673
            jump zm310_s17


# s6 # say9645
label zm310_s6: # from 3.2
    nr '"I was murdered, m„lord, by robbers. Filled with drink and stumbling through the alleyways of the Hive, I became lost and eventually fell prey to a band of thugs. “Tis just as well; my life was probably worth less than the few coppers a Collector may have gotten for my corpse."{#zm310_s6_1}'

    menu:
        '"Why such a base opinion of your own life?"{#zm310_s6_r9674}':
            # a25 # r9674
            jump zm310_s16

        '"A Collector?"{#zm310_s6_r9675}':
            # a26 # r9675
            jump zm310_s15

        '"I had another question…"{#zm310_s6_r9676}':
            # a27 # r9676
            jump zm310_s3

        '"That is all I wished to know. Farewell."{#zm310_s6_r9677}':
            # a28 # r9677
            jump zm310_s17


# s7 # say9646
label zm310_s7: # from 3.3 4.1 5.1 8.0 12.0
    nr 'The spirit closes his eyes for a moment, the corpse shuddering slightly. "The horrid Oinos, m„lord. In the Grey Waste. It is there that my soul has been confined, in the shadow of Khin-Oin, the Wasting Tower."{#zm310_s7_1}'

    menu:
        '"Tell me more of this… Oinos."{#zm310_s7_r9678}':
            # a29 # r9678
            jump zm310_s11

        '"Khin-Oin?"{#zm310_s7_r9679}':
            # a30 # r9679
            jump zm310_s13

        '"I had another question…"{#zm310_s7_r9680}':
            # a31 # r9680
            jump zm310_s3

        '"There is nothing more I wished to know. Farewell."{#zm310_s7_r9681}':
            # a32 # r9681
            jump zm310_s17


# s8 # say9647
label zm310_s8: # from 3.4
    nr '"There is nothing else for me, m„lord. Trapped for eternity in the pestilent waste of Oinos, I am. There is no hope for one such as I." The spirit seems to descend into an even more pathetic state, the corpse“s shoulders sagging beneath the weight of its sorrow.{#zm310_s8_1}'

    menu:
        '"Oinos?"{#zm310_s8_r9682}':
            # a33 # r9682
            jump zm310_s7

        '"I see. I had another question…"{#zm310_s8_r9683}':
            # a34 # r9683
            jump zm310_s3

        '"That is all I wished to know. Farewell."{#zm310_s8_r9684}':
            # a35 # r9684
            jump zm310_s17


# s9 # say9648
label zm310_s9: # from 3.5 15.0
    nr '"Very little, m„lord; only that the dead are brought here to be interred or cremated… or used as laborers, as my corpse has been."{#zm310_s9_1}'

    menu:
        '"I see, now. Another question…"{#zm310_s9_r9685}':
            # a36 # r9685
            jump zm310_s3

        '"There is nothing more I wished to know. Farewell."{#zm310_s9_r9686}':
            # a37 # r9686
            jump zm310_s17


# s10 # say9649
label zm310_s10: # from 3.6
    nr 'The corpse shakes its head slowly, side to side. "No, m„lord. I knew no one by that name. I am sorry, m“lord."{#zm310_s10_1}'

    menu:
        '"No need to be. I had another question…"{#zm310_s10_r9687}':
            # a38 # r9687
            jump zm310_s3

        '"Farewell, then."{#zm310_s10_r9688}':
            # a39 # r9688
            jump zm310_s17


# s11 # say9650
label zm310_s11: # from 7.0
    nr '"There is little to say, m„lord. “Tis the land of my Master, the Lord of Khin-Oin… full of anguish and disease, a rot which decays both body and spirit. It is a place of utter hopelessness."{#zm310_s11_1}'

    menu:
        '"Who is this… „Master“?"{#zm310_s11_r9689}':
            # a40 # r9689
            jump zm310_s14

        '"Khin-Oin?"{#zm310_s11_r9690}':
            # a41 # r9690
            jump zm310_s13

        '"I had another question…"{#zm310_s11_r9691}':
            # a42 # r9691
            jump zm310_s3

        '"It certainly sounds so. Farewell, spirit."{#zm310_s11_r9692}':
            # a43 # r9692
            jump zm310_s17


# s12 # say9651
label zm310_s12: # from 5.0
    nr '"Yes, m„lord. A wretched place, but not so dreadful as Oinos."{#zm310_s12_1}'

    menu:
        '"Oinos?"{#zm310_s12_r9693}':
            # a44 # r9693
            jump zm310_s7

        '"I had another question…"{#zm310_s12_r9694}':
            # a45 # r9694
            jump zm310_s3

        '"That is all I wished to know. Farewell."{#zm310_s12_r9695}':
            # a46 # r9695
            jump zm310_s17


# s13 # say9652
label zm310_s13: # from 4.0 7.1 11.1 14.0
    nr '"Yes, m„lord. “Tis a mighty tower, far greater than the highest of Sigil„s. It has the appearance of bone, m“lord - like the spinal column of some gargantuan creature. It is there that I toil, repairing the damage done to it by the armies of my Master„s foes, his rival princes."{#zm310_s13_1}'

    menu:
        '"Who is this „Master“?"{#zm310_s13_r9696}':
            # a47 # r9696
            jump zm310_s14

        '"I see. I had another question…"{#zm310_s13_r9697}':
            # a48 # r9697
            jump zm310_s3

        '"I see. I shall leave you now, spirit; farewell."{#zm310_s13_r9698}':
            # a49 # r9698
            jump zm310_s17


# s14 # say9653
label zm310_s14: # from 11.0 13.0
    nr '"I know him only as the Master, m„lord; the Lord of Khin-Oin. He is a fiendish prince - an ultraloth of awesome power. It is he who owns my soul, and so shall forever own it, a petty thing doomed to languish beneath his foot until eternity grinds its way into Oblivion."{#zm310_s14_1}'

    menu:
        '"Tell me of this „Khin-Oin.“"{#zm310_s14_r9699}':
            # a50 # r9699
            jump zm310_s13

        '"I had another question…"{#zm310_s14_r9700}':
            # a51 # r9700
            jump zm310_s3

        '"There is nothing more I wished to know. Farewell."{#zm310_s14_r9701}':
            # a52 # r9701
            jump zm310_s17


# s15 # say9654
label zm310_s15: # from 6.1
    nr '"Yes, m„lord, a Collector. Those who gather the dead of Sigil and haul them to the Mortuary - where we stand now - for a petty fee." The spirit takes a moment to look at his surroundings, then sighs softly.{#zm310_s15_1}'

    menu:
        '"What do you know of this Mortuary?"{#zm310_s15_r9702}':
            # a53 # r9702
            jump zm310_s9

        '"I see. I had another question for you…"{#zm310_s15_r9703}':
            # a54 # r9703
            jump zm310_s3

        '"That is all I wished to know. Farewell."{#zm310_s15_r9704}':
            # a55 # r9704
            jump zm310_s17


# s16 # say9655
label zm310_s16: # from 6.0
    nr '"I would not speak of it, m„lord. “Tis not worth discussing." The spirit seems immovable in this matter.{#zm310_s16_1}'

    menu:
        '"Very well. I had other questions, then…"{#zm310_s16_r9705}':
            # a56 # r9705
            jump zm310_s3

        '"Farewell, then."{#zm310_s16_r9706}':
            # a57 # r9706
            jump zm310_s17


# s17 # say9656
label zm310_s17: # from 2.1 3.7 4.3 5.3 6.3 7.3 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.2 16.1
    nr 'You do not realize the spirit has left the corpse until, with shuffling steps, the zombie returns to its labors.{#zm310_s17_1}'

    jump zm310_dispose


# s18 # say20102
label zm310_s18: # - # IF ~  Global("Oinosian","GLOBAL",1)
    nr 'The corpse seems to shrink in size, hunching over beneath the weight of the spirit„s despair.{#zm310_s18_1}'

    menu:
        '"I had some questions…"{#zm310_s18_r20103}':
            # a58 # r20103
            jump zm310_s3

        '"Just passing by. Farewell."{#zm310_s18_r20104}':
            # a59 # r20104
            jump zm310_dispose
