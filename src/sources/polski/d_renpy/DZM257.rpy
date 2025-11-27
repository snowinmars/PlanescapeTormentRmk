init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm257_logic import Zm257Logic
    zm257Logic = Zm257Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM257.DLG
# ###


# s0 # say6507
label zm257_s0: # - # IF ~  True()
    nr 'Oczy tego truposza są osadzone blisko siebie, natomiast same gałki oczne są nieco krzywe: jedna spogląda w lewo, druga w prawo. Ledwie możesz odczytać numer "257" nakreślony na jego czole - wygląda na to, że truposz otrzymał kilkanaście uderzeń w głowę, przez co jego numer jest tak trudno czytelny.{#zm257_s0_}'

    menu:
        '"Czy nie kręci ci się w głowie od tego rozbieżnego patrzenia?"{#zm257_s0_r6510}' if zm257Logic.r6510_condition():
            # a0 # r6510
            $ zm257Logic.r6510_action()
            jump zm257_s1

        '"Czy nie kręci ci się w głowie od tego rozbieżnego patrzenia?"{#zm257_s0_r6511}' if zm257Logic.r6511_condition():
            # a1 # r6511
            jump zm257_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm257_s0_r6512}' if zm257Logic.r6512_condition():
            # a2 # r6512
            jump zm257_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm257_s0_r6513}' if zm257Logic.r6513_condition():
            # a3 # r6513
            jump zm257_s2

        '"Miło było z tobą pogadać. Żegnaj."{#zm257_s0_r6514}':
            # a4 # r6514
            jump zm257_dispose

        'Zostaw truposza w spokoju.{#zm257_s0_r6515}':
            # a5 # r6515
            jump zm257_dispose


# s1 # say6508
label zm257_s1: # from 0.0 0.1 0.2
    nr 'W oczach trupa nie ma nawet iskierki zrozumienia; wpatrują się nieruchomo w lewo i prawo.{#zm257_s1_}'

    menu:
        'Zostaw truposza w spokoju.{#zm257_s1_r6516}':
            # a6 # r6516
            jump zm257_dispose


# s2 # say6509
label zm257_s2: # from 0.3
    nr 'Dusza wkracza z powrotem w ciało z taką gwałtownością, że jeden wielki skurcz mięśni odrzuca ciało w tył! W mgnieniu oka jednak ciało staje na nogi, tańcząc i rzucając się szaleńczo, machając rękami i zrywając szwy, a w miarę jak truposz skacze w przód i w tył, kawałki porwanego ciała fruwają dookoła. Trup wybałusza oczy, przewraca nimi i chichocze cały czas niczym szaleniec…{#zm257_s2_}'

    menu:
        '"Ee… Mam dla ciebie pytanie, duchu…"{#zm257_s2_r6517}':
            # a7 # r6517
            jump zm257_s3

        'Zostaw ducha w spokoju.{#zm257_s2_r9558}':
            # a8 # r9558
            jump zm257_dispose


# s3 # say9553
label zm257_s3: # from 2.0
    nr 'Opętany truposz śpiewa w miarę jak skacze i wije się dookoła. Głośność i wysokość jego głosu wznoszą się i opadają, poddane przypadkowemu rytmowi. "TY jesteś DUCH JA ŻYWY odpowiesz na moje pytania TY!" Twój zmieszany wyraz twarzy zdaje się sprawiać mu przyjemność; zahacza swoje kościste palce o wargi i rozszerza je w upiornym uśmiechu. Śmieje się niczym szaleniec i wywija swym upiornie bladym jęzorem.{#zm257_s3_}'

    menu:
        '"Doskonale… pytaj."{#zm257_s3_r9559}':
            # a9 # r9559
            jump zm257_s4

        '"Nie. Ja pragnę zadać *tobie* pytanie…"{#zm257_s3_r9560}':
            # a10 # r9560
            jump zm257_s5

        'Zostaw ducha w bezładzie.{#zm257_s3_r9561}':
            # a11 # r9561
            jump zm257_s6


# s4 # say9554
label zm257_s4: # from 3.0 4.0 5.0
    nr 'Wydaje się, że duch uspokoił się na chwilę, ale znów wybucha stekiem głośnych, porażających umysł, bełkotliwych bredni. Kakofonia przyprawia niemal o szaleństwo i może rzucić cię na kolana. Tak nagle, jak się rozpoczęła… tak szybko zamiera. Truposz stoi, drżąc cichutko.{#zm257_s4_}'

    menu:
        '"Nie do końca zrozumiałem. Czy mógłbyś mi to powtórzyć?"{#zm257_s4_r9562}':
            # a12 # r9562
            $ zm257Logic.r9562_action()
            jump zm257_s4

        '"Nie rozumiem. Mam jednakowoż pytanie…"{#zm257_s4_r9563}':
            # a13 # r9563
            jump zm257_s5

        '"Nie rozumiem cię. Żegnaj."{#zm257_s4_r9564}':
            # a14 # r9564
            jump zm257_s6


# s5 # say9555
label zm257_s5: # from 3.1 4.1 5.1
    nr 'Duch ponownie śpiewa: "Na pytania ŻYWYCH odpowiedzą UMARLI; TAK było, TAK jest, i TAK będzie. Ty moje ODPOWIESZ pytania na!" Wyraz twojej twarzy wydaje sprawiać mu dziką rozkosz; rozpoczyna tak szaleńcze baraszkowanie, że zaczynasz się zastanawiać, czy truposz może to wytrzymać. Prawie że słyszysz trzask i pękanie jego kości oraz łamanie ścięgien, kiedy tak wije się i rzuca dookoła.{#zm257_s5_}'

    menu:
        '"W porządku… pytaj."{#zm257_s5_r9565}':
            # a15 # r9565
            jump zm257_s4

        '"Nie rozumiesz. To ja mam pytanie do *ciebie*…"{#zm257_s5_r9566}':
            # a16 # r9566
            jump zm257_s5

        'Zrezygnuj i zostaw paplającego ducha samemu sobie.{#zm257_s5_r9567}':
            # a17 # r9567
            jump zm257_s6


# s6 # say9556
label zm257_s6: # from 3.2 4.2 5.2
    nr 'Gdy dusza ulatuje z ciała, jego paplające usta wykrzywiają się w porozumiewawczy uśmiech. Jego dzikie, błyszczące oczy przewiercają cię na wylot niczym spojrzenie psychopaty. Truposz szepce jedno, uważnie wypowiadane słowo, przeciągając je niczym sznur cennych pereł: "Limbo…"{#zm257_s6_}'

    menu:
        '"Co?"{#zm257_s6_r9568}':
            # a18 # r9568
            jump zm257_s7

        'Zignoruj to i odwróć się.{#zm257_s6_r9569}':
            # a19 # r9569
            jump zm257_dispose


# s7 # say9557
label zm257_s7: # from 6.0
    nr '…i odchodzi, zostawiając cię w nie lepszym położeniu i samopoczuciu. Zombiak cicho wraca do pracy.{#zm257_s7_}'

    jump zm257_dispose
