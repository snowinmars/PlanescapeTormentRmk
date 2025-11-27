init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'La tête légèrement difforme de ce cadavre semble être maintenue grâce à des bandes de métal étroites boulonnées directement sur le crâne. Une plaque de fer rouillée placée sur son œil gauche porte le numéro „475“. Ses lèvres sont cousues, et il empeste la lotion d„embaumement.{#zm475_s0_}'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"{#zm475_s0_r6587}' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '"Alors… Tu as vu quelque chose d„intéressant ?"{#zm475_s0_r6588}' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm475_s0_r6589}' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm475_s0_r6590}' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm475_s0_r6591}':
            # a4 # r6591
            jump zm475_dispose

        'Laisse le cadavre tranquille.{#zm475_s0_r6592}':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.{#zm475_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm475_s1_r6593}':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'Le cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zm475_s2_}'

    menu:
        'Laisse le cadavre tranquille.{#zm475_s2_r6594}':
            # a7 # r6594
            jump zm475_dispose
