init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1445_logic import Zm1445Logic
    zm1445Logic = Zm1445Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1445.DLG
# ###


# s0 # say46756
label zm1445_s0: # - # IF ~  True()
    nr 'Tělo této mrtvoly je hrozivě poničené, špička nosu a několik prstů už definitivně uhnilo… muž zřejmě zemřel na nějakou hrozivou chorobu. Na jeho čele je vytetováno číslo "1445", rty jsou pevně sešity dohromady.'

    menu:
        '"Takže… dělo se tady v poslední době něco zajímavého?"' if zm1445Logic.r46757_condition():
            # a0 # r46757
            $ zm1445Logic.r46757_action()
            jump zm1445_s1

        '"Takže… dělo se tady v poslední době něco zajímavého?"' if zm1445Logic.r46760_condition():
            # a1 # r46760
            jump zm1445_s1

        '"Vím, že nejsi zombie. Nikoho neoblbneš."' if zm1445Logic.r46761_condition():
            # a2 # r46761
            jump zm1445_s1

        'Použij na těle svou schopnost Kosti-Vyprávějte' if zm1445Logic.r46762_condition():
            # a3 # r46762
            jump zm1445_s2

        '"Skvěle jsme si pokecali. Sbohem."':
            # a4 # r46765
            jump zm1445_dispose

        'Nechej mrtvolu být.':
            # a5 # r46766
            jump zm1445_dispose


# s1 # say46758
label zm1445_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.'

    menu:
        'Nechej mrtvolu být.':
            # a6 # r46759
            jump zm1445_dispose


# s2 # say46763
label zm1445_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš.'

    menu:
        'Nechej mrtvolu být.':
            # a7 # r46764
            jump zm1445_dispose
