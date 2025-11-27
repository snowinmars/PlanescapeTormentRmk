init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf444_logic import Zf444Logic
    zf444Logic = Zf444Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF444.DLG
# ###


# s0 # say35210
label zf444_s0: # - # IF ~  True()
    nr 'Ce cadavre de femme est dans un horrible état. Ce qui ressemble à des centaines de minuscules morsures - de rats, peut-être - grêle le cuir de la peau embaumée du corps. À voir les plis de la chair autour des blessures, il est probable qu„elles ont été infligées avant la préparation du cadavre. Les lèvres sont cousues ensemble et le numéro “444„ est inscrit sur la visage à l“encre bleu foncé.{#zf444_s0_}'

    menu:
        '"Alors… Tu fais quelque chose plus tard ?"{#zf444_s0_r35211}' if zf444Logic.r35211_condition():
            # a0 # r35211
            $ zf444Logic.r35211_action()
            jump zf444_s1

        '"Alors… Tu fais quelque chose plus tard ?"{#zf444_s0_r35228}' if zf444Logic.r35228_condition():
            # a1 # r35228
            jump zf444_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zf444_s0_r35229}' if zf444Logic.r35229_condition():
            # a2 # r35229
            jump zf444_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zf444_s0_r35230}' if zf444Logic.r35230_condition():
            # a3 # r35230
            jump zf444_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf444_s0_r35235}' if zf444Logic.r35235_condition():
            # a4 # r35235
            jump morte_s358  # EXTERN

        'Laisse le cadavre tranquille.{#zf444_s0_r35236}' if zf444Logic.r35236_condition():
            # a5 # r35236
            jump morte_s358  # EXTERN

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf444_s0_r35237}' if zf444Logic.r35237_condition():
            # a6 # r35237
            jump zf444_dispose

        'Laisse le cadavre tranquille.{#zf444_s0_r35238}' if zf444Logic.r35238_condition():
            # a7 # r35238
            jump zf444_dispose

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zf444_s0_r35239}' if zf444Logic.r35239_condition():
            # a8 # r35239
            jump zf444_dispose

        'Laisse le cadavre tranquille.{#zf444_s0_r35240}' if zf444Logic.r35240_condition():
            # a9 # r35240
            jump zf444_dispose


# s1 # say35212
label zf444_s1: # from 0.0 0.1 0.2
    nr 'Le cadavre continue à te fixer.{#zf444_s1_}'

    menu:
        '"Alors, au revoir."{#zf444_s1_r35213}' if zf444Logic.r35213_condition():
            # a10 # r35213
            jump morte_s358  # EXTERN

        '"Alors, au revoir."{#zf444_s1_r35226}' if zf444Logic.r35226_condition():
            # a11 # r35226
            jump zf444_dispose

        '"Alors, au revoir."{#zf444_s1_r35227}' if zf444Logic.r35227_condition():
            # a12 # r35227
            jump zf444_dispose


# s2 # say35231
label zf444_s2: # from 0.3
    nr 'Ce cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zf444_s2_}'

    menu:
        '"Alors, au revoir."{#zf444_s2_r35232}' if zf444Logic.r35232_condition():
            # a13 # r35232
            jump morte_s358  # EXTERN

        '"Alors, au revoir."{#zf444_s2_r35233}' if zf444Logic.r35233_condition():
            # a14 # r35233
            jump zf444_dispose

        '"Alors, au revoir."{#zf444_s2_r35234}' if zf444Logic.r35234_condition():
            # a15 # r35234
            jump zf444_dispose


# s3 # say35241
label zf444_s3: # - # IF ~  False()
    nr 'Ce cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zf444_s3_}'

    menu:
