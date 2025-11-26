init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1041_logic import Zm1041Logic
    zm1041Logic = Zm1041Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1041.DLG
# ###


# s0 # say6573
label zm1041_s0: # - # IF ~  Global("Bei","GLOBAL",0)
    nr 'This re-animated, male corpse has the numbers "1041" carved into its forehead. Despite its taut, desiccated flesh, it is apparent that its features once had a rather „exotic“ cast to them. The zombie„s lips have been stitched closed - most likely to prevent it from moaning incessantly - and it smells strongly of formaldehyde.'

    menu:
        '"So… seen anything interesting going on?"' if zm1041Logic.r6576_condition():
            # a0 # r6576
            $ zm1041Logic.r6576_action()
            jump zm1041_s1

        '"So… seen anything interesting going on?"' if zm1041Logic.r6577_condition():
            # a1 # r6577
            jump zm1041_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm1041Logic.r6578_condition():
            # a2 # r6578
            jump zm1041_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zm1041Logic.r6579_condition():
            # a3 # r6579
            jump zm1041_s2

        'Use your Stories-Bones-Tell ability on the corpse.' if zm1041Logic.r6580_condition():
            # a4 # r6580
            jump zm1041_s37

        '"It was great talking to you. Farewell."':
            # a5 # r6581
            jump zm1041_dispose

        'Leave the corpse in peace.':
            # a6 # r9095
            jump zm1041_dispose


# s1 # say6574
label zm1041_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.'

    menu:
        'Leave the corpse in peace.':
            # a7 # r6582
            jump zm1041_dispose


# s2 # say6575
label zm1041_s2: # from 0.3
    nr 'The corpse reels for a moment as the spirit revisits its one-time home. Its almond-shaped eyes become dark once more, a faint bronze cast creeping over the pale flesh. It straightens itself, brushing the dust off its clothes.  At last noticing its caller, the ghost peers at you for a moment with curious eyes, then bows slightly.'

    menu:
        'Bow in return.':
            # a8 # r6583
            $ zm1041Logic.r6583_action()
            jump zm1041_s3

        '"I had some questions…"':
            # a9 # r9096
            $ zm1041Logic.r9096_action()
            jump zm1041_s4

        'Leave the spirit.':
            # a10 # r9097
            $ zm1041Logic.r9097_action()
            jump zm1041_dispose


# s3 # say9060
label zm1041_s3: # from 2.0
    nr 'The spirit smiles for a moment, as if pleased. He composes himself, standing with one hand behind him as he begins to speak in a soft, lilting tone:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  That being said, he appears content to stand and wait patiently for your reply.'

    menu:
        '"I… er…"':
            # a11 # r9098
            jump zm1041_s5

        '"I have no idea what you are saying… can you understand my words at all?"':
            # a12 # r9099
            jump zm1041_s5

        '"I cannot understand you. Farewell."':
            # a13 # r9100
            jump zm1041_dispose


# s4 # say9061
label zm1041_s4: # from 2.1
    nr 'You open your mouth to voice a question, but before you can begin the spirit begins to speak in a soft, lilting tone:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  That being said, he appears content to stand and wait patiently for your reply.'

    menu:
        '"I… er…"':
            # a14 # r9101
            jump zm1041_s5

        '"I have no idea what you are saying… can you understand my words at all?"':
            # a15 # r9102
            jump zm1041_s5

        '"I cannot understand you. Farewell."':
            # a16 # r9103
            jump zm1041_dispose


# s5 # say9062
label zm1041_s5: # from 3.0 3.1 4.0 4.1
    nr 'The spirit pauses for a moment, as if to think. He then begins to speak again in a thickly accented, yet deeply refined voice. "You must forgive me, honorable sir. It has been no small length of time since I have had to speak your language. No doubt my spirit has been summoned here to answer your questions; what is it you would know of me?"'

    menu:
        '"Who are you?"':
            # a17 # r9104
            jump zm1041_s6

        '"Where are you from?"':
            # a18 # r9105
            jump zm1041_s7

        '"How did you end up here? As a zombie, I mean?"':
            # a19 # r9106
            jump zm1041_s8

        '"Where are you… where your spirit resides… now?"':
            # a20 # r9107
            jump zm1041_s11

        '"What do you know of this place?"':
            # a21 # r9108
            jump zm1041_s9

        '"Do you know someone named Pharod?"' if zm1041Logic.r9109_condition():
            # a22 # r9109
            jump zm1041_s10

        '"Nothing, never mind."':
            # a23 # r9110
            jump zm1041_dispose


# s6 # say9063
label zm1041_s6: # from 5.0 14.0
    nr '"Who I am is a difficult question to answer… who I *was* is not. I was known as Zhuang Bei, tutor and bodyguard to Liu Xixi, daughter of Censor Chi„an.'

    menu:
        '"Tutor *and* bodyguard?"':
            # a24 # r9111
            jump zm1041_s12

        '"Hmm. Sounds impressive."':
            # a25 # r9112
            jump zm1041_s13

        '"I see. I had more questions…"':
            # a26 # r9113
            jump zm1041_s14

        '"That„s all I wished to know. Farewell."':
            # a27 # r9114
            jump zm1041_dispose


# s7 # say9064
label zm1041_s7: # from 5.1 14.1
    nr '"I was from a place called Shou Lung… a place I once regarded as the center of the Universe." He seems to find mild amusement at the thought. "So many places, so many worlds. I once considered myself a truly learned man, yet truly knew so little when I died…"'

    menu:
        '"How did you arrive from this „Shou Lung“?"':
            # a28 # r9115
            jump zm1041_s16

        '"I see. I had more questions…"':
            # a29 # r9116
            jump zm1041_s14

        '"That„s all I wished to know. Farewell."':
            # a30 # r9117
            jump zm1041_dispose


# s8 # say9065
label zm1041_s8: # from 5.2 14.2
    nr '"I was murdered by one of the men I fell into this world with. I had been hunting him in this city for many, many weeks - it was during this time that I learned your language - but he found me first. A professional assassin, he caught me unawares and slew me as I slept."'

    menu:
        '"Fell into this world?"':
            # a31 # r9118
            jump zm1041_s16

        '"Hunting assassins?"':
            # a32 # r9119
            jump zm1041_s16

        '"I see, but do you know how your corpse come to be working here?"':
            # a33 # r9120
            jump zm1041_s17

        '"You speak well for one with so little time to learn a language."':
            # a34 # r9121
            jump zm1041_s18

        '"I see. I had more questions…"':
            # a35 # r9122
            jump zm1041_s14

        '"That„s all I wished to know. Farewell."':
            # a36 # r9123
            jump zm1041_dispose


# s9 # say9066
label zm1041_s9: # from 5.4 14.4
    nr '"This building? Nothing at all; I had heard of it, knew my corpse was to serve here, but that is all."  "I know almost as little about this great city, „Sigil.“ My weeks here were spent searching for the men I fell into this world with and learning the language; though it pained me, I had time for little else. I could have learned so much from the myriad wonders of such a place…"'

    menu:
        '"Your corpse was to serve here? How did that come about?"':
            # a37 # r9124
            jump zm1041_s17

        '"Fell into this world?"':
            # a38 # r9125
            jump zm1041_s16

        '"You speak well for one with so little time to learn a language."':
            # a39 # r9126
            jump zm1041_s18

        '"I see. I had more questions…"':
            # a40 # r9127
            jump zm1041_s14

        '"Very well. Perhaps we will speak again."':
            # a41 # r9128
            jump zm1041_dispose


# s10 # say9067
label zm1041_s10: # from 5.5 14.5
    nr '"No, the name means nothing to me. I am sorry I could not aid you in this."'

    menu:
        '"I understand. I had more questions…"':
            # a42 # r9129
            jump zm1041_s14

        '"Very well. Perhaps we will speak again."':
            # a43 # r9130
            jump zm1041_dispose


# s11 # say9068
label zm1041_s11: # from 5.3 14.3
    nr 'The spirit seems pained for a moment.  "I… My spirit resides in the realm of the Illustrious Magistrate, Yen-Wang-Yeh: the Palace of Judgement."'

    menu:
        '"Is something wrong? Is it such a bad place?"':
            # a44 # r9131
            jump zm1041_s15

        '"I understand. I had more questions…"':
            # a45 # r9132
            jump zm1041_s14

        '"That„s all I wished to know. Farewell."':
            # a46 # r9133
            jump zm1041_dispose


# s12 # say9069
label zm1041_s12: # from 6.0 16.1
    nr '"Yes; it is not so uncommon where I hail from. It was my duty to stay by Miss Liu at all times, not only to keep her from harm, but to educate her. I was regarded as a scholar of some repute as well as a swordsman, you see. Perhaps I would have served her better were I a better swordsman, though…"'

    menu:
        '"Served her better? Did you fail her somehow?"':
            # a47 # r9134
            jump zm1041_s16

        '"Perhaps. I had more questions…"':
            # a48 # r9135
            jump zm1041_s14

        '"That„s all I wished to know. Farewell."':
            # a49 # r9136
            jump zm1041_dispose


# s13 # say9070
label zm1041_s13: # from 6.1
    nr '"Impressive? Yes, perhaps too much so for me. I… I failed Miss Liu and the Censor in my task."'

    menu:
        '"How so?"':
            # a50 # r9137
            jump zm1041_s16

        '"I had more questions…"':
            # a51 # r9138
            jump zm1041_s14

        '"I see. Perhaps we will speak again."':
            # a52 # r9139
            jump zm1041_dispose


# s14 # say9071
label zm1041_s14: # from 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
    nr 'The spirit nods, an unexpectedly graceful movement for a wizened corpse to make. "Please, ask what you will."'

    menu:
        '"Who are you?"':
            # a53 # r9140
            jump zm1041_s6

        '"Where are you from?"':
            # a54 # r9141
            jump zm1041_s7

        '"How did you end up here? As a zombie, I mean?"':
            # a55 # r9142
            jump zm1041_s8

        '"Where are you… where your spirit resides… now?"':
            # a56 # r9143
            jump zm1041_s11

        '"What do you know of this place?"':
            # a57 # r9144
            jump zm1041_s9

        '"Do you know someone named Pharod?"' if zm1041Logic.r9145_condition():
            # a58 # r9145
            jump zm1041_s10

        '"What was that you spoke when you first appeared?"':
            # a59 # r9146
            jump zm1041_s26

        '"Never mind. Farewell."':
            # a60 # r9147
            jump zm1041_dispose


# s15 # say9072
label zm1041_s15: # from 11.0
    nr '"Well, you see…" The spirit stops for a moment to think, rubbing the corpse„s withered hands together. "When I arrived, after a short period of waiting I was to be ushered to my final, *true* destination. However, there was some sort of commotion during my escort through the Palace, and I was left alone in a side room with the promise that I would be attended to in a moment."'

    menu:
        '"And…?"':
            # a61 # r9148
            jump zm1041_s19

        '"Final destination? Where were you to be sent?"':
            # a62 # r9149
            jump zm1041_s20

        '"Wait… I had other questions, before you continue."':
            # a63 # r9150
            jump zm1041_s14

        '"Perhaps I„ll hear the rest another time. Farewell."':
            # a64 # r9151
            jump zm1041_dispose


# s16 # say9073
label zm1041_s16: # from 7.0 8.0 8.1 9.1 12.0 13.0
    nr '"I will tell you the entire tale. As the tutor and bodyguard of Liu Xixi, I am of course charged with both her education and defense. One fair evening we were standing on a balcony over the Courtyard, where I was teaching her about the various constellations."'

    menu:
        '"Please, go on."':
            # a65 # r9152
            jump zm1041_s21

        '"Tutor *and* bodyguard?"':
            # a66 # r9153
            jump zm1041_s12

        '"Perhaps I„ll hear the rest another time. Farewell."':
            # a67 # r9154
            jump zm1041_dispose


# s17 # say9074
label zm1041_s17: # from 8.2 9.0
    nr '"Ah, that. I was approached one night by a young woman on the street; she was from an organization called the Dustmen, the same that oversees this complex." "She proposed to me that, in return for a small sum of money, that my corpse could be… used… here upon my demise."'

    menu:
        '"And that didn„t seem a bit odd to you?"':
            # a68 # r9155
            jump zm1041_s22

        '"I see. Another question, if I may…"':
            # a69 # r9156
            jump zm1041_s14

        '"That„s all wished to know. Farewell."':
            # a70 # r9157
            jump zm1041_dispose


# s18 # say9075
label zm1041_s18: # from 8.3 9.2
    nr '"Linguistics, in fact, is an area of great interest to me. When I became a scholar I found I could learn new tongues with little trouble at all."'

    menu:
        '"That would explain things. Another question…"':
            # a71 # r9158
            jump zm1041_s14

        '"I understand. Thank you for speaking with me. Farewell."':
            # a72 # r9159
            jump zm1041_dispose


# s19 # say9076
label zm1041_s19: # from 15.0 20.0
    nr '"Well, you see… no one ever returned for me. I waited quietly for what seemed like days, but it was to no avail. I eventually left the room to wander the Palace, hoping to find someone to direct me…" He sighs softly, the faint scent of embalming fluid carried with his exhalation. "There are 9,001 rooms here; in each one I have passed through I was merely directed to another. I seem to have fallen between the cracks, for the time being."'

    menu:
        '"I see. I had another question, though…"':
            # a73 # r9160
            jump zm1041_s14

        '"Anything I could do to help?"':
            # a74 # r9161
            $ zm1041Logic.r9161_action()
            jump zm1041_s24

        '"Poor fool… I wonder how long they„ll let you wander!"':
            # a75 # r9162
            $ zm1041Logic.r9162_action()
            jump zm1041_s25

        '"I wish you good luck. Farewell."':
            # a76 # r9163
            jump zm1041_dispose


# s20 # say9077
label zm1041_s20: # from 15.1
    nr '"I couldn„t say. It is all so very frustrating!" He pauses for a moment to regain his composure, the stiffened joints and tendons of the cadaver creaking softly as they relax once more.'

    menu:
        '"Please continue your tale."':
            # a77 # r9164
            jump zm1041_s19

        '"I can imagine… I had another question…"':
            # a78 # r9165
            jump zm1041_s14

        '"Perhaps I„ll hear the rest another time. Farewell."':
            # a79 # r9166
            jump zm1041_dispose


# s21 # say9078
label zm1041_s21: # from 16.0
    nr '"Of course. As we stood there, two assassins suddenly burst down from the rooftop to the balcony, most likely there to slay or kidnap Miss Liu. Shouting for the guards, I drew my blade and leapt to her defense. In the ensuing battle, the balcony„s railing was shattered and the four of us fell into the Jade Portal."'

    menu:
        '"The what? Jade Portal?"':
            # a80 # r9167
            jump zm1041_s23

        '"Wait… I had other questions, before you continue."':
            # a81 # r9168
            jump zm1041_s14

        '"Perhaps I„ll hear the rest another time. Farewell."':
            # a82 # r9169
            jump zm1041_dispose


# s22 # say9079
label zm1041_s22: # from 17.0
    nr '"Perhaps at first… the idea is a bit macabre after all. But after speaking with her for some time, I realized that they - the Dustmen - feel much the same way I do regarding death. My body? A vehicle only, nothing more. I believe their „True Death“ to be the exalted state that I, personally, seek to attain… total release and detachment from the material world. Should my corpse, having served its purpose as my mortal shell, manage to serve some small purpose here, so much the better." The spirit smiles at you politely.'

    menu:
        '"I see your reasoning. Another question…"':
            # a83 # r9170
            jump zm1041_s14

        '"Interesting. I had best be going now; farewell."':
            # a84 # r9171
            jump zm1041_dispose


# s23 # say9080
label zm1041_s23: # from 21.0
    nr '"Oh! Pardon the assumption on my part… the Jade Portal is a circular pool that lies in the Courtyard. Paved with tiles of green and white soapstone, it is called the Portal because it is said, at times, glimpses of another place appear reflected in its shimmering waters."'

    menu:
        '"I see. Please, continue your story."':
            # a85 # r9172
            jump zm1041_s27

        '"Before you go on, I had other questions…"':
            # a86 # r9173
            jump zm1041_s14

        '"That„s all I wished to know for now. Farewell."':
            # a87 # r9174
            jump zm1041_dispose


# s24 # say9081
label zm1041_s24: # from 19.1
    nr '"Your offer is too kind. I am afraid, however, that there is nothing you can do… I am sure that, in time, I will be sped on my way. Again, though, thank you."'

    menu:
        '"Of course. Say, I had another question…"':
            # a88 # r9175
            jump zm1041_s14

        '"No worries. I had best leave, though. Farewell."':
            # a89 # r9176
            jump zm1041_dispose


# s25 # say9082
label zm1041_s25: # from 19.2 33.1 35.1
    nr 'The spirit stares at you coldly, ghost-lights burning deep within the corpse„s eyes; you seem to have offended him.'

    menu:
        '"My apologies. May I ask you something else?"':
            # a90 # r9177
            jump zm1041_s14

        'Walk off, leave the spirit floating there.':
            # a91 # r9178
            jump zm1041_dispose


# s26 # say9083
label zm1041_s26: # from 14.6
    nr '"Oh, that… ah… it was a poem. Difficult to translate. Did you have another question, perhaps?" He smiles at you uneasily.'

    menu:
        '"Yes… yes, I did."':
            # a92 # r9179
            jump zm1041_s14

        '"No… but I think I„d like to know more about this poem."':
            # a93 # r9180
            jump zm1041_s28

        '"No. As a matter of fact, I think I„ll be leaving. Farewell."':
            # a94 # r9181
            jump zm1041_dispose


# s27 # say9084
label zm1041_s27: # from 23.0
    nr '"As I was saying, we fell into the Jade Portal. I had never imagined it actually *was* a portal in any sense of the word, but surely enough it was! I suddenly found myself lying in an unfamiliar alleyway, my leg broken. I reoriented myself only in time to see the assassins fleeing, Liu Xixi tossed over one of their shoulders."'

    menu:
        '"Strange indeed. Go on, please."':
            # a95 # r9182
            jump zm1041_s31

        '"Oh. Before you go on, I had other questions…"':
            # a96 # r9183
            jump zm1041_s14

        '"I see. Thank you, but I„d best take my leave now."':
            # a97 # r9184
            jump zm1041_dispose


# s28 # say9085
label zm1041_s28: # from 26.1
    nr '"Very well." He thinks for a moment, tapping the ends of the corpse„s long, bony fingers together. Soon, he begins to speak once more in a steady, measured rhythm:  "It is difficult to meet as it is difficult to part. "The north wind has weakened; hundreds of flowers fade away. "When the Spring worms die, the silk shall never come again. "When the candle wax becomes ash, tears shall stop."  He smiles at you politely.'

    menu:
        '"Ah… I had another question."':
            # a98 # r9185
            jump zm1041_s14

        '"Interesting. What does it mean?"':
            # a99 # r9186
            jump zm1041_s29

        '"So you„re saying that I should have left your spirit alone? Have I offended you, calling you here?"' if zm1041Logic.r9187_condition():
            # a100 # r9187
            jump zm1041_s30

        '"Oh. I thank you for explaining that. Farewell."':
            # a101 # r9188
            jump zm1041_dispose


# s29 # say9086
label zm1041_s29: # from 28.1
    nr '"Well, I am ashamed to say it was a subtle attempt at saying… well, saying that perhaps you„d best let the spirits of the dead alone. I no longer desire to have any part in this…" The spirit makes a sweeping gesture to indicate everything around him. "…world."'

    menu:
        '"Hmm. I see. I had something else to ask of you."':
            # a102 # r9189
            jump zm1041_s14

        '"I understand. Farewell, then."':
            # a103 # r9190
            jump zm1041_dispose


# s30 # say9087
label zm1041_s30: # from 28.2
    nr '"Ah… well… no. I had hoped not to be so direct; avoid a confrontation, you see. It is only that I no longer desire to have any part in this…" The spirit makes a sweeping gesture to indicate everything around him. "…world."'

    menu:
        '"Hmm. I see. I had something else to ask of you…"':
            # a104 # r9191
            jump zm1041_s14

        '"I understand. Farewell, then."':
            # a105 # r9192
            jump zm1041_dispose


# s31 # say9088
label zm1041_s31: # from 27.0
    nr '"Well, that is mostly all. I limped about painfully until I found someone to heal my leg; they took what little coin I had as payment. From that healer and others I learned the tongue of the people here, all the while scouring the place for the two assassins and my charge."'

    menu:
        '"You never found them, then?"':
            # a106 # r9193
            jump zm1041_s32

        '"Hmm. You know, it„s odd how quickly you were able to pick up the language…"':
            # a107 # r9194
            jump zm1041_s38

        '"Oh. Before you go on, I had other questions…"':
            # a108 # r9195
            jump zm1041_s14

        '"I„ll have to hear the rest another time; farewell."':
            # a109 # r9196
            jump zm1041_dispose


# s32 # say9089
label zm1041_s32: # from 31.0 38.0
    nr '"I hunted down one of them, but he would not speak. I executed him and kept his head in a silk bag, so that I could bring it back for the Censor when I returned his daughter to him." He frowns for a moment before he continues. "The other assassin… eluded me. He did more than that, in fact; he slew me before I could kill him and rescue my charge. Sad, but it is all behind me, now."'

    menu:
        '"Would you have known how to return to your land, had you rescued this… „Xi-xi“?"':
            # a110 # r9197
            jump zm1041_s33

        '"Interesting story. I had more questions, though…"':
            # a111 # r9198
            jump zm1041_s14

        '"Fascinating. I had best leave you be, now. Farewell."':
            # a112 # r9199
            jump zm1041_dispose


# s33 # say9090
label zm1041_s33: # from 32.0
    nr '"No, but I am confident I would have found a way. A moot point now, really."'

    menu:
        '"I wonder if they are still in the city. Perhaps I could find and help this girl."':
            # a113 # r9200
            $ zm1041Logic.r9200_action()
            jump zm1041_s34

        '"It certainly seems easy for you to just not care about your duties because you„re dead. I don“t know if I could just let something like that go."':
            # a114 # r9201
            $ zm1041Logic.r9201_action()
            jump zm1041_s25

        '"Interesting. Let me ask you something else…"':
            # a115 # r9202
            jump zm1041_s14

        '"Hmm. I„ll leave you, now. Luck to you."':
            # a116 # r9203
            jump zm1041_dispose


# s34 # say9091
label zm1041_s34: # from 33.0
    nr '"Your offer marks you as a noble man… however, no less than seventy-five years have passed since I was slain. The man who assassinated me is long dead by now, and most likely Xixi as well."'

    menu:
        '"Hmm. No matter, then. I had another question…"':
            # a117 # r9205
            jump zm1041_s14

        '"Never mind, then. Farewell."':
            # a118 # r9206
            jump zm1041_dispose


# s35 # say9092
label zm1041_s35: # -
    nr '"The assassin would have features similar to mine, and a Lotus Blossom tattooed upon his brow." Seeing your confusion, he adds "It„s a sort of flower, with seven petals. Liu Xixi is a young girl; only fourteen years of age. Perhaps she or the assassin would know where the way back was, and how to activate it again."'

    menu:
        '"If I see her, I will do my best to aid her in your memory."':
            # a119 # r9207
            $ zm1041Logic.r9207_action()
            jump zm1041_s36

        '"Never mind. I don„t have time for this."':
            # a120 # r9208
            $ zm1041Logic.r9208_action()
            jump zm1041_s25

        '"All right. I had another question…"':
            # a121 # r9209
            $ zm1041Logic.r9209_action()
            jump zm1041_s14

        '"That is all I need. Farewell."':
            # a122 # r9210
            $ zm1041Logic.r9210_action()
            jump zm1041_dispose


# s36 # say9093
label zm1041_s36: # from 35.0
    nr '"You are a kind and honorable man. Do not do it for me, however… it is the girl and the father you help most greatly."'

    menu:
        '"Very well. I had another question…"':
            # a123 # r9211
            jump zm1041_s14

        '"I understand. Farewell, spirit."':
            # a124 # r9212
            jump zm1041_dispose


# s37 # say9094
label zm1041_s37: # from 0.4 # IF ~  Global("Bei","GLOBAL",1)
    nr '"I certainly did not expect to see you again." The spirit bows politely, but his expression remains blank. "What is it you would have of me?"'

    menu:
        '"A question…"':
            # a125 # r9213
            jump zm1041_s14

        '"Nothing; I shall leave you be."':
            # a126 # r9214
            jump zm1041_dispose


# s38 # say9718
label zm1041_s38: # from 31.1
    nr '"Linguistics, in fact, is an area of great interest to me. When I became a scholar I found I could learn new tongues with little trouble at all."'

    menu:
        '"That would explain things. So you never found the assassins?"':
            # a127 # r9719
            jump zm1041_s32

        '"I see. Let me ask you something else, now…"':
            # a128 # r9720
            jump zm1041_s14

        '"I understand. Thank you for speaking with me. Farewell."':
            # a129 # r9721
            jump zm1041_dispose
