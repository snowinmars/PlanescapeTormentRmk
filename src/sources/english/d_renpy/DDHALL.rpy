init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dhall_logic import DhallLogic
    dhallLogic = DhallLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDHALL.DLG
# ###


# s0 # say822
label dhall_s0: # externs morte_s103
    nr 'Before Morte can finish his rant, the scribe begins coughing violently. After a moment or two, the coughing spell dies down, and the scribe„s breathing resumes its ragged wheeze.'

    jump morte_s104  # EXTERN


# s1 # say826
label dhall_s1: # externs morte_s104
    nr 'Before Morte can finish, the scribe„s gray eyes flicker to you. "The weight of years hangs heavy upon me, Restless One." He places down his quill. "…but I do not yet count deafness among my ailments."'

    menu:
        '"„Restless One“? Do you know me?"':
            # a0 # r827
            $ dhallLogic.r827_action()
            jump dhall_s44


# s2 # say829
label dhall_s2: # from 21.0
    nr '"Do you not know the woman„s corpse interred in the memorial hall below? I had thought that she had traveled with you in the past…" Dhall looks like he is about to start coughing again, then catches his breath. "Am I mistaken?"'

    menu:
        '"Where is her body?"' if dhallLogic.r5070_condition():
            # a1 # r5070
            jump dhall_s42

        '"I know nothing about her."' if dhallLogic.r5071_condition():
            # a2 # r5071
            jump dhall_s43

        '"She claims to know me, but I can„t recall her."' if dhallLogic.r5072_condition():
            # a3 # r5072
            jump dhall_s28

        '"You said there were others. Who else is here?"' if dhallLogic.r5073_condition():
            # a4 # r5073
            jump dhall_s12

        '"You said there were others. Who else is here?"' if dhallLogic.r5074_condition():
            # a5 # r5074
            jump dhall_s12

        '"Mayhap. I had some other questions for you…"':
            # a6 # r6063
            jump dhall_s9

        '"I will go to the memorial hall below and see if I can find her body."' if dhallLogic.r6064_condition():
            # a7 # r6064
            jump dhall_s11

        '"Perhaps not. Farewell."' if dhallLogic.r13288_condition():
            # a8 # r13288
            jump dhall_s11


# s3 # say832
label dhall_s3: # from 9.0
    nr 'Dhall stares at you. "Are you certain?"'

    menu:
        '"Yes. It„s a good disguise."' if dhallLogic.r830_condition():
            # a9 # r830
            $ dhallLogic.r830_action()
            jump dhall_s4

        '"Yes. It„s a good disguise."' if dhallLogic.r831_condition():
            # a10 # r831
            $ dhallLogic.r831_action()
            jump dhall_s4

        '"No, on second thought, perhaps I imagined it. Look, I had some other questions…"':
            # a11 # r834
            jump dhall_s9


# s4 # say833
label dhall_s4: # from 3.0 3.1
    nr '"I…" Dhall breaks into another fit of coughing. After a minute or two, he catches his breath enough to speak. "I… shall inform the guards at once."'

    menu:
        '"Thank you. I had some other questions…"':
            # a12 # r836
            jump dhall_s9

        '"Excellent. Farewell."':
            # a13 # r837
            jump dhall_s11


# s5 # say838
label dhall_s5: # - # IF ~  Global("Dhall","GLOBAL",0)
    nr 'This scribe looks very old… his skin is wrinkled and has a slight trace of yellow, like old parchment. Charcoal-gray eyes lie within an angular face, and a large white beard flows down the front of his robes like a waterfall. His breathing is ragged and irregular, but even his occasional coughing does not slow the scratching of his quill pen.'

    menu:
        '"Greetings."' if dhallLogic.r839_condition():
            # a14 # r839
            jump morte_s102  # EXTERN

        '"Greetings."' if dhallLogic.r835_condition():
            # a15 # r835
            jump dhall_s7

        '"Greetings."' if dhallLogic.r5058_condition():
            # a16 # r5058
            jump dhall_s6

        'Leave the elderly scribe in peace.':
            # a17 # r5060
            jump dhall_dispose


# s6 # say841
label dhall_s6: # from 5.2
    nr 'The figure„s gray eyes flicker as he glances up from his book. "I suspected it might be you who was responsible for the attacks in the Mortuary. This…" He coughs slightly, then draws a ragged breath. "This is no way for you to enter the next life."'

    menu:
        '"I was just defending myself. I had some questions for you before I make myself scarce…"' if dhallLogic.r842_condition():
            # a18 # r842
            jump dhall_s9

        '"Sharing a little death with you corpse-worshippers isn„t much of a crime as far as I“m concerned. Now I had some questions for you…"' if dhallLogic.r843_condition():
            # a19 # r843
            $ dhallLogic.r843_action()
            jump dhall_s9

        '"Do you know me?"' if dhallLogic.r5062_condition():
            # a20 # r5062
            jump dhall_s44

        '"Farewell."':
            # a21 # r5063
            jump dhall_dispose


# s7 # say844
label dhall_s7: # from 5.1
    nr 'The scribe stops scratching in the book before him, then looks up. His eyes are like two nails driven into his skull. "So…" He sounds tired, as if he has repeated the same thing many times before. "You have awoken from your sleep and returned to your dream." He continues more respectfully. "Well met… again, Restless One."'

    menu:
        '"„Restless One“? Do you know me?"':
            # a22 # r845
            jump dhall_s44


# s8 # say851
label dhall_s8: # from 22.0
    nr '"You must understand. Your existence is a blasphemy to them. Many of our faction would order you cremated… if they were aware of your affliction."'

    menu:
        '"You„re a Dustman. But you don“t seem to be in favor of killing me. Why not?"':
            # a23 # r940
            jump dhall_s23

        '"Tell me more about the Mortuary."':
            # a24 # r911
            jump dhall_s32

        '"I had some other questions…"':
            # a25 # r913
            jump dhall_s9

        '"I„ve heard enough. Farewell, Dhall."':
            # a26 # r6038
            jump dhall_s11


# s9 # say852
label dhall_s9: # from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
    nr '"Very well. What did you wish to know?"'

    menu:
        '"Did you know there„s someone disguised as a zombie in the eastern chambers?"' if dhallLogic.r854_condition():
            # a27 # r854
            jump dhall_s3

        '"What is this place?"':
            # a28 # r857
            jump dhall_s10

        '"How did I get here?"':
            # a29 # r855
            jump dhall_s15

        '"Can you tell me how to get out of here?"' if dhallLogic.r858_condition():
            # a30 # r858
            jump dhall_s13

        '"Do you know who I am?"':
            # a31 # r5069
            $ dhallLogic.j39460_s9_r5069_action()
            jump dhall_s21

        '"What do you do here?"':
            # a32 # r5748
            jump dhall_s25

        '"You sound ill. Are you not well?"':
            # a33 # r6065
            jump dhall_s26

        '"Nothing… farewell, Dhall."':
            # a34 # r41663
            jump dhall_s11


# s10 # say859
label dhall_s10: # from 9.1
    nr '"You are in the Mortuary, Restless One. Again you have… come…" Before he can finish, Dhall breaks into a fit of coughing. After a moment, he calms himself and his breathing resumes its ragged wheeze. "…this is the waiting room for those about to depart the shadow of this life."'

    menu:
        '"Tell me about the Mortuary."':
            # a35 # r861
            jump dhall_s32

        '"*Restless One?*"':
            # a36 # r860
            jump dhall_s38

        '"Shadow of this life?"':
            # a37 # r862
            jump dhall_s33

        '"Again…? I„ve been here more than once?"':
            # a38 # r863
            jump dhall_s14

        '"How did I get here?"':
            # a39 # r864
            jump dhall_s15

        '"I had some other questions…"':
            # a40 # r865
            jump dhall_s9

        '"Farewell, Dhall."':
            # a41 # r866
            jump dhall_s11


# s11 # say867
label dhall_s11: # from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
    nr 'As you turn to leave, Dhall speaks. "Know this: I do not envy you, Restless One. To be reborn as you would be a curse that I could not bear. You must come to terms with it. At some point, your path will return you here…" Dhall coughs, the sound rattling in his throat. "It is the way of all things flesh and bone."'

    menu:
        '"Then perhaps we will meet again, Dhall."':
            # a42 # r41564
            jump dhall_dispose


# s12 # say868
label dhall_s12: # from 2.3 2.4 42.2 42.3 43.1 43.2
    nr '"Doubtless there are, but I know not their names, nor where they lie. One such as you has left a path many have walked, and few have survived." Dhall gestures around you. "All dead come here. Some must have traveled with you once."'

    menu:
        '"Where is this woman you mentioned?"' if dhallLogic.r870_condition():
            # a43 # r870
            jump dhall_s42

        '"I find no fault with your reasoning. I had some other questions…"':
            # a44 # r871
            jump dhall_s9

        '"I will look for them, then. Mayhap they can spark my memory. Farewell."':
            # a45 # r872
            jump dhall_s11


# s13 # say875
label dhall_s13: # from 9.3
    nr '"Hmmm… the front gate is the most obvious exit, but they will not let anyone other than Dustmen pass…" Dhall breaks into a ragged cough, then continues. "…one of the guides by the front gate has a key to it, but it is unlikely he will open it for you unless you are extremely persuasive."'

    menu:
        '"I see. I had some other questions…"':
            # a46 # r876
            jump dhall_s9

        '"Farewell then, Dhall."':
            # a47 # r877
            jump dhall_dispose


# s14 # say878
label dhall_s14: # from 10.3
    nr '"Yes, *again.* You have been brought here many times before, Restless One. I had hoped that this time would be your last, considering the wounds you had sustained." He sighs. "When will you give up your passions and leave this shadow of life?"'

    menu:
        '"*Restless One?*"':
            # a48 # r880
            jump dhall_s38

        '"Wounds?"':
            # a49 # r881
            jump dhall_s34

        '"Shadow of life?"':
            # a50 # r883
            jump dhall_s33

        '"Tell me more about the Mortuary."':
            # a51 # r879
            jump dhall_s32

        '"I had some other questions…"':
            # a52 # r5751
            jump dhall_s9

        '"Farewell, Dhall."':
            # a53 # r5752
            jump dhall_s11


# s15 # say885
label dhall_s15: # from 9.2 10.4 32.5
    nr 'Dhall snorts in contempt, as if he finds the memory repugnant. "Your moldy chariot ferried you to the Mortuary, Restless One. You would think you were royalty based on the number of loyal subjects that lay stinking and festering upon the cart that carried you."'

    menu:
        '"I arrived here on a cart?"':
            # a54 # r886
            $ dhallLogic.j39463_s15_r886_action()
            jump dhall_s16

        '"Tell me more about the Mortuary."':
            # a55 # r887
            jump dhall_s32

        '"I had some other questions…"':
            # a56 # r888
            jump dhall_s9

        '"Farewell, Dhall."':
            # a57 # r889
            jump dhall_s11


# s16 # say890
label dhall_s16: # from 15.0
    nr '"Yes… your body was somewhere in the middle of the heap, sharing its fluids with the rest of the mountain of corpses." Dhall breaks into another violent fit of coughing, finally catching his breath minutes later. "Your „seneschal“ Pharod was, as always, pleased to accept a few moldy coppers to dump the lot of you at the Mortuary gate."'

    menu:
        '"Who is this Pharod?"' if dhallLogic.r891_condition():
            # a58 # r891
            jump dhall_s17

        '"Doesn„t sound like you like Pharod much."' if dhallLogic.r892_condition():
            # a59 # r892
            jump dhall_s35

        '"Tell me more about the Mortuary."':
            # a60 # r893
            jump dhall_s32

        '"I had some other questions…"':
            # a61 # r894
            jump dhall_s9

        '"Farewell, Dhall."':
            # a62 # r5753
            jump dhall_s11


# s17 # say895
label dhall_s17: # from 16.0
    nr '"He is a… collector of the dead." Dhall draws a ragged breath, then continues. "We have such people in our city that scavenge the bodies of those that have walked the path of True Death and bring them to us so that they may be interred properly."'

    menu:
        '"Where can I find this „Pharod“?"':
            # a63 # r897
            jump dhall_s18

        '"Doesn„t sound like you like Pharod much."' if dhallLogic.r898_condition():
            # a64 # r898
            jump dhall_s35

        '"Tell me more about the Mortuary."':
            # a65 # r899
            jump dhall_s32

        '"I see. I had some other questions…"':
            # a66 # r5754
            jump dhall_s9

        '"I will go seek out this Pharod then. Farewell, Dhall."':
            # a67 # r6031
            jump dhall_s19


# s18 # say900
label dhall_s18: # from 17.0 29.1 31.0 35.1 36.1
    nr '"If events persist as they have, Restless One, you have a much greater chance of Pharod finding you and bringing you to us again before you find whatever ooze puddle he wallows in this time."'

    menu:
        '"Nevertheless, I must find him."':
            # a68 # r902
            jump dhall_s19

        '"Tell me more about the Mortuary."':
            # a69 # r903
            jump dhall_s32

        '"I see. I had some other questions…"':
            # a70 # r904
            jump dhall_s9

        '"I have a feeling our paths will cross. Farewell, Dhall."':
            # a71 # r5755
            jump dhall_s19


# s19 # say901
label dhall_s19: # from 17.4 18.0 18.3 29.3 31.2
    nr 'A slight warning creeps into Dhall„s tone. "Do not seek out Pharod, Restless One. I am certain that it will simply come full circle again, with you none the wiser and Pharod a few coppers richer. Accept death, Restless One. Do not perpetuate your circle of misery."'

    menu:
        '"I *have* to find him. Do you know where he is?"':
            # a72 # r906
            $ dhallLogic.j39464_s19_r906_action()
            jump dhall_s20

        '"Tell me more about the Mortuary."':
            # a73 # r905
            jump dhall_s32

        '"I had some other questions…"':
            # a74 # r907
            jump dhall_s9

        '"I can speak with you no longer. Farewell, Dhall."':
            # a75 # r5756
            jump dhall_s11


# s20 # say908
label dhall_s20: # from 19.0
    nr 'Dhall is silent for a moment. When he finally speaks, he seems to do so reluctantly. "I do not know under which gutterstone Pharod lairs at the moment, but I imagine that he can be found somewhere beyond the Mortuary gates, in the Hive. Perhaps someone there will know where you can find him."'

    menu:
        '"Doesn„t sound like you like Pharod much."' if dhallLogic.r910_condition():
            # a76 # r910
            jump dhall_s35

        '"Can you tell me more about the Mortuary?"':
            # a77 # r909
            jump dhall_s32

        '"Thank you. I had some other questions…"':
            # a78 # r5757
            jump dhall_s9

        '"I will go there and ask around then. Farewell."':
            # a79 # r6030
            jump dhall_s11


# s21 # say914
label dhall_s21: # from 9.4
    nr '"I know scant little of you, Restless One. I know little more of those that have journeyed with you and who now lie in our keeping." Dhall sighs. "I ask that you no longer ask others to join with you, Restless One - where you walk, so walks misery. Let your burden be your own."'

    menu:
        '"There are others who have journeyed with me? And they are here?"':
            # a80 # r921
            $ dhallLogic.j39461_s21_r921_action()
            jump dhall_s2

        '"I had some other questions…"':
            # a81 # r922
            jump dhall_s9

        '"Farewell, Dhall."':
            # a82 # r923
            jump dhall_s11


# s22 # say915
label dhall_s22: # from 47.0
    nr 'Dhall sighs. "It is said there are souls who can never attain the True Death. Death has forsaken them, and their names shall never be penned in the dead-book. To awake from death as you have done… suggests you are one of these souls. Your existence is unacceptable to our faction."'

    menu:
        '"„Unacceptable“? That doesn„t sound like it leaves me in a good position."':
            # a83 # r917
            jump dhall_s8

        '"I see. Tell me more about the Mortuary."':
            # a84 # r918
            jump dhall_s32

        '"I had some other questions…"':
            # a85 # r919
            jump dhall_s9

        '"I think I„ve heard enough. Farewell, Dhall."':
            # a86 # r920
            jump dhall_s11


# s23 # say924
label dhall_s23: # from 8.0
    nr '"Because forcing our beliefs upon you is not just. You must give up this shadow of life on your own, not because we force you to." Dhall looks about to break into another coughing jag, but he manages to hold it in with some effort. "As long as I remain at my post, I will protect your right to search for your own truth."'

    menu:
        '"What is your post?"':
            # a87 # r927
            jump dhall_s25

        '"Tell me more about the Mortuary."':
            # a88 # r928
            jump dhall_s32

        '"Very well. I had some other questions…"':
            # a89 # r925
            jump dhall_s9

        '"I„ve heard enough. Farewell, Dhall."':
            # a90 # r6039
            jump dhall_s11


# s24 # say929
label dhall_s24: # from 25.0
    nr '"I am the one that catalogues the shells that come to our halls, Restless One." Dhall breaks into a fit of coughing, then steadies himself. "Only I see the faces of those that lie upon our slabs. The dark of your existence lies safe with me."'

    menu:
        '"Tell me more about the Mortuary."':
            # a91 # r1305
            jump dhall_s32

        '"I had some other questions…"':
            # a92 # r6041
            jump dhall_s9

        '"It seems I owe you a favor. Farewell, Dhall."':
            # a93 # r6042
            jump dhall_s11


# s25 # say930
label dhall_s25: # from 9.5 23.0
    nr '"I am a scribe, a cataloger of all the shells that come to the Mortuary." Dhall coughs again, then takes a deep breath. "As long as the stream of corpses flows through the Mortuary, I shall remain at my post."'

    menu:
        '"You say that I have been here more than once. How is it that the Dustmen do not recognize me?"' if dhallLogic.r931_condition():
            # a94 # r931
            $ dhallLogic.j39462_s25_r931_action()
            jump dhall_s24

        '"Tell me more about the Mortuary."':
            # a95 # r932
            jump dhall_s32

        '"I see. I had some other questions…"':
            # a96 # r933
            jump dhall_s9

        '"Very well. Farewell, Dhall."':
            # a97 # r6040
            jump dhall_s11


# s26 # say934
label dhall_s26: # from 9.6
    nr '"I am close now to the True Death, Restless One. It will not be long before I pass beyond the Eternal Boundary and find the peace I have been seeking. I tire of this mortal sphere…" Dhall gives a ragged sigh. "The planes hold no more wonders for one such as I."'

    menu:
        '"The Eternal Boundary?"':
            # a98 # r935
            jump dhall_s41

        '"Are you certain? There might be some way I could help you."':
            # a99 # r936
            $ dhallLogic.r936_action()
            jump dhall_s27

        '"I had some other questions…"':
            # a100 # r937
            jump dhall_s9

        '"Farewell, Dhall."':
            # a101 # r960
            jump dhall_s11


# s27 # say938
label dhall_s27: # from 26.1
    nr '"I do not wish to live forever nor live again, Restless One. I could not bear it."'

    menu:
        '"Very well. I had some other questions…"':
            # a102 # r1303
            jump dhall_s9

        '"So be it. Farewell, Dhall."':
            # a103 # r1304
            jump dhall_s11


# s28 # say939
label dhall_s28: # from 2.2 42.1
    nr '"She *spoke* to you?" Dhall„s voice drops to a whisper. "Are the *fevers* upon you, Restless One? She has reached the True Death and passed well beyond your reach."'

    menu:
        '"She spoke to me, Dhall. Her spirit resides here."':
            # a104 # r981
            jump dhall_s30

        '"Perhaps I imagined it, then. I had some other questions…"':
            # a105 # r982
            jump dhall_s9

        '"I am not certain that she has reached the True Death. Farewell, Dhall."':
            # a106 # r873
            jump dhall_s11


# s29 # say941
label dhall_s29: # from 36.0
    nr 'Dhall pauses, considering. "Most likely. Are you missing anything… especially anything of value?" His voice dips as he frowns. "Not that Pharod would take exception to anything that wasn„t physically grafted to your body, and sometimes even that“s not enough to give his greedy mind pause."'

    menu:
        '"I am missing a journal."' if dhallLogic.r942_condition():
            # a107 # r942
            jump dhall_s31

        '"Hmmm. Do you know where I can find Pharod?"' if dhallLogic.r943_condition():
            # a108 # r943
            jump dhall_s18

        '"I had some other questions…"':
            # a109 # r944
            jump dhall_s9

        '"Maybe I should speak to Pharod. Farewell, Dhall."' if dhallLogic.r6026_condition():
            # a110 # r6026
            jump dhall_s19

        '"I see. Farewell, Dhall."' if dhallLogic.r874_condition():
            # a111 # r874
            jump dhall_s11


# s30 # say945
label dhall_s30: # from 28.0
    nr 'Dhall draws a semicircle in the air front of him with a finger. "This is an ill omen, Restless One. I pray you dreamed the conversation… yet I fear you did not."'

    menu:
        '"Perhaps I imagined it. I had some other questions."':
            # a112 # r946
            jump dhall_s9

        '"Perhaps we will speak more of it later. Farewell, Dhall."':
            # a113 # r947
            jump dhall_s11


# s31 # say850
label dhall_s31: # from 29.0
    nr '"A journal? If it was of any value, then it is likely it lies in Pharod„s hands."'

    menu:
        '"Where can I find this Pharod?"' if dhallLogic.r948_condition():
            # a114 # r948
            jump dhall_s18

        '"I see. I had some other questions…"':
            # a115 # r949
            jump dhall_s9

        '"Then I shall seek him out. Farewell, Dhall."' if dhallLogic.r6027_condition():
            # a116 # r6027
            jump dhall_s19

        '"I see. Farewell, Dhall."' if dhallLogic.r6066_condition():
            # a117 # r6066
            jump dhall_s11


# s32 # say950
label dhall_s32: # from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
    nr '"This is where the dead are brought to be interred or cremated. It is our responsibility as Dustmen to care for the dead, those who have left this shadow of life and walk the path to True Death." Dhall„s voice drops in concern. "Your wounds must have exacted a heavy toll if you do not recognize this place. It is almost your home."'

    menu:
        '"Shadow of life?"':
            # a118 # r951
            jump dhall_s33

        '"True Death?"':
            # a119 # r953
            $ dhallLogic.r953_action()
            jump dhall_s48

        '"Dustmen?"':
            # a120 # r954
            jump dhall_s47

        '"Sigil?"':
            # a121 # r955
            jump dhall_s37

        '"Wounds?"':
            # a122 # r956
            jump dhall_s34

        '"How did I get here?"':
            # a123 # r846
            jump dhall_s15

        '"I had some other questions…"':
            # a124 # r5735
            jump dhall_s9

        '"Farewell, Dhall."':
            # a125 # r6062
            jump dhall_s11


# s33 # say957
label dhall_s33: # from 10.2 14.2 32.0 41.0 47.2 49.0
    nr '"Yes, a shadow. You see, Restless One, this life… it is not real. Your life, my life, they are shadows, flickerings of what life once was. This „life“ is where we end up *after* we die. And here we remain… trapped. Caged. Until we can achieve the True Death."'

    menu:
        '"True Death?"':
            # a126 # r958
            $ dhallLogic.r958_action()
            jump dhall_s48

        '"What makes you think this life isn„t real?"':
            # a127 # r959
            jump dhall_s50

        '"Tell me some more about the Mortuary."':
            # a128 # r5736
            jump dhall_s32

        '"I see. I had some other questions…"':
            # a129 # r5737
            jump dhall_s9

        '"Farewell, Dhall."':
            # a130 # r5738
            jump dhall_s11


# s34 # say961
label dhall_s34: # from 14.1 32.4
    nr '"Yes, the wounds that decorate your body… they look as if they would have sent a lesser man along the path of the True Death, yet it seems as if many of them have healed already." Dhall coughs violently for a moment, then steadies himself. "But those are only the surface wounds."'

    menu:
        '"Only surface wounds? What do you mean?"':
            # a131 # r1301
            $ dhallLogic.j39470_s34_r1301_action()
            jump dhall_s53

        '"Tell me more about the Mortuary."':
            # a132 # r1302
            jump dhall_s32

        '"I had some other questions…"':
            # a133 # r5746
            jump dhall_s9

        '"Farewell, Dhall."':
            # a134 # r5747
            jump dhall_s11


# s35 # say962
label dhall_s35: # from 16.1 17.1 20.0
    nr '"There are some I respect, Restless One." Dhall takes a ragged breath and steadies himself. "Pharod is not one of them. He wears his ill repute like a badge of honor and takes liberties with the possessions of the dead. He is a knight of the post, cross-trading filth of the lowest sort."'

    menu:
        '"„Knight of the post“?"':
            # a135 # r963
            jump dhall_s36

        '"Do you know where I can find Pharod?"' if dhallLogic.r964_condition():
            # a136 # r964
            jump dhall_s18

        '"I see. I had some other questions…"':
            # a137 # r965
            jump dhall_s9

        '"Encouraging. Farewell, Dhall."':
            # a138 # r6028
            jump dhall_s11


# s36 # say966
label dhall_s36: # from 35.0
    nr '"A knight of the post…" Dhall coughs. "…a thief. All Pharod brings to our walls come stripped of a little less of their dignity than they possessed in life. Pharod takes whatever he may pry from their stiffening fingers."'

    menu:
        '"Did this Pharod take anything from *me?*"':
            # a139 # r967
            jump dhall_s29

        '"Do you know where I can find Pharod?"' if dhallLogic.r968_condition():
            # a140 # r968
            jump dhall_s18

        '"I see. I had some other questions…"':
            # a141 # r969
            jump dhall_s9

        '"Farewell, Dhall."':
            # a142 # r6029
            jump dhall_s11


# s37 # say970
label dhall_s37: # from 32.3
    nr '"Sigil is our fair city, Restless One."'

    menu:
        '"Tell me some more about the Mortuary."':
            # a143 # r971
            jump dhall_s32

        '"I see. I had some other questions…"':
            # a144 # r972
            jump dhall_s9

        '"Farewell, Dhall."':
            # a145 # r5758
            jump dhall_s11


# s38 # say973
label dhall_s38: # from 10.1 14.0
    nr '"Restless is as good a term as any…" Dhall draws a ragged breath. "Something keeps you here, does it not? Something that must be resolved, some passion that must be quenched before you can reach the True Death?"'

    menu:
        '"True Death?"':
            # a146 # r974
            $ dhallLogic.r974_action()
            jump dhall_s48

        '"Tell me some more about the Mortuary."':
            # a147 # r975
            jump dhall_s32

        '"I had some other questions…"':
            # a148 # r5749
            jump dhall_s9

        '"Farewell, Dhall."':
            # a149 # r5750
            jump dhall_s11


# s39 # say884
label dhall_s39: # -
    nr '"You will do what you have always done, Restless One. Seek out that crusty jink-smacking fool, Wormhair, and ask him for your possessions back. Then you will resume your pointless quest, attempt to complete pointless tasks, gather pointless items and then you will be struck down and returned to us. Save yourself time and speak with me now so that we do not have to resume this conversation again when your memories are lost to you again."'

    menu:
        '"I had some other questions…"':
            # a150 # r976
            jump dhall_s9

        '"Farewell, Dhall."':
            # a151 # r977
            jump dhall_dispose


# s40 # say978
label dhall_s40: # - # IF ~  Global("Dhall","GLOBAL",1)
    nr 'Dhall glances up as you approach. "So. You have returned…" Dhall takes a rasping breath, then breaks into a violent coughing spell. After a moment, it subsides, and he returns to his raspy breathing. "… greetings again, Restless One."'

    menu:
        '"I had some more questions for you, Dhall."':
            # a152 # r979
            jump dhall_s9

        '"Never mind. Farewell."':
            # a153 # r980
            jump dhall_dispose


# s41 # say983
label dhall_s41: # from 26.0 52.0
    nr '"The boundary between the shadow of this life and the True Death."'

    menu:
        '"Shadow of this life?"':
            # a154 # r984
            jump dhall_s33

        '"True Death?"':
            # a155 # r985
            $ dhallLogic.r985_action()
            jump dhall_s48

        '"Tell me more about the Mortuary."':
            # a156 # r5739
            jump dhall_s32

        '"I see. I had some other questions…"':
            # a157 # r5740
            jump dhall_s9

        '"Farewell, Dhall."':
            # a158 # r5741
            jump dhall_s11


# s42 # say5075
label dhall_s42: # from 2.0 12.0 43.0
    nr '"The northwest memorial hall on the floor below us. Check the biers there… her name should be on one of the memorial plaques. Mayhap that will revive your memory."'

    menu:
        '"I don„t know. I don“t recall ever traveling with a woman."' if dhallLogic.r5076_condition():
            # a159 # r5076
            jump dhall_s43

        '"Well, she claims to know me, but I can„t recall her."' if dhallLogic.r5077_condition():
            # a160 # r5077
            jump dhall_s28

        '"You said there were others. Who else is here?"' if dhallLogic.r5078_condition():
            # a161 # r5078
            jump dhall_s12

        '"You said there were others. Who else is here?"' if dhallLogic.r5079_condition():
            # a162 # r5079
            jump dhall_s12

        '"Mayhap I will go find her. I had some other questions for you before I go…"':
            # a163 # r6067
            jump dhall_s9

        '"I will go to the memorial hall below and see if I can find her body."':
            # a164 # r6068
            jump dhall_s11


# s43 # say5080
label dhall_s43: # from 2.1 42.0
    nr 'Dhall makes no response to this. He simply stares at you in silence.'

    menu:
        '"Where can I find her?"' if dhallLogic.r5081_condition():
            # a165 # r5081
            jump dhall_s42

        '"Before, you said there were others interred here who journeyed with me. Where are they?"' if dhallLogic.r5082_condition():
            # a166 # r5082
            jump dhall_s12

        '"Before, you said there were others interred here who journeyed with me. Where are they?"' if dhallLogic.r5083_condition():
            # a167 # r5083
            jump dhall_s12

        '"I had some other questions for you…"':
            # a168 # r6069
            jump dhall_s9

        '"Farewell, then."':
            # a169 # r6070
            jump dhall_s11


# s44 # say840
label dhall_s44: # from 1.0 6.2 7.0
    nr '"Know you? I…" There is a trace of bitterness in the scribe„s voice as he speaks. "I have *never* known you, Restless One. No more than you have known yourself." He is silent for a moment. "For you have forgotten, have you not?"'

    menu:
        '"Who *are* you?"':
            # a170 # r1327
            $ dhallLogic.r1327_action()
            jump dhall_s45


# s45 # say5728
label dhall_s45: # from 44.0
    nr '"As always, the question. And the wrong question, as always." He bows slightly, but the movement suddenly sends him into a bout of coughing. "I…" He pauses for a moment, catches his breath. "I… am Dhall."'

    menu:
        '"Perhaps you can answer some questions for me, Dhall…"':
            # a171 # r5731
            $ dhallLogic.j39459_s45_r5731_action()
            jump dhall_s9

        '"I don„t have time for this. Farewell."':
            # a172 # r5732
            $ dhallLogic.j39459_s45_r5732_action()
            jump dhall_s46


# s46 # say5730
label dhall_s46: # from 45.1
    nr '"Very well, Restless One." Dhall nods. "But I fear time is not your enemy in this matter." He picks up his quill again. "When you wish to speak further, I will be here."'

    menu:
        '"I may return. Farewell."':
            # a173 # r40005
            jump dhall_dispose


# s47 # say847
label dhall_s47: # from 32.2
    nr '"We Dustmen are a faction, a gathering of those of us that recognize the illusion of this life. We await the next life, and help others on their journey."'

    menu:
        '"Perhaps you can explain why the Dustmen want me dead."' if dhallLogic.r6032_condition():
            # a174 # r6032
            jump dhall_s22

        '"True Death?"':
            # a175 # r6033
            $ dhallLogic.r6033_action()
            jump dhall_s48

        '"Shadow that is this life?"':
            # a176 # r6034
            jump dhall_s33

        '"Tell me more about the Mortuary."':
            # a177 # r6035
            jump dhall_s32

        '"I had some other questions for you…"':
            # a178 # r6036
            jump dhall_s9

        '"Farewell, then."':
            # a179 # r6037
            jump dhall_s11


# s48 # say848
label dhall_s48: # from 32.1 33.0 38.0 41.1 47.1
    nr '"True Death is non-existence. A state devoid of reason, of sensation, of passion." Dhall coughs, then gives a ragged breath. "A state of purity."'

    menu:
        '"Sounds like oblivion. Why would anyone want that?"':
            # a180 # r6043
            jump dhall_s49

        '"Oh. Can you tell me more about the Mortuary?"':
            # a181 # r6044
            jump dhall_s32

        '"I… see. I had some other questions."':
            # a182 # r6045
            jump dhall_s9

        '"I must take my leave. Farewell, Dhall."':
            # a183 # r6046
            jump dhall_s11


# s49 # say849
label dhall_s49: # from 48.0
    nr '"Is it worse than remaining in this shadow of what life once was? I think not."'

    menu:
        '"Shadow of life?"':
            # a184 # r6047
            jump dhall_s33

        '"Tell me more about the Mortuary."':
            # a185 # r6048
            jump dhall_s32

        '"I… see. I had some other questions."':
            # a186 # r6049
            jump dhall_s9

        '"I must take my leave. Farewell, Dhall."':
            # a187 # r6050
            jump dhall_s11


# s50 # say853
label dhall_s50: # from 33.1
    nr '"What makes you think this life *is* real? Look inside yourself. Do you not feel something lacking?" Dhall shakes his head. "This is a purgatory. There is only sorrow here. Misery. Torment. These are not the elements that make up „life.“ They are part of the cage that traps us in this shadow."'

    menu:
        '"I think your fatalism has gotten the better of you. Those elements are part of life, but not the whole of it."':
            # a188 # r6051
            $ dhallLogic.r6051_action()
            jump dhall_s51

        '"Cage us? How?"':
            # a189 # r6052
            jump dhall_s51

        '"Enough of your philosophy. What does all this talk have to do with me waking up here?"':
            # a190 # r6053
            $ dhallLogic.r6053_action()
            jump dhall_s51


# s51 # say5733
label dhall_s51: # from 50.0 50.1 50.2
    nr 'Dhall shakes his head. "Passions carry weight. They anchor many to this shadow of life. As long as one clings to emotion, they will be continually reborn into this „life,“ forever suffering, never knowing the purity of True Death."'

    menu:
        '"I… see. How does one escape the cycle of rebirth and achieve this… True Death?"':
            # a191 # r6054
            jump dhall_s52

        '"Tell me more about the Mortuary."':
            # a192 # r6055
            jump dhall_s32

        '"I had some other questions…"':
            # a193 # r6056
            jump dhall_s9

        '"Farewell, Dhall."':
            # a194 # r6057
            jump dhall_s11


# s52 # say5734
label dhall_s52: # from 51.0
    nr '"Kill your passions. Strip yourself of the need for sensation. When you are truly cleansed, then the cycle of rebirth will end, and you achieve peace." Dhall sighs… it sounds like a death rattle in his throat. "Past these shells of ours, past the Eternal Boundary, lies the peace that all souls seek."'

    menu:
        '"The Eternal Boundary?"':
            # a195 # r6058
            jump dhall_s41

        '"Tell me more about the Mortuary."':
            # a196 # r6059
            jump dhall_s32

        '"I had some other questions…"':
            # a197 # r6060
            jump dhall_s9

        '"Farewell, Dhall."':
            # a198 # r6061
            jump dhall_s11


# s53 # say5742
label dhall_s53: # from 34.0
    nr '"I speak of the wounds of the mind. You have forgotten much, have you not? Mayhap your true wounds run much deeper than the scars that decorate your surface…" Dhall coughs again. "…but that is something that only you would know for certain."'

    menu:
        '"Tell me more about the Mortuary."':
            # a199 # r5743
            jump dhall_s32

        '"I see. I had some other questions…"':
            # a200 # r5744
            jump dhall_s9

        '"Farewell, Dhall."':
            # a201 # r5745
            jump dhall_s11
