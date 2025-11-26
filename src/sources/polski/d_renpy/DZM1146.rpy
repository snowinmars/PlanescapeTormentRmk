init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1146_logic import Zm1146Logic
    zm1146Logic = Zm1146Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1146.DLG
# ###


# s0 # say6518
label zm1146_s0: # - # IF ~  Global("Crispy","GLOBAL",0)
    nr 'Na czole tego chodzącego trupa wyryto numer "1146", zaś usta zszyto mu grubymi, czarnymi nićmi. Całe jego ciało pokrywają blizny - gorsze nawet od twoich własnych - jak gdyby jego posiadacz spłonął żywcem. Trup nie ma nosa, uszu i kilku palców, przypuszczalnie zwęglonych w jakiejś pożodze bardzo dawno temu. Gdy blokujesz jego drogę, aby zwrócić na siebie uwagę, trup zatrzymuje się i patrzy na ciebie nic nie widzącym wzrokiem.'

    menu:
        '"Więc jak… czy widziałeś, żeby działo się tu coś interesującego?"' if zm1146Logic.r6521_condition():
            # a0 # r6521
            $ zm1146Logic.r6521_action()
            jump zm1146_s1

        '"Więc jak… czy widziałeś, żeby działo się tu coś interesującego?"' if zm1146Logic.r6522_condition():
            # a1 # r6522
            jump zm1146_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm1146Logic.r6523_condition():
            # a2 # r6523
            jump zm1146_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm1146Logic.r6524_condition():
            # a3 # r6524
            $ zm1146Logic.r6524_action()
            jump zm1146_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r6525
            jump zm1146_dispose

        'Zostaw truposza w spokoju.':
            # a5 # r6526
            jump zm1146_dispose


# s1 # say6519
label zm1146_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r6527
            jump zm1146_dispose


# s2 # say6520
label zm1146_s2: # from 0.3
    nr 'Odór dymiącej siarki, spalonych włosów i przypalonej krwi atakuje twoje zmysły, z chwilą gdy dusza powraca do swego niegdysiejszego ciała. Trup pada na podłogę niemal od razu, gwałtownie drżąc i chwytając się samego siebie. Wydaje żałosne jęki. Niemal widać cieniutkie słupy dymu wydobywające się z jego ciała i członków.'

    menu:
        '"Czy wszystko… w porządku?"':
            # a7 # r6528
            jump zm1146_s3

        '"Mam kilka pytań…"':
            # a8 # r9413
            jump zm1146_s9

        'Zostaw płonącego ducha.':
            # a9 # r9414
            jump zm1146_dispose


# s3 # say9398
label zm1146_s3: # from 2.0
    nr 'Duch otwiera jedno oko. Całkowita biel jego oczu kontrastuje z szarym, pomarszczonym ciałem, które je otacza. Powoli odwraca głowę, aby lepiej ci się przyjrzeć; nabrzmiała i pocięta skóra jego twarzy i karku ściśle owija kości czaszki. W końcu słychać charkot wydobywający się ze zniszczonego gardła: "Nie. Nie… ja nie, ty… szpicuj się, pomyleńcu."'

    menu:
        '"Czy jest coś, co mogę zrobić, aby ci pomóc?"':
            # a10 # r9415
            $ zm1146Logic.r9415_action()
            jump zm1146_s4

        '"Mam pytanie…"':
            # a11 # r9416
            jump zm1146_s9

        '"No i dobrze, ty cuchnący, płonący durniu; prawdopodobnie zasługujesz na taki los. Żegnaj."':
            # a12 # r9417
            jump zm1146_s6

        'Zostaw umęczonego ducha.':
            # a13 # r9418
            jump zm1146_dispose


# s4 # say9399
label zm1146_s4: # from 3.0
    nr '"Heh, heh-HURG!" Duch zaczyna się śmiać, ale nagle przestaje. Dostaje straszliwych skurczów i wymiotuje strugą płynu balsamującego i czarnej mazi. Cały przejęty bólem duch zaczyna krztusić się i kaszleć, od czasu do czasu przerywając sobie, aby móc wypluć żółtawy płyn i luźne szwy spomiędzy swych zniszczonych warg.'

    menu:
        'Poczekaj cierpliwie, aż napad kaszlu się skończy.':
            # a14 # r9419
            jump zm1146_s5

        '"Mam następne pytanie…"':
            # a15 # r9421
            jump zm1146_s9

        'Zostaw umęczonego ducha jego cierpieniom.':
            # a16 # r9422
            jump zm1146_dispose


# s5 # say9400
label zm1146_s5: # from 4.0
    nr 'Okropny kaszel wreszcie ustępuje. "Nie, trepie… ty… nie możesz. Chyba że… że zatańczysz w Baator i wybawisz mnie, ja jestem w ślepakach. Czas mojej… mojej pokuty." Duch zamyka oko i kładzie głowę na podłodze.'

    menu:
        '"Rozumiem. Mam następne pytanie…"':
            # a17 # r9423
            jump zm1146_s9

        '"W porządku. Żegnaj."':
            # a18 # r9424
            jump zm1146_dispose


# s6 # say9401
label zm1146_s6: # from 3.2 17.0
    nr 'Duch wydaje się z siebie wilgotny, warczący odgłos, a poczerniałe wargi odsłaniają zakrzywione, żółte zęby. "Tylko… tylko poczekaj aż… wyrwę się z tej otchłani… Po ciebie przyjdę najpierw, trepie…"'

    menu:
        '"Zrób to. Nie należę do ludzi, którzy boją się takich jak ty."':
            # a19 # r9425
            jump zm1146_s7

        'Uderz go.':
            # a20 # r9426
            $ zm1146Logic.r9426_action()
            jump zm1146_s8

        'Zignoruj łajdaka, odwróć się i odejdź.':
            # a21 # r9427
            jump zm1146_dispose


# s7 # say9402
label zm1146_s7: # from 6.0
    nr 'Duch wydaje słaby, gardłowy warkot i spluwa w twoim kierunku - nieczystości lądują kilka centymetrów od twoich stóp. Całkiem wyczerpany, truposz opada z powrotem na podłogę i wydaje się, że raz jeszcze życie z niego uchodzi.'

    jump zm1146_dispose


# s8 # say9403
label zm1146_s8: # from 6.1
    nr 'Twój szybki kopniak ląduje na nerce truposza, ale nic to nie daje; nie wygląda na to, aby duch odniósł jakiekolwiek obrażenia. Stoisz tak z niejakim poczuciem niezadowolenia.'

    jump zm1146_dispose


# s9 # say9404
label zm1146_s9: # from 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
    nr '"Czego… czego to *mógłbyś* w ogóle ode mnie chcieć, trepie?" Duch wciąż wije się, poklepując się jak gdyby usiłując ugasić rozmaite małe ogniska na swym ciele.'

    menu:
        '"Kim jesteś?"':
            # a22 # r9428
            jump zm1146_s10

        '"Skąd pochodzisz?"':
            # a23 # r9429
            jump zm1146_s11

        '"Jak się tutaj znalazłeś? To znaczy, jako zombie?"':
            # a24 # r9430
            jump zm1146_s12

        '"Gdzie ty… gdzie twój duch mieszka… teraz?"':
            # a25 # r9431
            jump zm1146_s13

        '"Co zrobiłeś, aby sobie zasłużyć na takie męki?"':
            # a26 # r9432
            jump zm1146_s14

        '"Co wiesz o tym miejscu?"':
            # a27 # r9433
            jump zm1146_s15

        '"Czy znasz kogoś o imieniu Farod?"' if zm1146Logic.r9434_condition():
            # a28 # r9434
            jump zm1146_s16

        '"Nic to, nieważne."':
            # a29 # r9435
            jump zm1146_dispose


# s10 # say9405
label zm1146_s10: # from 9.0
    nr '"Nie twoja brocha… zostaw mnie… w spokoju…"'

    menu:
        '"Nie. Mam następne pytanie…"':
            # a30 # r9436
            jump zm1146_s9

        '"A zatem żegnaj."':
            # a31 # r9437
            jump zm1146_dispose


# s11 # say9406
label zm1146_s11: # from 9.1
    nr '"Co? Na litość mocy, kogo to… interesuje? Z Sigil, ty… ty szpicu."'

    menu:
        '"Mam następne pytanie…"':
            # a32 # r9438
            jump zm1146_s9

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a33 # r9439
            jump zm1146_dispose


# s12 # say9407
label zm1146_s12: # from 9.2
    nr '"Jak myślisz, Tępaku?" Ten nagły wybuch wywołuje u niego krótki napad szarpiącego, bolesnego kaszlu. "Oddałem cielsko za… za kawałek brzdęku. Naszpicowani Grabarze… i wtenczas - AKURAT WTEDY, dasz wiarę - jakiś kopnięty czarodziej postanowił wysadzić Ul i posłać go w gorejące zapomnienie, a ja byłem w samym środku!" Duch złowieszczo mruczy coś pod nosem, a z poszarpanych kącików jego ust wydobywa się kipiący płyn.'

    menu:
        '"Jakiś czarodziej spalił Ul?"':
            # a34 # r9440
            jump zm1146_s18

        '"Mam następne pytanie…"':
            # a35 # r9441
            jump zm1146_s9

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a36 # r9465
            jump zm1146_dispose


# s13 # say9408
label zm1146_s13: # from 9.3
    nr '"A jak sądzisz, ty skórogłowy hultaju? W Baator, w tej cuchnącej dziurze, którą zwą Flegetos. Płonę… płonę… płonę… ot, co tam robię. Spaliłem się za życia i teraz płonę po śmierci. Argh!" Duch zgrzyta zębami z wściekłości. "Ta ironia jest obrzydliwa! Kiedy się już stąd wyrwę, wrzucę do tej cholernej dziury całe zastępy gnojków. He he he… *bul*"'

    menu:
        '"Czemu pragniesz, aby innym udzielił się twój los?"':
            # a37 # r9442
            jump zm1146_s17

        '"Mam następne pytanie…"':
            # a38 # r9443
            jump zm1146_s9

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a39 # r9444
            jump zm1146_dispose


# s14 # say9409
label zm1146_s14: # from 9.4
    nr '"Zasłużyć? NA TO? Nijak! Ja… *hep* … nic nie zrobiłem. Starałem się tylko jakoś żyć… przetrwać jak każdy… i wtedy „buum“. Ten cholerny mag podpalił Ul!"'

    menu:
        '"Jakiś mag… spalił… Ul?"':
            # a40 # r9445
            jump zm1146_s18

        '"Rozumiem. Mam następne pytanie…"':
            # a41 # r9446
            jump zm1146_s9

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a42 # r9745
            jump zm1146_dispose


# s15 # say9410
label zm1146_s15: # from 9.5
    nr '"Nic. Nic. Przecież *ci* mówię, trepie. Po prostu… zostaw mnie moim oparzeniom…"'

    menu:
        '"Doskonale. W takim razie mam następne pytanie…"':
            # a43 # r9447
            jump zm1146_s9

        '"A zatem żegnaj."':
            # a44 # r9448
            jump zm1146_dispose


# s16 # say9411
label zm1146_s16: # from 9.6
    nr '"Kogo? Co? Nie! Co… co każe ci myśleć, że powiedziałbym ci, gdybym… ty… ty skurlony trepie? Hmpf…"'

    menu:
        '"Doskonale. Mam następne pytanie…"':
            # a45 # r9449
            jump zm1146_s9

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a46 # r9450
            jump zm1146_dispose


# s17 # say9412
label zm1146_s17: # from 13.0
    nr '"Zemsta, pomyleńcu! Dorwę… dorwę ich wszystkich, wszystkich tych, którzy mnie wkurzyli. A szczególnie tego czarodzieja! Rozerwę na strzępy te jego drobinki i wepchnę mu je do gardła. A potem wrzucę go do tej cuchnącej dziury, te jego drobinki i wszystko inne też! Jego i paru innych też… co by się wyrównało! He he he…"'

    menu:
        '"Jesteś podstępnym, małym człowieczkiem. Wydaje się, że porządnie zasłużyłeś na swój los."':
            # a47 # r9420
            jump zm1146_s6

        '"Rozumiem. Mam dla ciebie więcej pytań…"':
            # a48 # r9451
            jump zm1146_s9

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a49 # r9452
            jump zm1146_dispose


# s18 # say9458
label zm1146_s18: # from 12.0 14.0
    nr '"Tak, Ul… najgorszą część Sigil. W życiu nie widziałem takiego ognia… Rzuciłem się w jedną stronę, potem w drugą, próbując się wyrwać, ale wszystko dookoła płonęło! Budynki, ulice, ludzie, dzieciaki… a ten po trzykroć przeklęty czarodziej tylko się śmiał cały czas! Skręciłem za róg, myśląc, że umknąłem na chwilę, ale następną rzeczą, jaką zobaczyłem to była moja głowa w ogniu! To całkiem… poszło w dół…" Oko ducha rozbłyskuje złowieszczym blaskiem.'

    menu:
        '"Kim był ten czarodziej?"':
            # a50 # r9459
            jump zm1146_s19

        '"Rozumiem. Mam dla ciebie więcej pytań…"':
            # a51 # r9464
            jump zm1146_s9

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a52 # r9746
            jump zm1146_dispose


# s19 # say9744
label zm1146_s19: # from 18.0
    nr '"Nie wiem. Nieźle mnie przysmażyło, zanim ktokolwiek go zatrzymał, o ile ktokolwiek tego dokonał. Chyba pamiętam, jak niektórzy go gonili na samym początku, wykrzykując jego imię… eee… och! Ignis, myślę, że nazywał się Ignis. Ignis. Lub coś w tym stylu. Mam tylko nadzieję, że ten szpicownik jest teraz w gorszej dziurze niż ja!'

    menu:
        '"Rozumiem. Mam dla ciebie więcej pytań…"':
            # a53 # r9747
            jump zm1146_s9

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a54 # r9748
            jump zm1146_dispose


# s20 # say20099
label zm1146_s20: # - # IF ~  Global("Crispy","GLOBAL",1)
    nr '"Znowu?"'

    menu:
        '"Mam kilka pytań…"':
            # a55 # r20100
            jump zm1146_s9

        '"Tylko tędy przechodziłem. Żegnaj."':
            # a56 # r20101
            jump zm1146_dispose
