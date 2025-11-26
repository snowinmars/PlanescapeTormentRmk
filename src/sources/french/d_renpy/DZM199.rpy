init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm199_logic import Zm199Logic
    zm199Logic = Zm199Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM199.DLG
# ###


# s0 # say34975
label zm199_s0: # - # IF ~  True()
    nr 'Ce cadavre réanimé dégage une puanteur de viande carbonisée et de textiles qui brûlent. Il porte sur tout le côté droit des marques de brûlures assez récentes ; peut-être est-il resté trop près d„un feu et qu“il a commencé à s„enflammer. Le numéro “199„ est gravé sur son front et ses lèvres sont cousues ensemble.'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"' if zm199Logic.r34976_condition():
            # a0 # r34976
            $ zm199Logic.r34976_action()
            jump zm199_s1

        '"Alors… Tu as vu quelque chose d„intéressant ?"' if zm199Logic.r34979_condition():
            # a1 # r34979
            jump zm199_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm199Logic.r34980_condition():
            # a2 # r34980
            jump zm199_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm199Logic.r34981_condition():
            # a3 # r34981
            jump zm199_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a4 # r34984
            jump zm199_dispose

        'Laisse le cadavre tranquille.':
            # a5 # r34985
            jump zm199_dispose


# s1 # say34977
label zm199_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.'

    menu:
        'Laisse le cadavre tranquille.':
            # a6 # r34978
            jump zm199_dispose


# s2 # say34982
label zm199_s2: # from 0.3
    nr 'Le cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:
        'Laisse le cadavre tranquille.':
            # a7 # r34983
            jump zm199_dispose
