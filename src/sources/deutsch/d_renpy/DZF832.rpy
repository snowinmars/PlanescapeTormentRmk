init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf832_logic import Zf832Logic
    zf832Logic = Zf832Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF832.DLG
# ###


# s0 # say35146
label zf832_s0: # - # IF ~  True()
    nr 'Trotz der trockenen, ledrigen Haut dieser Leiche ist es noch immer offensichtlich, daß sie einmal eine schöne Frau mittleren Alters gewesen ist. Wer auch immer die Leiche präpariert hat, scheint Mitleid mit ihr gehabt zu haben, denn die Lippen sind mit kleinen, sauberen Stichen zugenäht, und die Zahl "832" ist in einer eleganten Schrift auf ihre Stirn tätowiert.{#zf832_s0_1}'

    menu:
        '"Sag mal… hast du nachher schon was vor?"{#zf832_s0_r35147}' if zf832Logic.r35147_condition():
            # a0 # r35147
            $ zf832Logic.r35147_action()
            jump zf832_s1

        '"Sag mal… hast du nachher schon was vor?"{#zf832_s0_r35164}' if zf832Logic.r35164_condition():
            # a1 # r35164
            jump zf832_s1

        '"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."{#zf832_s0_r35165}' if zf832Logic.r35165_condition():
            # a2 # r35165
            jump zf832_s1

        'Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.{#zf832_s0_r35166}' if zf832Logic.r35166_condition():
            # a3 # r35166
            jump zf832_s2

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zf832_s0_r35171}' if zf832Logic.r35171_condition():
            # a4 # r35171
            jump morte_s350  # EXTERN

        'Laß die Leiche in Ruhe.{#zf832_s0_r35172}' if zf832Logic.r35172_condition():
            # a5 # r35172
            jump morte_s350  # EXTERN

        '"Danke für die anregende Unterhaltung. Leb wohl."{#zf832_s0_r35173}' if zf832Logic.r35173_condition():
            # a6 # r35173
            jump zf832_dispose

        'Laß die Leiche in Ruhe.{#zf832_s0_r35174}' if zf832Logic.r35174_condition():
            # a7 # r35174
            jump zf832_dispose

        '"Es war nett, sich mit dir zu unterhalten. Leb wohl."{#zf832_s0_r35175}' if zf832Logic.r35175_condition():
            # a8 # r35175
            jump zf832_dispose

        'Laß die Leiche in Ruhe.{#zf832_s0_r35176}' if zf832Logic.r35176_condition():
            # a9 # r35176
            jump zf832_dispose


# s1 # say35148
label zf832_s1: # from 0.0 0.1 0.2
    nr 'Die Leiche starrt dich weiter an.{#zf832_s1_1}'

    menu:
        '"Dann leb wohl."{#zf832_s1_r35149}' if zf832Logic.r35149_condition():
            # a10 # r35149
            jump morte_s350  # EXTERN

        '"Na dann leb wohl."{#zf832_s1_r35162}' if zf832Logic.r35162_condition():
            # a11 # r35162
            jump zf832_dispose

        '"Na dann leb wohl."{#zf832_s1_r35163}' if zf832Logic.r35163_condition():
            # a12 # r35163
            jump zf832_dispose


# s2 # say35167
label zf832_s2: # from 0.3
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf832_s2_1}'

    menu:
        '"Dann leb wohl."{#zf832_s2_r35168}' if zf832Logic.r35168_condition():
            # a13 # r35168
            jump morte_s350  # EXTERN

        '"Dann leb wohl."{#zf832_s2_r35169}' if zf832Logic.r35169_condition():
            # a14 # r35169
            jump zf832_dispose

        '"Dann leb wohl."{#zf832_s2_r35170}' if zf832Logic.r35170_condition():
            # a15 # r35170
            jump zf832_dispose


# s3 # say35177
label zf832_s3: # - # IF ~  False()
    nr 'Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.{#zf832_s3_1}'

    menu:
