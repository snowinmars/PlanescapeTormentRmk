init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


# s0 # say24564
label zm825_s0: # - # IF ~  True()
    nr 'Mrtvola narovnává svou hlavu… vychylující se z krku. Vypadá to, že tento člověk byl zřejmě oběšen. Na straně hlavy má namalované číslo "825".{#zm825_s0_1}'

    menu:
        '"Hledám klíč… je možné jeden dostat?"{#zm825_s0_r24565}' if zm825Logic.r24565_condition():
            # a0 # r24565
            jump morte1_s31  # EXTERN

        '"Hledám klíč… je možné, abys ho měl ty?"{#zm825_s0_r24568}' if zm825Logic.r24568_condition():
            # a1 # r24568
            jump zm825_s1

        '"Tak… viděl jsi něco zajímavého?"{#zm825_s0_r24569}' if zm825Logic.r24569_condition():
            # a2 # r24569
            jump zm825_s1

        '"Vím, že nejsi zombie, víš. Nikoho neoklameš."{#zm825_s0_r24570}' if zm825Logic.r24570_condition():
            # a3 # r24570
            jump zm825_s1

        'Použij na mrtvole Kosti vyprávějte.{#zm825_s0_r24573}' if zm825Logic.r24573_condition():
            # a4 # r24573
            jump zm825_s2

        'Prohledej mrtvolu, koukni jestli nemá klíč.{#zm825_s0_r24574}' if zm825Logic.r24574_condition():
            # a5 # r24574
            jump zm825_s3

        '"Bylo skvělý si s tebou poklábosit. Sbohem."{#zm825_s0_r42308}':
            # a6 # r42308
            jump zm825_dispose

        'Nechej mrtvolu odpočívat v pokoji.{#zm825_s0_r42309}':
            # a7 # r42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1: # from 0.1 0.2 0.3 3.1
    nr 'Mrtvola zírá na podlahu a neodpovídá.{#zm825_s1_1}'

    menu:
        '"No, nevadí. Sbohem."{#zm825_s1_r24567}':
            # a8 # r24567
            jump zm825_dispose

        'Nechej mrtvolu odpočívat v pokoji.{#zm825_s1_r42310}':
            # a9 # r42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2: # from 0.4
    nr 'Mrtvola se nehýbe. Vypadá to, že je natolik hotová, že nemůže odpovědět na jakoukoliv tvou otázku.{#zm825_s2_1}'

    menu:
        'Nech mrtvolu na pokoji.{#zm825_s2_r24572}':
            # a10 # r24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3: # from 0.5
    nr 'Tahle mrtvola u sebe nic nemá… ale všiml sis, že její ruce jsou silně ovázané. Obvazy by se daly použít, ale to by se jich nejprve mrtvola musela být ochotná vzdát.{#zm825_s3_1}'

    menu:
        '"Tuším, že ty klíč nemáš… nevíš náhodou, kterej z tvých kámošů mrtváků by mohl mít od tohoto místa klíč?"{#zm825_s3_r42312}' if zm825Logic.r42312_condition():
            # a11 # r42312
            jump morte1_s31  # EXTERN

        '"Tuším, že ty klíč nemáš… nevíš náhodou, kterej z tvých kámošů mrtváků by mohl mít od tohoto místa klíč?"{#zm825_s3_r42313}' if zm825Logic.r42313_condition():
            # a12 # r42313
            jump zm825_s1

        '"Bylo skvělý si s tebou poklábosit. Sbohem."{#zm825_s3_r42314}':
            # a13 # r42314
            jump zm825_dispose

        'Nechej mrtvolu odpočívat v pokoji.{#zm825_s3_r42315}':
            # a14 # r42315
            jump zm825_dispose
