init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1072_logic import Zf1072Logic
    zf1072Logic = Zf1072Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1072.DLG
# ###


# s0 # say35114
label zf1072_s0: # - # IF ~  True()
    nr 'Woń formaliny, jaka unosi się od tej martwej kobiety jest szczególnie mocna… cuchnie tak, jakby zastosowano ją niedawno i z bardzo dobrego powodu: ciało wydaje się być w zaawansowanym stadium rozkładu. Trup nie ma szczęki; od czaszki odpadło kilka kawałków ciała, odsłaniając numer "1072" wygrawerowany na kości.'

    menu:
        '"Ta to chyba widywała już lepsze czasy…"' if zf1072Logic.r35115_condition():
            # a0 # r35115
            $ zf1072Logic.r35115_action()
            jump zf1072_s1

        '"Ta to chyba widywała już lepsze czasy…"' if zf1072Logic.r35132_condition():
            # a1 # r35132
            jump zf1072_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zf1072Logic.r35133_condition():
            # a2 # r35133
            jump zf1072_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zf1072Logic.r35134_condition():
            # a3 # r35134
            jump zf1072_s2

        '"Miło było z tobą pogadać. Żegnaj."' if zf1072Logic.r35139_condition():
            # a4 # r35139
            jump morte_s346  # EXTERN

        'Zostaw truposza w spokoju.' if zf1072Logic.r35140_condition():
            # a5 # r35140
            jump morte_s346  # EXTERN

        '"Miło było z tobą pogadać. Żegnaj."' if zf1072Logic.r35141_condition():
            # a6 # r35141
            jump zf1072_dispose

        'Zostaw truposza w spokoju.' if zf1072Logic.r35142_condition():
            # a7 # r35142
            jump zf1072_dispose

        '"Miło było z tobą pogadać. Żegnaj."' if zf1072Logic.r35143_condition():
            # a8 # r35143
            jump zf1072_dispose

        'Zostaw truposza w spokoju.' if zf1072Logic.r35144_condition():
            # a9 # r35144
            jump zf1072_dispose


# s1 # say35116
label zf1072_s1: # from 0.0 0.1 0.2
    nr 'Trup nie odpowiada na twoje słowa, co może być spowodowane brakującą szczęką. Albo może nie ma nic do powiedzenia.'

    menu:
        '"A zatem żegnaj."' if zf1072Logic.r35117_condition():
            # a10 # r35117
            jump morte_s346  # EXTERN

        '"A zatem żegnaj."' if zf1072Logic.r35130_condition():
            # a11 # r35130
            jump zf1072_dispose

        '"A zatem żegnaj."' if zf1072Logic.r35131_condition():
            # a12 # r35131
            jump zf1072_dispose


# s2 # say35135
label zf1072_s2: # from 0.3
    nr 'Trup nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        '"A zatem żegnaj."' if zf1072Logic.r35136_condition():
            # a13 # r35136
            jump morte_s346  # EXTERN

        '"A zatem żegnaj."' if zf1072Logic.r35137_condition():
            # a14 # r35137
            jump zf1072_dispose

        '"A zatem żegnaj."' if zf1072Logic.r35138_condition():
            # a15 # r35138
            jump zf1072_dispose


# s3 # say35145
label zf1072_s3: # - # IF ~  False()
    nr 'Trup nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
