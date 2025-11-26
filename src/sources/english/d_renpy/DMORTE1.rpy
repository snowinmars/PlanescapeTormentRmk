init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte1_logic import Morte1Logic
    morte1Logic = Morte1Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE1.DLG
# ###


# s0 # say39792
label morte1_s0: # - # IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */ ~  !InParty("Morte") Global("Morte","GLOBAL",0)
    nr '"Hey, chief. You okay? You playing corpse or you putting the blinds on the Dusties? I thought you were a deader for sure."~ [MRT001]'

    menu:
        '"Wh…? Who are you?"':
            # a0 # r39793
            $ morte1Logic.r39793_action()
            jump morte1_s1


# s1 # say39795
label morte1_s1: # from 0.0
    nr '"Uh… who am *I?* How about *you* start? Who„re you?"'

    menu:
        '"I… don„t know. I can“t remember."':
            # a1 # r39796
            jump morte1_s2

        '"I asked *you* first, skull."':
            # a2 # r39797
            jump morte1_s3


# s2 # say39798
label morte1_s2: # from 1.0 3.0 4.0
    nr '"You can„t remember your *name?* Heh. Well, NEXT time you spend a night in this berg, go easy on the bub. Name“s Morte. I„m trapped in here, too."'

    menu:
        '"Trapped?"':
            # a3 # r39799
            jump morte1_s5


# s3 # say39800
label morte1_s3: # from 1.1
    nr '"Yeah, „an I asked you *second.* What“s your name?"'

    menu:
        '"I… don„t know. I can“t remember."':
            # a4 # r39801
            jump morte1_s2

        '"You first, skull. It„s the last time I“ll ask."':
            # a5 # r39802
            jump morte1_s4


# s4 # say39803
label morte1_s4: # from 3.1
    nr '"Tchhhh… you„re tighter than a wet rope. All right, *I“ll* be the nice guy here. Name„s Morte. Who“re you?"'

    menu:
        '"I… don„t know. I can“t remember."':
            # a6 # r39804
            jump morte1_s2


# s5 # say39805
label morte1_s5: # from 2.0
    nr '"Yeah, since you haven„t had time to get your legs yet, here“s the chant: I„ve tried all the doors, and this room is locked tighter than a chastity belt."'

    menu:
        '"We„re locked in… where? What is this place?"':
            # a7 # r39806
            jump morte1_s6


# s6 # say39807
label morte1_s6: # from 5.0
    nr '"It„s called the “Mortuary„… it“s a big black structure with all the architectural charm of a pregnant spider."'

    menu:
        '"„The Mortuary“? What… am I dead?"':
            # a8 # r39808
            jump morte1_s7


# s7 # say39809
label morte1_s7: # from 6.0
    nr '"Not from where I„m standing. You got scars a-plenty, though… looks like some berk painted you with a knife. All the more reason to give this place the laugh before whoever carved you up comes back to finish the job."'

    menu:
        '"Scars? How bad are they?"':
            # a9 # r39810
            jump morte1_s8


# s8 # say39811
label morte1_s8: # from 7.0
    nr '"Well… the carvings on your chest aren„t TOO bad… but the ones on your back…" Morte pauses. "Say, looks like you got a whole tattoo gallery on your back, chief. Spells out something…"'

    menu:
        '"Tattoos on my back? What do they say?"':
            # a10 # r39812
            jump morte1_s9


# s9 # say39813
label morte1_s9: # from 8.0
    nr '"Heh! Looks like you come with directions…" Morte clears his throat. "Let„s see… it starts with…"  "“I know you feel like you„ve been drinking a few kegs of Styx wash, but you need to CENTER yourself. Among your possessions is a JOURNAL that“ll shed some light on the dark of the matter. PHAROD can fill you in on the rest of the chant, if he„s not in the dead-book already.“"'

    menu:
        '"Pharod…? Does it say anything else?"':
            # a11 # r39814
            jump morte1_s10


# s10 # say39815
label morte1_s10: # from 9.0
    nr '"Yeah, there„s a bit more…" Morte pauses. "Let“s see… it goes on…"  „Don“t lose the journal or we„ll be up the Styx again. And whatever you do, DO NOT tell anyone WHO you are or WHAT happens to you, or they“ll put you on a quick pilgrimage to the crematorium. Do what I tell you: READ the journal, then FIND Pharod.„'

    menu:
        '"No wonder my back hurts; there„s a damn novel written there. As for that journal I“m supposed to have with me… was there one with me while I was lying here?"':
            # a12 # r39816
            jump morte1_s11


# s11 # say39817
label morte1_s11: # from 10.0
    nr '"No… you were stripped to the skins when you arrived here. „Sides, looks like you got enough of a journal penned on your body."'

    menu:
        '"What about Pharod? Do you know him?"':
            # a13 # r39818
            jump morte1_s12


# s12 # say39819
label morte1_s12: # from 11.0
    nr '"Nobody I know… but then again, I don„t know many people. Still, SOME berk“s got to know where to find Pharod… uh, once we get out of here, that is."'

    menu:
        '"How *do* we get out of here?"':
            # a14 # r39820
            jump morte1_s13


# s13 # say39821
label morte1_s13: # from 12.0
    nr '"Well, all the doors are locked, so we„ll need the key. Chances are, one of the walking corpses in this room has it."'

    menu:
        '"Walking corpses?"':
            # a15 # r39822
            jump morte1_s14


# s14 # say39823
label morte1_s14: # from 13.0
    nr '"Yeah, the Mortuary keepers use dead bodies as cheap labor. The corpses are dumb as stones, but they„re harmless, and won“t attack you unless you attack first."'

    menu:
        '"Is there some other way? I don„t want to kill them just for a key."':
            # a16 # r39824
            $ morte1Logic.r39824_action()
            jump morte1_s15

        '"So I should attack one of these corpses and loot it for the key?"':
            # a17 # r39825
            jump morte1_s16


# s15 # say39826
label morte1_s15: # from 14.0
    nr '"What, you think it„s going to hurt their feelings? They“re DEAD. But if you want a bright side to this: if you kill them, at least they„ll have a rest before their keepers raise them up to work again."'

    menu:
        '"Well, all right… I„ll take one of them down and get the key."':
            # a18 # r39827
            jump morte1_s16


# s16 # say39828
label morte1_s16: # from 14.1 15.0
    nr '"Well, before you do that, arm yourself first. I think there„s a scalpel on one of the shelves around here."  ^NNOTE: Search the shelves in the room for a weapon to attack the zombies with. <SEARCH_WEAPON>^-'

    menu:
        '"All right, I„ll look for one."':
            # a19 # r39829
            jump morte1_s17


# s17 # say39830
label morte1_s17: # from 16.0
    nr '"One last thing: Those corpses are as slow as molasses, but getting punched by one of them is like being kissed by a battering ram. If they start getting an edge on you, remember you can RUN, and they can„t. Use it to keep some distance if you need to recover."  ^NNOTE: <RUNAWAY> If you are in danger of dying, use running to keep your distance from the zombies while you recover.^-'

    menu:
        '"All right. Thanks for the advice."':
            # a20 # r39831
            $ morte1Logic.r39831_action()
            jump morte1_dispose


# s18 # say39832
label morte1_s18: # - # IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"There should be a scalpel on one of the shelves around here. I„d find it before locking horns with any of the corpses around here."  ^NNOTE: Search the shelves in the room for a weapon to attack the zombies with. <SEARCH_WEAPON>^-'

    menu:
        '"All right… I„ll keep searching."':
            # a21 # r39833
            jump morte1_dispose


# s19 # say39834
label morte1_s19: # - # IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"All right, you found the scalpel! Now, go get those corpses… and don„t worry, I“ll stay back and provide valuable tactical advice."'

    menu:
        '"Maybe you could *help* me, Morte."':
            # a22 # r39835
            jump morte1_s20

        '"All right."':
            # a23 # r39836
            jump morte1_s23


# s20 # say39837
label morte1_s20: # from 19.0
    nr '"I WILL be helping you. Good advice is hard to come by."'

    menu:
        '"I meant help in attacking the *corpse.*"':
            # a24 # r39838
            jump morte1_s21

        '"All right, then."':
            # a25 # r39839
            jump morte1_s23


# s21 # say39840
label morte1_s21: # from 20.0
    nr '"Me? I„m a romantic, not a soldier. I“d just get in the way."'

    menu:
        '"When I attack this corpse, you better be right there with me or you„ll be the next thing that I plunge this scalpel in."':
            # a26 # r39841
            jump morte1_s22

        '"All right, then."':
            # a27 # r39842
            jump morte1_s23


# s22 # say39843
label morte1_s22: # from 21.0
    nr '"Eh… all right. I„ll help you."  ^NNOTE: If you wish Morte to help you attack, simply make sure the both of you are selected when you attack the corpse. Morte will join in the attack.^-'

    menu:
        '"I„m glad we understand each other."':
            # a28 # r39844
            jump morte1_s23


# s23 # say39845
label morte1_s23: # from 19.1 20.1 21.1 22.0
    nr '"Time to introduce these corpses to the second death, then…"  ^NNOTE: <ATTACKNOTE>^-'

    menu:
        '"Let„s go."':
            # a29 # r39846
            jump morte1_dispose


# s24 # say39847
label morte1_s24: # - # IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("KeyPr") Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
    nr '"All right, you took care of the right corpse, looks like. Now you gotta find the key. It should have been on its body. Once we have it, we can get out of here."  ^NNOTE: <DEADPILE>^-'

    menu:
        '"All right."':
            # a30 # r39848
            jump morte1_dispose


# s25 # say39849
label morte1_s25: # - # IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("KeyPr")
    nr '"All right, that„s the key. It must fit the lock of one of the doors in the room."'

    menu:
        '"I„ll try all the doors, then."':
            # a31 # r39850
            jump morte1_dispose


# s26 # say39851
label morte1_s26: # - # IF WEIGHT #0 ~  !InParty("Morte") GlobalGT("Morte","GLOBAL",0)
    nr '"I knew you„d be back, chief! Finally realized you needed me, huh?"~ [MRT516]'

    menu:
        '"Yeah… let„s go."':
            # a32 # r39852
            $ morte1Logic.r39852_action()
            jump morte1_dispose

        '"Not right now, Morte."':
            # a33 # r39853
            jump morte1_s27


# s27 # say39854
label morte1_s27: # from 26.1
    nr '"Hmmmph. Well, I don„t know how long I“m going to wait here, so I„m going to give you one LAST chance. You sure you don“t want my sage advice and quick wit?"'

    menu:
        '"Morte, you don„t have EITHER of those things."':
            # a34 # r39855
            jump morte1_s28

        '"All right, I changed my mind. Come on, let„s go."':
            # a35 # r39856
            $ morte1Logic.r39856_action()
            jump morte1_dispose

        '"Not at the moment, Morte. Maybe later."':
            # a36 # r39857
            jump morte1_s28


# s28 # say39858
label morte1_s28: # from 27.0 27.2
    nr '"Are you trying to hurt my feelings, chief? What, was it something I said? The fact I don„t have arms? What?"'

    menu:
        '"All right, I changed my mind. Come on, let„s go."':
            # a37 # r39859
            $ morte1Logic.r39859_action()
            jump morte1_dispose

        '"Nothing like that. It„s just I don“t need your company right now. Farewell, Morte."':
            # a38 # r39860
            jump morte1_s29


# s29 # say39861
label morte1_s29: # from 28.1
    nr '"Well, I„m not going to wait FOREVER, so you better come back as soon as you change your mind."'

    menu:
        '"I will. Farewell, Morte."':
            # a39 # r39862
            jump morte1_dispose


# s30 # say39863
label morte1_s30: # - # IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
    nr '"What„s eating you, chief?"~ [MRT515]'

    menu:
        '"Nothing at the moment, Morte. Just checking to see if you were still with me."':
            # a40 # r39864
            jump morte1_dispose


# s31 # say42298
label morte1_s31: # externs zm825_s3 zm825_s0 zm569_s3 zm569_s0
    nr '"Uh, chief… they can„t hear you, all right? They“re dead."'

    menu:
        '"But you„re dead. And you“re talking to me."':
            # a41 # r42299
            jump morte1_s32


# s32 # say42300
label morte1_s32: # from 31.0
    nr '"Yeah, but *I„m* special. Death couldn“t kill my zest for life. These corpses here…" Morte rolls his eyes. "They probably didn„t have much personality to begin with."'

    menu:
        '"I… see."':
            # a42 # r42301
            jump morte1_s33


# s33 # say42302
label morte1_s33: # from 32.0
    nr '"Look, chief… watching you trying to swap the chant with these corpses isn„t doing much for my morale. Let“s leave the corpse-talk for the barmies, all right?"'

    menu:
        '"All right, then. Let„s go."':
            # a43 # r42303
            jump morte1_dispose


# s34 # say42306
label morte1_s34: # externs zm782_s0
    nr '"This looks like the lucky petitioner here, chief. Look… he„s got the key there in his hand."'

    jump zm782_s2  # EXTERN
