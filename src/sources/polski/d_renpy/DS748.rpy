init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s748_logic import S748Logic
    s748Logic = S748Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS748.DLG
# ###


# s0 # say35383
label s748_s0: # - # IF ~  True()
    nr 'Szkielet ten - numer "748", wedle numeru wyrytego na jego czole - jest dziwaczny o tyle, że niektóre jego zęby wyglądają na sztuczne, wykonane z czerwonawo-brązowego kamienia. Oczywiście nie są cenne, w przeciwnym bowiem razie dozorcy by je usunęli.'

    menu:
        '"Przepraszam, widziałeś może jakieś przechodzące szkielety?"' if s748Logic.r35384_condition():
            # a0 # r35384
            $ s748Logic.r35384_action()
            jump s748_s1

        '"Przepraszam, widziałeś może jakieś przechodzące szkielety?"' if s748Logic.r35407_condition():
            # a1 # r35407
            jump s748_s1

        '"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"' if s748Logic.r35408_condition():
            # a2 # r35408
            $ s748Logic.r35408_action()
            jump s748_s1

        '"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"' if s748Logic.r35409_condition():
            # a3 # r35409
            jump s748_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if s748Logic.r35410_condition():
            # a4 # r35410
            jump s748_s2

        'Dokładnie obejrzyj szkielet.':
            # a5 # r35415
            $ s748Logic.r35415_action()
            jump s748_s3

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35448_condition():
            # a6 # r35448
            $ s748Logic.r35448_action()
            jump morte_s384  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35449_condition():
            # a7 # r35449
            jump s748_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35450_condition():
            # a8 # r35450
            jump s748_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35451_condition():
            # a9 # r35451
            jump s748_s6

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35452_condition():
            # a10 # r35452
            jump s748_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35453_condition():
            # a11 # r35453
            jump s748_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35454_condition():
            # a12 # r35454
            jump s748_s6

        '"Co powiesz na ten szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"' if s748Logic.r35455_condition():
            # a13 # r35455
            jump morte_s380  # EXTERN

        'Zostaw szkielet w spokoju.' if s748Logic.r35456_condition():
            # a14 # r35456
            $ s748Logic.r35456_action()
            jump morte_s378  # EXTERN

        'Zostaw szkielet w spokoju.' if s748Logic.r35457_condition():
            # a15 # r35457
            jump s748_dispose

        'Zostaw szkielet w spokoju.' if s748Logic.r35458_condition():
            # a16 # r35458
            jump s748_dispose


# s1 # say35385
label s748_s1: # from 0.0 0.1 0.2 0.3
    nr 'Szkielet nie odpowiada.'

    menu:
        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."' if s748Logic.r35386_condition():
            # a17 # r35386
            $ s748Logic.r35386_action()
            jump morte_s378  # EXTERN

        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."' if s748Logic.r35405_condition():
            # a18 # r35405
            jump s748_dispose

        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."' if s748Logic.r35406_condition():
            # a19 # r35406
            jump s748_dispose


# s2 # say35411
label s748_s2: # from 0.4
    nr 'Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw szkielet w spokoju.' if s748Logic.r35412_condition():
            # a20 # r35412
            $ s748Logic.r35412_action()
            jump morte_s378  # EXTERN

        'Zostaw szkielet w spokoju.' if s748Logic.r35413_condition():
            # a21 # r35413
            jump s748_dispose

        'Zostaw szkielet w spokoju.' if s748Logic.r35414_condition():
            # a22 # r35414
            jump s748_dispose


# s3 # say35416
label s748_s3: # from 0.5
    nr 'Ktoś związał kości tego szkieletu skórzanymi paskami tak, że teraz przypominają muskuły i ścięgna. Paski te są przymocowane do żelaznych nitów wetkniętych w stawy kościotrupa. Wygląda na to, że już swoje odpracował: wiele kości jest połamanych, a liczne pęknięcia wypełniono cuchnącym klejem.'

    menu:
        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35417_condition():
            # a23 # r35417
            $ s748Logic.r35417_action()
            jump morte_s384  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35439_condition():
            # a24 # r35439
            jump s748_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35440_condition():
            # a25 # r35440
            jump s748_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s748Logic.r35441_condition():
            # a26 # r35441
            jump s748_s6

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"' if s748Logic.r35442_condition():
            # a27 # r35442
            jump s748_s4

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"' if s748Logic.r35443_condition():
            # a28 # r35443
            jump s748_s5

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"' if s748Logic.r35444_condition():
            # a29 # r35444
            jump s748_s6

        'Zostaw szkielet w spokoju.' if s748Logic.r35445_condition():
            # a30 # r35445
            $ s748Logic.r35445_action()
            jump morte_s378  # EXTERN

        'Zostaw szkielet w spokoju.' if s748Logic.r35446_condition():
            # a31 # r35446
            jump s748_dispose

        'Zostaw szkielet w spokoju.' if s748Logic.r35447_condition():
            # a32 # r35447
            jump s748_dispose


# s4 # say35422
label s748_s4: # from 0.7 0.10 3.1 3.4
    nr 'Ciągniesz za żelazne nity, ale nie masz na tyle siły, żeby je wyciągnąć. Wygląda na to, że ktoś wbił je bardzo solidnie.'

    menu:
        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."' if s748Logic.r35423_condition():
            # a33 # r35423
            $ s748Logic.r35423_action()
            jump morte_s378  # EXTERN

        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."' if s748Logic.r35424_condition():
            # a34 # r35424
            jump s748_dispose

        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."' if s748Logic.r35425_condition():
            # a35 # r35425
            jump s748_dispose

        'Zostaw szkielet w spokoju.' if s748Logic.r35426_condition():
            # a36 # r35426
            $ s748Logic.r35426_action()
            jump morte_s378  # EXTERN

        'Zostaw szkielet w spokoju.' if s748Logic.r35427_condition():
            # a37 # r35427
            jump s748_dispose

        'Zostaw szkielet w spokoju.' if s748Logic.r35428_condition():
            # a38 # r35428
            jump s748_dispose


# s5 # say35430
label s748_s5: # from 0.8 0.11 3.2 3.5
    nr 'Z całej siły ciągniesz za żelazne nity i po chwili wyrywasz je ze stawów. Szkielet przewraca się na ziemię, a niektóre jego kości wciąż podrygują.'

    menu:
        '"Przykro mi, Kostuszku…"':
            # a39 # r35431
            $ s748Logic.r35431_action()
            jump s748_dispose


# s6 # say35433
label s748_s6: # from 0.9 0.12 3.3 3.6
    nr 'Używając łomu, wyciągasz nity ze stawów szkieletu. Ten przewraca się na ziemię, a niektóre jego kości wciąż podrygują.'

    menu:
        '"Przykro mi, Kostuszku…"':
            # a40 # r35434
            $ s748Logic.r35434_action()
            jump s748_dispose


# s7 # say35459
label s748_s7: # - # IF ~  False()
    nr 'Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
