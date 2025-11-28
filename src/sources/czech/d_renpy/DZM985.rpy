init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm985_logic import Zm985Logic
    zm985Logic = Zm985Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM985.DLG
# ###


# s0 # say45515
label zm985_s0: # - # IF ~  Global("Topple_985","GLOBAL",0)
    nr 'Tato mrtvola - "985" - zůstala stát v půli cesty; se zřetelem na stav její levé nohy to vypadá, že se jí do kolena zahryzal nějaký druh plísně nebo hniloby. Mrtvola se kymácí zepředu dozadu a snaží se udržet rovnováhu.{#zm985_s0_1}'

    menu:
        'Strč do mrtvoly.{#zm985_s0_r45516}' if zm985Logic.r45516_condition():
            # a0 # r45516
            $ zm985Logic.r45516_action()
            jump morte_s482  # EXTERN

        'Strč do mrtvoly.{#zm985_s0_r45517}' if zm985Logic.r45517_condition():
            # a1 # r45517
            $ zm985Logic.r45517_action()
            jump zm985_s3

        'Pomoz mrtvole udržet rovnováhu.{#zm985_s0_r45518}' if zm985Logic.r45518_condition():
            # a2 # r45518
            $ zm985Logic.r45518_action()
            jump zm985_s4

        'Pomoz mrtvole udržet rovnováhu.{#zm985_s0_r45519}' if zm985Logic.r45519_condition():
            # a3 # r45519
            $ zm985Logic.r45519_action()
            jump zm985_s6

        '"Ty nejsi zombie, vždyť víš. Tady nikoho neošálíš."{#zm985_s0_r45520}' if zm985Logic.r45520_condition():
            # a4 # r45520
            jump zm985_s1

        'Použij na mrtvolu svoji schopnost Historky-kosti-povídejte.{#zm985_s0_r45521}' if zm985Logic.r45521_condition():
            # a5 # r45521
            jump zm985_s2

        '"Pěkně jsem si s tebou popovídal. Sbohem."{#zm985_s0_r45522}':
            # a6 # r45522
            jump zm985_dispose

        'Nechej mrtvolu být.{#zm985_s0_r45523}':
            # a7 # r45523
            jump zm985_dispose


# s1 # say45524
label zm985_s1: # from 0.4 5.0 5.1 5.2
    nr 'Mrtvola tupě civí dopředu. Není na ní ani známka toho, že by tě slyšela.{#zm985_s1_1}'

    menu:
        'Nechej mrtvolu být.{#zm985_s1_r45525}':
            # a8 # r45525
            jump zm985_dispose


# s2 # say45526
label zm985_s2: # from 0.5 5.3
    nr 'Mrtvola se nehýbe. Zdá se, že už to s ní došlo příliš daleko na to, aby ti mohla odpovědět.{#zm985_s2_1}'

    menu:
        'Nechej mrtvolu být.{#zm985_s2_r45527}':
            # a9 # r45527
            jump zm985_dispose


# s3 # say45528
label zm985_s3: # from 0.1 6.0
    nr 'Z levé nohy mrtvoly se ozvalo takové *prask* a tělo se skácelo k zemi jako uschlý strom. Jeho torzo narazilo do kamenných dlaždic a rozpadlo se jako shnilý meloun a z dutin jí vybublal hnis a nečistoty. K tvému údivu si pravděpodobně nikdo pádu mrtvoly nevšiml… a co více, ta levá noha zůstala jako v pozoru stát tam, kde stálo tělo. Po chvíli spadla s vlhkým *žuch* i noha.{#zm985_s3_1}'

    $ zm985Logic.s3_action()
    jump zm985_s7


# s4 # say45530
label zm985_s4: # from 0.2
    nr 'Chňapl jsi levou ruku mrtvoly ve snaze ji ustálit. Nicméně, jakmile jsi zachytil její paži, naklonila se mrtvola najednou doprava, takže jsi ji nakonec místo narovnání začal natahovat…{#zm985_s4_1}'

    $ zm985Logic.s4_action()
    jump morte_s482  # EXTERN


# s5 # say45531
label zm985_s5: # - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    nr 'Vypadá to, jako by někdo vyměnil levou ruku a nohu této mrtvoly za náhradní údy z jiného těla. Levá noha je kratší než původní, ale mrtvola je teď alespoň schopna stát.{#zm985_s5_1}'

    menu:
        '"Promiň, že jsem tě předtím povalil. Byla to nehoda."{#zm985_s5_r45532}' if zm985Logic.r45532_condition():
            # a10 # r45532
            $ zm985Logic.r45532_action()
            jump zm985_s1

        '"Promiň, že jsem tě předtím povalil. Byla to nehoda."{#zm985_s5_r45533}' if zm985Logic.r45533_condition():
            # a11 # r45533
            jump zm985_s1

        '"Ty nejsi zombie, vždyť víš. Tady nikoho neošálíš."{#zm985_s5_r45534}' if zm985Logic.r45534_condition():
            # a12 # r45534
            jump zm985_s1

        'Použij na mrtvolu svoji schopnost Historky-kosti-povídejte.{#zm985_s5_r45535}' if zm985Logic.r45535_condition():
            # a13 # r45535
            jump zm985_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zm985_s5_r45536}':
            # a14 # r45536
            jump zm985_dispose

        'Nechej mrtvolu být.{#zm985_s5_r45537}':
            # a15 # r45537
            jump zm985_dispose


# s6 # say45538
label zm985_s6: # from 0.3
    nr 'Chňapl jsi levou ruku mrtvoly ve snaze ji ustálit. Nicméně, jakmile jsi zachytil její paži, naklonila se mrtvola najednou doprava, takže jsi ji nakonec místo narovnání začal natahovat…{#zm985_s6_1}'

    menu:
        '"Uch-och…"{#zm985_s6_r45539}':
            # a16 # r45539
            $ zm985Logic.r45539_action()
            jump zm985_s3


# s7 # say64205
label zm985_s7: # from 3.0
    nr 'Jak hledíš na hnijící zbytky mrtvoly, všímáš si, že jeho levá paže je neporušená - během pádu se od těla odtrhla a nevypadá, že by byla napadena posmrtným rozkladem, jako zbytek těla.{#zm985_s7_1}'

    menu:
        '"Hmmm. Přemýšlím, co kdyby se ta paže mohla hodit…"{#zm985_s7_r64206}':
            # a17 # r64206
            jump zm985_dispose
