init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


# s0 # say24564
label zm825_s0: # - # IF ~  True()
    nr 'Głowa tego truposza kołysze się w przód i w tył na ramionach… sądząc po kącie pochylenia karku, człowiek ten najprawdopodobniej został powieszony. Z boku głowy ktoś wymalował mu numer "825".{#zm825_s0_}'

    menu:
        '"Poszukuję klucza… czy przypadkiem to nie ty go masz?"{#zm825_s0_r24565}' if zm825Logic.r24565_condition():
            # a0 # r24565
            jump morte1_s31  # EXTERN

        '"Poszukuję klucza… czy przypadkiem to nie ty go masz?"{#zm825_s0_r24568}' if zm825Logic.r24568_condition():
            # a1 # r24568
            jump zm825_s1

        '"Więc jak… widziałeś, aby działo się tu coś interesującego?"{#zm825_s0_r24569}' if zm825Logic.r24569_condition():
            # a2 # r24569
            jump zm825_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm825_s0_r24570}' if zm825Logic.r24570_condition():
            # a3 # r24570
            jump zm825_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm825_s0_r24573}' if zm825Logic.r24573_condition():
            # a4 # r24573
            jump zm825_s2

        'Przyjrzyj się truposzowi, sprawdź, czy ma klucz.{#zm825_s0_r24574}' if zm825Logic.r24574_condition():
            # a5 # r24574
            jump zm825_s3

        '"Miło było z tobą pogadać. Żegnaj."{#zm825_s0_r42308}':
            # a6 # r42308
            jump zm825_dispose

        'Zostaw truposza w spokoju.{#zm825_s0_r42309}':
            # a7 # r42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1: # from 0.1 0.2 0.3 3.1
    nr 'Trup spogląda na ziemię i nie odpowiada.{#zm825_s1_}'

    menu:
        '"W takim razie trudno. Żegnaj."{#zm825_s1_r24567}':
            # a8 # r24567
            jump zm825_dispose

        'Zostaw truposza w spokoju.{#zm825_s1_r42310}':
            # a9 # r42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2: # from 0.4
    nr 'Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zm825_s2_}'

    menu:
        'Zostaw truposza w spokoju.{#zm825_s2_r24572}':
            # a10 # r24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3: # from 0.5
    nr 'Truposz nie ma przy sobie niczego… ale przypadkiem zauważasz, że jego ręce są mocno zabandażowane. Bandaże mogłyby się przydać, gdyby udało ci się pozbyć truposza.{#zm825_s3_}'

    menu:
        '"Chyba go nie masz… nie wiesz przypadkiem, który to z twoich kościstych przyjaciół ma klucz do wyjścia stąd?"{#zm825_s3_r42312}' if zm825Logic.r42312_condition():
            # a11 # r42312
            jump morte1_s31  # EXTERN

        '"Chyba go nie masz… nie wiesz przypadkiem, który to z twoich kościstych przyjaciół ma klucz do wyjścia stąd?"{#zm825_s3_r42313}' if zm825Logic.r42313_condition():
            # a12 # r42313
            jump zm825_s1

        '"Miło było z tobą pogadać. Żegnaj."{#zm825_s3_r42314}':
            # a13 # r42314
            jump zm825_dispose

        'Zostaw truposza w spokoju.{#zm825_s3_r42315}':
            # a14 # r42315
            jump zm825_dispose
