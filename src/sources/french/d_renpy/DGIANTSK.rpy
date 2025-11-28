init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.giantsk_logic import GiantskLogic
    giantskLogic = GiantskLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DGIANTSK.DLG
# ###


# s0 # say292
label giantsk_s0: # - # IF ~  True()
    nr 'Devant toi se tient un squelette géant en armure de bronze ornée et boulonnée directement dans son ossature. Des symboles travaillés sont gravés sur le plastron. Tu te demandes d„où vient le squelette. Tu ignorais l“existence d„humains de cette taille. L“énorme lame dans sa main semble être aussi lourde qu„une charrette.{#giantsk_s0_1}'

    menu:
        '"Tu veux bien que je tienne cette lame une seconde ? Tu dois en avoir assez de la porter."{#giantsk_s0_r293}':
            # a0 # r293
            $ giantskLogic.r293_action()
            jump giantsk_s1

        '"Bon, ça fait combien de temps que tu es ici ? Longtemps ?"{#giantsk_s0_r1165}':
            # a1 # r1165
            $ giantskLogic.r1165_action()
            jump giantsk_s1

        'Examine le squelette géant… attentivement.{#giantsk_s0_r3996}':
            # a2 # r3996
            jump giantsk_s4

        'Voyons si tu réussis à lever les enchantements entrelacés dans le plastron du squelette.{#giantsk_s0_r3997}' if giantskLogic.r3997_condition():
            # a3 # r3997
            jump giantsk_s9

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s0_r3998}' if giantskLogic.r3998_condition():
            # a4 # r3998
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s0_r3999}' if giantskLogic.r3999_condition():
            # a5 # r3999
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s0_r4000}' if giantskLogic.r4000_condition():
            # a6 # r4000
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s0_r4001}' if giantskLogic.r4001_condition():
            # a7 # r4001
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"{#giantsk_s0_r4002}' if giantskLogic.r4002_condition():
            # a8 # r4002
            jump morte_s73  # EXTERN

        'Utilise Histoires-Os-Conter sur le cadavre.{#giantsk_s0_r4003}' if giantskLogic.r4003_condition():
            # a9 # r4003
            jump giantsk_s1

        'Laisse le squelette tranquille.{#giantsk_s0_r4004}':
            # a10 # r4004
            jump giantsk_dispose


# s1 # say1166
label giantsk_s1: # from 0.0 0.1 0.9 # IF ~  False()
    nr 'Le squelette a l„air mort depuis trop longtemps pour pouvoir répondre à tes questions. Ou bien sa tête est trop haute pour qu“il puisse t„entendre.{#giantsk_s1_1}'

    menu:
        'Examine le squelette géant… attentivement.{#giantsk_s1_r1167}':
            # a11 # r1167
            jump giantsk_s4

        'Voyons si tu réussis à lever les enchantements entrelacés dans le plastron du squelette.{#giantsk_s1_r4035}' if giantskLogic.r4035_condition():
            # a12 # r4035
            jump giantsk_s9

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s1_r4036}' if giantskLogic.r4036_condition():
            # a13 # r4036
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s1_r4037}' if giantskLogic.r4037_condition():
            # a14 # r4037
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s1_r4038}' if giantskLogic.r4038_condition():
            # a15 # r4038
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s1_r4039}' if giantskLogic.r4039_condition():
            # a16 # r4039
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"{#giantsk_s1_r4040}' if giantskLogic.r4040_condition():
            # a17 # r4040
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.{#giantsk_s1_r4041}':
            # a18 # r4041
            jump giantsk_dispose


# s2 # say4005
label giantsk_s2: # from 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
    nr 'Au moment où tu touches le squelette, une cloche en fer résonne dans toute la Morgue… aussi vite que l„éclair, le squelette se réveille et lève sa lame, prêt à frapper !{#giantsk_s2_1}'

    menu:
        '"Tu vas regretter de ne plus être mort, Os…"{#giantsk_s2_r4042}':
            # a19 # r4042
            $ giantskLogic.r4042_action()
            jump giantsk_dispose


# s3 # say4006
label giantsk_s3: # from 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
    nr 'Tu étais prêt à agir quand soudain tu t„arrêtes… Les symboles gravés sur le plastron de l“armure du squelette attirent ton regard. Si ces squelettes sont des gardes, alors tu risques de les déranger et… de les réveiller.{#giantsk_s3_1}'

    menu:
        '"C„est un risque que je suis prêt à prendre…"{#giantsk_s3_r4043}':
            # a20 # r4043
            jump giantsk_s2

        'Examine le squelette géant… attentivement.{#giantsk_s3_r4044}':
            # a21 # r4044
            jump giantsk_s4

        'Laisse le squelette tranquille.{#giantsk_s3_r4046}':
            # a22 # r4046
            jump giantsk_dispose


# s4 # say4007
label giantsk_s4: # from 0.2 1.0 3.1 7.1 15.1 16.3
    nr 'L„armure en bronze ornée est rivée dans la cage thoracique du squelette avec une série de boulons en fer. Les épaulières aussi. Tu observes la charpente derrière l“armure et tu remarques que des boulons en fer similaires sont placés dans les articulations de l„épaule, du coude, de la hanche et du genou. Des cordons épais en cuir et des cordes nouées descendent le long des bras et des jambes du squelette. Ils ressemblent à des muscles et des tendons.{#giantsk_s4_1}'

    menu:
        'Examine l„armure.{#giantsk_s4_r4045}':
            # a23 # r4045
            jump giantsk_s5

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s4_r4048}' if giantskLogic.r4048_condition():
            # a24 # r4048
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s4_r4049}' if giantskLogic.r4049_condition():
            # a25 # r4049
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s4_r4050}' if giantskLogic.r4050_condition():
            # a26 # r4050
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s4_r4051}' if giantskLogic.r4051_condition():
            # a27 # r4051
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"{#giantsk_s4_r4052}' if giantskLogic.r4052_condition():
            # a28 # r4052
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.{#giantsk_s4_r4053}':
            # a29 # r4053
            jump giantsk_dispose


# s5 # say4008
label giantsk_s5: # from 4.0
    nr 'Malgré son ancienneté, l„armure a l“air bien conservée. Elle brille et les symboles gravés sur le plastron semblent vaciller à la lueur du feu, échappant à ton regard chaque fois que tu veux les observer.{#giantsk_s5_1}'

    menu:
        'Étudie les symboles.{#giantsk_s5_r4054}' if giantskLogic.r4054_condition():
            # a30 # r4054
            jump giantsk_s6

        'Étudie les symboles.{#giantsk_s5_r4055}' if giantskLogic.r4055_condition():
            # a31 # r4055
            jump giantsk_s6

        'Examine les symboles.{#giantsk_s5_r64293}' if giantskLogic.r64293_condition():
            # a32 # r64293
            jump giantsk_s7

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s5_r4056}' if giantskLogic.r4056_condition():
            # a33 # r4056
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s5_r4057}' if giantskLogic.r4057_condition():
            # a34 # r4057
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s5_r4058}' if giantskLogic.r4058_condition():
            # a35 # r4058
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s5_r4059}' if giantskLogic.r4059_condition():
            # a36 # r4059
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"{#giantsk_s5_r4060}' if giantskLogic.r4060_condition():
            # a37 # r4060
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.{#giantsk_s5_r4061}':
            # a38 # r4061
            jump giantsk_dispose


# s6 # say4009
label giantsk_s6: # from 5.0 5.1
    nr 'Presque inconsciemment, tu poses les yeux sur les symboles. Après un instant, les symboles cessent de vaciller et se concentrent en un tracé de runes qui court des pieds à la tête du plastron. Bizarrement, l„enchevêtrement des runes te rappelle une chaîne… et tu te souviens que ces runes sont une sorte de protection contre l“enchantement.{#giantsk_s6_1}'

    menu:
        'Étudie les runes, essaie de te souvenir de l„enchantement.{#giantsk_s6_r4062}' if giantskLogic.r4062_condition():
            # a39 # r4062
            jump giantsk_s8

        'Étudie les runes, essaie de te souvenir de l„enchantement.{#giantsk_s6_r4063}' if giantskLogic.r4063_condition():
            # a40 # r4063
            jump giantsk_s7

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s6_r4064}' if giantskLogic.r4064_condition():
            # a41 # r4064
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s6_r4065}' if giantskLogic.r4065_condition():
            # a42 # r4065
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s6_r4066}' if giantskLogic.r4066_condition():
            # a43 # r4066
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s6_r4067}' if giantskLogic.r4067_condition():
            # a44 # r4067
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"{#giantsk_s6_r4068}' if giantskLogic.r4068_condition():
            # a45 # r4068
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.{#giantsk_s6_r4069}':
            # a46 # r4069
            jump giantsk_dispose


# s7 # say4010
label giantsk_s7: # from 5.2 6.1 7.2
    nr 'Tu observes les runes pendant un moment mais tu ne réussis pas à déchiffrer l„enchantement. Il a l“air compliqué. Tu as du mal à te concentrer.{#giantsk_s7_1}'

    menu:
        'Compare les runes avec celles du Manuel des Ossements et des Cendres.{#giantsk_s7_r64294}' if giantskLogic.r64294_condition():
            # a47 # r64294
            jump giantsk_s15

        'Examine de nouveau le squelette.{#giantsk_s7_r4070}':
            # a48 # r4070
            jump giantsk_s4

        'Examine de nouveau les runes.{#giantsk_s7_r4071}':
            # a49 # r4071
            jump giantsk_s7

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s7_r4072}' if giantskLogic.r4072_condition():
            # a50 # r4072
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s7_r4073}' if giantskLogic.r4073_condition():
            # a51 # r4073
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s7_r4074}' if giantskLogic.r4074_condition():
            # a52 # r4074
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s7_r4075}' if giantskLogic.r4075_condition():
            # a53 # r4075
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"{#giantsk_s7_r4076}' if giantskLogic.r4076_condition():
            # a54 # r4076
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.{#giantsk_s7_r4077}':
            # a55 # r4077
            jump giantsk_dispose


# s8 # say4011
label giantsk_s8: # from 6.0
    nr 'Tu observes la trame des runes pendant qu„elles se tissent un chemin sur le plastron. Au niveau le plus simple, les runes sont un enchantement d“armure mineur ; mais plusieurs runes en forme de crâne et des dessins sphériques le long des bords de l„armure te font suspecter des enchantements nécromantiques et des protections majeures, tissés à l“intérieur. Si tu touchais le squelette, tu le réveillerais… et il se défendrait.{#giantsk_s8_1}'

    menu:
        'Essaie de trouver un moyen de lever les enchantements.{#giantsk_s8_r4079}' if giantskLogic.r4079_condition():
            # a56 # r4079
            $ giantskLogic.r4079_action()
            jump giantsk_s9

        'Essaie de trouver un moyen de lever les enchantements.{#giantsk_s8_r4080}' if giantskLogic.r4080_condition():
            # a57 # r4080
            jump giantsk_s9

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s8_r4081}' if giantskLogic.r4081_condition():
            # a58 # r4081
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s8_r4082}' if giantskLogic.r4082_condition():
            # a59 # r4082
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s8_r4083}' if giantskLogic.r4083_condition():
            # a60 # r4083
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s8_r4084}' if giantskLogic.r4084_condition():
            # a61 # r4084
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"{#giantsk_s8_r4085}' if giantskLogic.r4085_condition():
            # a62 # r4085
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.{#giantsk_s8_r4078}':
            # a63 # r4078
            jump giantsk_dispose


# s9 # say4012
label giantsk_s9: # from 0.3 1.1 8.0 8.1
    nr 'Tu penses que le fait de casser la structure des runes sur le plastron permettrait de briser l„enchantement, mais ça a l“air difficile… la structure est compliquée, et le squelette pourrait se réveiller si tu éraflais la mauvaise partie.{#giantsk_s9_1}'

    menu:
        'Compare les motifs avec les enchantements du Manuel des Ossements et des Cendres pour savoir si tu peux comprendre comment les briser.{#giantsk_s9_r64296}' if giantskLogic.r64296_condition():
            # a64 # r64296
            jump giantsk_s16

        'Désactive les runes en commençant par l„enchantement d“armure, puis la nécromancie, et enfin l„enchantement de défense.{#giantsk_s9_r4086}':
            # a65 # r4086
            jump giantsk_s10

        'Désactive les runes en commençant par l„enchantement de défense, puis reviens en arrière jusqu“au motif de runes, en annulant la nécromancie, puis l„enchantement d“armure.{#giantsk_s9_r4087}' if giantskLogic.r4087_condition():
            # a66 # r4087
            $ giantskLogic.r4087_action()
            jump giantsk_s11

        'Désactive les runes en commençant par l„enchantement de défense, puis reviens en arrière jusqu“au motif de runes, en annulant la nécromancie, puis l„enchantement d“armure.{#giantsk_s9_r4088}' if giantskLogic.r4088_condition():
            # a67 # r4088
            $ giantskLogic.r4088_action()
            jump giantsk_s13

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s9_r4089}' if giantskLogic.r4089_condition():
            # a68 # r4089
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.{#giantsk_s9_r4090}' if giantskLogic.r4090_condition():
            # a69 # r4090
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s9_r4091}' if giantskLogic.r4091_condition():
            # a70 # r4091
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.{#giantsk_s9_r4092}' if giantskLogic.r4092_condition():
            # a71 # r4092
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"{#giantsk_s9_r4093}' if giantskLogic.r4093_condition():
            # a72 # r4093
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.{#giantsk_s9_r4094}':
            # a73 # r4094
            jump giantsk_dispose


# s10 # say4013
label giantsk_s10: # from 9.1 16.0
    nr 'Tu commences à travailler sur les runes qui décorent le plastron. Soudain, une cloche résonne dans toute la Morgue… aussi vite que l„éclair, le squelette se réveille et lève sa lame, prêt à frapper !{#giantsk_s10_1}'

    menu:
        '"Tu vas regretter de ne plus être mort, Os…"{#giantsk_s10_r4095}':
            # a74 # r4095
            $ giantskLogic.r4095_action()
            jump giantsk_dispose


# s11 # say4014
label giantsk_s11: # from 9.2 16.1
    nr 'Le travail est difficile et nerveusement éprouvant. Lentement, ton esprit se concentre et les runes se brisent sous ton attaque. En quelques minutes, le squelette géant est libéré des enchantements qui l„emprisonnaient. Il s“effondre sur le sol dans un fracas d„ossements !{#giantsk_s11_1}'

    menu:
        '"Fichu tas d„os… !"{#giantsk_s11_r4096}':
            # a75 # r4096
            $ giantskLogic.r4096_action()
            jump giantsk_s12


# s12 # say4015
label giantsk_s12: # from 11.0
    nr 'Tu attends un moment, mais personne ne répond à ce bruit. Rapidement, tu passes au crible les os du squelette sur le sol. La plupart sont trop lourds ou trop vieux pour être utilisés. Mais tu découvres un morceau du plastron portant la majorité des enchantements brisés. Tu as le sentiment qu„il pourra t“être utile.{#giantsk_s12_1}'

    menu:
        '"Alors, je vais prendre ça…"{#giantsk_s12_r4097}':
            # a76 # r4097
            $ giantskLogic.r4097_action()
            jump giantsk_dispose


# s13 # say4016
label giantsk_s13: # from 9.3 16.2
    nr 'Cette fois, briser l„enchantement a été plus facile. Les runes se sont rapidement défaites sous ton attaque. En quelques minutes, le squelette géant est libéré des enchantements qui l“emprisonnaient. Fort de ton expérience, tu rattrapes le squelette avant qu„il ne tombe. Dans un grognement, tu le poses à terre.{#giantsk_s13_1}'

    menu:
        '"Voyons ce que nous avons cette fois…"{#giantsk_s13_r4098}':
            # a77 # r4098
            $ giantskLogic.r4098_action()
            jump giantsk_s14


# s14 # say4017
label giantsk_s14: # from 13.0
    nr 'Rapidement, tu fouilles dans les restes du squelette. À nouveau, tu trouves un morceau du plastron. Comme le premier, il porte un fragment de l„enchantement brisé. Cela pourra être utile.{#giantsk_s14_1}'

    menu:
        '"Alors, je vais prendre ça…"{#giantsk_s14_r4099}' if giantskLogic.r4099_condition():
            # a78 # r4099
            $ giantskLogic.r4099_action()
            jump giantsk_dispose

        '"Alors, je vais prendre ça…"{#giantsk_s14_r4100}' if giantskLogic.r4100_condition():
            # a79 # r4100
            $ giantskLogic.r4100_action()
            jump giantsk_dispose

        '"Alors, je vais prendre ça…"{#giantsk_s14_r4101}' if giantskLogic.r4101_condition():
            # a80 # r4101
            $ giantskLogic.r4101_action()
            jump giantsk_dispose


# s15 # say64295
label giantsk_s15: # from 7.0
    nr 'Tu consultes le livre et tu compares les diagrammes aux marques sur la cuirasse. Autant que tu puisses en juger, les runes sont un enchantement de protection mineur. Mais plusieurs runes en forme de crâne et des marques sphériques sur les côtés de l„armure laissent penser qu“on a utilisé aussi plusieurs enchantements de nécromancie et de vigilance très puissants. Toucher le squelette risque certainement de l„animer et il est probable qu“il… se défendra.{#giantsk_s15_1}'

    menu:
        'Consulte le Manuel des Ossements et des Cendres pour savoir si tu peux comprendre comment les briser.{#giantsk_s15_r64298}':
            # a81 # r64298
            jump giantsk_s16

        'Ne touche pas aux runes et examine à nouveau le squelette.{#giantsk_s15_r64299}':
            # a82 # r64299
            jump giantsk_s4


# s16 # say64297
label giantsk_s16: # from 9.0 15.0
    nr 'D„après ce que tu peux comprendre du manuel, il semble que l“enchantement de protection ne concerne que la cuirasse. La magie nécromantique doit permettre au squelette de s„animer ; quant à l“enchantement de vigilance, c„est lui qui permet au squelette d“avoir une perception limitée de son environnement. Tu supposes que si tu détruis les enchantements du squelette, il l„interprétera comme une attaque… sauf s“il ne peut pas détecter ta présence.{#giantsk_s16_1}'

    menu:
        'Détruis les runes de protection d„abord, puis les runes de nécromancie et, enfin, celles de vigilance.{#giantsk_s16_r64300}':
            # a83 # r64300
            jump giantsk_s10

        'Détruis les runes de vigilance d„abord, puis les runes de nécromancie et, enfin, celles de protection.{#giantsk_s16_r64301}' if giantskLogic.r64301_condition():
            # a84 # r64301
            $ giantskLogic.r64301_action()
            jump giantsk_s11

        'Détruis les runes de vigilance d„abord, puis les runes de nécromancie et, enfin, celles de protection.{#giantsk_s16_r64302}' if giantskLogic.r64302_condition():
            # a85 # r64302
            $ giantskLogic.r64302_action()
            jump giantsk_s13

        'Ne touche pas aux runes et examine à nouveau le squelette.{#giantsk_s16_r64303}':
            # a86 # r64303
            jump giantsk_s4
