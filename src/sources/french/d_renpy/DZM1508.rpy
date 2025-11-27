init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1508_logic import Zm1508Logic
    zm1508Logic = Zm1508Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1508.DLG
# ###


# s0 # say46745
label zm1508_s0: # - # IF ~  True()
    nr 'Le front de ce cadavre musclé n„est qu“un tissu de cicatrices, comme s„il avait pour habitude d“affronter ses adversaires à coups de tête. Le numéro „1508“ a été tissé sur son front au fil rouge et ses lèvres ont été cousues à l„aide d“un épais fil noir. Il sent légèrement la lotion d„embaumement.{#zm1508_s0_}'

    menu:
        '"Alors… as-tu vu quelque chose d„intéressant ?"{#zm1508_s0_r46746}' if zm1508Logic.r46746_condition():
            # a0 # r46746
            $ zm1508Logic.r46746_action()
            jump zm1508_s1

        '"Alors… as-tu vu quelque chose d„intéressant ?"{#zm1508_s0_r46749}' if zm1508Logic.r46749_condition():
            # a1 # r46749
            jump zm1508_s1

        '"Je sais que tu n„es pas un zombi. Personne n“est dupe."{#zm1508_s0_r46750}' if zm1508Logic.r46750_condition():
            # a2 # r46750
            jump zm1508_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm1508_s0_r46751}' if zm1508Logic.r46751_condition():
            # a3 # r46751
            jump zm1508_s2

        '"Je suis ravis de t„avoir parlé. Au revoir."{#zm1508_s0_r46754}':
            # a4 # r46754
            jump zm1508_dispose

        'Laisse le cadavre tranquille.{#zm1508_s0_r46755}':
            # a5 # r46755
            jump zm1508_dispose


# s1 # say46747
label zm1508_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te regarder.{#zm1508_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm1508_s1_r46748}':
            # a6 # r46748
            jump zm1508_dispose


# s2 # say46752
label zm1508_s2: # from 0.3
    nr 'Le cadavre ne répond pas. Il semble qu„il soit incapable de répondre à tes questions.{#zm1508_s2_}'

    menu:
        'Laisse le cadavre tranquille.{#zm1508_s2_r46753}':
            # a7 # r46753
            jump zm1508_dispose
