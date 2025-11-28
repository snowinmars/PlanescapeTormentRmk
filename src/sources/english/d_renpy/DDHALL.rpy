init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dhall_logic import DhallLogic
    dhallLogic = DhallLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDHALL.DLG
# ###


# s0 # say822
label dhall_s0: # externs morte_s103
    nr 'Before Morte can finish his rant, the scribe begins coughing violently. After a moment or two, the coughing spell dies down, and the scribe„s breathing resumes its ragged wheeze.{#dhall_s0_1}'

    jump morte_s104  # EXTERN


# s1 # say826
label dhall_s1: # externs morte_s104
    nr 'Before Morte can finish, the scribe„s gray eyes flicker to you. "The weight of years hangs heavy upon me, Restless One." He places down his quill. "…but I do not yet count deafness among my ailments."{#dhall_s1_1}'

    menu:
        '"„Restless One“? Do you know me?"{#dhall_s1_r827}':
            # a0 # r827
            $ dhallLogic.r827_action()
            jump dhall_s44


# s2 # say829
label dhall_s2: # from 21.0
    nr '"Do you not know the woman„s corpse interred in the memorial hall below? I had thought that she had traveled with you in the past…" Dhall looks like he is about to start coughing again, then catches his breath. "Am I mistaken?"{#dhall_s2_1}'

    menu:
        '"Where is her body?"{#dhall_s2_r5070}' if dhallLogic.r5070_condition():
            # a1 # r5070
            jump dhall_s42

        '"I know nothing about her."{#dhall_s2_r5071}' if dhallLogic.r5071_condition():
            # a2 # r5071
            jump dhall_s43

        '"She claims to know me, but I can„t recall her."{#dhall_s2_r5072}' if dhallLogic.r5072_condition():
            # a3 # r5072
            jump dhall_s28

        '"You said there were others. Who else is here?"{#dhall_s2_r5073}' if dhallLogic.r5073_condition():
            # a4 # r5073
            jump dhall_s12

        '"You said there were others. Who else is here?"{#dhall_s2_r5074}' if dhallLogic.r5074_condition():
            # a5 # r5074
            jump dhall_s12

        '"Mayhap. I had some other questions for you…"{#dhall_s2_r6063}':
            # a6 # r6063
            jump dhall_s9

        '"I will go to the memorial hall below and see if I can find her body."{#dhall_s2_r6064}' if dhallLogic.r6064_condition():
            # a7 # r6064
            jump dhall_s11

        '"Perhaps not. Farewell."{#dhall_s2_r13288}' if dhallLogic.r13288_condition():
            # a8 # r13288
            jump dhall_s11


# s3 # say832
label dhall_s3: # from 9.0
    nr 'Dhall stares at you. "Are you certain?"{#dhall_s3_1}'

    menu:
        '"Yes. It„s a good disguise."{#dhall_s3_r830}' if dhallLogic.r830_condition():
            # a9 # r830
            $ dhallLogic.r830_action()
            jump dhall_s4

        '"Yes. It„s a good disguise."{#dhall_s3_r831}' if dhallLogic.r831_condition():
            # a10 # r831
            $ dhallLogic.r831_action()
            jump dhall_s4

        '"No, on second thought, perhaps I imagined it. Look, I had some other questions…"{#dhall_s3_r834}':
            # a11 # r834
            jump dhall_s9


# s4 # say833
label dhall_s4: # from 3.0 3.1
    nr '"I…" Dhall breaks into another fit of coughing. After a minute or two, he catches his breath enough to speak. "I… shall inform the guards at once."{#dhall_s4_1}'

    menu:
        '"Thank you. I had some other questions…"{#dhall_s4_r836}':
            # a12 # r836
            jump dhall_s9

        '"Excellent. Farewell."{#dhall_s4_r837}':
            # a13 # r837
            jump dhall_s11


# s5 # say838
label dhall_s5: # - # IF ~  Global("Dhall","GLOBAL",0)
    nr 'This scribe looks very old… his skin is wrinkled and has a slight trace of yellow, like old parchment. Charcoal-gray eyes lie within an angular face, and a large white beard flows down the front of his robes like a waterfall. His breathing is ragged and irregular, but even his occasional coughing does not slow the scratching of his quill pen.{#dhall_s5_1}'

    menu:
        '"Greetings."{#dhall_s5_r839}' if dhallLogic.r839_condition():
            # a14 # r839
            jump morte_s102  # EXTERN

        '"Greetings."{#dhall_s5_r835}' if dhallLogic.r835_condition():
            # a15 # r835
            jump dhall_s7

        '"Greetings."{#dhall_s5_r5058}' if dhallLogic.r5058_condition():
            # a16 # r5058
            jump dhall_s6

        'Leave the elderly scribe in peace.{#dhall_s5_r5060}':
            # a17 # r5060
            jump dhall_dispose


# s6 # say841
label dhall_s6: # from 5.2
    nr 'The figure„s gray eyes flicker as he glances up from his book. "I suspected it might be you who was responsible for the attacks in the Mortuary. This…" He coughs slightly, then draws a ragged breath. "This is no way for you to enter the next life."{#dhall_s6_1}'

    menu:
        '"I was just defending myself. I had some questions for you before I make myself scarce…"{#dhall_s6_r842}' if dhallLogic.r842_condition():
            # a18 # r842
            jump dhall_s9

        '"Sharing a little death with you corpse-worshippers isn„t much of a crime as far as I“m concerned. Now I had some questions for you…"{#dhall_s6_r843}' if dhallLogic.r843_condition():
            # a19 # r843
            $ dhallLogic.r843_action()
            jump dhall_s9

        '"Do you know me?"{#dhall_s6_r5062}' if dhallLogic.r5062_condition():
            # a20 # r5062
            jump dhall_s44

        '"Farewell."{#dhall_s6_r5063}':
            # a21 # r5063
            jump dhall_dispose


# s7 # say844
label dhall_s7: # from 5.1
    nr 'The scribe stops scratching in the book before him, then looks up. His eyes are like two nails driven into his skull. "So…" He sounds tired, as if he has repeated the same thing many times before. "You have awoken from your sleep and returned to your dream." He continues more respectfully. "Well met… again, Restless One."{#dhall_s7_1}'

    menu:
        '"„Restless One“? Do you know me?"{#dhall_s7_r845}':
            # a22 # r845
            jump dhall_s44


# s8 # say851
label dhall_s8: # from 22.0
    nr '"You must understand. Your existence is a blasphemy to them. Many of our faction would order you cremated… if they were aware of your affliction."{#dhall_s8_1}'

    menu:
        '"You„re a Dustman. But you don“t seem to be in favor of killing me. Why not?"{#dhall_s8_r940}':
            # a23 # r940
            jump dhall_s23

        '"Tell me more about the Mortuary."{#dhall_s8_r911}':
            # a24 # r911
            jump dhall_s32

        '"I had some other questions…"{#dhall_s8_r913}':
            # a25 # r913
            jump dhall_s9

        '"I„ve heard enough. Farewell, Dhall."{#dhall_s8_r6038}':
            # a26 # r6038
            jump dhall_s11


# s9 # say852
label dhall_s9: # from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
    nr '"Very well. What did you wish to know?"{#dhall_s9_1}'

    menu:
        '"Did you know there„s someone disguised as a zombie in the eastern chambers?"{#dhall_s9_r854}' if dhallLogic.r854_condition():
            # a27 # r854
            jump dhall_s3

        '"What is this place?"{#dhall_s9_r857}':
            # a28 # r857
            jump dhall_s10

        '"How did I get here?"{#dhall_s9_r855}':
            # a29 # r855
            jump dhall_s15

        '"Can you tell me how to get out of here?"{#dhall_s9_r858}' if dhallLogic.r858_condition():
            # a30 # r858
            jump dhall_s13

        '"Do you know who I am?"{#dhall_s9_r5069}':
            # a31 # r5069
            $ dhallLogic.j39460_s9_r5069_action()
            jump dhall_s21

        '"What do you do here?"{#dhall_s9_r5748}':
            # a32 # r5748
            jump dhall_s25

        '"You sound ill. Are you not well?"{#dhall_s9_r6065}':
            # a33 # r6065
            jump dhall_s26

        '"Nothing… farewell, Dhall."{#dhall_s9_r41663}':
            # a34 # r41663
            jump dhall_s11


# s10 # say859
label dhall_s10: # from 9.1
    nr '"You are in the Mortuary, Restless One. Again you have… come…" Before he can finish, Dhall breaks into a fit of coughing. After a moment, he calms himself and his breathing resumes its ragged wheeze. "…this is the waiting room for those about to depart the shadow of this life."{#dhall_s10_1}'

    menu:
        '"Tell me about the Mortuary."{#dhall_s10_r861}':
            # a35 # r861
            jump dhall_s32

        '"*Restless One?*"{#dhall_s10_r860}':
            # a36 # r860
            jump dhall_s38

        '"Shadow of this life?"{#dhall_s10_r862}':
            # a37 # r862
            jump dhall_s33

        '"Again…? I„ve been here more than once?"{#dhall_s10_r863}':
            # a38 # r863
            jump dhall_s14

        '"How did I get here?"{#dhall_s10_r864}':
            # a39 # r864
            jump dhall_s15

        '"I had some other questions…"{#dhall_s10_r865}':
            # a40 # r865
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s10_r866}':
            # a41 # r866
            jump dhall_s11


# s11 # say867
label dhall_s11: # from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
    nr 'As you turn to leave, Dhall speaks. "Know this: I do not envy you, Restless One. To be reborn as you would be a curse that I could not bear. You must come to terms with it. At some point, your path will return you here…" Dhall coughs, the sound rattling in his throat. "It is the way of all things flesh and bone."{#dhall_s11_1}'

    menu:
        '"Then perhaps we will meet again, Dhall."{#dhall_s11_r41564}':
            # a42 # r41564
            jump dhall_dispose


# s12 # say868
label dhall_s12: # from 2.3 2.4 42.2 42.3 43.1 43.2
    nr '"Doubtless there are, but I know not their names, nor where they lie. One such as you has left a path many have walked, and few have survived." Dhall gestures around you. "All dead come here. Some must have traveled with you once."{#dhall_s12_1}'

    menu:
        '"Where is this woman you mentioned?"{#dhall_s12_r870}' if dhallLogic.r870_condition():
            # a43 # r870
            jump dhall_s42

        '"I find no fault with your reasoning. I had some other questions…"{#dhall_s12_r871}':
            # a44 # r871
            jump dhall_s9

        '"I will look for them, then. Mayhap they can spark my memory. Farewell."{#dhall_s12_r872}':
            # a45 # r872
            jump dhall_s11


# s13 # say875
label dhall_s13: # from 9.3
    nr '"Hmmm… the front gate is the most obvious exit, but they will not let anyone other than Dustmen pass…" Dhall breaks into a ragged cough, then continues. "…one of the guides by the front gate has a key to it, but it is unlikely he will open it for you unless you are extremely persuasive."{#dhall_s13_1}'

    menu:
        '"I see. I had some other questions…"{#dhall_s13_r876}':
            # a46 # r876
            jump dhall_s9

        '"Farewell then, Dhall."{#dhall_s13_r877}':
            # a47 # r877
            jump dhall_dispose


# s14 # say878
label dhall_s14: # from 10.3
    nr '"Yes, *again.* You have been brought here many times before, Restless One. I had hoped that this time would be your last, considering the wounds you had sustained." He sighs. "When will you give up your passions and leave this shadow of life?"{#dhall_s14_1}'

    menu:
        '"*Restless One?*"{#dhall_s14_r880}':
            # a48 # r880
            jump dhall_s38

        '"Wounds?"{#dhall_s14_r881}':
            # a49 # r881
            jump dhall_s34

        '"Shadow of life?"{#dhall_s14_r883}':
            # a50 # r883
            jump dhall_s33

        '"Tell me more about the Mortuary."{#dhall_s14_r879}':
            # a51 # r879
            jump dhall_s32

        '"I had some other questions…"{#dhall_s14_r5751}':
            # a52 # r5751
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s14_r5752}':
            # a53 # r5752
            jump dhall_s11


# s15 # say885
label dhall_s15: # from 9.2 10.4 32.5
    nr 'Dhall snorts in contempt, as if he finds the memory repugnant. "Your moldy chariot ferried you to the Mortuary, Restless One. You would think you were royalty based on the number of loyal subjects that lay stinking and festering upon the cart that carried you."{#dhall_s15_1}'

    menu:
        '"I arrived here on a cart?"{#dhall_s15_r886}':
            # a54 # r886
            $ dhallLogic.j39463_s15_r886_action()
            jump dhall_s16

        '"Tell me more about the Mortuary."{#dhall_s15_r887}':
            # a55 # r887
            jump dhall_s32

        '"I had some other questions…"{#dhall_s15_r888}':
            # a56 # r888
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s15_r889}':
            # a57 # r889
            jump dhall_s11


# s16 # say890
label dhall_s16: # from 15.0
    nr '"Yes… your body was somewhere in the middle of the heap, sharing its fluids with the rest of the mountain of corpses." Dhall breaks into another violent fit of coughing, finally catching his breath minutes later. "Your „seneschal“ Pharod was, as always, pleased to accept a few moldy coppers to dump the lot of you at the Mortuary gate."{#dhall_s16_1}'

    menu:
        '"Who is this Pharod?"{#dhall_s16_r891}' if dhallLogic.r891_condition():
            # a58 # r891
            jump dhall_s17

        '"Doesn„t sound like you like Pharod much."{#dhall_s16_r892}' if dhallLogic.r892_condition():
            # a59 # r892
            jump dhall_s35

        '"Tell me more about the Mortuary."{#dhall_s16_r893}':
            # a60 # r893
            jump dhall_s32

        '"I had some other questions…"{#dhall_s16_r894}':
            # a61 # r894
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s16_r5753}':
            # a62 # r5753
            jump dhall_s11


# s17 # say895
label dhall_s17: # from 16.0
    nr '"He is a… collector of the dead." Dhall draws a ragged breath, then continues. "We have such people in our city that scavenge the bodies of those that have walked the path of True Death and bring them to us so that they may be interred properly."{#dhall_s17_1}'

    menu:
        '"Where can I find this „Pharod“?"{#dhall_s17_r897}':
            # a63 # r897
            jump dhall_s18

        '"Doesn„t sound like you like Pharod much."{#dhall_s17_r898}' if dhallLogic.r898_condition():
            # a64 # r898
            jump dhall_s35

        '"Tell me more about the Mortuary."{#dhall_s17_r899}':
            # a65 # r899
            jump dhall_s32

        '"I see. I had some other questions…"{#dhall_s17_r5754}':
            # a66 # r5754
            jump dhall_s9

        '"I will go seek out this Pharod then. Farewell, Dhall."{#dhall_s17_r6031}':
            # a67 # r6031
            jump dhall_s19


# s18 # say900
label dhall_s18: # from 17.0 29.1 31.0 35.1 36.1
    nr '"If events persist as they have, Restless One, you have a much greater chance of Pharod finding you and bringing you to us again before you find whatever ooze puddle he wallows in this time."{#dhall_s18_1}'

    menu:
        '"Nevertheless, I must find him."{#dhall_s18_r902}':
            # a68 # r902
            jump dhall_s19

        '"Tell me more about the Mortuary."{#dhall_s18_r903}':
            # a69 # r903
            jump dhall_s32

        '"I see. I had some other questions…"{#dhall_s18_r904}':
            # a70 # r904
            jump dhall_s9

        '"I have a feeling our paths will cross. Farewell, Dhall."{#dhall_s18_r5755}':
            # a71 # r5755
            jump dhall_s19


# s19 # say901
label dhall_s19: # from 17.4 18.0 18.3 29.3 31.2
    nr 'A slight warning creeps into Dhall„s tone. "Do not seek out Pharod, Restless One. I am certain that it will simply come full circle again, with you none the wiser and Pharod a few coppers richer. Accept death, Restless One. Do not perpetuate your circle of misery."{#dhall_s19_1}'

    menu:
        '"I *have* to find him. Do you know where he is?"{#dhall_s19_r906}':
            # a72 # r906
            $ dhallLogic.j39464_s19_r906_action()
            jump dhall_s20

        '"Tell me more about the Mortuary."{#dhall_s19_r905}':
            # a73 # r905
            jump dhall_s32

        '"I had some other questions…"{#dhall_s19_r907}':
            # a74 # r907
            jump dhall_s9

        '"I can speak with you no longer. Farewell, Dhall."{#dhall_s19_r5756}':
            # a75 # r5756
            jump dhall_s11


# s20 # say908
label dhall_s20: # from 19.0
    nr 'Dhall is silent for a moment. When he finally speaks, he seems to do so reluctantly. "I do not know under which gutterstone Pharod lairs at the moment, but I imagine that he can be found somewhere beyond the Mortuary gates, in the Hive. Perhaps someone there will know where you can find him."{#dhall_s20_1}'

    menu:
        '"Doesn„t sound like you like Pharod much."{#dhall_s20_r910}' if dhallLogic.r910_condition():
            # a76 # r910
            jump dhall_s35

        '"Can you tell me more about the Mortuary?"{#dhall_s20_r909}':
            # a77 # r909
            jump dhall_s32

        '"Thank you. I had some other questions…"{#dhall_s20_r5757}':
            # a78 # r5757
            jump dhall_s9

        '"I will go there and ask around then. Farewell."{#dhall_s20_r6030}':
            # a79 # r6030
            jump dhall_s11


# s21 # say914
label dhall_s21: # from 9.4
    nr '"I know scant little of you, Restless One. I know little more of those that have journeyed with you and who now lie in our keeping." Dhall sighs. "I ask that you no longer ask others to join with you, Restless One - where you walk, so walks misery. Let your burden be your own."{#dhall_s21_1}'

    menu:
        '"There are others who have journeyed with me? And they are here?"{#dhall_s21_r921}':
            # a80 # r921
            $ dhallLogic.j39461_s21_r921_action()
            jump dhall_s2

        '"I had some other questions…"{#dhall_s21_r922}':
            # a81 # r922
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s21_r923}':
            # a82 # r923
            jump dhall_s11


# s22 # say915
label dhall_s22: # from 47.0
    nr 'Dhall sighs. "It is said there are souls who can never attain the True Death. Death has forsaken them, and their names shall never be penned in the dead-book. To awake from death as you have done… suggests you are one of these souls. Your existence is unacceptable to our faction."{#dhall_s22_1}'

    menu:
        '"„Unacceptable“? That doesn„t sound like it leaves me in a good position."{#dhall_s22_r917}':
            # a83 # r917
            jump dhall_s8

        '"I see. Tell me more about the Mortuary."{#dhall_s22_r918}':
            # a84 # r918
            jump dhall_s32

        '"I had some other questions…"{#dhall_s22_r919}':
            # a85 # r919
            jump dhall_s9

        '"I think I„ve heard enough. Farewell, Dhall."{#dhall_s22_r920}':
            # a86 # r920
            jump dhall_s11


# s23 # say924
label dhall_s23: # from 8.0
    nr '"Because forcing our beliefs upon you is not just. You must give up this shadow of life on your own, not because we force you to." Dhall looks about to break into another coughing jag, but he manages to hold it in with some effort. "As long as I remain at my post, I will protect your right to search for your own truth."{#dhall_s23_1}'

    menu:
        '"What is your post?"{#dhall_s23_r927}':
            # a87 # r927
            jump dhall_s25

        '"Tell me more about the Mortuary."{#dhall_s23_r928}':
            # a88 # r928
            jump dhall_s32

        '"Very well. I had some other questions…"{#dhall_s23_r925}':
            # a89 # r925
            jump dhall_s9

        '"I„ve heard enough. Farewell, Dhall."{#dhall_s23_r6039}':
            # a90 # r6039
            jump dhall_s11


# s24 # say929
label dhall_s24: # from 25.0
    nr '"I am the one that catalogues the shells that come to our halls, Restless One." Dhall breaks into a fit of coughing, then steadies himself. "Only I see the faces of those that lie upon our slabs. The dark of your existence lies safe with me."{#dhall_s24_1}'

    menu:
        '"Tell me more about the Mortuary."{#dhall_s24_r1305}':
            # a91 # r1305
            jump dhall_s32

        '"I had some other questions…"{#dhall_s24_r6041}':
            # a92 # r6041
            jump dhall_s9

        '"It seems I owe you a favor. Farewell, Dhall."{#dhall_s24_r6042}':
            # a93 # r6042
            jump dhall_s11


# s25 # say930
label dhall_s25: # from 9.5 23.0
    nr '"I am a scribe, a cataloger of all the shells that come to the Mortuary." Dhall coughs again, then takes a deep breath. "As long as the stream of corpses flows through the Mortuary, I shall remain at my post."{#dhall_s25_1}'

    menu:
        '"You say that I have been here more than once. How is it that the Dustmen do not recognize me?"{#dhall_s25_r931}' if dhallLogic.r931_condition():
            # a94 # r931
            $ dhallLogic.j39462_s25_r931_action()
            jump dhall_s24

        '"Tell me more about the Mortuary."{#dhall_s25_r932}':
            # a95 # r932
            jump dhall_s32

        '"I see. I had some other questions…"{#dhall_s25_r933}':
            # a96 # r933
            jump dhall_s9

        '"Very well. Farewell, Dhall."{#dhall_s25_r6040}':
            # a97 # r6040
            jump dhall_s11


# s26 # say934
label dhall_s26: # from 9.6
    nr '"I am close now to the True Death, Restless One. It will not be long before I pass beyond the Eternal Boundary and find the peace I have been seeking. I tire of this mortal sphere…" Dhall gives a ragged sigh. "The planes hold no more wonders for one such as I."{#dhall_s26_1}'

    menu:
        '"The Eternal Boundary?"{#dhall_s26_r935}':
            # a98 # r935
            jump dhall_s41

        '"Are you certain? There might be some way I could help you."{#dhall_s26_r936}':
            # a99 # r936
            $ dhallLogic.r936_action()
            jump dhall_s27

        '"I had some other questions…"{#dhall_s26_r937}':
            # a100 # r937
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s26_r960}':
            # a101 # r960
            jump dhall_s11


# s27 # say938
label dhall_s27: # from 26.1
    nr '"I do not wish to live forever nor live again, Restless One. I could not bear it."{#dhall_s27_1}'

    menu:
        '"Very well. I had some other questions…"{#dhall_s27_r1303}':
            # a102 # r1303
            jump dhall_s9

        '"So be it. Farewell, Dhall."{#dhall_s27_r1304}':
            # a103 # r1304
            jump dhall_s11


# s28 # say939
label dhall_s28: # from 2.2 42.1
    nr '"She *spoke* to you?" Dhall„s voice drops to a whisper. "Are the *fevers* upon you, Restless One? She has reached the True Death and passed well beyond your reach."{#dhall_s28_1}'

    menu:
        '"She spoke to me, Dhall. Her spirit resides here."{#dhall_s28_r981}':
            # a104 # r981
            jump dhall_s30

        '"Perhaps I imagined it, then. I had some other questions…"{#dhall_s28_r982}':
            # a105 # r982
            jump dhall_s9

        '"I am not certain that she has reached the True Death. Farewell, Dhall."{#dhall_s28_r873}':
            # a106 # r873
            jump dhall_s11


# s29 # say941
label dhall_s29: # from 36.0
    nr 'Dhall pauses, considering. "Most likely. Are you missing anything… especially anything of value?" His voice dips as he frowns. "Not that Pharod would take exception to anything that wasn„t physically grafted to your body, and sometimes even that“s not enough to give his greedy mind pause."{#dhall_s29_1}'

    menu:
        '"I am missing a journal."{#dhall_s29_r942}' if dhallLogic.r942_condition():
            # a107 # r942
            jump dhall_s31

        '"Hmmm. Do you know where I can find Pharod?"{#dhall_s29_r943}' if dhallLogic.r943_condition():
            # a108 # r943
            jump dhall_s18

        '"I had some other questions…"{#dhall_s29_r944}':
            # a109 # r944
            jump dhall_s9

        '"Maybe I should speak to Pharod. Farewell, Dhall."{#dhall_s29_r6026}' if dhallLogic.r6026_condition():
            # a110 # r6026
            jump dhall_s19

        '"I see. Farewell, Dhall."{#dhall_s29_r874}' if dhallLogic.r874_condition():
            # a111 # r874
            jump dhall_s11


# s30 # say945
label dhall_s30: # from 28.0
    nr 'Dhall draws a semicircle in the air front of him with a finger. "This is an ill omen, Restless One. I pray you dreamed the conversation… yet I fear you did not."{#dhall_s30_1}'

    menu:
        '"Perhaps I imagined it. I had some other questions."{#dhall_s30_r946}':
            # a112 # r946
            jump dhall_s9

        '"Perhaps we will speak more of it later. Farewell, Dhall."{#dhall_s30_r947}':
            # a113 # r947
            jump dhall_s11


# s31 # say850
label dhall_s31: # from 29.0
    nr '"A journal? If it was of any value, then it is likely it lies in Pharod„s hands."{#dhall_s31_1}'

    menu:
        '"Where can I find this Pharod?"{#dhall_s31_r948}' if dhallLogic.r948_condition():
            # a114 # r948
            jump dhall_s18

        '"I see. I had some other questions…"{#dhall_s31_r949}':
            # a115 # r949
            jump dhall_s9

        '"Then I shall seek him out. Farewell, Dhall."{#dhall_s31_r6027}' if dhallLogic.r6027_condition():
            # a116 # r6027
            jump dhall_s19

        '"I see. Farewell, Dhall."{#dhall_s31_r6066}' if dhallLogic.r6066_condition():
            # a117 # r6066
            jump dhall_s11


# s32 # say950
label dhall_s32: # from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
    nr '"This is where the dead are brought to be interred or cremated. It is our responsibility as Dustmen to care for the dead, those who have left this shadow of life and walk the path to True Death." Dhall„s voice drops in concern. "Your wounds must have exacted a heavy toll if you do not recognize this place. It is almost your home."{#dhall_s32_1}'

    menu:
        '"Shadow of life?"{#dhall_s32_r951}':
            # a118 # r951
            jump dhall_s33

        '"True Death?"{#dhall_s32_r953}':
            # a119 # r953
            $ dhallLogic.r953_action()
            jump dhall_s48

        '"Dustmen?"{#dhall_s32_r954}':
            # a120 # r954
            jump dhall_s47

        '"Sigil?"{#dhall_s32_r955}':
            # a121 # r955
            jump dhall_s37

        '"Wounds?"{#dhall_s32_r956}':
            # a122 # r956
            jump dhall_s34

        '"How did I get here?"{#dhall_s32_r846}':
            # a123 # r846
            jump dhall_s15

        '"I had some other questions…"{#dhall_s32_r5735}':
            # a124 # r5735
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s32_r6062}':
            # a125 # r6062
            jump dhall_s11


# s33 # say957
label dhall_s33: # from 10.2 14.2 32.0 41.0 47.2 49.0
    nr '"Yes, a shadow. You see, Restless One, this life… it is not real. Your life, my life, they are shadows, flickerings of what life once was. This „life“ is where we end up *after* we die. And here we remain… trapped. Caged. Until we can achieve the True Death."{#dhall_s33_1}'

    menu:
        '"True Death?"{#dhall_s33_r958}':
            # a126 # r958
            $ dhallLogic.r958_action()
            jump dhall_s48

        '"What makes you think this life isn„t real?"{#dhall_s33_r959}':
            # a127 # r959
            jump dhall_s50

        '"Tell me some more about the Mortuary."{#dhall_s33_r5736}':
            # a128 # r5736
            jump dhall_s32

        '"I see. I had some other questions…"{#dhall_s33_r5737}':
            # a129 # r5737
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s33_r5738}':
            # a130 # r5738
            jump dhall_s11


# s34 # say961
label dhall_s34: # from 14.1 32.4
    nr '"Yes, the wounds that decorate your body… they look as if they would have sent a lesser man along the path of the True Death, yet it seems as if many of them have healed already." Dhall coughs violently for a moment, then steadies himself. "But those are only the surface wounds."{#dhall_s34_1}'

    menu:
        '"Only surface wounds? What do you mean?"{#dhall_s34_r1301}':
            # a131 # r1301
            $ dhallLogic.j39470_s34_r1301_action()
            jump dhall_s53

        '"Tell me more about the Mortuary."{#dhall_s34_r1302}':
            # a132 # r1302
            jump dhall_s32

        '"I had some other questions…"{#dhall_s34_r5746}':
            # a133 # r5746
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s34_r5747}':
            # a134 # r5747
            jump dhall_s11


# s35 # say962
label dhall_s35: # from 16.1 17.1 20.0
    nr '"There are some I respect, Restless One." Dhall takes a ragged breath and steadies himself. "Pharod is not one of them. He wears his ill repute like a badge of honor and takes liberties with the possessions of the dead. He is a knight of the post, cross-trading filth of the lowest sort."{#dhall_s35_1}'

    menu:
        '"„Knight of the post“?"{#dhall_s35_r963}':
            # a135 # r963
            jump dhall_s36

        '"Do you know where I can find Pharod?"{#dhall_s35_r964}' if dhallLogic.r964_condition():
            # a136 # r964
            jump dhall_s18

        '"I see. I had some other questions…"{#dhall_s35_r965}':
            # a137 # r965
            jump dhall_s9

        '"Encouraging. Farewell, Dhall."{#dhall_s35_r6028}':
            # a138 # r6028
            jump dhall_s11


# s36 # say966
label dhall_s36: # from 35.0
    nr '"A knight of the post…" Dhall coughs. "…a thief. All Pharod brings to our walls come stripped of a little less of their dignity than they possessed in life. Pharod takes whatever he may pry from their stiffening fingers."{#dhall_s36_1}'

    menu:
        '"Did this Pharod take anything from *me?*"{#dhall_s36_r967}':
            # a139 # r967
            jump dhall_s29

        '"Do you know where I can find Pharod?"{#dhall_s36_r968}' if dhallLogic.r968_condition():
            # a140 # r968
            jump dhall_s18

        '"I see. I had some other questions…"{#dhall_s36_r969}':
            # a141 # r969
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s36_r6029}':
            # a142 # r6029
            jump dhall_s11


# s37 # say970
label dhall_s37: # from 32.3
    nr '"Sigil is our fair city, Restless One."{#dhall_s37_1}'

    menu:
        '"Tell me some more about the Mortuary."{#dhall_s37_r971}':
            # a143 # r971
            jump dhall_s32

        '"I see. I had some other questions…"{#dhall_s37_r972}':
            # a144 # r972
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s37_r5758}':
            # a145 # r5758
            jump dhall_s11


# s38 # say973
label dhall_s38: # from 10.1 14.0
    nr '"Restless is as good a term as any…" Dhall draws a ragged breath. "Something keeps you here, does it not? Something that must be resolved, some passion that must be quenched before you can reach the True Death?"{#dhall_s38_1}'

    menu:
        '"True Death?"{#dhall_s38_r974}':
            # a146 # r974
            $ dhallLogic.r974_action()
            jump dhall_s48

        '"Tell me some more about the Mortuary."{#dhall_s38_r975}':
            # a147 # r975
            jump dhall_s32

        '"I had some other questions…"{#dhall_s38_r5749}':
            # a148 # r5749
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s38_r5750}':
            # a149 # r5750
            jump dhall_s11


# s39 # say884
label dhall_s39: # -
    nr '"You will do what you have always done, Restless One. Seek out that crusty jink-smacking fool, Wormhair, and ask him for your possessions back. Then you will resume your pointless quest, attempt to complete pointless tasks, gather pointless items and then you will be struck down and returned to us. Save yourself time and speak with me now so that we do not have to resume this conversation again when your memories are lost to you again."{#dhall_s39_1}'

    menu:
        '"I had some other questions…"{#dhall_s39_r976}':
            # a150 # r976
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s39_r977}':
            # a151 # r977
            jump dhall_dispose


# s40 # say978
label dhall_s40: # - # IF ~  Global("Dhall","GLOBAL",1)
    nr 'Dhall glances up as you approach. "So. You have returned…" Dhall takes a rasping breath, then breaks into a violent coughing spell. After a moment, it subsides, and he returns to his raspy breathing. "… greetings again, Restless One."{#dhall_s40_1}'

    menu:
        '"I had some more questions for you, Dhall."{#dhall_s40_r979}':
            # a152 # r979
            jump dhall_s9

        '"Never mind. Farewell."{#dhall_s40_r980}':
            # a153 # r980
            jump dhall_dispose


# s41 # say983
label dhall_s41: # from 26.0 52.0
    nr '"The boundary between the shadow of this life and the True Death."{#dhall_s41_1}'

    menu:
        '"Shadow of this life?"{#dhall_s41_r984}':
            # a154 # r984
            jump dhall_s33

        '"True Death?"{#dhall_s41_r985}':
            # a155 # r985
            $ dhallLogic.r985_action()
            jump dhall_s48

        '"Tell me more about the Mortuary."{#dhall_s41_r5739}':
            # a156 # r5739
            jump dhall_s32

        '"I see. I had some other questions…"{#dhall_s41_r5740}':
            # a157 # r5740
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s41_r5741}':
            # a158 # r5741
            jump dhall_s11


# s42 # say5075
label dhall_s42: # from 2.0 12.0 43.0
    nr '"The northwest memorial hall on the floor below us. Check the biers there… her name should be on one of the memorial plaques. Mayhap that will revive your memory."{#dhall_s42_1}'

    menu:
        '"I don„t know. I don“t recall ever traveling with a woman."{#dhall_s42_r5076}' if dhallLogic.r5076_condition():
            # a159 # r5076
            jump dhall_s43

        '"Well, she claims to know me, but I can„t recall her."{#dhall_s42_r5077}' if dhallLogic.r5077_condition():
            # a160 # r5077
            jump dhall_s28

        '"You said there were others. Who else is here?"{#dhall_s42_r5078}' if dhallLogic.r5078_condition():
            # a161 # r5078
            jump dhall_s12

        '"You said there were others. Who else is here?"{#dhall_s42_r5079}' if dhallLogic.r5079_condition():
            # a162 # r5079
            jump dhall_s12

        '"Mayhap I will go find her. I had some other questions for you before I go…"{#dhall_s42_r6067}':
            # a163 # r6067
            jump dhall_s9

        '"I will go to the memorial hall below and see if I can find her body."{#dhall_s42_r6068}':
            # a164 # r6068
            jump dhall_s11


# s43 # say5080
label dhall_s43: # from 2.1 42.0
    nr 'Dhall makes no response to this. He simply stares at you in silence.{#dhall_s43_1}'

    menu:
        '"Where can I find her?"{#dhall_s43_r5081}' if dhallLogic.r5081_condition():
            # a165 # r5081
            jump dhall_s42

        '"Before, you said there were others interred here who journeyed with me. Where are they?"{#dhall_s43_r5082}' if dhallLogic.r5082_condition():
            # a166 # r5082
            jump dhall_s12

        '"Before, you said there were others interred here who journeyed with me. Where are they?"{#dhall_s43_r5083}' if dhallLogic.r5083_condition():
            # a167 # r5083
            jump dhall_s12

        '"I had some other questions for you…"{#dhall_s43_r6069}':
            # a168 # r6069
            jump dhall_s9

        '"Farewell, then."{#dhall_s43_r6070}':
            # a169 # r6070
            jump dhall_s11


# s44 # say840
label dhall_s44: # from 1.0 6.2 7.0
    nr '"Know you? I…" There is a trace of bitterness in the scribe„s voice as he speaks. "I have *never* known you, Restless One. No more than you have known yourself." He is silent for a moment. "For you have forgotten, have you not?"{#dhall_s44_1}'

    menu:
        '"Who *are* you?"{#dhall_s44_r1327}':
            # a170 # r1327
            $ dhallLogic.r1327_action()
            jump dhall_s45


# s45 # say5728
label dhall_s45: # from 44.0
    nr '"As always, the question. And the wrong question, as always." He bows slightly, but the movement suddenly sends him into a bout of coughing. "I…" He pauses for a moment, catches his breath. "I… am Dhall."{#dhall_s45_1}'

    menu:
        '"Perhaps you can answer some questions for me, Dhall…"{#dhall_s45_r5731}':
            # a171 # r5731
            $ dhallLogic.j39459_s45_r5731_action()
            jump dhall_s9

        '"I don„t have time for this. Farewell."{#dhall_s45_r5732}':
            # a172 # r5732
            $ dhallLogic.j39459_s45_r5732_action()
            jump dhall_s46


# s46 # say5730
label dhall_s46: # from 45.1
    nr '"Very well, Restless One." Dhall nods. "But I fear time is not your enemy in this matter." He picks up his quill again. "When you wish to speak further, I will be here."{#dhall_s46_1}'

    menu:
        '"I may return. Farewell."{#dhall_s46_r40005}':
            # a173 # r40005
            jump dhall_dispose


# s47 # say847
label dhall_s47: # from 32.2
    nr '"We Dustmen are a faction, a gathering of those of us that recognize the illusion of this life. We await the next life, and help others on their journey."{#dhall_s47_1}'

    menu:
        '"Perhaps you can explain why the Dustmen want me dead."{#dhall_s47_r6032}' if dhallLogic.r6032_condition():
            # a174 # r6032
            jump dhall_s22

        '"True Death?"{#dhall_s47_r6033}':
            # a175 # r6033
            $ dhallLogic.r6033_action()
            jump dhall_s48

        '"Shadow that is this life?"{#dhall_s47_r6034}':
            # a176 # r6034
            jump dhall_s33

        '"Tell me more about the Mortuary."{#dhall_s47_r6035}':
            # a177 # r6035
            jump dhall_s32

        '"I had some other questions for you…"{#dhall_s47_r6036}':
            # a178 # r6036
            jump dhall_s9

        '"Farewell, then."{#dhall_s47_r6037}':
            # a179 # r6037
            jump dhall_s11


# s48 # say848
label dhall_s48: # from 32.1 33.0 38.0 41.1 47.1
    nr '"True Death is non-existence. A state devoid of reason, of sensation, of passion." Dhall coughs, then gives a ragged breath. "A state of purity."{#dhall_s48_1}'

    menu:
        '"Sounds like oblivion. Why would anyone want that?"{#dhall_s48_r6043}':
            # a180 # r6043
            jump dhall_s49

        '"Oh. Can you tell me more about the Mortuary?"{#dhall_s48_r6044}':
            # a181 # r6044
            jump dhall_s32

        '"I… see. I had some other questions."{#dhall_s48_r6045}':
            # a182 # r6045
            jump dhall_s9

        '"I must take my leave. Farewell, Dhall."{#dhall_s48_r6046}':
            # a183 # r6046
            jump dhall_s11


# s49 # say849
label dhall_s49: # from 48.0
    nr '"Is it worse than remaining in this shadow of what life once was? I think not."{#dhall_s49_1}'

    menu:
        '"Shadow of life?"{#dhall_s49_r6047}':
            # a184 # r6047
            jump dhall_s33

        '"Tell me more about the Mortuary."{#dhall_s49_r6048}':
            # a185 # r6048
            jump dhall_s32

        '"I… see. I had some other questions."{#dhall_s49_r6049}':
            # a186 # r6049
            jump dhall_s9

        '"I must take my leave. Farewell, Dhall."{#dhall_s49_r6050}':
            # a187 # r6050
            jump dhall_s11


# s50 # say853
label dhall_s50: # from 33.1
    nr '"What makes you think this life *is* real? Look inside yourself. Do you not feel something lacking?" Dhall shakes his head. "This is a purgatory. There is only sorrow here. Misery. Torment. These are not the elements that make up „life.“ They are part of the cage that traps us in this shadow."{#dhall_s50_1}'

    menu:
        '"I think your fatalism has gotten the better of you. Those elements are part of life, but not the whole of it."{#dhall_s50_r6051}':
            # a188 # r6051
            $ dhallLogic.r6051_action()
            jump dhall_s51

        '"Cage us? How?"{#dhall_s50_r6052}':
            # a189 # r6052
            jump dhall_s51

        '"Enough of your philosophy. What does all this talk have to do with me waking up here?"{#dhall_s50_r6053}':
            # a190 # r6053
            $ dhallLogic.r6053_action()
            jump dhall_s51


# s51 # say5733
label dhall_s51: # from 50.0 50.1 50.2
    nr 'Dhall shakes his head. "Passions carry weight. They anchor many to this shadow of life. As long as one clings to emotion, they will be continually reborn into this „life,“ forever suffering, never knowing the purity of True Death."{#dhall_s51_1}'

    menu:
        '"I… see. How does one escape the cycle of rebirth and achieve this… True Death?"{#dhall_s51_r6054}':
            # a191 # r6054
            jump dhall_s52

        '"Tell me more about the Mortuary."{#dhall_s51_r6055}':
            # a192 # r6055
            jump dhall_s32

        '"I had some other questions…"{#dhall_s51_r6056}':
            # a193 # r6056
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s51_r6057}':
            # a194 # r6057
            jump dhall_s11


# s52 # say5734
label dhall_s52: # from 51.0
    nr '"Kill your passions. Strip yourself of the need for sensation. When you are truly cleansed, then the cycle of rebirth will end, and you achieve peace." Dhall sighs… it sounds like a death rattle in his throat. "Past these shells of ours, past the Eternal Boundary, lies the peace that all souls seek."{#dhall_s52_1}'

    menu:
        '"The Eternal Boundary?"{#dhall_s52_r6058}':
            # a195 # r6058
            jump dhall_s41

        '"Tell me more about the Mortuary."{#dhall_s52_r6059}':
            # a196 # r6059
            jump dhall_s32

        '"I had some other questions…"{#dhall_s52_r6060}':
            # a197 # r6060
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s52_r6061}':
            # a198 # r6061
            jump dhall_s11


# s53 # say5742
label dhall_s53: # from 34.0
    nr '"I speak of the wounds of the mind. You have forgotten much, have you not? Mayhap your true wounds run much deeper than the scars that decorate your surface…" Dhall coughs again. "…but that is something that only you would know for certain."{#dhall_s53_1}'

    menu:
        '"Tell me more about the Mortuary."{#dhall_s53_r5743}':
            # a199 # r5743
            jump dhall_s32

        '"I see. I had some other questions…"{#dhall_s53_r5744}':
            # a200 # r5744
            jump dhall_s9

        '"Farewell, Dhall."{#dhall_s53_r5745}':
            # a201 # r5745
            jump dhall_s11
