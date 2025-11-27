init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


# s0 # say6484
label zm463_s0: # - # IF ~  True()
    nr 'Zmasakrovaná mrtvola na tebe zírá prázdnýma očima. Na čele má vyřezané číslo "463" a její rty byly sešity. Z těla vychází slabý pach formaldehydu.{#zm463_s0_}'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"{#zm463_s0_r6485}' if zm463Logic.r6485_condition():
            # a0 # r6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        '"Tak… je tam vidět něco zajímavého?"{#zm463_s0_r6488}' if zm463Logic.r6488_condition():
            # a1 # r6488
            jump zm463_s1

        '"Vím, že nejsi zombie, jasný? Mě neoklameš."{#zm463_s0_r6489}' if zm463Logic.r6489_condition():
            # a2 # r6489
            jump zm463_s1

        'Použij svoji schopnost Kosti vyprávějte na mrtvolu.{#zm463_s0_r6490}' if zm463Logic.r6490_condition():
            # a3 # r6490
            jump zm463_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zm463_s0_r6491}':
            # a4 # r6491
            jump zm463_dispose

        'Nechej mrtvolu být.{#zm463_s0_r6492}':
            # a5 # r6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.{#zm463_s1_}'

    menu:
        'Nechej mrtvolu být.{#zm463_s1_r6493}':
            # a6 # r6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to aby byla schopna odpovědět na nějakou tvou otázku.{#zm463_s2_}'

    menu:
        'Nechej mrtvolu být.{#zm463_s2_r6494}':
            # a7 # r6494
            jump zm463_dispose
