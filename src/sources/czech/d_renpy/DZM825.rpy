init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


# s0 # say24564
label zm825_s0: # - # IF ~  True()
    nr 'Mrtvola narovnává svou hlavu… vychylující se z krku. Vypadá to, že tento člověk byl zřejmě oběšen. Na straně hlavy má namalované číslo "825".'

    menu:
        '"Hledám klíč… je možné jeden dostat?"' if zm825Logic.r24565_condition():
            # a0 # r24565
            jump morte1_s31  # EXTERN

        '"Hledám klíč… je možné, abys ho měl ty?"' if zm825Logic.r24568_condition():
            # a1 # r24568
            jump zm825_s1

        '"Tak… viděl jsi něco zajímavého?"' if zm825Logic.r24569_condition():
            # a2 # r24569
            jump zm825_s1

        '"Vím, že nejsi zombie, víš. Nikoho neoklameš."' if zm825Logic.r24570_condition():
            # a3 # r24570
            jump zm825_s1

        'Použij na mrtvole Kosti vyprávějte.' if zm825Logic.r24573_condition():
            # a4 # r24573
            jump zm825_s2

        'Prohledej mrtvolu, koukni jestli nemá klíč.' if zm825Logic.r24574_condition():
            # a5 # r24574
            jump zm825_s3

        '"Bylo skvělý si s tebou poklábosit. Sbohem."':
            # a6 # r42308
            jump zm825_dispose

        'Nechej mrtvolu odpočívat v pokoji.':
            # a7 # r42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1: # from 0.1 0.2 0.3 3.1
    nr 'Mrtvola zírá na podlahu a neodpovídá.'

    menu:
        '"No, nevadí. Sbohem."':
            # a8 # r24567
            jump zm825_dispose

        'Nechej mrtvolu odpočívat v pokoji.':
            # a9 # r42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2: # from 0.4
    nr 'Mrtvola se nehýbe. Vypadá to, že je natolik hotová, že nemůže odpovědět na jakoukoliv tvou otázku.'

    menu:
        'Nech mrtvolu na pokoji.':
            # a10 # r24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3: # from 0.5
    nr 'Tahle mrtvola u sebe nic nemá… ale všiml sis, že její ruce jsou silně ovázané. Obvazy by se daly použít, ale to by se jich nejprve mrtvola musela být ochotná vzdát.'

    menu:
        '"Tuším, že ty klíč nemáš… nevíš náhodou, kterej z tvých kámošů mrtváků by mohl mít od tohoto místa klíč?"' if zm825Logic.r42312_condition():
            # a11 # r42312
            jump morte1_s31  # EXTERN

        '"Tuším, že ty klíč nemáš… nevíš náhodou, kterej z tvých kámošů mrtváků by mohl mít od tohoto místa klíč?"' if zm825Logic.r42313_condition():
            # a12 # r42313
            jump zm825_s1

        '"Bylo skvělý si s tebou poklábosit. Sbohem."':
            # a13 # r42314
            jump zm825_dispose

        'Nechej mrtvolu odpočívat v pokoji.':
            # a14 # r42315
            jump zm825_dispose
