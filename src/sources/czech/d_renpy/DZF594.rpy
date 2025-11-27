init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf594_logic import Zf594Logic
    zf594Logic = Zf594Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF594.DLG
# ###


# s0 # say35018
label zf594_s0: # - # IF ~  True()
    nr 'Belhající se mrtvola na tebe zírá prázdnýma očima. Kůži má tenkou jako papír… jako by její tělo někdo potáhl hustou pavučinou. Uhlem má na čele napsané číslo "594".{#zf594_s0_}'

    menu:
        '"Takže… cos dělala poslední dobou?"{#zf594_s0_r35019}' if zf594Logic.r35019_condition():
            # a0 # r35019
            $ zf594Logic.r35019_action()
            jump zf594_s1

        '"Takže… cos dělala poslední dobou?"{#zf594_s0_r35036}' if zf594Logic.r35036_condition():
            # a1 # r35036
            jump zf594_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."{#zf594_s0_r35037}' if zf594Logic.r35037_condition():
            # a2 # r35037
            jump zf594_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.{#zf594_s0_r35038}' if zf594Logic.r35038_condition():
            # a3 # r35038
            jump zf594_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf594_s0_r35043}' if zf594Logic.r35043_condition():
            # a4 # r35043
            jump morte_s334  # EXTERN

        'Nechej mrtvolu být.{#zf594_s0_r35044}' if zf594Logic.r35044_condition():
            # a5 # r35044
            jump morte_s334  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf594_s0_r35045}' if zf594Logic.r35045_condition():
            # a6 # r35045
            jump zf594_dispose

        'Nechej mrtvolu být.{#zf594_s0_r35046}' if zf594Logic.r35046_condition():
            # a7 # r35046
            jump zf594_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf594_s0_r35047}' if zf594Logic.r35047_condition():
            # a8 # r35047
            jump zf594_dispose

        'Nechej mrtvolu být.{#zf594_s0_r35048}' if zf594Logic.r35048_condition():
            # a9 # r35048
            jump zf594_dispose


# s1 # say35020
label zf594_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.{#zf594_s1_}'

    menu:
        '"Sbohem tedy."{#zf594_s1_r35021}' if zf594Logic.r35021_condition():
            # a10 # r35021
            jump morte_s334  # EXTERN

        '"Sbohem tedy."{#zf594_s1_r35034}' if zf594Logic.r35034_condition():
            # a11 # r35034
            jump zf594_dispose

        '"Sbohem tedy."{#zf594_s1_r35035}' if zf594Logic.r35035_condition():
            # a12 # r35035
            jump zf594_dispose


# s2 # say35039
label zf594_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.{#zf594_s2_}'

    menu:
        '"Sbohem tedy."{#zf594_s2_r35040}' if zf594Logic.r35040_condition():
            # a13 # r35040
            jump morte_s334  # EXTERN

        '"Sbohem tedy."{#zf594_s2_r35041}' if zf594Logic.r35041_condition():
            # a14 # r35041
            jump zf594_dispose

        '"Sbohem tedy."{#zf594_s2_r35042}' if zf594Logic.r35042_condition():
            # a15 # r35042
            jump zf594_dispose


# s3 # say35049
label zf594_s3: # - # IF ~  False()
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.{#zf594_s3_}'

    menu:
