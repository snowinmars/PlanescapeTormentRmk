init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1096_logic import Zf1096Logic
    zf1096Logic = Zf1096Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1096.DLG
# ###


# s0 # say35082
label zf1096_s0: # - # IF ~  True()
    nr 'Ce cadavre de femme fait le tour de la salle, d„une dalle à l“autre. Ses cheveux sont ramassés en une longue tresse enroulée autour du cou tel un nœud coulant. Quelqu„un a marqué au pochoir le numéro “1096„ sur son front, et ses lèvres sont cousues ensemble.{#zf1096_s0_1}'

    menu:
        '"Hum… jolie tresse."{#zf1096_s0_r35083}' if zf1096Logic.r35083_condition():
            # a0 # r35083
            $ zf1096Logic.r35083_action()
            jump zf1096_s1

        '"Hum… jolie tresse."{#zf1096_s0_r35100}' if zf1096Logic.r35100_condition():
            # a1 # r35100
            jump zf1096_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zf1096_s0_r35101}' if zf1096Logic.r35101_condition():
            # a2 # r35101
            jump zf1096_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zf1096_s0_r35102}' if zf1096Logic.r35102_condition():
            # a3 # r35102
            jump zf1096_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf1096_s0_r35107}' if zf1096Logic.r35107_condition():
            # a4 # r35107
            jump morte_s342  # EXTERN

        'Laisse le cadavre tranquille.{#zf1096_s0_r35108}' if zf1096Logic.r35108_condition():
            # a5 # r35108
            jump morte_s342  # EXTERN

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf1096_s0_r35109}' if zf1096Logic.r35109_condition():
            # a6 # r35109
            jump zf1096_dispose

        'Laisse le cadavre tranquille.{#zf1096_s0_r35110}' if zf1096Logic.r35110_condition():
            # a7 # r35110
            jump zf1096_dispose

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf1096_s0_r35111}' if zf1096Logic.r35111_condition():
            # a8 # r35111
            jump zf1096_dispose

        'Laisse le cadavre tranquille.{#zf1096_s0_r35112}' if zf1096Logic.r35112_condition():
            # a9 # r35112
            jump zf1096_dispose


# s1 # say35084
label zf1096_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre ne réagit pas. Tu doutes même qu„il ait conscience de ta présence.{#zf1096_s1_1}'

    menu:
        '"Alors, au revoir."{#zf1096_s1_r35085}' if zf1096Logic.r35085_condition():
            # a10 # r35085
            jump morte_s342  # EXTERN

        '"Alors, au revoir."{#zf1096_s1_r35098}' if zf1096Logic.r35098_condition():
            # a11 # r35098
            jump zf1096_dispose

        '"Alors, au revoir."{#zf1096_s1_r35099}' if zf1096Logic.r35099_condition():
            # a12 # r35099
            jump zf1096_dispose


# s2 # say35103
label zf1096_s2: # from 0.3
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.{#zf1096_s2_1}'

    menu:
        '"Alors, au revoir."{#zf1096_s2_r35104}' if zf1096Logic.r35104_condition():
            # a13 # r35104
            jump morte_s342  # EXTERN

        '"Alors, au revoir."{#zf1096_s2_r35105}' if zf1096Logic.r35105_condition():
            # a14 # r35105
            jump zf1096_dispose

        '"Alors, au revoir."{#zf1096_s2_r35106}' if zf1096Logic.r35106_condition():
            # a15 # r35106
            jump zf1096_dispose


# s3 # say35113
label zf1096_s3: # - # IF ~  False()
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.{#zf1096_s3_1}'

    menu:
