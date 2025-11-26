init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s42_logic import S42Logic
    s42Logic = S42Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS42.DLG
# ###


# s0 # say6595
label s42_s0: # - # IF ~  True()
    nr 'Le squelette se retourne face à toi. Le numéro „42“ a été buriné sur son front et certains os, tels que les maxillaires et les articulations, ont été ficelés à l„aide de lanières de cuir. Une blouse noire recouvre le corps.'

    menu:
        '"Je *crois* que c„est le cadavre dont je me souvenais."' if s42Logic.r6612_condition():
            # a0 # r6612
            jump s42_s1

        '"Excuse-moi, tu n„aurais pas vu de squelettes errants dans le coin ?"':
            # a1 # r6613
            $ s42Logic.r6613_action()
            jump s42_s1

        '"Il faut que je te demande : pourquoi ce sarrau ? Je veux dire, ce n„est pas comme si tu avais quelque chose à cacher."' if s42Logic.r6614_condition():
            # a2 # r6614
            $ s42Logic.r6614_action()
            jump s42_s1

        '"Il faut que je te demande : pourquoi ce sarrau ? Je veux dire, ce n„est pas comme si tu avais quelque chose à cacher."' if s42Logic.r6615_condition():
            # a3 # r6615
            jump s42_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if s42Logic.r6616_condition():
            # a4 # r6616
            jump s42_s2

        'Examine attentivement le squelette.':
            # a5 # r6617
            $ s42Logic.r6617_action()
            jump s42_s3

        'Essaie de déboulonner les articulations du squelette.' if s42Logic.r6618_condition():
            # a6 # r6618
            $ s42Logic.r6618_action()
            jump morte_s110  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if s42Logic.r6619_condition():
            # a7 # r6619
            jump s42_s6

        'Essaie de déboulonner les articulations du squelette.' if s42Logic.r6620_condition():
            # a8 # r6620
            jump s42_s6

        '"Qu„est-ce que tu dis de ce squelette, Morte ? Ça t“ira comme corps ?"' if s42Logic.r6621_condition():
            # a9 # r6621
            jump s42_s1

        'Laisse le squelette tranquille.' if s42Logic.r6622_condition():
            # a10 # r6622
            jump morte_s111  # EXTERN

        'Laisse le squelette tranquille.' if s42Logic.r6623_condition():
            # a11 # r6623
            jump s42_dispose

        'Laisse le squelette tranquille.' if s42Logic.r6624_condition():
            # a12 # r6624
            jump s42_dispose


# s1 # say6596
label s42_s1: # from 0.0 0.1 0.2 0.3 0.9 3.0 3.3
    nr 'En entendant ta voix, le squelette se redresse brusquement. Il croise les bras sur sa poitrine et ses doigts sont enfoncés dans sa cage thoracique.'

    menu:
        'Croise les bras sur la poitrine.' if s42Logic.r6625_condition():
            # a13 # r6625
            jump s42_s4

        'Imite le geste… Attends de voir ce qui se passe.' if s42Logic.r6626_condition():
            # a14 # r6626
            jump s42_s9

        '"Euh…"':
            # a15 # r6627
            jump s42_s10

        'Laisse le squelette tranquille.':
            # a16 # r6628
            jump s42_dispose


# s2 # say6597
label s42_s2: # from 0.4
    nr 'Ce squelette ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:
        'Laisse le squelette tranquille.' if s42Logic.r6629_condition():
            # a17 # r6629
            $ s42Logic.r6629_action()
            jump morte_s111  # EXTERN

        'Laisse le squelette tranquille.' if s42Logic.r6630_condition():
            # a18 # r6630
            jump s42_dispose

        'Laisse le squelette tranquille.' if s42Logic.r6631_condition():
            # a19 # r6631
            jump s42_dispose


# s3 # say6598
label s42_s3: # from 0.5 10.2
    nr 'Tu t„étonnes que ce tas d“os soit toujours en une seule pièce. Il est recouvert de plâtre et de plusieurs couches de colle puante… Le peu que tu peux voir de ce tas d„ossements révèle des centaines de fêlures. Bien que quelqu“un ait pris la peine d„envelopper ce squelette dans des lanières de cuir et de renforcer les articulations à l“aide de boulons, l„ensemble paraît sur le point de s“écrouler.'

    menu:
        '"Je *crois* que c„est le cadavre dont je me souvenais."' if s42Logic.r63495_condition():
            # a20 # r63495
            jump s42_s1

        'Essaie de déboulonner les articulations du squelette.' if s42Logic.r6632_condition():
            # a21 # r6632
            $ s42Logic.r6632_action()
            jump morte_s110  # EXTERN

        'Essaie de déboulonner les articulations du squelette.' if s42Logic.r6633_condition():
            # a22 # r6633
            jump s42_s6

        '"Je peux emprunter quelques sangles et boulons ?"' if s42Logic.r6634_condition():
            # a23 # r6634
            jump s42_s1

        'Laisse le squelette tranquille.' if s42Logic.r6635_condition():
            # a24 # r6635
            $ s42Logic.r6635_action()
            jump morte_s111  # EXTERN

        'Laisse le squelette tranquille.' if s42Logic.r6636_condition():
            # a25 # r6636
            jump s42_dispose

        'Laisse le squelette tranquille.' if s42Logic.r6637_condition():
            # a26 # r6637
            jump s42_dispose


# s4 # say6599
label s42_s4: # from 1.0 12.0
    nr 'En guise de réponse, le squelette laisse tomber ses bras. Les lanières de cuir qui maintenaient le torse se rompent et la cage thoracique s„ouvre telle une porte battante.'

    menu:
        'Va jusqu„à la cage thoracique et fouille.':
            # a27 # r6638
            jump s42_s5

        'Laisse le squelette tranquille.':
            # a28 # r6639
            jump s42_dispose


# s5 # say6600
label s42_s5: # from 4.0 9.0
    nr 'À ta grande surprise, ta main disparaît lorsque tu l„introduis dans la cage thoracique… tu as l“étrange impression qu„elle se trouve *ailleurs*. Une fois à l“intérieur de la cage thoracique, elle se cogne contre un objet invisible. Gros comme un poing, ce dernier semble relié à la colonne vertébrale du squelette.'

    menu:
        'Prends l„objet.':
            # a29 # r6640
            $ s42Logic.r6640_action()
            jump s42_s7

        'Laisse le squelette tranquille.':
            # a30 # r6641
            jump s42_dispose


# s6 # say6601
label s42_s6: # from 0.7 0.8 3.2
    nr 'Les boulons sortent facilement des articulations. Le squelette s„effondre, tandis que certains os continuent de bouger.'

    menu:
        '"Excuse-moi, Sac d„os…"':
            # a31 # r6642
            $ s42Logic.r6642_action()
            jump s42_dispose


# s7 # say6602
label s42_s7: # from 5.0
    nr 'Lorsque tu retires l„objet, le squelette se désintègre soudain, et les boulons qui maintenaient les articulations tombent bruyamment par terre. Quel que soit cet objet, il semble que c“était le seul élément qui maintenait l„ensemble.'

    menu:
        'Examine l„objet.' if s42Logic.r6643_condition():
            # a32 # r6643
            jump s42_s8

        'Examine l„objet.' if s42Logic.r6644_condition():
            # a33 # r6644
            jump s42_s8


# s8 # say6603
label s42_s8: # from 7.0 7.1
    nr 'On dirait un morceau de fer quelconque. Impossible d„imaginer pourquoi quelqu“un voudrait le cacher dans la cage thoracique d„un squelette.'

    menu:
        'Examine le morceau de fer.':
            # a34 # r6645
            $ s42Logic.r6645_action()
            jump s42_s14


# s9 # say6604
label s42_s9: # from 1.1 12.1
    nr 'En guise de réponse, le squelette laisse tomber ses bras. Les lanières de cuir qui maintenaient le torse se rompent et la cage thoracique s„ouvre telle une porte battante. Sans pouvoir l“expliquer, il te prend une envie soudaine de mettre la main dans la cage thoracique.'

    menu:
        'Va jusqu„à la cage thoracique et fouille.':
            # a35 # r6646
            jump s42_s5

        'Laisse le squelette tranquille.':
            # a36 # r6647
            jump s42_dispose


# s10 # say6605
label s42_s10: # from 1.2 12.2
    nr 'Les bras du squelette retombent.'

    menu:
        '"Euh… bonjour ?"' if s42Logic.r6648_condition():
            # a37 # r6648
            jump s42_s12

        '"Euh… bonjour ?"' if s42Logic.r6649_condition():
            # a38 # r6649
            jump s42_s13

        'Examine attentivement le squelette.':
            # a39 # r6650
            $ s42Logic.r6650_action()
            jump s42_s3

        'Laisse le squelette tranquille.':
            # a40 # r6651
            jump s42_dispose


# s11 # say6606
label s42_s11: # -
    nr 'On dirait un morceau de fer quelconque. Ton incarnation précédente doit avoir eu intérêt à le cacher à cet endroit.'

    menu:
        'Examine ce morceau de fer attentivement.':
            # a41 # r6652
            $ s42Logic.r6652_action()
            jump s42_s14


# s12 # say6607
label s42_s12: # from 10.0
    nr 'Le squelette croise de nouveau les bras sur sa poitrine.'

    menu:
        'Croise les bras sur la poitrine.' if s42Logic.r6653_condition():
            # a42 # r6653
            jump s42_s4

        'Imite le geste… Attends de voir ce qui se passe.' if s42Logic.r6654_condition():
            # a43 # r6654
            jump s42_s9

        '"Euh…"':
            # a44 # r6655
            jump s42_s10

        'Laisse le squelette tranquille.':
            # a45 # r6656
            jump s42_dispose


# s13 # say6608
label s42_s13: # from 10.1
    nr 'Le squelette croise de nouveau les bras sur sa poitrine.'

    jump morte_s112  # EXTERN


# s14 # say58983
label s42_s14: # from 8.0 11.0
    nr 'Lorsque que tu mets tes mains sur le morceau métallique pour l„examiner, un *hssssss* se produit, et le métal s“évapore, laissant derrière une étrange dague, une poignée de pièces enrobées dans un chiffon crasseux, et deux larmes de sang. On dirait que tout cela se trouvait *à l„intérieur* du morceau de fer.'

    menu:
        'Prends les objets et pars.':
            # a46 # r58984
            $ s42Logic.r58984_action()
            jump s42_dispose
