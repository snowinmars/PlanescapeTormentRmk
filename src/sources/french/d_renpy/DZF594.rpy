init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf594_logic import Zf594Logic
    zf594Logic = Zf594Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF594.DLG
# ###


# s0 # say35018
label zf594_s0: # - # IF ~  True()
    nr 'Les yeux vides du cadavre de femme te fixent. Sa peau est aussi fine que du papier, presque translucide… comme si le cadavre était drapé d„un manteau de toiles d“araignée. Le numéro „594“ est gravé au fusain sur son front.{#zf594_s0_1}'

    menu:
        '"Alors… Tu fais quelque chose plus tard ?"{#zf594_s0_r35019}' if zf594Logic.r35019_condition():
            # a0 # r35019
            $ zf594Logic.r35019_action()
            jump zf594_s1

        '"Alors… Tu fais quelque chose plus tard ?"{#zf594_s0_r35036}' if zf594Logic.r35036_condition():
            # a1 # r35036
            jump zf594_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zf594_s0_r35037}' if zf594Logic.r35037_condition():
            # a2 # r35037
            jump zf594_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zf594_s0_r35038}' if zf594Logic.r35038_condition():
            # a3 # r35038
            jump zf594_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf594_s0_r35043}' if zf594Logic.r35043_condition():
            # a4 # r35043
            jump morte_s334  # EXTERN

        'Laisse le cadavre tranquille.{#zf594_s0_r35044}' if zf594Logic.r35044_condition():
            # a5 # r35044
            jump morte_s334  # EXTERN

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf594_s0_r35045}' if zf594Logic.r35045_condition():
            # a6 # r35045
            jump zf594_dispose

        'Laisse le cadavre tranquille.{#zf594_s0_r35046}' if zf594Logic.r35046_condition():
            # a7 # r35046
            jump zf594_dispose

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf594_s0_r35047}' if zf594Logic.r35047_condition():
            # a8 # r35047
            jump zf594_dispose

        'Laisse le cadavre tranquille.{#zf594_s0_r35048}' if zf594Logic.r35048_condition():
            # a9 # r35048
            jump zf594_dispose


# s1 # say35020
label zf594_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.{#zf594_s1_1}'

    menu:
        '"Alors, au revoir."{#zf594_s1_r35021}' if zf594Logic.r35021_condition():
            # a10 # r35021
            jump morte_s334  # EXTERN

        '"Alors, au revoir."{#zf594_s1_r35034}' if zf594Logic.r35034_condition():
            # a11 # r35034
            jump zf594_dispose

        '"Alors, au revoir."{#zf594_s1_r35035}' if zf594Logic.r35035_condition():
            # a12 # r35035
            jump zf594_dispose


# s2 # say35039
label zf594_s2: # from 0.3
    nr 'Ce cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zf594_s2_1}'

    menu:
        '"Alors, au revoir."{#zf594_s2_r35040}' if zf594Logic.r35040_condition():
            # a13 # r35040
            jump morte_s334  # EXTERN

        '"Alors, au revoir."{#zf594_s2_r35041}' if zf594Logic.r35041_condition():
            # a14 # r35041
            jump zf594_dispose

        '"Alors, au revoir."{#zf594_s2_r35042}' if zf594Logic.r35042_condition():
            # a15 # r35042
            jump zf594_dispose


# s3 # say35049
label zf594_s3: # - # IF ~  False()
    nr 'Ce cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zf594_s3_1}'

    menu:
