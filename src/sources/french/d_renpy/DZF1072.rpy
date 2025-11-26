init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1072_logic import Zf1072Logic
    zf1072Logic = Zf1072Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1072.DLG
# ###


# s0 # say35114
label zf1072_s0: # - # IF ~  True()
    nr 'L„odeur de formol qui se dégage de ce cadavre de femme est particulièrement forte… On a dû l“appliquer récemment… heureusement d„ailleurs, car le cadavre semble avoir atteint un stade de décomposition avancé. Sa mâchoire manque et la chair a en partie disparu du crâne, laissant apparaître le numéro “1072„ buriné dans l“os.'

    menu:
        '"Celle-là, elle a dû connaître des jours meilleurs…"' if zf1072Logic.r35115_condition():
            # a0 # r35115
            $ zf1072Logic.r35115_action()
            jump zf1072_s1

        '"Celle-là, elle a dû connaître des jours meilleurs…"' if zf1072Logic.r35132_condition():
            # a1 # r35132
            jump zf1072_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zf1072Logic.r35133_condition():
            # a2 # r35133
            jump zf1072_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zf1072Logic.r35134_condition():
            # a3 # r35134
            jump zf1072_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."' if zf1072Logic.r35139_condition():
            # a4 # r35139
            jump morte_s346  # EXTERN

        'Laisse le cadavre tranquille.' if zf1072Logic.r35140_condition():
            # a5 # r35140
            jump morte_s346  # EXTERN

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."' if zf1072Logic.r35141_condition():
            # a6 # r35141
            jump zf1072_dispose

        'Laisse le cadavre tranquille.' if zf1072Logic.r35142_condition():
            # a7 # r35142
            jump zf1072_dispose

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."' if zf1072Logic.r35143_condition():
            # a8 # r35143
            jump zf1072_dispose

        'Laisse le cadavre tranquille.' if zf1072Logic.r35144_condition():
            # a9 # r35144
            jump zf1072_dispose


# s1 # say35116
label zf1072_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre ne réagit pas à ta voix. L„absence de mâchoire y est peut-être pour quelque chose… à moins qu“il n„ait tout simplement rien à dire.'

    menu:
        '"Alors, au revoir."' if zf1072Logic.r35117_condition():
            # a10 # r35117
            jump morte_s346  # EXTERN

        '"Alors, au revoir."' if zf1072Logic.r35130_condition():
            # a11 # r35130
            jump zf1072_dispose

        '"Alors, au revoir."' if zf1072Logic.r35131_condition():
            # a12 # r35131
            jump zf1072_dispose


# s2 # say35135
label zf1072_s2: # from 0.3
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.'

    menu:
        '"Alors, au revoir."' if zf1072Logic.r35136_condition():
            # a13 # r35136
            jump morte_s346  # EXTERN

        '"Alors, au revoir."' if zf1072Logic.r35137_condition():
            # a14 # r35137
            jump zf1072_dispose

        '"Alors, au revoir."' if zf1072Logic.r35138_condition():
            # a15 # r35138
            jump zf1072_dispose


# s3 # say35145
label zf1072_s3: # - # IF ~  False()
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.'

    menu:
