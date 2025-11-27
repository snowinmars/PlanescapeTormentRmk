init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm79_logic import Zm79Logic
    zm79Logic = Zm79Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM79.DLG
# ###


# s0 # say34942
label zm79_s0: # - # IF ~  True()
    nr 'La grosse tête de ce cadavre a été tranchée, puis recousue à la hâte. Divers types de sutures semblent indiquer que sa tête ne cesse de tomber et d„être rattachée ensuite. Un numéro - “79„ - est gravé sur sa tempe, entouré d“un cercle denté pyrogravé dans sa chair.{#zm79_s0_}'

    menu:
        '"Alors… Tu as vu quelque chose d„intéressant ?"{#zm79_s0_r34943}':
            # a0 # r34943
            $ zm79Logic.r34943_action()
            jump zm79_s1

        'Examine le cercle denté.{#zm79_s0_r34946}' if zm79Logic.r34946_condition():
            # a1 # r34946
            $ zm79Logic.r34946_action()
            jump zm79_s3

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm79_s0_r34947}' if zm79Logic.r34947_condition():
            # a2 # r34947
            jump zm79_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm79_s0_r34948}' if zm79Logic.r34948_condition():
            # a3 # r34948
            jump zm79_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm79_s0_r34951}':
            # a4 # r34951
            jump zm79_dispose

        'Laisse le cadavre tranquille.{#zm79_s0_r34952}':
            # a5 # r34952
            jump zm79_dispose


# s1 # say34944
label zm79_s1: # from 0.0 0.2
    nr 'Le cadavre continue à te fixer.{#zm79_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm79_s1_r34945}':
            # a6 # r34945
            jump zm79_dispose


# s2 # say34949
label zm79_s2: # from 0.3 3.0 3.1
    nr 'Le cadavre ne répond pas. Il semble qu„il soit trop absent pour répondre à tes questions.{#zm79_s2_}'

    menu:
        'Laisse le cadavre tranquille.{#zm79_s2_r34950}':
            # a7 # r34950
            jump zm79_dispose


# s3 # say64278
label zm79_s3: # from 0.1
    nr 'Il semble que le cercle ait été tatoué sur le front du cadavre il y a bien longtemps, certainement avant sa mort. Cela peut être une sorte de symbole religieux ou un rite d„initiation. Tu remarques qu“il y a un petit triangle dans un des espaces entre les „canines“ intérieures, comme s„il avait une signification particulière{#zm79_s3_}'

    menu:
        '"Hmmm. Intéressant… comment cette marque est-elle arrivée là, cadavre ?"{#zm79_s3_r64279}' if zm79Logic.r64279_condition():
            # a8 # r64279
            $ zm79Logic.j64536_s3_r64279_action()
            jump zm79_s2

        '"Hmmm… Je me demande si l„espace entre ces canines correspond à la cannelure sur la boucle d“oreille de cuivre que j„ai sur moi…"{#zm79_s3_r64280}' if zm79Logic.r64280_condition():
            # a9 # r64280
            $ zm79Logic.j64537_s3_r64280_action()
            jump zm79_s2
