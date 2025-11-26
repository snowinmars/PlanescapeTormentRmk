init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.n1201_logic import N1201Logic
    n1201Logic = N1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DN1201.DLG
# ###


# s0 # say44993
label n1201_s0: # from 1.6 3.0 # IF ~  True()
    nr 'Cette note dégage une odeur atroce, et un étrange schéma a été dessiné sous le texte. On dirait qu„il t“indique de replier les quatre coins du morceau de papier vers le centre. Il y a toute une série de marques bizarres dans les coins : une en haut à droite, deux en bas à droite et trois en bas à gauche (aucune en haut à gauche).'

    menu:
        'Replie le coin du haut à droite vers le centre.':
            # a0 # r44994
            $ n1201Logic.r44994_action()
            jump n1201_s1

        'Replie le coin du bas à droite vers le centre.':
            # a1 # r44995
            $ n1201Logic.r44995_action()
            jump n1201_s1

        'Replie le coin du bas à gauche vers le centre.':
            # a2 # r44996
            $ n1201Logic.r44996_action()
            jump n1201_s1

        'Replie le coin du haut à gauche vers le centre.':
            # a3 # r44997
            $ n1201Logic.r44997_action()
            jump n1201_s1

        'Laisse la note de côté.':
            # a4 # r44998
            $ n1201Logic.r44998_action()
            jump n1201_dispose


# s1 # say44999
label n1201_s1: # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    nr 'Tu replies le coin de manière à ce que sa pointe touche le centre.'

    menu:
        'Replie le coin du haut à droite vers le centre.' if n1201Logic.r45000_condition():
            # a5 # r45000
            $ n1201Logic.r45000_action()
            jump n1201_s1

        'Replie le coin du bas à droite vers le centre.' if n1201Logic.r45001_condition():
            # a6 # r45001
            $ n1201Logic.r45001_action()
            jump n1201_s1

        'Replie le coin du bas à droite vers le centre.' if n1201Logic.r45002_condition():
            # a7 # r45002
            $ n1201Logic.r45002_action()
            jump n1201_s1

        'Replie le coin du bas à gauche vers le centre.' if n1201Logic.r45003_condition():
            # a8 # r45003
            $ n1201Logic.r45003_action()
            jump n1201_s1

        'Replie le coin du haut à gauche vers le centre.' if n1201Logic.r45004_condition():
            # a9 # r45004
            $ n1201Logic.r45004_action()
            jump n1201_s1

        'Replie le coin du haut à gauche vers le centre.' if n1201Logic.r45005_condition():
            # a10 # r45005
            jump n1201_s2

        'Déplie la note et recommence.':
            # a11 # r45006
            $ n1201Logic.r45006_action()
            jump n1201_s0

        'Déplie la note et laisse-la de côté.':
            # a12 # r45008
            $ n1201Logic.r45008_action()
            jump n1201_dispose


# s2 # say45015
label n1201_s2: # from 1.5
    nr 'Alors que tu plies le coin du haut à gauche vers le centre, tu vois que celui du haut à droite se déplie tout seul pour reprendre sa position initiale.'

    menu:
        'Replie le coin du haut à droite vers le centre.':
            # a13 # r45016
            jump n1201_s4

        'Replie le coin du bas à gauche vers l„intérieur.':
            # a14 # r45017
            $ n1201Logic.r45017_action()
            jump n1201_s3

        'Déplie la note et laisse-la de côté.':
            # a15 # r45018
            $ n1201Logic.r45018_action()
            jump n1201_dispose


# s3 # say45019
label n1201_s3: # from 2.1
    nr 'Quand tu replies le coin du bas à gauche vers l„intérieur, rien ne se produit pendant un instant, puis les deux autres coins se déplient d“eux-mêmes. Il ne se passe rien d„autre.'

    menu:
        'Inspecte une nouvelle fois la note.':
            # a16 # r45020
            jump n1201_s0

        'Laisse la note de côté.':
            # a17 # r45021
            jump n1201_dispose


# s4 # say45022
label n1201_s4: # from 2.0
    nr 'Lorsque tu replies le coin du haut à droite vers le centre, celui du bas à gauche se plie également de lui-même. Les quatre coins touchent désormais le centre. Au bout de quelques secondes, les quatre triangles ainsi réunis se soulèvent pour constituer une petite pyramide de papier.'

    menu:
        'Écarte les faces de la pyramide.':
            # a18 # r45023
            $ n1201Logic.r45023_action()
            jump n1201_s5


# s5 # say45024
label n1201_s5: # from 4.0
    nr 'Tu déplies les faces de la pyramide et le papier tombe en poussière pour te révéler une petite boucle d„oreille triangulaire qui luit de mille feux à la lumière.'

    menu:
        'Prends la boucle d„oreille triangulaire.':
            # a19 # r45025
            $ n1201Logic.r45025_action()
            jump n1201_dispose
