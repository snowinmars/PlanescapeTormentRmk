init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


# s0 # say6484
label zm463_s0: # - # IF ~  True()
    nr 'Zmasakrovaná mrtvola na tebe zírá prázdnýma očima. Na čele má vyřezané číslo "463" a její rty byly sešity. Z těla vychází slabý pach formaldehydu.'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"' if zm463Logic.r6485_condition():
            # a0 # r6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        '"Tak… je tam vidět něco zajímavého?"' if zm463Logic.r6488_condition():
            # a1 # r6488
            jump zm463_s1

        '"Vím, že nejsi zombie, jasný? Mě neoklameš."' if zm463Logic.r6489_condition():
            # a2 # r6489
            jump zm463_s1

        'Použij svoji schopnost Kosti vyprávějte na mrtvolu.' if zm463Logic.r6490_condition():
            # a3 # r6490
            jump zm463_s2

        '"Rád jsem si s tebou popovídal. Sbohem."':
            # a4 # r6491
            jump zm463_dispose

        'Nechej mrtvolu být.':
            # a5 # r6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.'

    menu:
        'Nechej mrtvolu být.':
            # a6 # r6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to aby byla schopna odpovědět na nějakou tvou otázku.'

    menu:
        'Nechej mrtvolu být.':
            # a7 # r6494
            jump zm463_dispose
