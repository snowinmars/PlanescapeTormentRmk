init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.giantsk_logic import GiantskLogic
    giantskLogic = GiantskLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DGIANTSK.DLG
# ###


# s0 # say292
label giantsk_s0: # - # IF ~  True()
    nr 'Before you is a giant skeleton in ornate bronze armor. The armor has been bolted onto the skeleton„s frame, and a series of elaborate symbols have been carved across the breastplate. You wonder where the skeleton came from; you weren“t aware they made humans in this size. The huge blade in its hands looks like it weighs as much as a wagon cart.{#giantsk_s0_}'

    menu:
        '"Mind if I hold that blade for a second? You must be getting tired of holding it."{#giantsk_s0_r293}':
            # a0 # r293
            $ giantskLogic.r293_action()
            jump giantsk_s1

        '"So how long you been standing here? Long time?"{#giantsk_s0_r1165}':
            # a1 # r1165
            $ giantskLogic.r1165_action()
            jump giantsk_s1

        'Examine the giant skeleton… carefully.{#giantsk_s0_r3996}':
            # a2 # r3996
            jump giantsk_s4

        'See if you can dispel the enchantments woven into the skeleton„s breastplate.{#giantsk_s0_r3997}' if giantskLogic.r3997_condition():
            # a3 # r3997
            jump giantsk_s9

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s0_r3998}' if giantskLogic.r3998_condition():
            # a4 # r3998
            jump giantsk_s2

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s0_r3999}' if giantskLogic.r3999_condition():
            # a5 # r3999
            jump giantsk_s3

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s0_r4000}' if giantskLogic.r4000_condition():
            # a6 # r4000
            jump giantsk_s2

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s0_r4001}' if giantskLogic.r4001_condition():
            # a7 # r4001
            jump giantsk_s3

        '"Hey, how about THIS skeleton, Morte? Will it do as a body?"{#giantsk_s0_r4002}' if giantskLogic.r4002_condition():
            # a8 # r4002
            jump morte_s73  # EXTERN

        'Use your Stories-Bones-Tell ability on the skeleton.{#giantsk_s0_r4003}' if giantskLogic.r4003_condition():
            # a9 # r4003
            jump giantsk_s1

        'Leave the skeleton alone.{#giantsk_s0_r4004}':
            # a10 # r4004
            jump giantsk_dispose


# s1 # say1166
label giantsk_s1: # from 0.0 0.1 0.9 # IF ~  False()
    nr 'The skeleton looks too long dead to answer any of your questions. Either that, or its head is too high up for it to hear you.{#giantsk_s1_}'

    menu:
        'Examine the giant skeleton… carefully.{#giantsk_s1_r1167}':
            # a11 # r1167
            jump giantsk_s4

        'See if you can dispel the enchantments woven into the skeleton„s breastplate.{#giantsk_s1_r4035}' if giantskLogic.r4035_condition():
            # a12 # r4035
            jump giantsk_s9

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s1_r4036}' if giantskLogic.r4036_condition():
            # a13 # r4036
            jump giantsk_s2

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s1_r4037}' if giantskLogic.r4037_condition():
            # a14 # r4037
            jump giantsk_s3

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s1_r4038}' if giantskLogic.r4038_condition():
            # a15 # r4038
            jump giantsk_s2

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s1_r4039}' if giantskLogic.r4039_condition():
            # a16 # r4039
            jump giantsk_s3

        '"Hey, how about THIS skeleton, Morte? Will it do as a body?"{#giantsk_s1_r4040}' if giantskLogic.r4040_condition():
            # a17 # r4040
            jump morte_s73  # EXTERN

        'Leave the skeleton in peace.{#giantsk_s1_r4041}':
            # a18 # r4041
            jump giantsk_dispose


# s2 # say4005
label giantsk_s2: # from 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
    nr 'As you touch the skeleton, an iron bell starts tolling throughout the Mortuary… and with lightning-like speed, the skeleton awakens, raising its blade to attack!{#giantsk_s2_}'

    menu:
        '"You„ll wish you“d stayed dead, Bones…"{#giantsk_s2_r4042}':
            # a19 # r4042
            $ giantskLogic.r4042_action()
            jump giantsk_dispose


# s3 # say4006
label giantsk_s3: # from 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
    nr 'As you are about to do so, you suddenly stop… and your eyes are drawn to the skeleton„s armor. Something about the symbols engraved on its breastplate makes you pause. If these skeletons are guardians, then disturbing them may… awaken them.{#giantsk_s3_}'

    menu:
        '"That„s a risk I“m willing to take…"{#giantsk_s3_r4043}':
            # a20 # r4043
            jump giantsk_s2

        'Examine the giant skeleton… carefully.{#giantsk_s3_r4044}':
            # a21 # r4044
            jump giantsk_s4

        'Leave the skeleton in peace.{#giantsk_s3_r4046}':
            # a22 # r4046
            jump giantsk_dispose


# s4 # say4007
label giantsk_s4: # from 0.2 1.0 3.1 7.1 15.1 16.3
    nr 'The skeleton„s intricate bronze armor is riveted onto its rib cage and shoulder blades with a series of iron bolts. As you study the frame behind the armor, you notice the same iron bolts are set into the skeleton“s shoulder, elbow, pelvic, and knee joints. A mass of thick leather cords and heavy knotted ropes run along the length of the skeleton„s arms and legs, woven in such a pattern that they resemble muscles and tendons.{#giantsk_s4_}'

    menu:
        'Examine the armor.{#giantsk_s4_r4045}':
            # a23 # r4045
            jump giantsk_s5

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s4_r4048}' if giantskLogic.r4048_condition():
            # a24 # r4048
            jump giantsk_s2

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s4_r4049}' if giantskLogic.r4049_condition():
            # a25 # r4049
            jump giantsk_s3

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s4_r4050}' if giantskLogic.r4050_condition():
            # a26 # r4050
            jump giantsk_s2

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s4_r4051}' if giantskLogic.r4051_condition():
            # a27 # r4051
            jump giantsk_s3

        '"Hey, how about THIS skeleton, Morte? Will it do as a body?"{#giantsk_s4_r4052}' if giantskLogic.r4052_condition():
            # a28 # r4052
            jump morte_s73  # EXTERN

        'Leave the skeleton in peace.{#giantsk_s4_r4053}':
            # a29 # r4053
            jump giantsk_dispose


# s5 # say4008
label giantsk_s5: # from 4.0
    nr 'Despite the armor„s obvious age, it looks well cared for. It shines brightly, and the symbols engraved on the breastplate seem to flow in the firelight, shifting slightly whenever you try to focus on them.{#giantsk_s5_}'

    menu:
        'Study the symbols.{#giantsk_s5_r4054}' if giantskLogic.r4054_condition():
            # a30 # r4054
            jump giantsk_s6

        'Study the symbols.{#giantsk_s5_r4055}' if giantskLogic.r4055_condition():
            # a31 # r4055
            jump giantsk_s6

        'Study the symbols.{#giantsk_s5_r64293}' if giantskLogic.r64293_condition():
            # a32 # r64293
            jump giantsk_s7

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s5_r4056}' if giantskLogic.r4056_condition():
            # a33 # r4056
            jump giantsk_s2

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s5_r4057}' if giantskLogic.r4057_condition():
            # a34 # r4057
            jump giantsk_s3

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s5_r4058}' if giantskLogic.r4058_condition():
            # a35 # r4058
            jump giantsk_s2

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s5_r4059}' if giantskLogic.r4059_condition():
            # a36 # r4059
            jump giantsk_s3

        '"Hey, how about THIS skeleton, Morte? Will it do as a body?"{#giantsk_s5_r4060}' if giantskLogic.r4060_condition():
            # a37 # r4060
            jump morte_s73  # EXTERN

        'Leave the skeleton in peace.{#giantsk_s5_r4061}':
            # a38 # r4061
            jump giantsk_dispose


# s6 # say4009
label giantsk_s6: # from 5.0 5.1
    nr 'Almost unconsciously, you let your gaze relax as you look at the symbols. After a moment, the symbols cease shifting and resolve into a trail of runes that run up and down the breastplate. Strangely enough, the interlocking pattern of runes reminds you of chains… and with that thought, you suddenly recall that these runes are some sort of warding enchantment.{#giantsk_s6_}'

    menu:
        'Study the runes, try and recall the enchantment.{#giantsk_s6_r4062}' if giantskLogic.r4062_condition():
            # a39 # r4062
            jump giantsk_s8

        'Study the runes, try and recall the enchantment.{#giantsk_s6_r4063}' if giantskLogic.r4063_condition():
            # a40 # r4063
            jump giantsk_s7

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s6_r4064}' if giantskLogic.r4064_condition():
            # a41 # r4064
            jump giantsk_s2

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s6_r4065}' if giantskLogic.r4065_condition():
            # a42 # r4065
            jump giantsk_s3

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s6_r4066}' if giantskLogic.r4066_condition():
            # a43 # r4066
            jump giantsk_s2

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s6_r4067}' if giantskLogic.r4067_condition():
            # a44 # r4067
            jump giantsk_s3

        '"Hey, how about THIS skeleton, Morte? Will it do as a body?"{#giantsk_s6_r4068}' if giantskLogic.r4068_condition():
            # a45 # r4068
            jump morte_s73  # EXTERN

        'Leave the skeleton in peace.{#giantsk_s6_r4069}':
            # a46 # r4069
            jump giantsk_dispose


# s7 # say4010
label giantsk_s7: # from 5.2 6.1 7.2
    nr 'You study the runes for a while, but you can„t decipher the enchantment. It looks pretty complicated, and you“re having a hard time concentrating.{#giantsk_s7_}'

    menu:
        'Compare the runes to the runes in the Book of Tome and Ash.{#giantsk_s7_r64294}' if giantskLogic.r64294_condition():
            # a47 # r64294
            jump giantsk_s15

        'Examine the skeleton again.{#giantsk_s7_r4070}':
            # a48 # r4070
            jump giantsk_s4

        'Examine the runes again.{#giantsk_s7_r4071}':
            # a49 # r4071
            jump giantsk_s7

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s7_r4072}' if giantskLogic.r4072_condition():
            # a50 # r4072
            jump giantsk_s2

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s7_r4073}' if giantskLogic.r4073_condition():
            # a51 # r4073
            jump giantsk_s3

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s7_r4074}' if giantskLogic.r4074_condition():
            # a52 # r4074
            jump giantsk_s2

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s7_r4075}' if giantskLogic.r4075_condition():
            # a53 # r4075
            jump giantsk_s3

        '"Hey, how about THIS skeleton, Morte? Will it do as a body?"{#giantsk_s7_r4076}' if giantskLogic.r4076_condition():
            # a54 # r4076
            jump morte_s73  # EXTERN

        'Leave the skeleton in peace.{#giantsk_s7_r4077}':
            # a55 # r4077
            jump giantsk_dispose


# s8 # say4011
label giantsk_s8: # from 6.0
    nr 'You study the pattern of runes as they weave their way across the breastplate. On its most basic level, the runes are a lesser armoring enchantment, but several skull-shaped runes and spherical tracings along the edges of the armor make you suspect several greater necromantic and warding enchantments are woven in as well. Touching the skeleton will most likely cause it to awaken… and defend itself.{#giantsk_s8_}'

    menu:
        'See if you can dispel the enchantments somehow.{#giantsk_s8_r4079}' if giantskLogic.r4079_condition():
            # a56 # r4079
            $ giantskLogic.r4079_action()
            jump giantsk_s9

        'See if you can dispel the enchantments somehow.{#giantsk_s8_r4080}' if giantskLogic.r4080_condition():
            # a57 # r4080
            jump giantsk_s9

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s8_r4081}' if giantskLogic.r4081_condition():
            # a58 # r4081
            jump giantsk_s2

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s8_r4082}' if giantskLogic.r4082_condition():
            # a59 # r4082
            jump giantsk_s3

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s8_r4083}' if giantskLogic.r4083_condition():
            # a60 # r4083
            jump giantsk_s2

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s8_r4084}' if giantskLogic.r4084_condition():
            # a61 # r4084
            jump giantsk_s3

        '"Hey, how about THIS skeleton, Morte? Will it do as a body?"{#giantsk_s8_r4085}' if giantskLogic.r4085_condition():
            # a62 # r4085
            jump morte_s73  # EXTERN

        'Leave the skeleton in peace.{#giantsk_s8_r4078}':
            # a63 # r4078
            jump giantsk_dispose


# s9 # say4012
label giantsk_s9: # from 0.3 1.1 8.0 8.1
    nr 'You suspect that marring the rune pattern along the breastplate could unravel the enchantments, but it looks difficult… the pattern is complicated, and scratching out the wrong portion could cause the skeleton to animate.{#giantsk_s9_}'

    menu:
        'Compare the pattern to the enchantments in the Tome of Bone and Ash, see if you can determine how they can be broken.{#giantsk_s9_r64296}' if giantskLogic.r64296_condition():
            # a64 # r64296
            jump giantsk_s16

        'Mar the runes maintaining the armoring enchantment first, then the necromantic, then the warding enchantment.{#giantsk_s9_r4086}':
            # a65 # r4086
            jump giantsk_s10

        'Mar the runes maintaining the warding enchantment first, then work backward through the rune pattern, canceling the necromantic, then the armoring enchantment.{#giantsk_s9_r4087}' if giantskLogic.r4087_condition():
            # a66 # r4087
            $ giantskLogic.r4087_action()
            jump giantsk_s11

        'Mar the runes maintaining the warding enchantment first, then work backward through the rune pattern, canceling the necromantic, then the armoring enchantment.{#giantsk_s9_r4088}' if giantskLogic.r4088_condition():
            # a67 # r4088
            $ giantskLogic.r4088_action()
            jump giantsk_s13

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s9_r4089}' if giantskLogic.r4089_condition():
            # a68 # r4089
            jump giantsk_s2

        'Try and pry the skeleton„s blade from its hands.{#giantsk_s9_r4090}' if giantskLogic.r4090_condition():
            # a69 # r4090
            jump giantsk_s3

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s9_r4091}' if giantskLogic.r4091_condition():
            # a70 # r4091
            jump giantsk_s2

        'Try and pry out the bolts securing the skeleton„s armor.{#giantsk_s9_r4092}' if giantskLogic.r4092_condition():
            # a71 # r4092
            jump giantsk_s3

        '"Hey, how about THIS skeleton, Morte? Will it do as a body?"{#giantsk_s9_r4093}' if giantskLogic.r4093_condition():
            # a72 # r4093
            jump morte_s73  # EXTERN

        'Leave the skeleton in peace.{#giantsk_s9_r4094}':
            # a73 # r4094
            jump giantsk_dispose


# s10 # say4013
label giantsk_s10: # from 9.1 16.0
    nr 'As you begin to work on the runes decorating the breastplate, an iron bell starts tolling throughout the Mortuary… and with lightning-like speed, the skeleton awakens, raising its blade to attack!{#giantsk_s10_}'

    menu:
        '"You„ll wish you“d stayed dead, Bones…"{#giantsk_s10_r4095}':
            # a74 # r4095
            $ giantskLogic.r4095_action()
            jump giantsk_dispose


# s11 # say4014
label giantsk_s11: # from 9.2 16.1
    nr 'The work is difficult and nerve-wracking at first, but slowly, your mind begins to focus, and the runes begin to unravel beneath your attack. Within minutes, the giant skeleton has been stripped of the enchantments binding it. It collapses, falling to the floor with a crash of bones and a heavy clanging noise!{#giantsk_s11_}'

    menu:
        '"Damned pile of bones…!"{#giantsk_s11_r4096}':
            # a75 # r4096
            $ giantskLogic.r4096_action()
            jump giantsk_s12


# s12 # say4015
label giantsk_s12: # from 11.0
    nr 'You wait for a moment, but no one responds to the sound. Moving quickly, you sift through the skeleton„s parts on the floor. Most of it is too heavy or too old to be useful, but you discover a piece of the skeleton“s breastplate with a majority of one of the broken enchantments engraved on it. You have a feeling that it could prove useful.{#giantsk_s12_}'

    menu:
        '"I„ll just take it then…"{#giantsk_s12_r4097}':
            # a76 # r4097
            $ giantskLogic.r4097_action()
            jump giantsk_dispose


# s13 # say4016
label giantsk_s13: # from 9.3 16.2
    nr 'Dispelling the enchantment is easier this time around, and the runes quickly unravel beneath your attack. Within minutes, the giant skeleton has been stripped of the enchantments binding it. Remembering what happened to the first, you catch the skeleton before it falls, and with a grunt, slowly lower it to the ground.{#giantsk_s13_}'

    menu:
        '"Let„s see what we got this time…"{#giantsk_s13_r4098}':
            # a77 # r4098
            $ giantskLogic.r4098_action()
            jump giantsk_s14


# s14 # say4017
label giantsk_s14: # from 13.0
    nr 'You quickly rummage through the skeleton„s remains and, once again, uncover a piece of the skeleton“s breastplate… like the first, this one also has a fragment of its broken enchantment engraved on it. It could prove useful.{#giantsk_s14_}'

    menu:
        '"I„ll just take it then…"{#giantsk_s14_r4099}' if giantskLogic.r4099_condition():
            # a78 # r4099
            $ giantskLogic.r4099_action()
            jump giantsk_dispose

        '"I„ll just take it then…"{#giantsk_s14_r4100}' if giantskLogic.r4100_condition():
            # a79 # r4100
            $ giantskLogic.r4100_action()
            jump giantsk_dispose

        '"I„ll just take it then…"{#giantsk_s14_r4101}' if giantskLogic.r4101_condition():
            # a80 # r4101
            $ giantskLogic.r4101_action()
            jump giantsk_dispose


# s15 # say64295
label giantsk_s15: # from 7.0
    nr 'You consult the tome and compare the diagrams to the markings on the breastplate. From what you can make out, the runes are a lesser armoring enchantment, but several skull-shaped runes and spherical tracings along the edges of the armor suggest that several greater necromantic and warding enchantments are woven in as well. Touching the skeleton will most likely cause it to awaken… and defend itself.{#giantsk_s15_}'

    menu:
        'Consult the Tome of Bone and Ash, see if you can determine how they can be broken.{#giantsk_s15_r64298}':
            # a81 # r64298
            jump giantsk_s16

        'Leave the runes alone and examine the skeleton again.{#giantsk_s15_r64299}':
            # a82 # r64299
            jump giantsk_s4


# s16 # say64297
label giantsk_s16: # from 9.0 15.0
    nr 'From what you can make out from the Tome, it seems the armoring enchantment applies only to the breastplate, the necromantic enchantment allows the skeleton to be Raised, but it is the warding enchantment that gives the skeleton its limited awareness of its surroundings. You„d guess that if you were to mar the skeleton“s wards, it would interpret it as an attack… unless you blinded it to your presence first.{#giantsk_s16_}'

    menu:
        'Mar the runes maintaining the armoring enchantment first, then the necromantic, then the warding enchantment.{#giantsk_s16_r64300}':
            # a83 # r64300
            jump giantsk_s10

        'Mar the runes maintaining the warding enchantment first, then work backward through the rune pattern, canceling the necromantic, then the armoring enchantment.{#giantsk_s16_r64301}' if giantskLogic.r64301_condition():
            # a84 # r64301
            $ giantskLogic.r64301_action()
            jump giantsk_s11

        'Mar the runes maintaining the warding enchantment first, then work backward through the rune pattern, canceling the necromantic, then the armoring enchantment.{#giantsk_s16_r64302}' if giantskLogic.r64302_condition():
            # a85 # r64302
            $ giantskLogic.r64302_action()
            jump giantsk_s13

        'Leave the runes alone and examine the skeleton again.{#giantsk_s16_r64303}':
            # a86 # r64303
            jump giantsk_s4
