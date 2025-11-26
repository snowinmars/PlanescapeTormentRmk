init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM782.DLG
# ###


# s0 # say24708
label zm782_s0: # - # IF ~  True()
    nr 'Ce cadavre s„arrête et te fixe alors que tu t“approches. Le numéro „782“ est gravé sur son front, et ses lèvres ont été cousues. Une légère odeur de formol émane de lui.'

    menu:
        '"Je cherche une clé… tu n„en aurais pas une, par hasard ?"' if zm782Logic.r24709_condition():
            # a0 # r24709
            jump morte1_s34  # EXTERN

        '"Je cherche une clé… tu n„en aurais pas une, par hasard ?"' if zm782Logic.r24712_condition():
            # a1 # r24712
            jump zm782_s1

        'Examine le cadavre et regarde s„il possède une clé.':
            # a2 # r24713
            jump zm782_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a3 # r24714
            jump zm782_s2

        'Laisse le cadavre tranquille.':
            # a4 # r24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1: # from 0.1
    nr 'Le cadavre ne répond pas.'

    menu:
        '"Bon, peu importe. Au revoir."':
            # a5 # r24711
            jump zm782_dispose

        'Laisse le cadavre tranquille.':
            # a6 # r42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2: # from 0.2 0.3
    nr 'Ce cadavre doit être celui qui possède la clé. Il la tient serrée dans sa main gauche, le pouce et l„index comme figés autour. On dirait que tu vas être obligé d“arracher la main du corps pour récupérer la clé.'

    menu:
        '"J„ai besoin de cette clé, cadavre… on dirait bien que tu ne vas pas faire long feu dans ce monde."':
            # a7 # r24716
            $ zm782Logic.r24716_action()
            jump zm782_dispose

        'Laisse le cadavre tranquille.':
            # a8 # r42305
            jump zm782_dispose
