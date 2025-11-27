init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf444_logic import Zf444Logic
    zf444Logic = Zf444Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF444.DLG
# ###


# s0 # say35210
label zf444_s0: # - # IF ~  True()
    nr 'Toto ženské tělo je v příšerném stavu. Její kůži pokrývá něco, co vypadá jako stovky malých kousnutí - nejspíš od krys. Podle stavu tkáně kolem ran soudíš, že byly nejspíš způsobeny před preparací těla. Její rty jsou pevně sešity a na její tváři je temně modrým inkoustem napsáno číslo "444".{#zf444_s0_}'

    menu:
        '"Takže… cos dělala poslední dobou?"{#zf444_s0_r35211}' if zf444Logic.r35211_condition():
            # a0 # r35211
            $ zf444Logic.r35211_action()
            jump zf444_s1

        '"Takže… cos dělal poslední dobou?"{#zf444_s0_r35228}' if zf444Logic.r35228_condition():
            # a1 # r35228
            jump zf444_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."{#zf444_s0_r35229}' if zf444Logic.r35229_condition():
            # a2 # r35229
            jump zf444_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.{#zf444_s0_r35230}' if zf444Logic.r35230_condition():
            # a3 # r35230
            jump zf444_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf444_s0_r35235}' if zf444Logic.r35235_condition():
            # a4 # r35235
            jump morte_s358  # EXTERN

        'Nechej mrtvolu být.{#zf444_s0_r35236}' if zf444Logic.r35236_condition():
            # a5 # r35236
            jump morte_s358  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf444_s0_r35237}' if zf444Logic.r35237_condition():
            # a6 # r35237
            jump zf444_dispose

        'Nechej mrtvolu být.{#zf444_s0_r35238}' if zf444Logic.r35238_condition():
            # a7 # r35238
            jump zf444_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf444_s0_r35239}' if zf444Logic.r35239_condition():
            # a8 # r35239
            jump zf444_dispose

        'Nechej mrtvolu být.{#zf444_s0_r35240}' if zf444Logic.r35240_condition():
            # a9 # r35240
            jump zf444_dispose


# s1 # say35212
label zf444_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.{#zf444_s1_}'

    menu:
        '"Sbohem tedy."{#zf444_s1_r35213}' if zf444Logic.r35213_condition():
            # a10 # r35213
            jump morte_s358  # EXTERN

        '"Sbohem tedy."{#zf444_s1_r35226}' if zf444Logic.r35226_condition():
            # a11 # r35226
            jump zf444_dispose

        '"Sbohem tedy."{#zf444_s1_r35227}' if zf444Logic.r35227_condition():
            # a12 # r35227
            jump zf444_dispose


# s2 # say35231
label zf444_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.{#zf444_s2_}'

    menu:
        '"Sbohem tedy."{#zf444_s2_r35232}' if zf444Logic.r35232_condition():
            # a13 # r35232
            jump morte_s358  # EXTERN

        '"Sbohem tedy."{#zf444_s2_r35233}' if zf444Logic.r35233_condition():
            # a14 # r35233
            jump zf444_dispose

        '"Sbohem tedy."{#zf444_s2_r35234}' if zf444Logic.r35234_condition():
            # a15 # r35234
            jump zf444_dispose


# s3 # say35241
label zf444_s3: # - # IF ~  False()
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.{#zf444_s3_}'

    menu:
