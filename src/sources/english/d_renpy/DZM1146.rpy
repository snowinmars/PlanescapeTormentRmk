init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1146_logic import Zm1146Logic
    zm1146Logic = Zm1146Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1146.DLG
# ###


# s0 # say6518
label zm1146_s0: # - # IF ~  Global("Crispy","GLOBAL",0)
    nr 'The number "1146" is carved into the forehead of this walking corpse, its lips are sewn together with coarse, black thread. The entire body is covered in horrible scars - worse, even, than your own - as if its owner had been burned to death. Its nose, ears, and several digits are missing, presumably charred away in some long-ago conflagration. As you block its path to get its „attention,“ it stops and gazes at you with vacant eyes.'

    menu:
        '"So… seen anything interesting going on?"' if zm1146Logic.r6521_condition():
            # a0 # r6521
            $ zm1146Logic.r6521_action()
            jump zm1146_s1

        '"So… seen anything interesting going on?"' if zm1146Logic.r6522_condition():
            # a1 # r6522
            jump zm1146_s1

        '"I know you„re not a zombie, you know. You“re not fooling anyone."' if zm1146Logic.r6523_condition():
            # a2 # r6523
            jump zm1146_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if zm1146Logic.r6524_condition():
            # a3 # r6524
            $ zm1146Logic.r6524_action()
            jump zm1146_s2

        '"It was great talking to you. Farewell."':
            # a4 # r6525
            jump zm1146_dispose

        'Leave the corpse in peace.':
            # a5 # r6526
            jump zm1146_dispose


# s1 # say6519
label zm1146_s1: # from 0.0 0.1 0.2
    nr 'The corpse continues to stare at you.'

    menu:
        'Leave the corpse in peace.':
            # a6 # r6527
            jump zm1146_dispose


# s2 # say6520
label zm1146_s2: # from 0.3
    nr 'The odors of fuming sulfur, cooked hair and scorched blood assault your senses as the spirit returns to its one-time home. The corpse collapses to the floor almost immediately, shuddering violently as it clutches at itself and moans pitifully. You can almost see thin plumes of stinking smoke curling off its body and limbs.'

    menu:
        '"Are you… all right?"':
            # a7 # r6528
            jump zm1146_s3

        '"I had questions for you…"':
            # a8 # r9413
            jump zm1146_s9

        'Leave the burning spirit.':
            # a9 # r9414
            jump zm1146_dispose


# s3 # say9398
label zm1146_s3: # from 2.0
    nr 'The spirit opens one eye, the orb„s whiteness stark against the gray, puckered flesh that surrounds it. It slowly turns its head so as to peer up at you; the blasted and scarified flesh of its face and neck pulling taut over the bone. It finally croaks from its ruined throat: "No. No… I ain“t, ya… pikin„… addle-cove."'

    menu:
        '"Is there something I can do to aid you?"':
            # a10 # r9415
            $ zm1146Logic.r9415_action()
            jump zm1146_s4

        '"I had a question…"':
            # a11 # r9416
            jump zm1146_s9

        '"It is just as well, you stinking, smoldering husk; you probably deserve such a fate. Farewell."':
            # a12 # r9417
            jump zm1146_s6

        'Leave the tortured spirit.':
            # a13 # r9418
            jump zm1146_dispose


# s4 # say9399
label zm1146_s4: # from 3.0
    nr '"Heh, heh-HURG!" The spirit begins to laugh but stops abruptly, spasms wildly, and vomits up a stream of embalming fluid and black putrescence. Wracked with pain, the spirit begins to hack and cough, occasionally pausing to spit yellowish fluid and loose stitches from between its ruined lips.'

    menu:
        'Wait patiently for the fit to end.':
            # a14 # r9419
            jump zm1146_s5

        '"I had another question…"':
            # a15 # r9421
            jump zm1146_s9

        'Leave the tortured spirit to its suffering.':
            # a16 # r9422
            jump zm1146_dispose


# s5 # say9400
label zm1146_s5: # from 4.0
    nr 'The spirit„s horrible coughing finally settles down. "No, berk… ya… can“t. Unless… unless yer gonna dance on inta Baator and rescues me, I„ve hit da… da blinds. Time fer my… my penance." The spirit closes its eye and rests its head back on the floor.'

    menu:
        '"I see. I had another question…"':
            # a17 # r9423
            jump zm1146_s9

        '"All right. Farewell."':
            # a18 # r9424
            jump zm1146_dispose


# s6 # say9401
label zm1146_s6: # from 3.2 17.0
    nr 'The spirit makes a wet snarling noise, its cracked, blackened lips pulling away from crooked yellow teeth. "Jest… jest you waits till I… gets outta dis Pit… I„m… comin“ fer you first, berk…"'

    menu:
        '"You do that. I„m not one to fear the likes of you."':
            # a19 # r9425
            jump zm1146_s7

        'Strike him.':
            # a20 # r9426
            $ zm1146Logic.r9426_action()
            jump zm1146_s8

        'Ignore the wretch, turn away and leave.':
            # a21 # r9427
            jump zm1146_dispose


# s7 # say9402
label zm1146_s7: # from 6.0
    nr 'The spirit manages a weak, guttural growl, and spits at you - the foul stuff lands several inches short of your feet. Exhausted, the thing slumps back to the floor and life begins to fade from the corpse once more.'

    jump zm1146_dispose


# s8 # say9403
label zm1146_s8: # from 6.1
    nr 'You land a swift kick to the corpse„s kidney, but to no avail; the spirit within seems unharmed. "Heh, heh-heh," the thing gurgles, before finally fading from the body entirely. You“re left standing there with a vague feeling of dissatisfaction.'

    jump zm1146_dispose


# s9 # say9404
label zm1146_s9: # from 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
    nr '"What… what could ya *possibly* wants from me now, berk?" The spirit still occasionally writhes about, patting at itself as if trying to extinguish various small fires on its body.'

    menu:
        '"Who are you?"':
            # a22 # r9428
            jump zm1146_s10

        '"Where are you from?"':
            # a23 # r9429
            jump zm1146_s11

        '"How did you end up here? As a zombie, I mean?"':
            # a24 # r9430
            jump zm1146_s12

        '"Where are you… where your spirit resides… now?"':
            # a25 # r9431
            jump zm1146_s13

        '"What did you do to deserve such torment?"':
            # a26 # r9432
            jump zm1146_s14

        '"What do you know of this place?"':
            # a27 # r9433
            jump zm1146_s15

        '"Do you know someone named Pharod?"' if zm1146Logic.r9434_condition():
            # a28 # r9434
            jump zm1146_s16

        '"Nothing, never mind."':
            # a29 # r9435
            jump zm1146_dispose


# s10 # say9405
label zm1146_s10: # from 9.0
    nr '"None a„ yer business… leaves me… be…"'

    menu:
        '"No. I had another question…"':
            # a30 # r9436
            jump zm1146_s9

        '"Farewell, then."':
            # a31 # r9437
            jump zm1146_dispose


# s11 # say9406
label zm1146_s11: # from 9.1
    nr '"Eh? Fer da love of da powers, who… cares? From Sigil, ya… ya piker."'

    menu:
        '"I had another question…"':
            # a32 # r9438
            jump zm1146_s9

        '"That is all I wished to know. Farewell."':
            # a33 # r9439
            jump zm1146_dispose


# s12 # say9407
label zm1146_s12: # from 9.2
    nr '"How do ya tinks, Clueless?" The spirit„s outburst sends him into a short fit of jerking, painful coughs. "I signed da meat away fer… fer a bit a“ jink. Pikin„ Dusters… an“ right den - RIGHT DEN, can ya believes it - some barmy wizard decides ta blast da Hive ta flamin„ oblivion, wit“ me stucks right in da middle!" The spirit mumbles evilly for a bit, steaming fluid bubbling out from the corners of his jagged slit of a mouth.'

    menu:
        '"A wizard burned down the Hive?"':
            # a34 # r9440
            jump zm1146_s18

        '"I had another question…"':
            # a35 # r9441
            jump zm1146_s9

        '"That is all I wished to know. Farewell."':
            # a36 # r9465
            jump zm1146_dispose


# s13 # say9408
label zm1146_s13: # from 9.3
    nr '"Where do… do ya think, ya leather-headed basher? Baator, in dat stinkin„ dung-hole dey call Phlegethos. Burn, burn… burn… dat“s all I do. I burned ta death in life, an„ now I“s burnin„ in death. Argh!" The corpse gnashes its teeth in fury. "Da irony“s jest sickenin„! When I gets outta here, I“s gonna toss so many sods inta dis damn hole. Heh, heh-heh… *gurgle*"'

    menu:
        '"Why would you wish to inflict your fate upon others?"':
            # a37 # r9442
            jump zm1146_s17

        '"I had another question…"':
            # a38 # r9443
            jump zm1146_s9

        '"That is all wished to know. Farewell."':
            # a39 # r9444
            jump zm1146_dispose


# s14 # say9409
label zm1146_s14: # from 9.4
    nr '"Deserve? DIS? Nothin„! I… *gack*… didn“t do nothin„. Jest tryin“ ta get by… get by likes everybody else… den „phoomph!“ Dat goat„s son of a mage starts burnin“ up da Hive!"'

    menu:
        '"A mage… burned up… the Hive?"':
            # a40 # r9445
            jump zm1146_s18

        '"I see. I had another question…"':
            # a41 # r9446
            jump zm1146_s9

        '"That is all I wished to know. Farewell."':
            # a42 # r9745
            jump zm1146_dispose


# s15 # say9410
label zm1146_s15: # from 9.5
    nr '"Nothin„. Nothin“ I„s tellin“ *you,* berk. Jest… jest leaves me alone ta burns…"'

    menu:
        '"Very well. I had another question, then…"':
            # a43 # r9447
            jump zm1146_s9

        '"Farewell, then."':
            # a44 # r9448
            jump zm1146_dispose


# s16 # say9411
label zm1146_s16: # from 9.6
    nr '"Who? What? No! What… what makes ya think I„d tells ya if I did, ya… ya soddin“ berk? Hmph…"'

    menu:
        '"Very well. I had another question…"':
            # a45 # r9449
            jump zm1146_s9

        '"That is all I wished to know. Farewell."':
            # a46 # r9450
            jump zm1146_dispose


# s17 # say9412
label zm1146_s17: # from 13.0
    nr '"Revenge, ya addle-cove! I„s gonna… gonna gets dem all, all dose dat crossed me. Especially dat wizard! I“s gonna tear off his wee bits and shoves „em down his troat! Den I“ll trow him in dis stinkin„ hole, wee bits an“ all! Him an„ a few more fer… fer good measure, too! Heh, heh-heh…"'

    menu:
        '"You are a vicious, petty little man. Your fate seems well-deserved."':
            # a47 # r9420
            jump zm1146_s6

        '"I see. I had more questions for you…"':
            # a48 # r9451
            jump zm1146_s9

        '"That is all I wished to know. Farewell."':
            # a49 # r9452
            jump zm1146_dispose


# s18 # say9458
label zm1146_s18: # from 12.0 14.0
    nr '"Yeah, da Hive… da worstest part a„ Sigil. I never seen so much fire in alls me life… I ran dis way an“ dat, tryin„ ta get aways, but everytin“ was jest burstin„ inta flame! Buildin“s, streets, folks an„ der kids… and dat trice-blasted wizard, jest laughin“ all da time! I turned a corner and tought I gots away fer a bit, but da next ting I know, me pikin„ head“s on fire! It pretty much… went downhills from dere…" The spirit„s opened eye shines with a malevolent light.'

    menu:
        '"Who was this wizard?"':
            # a50 # r9459
            jump zm1146_s19

        '"I see. I had more questions for you…"':
            # a51 # r9464
            jump zm1146_s9

        '"That is all I wished to know. Farewell."':
            # a52 # r9746
            jump zm1146_dispose


# s19 # say9744
label zm1146_s19: # from 18.0
    nr '"Dunno. I was pretty well an„ cooked before anyone stopped him, if someone ever did. I tink I remember some peoples chasin“ after him at da start of it alls, shoutin„ his name… er… oh! Ignis, I“m tinkin„ it was. Ignis. Or sumtin“ like dat. I sure hopes dat piker„s in a worse hole dan me!"'

    menu:
        '"I see. I had more questions for you…"':
            # a53 # r9747
            jump zm1146_s9

        '"That is all I wished to know. Farewell."':
            # a54 # r9748
            jump zm1146_dispose


# s20 # say20099
label zm1146_s20: # - # IF ~  Global("Crispy","GLOBAL",1)
    nr '"Again?!"'

    menu:
        '"I had some questions…"':
            # a55 # r20100
            jump zm1146_s9

        '"Nothing, I was just passing by. Farewell."':
            # a56 # r20101
            jump zm1146_dispose
