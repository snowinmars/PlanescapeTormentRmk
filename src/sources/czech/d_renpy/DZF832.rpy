init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf832_logic import Zf832Logic
    zf832Logic = Zf832Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF832.DLG
# ###


# s0 # say35146
label zf832_s0: # - # IF ~  True()
    nr 'Navzdory suché kožnaté pokožce je jasné, že toto tělo kdysi patřilo krásné ženě středních let. Ať už její tělo preparoval kdokoli, dal si s ní práci a sešil ji rty dohromady malými, upravenými stehy a vytetoval jí na čelo "832" elegantním rukopisem.'

    menu:
        '"Takže… cos dělal poslední dobou?"' if zf832Logic.r35147_condition():
            # a0 # r35147
            $ zf832Logic.r35147_action()
            jump zf832_s1

        '"Takže… cos dělala poslední dobou?"' if zf832Logic.r35164_condition():
            # a1 # r35164
            jump zf832_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."' if zf832Logic.r35165_condition():
            # a2 # r35165
            jump zf832_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.' if zf832Logic.r35166_condition():
            # a3 # r35166
            jump zf832_s2

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf832Logic.r35171_condition():
            # a4 # r35171
            jump morte_s350  # EXTERN

        'Nechej mrtvolu být.' if zf832Logic.r35172_condition():
            # a5 # r35172
            jump morte_s350  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf832Logic.r35173_condition():
            # a6 # r35173
            jump zf832_dispose

        'Nechej mrtvolu být.' if zf832Logic.r35174_condition():
            # a7 # r35174
            jump zf832_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."' if zf832Logic.r35175_condition():
            # a8 # r35175
            jump zf832_dispose

        'Nechej mrtvolu být.' if zf832Logic.r35176_condition():
            # a9 # r35176
            jump zf832_dispose


# s1 # say35148
label zf832_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe dál zírá.'

    menu:
        '"Sbohem tedy."' if zf832Logic.r35149_condition():
            # a10 # r35149
            jump morte_s350  # EXTERN

        '"Sbohem tedy."' if zf832Logic.r35162_condition():
            # a11 # r35162
            jump zf832_dispose

        '"Sbohem tedy."' if zf832Logic.r35163_condition():
            # a12 # r35163
            jump zf832_dispose


# s2 # say35167
label zf832_s2: # from 0.3
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.'

    menu:
        '"Sbohem tedy."' if zf832Logic.r35168_condition():
            # a13 # r35168
            jump morte_s350  # EXTERN

        '"Sbohem tedy."' if zf832Logic.r35169_condition():
            # a14 # r35169
            jump zf832_dispose

        '"Sbohem tedy."' if zf832Logic.r35170_condition():
            # a15 # r35170
            jump zf832_dispose


# s3 # say35177
label zf832_s3: # - # IF ~  False()
    nr 'Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.'

    menu:
