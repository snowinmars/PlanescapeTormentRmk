init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


# s0 # say6484
label zm463_s0: # - # IF ~  True()
    nr 'Le cadavre dégingandé t„observe d“un air hagard. Le numéro „463“ est gravé sur son front et ses lèvres sont cousues. Une très légère odeur de formol émane de ce corps.'

    menu:
        '"Alors… t„as vu quelque chose d“intéressant ?"' if zm463Logic.r6485_condition():
            # a0 # r6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        '"Alors… t„as vu quelque chose d“intéressant ?"' if zm463Logic.r6488_condition():
            # a1 # r6488
            jump zm463_s1

        '"Je sais que tu n„es pas un zombi. Tu ne trompes personne."' if zm463Logic.r6489_condition():
            # a2 # r6489
            jump zm463_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm463Logic.r6490_condition():
            # a3 # r6490
            jump zm463_s2

        '"Je suis heureux de t„avoir parlé. Au revoir."':
            # a4 # r6491
            jump zm463_dispose

        'Laisse le cadavre tranquille.':
            # a5 # r6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.'

    menu:
        'Laisse le cadavre tranquille.':
            # a6 # r6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2: # from 0.3
    nr 'Le cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:
        'Laisse le cadavre tranquille.':
            # a7 # r6494
            jump zm463_dispose
