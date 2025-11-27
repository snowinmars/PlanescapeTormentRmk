init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf832_logic import Zf832Logic
    zf832Logic = Zf832Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF832.DLG
# ###


# s0 # say35146
label zf832_s0: # - # IF ~  True()
    nr 'Pomimo suchej, workowatej skóry, jest jasne, że to trup kobiety w średnim wieku, która niegdyś była bardzo ładna. Ktokolwiek przygotowywał to ciało chyba ulitował się nad nią, gdyż zszył jej wygięte w łuk usta małymi, eleganckimi nićmi, a numer "832" wytatuował na jej czole elegancką czcionką.{#zf832_s0_}'

    menu:
        '"Więc jak… masz jakieś plany na później?"{#zf832_s0_r35147}' if zf832Logic.r35147_condition():
            # a0 # r35147
            $ zf832Logic.r35147_action()
            jump zf832_s1

        '"Więc jak… masz jakieś plany na później?"{#zf832_s0_r35164}' if zf832Logic.r35164_condition():
            # a1 # r35164
            jump zf832_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zf832_s0_r35165}' if zf832Logic.r35165_condition():
            # a2 # r35165
            jump zf832_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zf832_s0_r35166}' if zf832Logic.r35166_condition():
            # a3 # r35166
            jump zf832_s2

        '"Miło było z tobą pogadać. Żegnaj."{#zf832_s0_r35171}' if zf832Logic.r35171_condition():
            # a4 # r35171
            jump morte_s350  # EXTERN

        'Zostaw truposza w spokoju.{#zf832_s0_r35172}' if zf832Logic.r35172_condition():
            # a5 # r35172
            jump morte_s350  # EXTERN

        '"Miło było z tobą pogadać. Żegnaj."{#zf832_s0_r35173}' if zf832Logic.r35173_condition():
            # a6 # r35173
            jump zf832_dispose

        'Zostaw truposza w spokoju.{#zf832_s0_r35174}' if zf832Logic.r35174_condition():
            # a7 # r35174
            jump zf832_dispose

        '"Miło było z tobą pogadać. Żegnaj."{#zf832_s0_r35175}' if zf832Logic.r35175_condition():
            # a8 # r35175
            jump zf832_dispose

        'Zostaw truposza w spokoju.{#zf832_s0_r35176}' if zf832Logic.r35176_condition():
            # a9 # r35176
            jump zf832_dispose


# s1 # say35148
label zf832_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.{#zf832_s1_}'

    menu:
        '"A zatem żegnaj."{#zf832_s1_r35149}' if zf832Logic.r35149_condition():
            # a10 # r35149
            jump morte_s350  # EXTERN

        '"A zatem żegnaj."{#zf832_s1_r35162}' if zf832Logic.r35162_condition():
            # a11 # r35162
            jump zf832_dispose

        '"A zatem żegnaj."{#zf832_s1_r35163}' if zf832Logic.r35163_condition():
            # a12 # r35163
            jump zf832_dispose


# s2 # say35167
label zf832_s2: # from 0.3
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zf832_s2_}'

    menu:
        '"A zatem żegnaj."{#zf832_s2_r35168}' if zf832Logic.r35168_condition():
            # a13 # r35168
            jump morte_s350  # EXTERN

        '"A zatem żegnaj."{#zf832_s2_r35169}' if zf832Logic.r35169_condition():
            # a14 # r35169
            jump zf832_dispose

        '"A zatem żegnaj."{#zf832_s2_r35170}' if zf832Logic.r35170_condition():
            # a15 # r35170
            jump zf832_dispose


# s3 # say35177
label zf832_s3: # - # IF ~  False()
    nr 'Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zf832_s3_}'

    menu:
