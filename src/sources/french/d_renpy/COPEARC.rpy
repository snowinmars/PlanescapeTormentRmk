init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.copearc_logic import CopearcLogic
    copearcLogic = CopearcLogic(runtime.global_state_manager)


# ###
# Original:  DLG/COPEARC.DLG
# ###


# s0 # say46723
label copearc_s0: # - # IF ~  True()
    nr 'Cette boucle d„oreille en cuivre a l“air extrêmement vieille. On dirait qu„elle est faite pour être portée, mais elle ne possède ni crochet, ni autre moyen visible pour la fixer à ton oreille. Une série de rainures orne toutefois sa face intérieure.{#copearc_s0_}'

    menu:
        'Examine les rainures.{#copearc_s0_r46724}':
            # a0 # r46724
            jump copearc_s1

        'Insère ton ongle dans l„encoche qui était indiquée par le triangle dans le cercle denté que tu as vu sur le front du zombi 79.{#copearc_s0_r46725}' if copearcLogic.r46725_condition():
            # a1 # r46725
            $ copearcLogic.r46725_action()
            jump copearc_s2

        'Range la boucle d„oreille.{#copearc_s0_r46726}':
            # a2 # r46726
            jump copearc_dispose


# s1 # say46727
label copearc_s1: # from 0.0
    nr 'Les rainures sont espacées à intervalle régulier. En les observant de plus près, elles feraient presque penser à de minuscules dents de rouage. Elles sont manifestement artificielles, mais tu ignores quelle est leur raison d„être.{#copearc_s1_}'

    menu:
        'Insère ton ongle dans l„encoche qui était indiquée par le triangle dans le cercle denté que tu as vu sur le front du zombi 79.{#copearc_s1_r46728}' if copearcLogic.r46728_condition():
            # a3 # r46728
            $ copearcLogic.r46728_action()
            jump copearc_s2

        'Range la boucle d„oreille.{#copearc_s1_r46729}':
            # a4 # r46729
            jump copearc_dispose


# s2 # say46730
label copearc_s2: # from 0.1 1.0
    nr 'Tu glisses ton ongle dans la troisième rainure et tu pousses. Aussitôt, un léger cliquetis retentit et le haut de la boucle d„oreille s“ouvre. D„un seul coup, tu peux la porter… et on dirait bien qu“elle cache un compartiment secret.{#copearc_s2_}'

    menu:
        'Secoue la boucle d„oreille et regarde si quelque chose en tombe.{#copearc_s2_r46731}':
            # a5 # r46731
            jump copearc_s3


# s3 # say46732
label copearc_s3: # from 2.0
    nr 'Tu secoues la boucle d„oreille en vain : rien n“en sort. Ce qui se trouvait caché dedans a disparu.  ^NREMARQUE : maintenant que tu as compris le fonctionnement de la boucle d„oreille, tu peux la porter. De plus, le compartiment secret augmentera sans doute sa valeur marchande.^-{#copearc_s3_}'

    menu:
        'Range la boucle d„oreille.{#copearc_s3_r46733}':
            # a6 # r46733
            $ copearcLogic.r46733_action()
            jump copearc_dispose
