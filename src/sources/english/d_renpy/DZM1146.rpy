init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1146_logic import Zm1146Logic
    zm1146Logic = Zm1146Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1146.DLG
# ###


# s0 # say6518
label zm1146_s0: # - # IF ~  Global("Crispy","GLOBAL",0)
    'zm1146_s0{#zm1146_s0}'
    # nr 'The number "1146" is carved into the forehead of this walking corpse, its lips are sewn together with coarse, black thread. The entire body is covered in horrible scars - worse, even, than your own - as if its owner had been burned to death. Its nose, ears, and several digits are missing, presumably charred away in some long-ago conflagration. As you block its path to get its „attention,“ it stops and gazes at you with vacant eyes.{#zm1146_s0_1}'

    menu:
        'zm1146_s0_r6521{#zm1146_s0_r6521}' if zm1146Logic.r6521_condition(): # '"So… seen anything interesting going on?"{#zm1146_s0_r6521}'
            # a0 # r6521
            $ zm1146Logic.r6521_action()
            jump zm1146_s1

        'zm1146_s0_r6522{#zm1146_s0_r6522}' if zm1146Logic.r6522_condition(): # '"So… seen anything interesting going on?"{#zm1146_s0_r6522}'
            # a1 # r6522
            jump zm1146_s1

        'zm1146_s0_r6523{#zm1146_s0_r6523}' if zm1146Logic.r6523_condition(): # '"I know you„re not a zombie, you know. You“re not fooling anyone."{#zm1146_s0_r6523}'
            # a2 # r6523
            jump zm1146_s1

        'zm1146_s0_r6524{#zm1146_s0_r6524}' if zm1146Logic.r6524_condition(): # 'Use your Stories-Bones-Tell ability on the corpse.{#zm1146_s0_r6524}'
            # a3 # r6524
            $ zm1146Logic.r6524_action()
            jump zm1146_s2

        'zm1146_s0_r6525{#zm1146_s0_r6525}': # '"It was great talking to you. Farewell."{#zm1146_s0_r6525}'
            # a4 # r6525
            jump zm1146_dispose

        'zm1146_s0_r6526{#zm1146_s0_r6526}': # 'Leave the corpse in peace.{#zm1146_s0_r6526}'
            # a5 # r6526
            jump zm1146_dispose


# s1 # say6519
label zm1146_s1: # from 0.0 0.1 0.2
    'zm1146_s1{#zm1146_s1}'
    # nr 'The corpse continues to stare at you.{#zm1146_s1_1}'

    menu:
        'zm1146_s1_r6527{#zm1146_s1_r6527}': # 'Leave the corpse in peace.{#zm1146_s1_r6527}'
            # a6 # r6527
            jump zm1146_dispose


# s2 # say6520
label zm1146_s2: # from 0.3
    'zm1146_s2{#zm1146_s2}'
    # nr 'The odors of fuming sulfur, cooked hair and scorched blood assault your senses as the spirit returns to its one-time home. The corpse collapses to the floor almost immediately, shuddering violently as it clutches at itself and moans pitifully. You can almost see thin plumes of stinking smoke curling off its body and limbs.{#zm1146_s2_1}'

    menu:
        'zm1146_s2_r6528{#zm1146_s2_r6528}': # '"Are you… all right?"{#zm1146_s2_r6528}'
            # a7 # r6528
            jump zm1146_s3

        'zm1146_s2_r9413{#zm1146_s2_r9413}': # '"I had questions for you…"{#zm1146_s2_r9413}'
            # a8 # r9413
            jump zm1146_s9

        'zm1146_s2_r9414{#zm1146_s2_r9414}': # 'Leave the burning spirit.{#zm1146_s2_r9414}'
            # a9 # r9414
            jump zm1146_dispose


# s3 # say9398
label zm1146_s3: # from 2.0
    'zm1146_s3{#zm1146_s3}'
    # nr 'The spirit opens one eye, the orb„s whiteness stark against the gray, puckered flesh that surrounds it. It slowly turns its head so as to peer up at you; the blasted and scarified flesh of its face and neck pulling taut over the bone. It finally croaks from its ruined throat: "No. No… I ain“t, ya… pikin„… addle-cove."{#zm1146_s3_1}'

    menu:
        'zm1146_s3_r9415{#zm1146_s3_r9415}': # '"Is there something I can do to aid you?"{#zm1146_s3_r9415}'
            # a10 # r9415
            $ zm1146Logic.r9415_action()
            jump zm1146_s4

        'zm1146_s3_r9416{#zm1146_s3_r9416}': # '"I had a question…"{#zm1146_s3_r9416}'
            # a11 # r9416
            jump zm1146_s9

        'zm1146_s3_r9417{#zm1146_s3_r9417}': # '"It is just as well, you stinking, smoldering husk; you probably deserve such a fate. Farewell."{#zm1146_s3_r9417}'
            # a12 # r9417
            jump zm1146_s6

        'zm1146_s3_r9418{#zm1146_s3_r9418}': # 'Leave the tortured spirit.{#zm1146_s3_r9418}'
            # a13 # r9418
            jump zm1146_dispose


# s4 # say9399
label zm1146_s4: # from 3.0
    'zm1146_s4{#zm1146_s4}'
    # nr '"Heh, heh-HURG!" The spirit begins to laugh but stops abruptly, spasms wildly, and vomits up a stream of embalming fluid and black putrescence. Wracked with pain, the spirit begins to hack and cough, occasionally pausing to spit yellowish fluid and loose stitches from between its ruined lips.{#zm1146_s4_1}'

    menu:
        'zm1146_s4_r9419{#zm1146_s4_r9419}': # 'Wait patiently for the fit to end.{#zm1146_s4_r9419}'
            # a14 # r9419
            jump zm1146_s5

        'zm1146_s4_r9421{#zm1146_s4_r9421}': # '"I had another question…"{#zm1146_s4_r9421}'
            # a15 # r9421
            jump zm1146_s9

        'zm1146_s4_r9422{#zm1146_s4_r9422}': # 'Leave the tortured spirit to its suffering.{#zm1146_s4_r9422}'
            # a16 # r9422
            jump zm1146_dispose


# s5 # say9400
label zm1146_s5: # from 4.0
    'zm1146_s5{#zm1146_s5}'
    # nr 'The spirit„s horrible coughing finally settles down. "No, berk… ya… can“t. Unless… unless yer gonna dance on inta Baator and rescues me, I„ve hit da… da blinds. Time fer my… my penance." The spirit closes its eye and rests its head back on the floor.{#zm1146_s5_1}'

    menu:
        'zm1146_s5_r9423{#zm1146_s5_r9423}': # '"I see. I had another question…"{#zm1146_s5_r9423}'
            # a17 # r9423
            jump zm1146_s9

        'zm1146_s5_r9424{#zm1146_s5_r9424}': # '"All right. Farewell."{#zm1146_s5_r9424}'
            # a18 # r9424
            jump zm1146_dispose


# s6 # say9401
label zm1146_s6: # from 3.2 17.0
    'zm1146_s6{#zm1146_s6}'
    # nr 'The spirit makes a wet snarling noise, its cracked, blackened lips pulling away from crooked yellow teeth. "Jest… jest you waits till I… gets outta dis Pit… I„m… comin“ fer you first, berk…"{#zm1146_s6_1}'

    menu:
        'zm1146_s6_r9425{#zm1146_s6_r9425}': # '"You do that. I„m not one to fear the likes of you."{#zm1146_s6_r9425}'
            # a19 # r9425
            jump zm1146_s7

        'zm1146_s6_r9426{#zm1146_s6_r9426}': # 'Strike him.{#zm1146_s6_r9426}'
            # a20 # r9426
            $ zm1146Logic.r9426_action()
            jump zm1146_s8

        'zm1146_s6_r9427{#zm1146_s6_r9427}': # 'Ignore the wretch, turn away and leave.{#zm1146_s6_r9427}'
            # a21 # r9427
            jump zm1146_dispose


# s7 # say9402
label zm1146_s7: # from 6.0
    'zm1146_s7{#zm1146_s7}'
    # nr 'The spirit manages a weak, guttural growl, and spits at you - the foul stuff lands several inches short of your feet. Exhausted, the thing slumps back to the floor and life begins to fade from the corpse once more.{#zm1146_s7_1}'

    jump zm1146_dispose


# s8 # say9403
label zm1146_s8: # from 6.1
    'zm1146_s8{#zm1146_s8}'
    # nr 'You land a swift kick to the corpse„s kidney, but to no avail; the spirit within seems unharmed. "Heh, heh-heh," the thing gurgles, before finally fading from the body entirely. You“re left standing there with a vague feeling of dissatisfaction.{#zm1146_s8_1}'

    jump zm1146_dispose


# s9 # say9404
label zm1146_s9: # from 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
    'zm1146_s9{#zm1146_s9}'
    # nr '"What… what could ya *possibly* wants from me now, berk?" The spirit still occasionally writhes about, patting at itself as if trying to extinguish various small fires on its body.{#zm1146_s9_1}'

    menu:
        'zm1146_s9_r9428{#zm1146_s9_r9428}': # '"Who are you?"{#zm1146_s9_r9428}'
            # a22 # r9428
            jump zm1146_s10

        'zm1146_s9_r9429{#zm1146_s9_r9429}': # '"Where are you from?"{#zm1146_s9_r9429}'
            # a23 # r9429
            jump zm1146_s11

        'zm1146_s9_r9430{#zm1146_s9_r9430}': # '"How did you end up here? As a zombie, I mean?"{#zm1146_s9_r9430}'
            # a24 # r9430
            jump zm1146_s12

        'zm1146_s9_r9431{#zm1146_s9_r9431}': # '"Where are you… where your spirit resides… now?"{#zm1146_s9_r9431}'
            # a25 # r9431
            jump zm1146_s13

        'zm1146_s9_r9432{#zm1146_s9_r9432}': # '"What did you do to deserve such torment?"{#zm1146_s9_r9432}'
            # a26 # r9432
            jump zm1146_s14

        'zm1146_s9_r9433{#zm1146_s9_r9433}': # '"What do you know of this place?"{#zm1146_s9_r9433}'
            # a27 # r9433
            jump zm1146_s15

        'zm1146_s9_r9434{#zm1146_s9_r9434}' if zm1146Logic.r9434_condition(): # '"Do you know someone named Pharod?"{#zm1146_s9_r9434}'
            # a28 # r9434
            jump zm1146_s16

        'zm1146_s9_r9435{#zm1146_s9_r9435}': # '"Nothing, never mind."{#zm1146_s9_r9435}'
            # a29 # r9435
            jump zm1146_dispose


# s10 # say9405
label zm1146_s10: # from 9.0
    'zm1146_s10{#zm1146_s10}'
    # nr '"None a„ yer business… leaves me… be…"{#zm1146_s10_1}'

    menu:
        'zm1146_s10_r9436{#zm1146_s10_r9436}': # '"No. I had another question…"{#zm1146_s10_r9436}'
            # a30 # r9436
            jump zm1146_s9

        'zm1146_s10_r9437{#zm1146_s10_r9437}': # '"Farewell, then."{#zm1146_s10_r9437}'
            # a31 # r9437
            jump zm1146_dispose


# s11 # say9406
label zm1146_s11: # from 9.1
    'zm1146_s11{#zm1146_s11}'
    # nr '"Eh? Fer da love of da powers, who… cares? From Sigil, ya… ya piker."{#zm1146_s11_1}'

    menu:
        'zm1146_s11_r9438{#zm1146_s11_r9438}': # '"I had another question…"{#zm1146_s11_r9438}'
            # a32 # r9438
            jump zm1146_s9

        'zm1146_s11_r9439{#zm1146_s11_r9439}': # '"That is all I wished to know. Farewell."{#zm1146_s11_r9439}'
            # a33 # r9439
            jump zm1146_dispose


# s12 # say9407
label zm1146_s12: # from 9.2
    'zm1146_s12{#zm1146_s12}'
    # nr '"How do ya tinks, Clueless?" The spirit„s outburst sends him into a short fit of jerking, painful coughs. "I signed da meat away fer… fer a bit a“ jink. Pikin„ Dusters… an“ right den - RIGHT DEN, can ya believes it - some barmy wizard decides ta blast da Hive ta flamin„ oblivion, wit“ me stucks right in da middle!" The spirit mumbles evilly for a bit, steaming fluid bubbling out from the corners of his jagged slit of a mouth.{#zm1146_s12_1}'

    menu:
        'zm1146_s12_r9440{#zm1146_s12_r9440}': # '"A wizard burned down the Hive?"{#zm1146_s12_r9440}'
            # a34 # r9440
            jump zm1146_s18

        'zm1146_s12_r9441{#zm1146_s12_r9441}': # '"I had another question…"{#zm1146_s12_r9441}'
            # a35 # r9441
            jump zm1146_s9

        'zm1146_s12_r9465{#zm1146_s12_r9465}': # '"That is all I wished to know. Farewell."{#zm1146_s12_r9465}'
            # a36 # r9465
            jump zm1146_dispose


# s13 # say9408
label zm1146_s13: # from 9.3
    'zm1146_s13{#zm1146_s13}'
    # nr '"Where do… do ya think, ya leather-headed basher? Baator, in dat stinkin„ dung-hole dey call Phlegethos. Burn, burn… burn… dat“s all I do. I burned ta death in life, an„ now I“s burnin„ in death. Argh!" The corpse gnashes its teeth in fury. "Da irony“s jest sickenin„! When I gets outta here, I“s gonna toss so many sods inta dis damn hole. Heh, heh-heh… *gurgle*"{#zm1146_s13_1}'

    menu:
        'zm1146_s13_r9442{#zm1146_s13_r9442}': # '"Why would you wish to inflict your fate upon others?"{#zm1146_s13_r9442}'
            # a37 # r9442
            jump zm1146_s17

        'zm1146_s13_r9443{#zm1146_s13_r9443}': # '"I had another question…"{#zm1146_s13_r9443}'
            # a38 # r9443
            jump zm1146_s9

        'zm1146_s13_r9444{#zm1146_s13_r9444}': # '"That is all wished to know. Farewell."{#zm1146_s13_r9444}'
            # a39 # r9444
            jump zm1146_dispose


# s14 # say9409
label zm1146_s14: # from 9.4
    'zm1146_s14{#zm1146_s14}'
    # nr '"Deserve? DIS? Nothin„! I… *gack*… didn“t do nothin„. Jest tryin“ ta get by… get by likes everybody else… den „phoomph!“ Dat goat„s son of a mage starts burnin“ up da Hive!"{#zm1146_s14_1}'

    menu:
        'zm1146_s14_r9445{#zm1146_s14_r9445}': # '"A mage… burned up… the Hive?"{#zm1146_s14_r9445}'
            # a40 # r9445
            jump zm1146_s18

        'zm1146_s14_r9446{#zm1146_s14_r9446}': # '"I see. I had another question…"{#zm1146_s14_r9446}'
            # a41 # r9446
            jump zm1146_s9

        'zm1146_s14_r9745{#zm1146_s14_r9745}': # '"That is all I wished to know. Farewell."{#zm1146_s14_r9745}'
            # a42 # r9745
            jump zm1146_dispose


# s15 # say9410
label zm1146_s15: # from 9.5
    'zm1146_s15{#zm1146_s15}'
    # nr '"Nothin„. Nothin“ I„s tellin“ *you,* berk. Jest… jest leaves me alone ta burns…"{#zm1146_s15_1}'

    menu:
        'zm1146_s15_r9447{#zm1146_s15_r9447}': # '"Very well. I had another question, then…"{#zm1146_s15_r9447}'
            # a43 # r9447
            jump zm1146_s9

        'zm1146_s15_r9448{#zm1146_s15_r9448}': # '"Farewell, then."{#zm1146_s15_r9448}'
            # a44 # r9448
            jump zm1146_dispose


# s16 # say9411
label zm1146_s16: # from 9.6
    'zm1146_s16{#zm1146_s16}'
    # nr '"Who? What? No! What… what makes ya think I„d tells ya if I did, ya… ya soddin“ berk? Hmph…"{#zm1146_s16_1}'

    menu:
        'zm1146_s16_r9449{#zm1146_s16_r9449}': # '"Very well. I had another question…"{#zm1146_s16_r9449}'
            # a45 # r9449
            jump zm1146_s9

        'zm1146_s16_r9450{#zm1146_s16_r9450}': # '"That is all I wished to know. Farewell."{#zm1146_s16_r9450}'
            # a46 # r9450
            jump zm1146_dispose


# s17 # say9412
label zm1146_s17: # from 13.0
    'zm1146_s17{#zm1146_s17}'
    # nr '"Revenge, ya addle-cove! I„s gonna… gonna gets dem all, all dose dat crossed me. Especially dat wizard! I“s gonna tear off his wee bits and shoves „em down his troat! Den I“ll trow him in dis stinkin„ hole, wee bits an“ all! Him an„ a few more fer… fer good measure, too! Heh, heh-heh…"{#zm1146_s17_1}'

    menu:
        'zm1146_s17_r9420{#zm1146_s17_r9420}': # '"You are a vicious, petty little man. Your fate seems well-deserved."{#zm1146_s17_r9420}'
            # a47 # r9420
            jump zm1146_s6

        'zm1146_s17_r9451{#zm1146_s17_r9451}': # '"I see. I had more questions for you…"{#zm1146_s17_r9451}'
            # a48 # r9451
            jump zm1146_s9

        'zm1146_s17_r9452{#zm1146_s17_r9452}': # '"That is all I wished to know. Farewell."{#zm1146_s17_r9452}'
            # a49 # r9452
            jump zm1146_dispose


# s18 # say9458
label zm1146_s18: # from 12.0 14.0
    'zm1146_s18{#zm1146_s18}'
    # nr '"Yeah, da Hive… da worstest part a„ Sigil. I never seen so much fire in alls me life… I ran dis way an“ dat, tryin„ ta get aways, but everytin“ was jest burstin„ inta flame! Buildin“s, streets, folks an„ der kids… and dat trice-blasted wizard, jest laughin“ all da time! I turned a corner and tought I gots away fer a bit, but da next ting I know, me pikin„ head“s on fire! It pretty much… went downhills from dere…" The spirit„s opened eye shines with a malevolent light.{#zm1146_s18_1}'

    menu:
        'zm1146_s18_r9459{#zm1146_s18_r9459}': # '"Who was this wizard?"{#zm1146_s18_r9459}'
            # a50 # r9459
            jump zm1146_s19

        'zm1146_s18_r9464{#zm1146_s18_r9464}': # '"I see. I had more questions for you…"{#zm1146_s18_r9464}'
            # a51 # r9464
            jump zm1146_s9

        'zm1146_s18_r9746{#zm1146_s18_r9746}': # '"That is all I wished to know. Farewell."{#zm1146_s18_r9746}'
            # a52 # r9746
            jump zm1146_dispose


# s19 # say9744
label zm1146_s19: # from 18.0
    'zm1146_s19{#zm1146_s19}'
    # nr '"Dunno. I was pretty well an„ cooked before anyone stopped him, if someone ever did. I tink I remember some peoples chasin“ after him at da start of it alls, shoutin„ his name… er… oh! Ignis, I“m tinkin„ it was. Ignis. Or sumtin“ like dat. I sure hopes dat piker„s in a worse hole dan me!"{#zm1146_s19_1}'

    menu:
        'zm1146_s19_r9747{#zm1146_s19_r9747}': # '"I see. I had more questions for you…"{#zm1146_s19_r9747}'
            # a53 # r9747
            jump zm1146_s9

        'zm1146_s19_r9748{#zm1146_s19_r9748}': # '"That is all I wished to know. Farewell."{#zm1146_s19_r9748}'
            # a54 # r9748
            jump zm1146_dispose


# s20 # say20099
label zm1146_s20: # - # IF ~  Global("Crispy","GLOBAL",1)
    'zm1146_s20{#zm1146_s20}'
    # nr '"Again?!"{#zm1146_s20_1}'

    menu:
        'zm1146_s20_r20100{#zm1146_s20_r20100}': # '"I had some questions…"{#zm1146_s20_r20100}'
            # a55 # r20100
            jump zm1146_s9

        'zm1146_s20_r20101{#zm1146_s20_r20101}': # '"Nothing, I was just passing by. Farewell."{#zm1146_s20_r20101}'
            # a56 # r20101
            jump zm1146_dispose
