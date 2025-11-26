init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte_logic import MorteLogic
    morteLogic = MorteLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE.DLG
# ###


# s0 # say986
label morte_s0: # -
    nr '"Hey, chief. You okay? You playing corpse or you putting the blinds on the Dusties? I thought you was a deader for sure."'

    menu:
        '"Who are you?"':
            # a0 # r987
            jump morte_s1

        'Ignore the talking skull and explore the room.':
            # a1 # r989
            jump morte_dispose

        'Take a deep breath, shake your head and ignore the skull that is talking to you.':
            # a2 # r988
            jump morte_dispose

        '"I„m sure you have a thousand clever things to say, Morte, but I need you to shut up, set your flags, and join me NOW."':
            # a3 # r17833
            $ morteLogic.r17833_action()
            jump morte_dispose


# s1 # say990
label morte_s1: # from 0.0 29.0 31.0
    nr '"Me?" The skull seems indignant. "How about *you* start, scabbie? Who are you?"'

    menu:
        '"I… don„t know."':
            # a4 # r992
            jump morte_s2

        '"I don„t know… I can“t seem to remember."':
            # a5 # r995
            jump morte_s3

        '"I asked you first, skull."':
            # a6 # r993
            jump morte_s4

        'Ignore the skull and explore the room.':
            # a7 # r991
            jump morte_dispose


# s2 # say997
label morte_s2: # from 1.0 4.0 5.0
    nr '"You don„t know who you are, huh? You *could* have just said, “pike it, berk.„ Well, that“s okay… pretend you„re a Clueless. See if I give a fig. I“m Morte. Hail, well met and all that wash."'

    menu:
        '"Where am I, Morte?"':
            # a8 # r998
            jump morte_s6

        '"Do you know how I can get out of here?"' if morteLogic.r1006_condition():
            # a9 # r1006
            jump morte_s21

        '"How did I get here?"':
            # a10 # r1080
            jump morte_s20

        'Ignore Morte and explore the room.':
            # a11 # r1087
            jump morte_dispose


# s3 # say999
label morte_s3: # from 1.1 4.1 5.1
    nr '"You don„t *remember?* Musta been some night you had. Better hope you didn“t hurt anybody… the name„s Morte. Hail, well met, and all that wash." He pauses for a moment. "Say, I *have* to ask: are you one of those Sensates into self-mutilation or did somebody give you those scars?"'

    menu:
        '"Sensates?"':
            # a12 # r1000
            jump morte_s12

        '"Scars?"':
            # a13 # r1001
            jump morte_s13

        'Ignore Morte and explore the room.':
            # a14 # r1002
            jump morte_dispose


# s4 # say1003
label morte_s4: # from 1.2
    nr '"Yeah, „an I asked you second. What“s your name?"'

    menu:
        '"I… don„t know."':
            # a15 # r1004
            jump morte_s2

        '"I don„t know… I can“t remember."':
            # a16 # r1005
            jump morte_s3

        '"You first, skull."':
            # a17 # r1007
            jump morte_s5

        'Ignore the skull and explore the room.':
            # a18 # r994
            jump morte_dispose


# s5 # say1008
label morte_s5: # from 4.2
    nr '"Man, you„re tighter than a wet rope. All right, all right… *I“ll* be the nice guy here… me, I„m Morte. Morte Rictusgrin. Now what name is unfortunate enough to have you as its owner?"'

    menu:
        '"I… don„t know."':
            # a19 # r1009
            jump morte_s2

        '"I don„t know… I can“t seem to remember anything."':
            # a20 # r1010
            jump morte_s3

        'Ignore Morte and explore the room.':
            # a21 # r1011
            jump morte_dispose


# s6 # say1012
label morte_s6: # from 2.0 29.1 31.1
    nr '"You„re in this dump called the Mortuary… it“s this big black structure with all the architectural charm of a pregnant spider."'

    menu:
        '"„The Mortuary“? Am I dead?"':
            # a22 # r1013
            jump morte_s7

        '"How do I get out of here?"' if morteLogic.r1015_condition():
            # a23 # r1015
            jump morte_s21

        'Ignore Morte and explore the room.':
            # a24 # r1085
            jump morte_dispose


# s7 # say1014
label morte_s7: # from 6.0 9.0
    nr '"Well, now I don„t know about that… but the Mortuary“s the closest thing to a morgue you„re gonna find in this berg. Berks haul dead bodies here, bury “em, burn „em, and if you“re *really* lucky, you get brought back to life as a slave. Not the best spot on the planes to be. If I was you, I„d dig up the nearest exit and give this place the laugh."'

    menu:
        '"I„m sorry… the “Mortuary„? What is this place?"':
            # a25 # r1016
            jump morte_s10

        '"Back from the dead as a slave?"':
            # a26 # r1017
            jump morte_s9

        '"While I can still walk?"':
            # a27 # r1018
            jump morte_s11

        '"You say people haul dead bodies here? Is that how I got here?"' if morteLogic.r1019_condition():
            # a28 # r1019
            jump morte_s8

        'Ignore Morte and explore the room.':
            # a29 # r1020
            jump morte_dispose


# s8 # say1021
label morte_s8: # from 7.3
    nr 'Pauses. "Yeah, I guess. Maybe some waster thought you was a deader and dropped you off. Yer corpse act sure had *me* fooled… maybe you should find the berk who dragged you here and put the questions to him, eh?" Morte nods. "Not bad thinking for a recently dead guy… good to see your brain-box is still in one piece."'

    menu:
        '"Why would somebody bring me here?"':
            # a30 # r1029
            jump morte_s14

        '"I had some other questions…"':
            # a31 # r1030
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a32 # r1137
            jump morte_dispose


# s9 # say1022
label morte_s9: # from 7.1
    nr '"Yeah, it„s a charmed life… except for the near-constant application of formaldehyde and stitching your limbs back when they fall off, it“s paradise."'

    menu:
        '"Am I supposed to be here? Am I dead?"':
            # a33 # r1113
            jump morte_s7

        '"How do I look? Am I badly scarred?"':
            # a34 # r1114
            jump morte_s13

        '"Never mind. I had some other questions…"':
            # a35 # r1115
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a36 # r1116
            jump morte_dispose


# s10 # say1023
label morte_s10: # from 7.0
    nr '"Uh… like I said, the Mortuary. You okay, chief? You don„t look too good."'

    menu:
        '"Am I supposed to be here? Am I dead?"':
            # a37 # r1109
            jump morte_s16

        '"How *do* I look? How badly scarred am I?"':
            # a38 # r1110
            jump morte_s13

        '"Never mind. I had some other questions…"':
            # a39 # r1111
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a40 # r1112
            jump morte_dispose


# s11 # say1024
label morte_s11: # from 7.2
    nr '"Chief, from where I„m sitting, you crawling off that slab was beating the odds. You look like you“re about to settle your drinking tab, if you catch my meaning."'

    menu:
        '"Could it be that I am dead? And that„s why I“m here?"':
            # a41 # r1133
            jump morte_s16

        '"How bad do I look?"':
            # a42 # r1134
            jump morte_s13

        '"Never mind. I had some other questions…"':
            # a43 # r1135
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a44 # r1136
            jump morte_dispose


# s12 # say1025
label morte_s12: # from 3.0 33.0
    nr '"Don„t know what Sensates are? Oh, are *you* in for a treat! They“re this group of bashers who„re all about experiencing all the planes have to offer, right, including… well, forget it for now. What about those scars?"'

    menu:
        '"Scars?"':
            # a45 # r1027
            jump morte_s13

        '"Never mind. I had some other questions…"':
            # a46 # r1028
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a47 # r1143
            jump morte_dispose


# s13 # say1026
label morte_s13: # from 3.1 9.1 10.1 11.1 12.0 33.1
    nr '"It„s like some basher decided to paint you with a knife. You“re scarred all over… even on your back, „cept…" Pauses. "Say, you got a whole tattoo gallery on your back, berk. Spells out something…"'

    menu:
        '"What does it say?"':
            # a48 # r1088
            $ morteLogic.r1088_action()
            jump morte_s34

        '"Never mind. I had some other questions…"':
            # a49 # r1089
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a50 # r1090
            jump morte_dispose


# s14 # say1031
label morte_s14: # from 8.0 29.3
    nr '"Some people in this berg collect deaders off the street and sell „em here for jink. Not a great way to make ends meet, but when ye“re living in the chamber pot of the planes, yer options are pretty narrow."'

    menu:
        '"Jink? What„s “jink„?"':
            # a51 # r1032
            jump morte_s15

        '"Never mind. I had some other questions…"':
            # a52 # r1033
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a53 # r1142
            jump morte_dispose


# s15 # say1034
label morte_s15: # from 14.0
    nr '"Eh… money. Jink is money. Didn„t they have that where you came from?"'

    menu:
        '"I don„t remember where I“m from."':
            # a54 # r1035
            jump morte_s19

        '"Forget it. I had some other questions…"':
            # a55 # r1036
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a56 # r1138
            jump morte_dispose


# s16 # say1037
label morte_s16: # from 10.0 11.0
    nr 'He pauses. "Don„t know. You“re *talking* to me… the walking dead around here don„t usually do that. As I see it, the Dusties made a mistake and you weren“t dead. Did you sign some sort of contract that you remember? I mean, they usually gotta fill out all sorts of legal paperwork before they can pull someone outta the dead-book."'

    menu:
        '"Uh… contract? No, I don„t remember signing one. I… don“t remember much of anything."':
            # a57 # r1038
            jump morte_s32

        '"Dead-book?"':
            # a58 # r1039
            jump morte_s17

        '"Legal?"':
            # a59 # r1040
            jump morte_s18

        '"Forget it. I had some other questions…"':
            # a60 # r1041
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a61 # r1150
            jump morte_dispose


# s17 # say1042
label morte_s17: # from 16.1 18.0
    nr '"Yeah, the „dead-book.“ You know? Uh, maybe you don„t. Look, forget the “dead-book.„ You“re alive, so you ain„t in it."'

    menu:
        '"What was that legal… contract… stuff you mentioned?"':
            # a62 # r1151
            jump morte_s18

        '"I had some other questions…"':
            # a63 # r1152
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a64 # r1153
            jump morte_dispose


# s18 # say1043
label morte_s18: # from 16.2 17.0
    nr '"Yeah, don„t it make you want to split bricks? Law makes Sigil spin, and you can“t even empty your bladder without filling out one contract or another."'

    menu:
        '"What was that you were saying about the „dead-book“?"':
            # a65 # r1154
            jump morte_s17

        '"Never mind. I had some other questions…"':
            # a66 # r1155
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a67 # r1156
            jump morte_dispose


# s19 # say1044
label morte_s19: # from 15.0
    nr '"By every god and his mother, are *you* out of it. Do you have any idea where you came from? Somewhere, a nation of Clueless is missing their king. Did you bite your thumb at a god or were you always this ignorant?"'

    menu:
        '"I don„t know… I can“t remember anything."':
            # a68 # r1139
            jump morte_s32

        '"Never mind. I had some other questions…"':
            # a69 # r1140
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a70 # r1141
            jump morte_dispose


# s20 # say1045
label morte_s20: # from 2.2 31.2
    nr '"Chief, I have no sodding idea. You sure got the knack for playing dead, though. While you was lying there, I never saw your chest move, your eyes blink… nothing. Were you drinking? Is that what happened?"'

    menu:
        '"I don„t know… I can“t remember anything."':
            # a71 # r1097
            jump morte_s32

        '"Never mind. I had some other questions…"':
            # a72 # r1098
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a73 # r1099
            jump morte_dispose


# s21 # say1046
label morte_s21: # from 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1
    nr '"Well, now that *is* a good question. Sand„s running through the glass for you, chief. The Dustmen find you, they“ll attempt to correct your resurrection „problem“ by tossing you in the crematorium. If you keep playing dead, you„ll go to the crematorium anyway. A modron“s choice, eh? What to do?"'

    menu:
        '"Dustmen?"':
            # a74 # r1047
            jump morte_s30

        '"I„ll… escape."':
            # a75 # r1048
            jump morte_s22

        '"I„ll explain the situation to these… Dustmen."':
            # a76 # r1049
            jump morte_s25

        '"What should I do?"' if morteLogic.r1050_condition():
            # a77 # r1050
            jump morte_s23

        '"Why don„t you tell me? Sounds like you have an answer already."' if morteLogic.r1051_condition():
            # a78 # r1051
            jump morte_s23

        'Ignore Morte and explore the room.':
            # a79 # r1081
            jump morte_dispose


# s22 # say1052
label morte_s22: # from 21.1
    nr '"Oh, *good* idea, chief! Why didn„t *I* think of that? How you gonna escape, huh? I“ll give you a clue: It involves a little cooperation."'

    menu:
        '"I„m interested. Keep talking."':
            # a80 # r1053
            jump morte_s23

        '"Forget it. I had some other questions…"':
            # a81 # r1054
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a82 # r1145
            jump morte_dispose


# s23 # say1055
label morte_s23: # from 21.3 21.4 22.0 26.0
    nr '"From where I„m sitting, it“s obvious you need to get out of here. Me, I can afford to wait. The only danger *I„m* in is dying of boredom. We could lend each other a hand."'

    menu:
        '"Keep talking…"':
            # a83 # r1058
            jump morte_s24

        '"You don„t have any hands. What could *you* do to help me?"':
            # a84 # r1059
            jump morte_s24

        '"Forget it. I had some other questions…"':
            # a85 # r1060
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a86 # r1146
            jump morte_dispose


# s24 # say1061
label morte_s24: # from 23.0 23.1
    nr '"It may not look it, but I could help you outta here, and you could help me outta here. I haven„t got hands, so I“m in a bit of a quandary. You„re missing what“s in your cranium, while I got plenty of experience and know-how to get you out of this dive. We cooperate, and we both come out a *head.* Deal, berk?"'

    menu:
        '"It„s a deal."':
            # a87 # r1057
            jump morte_s28

        '"Deal. I have a bad feeling that fate has destined we travel together, Morte."':
            # a88 # r1062
            jump morte_s27

        '"Forget it. I had some other questions…"':
            # a89 # r1063
            jump morte_s31

        '"No thanks. Talking to you is painful enough. I„ll look for a way out on my own."':
            # a90 # r1147
            jump morte_dispose


# s25 # say1064
label morte_s25: # from 21.2
    nr '"Oh, *good* idea, chief! Why didn„t *I* think of that?" His tone becomes mocking. "By the way, Sir Dustman, I died and woke up on a slab in your little Mortuary. Can you please help me?" "They“ll „help“ you all right. They„ll look at you for a few seconds, call the guards and pop you in your own private kiln."'

    menu:
        '"That sounds a little extreme… why would they do that?"':
            # a91 # r1065
            jump morte_s26

        '"Well, their guards better be pretty damn tough to take me down."':
            # a92 # r1066
            jump morte_s26

        '"Forget it. I had some other questions…"':
            # a93 # r1067
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a94 # r1149
            jump morte_dispose


# s26 # say1068
label morte_s26: # from 25.0 25.1
    nr '"Just trust me… it doesn„t matter how tough you think you are or what you say to them, they“ll get you. You ain„t strong enough to break out of a walled-in tomb or survive the heat of the Elemental Plane of Fire. Waking up from the dead is bad enough as far as the caretakers around here are concerned. Don“t be an idiot."'

    menu:
        '"So your plan is…?"':
            # a95 # r1069
            jump morte_s23

        '"Never mind. I had some other questions…"':
            # a96 # r1070
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a97 # r1148
            jump morte_dispose


# s27 # say1071
label morte_s27: # from 24.1
    nr '"Fate can go squat on a halberd for all I care. Listen, chief. Pay attention to how often „bad“ and „fate“ show up in the same sentence, and you„ll catch on to one of life“s little mysteries. Best thing to do is to tell fate to wrap itself in razorvine; there„s *always* another option that fate never lets on."'

    menu:
        '"I„ll keep that in mind."':
            # a98 # r1073
            jump morte_s28

        '"Enough talk already. What„s your big plan?"':
            # a99 # r1074
            jump morte_s28


# s28 # say1072
label morte_s28: # from 24.0 27.0 27.1
    nr '"Awright then… now, c„mon, let“s give this place the laugh. The doors outta here are locked, so we„ll need the key. Chances are, one of the walking corpses in this room has it."'

    menu:
        '"Walking corpses?"':
            # a100 # r1079
            $ morteLogic.r1079_action()
            jump morte_s240


# s29 # say996
label morte_s29: # -
    nr '"Oh, so *now* you want to talk to Morte again, huh?"'

    menu:
        '"Who are you?"':
            # a101 # r1075
            jump morte_s1

        '"Where am I?"':
            # a102 # r1076
            jump morte_s6

        '"Do you know how I can get out of here?"' if morteLogic.r1077_condition():
            # a103 # r1077
            jump morte_s21

        '"How did I get here?"':
            # a104 # r1078
            jump morte_s14

        'Ignore Morte and explore the room.':
            # a105 # r1086
            jump morte_dispose


# s30 # say1082
label morte_s30: # from 21.0
    nr '"The Dusties? They watch the place here. You can„t miss them… they have an obsession with black and rigor mortis of the face. They call themselves “the Dustmen„ and pretend they“re a faction, but they„re just an addled bunch of ghoulish death-worshippers. Steer clear of them."'

    menu:
        '"So how do I get out of here?"' if morteLogic.r1083_condition():
            # a106 # r1083
            jump morte_s21

        '"Never mind. I had some other questions…"':
            # a107 # r1084
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a108 # r1144
            jump morte_dispose


# s31 # say1091
label morte_s31: # from 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2
    nr '"Yeah? Like *what* questions?"'

    menu:
        '"Who are you?"':
            # a109 # r1092
            jump morte_s1

        '"Where am I?"':
            # a110 # r1093
            jump morte_s6

        '"How did I get here?"':
            # a111 # r1094
            jump morte_s20

        '"How do I get out of here?"' if morteLogic.r1095_condition():
            # a112 # r1095
            jump morte_s21

        'Ignore Morte and explore the room.':
            # a113 # r1096
            jump morte_dispose


# s32 # say1100
label morte_s32: # from 16.0 19.0 20.0
    nr '"You don„t remember *anything?* C“mon, that„s a load of tanar“ri dung. You serious?"'

    menu:
        '"Yes."':
            # a114 # r1101
            jump morte_s33

        '"Never mind. I had some other questions…"':
            # a115 # r1102
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a116 # r1103
            jump morte_dispose


# s33 # say1104
label morte_s33: # from 32.0
    nr '"By every god and his mother… well, chief, more than likely your memories just took a dive into your brain-box. With any luck, they„ll come up for air soon, trust me. Musta been some night you had. Better hope you didn“t hurt anybody or mix it up with the law… say, speaking of which, are you one of those Sensates into self-mutilation or did somebody give you those scars?"'

    menu:
        '"Sensates?"':
            # a117 # r1105
            jump morte_s12

        '"Scars?"':
            # a118 # r1106
            jump morte_s13

        '"I had some other questions…"':
            # a119 # r1107
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a120 # r1108
            jump morte_dispose


# s34 # say1117
label morte_s34: # from 13.0
    nr '"Looks like directions…" Morte clears his throat. "Let„s see. It starts with…"  NOTE: "I know you feel like you“ve been drinking a few kegs of Styx wash, but you need to center yourself. Among your possessions should be a JOURNAL that„ll shed some light on the dark of the matter. PHAROD should be able to fill you in on the rest of the chant, if he“s not in the dead-book already.  Don„t lose this scrap of flesh OR the journal or we“ll be up the Styx again, right? And trust me, whatever you do, DO NOT tell anyone WHO you are, WHAT happens to you, or WHERE you came from or you„ll find yourself on a short trip to the crematorium."'

    menu:
        '"No wonder my back hurts. Do you know someone named Pharod?"':
            # a121 # r1118
            jump morte_s36

        '"Did you see a journal with me when I was lying here?"':
            # a122 # r1119
            jump morte_s35

        '"Do you know how I can get out of here?"' if morteLogic.r1120_condition():
            # a123 # r1120
            jump morte_s21

        '"I had some other questions…"':
            # a124 # r1121
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a125 # r1122
            jump morte_dispose


# s35 # say1123
label morte_s35: # from 34.1 36.0
    nr '"No… you were stripped to the skins when you arrived here. „Sides, looks like you got enough of a journal written on your body."'

    menu:
        '"Do you know someone named Pharod?"':
            # a126 # r1124
            jump morte_s36

        '"How do I get out of here?"' if morteLogic.r1125_condition():
            # a127 # r1125
            jump morte_s21

        '"Never mind. I had some other questions…"':
            # a128 # r1126
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a129 # r1127
            jump morte_dispose


# s36 # say1128
label morte_s36: # from 34.0 35.0
    nr '"Nobody I know. Then again, I don„t know many people. Still, some berk“s got to know where to find this guy… once we get out of here, that is."'

    menu:
        '"Did I have a journal with me when I was lying here?"':
            # a130 # r1129
            jump morte_s35

        '"How do I get out of here?"' if morteLogic.r1130_condition():
            # a131 # r1130
            jump morte_s21

        '"Never mind. I had some other questions…"':
            # a132 # r1131
            jump morte_s31

        'Ignore Morte and explore the room.':
            # a133 # r1132
            jump morte_dispose


# s37 # say1818
label morte_s37: # -
    nr '"What good fortune! We probably lost what we„re looking for back at your kip, miss."'

    menu:
        '"Actually, I„m missing a journal."':
            # a134 # r1820
            jump harlotn_s2  # EXTERN

        '"Maybe you can help me find what I„m missing, miss."':
            # a135 # r1819
            jump harlotn_s3  # EXTERN

        '"I„m not missing anything, but I did have some questions…"':
            # a136 # r1821
            jump harlotn_s9  # EXTERN

        '"I must take my leave. Farewell."':
            # a137 # r1822
            jump harlotn_s11  # EXTERN


# s38 # say1844
label morte_s38: # -
    nr '"Chief, can you sport me some jink… it„s… eh… been a long time, it has."'

    menu:
        '"Uh… well, I suppose it can„t *hurt*…"':
            # a138 # r1845
            $ morteLogic.r1845_action()
            jump harlotn_s7  # EXTERN

        '"I„m not even going to ask how you intend to accomplish this."':
            # a139 # r1846
            $ morteLogic.r1846_action()
            jump harlotn_s7  # EXTERN

        '"Look… we really have to leave, Morte. Farewell, miss."':
            # a140 # r1847
            $ morteLogic.r1847_action()
            jump morte_dispose


# s39 # say2000
label morte_s39: # -
    nr '"She means money."'

    menu:
        '"Oh."':
            # a141 # r2001
            jump annah_s5  # EXTERN


# s40 # say2048
label morte_s40: # -
    nr '"It„s just as well neither you nor your tail are for sale. You couldn“t squeak out a living with „em, anyway."'

    menu:
        '"Uh…"':
            # a142 # r2049
            jump annah_s13  # EXTERN


# s41 # say2067
label morte_s41: # -
    nr '"She„s a tiefling, chief. They got some demon“s blood in „em, and that makes “em paranoid and defensive… nice tail, though. Shame it„s plastered on such an ugly body."'

    menu:
        '"Whoa, now…"':
            # a143 # r2068
            jump annah_s17  # EXTERN

        '"Hey, good one, Morte."':
            # a144 # r2069
            jump annah_s17  # EXTERN


# s42 # say2074
label morte_s42: # -
    nr '"Why don„t you *try* and split my jaw, chit?! All I“m hearing is a lotta chatter from some Hive trash! Throw a punch! I dare you! I„ll bite your legs off!"'

    menu:
        '"Enough!"':
            # a145 # r2076
            jump annah_s18  # EXTERN

        '"Enough! We„re leaving."':
            # a146 # r2075
            jump annah_s14  # EXTERN


# s43 # say2079
label morte_s43: # -
    nr '"Mimir„s a talking encyclopedia. That“s me, chief."'

    menu:
        '"Got it."':
            # a147 # r2080
            $ morteLogic.r2080_action()
            jump annah_s21  # EXTERN


# s44 # say2348
label morte_s44: # -
    nr '"Give it up, chief. Talking to a gith is like trying to make good with razorvine. Let„s go."'

    menu:
        '"Gith?"' if morteLogic.r9029_condition():
            # a148 # r9029
            $ morteLogic.r9029_action()
            jump morte_s135

        '"Gith?"' if morteLogic.r9030_condition():
            # a149 # r9030
            jump morte_s135

        '"I„m not ready to leave just yet. I“m going to ask him some questions first…"':
            # a150 # r9031
            jump gith_s7  # EXTERN

        'Leave the gith alone.':
            # a151 # r9032
            jump morte_dispose


# s45 # say2354
label morte_s45: # -
    nr '"I wouldn„t bother trying to talk square to ol“ Ignorance-is-Bliss here. Let„s get outta here, chief."'

    menu:
        '"I„m not ready to leave just yet. I“m going to ask him some questions first…"':
            # a152 # r9033
            jump gith_s7  # EXTERN

        'Leave the gith alone.':
            # a153 # r9034
            jump morte_dispose


# s46 # say2601
label morte_s46: # externs zf916_s2 zf916_s1 zf916_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a154 # r2603
            $ morteLogic.r2603_action()
            jump morte_s47

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a155 # r2602
            $ morteLogic.r2602_action()
            jump morte_s47


# s47 # say2604
label morte_s47: # from 46.0 46.1 121.1 121.2
    nr '"Wha- are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a156 # r2605
            $ morteLogic.r2605_action()
            jump morte_s49

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a157 # r2606
            jump morte_s48

        '"I think you and your imagination need some time away from each other."':
            # a158 # r2607
            jump morte_s48

        '"Whatever, Morte. Let„s go."':
            # a159 # r2608
            jump morte_dispose


# s48 # say2609
label morte_s48: # from 47.1 47.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a160 # r2610
            jump morte_dispose


# s49 # say2611
label morte_s49: # from 47.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a161 # r2612
            jump morte_dispose


# s50 # say2709
label morte_s50: # -
    nr '"What? What is it? Is this chit bothering you?"'

    jump test_s7  # EXTERN


# s51 # say2711
label morte_s51: # -
    nr '"I believe it. Maybe he„d better return to your main menu and leave me out of it."'

    jump test_s0  # EXTERN


# s52 # say2782
label morte_s52: # -
    nr '"Oh, for the powers„ sake! Piking dabus."'

    menu:
        '"What„s wrong?"':
            # a162 # r2783
            jump morte_s53


# s53 # say2788
label morte_s53: # from 52.0
    nr '"He„s a dabus. They “speak„ in rebuses, these annoying word puzzles. If *you* don“t know what he„s saying, then we better find a native or some other way to communicate with him… if we want to. An annoying bunch. My bet? They *can* speak, they just would rather piss everyone else off by trying to puzzle out what they“re saying."'

    menu:
        '"What„s a “dabus„?"':
            # a163 # r2791
            jump morte_s54


# s54 # say2789
label morte_s54: # from 53.0
    nr '"Chant is they„re janitors for the Lady of Pain. They float around breaking, fixing and patching up Sigil according to her whims. They“re worse than corpse flies." Morte sighs. "You can„t swat “em though, or the Lady„ll get… upset."'

    menu:
        '"„Lady of Pain“? Who„s that?"' if morteLogic.r6952_condition():
            # a164 # r6952
            $ morteLogic.r6952_action()
            jump morte_s113

        '"What can you tell me about the Lady of Pain?"' if morteLogic.r6953_condition():
            # a165 # r6953
            jump morte_s113

        '"I see."' if morteLogic.r6954_condition():
            # a166 # r6954
            jump dabus_s3  # EXTERN


# s55 # say3473
label morte_s55: # externs eivene_s3
    nr '"I think the Dustie chit might be a bit short of hearing, chief. Let„s lay off, shall we?"'

    menu:
        '"What„s wrong with her hands?"':
            # a167 # r3474
            $ morteLogic.j38205_s55_r3474_action()
            jump morte_s56

        'Tap the woman, get her attention.':
            # a168 # r3475
            jump eivene_s4  # EXTERN

        'Leave her alone.':
            # a169 # r3476
            jump morte_dispose


# s56 # say3477
label morte_s56: # from 55.0
    nr '"Eh… she„s a *tiefling,* chief. They got fiend blood in their veins, usually “cause some ancestor of theirs shared knickers with one demon or another. Makes some of „em addled in the head… and addled-looking, too."'

    menu:
        'Tap the woman, get her attention.':
            # a170 # r3478
            jump eivene_s4  # EXTERN

        'Leave her alone.':
            # a171 # r3479
            jump morte_dispose


# s57 # say3480
label morte_s57: # externs eivene_s20
    nr '"I think the Dustie chit might be a bit short of hearing, chief. Let„s lay off, shall we?"'

    menu:
        '"What„s wrong with her hands?"':
            # a172 # r3483
            $ morteLogic.j38205_s57_r3483_action()
            jump morte_s58

        'Leave.':
            # a173 # r3484
            jump morte_dispose


# s58 # say3481
label morte_s58: # from 57.0
    nr '"Eh… she„s a *tiefling,* chief. They got a dash of fiend blood running in their veins, usually “cause some ancestor of theirs shared knickers with some demon or another. Makes some of „em addled in the head… and usually addled-looking, too."'

    menu:
        'Leave.':
            # a174 # r3482
            jump morte_dispose


# s59 # say3487
label morte_s59: # externs eivene_s9
    nr '"Looks like you have a new friend, chief. You two need some time together, or…?"'

    menu:
        '"Stow it, Morte."':
            # a175 # r3488
            jump eivene_s11  # EXTERN

        'Keep playing zombie.':
            # a176 # r3489
            jump eivene_s11  # EXTERN

        'Push woman away.':
            # a177 # r3490
            jump eivene_s10  # EXTERN


# s60 # say3492
label morte_s60: # externs eivene_s13
    nr '"This may be the second time in my life I„m thankful I don“t have a nose."'

    jump eivene_s14  # EXTERN


# s61 # say3870
label morte_s61: # externs dust_s40
    nr '"Hey! Hey! What are you doing?"'

    menu:
        '"I was *going* to talk to this guy. Problem?"':
            # a178 # r3871
            $ morteLogic.r3871_action()
            jump morte_s62

        '"Nothing, let„s move on."':
            # a179 # r3872
            jump morte_dispose


# s62 # say3873
label morte_s62: # from 61.0
    nr '"If you„re going to rattle your bone-box with Dusties, leave me outta it. Me and them aren“t gonna be best bloods… and you shouldn„t try and be family with them either. They“d sooner torch or bury you than bend an ear. Don„t be barmy; let“s just get out of here."'

    menu:
        '"Thanks for the advice, but I„m *still* going to talk to this guy."':
            # a180 # r3874
            $ morteLogic.r3874_action()
            jump morte_s64

        '"Agreed, let„s move on."':
            # a181 # r3875
            jump morte_dispose


# s63 # say3876
label morte_s63: # externs dust_s40
    nr '"Hey! Are you deaf? What are you doing?"'

    menu:
        '"Look, I„m going to talk to this guy. Problem?"':
            # a182 # r3877
            $ morteLogic.r3877_action()
            jump morte_s64

        '"Nothing, let„s move on."':
            # a183 # r3878
            jump morte_dispose


# s64 # say3879
label morte_s64: # from 62.0 63.0
    nr '"*Don„t* listen to me then - it“s your funeral."'

    menu:
        '"Yeah, and you can play the dirge. For now, be quiet."':
            # a184 # r3880
            jump dust_s3  # EXTERN

        '"Nah, you„re right. Forget it. Let“s move on."':
            # a185 # r3881
            jump morte_dispose


# s65 # say3964
label morte_s65: # -
    nr '"Whoa, chief. That„s vandalism. Those bolts are probably the only thing holding that bag of bones together. Necromancy only goes so far with these old fellas, y“know?"'

    menu:
        '"So?"':
            # a186 # r3965
            $ morteLogic.r3965_action()
            jump morte_s66

        '"Oh… I didn„t want to cause any permanent damage."':
            # a187 # r3966
            $ morteLogic.r3966_action()
            jump morte_s66

        '"All right then, never mind. Maybe some other time."':
            # a188 # r3967
            jump morte_s66


# s66 # say3968
label morte_s66: # from 65.0 65.1 65.2
    nr '"Oh, it„s not a problem." Morte does a strange bobbing motion that you think might be a shrug. "Just wasn“t sure if you knew that or not. By all means, go ahead."'

    menu:
        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r3969_condition():
            # a189 # r3969
            jump skelw_s4  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r3970_condition():
            # a190 # r3970
            jump skelw_s5  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r3971_condition():
            # a191 # r3971
            jump skelw_s6  # EXTERN

        '"Never mind. Maybe some other time."' if morteLogic.r3972_condition():
            # a192 # r3972
            $ morteLogic.r3972_action()
            jump morte_s67

        '"Never mind. Maybe some other time."' if morteLogic.r3973_condition():
            # a193 # r3973
            jump morte_dispose


# s67 # say3974
label morte_s67: # from 66.3
    nr '"Hmmmm. Wonder if this graybeard would mind if *I* borrowed his body…"'

    menu:
        '"Graybeard?"':
            # a194 # r3975
            jump morte_s68

        '"I don„t think he“s in any position to object."':
            # a195 # r3976
            jump morte_s69

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a196 # r3977
            jump morte_s70


# s68 # say3978
label morte_s68: # from 67.0
    nr '"Graybeard… you know, geezer, old feller, yellow dog… old."'

    menu:
        '"Well, I don„t think he“s in any position to object. Why not take his body?"':
            # a197 # r3979
            jump morte_s69

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a198 # r3980
            jump morte_s70


# s69 # say3981
label morte_s69: # from 67.1 68.0
    nr 'Morte studies the skeleton for a moment, then shakes his head. "Nah… I„d need a fresher one than this. And something with a little more dignity… this one“s all creaky and fractured."'

    menu:
        '"And you„re not?"':
            # a199 # r3982
            jump morte_s70

        '"All right then. Let„s go."':
            # a200 # r3983
            jump morte_dispose


# s70 # say3984
label morte_s70: # from 67.2 68.1 69.0 127.0
    nr '"Oh, you„re a sackfull of laughs." Morte glares at you. "Besides, YOU“RE one to talk, berk. Mirrors beg for mercy when you„re around."'

    menu:
        '"Oh, yeah? At least *I* have all my parts."':
            # a201 # r3985
            jump morte_s71

        '"Let„s go."':
            # a202 # r3986
            jump morte_dispose


# s71 # say3987
label morte_s71: # from 70.0
    nr 'Morte snorts. You„re not quite sure how he managed it without lungs.'

    menu:
        '"Let me tell you, Morte, there„s nothing more satisfying than walking around, swinging your arms, breathing the crisp air through the lungs. It“s GREAT to have a body."':
            # a203 # r3988
            $ morteLogic.r3988_action()
            jump morte_s72

        '"Let„s go."':
            # a204 # r3989
            jump morte_dispose


# s72 # say3990
label morte_s72: # from 71.0
    nr '"Helping you escape the preparation room has now been added to my growing list of regrets." Morte snorts again. "I should have let you rot… more, that is."'

    menu:
        '"Glad you feel that way. Let„s go."':
            # a205 # r3991
            jump morte_dispose


# s73 # say4018
label morte_s73: # externs giantsk_s9 giantsk_s8 giantsk_s7 giantsk_s6 giantsk_s5 giantsk_s4 giantsk_s1 giantsk_s0
    nr 'Morte grins.'

    menu:
        '"Uh, is that a yes, or…?"':
            # a206 # r4019
            jump morte_s74


# s74 # say4020
label morte_s74: # from 73.0
    nr '"Oh… sorry." Morte floats up to the head of the skeleton, stares at it, then floats back down, studying the armor and the blade as he descends. "Oh, yes. Yes, yes, I think this„ll do."'

    menu:
        '"All right then… give me a second to pry the head off this thing."' if morteLogic.r4023_condition():
            # a207 # r4023
            jump giantsk_s2  # EXTERN

        '"All right then… give me a second to pry the head off this thing."' if morteLogic.r4024_condition():
            # a208 # r4024
            jump giantsk_s3  # EXTERN

        '"I don„t know. This thing looks like more than you can handle."':
            # a209 # r4025
            jump morte_s75

        '"I think we better just leave it alone."':
            # a210 # r4026
            jump morte_s75


# s75 # say4021
label morte_s75: # from 74.2 74.3
    nr '"Then what in Baator did you ASK me if I wanted it for, then? Practicing your cruelty skills?" Morte bobs indignantly. "And after all I„ve done for you…"'

    menu:
        '"All right then… give me a second to pry the head off this thing."' if morteLogic.r4027_condition():
            # a211 # r4027
            jump giantsk_s2  # EXTERN

        '"All right then… give me a second to pry the head off this thing."' if morteLogic.r4028_condition():
            # a212 # r4028
            jump giantsk_s3  # EXTERN

        '"I was thinking of your safety, Morte. I„m worried attaching your head to this thing would hurt you somehow."':
            # a213 # r4029
            $ morteLogic.r4029_action()
            jump morte_s76

        '"I still think we better just leave it alone. Let„s get out of here."':
            # a214 # r4030
            jump morte_dispose


# s76 # say4022
label morte_s76: # from 75.2
    nr 'Morte stares at you for a moment. "What, did we get MARRIED at some point? What„s all this “I don„t want you to get hurt“ wash?" Morte glares at you. "If you REALLY cared, you„d find a way to get my head on that giant skeleton“s body."'

    menu:
        '"All right then… give me a second to pry the head off this thing."' if morteLogic.r4031_condition():
            # a215 # r4031
            jump giantsk_s2  # EXTERN

        '"All right then… give me a second to pry the head off this thing."' if morteLogic.r4032_condition():
            # a216 # r4032
            jump giantsk_s3  # EXTERN

        '"Sorry, I don„t care about you that much. Let“s go."':
            # a217 # r4033
            jump morte_dispose

        '"I say just leave it alone. Now let„s get out of here."' if morteLogic.r4034_condition():
            # a218 # r4034
            jump morte_dispose


# s77 # say4134
label morte_s77: # -
    nr '"Hey! Hey! What are you doing?"'

    menu:
        '"I was *going* to talk to this guy. Problem?"':
            # a219 # r4144
            $ morteLogic.r4144_action()
            jump morte_s78

        '"Nothing, let„s move on."':
            # a220 # r4145
            $ morteLogic.r4145_action()
            jump morte_dispose


# s78 # say4135
label morte_s78: # from 77.0
    nr '"If you„re going to rattle your bone-box with Dusties, leave me outta it. Me and them aren“t gonna be best bloods… and you shouldn„t try and be family with them either. They“d sooner torch or bury you than bend an ear. Don„t be barmy; let“s just get out of here."'

    menu:
        '"Thanks for the advice, but I„m *still* going to talk to this guy."':
            # a221 # r4142
            $ morteLogic.r4142_action()
            jump morte_s80

        '"Agreed, let„s move on."':
            # a222 # r4143
            $ morteLogic.r4143_action()
            jump morte_dispose


# s79 # say4136
label morte_s79: # -
    nr '"Hey! Are you deaf? What are you doing?"'

    menu:
        '"Look, I„m going to talk to this guy. Problem?"':
            # a223 # r4140
            $ morteLogic.r4140_action()
            jump morte_s80

        '"Nothing, let„s move on."':
            # a224 # r4141
            jump morte_dispose


# s80 # say4137
label morte_s80: # from 78.0 79.0
    nr '"*Don„t* listen to me then - it“s your funeral."'

    menu:
        '"Yeah, and you can play the dirge. For now, be quiet."':
            # a225 # r4138
            jump dustgu_s12  # EXTERN

        '"Nah, you„re right. Forget it. Let“s move on."':
            # a226 # r4139
            jump morte_dispose


# s81 # say4338
label morte_s81: # externs dustfem_s40
    nr '"Hey! Hey! What are you doing?"'

    menu:
        '"I was *going* to talk to this lady. Problem?"':
            # a227 # r4339
            $ morteLogic.r4339_action()
            jump morte_s82

        '"Nothing, let„s move on."':
            # a228 # r4340
            jump morte_dispose


# s82 # say4341
label morte_s82: # from 81.0
    nr '"If you„re going to rattle your bone-box with Dusties, leave me outta it. Me and them aren“t gonna be best bloods… and you shouldn„t try and be family with them either. They“d sooner torch or bury you than bend an ear. Don„t be barmy; let“s just get out of here."'

    menu:
        '"Thanks for the advice, but I„m *still* going to talk to this lady."':
            # a229 # r4342
            $ morteLogic.r4342_action()
            jump morte_s84

        '"Agreed, let„s move on."':
            # a230 # r4343
            jump morte_dispose


# s83 # say4344
label morte_s83: # externs dustfem_s40
    nr '"Hey! Are you deaf? What are you doing?"'

    menu:
        '"Look, I„m going to talk to this lady. Problem?"':
            # a231 # r4345
            $ morteLogic.r4345_action()
            jump morte_s84

        '"Nothing, let„s move on."':
            # a232 # r4346
            jump morte_dispose


# s84 # say4347
label morte_s84: # from 82.0 83.0
    nr '"*Don„t* listen to me then - it“s your funeral."'

    menu:
        '"Yeah, and you can play the dirge. For now, be quiet."':
            # a233 # r4348
            jump dustfem_s3  # EXTERN

        '"Nah, you„re right. Forget it. Let“s move on."':
            # a234 # r4349
            jump morte_dispose


# s85 # say4675
label morte_s85: # externs vaxis_s9
    nr 'Morte breaks in, whispering. "By the powers… this berk„s an *Anarchist.* Posing as a zombie“s got to be a first for those addled sods."'

    menu:
        '"Anarchist?"':
            # a235 # r4676
            $ morteLogic.j64512_s85_r4676_action()
            jump morte_s86


# s86 # say4677
label morte_s86: # from 85.0
    nr '"Anarchists… they„re a faction…" Morte looks like he“s about to let loose a torrent of insults, then notices the zombie staring at you both, listening intently. "…they, uh, want to *liberate* everyone from the chains of government. Tear down the old, establish a new order with no order at all."'

    menu:
        'Truth: "That seems like a noble pursuit. Order could use a good tearing down every once in a while."':
            # a236 # r4678
            $ morteLogic.r4678_action()
            jump vaxis_s11  # EXTERN

        'Lie: "That seems like a noble pursuit. Any Anarchist dedicated to such a lofty goal is *definitely* a friend of mine."':
            # a237 # r4679
            $ morteLogic.r4679_action()
            jump vaxis_s11  # EXTERN

        '"That seems pretty… contradictory."':
            # a238 # r4680
            jump vaxis_s10  # EXTERN

        '"That has to be one of the most stupid things I„ve ever heard."':
            # a239 # r4681
            jump vaxis_s10  # EXTERN

        'Truth: "That doesn„t seem constructive to anyone. Some order, some law is always necessary for progress to be made."':
            # a240 # r4682
            $ morteLogic.r4682_action()
            jump vaxis_s10  # EXTERN


# s87 # say4683
label morte_s87: # externs vaxis_s13
    nr 'Whispers: "He„s wondering if you“re crazy, loco, a cackle, addled… and so am I. Now stow the „I woke up from the dead“ talk, willya?! Ye„re embarrassing me."'

    menu:
        '"I„m embarrassing YOU?"':
            # a241 # r4684
            jump morte_s88

        '"I just wanted to know what this… corpse… was talking about. All right?"':
            # a242 # r4685
            jump morte_s88

        '"It„s not my fault that no one in this crazy… "barmy"… place speaks like a normal person… or LOOKS like one."' if morteLogic.r4686_condition():
            # a243 # r4686
            jump morte_s88

        '"Look, I„m NOT going to lie to this guy. It“s better we be up front with him."':
            # a244 # r4687
            $ morteLogic.r4687_action()
            jump morte_s88


# s88 # say4688
label morte_s88: # from 87.0 87.1 87.2 87.3
    nr 'Morte sighs. "Look, chief… you gotta get your wits about you. You can„t go around telling everybody the TRUTH all the time. We can“t have every cony-catcher we meet taking us for marks, right?"'

    menu:
        '"Cony-Catcher?" "Marks?" "What th- oh, never mind."':
            # a245 # r4689
            jump vaxis_s15  # EXTERN

        '"Stow it, Morte."':
            # a246 # r4690
            jump vaxis_s15  # EXTERN

        '"I„ll… keep that in mind. I want to speak to this “zombie„ some more."':
            # a247 # r4691
            jump vaxis_s15  # EXTERN


# s89 # say4692
label morte_s89: # externs vaxis_s23
    nr '"Hold on…" Morte sounds surprised. "This berk must be an *Anarchist.* Heh. Posing as a zombie„s got to be a first for those addled sods."'

    menu:
        '"Anarchist?"':
            # a248 # r4693
            $ morteLogic.j64512_s89_r4693_action()
            jump morte_s90


# s90 # say4694
label morte_s90: # from 89.0
    nr '"Anarchists… they„re a faction that wastes their time peeping on authority figures and looking for ways to tear down anything that stinks of order or control." Morte snorts. "The Anarchists think every berk across the planes“ll be free and happy to seek out their own „truth“ once the establishment is burned to the ground. They want to establish a new order - no order at all."'

    menu:
        'Truth: "That seems like a noble pursuit. Order could use a good tearing down every once in a while."':
            # a249 # r4695
            $ morteLogic.r4695_action()
            jump vaxis_s71  # EXTERN

        '"That seems pretty… contradictory."':
            # a250 # r4696
            jump vaxis_s71  # EXTERN

        '"That has to be one of the most stupid things I„ve ever heard."':
            # a251 # r4697
            jump vaxis_s71  # EXTERN

        '"Whatever."':
            # a252 # r4698
            jump vaxis_s71  # EXTERN

        'Truth: "That doesn„t seem constructive to anyone. Some order, some law is always necessary for progress to be made."':
            # a253 # r4699
            $ morteLogic.r4699_action()
            jump vaxis_s71  # EXTERN


# s91 # say4700
label morte_s91: # externs vaxis_s46
    nr '"He„s saying this Pharod berk has been selling a lot of deaders… corpses… to the Dustmen. That“s what Collectors do: they gather dead bodies and sell them to the Dustmen. Sounds like this Pharod„s been selling so many deaders that the Dusties think he“s been putting Hivers in the dead-book before their hour„s up… y“know, killing people."'

    menu:
        '"I see. There was something else I wanted to know…"':
            # a254 # r4701
            jump vaxis_s43  # EXTERN

        '"This Pharod sounds like a saint. I may have some questions later. Don„t go anywhere."':
            # a255 # r4702
            jump morte_dispose


# s92 # say4703
label morte_s92: # externs vaxis_s47
    nr '"He wants to know if somebody robbed you. Probably what happened."'

    menu:
        '"I see. There was something else I wanted to know…"':
            # a256 # r4704
            jump vaxis_s43  # EXTERN

        '"Yeah, I„m looking forward to finding this thief. Look, I may have some questions later. Don“t go anywhere."':
            # a257 # r4705
            jump morte_dispose


# s93 # say4706
label morte_s93: # externs vaxis_s39
    nr '"Yeah, *they„re* the stupid ones all right."'

    jump vaxis_s61  # EXTERN


# s94 # say4708
label morte_s94: # externs vaxis_s65
    nr '"I can„t believe you“re going through with this. How barmy ARE you?"'

    menu:
        '"Pretty barmy, I suppose…"' if morteLogic.r64535_condition():
            # a258 # r64535
            $ morteLogic.r64535_action()
            jump vaxis_s66  # EXTERN

        '"Pretty barmy, I suppose…"' if morteLogic.r64534_condition():
            # a259 # r64534
            $ morteLogic.r64534_action()
            jump vaxis_s66  # EXTERN


# s95 # say4710
label morte_s95: # externs vaxis_s66
    nr '"Can„t you make the stitches on his lips any tighter?"'

    menu:
        '"Stuwh vit, Murte-"':
            # a260 # r4711
            jump vaxis_s67  # EXTERN

        '"Mmm-HMMPH!"':
            # a261 # r4712
            jump vaxis_s67  # EXTERN


# s96 # say5029
label morte_s96: # -
    nr '"Hey! Hey! What are you doing?"'

    menu:
        '"I was *going* to talk to this guy. Problem?"':
            # a262 # r5030
            $ morteLogic.r5030_action()
            jump morte_s97

        '"Nothing, let„s move on."':
            # a263 # r5031
            jump morte_dispose


# s97 # say5032
label morte_s97: # from 96.0
    nr '"If you„re going to rattle your bone-box with Dusties, leave me outta it. Me and them aren“t gonna be best bloods… and you shouldn„t try and be family with them either. They“d sooner torch or bury you than bend an ear. Don„t be barmy; let“s just get out of here."'

    menu:
        '"Thanks for the advice, but I„m *still* going to talk to this guy."':
            # a264 # r5033
            $ morteLogic.r5033_action()
            jump morte_s99

        '"Agreed, let„s move on."':
            # a265 # r5034
            jump morte_dispose


# s98 # say5035
label morte_s98: # -
    nr '"Hey! Are you deaf? What are you doing?"'

    menu:
        '"Look, I„m going to talk to this guy. Problem?"':
            # a266 # r5036
            $ morteLogic.r5036_action()
            jump morte_s99

        '"Nothing, let„s move on."':
            # a267 # r5037
            jump morte_dispose


# s99 # say5038
label morte_s99: # from 97.0 98.0
    nr '"*Don„t* listen to me then - it“s your funeral."'

    menu:
        '"Yeah, and you can play the dirge. For now, be quiet."':
            # a268 # r5039
            jump soego_s3  # EXTERN

        '"Nah, you„re right. Forget it. Let“s move on."':
            # a269 # r5040
            jump morte_dispose


# s100 # say5041
label morte_s100: # externs soego_s20
    nr '"What are you *doing?!* If you„re gonna kill him, do it!"'

    menu:
        '"I *did!* I snapped his neck! He shouldn„t even be moving!"':
            # a270 # r5042
            jump soego_s21  # EXTERN


# s101 # say5043
label morte_s101: # externs soego_s10
    nr '"At least he *can* walk." Morte snorts. "Floating around loses its thrill as soon as you want to kick somebody."'

    jump soego_s11  # EXTERN


# s102 # say5049
label morte_s102: # externs dhall_s5
    nr '"Whoa, chief! What are you doing?!"'

    menu:
        '"I was going to speak with this scribe. He might know something about how I got here."':
            # a271 # r5050
            jump morte_s103


# s103 # say5052
label morte_s103: # from 102.0
    nr '"Look, rattling your bone-box with Dusties should be the LAST thing-"'

    jump dhall_s0  # EXTERN


# s104 # say5053
label morte_s104: # externs dhall_s0
    nr '"And we *especially* shouldn„t be swapping the chant with sick Dusties. C“mon, let„s leave. The quicker we give this place the laugh, the bet-"'

    jump dhall_s1  # EXTERN


# s105 # say6071
label morte_s105: # externs deionarra_s8 deionarra_s48 deionarra_s26 deionarra_s19 deionarra_s0
    nr '"You back with me, chief? You kind of drifted out on me there."'

    menu:
        '"No, I„m fine. Do you know who that spirit was?"':
            # a272 # r6075
            $ morteLogic.r6075_action()
            jump morte_s106

        '"I„m all right. Let“s move on."':
            # a273 # r6076
            jump morte_dispose


# s106 # say6072
label morte_s106: # from 105.0
    nr '"Eh? Spirit?"'

    menu:
        '"That spectre I was talking to. The woman."':
            # a274 # r6077
            jump morte_s107


# s107 # say6073
label morte_s107: # from 106.0
    nr '"You were rattling your bone-box with some woman? Where?" Morte looks around, excited. "What did she look like?"'

    menu:
        '"She was right on top of the bier. Didn„t you see her?"':
            # a275 # r6078
            jump morte_s108


# s108 # say6074
label morte_s108: # from 107.0
    nr '"Eh… no, you just kind of drifted out for a bit there, just stood there, statue-like. I was a little worried you„d gone addled on me again."'

    menu:
        '"No, I„m fine… I think. Let“s move on."':
            # a276 # r6079
            jump morte_dispose


# s109 # say6324
label morte_s109: # -
    nr '"Reminds me of a job I once had." He seems embarrassed. "Well, I mean… without the arms."'

    menu:
        'Examine the corpse.' if morteLogic.r6325_condition():
            # a277 # r6325
            jump post_s3  # EXTERN

        'Examine the corpse.' if morteLogic.r6326_condition():
            # a278 # r6326
            jump post_s4  # EXTERN

        '"Hmmm. I wonder if this would work with the other notices…"' if morteLogic.r6327_condition():
            # a279 # r6327
            jump post_s5  # EXTERN

        '"Hmmmm. I wonder if this would work with the other notices…"' if morteLogic.r6328_condition():
            # a280 # r6328
            jump post_s5  # EXTERN

        'Examine the other notices.' if morteLogic.r6329_condition():
            # a281 # r6329
            jump post_s5  # EXTERN

        'Use your Stories-Bones-Tell power on the corpse.' if morteLogic.r6330_condition():
            # a282 # r6330
            jump post_s2  # EXTERN

        'Leave the corpse in peace.':
            # a283 # r6331
            jump morte_dispose


# s110 # say6609
label morte_s110: # externs s42_s3 s42_s0
    nr '"Whoa, chief. That„s vandalism. Those bolts are probably the only thing holding that bag of bones together. Necromancy only goes so far with these old fellas, y“know?"'

    menu:
        '"So?"':
            # a284 # r6658
            $ morteLogic.r6658_action()
            jump s42_s1  # EXTERN

        '"Oh… I didn„t want to cause any permanent damage."':
            # a285 # r6659
            $ morteLogic.r6659_action()
            jump s42_s1  # EXTERN

        '"All right then, never mind. Maybe some other time."':
            # a286 # r6660
            jump s42_s1  # EXTERN


# s111 # say6610
label morte_s111: # externs s42_s3 s42_s2 s42_s0
    nr '"Hmmmm. Wonder if this graybeard would mind if *I* borrowed his body…"'

    menu:
        '"„Graybeard“?"':
            # a287 # r6661
            jump s42_s1  # EXTERN

        '"I don„t think he“s in any position to object."':
            # a288 # r6662
            jump s42_s1  # EXTERN

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a289 # r6663
            jump s42_s1  # EXTERN


# s112 # say6611
label morte_s112: # externs s42_s13
    nr '"Would you cut that out? His arms are gonna snap off."'

    menu:
        'Cross your arms over your chest.' if morteLogic.r6664_condition():
            # a290 # r6664
            jump s42_s4  # EXTERN

        'Mimic the skeleton„s gesture… see what happens.' if morteLogic.r6665_condition():
            # a291 # r6665
            jump s42_s9  # EXTERN

        '"Uh…"':
            # a292 # r6666
            jump s42_s10  # EXTERN

        'Leave the skeleton alone.':
            # a293 # r6667
            jump morte_dispose


# s113 # say6771
label morte_s113: # from 54.0 54.1
    nr '"She runs this city. You„ll know if you see her: She“s got these blades around her face, she„s about the size of a giant, and she floats off the ground, just like these guys." Morte nods at the dabus, who is looking at you both. "Nobody knows much about her… she doesn“t speak much. All you need to know is that you don„t want to make her angry. If you see her, my advice: run."'

    menu:
        '"I see."':
            # a294 # r2784
            jump dabus_s3  # EXTERN


# s114 # say6784
label morte_s114: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator? Find a Sigil native."'

    menu:
        '"I see."':
            # a295 # r6955
            jump dabus_s3  # EXTERN


# s115 # say6786
label morte_s115: # -
    nr '"Oh, they *have* names. I„m sure of it."'

    jump annah_s43  # EXTERN


# s116 # say6790
label morte_s116: # -
    nr '"So *you* say, fiendling."'

    menu:
        '"Stow it, Morte - can you ask him some other questions, Annah?"':
            # a296 # r6956
            jump annah_s40  # EXTERN

        '"Forget it. Let„s just go."':
            # a297 # r6957
            $ morteLogic.r6957_action()
            jump dabus_s6  # EXTERN


# s117 # say6794
label morte_s117: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator? Get the fiendling chit here to do it." He nods at Annah. "She“s a Hive native."'

    menu:
        '"Maybe I will…"':
            # a298 # r6958
            jump dabus_s3  # EXTERN


# s118 # say6797
label morte_s118: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator?" He nods at Dak“kon. "Get holier-than-thou-and-twice-as-silent here to translate."'

    menu:
        '"Maybe I will…"':
            # a299 # r6959
            jump dabus_s3  # EXTERN


# s119 # say6800
label morte_s119: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator? Get the tanar“ri to do it." He nods at Fall-from-Grace. "She„s probably had to trade the chant with these guys all the time."'

    menu:
        '"Maybe I will…"':
            # a300 # r6960
            jump dabus_s3  # EXTERN


# s120 # say7040
label morte_s120: # -
    nr 'As you turn away, you notice Morte staring at you. "Eh? Eh?"'

    menu:
        '"What is it?"':
            # a301 # r7055
            jump morte_s121


# s121 # say7041
label morte_s121: # from 120.0
    nr '"Did you *see* the way that cadaverous beauty was staring at me?" Morte„s teeth chatter, as if in anticipation. "She was looking for some lucky cutter to thaw her coffin."'

    menu:
        '"*Please* don„t start this again."' if morteLogic.r7056_condition():
            # a302 # r7056
            $ morteLogic.r7056_action()
            jump morte_s122

        '"What are you *talking* about?"' if morteLogic.r7057_condition():
            # a303 # r7057
            $ morteLogic.r7057_action()
            jump morte_s47

        '"What, that blank-eyed beyond-the-grave stare?"' if morteLogic.r7058_condition():
            # a304 # r7058
            $ morteLogic.r7058_action()
            jump morte_s47


# s122 # say7042
label morte_s122: # from 121.0
    nr 'Morte ignores you and becomes thoughtful. "I don„t really mind the attention, actually… it“s just that I like to be seen as something more than just a skull, y„know? I have feelings that go beyond my base animal instincts. I want courtship, not some fortnight fling around the mausoleum."'

    menu:
        '"Keep it up, and *I„m* going to fling you somewhere."':
            # a305 # r7059
            jump morte_s123

        '"Morte, you *are* a skull. Nobody can help but see you as a skull. Accept it."':
            # a306 # r7060
            jump morte_s124

        '"I understand. Now let„s get out of here, all right?"':
            # a307 # r7061
            jump morte_dispose


# s123 # say7043
label morte_s123: # from 122.0
    nr '"Whoa, chief…" Morte backs slightly out of arm„s reach. "Women, they appreciate lovers, not fighters."'

    menu:
        '"You are perhaps the *last* person I would ever take romantic advice from."':
            # a308 # r7062
            jump morte_s126

        '"Whatever, Morte. Let„s go."':
            # a309 # r7063
            jump morte_dispose


# s124 # say7044
label morte_s124: # from 122.1
    nr '"Yeah, well, I may be just a skull, but I„ve got a big heart."'

    menu:
        '"Actually, you *don„t* have one of those."':
            # a310 # r7064
            jump morte_s125

        '"Whatever, Morte. Let„s go."':
            # a311 # r7065
            jump morte_dispose


# s125 # say7045
label morte_s125: # from 124.0
    nr '"What, were you dumped into my life to spit on my dreams and aspirations?! Fine, be that way, then. I don„t have a heart, but I *do* have a soul."'

    menu:
        '"Well, actually, I„m betting you d… forget it. Let“s go."':
            # a312 # r7066
            jump morte_dispose

        '"Whatever, Morte. Let„s go."':
            # a313 # r7067
            jump morte_dispose


# s126 # say7046
label morte_s126: # from 123.0
    nr '"If you had half the sense you died with, you„d know better." Morte“s voice rises to new heights of smugness. "When it comes to the annals of love, I wrote „em all."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a314 # r7068
            jump morte_dispose


# s127 # say7071
label morte_s127: # -
    nr 'Morte studies the skeleton for a moment, then shakes his head. "Nah… this one„s too clean… there“s barely any meat left on him at all. Plus, I„d never be able to get all that whitewash off the bones."'

    menu:
        '"I don„t know if it“s „too clean“… you could stand to learn a thing or two about cleanliness."':
            # a315 # r7076
            jump morte_s70

        '"All right then. Let„s go."':
            # a316 # r7077
            jump morte_dispose


# s128 # say7130
label morte_s128: # -
    nr '"Yeah!"'

    jump hivef1_s8  # EXTERN


# s129 # say7187
label morte_s129: # -
    nr '"Mimir„s a talking encyclopedia. That“s me, chief."'

    menu:
        '"I see. Well, don„t sweat it, Morte. From the looks of her, I“m probably saving you from dying twice."':
            # a317 # r7483
            $ morteLogic.r7483_action()
            jump harlotn_s8  # EXTERN

        '"Let„s just get out of here. Farewell, miss."':
            # a318 # r7484
            jump morte_dispose


# s130 # say7188
label morte_s130: # -
    nr 'Morte stares, hypnotized, as the harlot lets loose a stream of obscenities. At the end of the verbal avalanche, Morte is silent for a moment, then turns to you. "Wow, chief. Got a few more taunts for the ol„ arsenal." He turns back to the harlot, who is catching her breath. "I“m also in love."~ [MRT387]'

    menu:
        'Leave.':
            # a319 # r7485
            $ morteLogic.r7485_action()
            jump morte_dispose


# s131 # say7775
label morte_s131: # -
    nr '"Whoa, chief." Morte cuts in before you can speak to the creature. "Bar that. You don„t want to be rattling your bone-box with any fiend on the street. Leave be."'

    menu:
        '"I wanted to ask it some questions…"':
            # a320 # r7776
            jump morte_s132

        'Leave the creature alone.':
            # a321 # r7777
            jump morte_dispose


# s132 # say7778
label morte_s132: # from 131.0
    nr '"No you don„t." Morte glances at the creature, then turns back to you and lowers his voice to a whisper. "They“re touchy. Let„s just go."'

    menu:
        '"I„ll risk it."':
            # a322 # r7779
            jump bishab_s11  # EXTERN

        'Leave the creature alone.':
            # a323 # r7780
            jump morte_dispose


# s133 # say7805
label morte_s133: # -
    nr 'Morte sighs as you are about to speak to the creature.'

    menu:
        '"Yes?"':
            # a324 # r7806
            jump morte_s134


# s134 # say7807
label morte_s134: # from 133.0
    nr '"Oh, nothing… life is the best teacher, you know." He nods at the creature. "Go ahead."'

    menu:
        '"I will."':
            # a325 # r7808
            jump bishab_s11  # EXTERN

        '"All right, never mind. Let„s go."':
            # a326 # r7809
            jump morte_dispose


# s135 # say2349
label morte_s135: # from 44.0 44.1
    nr '"Yeah, a „gith“…" Morte glances at the gith, who is still staring at you. "We„ll talk about it some other time."'

    menu:
        '"I„m not ready to leave just yet. I“m going to ask him some questions first…"':
            # a327 # r9035
            jump gith_s7  # EXTERN

        'Leave the gith alone.':
            # a328 # r9036
            jump morte_dispose


# s136 # say9860
label morte_s136: # -
    nr '"C„mon, chief… you“ll kill the sod before you manage to wake him!"'

    menu:
        '"You„re right, Morte - let“s go."':
            # a329 # r9882
            jump morte_dispose


# s137 # say11946
label morte_s137: # -
    nr 'Morte floats over. "What„s the chant, chief?"'

    menu:
        '"You see these teeth?"':
            # a330 # r11974
            jump morte_s138

        '"Nothing, never mind."':
            # a331 # r11975
            jump morte_dispose


# s138 # say11947
label morte_s138: # from 137.0
    nr 'Morte glances at your palm. "Yechhhh." He seems morbidly fascinated. "Ugly little berks, aren„t they?"'

    jump morte_dispose


# s139 # say11948
label morte_s139: # -
    nr '"Bar that." Morte shudders. "Would you want those things in *you?*"'

    menu:
        '"Come on, Morte, they seem to like you. Look at the way they„re staring at you."':
            # a332 # r11976
            jump morte_s140

        'Grab Morte, shove the teeth in his mouth.':
            # a333 # r11977
            $ morteLogic.r11977_action()
            jump morte_s141

        '"Never mind, then."':
            # a334 # r11978
            jump morte_dispose


# s140 # say11949
label morte_s140: # from 139.0
    nr '"Those little pikers better not come anywhere near me, or I„ll…" Morte pauses. "You know, I have no idea how to threaten teeth."'

    menu:
        'Examine the teeth.':
            # a335 # r11979
            jump morte_dispose

        'Grab Morte, shove the teeth in his mouth.':
            # a336 # r11980
            $ morteLogic.r11980_action()
            jump morte_s141

        '"Never mind, then."':
            # a337 # r11981
            jump morte_dispose


# s141 # say11950
label morte_s141: # from 139.1 140.1
    nr 'The struggle is brief. You catch Morte in a headlock - the only move you can really do - and as he attempts to bite his way free, the teeth hop out of your hand and swarm onto his jaw. Morte howls as Ingress„ teeth promptly rip out his old teeth and then jump into the exposed cavities.'

    menu:
        '"There, Morte. That wasn„t so bad, was it?"':
            # a338 # r11982
            $ morteLogic.r11982_action()
            jump morte_s143


# s142 # say11951
label morte_s142: # from 149.0
    nr 'Morte continues howling. The teeth settle in, adjusting themselves and planting their roots with a horrid drilling noise.'

    menu:
        '"Morte? You okay?"':
            # a339 # r11983
            $ morteLogic.r11983_action()
            jump morte_s143


# s143 # say11952
label morte_s143: # from 141.0 142.0
    nr 'Morte doesn„t seem to hear you… he keeps howling and howling, then suddenly starts smashing his teeth together. He gets in three powerful bites before the upper and lower teeth lock together and prevent him from opening his mouth.'

    menu:
        '"Wow."':
            # a340 # r11984
            jump morte_s144


# s144 # say11953
label morte_s144: # from 143.0
    nr 'Morte mumbles something at you, his eyes wide.'

    menu:
        '"So… you like them?"' if morteLogic.r11985_condition():
            # a341 # r11985
            jump morte_s145

        '"Morte, are you okay?"' if morteLogic.r11986_condition():
            # a342 # r11986
            jump morte_s150


# s145 # say11954
label morte_s145: # from 144.0
    nr 'The teeth suddenly unlock, and Morte takes a deep breath. "I will *kill* you for this," he says. "That was a dirty thing to do."'

    menu:
        '"How do they feel?"':
            # a343 # r11987
            jump morte_s146


# s146 # say11955
label morte_s146: # from 145.0 150.0
    nr 'Morte moves his jaw around experimentally. "Odd. But not bad." Suddenly, the teeth extend into fangs. "Ooooooh! They change!" They shrink down to normal, then fangs again, then normal… "I think I„m going to like these."'

    menu:
        '"I„m sorry, Morte. I didn“t mean you any harm."' if morteLogic.r11988_condition():
            # a344 # r11988
            jump morte_s147

        '"See? Wasn„t I right?"' if morteLogic.r11989_condition():
            # a345 # r11989
            jump morte_s147


# s147 # say11956
label morte_s147: # from 146.0 146.1
    nr '"Oh, I„ll still get you for this," Morte replies. He grins, his teeth turning into fangs again. "Just you wait."'

    menu:
        '"Uh… revenge never helped anyone, Morte… uh, let„s go."' if morteLogic.r11990_condition():
            # a346 # r11990
            jump morte_dispose

        '"You„ll thank me later. You“ll see."' if morteLogic.r11991_condition():
            # a347 # r11991
            jump morte_dispose


# s148 # say11957
label morte_s148: # -
    nr '"What„s wrong?" Morte floats in closer and glances at your palm. "Hey… they look like they“re planning something, don„t they?"'

    menu:
        '"They sure do, don„t th-"':
            # a348 # r11992
            jump morte_s149


# s149 # say11958
label morte_s149: # from 148.0
    nr 'What happens next is difficult to describe… and painful to watch. Faster than you can close your palm, the teeth hop out of your hand and swarm onto Morte„s jaw. Morte howls as Ingress“ teeth promptly rip out his old teeth and then jump into the exposed cavities.'

    menu:
        '"Morte!"':
            # a349 # r11993
            jump morte_s142


# s150 # say11959
label morte_s150: # from 144.1
    nr 'The teeth suddenly unlock, and Morte takes a deep breath. "I will *kill* you for this! You planned that! I know it!"'

    menu:
        '"Look, I didn„t mean that to happen… I even warned you. Uh… how do they feel?"':
            # a350 # r11994
            jump morte_s146


# s151 # say12389
label morte_s151: # -
    nr 'Morte whispers to you: "Boss, I don„t like this. They“re not supposed to be here. The Blood War hasn„t kicked the celestials“ asses bad enough that any fiend can go on furlough. They *want* something. Tread carefully." In the meantime, Tegar„in continues to respond to its companion…'

    jump tegarin_s12  # EXTERN


# s152 # say12449
label morte_s152: # -
    nr '"Boss, I„m more sure than ever that these berks ain“t on the up and up. Sounds to me like they deserted, like they„re looking for some angle that“ll elevate their status in Baator. You don„t want to be talking to “em, boss… you don„t know what game they“re playing, and you could get burned… literally."'

    menu:
        '"All right, Morte. Just a few more questions for these two…"':
            # a351 # r12450
            jump aethel_s11  # EXTERN

        '"All right, Morte. I„m done with them."':
            # a352 # r12451
            jump morte_dispose


# s153 # say12466
label morte_s153: # -
    nr 'Morte floats close to whisper in your ear: "He *is* right, chief… I don„t know what“s got you all riled up."'

    menu:
        '"Very well… I had only wanted to ask a question…"':
            # a353 # r12553
            jump baria_s4  # EXTERN

        '"Shut up, you yammering skull! And you, goat-thing: Die…"':
            # a354 # r12554
            $ morteLogic.r12554_action()
            jump morte_dispose

        '"Oh, no… it was *you,* and you„ll regret it…"':
            # a355 # r12555
            $ morteLogic.r12555_action()
            jump morte_dispose

        '"Forget it, then. Farewell."':
            # a356 # r12556
            $ morteLogic.r12556_action()
            jump morte_dispose


# s154 # say12467
label morte_s154: # -
    nr '"Yeah, yeah! The good stuff!"'

    jump baria_s20  # EXTERN


# s155 # say12621
label morte_s155: # -
    nr 'Morte seems taken aback as all eyes fall on him. "What? What?" You get the impression that, had he lips, he„d be whistling innocently.'

    menu:
        '"Do you have an explanation, Morte?"':
            # a357 # r12854
            jump morte_s156

        '"What is a „mimir“?"' if morteLogic.r12855_condition():
            # a358 # r12855
            $ morteLogic.r12855_action()
            jump morte_s157

        '"Never mind him… could you answer me?"':
            # a359 # r12856
            jump creed_s30  # EXTERN


# s156 # say12622
label morte_s156: # from 155.0
    nr '"Well, I say we hear this man out. Yeah?" Morte turns and stares hard at the rat-catcher.'

    menu:
        '"No… let„s hear what you have to say, Morte."':
            # a360 # r12857
            jump morte_s158

        '"In a moment… what is a „mimir“?"' if morteLogic.r12858_condition():
            # a361 # r12858
            $ morteLogic.r12858_action()
            jump morte_s157

        'Turn back to the rat-catcher.':
            # a362 # r12859
            jump creed_s32  # EXTERN


# s157 # say12623
label morte_s157: # from 155.1 156.1
    nr 'Morte rolls his eyes, as if embarrassed. "It„s a… talking encyclopedia. Not something I“m proud of. Now, let„s hear this fellow out, all right?"'

    menu:
        '"Very well."':
            # a363 # r12860
            $ morteLogic.r12860_action()
            jump creed_s32  # EXTERN

        '"No, I„ve heard enough. Farewell, rat-catcher."':
            # a364 # r12861
            $ morteLogic.r12861_action()
            jump creed_s59  # EXTERN


# s158 # say12624
label morte_s158: # from 156.0
    nr '"Oh c„mon, chief… why would I hold out on you? I“ve told you everything useful *I* know. Let„s just get this berk“s take on the whole thing."'

    menu:
        '"Very well."':
            # a365 # r12862
            jump creed_s32  # EXTERN

        '"Never mind. Let„s go… farewell, rat-catcher."':
            # a366 # r12863
            jump creed_s59  # EXTERN


# s159 # say12625
label morte_s159: # -
    nr '"Yeah, chief! That„s the spirit!"'

    jump creed_s40  # EXTERN


# s160 # say12626
label morte_s160: # -
    nr '"Dead, chief… dead."'

    menu:
        '"You seem friendly enough, though, rat-catcher…"':
            # a367 # r12864
            jump creed_s49  # EXTERN

        '"I understand. Another question…"':
            # a368 # r12865
            jump creed_s15  # EXTERN

        '"Thanks for the information. Farewell."':
            # a369 # r12866
            jump creed_s59  # EXTERN


# s161 # say12627
label morte_s161: # -
    nr '"Dead, chief… dead."'

    menu:
        '"Ah… What did you say about people paying for dead rats?"':
            # a370 # r12867
            jump creed_s18  # EXTERN

        '"I see. I had a question about something else…"':
            # a371 # r12868
            jump creed_s15  # EXTERN

        '"I understand. Farewell."':
            # a372 # r12869
            jump creed_s59  # EXTERN


# s162 # say13748
label morte_s162: # -
    nr '"Well, that„s a tree with one snapped branch too many." Morte rolls his eyes. "No sense in chatting with Xaositects, chief. They“re a barmy bunch."'

    menu:
        '"Xaositects?"' if morteLogic.r13774_condition():
            # a373 # r13774
            $ morteLogic.r13774_action()
            jump morte_s163

        '"Who are the Xaositects again?"' if morteLogic.r13775_condition():
            # a374 # r13775
            $ morteLogic.r13775_action()
            jump morte_s163

        '"Thought I might be able to learn something from him. Never mind, let„s go."' if morteLogic.r13776_condition():
            # a375 # r13776
            $ morteLogic.r13776_action()
            jump morte_dispose


# s163 # say13749
label morte_s163: # from 162.0 162.1
    nr '"They„re a “faction„ who don“t have any rules… except don„t keep one thought in their head for too long. They“re sometimes called „Chaosmen.“ No need to explain why."'

    menu:
        '"How do they get members?"':
            # a376 # r13777
            jump morte_s164

        '"I see. Let„s go."':
            # a377 # r13778
            jump morte_dispose


# s164 # say13750
label morte_s164: # from 163.0
    nr '"They just seem to attract members like flies… well, members that are crazy or chaotic enough, I suppose. I don„t think they have any recruiters… though you really can“t say anything about them for sure."'

    menu:
        '"I see. Thanks for the information."':
            # a378 # r13779
            jump morte_dispose


# s165 # say13828
label morte_s165: # -
    nr '"Well, that„s a tree with one snapped branch too many." Morte rolls his eyes. "No sense in chatting with Xaositects, chief. They“re a barmy bunch."'

    menu:
        '"Xaositects?"' if morteLogic.r13986_condition():
            # a379 # r13986
            $ morteLogic.r13986_action()
            jump morte_s166

        '"Who are the Xaositects again?"' if morteLogic.r13987_condition():
            # a380 # r13987
            $ morteLogic.r13987_action()
            jump morte_s166

        '"Thought I might be able to learn something from him. Never mind, let„s go."' if morteLogic.r13988_condition():
            # a381 # r13988
            $ morteLogic.r13988_action()
            jump morte_dispose


# s166 # say13829
label morte_s166: # from 165.0 165.1
    nr '"They„re a “faction„ who don“t have any rules… except don„t keep one thought in their head for too long. They“re sometimes called „Chaosmen.“ No need to explain why."'

    menu:
        '"How do they get members?"' if morteLogic.r13989_condition():
            # a382 # r13989
            jump morte_s167

        '"I see. Let„s go, then."':
            # a383 # r13990
            jump morte_dispose


# s167 # say13830
label morte_s167: # from 166.0
    nr '"They just seem to attract members like flies… well, members that are crazy or chaotic enough, I suppose. I don„t think they have any recruiters… though you really can“t say anything about them for sure."'

    menu:
        '"I see. Thanks for the information."':
            # a384 # r13991
            jump morte_dispose


# s168 # say14075
label morte_s168: # -
    nr '"All rightie then…" Morte hisses at you. "Let„s go, chief. This Dustie might as well be fertilizer."'

    menu:
        '"Fair enough. Let„s get out of here."' if morteLogic.r14275_condition():
            # a385 # r14275
            jump await_s6  # EXTERN

        '"Fair enough. Let„s get out of here."' if morteLogic.r14276_condition():
            # a386 # r14276
            jump await_s6  # EXTERN

        '"Fair enough. Let„s get out of here."' if morteLogic.r14277_condition():
            # a387 # r14277
            jump await_s6  # EXTERN

        '"Fair enough. Let„s get out of here."' if morteLogic.r14278_condition():
            # a388 # r14278
            jump await_s15  # EXTERN


# s169 # say15339
label morte_s169: # -
    nr '"Tear that candied fop in two, boss! Show him how it„s done!"'

    jump adyzoel_s19  # EXTERN


# s170 # say15340
label morte_s170: # -
    nr '"Yeah, answer the questions!"'

    jump adyzoel_s13  # EXTERN


# s171 # say15341
label morte_s171: # -
    nr '"I„ll put ten copper on the big, scarred guy!" Morte floats close and whispers: "Eh, that“s you, chief. Don„t let us down, here."'

    jump adyzoel_s20  # EXTERN


# s172 # say15342
label morte_s172: # -
    nr '"All right, chief: you„ve got him this time! Fight dirty!"'

    jump adyzoel_s19  # EXTERN


# s173 # say15343
label morte_s173: # -
    nr '"That„s right, you pompous, perfumed, candied-arse elitist… you heard him!"'

    jump adyzoel_s32  # EXTERN


# s174 # say15344
label morte_s174: # -
    nr '"Who am *I?* Hah! I could„ve been your father but that monkey beat me up the stairs!"'

    menu:
        '"Morte, be quiet."':
            # a389 # r15490
            jump morte_s175

        'Let Morte continue.':
            # a390 # r15491
            jump morte_s175


# s175 # say15345
label morte_s175: # from 174.0 174.1
    nr '"What„s wrong, princess? At a loss for words? You“d best lift that dropped jaw before something flies down your throat! That„s right, you heard me! Pack up your frilly brassiere and go hide beneath your mother“s filthy skirt, where you belong! And tell her I said hello while you„re at it!"'

    menu:
        '"Morte: shut up, *now.*"':
            # a391 # r15492
            $ morteLogic.r15492_action()
            jump morte_s176

        'Let Morte continue.':
            # a392 # r15493
            jump morte_s177


# s176 # say15346
label morte_s176: # from 175.0
    nr '"Huh? Oh… sorry, chief. This kind of guy just gets to me…"'

    jump adyzoel_s33  # EXTERN


# s177 # say15347
label morte_s177: # from 175.1
    nr '"Why, if I didn„t know any better, I“d say-"'

    jump adyzoel_s33  # EXTERN


# s178 # say15348
label morte_s178: # -
    nr '"What? I„m just a mimir, chief! I can“t „duel!“"'

    $ morteLogic.s178_action()
    jump adyzoel_s35  # EXTERN


# s179 # say15349
label morte_s179: # -
    nr '"It„s, uh… sort of a talking encyclopedia. I don“t like to talk about it; sort of embarrassing, really."'

    if morteLogic.s179_condition():
        $ morteLogic.s179_action()
        jump adyzoel_s36  # EXTERN
    menu:
        '"But you AREN„T a mimir, Morte…"' if morteLogic.r65537_condition():
            # a393 # r65537
            jump adyzoel_s36  # EXTERN


# s180 # say15350
label morte_s180: # -
    nr '"Come on, chief… you going to let him get away with that? Let„s go trounce that prissy rake! I“ll go for his eyes while you lay into him!"'

    menu:
        '"You„re right… let“s get him."':
            # a394 # r15494
            jump adyzoel_s19  # EXTERN

        '"Now„s not the time, Morte. Let“s go."':
            # a395 # r15495
            $ morteLogic.r15495_action()
            jump morte_dispose


# s181 # say16613
label morte_s181: # from 185.0
    nr '"Huh? Oh, yeah, chief, sure - whatever you say."'

    menu:
        '"Thanks. I had some questions, Mourns…"' if morteLogic.r16881_condition():
            # a396 # r16881
            jump mftree_s28  # EXTERN

        '"I„m serious, Morte. Can you make the effort?"' if morteLogic.r16882_condition():
            # a397 # r16882
            $ morteLogic.r16882_action()
            jump morte_s182

        '"Thanks, Morte. Farewell, Mourns-for-Trees."':
            # a398 # r16883
            jump morte_dispose


# s182 # say16614
label morte_s182: # from 181.1
    nr 'Morte looks at you for a while, silently, then nods. "Yeah, I can. If it„s that important to you, I“ll do it."'

    menu:
        '"Thanks. Annah? Could you?"' if morteLogic.r16884_condition():
            # a399 # r16884
            $ morteLogic.r16884_action()
            jump annah_s99  # EXTERN

        '"Thanks. Ignus?"' if morteLogic.r16885_condition():
            # a400 # r16885
            $ morteLogic.r16885_action()
            jump ignus_s11  # EXTERN

        '"Thanks. Grace, would you consider it?"' if morteLogic.r16886_condition():
            # a401 # r16886
            $ morteLogic.r16886_action()
            jump grace_s14  # EXTERN

        '"Thanks. Dak„kon, could you help this man?"' if morteLogic.r16887_condition():
            # a402 # r16887
            $ morteLogic.r16887_action()
            jump dakkon_s74  # EXTERN

        '"Thanks. Dak„kon: help this man."' if morteLogic.r16888_condition():
            # a403 # r16888
            $ morteLogic.r16888_action()
            jump dakkon_s75  # EXTERN

        '"Thanks. Nordom, do you think you could help?"' if morteLogic.r16889_condition():
            # a404 # r16889
            $ morteLogic.r16889_action()
            jump nordom_s1  # EXTERN

        '"Thanks. Vhailor, could you help?"' if morteLogic.r16890_condition():
            # a405 # r16890
            $ morteLogic.r16890_action()
            jump vhail_s1  # EXTERN

        '"Thanks. I had some questions, Mourns…"':
            # a406 # r16891
            jump mftree_s28  # EXTERN

        '"Thanks, Morte. Farewell, Mourns-for-Trees."':
            # a407 # r16892
            jump morte_dispose


# s183 # say16615
label morte_s183: # -
    nr '"You know, I *really* can„t see this going anywhere. It“s the old blood from a stone thing, chief - these little guys just don„t work that way."'

    jump nordom_s2  # EXTERN


# s184 # say16616
label morte_s184: # -
    nr '"Oh, boy; here we go. I can„t *believe* you“re wasting your time like this, boss!"'

    jump nordom_s3  # EXTERN


# s185 # say16617
label morte_s185: # -
    nr '"You know, chief, I„ve seen some weird stuff… but it boggles my mind that that was even *possible.*"'

    menu:
        '"I thank you, Nordom. Morte? What do you think?"' if morteLogic.r16893_condition():
            # a408 # r16893
            $ morteLogic.r16893_action()
            jump morte_s181

        '"I thank you, Nordom. Annah? Could you?"' if morteLogic.r16894_condition():
            # a409 # r16894
            $ morteLogic.r16894_action()
            jump annah_s99  # EXTERN

        '"I thank you, Nordom. Ignus?"' if morteLogic.r16895_condition():
            # a410 # r16895
            $ morteLogic.r16895_action()
            jump ignus_s11  # EXTERN

        '"I thank you, Nordom. Grace, would you consider it?"' if morteLogic.r16896_condition():
            # a411 # r16896
            $ morteLogic.r16896_action()
            jump grace_s14  # EXTERN

        '"I thank you, Nordom. Dak„kon, could you help this man?"' if morteLogic.r16897_condition():
            # a412 # r16897
            $ morteLogic.r16897_action()
            jump dakkon_s74  # EXTERN

        '"I thank you, Nordom. Dak„kon: help this man."' if morteLogic.r16898_condition():
            # a413 # r16898
            $ morteLogic.r16898_action()
            jump dakkon_s75  # EXTERN

        '"I thank you, Nordom. Vhailor, could you help?"' if morteLogic.r16899_condition():
            # a414 # r16899
            $ morteLogic.r16899_action()
            jump vhail_s1  # EXTERN

        '"I thank you, Nordom. I had some questions, Mourns…"':
            # a415 # r16900
            jump mftree_s28  # EXTERN

        '"I am grateful to you, Nordom. Farewell, Mourns-for-Trees."':
            # a416 # r16901
            jump morte_dispose


# s186 # say16618
label morte_s186: # -
    nr '"Oh! I can„t watch!"'

    jump ignus_s13  # EXTERN


# s187 # say17533
label morte_s187: # -
    nr '"Why not, boss? It„ll be fun to kick around when we“re down, right? Hmm… Well, I can kick it vicariously through you, at least. I wanna see that fifteen-foot hot coal jump, too!"'

    menu:
        '"What do you think, Annah?"' if morteLogic.r17583_condition():
            # a417 # r17583
            jump annah_s107  # EXTERN

        '"I„ll take one, merchant."' if morteLogic.r17584_condition():
            # a418 # r17584
            $ morteLogic.r17584_action()
            jump 300mer5_s5  # EXTERN

        '"I„d best not spend the copper. I had some questions, merchant…"' if morteLogic.r17585_condition():
            # a419 # r17585
            jump 300mer5_s2  # EXTERN

        '"I„ll keep my copper, merchant. Farewell."' if morteLogic.r17586_condition():
            # a420 # r17586
            jump morte_dispose

        '"I don„t have enough, merchant, but I have some questions…"' if morteLogic.r17587_condition():
            # a421 # r17587
            jump 300mer5_s2  # EXTERN

        '"Never mind, merchant; I don„t have the coin for one. Farewell."' if morteLogic.r17588_condition():
            # a422 # r17588
            jump morte_dispose


# s188 # say18801
label morte_s188: # -
    nr 'Morte turns to the Hiver. "Pike off."'

    menu:
        '"You„re not getting this skull."':
            # a423 # r18802
            $ morteLogic.r18802_action()
            jump colylfn_s5  # EXTERN

        '"This is not your skull."':
            # a424 # r18803
            jump colylfn_s6  # EXTERN

        'Truth: "Go on, take the skull."':
            # a425 # r18804
            jump colylfn_s9  # EXTERN

        'Attack him as soon as he„s off-guard: "Go on, take the skull."':
            # a426 # r18805
            jump colylfn_s10  # EXTERN

        'Truth: "If you can prove to me the skull„s yours, then I“ll give it to you. It„s only fair."':
            # a427 # r18578
            $ morteLogic.r18578_action()
            jump colylfn_s12  # EXTERN

        '"Who are you?"':
            # a428 # r18807
            jump colylfn_s13  # EXTERN

        '"I„ll buy the skull from you. Fair?"':
            # a429 # r18808
            $ morteLogic.r18808_action()
            jump colylfn_s14  # EXTERN


# s189 # say18809
label morte_s189: # -
    nr 'Morte is holding one of the man„s fingers between his teeth like some macabre cigar. He speaks around the finger: "Touch me again, and yer hand“s gonna join yer finger, berk."'

    menu:
        '"Morte! Give the man back his finger."':
            # a430 # r18810
            jump morte_s190

        '"Tough luck. Get lost, mongrel."':
            # a431 # r18811
            jump colylfn_s11  # EXTERN

        '"That„s a hard lesson learned. Farewell."':
            # a432 # r18812
            jump colylfn_s11  # EXTERN


# s190 # say18813
label morte_s190: # from 189.0
    nr 'Morte spits the finger at the man. It bounces off the man„s chest and falls to the ground.'

    menu:
        '"Tough luck. Get lost, mongrel."':
            # a433 # r18814
            jump colylfn_s11  # EXTERN

        '"That„s a hard lesson learned. Farewell."':
            # a434 # r18815
            jump colylfn_s11  # EXTERN


# s191 # say18816
label morte_s191: # -
    nr 'Morte spins to face you: "Chief, don„t give this trash anything."'

    menu:
        '"I…"':
            # a435 # r18817
            jump colylfn_s15  # EXTERN


# s192 # say18818
label morte_s192: # -
    nr 'Morte turns on the man. "I *wasn„t* talking to you, arse-for-brains. When I talk to you, you“ll know, „cause I“ll be grunting and snorting so you can understand what I„m saying."'

    jump colylfn_s16  # EXTERN


# s193 # say18819
label morte_s193: # -
    nr '"Chief, *don„t.*"'

    menu:
        'Give him five coppers.' if morteLogic.r18820_condition():
            # a436 # r18820
            $ morteLogic.r18820_action()
            jump colylfn_s18  # EXTERN

        'Give him fifty coppers.' if morteLogic.r18821_condition():
            # a437 # r18821
            $ morteLogic.r18821_action()
            jump colylfn_s18  # EXTERN

        'Give him one hundred coppers.' if morteLogic.r18822_condition():
            # a438 # r18822
            $ morteLogic.r18822_action()
            jump colylfn_s18  # EXTERN

        'Give him five hundred coppers.' if morteLogic.r18823_condition():
            # a439 # r18823
            $ morteLogic.r18823_action()
            jump colylfn_s18  # EXTERN

        '"I don„t have enough copper to give you."' if morteLogic.r18824_condition():
            # a440 # r18824
            jump colylfn_s19  # EXTERN

        '"Forget the offer. This isn„t your skull, and you“re not getting it."':
            # a441 # r18825
            jump colylfn_s6  # EXTERN


# s194 # say18826
label morte_s194: # -
    nr '"I„m floating with the biggest idiot in the multiverse."'

    menu:
        '"…and what, Yellow-Fingers? Steal from you and you„ll do *what?*"':
            # a442 # r18827
            jump colylfn_s20  # EXTERN

        '"Now that that„s out of the way, Yellow-Fingers, I had some questions…"':
            # a443 # r18828
            jump colylfn_s23  # EXTERN

        '"Farewell, Yellow-Fingers."' if morteLogic.r18829_condition():
            # a444 # r18829
            jump colylfn_s41  # EXTERN

        '"Farewell, Yellow-Fingers."' if morteLogic.r18830_condition():
            # a445 # r18830
            $ morteLogic.r18830_action()
            jump morte_dispose


# s195 # say18831
label morte_s195: # -
    nr '"Chief! C„mon!"'

    jump colylfn_s52  # EXTERN


# s196 # say18832
label morte_s196: # -
    nr '"None too pretty from where I„m floating, either."'

    menu:
        'Give him five coppers.' if morteLogic.r18833_condition():
            # a446 # r18833
            $ morteLogic.r18833_action()
            jump colylfn_s53  # EXTERN

        'Give him ten coppers.' if morteLogic.r18834_condition():
            # a447 # r18834
            $ morteLogic.r18834_action()
            jump colylfn_s53  # EXTERN

        'Give him fifty coppers.' if morteLogic.r18835_condition():
            # a448 # r18835
            $ morteLogic.r18835_action()
            jump colylfn_s53  # EXTERN

        'Give him one hundred coppers.' if morteLogic.r18836_condition():
            # a449 # r18836
            $ morteLogic.r18836_action()
            jump colylfn_s53  # EXTERN

        '"I take it back. Leave, and don„t let me see you again."':
            # a450 # r18837
            jump colylfn_s61  # EXTERN


# s197 # say19031
label morte_s197: # -
    nr '"Hey there, big hitter! How„s your friend in the wall?"'

    jump ojo_s11  # EXTERN


# s198 # say19032
label morte_s198: # -
    nr 'Morte ducks his head. "Whatever you say, boss."'

    menu:
        '"All right. Ojo, I had some questions."':
            # a451 # r19033
            jump ojo_s12  # EXTERN

        '"That„s all right. Let“s go."':
            # a452 # r19034
            jump morte_dispose


# s199 # say19551
label morte_s199: # -
    nr '"Wow, chief… what a beauty, eh? Not everywhere you can meet a sweet little chit like that, ya know."'

    menu:
        '"I find little attractive about rotting corpses, Morte, female or no."':
            # a453 # r19666
            jump morte_s200

        '"Well, perhaps if you can get past the entire „stench-ridden, maggot-laden, rotting carcass“ thing…"':
            # a454 # r19667
            jump morte_s201


# s200 # say19552
label morte_s200: # from 199.0
    nr 'Morte„s eyes roll in his skull. "Huh! One day, you“ll see what I mean."'

    menu:
        'Ignore him, greet the zombie.' if morteLogic.r19668_condition():
            # a455 # r19668
            jump zomcitf_s1  # EXTERN

        'Ignore him, greet the zombie.' if morteLogic.r19669_condition():
            # a456 # r19669
            jump zomcitf_s3  # EXTERN


# s201 # say19553
label morte_s201: # from 199.1
    nr '"Yeah, see, that„s what I“m… hey!" Morte spins to face you. "Are you getting sarcastic on me?"'

    menu:
        'Ignore him, greet the zombie.' if morteLogic.r19670_condition():
            # a457 # r19670
            jump zomcitf_s1  # EXTERN

        'Ignore him, greet the zombie.' if morteLogic.r19671_condition():
            # a458 # r19671
            jump zomcitf_s3  # EXTERN


# s202 # say19681
label morte_s202: # -
    nr '"Eh… don„t know if you want to be talking to that… thing."'

    menu:
        '"Why not, Morte?"':
            # a459 # r19691
            jump morte_s203

        '"All right, then. Let„s go."':
            # a460 # r19692
            jump morte_dispose

        'Ignore Morte, greet the ghoul.':
            # a461 # r19693
            jump ghocitm_s1  # EXTERN


# s203 # say19682
label morte_s203: # from 202.0
    nr '"They were once humans… they, or their ancestors, feasted on corpses, and this is what they„ve become. Pretty nasty stuff, chief… they“re little more than animals, really. *Dangerous* animals."'

    menu:
        '"All right, then. Let„s go."':
            # a462 # r19694
            jump morte_dispose

        '"I„ll talk to him just the same."':
            # a463 # r19695
            jump ghocitm_s1  # EXTERN


# s204 # say19702
label morte_s204: # -
    nr '"Eh… don„t know if you want to be talking to that… thing."'

    menu:
        '"I„m surprised Morte… it“s undead, it„s female. That“s all it usually takes, for you."':
            # a464 # r19713
            jump morte_s206

        '"Why not, Morte?"':
            # a465 # r19714
            jump morte_s205

        '"All right, then. Let„s go."':
            # a466 # r19715
            jump morte_dispose

        'Ignore Morte, greet the ghoul.':
            # a467 # r19716
            jump ghocitf_s1  # EXTERN


# s205 # say19703
label morte_s205: # from 204.1 206.0
    nr '"They were once humans… they, or their ancestors, feasted on corpses, and this is what they„ve become. Pretty nasty stuff, chief… they“re little more than animals, really. *Dangerous* animals."'

    menu:
        '"All right, then. Let„s go."':
            # a468 # r19717
            jump morte_dispose

        '"I„ll talk to her just the same."':
            # a469 # r19718
            jump ghocitf_s1  # EXTERN


# s206 # say19704
label morte_s206: # from 204.0
    nr '"It„s not quite the same thing, chief…"'

    jump morte_s205


# s207 # say20469
label morte_s207: # -
    nr '"This gravebait„s blind and near-deaf."'

    jump marta_s9  # EXTERN


# s208 # say20470
label morte_s208: # -
    nr '"I think she means organs. I hope she means organs."'

    jump marta_s15  # EXTERN


# s209 # say20471
label morte_s209: # -
    nr 'Morte turns to Marta. "Yes, „thingies.“" He then turns to you. "It„s all semantics."'

    menu:
        '"Marta, why are you pulling out the corpse„s teeth and stitches?"' if morteLogic.r20612_condition():
            # a470 # r20612
            $ morteLogic.r20612_action()
            jump marta_s16  # EXTERN

        '"Marta, why are you pulling out the corpse„s teeth and stitches?"' if morteLogic.r20613_condition():
            # a471 # r20613
            $ morteLogic.j20538_s209_r20613_action()
            jump marta_s16  # EXTERN

        '"Uh… very well. I must take my leave, Marta. Farewell."':
            # a472 # r20614
            jump morte_dispose


# s210 # say20472
label morte_s210: # -
    nr '"I am *not* going to watch this."'

    jump marta_s24  # EXTERN


# s211 # say21602
label morte_s211: # -
    nr '"Oh, for the powers„ sake…! Piking dabus."'

    menu:
        '"What„s wrong?"':
            # a473 # r24695
            jump morte_s212


# s212 # say21603
label morte_s212: # from 211.0
    nr '"He„s a dabus. They “speak„ in rebuses, these annoying word puzzles. If *you* don“t know what he„s saying, then we better find a native or some other way to communicate with him… if we want to. An annoying bunch. My bet? They *can* speak, they just would rather piss everyone else off by trying to puzzle out what they“re saying."'

    menu:
        '"What„s a “dabus„?"':
            # a474 # r24696
            jump morte_s213


# s213 # say21604
label morte_s213: # from 212.0
    nr '"Chant is they„re janitors for the Lady of Pain. They float around breaking, fixing and patching up Sigil according to her whims. They“re worse than corpse flies." Morte sighs. "You can„t swat “em though, or the Lady„ll get… upset."'

    menu:
        '"„Lady of Pain“? Who„s that?"' if morteLogic.r24697_condition():
            # a475 # r24697
            $ morteLogic.r24697_action()
            jump morte_s214

        '"What can you tell me about the Lady of Pain?"' if morteLogic.r24698_condition():
            # a476 # r24698
            jump morte_s214

        '"I see."' if morteLogic.r24699_condition():
            # a477 # r24699
            jump fell_s8  # EXTERN


# s214 # say21605
label morte_s214: # from 213.0 213.1
    nr '"She runs this city. You„ll know if you see her: She“s got these blades around her face, she„s about the size of a giant, and she floats off the ground, just like these guys." Morte nods at the dabus, who is looking at you both. "Nobody knows much about her… she doesn“t speak much. All you need to know is that you don„t want to make her angry. If you see her, my advice: run."'

    menu:
        '"Uh… hold a moment. You said dabus float, right? This one„s walking on the ground."' if morteLogic.r24700_condition():
            # a478 # r24700
            jump morte_s215

        '"Uh… hold a moment. You said dabus float, right? This one„s walking on the ground."' if morteLogic.r24701_condition():
            # a479 # r24701
            jump morte_s215

        '"I see."':
            # a480 # r24702
            jump fell_s8  # EXTERN


# s215 # say21606
label morte_s215: # from 214.0 214.1
    nr 'Morte glances at the dabus, and his eyes widen. "Ah-ha! I knew you goat-heads could walk! I knew it!" Morte turns gleefully back to you. "Ha! This one must not be aloof enough to get off the ground."'

    menu:
        '"Maybe so…"':
            # a481 # r24703
            jump fell_s8  # EXTERN


# s216 # say21607
label morte_s216: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what this goat-head“s trying to say. You want a translator? Find a Sigil native."'

    menu:
        '"I see."':
            # a482 # r24704
            jump fell_s8  # EXTERN


# s217 # say21608
label morte_s217: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator? Get the fiendling chit to do it." He nods at Annah. "She“s a Hive native."'

    menu:
        '"Maybe I will…"':
            # a483 # r24705
            jump fell_s8  # EXTERN


# s218 # say21609
label morte_s218: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator?" He nods at Dak“kon. "Get holier-than-thou-and-twice-as-silent to translate."'

    menu:
        '"Maybe I will…"':
            # a484 # r24706
            jump fell_s8  # EXTERN


# s219 # say21610
label morte_s219: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator? Get the tanar“ri to do it." He nods at Fall-from-Grace. "She„s probably had to trade the chant with these guys all the time."'

    menu:
        '"Maybe I will…"':
            # a485 # r24707
            jump fell_s8  # EXTERN


# s220 # say22061
label morte_s220: # externs soego_s93
    nr '"You just want to kill them. Sentience threatens the Dustmen."'

    menu:
        '"I had other questions…"':
            # a486 # r22062
            jump soego_s83  # EXTERN

        '"That„s all I wished to know. Farewell."':
            # a487 # r22063
            jump morte_dispose


# s221 # say22849
label morte_s221: # -
    nr 'Morte stares at you and shakes his head.'

    menu:
        '"What„s that, cube hero? “Morte„s a stupid skull“? Why, yes he is, isn„t he, cube hero?"':
            # a488 # r22850
            $ morteLogic.r22850_action()
            jump morte_s222

        'Put the cube away.':
            # a489 # r22851
            jump morte_dispose


# s222 # say22852
label morte_s222: # from 221.0
    nr '"Hey! It didn„t say that!"'

    menu:
        '"Yes, it did! It said it just now!"':
            # a490 # r22853
            $ morteLogic.r22853_action()
            jump morte_s223

        'Put the cube away.':
            # a491 # r22854
            jump morte_dispose


# s223 # say22855
label morte_s223: # from 222.0
    nr '"Wh-?! Gimme that thing!"'

    menu:
        '"No, it„s mine. He only wants to hang out with me anyway. Don“t you, cube hero? Yes, you do!"':
            # a492 # r22856
            $ morteLogic.r22856_action()
            jump morte_s224

        'Put the cube away.':
            # a493 # r22857
            jump morte_dispose


# s224 # say22858
label morte_s224: # from 223.0
    nr '"I. Just. Want. To. Hold. It. For. A. Second."'

    menu:
        '"But you don„t have any hands."':
            # a494 # r22859
            jump morte_s225

        'Put the cube away.':
            # a495 # r22860
            jump morte_dispose


# s225 # say22861
label morte_s225: # from 224.0
    nr '"I„ll hold it in my TEETH."'

    menu:
        '"No, I think I„ll just put it away for now."':
            # a496 # r22862
            jump morte_s226


# s226 # say22863
label morte_s226: # from 225.0
    nr '"I„m gonna smash that modron cube to bits."~ [MRT251]'

    menu:
        '"Did you hear anything, cube hero? Neither did I!"':
            # a497 # r22864
            jump morte_dispose


# s227 # say22892
label morte_s227: # -
    nr '"Oooooh!" Morte clicks his teeth together as Craddock builds up steam… you can almost hear him taking notes inside his skull.~ [MRT387]'

    jump craddo_s15  # EXTERN


# s228 # say24174
label morte_s228: # -
    nr '"You know, boss, I was getting really sick of his… constant… pauses… anyway… it„s a … good thing… he“s shut up… now."'

    menu:
        '"Very funny, Morte. Let„s go."':
            # a498 # r24175
            jump morte_dispose


# s229 # say24176
label morte_s229: # -
    nr '"Boss, what do we need with an endless supply of water? Where„s the fire, huh?"'

    menu:
        '"It might be useful later, Morte. Let„s go."':
            # a499 # r24177
            jump morte_dispose

        '"It„s the right thing to do, Morte."':
            # a500 # r24178
            jump morte_s230


# s230 # say24179
label morte_s230: # from 229.1
    nr '"The right thing to do? In case you„ve forgotten, boss, you“ve got a quest of your own to take care of! But hey, whatever you want to do, you„re in charge here. Sheesh…"'

    menu:
        '"Thanks for your approval, Morte. Let„s go."':
            # a501 # r24180
            jump morte_dispose


# s231 # say24903
label morte_s231: # -
    nr '"Hey… are you all right? I thought you were a deader for sure."'

    menu:
        '"Wh…? Who are you?"':
            # a502 # r24904
            $ morteLogic.r24904_action()
            jump morte_s232

        '"I„m sure you have a thousand clever things to say, Morte, but I need you to shut the hell up and join me NOW."':
            # a503 # r24905
            $ morteLogic.r24905_action()
            jump morte_dispose


# s232 # say24906
label morte_s232: # from 231.0
    nr '"Uh… who am I? How about *you* start? Who„re you?"'

    menu:
        '"I… don„t know. I can“t remember."':
            # a504 # r24907
            jump morte_s233

        '"I asked *you* first, skull."':
            # a505 # r24908
            jump morte_s234


# s233 # say24909
label morte_s233: # from 232.0 234.0 235.0
    nr '"You can„t remember your *name?* Heh. Well, next time you spend a night on the town, go easy on the bub. Name“s Morte. I„m trapped in here, too."'

    menu:
        '"Trapped?"':
            # a506 # r24910
            jump morte_s236


# s234 # say24911
label morte_s234: # from 232.1
    nr '"Yeah, „an I asked you *second.* What“s your name?"'

    menu:
        '"I… don„t know. I can“t remember."':
            # a507 # r24912
            jump morte_s233

        '"You first, skull. It„s the last time I“ll ask."':
            # a508 # r24913
            jump morte_s235


# s235 # say24914
label morte_s235: # from 234.1
    nr '"Tchhhh… you„re tighter than a wet rope. All right, *I“ll* be the nice guy here. Name„s Morte. Who“re you?"'

    menu:
        '"I… don„t know. I can“t remember."':
            # a509 # r24915
            jump morte_s233


# s236 # say24916
label morte_s236: # from 233.0
    nr '"Yeah, since you haven„t had time to get your legs yet, here“s the chant: I„ve tried all the doors, and this room is locked tighter than a chastity belt."'

    menu:
        '"We„re locked in… where? What is this place?"':
            # a510 # r24917
            jump morte_s237


# s237 # say24918
label morte_s237: # from 236.0
    nr '"It„s called the “Mortuary„… it“s a big black structure with all the architectural charm of a pregnant spider."'

    menu:
        '"„The Mortuary“? What… am I dead?"':
            # a511 # r24919
            jump morte_s238


# s238 # say24920
label morte_s238: # from 237.0
    nr '"Not from where I„m standing. You got scars a-plenty, though… looks like some berk painted you with a knife. All the more reason to give this place the laugh before whoever carved you up comes back to finish the job."'

    menu:
        '"How do we get out of here?"':
            # a512 # r24921
            jump morte_s239


# s239 # say24922
label morte_s239: # from 238.0
    nr '"Well, all the doors are locked, so we„ll need the key. Chances are, one of the walking corpses in this room have it."'

    menu:
        '"Walking corpses?"':
            # a513 # r24923
            jump morte_s240


# s240 # say24924
label morte_s240: # from 28.0 239.0
    nr '"Yeah, the Mortuary keepers use dead bodies as cheap labor. The corpses are dumb as stones, but they„re harmless, and won“t attack you unless you attack first."'

    menu:
        '"Is there some other way? I don„t want to kill them just for a key."':
            # a514 # r24925
            $ morteLogic.r24925_action()
            jump morte_s241

        '"So I should attack one of these corpses and loot it for the key?"':
            # a515 # r24926
            jump morte_s242


# s241 # say24927
label morte_s241: # from 240.0
    nr '"What, you think it„s going to hurt their feelings? They“re DEAD. But if you want a bright side to this: if you kill them, at least they„ll have a rest before their keepers raise them up to work again."'

    menu:
        '"Well, all right… I„ll take one of them down and get the key."':
            # a516 # r24928
            jump morte_s242


# s242 # say24929
label morte_s242: # from 240.1 241.0
    nr '"Well, before you do that, arm yourself first. I think there„s a scalpel on one of the shelves around here."  ^NNOTE: Search the shelves in this room for a weapon to attack the zombies with.^-'

    menu:
        '"All right, I„ll look for one."':
            # a517 # r24930
            jump morte_s243


# s243 # say24931
label morte_s243: # from 242.0
    nr '"One last thing: Those corpses are as slow as molasses, but getting punched by one of them is like being kissed by a battering ram. If they start getting an edge on you, remember you can RUN, and they can„t. Use it to keep some distance if you need to recover."  ^NNOTE: <RUNAWAY> If you are in danger of dying, use running to keep your distance from the zombies while you recover.^-'

    menu:
        '"All right. Thanks for the advice."':
            # a518 # r24932
            $ morteLogic.r24932_action()
            jump morte_dispose


# s244 # say25962
label morte_s244: # -
    nr '"Sort of a talking encyclopedia, chief. I don„t like to talk about it, really."'

    if morteLogic.s244_condition():
        $ morteLogic.s244_action()
        jump cwrushf_s27  # EXTERN
    menu:
        '"But you AREN„T a mimir, Morte…"' if morteLogic.r66902_condition():
            # a519 # r66902
            jump cwrushf_s27  # EXTERN


# s245 # say25964
label morte_s245: # -
    nr 'Morte waggles his eyebrows and begins to float towards the woman. "That„s not all I-"'

    menu:
        '"That„s enough, Morte."':
            # a520 # r25965
            jump morte_s246


# s246 # say25966
label morte_s246: # from 245.0
    nr '"Yeah, yeah. Fine." Morte rolls his eyes and starts to mumble. "Sheesh, I might as well be *dead*…"'

    menu:
        '"Say… did you say „on its own“? They usually don„t?"' if morteLogic.r25967_condition():
            # a521 # r25967
            jump cwrushf_s28  # EXTERN

        '"I had some questions for this woman…"':
            # a522 # r25968
            jump cwrushf_s2  # EXTERN

        'Leave the woman in peace.':
            # a523 # r25969
            jump morte_dispose


# s247 # say25970
label morte_s247: # -
    nr 'Morte interrupts her: "Well, you see, chief, it„s all about differences in the *quality* of your mimir. Some - like me - are more enchanted than others, that“s all. More… uh… „self-aware,“ is the term."'

    menu:
        '"Hmm."':
            # a524 # r25971
            jump cwrushf_s29  # EXTERN

        '"I see."':
            # a525 # r25972
            jump cwrushf_s29  # EXTERN


# s248 # say25973
label morte_s248: # -
    nr '"Hey! I„m just trying to have some fun here, chief!"'

    jump cwrushf_s27  # EXTERN


# s249 # say27285
label morte_s249: # -
    nr '"Some advice, chief: I„d keep it quiet from here on - no need to put any more corpses in the dead-book than necessary… especially the femmes. Plus, killing them might draw the caretakers here."'

    menu:
        '"I don„t think you mentioned it before… *who* are these caretakers?"':
            # a526 # r27303
            jump morte_s250

        '"The corpses here… where did they all come from?"':
            # a527 # r27304
            jump morte_s252

        '"Why do you care about the female corpses?"':
            # a528 # r27305
            jump morte_s253

        '"All right… I„ll… try to remember that."':
            # a529 # r27306
            jump morte_s257


# s250 # say27286
label morte_s250: # from 249.0 252.0 256.0
    nr '"They call themselves the „Dustmen.“ You can„t miss “em: They have an obsession with black and rigor mortis of the face. They„re an addled bunch of ghoulish death-worshippers; they believe everybody should die… sooner better than later."'

    menu:
        '"I„m confused… why do these Dustmen care if I escape?"':
            # a530 # r27307
            jump morte_s251


# s251 # say27287
label morte_s251: # from 250.0
    nr '"Weren„t you listening?! I said the Dusties believe EVERYBODY“S got to die, sooner better than later. You think the corpses you„ve seen are happier in the dead-book than out of it?"'

    menu:
        '"The corpses I„ve seen here… where did they all come from?"':
            # a531 # r27308
            jump morte_s252

        '"Before you said something about making sure I didn„t kill any *female* corpses. Why?"':
            # a532 # r27309
            jump morte_s253

        '"All right… I„ll… try to remember that."':
            # a533 # r27310
            jump morte_s257


# s252 # say27288
label morte_s252: # from 249.1 251.0 256.1
    nr '"Death visits the planes every day, chief. These lummoxes are all that„s left of the poor sods who sold their bodies to the caretakers after death."'

    menu:
        '"Enlighten me… *who* are these caretakers?"':
            # a534 # r27311
            jump morte_s250

        '"Before you said something about making sure I didn„t kill any *female* corpses. Why?"':
            # a535 # r27312
            jump morte_s253

        '"All right… I„ll… try to remember that."':
            # a536 # r27313
            jump morte_s257


# s253 # say27289
label morte_s253: # from 249.2 251.1 252.1
    nr '"Wh- are you *serious?* Look, chief, these dead chits are the last chance for a couple of hardy bashers like us. We need to be *chivalrous*… no hacking them up for keys, no lopping their limbs off, things like that."'

    menu:
        '"Last chance? What… what *are* you talking about?"':
            # a537 # r27314
            jump morte_s254


# s254 # say27290
label morte_s254: # from 253.0
    nr '"Chief, THEY„RE dead, WE“RE dead… see where I„m going? Eh? Eh?"'

    menu:
        '"No… no, I don„t, actually."':
            # a538 # r27315
            jump morte_s255

        '"You can„t be serious."' if morteLogic.r27316_condition():
            # a539 # r27316
            jump morte_s255


# s255 # say27291
label morte_s255: # from 254.0 254.1
    nr '"Chief, we already got an opening line with these limping ladies. We„ve *all* died at least once: we“ll have something to talk about. They„ll appreciate men with our kind of death experience."'

    menu:
        '"But… wait… didn„t you say before that I“m *not* dead?"':
            # a540 # r27317
            jump morte_s256


# s256 # say27292
label morte_s256: # from 255.0
    nr '"Well… all right, *you* might not be dead, but *I* am. And from where I„m standing, I wouldn“t mind sharing a coffin with some of these fine, sinewy cadavers I see here." Morte starts clacking his teeth, as if in anticipation. "„Course, the caretakers would have to part with them first, and that“s not likely…"'

    menu:
        '"Who are these caretakers again?"':
            # a541 # r27318
            jump morte_s250

        '"But where did all these corpses come from?"':
            # a542 # r27319
            jump morte_s252

        '"All right… I„ll try and remember that."':
            # a543 # r27320
            jump morte_s257


# s257 # say27293
label morte_s257: # from 249.3 251.2 252.2 256.2
    nr '"Look, chief. You„re still a little addled after your kiss with death. So two bits of advice for you: one, if you got questions, *ask* me, all right?"  ^NNOTE: <SPEAKTO>^-'

    menu:
        '"All right… if I have any questions, I„ll ask you."':
            # a544 # r27321
            jump morte_s258


# s258 # say27294
label morte_s258: # from 257.0
    nr '"Second, if you„re *half* as forgetful as you seem to be, start writing stuff down - whenever you come across something that might be important, jot it down so you don“t forget."'

    menu:
        '"Like in a journal?"':
            # a545 # r27322
            jump morte_s259


# s259 # say27295
label morte_s259: # from 258.0
    nr '"Yeah, like a journal. If you ever start to get cloudy on important things, like where you are, flip to it and refresh your memory. Got it?"  ^NNOTE: To access your journal, select the journal button on the quick menu. Your journal will automatically be updated throughout the game.^-'

    menu:
        '"All right… I got it. Let„s go."':
            # a546 # r27323
            jump morte_dispose


# s260 # say27296
label morte_s260: # -
    nr '"There should be a scalpel on one of the shelves around here. I„d find it before locking horns with any of the corpses around here."'

    menu:
        '"All right… I„ll keep searching."':
            # a547 # r27324
            jump morte_dispose


# s261 # say27297
label morte_s261: # - # IF WEIGHT #8 /* Triggers after states #: 729 444 325 281 742 737 733 487 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"All right, you found the scalpel! Now, go get those corpses… and don„t worry, I“ll stay back and provide valuable tactical advice."'

    menu:
        '"Maybe you could *help* me, Morte."':
            # a548 # r27325
            jump morte_s262

        '"All right."':
            # a549 # r27326
            jump morte_dispose


# s262 # say27298
label morte_s262: # from 261.0
    nr '"I WILL be helping you. Good advice is hard to come by."'

    menu:
        '"I meant help in attacking the *corpse.*"':
            # a550 # r27327
            jump morte_s263

        '"All right, then."':
            # a551 # r27328
            jump morte_dispose


# s263 # say27299
label morte_s263: # from 262.0
    nr '"Me? I„m a romantic, not a soldier. I“d just get in the way."'

    menu:
        '"When I attack this corpse, you better be right there with me or you„ll be next thing that I plunge this scalpel in."':
            # a552 # r27329
            jump morte_s264

        '"All right, then."':
            # a553 # r27330
            jump morte_dispose


# s264 # say27300
label morte_s264: # from 263.0
    nr '"Eh… all right. I„ll help you."  ^NNOTE: If you wish Morte to help you attack, simply make sure the both of you are selected when you attack the corpse. Morte will join in the attack.^-'

    menu:
        '"I„m glad we understand each other. Now let“s do it."':
            # a554 # r27331
            jump morte_dispose


# s265 # say27301
label morte_s265: # -
    nr '"All right, you took care of the right corpse, it looks like. Now you gotta find the key. It should have been on its body. Once we have it, we can get out of here."'

    menu:
        '"All right."':
            # a555 # r27332
            jump morte_dispose


# s266 # say27302
label morte_s266: # -
    nr '"All right, that„s the key. It must fit the lock of one of the doors in the room."'

    menu:
        '"I„ll try all the doors, then."':
            # a556 # r27333
            jump morte_dispose


# s267 # say27911
label morte_s267: # -
    nr 'Morte hisses into your ear: "Lawyer."'

    jump cwcafef_s15  # EXTERN


# s268 # say27912
label morte_s268: # -
    nr '"Sort of a talking encyclopedia, chief. I don„t like to talk about it, really."'

    if morteLogic.s268_condition():
        $ morteLogic.s268_action()
        jump cwcafef_s50  # EXTERN
    menu:
        '"But you AREN„T a mimir, Morte…"' if morteLogic.r65536_condition():
            # a557 # r65536
            jump cwcafef_s50  # EXTERN


# s269 # say27913
label morte_s269: # -
    nr 'Morte waggles his eyebrows and begins to float towards the woman. "That„s not all I-"'

    menu:
        '"That„s enough, Morte."':
            # a558 # r27914
            jump morte_s270


# s270 # say27915
label morte_s270: # from 269.0
    nr '"Yeah, yeah. Fine." Morte rolls his eyes and starts to mumble. "Sheesh, I might as well be *dead*…"'

    menu:
        '"Say… did you say „on its own“? They usually don„t?"' if morteLogic.r27916_condition():
            # a559 # r27916
            jump cwcafef_s51  # EXTERN

        '"I had some questions for this woman…"':
            # a560 # r27917
            jump cwcafef_s4  # EXTERN

        'Leave the woman in peace.':
            # a561 # r27918
            jump morte_dispose


# s271 # say27919
label morte_s271: # -
    nr 'Morte interrupts her: "Well, you see, chief, it„s all about differences in the *quality* of your mimir. Some - like me - are more enchanted than others, that“s all. More… uh… „self-aware,“ is the term."'

    menu:
        '"Hmm."':
            # a562 # r27920
            jump cwcafef_s52  # EXTERN

        '"I see."':
            # a563 # r27921
            jump cwcafef_s52  # EXTERN


# s272 # say27922
label morte_s272: # -
    nr '"Hey! I„m just trying to have some fun here, chief!"'

    jump cwcafef_s50  # EXTERN


# s273 # say28036
label morte_s273: # -
    nr 'Morte nods appreciatively. "Hey, this guy„s not bad."'

    menu:
        '"Fine, here… take your money back, Malmaner."':
            # a564 # r28041
            $ morteLogic.r28041_action()
            jump malmanr_s13  # EXTERN

        'Throw the ten copper coins at Malmaner.':
            # a565 # r28042
            $ morteLogic.r28042_action()
            jump malmanr_s14  # EXTERN

        '"Really? I didn„t hear a thing, Morte. Let“s go."':
            # a566 # r28043
            jump malmanr_s15  # EXTERN


# s274 # say28037
label morte_s274: # -
    nr 'Morte nods appreciatively. "Hey, this guy„s not bad."'

    menu:
        '"Fine, here… take your money back, Malmaner."' if morteLogic.r28038_condition():
            # a567 # r28038
            $ morteLogic.r28038_action()
            jump malmanr_s13  # EXTERN

        'Throw the thirty copper coins at Malmaner.' if morteLogic.r28039_condition():
            # a568 # r28039
            $ morteLogic.r28039_action()
            jump malmanr_s14  # EXTERN

        '"Fine, here… take your money back, Malmaner."' if morteLogic.r28040_condition():
            # a569 # r28040
            $ morteLogic.r28040_action()
            jump malmanr_s13  # EXTERN

        'Throw the fifty copper coins at Malmaner.' if morteLogic.r28044_condition():
            # a570 # r28044
            $ morteLogic.r28044_action()
            jump malmanr_s14  # EXTERN

        '"Fine, here… take your money back, Malmaner."' if morteLogic.r28045_condition():
            # a571 # r28045
            $ morteLogic.r28045_action()
            jump malmanr_s13  # EXTERN

        'Throw the fifty copper coins at Malmaner.' if morteLogic.r28046_condition():
            # a572 # r28046
            $ morteLogic.r28046_action()
            jump malmanr_s14  # EXTERN

        '"Fine, here… take your money back, Malmaner."' if morteLogic.r28047_condition():
            # a573 # r28047
            $ morteLogic.r28047_action()
            jump malmanr_s13  # EXTERN

        'Throw the eighty copper coins at Malmaner.' if morteLogic.r28048_condition():
            # a574 # r28048
            $ morteLogic.r28048_action()
            jump malmanr_s14  # EXTERN

        '"Really? I didn„t hear a thing, Morte. Let“s go."':
            # a575 # r28049
            jump malmanr_s15  # EXTERN


# s275 # say28630
label morte_s275: # -
    nr '"Sounds dull."'

    jump grace_s60  # EXTERN


# s276 # say28631
label morte_s276: # -
    nr '"She„s a tanar“ri… a succubus, chief."'

    jump grace_s72  # EXTERN


# s277 # say28632
label morte_s277: # -
    nr '"Bar that, fiendling!" Morte clicks his teeth together. "I„m ALL for the succubus coming with us… the powers know *you“re* about as fun as passing a caltrop through your bowels."'

    jump annah_s166  # EXTERN


# s278 # say28633
label morte_s278: # -
    nr '"Hey, wait just a minute! *I„m* the one well-versed in the planes! That“s my job, chief!"'

    menu:
        '"Having two people knowledgeable about the planes in our band seems pretty smart to me. Besides, I said, „pleasant,“ too, Morte."':
            # a576 # r28634
            jump morte_s279


# s279 # say28635
label morte_s279: # from 278.0
    nr '"Pleasant on the eyes, maybe! Looks to ME like all some chit has to do is show a little skin, and you„ll sign her right up!" Morte falls silent. "Not that I mind that really, I just thought I“d mention it."'

    menu:
        '"Noted, Morte. Look… Lady Grace, excuse me if I„m being too forward, but would you care to travel with us?"':
            # a577 # r28636
            jump grace_s79  # EXTERN


# s280 # say28637
label morte_s280: # -
    nr '"What my scarred companion meant to say is, the TWO of us… I„m Morte, by the way: my apologies for my companion“s rudeness in not introducing us… think it would be an EXCELLENT idea if you came on board. We have plenty of room for a succubus. PLENTY of room."'

    jump grace_s119  # EXTERN


# s281 # say28738
label morte_s281: # - # IF WEIGHT #4 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  Global("Morte_Stolen","GLOBAL",2) !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Thanks, chief. I can„t tell you how glad I am to be back with you." His voice drips with sarcasm. "And here I learned a new trick while I was there and everything."'

    menu:
        '"Yeah. Right. It„s a real pleasure to have you back."':
            # a578 # r28743
            $ morteLogic.r28743_action()
            jump morte_dispose

        '"Sorry, friend. I wanted to bluff him."' if morteLogic.r28744_condition():
            # a579 # r28744
            $ morteLogic.r28744_action()
            jump morte_s282

        '"Sorry, friend, I wanted to bluff him."' if morteLogic.r28745_condition():
            # a580 # r28745
            $ morteLogic.r28745_action()
            jump morte_s283


# s282 # say28739
label morte_s282: # from 281.1
    nr '"Really? That„s kind of you, boss. Good thinking. You“re provisionally forgiven. Just don„t do it again."'

    menu:
        '"Sure, Morte. Let„s go."':
            # a581 # r28746
            jump morte_dispose


# s283 # say28740
label morte_s283: # from 281.2
    nr '"Somehow, I don„t believe you for a second. Let“s just forget this ever happened. Let„s go."'

    menu:
        '"Fine."':
            # a582 # r28747
            jump morte_dispose

        '"Morte, I was bluffing him. You„ll see."':
            # a583 # r28748
            jump morte_dispose


# s284 # say28741
label morte_s284: # -
    nr '"Thanks, boss. Let„s get out of here!" Morte pauses. "Oh, by the way, boss… those guys really had their heads together. They taught me something sharp."'

    menu:
        '"Let„s go."':
            # a584 # r28749
            jump morte_dispose


# s285 # say28962
label morte_s285: # -
    nr '"Uh… chief? You„ve seen statues before, right? Know that they don“t talk or anything?"'

    menu:
        '"Consider this, Morte: you„re a floating, talking skull who“s denying the possibility of a living statue."' if morteLogic.r28967_condition():
            # a585 # r28967
            jump morte_s286

        '"I met a mage named Salabesh who spoke of a stone man, here. Are you he?"' if morteLogic.r28968_condition():
            # a586 # r28968
            $ morteLogic.r28968_action()
            jump quisai_s5  # EXTERN

        '"Perhaps, Morte. I„ll just touch him…"':
            # a587 # r28969
            jump quisai_s3  # EXTERN

        'Leave.':
            # a588 # r28970
            jump morte_dispose


# s286 # say28963
label morte_s286: # from 285.0
    nr '"Well… uh… hmm. Got me there, boss."'

    menu:
        '"I met a mage named Salabesh who spoke of a stone man, here. Are you he?"' if morteLogic.r28971_condition():
            # a589 # r28971
            $ morteLogic.r28971_action()
            jump quisai_s5  # EXTERN

        '"That I do, Morte. I„ll just touch him…"':
            # a590 # r28972
            jump quisai_s3  # EXTERN

        'Leave.':
            # a591 # r28973
            jump morte_dispose


# s287 # say28964
label morte_s287: # -
    nr '"Maybe it„s a little too anatomically correct, chief?"'

    menu:
        '"It was a rhetorical question, Morte."':
            # a592 # r28974
            jump morte_s288


# s288 # say28965
label morte_s288: # from 287.0
    nr '"Sure, boss. I knew that."'

    menu:
        '"I met a mage named Salabesh who spoke of a stone man, here. Are you he?"' if morteLogic.r28975_condition():
            # a593 # r28975
            $ morteLogic.r28975_action()
            jump quisai_s5  # EXTERN

        'Strike the statue.':
            # a594 # r28976
            $ morteLogic.r28976_action()
            jump quisai_s23  # EXTERN

        'Leave.':
            # a595 # r28977
            jump morte_dispose


# s289 # say28966
label morte_s289: # -
    nr 'Morte rolls his eyes and makes a gagging noise. "Powers, no, not another berk that talks… like… this!"'

    menu:
        '"I have questions about you…"':
            # a596 # r28978
            jump quisai_s11  # EXTERN

        '"I have questions about this place."':
            # a597 # r28979
            jump quisai_s30  # EXTERN

        '"What do you know of Ravel Puzzlewell?"' if morteLogic.r28980_condition():
            # a598 # r28980
            jump quisai_s29  # EXTERN

        '"I„ll take you up on that later. Farewell."':
            # a599 # r28981
            jump morte_dispose


# s290 # say29677
label morte_s290: # -
    nr '"Hey, chief - he„s got his fingers crossed!"'

    jump quell_s21  # EXTERN


# s291 # say30527
label morte_s291: # -
    nr 'Morte breaks in with a whisper. "He„s saying he“s a lawyer. A counselor. One of those berks who rattle their bone-boxes at the courts."'

    jump iannis_s10  # EXTERN


# s292 # say30816
label morte_s292: # -
    nr 'Morte turns and looks behind him. "Where?! Where?!"'

    jump able_s2  # EXTERN


# s293 # say30817
label morte_s293: # -
    nr 'Morte gasps. "Look, behind you - another floating skull!"'

    menu:
        'Look for the skull yourself.' if morteLogic.r30822_condition():
            # a600 # r30822
            jump able_s10  # EXTERN

        'Let Morte have his fun.' if morteLogic.r30823_condition():
            # a601 # r30823
            jump able_s10  # EXTERN

        '"Come on, Morte. I have questions for him…"' if morteLogic.r30824_condition():
            # a602 # r30824
            jump able_s10  # EXTERN


# s294 # say30818
label morte_s294: # -
    nr '"Right where I„m pointing! There!"'

    jump able_s11  # EXTERN


# s295 # say30819
label morte_s295: # -
    nr 'Morte speaks with mock exasperation: "You just missed it! A whole *parade* of them! Probably never happen again in a million revolutions of the Great Ring!"'

    jump able_s12  # EXTERN


# s296 # say30820
label morte_s296: # -
    nr 'Morte bobs slightly, as if shrugging. "I prefer to refer to it as keen insights into human nature."'

    menu:
        '"I had some questions…"' if morteLogic.r30825_condition():
            # a603 # r30825
            jump able_s16  # EXTERN

        'Get the man„s attention again.' if morteLogic.r30826_condition():
            # a604 # r30826
            $ morteLogic.r30826_action()
            jump able_s13  # EXTERN


# s297 # say30821
label morte_s297: # -
    nr '"You know, chief, that JUST MIGHT BE CRAZY ENOUGH TO WORK!"'

    jump able_s65  # EXTERN


# s298 # say31566
label morte_s298: # -
    nr '"By the Lady„s bladed teats, what a-"  Everything suddenly falls silent as the last of your senses flicker and fade away to nothing.~ [MRT387]'

    menu:
        'Die horribly, a victim of Gangroighydon„s Awful Curse.':
            # a605 # r31567
            $ morteLogic.r31567_action()
            jump morte_dispose


# s299 # say32367
label morte_s299: # -
    nr '"„Darks?!“ Gimme a break! We„re really not going to *listen* to this rattletrap, are we? C“mon… let„s go find some Sensate chits that have never had the pleasurous sensation of tasting the fiery passion of a skull“s lips." He waggles eyebrows in anticipation.'

    menu:
        '"Quiet down, Morte. We„re staying… for a while, at least."':
            # a606 # r32368
            jump deathad_s1  # EXTERN

        'Ignore Morte, keep listening.':
            # a607 # r32369
            jump deathad_s1  # EXTERN

        '"You„re right, Morte - let“s leave."':
            # a608 # r32370
            $ morteLogic.r32370_action()
            jump morte_dispose


# s300 # say32371
label morte_s300: # -
    nr 'Morte whispers: "Beginning of more suffering."'

    menu:
        'Nod to Morte quietly.':
            # a609 # r32372
            jump deathad_s2  # EXTERN

        '"Morte - quiet down."':
            # a610 # r32373
            jump deathad_s2  # EXTERN

        'Ignore Morte, keep listening,':
            # a611 # r32374
            jump deathad_s2  # EXTERN

        '"No kidding. Let„s leave, Morte."':
            # a612 # r32375
            $ morteLogic.r32375_action()
            jump morte_dispose


# s301 # say32376
label morte_s301: # -
    nr 'Morte whispers: "That„s for sure."'

    menu:
        'Nod to Morte quietly.':
            # a613 # r32377
            jump deathad_s3  # EXTERN

        '"Morte - be quiet."':
            # a614 # r32378
            jump deathad_s3  # EXTERN

        'Ignore Morte, keep listening,':
            # a615 # r32379
            jump morte_s303

        '"No kidding. Let„s leave, Morte."':
            # a616 # r32380
            $ morteLogic.r32380_action()
            jump morte_dispose


# s302 # say32381
label morte_s302: # -
    nr 'Morte whispers: "And eternal boredom."'

    menu:
        'Nod to Morte quietly.':
            # a617 # r32382
            jump deathad_s5  # EXTERN

        '"Please, Morte: quiet."':
            # a618 # r32383
            jump deathad_s5  # EXTERN

        'Ignore Morte, keep listening,':
            # a619 # r32384
            jump deathad_s5  # EXTERN

        '"No kidding. Let„s leave, Morte."':
            # a620 # r32385
            $ morteLogic.r32385_action()
            jump morte_dispose


# s303 # say32386
label morte_s303: # from 301.2
    nr 'Morte whispers: "Looks like we know where we both are going to end up when we die."'

    menu:
        'Nod to Morte quietly.':
            # a621 # r32387
            jump deathad_s6  # EXTERN

        '"Morte: stop talking."':
            # a622 # r32388
            jump deathad_s6  # EXTERN

        'Ignore Morte, keep listening,':
            # a623 # r32389
            jump deathad_s6  # EXTERN

        '"No kidding. Let„s leave, Morte."':
            # a624 # r32390
            $ morteLogic.r32390_action()
            jump morte_dispose


# s304 # say32391
label morte_s304: # -
    nr 'Morte whispers: "And that„s if you“re lucky."'

    menu:
        'Nod to Morte quietly.':
            # a625 # r32392
            jump deathad_s8  # EXTERN

        '"That„s enough, Morte."':
            # a626 # r32393
            jump deathad_s8  # EXTERN

        'Ignore Morte, keep listening,':
            # a627 # r32394
            jump deathad_s8  # EXTERN

        '"No kidding. Let„s leave, Morte."':
            # a628 # r32395
            $ morteLogic.r32395_action()
            jump morte_dispose


# s305 # say32396
label morte_s305: # -
    nr 'Morte whispers: "And that„s supposed to be an incentive? We get to do this all *again?* Gee, I can“t wait to be a floating skull all over again. Whee! Pike him. What a tard. Spoken just like someone who hasn„t died before, huh?"'

    menu:
        'Nod to Morte quietly.':
            # a629 # r32397
            jump deathad_s9  # EXTERN

        '"Come on, Morte. Quiet."':
            # a630 # r32398
            jump deathad_s9  # EXTERN

        'Ignore Morte, keep listening,':
            # a631 # r32399
            jump deathad_s9  # EXTERN

        '"No kidding. Let„s leave, Morte."':
            # a632 # r32400
            $ morteLogic.r32400_action()
            jump morte_dispose


# s306 # say32401
label morte_s306: # -
    nr 'Morte whispers: "Oh, this is one, big steaming load."'

    menu:
        'Nod to Morte quietly.':
            # a633 # r32402
            jump deathad_s11  # EXTERN

        '"Morte - quiet down."':
            # a634 # r32403
            jump deathad_s11  # EXTERN

        'Ignore Morte, keep listening,':
            # a635 # r32404
            jump deathad_s11  # EXTERN

        '"No kidding. Let„s leave, Morte."':
            # a636 # r32405
            $ morteLogic.r32405_action()
            jump morte_dispose


# s307 # say32406
label morte_s307: # -
    nr 'Morte says aloud: "What wash!"'

    jump deathad_s15  # EXTERN


# s308 # say32407
label morte_s308: # -
    nr 'Morte ducks below the lecturer„s field of view, then turns to you and whispers: "Go ahead, chief. Tell him the dark of it."'

    menu:
        '"Yes, I have a question…"':
            # a637 # r32408
            jump deathad_s17  # EXTERN

        '"No questions. My friend misspoke."':
            # a638 # r32409
            jump deathad_s16  # EXTERN


# s309 # say32410
label morte_s309: # -
    nr '"Great! Another death! Sign me up!" There is laughter from the audience. The speaker looks angry.'

    menu:
        '"What happens when they die?"':
            # a639 # r32411
            jump deathad_s26  # EXTERN

        '"I had another question…"':
            # a640 # r32412
            jump deathad_s17  # EXTERN

        '"That„s all I wished to know."':
            # a641 # r32413
            jump deathad_s18  # EXTERN


# s310 # say32651
label morte_s310: # -
    nr '"Want me to slap this barmy chit down, chief?"'

    menu:
        '"Show no mercy, Morte."':
            # a642 # r32661
            jump morte_s316

        '"No, Morte… I„ll handle this."':
            # a643 # r32662
            jump sarhava_s3  # EXTERN


# s311 # say32652
label morte_s311: # -
    nr '"I love your addled ways, chief."'

    jump sarhava_s4  # EXTERN


# s312 # say32653
label morte_s312: # -
    nr 'As you kneel before the woman, Morte cries out: "Chief! You„re kidding me! I mean, unless, you“re *into* that or something…"'

    menu:
        'Ignore Morte, lick the woman„s boot.':
            # a644 # r32663
            jump sarhava_s14  # EXTERN

        '"I just don„t want to make any trouble, Morte. If I“m not careful I could get the guard summoned."':
            # a645 # r32664
            jump morte_s313

        '"You„re right, Morte. Let“s go."':
            # a646 # r32665
            jump sarhava_s13  # EXTERN


# s313 # say32654
label morte_s313: # from 312.1
    nr '"Well, you„ve a point there… but still…"'

    menu:
        '"Forget it, Morte. Look, madam… let„s just end this before I call the guards myself."':
            # a647 # r32666
            jump sarhava_s7  # EXTERN

        '"You„re right, Morte. Let“s just go."':
            # a648 # r32667
            jump sarhava_s13  # EXTERN


# s314 # say32655
label morte_s314: # -
    nr 'Morte chuckles and clicks his teeth together. "Just a regular lady„s man, eh, chief?"'

    jump morte_dispose


# s315 # say32656
label morte_s315: # -
    nr '"Uh-oh…"'

    jump morte_dispose


# s316 # say32657
label morte_s316: # from 310.0
    nr 'Morte winks at you and calls to the woman: "Hey, you! That„s right, you there, you saucy little tart… look at me when I talk to you! What“s got you so bitter, hmm?"'

    jump sarhava_s39  # EXTERN


# s317 # say32658
label morte_s317: # -
    nr '"Aw, does the little Desert Princess have her britches in a bunch because the Sultan wanted another son? Tell me, „Desert Princess,“ do you spend most of your nights drunken and belligerent, followed about by a handful of leering sycophants, looking in your own pathetic way to justify your existence to a disapproving father?"'

    jump sarhava_s40  # EXTERN


# s318 # say32659
label morte_s318: # -
    nr '"Do you really think your petty brawling will finally make you feel better about yourself? Feel like you„re *worth* something? Because IT WON“T! If this is your sad little path to feeling better about who you *are,* I suggest you just give up, go home, and marry off into some courtier„s harem!"'

    jump sarhava_s41  # EXTERN


# s319 # say32660
label morte_s319: # -
    nr 'Morte turns to you. "See, chief, I *know* what„s going to happen here. We *all* know Morte“s right on the ball with this one. But oh, no, proud little Desert Princess, cut down in public, humiliat-"'

    jump sarhava_s42  # EXTERN


# s320 # say33073
label morte_s320: # -
    nr '"The Blood War? More boring than listening to a Guvner recite laws. Let„s find some young Sensates who need to be indoctrinated in the ways of passion!" He waggles eyebrows in anticipation.'

    menu:
        '"No, Morte… I want to hear this."':
            # a649 # r33074
            jump ghysis_s1  # EXTERN

        'Ignore Morte, keep listening,':
            # a650 # r33075
            jump ghysis_s1  # EXTERN

        '"All right, Morte - we„ll go."':
            # a651 # r33076
            $ morteLogic.r33076_action()
            jump morte_dispose


# s321 # say33300
label morte_s321: # -
    nr 'Morte rolls his eyes and cries "Oye! Look! A talkin„ turd!"'

    jump ghivem_s49  # EXTERN


# s322 # say33301
label morte_s322: # -
    nr 'Morte bobs in your direction, speaking to the man: "I was referring to this big scarred-up berk here, blood… not you! No harm done, eh?"'

    menu:
        '"Watch it, Morte…"':
            # a652 # r33302
            jump ghivem_s51  # EXTERN

        'Ignore Morte.':
            # a653 # r33303
            jump ghivem_s51  # EXTERN


# s323 # say33423
label morte_s323: # -
    nr 'Morte rolls his eyes and cries "Oye! Look! A talkin„ turd!"'

    jump ghivef_s47  # EXTERN


# s324 # say33429
label morte_s324: # -
    nr 'Morte bobs in your direction, speaking to the man: "I was referring to this big scarred-up berk here, blood… not you! No harm done, eh?"'

    menu:
        '"Watch it, Morte…"':
            # a654 # r33430
            jump ghivef_s49  # EXTERN

        'Ignore Morte.':
            # a655 # r33433
            jump ghivef_s49  # EXTERN


# s325 # say33958
label morte_s325: # - # IF WEIGHT #5 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"I knew you„d be back, chief! Finally realized you needed me, huh?"~ [MRT516]'

    menu:
        '"Yeah… let„s go."':
            # a656 # r33959
            $ morteLogic.r33959_action()
            jump morte_dispose

        '"Not right now, Morte."':
            # a657 # r33960
            jump morte_s326


# s326 # say33961
label morte_s326: # from 325.1
    nr '"Hmmmph. Well, I don„t know how long I“m going to wait here, so I„m going to give you one LAST chance. You sure you don“t want my sage advice and quick wit?"'

    menu:
        '"Morte, you don„t have EITHER of those things."':
            # a658 # r33962
            jump morte_s327

        '"All right, I changed my mind. Come on, let„s go."':
            # a659 # r33963
            $ morteLogic.r33963_action()
            jump morte_dispose

        '"Not at the moment, Morte. Maybe later."':
            # a660 # r33964
            jump morte_s327


# s327 # say33965
label morte_s327: # from 326.0 326.2
    nr '"Are you trying to hurt my feelings, chief? What, was it something I said? The fact I don„t have arms? What?"'

    menu:
        '"All right, I changed my mind. Come on, let„s go."':
            # a661 # r33966
            $ morteLogic.r33966_action()
            jump morte_dispose

        '"Nothing like that. It„s just I don“t need your company right now. Farewell, Morte."':
            # a662 # r33967
            jump morte_s328


# s328 # say33968
label morte_s328: # from 327.1
    nr '"Well, I„m not going to wait FOREVER, so you better come back as soon as you change your mind."'

    menu:
        '"I will. Farewell, Morte."':
            # a663 # r33969
            jump morte_dispose


# s329 # say33970
label morte_s329: # from 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0
    nr '"What„s eating you, chief?"'

    menu:
        '"Can you read to me what„s tattooed on my back again?"':
            # a664 # r65539
            jump morte_s649

        '"Can you tell me a little about Sigil?"':
            # a665 # r65540
            jump morte_s659

        '"Morte… I don„t mind you tagging along, but is there anything *else* you can do except chatter?"' if morteLogic.r65541_condition():
            # a666 # r65541
            jump morte_s663

        '"Morte… what are your special talents again?"' if morteLogic.r65542_condition():
            # a667 # r65542
            jump morte_s666

        '"Morte, why didn„t you tell me about that extra line of tattoos on my back?"' if morteLogic.r65543_condition():
            # a668 # r65543
            jump morte_s654

        '"I could use some advice. What do you think we should do next?"':
            # a669 # r65544
            jump morte_s669

        '"You said you„re a mimir, right, Morte?"' if morteLogic.r65545_condition():
            # a670 # r65545
            jump morte_s684

        '"Tell me again how you ended up on the Pillar of Skulls."' if morteLogic.r65546_condition():
            # a671 # r65546
            jump morte_s693

        '"Morte, why did you keep traveling with me once I got off the Pillar?"' if morteLogic.r65547_condition():
            # a672 # r65547
            jump morte_s715

        '"What do you know about the Blood War?"' if morteLogic.r65548_condition():
            # a673 # r65548
            jump morte_s723

        '"What do you know about the night hag Ravel?"' if morteLogic.r65549_condition():
            # a674 # r65549
            jump morte_s722

        '"How did you die, Morte?"':
            # a675 # r65550
            jump morte_s726

        '"Nothing, Morte. Just checking to see if you were still with me."':
            # a676 # r65551
            jump morte_dispose


# s330 # say34990
label morte_s330: # externs zf114_s2 zf114_s1 zf114_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a677 # r34991
            $ morteLogic.r34991_action()
            jump morte_s331

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a678 # r35001
            $ morteLogic.r35001_action()
            jump morte_s331


# s331 # say34992
label morte_s331: # from 330.0 330.1
    nr '"Wha- are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a679 # r34993
            $ morteLogic.r34993_action()
            jump morte_s332

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a680 # r34996
            jump morte_s333

        '"I think you and your imagination need some time away from each other."':
            # a681 # r34999
            jump morte_s333

        '"Whatever, Morte. Let„s go."':
            # a682 # r35000
            jump morte_dispose


# s332 # say34994
label morte_s332: # from 331.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a683 # r34995
            jump morte_dispose


# s333 # say34997
label morte_s333: # from 331.1 331.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a684 # r34998
            jump morte_dispose


# s334 # say35022
label morte_s334: # externs zf594_s2 zf594_s1 zf594_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a685 # r35023
            $ morteLogic.r35023_action()
            jump morte_s335

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a686 # r35033
            $ morteLogic.r35033_action()
            jump morte_s335


# s335 # say35024
label morte_s335: # from 334.0 334.1
    nr '"Wha- are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a687 # r35025
            $ morteLogic.r35025_action()
            jump morte_s336

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a688 # r35028
            jump morte_s337

        '"I think you and your imagination need some time away from each other."':
            # a689 # r35031
            jump morte_s337

        '"Whatever, Morte. Let„s go."':
            # a690 # r35032
            jump morte_dispose


# s336 # say35026
label morte_s336: # from 335.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a691 # r35027
            jump morte_dispose


# s337 # say35029
label morte_s337: # from 335.1 335.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a692 # r35030
            jump morte_dispose


# s338 # say35054
label morte_s338: # externs zf626_s2 zf626_s1 zf626_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a693 # r35055
            $ morteLogic.r35055_action()
            jump morte_s339

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a694 # r35065
            $ morteLogic.r35065_action()
            jump morte_s339


# s339 # say35056
label morte_s339: # from 338.0 338.1
    nr '"Wha - are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a695 # r35057
            $ morteLogic.r35057_action()
            jump morte_s340

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a696 # r35060
            jump morte_s341

        '"I think you and your imagination need some time away from each other."':
            # a697 # r35063
            jump morte_s341

        '"Whatever, Morte. Let„s go."':
            # a698 # r35064
            jump morte_dispose


# s340 # say35058
label morte_s340: # from 339.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a699 # r35059
            jump morte_dispose


# s341 # say35061
label morte_s341: # from 339.1 339.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a700 # r35062
            jump morte_dispose


# s342 # say35086
label morte_s342: # externs zf1096_s2 zf1096_s1 zf1096_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a701 # r35087
            $ morteLogic.r35087_action()
            jump morte_s343

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a702 # r35097
            $ morteLogic.r35097_action()
            jump morte_s343


# s343 # say35088
label morte_s343: # from 342.0 342.1
    nr '"Wha- are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a703 # r35089
            $ morteLogic.r35089_action()
            jump morte_s344

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a704 # r35092
            jump morte_s345

        '"I think you and your imagination need some time away from each other."':
            # a705 # r35095
            jump morte_s345

        '"Whatever, Morte. Let„s go."':
            # a706 # r35096
            jump morte_dispose


# s344 # say35090
label morte_s344: # from 343.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a707 # r35091
            jump morte_dispose


# s345 # say35093
label morte_s345: # from 343.1 343.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a708 # r35094
            jump morte_dispose


# s346 # say35118
label morte_s346: # externs zf1072_s2 zf1072_s1 zf1072_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a709 # r35119
            $ morteLogic.r35119_action()
            jump morte_s347

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a710 # r35129
            $ morteLogic.r35129_action()
            jump morte_s347


# s347 # say35120
label morte_s347: # from 346.0 346.1
    nr '"Wha- are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a711 # r35121
            $ morteLogic.r35121_action()
            jump morte_s348

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a712 # r35124
            jump morte_s349

        '"I think you and your imagination need some time away from each other."':
            # a713 # r35127
            jump morte_s349

        '"Whatever, Morte. Let„s go."':
            # a714 # r35128
            jump morte_dispose


# s348 # say35122
label morte_s348: # from 347.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a715 # r35123
            jump morte_dispose


# s349 # say35125
label morte_s349: # from 347.1 347.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a716 # r35126
            jump morte_dispose


# s350 # say35150
label morte_s350: # externs zf832_s2 zf832_s1 zf832_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a717 # r35151
            $ morteLogic.r35151_action()
            jump morte_s351

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a718 # r35161
            $ morteLogic.r35161_action()
            jump morte_s351


# s351 # say35152
label morte_s351: # from 350.0 350.1
    nr '"Wha- are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a719 # r35153
            $ morteLogic.r35153_action()
            jump morte_s352

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a720 # r35156
            jump morte_s353

        '"I think you and your imagination need some time away from each other."':
            # a721 # r35159
            jump morte_s353

        '"Whatever, Morte. Let„s go."':
            # a722 # r35160
            jump morte_dispose


# s352 # say35154
label morte_s352: # from 351.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a723 # r35155
            jump morte_dispose


# s353 # say35157
label morte_s353: # from 351.1 351.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a724 # r35158
            jump morte_dispose


# s354 # say35182
label morte_s354: # externs zf679_s2 zf679_s1 zf679_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a725 # r35183
            $ morteLogic.r35183_action()
            jump morte_s355

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a726 # r35193
            $ morteLogic.r35193_action()
            jump morte_s355


# s355 # say35184
label morte_s355: # from 354.0 354.1
    nr '"Wha- are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a727 # r35185
            $ morteLogic.r35185_action()
            jump morte_s356

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a728 # r35188
            jump morte_s357

        '"I think you and your imagination need some time away from each other."':
            # a729 # r35191
            jump morte_s357

        '"Whatever, Morte. Let„s go."':
            # a730 # r35192
            jump morte_dispose


# s356 # say35186
label morte_s356: # from 355.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a731 # r35187
            jump morte_dispose


# s357 # say35189
label morte_s357: # from 355.1 355.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a732 # r35190
            jump morte_dispose


# s358 # say35214
label morte_s358: # externs zf444_s2 zf444_s1 zf444_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a733 # r35215
            $ morteLogic.r35215_action()
            jump morte_s359

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a734 # r35225
            $ morteLogic.r35225_action()
            jump morte_s359


# s359 # say35216
label morte_s359: # from 358.0 358.1
    nr '"Wha- are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a735 # r35217
            $ morteLogic.r35217_action()
            jump morte_s360

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a736 # r35220
            jump morte_s361

        '"I think you and your imagination need some time away from each other."':
            # a737 # r35223
            jump morte_s361

        '"Whatever, Morte. Let„s go."':
            # a738 # r35224
            jump morte_dispose


# s360 # say35218
label morte_s360: # from 359.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a739 # r35219
            jump morte_dispose


# s361 # say35221
label morte_s361: # from 359.1 359.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a740 # r35222
            jump morte_dispose


# s362 # say35246
label morte_s362: # externs zf1148_s2 zf1148_s1 zf1148_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a741 # r35247
            $ morteLogic.r35247_action()
            jump morte_s363

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a742 # r35257
            $ morteLogic.r35257_action()
            jump morte_s363


# s363 # say35248
label morte_s363: # from 362.0 362.1
    nr '"Wha - are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a743 # r35249
            $ morteLogic.r35249_action()
            jump morte_s364

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a744 # r35252
            jump morte_s365

        '"I think you and your imagination need some time away from each other."':
            # a745 # r35255
            jump morte_s365

        '"Whatever, Morte. Let„s go."':
            # a746 # r35256
            jump morte_dispose


# s364 # say35250
label morte_s364: # from 363.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a747 # r35251
            jump morte_dispose


# s365 # say35253
label morte_s365: # from 363.1 363.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a748 # r35254
            jump morte_dispose


# s366 # say35278
label morte_s366: # externs zf891_s2 zf891_s1 zf891_s0
    nr '"Psssst. You see the way she was looking at me? Huh? You see that? The way she was following the curve of my occipital bone?"'

    menu:
        '"What are you *talking* about?"':
            # a749 # r35279
            $ morteLogic.r35279_action()
            jump morte_s367

        '"You mean that blank-eyed beyond-the-grave stare?"':
            # a750 # r35289
            $ morteLogic.r35289_action()
            jump morte_s367


# s367 # say35280
label morte_s367: # from 366.0 366.1
    nr '"Wha- are you BLIND?! She was scouting me out! It was shameless the way she WANTED me."'

    menu:
        '"Wanted you to go *away,* maybe. She was obviously too distracted by ME to pay attention to some stupid bobbing head with a big mouth."':
            # a751 # r35281
            $ morteLogic.r35281_action()
            jump morte_s368

        '"I think you„re imagining things. She“s a zombie. A corpse. A dead person. You probably didn„t even register to her senses."':
            # a752 # r35284
            jump morte_s369

        '"I think you and your imagination need some time away from each other."':
            # a753 # r35287
            jump morte_s369

        '"Whatever, Morte. Let„s go."':
            # a754 # r35288
            jump morte_dispose


# s368 # say35282
label morte_s368: # from 367.0
    nr '"You? Yeah, right! Trust me, chits beyond the grave don„t care about all that “physicality„ and “I„ve got a body“ and „I“m all scarred and tough-looking.„ They want guys with SPIRIT. That“s me, chief. You? Corpses like YOU are as common as copper."'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a755 # r35283
            jump morte_dispose


# s369 # say35285
label morte_s369: # from 367.1 367.2
    nr '"Yeah, yeah, whatever. When you„ve been dead as long as I have, you know the signals. They may be too SUBTLE for you to pick up on, but that“s why I„ll be spending MY nights with some luscious recently-dead chit while you“re standing around goin„ “huh?„ “Whatzz goin„ on?“ „Where“s my muh-muh-memories?„"'

    menu:
        '"Whatever, Morte. Let„s go."':
            # a756 # r35286
            jump morte_dispose


# s370 # say35310
label morte_s370: # from 377.3
    nr '"Hmmmm. Wonder if this graybeard would mind if *I* borrowed his body…"'

    menu:
        '"Graybeard?"':
            # a757 # r35311
            jump morte_s371

        '"I don„t think he“s in any position to object."':
            # a758 # r35326
            jump morte_s372

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a759 # r35327
            jump morte_s373


# s371 # say35312
label morte_s371: # from 370.0
    nr '"Graybeard… you know, geezer, old feller, yellow dog… old."'

    menu:
        '"Well, I don„t think he“s in any position to object. Why not take his body?"':
            # a760 # r35313
            jump morte_s372

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a761 # r35325
            jump morte_s373


# s372 # say35314
label morte_s372: # from 370.1 371.0
    nr 'Morte studies the skeleton for a moment, then shakes his head. "Nah… I„d need a fresher one than this. And something with a little more dignity… this one“s all creaky and fractured."'

    menu:
        '"And you„re not?"':
            # a762 # r35315
            jump morte_s373

        '"All right then. Let„s go."':
            # a763 # r35324
            jump morte_dispose


# s373 # say35316
label morte_s373: # from 370.2 371.1 372.0
    nr '"Oh, you„re a sackfull of laughs." Morte glares at you. "Besides, YOU“RE one to talk, berk. Mirrors beg for mercy when you„re around."'

    menu:
        '"Oh, yeah? At least *I* have all my parts."':
            # a764 # r35317
            jump morte_s374

        '"Let„s go."':
            # a765 # r35323
            jump morte_dispose


# s374 # say35318
label morte_s374: # from 373.0
    nr 'Morte snorts. You„re not quite sure how he managed it without lungs.'

    menu:
        '"Let me tell you, Morte, there„s nothing more satisfying than walking around, swinging your arms, breathing the crisp air through the lungs. It“s GREAT to have a body."':
            # a766 # r35319
            $ morteLogic.r35319_action()
            jump morte_s375

        '"Let„s go."':
            # a767 # r35322
            jump morte_dispose


# s375 # say35320
label morte_s375: # from 374.0
    nr '"I„ll have you know that helping you escape the preparation room has now been added to my growing list of regrets." Morte snorts again. "I should have let you rot… some more, that is."'

    menu:
        '"Glad you feel that way. Let„s go."':
            # a768 # r35321
            jump morte_dispose


# s376 # say35341
label morte_s376: # externs s1221_s3 s1221_s0
    nr '"Whoa, chief. That„s vandalism. Those bolts are probably the only thing holding that bag of bones together. Necromancy only goes so far with these old fellas, y“know?"'

    menu:
        '"So?"':
            # a769 # r35342
            $ morteLogic.r35342_action()
            jump morte_s377

        '"Oh… I didn„t want to cause any permanent damage."':
            # a770 # r35360
            $ morteLogic.r35360_action()
            jump morte_s377

        '"All right then, never mind. Maybe some other time."':
            # a771 # r35361
            jump morte_s377


# s377 # say35343
label morte_s377: # from 376.0 376.1 376.2
    nr '"Oh, it„s not a problem." Morte does a strange bobbing motion that you think might be a shrug. "Just wasn“t sure if you knew that or not. By all means, go ahead."'

    menu:
        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35344_condition():
            # a772 # r35344
            jump s1221_s4  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35352_condition():
            # a773 # r35352
            jump s1221_s5  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35355_condition():
            # a774 # r35355
            jump s1221_s6  # EXTERN

        '"Never mind. Maybe some other time."' if morteLogic.r35358_condition():
            # a775 # r35358
            $ morteLogic.r35358_action()
            jump morte_s370

        '"Never mind. Maybe some other time."' if morteLogic.r35359_condition():
            # a776 # r35359
            jump morte_dispose


# s378 # say35387
label morte_s378: # from 385.3
    nr '"Hmmmm. Wonder if this graybeard would mind if *I* borrowed his body…"'

    menu:
        '"Graybeard?"':
            # a777 # r35388
            jump morte_s379

        '"I don„t think he“s in any position to object."':
            # a778 # r35403
            jump morte_s380

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a779 # r35404
            jump morte_s381


# s379 # say35389
label morte_s379: # from 378.0
    nr '"Graybeard… you know, geezer, old feller, yellow dog… old."'

    menu:
        '"Well, I don„t think he“s in any position to object. Why not take his body?"':
            # a780 # r35390
            jump morte_s380

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a781 # r35402
            jump morte_s381


# s380 # say35391
label morte_s380: # from 378.1 379.0
    nr 'Morte studies the skeleton for a moment, then shakes his head. "Nah… I„d need a fresher one than this. And something with a little more dignity… this one“s all creaky and fractured."'

    menu:
        '"And you„re not?"':
            # a782 # r35392
            jump morte_s381

        '"All right then. Let„s go."':
            # a783 # r35401
            jump morte_dispose


# s381 # say35393
label morte_s381: # from 378.2 379.1 380.0
    nr '"Oh, you„re a sackfull of laughs." Morte glares at you. "Besides, YOU“RE one to talk, berk. Mirrors beg for mercy when you„re around."'

    menu:
        '"Oh, yeah? At least *I* have all my parts."':
            # a784 # r35394
            jump morte_s382

        '"Let„s go."':
            # a785 # r35400
            jump morte_dispose


# s382 # say35395
label morte_s382: # from 381.0
    nr 'Morte snorts. You„re not quite sure how he managed it without lungs.'

    menu:
        '"Let me tell you, Morte, there„s nothing more satisfying than walking around, swinging your arms, breathing the crisp air through the lungs. It“s GREAT to have a body."':
            # a786 # r35396
            $ morteLogic.r35396_action()
            jump morte_s383

        '"Let„s go."':
            # a787 # r35399
            jump morte_dispose


# s383 # say35397
label morte_s383: # from 382.0
    nr '"I„ll have you know that helping you escape the preparation room has now been added to my growing list of regrets." Morte snorts again. "I should have let you rot… some more, that is."'

    menu:
        '"Glad you feel that way. Let„s go."':
            # a788 # r35398
            jump morte_dispose


# s384 # say35418
label morte_s384: # externs s748_s3 s748_s0
    nr '"Whoa, chief. That„s vandalism. Those bolts are probably the only thing holding that bag of bones together. Necromancy only goes so far with these old fellas, y“know?"'

    menu:
        '"So?"':
            # a789 # r35419
            $ morteLogic.r35419_action()
            jump morte_s385

        '"Oh… I didn„t want to cause any permanent damage."':
            # a790 # r35437
            $ morteLogic.r35437_action()
            jump morte_s385

        '"All right then, never mind. Maybe some other time."':
            # a791 # r35438
            jump morte_s385


# s385 # say35420
label morte_s385: # from 384.0 384.1 384.2
    nr '"Oh, it„s not a problem." Morte does a strange bobbing motion that you think might be a shrug. "Just wasn“t sure if you knew that or not. By all means, go ahead."'

    menu:
        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35421_condition():
            # a792 # r35421
            jump s748_s4  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35429_condition():
            # a793 # r35429
            jump s748_s5  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35432_condition():
            # a794 # r35432
            jump s748_s6  # EXTERN

        '"Never mind. Maybe some other time."' if morteLogic.r35435_condition():
            # a795 # r35435
            $ morteLogic.r35435_action()
            jump morte_s378

        '"Never mind. Maybe some other time."' if morteLogic.r35436_condition():
            # a796 # r35436
            jump morte_dispose


# s386 # say35464
label morte_s386: # from 393.3
    nr '"Hmmmm. Wonder if this graybeard would mind if *I* borrowed his body…"'

    menu:
        '"Graybeard?"':
            # a797 # r35465
            jump morte_s387

        '"I don„t think he“s in any position to object."':
            # a798 # r35480
            jump morte_s388

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a799 # r35481
            jump morte_s389


# s387 # say35466
label morte_s387: # from 386.0
    nr '"Graybeard… you know, geezer, old feller, yellow dog… old."'

    menu:
        '"Well, I don„t think he“s in any position to object. Why not take his body?"':
            # a800 # r35467
            jump morte_s388

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a801 # r35479
            jump morte_s389


# s388 # say35468
label morte_s388: # from 386.1 387.0
    nr 'Morte studies the skeleton for a moment, then shakes his head. "Nah… I„d need a fresher one than this. And something with a little more dignity… this one“s all creaky and fractured."'

    menu:
        '"And you„re not?"':
            # a802 # r35469
            jump morte_s389

        '"All right then. Let„s go."':
            # a803 # r35478
            jump morte_dispose


# s389 # say35470
label morte_s389: # from 386.2 387.1 388.0
    nr '"Oh, you„re a sackfull of laughs." Morte glares at you. "Besides, YOU“RE one to talk, berk. Mirrors beg for mercy when you„re around."'

    menu:
        '"Oh, yeah? At least *I* have all my parts."':
            # a804 # r35471
            jump morte_s390

        '"Let„s go."':
            # a805 # r35477
            jump morte_dispose


# s390 # say35472
label morte_s390: # from 389.0
    nr 'Morte snorts. You„re not quite sure how he managed it without lungs.'

    menu:
        '"Let me tell you, Morte, there„s nothing more satisfying than walking around, swinging your arms, breathing the crisp air through the lungs. It“s GREAT to have a body."':
            # a806 # r35473
            $ morteLogic.r35473_action()
            jump morte_s391

        '"Let„s go."':
            # a807 # r35476
            jump morte_dispose


# s391 # say35474
label morte_s391: # from 390.0
    nr '"I„ll have you know that helping you escape the preparation room has now been added to my growing list of regrets." Morte snorts again. "I should have let you rot… some more, that is."'

    menu:
        '"Glad you feel that way. Let„s go."':
            # a808 # r35475
            jump morte_dispose


# s392 # say35495
label morte_s392: # externs s996_s3 s996_s0
    nr '"Whoa, chief. That„s vandalism. Those bolts are probably the only thing holding that bag of bones together. Necromancy only goes so far with these old fellas, y“know?"'

    menu:
        '"So?"':
            # a809 # r35496
            $ morteLogic.r35496_action()
            jump morte_s393

        '"Oh… I didn„t want to cause any permanent damage."':
            # a810 # r35514
            $ morteLogic.r35514_action()
            jump morte_s393

        '"All right then, never mind. Maybe some other time."':
            # a811 # r35515
            jump morte_s393


# s393 # say35497
label morte_s393: # from 392.0 392.1 392.2
    nr '"Oh, it„s not a problem." Morte does a strange bobbing motion that you think might be a shrug. "Just wasn“t sure if you knew that or not. By all means, go ahead."'

    menu:
        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35498_condition():
            # a812 # r35498
            jump s996_s4  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35506_condition():
            # a813 # r35506
            jump s996_s5  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35509_condition():
            # a814 # r35509
            jump s996_s6  # EXTERN

        '"Never mind. Maybe some other time."' if morteLogic.r35512_condition():
            # a815 # r35512
            $ morteLogic.r35512_action()
            jump morte_s386

        '"Never mind. Maybe some other time."' if morteLogic.r35513_condition():
            # a816 # r35513
            jump morte_dispose


# s394 # say35541
label morte_s394: # from 401.3
    nr '"Hmmmm. Wonder if this graybeard would mind if *I* borrowed his body…"'

    menu:
        '"Graybeard?"':
            # a817 # r35542
            jump morte_s395

        '"I don„t think he“s in any position to object."':
            # a818 # r35557
            jump morte_s396

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a819 # r35558
            jump morte_s397


# s395 # say35543
label morte_s395: # from 394.0
    nr '"Graybeard… you know, geezer, old feller, yellow dog… old."'

    menu:
        '"Well, I don„t think he“s in any position to object. Why not take his body?"':
            # a820 # r35544
            jump morte_s396

        '"Something tells me you would be twice as annoying if you had arms. Let„s go."':
            # a821 # r35556
            jump morte_s397


# s396 # say35545
label morte_s396: # from 394.1 395.0
    nr 'Morte studies the skeleton for a moment, then shakes his head. "Nah… I„d need a fresher one than this. And something with a little more dignity… this one“s all creaky and fractured."'

    menu:
        '"And you„re not?"':
            # a822 # r35546
            jump morte_s397

        '"All right then. Let„s go."':
            # a823 # r35555
            jump morte_dispose


# s397 # say35547
label morte_s397: # from 394.2 395.1 396.0
    nr '"Oh, you„re a sackfull of laughs." Morte glares at you. "Besides, YOU“RE one to talk, berk. Mirrors beg for mercy when you„re around."'

    menu:
        '"Oh, yeah? At least *I* have all my parts."':
            # a824 # r35548
            jump morte_s398

        '"Let„s go."':
            # a825 # r35554
            jump morte_dispose


# s398 # say35549
label morte_s398: # from 397.0
    nr 'Morte snorts. You„re not quite sure how he managed it without lungs.'

    menu:
        '"Let me tell you, Morte, there„s nothing more satisfying than walking around, swinging your arms, breathing the crisp air through the lungs. It“s GREAT to have a body."':
            # a826 # r35550
            $ morteLogic.r35550_action()
            jump morte_s399

        '"Let„s go."':
            # a827 # r35553
            jump morte_dispose


# s399 # say35551
label morte_s399: # from 398.0
    nr '"I„ll have you know that helping you escape the preparation room has now been added to my growing list of regrets." Morte snorts again. "I should have let you rot… some more, that is."'

    menu:
        '"Glad you feel that way. Let„s go."':
            # a828 # r35552
            jump morte_dispose


# s400 # say35572
label morte_s400: # externs s863_s3 s863_s0
    nr '"Whoa, chief. That„s vandalism. Those bolts are probably the only thing holding that bag of bones together. Necromancy only goes so far with these old fellas, y“know?"'

    menu:
        '"So?"':
            # a829 # r35573
            $ morteLogic.r35573_action()
            jump morte_s401

        '"Oh… I didn„t want to cause any permanent damage."':
            # a830 # r35591
            $ morteLogic.r35591_action()
            jump morte_s401

        '"All right then, never mind. Maybe some other time."':
            # a831 # r35592
            jump morte_s401


# s401 # say35574
label morte_s401: # from 400.0 400.1 400.2
    nr '"Oh, it„s not a problem." Morte does a strange bobbing motion that you think might be a shrug. "Just wasn“t sure if you knew that or not. By all means, go ahead."'

    menu:
        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35575_condition():
            # a832 # r35575
            jump s863_s4  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35583_condition():
            # a833 # r35583
            jump s863_s5  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if morteLogic.r35586_condition():
            # a834 # r35586
            jump s863_s6  # EXTERN

        '"Never mind. Maybe some other time."' if morteLogic.r35589_condition():
            # a835 # r35589
            $ morteLogic.r35589_action()
            jump morte_s394

        '"Never mind. Maybe some other time."' if morteLogic.r35590_condition():
            # a836 # r35590
            jump morte_dispose


# s402 # say38265
label morte_s402: # -
    nr '"I love this chit already!"'

    menu:
        '"Can you write, then, or pantomime?"':
            # a837 # r38267
            jump ecco_s7  # EXTERN


# s403 # say38266
label morte_s403: # -
    nr '"Yikes!"'

    menu:
        '"Eh?"':
            # a838 # r38268
            jump ecco_s34  # EXTERN


# s404 # say39000
label morte_s404: # -
    nr 'Morte whispers, "This ain„t good, chief. Watch your step, or they“ll wipe your mind clean out of existence… they„re more powerful in bigger groups - each of them adds to a group brain. They“re *deadly.*"'

    jump manyas1_s5  # EXTERN


# s405 # say39001
label morte_s405: # -
    nr 'Morte whispers, "This ain„t good, chief. Watch your step, or they“ll wipe your mind clean out of existence… they„re more powerful in bigger groups - each of them adds to a group brain. They“re *deadly.*"'

    jump manyas1_s58  # EXTERN


# s406 # say39002
label morte_s406: # -
    nr 'Morte whispers, "I don„t know what they“re up to, chief, but watch your thoughts. They„re a group mind, and each rat adds more to the mind, and they fight like - pardon the expression - cornered rats. We“re in their home now, boss, and they„ve got nowhere to go. Don“t mess this up."'

    jump manyas1_s78  # EXTERN


# s407 # say39564
label morte_s407: # -
    nr '"What a coincidence! I, too, chase tails."'

    jump yves_s2  # EXTERN


# s408 # say39565
label morte_s408: # -
    nr '"Me? Why do *I* have to tell a story?"'

    menu:
        '"Forget it, then."':
            # a839 # r39713
            jump morte_s409

        '"Just tell a story, Morte."':
            # a840 # r39714
            jump morte_s413


# s409 # say39566
label morte_s409: # from 408.0
    nr '"No, no, I„ll do it… I just thought I“d complain a little out of convention. „Sides, I love the attention."'

    menu:
        '"No way, Morte. I don„t want to hear it."':
            # a841 # r39715
            jump morte_s410

        '"Fine… go ahead, then."':
            # a842 # r39716
            $ morteLogic.r39716_action()
            jump morte_s414


# s410 # say39567
label morte_s410: # from 409.0
    nr '"Please! Come on? Pleeeease? It„s a great story! Lots of characters, action, foreshadowing and a startling *denouement!*"'

    menu:
        '"It can„t be that great."':
            # a843 # r39717
            jump morte_s411

        '"What„s a denouement?"':
            # a844 # r39718
            jump morte_s412

        '"Fine… go ahead."':
            # a845 # r39719
            $ morteLogic.r39719_action()
            jump morte_s414


# s411 # say39568
label morte_s411: # from 410.0
    nr '"It is! It is! Come *on!*"'

    menu:
        '"Wait… what„s a denouement?"':
            # a846 # r39720
            jump morte_s412

        '"Fine, go ahead."':
            # a847 # r39721
            $ morteLogic.r39721_action()
            jump morte_s414


# s412 # say39569
label morte_s412: # from 410.1 411.0
    nr '"Beats me! But it sure *sounds* impressive!"'

    menu:
        '"Fine, go ahead."':
            # a848 # r39722
            $ morteLogic.r39722_action()
            jump morte_s414


# s413 # say39570
label morte_s413: # from 408.1
    nr '"Fine, fine…"'

    $ morteLogic.s413_action()
    jump morte_s414


# s414 # say39571
label morte_s414: # from 409.1 410.2 411.1 412.0 413.0
    nr '"An elderly man was sitting alone on a dark path, right? He wasn„t certain of which direction to go, and he“d forgotten both where he was traveling to and who he was. He„d sat down for a moment to rest his weary legs, and suddenly looked up to see an elderly woman before him. She grinned toothlessly and with a cackle, spoke: “Now your *third* wish. What will it be?„"'

    menu:
        '"Go on, Morte…"':
            # a849 # r39724
            jump morte_s415

        '"Wait… I had a question for Yves…"':
            # a850 # r39725
            jump yves_s4  # EXTERN

        '"We„ll hear it another time, Morte. Farewell, Yves."':
            # a851 # r39726
            jump morte_dispose


# s415 # say39572
label morte_s415: # from 414.0
    nr '"„Third wish?“ The man was baffled. „How can it be a third wish if I haven“t had a first and second wish?„"'

    menu:
        '"Go on, Morte…"':
            # a852 # r39727
            jump morte_s416

        '"Wait… I had a question for Yves…"':
            # a853 # r39728
            jump yves_s4  # EXTERN

        '"We„ll hear it another time, Morte. Farewell, Yves."':
            # a854 # r39729
            jump morte_dispose


# s416 # say39573
label morte_s416: # from 415.0
    nr '"„You“ve had two wishes already,„ the hag said, “but your second wish was for me to return everything to the way it was before you had made your first wish. That„s why you remember nothing; because everything is the way it was before you made any wishes.“ She cackled at the poor berk. „So it is that you have one wish left.“"'

    menu:
        '"Go on, Morte…"':
            # a855 # r39752
            jump morte_s417

        '"Wait… I had a question for Yves…"':
            # a856 # r39753
            jump yves_s4  # EXTERN

        '"We„ll hear it another time, Morte. Farewell, Yves."':
            # a857 # r39754
            jump morte_dispose


# s417 # say39574
label morte_s417: # from 416.0
    nr '"„All right,“ said the man, „I don“t believe this, but there„s no harm in wishing. I wish to know who I am.“"  "„Funny,“ said the old woman as she granted his wish and disappeared forever. „That was your first wish.“"'

    jump yves_s55  # EXTERN


# s418 # say39575
label morte_s418: # -
    nr '"What in the hells was that, you stupid polygon?! That„s the most boring story I ever heard!"'

    jump nordom_s11  # EXTERN


# s419 # say39576
label morte_s419: # -
    nr '"Embellishments?"'

    jump nordom_s12  # EXTERN


# s420 # say39577
label morte_s420: # -
    nr '"*C„mon* already, fiendling. You already have one tail you won“t part with."'

    jump annah_s196  # EXTERN


# s421 # say40068
label morte_s421: # -
    nr 'Morte spins around you, mocking the girl„s obviousness. "Powers above, chief… she“s right! I never noticed before… you„re covered in *scars!*"'

    menu:
        '"They„re all old scars. I“m fine."' if morteLogic.r40069_condition():
            # a858 # r40069
            jump nenny_s2  # EXTERN

        '"Only slightly; I„ll be all right."' if morteLogic.r40070_condition():
            # a859 # r40070
            jump nenny_s2  # EXTERN

        '"Yes, I am. And badly."' if morteLogic.r40071_condition():
            # a860 # r40071
            jump nenny_s2  # EXTERN

        '"Pay it no mind. I had some questions…"':
            # a861 # r40072
            jump nenny_s3  # EXTERN

        '"Don„t worry about it. Farewell."':
            # a862 # r40073
            jump morte_dispose


# s422 # say40074
label morte_s422: # -
    nr 'Morte waggles his eyebrows. "You„re too “forward,„ all right… may have something to do with those swaying, pendulous br-"'

    menu:
        '"Morte, that„s enough."':
            # a863 # r40075
            jump morte_s423


# s423 # say40076
label morte_s423: # from 422.0
    nr 'Morte shuts up.'

    menu:
        '"It„s not a problem, Nenny."' if morteLogic.r40077_condition():
            # a864 # r40077
            jump nenny_s9  # EXTERN

        '"See that it doesn„t happen again, Nenny."' if morteLogic.r40078_condition():
            # a865 # r40078
            jump nenny_s9  # EXTERN

        '"It„s not a problem, miss."' if morteLogic.r40079_condition():
            # a866 # r40079
            jump nenny_s9  # EXTERN

        '"See that it doesn„t happen again, girl."' if morteLogic.r40080_condition():
            # a867 # r40080
            jump nenny_s9  # EXTERN


# s424 # say40081
label morte_s424: # -
    nr '"Hey!"'

    jump nenny_s27  # EXTERN


# s425 # say40082
label morte_s425: # -
    nr 'Morte mutters to himself. "I guess it„s good that there“s *something* in there."'

    menu:
        '"I had another question, Nenny…"':
            # a868 # r40083
            jump nenny_s3  # EXTERN

        '"That„s all I wished to know, Nenny. Farewell."':
            # a869 # r40084
            jump morte_dispose


# s426 # say40222
label morte_s426: # -
    nr '"Oooh, no… you„ve *got* to tell us, now."'

    menu:
        '"Yes… please, sir: do tell."':
            # a870 # r40223
            jump brocus4_s4  # EXTERN

        '"Let„s drop it, Morte. I had another question for him…"':
            # a871 # r40224
            jump brocus4_s2  # EXTERN

        '"Forget about it, Morte; let„s go."':
            # a872 # r40225
            jump morte_dispose


# s427 # say40275
label morte_s427: # -
    nr 'Morte floats close to you, whispering: "I feel sorry for her lover. He doesn„t know how bad he has it. A chit like this is nothing but trouble."'

    menu:
        '"That doesn„t sound wise, Juliette. Relish what you have."':
            # a873 # r40276
            jump sadjuli_s12  # EXTERN

        '"What did you have in mind, Juliette?"':
            # a874 # r40277
            jump sadjuli_s13  # EXTERN

        '"I had some questions, Juliette…"':
            # a875 # r40278
            jump sadjuli_s24  # EXTERN

        '"That„s all I wished to know, Juliette. Farewell."':
            # a876 # r40279
            jump morte_dispose


# s428 # say40685
label morte_s428: # -
    nr 'Morte whispers quietly: "Whoah… creepy chit."'

    menu:
        '"My apologies, my lady… I wasn„t sure if someone was here."':
            # a877 # r40686
            jump marissa_s2  # EXTERN

        '"I had some questions, my lady…"':
            # a878 # r40687
            jump marissa_s3  # EXTERN

        '"Farewell, then, my lady."':
            # a879 # r40688
            jump morte_dispose


# s429 # say40846
label morte_s429: # -
    nr '"C„mon, chief! We“re in a building full of some of the sexiest chits this side of the multiverse and you„re stopping to talk to *modrons?*"'

    menu:
        '"What can you tell me about them, Morte?"':
            # a880 # r40847
            jump morte_s430

        'Ignore Morte, greet the modron.':
            # a881 # r40848
            $ morteLogic.r40848_action()
            jump brocus6_s3  # EXTERN

        '"My apologies, Morte, but I„m talking to the modron."':
            # a882 # r40849
            jump morte_s431

        '"All right; let„s go, Morte."':
            # a883 # r40850
            jump morte_dispose


# s430 # say40851
label morte_s430: # from 429.0
    nr 'Morte makes a noise of utter disgust. "What„s there to say? Annoying little clock-work pests… they“re always working to impose law and order upon the multiverse. Not *good,* mind you… just *law.* Let„s just forget about “em and go chat up the ladies, eh?"'

    menu:
        'Ignore Morte, greet the modron.':
            # a884 # r40852
            $ morteLogic.r40852_action()
            jump brocus6_s3  # EXTERN

        '"My apologies, Morte, but I„m talking to the modron."':
            # a885 # r40853
            jump morte_s431

        '"All right; let„s go, Morte."':
            # a886 # r40854
            jump morte_dispose


# s431 # say40855
label morte_s431: # from 429.2 430.1
    nr 'Morte sighs loudly. "Fine, whatever - but don„t say I didn“t warn you. You probably won„t get anywhere with “em though, chief… they„re an odd lot to talk to."'

    menu:
        '"Greetings…"':
            # a887 # r40856
            $ morteLogic.r40856_action()
            jump brocus6_s3  # EXTERN


# s432 # say41135
label morte_s432: # -
    nr '"Anything!" Morte cries. "Do anything you want to me!"'

    jump kesai_s2  # EXTERN


# s433 # say41136
label morte_s433: # -
    nr '"It„s enough to make me weep… where was this chit when I had a *body?!*"'

    jump kesai_s11  # EXTERN


# s434 # say41632
label morte_s434: # -
    nr '"My friend thought you were attractive, but *whoah!* Was he ever horribly mistaken!"'

    jump kimasxi_s2  # EXTERN


# s435 # say41633
label morte_s435: # from 436.0
    nr '"Sure, chief, whatever. What a witch, huh?" Morte *hmphs,* then waggles his eyebrows. "I *like* that!"'

    menu:
        '"I„m sure you do, Morte, but I need to talk to her."':
            # a888 # r41634
            jump kimasxi_s14  # EXTERN

        '"All right… let„s just go, Morte."':
            # a889 # r41635
            jump kimasxi_s4  # EXTERN


# s436 # say41636
label morte_s436: # -
    nr '"Like I„d let mine anywhere near if I had one! What, did you hear the word “brothel„ and think you could make some jink here, you flea-bitten gutter-whore? Hah! Can“t believe they even let you in the door, what with all those ticks hopping off your shaggy legs!"'

    menu:
        '"That„s enough, you two."':
            # a890 # r41637
            jump morte_s435

        'Let them keep at it.':
            # a891 # r41638
            jump kimasxi_s3  # EXTERN


# s437 # say41639
label morte_s437: # -
    nr '"*He!* That„s “*HE* seems pretty foul-mouthed,„ Kimasxi “Bladderdung„… you scruffy, goat-gammed harlot!"'

    jump kimasxi_s18  # EXTERN


# s438 # say41640
label morte_s438: # -
    nr '"Better than you, perhaps?" Morte waggles his eyebrows at her. "Eh? Eh?"'

    jump kimasxi_s20  # EXTERN


# s439 # say41641
label morte_s439: # -
    nr '"I won„t, *tiefling.* I will admit I might have learned a thing or two, though… good thinking, chief!"~ [MRT387]'

    menu:
        '"Sure thing, Morte."':
            # a892 # r41642
            jump kimasxi_s21  # EXTERN


# s440 # say41830
label morte_s440: # from 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1
    nr '"Look, chief. It„s obvious you“re still a little addled after your kiss with death, so I got two bits of advice for you: one, if you got questions, *ask* me, all right?"  ^NNOTE: <SPEAKTO>^-'

    menu:
        '"All right… if I have any questions, I„ll ask you."':
            # a893 # r41831
            jump morte_s441


# s441 # say41832
label morte_s441: # from 440.0
    nr '"Second, if you„re *half* as forgetful as you seem to be, start writing stuff down - whenever you come across something that *might* be important, jot it down so you don“t forget."'

    menu:
        '"If I had that journal I was *supposed* to have with me, I„d do that."':
            # a894 # r41833
            jump morte_s442


# s442 # say41834
label morte_s442: # from 441.0
    nr '"Start a new one, then, chief. No loss. There„s plenty of parchment and ink around here to last you."'

    menu:
        '"Hmmmm. All right. It couldn„t hurt… I“ll make a new one, then."':
            # a895 # r41835
            jump morte_s443


# s443 # say41836
label morte_s443: # from 442.0
    nr '"Use it to keep track of your movements. If you ever start to get cloudy on important things, like who you are… or more importantly, who *I* am… use it to refresh your memory."  ^NNOTE: To access your journal, select the journal button on the quick menu. Your journal will automatically be updated throughout the game.^-'

    menu:
        '"All right… I got it. Let„s go."':
            # a896 # r41837
            $ morteLogic.j39516_s443_r41837_action()
            jump morte_dispose


# s444 # say41838
label morte_s444: # from 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0 # IF WEIGHT #6 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) Global("AR0200_Visited","GLOBAL",0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"What„s eating you, chief?"~ [MRT515]'

    menu:
        '"Can you read to me what„s tattooed on my back again?"':
            # a897 # r41840
            jump morte_s445

        '"What is this place again?"':
            # a898 # r41841
            jump morte_s450

        '"This place is huge… who takes care of it?"' if morteLogic.r41842_condition():
            # a899 # r41842
            jump morte_s451

        '"Who are the caretakers of this place again?"' if morteLogic.r41843_condition():
            # a900 # r41843
            jump morte_s451

        '"The corpses here… where did they all come from?"':
            # a901 # r41844
            jump morte_s454

        '"Before you said something about making sure I didn„t kill any *female* corpses. Why?"' if morteLogic.r41845_condition():
            # a902 # r41845
            jump morte_s455

        '"How do I use these bandages?"' if morteLogic.r41846_condition():
            # a903 # r41846
            jump morte_s453

        '"Nothing at the moment, Morte. Just checking to see if you were still with me."' if morteLogic.r41847_condition():
            # a904 # r41847
            jump morte_s440

        '"Nothing at the moment, Morte. Just checking to see if you were still with me."' if morteLogic.r41848_condition():
            # a905 # r41848
            jump morte_dispose


# s445 # say41849
label morte_s445: # from 444.0
    nr '"Aw, *c„mon,* chief. Don“t tell me you forgot already."'

    menu:
        '"I just need to refresh my memory."':
            # a906 # r41850
            jump morte_s446

        '"Never mind, then. I had some other questions…"':
            # a907 # r41851
            jump morte_s444

        '"Forget it, then. Let„s go."' if morteLogic.r41852_condition():
            # a908 # r41852
            jump morte_s440

        '"Forget it, then. Let„s go."' if morteLogic.r41853_condition():
            # a909 # r41853
            jump morte_dispose


# s446 # say41854
label morte_s446: # from 445.0
    nr '"Bet I„m going to be hearing THAT a lot." Morte clears his throat. "Let“s see…"  „I know you feel like you“ve been drinking a few kegs of Styx wash, but you need to CENTER yourself. Among your possessions is a JOURNAL that„ll shed some light on the dark of the matter. PHAROD can fill you in on the rest of the chant, if he“s not in the dead-book already.„'

    menu:
        '"Pharod… hmmm. Keep going."':
            # a910 # r41855
            jump morte_s447

        '"Never mind. I had some other questions…"':
            # a911 # r41856
            jump morte_s444

        '"Forget it. I„ve heard enough. Let“s go."' if morteLogic.r41857_condition():
            # a912 # r41857
            jump morte_s440

        '"Forget it. I„ve heard enough. Let“s go."' if morteLogic.r41858_condition():
            # a913 # r41858
            jump morte_dispose


# s447 # say41859
label morte_s447: # from 446.0
    nr '"I will, I will, hold on." Morte pauses for a moment. "All right, here„s the last bit…"  “Don„t lose the journal or we“ll be up the Styx again. And whatever you do, DO NOT tell anyone WHO you are or WHAT happens to you, or they„ll put you on a quick pilgrimage to the crematorium. Do what I tell you: READ the journal, then FIND Pharod.“'

    menu:
        '"And there wasn„t a journal with me when I woke up?"':
            # a914 # r41860
            jump morte_s448

        '"All right, then. I had some other questions…"':
            # a915 # r41861
            jump morte_s444

        '"Forget it. I„ve heard enough. Let“s go."' if morteLogic.r41862_condition():
            # a916 # r41862
            jump morte_s440

        '"Forget it. I„ve heard enough. Let“s go."' if morteLogic.r41863_condition():
            # a917 # r41863
            jump morte_dispose


# s448 # say41864
label morte_s448: # from 447.0
    nr '"No… you were stripped to the skins. Like I said before, looks like you got enough of a journal penned on your body."'

    menu:
        '"And you„re sure you don“t know anyone named Pharod?"':
            # a918 # r41865
            jump morte_s449

        '"True enough. I had some other questions…"':
            # a919 # r41866
            jump morte_s444

        '"All right, then. Let„s go."' if morteLogic.r41867_condition():
            # a920 # r41867
            jump morte_s440

        '"All right, then. Let„s go."' if morteLogic.r41868_condition():
            # a921 # r41868
            jump morte_dispose


# s449 # say41869
label morte_s449: # from 448.0
    nr '"Nope. Still, some berk„s got to know where to find him. Let“s ask around… AFTER we get out of here."'

    menu:
        '"Before we go, I had some other questions…"':
            # a922 # r41870
            jump morte_s444

        '"All right, then. Let„s go."' if morteLogic.r41871_condition():
            # a923 # r41871
            jump morte_s440

        '"All right, then. Let„s go."' if morteLogic.r41872_condition():
            # a924 # r41872
            jump morte_dispose


# s450 # say41873
label morte_s450: # from 444.1
    nr '"It„s called the “Mortuary„… it“s a big black structure with all the architectural charm of a pregnant spider."'

    menu:
        '"Got it. I had some other questions for you…"':
            # a925 # r41874
            jump morte_s444

        '"That„s all I wanted to know. Thanks."' if morteLogic.r41875_condition():
            # a926 # r41875
            jump morte_s440

        '"That„s all I wanted to know. Thanks."' if morteLogic.r41876_condition():
            # a927 # r41876
            jump morte_dispose


# s451 # say41877
label morte_s451: # from 444.2 444.3
    nr '"They call themselves the „Dustmen.“ You can„t miss “em: They have an obsession with black and rigor mortis of the face. They„re an addled bunch of ghoulish death-worshippers; they believe everybody should die… sooner better than later."'

    menu:
        '"I„m confused… why do these Dustmen care if I escape?"':
            # a928 # r41878
            jump morte_s452

        '"Got it. I had some other questions for you…"':
            # a929 # r41879
            jump morte_s444

        '"Understood. I„ll be careful, then."' if morteLogic.r41880_condition():
            # a930 # r41880
            jump morte_s440

        '"Understood. I„ll be careful, then."' if morteLogic.r41881_condition():
            # a931 # r41881
            jump morte_dispose


# s452 # say41882
label morte_s452: # from 451.0
    nr '"Weren„t you listening?! I said the Dusties believe EVERYBODY“S got to die, sooner better than later. You think the corpses you„ve seen are happier in the dead-book than out of it?"'

    menu:
        '"Got it. I had some other questions for you…"':
            # a932 # r41883
            jump morte_s444

        '"All right… I„ll… try to remember that."' if morteLogic.r41884_condition():
            # a933 # r41884
            jump morte_s440

        '"All right… I„ll… try to remember that."' if morteLogic.r41885_condition():
            # a934 # r41885
            jump morte_dispose


# s453 # say41886
label morte_s453: # from 444.6
    nr '"You, well… you *use* them. Staunch bleeding, and all that."  ^NNOTE: <BANDAGES2>^-'

    menu:
        '"Got it. I had some other questions for you…"':
            # a935 # r41887
            jump morte_s444

        '"Thanks. I think I can handle it."' if morteLogic.r41888_condition():
            # a936 # r41888
            jump morte_s440

        '"Thanks. I think I can handle it."' if morteLogic.r41889_condition():
            # a937 # r41889
            jump morte_dispose


# s454 # say41890
label morte_s454: # from 444.4
    nr '"Death visits the planes every day, chief. These shamblers are all that„s left of the poor sods who sold their bodies to the caretakers after death."'

    menu:
        '"Got it. I had some other questions for you…"':
            # a938 # r41891
            jump morte_s444

        '"All right… I„ll… try to remember that."' if morteLogic.r41892_condition():
            # a939 # r41892
            jump morte_s440

        '"All right… I„ll… try to remember that."' if morteLogic.r41893_condition():
            # a940 # r41893
            jump morte_dispose


# s455 # say41894
label morte_s455: # from 444.5
    nr '"Wh- are you *serious?* Look, chief, these dead chits are the last chance for a couple of hardy bashers like us. We need to be *chivalrous*… no hacking them up for keys, no lopping their limbs off, things like that."'

    menu:
        '"Last chance? What are you *talking* about?"':
            # a941 # r41895
            jump morte_s456

        '"Never mind. I had some other questions for you…"':
            # a942 # r41896
            jump morte_s444

        '"All right… I„ll… try to remember that."':
            # a943 # r41897
            jump morte_dispose


# s456 # say41898
label morte_s456: # from 455.0
    nr '"Chief, THEY„RE dead, WE“RE dead… see where I„m going? Eh? Eh?"'

    menu:
        '"No… no, I don„t, actually."':
            # a944 # r41899
            jump morte_s457

        '"You *can„t* be serious."' if morteLogic.r41900_condition():
            # a945 # r41900
            jump morte_s457

        '"Never mind. I had some other questions for you…"':
            # a946 # r41901
            jump morte_s444

        '"I„ve heard enough. Let“s go."':
            # a947 # r41902
            jump morte_dispose


# s457 # say41903
label morte_s457: # from 456.0 456.1
    nr '"Chief, we already got an opening line with these limping ladies. We„ve *all* died at least once: we“ll have something to talk about. They„ll appreciate men with our kind of death experience."'

    menu:
        '"Wait… didn„t you say before that I“m *not* dead?"':
            # a948 # r41904
            jump morte_s458

        '"Never mind. I had some other questions for you…"':
            # a949 # r41905
            jump morte_s444

        '"I„ve heard enough. Let“s go."':
            # a950 # r41906
            jump morte_dispose


# s458 # say41907
label morte_s458: # from 457.0
    nr '"Well… all right, *you* might not be dead, but *I* am. And from where I„m standing, I wouldn“t mind sharing a coffin with some of these fine, sinewy cadavers I see here." Morte starts clacking his teeth, as if in anticipation. "„Course, the caretakers would have to part with them first, and that“s not likely…"'

    menu:
        '"I had some other questions for you, Morte…"':
            # a951 # r41908
            jump morte_s444

        '"I„ve heard enough. Let“s go."':
            # a952 # r41909
            jump morte_dispose


# s459 # say41910
label morte_s459: # -
    nr '"Powers above. That„s one HELL of a book."'

    menu:
        '"What is it?"':
            # a953 # r41911
            $ morteLogic.r41911_action()
            jump morte_s460


# s460 # say41913
label morte_s460: # from 459.0
    nr '"If I were to guess, I„d say that“s the book where they scratch the name of every poor sod that„s unfortunate enough to get dumped off here."'

    menu:
        '"Could my name be in there?"':
            # a954 # r41914
            jump morte_s461


# s461 # say41915
label morte_s461: # from 460.0
    nr '"Eh… well… I *guess.* To find out, you„d need to rattle your bone-box with that floating Dustie over there. I“m not sure that„s a good idea."'

    menu:
        '"Well, I need answers. I„m going to go speak with him."':
            # a955 # r41916
            jump morte_dispose


# s462 # say41919
label morte_s462: # -
    nr 'Morte whispers: "Somewhere, an asylum is one barmy short."'

    menu:
        '"I had some questions, Jumble…"':
            # a956 # r41920
            jump jumble_s2  # EXTERN

        '"You„re the man who cursed Reekwind, aren“t you?"' if morteLogic.r41921_condition():
            # a957 # r41921
            $ morteLogic.r41921_action()
            jump jumble_s8  # EXTERN

        '"I„d like you to remove Reekwind“s curse."' if morteLogic.r67864_condition():
            # a958 # r67864
            jump jumble_s9  # EXTERN

        '"I„ll take my leave now, Jumble. Farewell."':
            # a959 # r41922
            jump morte_dispose


# s463 # say41923
label morte_s463: # -
    nr '"Uh oh… looks like you just got a curse thrown down on you, chief…"'

    menu:
        '"What have you done to me, Jumble?"':
            # a960 # r41924
            jump jumble_s7  # EXTERN

        '"Jumble… please, undo whatever you„ve done."':
            # a961 # r41925
            jump jumble_s7  # EXTERN

        '"Whatever you„ve done, Jumble, undo it - or you“ll regret it sorely."':
            # a962 # r41926
            jump jumble_s7  # EXTERN

        '"Let„s just go, Morte."':
            # a963 # r41927
            jump morte_dispose


# s464 # say42929
label morte_s464: # -
    nr '"I say ignore the chit… act distant and unconcerned. That„ll spice things up considerably!"'

    jump montagu_s29  # EXTERN


# s465 # say42930
label morte_s465: # -
    nr '"Trust me, kid. Start ignoring her, create some friction, leave „em wondering, and they“ll be clawing all over to discover what the matter is. Right, chief?"'

    menu:
        '"Yes… she„ll think something“s wrong, and for once, he„ll be playing the game rather than being the target."':
            # a964 # r42931
            jump montagu_s30  # EXTERN

        '"No… that„s a poor idea."':
            # a965 # r42932
            jump montagu_s31  # EXTERN


# s466 # say43543
label morte_s466: # -
    nr '"This is why gith shouldn„t breed. They“re always going on about this, or the belief of this, or „where“s a mind flayer or githyanki to kill„ and so on and so forth. I don“t think they even enjoy poking each other. They go barmy and lose their minds by the wayside, or else they stay so direct and focused all the time they forget their sense of humor. They blather about focus, and having one mind, and community trust, but note that the race broke with itself soon as it broke with the mind-suckers. Now tell me religion and ideology won„t bring the planes crashing down."'

    jump kiina_s35  # EXTERN


# s467 # say43908
label morte_s467: # -
    nr '"Wow."'

    menu:
        '"You„re Nemelle? I was told you know the command word for this decanter."' if morteLogic.r43909_condition():
            # a966 # r43909
            jump neml_s4  # EXTERN

        '"Nemelle? Your friend, Aelwyn, is looking for you."' if morteLogic.r43910_condition():
            # a967 # r43910
            $ morteLogic.r43910_action()
            jump neml_s6  # EXTERN

        '"Are you looking for someone?"' if morteLogic.r43911_condition():
            # a968 # r43911
            jump neml_s14  # EXTERN

        '"I had some questions…"':
            # a969 # r43912
            jump neml_s11  # EXTERN

        '"I didn„t need anything, Nemelle. Farewell."':
            # a970 # r43913
            jump morte_dispose


# s468 # say43914
label morte_s468: # -
    nr '"Wow."'

    jump annah_s209  # EXTERN


# s469 # say43915
label morte_s469: # -
    nr '"My, what a hot-blooded little chit! Starved for attention? I could drool over you, too, if you„re just jealous…" Morte starts floating towards Annah, making wet slavering noises…'

    jump annah_s210  # EXTERN


# s470 # say43916
label morte_s470: # -
    nr 'Morte stops abruptly, turning away while muttering unintelligibly.'

    menu:
        '"You„re Nemelle? I was told you know the command word for this decanter."' if morteLogic.r43917_condition():
            # a971 # r43917
            jump neml_s4  # EXTERN

        '"Nemelle? Your friend, Aelwyn, is looking for you."' if morteLogic.r43918_condition():
            # a972 # r43918
            $ morteLogic.r43918_action()
            jump neml_s6  # EXTERN

        '"Are you looking for someone?"' if morteLogic.r43919_condition():
            # a973 # r43919
            jump neml_s14  # EXTERN

        '"I had some questions…"':
            # a974 # r43920
            jump neml_s11  # EXTERN

        '"I didn„t need anything, Nemelle. Farewell."':
            # a975 # r43921
            jump morte_dispose


# s471 # say43922
label morte_s471: # -
    nr '"Come on, chief… I„m sure we can think of *something.* Eh? Eh?"'

    menu:
        '"Forget it, Morte. Let„s go."':
            # a976 # r43923
            jump morte_dispose


# s472 # say44244
label morte_s472: # -
    nr 'Morte floats close and whispers: "Not me. I can deal. Eh, Chief? Wink-wink, nudge-nudge…"'

    jump goncal_s20  # EXTERN


# s473 # say44245
label morte_s473: # -
    nr 'Horrified, Morte leaps into the fray. "No! Man, are you *mad?!* That„s barmy talk!"'

    jump annah_s214  # EXTERN


# s474 # say44677
label morte_s474: # -
    nr 'Morte rolls his eyes. "Fools rush in…"'

    jump yi'minn_s47  # EXTERN


# s475 # say44944
label morte_s475: # -
    nr '"I looooove the Festhall."'

    jump udesire_s2  # EXTERN


# s476 # say45026
label morte_s476: # -
    nr 'Morte sighs loudly. "C„mon chief, are we really gonna stay for this?"'

    menu:
        '"Just be quiet for a bit, Morte. I want to listen for now."':
            # a977 # r45027
            jump 3planea_s1  # EXTERN

        'Ignore Morte, keep listening,':
            # a978 # r45028
            jump 3planea_s1  # EXTERN

        '"You„re right, Morte - let“s go."':
            # a979 # r45029
            $ morteLogic.r45029_action()
            jump morte_dispose


# s477 # say45088
label morte_s477: # externs zm965_s0
    nr '"Heh. Looks like someone forgot to tell this sod to stop walking the Rule of Threes."'

    menu:
        '"What do you mean?"':
            # a980 # r45089
            jump morte_s478


# s478 # say45091
label morte_s478: # from 477.0
    nr '"These corpses don„t have much left in the attic, so they can“t do more than one task at a time… when they„re told to do something, they“ll keep doing it until someone tells them to stop. This poor sod probably finished some task, and they forgot to tell him."'

    menu:
        '"Who gives them their commands?"':
            # a981 # r45092
            jump morte_s481

        '"You said something about the „Rule of Threes.“ What did you mean by that?"':
            # a982 # r45093
            $ morteLogic.j39477_s478_r45093_action()
            jump morte_s479

        '"All right. Come on, let„s keep moving."':
            # a983 # r45094
            jump morte_dispose


# s479 # say45095
label morte_s479: # from 478.1 481.0
    nr '"Eh? Well, the Rule of Threes is one of those „laws“ about the planes, about things tending to happen in threes… or everything„s composed of three parts… or there“s always three choices, and so on and so forth."'

    menu:
        '"You don„t sound like you hold much faith in it."':
            # a984 # r45096
            jump morte_s480


# s480 # say45098
label morte_s480: # from 479.0
    nr '"It„s a load of wash, if you ask me. If you look for a number, any number, and try to attach some great meaning to it, you“re going to find plenty of coincidences."'

    menu:
        '"I see. Before you said someone put this corpse a task then forgot to tell them to stop. Who gives these corpses these tasks to do?"':
            # a985 # r45099
            jump morte_s481

        '"Understood. I wanted to examine this zombie a bit more…"':
            # a986 # r45100
            jump zm965_s1  # EXTERN

        '"All right. Come on, let„s keep moving."':
            # a987 # r45101
            jump morte_dispose


# s481 # say45102
label morte_s481: # from 478.0 480.0
    nr '"Either one of the caretakers here, or else whatever necromancer Raised them out of the dead-book. Probably one of the caretakers here… they„re the ones who need the cheap labor, after all."'

    menu:
        '"I see. What was that you said before… about the „Rule of Threes“?"':
            # a988 # r45103
            $ morteLogic.j39477_s481_r45103_action()
            jump morte_s479

        '"Understood. I wanted to examine this zombie a bit more…"':
            # a989 # r45104
            jump zm965_s1  # EXTERN

        '"All right. Come on, let„s keep moving."':
            # a990 # r45105
            jump morte_dispose


# s482 # say45540
label morte_s482: # externs zm985_s4 zm985_s0
    nr '"Uh… chief… you might not w-"'

    jump zm985_s3  # EXTERN


# s483 # say45709
label morte_s483: # -
    nr '"Ooh, an auction! Maybe we can sell Annah here."'

    jump annah_s215  # EXTERN


# s484 # say45710
label morte_s484: # -
    nr '"Ooh, an auction! Maybe we can sell Dak„kon here."'

    jump dakkon_s163  # EXTERN


# s485 # say45711
label morte_s485: # -
    nr '"Ooh, an auction! Maybe we can find a body for me here."'

    menu:
        '"Right, Morte. I„ll be sure to ask."':
            # a991 # r45712
            jump giltsp_s4  # EXTERN

        '"Let„s just move along, then."':
            # a992 # r45713
            jump morte_dispose


# s486 # say45714
label morte_s486: # -
    nr '"It must be love. It„s love, right, boss?"'

    menu:
        '"Leave it off, you two. I need to ask some questions here."':
            # a993 # r45715
            jump giltsp_s4  # EXTERN

        '"Whatever you say, Morte. Let„s leave this fellow alone."':
            # a994 # r45716
            jump morte_dispose


# s487 # say45996
label morte_s487: # - # IF WEIGHT #0 ~  NumTimesTalkedTo(0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Hey, look! Another floating head."'

    jump vault9_s0  # EXTERN


# s488 # say47813
label morte_s488: # -
    nr '"Sounds like this mace has got some sort of sapience envy. Pike it, weapon."'

    menu:
        '"Quiet. I had more questions…"':
            # a995 # r47814
            jump justfer_s8  # EXTERN

        '"We„re done talking for now."':
            # a996 # r47815
            jump morte_dispose


# s489 # say49443
label morte_s489: # -
    nr '"Ooh, a githyanki. I„ll bet Dak“kon will be *so* pleased to help."'

    menu:
        '"Thanks for your valuable input, Morte. Let„s go."':
            # a997 # r49444
            jump morte_dispose


# s490 # say50162
label morte_s490: # -
    nr '"Oh, they *have* names. I„m sure of it."'

    jump annah_s242  # EXTERN


# s491 # say50164
label morte_s491: # -
    nr '"So *you* say, fiendling."'

    menu:
        '"Stow it, Morte - can you ask him some other questions, Annah?"':
            # a998 # r50165
            jump annah_s240  # EXTERN

        '"Forget it. Let„s just go."':
            # a999 # r50166
            $ morteLogic.r50166_action()
            jump adabus_s6  # EXTERN


# s492 # say50263
label morte_s492: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator? Find a Sigil native."'

    menu:
        '"I see."':
            # a1000 # r50264
            jump adabus_s2  # EXTERN


# s493 # say50266
label morte_s493: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator? Get the fiendling chit here to do it." He nods at Annah. "She“s a Hive native."'

    menu:
        '"Maybe I will…"':
            # a1001 # r50267
            jump adabus_s2  # EXTERN


# s494 # say50269
label morte_s494: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator?" He nods at Dak“kon. "Get holier-than-thou-and-twice-as-silent here to translate."'

    menu:
        '"Maybe I will…"':
            # a1002 # r50270
            jump adabus_s2  # EXTERN


# s495 # say50272
label morte_s495: # -
    nr 'Morte scoffs. "I„d sooner be strained through a tanar“ri„s bowels than unravel what these floating goat-heads are trying to say. You want a translator? Get the tanar“ri to do it." He nods at Fall-from-Grace. "She„s probably had to trade the chant with these guys all the time."'

    menu:
        '"Maybe I will…"':
            # a1003 # r50273
            jump adabus_s2  # EXTERN


# s496 # say50320
label morte_s496: # -
    nr '"Oh, for the powers„ sake! Piking dabus."'

    menu:
        '"What„s wrong?"':
            # a1004 # r50321
            jump morte_s497


# s497 # say50322
label morte_s497: # from 496.0
    nr '"He„s a dabus. They “speak„ in rebuses, these annoying word puzzles. If *you* don“t know what he„s saying, then we better find a native or some other way to communicate with him… if we want to. An annoying bunch. My bet? They *can* speak, they just would rather piss everyone else off by trying to puzzle out what they“re saying."'

    menu:
        '"What„s a “dabus„?"':
            # a1005 # r50323
            jump morte_s498


# s498 # say50324
label morte_s498: # from 497.0
    nr '"Chant is they„re janitors for the Lady of Pain. They float around breaking, fixing and patching up Sigil according to her whims. They“re worse than corpse flies." Morte sighs. "You can„t swat “em though, or the Lady„ll get… upset."'

    menu:
        '"„Lady of Pain“? Who„s that?"' if morteLogic.r50325_condition():
            # a1006 # r50325
            $ morteLogic.r50325_action()
            jump morte_s499

        '"What can you tell me about the Lady of Pain?"' if morteLogic.r50328_condition():
            # a1007 # r50328
            jump morte_s499

        '"I see."' if morteLogic.r50329_condition():
            # a1008 # r50329
            jump adabus_s2  # EXTERN


# s499 # say50326
label morte_s499: # from 498.0 498.1
    nr '"She runs this city. You„ll know if you see her: She“s got these blades around her face, she„s about the size of a giant, and she floats off the ground, just like these guys." Morte nods at the dabus, who is looking at you both. "Nobody knows much about her… she doesn“t speak much. All you need to know is that you don„t want to make her angry. If you see her, my advice: run."'

    menu:
        '"I see."':
            # a1009 # r50327
            jump adabus_s2  # EXTERN


# s500 # say50410
label morte_s500: # -
    nr '"What? What? What was in it, chief?"'

    menu:
        '"I don„t know what to say, Morte…"':
            # a1010 # r50411
            jump morte_s501

        '"Nothing that concerns you, Morte."':
            # a1011 # r50412
            jump morte_s501

        'Show him the Codex.':
            # a1012 # r50413
            jump morte_s503


# s501 # say50414
label morte_s501: # from 500.0 500.1
    nr '"WHAT?! You„ve got to be kidding me, right? C“mon, lemme see it!"'

    menu:
        'Show him the Codex.':
            # a1013 # r50415
            jump morte_s503

        '"No, Morte. Just forget you saw it."':
            # a1014 # r50416
            $ morteLogic.r50416_action()
            jump morte_s502


# s502 # say50417
label morte_s502: # from 501.1
    nr 'Morte mutters sourly… but drops the subject.'

    jump codexi_s2  # EXTERN


# s503 # say50418
label morte_s503: # from 500.2 501.0
    nr 'Morte floats over your shoulder to examine the Codex„s contents. His eyes nearly pop from their sockets as they scan the pages: "Ooo. Ooooooo. Oh, I… but… wow."'

    jump codexi_s2  # EXTERN


# s504 # say50697
label morte_s504: # -
    nr '"Whoah! Whoah! Whoah! You„ve *got* to be kidding, right? You *can“t* be serious, chief!"'

    menu:
        '"I am. Will you take him, Vrischika?"':
            # a1015 # r50698
            jump vrisch_s45  # EXTERN

        '"No, I„m not. I had another question, Vrischika…"':
            # a1016 # r50699
            jump vrisch_s7  # EXTERN

        '"You„re right, Morte; it was a bad idea. Let“s go."':
            # a1017 # r50700
            jump morte_dispose


# s505 # say50701
label morte_s505: # -
    nr '"I can„t believe this… you“ve sunk pretty low before, chief, but this just takes the cake. I„ll see *you* in Baator, you banged-up, short-stemmed, back-stabbing, ungrateful, pock-marked, dung-biting, greasy-haired, snaggle-toothed sorry piece of amnesiatic garbage! Mark my words, you piking sod, keep on this way and you“ll be dead for *good* soon enough… and oh how you„ll get yours, then!"'

    $ morteLogic.s505_action()
    jump vrisch_s46  # EXTERN


# s506 # say52571
label morte_s506: # -
    nr '"It swallowed him, but I don„t know if he came out of *that* end."'

    menu:
        '"Enough of this - look, Ravel, you took my mortality from me, and it has caused more harm than good. I would take it back now - you have had it overlong, I think."':
            # a1018 # r52572
            jump ravel_s126  # EXTERN


# s507 # say52573
label morte_s507: # -
    nr '"I think I know who should be in a cage…"'

    jump ravel_s189  # EXTERN


# s508 # say52574
label morte_s508: # -
    nr '"Well, I didn„t have anything BETTER to do except go to one of the Lady“s mazes and meet one of the evilest creatures ever to set foot in Sigil, so I said „sure! Why n-?“"'

    menu:
        '"Morte, be quiet. Ravel, I…"':
            # a1019 # r52575
            jump morte_s509


# s509 # say52576
label morte_s509: # from 508.0
    nr '"„Be quiet?!“" Morte clacks his teeth. "Like the hells I will! I think we„ve listened to this crone rattle her bone-box enough, and now she“s got some pair of stones, saying I haven„t got any skin! So WHAT if I don“t?! Obviously the fact SHE has skin has done wonders for HER looks! Does she think I *like* being NAKED all the time? And *another* thing-"'

    menu:
        '"Morte! Cut it out! Ravel, look-"' if morteLogic.r52577_condition():
            # a1020 # r52577
            $ morteLogic.r52577_action()
            jump ravel_s66  # EXTERN

        '"Morte! Cut it out! Ravel, look-"' if morteLogic.r52578_condition():
            # a1021 # r52578
            $ morteLogic.r52578_action()
            jump ravel_s67  # EXTERN

        '"Morte! Cut it out! Ravel, look-"' if morteLogic.r52579_condition():
            # a1022 # r52579
            jump ravel_s68  # EXTERN


# s510 # say52644
label morte_s510: # -
    nr '"Freaky. So where are we technically standing right now?"'

    menu:
        '"I really don„t want to know the answer to that, Morte."':
            # a1023 # r52771
            jump pregal_s10  # EXTERN


# s511 # say53623
label morte_s511: # -
    nr '"Oh, that„s just *great.*"'

    jump pillar_s5  # EXTERN


# s512 # say53624
label morte_s512: # from 522.0 523.0 524.0
    nr 'As you make to step closer to the Pillar, Morte hisses to you: "Pssst! Chief! Chief… listen, I can„t let that thing see me. You“ve got to get me out of here… drop me off somewhere, pick me up later or something…"'

    menu:
        '"Forget it, Morte. I„m going to speak to it now…"' if morteLogic.r53625_condition():
            # a1024 # r53625
            $ morteLogic.r53625_action()
            jump pillar_s9  # EXTERN

        '"Why, Morte? What„s going on?"' if morteLogic.r53627_condition():
            # a1025 # r53627
            jump morte_s513

        '"Fine. We„ll leave, then."':
            # a1026 # r53628
            jump morte_dispose


# s513 # say53626
label morte_s513: # from 512.1
    nr '"Eh… I don„t really like to talk about it. Let“s just get moving, yeah?" Morte„s voice trembles with fear; his eyes flicker back and forth between you and the massive pillar of heads.'

    menu:
        '"I can„t have you keeping so many secrets, Morte. You“ve got to tell me what„s going on here."':
            # a1027 # r53629
            $ morteLogic.r53629_action()
            jump morte_s514

        '"No more dodging, Morte. Tell what„s going on *now,* or you“ll *wish* we„d just talked to the heads."':
            # a1028 # r53630
            $ morteLogic.j53661_s513_r53630_action()
            $ morteLogic.r53630_action()
            jump morte_s514

        '"Fine. We„ll leave, then."':
            # a1029 # r53631
            jump morte_dispose


# s514 # say53632
label morte_s514: # from 513.0 513.1
    nr 'Morte sighs, unable to meet your stare. At last, he relents. "Fine, fine… I„ll tell you. There“s this pillar on Avernus, the first layer of Baator, built of the heads of all those who„ve led others to their deaths through lies. Well… that“s it right there. See, that„s where I ended up. Go figure."'

    menu:
        '"So… you were one of those heads?"' if morteLogic.r53662_condition():
            # a1030 # r53662
            jump morte_s516

        '"So… you were one of those heads?"' if morteLogic.r53663_condition():
            # a1031 # r53663
            jump morte_s515


# s515 # say53664
label morte_s515: # from 514.1
    nr '"Yeah. I told an… exaggeration or two. It„s just that one of my suggestions led to your death. One of them. Maybe others. I don“t really know - those memories are gone, now."'

    menu:
        '"I see…"':
            # a1032 # r53665
            jump morte_s518


# s516 # say53666
label morte_s516: # from 514.0
    nr '"Yeah. I told an… exaggeration or two. It„s just that one of my suggestions-"'

    jump annah_s269  # EXTERN


# s517 # say53667
label morte_s517: # -
    nr 'Morte continues, unperturbed. "…one of my *suggestions* led to your death. One of them. Maybe others. I don„t really know - those memories are gone, now."'

    jump morte_s518


# s518 # say53668
label morte_s518: # from 515.0 517.0
    nr 'Morte stares at your feet - you„ve never seen him look so miserable. "Those memories, they… look, chief, I don“t even remember *being* human. I don„t remember what life was like before the Pillar…"'

    if morteLogic.s518_condition():
        jump dakkon_s183  # EXTERN
    menu:
        '"Go on…"' if morteLogic.r54105_condition():
            # a1033 # r54105
            jump morte_s520


# s519 # say53794
label morte_s519: # -
    nr 'Morte glances at Dak„kon, then you. "Yeah, I guess. And that“s pretty much the way of things when you die. You… forget. I figure I wasn„t a sterling member of the community when I was alive… but hells, who is?" Morte sighs again. "It“s just that I can„t help it. Nothing“s worse than being honest all the time. But look, chief: if that pile of heads sees me, it„ll want me back - *bad.* You can“t let that happen!"'

    menu:
        '"Forget it, Morte. I„m going to speak to it now…"':
            # a1034 # r53795
            $ morteLogic.r53795_action()
            jump pillar_s9  # EXTERN

        '"Wait… how„d you get free of the Pillar?"':
            # a1035 # r53796
            jump morte_s521

        '"Hold it… why didn„t you tell me you knew me back in the Mortuary?"':
            # a1036 # r53797
            jump morte_s523

        '"One moment. Just how long have you known me, Morte?"':
            # a1037 # r53798
            jump morte_s524

        '"All right. Let„s go, Morte."':
            # a1038 # r53799
            jump morte_dispose


# s520 # say53800
label morte_s520: # from 518.1
    nr '"Anyway, I figure I wasn„t a sterling member of the community when I was alive… but hells, who is?" Morte sighs again. "It“s just that I can„t help it. Nothing“s worse than being honest all the time. But look, chief: if that pile of heads *sees* me, it„ll want me back - *bad.* You can“t let that happen!"'

    menu:
        '"Forget it, Morte. I„m going to speak to it now…"':
            # a1039 # r53801
            $ morteLogic.r53801_action()
            jump pillar_s9  # EXTERN

        '"Wait… how„d you get free of the Pillar?"':
            # a1040 # r53802
            jump morte_s521

        '"Hold it… why didn„t you tell me you knew me back in the Mortuary?"':
            # a1041 # r53803
            jump morte_s523

        '"One moment. Just how long have you known me, Morte?"':
            # a1042 # r53804
            jump morte_s524

        '"All right. Let„s go, Morte."':
            # a1043 # r53805
            jump morte_dispose


# s521 # say53806
label morte_s521: # from 519.1 520.1 523.1 524.1
    nr '"Well… you pulled me off, chief. I fought my way to the front of the Pillar - you„ve been here before, you know - yammering and howling until you had noticed me. I begged to be freed, swearing that I“d follow you, sharing my knowledge until your final days… I just didn„t realize how long that“d be until after you„d already torn me free."'

    menu:
        '"And all the Pillar„s Knowledge…?"':
            # a1044 # r53807
            $ morteLogic.j53633_s521_r53807_action()
            jump morte_s522


# s522 # say53808
label morte_s522: # from 521.0
    nr '"Oh, that… well, I also didn„t realize I“d lose most of the Pillar„s accumulated knowledge once I was out of it. Piking powers, did *that* ever set you off! But you kept me around just the same. And at first I felt “bound„ to you… that maybe your sorcery had turned me into some sort of familiar. But after a couple hundred years, I realized it was *more* than that… something deeper. More than just a debt of gratitude, too, though that sure as the hells had something to do with it. I just felt drawn, *connected* to you, somehow. Maybe it“s all your suffering, chief… your torment. I don„t know. Maybe I likened it to my own, when I was in that pillar."'

    menu:
        '"I„m going to speak to the Pillar, now…"':
            # a1045 # r53809
            jump morte_s512

        '"Why didn„t you tell me you knew me back in the Mortuary?"':
            # a1046 # r53810
            jump morte_s523

        '"Just how long have you known me, Morte?"':
            # a1047 # r53811
            jump morte_s524

        '"All right. Let„s leave, Morte."':
            # a1048 # r53812
            jump morte_dispose


# s523 # say53813
label morte_s523: # from 519.2 520.2 522.1 524.2
    nr 'Morte suddenly becomes defensive. "Because I never *know* who you„re going to be! Some of your incarnations have been stark, raving mad! One time you awoke obsessed with the idea that *I* was your skull, and chased me around the Spire trying to shatter and devour me… luckily, you were crushed by a passing cart in the street. Another, “good and lawful,„ you tried to thrust me back into the Pillar, because “it„s where I belonged.“" Morte smirks. "*That„s* why. Besides, no harm“s ever come of you not knowing…"'

    menu:
        '"I„m going to speak to the Pillar, now…"':
            # a1049 # r53814
            jump morte_s512

        '"How„d you get free of the Pillar?"':
            # a1050 # r53815
            jump morte_s521

        '"Just how long have you known me, Morte?"':
            # a1051 # r53816
            jump morte_s524

        '"All right. Let„s leave, Morte."':
            # a1052 # r53817
            jump morte_dispose


# s524 # say53818
label morte_s524: # from 519.3 520.3 522.2 523.2
    nr '"Don„t know. Ages, I suppose. I“ve done all I could to help you find your way each time, but…" Morte sighs, then lifts himself up to meet your gaze. "You rarely make it this far, chief. I mean it; only four or five times, I think. This could be the time… the „you“ that makes it, finds out what„s going on."'

    menu:
        '"I„m going to speak to the Pillar, now…"':
            # a1053 # r53819
            jump morte_s512

        '"How„d you get free of the Pillar?"':
            # a1054 # r53820
            jump morte_s521

        '"Why didn„t you tell me you knew me back in the Mortuary?"':
            # a1055 # r53821
            jump morte_s523

        '"All right. Let„s leave, Morte."':
            # a1056 # r53822
            jump morte_dispose


# s525 # say53823
label morte_s525: # -
    nr '"Oh, no…"'

    jump pillar_s10  # EXTERN


# s526 # say53824
label morte_s526: # -
    nr 'Morte shakes with fear, his teeth rattling. "I can„t go back, chief! I can“t! I can„t! I can“t!"'

    menu:
        '"He hasn„t come back to you. But I had some questions, Pillar of Skulls…"' if morteLogic.r53825_condition():
            # a1057 # r53825
            $ morteLogic.r53825_action()
            jump pillar_s2  # EXTERN

        '"He hasn„t come back to you. But I had some questions, Pillar of Skulls…"' if morteLogic.r53826_condition():
            # a1058 # r53826
            $ morteLogic.r53826_action()
            jump pillar_s2  # EXTERN

        '"He hasn„t come back to you, Pillar of Skulls. But I had some questions…"' if morteLogic.r53827_condition():
            # a1059 # r53827
            jump pillar_s12  # EXTERN

        '"Let„s just go, Morte. Come on."':
            # a1060 # r53828
            jump pillar_s50  # EXTERN


# s527 # say53829
label morte_s527: # -
    nr '"Come *on,* chief; didn„t I just *tell* you what it was?! It“s composed of the heads of liars whose „advice“ sent those they advised to their deaths. It can answer almost any question - it knows more than a lot - but it„ll expect a whole mess of payment for its services. Don“t ask it a question like that!"'

    jump pillar_s14  # EXTERN


# s528 # say53830
label morte_s528: # -
    nr '"Don„t put me back in there, chief. Please!"'

    jump pillar_s17  # EXTERN


# s529 # say53831
label morte_s529: # -
    nr '"Chief?! No! No! You *can„t!* Come on!"'

    menu:
        '"Don„t worry, Morte - I“ll just pull you back out later."' if morteLogic.r53832_condition():
            # a1061 # r53832
            jump morte_s530

        '"Don„t worry, Morte - I“ll just pull you back out later."' if morteLogic.r53833_condition():
            # a1062 # r53833
            jump morte_s530

        '"Don„t worry, Morte - I“ll just pull you back out later."' if morteLogic.r53834_condition():
            # a1063 # r53834
            jump morte_s530

        '"Don„t worry, Morte - I“ll just pull you back out later."' if morteLogic.r53835_condition():
            # a1064 # r53835
            jump morte_s531

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53836_condition():
            # a1065 # r53836
            jump pillar_s19  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53837_condition():
            # a1066 # r53837
            jump pillar_s20  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53838_condition():
            # a1067 # r53838
            jump pillar_s21  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53839_condition():
            # a1068 # r53839
            jump pillar_s22  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53840_condition():
            # a1069 # r53840
            jump pillar_s23  # EXTERN

        '"Let„s just go, Morte. Come on."':
            # a1070 # r53841
            $ morteLogic.r53841_action()
            jump pillar_s50  # EXTERN


# s530 # say53842
label morte_s530: # from 529.0 529.1 529.2
    nr 'Morte looks at you skeptically. "You *sure?* You *swear* it? Hey, what am I saying?! No! No way! C„mon, you *can“t* put me back in there!"'

    menu:
        'Grab Morte, thrust him into the Pillar of Skulls.':
            # a1071 # r53843
            $ morteLogic.r53843_action()
            jump morte_dispose

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53844_condition():
            # a1072 # r53844
            jump pillar_s19  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53863_condition():
            # a1073 # r53863
            jump pillar_s20  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53864_condition():
            # a1074 # r53864
            jump pillar_s21  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53865_condition():
            # a1075 # r53865
            jump pillar_s22  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53866_condition():
            # a1076 # r53866
            jump pillar_s23  # EXTERN

        '"Let„s just go, Morte. Come on."':
            # a1077 # r53867
            $ morteLogic.r53867_action()
            jump pillar_s50  # EXTERN


# s531 # say53849
label morte_s531: # from 529.3
    nr 'Morte stares at you in silence for a while, his mouth agape. "WHAT?! Not a chance! You„re just not as powerful as you were when… look, forget it, you couldn“t do it, it„s not going to happen! C“mon, you *can„t* put me back in there!"'

    menu:
        'Grab Morte, thrust him into the Pillar of Skulls.':
            # a1078 # r53850
            $ morteLogic.r53850_action()
            jump morte_dispose

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53851_condition():
            # a1079 # r53851
            jump pillar_s19  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53852_condition():
            # a1080 # r53852
            jump pillar_s20  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53853_condition():
            # a1081 # r53853
            jump pillar_s21  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53854_condition():
            # a1082 # r53854
            jump pillar_s22  # EXTERN

        '"All right, Morte. Pillar of Skulls: what other tribute will you accept?"' if morteLogic.r53855_condition():
            # a1083 # r53855
            jump pillar_s23  # EXTERN

        '"Let„s just go, Morte. Come on."':
            # a1084 # r53856
            $ morteLogic.r53856_action()
            jump pillar_s50  # EXTERN


# s532 # say53857
label morte_s532: # -
    nr '"Whoa there… wait! Not so fast! Pillar… I could tell you where Fhjull Forked-Tongue is! Come on, don„t you want to know? So what if he gives you that, instead of me? Eh? What d“ya say?"'

    menu:
        '"Hold it, Morte. We„re not selling out Fhjull."':
            # a1085 # r53858
            jump morte_s533

        'Wait for the Pillar„s reply.':
            # a1086 # r53859
            jump pillar_s19  # EXTERN


# s533 # say53860
label morte_s533: # from 532.0
    nr '"What? Are you *barmy?!* You„ll sell *me* out, but not that *FIEND?!* The only reason he helped you is because he“s bound, cursed! What about *me?* Who got you out of the Mortuary, pal? Who„s gonna stand - er, float - beside you when you face down whatever“s waiting for you at that Fortress of Whatever?! Huh?! Huh?! NOT FHJULL FAT-ARSE, THAT„S FOR DAMNED SURE!"'

    menu:
        '"Fine, fine. What do you say, Pillar?"':
            # a1087 # r53861
            jump pillar_s19  # EXTERN

        '"Sorry, Morte. You„re going in."':
            # a1088 # r53862
            jump pillar_s18  # EXTERN


# s534 # say54155
label morte_s534: # from 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0
    nr '"Why not, chief?" Morte shakes his head. "I mean, we„ve gone to every OTHER horrible plane in the multiverse I can think of. Why not take that extra step over the cliff?" He gives a rattling sigh. "Are YOU ready? Because if you“re not…"'

    menu:
        '"Can you tell me again what you know of what„s beyond the portal?"':
            # a1089 # r54156
            jump morte_s544

        '"I„m ready, Morte. There“s nothing more I can do to prepare myself; are you with me?"':
            # a1090 # r54157
            jump morte_s535

        '"Maybe you„re right… let me prepare some more first."':
            # a1091 # r54158
            jump morte_dispose


# s535 # say54159
label morte_s535: # from 534.1
    nr '"Well, I…" Morte glances at the shimmering blue curtain and gives another rattling sigh. "Sure. Let„s go. I mean, any place else has got to be better than rattling our bone-box in the Mortuary, right?"'

    menu:
        '"All right then…"':
            # a1092 # r54160
            $ morteLogic.r54160_action()
            jump morte_dispose


# s536 # say54161
label morte_s536: # -
    nr '"Eh…" Morte hesitates, glances at the portal, glances at you, glances at the portal again, then gives a rattling sigh. "Look, I„m not going to say *too* much here, but uh… well, there“s something I need to tell you…"'

    menu:
        '"What is it, Morte?"':
            # a1093 # r54162
            jump morte_s537

        '"What? C„mon, Morte, we have to be going…"':
            # a1094 # r54163
            jump morte_s537


# s537 # say54164
label morte_s537: # from 536.0 536.1
    nr '"Well, it„s about where we“re going… or eh, actually where… we„ve… *been.*"'

    menu:
        '"„Where WE“VE been„? What are you talking about?"' if morteLogic.r54165_condition():
            # a1095 # r54165
            jump morte_s540

        '"„Where WE“VE been„? What are you talking about?"' if morteLogic.r54166_condition():
            # a1096 # r54166
            jump dakkon_s174  # EXTERN

        '"„Where WE“VE been„? What are you talking about?"' if morteLogic.r54167_condition():
            # a1097 # r54167
            jump morte_s540


# s538 # say54168
label morte_s538: # -
    nr '"Uh… chief?" Morte hesitates, glances at the portal, glances at you, glances at the portal again, then gives a rattling sigh. "Look, I„m not going to say *too* much here, but uh… well, there“s something I need to tell you…"'

    menu:
        '"What is it, Morte?"':
            # a1098 # r54169
            jump morte_s539

        '"What? C„mon, Morte, I have to be going…"':
            # a1099 # r54170
            jump morte_s539


# s539 # say54171
label morte_s539: # from 538.0 538.1
    nr '"Well, it„s about where you“re going… or eh, actually where you… we„ve… *been.*"'

    menu:
        '"„Where WE“VE been„? What are you talking about?"' if morteLogic.r54172_condition():
            # a1100 # r54172
            jump morte_s540

        '"„Where WE“VE been„? What are you talking about?"' if morteLogic.r54173_condition():
            # a1101 # r54173
            jump dakkon_s174  # EXTERN

        '"„Where WE“VE been„? What are you talking about?"' if morteLogic.r54174_condition():
            # a1102 # r54174
            jump morte_s540


# s540 # say54175
label morte_s540: # from 537.0 537.2 539.0 539.2
    nr '"This… uh, this isn„t the FIRST time we“ve been through this… you see, we„ve been to this “Fortress of Regrets„ before… though, we… I… didn“t know it then."'

    menu:
        '"You didn„t *know?* How is that possible?"':
            # a1103 # r54176
            jump morte_s541

        '"So, from the VERY START… you could have TOLD me where the portal was, WHAT the portal key is, WHY I am immortal, WHAT happened to my mortality, AND the fact that it„s in this Fortress?! Morte, I“ll *KILL* you…!"':
            # a1104 # r54177
            jump morte_s542

        '"Morte, I expect an explanation… no more lies or deceptions, not now."':
            # a1105 # r54178
            jump morte_s541

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54179_condition():
            # a1106 # r54179
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54180_condition():
            # a1107 # r54180
            $ morteLogic.r54180_action()
            jump morte_dispose


# s541 # say54181
label morte_s541: # from 540.0 540.2
    nr '"It„s hard to explain until you“ve *been* there… besides, you didn„t know the, uh, *other* you - he wasn“t exactly the kind of basher to SHARE the chant with us. I mean, I knew he was looking for SOME place, but I didn„t know why, where it was, or WHAT it was, so I couldn“t say ANYTHING to you, because I didn„t know ANYTHING! I… just know what happened when we GOT there…"'

    menu:
        '"And… what happened?"' if morteLogic.r54189_condition():
            # a1108 # r54189
            jump morte_s544

        '"And… what happened?"' if morteLogic.r54190_condition():
            # a1109 # r54190
            jump morte_s543

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54191_condition():
            # a1110 # r54191
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54192_condition():
            # a1111 # r54192
            $ morteLogic.r54192_action()
            jump morte_dispose


# s542 # say54193
label morte_s542: # from 540.1
    nr 'Morte looks alarmed. "No! No! We… I… never KNEW any of that! It„s not like you were always the most sharing basher in the planes! That… that *other* you kept a LOT of the chant to himself, and we didn“t even know WHY we were going to this place before or even WHAT this place was! I just know what happened when we GOT there…"'

    menu:
        '"And… what happened?"' if morteLogic.r54194_condition():
            # a1112 # r54194
            jump morte_s544

        '"And… what happened?"' if morteLogic.r54195_condition():
            # a1113 # r54195
            jump morte_s543

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54196_condition():
            # a1114 # r54196
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54197_condition():
            # a1115 # r54197
            $ morteLogic.r54197_action()
            jump morte_dispose


# s543 # say54198
label morte_s543: # from 541.1 542.1
    nr '"Well, we went to this - this FORTRESS, and before we even land foot in this place, we„re all SPLIT up, fighting for our lives… so the *first* thing I want to tell you is if you“re determined to go through with this, there„s a good chance anybody who goes through that portal is going to end up somewhere *far* away from everybody else. Thing is, you“ll still need people there with you…"'

    menu:
        '"Why do you say that?"':
            # a1116 # r54199
            jump morte_s545

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54200_condition():
            # a1117 # r54200
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54201_condition():
            # a1118 # r54201
            $ morteLogic.r54201_action()
            jump morte_dispose


# s544 # say54202
label morte_s544: # from 534.0 541.0 542.0
    nr '"Well, we went to this - this FORTRESS, and even before we land foot in this place, we„re all SPLIT up, fighting for our lives…" He shudders. "So the *first* thing I want to tell you is if you“re determined to go through with this, there„s a good chance that anybody who goes through that portal is going to end up somewhere *far* away from everybody else. Thing is, even split up, we may be your only hope…"'

    menu:
        '"Why do you say that?"':
            # a1119 # r54203
            jump morte_s545

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54204_condition():
            # a1120 # r54204
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54205_condition():
            # a1121 # r54205
            $ morteLogic.r54205_action()
            jump morte_dispose


# s545 # say54206
label morte_s545: # from 543.0 544.0
    nr '"Because whatever was waiting in that Fortress for you, chief, it already defeated you once… to this day, I don„t know how you managed to survive, but if you fall again, you“re going to need someone there to pull you out of that Fortress…"'

    menu:
        '"Morte, I need you to tell me everything you can about the Fortress… it„s important."' if morteLogic.r54207_condition():
            # a1122 # r54207
            jump morte_s547

        '"Morte, I need you to tell me everything you can about the Fortress… it„s important."' if morteLogic.r54208_condition():
            # a1123 # r54208
            jump morte_s546

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54209_condition():
            # a1124 # r54209
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54210_condition():
            # a1125 # r54210
            $ morteLogic.r54210_action()
            jump morte_dispose


# s546 # say54211
label morte_s546: # from 545.1
    nr '"This „Fortress of Regrets“… it stretches on for LEAGUES, chief. It„s a Fortress, but it feels more like a PLANE in itself, all stone, all darkness, and shadows - everywhere, shadows. You go there, and… you better be prepared."'

    menu:
        '"What happened when we first went there?"':
            # a1126 # r54212
            jump morte_s548

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54213_condition():
            # a1127 # r54213
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54214_condition():
            # a1128 # r54214
            $ morteLogic.r54214_action()
            jump morte_dispose


# s547 # say54215
label morte_s547: # from 545.0
    nr '"This „Fortress of Regrets“… it stretches on for LEAGUES, chief. It„s a Fortress, but it feels more like a PLANE in itself, all stone, all darkness, and shadows - everywhere, shadows. We go there, and… we better be prepared."'

    menu:
        '"What happened when we first went there?"':
            # a1129 # r54216
            jump morte_s548

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54217_condition():
            # a1130 # r54217
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54218_condition():
            # a1131 # r54218
            $ morteLogic.r54218_action()
            jump morte_dispose


# s548 # say54219
label morte_s548: # from 546.0 547.0
    nr '"Chief, I don„t know what happened to YOU, but I know what happened to ME… I spent my time running from vault to vault, those shadows crawling all over me, trying to bring me down… then, I just… suddenly, we were “out,„ like someone had pulled us back…"'

    menu:
        '"Hold on a moment. When you say „us,“ it doesn„t sound like it meant just you and me."' if morteLogic.r54220_condition():
            # a1132 # r54220
            jump morte_s565

        '"Hold on a moment. When you say „us,“ it doesn„t sound like it meant just you and me."' if morteLogic.r54221_condition():
            # a1133 # r54221
            jump morte_s549

        '"Hold on a moment. When you say „us,“ it doesn„t sound like it meant just you and me."' if morteLogic.r54223_condition():
            # a1134 # r54223
            jump morte_s550

        '"I see. Is there anything else you can tell me?"':
            # a1135 # r54225
            jump morte_s552

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54226_condition():
            # a1136 # r54226
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54227_condition():
            # a1137 # r54227
            $ morteLogic.r54227_action()
            jump morte_dispose


# s549 # say54229
label morte_s549: # from 548.1
    nr 'Morte falls silent for a moment. "No… there were others. There was… Dak„kon, this Sensate chit, Deionarra, this blind archer who was half-sodden with drink all the time, and you and me… and things just went to the hells and back. Obviously, you, me, and Dak“kon made it, but those other two didn„t; I don“t know what happened to them."'

    menu:
        '"Dak„kon? But why… I“ll have to ask him about this; but you say that Deionarra and this archer never returned from the Fortress?"' if morteLogic.r54230_condition():
            # a1138 # r54230
            jump morte_s551

        '"Dak„kon? But why… I“ll have to ask him about this; but you say that this woman, Deionarra, and this archer never returned from the Fortress?"' if morteLogic.r54231_condition():
            # a1139 # r54231
            jump morte_s551

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54232_condition():
            # a1140 # r54232
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54233_condition():
            # a1141 # r54233
            $ morteLogic.r54233_action()
            jump morte_dispose


# s550 # say54234
label morte_s550: # from 548.2
    nr 'Morte falls silent for a moment. "No… there were others. There was… this old gith, Dak„kon, this Sensate chit, Deionarra, this blind archer who was half-sodden with drink all the time, and you and me… and things just went to the hells and back. Obviously, you, me, and Dak“kon made it, but those other two didn„t; I don“t know what happened to them."'

    menu:
        '"You say Deionarra and this archer never returned from the Fortress?"' if morteLogic.r54235_condition():
            # a1142 # r54235
            jump morte_s551

        '"You say this woman, Deionarra, and this archer never returned from the Fortress?"' if morteLogic.r54236_condition():
            # a1143 # r54236
            jump morte_s551

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54237_condition():
            # a1144 # r54237
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54238_condition():
            # a1145 # r54238
            $ morteLogic.r54238_action()
            jump morte_dispose


# s551 # say54239
label morte_s551: # from 549.0 549.1 550.0 550.1
    nr 'Morte shakes his head. "Not that I know of."'

    menu:
        '"Is there anything more you can tell me about this Fortress?"':
            # a1146 # r54240
            jump morte_s552

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54241_condition():
            # a1147 # r54241
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54242_condition():
            # a1148 # r54242
            $ morteLogic.r54242_action()
            jump morte_dispose


# s552 # say54243
label morte_s552: # from 548.3 551.0
    nr '"I can„t tell you anymore, chief - except we“re bound to be divided as soon as we arrive, it„s a HUGE place, and it“s crawling with shadows… and somewhere in that Fortress is something more powerful than *any* of us. There„s nothing more to say…"'

    menu:
        '"Are you *sure?* This may be the last time we have a chance to speak to one another…"':
            # a1149 # r54244
            $ morteLogic.r54244_action()
            jump morte_s553

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54245_condition():
            # a1150 # r54245
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54246_condition():
            # a1151 # r54246
            $ morteLogic.r54246_action()
            jump morte_dispose


# s553 # say54249
label morte_s553: # from 552.0
    nr '"Well…" Morte pauses. "Yeah, there„s one other thing you should know - the YOU I knew before, the YOU that led us here, he wasn“t like you. At all."'

    menu:
        '"What do you mean?"' if morteLogic.r54250_condition():
            # a1152 # r54250
            jump morte_s554

        '"What do you mean?"' if morteLogic.r54252_condition():
            # a1153 # r54252
            jump morte_s555

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54255_condition():
            # a1154 # r54255
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54262_condition():
            # a1155 # r54262
            $ morteLogic.r54262_action()
            jump morte_dispose


# s554 # say54263
label morte_s554: # from 553.0
    nr '"The other YOU, he… he didn„t care very much for anybody. For anyone. We could have ALL died in the Fortress, and he wouldn“t have blinked. So… I just want you to hold on to your differences, because… well, I like this *you* better. A LOT better."'

    menu:
        '"But that„s not all you want to say, is it?"' if morteLogic.r54264_condition():
            # a1156 # r54264
            jump morte_s556

        '"Is that it?"':
            # a1157 # r54265
            jump morte_s556

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54266_condition():
            # a1158 # r54266
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54267_condition():
            # a1159 # r54267
            $ morteLogic.r54267_action()
            jump morte_dispose


# s555 # say54268
label morte_s555: # from 553.1
    nr '"All„s I“m saying is that, despite all your asinine behavior, YOU got more spirit than he ever did. The other YOU, he… he was detached from everything. So… I just want you to keep that in mind."'

    menu:
        '"But that„s not all you want to say, is it?"' if morteLogic.r54269_condition():
            # a1160 # r54269
            jump morte_s556

        '"Is that it?"':
            # a1161 # r54270
            jump morte_s556

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54271_condition():
            # a1162 # r54271
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54272_condition():
            # a1163 # r54272
            $ morteLogic.r54272_action()
            jump morte_dispose


# s556 # say54273
label morte_s556: # from 554.0 554.1 555.0 555.1
    nr '"No…" Morte pauses. "There„s one other thing - I may not have liked that *other* you very much, but he was one smart basher - the smartest basher I“ve ever known; he always had every angle covered. If he died at the Fortress, that means… well…"'

    menu:
        '"You don„t think I can succeed, do you?"':
            # a1164 # r54274
            jump morte_s557

        '"Never mind, Morte. I„m ready to head through the portal now - you with me?"' if morteLogic.r54275_condition():
            # a1165 # r54275
            jump morte_s534

        '"Never mind, Morte. What happens, happens. I„m going to head through the portal now."' if morteLogic.r54276_condition():
            # a1166 # r54276
            $ morteLogic.r54276_action()
            jump morte_dispose


# s557 # say54277
label morte_s557: # from 556.0
    nr '"No…" Morte shakes his head. "It„s not that, chief. Because it“s not always who„s smartest, or who“s the most powerful, or who„s the toughest… sometimes it comes down to who you are and what you *really* want. I mean, once you wanted to become immortal - but in the end, is that *really* what you wanted? Just be sure of what you want this time, is all I“m saying."'

    menu:
        '"Fair enough. Look, Morte… we haven„t really talked about this, but you know you don“t have to come with me to this place, right? I„ll understand if you don“t want to."' if morteLogic.r54278_condition():
            # a1167 # r54278
            $ morteLogic.r54278_action()
            jump morte_s558

        '"Understood. If you„ve said your peace, let“s go. You ready?"' if morteLogic.r54279_condition():
            # a1168 # r54279
            jump morte_s534

        '"Understood; thanks for the advice, Morte. I„m going to head through the portal now."' if morteLogic.r54280_condition():
            # a1169 # r54280
            $ morteLogic.r54280_action()
            jump morte_dispose


# s558 # say54281
label morte_s558: # from 557.0
    nr '"Yeah… I know, chief. And I can„t lie to you… I don“t want to go… but I will. Just know that once we step through that portal, it isn„t going to be just about *you* anymore. This is our lives you“re playing with, and we don„t get back up when we die."'

    menu:
        '"Then why are you…"' if morteLogic.r54282_condition():
            # a1170 # r54282
            jump grace_s169  # EXTERN

        '"Then why are you…"' if morteLogic.r54283_condition():
            # a1171 # r54283
            jump grace_s170  # EXTERN

        '"Then why are you…"' if morteLogic.r54284_condition():
            # a1172 # r54284
            jump morte_s562

        '"Then why are you…"' if morteLogic.r54285_condition():
            # a1173 # r54285
            jump morte_s563

        '"Then why are you…"' if morteLogic.r54286_condition():
            # a1174 # r54286
            jump morte_s564


# s559 # say54762
label morte_s559: # -
    nr 'Morte shoots back, "You don„t smell any better. When was the last time you bathed?"'

    jump grace_s176  # EXTERN


# s560 # say54763
label morte_s560: # -
    nr 'Morte shoots back, "You don„t smell any better. When was the last time you bathed?"'

    jump grace_s177  # EXTERN


# s561 # say54764
label morte_s561: # -
    nr 'Morte shoots back, "You don„t smell any better. When was the last time you bathed?"'

    jump trias_s8  # EXTERN


# s562 # say54831
label morte_s562: # from 558.2
    nr '"What Ravel said, in the maze - she said you draw people who suffer to you, like a lodestone." Morte shakes his head. "Maybe it„s because *you“ve* been suffering all this time. Maybe when you end up settling things… maybe *we„ll* know a bit of peace, too. Maybe."'

    menu:
        '"Maybe so. Then… are you with me, Morte?"' if morteLogic.r54832_condition():
            # a1175 # r54832
            jump morte_s534

        '"Understood; thanks for the advice, Morte. I„m going to head through the portal now."' if morteLogic.r54833_condition():
            # a1176 # r54833
            $ morteLogic.r54833_action()
            jump morte_dispose


# s563 # say54834
label morte_s563: # from 558.3
    nr '"What Ravel said, in the maze - and what Fell said about that symbol, Torment? They say you draw people who suffer to you, like a lodestone." Morte shakes his head. "Maybe it„s because *you“ve* been suffering all this time. Maybe when you end up settling things… maybe *we„ll* know a bit of peace, too. Maybe."'

    menu:
        '"Maybe so. Then… are you with me, Morte?"' if morteLogic.r54835_condition():
            # a1177 # r54835
            jump morte_s534

        '"Understood; thanks for the advice, Morte. I„m going to head through the portal now."' if morteLogic.r54836_condition():
            # a1178 # r54836
            $ morteLogic.r54836_action()
            jump morte_dispose


# s564 # say54837
label morte_s564: # from 558.4
    nr '"I„ve known you for a long time, chief, and there“s *something* about you - you draw people who suffer to you, like a lodestone." Morte shakes his head. "Maybe it„s because *you“ve* been suffering all this time. Maybe when you end up settling things… maybe *we„ll* know a bit of peace, too. Maybe."'

    menu:
        '"Maybe so. Then… are you with me, Morte?"' if morteLogic.r54838_condition():
            # a1179 # r54838
            jump morte_s534

        '"Understood; thanks for the advice, Morte. I„m going to head through the portal now."' if morteLogic.r54839_condition():
            # a1180 # r54839
            $ morteLogic.r54839_action()
            jump morte_dispose


# s565 # say54840
label morte_s565: # from 548.0
    nr 'Morte falls silent.'

    jump dakkon_s175  # EXTERN


# s566 # say54841
label morte_s566: # -
    nr '"The skull was me." Morte says quietly. "The woman was some chit named Deionarra; I never knew the archer…"'

    jump dakkon_s177  # EXTERN


# s567 # say54842
label morte_s567: # -
    nr '"Yeah…" Morte rattles, as if shivering. "Chief, at this Fortress - there„s shadows *everywhere*…"'

    jump dakkon_s178  # EXTERN


# s568 # say54843
label morte_s568: # -
    nr '"They spoke to me like the Pillar of Skulls…" Morte„s voice drops. "They *knew*…"'

    menu:
        '"All right; look, you two: I need to know all you can tell me about this Fortress…"':
            # a1181 # r54844
            jump dakkon_s179  # EXTERN


# s569 # say54845
label morte_s569: # -
    nr '"I can„t tell you anymore, chief - except we“re bound to be divided as soon as we arrive, it„s a HUGE place, and it“s crawling with shadows… and somewhere in that Fortress is something more powerful than *any* of us."'

    jump dakkon_s182  # EXTERN


# s570 # say54846
label morte_s570: # -
    nr '"I can„t tell you anymore, chief - except any group that goes in there is bound to be divided as soon as they arrive, it“s a HUGE place, and it„s crawling with shadows… and somewhere in that Fortress is something more powerful than anything you“ve encountered."'

    jump dakkon_s182  # EXTERN


# s571 # say55832
label morte_s571: # -
    nr '"Chief, we„re looking at trouble here - this modron“s gone rogue."'

    menu:
        '"Rogue?"':
            # a1182 # r55833
            jump morte_s572


# s572 # say55834
label morte_s572: # from 571.0
    nr '"Yeah, you see, sometimes modrons get a little chaos in „em, and when that happens… well, I guess the *best* explanation is that rogue modrons are kind of like… backwards modrons."'

    menu:
        '"So this is a… backwards modron?"':
            # a1183 # r55836
            jump nordom_s21  # EXTERN


# s573 # say55837
label morte_s573: # -
    nr '"Chief, as much fun as this is, prying a bar stool out of a baatezu„s rear might prove more worthwhile than rattling our bone-boxes with this stupid polygon."'

    menu:
        '"Do *you* know what gear spirits are, Morte?"':
            # a1184 # r55839
            jump morte_s574


# s574 # say55841
label morte_s574: # from 573.0
    nr '"Chief, I have no idea what this cube is rattling on about."'

    menu:
        '"I thought you were the *expert* on the planes."':
            # a1185 # r55842
            jump morte_s575

        '"All right then. Nordom, I had some other questions for you…"':
            # a1186 # r55843
            jump nordom_s74  # EXTERN

        '"Forget it, then. Let„s move on."':
            # a1187 # r55844
            jump morte_dispose


# s575 # say55845
label morte_s575: # from 574.0
    nr '"Wh- I know more than *you,* you staggering, guttural amnesiac! „Sides, here“s three more bits of knowledge to rattle around in that empty brain-box of yours: one, there are NO experts on the planes, two, I„m the closest thing to one you“re going to find, and three, treat me with some respect. Why? See the second reason."'

    menu:
        '"All right then. Nordom, I had some other questions for you…"':
            # a1188 # r55846
            jump nordom_s74  # EXTERN

        '"Forget it, then. Let„s move on."':
            # a1189 # r55847
            jump morte_dispose


# s576 # say55848
label morte_s576: # -
    nr '"Mechanus? Boring in every sense of the word, chief. Imagine a plane filled with modrons and big turning gears, and you have the great big BORING plane of Mechanus. Too many laws, too annoying. A place you wouldn„t even want to think about, let alone visit."'

    if morteLogic.s576_condition():
        $ morteLogic.s576_action()
        jump grace_s184  # EXTERN
    menu:
        '"Nordom, what did you mean before by „Null Home“?"' if morteLogic.r55849_condition():
            # a1190 # r55849
            jump nordom_s65  # EXTERN

        '"Never mind, Morte. I„ve heard enough. Let“s go."' if morteLogic.r55850_condition():
            # a1191 # r55850
            jump morte_dispose


# s577 # say55855
label morte_s577: # -
    nr '"Excuse ME, Miss Priestess of Piety, but Mechanus IS the most boring place in the universe… the only interesting thing about it would be if *you* visited…" Morte rolls his eyes. "But I have a feeling even *that* would lose its charm after a while."'

    menu:
        '"Nordom, what did you mean before by „Null Home“?"':
            # a1192 # r55857
            jump nordom_s65  # EXTERN

        '"Never mind, Morte. I„ve heard enough. Let“s go."':
            # a1193 # r55858
            jump morte_dispose


# s578 # say55860
label morte_s578: # -
    nr '"All modrons are part of this „pool,“ chief, kind of like a big bank of energy… when one of them dies, the energy it took to make the modron is absorbed back into the bank, and a new one„s spit out. Thing is… when a modron goes a little nutty, he kind of cuts that connection, but he keeps a bit of the energy."'

    if morteLogic.s578_condition():
        jump grace_s186  # EXTERN
    menu:
        '"So… Nordom, this Mechanus is a source of energy?"':
            # a1194 # r55862
            jump nordom_s67  # EXTERN

        '"I see. Nordom, I had some other questions for you…"':
            # a1195 # r55864
            jump nordom_s74  # EXTERN

        '"That„s all I wanted to know. Let“s move on."':
            # a1196 # r55865
            jump morte_dispose


# s579 # say55867
label morte_s579: # -
    nr 'Morte glares at Fall-from-Grace. "Do you *mind?* I had the answer covered, thank you. *I„m* the font of information here, NOT you, all right?"'

    jump grace_s187  # EXTERN


# s580 # say55870
label morte_s580: # -
    nr '"Oh, *I* get it! Maybe if I was a succubus, you„d listen to ME more often, that it? Maybe if I showed a little skin once in a while, then I“d get some respect, huh? That„s pretty shallow, chief, pretty shallow! Why, I ought to -"'

    jump grace_s191  # EXTERN


# s581 # say55871
label morte_s581: # -
    nr 'NULL NODE'

    jump morte_dispose


# s582 # say55873
label morte_s582: # -
    nr '"Oh, yeah?! I…?! Well…! Yeah, you just… yeah, you hear that, chief? What the succubus said? She„s right. I“m easier to understand, more „wise to the chant,“ know what I„m saying? So you need me around, see?"'

    menu:
        '"Right, so I have another question: you„re both saying Nordom is part of this Source, but he“s cut off from it. And when a modron dies, they„re re-absorbed. Will Nordom be?"' if morteLogic.r55875_condition():
            # a1197 # r55875
            jump morte_s583

        '"I never said otherwise, Morte. So… Nordom, this source of energy you mentioned… it„s from Mechanus?"':
            # a1198 # r55876
            jump nordom_s67  # EXTERN

        '"All right. Nordom, I had some other questions for you…"':
            # a1199 # r55877
            jump nordom_s74  # EXTERN

        '"That„s all I wanted to know. Let“s move on."':
            # a1200 # r55879
            jump morte_dispose


# s583 # say55882
label morte_s583: # from 582.0
    nr 'Morte nods.'

    menu:
        '"And if he dies, another Nordom is created."':
            # a1201 # r55884
            jump morte_s584


# s584 # say55886
label morte_s584: # from 583.0
    nr '"Eh… no."'

    menu:
        '"What happens?"':
            # a1202 # r55887
            jump morte_s585


# s585 # say55890
label morte_s585: # from 584.0
    nr '"Well, they„ll take his energy, chief, and they“ll spit out another modron, but it won„t be Nordom, because he“s not *really* a modron anymore; he„s got too much of the planes in him. They“ll make a non-Nordom replacement."'

    menu:
        '"So… in turning rogue, he„s become… mortal?"':
            # a1203 # r55892
            jump morte_s586

        '"All right. Nordom, I had some other questions for you…"':
            # a1204 # r55894
            jump nordom_s74  # EXTERN

        '"That„s all I wanted to know. Let“s move on."':
            # a1205 # r55895
            jump morte_dispose


# s586 # say55897
label morte_s586: # from 585.0
    nr 'Morte pauses for a moment. "Well… yeah, you could put it like that. I mean, if he hadn„t had his little rogue rebellion, then he“d be fine… if he died, another modron would pop up just like him. But since he became „backwards“ - well, that part„s going to be lost when he dies."'

    menu:
        '"All right. Nordom, I had some other questions for you…"':
            # a1206 # r55898
            jump nordom_s74  # EXTERN

        '"That„s all I wanted to know. Let“s move on."':
            # a1207 # r55900
            jump nordom_s74  # EXTERN


# s587 # say55901
label morte_s587: # -
    nr '"Aighhhh! For the sake of the powers and my sanity, cut it out! He„s going to snap a crank if you keep asking him that over and over!"'

    menu:
        '"That was kind of the *idea,* Morte."':
            # a1208 # r55902
            $ morteLogic.r55902_action()
            jump morte_s588

        '"Well, I wanted to know the answer, and I was getting it from him."':
            # a1209 # r55905
            jump morte_s589

        '"Never mind. I had some other questions for Nordom…"':
            # a1210 # r55906
            jump nordom_s74  # EXTERN

        '"Forget it. Let„s move on."':
            # a1211 # r55907
            jump morte_dispose


# s588 # say55909
label morte_s588: # from 587.0
    nr '"Oh." Morte „grins.“ "You could have SAID something. By all means, continue. Of course…" Morte *clicks* his teeth, imitating Nordom. "If you want to know about modrons, you should ask ME."'

    menu:
        '"All right, Morte… what can you tell me about modrons?"':
            # a1212 # r55910
            jump morte_s590

        '"Never mind. I had some other questions for Nordom…"':
            # a1213 # r55912
            jump nordom_s74  # EXTERN

        '"Forget it. Let„s move on."':
            # a1214 # r55913
            jump morte_dispose


# s589 # say55914
label morte_s589: # from 587.1
    nr '"Look, chief, NORMAL modrons barely understand anything beyond their basic tasks, and this stupid polygon here is fresh off the planes to boot. Don„t confuse the cube, all right? At least, not while he“s armed. You want to know about modrons, ask me, not him."'

    menu:
        '"All right, Morte… what can you tell me about modrons?"':
            # a1215 # r55915
            jump morte_s590

        '"Never mind. I had some other questions for Nordom…"':
            # a1216 # r55917
            jump nordom_s74  # EXTERN

        '"Forget it. Let„s move on."':
            # a1217 # r55918
            jump morte_dispose


# s590 # say55921
label morte_s590: # from 588.0 589.0
    nr '"It„s like this, chief: Modrons are these stupid geometric shapes that clank around on their home plane, Mechanus - they“re really tidy, orderly, and they„d like the REST of the multiverse to be, too. That“s why they„re such pests."'

    menu:
        '"What„s wrong with trying to make the multiverse more orderly?"':
            # a1218 # r55923
            jump morte_s592

        '"What„s Mechanus?"':
            # a1219 # r55925
            $ morteLogic.r55925_action()
            jump morte_s591

        '"Never mind. I had some other questions for Nordom…"':
            # a1220 # r55926
            jump nordom_s74  # EXTERN

        '"Forget it. Let„s move on."':
            # a1221 # r55928
            jump morte_dispose


# s591 # say55930
label morte_s591: # from 590.1
    nr '"It„s the plane where all these clockwork drones come from. Ask him about it, see what he says. It“s where they sit around and tidy up everything all the time… catalogue this, put *this* in order, put *that* in order, make that law, and so on and so forth."'

    menu:
        'Truth: "That seems like a noble goal. What„s wrong with trying to make the multiverse more orderly?"':
            # a1222 # r55931
            $ morteLogic.r55931_action()
            jump morte_s592

        '"You don„t sound like that thrills you much."':
            # a1223 # r55935
            jump morte_s592

        '"I had some other questions for Nordom…"':
            # a1224 # r55936
            jump nordom_s74  # EXTERN

        '"Forget it. Let„s move on."':
            # a1225 # r55937
            jump morte_dispose


# s592 # say55938
label morte_s592: # from 590.0 591.0 591.1
    nr 'Morte glances at Nordom, who is holding up his left crossbow to the side of his head, as if listening to it.'

    jump morte_s593


# s593 # say55940
label morte_s593: # from 592.0
    nr '"Because, chief, chaos has its place. And if everything was the way a *modron* sees things, it wouldn„t be much of a life… at least a life I“d want to live. They just want to make everything *structured.* Yechhhh."'

    menu:
        'Truth: "I agree; chaos has its place… too much law, and we„d all stagnate. Look, I had some other questions for Nordom…"':
            # a1226 # r55941
            $ morteLogic.r55941_action()
            jump nordom_s74  # EXTERN

        '"I see. Look, I had some other questions for Nordom…"':
            # a1227 # r55942
            jump nordom_s74  # EXTERN

        '"All right then. Let„s move on."':
            # a1228 # r55944
            jump morte_dispose


# s594 # say56029
label morte_s594: # -
    nr '"I *like* the way she smells. It„s pretty."'

    jump fhjull_s27  # EXTERN


# s595 # say56030
label morte_s595: # -
    nr '"Hold on, chief… Baator is BAD news. This fiend is probably holding out on us… and even if there is a „Pillar of Skulls,“ we can probably find somebody else who knows how to reach this Fortress *without* going to one of the most dangerous planes in the multiverse."'

    menu:
        '"Are you holding out, Forked-Tongue?"':
            # a1229 # r56031
            jump fhjull_s88  # EXTERN

        '"Why don„t you want to go there, Morte?"':
            # a1230 # r56032
            jump morte_s596


# s596 # say56033
label morte_s596: # from 595.1
    nr '"It„s a dangerous place, chief. I“d rather not go. I„ve been, and it isn“t pretty. All right?"'

    menu:
        '"We„ll talk about this more later. Forked-Tongue, I have some questions…"':
            # a1231 # r56034
            jump fhjull_s46  # EXTERN


# s597 # say56936
label morte_s597: # -
    nr '"This guy shows up *everywhere!*"'

    menu:
        '"Yes, but he„s been a help to us. Let“s go."':
            # a1232 # r56937
            jump morte_dispose


# s598 # say59827
label morte_s598: # -
    nr '(NULL NODE)'

    jump morte_dispose


# s599 # say60950
label morte_s599: # -
    nr '"Hey, being dead„s not so bad. Look on the bright side… at least you don“t have to talk with those ridiculous squiggles anymore."'

    menu:
        '"Quiet, Morte. I„ll handle this. Could you tell me what happened?"':
            # a1233 # r61111
            jump morte_dispose

        '"Forget it. I„ll leave you in peace."':
            # a1234 # r61112
            jump morte_dispose


# s600 # say61408
label morte_s600: # -
    nr '"Eh… say there, chief… what do you say? How about spotting old Morte a bit of jink? It„s been more than a while, you know…"'

    menu:
        '"Sure, why not. Miss?"' if morteLogic.r61411_condition():
            # a1235 # r61411
            jump ucho_s9  # EXTERN

        '"Sorry, Morte; not enough funds. Let„s go."' if morteLogic.r61412_condition():
            # a1236 # r61412
            jump morte_dispose

        '"We„ve really got to leave, Morte. Farewell, miss."':
            # a1237 # r61413
            jump morte_dispose


# s601 # say61409
label morte_s601: # -
    nr '"All right! Thanks, chief!" Morte turns to follow the woman away.'

    menu:
        'Wait for him to return.':
            # a1238 # r61414
            $ morteLogic.r61414_action()
            jump ucho_s10  # EXTERN


# s602 # say61410
label morte_s602: # -
    nr 'Morte seems only dimly aware of your presence, and alternates between giggling to himself and sighing pleasantly.'

    menu:
        '"All right… I guess things went well, then. Farewell, miss."':
            # a1239 # r61415
            jump morte_dispose


# s603 # say61481
label morte_s603: # -
    nr '"Me? I„m the head of Vecna."~ [MRT562]'

    $ morteLogic.s603_action()
    jump morte_dispose


# s604 # say61482
label morte_s604: # -
    nr '"The gods are merciful!"~ [MRT485]'

    $ morteLogic.s604_action()
    jump morte_dispose


# s605 # say61483
label morte_s605: # -
    nr '"It„s a long story involving the Head of Vecna. I don“t want to talk about it."~ [MRT559A]'

    jump grace_s3  # EXTERN


# s606 # say61484
label morte_s606: # -
    nr '"Could we *please* change the subject?"~ [MRT559B]'

    $ morteLogic.s606_action()
    jump morte_dispose


# s607 # say61485
label morte_s607: # -
    nr '"Me? I„m *le petit Morte.*"~ [MRT560]'

    $ morteLogic.s607_action()
    jump morte_dispose


# s608 # say61486
label morte_s608: # -
    nr '"What„s to tell? I“m a *Memento Morte.*"~ [MRT561]'

    $ morteLogic.s608_action()
    jump morte_dispose


# s609 # say61487
label morte_s609: # -
    nr '"Only if I can rest on your pillows."~ [MRT486A]'

    jump grace_s7  # EXTERN


# s610 # say61488
label morte_s610: # -
    nr '"Nothing! Nothing at all. Not a thing."~ [MRT486B]'

    $ morteLogic.s610_action()
    jump morte_dispose


# s611 # say61489
label morte_s611: # -
    nr '"Arf! Arf! Heh! Heh! Heh!"~ [MRT484]'

    $ morteLogic.s611_action()
    jump morte_dispose


# s612 # say62890
label morte_s612: # -
    nr '"She„s a tanar“ri… a succubus, chief."'

    jump grace_s213  # EXTERN


# s613 # say63454
label morte_s613: # -
    nr '"I can„t stand anywhere. It“s this, uh, legs thing, you know."~ [MRT482]'

    jump annah_s1  # EXTERN


# s614 # say63455
label morte_s614: # -
    nr '"I thought you were good looking, but I was mistaken."~ [MRT483]'

    jump annah_s3  # EXTERN


# s615 # say63456
label morte_s615: # -
    nr '"I stopped breathing the first time I saw you, fiendling."~ [MRT524]'

    $ morteLogic.s615_action()
    jump morte_dispose


# s616 # say63457
label morte_s616: # -
    nr '"I have a NAME, you know."~ [MRT526]'

    jump annah_s6  # EXTERN


# s617 # say63458
label morte_s617: # -
    nr '"Interesting you should bring that up… cause just the other day, I was asking them how much they„d pay for you."~ [MRT531]'

    jump annah_s8  # EXTERN


# s618 # say63459
label morte_s618: # -
    nr '"You know, you„d be a lot more charming if you didn“t open your mouth."~ [MRT530]'

    jump annah_s10  # EXTERN


# s619 # say63460
label morte_s619: # -
    nr '"Oh, but you already have my heart, fiendling."~ [MRT532]'

    jump annah_s12  # EXTERN


# s620 # say63462
label morte_s620: # -
    nr '"I can think of worse ways to go."~ [MRT525]'

    $ morteLogic.s620_action()
    jump morte_dispose


# s621 # say63463
label morte_s621: # -
    nr '"You know, *you„re* part fiend."~ [MRT533A]'

    jump annah_s15  # EXTERN


# s622 # say63464
label morte_s622: # -
    nr '"She looks good from where I„m floating."~ [MRT533B]'

    $ morteLogic.s622_action()
    jump morte_dispose


# s623 # say63666
label morte_s623: # -
    nr '"I noticed. Why don„t you go share your insight with the chief, huh?"~ [MRT563]'

    $ morteLogic.s623_action()
    jump morte_dispose


# s624 # say63667
label morte_s624: # -
    nr '"Flatulence, you stupid polygon."~ [MRT468A]'

    jump nordom_s2  # EXTERN


# s625 # say63668
label morte_s625: # -
    nr '"Then why don„t you try and be a little more “efficient,„ you rattling polygon."~ [MRT469A]'

    $ morteLogic.s625_action()
    jump morte_dispose


# s626 # say63669
label morte_s626: # -
    nr '"Now wait, I-I-I-never said that!"~ [MRT470B]'

    jump annah_s315  # EXTERN


# s627 # say63670
label morte_s627: # -
    nr '"Is Annah still wearing clothes?"~ [MRT565A]'

    jump nordom_s6  # EXTERN


# s628 # say63671
label morte_s628: # -
    nr '"Then the answer is yes."~ [MRT565B]'

    $ morteLogic.s628_action()
    jump morte_dispose


# s629 # say63672
label morte_s629: # -
    nr '"I„m gonna give you nineteen if you don“t shut your trap."~ [MRT564]'

    $ morteLogic.s629_action()
    jump morte_dispose


# s630 # say63673
label morte_s630: # -
    nr '"If free will means obeying my orders without question, then yes."~ [MRT569A]'

    jump nordom_s9  # EXTERN


# s631 # say63674
label morte_s631: # -
    nr '"Welcome to the planes, kid."~ [MRT569B]'

    $ morteLogic.s631_action()
    jump morte_dispose


# s632 # say63675
label morte_s632: # -
    nr '"Is Fall-from-Grace naked?"~ [MRT568A]'

    jump nordom_s11  # EXTERN


# s633 # say63676
label morte_s633: # -
    nr '"Then the answer to your question is yes."~ [MRT568B]'

    $ morteLogic.s633_action()
    jump morte_dispose


# s634 # say63677
label morte_s634: # -
    nr '"Annah, Fall-from-Grace and yours truly bathing in a Cimmerian mud flat."~ [MRT571A]'

    jump nordom_s13  # EXTERN


# s635 # say63678
label morte_s635: # -
    nr '"Hey. Some people read the dictionary, others write it."~ [MRT572B]'

    $ morteLogic.s635_action()
    jump morte_dispose


# s636 # say63679
label morte_s636: # -
    nr '"Annah, a bottle of Furyondian fire amber, and a suite in the Festhall."~ [MRT573]'

    jump nordom_s15  # EXTERN


# s637 # say63680
label morte_s637: # -
    nr '"Oh, shut *up.*"~ [MRT471D]'

    jump nordom_s17  # EXTERN


# s638 # say63681
label morte_s638: # -
    nr '"Oh, go bother someone else, you idiot counting box."~ [MRT576A]'

    jump nordom_s19  # EXTERN


# s639 # say63682
label morte_s639: # -
    nr '"I don„t know, all right? It“s just… it„s… you know… it“s gone."~ [MRT576B]'

    jump nordom_s20  # EXTERN


# s640 # say63683
label morte_s640: # -
    nr '"I„ll show you if you don“t shut your trap."~ [MRT576C]'

    $ morteLogic.s640_action()
    jump morte_dispose


# s641 # say63684
label morte_s641: # -
    nr '"Go kiss a bear trap."~ [MRT575A]'

    jump grace_s373  # EXTERN


# s642 # say63685
label morte_s642: # -
    nr '"Trust me. Annah could use a kiss."~ [MRT575B]'

    $ morteLogic.s642_action()
    jump morte_dispose


# s643 # say63686
label morte_s643: # -
    nr '::Whistles Innocently::~ [MRT472A]'

    $ morteLogic.s643_action()
    jump morte_dispose


# s644 # say63688
label morte_s644: # -
    nr '"No one! No one told him that!"~ [MRT473D]'

    $ morteLogic.s644_action()
    jump morte_dispose


# s645 # say63689
label morte_s645: # -
    nr '"It„s purely voluntary on their part, you idiot. Uh… not that I would know."~ [MRT577]'

    $ morteLogic.s645_action()
    jump morte_dispose


# s646 # say63858
label morte_s646: # -
    nr '"Trust me, you„ve never met him."~ [MRT475AA]'

    jump vhailor_s1  # EXTERN


# s647 # say64990
label morte_s647: # -
    nr '"Hold up, chief… look at this." Peering down, you notice a number of dirty footprints that lead into the archway… and do not turn around. "There must be a portal through here or something."'

    menu:
        '"A portal? How do we open it?"':
            # a1240 # r64991
            jump morte_s648

        '"Maybe so. Let„s go."':
            # a1241 # r64993
            jump morte_dispose


# s648 # say64992
label morte_s648: # from 647.0
    nr '"Haven„t the slightest, chief. It“s got to be a common key, though - look at all the traffic that„s gone through! Maybe one of the low-lives around here will know…"'

    menu:
        '"I„ll ask around, then. Let“s go."':
            # a1242 # r64994
            jump morte_dispose


# s649 # say65552
label morte_s649: # from 329.0 729.0
    nr '"Aw, *c„mon,* chief. Don“t tell me you forgot again."'

    menu:
        '"I just need to refresh my memory."':
            # a1243 # r65553
            jump morte_s650

        '"No, I think I want to hear *all* of it this time - go ahead, refresh my memory."' if morteLogic.r65554_condition():
            # a1244 # r65554
            jump morte_s650

        '"Never mind, then. I had some other questions…"':
            # a1245 # r65555
            jump morte_s329

        '"Forget it, then. Let„s go."':
            # a1246 # r65556
            jump morte_dispose


# s650 # say65557
label morte_s650: # from 649.0 649.1
    nr '"Bet I„m going to be hearing THAT a lot." Morte clears his throat. "Let“s see…"  „I know you feel like you“ve been drinking a few kegs of Styx wash, but you need to CENTER yourself. Among your possessions is a JOURNAL that„ll shed some light on the dark of the matter. PHAROD can fill you in on the rest of the chant, if he“s not in the dead-book already.„'

    menu:
        '"Pharod… hmmm. Keep going."' if morteLogic.r65558_condition():
            # a1247 # r65558
            jump morte_s651

        '"Keep going."' if morteLogic.r65559_condition():
            # a1248 # r65559
            jump morte_s651

        '"Never mind. I had some other questions…"':
            # a1249 # r65560
            jump morte_s329

        '"Forget it. I„ve heard enough. Let“s go."':
            # a1250 # r65561
            jump morte_dispose


# s651 # say65562
label morte_s651: # from 650.0 650.1
    nr '"I will, I will, hold on." Morte pauses for a moment. "All right, here„s the last bit…"  “Don„t lose the journal or we“ll be up the Styx again. And whatever you do, DO NOT tell anyone WHO you are or WHAT happens to you, or they„ll put you on a quick pilgrimage to the crematorium. Do what I tell you: READ the journal, then FIND Pharod.“'

    if morteLogic.s651_condition():
        jump morte_s653
    menu:
        '"Go on. What does it say after that?"' if morteLogic.r65566_condition():
            # a1251 # r65566
            jump morte_s652

        '"And there wasn„t a journal with me when I woke up?"' if morteLogic.r65565_condition():
            # a1252 # r65565
            jump morte_s682

        '"All right, then. I had some other questions…"':
            # a1253 # r65567
            jump morte_s329

        '"Forget it. I„ve heard enough. Let“s go."':
            # a1254 # r65568
            jump morte_dispose


# s652 # say65563
label morte_s652: # from 651.1
    nr '"What are you talking about, chief? There isn„t any more."'

    menu:
        '"What about, „Don“t trust the skull„?"' if morteLogic.r65569_condition():
            # a1255 # r65569
            $ morteLogic.j65573_s652_r65569_action()
            $ morteLogic.r65569_action()
            jump morte_s654

        '"What about, „Don“t trust the skull„?"' if morteLogic.r65570_condition():
            # a1256 # r65570
            jump morte_s654

        '"Never mind, then. I had some other questions…"':
            # a1257 # r65571
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1258 # r65572
            jump morte_dispose


# s653 # say65564
label morte_s653: # from 651.0
    nr '"And of course, that little bit at the end about not trusting skulls."'

    menu:
        '"What do you think that part means? Do you think it refers to *you?*"':
            # a1259 # r65574
            jump morte_s655

        '"Never mind, then. I had some other questions…"':
            # a1260 # r65575
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1261 # r65576
            jump morte_dispose


# s654 # say65577
label morte_s654: # from 329.4 652.0 652.1 729.4
    nr '"Oh… *that* bit at the end? Well, I figured it was wash, so I didn„t read that line out loud."'

    menu:
        '"Oh, really? And what do you think it means? Do you think it refers to *you?*"':
            # a1262 # r65578
            jump morte_s655

        '"Never mind, then. I had some other questions…"':
            # a1263 # r65579
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1264 # r65580
            jump morte_dispose


# s655 # say65581
label morte_s655: # from 653.0 654.0
    nr '"I doubt it. I mean, you can trust *me,* right, chief?"'

    menu:
        '"Are you *lying* to me, Morte?"':
            # a1265 # r65582
            jump morte_s656

        '"Never mind, then. I had some other questions…"':
            # a1266 # r65583
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1267 # r65584
            jump morte_dispose


# s656 # say65585
label morte_s656: # from 655.0
    nr '"No! C„mon, what“s your problem, chief? I haven„t steered you wrong yet."'

    menu:
        '"*Yet.* I don„t like the fact you didn“t read me that line, and I„d like to know what *else* you“ve neglected to mention since we„ve been traveling together."':
            # a1268 # r65587
            jump morte_s657

        '"Never mind, then. I had some other questions…"':
            # a1269 # r65586
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1270 # r65588
            jump morte_dispose


# s657 # say65589
label morte_s657: # from 656.0
    nr '"Nothing! I„ve told you everything… well, ALMOST everything, but nothing, you know, *dangerous.*"'

    menu:
        '"If there„s ANYTHING else, I suggest you tell me now."':
            # a1271 # r65590
            jump morte_s658

        '"Never mind, then. I had some other questions…"':
            # a1272 # r65591
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1273 # r65592
            jump morte_dispose


# s658 # say65593
label morte_s658: # from 657.0
    nr '"Chief, seriously, there„s nothing else. I wouldn“t hold out on you."'

    menu:
        '"All right, then, Morte. I had some other questions…"':
            # a1274 # r65594
            jump morte_s329

        '"I hope not. Let„s go."':
            # a1275 # r65595
            jump morte_dispose


# s659 # say65596
label morte_s659: # from 329.1 729.1
    nr '"Sigil„s a ring-shaped city that“s squatting on top of an infinitely tall spire in what some claim to be in the center of the planes… of course, *how* it could be at the top of an infinitely tall spire, and how the city could even *be* at the center of the planes raises some questions."'

    menu:
        '"Anything else?"':
            # a1276 # r65597
            jump morte_s660

        '"Never mind. I had some other questions…"':
            # a1277 # r65598
            jump morte_s329

        '"That„s all I wanted to know. Let“s go."':
            # a1278 # r65599
            jump morte_dispose


# s660 # say65600
label morte_s660: # from 659.0
    nr '"Sigil„s called the “City of Doors,„ mostly because there“s a LOT of invisible doors that lead in and out of it - just about any arch, door frame, barrel hoop, book shelf, or open window might be a portal under the right conditions. It all depends on if you have the key to open it."'

    menu:
        '"Keys?"':
            # a1279 # r65601
            jump morte_s661

        '"Never mind. I had some other questions…"':
            # a1280 # r65602
            jump morte_s329

        '"That„s all I wanted to know. Let“s go."':
            # a1281 # r65603
            jump morte_dispose


# s661 # say65604
label morte_s661: # from 660.0
    nr '"See, I guess the best way to explain it is - most portals are „sleeping,“ right? You could walk through them, by them, on top of them, and nothing would happen. Now, every portal has something that „wakes it up.“ That could be a tune you hum to yourself, a loaf of week-old Bytopian bread, remembering what your first kiss was like, and then - BAM - the portal gets its juices flowing, and you can jump through it, to whatever„s on the other side."'

    menu:
        '"Like where?"':
            # a1282 # r65605
            jump morte_s662

        '"Never mind. I had some other questions…"':
            # a1283 # r65606
            jump morte_s329

        '"That„s all I wanted to know. Let“s go."':
            # a1284 # r65607
            jump morte_dispose


# s662 # say65608
label morte_s662: # from 661.0
    nr '"Anywhere, chief. Literally. Any place you can think of, there„s a portal there. That“s why Sigil„s so popular across the planes."'

    menu:
        '"I see. I had some other questions…"':
            # a1285 # r65609
            jump morte_s329

        '"That„s all I wanted to know. Let“s go."':
            # a1286 # r65610
            jump morte_dispose


# s663 # say65611
label morte_s663: # from 329.2 729.2
    nr '"Hey! Chattering„s my best trait." He rattles his teeth for a moment, then “grins.„ "Eh? Eh?"'

    menu:
        '"Oh, *that„s* good to hear."':
            # a1287 # r65612
            jump morte_s664

        '"Yeah, I know about the Litany of Curses, Morte - I„m more curious about what you got while you were at Lothar“s."' if morteLogic.r65613_condition():
            # a1288 # r65613
            jump morte_s667

        '"I had some other questions…"':
            # a1289 # r65614
            jump morte_s329

        '"Never mind. Let„s go."':
            # a1290 # r65615
            jump morte_dispose


# s664 # say65616
label morte_s664: # from 663.0
    nr '"No, but seriously, chief - I got a knack for chattering in just the right way. I can really bend an ear, if you know what I„m saying. I got insults, backtalk - stuff that“ll curl someone„s ears into their skull, y“know?"'

    menu:
        '"Uh… how„s *that* useful?"':
            # a1291 # r65617
            jump morte_s665

        '"I had some other questions…"':
            # a1292 # r65618
            jump morte_s329

        '"Never mind. Let„s go."':
            # a1293 # r65619
            jump morte_dispose


# s665 # say65620
label morte_s665: # from 664.0
    nr '"It„s one of my many talents… I call it my “Litany of Curses.„ You see, sometimes I can really bend someone“s ear with *just* the right comment. Of course, then I usually have to do a lot of running afterwards… but you get the idea."'

    menu:
        '"How does it work?"':
            # a1294 # r65621
            $ morteLogic.j65625_s665_r65621_action()
            $ morteLogic.r65621_action()
            jump morte_s666

        '"Anything else?"' if morteLogic.r65622_condition():
            # a1295 # r65622
            jump morte_s667

        '"I had some other questions…"':
            # a1296 # r65623
            jump morte_s329

        '"Hmmm. That might prove useful. Let„s go."':
            # a1297 # r65624
            jump morte_dispose


# s666 # say65626
label morte_s666: # from 329.3 665.0 729.3
    nr '"Well, I can spit insults at someone until they get mad enough to chase me around."  ^NNOTE: Morte has an ability called „Litany of Curses.“ It is a non-magical taunt; if the target fails to resist it, they suffer a penalty to their Armor Class, attacks, and will do nothing but try to engage Morte in melee combat. Note that the more insults Morte hears, the better his Litany of Curses becomes. The Litany of Curses is VERY effective against mages.^-'

    menu:
        '"Can you do anything else?"' if morteLogic.r65627_condition():
            # a1298 # r65627
            jump morte_s667

        '"I had some other questions…"':
            # a1299 # r65628
            jump morte_s329

        '"Hmmm. That might prove useful. Let„s go."':
            # a1300 # r65629
            jump morte_dispose


# s667 # say65630
label morte_s667: # from 663.1 665.1 666.0
    nr '"Well, I made some friends when I was sitting on the shelf in Lothar„s waiting for you to bail me out - thanks for taking your sweet time about it, by the way - they said if I needed any help, I could just call on them."'

    menu:
        '"Friends? What do you mean?"':
            # a1301 # r65631
            $ morteLogic.j65637_s667_r65631_action()
            jump morte_s668

        '"I had some other questions…"':
            # a1302 # r65632
            jump morte_s329

        '"Good to hear it, then. Let„s go."':
            # a1303 # r65633
            jump morte_dispose


# s668 # say65634
label morte_s668: # from 667.0
    nr '"Well, I just whistle, and they kind of show up. They„re a good bunch of bashers - bite like *snakes,* too."  ^NNOTE: Morte (now) has a special ability called "Skull Mob." When invoked, he can summon a horde of skulls from off-screen to come and bite an opponent multiple times. The strength and damage of the skulls varies according to Morte“s level, and the power can only be used a limited number of times per day.^-'

    menu:
        '"I see. I had some other questions…"':
            # a1304 # r65635
            jump morte_s329

        '"Good to hear it, then. Let„s go."':
            # a1305 # r65636
            jump morte_dispose


# s669 # say65638
label morte_s669: # from 329.5 729.5
    nr '"Well, here„s how *I* see things…"'

    menu:
        '"Go on…"' if morteLogic.r65639_condition():
            # a1306 # r65639
            jump morte_s671

        '"Go on…"' if morteLogic.r65640_condition():
            # a1307 # r65640
            jump morte_s672

        '"Go on…"' if morteLogic.r65641_condition():
            # a1308 # r65641
            jump morte_s673

        '"Go on…"' if morteLogic.r65642_condition():
            # a1309 # r65642
            jump morte_s670

        '"Go on…"' if morteLogic.r65643_condition():
            # a1310 # r65643
            jump morte_s674

        '"Go on…"' if morteLogic.r65644_condition():
            # a1311 # r65644
            jump morte_s675

        '"Go on…"' if morteLogic.r65645_condition():
            # a1312 # r65645
            jump morte_s677

        '"Go on…"' if morteLogic.r65646_condition():
            # a1313 # r65646
            jump morte_s680

        '"Go on…"' if morteLogic.r65647_condition():
            # a1314 # r65647
            jump morte_s681

        '"Never mind. I had some other questions…"':
            # a1315 # r65648
            jump morte_s329

        '"On second thought, forget it. Let„s go."':
            # a1316 # r65649
            jump morte_dispose


# s670 # say65650
label morte_s670: # from 669.3
    nr '"The way I see it, it„s your show here, chief. There“s not much I can say now that could help."'

    menu:
        '"*That„s* a big change. I had some other questions…"':
            # a1317 # r65651
            jump morte_s329

        '"All right. Let„s move on, then."':
            # a1318 # r65652
            jump morte_dispose


# s671 # say65653
label morte_s671: # from 669.0
    nr '"I think you should try and root out this „Pharod“ wherever he„s set up kip. You wouldn“t have had those directions tattooed on your back if he didn„t have some inkling of what was up with you. One of the locals around here HAS to know where he is."'

    menu:
        '"Good point. I had some other questions…"':
            # a1319 # r65654
            jump morte_s329

        '"All right. Let„s keep looking for him, then."':
            # a1320 # r65655
            jump morte_dispose


# s672 # say65656
label morte_s672: # from 669.1
    nr '"I say we try and nick this „bronze sphere“ as soon as possible and get it back to ol„ stutter-crutch."'

    menu:
        '"Good point. I had some other questions…"':
            # a1321 # r65657
            jump morte_s329

        '"All right. Let„s move on, then."':
            # a1322 # r65658
            jump morte_dispose


# s673 # say65659
label morte_s673: # from 669.2
    nr '"I say we go find out where your corpse ended up. Maybe we can find out how you got penned in the dead-book."'

    menu:
        '"Good point. I had some other questions…"':
            # a1323 # r65660
            jump morte_s329

        '"All right. Let„s move on, then."':
            # a1324 # r65661
            jump morte_dispose


# s674 # say65662
label morte_s674: # from 669.4
    nr '"I say we go find someone who knows some more about you - and how you got this way. There has to be some canny bashers in one of the Wards who knows something more about you."'

    menu:
        '"Good point. I had some other questions…"':
            # a1325 # r65663
            jump morte_s329

        '"All right. Let„s move on, then."':
            # a1326 # r65664
            jump morte_dispose


# s675 # say65665
label morte_s675: # from 669.5
    nr '"Looks like we need to find out more about that night hag, Ravel - and I have to tell you, chief, I„m *not* looking forward to that. The Festhall sages and some of the sensory stones might be able to tell us something, though."'

    menu:
        '"Festhall? Sensory stones?"' if morteLogic.r65666_condition():
            # a1327 # r65666
            $ morteLogic.j65669_s675_r65666_action()
            jump morte_s676

        '"Good point. I had some other questions…"':
            # a1328 # r65667
            jump morte_s329

        '"All right. Let„s move on, then."':
            # a1329 # r65668
            jump morte_dispose


# s676 # say65670
label morte_s676: # from 675.0
    nr '"Sorry, chief - I keep forgetting you have all the knowing of a green prime. Look, the Festhall is the main kip of the Sensate faction in the Clerk„s Ward. They have libraries of sensory stones that store experiences, and they have plenty of sages, lecturers, and trainers that might be able to tumble us onto the dark of what“s up with Ravel."'

    menu:
        '"Good point. I had some other questions…"':
            # a1330 # r65671
            jump morte_s329

        '"All right. Let„s move on, then."':
            # a1331 # r65672
            jump morte_dispose


# s677 # say65673
label morte_s677: # from 669.6
    nr '"Well, Ravel got mazed. Still, there„s probably SOME key and SOME portal that could take us there, if you still want to go."'

    menu:
        '"Do you know what the key to her maze could be?"' if morteLogic.r65674_condition():
            # a1332 # r65674
            $ morteLogic.j65678_s677_r65674_action()
            jump morte_s678

        '"Do you know where I can find a portal to her maze?"':
            # a1333 # r65675
            jump morte_s679

        '"I had some other questions…"':
            # a1334 # r65676
            jump morte_s329

        '"All right. Let„s move on, then."':
            # a1335 # r65677
            jump morte_dispose


# s678 # say65679
label morte_s678: # from 677.0
    nr '"No idea - I mean, a „piece of Ravel“? That could be anything from one of her dried out warts, to a work of art she did, or some dribblings from her lip. It„s too vague. Still, I“m betting SOMEONE in the Clerk„s Ward has to know something about how to snag a piece of that barmy witch. Failing that, we could check the sensory stones in the Festhall - maybe one of those stones could tell us something of use."'

    menu:
        '"Do you know where I can find a portal to her maze?"':
            # a1336 # r65680
            jump morte_s679

        '"Good point. I had some other questions…"':
            # a1337 # r65681
            jump morte_s329

        '"All right. Let„s keep looking, then."':
            # a1338 # r65682
            jump morte_dispose


# s679 # say65683
label morte_s679: # from 677.1 678.0
    nr '"Beats me, chief. There„s tons of portals in Sigil. I say try the Festhall - I doubt it“s there, but one of the sensory stones might be able to tell us something. Failing that, I say we forget all this running around and get someone to MAKE us a portal."'

    menu:
        '"Very well. I had some other questions…"':
            # a1339 # r65684
            jump morte_s329

        '"All right. Let„s move on, then."':
            # a1340 # r65685
            jump morte_dispose


# s680 # say65686
label morte_s680: # from 669.7
    nr '"I say we find what we need, and get the hells outta here, chief. This place is giving me the shivers, and I don„t even have skin. All right?"'

    menu:
        '"True enough. I had some other questions…"':
            # a1341 # r65687
            jump morte_s329

        '"All right, then. Let„s move on."':
            # a1342 # r65688
            jump morte_dispose


# s681 # say65689
label morte_s681: # from 669.8
    nr '"You got me, chief. This is all your show - I„m just following you around."'

    menu:
        '"True enough. I had some other questions…"':
            # a1343 # r65690
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1344 # r65691
            jump morte_dispose


# s682 # say65692
label morte_s682: # from 651.2
    nr '"No… you were stripped to the skins. Like I said before, looks like you got enough of a journal penned on your body."'

    menu:
        '"And you„re sure you don“t know anyone named Pharod?"' if morteLogic.r65693_condition():
            # a1345 # r65693
            jump morte_s683

        '"True enough. I had some other questions…"':
            # a1346 # r65694
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1347 # r65695
            jump morte_dispose


# s683 # say65696
label morte_s683: # from 682.0
    nr '"Nope. Still, some berk„s got to know where to find him. Let“s ask some of the locals."'

    menu:
        '"Before we go, I had some other questions…"':
            # a1348 # r65697
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1349 # r65698
            jump morte_dispose


# s684 # say65699
label morte_s684: # from 329.6 729.6
    nr '"Yeah… a mimir„s a floating encyclopedia. You put information in, you get information out."'

    menu:
        '"But aren„t mimirs made of a silvery metal?"' if morteLogic.r65700_condition():
            # a1350 # r65700
            jump morte_s685

        '"I see. I had some other questions…"':
            # a1351 # r65701
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1352 # r65702
            jump morte_dispose


# s685 # say65703
label morte_s685: # from 684.0
    nr '"So? Maybe some are, but *I„m* not. And there“s stranger things on the planes than that, chief."'

    menu:
        '"I don„t think you“re a mimir, Morte. What are you?"':
            # a1353 # r65704
            jump morte_s686

        '"I see. I had some other questions…"':
            # a1354 # r65705
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1355 # r65706
            jump morte_dispose


# s686 # say65707
label morte_s686: # from 685.0
    nr '"What„s with the interrogation? What do *you* know about mimirs, anyway?"'

    menu:
        '"I know enough to think you„re lying to me."' if morteLogic.r65708_condition():
            # a1356 # r65708
            jump morte_s687

        '"I know enough to think you„re lying to me. First, that bit about the missing line from my back saying not to trust you, then this. What am I supposed to think?"' if morteLogic.r65709_condition():
            # a1357 # r65709
            jump morte_s687

        '"Nothing, I suppose. I had some other questions…"':
            # a1358 # r65710
            $ morteLogic.j65712_s686_r65710_action()
            jump morte_s329

        '"Never mind, then. Let„s go."':
            # a1359 # r65711
            $ morteLogic.j65712_s686_r65711_action()
            jump morte_dispose


# s687 # say65713
label morte_s687: # from 686.0 686.1
    nr '"Okay, I„m *not* a mimir, but I know a lot of stuff, so I *might* as well be one."'

    menu:
        '"What *are* you then?"':
            # a1360 # r65714
            jump morte_s688

        '"Never mind. I had some other questions…"':
            # a1361 # r65715
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1362 # r65716
            jump morte_dispose


# s688 # say65717
label morte_s688: # from 687.0
    nr '"I„m a floating skull who knows a lot."'

    menu:
        '"What about that Baatorian smell you have?"' if morteLogic.r65718_condition():
            # a1363 # r65718
            jump morte_s690

        '"What about that Baatorian smell you have?"' if morteLogic.r65719_condition():
            # a1364 # r65719
            jump morte_s689

        '"Never mind. I had some other questions…"':
            # a1365 # r65720
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1366 # r65721
            jump morte_dispose


# s689 # say65722
label morte_s689: # from 688.1
    nr '"What would YOU know about what Baator smells like?!"'

    menu:
        '"Because I„ve *been* there, Morte. I walked on Avernus."':
            # a1367 # r65723
            jump morte_s691

        '"Never mind. I had some other questions…"':
            # a1368 # r65724
            jump morte_s329

        '"Forget it. Let„s go."':
            # a1369 # r65725
            jump morte_dispose


# s690 # say65726
label morte_s690: # from 688.0
    nr '"What would YOU know about what Baator smells like? Unless - hey, you„ve been talking about me with that tanar“ri, haven„t you?! What does she know?!"'

    menu:
        '"Well, she obviously touched on something - that is a Baatorian smell, right?"':
            # a1370 # r65727
            jump morte_s691

        '"Never mind. I had some other questions…"':
            # a1371 # r65728
            jump morte_s329

        '"Forget it. Let„s go."':
            # a1372 # r65729
            jump morte_dispose


# s691 # say65730
label morte_s691: # from 689.0 690.0
    nr '"Well, yeah, but - well, yeah. So I smell a little. *Excuse* me."'

    menu:
        '"*Why* do you smell like Baator?"':
            # a1373 # r65731
            $ morteLogic.r65731_action()
            jump morte_s692


# s692 # say65732
label morte_s692: # from 691.0
    nr '"I was in the hells for a while. Kind of a long while. The stench kind of grows on you."'

    menu:
        '"You were in the hells? What were you DOING there?"':
            # a1374 # r65733
            $ morteLogic.r65733_action()
            jump morte_s693


# s693 # say65734
label morte_s693: # from 329.7 692.0 729.7
    nr '"See, well, there„s this *pillar* on Avernus, the first layer of Baator; it“s called the Pillar of Skulls, but it„s more like the pillar of heads."'

    jump morte_s694


# s694 # say65735
label morte_s694: # from 693.0
    nr '"To hear some bashers tell it, it„s *supposedly* made of the heads of berks, mostly sages and scholars, who used their knowing of this and knowing of that when they were alive to stretch the truth a little… so much they might have hurt, or uh, killed someone by doing it. Well, when I *died,* I ended up there. Funny, huh?"'

    menu:
        '"Not really."':
            # a1375 # r65846
            jump morte_s695


# s695 # say65736
label morte_s695: # from 694.0
    nr '"Eh…" Morte goes silent for a moment. "Yeah, you„re right; it“s not funny at all. You see, I think I knew a lot of things when I was alive. And maybe when I did know something, I didn„t always tell the truth about it. I“m thinking that when I bent the truth once or twice, I may have led to someone getting penned in the dead-book sooner than they should have."'

    menu:
        '"Can you remember who?"':
            # a1376 # r65737
            jump morte_s697

        '"It was me, wasn„t it?"' if morteLogic.r65738_condition():
            # a1377 # r65738
            jump morte_s696

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65739_condition():
            # a1378 # r65739
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65740_condition():
            # a1379 # r65740
            jump morte_dispose


# s696 # say65741
label morte_s696: # from 695.1
    nr 'Morte looks at you for a moment. "Yeah. I can„t say *how* I know it, chief, but I think so. I think you were the one that got me sent there; the last twig in the bundle before the whole load snaps. Thing is, I can“t remember what happened - I don„t even remember being human, or what my life was even like before I woke up on the Pillar."'

    menu:
        '"Why did you forget?"':
            # a1380 # r65742
            jump morte_s698

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65743_condition():
            # a1381 # r65743
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65744_condition():
            # a1382 # r65744
            jump morte_dispose


# s697 # say65745
label morte_s697: # from 695.0
    nr '"I can„t say how I know it, chief, but I think it was *you.* At least once. Thing is, I can“t remember what happened - I don„t even remember being human, or what I was even like before I woke up on the Pillar."'

    menu:
        '"Why did you forget?"':
            # a1383 # r65746
            jump morte_s698

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65747_condition():
            # a1384 # r65747
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65748_condition():
            # a1385 # r65748
            jump morte_dispose


# s698 # say65749
label morte_s698: # from 696.0 697.0
    nr '"That„s pretty much the way of things when you die, as I“m sure you„re no stranger to. You just… forget. I figure I wasn“t a sterling member of the community when I was alive… but hells, who is?" Morte sighs. "It„s just that I can“t help it. Nothing„s worse than being *honest* all the time."'

    menu:
        '"Except being sentenced to the hells. That sounds a lot worse than telling the truth."' if morteLogic.r65750_condition():
            # a1386 # r65750
            $ morteLogic.r65750_action()
            jump morte_s699

        '"Well, that„s true… but you“ve got to choose your lies carefully."' if morteLogic.r65751_condition():
            # a1387 # r65751
            $ morteLogic.r65751_action()
            jump morte_s699


# s699 # say65752
label morte_s699: # from 698.0 698.1
    nr '"Yeah… you„re right. *Again.*" Morte clicks his teeth; the way he does it reminds you of someone drumming their fingers. "I guess just all that good and evil and lying and cheating catches up with you - and when I got penned in the dead-book, it was my turn to pay the ferryman."'

    menu:
        '"So how did you escape the Pillar?"':
            # a1388 # r65753
            $ morteLogic.j53633_s699_r65753_action()
            jump morte_s700

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65754_condition():
            # a1389 # r65754
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65755_condition():
            # a1390 # r65755
            jump morte_dispose


# s700 # say65757
label morte_s700: # from 699.0
    nr '"Well… you helped me, chief. When you showed up at the Pillar of Skulls, I pushed my way to the front. My obvious know-how and charm attracted your attention - you knew that *I* was the head that knew the most. So I cut a deal with you."'

    menu:
        '"Deal…?"':
            # a1391 # r65758
            $ morteLogic.r65758_action()
            jump morte_s701

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65759_condition():
            # a1392 # r65759
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65760_condition():
            # a1393 # r65760
            jump morte_dispose


# s701 # say65761
label morte_s701: # from 700.0
    nr 'As Morte speaks, your vision seems to bleed into a fiery red, and you hear a howling, a horrible *screaming* tower of voices, chittering, screeching, hammering, ALL of them begging, screaming to be freed, and Morte„s voice… faint, almost lost in the horde. He sounds desperate, frightened, and… pathetically, tragically *lost.*'

    menu:
        'Echo: "You. Skull. Speak."':
            # a1394 # r65762
            jump morte_s702

        'Shake off the memory.':
            # a1395 # r65763
            $ morteLogic.r65763_action()
            jump morte_s706


# s702 # say65764
label morte_s702: # from 701.0
    nr 'The howling voices fall silent, and you watch the tiny, red-lined skull, its cracked features cast in a hellish light, turn its eyes up at you. Blood and ichor has streamed across its features, and its teeth chatter, as if cold. "I… I c-c-can help you. I know w-w-what you seek… all these heads… all their knowing… just please, I *beg* you, free me. Let me *help* you. I„ll tell you anything, *everything.*"'

    menu:
        'Echo: "*Will* you? SWEAR it, skull. SWEAR you will serve me until my End Days, or here you will remain."':
            # a1396 # r65765
            jump morte_s703

        'Shake off the memory.':
            # a1397 # r65766
            $ morteLogic.r65766_action()
            jump morte_s706


# s703 # say65767
label morte_s703: # from 702.0
    nr '"I swear. I swear… just please, *please* free me… I…" You watch as Morte sickeningly swallows, his pride almost a tangible thing. "I… *beg* you. Let me *help* you. Please."'

    menu:
        'Echo: "Very well. I shall free you."':
            # a1398 # r65768
            jump morte_s704

        'Shake off the memory.':
            # a1399 # r65769
            $ morteLogic.r65769_action()
            jump morte_s706


# s704 # say65770
label morte_s704: # from 703.0
    nr 'Your vision slides, as if you are moving, and the howling, screaming cacophony begins again, a nightmarish horde of howls and cat-calls and taunts and insults… the feel of your hands sliding into the filthy quagmire of the pillar, the biting of fangs, mandibles, and your hands locking around the tiny skull and ripping, tearing it from the pillar like an old scab…'

    menu:
        'Echo: "It is DONE."':
            # a1400 # r65771
            jump morte_s705

        'Shake off the memory.':
            # a1401 # r65772
            $ morteLogic.r65772_action()
            jump morte_s706


# s705 # say65773
label morte_s705: # from 704.0
    nr 'You look down at the bloody skull in your scarred hands, its eyes covered in ichor from the pillar, and its teeth chatter, once, twice. It reminds you of a wailing newborn, helpless - and in the eyes of the man you once were - pathetic.'

    menu:
        'Echo: "I have freed you. Now your life… and your death is mine… Morte."' if morteLogic.r65774_condition():
            # a1402 # r65774
            $ morteLogic.r65774_action()
            jump morte_s706

        'Echo: "I have freed you. Now your life… and your death is mine… Morte."' if morteLogic.r65775_condition():
            # a1403 # r65775
            $ morteLogic.r65775_action()
            jump morte_s706


# s706 # say65776
label morte_s706: # from 701.1 702.1 703.1 704.1 705.0 705.1
    nr 'Your vision swirls, the mists of the past drifting away, and Morte is still chattering on. "We talked for a while, chief, you and me, seeing whether the arrangement would work, and I think we both were really impressed with each other, so you invited me off the Pillar, and I„ve kind of been with you ever since."'

    menu:
        '"Uh… what happened then?"':
            # a1404 # r65777
            jump morte_s707

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65778_condition():
            # a1405 # r65778
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65779_condition():
            # a1406 # r65779
            jump morte_dispose


# s707 # say65780
label morte_s707: # from 706.0
    nr '"Well, I didn„t know I“d lose most of the Pillar„s knowledge once I was out of it… I mean, how was I to know, I“d never been off the damn thing… but you were pretty understanding about it…"'

    menu:
        '"You lost all the knowledge you said you had…?"':
            # a1407 # r65781
            $ morteLogic.r65781_action()
            jump morte_s708

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65782_condition():
            # a1408 # r65782
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65783_condition():
            # a1409 # r65783
            jump morte_dispose


# s708 # say65784
label morte_s708: # from 707.0
    nr 'Your vision swirls again, making you dizzy, and you feel your gut churn - you hear the cracking, snapping of bone, and Morte„s howls - howling in pain, screaming for someone to stop, to stop *killing* him… and your hand, lashing out, again and again and…'

    menu:
        'Echo: "DAMN you, skull, you LIED to me. I„ll THRUST YOU BACK IN THAT DAMNABLE PILLAR AND LEAVE YOU TO *DIE* THERE."':
            # a1410 # r65785
            jump morte_s709

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65786_condition():
            # a1411 # r65786
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65787_condition():
            # a1412 # r65787
            jump morte_dispose


# s709 # say65788
label morte_s709: # from 708.0
    nr 'There is the clatter of bone against what sounds like metal - a floor or a wall, and the skittering of teeth knocked free. You can hear Morte, mewling like a beaten dog for you to st-'

    menu:
        'Echo: "KNOW THAT YOUR SUFFERING ON THE PILLAR WILL BE *NOTHING* TO THE TORMENT I WILL MAKE YOU *SUFFER.*"':
            # a1413 # r65789
            $ morteLogic.r65789_action()
            jump morte_s710

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65790_condition():
            # a1414 # r65790
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65791_condition():
            # a1415 # r65791
            jump morte_dispose


# s710 # say65792
label morte_s710: # from 709.0
    nr 'Your vision swirls, and Morte„s cries ebb, fading into his chattering rhythm. "So, you realized I still had my uses, so I took up with you and I“ve been with you ever since."'

    menu:
        '"Morte, what did I want from the Pillar? And how long ago was it that I freed you?"':
            # a1416 # r65793
            jump morte_s711

        '"Uh… forget it, Morte. I had some other questions…"' if morteLogic.r65794_condition():
            # a1417 # r65794
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65795_condition():
            # a1418 # r65795
            jump morte_dispose


# s711 # say65796
label morte_s711: # from 710.0
    nr 'Morte thinks for a moment. "Well, as for how long, I don„t know the exact count, chief - ages, I suppose. I“ve done all I could to help you each time, but…" Morte sighs. "It„s not easy. And as for what you wanted at the Pillar, I don“t know - once you pried me off, I couldn„t remember."'

    menu:
        '"Morte, why didn„t you SAY something when we were at the Mortuary?"':
            # a1419 # r65797
            jump morte_s712

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65798_condition():
            # a1420 # r65798
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65799_condition():
            # a1421 # r65799
            jump morte_dispose


# s712 # say65800
label morte_s712: # from 711.0
    nr 'Morte suddenly becomes defensive. "Because I never *know* who you„re going to be! Some of your incarnations have been stark, raving mad! One time you awoke obsessed with the idea that *I* was your skull, and chased me around the Spire trying to shatter and devour me… luckily, you were crushed by a passing cart in the street. Another, “good and lawful,„ you tried to thrust me back into the Pillar, because “it„s where I belonged.“" Morte smirks. "*That„s* why. Besides, no harm“s ever come of you not knowing…"'

    menu:
        '"So you„ve stayed with me all this time?"' if morteLogic.r65801_condition():
            # a1422 # r65801
            jump morte_s713

        '"Forget it, Morte. I had some other questions…"' if morteLogic.r65802_condition():
            # a1423 # r65802
            jump morte_s329

        '"Never mind, Morte. Let„s move on."' if morteLogic.r65803_condition():
            # a1424 # r65803
            jump morte_dispose


# s713 # say65804
label morte_s713: # from 712.0
    nr '"Well, yeah, chief. I said I would. Morte always keeps his promises." He pauses. "Well, most of them. Heh-heh. There was this one chit on Arborea who-"'

    $ morteLogic.s713_action()
    jump morte_s714


# s714 # say65805
label morte_s714: # from 713.0
    nr 'You suddenly realize that Morte„s tone has changed - past the joke, you realize he“s trying to hide something. Something about why he„s with you.'

    menu:
        '"Morte, seriously, why are you still traveling with me?"':
            # a1425 # r65806
            jump morte_s715

        '"All right, then. I had some other questions…"':
            # a1426 # r65807
            jump morte_s329

        '"Never mind, Morte. Let„s move on."':
            # a1427 # r65808
            jump morte_dispose


# s715 # say65809
label morte_s715: # from 329.8 714.0 729.8
    nr '"Chief, I said it„s because I promised, all right?" He looks irritated. "What else could it be?"'

    menu:
        '"I don„t know. You didn“t need to stick around after I freed you."':
            # a1428 # r65810
            jump morte_s716

        '"Never mind. I had some other questions…"':
            # a1429 # r65811
            jump morte_s329

        '"Forget it, Morte. Let„s move on."':
            # a1430 # r65812
            jump morte_dispose


# s716 # say65813
label morte_s716: # from 715.0
    nr '"Well, of course not, chief, but I-" And suddenly, his tone of voice strikes a chord in you, and you know *why* he„s remained with you, all this time.'

    menu:
        '"You feel *guilty.* Because you led me to my death so long ago, isn„t it? And you“ve been suffering ever since."':
            # a1431 # r65814
            jump morte_s717


# s717 # say65815
label morte_s717: # from 716.0
    nr '"Aw, c„mon, chief. Me, feel *guilty?* I“m Morte."'

    menu:
        '"No, I think that„s it. When I came to free you from the fate you deserved, you couldn“t *help* but try and help me. And when you could have left after I freed you, you remained. Because you felt indebted."':
            # a1432 # r65816
            jump morte_s718


# s718 # say65817
label morte_s718: # from 717.0
    nr 'Morte is silent for a moment, looking at you. "Maybe. You know what„s funny? At first, I don“t know what the feeling was - it kind of slowly eats at you, y„know?"'

    jump morte_s719


# s719 # say65818
label morte_s719: # from 718.0
    nr '"I mean, at first I thought it was a side effect of some enchantment that „bound“ me to you… but after a couple hundred years, I realized it was *more* than that… something deeper. I just felt drawn, *connected* to you, somehow. Maybe it„s all your suffering, chief… your torment. I don“t know. Maybe I felt… I don„t know, *responsible* for whatever it is I did. What if something I did brought you to this state?"'

    $ morteLogic.s719_action()
    jump morte_s720


# s720 # say65820
label morte_s720: # from 719.0
    nr '"Thing is, I don„t think me - or whoever I was - really ever had to *see* the consequences of all the lying and cheating I“d done, and when I saw you for the first time when I was trapped on the Pillar, somehow, I *knew* that you were the one I„d betrayed. Once… long ago." Morte sighs. "And that“s all I know."'

    menu:
        '"I see. Thanks for coming clean, Morte."':
            # a1433 # r65821
            $ morteLogic.r65821_action()
            jump morte_s721


# s721 # say65822
label morte_s721: # from 720.0
    nr '"Nah, don„t thank me…" Morte sighs; and to your surprise, his voice seems stronger somehow, more confident. Some of the cracks and fractures in his skull have vanished, as if healed. "Nah, the thanks is all to you - I feel like I just had a Plane moved off my shoulders… so to speak."'

    menu:
        '"I had some other questions…"':
            # a1434 # r65823
            jump morte_s329

        '"All right, Morte. Let„s move on."':
            # a1435 # r65824
            jump morte_dispose


# s722 # say65826
label morte_s722: # from 329.10 729.10
    nr '"Well, she„s a night hag - and she was definitely barmy enough to make YOU immortal, of all people. I mean, she could have chosen me." Morte rolls his eyes. "Still, anyone addled enough to lock blades with the Lady of Pain isn“t someone we really want to find."'

    menu:
        '"I see. I had some other questions…"':
            # a1436 # r65827
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1437 # r65828
            jump morte_dispose


# s723 # say65829
label morte_s723: # from 329.9 729.9
    nr '"It„s a war. A big, bloody, messy war. It happens everywhere, though you can“t always see it."'

    menu:
        '"Go on…"':
            # a1438 # r65830
            jump morte_s724

        '"Never mind. I had some other questions…"':
            # a1439 # r65831
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1440 # r65832
            jump morte_dispose


# s724 # say65833
label morte_s724: # from 723.0
    nr '"You see, chief, it„s a war between two nasty races: demons and devils. Once upon a time, they didn“t know about each other. The devils were evil, but it was an „orderly“ kind of evil. The demons were also evil, but they were more relaxed about it - more impulsive, more chaotic, less organized. The devils were like politicians, the demons were like butchers."'

    jump morte_s725


# s725 # say65834
label morte_s725: # from 724.0
    nr '"Then one day, the two races met. They looked at each other, and they didn„t like how the other race treated evil. And they“ve fought ever since. It„s a big nightmare. But at least it keeps those two races occupied so they don“t run all over the planes."'

    menu:
        '"I see. I had some other questions…"':
            # a1441 # r65835
            jump morte_s329

        '"That„s all I wanted to know. Let“s go."':
            # a1442 # r65836
            jump morte_dispose


# s726 # say65837
label morte_s726: # from 329.11 729.11
    nr '"No idea, chief. I kinda forgot when I died. Can„t say I blame myself much - at least there was something waiting for me after I died, even if it is life as a floating skull. I mean, it could have been worse."'

    menu:
        '"What happened to your body?"':
            # a1443 # r65839
            jump morte_s727

        '"I see. I had some other questions…"':
            # a1444 # r65840
            jump morte_s329

        '"All right, then. Let„s go."':
            # a1445 # r65841
            jump morte_dispose


# s727 # say65838
label morte_s727: # from 726.0
    nr '"Eh… I don„t know, all right? It“s just gone." Morte glares at you. "But don„t think I MISS it, because I“m happy just the way I am, and I don„t need your half-wit judgments or snide remarks, all right?"'

    menu:
        '"I see. I had some other questions…"':
            # a1446 # r65842
            jump morte_s329

        '"Whatever - let„s go. Come on, shake a leg."':
            # a1447 # r65843
            jump morte_s728


# s728 # say65844
label morte_s728: # from 727.1
    nr 'Morte glares at you. "I„m not convinced you aren“t some sort of walking curse that„s destined to follow me around."'

    menu:
        '"Look who„s talking. Let“s go."':
            # a1448 # r65845
            jump morte_dispose


# s729 # say66344
label morte_s729: # - # IF WEIGHT #7 /* Triggers after states #: 742 737 733 even though they appear after this state */ ~  Global("AR0200_Visited","GLOBAL",1) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"What„s eating you, chief?"~ [MRT515]'

    menu:
        '"Can you read to me what„s tattooed on my back again?"':
            # a1449 # r66345
            jump morte_s649

        '"Can you tell me a little about Sigil?"':
            # a1450 # r66346
            jump morte_s659

        '"Morte… I don„t mind you tagging along, but is there anything *else* you can do except chatter?"' if morteLogic.r66347_condition():
            # a1451 # r66347
            jump morte_s663

        '"Morte… what are your special talents again?"' if morteLogic.r66348_condition():
            # a1452 # r66348
            jump morte_s666

        '"Morte, why didn„t you tell me about that extra line of tattoos on my back?"' if morteLogic.r66349_condition():
            # a1453 # r66349
            jump morte_s654

        '"I could use some advice. What do you think we should do next?"':
            # a1454 # r66350
            jump morte_s669

        '"You said you„re a mimir, right, Morte?"' if morteLogic.r66351_condition():
            # a1455 # r66351
            jump morte_s684

        '"Tell me again how you ended up on the Pillar of Skulls."' if morteLogic.r66352_condition():
            # a1456 # r66352
            jump morte_s693

        '"Morte, why did you keep traveling with me once I got off the Pillar?"' if morteLogic.r66353_condition():
            # a1457 # r66353
            jump morte_s715

        '"What do you know about the Blood War?"' if morteLogic.r66354_condition():
            # a1458 # r66354
            jump morte_s723

        '"What do you know about the night hag Ravel?"' if morteLogic.r66355_condition():
            # a1459 # r66355
            jump morte_s722

        '"How did you die, Morte?"':
            # a1460 # r66356
            jump morte_s726

        '"Nothing, Morte. Just checking to see if you were still with me."':
            # a1461 # r66357
            jump morte_dispose


# s730 # say66816
label morte_s730: # -
    nr '"Hey, chief, can you believe those two? They could teach *me* a thing or two…"~ [MRT387]'

    menu:
        '"I believe it, Morte. Let„s go."':
            # a1462 # r66817
            jump morte_dispose


# s731 # say67510
label morte_s731: # -
    nr '"I„d just like to interject here and point out that I“m not going to say anything to spoil the mood, chief. I„ll just float here and watch. Don“t mind me - just sitting here, floating and watching, that„s me."'

    jump annah_s418  # EXTERN


# s732 # say67600
label morte_s732: # -
    nr '"Would you two cut it out before I have to get a dabus over here to separate the two of you!" Morte *hmmphs.* "Or at least allow me to cut in."'

    jump annah_s446  # EXTERN


# s733 # say68171
label morte_s733: # - # IF WEIGHT #1 ~  Global("Fortress_Morte","GLOBAL",3) Global("Absorb","GLOBAL",0)
    nr 'As you reach out, Morte suddenly speaks. "Whoa, whoa, whoa! Hold up, chief. Uh… there„s a few things I need to tell you."~ [MRT242]'

    menu:
        '"Morte…?! You„re not dead!"':
            # a1463 # r68176
            $ morteLogic.r68176_action()
            jump morte_s734


# s734 # say68172
label morte_s734: # from 733.0
    nr '"Well, yeah - when you„ve been dead as long as I have, you learn to fake it really well. I“ve been kind of listening to your whole conversation. Use that power you got on someone else - I don„t need it."'

    menu:
        '"So you were going to *lie* there while I got my ass handed to me?"':
            # a1464 # r68177
            jump morte_s735


# s735 # say68173
label morte_s735: # from 734.0
    nr '"Well, *yeah,* chief. It„s not like you“d die. I mean, if you failed, you„d need someone to remember for you. Plus, you know how worthless I am in a fight - well, when I“m not taunting some mage or another…"'

    menu:
        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68178_condition():
            # a1465 # r68178
            jump morte_s736

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68189_condition():
            # a1466 # r68189
            $ morteLogic.r68189_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68190_condition():
            # a1467 # r68190
            $ morteLogic.r68190_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68191_condition():
            # a1468 # r68191
            $ morteLogic.r68191_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68192_condition():
            # a1469 # r68192
            $ morteLogic.r68192_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68193_condition():
            # a1470 # r68193
            $ morteLogic.r68193_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68194_condition():
            # a1471 # r68194
            $ morteLogic.r68194_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68239_condition():
            # a1472 # r68239
            $ morteLogic.r68239_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68438_condition():
            # a1473 # r68438
            $ morteLogic.r68438_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68439_condition():
            # a1474 # r68439
            $ morteLogic.r68439_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68446_condition():
            # a1475 # r68446
            $ morteLogic.r68446_action()
            jump morte_dispose

        '"Then maybe that„s what I“ll need you to do. We„ll talk about this *later,* Morte…"' if morteLogic.r68503_condition():
            # a1476 # r68503
            jump trans_s142  # EXTERN


# s736 # say68174
label morte_s736: # from 735.0
    nr 'You reach out with your power again…'

    menu:
        'Resurrect Annah.' if morteLogic.r68175_condition():
            # a1477 # r68175
            $ morteLogic.r68175_action()
            jump morte_dispose

        'Resurrect Dak„kon.' if morteLogic.r68179_condition():
            # a1478 # r68179
            $ morteLogic.r68179_action()
            jump morte_dispose

        'Resurrect Fall-from-Grace.' if morteLogic.r68180_condition():
            # a1479 # r68180
            $ morteLogic.r68180_action()
            jump morte_dispose

        'Resurrect Nordom.' if morteLogic.r68181_condition():
            # a1480 # r68181
            $ morteLogic.r68181_action()
            jump morte_dispose

        'Resurrect Ignus.' if morteLogic.r68182_condition():
            # a1481 # r68182
            $ morteLogic.r68182_action()
            jump morte_dispose

        'Resurrect Vhailor.' if morteLogic.r68183_condition():
            # a1482 # r68183
            $ morteLogic.r68183_action()
            jump morte_dispose


# s737 # say68310
label morte_s737: # - # IF WEIGHT #2 ~  Global("Fortress_Morte","GLOBAL",3) GlobalGT("Absorb","GLOBAL",0)
    nr 'As you reach out with your power, Morte suddenly floats into the air. "Eh… hold up, chief. You don„t need to resurrect me; I was uh, just kind of lying here, you know, listening to you two."'

    menu:
        'YOU WERE FEIGNING DEATH.':
            # a1483 # r68311
            jump morte_s738


# s738 # say68312
label morte_s738: # from 737.0
    nr '"Well, yeah, I mean I„m *already* dead and… uh, chief, what happened to your *voice?*"'

    menu:
        'I… AM SOMETHING ELSE NOW. TIME RUNS SHORT, AND SOON TIME AND FATE WILL CATCH UP WITH ME. I WILL RETURN YOU TO SIGIL, MORTE, IF YOU WISH IT.':
            # a1484 # r68313
            jump morte_s739


# s739 # say68314
label morte_s739: # from 738.0
    nr '"Wh-? Return me? What about *you?* Come on, chief, I may be a *coward,* but there„s no way I“m leaving you in this place."'

    menu:
        'MANY ARE THE CRIMES THAT WERE COMMITTED WHEN MY MORTALITY AND I WERE SPLIT. THESE CRIMES CARRY A… PRICE. YOU MAY NOT GO WHERE I WILL SOON BE.':
            # a1485 # r68315
            jump morte_s740


# s740 # say68316
label morte_s740: # from 739.0
    nr '"Well, I *could* go with you anyway, chief, if you wanted me to - I mean, we„ve been through wors-"'

    menu:
        'NOT THIS TIME. PERHAPS ONE DAY YOU AND I WILL MEET AGAIN, ON ANOTHER PLANE. BUT NOT NOW.':
            # a1486 # r68317
            jump morte_s741


# s741 # say68318
label morte_s741: # from 740.0
    nr 'Morte stares at you for a moment, then sighs. "Not to get all misty-eyed, but, uh, it„s been a pleasure, chief."~ [MRT109]'

    menu:
        'FAREWELL, MORTE.' if morteLogic.r68319_condition():
            # a1487 # r68319
            $ morteLogic.r68319_action()
            jump morte_dispose

        'FAREWELL, MORTE.' if morteLogic.r68320_condition():
            # a1488 # r68320
            $ morteLogic.r68320_action()
            jump morte_dispose

        'FAREWELL, MORTE.' if morteLogic.r68321_condition():
            # a1489 # r68321
            $ morteLogic.r68321_action()
            jump morte_dispose

        'FAREWELL, MORTE.' if morteLogic.r68322_condition():
            # a1490 # r68322
            $ morteLogic.r68322_action()
            jump morte_dispose

        'FAREWELL, MORTE.' if morteLogic.r68323_condition():
            # a1491 # r68323
            $ morteLogic.r68323_action()
            jump morte_dispose

        'FAREWELL, MORTE.' if morteLogic.r68324_condition():
            # a1492 # r68324
            $ morteLogic.r68324_action()
            jump morte_dispose

        'FAREWELL, MORTE.' if morteLogic.r68325_condition():
            # a1493 # r68325
            $ morteLogic.r68325_action()
            jump morte_dispose

        'FAREWELL, MORTE.' if morteLogic.r68490_condition():
            # a1494 # r68490
            $ morteLogic.r68490_action()
            jump morte_dispose

        'FAREWELL, MORTE.' if morteLogic.r68491_condition():
            # a1495 # r68491
            $ morteLogic.r68491_action()
            jump morte_dispose

        'FAREWELL, MORTE.' if morteLogic.r68492_condition():
            # a1496 # r68492
            $ morteLogic.r68492_action()
            jump morte_dispose


# s742 # say68408
label morte_s742: # - # IF WEIGHT #3 ~  Global("Fortress_Morte","GLOBAL",4)
    nr 'Morte stares at you for a moment, then sighs. "Not to get all misty-eyed, but, uh, it„s been a pleasure, chief."~ [MRT109]'

    menu:
        '"Let„s take care of business, then…"':
            # a1497 # r68409
            jump morte_dispose
