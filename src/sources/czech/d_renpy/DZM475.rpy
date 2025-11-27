init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'Lehce znetvořená hlava této mrtvoly vypadá, že drží pohromadě díky spoustě úzkých kovových pásků přišroubovaných přímo k lebce. Na rezavé kovové destičce umístěné přes levé oko je vyryto číslo "475". Mrtvola má sešitá ústa a je cítit balzamovací tekutinou.{#zm475_s0_}'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"{#zm475_s0_r6587}' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '"Tak… je tam dál vidět něco zajímavého?"{#zm475_s0_r6588}' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '"Vím, že nejsi zombie, jasný? Nikoho neoklameš."{#zm475_s0_r6589}' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Použij svou schopnost Kosti vyprávějte na mrtvolu.{#zm475_s0_r6590}' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zm475_s0_r6591}':
            # a4 # r6591
            jump zm475_dispose

        'Nechej mrtvolu být.{#zm475_s0_r6592}':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.{#zm475_s1_}'

    menu:
        'Nechej mrtvolu být.{#zm475_s1_r6593}':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to, aby byla schopna odpovědět na nějakou tvou otázku.{#zm475_s2_}'

    menu:
        'Nechej mrtvolu být.{#zm475_s2_r6594}':
            # a7 # r6594
            jump zm475_dispose
