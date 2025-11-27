init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1445_logic import Zm1445Logic
    zm1445Logic = Zm1445Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1445.DLG
# ###


# s0 # say46756
label zm1445_s0: # - # IF ~  True()
    nr 'La chair de ce cadavre est grêlée et ses oreilles, le bout de son nez et plusieurs de ses doigts ont pourri. Nul doute que le pauvre bougre a succombé à une terrible maladie. Le numéro „1445“ est tatoué sur son front et ses lèvres ont été cousues.{#zm1445_s0_}'

    menu:
        '"Alors… as-tu vu quelque chose d„intéressant ?"{#zm1445_s0_r46757}' if zm1445Logic.r46757_condition():
            # a0 # r46757
            $ zm1445Logic.r46757_action()
            jump zm1445_s1

        '"Alors… as-tu vu quelque chose d„intéressant ?"{#zm1445_s0_r46760}' if zm1445Logic.r46760_condition():
            # a1 # r46760
            jump zm1445_s1

        '"Je sais que tu n„es pas un zombi. Personne n“est dupe."{#zm1445_s0_r46761}' if zm1445Logic.r46761_condition():
            # a2 # r46761
            jump zm1445_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm1445_s0_r46762}' if zm1445Logic.r46762_condition():
            # a3 # r46762
            jump zm1445_s2

        '"Je suis ravis de t„avoir parlé. Au revoir."{#zm1445_s0_r46765}':
            # a4 # r46765
            jump zm1445_dispose

        'Laisse le cadavre tranquille.{#zm1445_s0_r46766}':
            # a5 # r46766
            jump zm1445_dispose


# s1 # say46758
label zm1445_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te regarder.{#zm1445_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm1445_s1_r46759}':
            # a6 # r46759
            jump zm1445_dispose


# s2 # say46763
label zm1445_s2: # from 0.3
    nr 'Le cadavre ne répond pas. Il semble qu„il soit incapable de répondre à tes questions.{#zm1445_s2_}'

    menu:
        'Laisse le cadavre tranquille.{#zm1445_s2_r46764}':
            # a7 # r46764
            jump zm1445_dispose
