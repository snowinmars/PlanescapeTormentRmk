init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1072_logic import Zf1072Logic
    zf1072Logic = Zf1072Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1072.DLG
# ###


# s0 # say35114
label zf1072_s0: # - # IF ~  True()
    nr 'Zápach formaldehydu, vycházející z této mrtvoly, je velice silný… jakoby ho někdo použil teprve nedávno, a to z docela rozumných důvodů: mrtvola je ve velmi pokročilém stádiu rozpadu. Chybí jí čelist a z lebky sklouzlo trochu masa, odhalujíc číslo "1072" vyryté do kosti.{#zf1072_s0_}'

    menu:
        '"Myslím, že tahle už na tom byla líp…"{#zf1072_s0_r35115}' if zf1072Logic.r35115_condition():
            # a0 # r35115
            $ zf1072Logic.r35115_action()
            jump zf1072_s1

        '"Myslím, že tahle už na tom byla líp…"{#zf1072_s0_r35132}' if zf1072Logic.r35132_condition():
            # a1 # r35132
            jump zf1072_s1

        '"Vím, že nejsi zombie. Takhle nikoho neoblbneš."{#zf1072_s0_r35133}' if zf1072Logic.r35133_condition():
            # a2 # r35133
            jump zf1072_s1

        'Použij na mrtvole tvou dovednost Kosti-vyprávějte.{#zf1072_s0_r35134}' if zf1072Logic.r35134_condition():
            # a3 # r35134
            jump zf1072_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf1072_s0_r35139}' if zf1072Logic.r35139_condition():
            # a4 # r35139
            jump morte_s346  # EXTERN

        'Nechej mrtvolu být.{#zf1072_s0_r35140}' if zf1072Logic.r35140_condition():
            # a5 # r35140
            jump morte_s346  # EXTERN

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf1072_s0_r35141}' if zf1072Logic.r35141_condition():
            # a6 # r35141
            jump zf1072_dispose

        'Nechej mrtvolu být.{#zf1072_s0_r35142}' if zf1072Logic.r35142_condition():
            # a7 # r35142
            jump zf1072_dispose

        '"Rád jsem si s tebou popovídal. Sbohem."{#zf1072_s0_r35143}' if zf1072Logic.r35143_condition():
            # a8 # r35143
            jump zf1072_dispose

        'Nechej mrtvolu být.{#zf1072_s0_r35144}' if zf1072Logic.r35144_condition():
            # a9 # r35144
            jump zf1072_dispose


# s1 # say35116
label zf1072_s1: # from 0.0 0.1 0.2
    nr 'Tělo na tvůj hlas neodpovídá - možná s tím má co do činění fakt, že nemá čelist. Anebo zkrátka nemá co říct.{#zf1072_s1_}'

    menu:
        '"Sbohem tedy."{#zf1072_s1_r35117}' if zf1072Logic.r35117_condition():
            # a10 # r35117
            jump morte_s346  # EXTERN

        '"Sbohem tedy."{#zf1072_s1_r35130}' if zf1072Logic.r35130_condition():
            # a11 # r35130
            jump zf1072_dispose

        '"Sbohem tedy."{#zf1072_s1_r35131}' if zf1072Logic.r35131_condition():
            # a12 # r35131
            jump zf1072_dispose


# s2 # say35135
label zf1072_s2: # from 0.3
    nr 'Mrtvola se nehýbe. Asi už ti neodpoví na žádnou otázku.{#zf1072_s2_}'

    menu:
        '"Sbohem tedy."{#zf1072_s2_r35136}' if zf1072Logic.r35136_condition():
            # a13 # r35136
            jump morte_s346  # EXTERN

        '"Sbohem tedy."{#zf1072_s2_r35137}' if zf1072Logic.r35137_condition():
            # a14 # r35137
            jump zf1072_dispose

        '"Sbohem tedy."{#zf1072_s2_r35138}' if zf1072Logic.r35138_condition():
            # a15 # r35138
            jump zf1072_dispose


# s3 # say35145
label zf1072_s3: # - # IF ~  False()
    nr 'Mrtvola se nehýbe. Asi už ti neodpoví na žádnou otázku.{#zf1072_s3_}'

    menu:
