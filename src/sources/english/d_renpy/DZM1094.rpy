init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1094_logic import Zm1094Logic
    zm1094Logic = Zm1094Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1094.DLG
# ###


# s0 # say6562
label zm1094_s0: # - # IF ~  Global("Asonje","GLOBAL",0)
    'zm1094_s0{#zm1094_s0}'
    # nr 'This walking corpse has the numbers "1094" carved into its forehead. Its mouth has been sewn tightly shut, and the chemical reek of fresh formaldehyde hangs in an overpowering cloud around it. Despite the pallid, sunken features and lifeless, milky eyes, it is clear this was once a handsome young man.{#zm1094_s0_1}'

    menu:
        'zm1094_s0_r6565{#zm1094_s0_r6565}' if zm1094Logic.r6565_condition(): # '"So… seen anything interesting going on?"{#zm1094_s0_r6565}'
            # a0 # r6565
            $ zm1094Logic.r6565_action()
            jump zm1094_s1

        'zm1094_s0_r6566{#zm1094_s0_r6566}' if zm1094Logic.r6566_condition(): # '"So… seen anything interesting going on?"{#zm1094_s0_r6566}'
            # a1 # r6566
            jump zm1094_s1

        'zm1094_s0_r6567{#zm1094_s0_r6567}' if zm1094Logic.r6567_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm1094_s0_r6567}'
            # a2 # r6567
            jump zm1094_s1

        'zm1094_s0_r6568{#zm1094_s0_r6568}' if zm1094Logic.r6568_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm1094_s0_r6568}'
            # a3 # r6568
            $ zm1094Logic.r6568_action()
            jump zm1094_s2

        'zm1094_s0_r6569{#zm1094_s0_r6569}': # '"It was great talking to you. Farewell."{#zm1094_s0_r6569}'
            # a4 # r6569
            jump zm1094_dispose

        'zm1094_s0_r6570{#zm1094_s0_r6570}': # 'Leave the corpse in peace.{#zm1094_s0_r6570}'
            # a5 # r6570
            jump zm1094_dispose


# s1 # say6563
label zm1094_s1: # from 0.0 0.1 0.2
    'zm1094_s1{#zm1094_s1}'
    # nr 'The corpse continues to stare at you.{#zm1094_s1_1}'

    menu:
        'zm1094_s1_r6571{#zm1094_s1_r6571}': # 'Leave the corpse in peace.{#zm1094_s1_r6571}'
            # a6 # r6571
            jump zm1094_dispose


# s2 # say6564
label zm1094_s2: # from 0.3
    'zm1094_s2{#zm1094_s2}'
    # nr 'The corpse shudders for a moment, then stills, the spirit flowing into its abandoned mortal shell once more. Within seconds, a semblance of life seems to spring into the zombie„s eyes, and it begins to gaze about with a look of curious puzzlement upon its face. The entire body now seems surrounded by a soft, golden aura.{#zm1094_s2_1}'

    menu:
        'zm1094_s2_r6572{#zm1094_s2_r6572}': # '"I would ask you a question…"{#zm1094_s2_r6572}'
            # a7 # r6572
            jump zm1094_s3

        'zm1094_s2_r9246{#zm1094_s2_r9246}': # 'Leave the spirit.{#zm1094_s2_r9246}'
            # a8 # r9246
            jump zm1094_dispose


# s3 # say9224
label zm1094_s3: # from 2.0
    'zm1094_s3{#zm1094_s3}'
    # nr 'The spirit suddenly seems to take notice of you. He flashes a disarmingly friendly grin, popping all the stitches around its mouth loose with the sudden movement. Momentarily surprised, he touches his hand to his lips, shrugs, and nods an informal greeting. "Where… where am I? Such an odd place. Do I know you?" He coughs gently, rubbing at his stiffened throat.{#zm1094_s3_1}'

    menu:
        'zm1094_s3_r9247{#zm1094_s3_r9247}': # '"You are here to answer *my* questions, spirit."{#zm1094_s3_r9247}'
            # a9 # r9247
            $ zm1094Logic.r9247_action()
            jump zm1094_s4

        'zm1094_s3_r9248{#zm1094_s3_r9248}': # '"You… your remains, at least… are in a mortuary."{#zm1094_s3_r9248}'
            # a10 # r9248
            jump zm1094_s13

        'zm1094_s3_r9249{#zm1094_s3_r9249}': # '"No, I doubt you know me. Now, I had a question for you…"{#zm1094_s3_r9249}'
            # a11 # r9249
            jump zm1094_s14

        'zm1094_s3_r9250{#zm1094_s3_r9250}': # '"It is doubtful. Farewell."{#zm1094_s3_r9250}'
            # a12 # r9250
            jump zm1094_dispose


# s4 # say9225
label zm1094_s4: # from 3.0
    'zm1094_s4{#zm1094_s4}'
    # nr 'The spirit„s friendly demeanor vanishes in an instant. He frowns at you for a moment, the broken stitches hanging in tatters from his gray and withered lips. "Very well, ask what you will." He looks away, apparently bored.{#zm1094_s4_1}'

    menu:
        'zm1094_s4_r9251{#zm1094_s4_r9251}': # '"Who are you?"{#zm1094_s4_r9251}'
            # a13 # r9251
            jump zm1094_s5

        'zm1094_s4_r9252{#zm1094_s4_r9252}': # '"Where are you from?"{#zm1094_s4_r9252}'
            # a14 # r9252
            jump zm1094_s6

        'zm1094_s4_r9253{#zm1094_s4_r9253}': # '"How did you end up here? As a zombie, I mean?"{#zm1094_s4_r9253}'
            # a15 # r9253
            jump zm1094_s7

        'zm1094_s4_r9254{#zm1094_s4_r9254}': # '"Where are you… where your spirit resides… now?"{#zm1094_s4_r9254}'
            # a16 # r9254
            jump zm1094_s8

        'zm1094_s4_r9255{#zm1094_s4_r9255}': # '"What do you know of this place?"{#zm1094_s4_r9255}'
            # a17 # r9255
            jump zm1094_s9

        'zm1094_s4_r9256{#zm1094_s4_r9256}' if zm1094Logic.r9256_condition(): # '"Do you know someone named Pharod?"{#zm1094_s4_r9256}'
            # a18 # r9256
            jump zm1094_s10

        'zm1094_s4_r9257{#zm1094_s4_r9257}': # '"Nothing, never mind."{#zm1094_s4_r9257}'
            # a19 # r9257
            jump zm1094_dispose


# s5 # say9226
label zm1094_s5: # from 4.0 11.0
    'zm1094_s5{#zm1094_s5}'
    # nr '"My name was Asonje. May I leave?"{#zm1094_s5_1}'

    menu:
        'zm1094_s5_r9258{#zm1094_s5_r9258}': # '"No, I had another question…"{#zm1094_s5_r9258}'
            # a20 # r9258
            jump zm1094_s11

        'zm1094_s5_r9259{#zm1094_s5_r9259}': # '"That is all I wished to know. Farewell."{#zm1094_s5_r9259}'
            # a21 # r9259
            jump zm1094_dispose


# s6 # say9227
label zm1094_s6: # from 4.1 11.1
    'zm1094_s6{#zm1094_s6}'
    # nr '"I cannot remember. Anything else?"{#zm1094_s6_1}'

    menu:
        'zm1094_s6_r9260{#zm1094_s6_r9260}': # '"Yes, I had another question…"{#zm1094_s6_r9260}'
            # a22 # r9260
            jump zm1094_s11

        'zm1094_s6_r9261{#zm1094_s6_r9261}': # '"That is all I wished to know. Farewell."{#zm1094_s6_r9261}'
            # a23 # r9261
            jump zm1094_dispose


# s7 # say9228
label zm1094_s7: # from 4.2 11.2
    'zm1094_s7{#zm1094_s7}'
    # nr 'The spirit shrugs and looks skyward. "I couldn„t say. What does it matter, in any case?" He purses his lips unhappily and gives you a hard look, the ghost-light in his eyes flashing angrily. "Do you need anything more from me?"{#zm1094_s7_1}'

    menu:
        'zm1094_s7_r9262{#zm1094_s7_r9262}': # '"Yes, I had another question…"{#zm1094_s7_r9262}'
            # a24 # r9262
            jump zm1094_s11

        'zm1094_s7_r9263{#zm1094_s7_r9263}': # '"That is all I wished to know. Farewell."{#zm1094_s7_r9263}'
            # a25 # r9263
            jump zm1094_dispose


# s8 # say9229
label zm1094_s8: # from 4.3 11.3
    'zm1094_s8{#zm1094_s8}'
    # nr '"My spirit exists in Arborea…" He pauses for a moment, lost in fond recollection. "Even now I long to return to my home there, away from your selfish, inconsiderate, and rather boring prying. Am I free to return?"{#zm1094_s8_1}'

    menu:
        'zm1094_s8_r9264{#zm1094_s8_r9264}': # '"No, I had another question…"{#zm1094_s8_r9264}'
            # a26 # r9264
            jump zm1094_s11

        'zm1094_s8_r9265{#zm1094_s8_r9265}': # '"Yes, go. Farewell."{#zm1094_s8_r9265}'
            # a27 # r9265
            jump zm1094_dispose


# s9 # say9230
label zm1094_s9: # from 4.4 11.4
    'zm1094_s9{#zm1094_s9}'
    # nr 'The spirit gives you an exasperated look. "Nothing, of course!" He shakes his head, annoyed, the broken stitches swaying with his movement.{#zm1094_s9_1}'

    menu:
        'zm1094_s9_r9266{#zm1094_s9_r9266}': # '"Then how did your corpse come to be here, working these bleak halls?"{#zm1094_s9_r9266}'
            # a28 # r9266
            jump zm1094_s12

        'zm1094_s9_r9267{#zm1094_s9_r9267}': # '"I had another question…"{#zm1094_s9_r9267}'
            # a29 # r9267
            jump zm1094_s11

        'zm1094_s9_r9268{#zm1094_s9_r9268}': # '"That is all I wished to know. Farewell."{#zm1094_s9_r9268}'
            # a30 # r9268
            jump zm1094_dispose


# s10 # say9231
label zm1094_s10: # from 4.5 11.5
    'zm1094_s10{#zm1094_s10}'
    # nr '"No." The spirit seems to be paying little attention to you.{#zm1094_s10_1}'

    menu:
        'zm1094_s10_r9269{#zm1094_s10_r9269}': # '"Then I had another question…"{#zm1094_s10_r9269}'
            # a31 # r9269
            jump zm1094_s11

        'zm1094_s10_r9270{#zm1094_s10_r9270}': # '"That is all I wished to know. Farewell."{#zm1094_s10_r9270}'
            # a32 # r9270
            jump zm1094_dispose


# s11 # say9232
label zm1094_s11: # from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
    'zm1094_s11{#zm1094_s11}'
    # nr 'The spirit sighs loudly, filling the air with smell of formaldehyde from the corpse„s lungs. "Yes, yes… ask away."{#zm1094_s11_1}'

    menu:
        'zm1094_s11_r9271{#zm1094_s11_r9271}': # '"Who are you?"{#zm1094_s11_r9271}'
            # a33 # r9271
            jump zm1094_s5

        'zm1094_s11_r9272{#zm1094_s11_r9272}': # '"Where are you from?"{#zm1094_s11_r9272}'
            # a34 # r9272
            jump zm1094_s6

        'zm1094_s11_r9273{#zm1094_s11_r9273}': # '"How did you end up here? As a zombie, I mean?"{#zm1094_s11_r9273}'
            # a35 # r9273
            jump zm1094_s7

        'zm1094_s11_r9274{#zm1094_s11_r9274}': # '"Where are you… where your spirit resides… now?"{#zm1094_s11_r9274}'
            # a36 # r9274
            jump zm1094_s8

        'zm1094_s11_r9275{#zm1094_s11_r9275}': # '"What do you know of this place?"{#zm1094_s11_r9275}'
            # a37 # r9275
            jump zm1094_s9

        'zm1094_s11_r9276{#zm1094_s11_r9276}' if zm1094Logic.r9276_condition(): # '"Do you know someone named Pharod?"{#zm1094_s11_r9276}'
            # a38 # r9276
            jump zm1094_s10

        'zm1094_s11_r9277{#zm1094_s11_r9277}': # '"Nothing, never mind."{#zm1094_s11_r9277}'
            # a39 # r9277
            jump zm1094_dispose


# s12 # say9233
label zm1094_s12: # from 9.0
    'zm1094_s12{#zm1094_s12}'
    # nr '"Your guess is as good as mine, Homely One. I would take my leave now, should you permit."{#zm1094_s12_1}'

    menu:
        'zm1094_s12_r9278{#zm1094_s12_r9278}': # '"No, I had another question…"{#zm1094_s12_r9278}'
            # a40 # r9278
            jump zm1094_s11

        'zm1094_s12_r9279{#zm1094_s12_r9279}': # '"That is all I wished to know. Farewell."{#zm1094_s12_r9279}'
            # a41 # r9279
            jump zm1094_dispose


# s13 # say9234
label zm1094_s13: # from 3.1
    'zm1094_s13{#zm1094_s13}'
    # nr 'He mulls it over for a moment, then laughs. "Yes! That would make sense, wouldn„t it? Now, do I know you?" He cocks his head to one side, peering at you intently. He seems to regard discerning your identity as some sort of amusing game.{#zm1094_s13_1}'

    menu:
        'zm1094_s13_r9280{#zm1094_s13_r9280}': # '"No, I doubt you know me. Now, I had a question for you…"{#zm1094_s13_r9280}'
            # a42 # r9280
            jump zm1094_s14

        'zm1094_s13_r9281{#zm1094_s13_r9281}': # '"It is doubtful. Farewell."{#zm1094_s13_r9281}'
            # a43 # r9281
            jump zm1094_dispose


# s14 # say9235
label zm1094_s14: # from 3.2 13.0
    'zm1094_s14{#zm1094_s14}'
    # nr 'The spirit shrugs and smiles, chuckling softly. "Perhaps you„re right! What is it you wished to ask me?" He begins absent-mindedly pulling the remaining stitches from his lips and dropping them to the floor, one by one.{#zm1094_s14_1}'

    menu:
        'zm1094_s14_r9282{#zm1094_s14_r9282}' if zm1094Logic.r9282_condition(): # '"Who are you?"{#zm1094_s14_r9282}'
            # a44 # r9282
            jump zm1094_s15

        'zm1094_s14_r9286{#zm1094_s14_r9286}' if zm1094Logic.r9286_condition(): # '"Who are you?"{#zm1094_s14_r9286}'
            # a45 # r9286
            jump zm1094_s25

        'zm1094_s14_r9287{#zm1094_s14_r9287}': # '"Where are you from?"{#zm1094_s14_r9287}'
            # a46 # r9287
            jump zm1094_s16

        'zm1094_s14_r9288{#zm1094_s14_r9288}': # '"How did you end up here? As a zombie, I mean?"{#zm1094_s14_r9288}'
            # a47 # r9288
            jump zm1094_s17

        'zm1094_s14_r9317{#zm1094_s14_r9317}': # '"Where are you… where your spirit resides… now?"{#zm1094_s14_r9317}'
            # a48 # r9317
            jump zm1094_s18

        'zm1094_s14_r9318{#zm1094_s14_r9318}': # '"What do you know of this place?"{#zm1094_s14_r9318}'
            # a49 # r9318
            jump zm1094_s19

        'zm1094_s14_r9319{#zm1094_s14_r9319}' if zm1094Logic.r9319_condition(): # '"Do you know someone named Pharod?"{#zm1094_s14_r9319}'
            # a50 # r9319
            jump zm1094_s20

        'zm1094_s14_r9320{#zm1094_s14_r9320}': # '"Nothing, never mind."{#zm1094_s14_r9320}'
            # a51 # r9320
            jump zm1094_dispose


# s15 # say9236
label zm1094_s15: # from 14.0 22.0
    'zm1094_s15{#zm1094_s15}'
    # nr '"My name was Asonje. Might I know yours?"{#zm1094_s15_1}'

    menu:
        'zm1094_s15_r9289{#zm1094_s15_r9289}': # '"I… I do not know."{#zm1094_s15_r9289}'
            # a52 # r9289
            $ zm1094Logic.r9289_action()
            jump zm1094_s21

        'zm1094_s15_r9290{#zm1094_s15_r9290}': # '"I shall tell you another time. I had a question…"{#zm1094_s15_r9290}'
            # a53 # r9290
            $ zm1094Logic.r9290_action()
            jump zm1094_s22

        'zm1094_s15_r9291{#zm1094_s15_r9291}': # '"Another time, perhaps. Farewell."{#zm1094_s15_r9291}'
            # a54 # r9291
            $ zm1094Logic.r9291_action()
            jump zm1094_dispose


# s16 # say9237
label zm1094_s16: # from 14.2 22.2
    'zm1094_s16{#zm1094_s16}'
    # nr '"I am from many places! In truth, my birthplace is unknown to me. I did a good deal of travelling in my life, and called many places home. Now all Arborea is mine to explore…" The spirit seems well pleased.{#zm1094_s16_1}'

    menu:
        'zm1094_s16_r9292{#zm1094_s16_r9292}': # '"I see. I had another question…"{#zm1094_s16_r9292}'
            # a55 # r9292
            jump zm1094_s22

        'zm1094_s16_r9293{#zm1094_s16_r9293}': # '"That is all I wished to know. Farewell."{#zm1094_s16_r9293}'
            # a56 # r9293
            jump zm1094_dispose


# s17 # say9238
label zm1094_s17: # from 14.3 22.3
    'zm1094_s17{#zm1094_s17}'
    # nr 'The spirit„s smile fades away and he looks troubled for a moment. "Strange… I don“t know! I„m not sure how I died, really." He shrugs. "No matter!" His cheery grin returns, somehow bright despite being plastered across a corpse“s withered face.{#zm1094_s17_1}'

    menu:
        'zm1094_s17_r9294{#zm1094_s17_r9294}': # '"I had another question…"{#zm1094_s17_r9294}'
            # a57 # r9294
            jump zm1094_s22

        'zm1094_s17_r9295{#zm1094_s17_r9295}': # '"That is all I wished to know. Farewell."{#zm1094_s17_r9295}'
            # a58 # r9295
            jump zm1094_dispose


# s18 # say9239
label zm1094_s18: # from 14.4 22.4
    'zm1094_s18{#zm1094_s18}'
    # nr '"Arborea! A more wondrous place I could not ask for. Nowhere in my mortal life did I find a place of such great passion… such splendour…" He pauses for a while, lost in pleasant recollection. "The beauty of the land, the people - magnificent. I tell you truly, I miss it even now!"{#zm1094_s18_1}'

    menu:
        'zm1094_s18_r9296{#zm1094_s18_r9296}': # '"I see. I had another question…"{#zm1094_s18_r9296}'
            # a59 # r9296
            jump zm1094_s22

        'zm1094_s18_r9297{#zm1094_s18_r9297}': # '"That is all I wished to know. Farewell."{#zm1094_s18_r9297}'
            # a60 # r9297
            jump zm1094_dispose


# s19 # say9240
label zm1094_s19: # from 14.5 22.5
    'zm1094_s19{#zm1094_s19}'
    # nr '"Not so much. I signed a contract with a Dustman on a whim… she had pointed out the dreadful place to me, once, told me my corpse would be raised and used as a laborer. I thought: I„ll have no need for it when I“ve passed into the next life - why not? Might as well take the silver and go spend it on some women and wine!" He chuckles at the idea, the ghost-lights in his eyes flashing merrily.{#zm1094_s19_1}'

    menu:
        'zm1094_s19_r9298{#zm1094_s19_r9298}': # '"Do you know anything of the city around the Mortuary?"{#zm1094_s19_r9298}'
            # a61 # r9298
            jump zm1094_s24

        'zm1094_s19_r9299{#zm1094_s19_r9299}': # '"I see. I had another question…"{#zm1094_s19_r9299}'
            # a62 # r9299
            jump zm1094_s22

        'zm1094_s19_r9300{#zm1094_s19_r9300}': # '"That is all I wished to know. Farewell."{#zm1094_s19_r9300}'
            # a63 # r9300
            jump zm1094_dispose


# s20 # say9241
label zm1094_s20: # from 14.6 22.6
    'zm1094_s20{#zm1094_s20}'
    # nr 'The spirit thinks for a moment. "No, I am afraid I have not heard of this man. A friend of yours?"{#zm1094_s20_1}'

    menu:
        'zm1094_s20_r9301{#zm1094_s20_r9301}': # '"Perhaps. I had another question…"{#zm1094_s20_r9301}'
            # a64 # r9301
            jump zm1094_s22

        'zm1094_s20_r9302{#zm1094_s20_r9302}': # '"I do not know. Farewell."{#zm1094_s20_r9302}'
            # a65 # r9302
            jump zm1094_dispose


# s21 # say9242
label zm1094_s21: # from 15.0
    'zm1094_s21{#zm1094_s21}'
    # nr 'He looks surprised. "How odd! A shame, truly. I must have *something* to call you, no?" The spirit looks at you expectantly.{#zm1094_s21_1}'

    menu:
        'zm1094_s21_r9303{#zm1094_s21_r9303}': # '"I am sure you can come up with something. I had a question…"{#zm1094_s21_r9303}'
            # a66 # r9303
            jump zm1094_s22

        'zm1094_s21_r9304{#zm1094_s21_r9304}': # 'Make a name up: "I do not know… „Adahn“?"{#zm1094_s21_r9304}'
            # a67 # r9304
            $ zm1094Logic.r9304_action()
            jump zm1094_s23

        'zm1094_s21_r9305{#zm1094_s21_r9305}': # '"No, it is not important. Farewell."{#zm1094_s21_r9305}'
            # a68 # r9305
            jump zm1094_dispose


# s22 # say9243
label zm1094_s22: # from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
    'zm1094_s22{#zm1094_s22}'
    # nr '"Certainly. Ask away!" He smiles pleasantly, awaiting your query with interest. The last of the stitches now gone, his grin is not quite so eerie to look upon.{#zm1094_s22_1}'

    menu:
        'zm1094_s22_r9306{#zm1094_s22_r9306}' if zm1094Logic.r9306_condition(): # '"Who are you?"{#zm1094_s22_r9306}'
            # a69 # r9306
            jump zm1094_s15

        'zm1094_s22_r9307{#zm1094_s22_r9307}' if zm1094Logic.r9307_condition(): # '"Who are you?"{#zm1094_s22_r9307}'
            # a70 # r9307
            jump zm1094_s25

        'zm1094_s22_r9308{#zm1094_s22_r9308}': # '"Where are you from?"{#zm1094_s22_r9308}'
            # a71 # r9308
            jump zm1094_s16

        'zm1094_s22_r9309{#zm1094_s22_r9309}': # '"How did you end up here? As a zombie, I mean?"{#zm1094_s22_r9309}'
            # a72 # r9309
            jump zm1094_s17

        'zm1094_s22_r9310{#zm1094_s22_r9310}': # '"Where are you… where your spirit resides… now?"{#zm1094_s22_r9310}'
            # a73 # r9310
            jump zm1094_s18

        'zm1094_s22_r9311{#zm1094_s22_r9311}': # '"What do you know of this place?"{#zm1094_s22_r9311}'
            # a74 # r9311
            jump zm1094_s19

        'zm1094_s22_r9312{#zm1094_s22_r9312}' if zm1094Logic.r9312_condition(): # '"Do you know someone named Pharod?"{#zm1094_s22_r9312}'
            # a75 # r9312
            jump zm1094_s20

        'zm1094_s22_r9321{#zm1094_s22_r9321}': # '"Nothing, never mind."{#zm1094_s22_r9321}'
            # a76 # r9321
            jump zm1094_dispose


# s23 # say9244
label zm1094_s23: # from 21.1
    'zm1094_s23{#zm1094_s23}'
    # nr 'The spirit, sensing your frustration, laughs goodheartedly. "Poor sod! Then Adahn it is, friend. Now, did you have a question for me?"{#zm1094_s23_1}'

    menu:
        'zm1094_s23_r9313{#zm1094_s23_r9313}': # '"Yes, I did…"{#zm1094_s23_r9313}'
            # a77 # r9313
            jump zm1094_s22

        'zm1094_s23_r9314{#zm1094_s23_r9314}': # '"No, I did not. Farewell."{#zm1094_s23_r9314}'
            # a78 # r9314
            jump zm1094_dispose


# s24 # say9245
label zm1094_s24: # from 19.0
    'zm1094_s24{#zm1094_s24}'
    # nr '"What, Sigil?" Seeing your nod, the corpse„s smile stretches into a wide, wicked grin. "Oh, I“ll not spoil that for you! Go and explore the place for yourself! Get lost in its streets, its taverns, its people… but take care! It can be a dangerous as well as wondrous place. But that„s what makes it all so exciting, no?"{#zm1094_s24_1}'

    menu:
        'zm1094_s24_r9315{#zm1094_s24_r9315}': # '"I… suppose so. I have another question…"{#zm1094_s24_r9315}'
            # a79 # r9315
            jump zm1094_s22

        'zm1094_s24_r9316{#zm1094_s24_r9316}': # '"Perhaps. Farewell."{#zm1094_s24_r9316}'
            # a80 # r9316
            jump zm1094_dispose


# s25 # say9283
label zm1094_s25: # from 14.1 22.1
    'zm1094_s25{#zm1094_s25}'
    # nr '"My name was Asonje."{#zm1094_s25_1}'

    menu:
        'zm1094_s25_r9284{#zm1094_s25_r9284}': # '"I had another question…"{#zm1094_s25_r9284}'
            # a81 # r9284
            jump zm1094_s22

        'zm1094_s25_r9285{#zm1094_s25_r9285}': # '"That is all I wished to know. Farewell."{#zm1094_s25_r9285}'
            # a82 # r9285
            jump zm1094_dispose


# s26 # say20061
label zm1094_s26: # - # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    'zm1094_s26{#zm1094_s26}'
    # nr '"Back again, hmm?" He smiles broadly.{#zm1094_s26_1}'

    menu:
        'zm1094_s26_r20063{#zm1094_s26_r20063}': # '"I had some questions…"{#zm1094_s26_r20063}'
            # a83 # r20063
            jump zm1094_s22

        'zm1094_s26_r20064{#zm1094_s26_r20064}': # '"I was only passing by. Farewell."{#zm1094_s26_r20064}'
            # a84 # r20064
            jump zm1094_dispose


# s27 # say20062
label zm1094_s27: # - # IF ~  Global("Asonje","GLOBAL",3)
    'zm1094_s27{#zm1094_s27}'
    # nr '"Oh, you… again." He frowns, looking away.{#zm1094_s27_1}'

    menu:
        'zm1094_s27_r20065{#zm1094_s27_r20065}': # '"I had some questions…"{#zm1094_s27_r20065}'
            # a85 # r20065
            jump zm1094_s11

        'zm1094_s27_r20066{#zm1094_s27_r20066}': # '"I was only passing by. Farewell."{#zm1094_s27_r20066}'
            # a86 # r20066
            jump zm1094_dispose
