init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm613_logic import Zm613Logic
    zm613Logic = Zm613Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM613.DLG
# ###


# s0 # say6540
label zm613_s0: # - # IF ~  True()
    nr 'Le numéro „613“ est gravé profondément sur le front de ce cadavre à la démarche lourde, mais deux ou trois centimètres de peau tannée et déchiquetée séparent le „1“ et le „3“. En examinant l„endroit de plus près, il te semble distinguer un “2„ gravé là.{#zm613_s0_}'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"{#zm613_s0_r6543}' if zm613Logic.r6543_condition():
            # a0 # r6543
            $ zm613Logic.r6543_action()
            jump zm613_s1

        '"Alors… Tu as vu quelque chose d„intéressant ?"{#zm613_s0_r6544}' if zm613Logic.r6544_condition():
            # a1 # r6544
            jump zm613_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm613_s0_r6545}' if zm613Logic.r6545_condition():
            # a2 # r6545
            jump zm613_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm613_s0_r6546}' if zm613Logic.r6546_condition():
            # a3 # r6546
            jump zm613_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm613_s0_r6547}':
            # a4 # r6547
            jump zm613_dispose

        'Laisse le cadavre tranquille.{#zm613_s0_r6548}':
            # a5 # r6548
            jump zm613_dispose


# s1 # say6541
label zm613_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.{#zm613_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm613_s1_r6549}':
            # a6 # r6549
            jump zm613_dispose


# s2 # say6542
label zm613_s2: # from 0.3
    nr 'Le cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zm613_s2_}'

    menu:
        'Laisse le cadavre tranquille.{#zm613_s2_r6550}':
            # a7 # r6550
            jump zm613_dispose
