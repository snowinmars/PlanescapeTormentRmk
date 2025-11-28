init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.copearc_logic import CopearcLogic
    copearcLogic = CopearcLogic(runtime.global_state_manager)


# ###
# Original:  DLG/COPEARC.DLG
# ###


# s0 # say46723
label copearc_s0: # - # IF ~  True()
    nr 'Náušnice vypadá velice staře. Určitě se měla nějak nosit, ale nikde není háček ani nic jiného, co by ji umožňovalo připevnit k uchu. Po stranách náušnice je několik podivných žlábků.{#copearc_s0_1}'

    menu:
        'Prozkoumej žlábky.{#copearc_s0_r46724}':
            # a0 # r46724
            jump copearc_s1

        'Vlož nehet do žlábku, který odpovídá směru, kterým ukazoval trojúhelník v zubaté kružnici na čele zombie #79.{#copearc_s0_r46725}' if copearcLogic.r46725_condition():
            # a1 # r46725
            $ copearcLogic.r46725_action()
            jump copearc_s2

        'Odlož náušnici.{#copearc_s0_r46726}':
            # a2 # r46726
            jump copearc_dispose


# s1 # say46727
label copearc_s1: # from 0.0
    nr 'ŽLábky jsou rovnoměrně rozmístěny po vnitřku náušnice - při bližším prozkoumání ti něčím připomínají malinké tesáky. Určitě je tam někdo udělal schválně, ale za jakým účelem, to ti není jasné.{#copearc_s1_1}'

    menu:
        'Vlož nehet do žlábku, který odpovídá směru, kterým ukazoval trojúhelník v zubaté kružnici na čele zombie #79.{#copearc_s1_r46728}' if copearcLogic.r46728_condition():
            # a3 # r46728
            $ copearcLogic.r46728_action()
            jump copearc_s2

        'Odlož náušnici.{#copearc_s1_r46729}':
            # a4 # r46729
            jump copearc_dispose


# s2 # say46730
label copearc_s2: # from 0.1 1.0
    nr 'Strčil jsi nehet do třetího žlábku od vrchu a stiskl. Ozvalo se cvaknutí a vrchol náušnice odskočil a otevřel se. Nejenom že teď můžeš konečně nosit náušnici, vidíš vevnitř něco jako tajnou schránku.{#copearc_s2_1}'

    menu:
        'Zatřes náušnicí, jestli něco nevypadne.{#copearc_s2_r46731}':
            # a5 # r46731
            jump copearc_s3


# s3 # say46732
label copearc_s3: # from 2.0
    nr 'Zatřásl jsi náušnicí, ale nic nevypadlo. Ať už tam bylo kdysi schováno cokoli, teď už je to dávno pryč.  POZNÁMKA: Objevení otevíracího mechanismu ti umožní náušnici nosit. Navíc, tajná schránka zvyšuje cenu náušnice.{#copearc_s3_1}'

    menu:
        'Odlož náušnici.{#copearc_s3_r46733}':
            # a6 # r46733
            $ copearcLogic.r46733_action()
            jump copearc_dispose
