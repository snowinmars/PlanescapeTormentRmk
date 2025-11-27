init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm79_logic import Zm79Logic
    zm79Logic = Zm79Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM79.DLG
# ###


# s0 # say34942
label zm79_s0: # - # IF ~  True()
    nr 'Masitá hlava mrtvoly byla čistě odseknutá a úspěšně přišitá zpět. Několik různých druhů stehů - všechny v různém stádiu rozmotání - ukazují, že hlavu neustále někdo uráží a pak zase přišívá. Do spánku je vyryto číslo "79", obkroužené zubatou kružnicí, která byla do kůže asi vypálená cejchem.{#zm79_s0_}'

    menu:
        '"Takže… děje se tady poslední dobou něco zajímavého?"{#zm79_s0_r34943}':
            # a0 # r34943
            $ zm79Logic.r34943_action()
            jump zm79_s1

        'Prozkoumej zubatou kružnici.{#zm79_s0_r34946}' if zm79Logic.r34946_condition():
            # a1 # r34946
            $ zm79Logic.r34946_action()
            jump zm79_s3

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."{#zm79_s0_r34947}' if zm79Logic.r34947_condition():
            # a2 # r34947
            jump zm79_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.{#zm79_s0_r34948}' if zm79Logic.r34948_condition():
            # a3 # r34948
            jump zm79_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zm79_s0_r34951}':
            # a4 # r34951
            jump zm79_dispose

        'Nechej mrtvolu být.{#zm79_s0_r34952}':
            # a5 # r34952
            jump zm79_dispose


# s1 # say34944
label zm79_s1: # from 0.0 0.2
    nr 'Mrtvola na tebe dál zírá.{#zm79_s1_}'

    menu:
        'Nechej mrtvolu být.{#zm79_s1_r34945}':
            # a6 # r34945
            jump zm79_dispose


# s2 # say34949
label zm79_s2: # from 0.3 3.0 3.1
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.{#zm79_s2_}'

    menu:
        'Nechej mrtvolu být.{#zm79_s2_r34950}':
            # a7 # r34950
            jump zm79_dispose


# s3 # say64278
label zm79_s3: # from 0.1
    nr 'Zubatý kruh na nebožtíkově čele vypadá, že byl vypálen před dlouhými roky, pravděpodobně dříve než zemřel. Mohl by to být nějaký druh náboženské ikony, nebo pasáž obřadu. Všimneš si, že jedna z mezer mezi vnitřími „zuby“ má uvnitř malý trojúhelník, jako by měl nějaký zvláštní význam.{#zm79_s3_}'

    menu:
        '"Hmmm. Zajímavé… jak si k té k značce přišel, umrlče?"{#zm79_s3_r64279}' if zm79Logic.r64279_condition():
            # a8 # r64279
            $ zm79Logic.j64536_s3_r64279_action()
            jump zm79_s2

        '"Hmmm… Zajímalo by mě, jestli ty mezery mezi zuby souhlasí s rýhami na mé náušnici …"{#zm79_s3_r64280}' if zm79Logic.r64280_condition():
            # a9 # r64280
            $ zm79Logic.j64537_s3_r64280_action()
            jump zm79_s2
