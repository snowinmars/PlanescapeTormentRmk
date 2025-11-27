init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf891_logic import Zf891Logic
    zf891Logic = Zf891Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF891.DLG
# ###


# s0 # say35274
label zf891_s0: # - # IF ~  True()
    nr 'Obzvláště příšerně vypadající ženské tělo postrádá uši, nos a rty. Aby jí mohl sešít čelist, preparátor jí stáhnul kůži kolem úst obzvláště pevně. Řada zkřivených zažloutlých zubů je stále vidět skrze úzkou štěrbinu. Nad obočím má vyryto číslo "891".{#zf891_s0_}'

    menu:
        '"Takže… cos dělala poslední dobou?"{#zf891_s0_r35275}' if zf891Logic.r35275_condition():
            # a0 # r35275
            $ zf891Logic.r35275_action()
            jump zf891_s1

        '"Takže… cos dělala poslední dobou?"{#zf891_s0_r35292}' if zf891Logic.r35292_condition():
            # a1 # r35292
            jump zf891_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."{#zf891_s0_r35293}' if zf891Logic.r35293_condition():
            # a2 # r35293
            jump zf891_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.{#zf891_s0_r35294}' if zf891Logic.r35294_condition():
            # a3 # r35294
            jump zf891_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf891_s0_r35299}' if zf891Logic.r35299_condition():
            # a4 # r35299
            jump morte_s366  # EXTERN

        'Nechej mrtvolu být.{#zf891_s0_r35300}' if zf891Logic.r35300_condition():
            # a5 # r35300
            jump morte_s366  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf891_s0_r35301}' if zf891Logic.r35301_condition():
            # a6 # r35301
            jump zf891_dispose

        'Nechej mrtvolu být.{#zf891_s0_r35302}' if zf891Logic.r35302_condition():
            # a7 # r35302
            jump zf891_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf891_s0_r35303}' if zf891Logic.r35303_condition():
            # a8 # r35303
            jump zf891_dispose

        'Nechej mrtvolu být.{#zf891_s0_r35304}' if zf891Logic.r35304_condition():
            # a9 # r35304
            jump zf891_dispose


# s1 # say35276
label zf891_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.{#zf891_s1_}'

    menu:
        '"Sbohem tedy."{#zf891_s1_r35277}' if zf891Logic.r35277_condition():
            # a10 # r35277
            jump morte_s366  # EXTERN

        '"Sbohem tedy."{#zf891_s1_r35290}' if zf891Logic.r35290_condition():
            # a11 # r35290
            jump zf891_dispose

        '"Sbohem tedy."{#zf891_s1_r35291}' if zf891Logic.r35291_condition():
            # a12 # r35291
            jump zf891_dispose


# s2 # say35295
label zf891_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.{#zf891_s2_}'

    menu:
        '"Sbohem tedy."{#zf891_s2_r35296}' if zf891Logic.r35296_condition():
            # a13 # r35296
            jump morte_s366  # EXTERN

        '"Sbohem tedy."{#zf891_s2_r35297}' if zf891Logic.r35297_condition():
            # a14 # r35297
            jump zf891_dispose

        '"Sbohem tedy."{#zf891_s2_r35298}' if zf891Logic.r35298_condition():
            # a15 # r35298
            jump zf891_dispose


# s3 # say35305
label zf891_s3: # - # IF ~  False()
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.{#zf891_s3_}'

    menu:
