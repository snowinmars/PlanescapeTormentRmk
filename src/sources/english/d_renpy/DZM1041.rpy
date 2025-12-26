init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1041_logic import Zm1041Logic
    zm1041Logic = Zm1041Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1041.DLG
# ###


# s0 # say6573
label zm1041_s0: # - # IF ~  Global("Bei","GLOBAL",0)
    'zm1041_s0{#zm1041_s0}'
    # nr 'This re-animated, male corpse has the numbers "1041" carved into its forehead. Despite its taut, desiccated flesh, it is apparent that its features once had a rather „exotic“ cast to them. The zombie„s lips have been stitched closed - most likely to prevent it from moaning incessantly - and it smells strongly of formaldehyde.{#zm1041_s0_1}'

    menu:
        'zm1041_s0_r6576{#zm1041_s0_r6576}' if zm1041Logic.r6576_condition(): # '"So… seen anything interesting going on?"{#zm1041_s0_r6576}'
            # a0 # r6576
            $ zm1041Logic.r6576_action()
            jump zm1041_s1

        'zm1041_s0_r6577{#zm1041_s0_r6577}' if zm1041Logic.r6577_condition(): # '"So… seen anything interesting going on?"{#zm1041_s0_r6577}'
            # a1 # r6577
            jump zm1041_s1

        'zm1041_s0_r6578{#zm1041_s0_r6578}' if zm1041Logic.r6578_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm1041_s0_r6578}'
            # a2 # r6578
            jump zm1041_s1

        'zm1041_s0_r6579{#zm1041_s0_r6579}' if zm1041Logic.r6579_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm1041_s0_r6579}'
            # a3 # r6579
            jump zm1041_s2

        'zm1041_s0_r6580{#zm1041_s0_r6580}' if zm1041Logic.r6580_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm1041_s0_r6580}'
            # a4 # r6580
            jump zm1041_s37

        'zm1041_s0_r6581{#zm1041_s0_r6581}': # '"It was great talking to you. Farewell."{#zm1041_s0_r6581}'
            # a5 # r6581
            jump zm1041_dispose

        'zm1041_s0_r9095{#zm1041_s0_r9095}': # 'Leave the corpse in peace.{#zm1041_s0_r9095}'
            # a6 # r9095
            jump zm1041_dispose


# s1 # say6574
label zm1041_s1: # from 0.0 0.1 0.2
    'zm1041_s1{#zm1041_s1}'
    # nr 'The corpse continues to stare at you.{#zm1041_s1_1}'

    menu:
        'zm1041_s1_r6582{#zm1041_s1_r6582}': # 'Leave the corpse in peace.{#zm1041_s1_r6582}'
            # a7 # r6582
            jump zm1041_dispose


# s2 # say6575
label zm1041_s2: # from 0.3
    'zm1041_s2{#zm1041_s2}'
    # nr 'The corpse reels for a moment as the spirit revisits its one-time home. Its almond-shaped eyes become dark once more, a faint bronze cast creeping over the pale flesh. It straightens itself, brushing the dust off its clothes.  At last noticing its caller, the ghost peers at you for a moment with curious eyes, then bows slightly.{#zm1041_s2_1}'

    menu:
        'zm1041_s2_r6583{#zm1041_s2_r6583}': # 'Bow in return.{#zm1041_s2_r6583}'
            # a8 # r6583
            $ zm1041Logic.r6583_action()
            jump zm1041_s3

        'zm1041_s2_r9096{#zm1041_s2_r9096}': # '"I had some questions…"{#zm1041_s2_r9096}'
            # a9 # r9096
            $ zm1041Logic.r9096_action()
            jump zm1041_s4

        'zm1041_s2_r9097{#zm1041_s2_r9097}': # 'Leave the spirit.{#zm1041_s2_r9097}'
            # a10 # r9097
            $ zm1041Logic.r9097_action()
            jump zm1041_dispose


# s3 # say9060
label zm1041_s3: # from 2.0
    'zm1041_s3{#zm1041_s3}'
    # nr 'The spirit smiles for a moment, as if pleased. He composes himself, standing with one hand behind him as he begins to speak in a soft, lilting tone:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  That being said, he appears content to stand and wait patiently for your reply.{#zm1041_s3_1}'

    menu:
        'zm1041_s3_r9098{#zm1041_s3_r9098}': # '"I… er…"{#zm1041_s3_r9098}'
            # a11 # r9098
            jump zm1041_s5

        'zm1041_s3_r9099{#zm1041_s3_r9099}': # '"I have no idea what you are saying… can you understand my words at all?"{#zm1041_s3_r9099}'
            # a12 # r9099
            jump zm1041_s5

        'zm1041_s3_r9100{#zm1041_s3_r9100}': # '"I cannot understand you. Farewell."{#zm1041_s3_r9100}'
            # a13 # r9100
            jump zm1041_dispose


# s4 # say9061
label zm1041_s4: # from 2.1
    'zm1041_s4{#zm1041_s4}'
    # nr 'You open your mouth to voice a question, but before you can begin the spirit begins to speak in a soft, lilting tone:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  That being said, he appears content to stand and wait patiently for your reply.{#zm1041_s4_1}'

    menu:
        'zm1041_s4_r9101{#zm1041_s4_r9101}': # '"I… er…"{#zm1041_s4_r9101}'
            # a14 # r9101
            jump zm1041_s5

        'zm1041_s4_r9102{#zm1041_s4_r9102}': # '"I have no idea what you are saying… can you understand my words at all?"{#zm1041_s4_r9102}'
            # a15 # r9102
            jump zm1041_s5

        'zm1041_s4_r9103{#zm1041_s4_r9103}': # '"I cannot understand you. Farewell."{#zm1041_s4_r9103}'
            # a16 # r9103
            jump zm1041_dispose


# s5 # say9062
label zm1041_s5: # from 3.0 3.1 4.0 4.1
    'zm1041_s5{#zm1041_s5}'
    # nr 'The spirit pauses for a moment, as if to think. He then begins to speak again in a thickly accented, yet deeply refined voice. "You must forgive me, honorable sir. It has been no small length of time since I have had to speak your language. No doubt my spirit has been summoned here to answer your questions; what is it you would know of me?"{#zm1041_s5_1}'

    menu:
        'zm1041_s5_r9104{#zm1041_s5_r9104}': # '"Who are you?"{#zm1041_s5_r9104}'
            # a17 # r9104
            jump zm1041_s6

        'zm1041_s5_r9105{#zm1041_s5_r9105}': # '"Where are you from?"{#zm1041_s5_r9105}'
            # a18 # r9105
            jump zm1041_s7

        'zm1041_s5_r9106{#zm1041_s5_r9106}': # '"How did you end up here? As a zombie, I mean?"{#zm1041_s5_r9106}'
            # a19 # r9106
            jump zm1041_s8

        'zm1041_s5_r9107{#zm1041_s5_r9107}': # '"Where are you… where your spirit resides… now?"{#zm1041_s5_r9107}'
            # a20 # r9107
            jump zm1041_s11

        'zm1041_s5_r9108{#zm1041_s5_r9108}': # '"What do you know of this place?"{#zm1041_s5_r9108}'
            # a21 # r9108
            jump zm1041_s9

        'zm1041_s5_r9109{#zm1041_s5_r9109}' if zm1041Logic.r9109_condition(): # '"Do you know someone named Pharod?"{#zm1041_s5_r9109}'
            # a22 # r9109
            jump zm1041_s10

        'zm1041_s5_r9110{#zm1041_s5_r9110}': # '"Nothing, never mind."{#zm1041_s5_r9110}'
            # a23 # r9110
            jump zm1041_dispose


# s6 # say9063
label zm1041_s6: # from 5.0 14.0
    'zm1041_s6{#zm1041_s6}'
    # nr '"Who I am is a difficult question to answer… who I *was* is not. I was known as Zhuang Bei, tutor and bodyguard to Liu Xixi, daughter of Censor Chi„an.{#zm1041_s6_1}'

    menu:
        'zm1041_s6_r9111{#zm1041_s6_r9111}': # '"Tutor *and* bodyguard?"{#zm1041_s6_r9111}'
            # a24 # r9111
            jump zm1041_s12

        'zm1041_s6_r9112{#zm1041_s6_r9112}': # '"Hmm. Sounds impressive."{#zm1041_s6_r9112}'
            # a25 # r9112
            jump zm1041_s13

        'zm1041_s6_r9113{#zm1041_s6_r9113}': # '"I see. I had more questions…"{#zm1041_s6_r9113}'
            # a26 # r9113
            jump zm1041_s14

        'zm1041_s6_r9114{#zm1041_s6_r9114}': # '"That„s all I wished to know. Farewell."{#zm1041_s6_r9114}'
            # a27 # r9114
            jump zm1041_dispose


# s7 # say9064
label zm1041_s7: # from 5.1 14.1
    'zm1041_s7{#zm1041_s7}'
    # nr '"I was from a place called Shou Lung… a place I once regarded as the center of the Universe." He seems to find mild amusement at the thought. "So many places, so many worlds. I once considered myself a truly learned man, yet truly knew so little when I died…"{#zm1041_s7_1}'

    menu:
        'zm1041_s7_r9115{#zm1041_s7_r9115}': # '"How did you arrive from this „Shou Lung“?"{#zm1041_s7_r9115}'
            # a28 # r9115
            jump zm1041_s16

        'zm1041_s7_r9116{#zm1041_s7_r9116}': # '"I see. I had more questions…"{#zm1041_s7_r9116}'
            # a29 # r9116
            jump zm1041_s14

        'zm1041_s7_r9117{#zm1041_s7_r9117}': # '"That„s all I wished to know. Farewell."{#zm1041_s7_r9117}'
            # a30 # r9117
            jump zm1041_dispose


# s8 # say9065
label zm1041_s8: # from 5.2 14.2
    'zm1041_s8{#zm1041_s8}'
    # nr '"I was murdered by one of the men I fell into this world with. I had been hunting him in this city for many, many weeks - it was during this time that I learned your language - but he found me first. A professional assassin, he caught me unawares and slew me as I slept."{#zm1041_s8_1}'

    menu:
        'zm1041_s8_r9118{#zm1041_s8_r9118}': # '"Fell into this world?"{#zm1041_s8_r9118}'
            # a31 # r9118
            jump zm1041_s16

        'zm1041_s8_r9119{#zm1041_s8_r9119}': # '"Hunting assassins?"{#zm1041_s8_r9119}'
            # a32 # r9119
            jump zm1041_s16

        'zm1041_s8_r9120{#zm1041_s8_r9120}': # '"I see, but do you know how your corpse come to be working here?"{#zm1041_s8_r9120}'
            # a33 # r9120
            jump zm1041_s17

        'zm1041_s8_r9121{#zm1041_s8_r9121}': # '"You speak well for one with so little time to learn a language."{#zm1041_s8_r9121}'
            # a34 # r9121
            jump zm1041_s18

        'zm1041_s8_r9122{#zm1041_s8_r9122}': # '"I see. I had more questions…"{#zm1041_s8_r9122}'
            # a35 # r9122
            jump zm1041_s14

        'zm1041_s8_r9123{#zm1041_s8_r9123}': # '"That„s all I wished to know. Farewell."{#zm1041_s8_r9123}'
            # a36 # r9123
            jump zm1041_dispose


# s9 # say9066
label zm1041_s9: # from 5.4 14.4
    'zm1041_s9{#zm1041_s9}'
    # nr '"This building? Nothing at all; I had heard of it, knew my corpse was to serve here, but that is all."  "I know almost as little about this great city, „Sigil.“ My weeks here were spent searching for the men I fell into this world with and learning the language; though it pained me, I had time for little else. I could have learned so much from the myriad wonders of such a place…"{#zm1041_s9_1}'

    menu:
        'zm1041_s9_r9124{#zm1041_s9_r9124}': # '"Your corpse was to serve here? How did that come about?"{#zm1041_s9_r9124}'
            # a37 # r9124
            jump zm1041_s17

        'zm1041_s9_r9125{#zm1041_s9_r9125}': # '"Fell into this world?"{#zm1041_s9_r9125}'
            # a38 # r9125
            jump zm1041_s16

        'zm1041_s9_r9126{#zm1041_s9_r9126}': # '"You speak well for one with so little time to learn a language."{#zm1041_s9_r9126}'
            # a39 # r9126
            jump zm1041_s18

        'zm1041_s9_r9127{#zm1041_s9_r9127}': # '"I see. I had more questions…"{#zm1041_s9_r9127}'
            # a40 # r9127
            jump zm1041_s14

        'zm1041_s9_r9128{#zm1041_s9_r9128}': # '"Very well. Perhaps we will speak again."{#zm1041_s9_r9128}'
            # a41 # r9128
            jump zm1041_dispose


# s10 # say9067
label zm1041_s10: # from 5.5 14.5
    'zm1041_s10{#zm1041_s10}'
    # nr '"No, the name means nothing to me. I am sorry I could not aid you in this."{#zm1041_s10_1}'

    menu:
        'zm1041_s10_r9129{#zm1041_s10_r9129}': # '"I understand. I had more questions…"{#zm1041_s10_r9129}'
            # a42 # r9129
            jump zm1041_s14

        'zm1041_s10_r9130{#zm1041_s10_r9130}': # '"Very well. Perhaps we will speak again."{#zm1041_s10_r9130}'
            # a43 # r9130
            jump zm1041_dispose


# s11 # say9068
label zm1041_s11: # from 5.3 14.3
    'zm1041_s11{#zm1041_s11}'
    # nr 'The spirit seems pained for a moment.  "I… My spirit resides in the realm of the Illustrious Magistrate, Yen-Wang-Yeh: the Palace of Judgement."{#zm1041_s11_1}'

    menu:
        'zm1041_s11_r9131{#zm1041_s11_r9131}': # '"Is something wrong? Is it such a bad place?"{#zm1041_s11_r9131}'
            # a44 # r9131
            jump zm1041_s15

        'zm1041_s11_r9132{#zm1041_s11_r9132}': # '"I understand. I had more questions…"{#zm1041_s11_r9132}'
            # a45 # r9132
            jump zm1041_s14

        'zm1041_s11_r9133{#zm1041_s11_r9133}': # '"That„s all I wished to know. Farewell."{#zm1041_s11_r9133}'
            # a46 # r9133
            jump zm1041_dispose


# s12 # say9069
label zm1041_s12: # from 6.0 16.1
    'zm1041_s12{#zm1041_s12}'
    # nr '"Yes; it is not so uncommon where I hail from. It was my duty to stay by Miss Liu at all times, not only to keep her from harm, but to educate her. I was regarded as a scholar of some repute as well as a swordsman, you see. Perhaps I would have served her better were I a better swordsman, though…"{#zm1041_s12_1}'

    menu:
        'zm1041_s12_r9134{#zm1041_s12_r9134}': # '"Served her better? Did you fail her somehow?"{#zm1041_s12_r9134}'
            # a47 # r9134
            jump zm1041_s16

        'zm1041_s12_r9135{#zm1041_s12_r9135}': # '"Perhaps. I had more questions…"{#zm1041_s12_r9135}'
            # a48 # r9135
            jump zm1041_s14

        'zm1041_s12_r9136{#zm1041_s12_r9136}': # '"That„s all I wished to know. Farewell."{#zm1041_s12_r9136}'
            # a49 # r9136
            jump zm1041_dispose


# s13 # say9070
label zm1041_s13: # from 6.1
    'zm1041_s13{#zm1041_s13}'
    # nr '"Impressive? Yes, perhaps too much so for me. I… I failed Miss Liu and the Censor in my task."{#zm1041_s13_1}'

    menu:
        'zm1041_s13_r9137{#zm1041_s13_r9137}': # '"How so?"{#zm1041_s13_r9137}'
            # a50 # r9137
            jump zm1041_s16

        'zm1041_s13_r9138{#zm1041_s13_r9138}': # '"I had more questions…"{#zm1041_s13_r9138}'
            # a51 # r9138
            jump zm1041_s14

        'zm1041_s13_r9139{#zm1041_s13_r9139}': # '"I see. Perhaps we will speak again."{#zm1041_s13_r9139}'
            # a52 # r9139
            jump zm1041_dispose


# s14 # say9071
label zm1041_s14: # from 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
    'zm1041_s14{#zm1041_s14}'
    # nr 'The spirit nods, an unexpectedly graceful movement for a wizened corpse to make. "Please, ask what you will."{#zm1041_s14_1}'

    menu:
        'zm1041_s14_r9140{#zm1041_s14_r9140}': # '"Who are you?"{#zm1041_s14_r9140}'
            # a53 # r9140
            jump zm1041_s6

        'zm1041_s14_r9141{#zm1041_s14_r9141}': # '"Where are you from?"{#zm1041_s14_r9141}'
            # a54 # r9141
            jump zm1041_s7

        'zm1041_s14_r9142{#zm1041_s14_r9142}': # '"How did you end up here? As a zombie, I mean?"{#zm1041_s14_r9142}'
            # a55 # r9142
            jump zm1041_s8

        'zm1041_s14_r9143{#zm1041_s14_r9143}': # '"Where are you… where your spirit resides… now?"{#zm1041_s14_r9143}'
            # a56 # r9143
            jump zm1041_s11

        'zm1041_s14_r9144{#zm1041_s14_r9144}': # '"What do you know of this place?"{#zm1041_s14_r9144}'
            # a57 # r9144
            jump zm1041_s9

        'zm1041_s14_r9145{#zm1041_s14_r9145}' if zm1041Logic.r9145_condition(): # '"Do you know someone named Pharod?"{#zm1041_s14_r9145}'
            # a58 # r9145
            jump zm1041_s10

        'zm1041_s14_r9146{#zm1041_s14_r9146}': # '"What was that you spoke when you first appeared?"{#zm1041_s14_r9146}'
            # a59 # r9146
            jump zm1041_s26

        'zm1041_s14_r9147{#zm1041_s14_r9147}': # '"Never mind. Farewell."{#zm1041_s14_r9147}'
            # a60 # r9147
            jump zm1041_dispose


# s15 # say9072
label zm1041_s15: # from 11.0
    'zm1041_s15{#zm1041_s15}'
    # nr '"Well, you see…" The spirit stops for a moment to think, rubbing the corpse„s withered hands together. "When I arrived, after a short period of waiting I was to be ushered to my final, *true* destination. However, there was some sort of commotion during my escort through the Palace, and I was left alone in a side room with the promise that I would be attended to in a moment."{#zm1041_s15_1}'

    menu:
        'zm1041_s15_r9148{#zm1041_s15_r9148}': # '"And…?"{#zm1041_s15_r9148}'
            # a61 # r9148
            jump zm1041_s19

        'zm1041_s15_r9149{#zm1041_s15_r9149}': # '"Final destination? Where were you to be sent?"{#zm1041_s15_r9149}'
            # a62 # r9149
            jump zm1041_s20

        'zm1041_s15_r9150{#zm1041_s15_r9150}': # '"Wait… I had other questions, before you continue."{#zm1041_s15_r9150}'
            # a63 # r9150
            jump zm1041_s14

        'zm1041_s15_r9151{#zm1041_s15_r9151}': # '"Perhaps I„ll hear the rest another time. Farewell."{#zm1041_s15_r9151}'
            # a64 # r9151
            jump zm1041_dispose


# s16 # say9073
label zm1041_s16: # from 7.0 8.0 8.1 9.1 12.0 13.0
    'zm1041_s16{#zm1041_s16}'
    # nr '"I will tell you the entire tale. As the tutor and bodyguard of Liu Xixi, I am of course charged with both her education and defense. One fair evening we were standing on a balcony over the Courtyard, where I was teaching her about the various constellations."{#zm1041_s16_1}'

    menu:
        'zm1041_s16_r9152{#zm1041_s16_r9152}': # '"Please, go on."{#zm1041_s16_r9152}'
            # a65 # r9152
            jump zm1041_s21

        'zm1041_s16_r9153{#zm1041_s16_r9153}': # '"Tutor *and* bodyguard?"{#zm1041_s16_r9153}'
            # a66 # r9153
            jump zm1041_s12

        'zm1041_s16_r9154{#zm1041_s16_r9154}': # '"Perhaps I„ll hear the rest another time. Farewell."{#zm1041_s16_r9154}'
            # a67 # r9154
            jump zm1041_dispose


# s17 # say9074
label zm1041_s17: # from 8.2 9.0
    'zm1041_s17{#zm1041_s17}'
    # nr '"Ah, that. I was approached one night by a young woman on the street; she was from an organization called the Dustmen, the same that oversees this complex." "She proposed to me that, in return for a small sum of money, that my corpse could be… used… here upon my demise."{#zm1041_s17_1}'

    menu:
        'zm1041_s17_r9155{#zm1041_s17_r9155}': # '"And that didn„t seem a bit odd to you?"{#zm1041_s17_r9155}'
            # a68 # r9155
            jump zm1041_s22

        'zm1041_s17_r9156{#zm1041_s17_r9156}': # '"I see. Another question, if I may…"{#zm1041_s17_r9156}'
            # a69 # r9156
            jump zm1041_s14

        'zm1041_s17_r9157{#zm1041_s17_r9157}': # '"That„s all wished to know. Farewell."{#zm1041_s17_r9157}'
            # a70 # r9157
            jump zm1041_dispose


# s18 # say9075
label zm1041_s18: # from 8.3 9.2
    'zm1041_s18{#zm1041_s18}'
    # nr '"Linguistics, in fact, is an area of great interest to me. When I became a scholar I found I could learn new tongues with little trouble at all."{#zm1041_s18_1}'

    menu:
        'zm1041_s18_r9158{#zm1041_s18_r9158}': # '"That would explain things. Another question…"{#zm1041_s18_r9158}'
            # a71 # r9158
            jump zm1041_s14

        'zm1041_s18_r9159{#zm1041_s18_r9159}': # '"I understand. Thank you for speaking with me. Farewell."{#zm1041_s18_r9159}'
            # a72 # r9159
            jump zm1041_dispose


# s19 # say9076
label zm1041_s19: # from 15.0 20.0
    'zm1041_s19{#zm1041_s19}'
    # nr '"Well, you see… no one ever returned for me. I waited quietly for what seemed like days, but it was to no avail. I eventually left the room to wander the Palace, hoping to find someone to direct me…" He sighs softly, the faint scent of embalming fluid carried with his exhalation. "There are 9,001 rooms here; in each one I have passed through I was merely directed to another. I seem to have fallen between the cracks, for the time being."{#zm1041_s19_1}'

    menu:
        'zm1041_s19_r9160{#zm1041_s19_r9160}': # '"I see. I had another question, though…"{#zm1041_s19_r9160}'
            # a73 # r9160
            jump zm1041_s14

        'zm1041_s19_r9161{#zm1041_s19_r9161}': # '"Anything I could do to help?"{#zm1041_s19_r9161}'
            # a74 # r9161
            $ zm1041Logic.r9161_action()
            jump zm1041_s24

        'zm1041_s19_r9162{#zm1041_s19_r9162}': # '"Poor fool… I wonder how long they„ll let you wander!"{#zm1041_s19_r9162}'
            # a75 # r9162
            $ zm1041Logic.r9162_action()
            jump zm1041_s25

        'zm1041_s19_r9163{#zm1041_s19_r9163}': # '"I wish you good luck. Farewell."{#zm1041_s19_r9163}'
            # a76 # r9163
            jump zm1041_dispose


# s20 # say9077
label zm1041_s20: # from 15.1
    'zm1041_s20{#zm1041_s20}'
    # nr '"I couldn„t say. It is all so very frustrating!" He pauses for a moment to regain his composure, the stiffened joints and tendons of the cadaver creaking softly as they relax once more.{#zm1041_s20_1}'

    menu:
        'zm1041_s20_r9164{#zm1041_s20_r9164}': # '"Please continue your tale."{#zm1041_s20_r9164}'
            # a77 # r9164
            jump zm1041_s19

        'zm1041_s20_r9165{#zm1041_s20_r9165}': # '"I can imagine… I had another question…"{#zm1041_s20_r9165}'
            # a78 # r9165
            jump zm1041_s14

        'zm1041_s20_r9166{#zm1041_s20_r9166}': # '"Perhaps I„ll hear the rest another time. Farewell."{#zm1041_s20_r9166}'
            # a79 # r9166
            jump zm1041_dispose


# s21 # say9078
label zm1041_s21: # from 16.0
    'zm1041_s21{#zm1041_s21}'
    # nr '"Of course. As we stood there, two assassins suddenly burst down from the rooftop to the balcony, most likely there to slay or kidnap Miss Liu. Shouting for the guards, I drew my blade and leapt to her defense. In the ensuing battle, the balcony„s railing was shattered and the four of us fell into the Jade Portal."{#zm1041_s21_1}'

    menu:
        'zm1041_s21_r9167{#zm1041_s21_r9167}': # '"The what? Jade Portal?"{#zm1041_s21_r9167}'
            # a80 # r9167
            jump zm1041_s23

        'zm1041_s21_r9168{#zm1041_s21_r9168}': # '"Wait… I had other questions, before you continue."{#zm1041_s21_r9168}'
            # a81 # r9168
            jump zm1041_s14

        'zm1041_s21_r9169{#zm1041_s21_r9169}': # '"Perhaps I„ll hear the rest another time. Farewell."{#zm1041_s21_r9169}'
            # a82 # r9169
            jump zm1041_dispose


# s22 # say9079
label zm1041_s22: # from 17.0
    'zm1041_s22{#zm1041_s22}'
    # nr '"Perhaps at first… the idea is a bit macabre after all. But after speaking with her for some time, I realized that they - the Dustmen - feel much the same way I do regarding death. My body? A vehicle only, nothing more. I believe their „True Death“ to be the exalted state that I, personally, seek to attain… total release and detachment from the material world. Should my corpse, having served its purpose as my mortal shell, manage to serve some small purpose here, so much the better." The spirit smiles at you politely.{#zm1041_s22_1}'

    menu:
        'zm1041_s22_r9170{#zm1041_s22_r9170}': # '"I see your reasoning. Another question…"{#zm1041_s22_r9170}'
            # a83 # r9170
            jump zm1041_s14

        'zm1041_s22_r9171{#zm1041_s22_r9171}': # '"Interesting. I had best be going now; farewell."{#zm1041_s22_r9171}'
            # a84 # r9171
            jump zm1041_dispose


# s23 # say9080
label zm1041_s23: # from 21.0
    'zm1041_s23{#zm1041_s23}'
    # nr '"Oh! Pardon the assumption on my part… the Jade Portal is a circular pool that lies in the Courtyard. Paved with tiles of green and white soapstone, it is called the Portal because it is said, at times, glimpses of another place appear reflected in its shimmering waters."{#zm1041_s23_1}'

    menu:
        'zm1041_s23_r9172{#zm1041_s23_r9172}': # '"I see. Please, continue your story."{#zm1041_s23_r9172}'
            # a85 # r9172
            jump zm1041_s27

        'zm1041_s23_r9173{#zm1041_s23_r9173}': # '"Before you go on, I had other questions…"{#zm1041_s23_r9173}'
            # a86 # r9173
            jump zm1041_s14

        'zm1041_s23_r9174{#zm1041_s23_r9174}': # '"That„s all I wished to know for now. Farewell."{#zm1041_s23_r9174}'
            # a87 # r9174
            jump zm1041_dispose


# s24 # say9081
label zm1041_s24: # from 19.1
    'zm1041_s24{#zm1041_s24}'
    # nr '"Your offer is too kind. I am afraid, however, that there is nothing you can do… I am sure that, in time, I will be sped on my way. Again, though, thank you."{#zm1041_s24_1}'

    menu:
        'zm1041_s24_r9175{#zm1041_s24_r9175}': # '"Of course. Say, I had another question…"{#zm1041_s24_r9175}'
            # a88 # r9175
            jump zm1041_s14

        'zm1041_s24_r9176{#zm1041_s24_r9176}': # '"No worries. I had best leave, though. Farewell."{#zm1041_s24_r9176}'
            # a89 # r9176
            jump zm1041_dispose


# s25 # say9082
label zm1041_s25: # from 19.2 33.1 35.1
    'zm1041_s25{#zm1041_s25}'
    # nr 'The spirit stares at you coldly, ghost-lights burning deep within the corpse„s eyes; you seem to have offended him.{#zm1041_s25_1}'

    menu:
        'zm1041_s25_r9177{#zm1041_s25_r9177}': # '"My apologies. May I ask you something else?"{#zm1041_s25_r9177}'
            # a90 # r9177
            jump zm1041_s14

        'zm1041_s25_r9178{#zm1041_s25_r9178}': # 'Walk off, leave the spirit floating there.{#zm1041_s25_r9178}'
            # a91 # r9178
            jump zm1041_dispose


# s26 # say9083
label zm1041_s26: # from 14.6
    'zm1041_s26{#zm1041_s26}'
    # nr '"Oh, that… ah… it was a poem. Difficult to translate. Did you have another question, perhaps?" He smiles at you uneasily.{#zm1041_s26_1}'

    menu:
        'zm1041_s26_r9179{#zm1041_s26_r9179}': # '"Yes… yes, I did."{#zm1041_s26_r9179}'
            # a92 # r9179
            jump zm1041_s14

        'zm1041_s26_r9180{#zm1041_s26_r9180}': # '"No… but I think I„d like to know more about this poem."{#zm1041_s26_r9180}'
            # a93 # r9180
            jump zm1041_s28

        'zm1041_s26_r9181{#zm1041_s26_r9181}': # '"No. As a matter of fact, I think I„ll be leaving. Farewell."{#zm1041_s26_r9181}'
            # a94 # r9181
            jump zm1041_dispose


# s27 # say9084
label zm1041_s27: # from 23.0
    'zm1041_s27{#zm1041_s27}'
    # nr '"As I was saying, we fell into the Jade Portal. I had never imagined it actually *was* a portal in any sense of the word, but surely enough it was! I suddenly found myself lying in an unfamiliar alleyway, my leg broken. I reoriented myself only in time to see the assassins fleeing, Liu Xixi tossed over one of their shoulders."{#zm1041_s27_1}'

    menu:
        'zm1041_s27_r9182{#zm1041_s27_r9182}': # '"Strange indeed. Go on, please."{#zm1041_s27_r9182}'
            # a95 # r9182
            jump zm1041_s31

        'zm1041_s27_r9183{#zm1041_s27_r9183}': # '"Oh. Before you go on, I had other questions…"{#zm1041_s27_r9183}'
            # a96 # r9183
            jump zm1041_s14

        'zm1041_s27_r9184{#zm1041_s27_r9184}': # '"I see. Thank you, but I„d best take my leave now."{#zm1041_s27_r9184}'
            # a97 # r9184
            jump zm1041_dispose


# s28 # say9085
label zm1041_s28: # from 26.1
    'zm1041_s28{#zm1041_s28}'
    # nr '"Very well." He thinks for a moment, tapping the ends of the corpse„s long, bony fingers together. Soon, he begins to speak once more in a steady, measured rhythm:  "It is difficult to meet as it is difficult to part. "The north wind has weakened; hundreds of flowers fade away. "When the Spring worms die, the silk shall never come again. "When the candle wax becomes ash, tears shall stop."  He smiles at you politely.{#zm1041_s28_1}'

    menu:
        'zm1041_s28_r9185{#zm1041_s28_r9185}': # '"Ah… I had another question."{#zm1041_s28_r9185}'
            # a98 # r9185
            jump zm1041_s14

        'zm1041_s28_r9186{#zm1041_s28_r9186}': # '"Interesting. What does it mean?"{#zm1041_s28_r9186}'
            # a99 # r9186
            jump zm1041_s29

        'zm1041_s28_r9187{#zm1041_s28_r9187}' if zm1041Logic.r9187_condition(): # '"So you„re saying that I should have left your spirit alone? Have I offended you, calling you here?"{#zm1041_s28_r9187}'
            # a100 # r9187
            jump zm1041_s30

        'zm1041_s28_r9188{#zm1041_s28_r9188}': # '"Oh. I thank you for explaining that. Farewell."{#zm1041_s28_r9188}'
            # a101 # r9188
            jump zm1041_dispose


# s29 # say9086
label zm1041_s29: # from 28.1
    'zm1041_s29{#zm1041_s29}'
    # nr '"Well, I am ashamed to say it was a subtle attempt at saying… well, saying that perhaps you„d best let the spirits of the dead alone. I no longer desire to have any part in this…" The spirit makes a sweeping gesture to indicate everything around him. "…world."{#zm1041_s29_1}'

    menu:
        'zm1041_s29_r9189{#zm1041_s29_r9189}': # '"Hmm. I see. I had something else to ask of you."{#zm1041_s29_r9189}'
            # a102 # r9189
            jump zm1041_s14

        'zm1041_s29_r9190{#zm1041_s29_r9190}': # '"I understand. Farewell, then."{#zm1041_s29_r9190}'
            # a103 # r9190
            jump zm1041_dispose


# s30 # say9087
label zm1041_s30: # from 28.2
    'zm1041_s30{#zm1041_s30}'
    # nr '"Ah… well… no. I had hoped not to be so direct; avoid a confrontation, you see. It is only that I no longer desire to have any part in this…" The spirit makes a sweeping gesture to indicate everything around him. "…world."{#zm1041_s30_1}'

    menu:
        'zm1041_s30_r9191{#zm1041_s30_r9191}': # '"Hmm. I see. I had something else to ask of you…"{#zm1041_s30_r9191}'
            # a104 # r9191
            jump zm1041_s14

        'zm1041_s30_r9192{#zm1041_s30_r9192}': # '"I understand. Farewell, then."{#zm1041_s30_r9192}'
            # a105 # r9192
            jump zm1041_dispose


# s31 # say9088
label zm1041_s31: # from 27.0
    'zm1041_s31{#zm1041_s31}'
    # nr '"Well, that is mostly all. I limped about painfully until I found someone to heal my leg; they took what little coin I had as payment. From that healer and others I learned the tongue of the people here, all the while scouring the place for the two assassins and my charge."{#zm1041_s31_1}'

    menu:
        'zm1041_s31_r9193{#zm1041_s31_r9193}': # '"You never found them, then?"{#zm1041_s31_r9193}'
            # a106 # r9193
            jump zm1041_s32

        'zm1041_s31_r9194{#zm1041_s31_r9194}': # '"Hmm. You know, it„s odd how quickly you were able to pick up the language…"{#zm1041_s31_r9194}'
            # a107 # r9194
            jump zm1041_s38

        'zm1041_s31_r9195{#zm1041_s31_r9195}': # '"Oh. Before you go on, I had other questions…"{#zm1041_s31_r9195}'
            # a108 # r9195
            jump zm1041_s14

        'zm1041_s31_r9196{#zm1041_s31_r9196}': # '"I„ll have to hear the rest another time; farewell."{#zm1041_s31_r9196}'
            # a109 # r9196
            jump zm1041_dispose


# s32 # say9089
label zm1041_s32: # from 31.0 38.0
    'zm1041_s32{#zm1041_s32}'
    # nr '"I hunted down one of them, but he would not speak. I executed him and kept his head in a silk bag, so that I could bring it back for the Censor when I returned his daughter to him." He frowns for a moment before he continues. "The other assassin… eluded me. He did more than that, in fact; he slew me before I could kill him and rescue my charge. Sad, but it is all behind me, now."{#zm1041_s32_1}'

    menu:
        'zm1041_s32_r9197{#zm1041_s32_r9197}': # '"Would you have known how to return to your land, had you rescued this… „Xi-xi“?"{#zm1041_s32_r9197}'
            # a110 # r9197
            jump zm1041_s33

        'zm1041_s32_r9198{#zm1041_s32_r9198}': # '"Interesting story. I had more questions, though…"{#zm1041_s32_r9198}'
            # a111 # r9198
            jump zm1041_s14

        'zm1041_s32_r9199{#zm1041_s32_r9199}': # '"Fascinating. I had best leave you be, now. Farewell."{#zm1041_s32_r9199}'
            # a112 # r9199
            jump zm1041_dispose


# s33 # say9090
label zm1041_s33: # from 32.0
    'zm1041_s33{#zm1041_s33}'
    # nr '"No, but I am confident I would have found a way. A moot point now, really."{#zm1041_s33_1}'

    menu:
        'zm1041_s33_r9200{#zm1041_s33_r9200}': # '"I wonder if they are still in the city. Perhaps I could find and help this girl."{#zm1041_s33_r9200}'
            # a113 # r9200
            $ zm1041Logic.r9200_action()
            jump zm1041_s34

        'zm1041_s33_r9201{#zm1041_s33_r9201}': # '"It certainly seems easy for you to just not care about your duties because you„re dead. I don“t know if I could just let something like that go."{#zm1041_s33_r9201}'
            # a114 # r9201
            $ zm1041Logic.r9201_action()
            jump zm1041_s25

        'zm1041_s33_r9202{#zm1041_s33_r9202}': # '"Interesting. Let me ask you something else…"{#zm1041_s33_r9202}'
            # a115 # r9202
            jump zm1041_s14

        'zm1041_s33_r9203{#zm1041_s33_r9203}': # '"Hmm. I„ll leave you, now. Luck to you."{#zm1041_s33_r9203}'
            # a116 # r9203
            jump zm1041_dispose


# s34 # say9091
label zm1041_s34: # from 33.0
    'zm1041_s34{#zm1041_s34}'
    # nr '"Your offer marks you as a noble man… however, no less than seventy-five years have passed since I was slain. The man who assassinated me is long dead by now, and most likely Xixi as well."{#zm1041_s34_1}'

    menu:
        'zm1041_s34_r9205{#zm1041_s34_r9205}': # '"Hmm. No matter, then. I had another question…"{#zm1041_s34_r9205}'
            # a117 # r9205
            jump zm1041_s14

        'zm1041_s34_r9206{#zm1041_s34_r9206}': # '"Never mind, then. Farewell."{#zm1041_s34_r9206}'
            # a118 # r9206
            jump zm1041_dispose


# s35 # say9092
label zm1041_s35: # -
    'zm1041_s35{#zm1041_s35}'
    # nr '"The assassin would have features similar to mine, and a Lotus Blossom tattooed upon his brow." Seeing your confusion, he adds "It„s a sort of flower, with seven petals. Liu Xixi is a young girl; only fourteen years of age. Perhaps she or the assassin would know where the way back was, and how to activate it again."{#zm1041_s35_1}'

    menu:
        'zm1041_s35_r9207{#zm1041_s35_r9207}': # '"If I see her, I will do my best to aid her in your memory."{#zm1041_s35_r9207}'
            # a119 # r9207
            $ zm1041Logic.r9207_action()
            jump zm1041_s36

        'zm1041_s35_r9208{#zm1041_s35_r9208}': # '"Never mind. I don„t have time for this."{#zm1041_s35_r9208}'
            # a120 # r9208
            $ zm1041Logic.r9208_action()
            jump zm1041_s25

        'zm1041_s35_r9209{#zm1041_s35_r9209}': # '"All right. I had another question…"{#zm1041_s35_r9209}'
            # a121 # r9209
            $ zm1041Logic.r9209_action()
            jump zm1041_s14

        'zm1041_s35_r9210{#zm1041_s35_r9210}': # '"That is all I need. Farewell."{#zm1041_s35_r9210}'
            # a122 # r9210
            $ zm1041Logic.r9210_action()
            jump zm1041_dispose


# s36 # say9093
label zm1041_s36: # from 35.0
    'zm1041_s36{#zm1041_s36}'
    # nr '"You are a kind and honorable man. Do not do it for me, however… it is the girl and the father you help most greatly."{#zm1041_s36_1}'

    menu:
        'zm1041_s36_r9211{#zm1041_s36_r9211}': # '"Very well. I had another question…"{#zm1041_s36_r9211}'
            # a123 # r9211
            jump zm1041_s14

        'zm1041_s36_r9212{#zm1041_s36_r9212}': # '"I understand. Farewell, spirit."{#zm1041_s36_r9212}'
            # a124 # r9212
            jump zm1041_dispose


# s37 # say9094
label zm1041_s37: # from 0.4 # IF ~  Global("Bei","GLOBAL",1)
    'zm1041_s37{#zm1041_s37}'
    # nr '"I certainly did not expect to see you again." The spirit bows politely, but his expression remains blank. "What is it you would have of me?"{#zm1041_s37_1}'

    menu:
        'zm1041_s37_r9213{#zm1041_s37_r9213}': # '"A question…"{#zm1041_s37_r9213}'
            # a125 # r9213
            jump zm1041_s14

        'zm1041_s37_r9214{#zm1041_s37_r9214}': # '"Nothing; I shall leave you be."{#zm1041_s37_r9214}'
            # a126 # r9214
            jump zm1041_dispose


# s38 # say9718
label zm1041_s38: # from 31.1
    'zm1041_s38{#zm1041_s38}'
    # nr '"Linguistics, in fact, is an area of great interest to me. When I became a scholar I found I could learn new tongues with little trouble at all."{#zm1041_s38_1}'

    menu:
        'zm1041_s38_r9719{#zm1041_s38_r9719}': # '"That would explain things. So you never found the assassins?"{#zm1041_s38_r9719}'
            # a127 # r9719
            jump zm1041_s32

        'zm1041_s38_r9720{#zm1041_s38_r9720}': # '"I see. Let me ask you something else, now…"{#zm1041_s38_r9720}'
            # a128 # r9720
            jump zm1041_s14

        'zm1041_s38_r9721{#zm1041_s38_r9721}': # '"I understand. Thank you for speaking with me. Farewell."{#zm1041_s38_r9721}'
            # a129 # r9721
            jump zm1041_dispose
