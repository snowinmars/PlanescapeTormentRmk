init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.n1201_logic import N1201Logic
    n1201Logic = N1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DN1201.DLG
# ###


# s0 # say44993
label n1201_s0: # from 1.6 3.0 # IF ~  True()
    nr 'Cette note dégage une odeur atroce, et un étrange schéma a été dessiné sous le texte. On dirait qu„il t“indique de replier les quatre coins du morceau de papier vers le centre. Il y a toute une série de marques bizarres dans les coins : une en haut à droite, deux en bas à droite et trois en bas à gauche (aucune en haut à gauche).{#n1201_s0_1}'

    menu:
        'Replie le coin du haut à droite vers le centre.{#n1201_s0_r44994}':
            # a0 # r44994
            $ n1201Logic.r44994_action()
            jump n1201_s1

        'Replie le coin du bas à droite vers le centre.{#n1201_s0_r44995}':
            # a1 # r44995
            $ n1201Logic.r44995_action()
            jump n1201_s1

        'Replie le coin du bas à gauche vers le centre.{#n1201_s0_r44996}':
            # a2 # r44996
            $ n1201Logic.r44996_action()
            jump n1201_s1

        'Replie le coin du haut à gauche vers le centre.{#n1201_s0_r44997}':
            # a3 # r44997
            $ n1201Logic.r44997_action()
            jump n1201_s1

        'Laisse la note de côté.{#n1201_s0_r44998}':
            # a4 # r44998
            $ n1201Logic.r44998_action()
            jump n1201_dispose


# s1 # say44999
label n1201_s1: # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    nr 'Tu replies le coin de manière à ce que sa pointe touche le centre.{#n1201_s1_1}'

    menu:
        'Replie le coin du haut à droite vers le centre.{#n1201_s1_r45000}' if n1201Logic.r45000_condition():
            # a5 # r45000
            $ n1201Logic.r45000_action()
            jump n1201_s1

        'Replie le coin du bas à droite vers le centre.{#n1201_s1_r45001}' if n1201Logic.r45001_condition():
            # a6 # r45001
            $ n1201Logic.r45001_action()
            jump n1201_s1

        'Replie le coin du bas à droite vers le centre.{#n1201_s1_r45002}' if n1201Logic.r45002_condition():
            # a7 # r45002
            $ n1201Logic.r45002_action()
            jump n1201_s1

        'Replie le coin du bas à gauche vers le centre.{#n1201_s1_r45003}' if n1201Logic.r45003_condition():
            # a8 # r45003
            $ n1201Logic.r45003_action()
            jump n1201_s1

        'Replie le coin du haut à gauche vers le centre.{#n1201_s1_r45004}' if n1201Logic.r45004_condition():
            # a9 # r45004
            $ n1201Logic.r45004_action()
            jump n1201_s1

        'Replie le coin du haut à gauche vers le centre.{#n1201_s1_r45005}' if n1201Logic.r45005_condition():
            # a10 # r45005
            jump n1201_s2

        'Déplie la note et recommence.{#n1201_s1_r45006}':
            # a11 # r45006
            $ n1201Logic.r45006_action()
            jump n1201_s0

        'Déplie la note et laisse-la de côté.{#n1201_s1_r45008}':
            # a12 # r45008
            $ n1201Logic.r45008_action()
            jump n1201_dispose


# s2 # say45015
label n1201_s2: # from 1.5
    nr 'Alors que tu plies le coin du haut à gauche vers le centre, tu vois que celui du haut à droite se déplie tout seul pour reprendre sa position initiale.{#n1201_s2_1}'

    menu:
        'Replie le coin du haut à droite vers le centre.{#n1201_s2_r45016}':
            # a13 # r45016
            jump n1201_s4

        'Replie le coin du bas à gauche vers l„intérieur.{#n1201_s2_r45017}':
            # a14 # r45017
            $ n1201Logic.r45017_action()
            jump n1201_s3

        'Déplie la note et laisse-la de côté.{#n1201_s2_r45018}':
            # a15 # r45018
            $ n1201Logic.r45018_action()
            jump n1201_dispose


# s3 # say45019
label n1201_s3: # from 2.1
    nr 'Quand tu replies le coin du bas à gauche vers l„intérieur, rien ne se produit pendant un instant, puis les deux autres coins se déplient d“eux-mêmes. Il ne se passe rien d„autre.{#n1201_s3_1}'

    menu:
        'Inspecte une nouvelle fois la note.{#n1201_s3_r45020}':
            # a16 # r45020
            jump n1201_s0

        'Laisse la note de côté.{#n1201_s3_r45021}':
            # a17 # r45021
            jump n1201_dispose


# s4 # say45022
label n1201_s4: # from 2.0
    nr 'Lorsque tu replies le coin du haut à droite vers le centre, celui du bas à gauche se plie également de lui-même. Les quatre coins touchent désormais le centre. Au bout de quelques secondes, les quatre triangles ainsi réunis se soulèvent pour constituer une petite pyramide de papier.{#n1201_s4_1}'

    menu:
        'Écarte les faces de la pyramide.{#n1201_s4_r45023}':
            # a18 # r45023
            $ n1201Logic.r45023_action()
            jump n1201_s5


# s5 # say45024
label n1201_s5: # from 4.0
    nr 'Tu déplies les faces de la pyramide et le papier tombe en poussière pour te révéler une petite boucle d„oreille triangulaire qui luit de mille feux à la lumière.{#n1201_s5_1}'

    menu:
        'Prends la boucle d„oreille triangulaire.{#n1201_s5_r45025}':
            # a19 # r45025
            $ n1201Logic.r45025_action()
            jump n1201_dispose
