init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm199_logic import Zm199Logic
    zm199Logic = Zm199Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM199.DLG
# ###


# s0 # say34975
label zm199_s0: # - # IF ~  True()
    nr 'Oživená mrtvola za sebou táhne pach spáleného masa a textilu. Po celé pravé straně má stopy čerstvých popálenin, možná stála příliš blízko ohně a začala doutnat. Do čela má vyryto číslo "199" a má pevně sešité rty.'

    menu:
        '"Takže… děje se tady poslední dobou něco zajímavého?"' if zm199Logic.r34976_condition():
            # a0 # r34976
            $ zm199Logic.r34976_action()
            jump zm199_s1

        '"Takže… děje se tady poslední dobou něco zajímavého?"' if zm199Logic.r34979_condition():
            # a1 # r34979
            jump zm199_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."' if zm199Logic.r34980_condition():
            # a2 # r34980
            jump zm199_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.' if zm199Logic.r34981_condition():
            # a3 # r34981
            jump zm199_s2

        '"Rád jsem si s tebou popovídal. Sbohem."':
            # a4 # r34984
            jump zm199_dispose

        'Nechej mrtvolu být.':
            # a5 # r34985
            jump zm199_dispose


# s1 # say34977
label zm199_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.'

    menu:
        'Nechej mrtvolu být.':
            # a6 # r34978
            jump zm199_dispose


# s2 # say34982
label zm199_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.'

    menu:
        'Nechej mrtvolu být.':
            # a7 # r34983
            jump zm199_dispose
