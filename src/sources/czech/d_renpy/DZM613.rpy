init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm613_logic import Zm613Logic
    zm613Logic = Zm613Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM613.DLG
# ###


# s0 # say6540
label zm613_s0: # - # IF ~  True()
    nr 'ČÍslo "613" je hluboko vyryto do čela této plahočící se mrtvoly, ale kousek odtržené tuhé kůže odděluje "1" a "3." Když se podíváš zblízka, s obtížemi tam rozluštíš vyřezanou "2".{#zm613_s0_}'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"{#zm613_s0_r6543}' if zm613Logic.r6543_condition():
            # a0 # r6543
            $ zm613Logic.r6543_action()
            jump zm613_s1

        '"Tak… je tam dál vidět něco zajímavého?"{#zm613_s0_r6544}' if zm613Logic.r6544_condition():
            # a1 # r6544
            jump zm613_s1

        '"Vím, že nejsi zombie, rozumíš. Nedělej si z nikoho blázny."{#zm613_s0_r6545}' if zm613Logic.r6545_condition():
            # a2 # r6545
            jump zm613_s1

        'Použij svou schopnost Kosti vyprávějte na mrtvolu.{#zm613_s0_r6546}' if zm613Logic.r6546_condition():
            # a3 # r6546
            jump zm613_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zm613_s0_r6547}':
            # a4 # r6547
            jump zm613_dispose

        'Nechej mrtvolu být.{#zm613_s0_r6548}':
            # a5 # r6548
            jump zm613_dispose


# s1 # say6541
label zm613_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.{#zm613_s1_}'

    menu:
        'Nechej mrtvolu být.{#zm613_s1_r6549}':
            # a6 # r6549
            jump zm613_dispose


# s2 # say6542
label zm613_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to, aby byla schopna odpovědět na nějakou tvou otázku.{#zm613_s2_}'

    menu:
        'Nechej mrtvolu být.{#zm613_s2_r6550}':
            # a7 # r6550
            jump zm613_dispose
