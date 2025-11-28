init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm613_logic import Zm613Logic
    zm613Logic = Zm613Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM613.DLG
# ###


# s0 # say6540
label zm613_s0: # - # IF ~  True()
    nr 'Numer "613" został głęboko wycięty na czole tego ciężko harującego truposza, ale kawałek postrzępionej, stwardniałej skóry rozdziela "1" i "3". Kiedy przyglądasz się cyfrom, z trudem dostrzegasz wyrytą tam "2".{#zm613_s0_1}'

    menu:
        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"{#zm613_s0_r6543}' if zm613Logic.r6543_condition():
            # a0 # r6543
            $ zm613Logic.r6543_action()
            jump zm613_s1

        '"Więc jak… widziałeś, żeby działo się tu coś interesującego?"{#zm613_s0_r6544}' if zm613Logic.r6544_condition():
            # a1 # r6544
            jump zm613_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm613_s0_r6545}' if zm613Logic.r6545_condition():
            # a2 # r6545
            jump zm613_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm613_s0_r6546}' if zm613Logic.r6546_condition():
            # a3 # r6546
            jump zm613_s2

        '"Miło było z tobą pogadać. Żegnaj."{#zm613_s0_r6547}':
            # a4 # r6547
            jump zm613_dispose

        'Zostaw truposza w spokoju.{#zm613_s0_r6548}':
            # a5 # r6548
            jump zm613_dispose


# s1 # say6541
label zm613_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.{#zm613_s1_1}'

    menu:
        'Zostaw truposza w spokoju.{#zm613_s1_r6549}':
            # a6 # r6549
            jump zm613_dispose


# s2 # say6542
label zm613_s2: # from 0.3
    nr 'Truposz nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zm613_s2_1}'

    menu:
        'Zostaw truposza w spokoju.{#zm613_s2_r6550}':
            # a7 # r6550
            jump zm613_dispose
