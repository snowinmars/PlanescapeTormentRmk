init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s1221_logic import S1221Logic
    s1221Logic = S1221Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS1221.DLG
# ###


# s0 # say35306
label s1221_s0: # - # IF ~  True()
    nr 'Ten ożywiony szkielet cuchnie tak bardzo, jak gdyby dopiero przed chwilą odarto go z ciała. Szczęka i główne stawy zostały silnie związane skórzanymi paskami, a na wierzch ktoś narzucił mu kubrak. Na czole wyryto mu liczbę "1221".'

    menu:
        '"Przepraszam, widziałeś może jakieś przechodzące szkielety?"' if s1221Logic.r35307_condition():
            # a0 # r35307
            $ s1221Logic.r35307_action()
            jump s1221_s1

        '"Przepraszam, widziałeś może jakieś przechodzące szkielety?"' if s1221Logic.r35330_condition():
            # a1 # r35330
            jump s1221_s1

        '"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"' if s1221Logic.r35331_condition():
            # a2 # r35331
            $ s1221Logic.r35331_action()
            jump s1221_s1

        '"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"' if s1221Logic.r35332_condition():
            # a3 # r35332
            jump s1221_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if s1221Logic.r35333_condition():
            # a4 # r35333
            jump s1221_s2

        'Przyjrzyj się temu szkieletowi uważnie.':
            # a5 # r35338
            $ s1221Logic.r35338_action()
            jump s1221_s3

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35371_condition():
            # a6 # r35371
            $ s1221Logic.r35371_action()
            jump morte_s376  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35372_condition():
            # a7 # r35372
            jump s1221_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35373_condition():
            # a8 # r35373
            jump s1221_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35374_condition():
            # a9 # r35374
            jump s1221_s6

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35375_condition():
            # a10 # r35375
            jump s1221_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35376_condition():
            # a11 # r35376
            jump s1221_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35377_condition():
            # a12 # r35377
            jump s1221_s6

        '"Co powiesz na ten szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"' if s1221Logic.r35378_condition():
            # a13 # r35378
            jump morte_s372  # EXTERN

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35379_condition():
            # a14 # r35379
            $ s1221Logic.r35379_action()
            jump morte_s370  # EXTERN

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35380_condition():
            # a15 # r35380
            jump s1221_dispose

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35381_condition():
            # a16 # r35381
            jump s1221_dispose


# s1 # say35308
label s1221_s1: # from 0.0 0.1 0.2 0.3
    nr 'Szkielet nie odpowiada.'

    menu:
        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."' if s1221Logic.r35309_condition():
            # a17 # r35309
            $ s1221Logic.r35309_action()
            jump morte_s370  # EXTERN

        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."' if s1221Logic.r35328_condition():
            # a18 # r35328
            jump s1221_dispose

        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."' if s1221Logic.r35329_condition():
            # a19 # r35329
            jump s1221_dispose


# s2 # say35334
label s1221_s2: # from 0.4
    nr 'Szkielet nic nie odpowiada. Wygląda na to, że jest już nieżywy zbyt długo, żeby odpowiadać na twoje pytania.'

    menu:
        'Zostaw szkielet w spokoju.' if s1221Logic.r35335_condition():
            # a20 # r35335
            $ s1221Logic.r35335_action()
            jump morte_s370  # EXTERN

        'Zostaw szkielet w spokoju.' if s1221Logic.r35336_condition():
            # a21 # r35336
            jump s1221_dispose

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35337_condition():
            # a22 # r35337
            jump s1221_dispose


# s3 # say35339
label s1221_s3: # from 0.5
    nr 'Ktoś związał kości tego szkieletu skórzanymi paskami tak, że teraz przypominają muskuły i ścięgna. Paski te są przymocowane do żelaznych nitów wetkniętych w stawy kościotrupa. Wygląda na to, że już swoje odpracował: wiele kości jest połamanych, a liczne pęknięcia wypełniono cuchnącym klejem.'

    menu:
        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35340_condition():
            # a23 # r35340
            $ s1221Logic.r35340_action()
            jump morte_s376  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35362_condition():
            # a24 # r35362
            jump s1221_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35363_condition():
            # a25 # r35363
            jump s1221_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s1221Logic.r35364_condition():
            # a26 # r35364
            jump s1221_s6

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"' if s1221Logic.r35365_condition():
            # a27 # r35365
            jump s1221_s4

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"' if s1221Logic.r35366_condition():
            # a28 # r35366
            jump s1221_s5

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"' if s1221Logic.r35367_condition():
            # a29 # r35367
            jump s1221_s6

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35368_condition():
            # a30 # r35368
            $ s1221Logic.r35368_action()
            jump morte_s370  # EXTERN

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35369_condition():
            # a31 # r35369
            jump s1221_dispose

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35370_condition():
            # a32 # r35370
            jump s1221_dispose


# s4 # say35345
label s1221_s4: # from 0.7 0.10 3.1 3.4
    nr 'Ciągniesz za żelazne nity, ale nie masz na tyle siły, żeby je wyciągnąć. Wygląda na to, że ktoś wbił je bardzo solidnie.'

    menu:
        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."' if s1221Logic.r35346_condition():
            # a33 # r35346
            $ s1221Logic.r35346_action()
            jump morte_s370  # EXTERN

        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."' if s1221Logic.r35347_condition():
            # a34 # r35347
            jump s1221_dispose

        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."' if s1221Logic.r35348_condition():
            # a35 # r35348
            jump s1221_dispose

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35349_condition():
            # a36 # r35349
            $ s1221Logic.r35349_action()
            jump morte_s370  # EXTERN

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35350_condition():
            # a37 # r35350
            jump s1221_dispose

        'Zostaw ten szkielet w spokoju.' if s1221Logic.r35351_condition():
            # a38 # r35351
            jump s1221_dispose


# s5 # say35353
label s1221_s5: # from 0.8 0.11 3.2 3.5
    nr 'Z całej siły ciągniesz za żelazne nity i po chwili wyrywasz je ze stawów. Szkielet przewraca się na ziemię, a niektóre jego kości wciąż podrygują.'

    menu:
        '"Przykro mi, Kostuszku…"':
            # a39 # r35354
            $ s1221Logic.r35354_action()
            jump s1221_dispose


# s6 # say35356
label s1221_s6: # from 0.9 0.12 3.3 3.6
    nr 'Używając łomu, wyciągasz nity ze stawów szkieletu. Ten przewraca się na ziemię, a niektóre jego kości wciąż podrygują.'

    menu:
        '"Przykro mi, Kostuszku…"':
            # a40 # r35357
            $ s1221Logic.r35357_action()
            jump s1221_dispose


# s7 # say35382
label s1221_s7: # - # IF ~  False()
    nr 'Szkielet nic nie odpowiada. Wygląda na to, że jest już nieżywy zbyt długo, żeby odpowiadać na twoje pytania.'

    menu:
