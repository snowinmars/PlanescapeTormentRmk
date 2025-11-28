init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm965_logic import Zm965Logic
    zm965Logic = Zm965Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM965.DLG
# ###


# s0 # say34920
label zm965_s0: # - # IF ~  NearbyDialog("Dmorte")
    nr 'Ce cadavre suit d„un pas lourd un chemin triangulaire. Quand il atteint l“un des angles du triangle, il s„arrête, tourne et continue en titubant jusqu“à l„angle suivant. Il porte le numéro “965„ tatoué sur le côté du crâne. À ton approche, il s“interrompt et te dévisage.{#zm965_s0_1}'

    jump morte_s477  # EXTERN


# s1 # say34922
label zm965_s1: # externs morte_s481 morte_s480 # IF ~  !NearbyDialog("Dmorte")
    nr 'Ce cadavre suit d„un pas lourd un chemin triangulaire. Quand il atteint l“un des angles du triangle, il s„arrête, tourne et continue en titubant jusqu“à l„angle suivant. Il porte le numéro “965„ tatoué sur le côté du crâne. À ton approche, il s“interrompt et te dévisage.{#zm965_s1_1}'

    menu:
        '"Mais… pourquoi tu marches dans un triangle ?"{#zm965_s1_r34923}' if zm965Logic.r34923_condition():
            # a0 # r34923
            $ zm965Logic.r34923_action()
            jump zm965_s2

        '"Mais… pourquoi tu marches dans un triangle ?"{#zm965_s1_r45070}' if zm965Logic.r45070_condition():
            # a1 # r45070
            jump zm965_s2

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm965_s1_r45071}' if zm965Logic.r45071_condition():
            # a2 # r45071
            jump zm965_s2

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm965_s1_r45072}' if zm965Logic.r45072_condition():
            # a3 # r45072
            jump zm965_s3

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm965_s1_r45073}':
            # a4 # r45073
            jump zm965_dispose

        'Laisse le cadavre tranquille.{#zm965_s1_r45074}':
            # a5 # r45074
            jump zm965_dispose


# s2 # say34927
label zm965_s2: # from 1.0 1.1 1.2
    nr 'Le cadavre te fixe d„un regard vide.{#zm965_s2_1}'

    menu:
        'Laisse le cadavre tranquille.{#zm965_s2_r34928}':
            # a6 # r34928
            jump zm965_dispose


# s3 # say45069
label zm965_s3: # from 1.3
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.{#zm965_s3_1}'

    menu:
        'Laisse le cadavre tranquille.{#zm965_s3_r45075}':
            # a7 # r45075
            jump zm965_dispose
