init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


# s0 # say35050
label zf626_s0: # - # IF ~  True()
    nr 'Le côté gauche du visage de cette femme semble s„être enfoncé sous des coups de gourdin, et ses chairs meurtries et boursouflées pendent lamentablement sur son crâne. Le numéro “626„ est cousu sur la joue droite, juste sous l“œil.'

    menu:
        '"Hum… sale blessure que t„as là."' if zf626Logic.r35051_condition():
            # a0 # r35051
            $ zf626Logic.r35051_action()
            jump zf626_s1

        '"Hum… sale blessure que t„as là."' if zf626Logic.r35068_condition():
            # a1 # r35068
            jump zf626_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zf626Logic.r35069_condition():
            # a2 # r35069
            jump zf626_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zf626Logic.r35070_condition():
            # a3 # r35070
            jump zf626_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."' if zf626Logic.r35075_condition():
            # a4 # r35075
            jump morte_s338  # EXTERN

        'Laisse le cadavre tranquille.' if zf626Logic.r35076_condition():
            # a5 # r35076
            jump morte_s338  # EXTERN

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."' if zf626Logic.r35077_condition():
            # a6 # r35077
            jump zf626_dispose

        'Laisse le cadavre tranquille.' if zf626Logic.r35078_condition():
            # a7 # r35078
            jump zf626_dispose

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."' if zf626Logic.r35079_condition():
            # a8 # r35079
            jump zf626_dispose

        'Laisse le cadavre tranquille.' if zf626Logic.r35080_condition():
            # a9 # r35080
            jump zf626_dispose


# s1 # say35052
label zf626_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue de te regarder fixement de son œil valide.'

    menu:
        '"Alors, au revoir."' if zf626Logic.r35053_condition():
            # a10 # r35053
            jump morte_s338  # EXTERN

        '"Alors, au revoir."' if zf626Logic.r35066_condition():
            # a11 # r35066
            jump zf626_dispose

        '"Alors, au revoir."' if zf626Logic.r35067_condition():
            # a12 # r35067
            jump zf626_dispose


# s2 # say35071
label zf626_s2: # from 0.3
    nr 'Ce cadavre ne bouge pas… Comme s„il était déjà trop abîmé pour répondre à tes questions.'

    menu:
        '"Alors, au revoir."' if zf626Logic.r35072_condition():
            # a13 # r35072
            jump morte_s338  # EXTERN

        '"Alors, au revoir."' if zf626Logic.r35073_condition():
            # a14 # r35073
            jump zf626_dispose

        '"Alors, au revoir."' if zf626Logic.r35074_condition():
            # a15 # r35074
            jump zf626_dispose


# s3 # say35081
label zf626_s3: # - # IF ~  False()
    nr 'Ce cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:
