init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1508_logic import Zm1508Logic
    zm1508Logic = Zm1508Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1508.DLG
# ###


# s0 # say46745
label zm1508_s0: # - # IF ~  True()
    nr 'ČElo této velice svalnaté mrtvoly tvoří masa zjizvené tkáně, jako kdyby zaživa používal svou hlavu na mlácení protivníků, či si v praxi ověřoval, zda platí přísloví Hlavou zeď neprorazíš. Přes čelo je rudou nití vyšito číslo "1508", ústa jsou pevně sešita hrubou černou nití. Lehce páchne balzamovací tekutinou.{#zm1508_s0_}'

    menu:
        '"Takže… dělo se tady v poslední době něco zajímavého?"{#zm1508_s0_r46746}' if zm1508Logic.r46746_condition():
            # a0 # r46746
            $ zm1508Logic.r46746_action()
            jump zm1508_s1

        '"Takže… dělo se tady v poslední době něco zajímavého?"{#zm1508_s0_r46749}' if zm1508Logic.r46749_condition():
            # a1 # r46749
            jump zm1508_s1

        '"Vím, že nejsi zombie. Nikoho neoblbneš."{#zm1508_s0_r46750}' if zm1508Logic.r46750_condition():
            # a2 # r46750
            jump zm1508_s1

        'Použij na těle svou schopnost Kosti-Vyprávějte{#zm1508_s0_r46751}' if zm1508Logic.r46751_condition():
            # a3 # r46751
            jump zm1508_s2

        '"Skvěle jsme si pokecali. Sbohem."{#zm1508_s0_r46754}':
            # a4 # r46754
            jump zm1508_dispose

        'Nechej mrtvolu být.{#zm1508_s0_r46755}':
            # a5 # r46755
            jump zm1508_dispose


# s1 # say46747
label zm1508_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.{#zm1508_s1_}'

    menu:
        'Nechej mrtvolu být.{#zm1508_s1_r46748}':
            # a6 # r46748
            jump zm1508_dispose


# s2 # say46752
label zm1508_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš.{#zm1508_s2_}'

    menu:
        'Nechej mrtvolu být.{#zm1508_s2_r46753}':
            # a7 # r46753
            jump zm1508_dispose
