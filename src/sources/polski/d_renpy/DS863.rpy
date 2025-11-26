init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s863_logic import S863Logic
    s863Logic = S863Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS863.DLG
# ###


# s0 # say35537
label s863_s0: # from 10.0 # IF ~  !HasItem("DRemind","S863")
    nr 'Ten szkielet wygląda tak, jakby wiele przeszedł, albo wskutek udziału w walkach, albo też wskutek spadnięcia ze zbyt dużej liczby schodów; i ręce, i nogi miał złamane, ale teraz zostało to naprawione przy pomocy skórzanych pasków i cieniutkich żelaznych prętów. Z przodu czaszki ma numer „863“… ale tył czaszki się zapadł, tworząc wydrążoną dziurę.'

    menu:
        '"Przepraszam, że zabrałem ci ten pergamin, ale wątpię, czy dostarczyłbyś go w terminie."' if s863Logic.r35538_condition():
            # a0 # r35538
            $ s863Logic.r35538_action()
            jump s863_s1

        '"Przepraszam, że zabrałem ci ten pergamin, ale wątpię, czy dostarczyłbyś go w terminie."' if s863Logic.r35561_condition():
            # a1 # r35561
            jump s863_s1

        '"Muszę ci zadać to pytanie: czy twoje połamane kości to efekt walk czy spadnięcia ze schodów?"' if s863Logic.r35562_condition():
            # a2 # r35562
            $ s863Logic.r35562_action()
            jump s863_s1

        '"Muszę ci zadać to pytanie: czy twoje połamane kości to efekt walk czy spadnięcia ze schodów?"' if s863Logic.r35563_condition():
            # a3 # r35563
            jump s863_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if s863Logic.r35564_condition():
            # a4 # r35564
            jump s863_s2

        'Dokładnie obejrzyj szkielet.':
            # a5 # r35569
            $ s863Logic.r35569_action()
            jump s863_s3

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35602_condition():
            # a6 # r35602
            $ s863Logic.r35602_action()
            jump morte_s400  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35603_condition():
            # a7 # r35603
            jump s863_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35604_condition():
            # a8 # r35604
            jump s863_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35605_condition():
            # a9 # r35605
            jump s863_s6

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35606_condition():
            # a10 # r35606
            jump s863_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35607_condition():
            # a11 # r35607
            jump s863_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35608_condition():
            # a12 # r35608
            jump s863_s6

        '"Co powiesz na ten szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"' if s863Logic.r35609_condition():
            # a13 # r35609
            jump morte_s396  # EXTERN

        'Zostaw szkielet w spokoju.' if s863Logic.r35610_condition():
            # a14 # r35610
            $ s863Logic.r35610_action()
            jump morte_s394  # EXTERN

        'Zostaw szkielet w spokoju.' if s863Logic.r35611_condition():
            # a15 # r35611
            jump s863_dispose

        'Zostaw szkielet w spokoju.' if s863Logic.r35612_condition():
            # a16 # r35612
            jump s863_dispose


# s1 # say35539
label s863_s1: # from 0.0 0.1 0.2 0.3
    nr 'Szkielet nie odpowiada.'

    menu:
        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."' if s863Logic.r35540_condition():
            # a17 # r35540
            $ s863Logic.r35540_action()
            jump morte_s394  # EXTERN

        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."' if s863Logic.r35559_condition():
            # a18 # r35559
            jump s863_dispose

        '"Świetnie się z tobą gadało, Kostuszku. Bądź zdrów."' if s863Logic.r35560_condition():
            # a19 # r35560
            jump s863_dispose


# s2 # say35565
label s863_s2: # from 0.4
    nr 'Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:
        'Zostaw szkielet w spokoju.' if s863Logic.r35566_condition():
            # a20 # r35566
            $ s863Logic.r35566_action()
            jump morte_s394  # EXTERN

        'Zostaw szkielet w spokoju.' if s863Logic.r35567_condition():
            # a21 # r35567
            jump s863_dispose

        'Zostaw szkielet w spokoju.' if s863Logic.r35568_condition():
            # a22 # r35568
            jump s863_dispose


# s3 # say35570
label s863_s3: # from 0.5
    nr 'Ktoś związał kości tego szkieletu skórzanymi paskami tak, że teraz przypominają muskuły i ścięgna. Paski te są przymocowane do żelaznych nitów wetkniętych w stawy kościotrupa. Wygląda na to, że już swoje odpracował: wiele kości jest połamanych, a liczne pęknięcia wypełniono cuchnącym klejem.'

    menu:
        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35571_condition():
            # a23 # r35571
            $ s863Logic.r35571_action()
            jump morte_s400  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35593_condition():
            # a24 # r35593
            jump s863_s4

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35594_condition():
            # a25 # r35594
            jump s863_s5

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if s863Logic.r35595_condition():
            # a26 # r35595
            jump s863_s6

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"' if s863Logic.r35596_condition():
            # a27 # r35596
            jump s863_s4

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"' if s863Logic.r35597_condition():
            # a28 # r35597
            jump s863_s5

        '"Nie masz nic przeciwko, żebym sobie pożyczył parę skórzanych pasków i kilka nitów?"' if s863Logic.r35598_condition():
            # a29 # r35598
            jump s863_s6

        'Zostaw szkielet w spokoju.' if s863Logic.r35599_condition():
            # a30 # r35599
            $ s863Logic.r35599_action()
            jump morte_s394  # EXTERN

        'Zostaw szkielet w spokoju.' if s863Logic.r35600_condition():
            # a31 # r35600
            jump s863_dispose

        'Zostaw szkielet w spokoju.' if s863Logic.r35601_condition():
            # a32 # r35601
            jump s863_dispose


# s4 # say35576
label s863_s4: # from 0.7 0.10 3.1 3.4
    nr 'Ciągniesz za żelazne nity, ale nie masz na tyle siły, żeby je wyciągnąć. Wygląda na to, że ktoś wbił je bardzo solidnie.'

    menu:
        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."' if s863Logic.r35577_condition():
            # a33 # r35577
            $ s863Logic.r35577_action()
            jump morte_s394  # EXTERN

        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."' if s863Logic.r35578_condition():
            # a34 # r35578
            jump s863_dispose

        '"Może udałoby mi się je wyciągnąć, gdybym miał odpowiednie narzędzie… hmm. Może tu jeszcze wrócę, Kostuszku."' if s863Logic.r35579_condition():
            # a35 # r35579
            jump s863_dispose

        'Zostaw szkielet w spokoju.' if s863Logic.r35580_condition():
            # a36 # r35580
            $ s863Logic.r35580_action()
            jump morte_s394  # EXTERN

        'Zostaw szkielet w spokoju.' if s863Logic.r35581_condition():
            # a37 # r35581
            jump s863_dispose

        'Zostaw szkielet w spokoju.' if s863Logic.r35582_condition():
            # a38 # r35582
            jump s863_dispose


# s5 # say35584
label s863_s5: # from 0.8 0.11 3.2 3.5
    nr 'Z całej siły ciągniesz za żelazne nity i po chwili wyrywasz je ze stawów. Szkielet przewraca się na ziemię, a niektóre jego kości wciąż podrygują.'

    menu:
        '"Przykro mi, Kostuszku…"':
            # a39 # r35585
            $ s863Logic.r35585_action()
            jump s863_dispose


# s6 # say35587
label s863_s6: # from 0.9 0.12 3.3 3.6
    nr 'Używając łomu, wyciągasz nity ze stawów szkieletu. Ten przewraca się na ziemię, a niektóre jego kości wciąż podrygują.'

    menu:
        '"Przykro mi, Kostuszku…"':
            # a40 # r35588
            $ s863Logic.r35588_action()
            jump s863_dispose


# s7 # say35613
label s863_s7: # - # IF ~  False()
    nr 'Szkielet nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.'

    menu:

# s8 # say64262
label s863_s8: # - # IF ~  HasItem("DRemind","S863")
    nr 'Ten szkielet uczestniczył w wielu walkach albo też zbyt często spadał ze schodów; ręce i nogi miał złamane, a teraz funkcjonują dobrze tylko dzięki rzemieniom i cienkim żelaznym prętom. Na przedniej części czaszki widnieje numer "863"… lecz jej tylna część jest rozbita, tworząc pustą czeluść. Widzisz, że ktoś to wykorzystał i wcisnął do środka kawałek pergaminu.'

    menu:
        'Wyjmij pergamin z czaszki szkieletu.':
            # a41 # r64263
            jump s863_s9

        'Zostaw szkielet w spokoju.':
            # a42 # r64264
            jump s863_dispose


# s9 # say64265
label s863_s9: # from 8.0
    nr 'Wyjmujesz pergamin z czaszki robotnika - co dziwniejsze, wygląda ona tak, aby *celowo* przechowywała wiadomości; maleńki sznurek jest przytwierdzony do pergaminu przy pomocy haczyka wbitego do czaszki od środka, chyba po to, aby zapobiegać przypadkowemu wypadnięciu pergaminu.'

    menu:
        'Odczep sznurek, weź pergamin.':
            # a43 # r64266
            $ s863Logic.r64266_action()
            jump s863_s10


# s10 # say64267
label s863_s10: # from 9.0
    nr 'Rozwiązujesz sznurek i rzucasz okiem na pergamin – wygląda na notatkę jednego z pracowników kostnicy. Mając to na uwadze, dochodzisz do wniosku, że ten szkielet jest czymś w rodzaju posłańca. Kiedy się mu przyglądasz, zauważasz, że zatrzymał się przy katafalku, nie mogąc zdecydować, w jaki sposób go ominąć.  ^NNOTE: <READSTUFF>^-'

    menu:
        'Zbadaj szkielet raz jeszcze.':
            # a44 # r64268
            jump s863_s0

        'Zostaw szkielet w spokoju.':
            # a45 # r64269
            jump s863_dispose
