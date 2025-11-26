init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'La tête légèrement difforme de ce cadavre semble être maintenue grâce à des bandes de métal étroites boulonnées directement sur le crâne. Une plaque de fer rouillée placée sur son œil gauche porte le numéro „475“. Ses lèvres sont cousues, et il empeste la lotion d„embaumement.'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '"Alors… Tu as vu quelque chose d„intéressant ?"' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."':
            # a4 # r6591
            jump zm475_dispose

        'Laisse le cadavre tranquille.':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.'

    menu:
        'Laisse le cadavre tranquille.':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'Le cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:
        'Laisse le cadavre tranquille.':
            # a7 # r6594
            jump zm475_dispose
