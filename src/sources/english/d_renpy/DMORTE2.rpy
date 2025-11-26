init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte2_logic import Morte2Logic
    morte2Logic = Morte2Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE2.DLG
# ###


# s0 # say41144
label morte2_s0: # - # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    nr '"Pssst… Some advice, chief: I„d keep it quiet from here on - no need to put any more corpses in the dead-book than necessary… especially the femmes. Plus, killing them might draw the caretakers here."'

    menu:
        '"I don„t think you mentioned it before… *who* are these caretakers?"':
            # a0 # r41145
            $ morte2Logic.r41145_action()
            jump morte2_s1

        '"The corpses here… where did they all come from?"':
            # a1 # r41146
            $ morte2Logic.r41146_action()
            jump morte2_s3

        '"Why do you care about the female corpses?"':
            # a2 # r41147
            $ morte2Logic.r41147_action()
            jump morte2_s4

        '"All right… I„ll… try to remember that."':
            # a3 # r41148
            $ morte2Logic.r41148_action()
            jump morte2_s8


# s1 # say41149
label morte2_s1: # from 0.0 3.0 7.0
    nr '"They call themselves the „Dustmen.“ You can„t miss “em: They have an obsession with black and rigor mortis of the face. They„re an addled bunch of ghoulish death-worshippers; they believe everybody should die… sooner better than later."'

    menu:
        '"I„m confused… why do these Dustmen care if I escape?"':
            # a4 # r41150
            jump morte2_s2


# s2 # say41151
label morte2_s2: # from 1.0
    nr '"Weren„t you listening?! I said the Dusties believe EVERYBODY“S got to die, sooner better than later. You think the corpses you„ve seen are happier in the dead-book than out of it?"'

    menu:
        '"The corpses I„ve seen here… where did they all come from?"':
            # a5 # r41152
            jump morte2_s3

        '"Before you said something about making sure I didn„t kill any *female* corpses. Why?"':
            # a6 # r41153
            jump morte2_s4

        '"All right… I„ll… try to remember that."':
            # a7 # r41154
            jump morte2_s8


# s3 # say41155
label morte2_s3: # from 0.1 2.0 7.1
    nr '"Death visits the planes every day, chief. These shamblers are all that„s left of the poor sods who sold their bodies to the caretakers after death."'

    menu:
        '"Enlighten me… *who* are these caretakers?"':
            # a8 # r41156
            jump morte2_s1

        '"Before you said something about making sure I didn„t kill any *female* corpses. Why?"':
            # a9 # r41157
            jump morte2_s4

        '"All right… I„ll… try to remember that."':
            # a10 # r41158
            jump morte2_s8


# s4 # say41159
label morte2_s4: # from 0.2 2.1 3.1
    nr '"Wh- are you *serious?* Look, chief, these dead chits are the last chance for a couple of hardy bashers like us. We need to be *chivalrous*… no hacking them up for keys, no lopping their limbs off, things like that."'

    menu:
        '"Last chance? What are you *talking* about?"':
            # a11 # r41160
            jump morte2_s5


# s5 # say41161
label morte2_s5: # from 4.0
    nr '"Chief, THEY„RE dead, WE“RE dead… see where I„m going? Eh? Eh?"'

    menu:
        '"No… no, I don„t, actually."':
            # a12 # r41162
            jump morte2_s6

        '"You *can„t* be serious."' if morte2Logic.r41163_condition():
            # a13 # r41163
            jump morte2_s6


# s6 # say41164
label morte2_s6: # from 5.0 5.1
    nr '"Chief, we already got an opening line with these limping ladies. We„ve *all* died at least once: we“ll have something to talk about. They„ll appreciate men with our kind of death experience."'

    menu:
        '"Wait… didn„t you say before that I“m *not* dead?"':
            # a14 # r41165
            jump morte2_s7


# s7 # say41166
label morte2_s7: # from 6.0
    nr '"Well… all right, *you* might not be dead, but *I* am. And from where I„m standing, I wouldn“t mind sharing a coffin with some of these fine, sinewy cadavers I see here." Morte starts clacking his teeth, as if in anticipation. "„Course, the caretakers would have to part with them first, and that“s not likely…"'

    menu:
        '"Who are these caretakers again?"':
            # a15 # r41167
            jump morte2_s1

        '"But where did all these corpses come from?"':
            # a16 # r41168
            jump morte2_s3

        '"All right… I„ll try and remember that."':
            # a17 # r41169
            jump morte2_s8


# s8 # say41170
label morte2_s8: # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    nr '"Look, chief. It„s obvious you“re still a little addled after your kiss with death, so I got two bits of advice for you: one, if you got questions, *ask* me, all right?"  ^NNOTE: <SPEAKTO>^-'

    menu:
        '"All right… if I have any questions, I„ll ask you."':
            # a18 # r41171
            jump morte2_s9


# s9 # say41172
label morte2_s9: # from 8.0
    nr '"Second, if you„re *half* as forgetful as you seem to be, start writing stuff down - whenever you come across something that *might* be important, jot it down so you don“t forget."'

    menu:
        '"If I had that journal I was *supposed* to have with me, I„d do that."':
            # a19 # r41173
            jump morte2_s10


# s10 # say41174
label morte2_s10: # from 9.0
    nr '"Start a new one, then, chief. No loss. There„s plenty of parchment and ink around here to last you."'

    menu:
        '"Hmmmm. All right. It couldn„t hurt… I“ll make a new one, then."':
            # a20 # r41175
            jump morte2_s11


# s11 # say41176
label morte2_s11: # from 10.0
    nr '"Use it to keep track of your movements. If you ever start to get cloudy on important things, like who you are… or more importantly, who *I* am… use it to refresh your memory."  ^NNOTE: To access your journal, select the journal button on the quick menu. Your journal will automatically be updated throughout the game.^-'

    menu:
        '"All right… I got it. Let„s go."':
            # a21 # r41177
            $ morte2Logic.j39516_s11_r41177_action()
            jump morte2_dispose


# s12 # say41178
label morte2_s12: # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0 # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"What„s eating you, chief?"'

    menu:
        '"Can you read to me what„s tattooed on my back again?"':
            # a22 # r41179
            jump morte2_s13

        '"What is this place again?"':
            # a23 # r41180
            jump morte2_s18

        '"This place is huge… who takes care of it?"' if morte2Logic.r41181_condition():
            # a24 # r41181
            jump morte2_s19

        '"Who are the caretakers of this place again?"' if morte2Logic.r41182_condition():
            # a25 # r41182
            jump morte2_s19

        '"The corpses here… where did they all come from?"':
            # a26 # r41183
            jump morte2_s22

        '"Before you said something about making sure I didn„t kill any *female* corpses. Why?"' if morte2Logic.r41184_condition():
            # a27 # r41184
            jump morte2_s23

        '"How do I use these bandages?"' if morte2Logic.r41185_condition():
            # a28 # r41185
            jump morte2_s21

        '"Nothing at the moment, Morte. Just checking to see if you were still with me."' if morte2Logic.r41186_condition():
            # a29 # r41186
            jump morte2_s8

        '"Nothing at the moment, Morte. Just checking to see if you were still with me."' if morte2Logic.r41187_condition():
            # a30 # r41187
            jump morte2_dispose


# s13 # say41188
label morte2_s13: # from 12.0
    nr '"Aw, *c„mon,* chief. Don“t tell me you forgot already."'

    menu:
        '"I just need to refresh my memory, is all."':
            # a31 # r41189
            jump morte2_s14

        '"Never mind, then. I had some other questions…"':
            # a32 # r41190
            jump morte2_s12

        '"Forget it, then. Let„s go."' if morte2Logic.r41191_condition():
            # a33 # r41191
            jump morte2_s8

        '"Forget it, then. Let„s go."' if morte2Logic.r41192_condition():
            # a34 # r41192
            jump morte2_dispose


# s14 # say41193
label morte2_s14: # from 13.0
    nr '"Bet I„m going to be hearing THAT a lot." Morte clears his throat. "Let“s see…"  „I know you feel like you“ve been drinking a few kegs of Styx wash, but you need to CENTER yourself. Among your possessions is a JOURNAL that„ll shed some light on the dark of the matter. PHAROD can fill you in on the rest of the chant, if he“s not in the dead-book already.„'

    menu:
        '"Pharod… hmmm. Keep going."':
            # a35 # r41194
            jump morte2_s15

        '"Never mind. I had some other questions…"':
            # a36 # r41195
            jump morte2_s12

        '"Forget it. I„ve heard enough. Let“s go."' if morte2Logic.r41196_condition():
            # a37 # r41196
            jump morte2_s8

        '"Forget it. I„ve heard enough. Let“s go."' if morte2Logic.r41197_condition():
            # a38 # r41197
            jump morte2_dispose


# s15 # say41198
label morte2_s15: # from 14.0
    nr '"I will, I will, hold on." Morte pauses for a moment. "All right, here„s the last bit…"  “Don„t lose the journal or we“ll be up the Styx again. And whatever you do, DO NOT tell anyone WHO you are or WHAT happens to you, or they„ll put you on a quick pilgrimage to the crematorium. Do what I tell you: READ the journal, then FIND Pharod.“'

    menu:
        '"And there wasn„t a journal with me when I woke up?"':
            # a39 # r41199
            jump morte2_s16

        '"Never mind. I had some other questions…"':
            # a40 # r41200
            jump morte2_s12

        '"Forget it. I„ve heard enough. Let“s go."' if morte2Logic.r41201_condition():
            # a41 # r41201
            jump morte2_s8

        '"Forget it. I„ve heard enough. Let“s go."' if morte2Logic.r41203_condition():
            # a42 # r41203
            jump morte2_dispose


# s16 # say41202
label morte2_s16: # from 15.0
    nr '"No… you were stripped to the skins. Like I said before, looks like you got enough of a journal penned on your body."'

    menu:
        '"And you„re sure you don“t know anyone named Pharod?"':
            # a43 # r41204
            jump morte2_s17

        '"True enough. I had some other questions…"':
            # a44 # r41205
            jump morte2_s12

        '"All right, then. Let„s go."' if morte2Logic.r41206_condition():
            # a45 # r41206
            jump morte2_s8

        '"All right, then. Let„s go."' if morte2Logic.r41207_condition():
            # a46 # r41207
            jump morte2_dispose


# s17 # say41208
label morte2_s17: # from 16.0
    nr '"Nope. Still, some berk„s got to know where to find him. Let“s ask around… AFTER we get out of here."'

    menu:
        '"Before we go, I had some other questions…"':
            # a47 # r41209
            jump morte2_s12

        '"All right, then. Let„s go."' if morte2Logic.r41210_condition():
            # a48 # r41210
            jump morte2_s8

        '"All right, then. Let„s go."' if morte2Logic.r41211_condition():
            # a49 # r41211
            jump morte2_dispose


# s18 # say41212
label morte2_s18: # from 12.1
    nr '"It„s called the “Mortuary„… it“s a big black structure with all the architectural charm of a pregnant spider."'

    menu:
        '"Got it. I had some other questions for you…"':
            # a50 # r41213
            jump morte2_s12

        '"That„s all I wanted to know. Thanks."' if morte2Logic.r41214_condition():
            # a51 # r41214
            jump morte2_s8

        '"That„s all I wanted to know. Thanks."' if morte2Logic.r41215_condition():
            # a52 # r41215
            jump morte2_dispose


# s19 # say41216
label morte2_s19: # from 12.2 12.3
    nr '"They call themselves the „Dustmen.“ You can„t miss “em: They have an obsession with black and rigor mortis of the face. They„re an addled bunch of ghoulish death-worshippers; they believe everybody should die… sooner better than later."'

    menu:
        '"I„m confused… why do these Dustmen care if I escape?"':
            # a53 # r41217
            jump morte2_s20

        '"Got it. I had some other questions for you…"':
            # a54 # r41218
            jump morte2_s12

        '"Understood. I„ll be careful, then."' if morte2Logic.r41219_condition():
            # a55 # r41219
            jump morte2_s8

        '"Understood. I„ll be careful, then."' if morte2Logic.r41220_condition():
            # a56 # r41220
            jump morte2_dispose


# s20 # say41221
label morte2_s20: # from 19.0
    nr '"Weren„t you listening?! I said the Dusties believe EVERYBODY“S got to die, sooner better than later. You think the corpses you„ve seen are happier in the dead-book than out of it?"'

    menu:
        '"Got it. I had some other questions for you…"':
            # a57 # r41222
            jump morte2_s12

        '"All right… I„ll… try to remember that."' if morte2Logic.r41223_condition():
            # a58 # r41223
            jump morte2_s8

        '"All right… I„ll… try to remember that."' if morte2Logic.r41224_condition():
            # a59 # r41224
            jump morte2_dispose


# s21 # say41225
label morte2_s21: # from 12.6
    nr '"You, well… you *use* them. Staunch bleeding, and all that."  ^NNOTE: <BANDAGES2>^-'

    menu:
        '"Got it. I had some other questions for you…"':
            # a60 # r41226
            jump morte2_s12

        '"Thanks. I think I can handle it."' if morte2Logic.r41227_condition():
            # a61 # r41227
            jump morte2_s8

        '"Thanks. I think I can handle it."' if morte2Logic.r41228_condition():
            # a62 # r41228
            jump morte2_dispose


# s22 # say41229
label morte2_s22: # from 12.4
    nr '"Death visits the planes every day, chief. These shamblers are all that„s left of the poor sods who sold their bodies to the caretakers after death."'

    menu:
        '"Got it. I had some other questions for you…"':
            # a63 # r41230
            jump morte2_s12

        '"All right… I„ll… try to remember that."' if morte2Logic.r41231_condition():
            # a64 # r41231
            jump morte2_s8

        '"All right… I„ll… try to remember that."' if morte2Logic.r41232_condition():
            # a65 # r41232
            jump morte2_dispose


# s23 # say41233
label morte2_s23: # from 12.5
    nr '"Wh- are you *serious?* Look, chief, these dead chits are the last chance for a couple of hardy bashers like us. We need to be *chivalrous*… no hacking them up for keys, no lopping their limbs off, things like that."'

    menu:
        '"Last chance? What are you *talking* about?"':
            # a66 # r41234
            jump morte2_s24

        '"Never mind. I had some other questions for you…"':
            # a67 # r41235
            jump morte2_s12

        '"All right… I„ll… try to remember that."':
            # a68 # r41236
            jump morte2_dispose


# s24 # say41237
label morte2_s24: # from 23.0
    nr '"Chief, THEY„RE dead, WE“RE dead… see where I„m going? Eh? Eh?"'

    menu:
        '"No… no, I don„t, actually."':
            # a69 # r41238
            jump morte2_s25

        '"You *can„t* be serious."' if morte2Logic.r41239_condition():
            # a70 # r41239
            jump morte2_s25

        '"Never mind. I had some other questions for you…"':
            # a71 # r41240
            jump morte2_s12

        '"I„ve heard enough. Let“s go."':
            # a72 # r41241
            jump morte2_dispose


# s25 # say41242
label morte2_s25: # from 24.0 24.1
    nr '"Chief, we already got an opening line with these limping ladies. We„ve *all* died at least once: we“ll have something to talk about. They„ll appreciate men with our kind of death experience."'

    menu:
        '"Wait… didn„t you say before that I“m *not* dead?"':
            # a73 # r41243
            jump morte2_s26

        '"Never mind. I had some other questions for you…"':
            # a74 # r41244
            jump morte2_s12

        '"I„ve heard enough. Let“s go."':
            # a75 # r41245
            jump morte2_dispose


# s26 # say41246
label morte2_s26: # from 25.0
    nr '"Well… all right, *you* might not be dead, but *I* am. And from where I„m standing, I wouldn“t mind sharing a coffin with some of these fine, sinewy cadavers I see here." Morte starts clacking his teeth, as if in anticipation. "„Course, the caretakers would have to part with them first, and that“s not likely…"'

    menu:
        '"I had some other questions for you, Morte…"':
            # a76 # r41247
            jump morte2_s12

        '"I„ve heard enough. Let“s go."':
            # a77 # r41248
            jump morte2_dispose


# s27 # say41250
label morte2_s27: # - # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    nr '"I knew you„d be back, chief! Finally realized you needed me, huh?"'

    menu:
        '"Yeah… let„s go."':
            # a78 # r41251
            $ morte2Logic.r41251_action()
            jump morte2_dispose

        '"Not right now, Morte."':
            # a79 # r41252
            jump morte2_s28


# s28 # say41253
label morte2_s28: # from 27.1
    nr '"Hmmmph. Well, I don„t know how long I“m going to wait here, so I„m going to give you one LAST chance. You sure you don“t want my sage advice and quick wit?"'

    menu:
        '"Morte, you don„t have EITHER of those things."':
            # a80 # r41254
            jump morte2_s29

        '"All right, I changed my mind. Come on, let„s go."':
            # a81 # r41255
            $ morte2Logic.r41255_action()
            jump morte2_dispose

        '"Not at the moment, Morte. Maybe later."':
            # a82 # r41256
            jump morte2_s29


# s29 # say41257
label morte2_s29: # from 28.0 28.2
    nr '"Are you trying to hurt my feelings, chief? What, was it something I said? The fact I don„t have arms? What?"'

    menu:
        '"All right, I changed my mind. Come on, let„s go."':
            # a83 # r41258
            $ morte2Logic.r41258_action()
            jump morte2_dispose

        '"Nothing like that. It„s just I don“t need your company right now. Farewell, Morte."':
            # a84 # r41259
            jump morte2_s30


# s30 # say41260
label morte2_s30: # from 29.1
    nr '"Well, I„m not going to wait FOREVER, so you better come back as soon as you change your mind."'

    menu:
        '"I will. Farewell, Morte."':
            # a85 # r41261
            jump morte2_dispose


# s31 # say41262
label morte2_s31: # - # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Powers above. That„s one HELL of a book."'

    menu:
        '"What is it?"':
            # a86 # r41263
            $ morte2Logic.r41263_action()
            jump morte2_s32


# s32 # say41264
label morte2_s32: # from 31.0
    nr '"If I were to guess, I„d say that“s the book where they scratch the name of every poor sod that„s unfortunate enough to get dumped off here."'

    menu:
        '"Could my name be in there?"':
            # a87 # r41265
            jump morte2_s33


# s33 # say41266
label morte2_s33: # from 32.0
    nr '"Eh… well… I *guess.* To find out, you„d need to rattle your bone-box with that floating Dustie over there. I“m not sure that„s a good idea."'

    menu:
        '"Well, I need answers. I„m going to go speak with him."':
            # a88 # r41267
            jump morte2_dispose
