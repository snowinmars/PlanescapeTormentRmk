init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s996_logic import S996Logic
    s996Logic = S996Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS996.DLG
# ###


# s0 # say35460
label s996_s0: # - # IF ~  True()
    nr 'Ten szkielet wygląda szczególnie staro, a skórzane paski, którymi jest powiązany, są popękane i wytarte. Na czole ktoś starannie i sprawnie wyrył słowo "POKUTA". Jakaś mniej sprawna dłoń dopisała później "996" na obu skroniach.{#s996_s0_}'

    menu:
        '"Przepraszam, widziałeś może jakieś przechodzące szkielety?"{#s996_s0_r35461}' if s996Logic.r35461_condition():
            # a0 # r35461
            $ s996Logic.r35461_action()
            jump s996_s1

        '"Przepraszam, widziałeś może jakieś przechodzące szkielety?"{#s996_s0_r35484}' if s996Logic.r35484_condition():
            # a1 # r35484
            jump s996_s1

        '"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"{#s996_s0_r35485}' if s996Logic.r35485_condition():
            # a2 # r35485
            $ s996Logic.r35485_action()
            jump s996_s1

        '"Muszę o to zapytać: Po co ci ten kaftan? Przecież nie masz się czego wstydzić?"{#s996_s0_r35486}' if s996Logic.r35486_condition():
            # a3 # r35486
            jump s996_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#s996_s0_r35487}' if s996Logic.r35487_condition():
            # a4 # r35487
            jump s996_s2

        'Zbadaj dokładnie szkielet.{#s996_s0_r35492}':
            # a5 # r35492
            $ s996Logic.r35492_action()
            jump s996_s3

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s0_r35525}' if s996Logic.r35525_condition():
            # a6 # r35525
            $ s996Logic.r35525_action()
            jump morte_s392  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s0_r35526}' if s996Logic.r35526_condition():
            # a7 # r35526
            jump s996_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s0_r35527}' if s996Logic.r35527_condition():
            # a8 # r35527
            jump s996_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s0_r35528}' if s996Logic.r35528_condition():
            # a9 # r35528
            jump s996_s6

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s0_r35529}' if s996Logic.r35529_condition():
            # a10 # r35529
            jump s996_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s0_r35530}' if s996Logic.r35530_condition():
            # a11 # r35530
            jump s996_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s0_r35531}' if s996Logic.r35531_condition():
            # a12 # r35531
            jump s996_s6

        '"Co powiesz na ten szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"{#s996_s0_r35532}' if s996Logic.r35532_condition():
            # a13 # r35532
            jump morte_s388  # EXTERN

        'Zostaw szkielet w spokoju.{#s996_s0_r35533}' if s996Logic.r35533_condition():
            # a14 # r35533
            $ s996Logic.r35533_action()
            jump morte_s386  # EXTERN

        'Zostaw szkielet w spokoju.{#s996_s0_r35534}' if s996Logic.r35534_condition():
            # a15 # r35534
            jump s996_dispose

        'Zostaw szkielet w spokoju.{#s996_s0_r35535}' if s996Logic.r35535_condition():
            # a16 # r35535
            jump s996_dispose


# s1 # say35462
label s996_s1: # from 0.0 0.1 0.2 0.3
    nr 'Szkielet nie odpowiada.{#s996_s1_}'

    menu:
        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."{#s996_s1_r35463}' if s996Logic.r35463_condition():
            # a17 # r35463
            $ s996Logic.r35463_action()
            jump morte_s386  # EXTERN

        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."{#s996_s1_r35482}' if s996Logic.r35482_condition():
            # a18 # r35482
            jump s996_dispose

        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."{#s996_s1_r35483}' if s996Logic.r35483_condition():
            # a19 # r35483
            jump s996_dispose


# s2 # say35488
label s996_s2: # from 0.4
    nr 'Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#s996_s2_}'

    menu:
        'Zostaw szkielet w spokoju.{#s996_s2_r35489}' if s996Logic.r35489_condition():
            # a20 # r35489
            $ s996Logic.r35489_action()
            jump morte_s386  # EXTERN

        'Zostaw szkielet w spokoju.{#s996_s2_r35490}' if s996Logic.r35490_condition():
            # a21 # r35490
            jump s996_dispose

        'Zostaw szkielet w spokoju.{#s996_s2_r35491}' if s996Logic.r35491_condition():
            # a22 # r35491
            jump s996_dispose


# s3 # say35493
label s996_s3: # from 0.5
    nr 'Ktoś związał kości tego szkieletu skórzanymi paskami tak, że teraz przypominają muskuły i ścięgna. Paski te są przymocowane do żelaznych nitów wetkniętych w stawy kościotrupa. Wygląda na to, że już swoje odpracował: wiele kości jest połamanych, a liczne pęknięcia wypełniono cuchnącym klejem.{#s996_s3_}'

    menu:
        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s3_r35494}' if s996Logic.r35494_condition():
            # a23 # r35494
            $ s996Logic.r35494_action()
            jump morte_s392  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s3_r35516}' if s996Logic.r35516_condition():
            # a24 # r35516
            jump s996_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s3_r35517}' if s996Logic.r35517_condition():
            # a25 # r35517
            jump s996_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.{#s996_s3_r35518}' if s996Logic.r35518_condition():
            # a26 # r35518
            jump s996_s6

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"{#s996_s3_r35519}' if s996Logic.r35519_condition():
            # a27 # r35519
            jump s996_s4

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"{#s996_s3_r35520}' if s996Logic.r35520_condition():
            # a28 # r35520
            jump s996_s5

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"{#s996_s3_r35521}' if s996Logic.r35521_condition():
            # a29 # r35521
            jump s996_s6

        'Zostaw szkielet w spokoju.{#s996_s3_r35522}' if s996Logic.r35522_condition():
            # a30 # r35522
            $ s996Logic.r35522_action()
            jump morte_s386  # EXTERN

        'Zostaw szkielet w spokoju.{#s996_s3_r35523}' if s996Logic.r35523_condition():
            # a31 # r35523
            jump s996_dispose

        'Zostaw szkielet w spokoju.{#s996_s3_r35524}' if s996Logic.r35524_condition():
            # a32 # r35524
            jump s996_dispose


# s4 # say35499
label s996_s4: # from 0.7 0.10 3.1 3.4
    nr 'Ciągniesz za żelazne nity, ale nie masz na tyle siły, żeby je wyciągnąć. Wygląda na to, że ktoś wbił je bardzo solidnie.{#s996_s4_}'

    menu:
        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."{#s996_s4_r35500}' if s996Logic.r35500_condition():
            # a33 # r35500
            $ s996Logic.r35500_action()
            jump morte_s386  # EXTERN

        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."{#s996_s4_r35501}' if s996Logic.r35501_condition():
            # a34 # r35501
            jump s996_dispose

        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."{#s996_s4_r35502}' if s996Logic.r35502_condition():
            # a35 # r35502
            jump s996_dispose

        'Zostaw szkielet w spokoju.{#s996_s4_r35503}' if s996Logic.r35503_condition():
            # a36 # r35503
            $ s996Logic.r35503_action()
            jump morte_s386  # EXTERN

        'Zostaw szkielet w spokoju.{#s996_s4_r35504}' if s996Logic.r35504_condition():
            # a37 # r35504
            jump s996_dispose

        'Zostaw szkielet w spokoju.{#s996_s4_r35505}' if s996Logic.r35505_condition():
            # a38 # r35505
            jump s996_dispose


# s5 # say35507
label s996_s5: # from 0.8 0.11 3.2 3.5
    nr 'Z całej siły ciągniesz za żelazne nity i po chwili wyrywasz je ze stawów. Szkielet przewraca się na ziemię, a niektóre jego kości wciąż podrygują.{#s996_s5_}'

    menu:
        '"Przykro mi, Kostuszku…"{#s996_s5_r35508}':
            # a39 # r35508
            $ s996Logic.r35508_action()
            jump s996_dispose


# s6 # say35510
label s996_s6: # from 0.9 0.12 3.3 3.6
    nr 'Używając łomu, wyciągasz nity ze stawów szkieletu. Ten przewraca się na ziemię, a niektóre jego kości wciąż podrygują.{#s996_s6_}'

    menu:
        '"Przykro mi, Kostuszku…"{#s996_s6_r35511}':
            # a40 # r35511
            $ s996Logic.r35511_action()
            jump s996_dispose


# s7 # say35536
label s996_s7: # - # IF ~  False()
    nr 'Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.{#s996_s7_}'

    menu:
