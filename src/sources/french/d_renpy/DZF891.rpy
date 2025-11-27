init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf891_logic import Zf891Logic
    zf891Logic = Zf891Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF891.DLG
# ###


# s0 # say35274
label zf891_s0: # - # IF ~  True()
    nr 'Sur ce cadavre de femme particulièrement horrible à voir, il manque les oreilles, le nez et les lèvres. Pour pouvoir fermer la mâchoire par une couture, il a fallu que celui ou celle qui l„a préparé étire bien la peau autour de la bouche ; on voit encore une ligne de dents jaunies et mal rangées à travers ce qu“il reste de la fente. Le numéro „891“ est gravé dans la chair du front.{#zf891_s0_}'

    menu:
        '"Alors… Tu fais quelque chose plus tard ?"{#zf891_s0_r35275}' if zf891Logic.r35275_condition():
            # a0 # r35275
            $ zf891Logic.r35275_action()
            jump zf891_s1

        '"Alors… Tu fais quelque chose plus tard ?"{#zf891_s0_r35292}' if zf891Logic.r35292_condition():
            # a1 # r35292
            jump zf891_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zf891_s0_r35293}' if zf891Logic.r35293_condition():
            # a2 # r35293
            jump zf891_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zf891_s0_r35294}' if zf891Logic.r35294_condition():
            # a3 # r35294
            jump zf891_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf891_s0_r35299}' if zf891Logic.r35299_condition():
            # a4 # r35299
            jump morte_s366  # EXTERN

        'Laisse le cadavre tranquille.{#zf891_s0_r35300}' if zf891Logic.r35300_condition():
            # a5 # r35300
            jump morte_s366  # EXTERN

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf891_s0_r35301}' if zf891Logic.r35301_condition():
            # a6 # r35301
            jump zf891_dispose

        'Laisse le cadavre tranquille.{#zf891_s0_r35302}' if zf891Logic.r35302_condition():
            # a7 # r35302
            jump zf891_dispose

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf891_s0_r35303}' if zf891Logic.r35303_condition():
            # a8 # r35303
            jump zf891_dispose

        'Laisse le cadavre tranquille.{#zf891_s0_r35304}' if zf891Logic.r35304_condition():
            # a9 # r35304
            jump zf891_dispose


# s1 # say35276
label zf891_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.{#zf891_s1_}'

    menu:
        '"Alors, au revoir."{#zf891_s1_r35277}' if zf891Logic.r35277_condition():
            # a10 # r35277
            jump morte_s366  # EXTERN

        '"Alors, au revoir."{#zf891_s1_r35290}' if zf891Logic.r35290_condition():
            # a11 # r35290
            jump zf891_dispose

        '"Alors, au revoir."{#zf891_s1_r35291}' if zf891Logic.r35291_condition():
            # a12 # r35291
            jump zf891_dispose


# s2 # say35295
label zf891_s2: # from 0.3
    nr 'Ce cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zf891_s2_}'

    menu:
        '"Alors, au revoir."{#zf891_s2_r35296}' if zf891Logic.r35296_condition():
            # a13 # r35296
            jump morte_s366  # EXTERN

        '"Alors, au revoir."{#zf891_s2_r35297}' if zf891Logic.r35297_condition():
            # a14 # r35297
            jump zf891_dispose

        '"Alors, au revoir."{#zf891_s2_r35298}' if zf891Logic.r35298_condition():
            # a15 # r35298
            jump zf891_dispose


# s3 # say35305
label zf891_s3: # - # IF ~  False()
    nr 'Ce cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zf891_s3_}'

    menu:
