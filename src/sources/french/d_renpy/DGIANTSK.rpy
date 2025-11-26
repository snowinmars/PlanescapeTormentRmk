init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.giantsk_logic import GiantskLogic
    giantskLogic = GiantskLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DGIANTSK.DLG
# ###


# s0 # say292
label giantsk_s0: # - # IF ~  True()
    nr 'Devant toi se tient un squelette géant en armure de bronze ornée et boulonnée directement dans son ossature. Des symboles travaillés sont gravés sur le plastron. Tu te demandes d„où vient le squelette. Tu ignorais l“existence d„humains de cette taille. L“énorme lame dans sa main semble être aussi lourde qu„une charrette.'

    menu:
        '"Tu veux bien que je tienne cette lame une seconde ? Tu dois en avoir assez de la porter."':
            # a0 # r293
            $ giantskLogic.r293_action()
            jump giantsk_s1

        '"Bon, ça fait combien de temps que tu es ici ? Longtemps ?"':
            # a1 # r1165
            $ giantskLogic.r1165_action()
            jump giantsk_s1

        'Examine le squelette géant… attentivement.':
            # a2 # r3996
            jump giantsk_s4

        'Voyons si tu réussis à lever les enchantements entrelacés dans le plastron du squelette.' if giantskLogic.r3997_condition():
            # a3 # r3997
            jump giantsk_s9

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r3998_condition():
            # a4 # r3998
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r3999_condition():
            # a5 # r3999
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4000_condition():
            # a6 # r4000
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4001_condition():
            # a7 # r4001
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"' if giantskLogic.r4002_condition():
            # a8 # r4002
            jump morte_s73  # EXTERN

        'Utilise Histoires-Os-Conter sur le cadavre.' if giantskLogic.r4003_condition():
            # a9 # r4003
            jump giantsk_s1

        'Laisse le squelette tranquille.':
            # a10 # r4004
            jump giantsk_dispose


# s1 # say1166
label giantsk_s1: # from 0.0 0.1 0.9 # IF ~  False()
    nr 'Le squelette a l„air mort depuis trop longtemps pour pouvoir répondre à tes questions. Ou bien sa tête est trop haute pour qu“il puisse t„entendre.'

    menu:
        'Examine le squelette géant… attentivement.':
            # a11 # r1167
            jump giantsk_s4

        'Voyons si tu réussis à lever les enchantements entrelacés dans le plastron du squelette.' if giantskLogic.r4035_condition():
            # a12 # r4035
            jump giantsk_s9

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4036_condition():
            # a13 # r4036
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4037_condition():
            # a14 # r4037
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4038_condition():
            # a15 # r4038
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4039_condition():
            # a16 # r4039
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"' if giantskLogic.r4040_condition():
            # a17 # r4040
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.':
            # a18 # r4041
            jump giantsk_dispose


# s2 # say4005
label giantsk_s2: # from 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
    nr 'Au moment où tu touches le squelette, une cloche en fer résonne dans toute la Morgue… aussi vite que l„éclair, le squelette se réveille et lève sa lame, prêt à frapper !'

    menu:
        '"Tu vas regretter de ne plus être mort, Os…"':
            # a19 # r4042
            $ giantskLogic.r4042_action()
            jump giantsk_dispose


# s3 # say4006
label giantsk_s3: # from 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
    nr 'Tu étais prêt à agir quand soudain tu t„arrêtes… Les symboles gravés sur le plastron de l“armure du squelette attirent ton regard. Si ces squelettes sont des gardes, alors tu risques de les déranger et… de les réveiller.'

    menu:
        '"C„est un risque que je suis prêt à prendre…"':
            # a20 # r4043
            jump giantsk_s2

        'Examine le squelette géant… attentivement.':
            # a21 # r4044
            jump giantsk_s4

        'Laisse le squelette tranquille.':
            # a22 # r4046
            jump giantsk_dispose


# s4 # say4007
label giantsk_s4: # from 0.2 1.0 3.1 7.1 15.1 16.3
    nr 'L„armure en bronze ornée est rivée dans la cage thoracique du squelette avec une série de boulons en fer. Les épaulières aussi. Tu observes la charpente derrière l“armure et tu remarques que des boulons en fer similaires sont placés dans les articulations de l„épaule, du coude, de la hanche et du genou. Des cordons épais en cuir et des cordes nouées descendent le long des bras et des jambes du squelette. Ils ressemblent à des muscles et des tendons.'

    menu:
        'Examine l„armure.':
            # a23 # r4045
            jump giantsk_s5

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4048_condition():
            # a24 # r4048
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4049_condition():
            # a25 # r4049
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4050_condition():
            # a26 # r4050
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4051_condition():
            # a27 # r4051
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"' if giantskLogic.r4052_condition():
            # a28 # r4052
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.':
            # a29 # r4053
            jump giantsk_dispose


# s5 # say4008
label giantsk_s5: # from 4.0
    nr 'Malgré son ancienneté, l„armure a l“air bien conservée. Elle brille et les symboles gravés sur le plastron semblent vaciller à la lueur du feu, échappant à ton regard chaque fois que tu veux les observer.'

    menu:
        'Étudie les symboles.' if giantskLogic.r4054_condition():
            # a30 # r4054
            jump giantsk_s6

        'Étudie les symboles.' if giantskLogic.r4055_condition():
            # a31 # r4055
            jump giantsk_s6

        'Examine les symboles.' if giantskLogic.r64293_condition():
            # a32 # r64293
            jump giantsk_s7

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4056_condition():
            # a33 # r4056
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4057_condition():
            # a34 # r4057
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4058_condition():
            # a35 # r4058
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4059_condition():
            # a36 # r4059
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"' if giantskLogic.r4060_condition():
            # a37 # r4060
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.':
            # a38 # r4061
            jump giantsk_dispose


# s6 # say4009
label giantsk_s6: # from 5.0 5.1
    nr 'Presque inconsciemment, tu poses les yeux sur les symboles. Après un instant, les symboles cessent de vaciller et se concentrent en un tracé de runes qui court des pieds à la tête du plastron. Bizarrement, l„enchevêtrement des runes te rappelle une chaîne… et tu te souviens que ces runes sont une sorte de protection contre l“enchantement.'

    menu:
        'Étudie les runes, essaie de te souvenir de l„enchantement.' if giantskLogic.r4062_condition():
            # a39 # r4062
            jump giantsk_s8

        'Étudie les runes, essaie de te souvenir de l„enchantement.' if giantskLogic.r4063_condition():
            # a40 # r4063
            jump giantsk_s7

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4064_condition():
            # a41 # r4064
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4065_condition():
            # a42 # r4065
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4066_condition():
            # a43 # r4066
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4067_condition():
            # a44 # r4067
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"' if giantskLogic.r4068_condition():
            # a45 # r4068
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.':
            # a46 # r4069
            jump giantsk_dispose


# s7 # say4010
label giantsk_s7: # from 5.2 6.1 7.2
    nr 'Tu observes les runes pendant un moment mais tu ne réussis pas à déchiffrer l„enchantement. Il a l“air compliqué. Tu as du mal à te concentrer.'

    menu:
        'Compare les runes avec celles du Manuel des Ossements et des Cendres.' if giantskLogic.r64294_condition():
            # a47 # r64294
            jump giantsk_s15

        'Examine de nouveau le squelette.':
            # a48 # r4070
            jump giantsk_s4

        'Examine de nouveau les runes.':
            # a49 # r4071
            jump giantsk_s7

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4072_condition():
            # a50 # r4072
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4073_condition():
            # a51 # r4073
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4074_condition():
            # a52 # r4074
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4075_condition():
            # a53 # r4075
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"' if giantskLogic.r4076_condition():
            # a54 # r4076
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.':
            # a55 # r4077
            jump giantsk_dispose


# s8 # say4011
label giantsk_s8: # from 6.0
    nr 'Tu observes la trame des runes pendant qu„elles se tissent un chemin sur le plastron. Au niveau le plus simple, les runes sont un enchantement d“armure mineur ; mais plusieurs runes en forme de crâne et des dessins sphériques le long des bords de l„armure te font suspecter des enchantements nécromantiques et des protections majeures, tissés à l“intérieur. Si tu touchais le squelette, tu le réveillerais… et il se défendrait.'

    menu:
        'Essaie de trouver un moyen de lever les enchantements.' if giantskLogic.r4079_condition():
            # a56 # r4079
            $ giantskLogic.r4079_action()
            jump giantsk_s9

        'Essaie de trouver un moyen de lever les enchantements.' if giantskLogic.r4080_condition():
            # a57 # r4080
            jump giantsk_s9

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4081_condition():
            # a58 # r4081
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4082_condition():
            # a59 # r4082
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4083_condition():
            # a60 # r4083
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4084_condition():
            # a61 # r4084
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"' if giantskLogic.r4085_condition():
            # a62 # r4085
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.':
            # a63 # r4078
            jump giantsk_dispose


# s9 # say4012
label giantsk_s9: # from 0.3 1.1 8.0 8.1
    nr 'Tu penses que le fait de casser la structure des runes sur le plastron permettrait de briser l„enchantement, mais ça a l“air difficile… la structure est compliquée, et le squelette pourrait se réveiller si tu éraflais la mauvaise partie.'

    menu:
        'Compare les motifs avec les enchantements du Manuel des Ossements et des Cendres pour savoir si tu peux comprendre comment les briser.' if giantskLogic.r64296_condition():
            # a64 # r64296
            jump giantsk_s16

        'Désactive les runes en commençant par l„enchantement d“armure, puis la nécromancie, et enfin l„enchantement de défense.':
            # a65 # r4086
            jump giantsk_s10

        'Désactive les runes en commençant par l„enchantement de défense, puis reviens en arrière jusqu“au motif de runes, en annulant la nécromancie, puis l„enchantement d“armure.' if giantskLogic.r4087_condition():
            # a66 # r4087
            $ giantskLogic.r4087_action()
            jump giantsk_s11

        'Désactive les runes en commençant par l„enchantement de défense, puis reviens en arrière jusqu“au motif de runes, en annulant la nécromancie, puis l„enchantement d“armure.' if giantskLogic.r4088_condition():
            # a67 # r4088
            $ giantskLogic.r4088_action()
            jump giantsk_s13

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4089_condition():
            # a68 # r4089
            jump giantsk_s2

        'Essaie de prendre la lame des mains du squelette.' if giantskLogic.r4090_condition():
            # a69 # r4090
            jump giantsk_s3

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4091_condition():
            # a70 # r4091
            jump giantsk_s2

        'Essaie d„enlever les boulons fixés sur l“armure du squelette.' if giantskLogic.r4092_condition():
            # a71 # r4092
            jump giantsk_s3

        '"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu„on pourra s“en servir de corps ?"' if giantskLogic.r4093_condition():
            # a72 # r4093
            jump morte_s73  # EXTERN

        'Laisse le squelette tranquille.':
            # a73 # r4094
            jump giantsk_dispose


# s10 # say4013
label giantsk_s10: # from 9.1 16.0
    nr 'Tu commences à travailler sur les runes qui décorent le plastron. Soudain, une cloche résonne dans toute la Morgue… aussi vite que l„éclair, le squelette se réveille et lève sa lame, prêt à frapper !'

    menu:
        '"Tu vas regretter de ne plus être mort, Os…"':
            # a74 # r4095
            $ giantskLogic.r4095_action()
            jump giantsk_dispose


# s11 # say4014
label giantsk_s11: # from 9.2 16.1
    nr 'Le travail est difficile et nerveusement éprouvant. Lentement, ton esprit se concentre et les runes se brisent sous ton attaque. En quelques minutes, le squelette géant est libéré des enchantements qui l„emprisonnaient. Il s“effondre sur le sol dans un fracas d„ossements !'

    menu:
        '"Fichu tas d„os… !"':
            # a75 # r4096
            $ giantskLogic.r4096_action()
            jump giantsk_s12


# s12 # say4015
label giantsk_s12: # from 11.0
    nr 'Tu attends un moment, mais personne ne répond à ce bruit. Rapidement, tu passes au crible les os du squelette sur le sol. La plupart sont trop lourds ou trop vieux pour être utilisés. Mais tu découvres un morceau du plastron portant la majorité des enchantements brisés. Tu as le sentiment qu„il pourra t“être utile.'

    menu:
        '"Alors, je vais prendre ça…"':
            # a76 # r4097
            $ giantskLogic.r4097_action()
            jump giantsk_dispose


# s13 # say4016
label giantsk_s13: # from 9.3 16.2
    nr 'Cette fois, briser l„enchantement a été plus facile. Les runes se sont rapidement défaites sous ton attaque. En quelques minutes, le squelette géant est libéré des enchantements qui l“emprisonnaient. Fort de ton expérience, tu rattrapes le squelette avant qu„il ne tombe. Dans un grognement, tu le poses à terre.'

    menu:
        '"Voyons ce que nous avons cette fois…"':
            # a77 # r4098
            $ giantskLogic.r4098_action()
            jump giantsk_s14


# s14 # say4017
label giantsk_s14: # from 13.0
    nr 'Rapidement, tu fouilles dans les restes du squelette. À nouveau, tu trouves un morceau du plastron. Comme le premier, il porte un fragment de l„enchantement brisé. Cela pourra être utile.'

    menu:
        '"Alors, je vais prendre ça…"' if giantskLogic.r4099_condition():
            # a78 # r4099
            $ giantskLogic.r4099_action()
            jump giantsk_dispose

        '"Alors, je vais prendre ça…"' if giantskLogic.r4100_condition():
            # a79 # r4100
            $ giantskLogic.r4100_action()
            jump giantsk_dispose

        '"Alors, je vais prendre ça…"' if giantskLogic.r4101_condition():
            # a80 # r4101
            $ giantskLogic.r4101_action()
            jump giantsk_dispose


# s15 # say64295
label giantsk_s15: # from 7.0
    nr 'Tu consultes le livre et tu compares les diagrammes aux marques sur la cuirasse. Autant que tu puisses en juger, les runes sont un enchantement de protection mineur. Mais plusieurs runes en forme de crâne et des marques sphériques sur les côtés de l„armure laissent penser qu“on a utilisé aussi plusieurs enchantements de nécromancie et de vigilance très puissants. Toucher le squelette risque certainement de l„animer et il est probable qu“il… se défendra.'

    menu:
        'Consulte le Manuel des Ossements et des Cendres pour savoir si tu peux comprendre comment les briser.':
            # a81 # r64298
            jump giantsk_s16

        'Ne touche pas aux runes et examine à nouveau le squelette.':
            # a82 # r64299
            jump giantsk_s4


# s16 # say64297
label giantsk_s16: # from 9.0 15.0
    nr 'D„après ce que tu peux comprendre du manuel, il semble que l“enchantement de protection ne concerne que la cuirasse. La magie nécromantique doit permettre au squelette de s„animer ; quant à l“enchantement de vigilance, c„est lui qui permet au squelette d“avoir une perception limitée de son environnement. Tu supposes que si tu détruis les enchantements du squelette, il l„interprétera comme une attaque… sauf s“il ne peut pas détecter ta présence.'

    menu:
        'Détruis les runes de protection d„abord, puis les runes de nécromancie et, enfin, celles de vigilance.':
            # a83 # r64300
            jump giantsk_s10

        'Détruis les runes de vigilance d„abord, puis les runes de nécromancie et, enfin, celles de protection.' if giantskLogic.r64301_condition():
            # a84 # r64301
            $ giantskLogic.r64301_action()
            jump giantsk_s11

        'Détruis les runes de vigilance d„abord, puis les runes de nécromancie et, enfin, celles de protection.' if giantskLogic.r64302_condition():
            # a85 # r64302
            $ giantskLogic.r64302_action()
            jump giantsk_s13

        'Ne touche pas aux runes et examine à nouveau le squelette.':
            # a86 # r64303
            jump giantsk_s4
