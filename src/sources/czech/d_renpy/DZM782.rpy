init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM782.DLG
# ###


# s0 # say24708
label zm782_s0: # - # IF ~  True()
    nr 'Když ses přiblížil, mrtvola se zastavila a nepřítomně na tebe pohlédla. Na čele má vyřezáno číslo "782" a její rty jsou pevně sešity. Kolem sebe šíří slabý zápach formaldehydu.{#zm782_s0_}'

    menu:
        '"Hledám klíč… nemáš ho náhodou ty?"{#zm782_s0_r24709}' if zm782Logic.r24709_condition():
            # a0 # r24709
            jump morte1_s34  # EXTERN

        '"Hledám klíč… nemáš ho náhodou ty?"{#zm782_s0_r24712}' if zm782Logic.r24712_condition():
            # a1 # r24712
            jump zm782_s1

        'Prohledej mrtvolu, zda nemá klíč.{#zm782_s0_r24713}':
            # a2 # r24713
            jump zm782_s2

        '"Skvěle jsem si s tebou pohovořil. Sbohem."{#zm782_s0_r24714}':
            # a3 # r24714
            jump zm782_s2

        'Nechej mrtvolu být.{#zm782_s0_r24717}':
            # a4 # r24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1: # from 0.1
    nr 'Mrtvola nereaguje.{#zm782_s1_}'

    menu:
        '"V pořádku. Sbohem."{#zm782_s1_r24711}':
            # a5 # r24711
            jump zm782_dispose

        'Nechej mrtvolu odpočívat v pokoji.{#zm782_s1_r42304}':
            # a6 # r42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2: # from 0.2 0.3
    nr 'Tahle mrtvola vypadá, že ten klíč má. Drží jej pevně v levé ruce, palcem a ukazováčkem jej svírá dokola se smrtící silou. Vypadá to, že budeš muset nebožtíkovi odříznout ruku, abys jej dostal.{#zm782_s2_}'

    menu:
        '"Potřebuji tenhle klíč, mrtvolo… vypadá to, že se na tomto světě už moc neohřeješ."{#zm782_s2_r24716}':
            # a7 # r24716
            $ zm782Logic.r24716_action()
            jump zm782_dispose

        'Nechej mrtvolu odpočívat v pokoji.{#zm782_s2_r42305}':
            # a8 # r42305
            jump zm782_dispose
