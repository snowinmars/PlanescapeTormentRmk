init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm965_logic import Zm965Logic
    zm965Logic = Zm965Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM965.DLG
# ###


# s0 # say34920
label zm965_s0: # - # IF ~  NearbyDialog("Dmorte")
    nr 'Ten trup łazi ociężale po drodze w kształcie trójkąta. Kiedy już dojdzie do któregoś z kątów, zatrzymuje się, odwraca i kuśtyka do następnego rogu. Z boku czaszki ma wytatuowany numer "965". Kiedy doń podchodzisz, zatrzymuje się i patrzy na ciebie.{#zm965_s0_1}'

    jump morte_s477  # EXTERN


# s1 # say34922
label zm965_s1: # externs morte_s481 morte_s480 # IF ~  !NearbyDialog("Dmorte")
    nr 'Ten trup łazi ociężale po drodze w kształcie trójkąta. Kiedy już dojdzie do któregoś z kątów, zatrzymuje się, odwraca i kuśtyka do następnego rogu. Z boku czaszki ma wytatuowany numer "965". Kiedy doń podchodzisz, zatrzymuje się i patrzy na ciebie.{#zm965_s1_1}'

    menu:
        '"Taak… czemu tak chodzisz po trójkącie?"{#zm965_s1_r34923}' if zm965Logic.r34923_condition():
            # a0 # r34923
            $ zm965Logic.r34923_action()
            jump zm965_s2

        '"Taak… czemu tak chodzisz po trójkącie?"{#zm965_s1_r45070}' if zm965Logic.r45070_condition():
            # a1 # r45070
            jump zm965_s2

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm965_s1_r45071}' if zm965Logic.r45071_condition():
            # a2 # r45071
            jump zm965_s2

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm965_s1_r45072}' if zm965Logic.r45072_condition():
            # a3 # r45072
            jump zm965_s3

        '"Miło było z tobą pogadać. Żegnaj."{#zm965_s1_r45073}':
            # a4 # r45073
            jump zm965_dispose

        'Zostaw truposza w spokoju.{#zm965_s1_r45074}':
            # a5 # r45074
            jump zm965_dispose


# s2 # say34927
label zm965_s2: # from 1.0 1.1 1.2
    nr 'Trup patrzy na ciebie beznamiętnie.{#zm965_s2_1}'

    menu:
        'Zostaw truposza w spokoju.{#zm965_s2_r34928}':
            # a6 # r34928
            jump zm965_dispose


# s3 # say45069
label zm965_s3: # from 1.3
    nr 'Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zm965_s3_1}'

    menu:
        'Zostaw truposza w spokoju.{#zm965_s3_r45075}':
            # a7 # r45075
            jump zm965_dispose
