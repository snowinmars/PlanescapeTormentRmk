init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm569_logic import Zm569Logic
    zm569Logic = Zm569Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM569.DLG
# ###


# s0 # say24575
label zm569_s0: # - # IF ~  True()
    nr 'Ten powłóczący nogami trup wygląda tak, jakby nie żył od kilku lat. Skóra wzdłuż czoła odgięła się, odsłaniając kredowo-białą czaszkę. Ktoś wyrył mu numer "569" na odsłoniętej kości.{#zm569_s0_}'

    menu:
        '"Szukam klucza… nie masz go przypadkiem?"{#zm569_s0_r24576}' if zm569Logic.r24576_condition():
            # a0 # r24576
            jump morte1_s31  # EXTERN

        '"Szukam klucza… nie masz go przypadkiem?"{#zm569_s0_r24579}' if zm569Logic.r24579_condition():
            # a1 # r24579
            jump zm569_s1

        '"Więc jak… widziałeś, aby działo się tu coś interesującego?"{#zm569_s0_r24580}' if zm569Logic.r24580_condition():
            # a2 # r24580
            jump zm569_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm569_s0_r24581}' if zm569Logic.r24581_condition():
            # a3 # r24581
            jump zm569_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm569_s0_r24584}' if zm569Logic.r24584_condition():
            # a4 # r24584
            jump zm569_s2

        'Przyjrzyj się truposzowi, sprawdź, czy ma klucz.{#zm569_s0_r24585}' if zm569Logic.r24585_condition():
            # a5 # r24585
            jump zm569_s3

        '"Miło było z tobą pogadać. Żegnaj."{#zm569_s0_r42290}':
            # a6 # r42290
            jump zm569_dispose

        'Zostaw truposza w spokoju.{#zm569_s0_r42291}':
            # a7 # r42291
            jump zm569_dispose


# s1 # say24577
label zm569_s1: # from 0.1 0.2 0.3 3.1
    nr 'Trup wciąż ci się przygląda.{#zm569_s1_}'

    menu:
        '"W takim razie nic to. Żegnaj."{#zm569_s1_r24578}':
            # a8 # r24578
            jump zm569_dispose

        'Zostaw truposza w spokoju.{#zm569_s1_r42292}':
            # a9 # r42292
            jump zm569_dispose


# s2 # say24582
label zm569_s2: # from 0.4
    nr 'Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#zm569_s2_}'

    menu:
        'Zostaw truposza w spokoju.{#zm569_s2_r24583}':
            # a10 # r24583
            jump zm569_dispose


# s3 # say42293
label zm569_s3: # from 0.5
    nr 'Nie wydaje się, aby ten trup miał mieć klucz… a i nie wygląda on na kogoś, kto umiałby się nim posłużyć, nawet gdyby go posiadał. Ma połamane palce, jakby ktoś przetrącił mu je młotkiem. Zauważasz też, że jego lewy bark jest mocno zabandażowany… te bandaże są jeszcze zdatne do użytku, tylko wpierw należałoby się pozbyć truposza.{#zm569_s3_}'

    menu:
        '"Chyba go nie masz… nie wiesz przypadkiem, który to z twoich kościstych przyjaciół ma klucz do wyjścia stąd?"{#zm569_s3_r42294}' if zm569Logic.r42294_condition():
            # a11 # r42294
            jump morte1_s31  # EXTERN

        '"Chyba go nie masz… nie wiesz przypadkiem, który to z twoich kościstych przyjaciół ma klucz do wyjścia stąd?"{#zm569_s3_r42295}' if zm569Logic.r42295_condition():
            # a12 # r42295
            jump zm569_s1

        '"Miło było z tobą pogadać. Żegnaj."{#zm569_s3_r42296}':
            # a13 # r42296
            jump zm569_dispose

        'Zostaw truposza w spokoju.{#zm569_s3_r42297}':
            # a14 # r42297
            jump zm569_dispose
