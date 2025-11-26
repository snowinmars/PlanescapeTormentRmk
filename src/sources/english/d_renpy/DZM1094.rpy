init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1094_logic import Zm1094Logic
    zm1094Logic = Zm1094Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1094.DLG
# ###


# s0 # say6562
label zm1094_s0: # - # IF ~  Global("Asonje","GLOBAL",0)
    nr 'This walking corpse has the numbers "1094" carved into its forehead. Its mouth has been sewn tightly shut, and the chemical reek of fresh formaldehyde hangs in an overpowering cloud around it. Despite the pallid, sunken features and lifeless, milky eyes, it is clear this was once a handsome young man.'

    menu:
        '"So… seen anything interesting going on?"' if zm1094Logic.r6565_condition():
            # a0 # r6565
            $ zm1094Logic.r6565_action()
            jump zm1094_s1

        '"So… seen anything interesting going on?"' if zm1094Logic.r6566_condition():
            # a1 # r6566
            jump zm1094_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm1094Logic.r6567_condition():
            # a2 # r6567
            jump zm1094_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zm1094Logic.r6568_condition():
            # a3 # r6568
            $ zm1094Logic.r6568_action()
            jump zm1094_s2

        '"It was great talking to you. Farewell."':
            # a4 # r6569
            jump zm1094_dispose

        'Leave the corpse in peace.':
            # a5 # r6570
            jump zm1094_dispose


# s1 # say6563
label zm1094_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.'

    menu:
        'Leave the corpse in peace.':
            # a6 # r6571
            jump zm1094_dispose


# s2 # say6564
label zm1094_s2: # from 0.3
    nr 'The corpse shudders for a moment, then stills, the spirit flowing into its abandoned mortal shell once more. Within seconds, a semblance of life seems to spring into the zombie„s eyes, and it begins to gaze about with a look of curious puzzlement upon its face. The entire body now seems surrounded by a soft, golden aura.'

    menu:
        '"I would ask you a question…"':
            # a7 # r6572
            jump zm1094_s3

        'Leave the spirit.':
            # a8 # r9246
            jump zm1094_dispose


# s3 # say9224
label zm1094_s3: # from 2.0
    nr 'The spirit suddenly seems to take notice of you. He flashes a disarmingly friendly grin, popping all the stitches around its mouth loose with the sudden movement. Momentarily surprised, he touches his hand to his lips, shrugs, and nods an informal greeting. "Where… where am I? Such an odd place. Do I know you?" He coughs gently, rubbing at his stiffened throat.'

    menu:
        '"You are here to answer *my* questions, spirit."':
            # a9 # r9247
            $ zm1094Logic.r9247_action()
            jump zm1094_s4

        '"You… your remains, at least… are in a mortuary."':
            # a10 # r9248
            jump zm1094_s13

        '"No, I doubt you know me. Now, I had a question for you…"':
            # a11 # r9249
            jump zm1094_s14

        '"It is doubtful. Farewell."':
            # a12 # r9250
            jump zm1094_dispose


# s4 # say9225
label zm1094_s4: # from 3.0
    nr 'The spirit„s friendly demeanor vanishes in an instant. He frowns at you for a moment, the broken stitches hanging in tatters from his gray and withered lips. "Very well, ask what you will." He looks away, apparently bored.'

    menu:
        '"Who are you?"':
            # a13 # r9251
            jump zm1094_s5

        '"Where are you from?"':
            # a14 # r9252
            jump zm1094_s6

        '"How did you end up here? As a zombie, I mean?"':
            # a15 # r9253
            jump zm1094_s7

        '"Where are you… where your spirit resides… now?"':
            # a16 # r9254
            jump zm1094_s8

        '"What do you know of this place?"':
            # a17 # r9255
            jump zm1094_s9

        '"Do you know someone named Pharod?"' if zm1094Logic.r9256_condition():
            # a18 # r9256
            jump zm1094_s10

        '"Nothing, never mind."':
            # a19 # r9257
            jump zm1094_dispose


# s5 # say9226
label zm1094_s5: # from 4.0 11.0
    nr '"My name was Asonje. May I leave?"'

    menu:
        '"No, I had another question…"':
            # a20 # r9258
            jump zm1094_s11

        '"That is all I wished to know. Farewell."':
            # a21 # r9259
            jump zm1094_dispose


# s6 # say9227
label zm1094_s6: # from 4.1 11.1
    nr '"I cannot remember. Anything else?"'

    menu:
        '"Yes, I had another question…"':
            # a22 # r9260
            jump zm1094_s11

        '"That is all I wished to know. Farewell."':
            # a23 # r9261
            jump zm1094_dispose


# s7 # say9228
label zm1094_s7: # from 4.2 11.2
    nr 'The spirit shrugs and looks skyward. "I couldn„t say. What does it matter, in any case?" He purses his lips unhappily and gives you a hard look, the ghost-light in his eyes flashing angrily. "Do you need anything more from me?"'

    menu:
        '"Yes, I had another question…"':
            # a24 # r9262
            jump zm1094_s11

        '"That is all I wished to know. Farewell."':
            # a25 # r9263
            jump zm1094_dispose


# s8 # say9229
label zm1094_s8: # from 4.3 11.3
    nr '"My spirit exists in Arborea…" He pauses for a moment, lost in fond recollection. "Even now I long to return to my home there, away from your selfish, inconsiderate, and rather boring prying. Am I free to return?"'

    menu:
        '"No, I had another question…"':
            # a26 # r9264
            jump zm1094_s11

        '"Yes, go. Farewell."':
            # a27 # r9265
            jump zm1094_dispose


# s9 # say9230
label zm1094_s9: # from 4.4 11.4
    nr 'The spirit gives you an exasperated look. "Nothing, of course!" He shakes his head, annoyed, the broken stitches swaying with his movement.'

    menu:
        '"Then how did your corpse come to be here, working these bleak halls?"':
            # a28 # r9266
            jump zm1094_s12

        '"I had another question…"':
            # a29 # r9267
            jump zm1094_s11

        '"That is all I wished to know. Farewell."':
            # a30 # r9268
            jump zm1094_dispose


# s10 # say9231
label zm1094_s10: # from 4.5 11.5
    nr '"No." The spirit seems to be paying little attention to you.'

    menu:
        '"Then I had another question…"':
            # a31 # r9269
            jump zm1094_s11

        '"That is all I wished to know. Farewell."':
            # a32 # r9270
            jump zm1094_dispose


# s11 # say9232
label zm1094_s11: # from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
    nr 'The spirit sighs loudly, filling the air with smell of formaldehyde from the corpse„s lungs. "Yes, yes… ask away."'

    menu:
        '"Who are you?"':
            # a33 # r9271
            jump zm1094_s5

        '"Where are you from?"':
            # a34 # r9272
            jump zm1094_s6

        '"How did you end up here? As a zombie, I mean?"':
            # a35 # r9273
            jump zm1094_s7

        '"Where are you… where your spirit resides… now?"':
            # a36 # r9274
            jump zm1094_s8

        '"What do you know of this place?"':
            # a37 # r9275
            jump zm1094_s9

        '"Do you know someone named Pharod?"' if zm1094Logic.r9276_condition():
            # a38 # r9276
            jump zm1094_s10

        '"Nothing, never mind."':
            # a39 # r9277
            jump zm1094_dispose


# s12 # say9233
label zm1094_s12: # from 9.0
    nr '"Your guess is as good as mine, Homely One. I would take my leave now, should you permit."'

    menu:
        '"No, I had another question…"':
            # a40 # r9278
            jump zm1094_s11

        '"That is all I wished to know. Farewell."':
            # a41 # r9279
            jump zm1094_dispose


# s13 # say9234
label zm1094_s13: # from 3.1
    nr 'He mulls it over for a moment, then laughs. "Yes! That would make sense, wouldn„t it? Now, do I know you?" He cocks his head to one side, peering at you intently. He seems to regard discerning your identity as some sort of amusing game.'

    menu:
        '"No, I doubt you know me. Now, I had a question for you…"':
            # a42 # r9280
            jump zm1094_s14

        '"It is doubtful. Farewell."':
            # a43 # r9281
            jump zm1094_dispose


# s14 # say9235
label zm1094_s14: # from 3.2 13.0
    nr 'The spirit shrugs and smiles, chuckling softly. "Perhaps you„re right! What is it you wished to ask me?" He begins absent-mindedly pulling the remaining stitches from his lips and dropping them to the floor, one by one.'

    menu:
        '"Who are you?"' if zm1094Logic.r9282_condition():
            # a44 # r9282
            jump zm1094_s15

        '"Who are you?"' if zm1094Logic.r9286_condition():
            # a45 # r9286
            jump zm1094_s25

        '"Where are you from?"':
            # a46 # r9287
            jump zm1094_s16

        '"How did you end up here? As a zombie, I mean?"':
            # a47 # r9288
            jump zm1094_s17

        '"Where are you… where your spirit resides… now?"':
            # a48 # r9317
            jump zm1094_s18

        '"What do you know of this place?"':
            # a49 # r9318
            jump zm1094_s19

        '"Do you know someone named Pharod?"' if zm1094Logic.r9319_condition():
            # a50 # r9319
            jump zm1094_s20

        '"Nothing, never mind."':
            # a51 # r9320
            jump zm1094_dispose


# s15 # say9236
label zm1094_s15: # from 14.0 22.0
    nr '"My name was Asonje. Might I know yours?"'

    menu:
        '"I… I do not know."':
            # a52 # r9289
            $ zm1094Logic.r9289_action()
            jump zm1094_s21

        '"I shall tell you another time. I had a question…"':
            # a53 # r9290
            $ zm1094Logic.r9290_action()
            jump zm1094_s22

        '"Another time, perhaps. Farewell."':
            # a54 # r9291
            $ zm1094Logic.r9291_action()
            jump zm1094_dispose


# s16 # say9237
label zm1094_s16: # from 14.2 22.2
    nr '"I am from many places! In truth, my birthplace is unknown to me. I did a good deal of travelling in my life, and called many places home. Now all Arborea is mine to explore…" The spirit seems well pleased.'

    menu:
        '"I see. I had another question…"':
            # a55 # r9292
            jump zm1094_s22

        '"That is all I wished to know. Farewell."':
            # a56 # r9293
            jump zm1094_dispose


# s17 # say9238
label zm1094_s17: # from 14.3 22.3
    nr 'The spirit„s smile fades away and he looks troubled for a moment. "Strange… I don“t know! I„m not sure how I died, really." He shrugs. "No matter!" His cheery grin returns, somehow bright despite being plastered across a corpse“s withered face.'

    menu:
        '"I had another question…"':
            # a57 # r9294
            jump zm1094_s22

        '"That is all I wished to know. Farewell."':
            # a58 # r9295
            jump zm1094_dispose


# s18 # say9239
label zm1094_s18: # from 14.4 22.4
    nr '"Arborea! A more wondrous place I could not ask for. Nowhere in my mortal life did I find a place of such great passion… such splendour…" He pauses for a while, lost in pleasant recollection. "The beauty of the land, the people - magnificent. I tell you truly, I miss it even now!"'

    menu:
        '"I see. I had another question…"':
            # a59 # r9296
            jump zm1094_s22

        '"That is all I wished to know. Farewell."':
            # a60 # r9297
            jump zm1094_dispose


# s19 # say9240
label zm1094_s19: # from 14.5 22.5
    nr '"Not so much. I signed a contract with a Dustman on a whim… she had pointed out the dreadful place to me, once, told me my corpse would be raised and used as a laborer. I thought: I„ll have no need for it when I“ve passed into the next life - why not? Might as well take the silver and go spend it on some women and wine!" He chuckles at the idea, the ghost-lights in his eyes flashing merrily.'

    menu:
        '"Do you know anything of the city around the Mortuary?"':
            # a61 # r9298
            jump zm1094_s24

        '"I see. I had another question…"':
            # a62 # r9299
            jump zm1094_s22

        '"That is all I wished to know. Farewell."':
            # a63 # r9300
            jump zm1094_dispose


# s20 # say9241
label zm1094_s20: # from 14.6 22.6
    nr 'The spirit thinks for a moment. "No, I am afraid I have not heard of this man. A friend of yours?"'

    menu:
        '"Perhaps. I had another question…"':
            # a64 # r9301
            jump zm1094_s22

        '"I do not know. Farewell."':
            # a65 # r9302
            jump zm1094_dispose


# s21 # say9242
label zm1094_s21: # from 15.0
    nr 'He looks surprised. "How odd! A shame, truly. I must have *something* to call you, no?" The spirit looks at you expectantly.'

    menu:
        '"I am sure you can come up with something. I had a question…"':
            # a66 # r9303
            jump zm1094_s22

        'Make a name up: "I do not know… „Adahn“?"':
            # a67 # r9304
            $ zm1094Logic.r9304_action()
            jump zm1094_s23

        '"No, it is not important. Farewell."':
            # a68 # r9305
            jump zm1094_dispose


# s22 # say9243
label zm1094_s22: # from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
    nr '"Certainly. Ask away!" He smiles pleasantly, awaiting your query with interest. The last of the stitches now gone, his grin is not quite so eerie to look upon.'

    menu:
        '"Who are you?"' if zm1094Logic.r9306_condition():
            # a69 # r9306
            jump zm1094_s15

        '"Who are you?"' if zm1094Logic.r9307_condition():
            # a70 # r9307
            jump zm1094_s25

        '"Where are you from?"':
            # a71 # r9308
            jump zm1094_s16

        '"How did you end up here? As a zombie, I mean?"':
            # a72 # r9309
            jump zm1094_s17

        '"Where are you… where your spirit resides… now?"':
            # a73 # r9310
            jump zm1094_s18

        '"What do you know of this place?"':
            # a74 # r9311
            jump zm1094_s19

        '"Do you know someone named Pharod?"' if zm1094Logic.r9312_condition():
            # a75 # r9312
            jump zm1094_s20

        '"Nothing, never mind."':
            # a76 # r9321
            jump zm1094_dispose


# s23 # say9244
label zm1094_s23: # from 21.1
    nr 'The spirit, sensing your frustration, laughs goodheartedly. "Poor sod! Then Adahn it is, friend. Now, did you have a question for me?"'

    menu:
        '"Yes, I did…"':
            # a77 # r9313
            jump zm1094_s22

        '"No, I did not. Farewell."':
            # a78 # r9314
            jump zm1094_dispose


# s24 # say9245
label zm1094_s24: # from 19.0
    nr '"What, Sigil?" Seeing your nod, the corpse„s smile stretches into a wide, wicked grin. "Oh, I“ll not spoil that for you! Go and explore the place for yourself! Get lost in its streets, its taverns, its people… but take care! It can be a dangerous as well as wondrous place. But that„s what makes it all so exciting, no?"'

    menu:
        '"I… suppose so. I have another question…"':
            # a79 # r9315
            jump zm1094_s22

        '"Perhaps. Farewell."':
            # a80 # r9316
            jump zm1094_dispose


# s25 # say9283
label zm1094_s25: # from 14.1 22.1
    nr '"My name was Asonje."'

    menu:
        '"I had another question…"':
            # a81 # r9284
            jump zm1094_s22

        '"That is all I wished to know. Farewell."':
            # a82 # r9285
            jump zm1094_dispose


# s26 # say20061
label zm1094_s26: # - # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    nr '"Back again, hmm?" He smiles broadly.'

    menu:
        '"I had some questions…"':
            # a83 # r20063
            jump zm1094_s22

        '"I was only passing by. Farewell."':
            # a84 # r20064
            jump zm1094_dispose


# s27 # say20062
label zm1094_s27: # - # IF ~  Global("Asonje","GLOBAL",3)
    nr '"Oh, you… again." He frowns, looking away.'

    menu:
        '"I had some questions…"':
            # a85 # r20065
            jump zm1094_s11

        '"I was only passing by. Farewell."':
            # a86 # r20066
            jump zm1094_dispose
