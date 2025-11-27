init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1148_logic import Zf1148Logic
    zf1148Logic = Zf1148Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1148.DLG
# ###


# s0 # say35242
label zf1148_s0: # - # IF ~  True()
    nr 'Kůže tohoto ženského těla je hustě potetovaná složitými vzory. Kůže u jejího obočí je stáhnutá, takže do kosti někdo mohl vyrýt číslo "1148". Její pusa je pevně sešita hrubými, neumělými stehy.{#zf1148_s0_}'

    menu:
        '"Takže… cos dělala poslední dobou?"{#zf1148_s0_r35243}' if zf1148Logic.r35243_condition():
            # a0 # r35243
            $ zf1148Logic.r35243_action()
            jump zf1148_s1

        '"Takže… cos dělal poslední dobou?"{#zf1148_s0_r35260}' if zf1148Logic.r35260_condition():
            # a1 # r35260
            jump zf1148_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."{#zf1148_s0_r35261}' if zf1148Logic.r35261_condition():
            # a2 # r35261
            jump zf1148_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.{#zf1148_s0_r35262}' if zf1148Logic.r35262_condition():
            # a3 # r35262
            jump zf1148_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf1148_s0_r35267}' if zf1148Logic.r35267_condition():
            # a4 # r35267
            jump morte_s362  # EXTERN

        'Nechej mrtvolu být.{#zf1148_s0_r35268}' if zf1148Logic.r35268_condition():
            # a5 # r35268
            jump morte_s362  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf1148_s0_r35269}' if zf1148Logic.r35269_condition():
            # a6 # r35269
            jump zf1148_dispose

        'Nechej mrtvolu být.{#zf1148_s0_r35270}' if zf1148Logic.r35270_condition():
            # a7 # r35270
            jump zf1148_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf1148_s0_r35271}' if zf1148Logic.r35271_condition():
            # a8 # r35271
            jump zf1148_dispose

        'Nechej mrtvolu být.{#zf1148_s0_r35272}' if zf1148Logic.r35272_condition():
            # a9 # r35272
            jump zf1148_dispose


# s1 # say35244
label zf1148_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.{#zf1148_s1_}'

    menu:
        '"Sbohem tedy."{#zf1148_s1_r35245}' if zf1148Logic.r35245_condition():
            # a10 # r35245
            jump morte_s362  # EXTERN

        '"Sbohem tedy."{#zf1148_s1_r35258}' if zf1148Logic.r35258_condition():
            # a11 # r35258
            jump zf1148_dispose

        '"Sbohem tedy."{#zf1148_s1_r35259}' if zf1148Logic.r35259_condition():
            # a12 # r35259
            jump zf1148_dispose


# s2 # say35263
label zf1148_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.{#zf1148_s2_}'

    menu:
        '"Sbohem tedy."{#zf1148_s2_r35264}' if zf1148Logic.r35264_condition():
            # a13 # r35264
            jump morte_s362  # EXTERN

        '"Sbohem tedy."{#zf1148_s2_r35265}' if zf1148Logic.r35265_condition():
            # a14 # r35265
            jump zf1148_dispose

        '"Sbohem tedy."{#zf1148_s2_r35266}' if zf1148Logic.r35266_condition():
            # a15 # r35266
            jump zf1148_dispose


# s3 # say35273
label zf1148_s3: # - # IF ~  False()
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.{#zf1148_s3_}'

    menu:
