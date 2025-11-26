init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dust_logic import DustLogic
    dustLogic = DustLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUST.DLG
# ###


# s0 # say300
label dust_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Grabarz zdaje się ciebie nie zauważać. Wziął cię najwyraźniej za jednego z niumarłych pracowników.'

    menu:
        '"Witaj."':
            # a0 # r302
            jump dust_s1

        '"Kim jesteś?"':
            # a1 # r303
            jump dust_s1

        '"Co to za miejsce?"':
            # a2 # r304
            jump dust_s1

        '"Mam kilka pytań…"':
            # a3 # r305
            jump dust_s1

        'Zostaw go w spokoju.':
            # a4 # r306
            jump dust_dispose


# s1 # say307
label dust_s1: # from 0.0 0.1 0.2 0.3
    nr 'Grabarz podskakuje, po czym podnosi gwałtownie głowę, by na ciebie spojrzeć. Zdaje się być zszokowany - twoje przebranie jest całkiem dobre.'

    menu:
        'Wykorzystaj to, że jest zaskoczony i skręć mu kark, zanim zdąży zawołać.':
            # a5 # r310
            jump dust_s41

        '"Mam kilka pytań…"':
            # a6 # r312
            jump dust_s2

        'Odejdź. Jak najszybciej.':
            # a7 # r1332
            jump dust_s2


# s2 # say309
label dust_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    nr 'Grabarz cofa się o krok, po czym klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego żelaznego dzwonu.'

    menu:
        '"No dobrze…"':
            # a8 # r313
            $ dustLogic.r313_action()
            jump dust_dispose


# s3 # say314
label dust_s3: # externs morte_s64
    nr 'Ten blady mężczyzna ubrany jest w długie, ciemne szaty. Wokół niego roztacza się słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięty swoimi obowiązkami.'

    menu:
        '"Witaj."':
            # a9 # r315
            jump dust_s4

        '"Kim jesteś?"':
            # a10 # r316
            jump dust_s4

        '"Co to za miejsce?"':
            # a11 # r317
            jump dust_s4

        '"Mam kilka pytań…"':
            # a12 # r319
            jump dust_s4

        'Zostaw go w spokoju.':
            # a13 # r382
            jump dust_dispose


# s4 # say321
label dust_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Grabarz unosi powoli głowę i odwraca się w twym kierunku. "Zgubiłeś się?"'

    menu:
        '"Tak."':
            # a14 # r322
            jump dust_s5

        '"Nie."':
            # a15 # r323
            jump dust_s6

        '"Nie, nie zgubiłem się. Mam kilka pytań…"':
            # a16 # r324
            jump dust_s6

        '"Żegnaj."':
            # a17 # r325
            jump dust_s5


# s5 # say326
label dust_s5: # from 4.0 4.3 6.4 16.2 51.1
    nr '"Wezwę straż, by cię wyprowadziła. Poczekaj chwilę."'

    menu:
        'Skręć mu kark, zanim zdąży zawołać.' if dustLogic.r327_condition():
            # a18 # r327
            jump dust_s44

        'Skręć mu kark, zanim zdąży zawołać.' if dustLogic.r328_condition():
            # a19 # r328
            jump dust_s41

        'Odejdź. Jak najszybciej.':
            # a20 # r329
            jump dust_s2

        'Poczekaj.':
            # a21 # r1333
            jump dust_s2


# s6 # say330
label dust_s6: # from 4.1 4.2 51.2 51.3
    nr '"Skoro się nie zgubiłeś, to co tutaj robisz?"'

    menu:
        '"To nie twoja sprawa."':
            # a22 # r331
            jump dust_s7

        '"Obudziłem się na jednym ze stołów w sali przygotowawczej."':
            # a23 # r332
            jump dust_s8

        '"Przyszedłem tu, żeby się z kimś zobaczyć."':
            # a24 # r333
            jump dust_s9

        '"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."' if dustLogic.r334_condition():
            # a25 # r334
            jump dust_s16

        'Odejdź. Jak najszybciej.':
            # a26 # r337
            jump dust_s5


# s7 # say335
label dust_s7: # from 6.0 9.0 20.0
    nr '"Obawiam się, że to jest moja sprawa. Być może straż pomoże rozwiązać ci język." Grabarz cofa się o krok. Wygląda na to, że chce wezwać straże.'

    menu:
        'Skręć mu kark, zanim zdąży zawołać.' if dustLogic.r344_condition():
            # a27 # r344
            jump dust_s44

        'Skręć mu kark, zanim zdąży zawołać.' if dustLogic.r3887_condition():
            # a28 # r3887
            jump dust_s41

        '"No to ich przyzwij. Chętnie się z nimi spotkam."':
            # a29 # r3888
            $ dustLogic.r3888_action()
            jump dust_dispose


# s8 # say336
label dust_s8: # from 6.1 16.0 20.1
    nr '"Żarty sobie stroisz? Może chcesz się nimi podzielić ze strażą?" Grabarz cofa się o krok. Wygląda na to, że chce wezwać straże."'

    menu:
        'Skręć mu kark, zanim zdąży zawołać.' if dustLogic.r358_condition():
            # a30 # r358
            jump dust_s44

        'Skręć mu kark, zanim zdąży zawołać.' if dustLogic.r3885_condition():
            # a31 # r3885
            jump dust_s41

        '"No to ich przyzwij. Chętnie się z nimi spotkam."':
            # a32 # r3886
            $ dustLogic.r3886_action()
            jump dust_dispose


# s9 # say338
label dust_s9: # from 6.2 20.2
    nr '"Z kim się chcesz zobaczyć?"'

    menu:
        '"To nie twoja sprawa."':
            # a33 # r3922
            jump dust_s7

        '"Mam się zobaczyć z Dhallem."' if dustLogic.r342_condition():
            # a34 # r342
            jump dust_s10

        '"Mam się zobaczyć z Dhallem."' if dustLogic.r343_condition():
            # a35 # r343
            jump dust_s11

        '"Jestem tu, żeby się zobaczyć z Deionarrą."' if dustLogic.r33183_condition():
            # a36 # r33183
            jump dust_s13

        '"Jestem tu, żeby się zobaczyć z Deionarrą."' if dustLogic.r33185_condition():
            # a37 # r33185
            jump dust_s12

        '"Jestem tu, żeby się zobaczyć z Soem."' if dustLogic.r33186_condition():
            # a38 # r33186
            jump dust_s15

        '"Jestem tu, żeby się zobaczyć z Soem."' if dustLogic.r33187_condition():
            # a39 # r33187
            jump dust_s14

        'Kłamstwo: "Uch… z Adahnem. Nadal tu pracuje, czy…?"' if dustLogic.r33189_condition():
            # a40 # r33189
            $ dustLogic.r33189_action()
            jump dust_s21

        'Kłamstwo: "Uch… z Adahnem. Nadal tu pracuje, czy…?"' if dustLogic.r33190_condition():
            # a41 # r33190
            jump dust_s21

        '"Uch, z nikim. Przejęzyczyłem się."':
            # a42 # r33191
            jump dust_s20


# s10 # say345
label dust_s10: # from 9.1
    nr '"Znajdziesz go w sali odbiorczej na tym piętrze. Muszę cię jednak przestrzec… Dhall jest wyjątkowo zajęty swoimi obowiązkami, poza tym nie jest okazem najlepszego zdrowia. Jeśli nie masz nadzwyczaj pilnej sprawy, lepiej byłoby mu nie przeszkadzać."'

    menu:
        '"Świetnie. Dzięki za informacje."':
            # a43 # r347
            jump dust_s48


# s11 # say346
label dust_s11: # from 9.2
    nr '"Jest najprawdopodobniej w sali odbiorczej na pierwszym piętrze. Jest jednak wyjątkowo zajęty i nie grzeszy zbytnio zdrowiem. Jeśli nie masz nadzwyczaj pilnej sprawy, lepiej byłoby mu nie przeszkadzać."'

    menu:
        '"Świetnie. Dzięki za informacje."':
            # a44 # r348
            jump dust_s48


# s12 # say349
label dust_s12: # from 9.4 19.1
    nr '"Deionarra? Wiem, że w sali pamięci na parterze pochowano jakąś kobietę. Może to była ona?"'

    menu:
        '"Najprawdopodobniej. Dzięki."':
            # a45 # r352
            jump dust_s48


# s13 # say350
label dust_s13: # from 9.3
    nr '"Deionarra? Wiem, że w północno-zachodniej sali pamięci pochowano jakąś kobietę. Może to była ona?"'

    menu:
        '"Najprawdopodobniej. Dzięki."':
            # a46 # r353
            jump dust_s48


# s14 # say351
label dust_s14: # from 9.6
    nr '"Sądzę, że Soe znajduje się gdzieś w pobliżu frontowej bramy na parterze. Pracuje jako przewodnik w godzinach antyszczytu."'

    menu:
        '"Dobrze. Dzięki."':
            # a47 # r354
            jump dust_s48


# s15 # say355
label dust_s15: # from 9.5
    nr '"Sądzę, że znajdziesz go w pobliżu frontowej bramy. Pracuje jako przewodnik w godzinach antyszczytu."'

    menu:
        '"Dobrze. Dzięki."':
            # a48 # r356
            jump dust_s48


# s16 # say357
label dust_s16: # from 6.3 20.3
    nr '"Kto miał zostać pochowany? Być może posługi te odbywają się w innym miejscu Kostnicy."'

    menu:
        '"Źle mnie zrozumiałeś… To MNIE chciano przez pomyłkę pochować."':
            # a49 # r359
            jump dust_s8

        '"Możliwe. W którym miejscu odbywają się te posługi?"':
            # a50 # r360
            jump dust_s17

        '"Czy mógłbyś wskazać mi drogę do wyjścia?"':
            # a51 # r361
            jump dust_s5


# s17 # say362
label dust_s17: # from 16.1
    nr '"W obwodzie Kostnicy znajduje się kilka komnat pogrzebowych, które ciągną się wzdłuż krzywizny ścian na parterze i pierwszym piętrze. Znasz imię zmarłego?"'

    menu:
        '"Nie."':
            # a52 # r363
            jump dust_s18

        '"Tak."':
            # a53 # r364
            jump dust_s19


# s18 # say365
label dust_s18: # from 17.0
    nr '"W takim razie powinieneś skonsultować się z którymś z przewodników przy frontowej bramie. Powinien ci pomóc."'

    menu:
        '"Dobrze. Dzięki."':
            # a54 # r366
            jump dust_dispose


# s19 # say367
label dust_s19: # from 17.1
    nr 'Grabarz czeka.'

    menu:
        '"Wybacz… Przejęzyczyłem się. Nie znam imienia zmarłego."':
            # a55 # r369
            jump dust_s20

        '"To imię to Deionarra."' if dustLogic.r370_condition():
            # a56 # r370
            jump dust_s12

        'Kłamstwo: "To imię to… uch, Adahn."' if dustLogic.r371_condition():
            # a57 # r371
            $ dustLogic.r371_action()
            jump dust_s21

        'Kłamstwo: "To imię to… uch, Adahn."' if dustLogic.r372_condition():
            # a58 # r372
            jump dust_s21

        'Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.' if dustLogic.r373_condition():
            # a59 # r373
            jump dust_s44

        'Przybliż się tak, jakbyś chciał mu coś szepnąć na ucho, po czym skręć mu kark.' if dustLogic.r1335_condition():
            # a60 # r1335
            jump dust_s45

        'Uciekaj.':
            # a61 # r1336
            jump dust_s2


# s20 # say374
label dust_s20: # from 9.9 19.0
    nr '"Rozumiem. Powiedz teraz, w jakiej sprawie tu jesteś?"'

    menu:
        '"Nie twój interes."':
            # a62 # r375
            jump dust_s7

        '"Obudziłem się na jednym ze stołów w sali przygotowawczej."':
            # a63 # r376
            jump dust_s8

        '"Przyszedłem tu, żeby się z kimś zobaczyć."':
            # a64 # r377
            jump dust_s9

        '"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."' if dustLogic.r378_condition():
            # a65 # r378
            jump dust_s16

        'Uciekaj.':
            # a66 # r379
            jump dust_s2


# s21 # say368
label dust_s21: # from 9.7 9.8 19.2 19.3
    nr '"To imię jest mi obce. Skonsultuj się w tej sprawie z jednym z przewodników przy frontowej bramie… Oni będą w stanie pokierować cię lepiej niż ja."'

    menu:
        '"Dobrze. Zrobię tak. Żegnaj."':
            # a67 # r380
            jump dust_s48


# s22 # say294
label dust_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Ten blady mężczyzna ubrany jest w długie, ciemne szaty. Wokół niego roztacza się słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięty swoimi obowiązkami.'

    menu:
        '"Witaj."':
            # a68 # r295
            jump dust_s23

        'Zostaw go w spokoju.':
            # a69 # r297
            jump dust_dispose


# s23 # say381
label dust_s23: # from 22.0
    nr 'Odwraca się powoli i zerka na twoje szaty. "Witaj, bracie wtajemniczony."'

    menu:
        '"Kim jesteś?"':
            # a70 # r383
            jump dust_s24

        '"Co to za miejsce?"':
            # a71 # r384
            jump dust_s25

        '"Mam kilka pytań…"':
            # a72 # r391
            jump dust_s26

        'Zostaw go w spokoju.':
            # a73 # r392
            jump dust_dispose


# s24 # say393
label dust_s24: # from 23.0
    nr '"Mam do ciebie takie samo pytanie. Nie znam twojej twarzy. Kim jesteś?"'

    menu:
        'Kłamstwo: "To imię to… uch, Adahn."' if dustLogic.r450_condition():
            # a74 # r450
            $ dustLogic.r450_action()
            jump dust_s49

        'Kłamstwo: "To imię to… uch, Adahn."' if dustLogic.r1337_condition():
            # a75 # r1337
            jump dust_s49

        '"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."' if dustLogic.r3904_condition():
            # a76 # r3904
            jump dust_s47

        '"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."' if dustLogic.r3905_condition():
            # a77 # r3905
            jump dust_s46


# s25 # say394
label dust_s25: # from 23.1
    nr '"To Kostnica…" Grabarz wpatruje się w ciebie przez chwilę, jakby rozważał to, co właśnie powiedziałeś. "Mógłbyś powtórzyć, jak masz na imię?"'

    menu:
        'Kłamstwo: "To imię to… uch, Adahn."' if dustLogic.r399_condition():
            # a78 # r399
            $ dustLogic.r399_action()
            jump dust_s49

        'Kłamstwo: "To imię to… uch, Adahn."' if dustLogic.r3906_condition():
            # a79 # r3906
            jump dust_s49

        '"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."' if dustLogic.r3907_condition():
            # a80 # r3907
            jump dust_s47

        '"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."' if dustLogic.r3908_condition():
            # a81 # r3908
            jump dust_s46


# s26 # say400
label dust_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Grabarz cierpliwe czeka, aż zaczniesz kontynuować.'

    menu:
        '"Mógłbyś mi powiedzieć, jak stąd wyjść?"':
            # a82 # r401
            jump dust_s27

        '"Czy znasz kogoś o imieniu Farod?"':
            # a83 # r402
            jump dust_s28

        '"Zgubiłem dziennik. Nie widziałeś go czasem?"':
            # a84 # r403
            jump dust_s39

        '"Nieważne. Przepraszam, że ci przeszkodziłem."':
            # a85 # r404
            jump dust_s48


# s27 # say405
label dust_s27: # from 26.0
    nr '"Najprościej będzie wyjść przez frontową bramę. Znajduje się ona na parterze."'

    menu:
        '"Mam jeszcze kilka pytań…"':
            # a86 # r406
            jump dust_s26

        '"Dziękuję. Żegnaj."':
            # a87 # r407
            jump dust_s48


# s28 # say408
label dust_s28: # from 26.1
    nr '"To imię…" Grabarz przerywa na chwilę. "To imię *brzmi* znajomo… Wydaje mi się, że przypominam sobie Zbieracza, który się tak nazywał. Skryba Dhall powinien o nim wiedzieć."'

    menu:
        '"Zbieracza?"':
            # a88 # r409
            jump dust_s29

        '"Dhall?"':
            # a89 # r410
            jump dust_s30

        '"Mam jeszcze kilka pytań…"':
            # a90 # r411
            jump dust_s26

        '"Dziękuję za poświęcony mi czas. Żegnaj."':
            # a91 # r425
            jump dust_s48


# s29 # say412
label dust_s29: # from 28.0
    nr '"Zbieracze… Zabierają z ulic Sigil umarłych i przynoszą ich do Kostnicy." Grabarz przerywa, po czym marszczy brwi. "Nie jesteś stąd. Kim jesteś?"'

    menu:
        '"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."' if dustLogic.r413_condition():
            # a92 # r413
            jump dust_s50

        '"Jestem… tu nowy. Sta… ram się przyswoić sobie pewne rzeczy."' if dustLogic.r3918_condition():
            # a93 # r3918
            jump dust_s47

        '"No tak… Jak to było? Trwaj w wierze, uch, bracie wtajemniczony."' if dustLogic.r3919_condition():
            # a94 # r3919
            jump dust_s47

        '"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."' if dustLogic.r3920_condition():
            # a95 # r3920
            jump dust_s46


# s30 # say414
label dust_s30: # from 28.1
    nr '"Dhall jest jednym z najbardziej poważanych spośród naszej frakcji. Nie znam nikogo, kto częściej rozmyślałby nad naturą Prawdziwej Śmierci i kto bardziej by na nią zasługiwał, niż on. Posiada sporą wiedzę, którą się może podzielić. Jeśli go nie znasz, proponuję ci, byś z nim porozmawiał, gdy tylko będziesz miał okazję. Nie pozostanie on już zbyt długo w cieniu tego istnienia."'

    menu:
        '"*Nie pozostanie on już zbyt długo w cieniu tego istnienia*?"':
            # a96 # r415
            jump dust_s31

        '"Gdzie mogę znaleźć Dhalla?"' if dustLogic.r416_condition():
            # a97 # r416
            jump dust_s32

        '"Gdzie mogę znaleźć Dhalla?"' if dustLogic.r417_condition():
            # a98 # r417
            jump dust_s33

        '"Mam jeszcze kilka pytań…"':
            # a99 # r418
            jump dust_s26

        '"Dzięki za informacje. Porozmawiam z nim."':
            # a100 # r33204
            jump dust_s48


# s31 # say419
label dust_s31: # from 30.0 32.0 33.0
    nr 'Potwierdza. "Dhall jest chory. Jest stary nawet jak na standardy githzerai. Następstwem choroby, której się nabawił, będzie niewątpliwie śmierć. I tak ma szczęście."'

    menu:
        '"Standardy githzerai?"':
            # a101 # r420
            jump dust_s34

        '"Co to jest *githzerai*?"':
            # a102 # r421
            jump dust_s35

        '"Szczęście?"':
            # a103 # r422
            jump dust_s36

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a104 # r423
            jump dust_s26

        '"Dziękuję za poświęcony mi czas. Muszę już iść."':
            # a105 # r424
            jump dust_s48


# s32 # say427
label dust_s32: # from 30.1
    nr '"Znajdziesz go w sali odbiorczej w północno-zachodnim narożniku tej kondygnacji. Muszę cię jednak przestrzec… Dhall jest bardzo zajęty… Resztę czasu, którego nie pochłaniają jego obowiązki, w głównej mierze zabiera mu jego choroba."'

    menu:
        '"Dhall jest chory?"':
            # a106 # r428
            jump dust_s31

        '"Dziękuję za poświęcony mi czas. Muszę już iść. Żegnaj."':
            # a107 # r429
            jump dust_s48


# s33 # say426
label dust_s33: # from 30.2
    nr '"Znajdziesz go najpewniej w sali odbiorczej na pierwszym piętrze. Muszę cię jednak przestrzec… Dhall jest bardzo zajęty… Resztę czasu, którego nie pochłaniają jego obowiązki, w głównej mierze zabiera mu jego choroba."'

    menu:
        '"Dhall jest chory?"':
            # a108 # r430
            jump dust_s31

        '"Dziękuję za poświęcony mi czas. Muszę już cię opuścić. Żegnaj."':
            # a109 # r431
            jump dust_s48


# s34 # say432
label dust_s34: # from 31.0
    nr '"Tak, średnia życia githzerai jest znacznie dłuższa niż ludzi."'

    menu:
        '"Co to jest *githzerai*?"':
            # a110 # r433
            jump dust_s35

        '"Dlaczego śmierć Dhalla miałaby być szczęściem? Czyż nie jest on lubiany?"':
            # a111 # r437
            jump dust_s36

        '"Och. Mam jeszcze kilka pytań…"':
            # a112 # r438
            jump dust_s26

        '"Dziękuję za poświęcony mi czas. Żegnaj."':
            # a113 # r440
            jump dust_s48


# s35 # say435
label dust_s35: # from 31.1 34.0
    nr '"Githzerai to…" Przerywa, po czym marszczy brwi i zaczyna przeglądać ci się uważne. "Nie jesteś tutejszy. Kim jesteś?"'

    menu:
        '"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."' if dustLogic.r436_condition():
            # a114 # r436
            jump dust_s50

        '"Jestem… tu nowy. Sta… ram się przyswoić sobie pewne rzeczy."' if dustLogic.r3909_condition():
            # a115 # r3909
            jump dust_s47

        '"No tak… Jak to było? Trwaj w wierze, uch, bracie wtajemniczony."' if dustLogic.r3910_condition():
            # a116 # r3910
            jump dust_s47

        '"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."' if dustLogic.r3911_condition():
            # a117 # r3911
            jump dust_s46


# s36 # say439
label dust_s36: # from 31.2 34.1
    nr '"Ma szczęście, gdyż osiągnie Prawdziwą Śmierć. Nie będzie już musiał żyć w cieniu tego istnienia."'

    menu:
        '"I… to jest czymś dobrym?"':
            # a118 # r441
            jump dust_s37

        '"Rozumiem. To rzeczywiście wyjątkowe szczęście. Mam kilka innych pytań…"':
            # a119 # r442
            jump dust_s26

        '"Rozumiem. Cóż, muszę cię już opuścić. Żegnaj."':
            # a120 # r443
            jump dust_s48


# s37 # say444
label dust_s37: # from 36.0
    nr 'Grabarz przytakuje. "Tak." Marszczy brwi, po czym przygląda ci się wnikliwie. "Nie jesteś tutejszy. Kim jesteś?"'

    menu:
        '"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."' if dustLogic.r445_condition():
            # a121 # r445
            jump dust_s50

        '"Jestem… tu nowy. Sta… ram się przyswoić sobie pewne rzeczy."' if dustLogic.r446_condition():
            # a122 # r446
            jump dust_s47

        '"No tak… Jak to było? Trwaj w wierze, uch, bracie wtajemniczony."' if dustLogic.r3912_condition():
            # a123 # r3912
            jump dust_s47

        '"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."' if dustLogic.r3913_condition():
            # a124 # r3913
            jump dust_s46


# s38 # say447
label dust_s38: # -
    nr '"Nie jesteś jednym z nas, nieprawdaż? Co tu robisz? Jesteś członkiem Anarchistów? Albo szpiegiem którejś z innych frakcji? Straż! Straż!"'

    menu:
        '"Cholera!"':
            # a125 # r448
            $ dustLogic.r448_action()
            jump dust_dispose

        '"Ciiii! Nie mogę ci odpowiedzieć przez te twoje krzyki!"' if dustLogic.r449_condition():
            # a126 # r449
            $ dustLogic.r449_action()
            jump dust_dispose

        '"Ciiii! Nie mogę ci odpowiedzieć przez te twoje krzyki!"' if dustLogic.r1339_condition():
            # a127 # r1339
            $ dustLogic.r1339_action()
            jump dust_dispose


# s39 # say398
label dust_s39: # from 26.2
    nr '"Dziennik? Nie widziałem żadnego."'

    menu:
        '"Mam jeszcze kilka pytań…"':
            # a128 # r451
            jump dust_s26

        '"Muszę już iść. Żegnaj."':
            # a129 # r452
            jump dust_s48


# s40 # say1419
label dust_s40: # -
    nr 'Ten blady mężczyzna ubrany jest w długie, ciemne szaty. Roztacza się wokół niego słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięty swoimi obowiązkami.'

    menu:
        '"Witaj."' if dustLogic.r1420_condition():
            # a130 # r1420
            jump morte_s61  # EXTERN

        '"Witaj."' if dustLogic.r1421_condition():
            # a131 # r1421
            jump morte_s63  # EXTERN

        '"Witaj."' if dustLogic.r1422_condition():
            # a132 # r1422
            jump dust_s4

        '"Witaj."' if dustLogic.r1423_condition():
            # a133 # r1423
            jump dust_s4

        'Zostaw go w spokoju.':
            # a134 # r1424
            jump dust_dispose


# s41 # say1425
label dust_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Nim ma szanse wypowiedzieć choćby słowo, twe dłonie zaciskają się wokół jego skroni i przekręcasz mu głowę gwałtownie w lewą stronę.'

    menu:
        '"Nie mogę pozwolić, byś powiadomił swoich przyjaciół…"':
            # a135 # r1426
            $ dustLogic.r1426_action()
            jump dust_s42


# s42 # say1427
label dust_s42: # from 41.0 45.0
    nr 'Następuje *chrupnięcie* i Grabarz upada bezwładnie w twe ramiona.'

    menu:
        '"Lepiej ty niż ja, Grabarzu."' if dustLogic.r1428_condition():
            # a136 # r1428
            $ dustLogic.r1428_action()
            jump dust_s43

        '"Lepiej ty niż ja, Grabarzu."' if dustLogic.r1429_condition():
            # a137 # r1429
            $ dustLogic.r1429_action()
            jump dust_dispose


# s43 # say1430
label dust_s43: # from 42.0
    nr 'Ku twemu zdziwieniu wykonałeś to instynktownie, jakbyś już wcześniej robił to wiele razy… Przemyśleniu temu towarzyszą przebłyski wspomnień, są jednak zbyt słabe, by ujawnić się w pełni.'

    menu:
        'Zostaw ciało i kontynuuj.':
            # a138 # r3882
            $ dustLogic.r3882_action()
            jump dust_dispose


# s44 # say3883
label dust_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Nie okazujesz się dostatecznie szybki i Grabarz wykonuje unik, gdy się na niego rzucasz. Następnie cofa się o krok, po czym klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego, żelaznego dzwonu.'

    menu:
        '"No dobrze…"':
            # a139 # r3884
            $ dustLogic.r3884_action()
            jump dust_dispose


# s45 # say3889
label dust_s45: # from 19.5
    nr 'Gdy się przybliżasz, by mu coś wyszeptać, on również się przybliża. Gdy tylko wkracza w zasięg twych ramion, zaciskasz swe dłonie wokół jego skroni i przekręcasz mu głowę gwałtownie w lewą stronę.'

    menu:
        '"Nie mogę pozwolić, byś powiadomił swoich przyjaciół…"':
            # a140 # r3890
            $ dustLogic.r3890_action()
            jump dust_s42


# s46 # say3891
label dust_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Grabarz wydaje się być podejrzliwy. Wygląda na to, że chce coś powiedzieć, po czym potrząsa nieznacznie głową i wraca do swoich zajęć.'

    menu:
        'Odejdź.':
            # a141 # r3892
            jump dust_dispose


# s47 # say3893
label dust_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Grabarz przygląda ci się dokładnie. "Nie jesteś jednym z nas, nieprawdaż? Co tu robisz? Jesteś członkiem Anarchistów? Albo szpiegiem którejś z innych frakcji? Zdaje się, że powinna się tym zająć straż…"'

    menu:
        'Skręć mu kark, zanim zdąży zawołać.' if dustLogic.r3914_condition():
            # a142 # r3914
            jump dust_s44

        'Skręć mu kark, zanim zdąży zawołać.' if dustLogic.r3915_condition():
            # a143 # r3915
            jump dust_s41

        '"Nie, nie… To nie tak, eee… To znaczy nie jestem szpiegiem… Rozumiesz, obudziłem się ma jednym ze stołów… i…"':
            # a144 # r3916
            jump dust_s2

        'Odejdź. Jak najszybciej.':
            # a145 # r3917
            jump dust_s2


# s48 # say3894
label dust_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Grabarz kiwa głową, po czym powraca do swych obowiązków.'

    menu:
        'Odejdź.':
            # a146 # r3895
            jump dust_dispose


# s49 # say3896
label dust_s49: # from 24.0 24.1 25.0 25.1
    nr 'Grabarz marszczy brwi. "Imię to jest mi obce."'

    menu:
        '"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."' if dustLogic.r3898_condition():
            # a147 # r3898
            jump dust_s50

        '"Jestem… tu nowy. Sta… ram się poznać zasady."' if dustLogic.r3899_condition():
            # a148 # r3899
            jump dust_s47

        '"No tak… Jak to było? Trwaj w wierze, uch, bracie wtajemniczony."' if dustLogic.r3900_condition():
            # a149 # r3900
            jump dust_s47

        '"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."' if dustLogic.r3901_condition():
            # a150 # r3901
            jump dust_s46


# s50 # say3897
label dust_s50: # from 29.0 35.0 37.0 49.0
    nr 'Wciąż patrzy na ciebie krzywo, skłania jednakże lekko głową. "Dobrze. W czym mogę ci pomóc, wtajemniczony?"'

    menu:
        '"Mam kilka pytań…"':
            # a151 # r3902
            jump dust_s26

        '"Nie tym razem. Żegnaj."':
            # a152 # r3903
            jump dust_s46


# s51 # say66674
label dust_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Grabarz spogląda na ciebie kamiennym wzrokiem. "Zgubiłeś się?"'

    menu:
        '"Nie, jestem członkiem frakcji. Zwiedzam jedynie Kostnicę."' if dustLogic.r66675_condition():
            # a153 # r66675
            jump dust_s52

        '"Tak."' if dustLogic.r66676_condition():
            # a154 # r66676
            jump dust_s5

        '"Nie."' if dustLogic.r66677_condition():
            # a155 # r66677
            jump dust_s6

        '"Nie, nie zgubiłem się. Mam kilka pytań…"' if dustLogic.r66678_condition():
            # a156 # r66678
            jump dust_s6

        '"Żegnaj."' if dustLogic.r66679_condition():
            # a157 # r66679
            jump dust_s2


# s52 # say66681
label dust_s52: # from 51.0
    nr 'Grabarz wpatruje się w ciebie przez chwilę, po czym kiwa głową. "Dobrze. Gdybyś potrzebował pomocy, daj mi znać."'

    menu:
        '"Zrobię tak. Żegnaj."':
            # a158 # r66682
            jump dust_dispose
