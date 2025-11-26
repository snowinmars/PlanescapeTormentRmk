init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'Lehce znetvořená hlava této mrtvoly vypadá, že drží pohromadě díky spoustě úzkých kovových pásků přišroubovaných přímo k lebce. Na rezavé kovové destičce umístěné přes levé oko je vyryto číslo "475". Mrtvola má sešitá ústa a je cítit balzamovací tekutinou.'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '"Tak… je tam dál vidět něco zajímavého?"' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '"Vím, že nejsi zombie, jasný? Nikoho neoklameš."' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Použij svou schopnost Kosti vyprávějte na mrtvolu.' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '"Rád jsem si s tebou popovídal. Sbohem."':
            # a4 # r6591
            jump zm475_dispose

        'Nechej mrtvolu být.':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.'

    menu:
        'Nechej mrtvolu být.':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to, aby byla schopna odpovědět na nějakou tvou otázku.'

    menu:
        'Nechej mrtvolu být.':
            # a7 # r6594
            jump zm475_dispose
