init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf114_logic import Zf114Logic
    zf114Logic = Zf114Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###


# s0 # say34986
label zf114_s0: # - # IF ~  True()
    nr 'Když jsi se přiblížil, mrtvola ženy se na chvíli přestala potácet po místnosti. Na jejím čele sis všiml vyrytého čísla "114". Pusu má pevně sešitou, ale stehy začínají pomalu povolovat, takže z jejích rtů uniká slabý nářek.'

    menu:
        '"Takže… cos dělala poslední dobou?"' if zf114Logic.r34987_condition():
            # a0 # r34987
            $ zf114Logic.r34987_action()
            jump zf114_s1

        '"Takže… cos dělala poslední dobou?"' if zf114Logic.r35004_condition():
            # a1 # r35004
            jump zf114_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."' if zf114Logic.r35005_condition():
            # a2 # r35005
            jump zf114_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.' if zf114Logic.r35006_condition():
            # a3 # r35006
            jump zf114_s2

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf114Logic.r35011_condition():
            # a4 # r35011
            jump morte_s330  # EXTERN

        'Nechej mrtvolu být.' if zf114Logic.r35012_condition():
            # a5 # r35012
            jump morte_s330  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf114Logic.r35013_condition():
            # a6 # r35013
            jump zf114_dispose

        'Nechej mrtvolu být.' if zf114Logic.r35014_condition():
            # a7 # r35014
            jump zf114_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf114Logic.r35015_condition():
            # a8 # r35015
            jump zf114_dispose

        'Nechej mrtvolu být.' if zf114Logic.r35016_condition():
            # a9 # r35016
            jump zf114_dispose


# s1 # say34988
label zf114_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.'

    menu:
        '"Sbohem tedy."' if zf114Logic.r34989_condition():
            # a10 # r34989
            jump morte_s330  # EXTERN

        '"Sbohem tedy."' if zf114Logic.r35002_condition():
            # a11 # r35002
            jump zf114_dispose

        '"Sbohem tedy."' if zf114Logic.r35003_condition():
            # a12 # r35003
            jump zf114_dispose


# s2 # say35007
label zf114_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.'

    menu:
        '"Sbohem tedy."' if zf114Logic.r35008_condition():
            # a13 # r35008
            jump morte_s330  # EXTERN

        '"Sbohem tedy."' if zf114Logic.r35009_condition():
            # a14 # r35009
            jump zf114_dispose

        '"Sbohem tedy."' if zf114Logic.r35010_condition():
            # a15 # r35010
            jump zf114_dispose


# s3 # say35017
label zf114_s3: # - # IF ~  False()
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.'

    menu:
