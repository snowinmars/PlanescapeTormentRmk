init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf916_logic import Zf916Logic
    zf916Logic = Zf916Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF916.DLG
# ###


# s0 # say24719
label zf916_s0: # - # IF ~  True()
    nr 'Le cadavre féminin te jette un regard vide. Le numéro „916“ est gravé sur son front et ses lèvres ont été cousues. Une légère odeur de formol se dégage du corps.'

    menu:
        '"Alors… Tu fais quelque chose plus tard ?"' if zf916Logic.r24720_condition():
            # a0 # r24720
            $ zf916Logic.r24720_action()
            jump zf916_s1

        '"Alors… Tu fais quelque chose plus tard ?"' if zf916Logic.r24737_condition():
            # a1 # r24737
            jump zf916_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."' if zf916Logic.r24738_condition():
            # a2 # r24738
            jump zf916_s1

        'Utilise Histoires-Os-Conter sur le cadavre.' if zf916Logic.r24739_condition():
            # a3 # r24739
            jump zf916_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."' if zf916Logic.r24744_condition():
            # a4 # r24744
            jump morte_s46  # EXTERN

        'Laisse le cadavre tranquille.' if zf916Logic.r24745_condition():
            # a5 # r24745
            jump morte_s46  # EXTERN

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."' if zf916Logic.r24746_condition():
            # a6 # r24746
            jump zf916_dispose

        'Laisse le cadavre tranquille.' if zf916Logic.r24747_condition():
            # a7 # r24747
            jump zf916_dispose

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."' if zf916Logic.r24748_condition():
            # a8 # r24748
            jump zf916_dispose

        'Laisse le cadavre tranquille.' if zf916Logic.r24749_condition():
            # a9 # r24749
            jump zf916_dispose


# s1 # say24721
label zf916_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.'

    menu:
        '"Alors, au revoir."' if zf916Logic.r24722_condition():
            # a10 # r24722
            jump morte_s46  # EXTERN

        '"Alors, au revoir."' if zf916Logic.r24735_condition():
            # a11 # r24735
            jump zf916_dispose

        '"Alors, au revoir."' if zf916Logic.r24736_condition():
            # a12 # r24736
            jump zf916_dispose


# s2 # say24740
label zf916_s2: # from 0.3
    nr 'Ce cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:
        '"Alors, au revoir."' if zf916Logic.r24741_condition():
            # a13 # r24741
            jump morte_s46  # EXTERN

        '"Alors, au revoir."' if zf916Logic.r24742_condition():
            # a14 # r24742
            jump zf916_dispose

        '"Alors, au revoir."' if zf916Logic.r24743_condition():
            # a15 # r24743
            jump zf916_dispose


# s3 # say24750
label zf916_s3: # - # IF ~  False()
    nr 'Ce cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.'

    menu:
