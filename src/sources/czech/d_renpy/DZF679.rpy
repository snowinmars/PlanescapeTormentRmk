init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf679_logic import Zf679Logic
    zf679Logic = Zf679Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF679.DLG
# ###


# s0 # say35178
label zf679_s0: # - # IF ~  True()
    nr 'Toto je tělo staré, možná dokonce prastaré ženy. Kromě zápachu balzamovací tekutiny, stehů, držících ústa a čísla "679" vyšitého na její pravé tváři, vypadá nejspíš skoro stejně, jako vypadala během svých posledních dnů.'

    menu:
        '"Takže… cos dělala poslední dobou?"' if zf679Logic.r35179_condition():
            # a0 # r35179
            $ zf679Logic.r35179_action()
            jump zf679_s1

        '"Takže… cos dělala poslední dobou?"' if zf679Logic.r35196_condition():
            # a1 # r35196
            jump zf679_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."' if zf679Logic.r35197_condition():
            # a2 # r35197
            jump zf679_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.' if zf679Logic.r35198_condition():
            # a3 # r35198
            jump zf679_s2

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf679Logic.r35203_condition():
            # a4 # r35203
            jump morte_s354  # EXTERN

        'Nechej mrtvolu být.' if zf679Logic.r35204_condition():
            # a5 # r35204
            jump morte_s354  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf679Logic.r35205_condition():
            # a6 # r35205
            jump zf679_dispose

        'Nechej mrtvolu být.' if zf679Logic.r35206_condition():
            # a7 # r35206
            jump zf679_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf679Logic.r35207_condition():
            # a8 # r35207
            jump zf679_dispose

        'Nechej mrtvolu být.' if zf679Logic.r35208_condition():
            # a9 # r35208
            jump zf679_dispose


# s1 # say35180
label zf679_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.'

    menu:
        '"Sbohem tedy."' if zf679Logic.r35181_condition():
            # a10 # r35181
            jump morte_s354  # EXTERN

        '"Sbohem tedy."' if zf679Logic.r35194_condition():
            # a11 # r35194
            jump zf679_dispose

        '"Sbohem tedy."' if zf679Logic.r35195_condition():
            # a12 # r35195
            jump zf679_dispose


# s2 # say35199
label zf679_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.'

    menu:
        '"Sbohem tedy."' if zf679Logic.r35200_condition():
            # a13 # r35200
            jump morte_s354  # EXTERN

        '"Sbohem tedy."' if zf679Logic.r35201_condition():
            # a14 # r35201
            jump zf679_dispose

        '"Sbohem tedy."' if zf679Logic.r35202_condition():
            # a15 # r35202
            jump zf679_dispose


# s3 # say35209
label zf679_s3: # - # IF ~  False()
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.'

    menu:
