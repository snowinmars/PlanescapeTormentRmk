init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte2_logic import Morte2Logic
    morte2Logic = Morte2Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE2.DLG
# ###


# s0 # say41144
label morte2_s0: # - # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    nr '"Pssst… Some advice, chief: I„d keep it quiet from here on - no need to put any more corpses in the dead-book than necessary… especially the femmes. Plus, killing them might draw the caretakers here."{#morte2_s0_1}'

    menu:
        '"I don„t think you mentioned it before… *who* are these caretakers?"{#morte2_s0_r41145}':
            # a0 # r41145
            $ morte2Logic.r41145_action()
            jump morte2_s1

        '"The corpses here… where did they all come from?"{#morte2_s0_r41146}':
            # a1 # r41146
            $ morte2Logic.r41146_action()
            jump morte2_s3

        '"Why do you care about the female corpses?"{#morte2_s0_r41147}':
            # a2 # r41147
            $ morte2Logic.r41147_action()
            jump morte2_s4

        '"All right… I„ll… try to remember that."{#morte2_s0_r41148}':
            # a3 # r41148
            $ morte2Logic.r41148_action()
            jump morte2_s8


# s1 # say41149
label morte2_s1: # from 0.0 3.0 7.0
    nr '"They call themselves the „Dustmen.“ You can„t miss “em: They have an obsession with black and rigor mortis of the face. They„re an addled bunch of ghoulish death-worshippers; they believe everybody should die… sooner better than later."{#morte2_s1_1}'

    menu:
        '"I„m confused… why do these Dustmen care if I escape?"{#morte2_s1_r41150}':
            # a4 # r41150
            jump morte2_s2


# s2 # say41151
label morte2_s2: # from 1.0
    nr '"Weren„t you listening?! I said the Dusties believe EVERYBODY“S got to die, sooner better than later. You think the corpses you„ve seen are happier in the dead-book than out of it?"{#morte2_s2_1}'

    menu:
        '"The corpses I„ve seen here… where did they all come from?"{#morte2_s2_r41152}':
            # a5 # r41152
            jump morte2_s3

        '"Before you said something about making sure I didn„t kill any *female* corpses. Why?"{#morte2_s2_r41153}':
            # a6 # r41153
            jump morte2_s4

        '"All right… I„ll… try to remember that."{#morte2_s2_r41154}':
            # a7 # r41154
            jump morte2_s8


# s3 # say41155
label morte2_s3: # from 0.1 2.0 7.1
    nr '"Death visits the planes every day, chief. These shamblers are all that„s left of the poor sods who sold their bodies to the caretakers after death."{#morte2_s3_1}'

    menu:
        '"Enlighten me… *who* are these caretakers?"{#morte2_s3_r41156}':
            # a8 # r41156
            jump morte2_s1

        '"Before you said something about making sure I didn„t kill any *female* corpses. Why?"{#morte2_s3_r41157}':
            # a9 # r41157
            jump morte2_s4

        '"All right… I„ll… try to remember that."{#morte2_s3_r41158}':
            # a10 # r41158
            jump morte2_s8


# s4 # say41159
label morte2_s4: # from 0.2 2.1 3.1
    nr '"Wh- are you *serious?* Look, chief, these dead chits are the last chance for a couple of hardy bashers like us. We need to be *chivalrous*… no hacking them up for keys, no lopping their limbs off, things like that."{#morte2_s4_1}'

    menu:
        '"Last chance? What are you *talking* about?"{#morte2_s4_r41160}':
            # a11 # r41160
            jump morte2_s5


# s5 # say41161
label morte2_s5: # from 4.0
    nr '"Chief, THEY„RE dead, WE“RE dead… see where I„m going? Eh? Eh?"{#morte2_s5_1}'

    menu:
        '"No… no, I don„t, actually."{#morte2_s5_r41162}':
            # a12 # r41162
            jump morte2_s6

        '"You *can„t* be serious."{#morte2_s5_r41163}' if morte2Logic.r41163_condition():
            # a13 # r41163
            jump morte2_s6


# s6 # say41164
label morte2_s6: # from 5.0 5.1
    nr '"Chief, we already got an opening line with these limping ladies. We„ve *all* died at least once: we“ll have something to talk about. They„ll appreciate men with our kind of death experience."{#morte2_s6_1}'

    menu:
        '"Wait… didn„t you say before that I“m *not* dead?"{#morte2_s6_r41165}':
            # a14 # r41165
            jump morte2_s7


# s7 # say41166
label morte2_s7: # from 6.0
    nr '"Well… all right, *you* might not be dead, but *I* am. And from where I„m standing, I wouldn“t mind sharing a coffin with some of these fine, sinewy cadavers I see here." Morte starts clacking his teeth, as if in anticipation. "„Course, the caretakers would have to part with them first, and that“s not likely…"{#morte2_s7_1}'

    menu:
        '"Who are these caretakers again?"{#morte2_s7_r41167}':
            # a15 # r41167
            jump morte2_s1

        '"But where did all these corpses come from?"{#morte2_s7_r41168}':
            # a16 # r41168
            jump morte2_s3

        '"All right… I„ll try and remember that."{#morte2_s7_r41169}':
            # a17 # r41169
            jump morte2_s8


# s8 # say41170
label morte2_s8: # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    nr '"Look, chief. It„s obvious you“re still a little addled after your kiss with death, so I got two bits of advice for you: one, if you got questions, *ask* me, all right?"  ^NNOTE: <SPEAKTO>^-{#morte2_s8_1}'

    menu:
        '"All right… if I have any questions, I„ll ask you."{#morte2_s8_r41171}':
            # a18 # r41171
            jump morte2_s9


# s9 # say41172
label morte2_s9: # from 8.0
    nr '"Second, if you„re *half* as forgetful as you seem to be, start writing stuff down - whenever you come across something that *might* be important, jot it down so you don“t forget."{#morte2_s9_1}'

    menu:
        '"If I had that journal I was *supposed* to have with me, I„d do that."{#morte2_s9_r41173}':
            # a19 # r41173
            jump morte2_s10


# s10 # say41174
label morte2_s10: # from 9.0
    nr '"Start a new one, then, chief. No loss. There„s plenty of parchment and ink around here to last you."{#morte2_s10_1}'

    menu:
        '"Hmmmm. All right. It couldn„t hurt… I“ll make a new one, then."{#morte2_s10_r41175}':
            # a20 # r41175
            jump morte2_s11


# s11 # say41176
label morte2_s11: # from 10.0
    nr '"Use it to keep track of your movements. If you ever start to get cloudy on important things, like who you are… or more importantly, who *I* am… use it to refresh your memory."  ^NNOTE: To access your journal, select the journal button on the quick menu. Your journal will automatically be updated throughout the game.^-{#morte2_s11_1}'

    menu:
        '"All right… I got it. Let„s go."{#morte2_s11_r41177}':
            # a21 # r41177
            $ morte2Logic.j39516_s11_r41177_action()
            jump morte2_dispose


# s12 # say41178
label morte2_s12: # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0 # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"What„s eating you, chief?"{#morte2_s12_1}'

    menu:
        '"Can you read to me what„s tattooed on my back again?"{#morte2_s12_r41179}':
            # a22 # r41179
            jump morte2_s13

        '"What is this place again?"{#morte2_s12_r41180}':
            # a23 # r41180
            jump morte2_s18

        '"This place is huge… who takes care of it?"{#morte2_s12_r41181}' if morte2Logic.r41181_condition():
            # a24 # r41181
            jump morte2_s19

        '"Who are the caretakers of this place again?"{#morte2_s12_r41182}' if morte2Logic.r41182_condition():
            # a25 # r41182
            jump morte2_s19

        '"The corpses here… where did they all come from?"{#morte2_s12_r41183}':
            # a26 # r41183
            jump morte2_s22

        '"Before you said something about making sure I didn„t kill any *female* corpses. Why?"{#morte2_s12_r41184}' if morte2Logic.r41184_condition():
            # a27 # r41184
            jump morte2_s23

        '"How do I use these bandages?"{#morte2_s12_r41185}' if morte2Logic.r41185_condition():
            # a28 # r41185
            jump morte2_s21

        '"Nothing at the moment, Morte. Just checking to see if you were still with me."{#morte2_s12_r41186}' if morte2Logic.r41186_condition():
            # a29 # r41186
            jump morte2_s8

        '"Nothing at the moment, Morte. Just checking to see if you were still with me."{#morte2_s12_r41187}' if morte2Logic.r41187_condition():
            # a30 # r41187
            jump morte2_dispose


# s13 # say41188
label morte2_s13: # from 12.0
    nr '"Aw, *c„mon,* chief. Don“t tell me you forgot already."{#morte2_s13_1}'

    menu:
        '"I just need to refresh my memory, is all."{#morte2_s13_r41189}':
            # a31 # r41189
            jump morte2_s14

        '"Never mind, then. I had some other questions…"{#morte2_s13_r41190}':
            # a32 # r41190
            jump morte2_s12

        '"Forget it, then. Let„s go."{#morte2_s13_r41191}' if morte2Logic.r41191_condition():
            # a33 # r41191
            jump morte2_s8

        '"Forget it, then. Let„s go."{#morte2_s13_r41192}' if morte2Logic.r41192_condition():
            # a34 # r41192
            jump morte2_dispose


# s14 # say41193
label morte2_s14: # from 13.0
    nr '"Bet I„m going to be hearing THAT a lot." Morte clears his throat. "Let“s see…"  „I know you feel like you“ve been drinking a few kegs of Styx wash, but you need to CENTER yourself. Among your possessions is a JOURNAL that„ll shed some light on the dark of the matter. PHAROD can fill you in on the rest of the chant, if he“s not in the dead-book already.„{#morte2_s14_1}'

    menu:
        '"Pharod… hmmm. Keep going."{#morte2_s14_r41194}':
            # a35 # r41194
            jump morte2_s15

        '"Never mind. I had some other questions…"{#morte2_s14_r41195}':
            # a36 # r41195
            jump morte2_s12

        '"Forget it. I„ve heard enough. Let“s go."{#morte2_s14_r41196}' if morte2Logic.r41196_condition():
            # a37 # r41196
            jump morte2_s8

        '"Forget it. I„ve heard enough. Let“s go."{#morte2_s14_r41197}' if morte2Logic.r41197_condition():
            # a38 # r41197
            jump morte2_dispose


# s15 # say41198
label morte2_s15: # from 14.0
    nr '"I will, I will, hold on." Morte pauses for a moment. "All right, here„s the last bit…"  “Don„t lose the journal or we“ll be up the Styx again. And whatever you do, DO NOT tell anyone WHO you are or WHAT happens to you, or they„ll put you on a quick pilgrimage to the crematorium. Do what I tell you: READ the journal, then FIND Pharod.“{#morte2_s15_1}'

    menu:
        '"And there wasn„t a journal with me when I woke up?"{#morte2_s15_r41199}':
            # a39 # r41199
            jump morte2_s16

        '"Never mind. I had some other questions…"{#morte2_s15_r41200}':
            # a40 # r41200
            jump morte2_s12

        '"Forget it. I„ve heard enough. Let“s go."{#morte2_s15_r41201}' if morte2Logic.r41201_condition():
            # a41 # r41201
            jump morte2_s8

        '"Forget it. I„ve heard enough. Let“s go."{#morte2_s15_r41203}' if morte2Logic.r41203_condition():
            # a42 # r41203
            jump morte2_dispose


# s16 # say41202
label morte2_s16: # from 15.0
    nr '"No… you were stripped to the skins. Like I said before, looks like you got enough of a journal penned on your body."{#morte2_s16_1}'

    menu:
        '"And you„re sure you don“t know anyone named Pharod?"{#morte2_s16_r41204}':
            # a43 # r41204
            jump morte2_s17

        '"True enough. I had some other questions…"{#morte2_s16_r41205}':
            # a44 # r41205
            jump morte2_s12

        '"All right, then. Let„s go."{#morte2_s16_r41206}' if morte2Logic.r41206_condition():
            # a45 # r41206
            jump morte2_s8

        '"All right, then. Let„s go."{#morte2_s16_r41207}' if morte2Logic.r41207_condition():
            # a46 # r41207
            jump morte2_dispose


# s17 # say41208
label morte2_s17: # from 16.0
    nr '"Nope. Still, some berk„s got to know where to find him. Let“s ask around… AFTER we get out of here."{#morte2_s17_1}'

    menu:
        '"Before we go, I had some other questions…"{#morte2_s17_r41209}':
            # a47 # r41209
            jump morte2_s12

        '"All right, then. Let„s go."{#morte2_s17_r41210}' if morte2Logic.r41210_condition():
            # a48 # r41210
            jump morte2_s8

        '"All right, then. Let„s go."{#morte2_s17_r41211}' if morte2Logic.r41211_condition():
            # a49 # r41211
            jump morte2_dispose


# s18 # say41212
label morte2_s18: # from 12.1
    nr '"It„s called the “Mortuary„… it“s a big black structure with all the architectural charm of a pregnant spider."{#morte2_s18_1}'

    menu:
        '"Got it. I had some other questions for you…"{#morte2_s18_r41213}':
            # a50 # r41213
            jump morte2_s12

        '"That„s all I wanted to know. Thanks."{#morte2_s18_r41214}' if morte2Logic.r41214_condition():
            # a51 # r41214
            jump morte2_s8

        '"That„s all I wanted to know. Thanks."{#morte2_s18_r41215}' if morte2Logic.r41215_condition():
            # a52 # r41215
            jump morte2_dispose


# s19 # say41216
label morte2_s19: # from 12.2 12.3
    nr '"They call themselves the „Dustmen.“ You can„t miss “em: They have an obsession with black and rigor mortis of the face. They„re an addled bunch of ghoulish death-worshippers; they believe everybody should die… sooner better than later."{#morte2_s19_1}'

    menu:
        '"I„m confused… why do these Dustmen care if I escape?"{#morte2_s19_r41217}':
            # a53 # r41217
            jump morte2_s20

        '"Got it. I had some other questions for you…"{#morte2_s19_r41218}':
            # a54 # r41218
            jump morte2_s12

        '"Understood. I„ll be careful, then."{#morte2_s19_r41219}' if morte2Logic.r41219_condition():
            # a55 # r41219
            jump morte2_s8

        '"Understood. I„ll be careful, then."{#morte2_s19_r41220}' if morte2Logic.r41220_condition():
            # a56 # r41220
            jump morte2_dispose


# s20 # say41221
label morte2_s20: # from 19.0
    nr '"Weren„t you listening?! I said the Dusties believe EVERYBODY“S got to die, sooner better than later. You think the corpses you„ve seen are happier in the dead-book than out of it?"{#morte2_s20_1}'

    menu:
        '"Got it. I had some other questions for you…"{#morte2_s20_r41222}':
            # a57 # r41222
            jump morte2_s12

        '"All right… I„ll… try to remember that."{#morte2_s20_r41223}' if morte2Logic.r41223_condition():
            # a58 # r41223
            jump morte2_s8

        '"All right… I„ll… try to remember that."{#morte2_s20_r41224}' if morte2Logic.r41224_condition():
            # a59 # r41224
            jump morte2_dispose


# s21 # say41225
label morte2_s21: # from 12.6
    nr '"You, well… you *use* them. Staunch bleeding, and all that."  ^NNOTE: <BANDAGES2>^-{#morte2_s21_1}'

    menu:
        '"Got it. I had some other questions for you…"{#morte2_s21_r41226}':
            # a60 # r41226
            jump morte2_s12

        '"Thanks. I think I can handle it."{#morte2_s21_r41227}' if morte2Logic.r41227_condition():
            # a61 # r41227
            jump morte2_s8

        '"Thanks. I think I can handle it."{#morte2_s21_r41228}' if morte2Logic.r41228_condition():
            # a62 # r41228
            jump morte2_dispose


# s22 # say41229
label morte2_s22: # from 12.4
    nr '"Death visits the planes every day, chief. These shamblers are all that„s left of the poor sods who sold their bodies to the caretakers after death."{#morte2_s22_1}'

    menu:
        '"Got it. I had some other questions for you…"{#morte2_s22_r41230}':
            # a63 # r41230
            jump morte2_s12

        '"All right… I„ll… try to remember that."{#morte2_s22_r41231}' if morte2Logic.r41231_condition():
            # a64 # r41231
            jump morte2_s8

        '"All right… I„ll… try to remember that."{#morte2_s22_r41232}' if morte2Logic.r41232_condition():
            # a65 # r41232
            jump morte2_dispose


# s23 # say41233
label morte2_s23: # from 12.5
    nr '"Wh- are you *serious?* Look, chief, these dead chits are the last chance for a couple of hardy bashers like us. We need to be *chivalrous*… no hacking them up for keys, no lopping their limbs off, things like that."{#morte2_s23_1}'

    menu:
        '"Last chance? What are you *talking* about?"{#morte2_s23_r41234}':
            # a66 # r41234
            jump morte2_s24

        '"Never mind. I had some other questions for you…"{#morte2_s23_r41235}':
            # a67 # r41235
            jump morte2_s12

        '"All right… I„ll… try to remember that."{#morte2_s23_r41236}':
            # a68 # r41236
            jump morte2_dispose


# s24 # say41237
label morte2_s24: # from 23.0
    nr '"Chief, THEY„RE dead, WE“RE dead… see where I„m going? Eh? Eh?"{#morte2_s24_1}'

    menu:
        '"No… no, I don„t, actually."{#morte2_s24_r41238}':
            # a69 # r41238
            jump morte2_s25

        '"You *can„t* be serious."{#morte2_s24_r41239}' if morte2Logic.r41239_condition():
            # a70 # r41239
            jump morte2_s25

        '"Never mind. I had some other questions for you…"{#morte2_s24_r41240}':
            # a71 # r41240
            jump morte2_s12

        '"I„ve heard enough. Let“s go."{#morte2_s24_r41241}':
            # a72 # r41241
            jump morte2_dispose


# s25 # say41242
label morte2_s25: # from 24.0 24.1
    nr '"Chief, we already got an opening line with these limping ladies. We„ve *all* died at least once: we“ll have something to talk about. They„ll appreciate men with our kind of death experience."{#morte2_s25_1}'

    menu:
        '"Wait… didn„t you say before that I“m *not* dead?"{#morte2_s25_r41243}':
            # a73 # r41243
            jump morte2_s26

        '"Never mind. I had some other questions for you…"{#morte2_s25_r41244}':
            # a74 # r41244
            jump morte2_s12

        '"I„ve heard enough. Let“s go."{#morte2_s25_r41245}':
            # a75 # r41245
            jump morte2_dispose


# s26 # say41246
label morte2_s26: # from 25.0
    nr '"Well… all right, *you* might not be dead, but *I* am. And from where I„m standing, I wouldn“t mind sharing a coffin with some of these fine, sinewy cadavers I see here." Morte starts clacking his teeth, as if in anticipation. "„Course, the caretakers would have to part with them first, and that“s not likely…"{#morte2_s26_1}'

    menu:
        '"I had some other questions for you, Morte…"{#morte2_s26_r41247}':
            # a76 # r41247
            jump morte2_s12

        '"I„ve heard enough. Let“s go."{#morte2_s26_r41248}':
            # a77 # r41248
            jump morte2_dispose


# s27 # say41250
label morte2_s27: # - # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    nr '"I knew you„d be back, chief! Finally realized you needed me, huh?"{#morte2_s27_1}'

    menu:
        '"Yeah… let„s go."{#morte2_s27_r41251}':
            # a78 # r41251
            $ morte2Logic.r41251_action()
            jump morte2_dispose

        '"Not right now, Morte."{#morte2_s27_r41252}':
            # a79 # r41252
            jump morte2_s28


# s28 # say41253
label morte2_s28: # from 27.1
    nr '"Hmmmph. Well, I don„t know how long I“m going to wait here, so I„m going to give you one LAST chance. You sure you don“t want my sage advice and quick wit?"{#morte2_s28_1}'

    menu:
        '"Morte, you don„t have EITHER of those things."{#morte2_s28_r41254}':
            # a80 # r41254
            jump morte2_s29

        '"All right, I changed my mind. Come on, let„s go."{#morte2_s28_r41255}':
            # a81 # r41255
            $ morte2Logic.r41255_action()
            jump morte2_dispose

        '"Not at the moment, Morte. Maybe later."{#morte2_s28_r41256}':
            # a82 # r41256
            jump morte2_s29


# s29 # say41257
label morte2_s29: # from 28.0 28.2
    nr '"Are you trying to hurt my feelings, chief? What, was it something I said? The fact I don„t have arms? What?"{#morte2_s29_1}'

    menu:
        '"All right, I changed my mind. Come on, let„s go."{#morte2_s29_r41258}':
            # a83 # r41258
            $ morte2Logic.r41258_action()
            jump morte2_dispose

        '"Nothing like that. It„s just I don“t need your company right now. Farewell, Morte."{#morte2_s29_r41259}':
            # a84 # r41259
            jump morte2_s30


# s30 # say41260
label morte2_s30: # from 29.1
    nr '"Well, I„m not going to wait FOREVER, so you better come back as soon as you change your mind."{#morte2_s30_1}'

    menu:
        '"I will. Farewell, Morte."{#morte2_s30_r41261}':
            # a85 # r41261
            jump morte2_dispose


# s31 # say41262
label morte2_s31: # - # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Powers above. That„s one HELL of a book."{#morte2_s31_1}'

    menu:
        '"What is it?"{#morte2_s31_r41263}':
            # a86 # r41263
            $ morte2Logic.r41263_action()
            jump morte2_s32


# s32 # say41264
label morte2_s32: # from 31.0
    nr '"If I were to guess, I„d say that“s the book where they scratch the name of every poor sod that„s unfortunate enough to get dumped off here."{#morte2_s32_1}'

    menu:
        '"Could my name be in there?"{#morte2_s32_r41265}':
            # a87 # r41265
            jump morte2_s33


# s33 # say41266
label morte2_s33: # from 32.0
    nr '"Eh… well… I *guess.* To find out, you„d need to rattle your bone-box with that floating Dustie over there. I“m not sure that„s a good idea."{#morte2_s33_1}'

    menu:
        '"Well, I need answers. I„m going to go speak with him."{#morte2_s33_r41267}':
            # a88 # r41267
            jump morte2_dispose
