init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.xach_logic import XachLogic
    xachLogic = XachLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DXACH.DLG
# ###


# s0 # say500
label xach_s0: # - # IF ~  True()
    nr 'Widzisz ciało mężczyzny z numerem "331" wyciętym na czole. Jego powieki i wargi są skrupulatnie zaszyte, natomiast w jego szyi tkwi pokaźna wyrwa. Fetor, jaki od niego bije, mógłby zapewne zabić kogoś o delikatniejszych nozdrzach.'

    menu:
        '"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"' if xachLogic.r502_condition():
            # a0 # r502
            $ xachLogic.r502_action()
            jump xach_s1

        '"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"' if xachLogic.r503_condition():
            # a1 # r503
            jump xach_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if xachLogic.r1354_condition():
            # a2 # r1354
            jump xach_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if xachLogic.r1355_condition():
            # a3 # r1355
            jump xach_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r1357
            jump xach_s1

        'Zostaw truposza w spokoju.':
            # a5 # r1358
            jump xach_dispose


# s1 # say501
label xach_s1: # from 0.0 0.1 0.2 0.4
    nr 'Truposz w milczeniu spogląda przed siebie przez zasznurowane powieki.'

    menu:
        '"Zatem żegnaj."':
            # a6 # r505
            jump xach_dispose


# s2 # say504
label xach_s2: # from 0.3
    nr '"Kk-kk…" Zombie niezdarnie odzyskuje głos i sprawia wrażenia silnie wystraszonego. "Kto tam? Odpowiadaj!"'

    menu:
        '"Nie widzisz mnie?"':
            # a7 # r507
            jump xach_s3

        'Spróbuj improwizacji: "To ja. Nie poznajesz mojego głosu?"' if xachLogic.r508_condition():
            # a8 # r508
            jump xach_s30

        'Spróbuj improwizacji: "To ja. Nie poznajesz mojego głosu?"' if xachLogic.r63307_condition():
            # a9 # r63307
            jump xach_s30

        '"Kim jesteś?"':
            # a10 # r519
            jump xach_s31

        '"Zachariasz?"' if xachLogic.r506_condition():
            # a11 # r506
            jump xach_s4

        '"Dzisiaj sobie chyba nie pogadamy, truposzu. Żegnaj."':
            # a12 # r520
            jump xach_dispose


# s3 # say509
label xach_s3: # from 2.0
    nr '"Ślepy jestem, tak samo po śmierci, jak i za życia… A teraz odpowiadaj, kim jesteś?"'

    menu:
        'Spróbuj improwizacji: "To ja. Nie poznajesz mojego głosu?"' if xachLogic.r510_condition():
            # a13 # r510
            jump xach_s30

        'Spróbuj improwizacji: "To ja. Nie poznajesz mojego głosu?"' if xachLogic.r63308_condition():
            # a14 # r63308
            jump xach_s30

        '"Kim jesteś?"':
            # a15 # r511
            jump xach_s31

        '"Zachariasz?"' if xachLogic.r521_condition():
            # a16 # r521
            jump xach_s4

        '"Dzisiaj sobie chyba nie pogadamy, truposzu. Żegnaj."':
            # a17 # r522
            jump xach_dispose


# s4 # say512
label xach_s4: # from 2.4 3.3 30.0 31.0
    nr '"Co…?" Zombie wygląda na wstrząśniętego, ale jego przerażenie szybko ustępuje miejsca radosnemu zdumieniu. "Na Wzrok Pani…" Truposz sprawia wrażenie, jakby na jego niewidzących oczach rozgrywał się prawdziwy cud. "Nie jesteś *martwy*, śmiałku?"'

    menu:
        '"Kim jesteś?"':
            # a18 # r515
            jump xach_s5

        '"Co tutaj robisz?"':
            # a19 # r516
            jump xach_s47

        '"Co to za miejsce?"':
            # a20 # r517
            jump xach_s6

        '"Nie mogę zbyt długo rozmawiać. Czas już na mnie. Żegnaj."' if xachLogic.r518_condition():
            # a21 # r518
            jump xach_s41

        '"Nie mogę zbyt długo rozmawiać. Czas już na mnie. Żegnaj."' if xachLogic.r1394_condition():
            # a22 # r1394
            jump xach_dispose


# s5 # say514
label xach_s5: # from 4.0
    nr '"Czy naprawdę tak trudno przebić się wzrokiem przez tę plugawą skorupę i ujrzeć pod nią starego Głupca Zachariasza? To przecież ja, śmiałku. Błogosławione niechaj będą Wszelkie Moce, nie sądziłem, że przyjdzie mi jeszcze kiedykolwiek cię obaczyć… Ale ty się też znacznie zmieniłeś, przynajmniej tak mówi mi mój słuch… Powiedz, czy dalej swoim zwyczajem obierasz błędne i zwodnicze szlaki?" Zachariasz świszczy przez otwór w szyi. "A może też jesteś martwy?"'

    menu:
        '"To długa historia… Ale nie… Nie jestem martwy."':
            # a23 # r685
            jump xach_s46

        '"Co tutaj robisz?"':
            # a24 # r686
            jump xach_s47

        '"Co to za miejsce?"':
            # a25 # r687
            jump xach_s6

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."' if xachLogic.r688_condition():
            # a26 # r688
            jump xach_s41

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."' if xachLogic.r1393_condition():
            # a27 # r1393
            jump xach_dispose


# s6 # say513
label xach_s6: # from 4.2 5.2
    nr '"Kostnica, śmiałku. Czy to trudno zauważyć?"'

    menu:
        '"Co doprowadziło cię do takiego stanu?"':
            # a28 # r523
            jump xach_s8

        '"Opowiedz mi o Kostnicy."' if xachLogic.r524_condition():
            # a29 # r524
            $ xachLogic.r524_action()
            jump xach_s9

        '"Opowiedz mi o moim poprzednim życiu."':
            # a30 # r525
            jump xach_s16

        '"Opowiedz mi o którymś z moich dawnych towarzyszy."':
            # a31 # r526
            jump xach_s23

        '"Czas już na mnie. Żegnaj."' if xachLogic.r527_condition():
            # a32 # r527
            jump xach_s41

        '"Muszę już iść. Żegnaj."' if xachLogic.r1392_condition():
            # a33 # r1392
            jump xach_dispose


# s7 # say528
label xach_s7: # from 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
    nr '"Tak?"'

    menu:
        '"Chciałby teraz wydobyć ten przedmiot, Zachariaszu…"' if xachLogic.r63484_condition():
            # a34 # r63484
            jump xach_s34

        '"Co doprowadziło cię do takiego stanu?"':
            # a35 # r637
            jump xach_s8

        '"Opowiedz mi o Kostnicy."':
            # a36 # r638
            jump xach_s9

        '"Opowiedz mi o moim poprzednim życiu."':
            # a37 # r639
            jump xach_s16

        '"Opowiedz mi o którymś z moich dawnych towarzyszy."':
            # a38 # r640
            jump xach_s23

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1391_condition():
            # a39 # r1391
            jump xach_dispose

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r641_condition():
            # a40 # r641
            jump xach_s41


# s8 # say529
label xach_s8: # from 6.0 7.1
    nr 'Jego głos załamuje się, jakby zombie wstydził się czegoś. "Ciężko było podążać za tobą, śmiałku, widziałem też wiele okropieństw. Po tym wszystkim zacząłem pić i stoczyłem się. A któregoś dnia, po pijanemu, zapisałem swoje ciało Grabom. Wkrótce potem Moce odwróciły się ode mnie i zmarłem."'

    menu:
        '"Mam jeszcze kilka pytań…"':
            # a41 # r531
            jump xach_s7

        '"Dość już usłyszałem. Żegnaj."' if xachLogic.r545_condition():
            # a42 # r545
            jump xach_s41

        '"Dość już usłyszałem. Żegnaj."' if xachLogic.r1390_condition():
            # a43 # r1390
            jump xach_dispose


# s9 # say533
label xach_s9: # from 6.1 7.2
    nr '"Miejsce dla martwych prowadzone przez Martwych… Ale są tu pewne rzeczy, które toczą się podejrzanym torem…"'

    menu:
        '"Na przykład co?"':
            # a44 # r534
            jump xach_s10

        '"Mam do ciebie jeszcze kilka pytań…"':
            # a45 # r536
            jump xach_s7

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."' if xachLogic.r537_condition():
            # a46 # r537
            jump xach_s41

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."' if xachLogic.r1389_condition():
            # a47 # r1389
            jump xach_dispose


# s10 # say535
label xach_s10: # from 9.0
    nr '"Zdradzę ci ten cień. Jest tutaj zombie, który udaje, że jest zombie, ale nie jest nim w istocie. Nie ciekawi mnie przyczyna pojawienia się tu takiej postaci, ale rzecz ta sama w sobie jest bardzo dziwna."'

    menu:
        '"Coś jeszcze?"' if xachLogic.r538_condition():
            # a48 # r538
            jump xach_s11

        '"Który to zombie?"':
            # a49 # r539
            jump xach_s12

        '"Interesujące. Mam jeszcze kilka pytań…"':
            # a50 # r540
            jump xach_s7

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."' if xachLogic.r546_condition():
            # a51 # r546
            jump xach_s41

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."' if xachLogic.r1388_condition():
            # a52 # r1388
            jump xach_dispose


# s11 # say541
label xach_s11: # from 10.0 12.0
    nr '"I jeszcze jedna rzecz. Ten stary githzerai, ten, który zajmuje salę przygotowań… Dhall. On wielokrotnie uratował cię przed piecem krematoryjnym. Twoje szczęście, że masz takiego sprzymierzeńca."'

    menu:
        '"Co takiego Dhall zrobił, aby mnie ocalić?"' if xachLogic.r542_condition():
            # a53 # r542
            jump xach_s13

        '"Wiem. Mam jeszcze kilka innych pytań."':
            # a54 # r543
            jump xach_s7

        '"Nie mam już czasu na dalsze rozmowę. Żegnaj."' if xachLogic.r544_condition():
            # a55 # r544
            jump xach_s41

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."' if xachLogic.r1387_condition():
            # a56 # r1387
            jump xach_dispose


# s12 # say547
label xach_s12: # from 10.1
    nr '"Nawet gdyby moje oczy pozwoliłyby mi go zobaczyć, trudno byłoby mi podać liczbę na jego czole. Mogę ci tylko rzec, jak można go odróżnić od innych, śmiałku: jego głos nie jest głosem zombie… reaguje inaczej, niż inne zombie."'

    menu:
        '"Zauważyłeś jeszcze jakieś inne osobliwe rzeczy w Kostnicy?"' if xachLogic.r548_condition():
            # a57 # r548
            jump xach_s11

        '"Hm… Interesujące. Mam jeszcze kilka innych pytań."':
            # a58 # r554
            jump xach_s7

        '"Poszukam tego zombie. Żegnaj."' if xachLogic.r549_condition():
            # a59 # r549
            jump xach_s41

        '"Poszukam tego zombie. Żegnaj."' if xachLogic.r1386_condition():
            # a60 # r1386
            jump xach_dispose


# s13 # say550
label xach_s13: # from 11.0
    nr '"On dbał o to, aby odwlec kremację na tyle, abyś zdążył się wcześniej obudzić. Ale nie wiem, dlaczego to czynił."'

    menu:
        '"Interesujące. Mam jeszcze kilka pytań…"':
            # a61 # r552
            jump xach_s7

        '"Muszę już iść. Żegnaj."' if xachLogic.r553_condition():
            # a62 # r553
            jump xach_s41

        '"Muszę już iść. Żegnaj."' if xachLogic.r1385_condition():
            # a63 # r1385
            jump xach_dispose


# s14 # say555
label xach_s14: # -
    nr '"Uznał, że to konieczne dla tego, aby zapobiec… aby zapobiec… No właśnie nie pamiętam za bardzo o co to chodziło, ale wiem, że uznał to za konieczne."'

    menu:
        '"Hm… To brzmi podejrzanie. Mam jeszcze kilka innych pytań."':
            # a64 # r557
            jump xach_s7

        '"Ach tak. Zastanawiam się właśnie, czy to *było* konieczne. Przedyskutuję to z Dhallem… Żegnaj."' if xachLogic.r556_condition():
            # a65 # r556
            jump xach_s41

        '"Ach tak. Zastanawiam się właśnie, czy to *było* konieczne. Przedyskutuję to z Dhallem… Żegnaj."' if xachLogic.r1384_condition():
            # a66 # r1384
            jump xach_dispose


# s15 # say558
label xach_s15: # -
    nr 'Jego głos załamuje się, jakby zombie wstydził się czegoś. "Ciężko było podążać za tobą, śmiałku, widziałem też wiele okropieństw. Po tym wszystkim zacząłem pić i stoczyłem się. A któregoś dnia, po pijanemu, zapisałem swoje ciało Grabom. Wkrótce potem Moce odwróciły się ode mnie i zmarłem."'

    menu:
        '"Mam jeszcze kilka pytań…"':
            # a67 # r559
            jump xach_s7

        '"Muszę już iść. Żegnaj."' if xachLogic.r560_condition():
            # a68 # r560
            jump xach_s41

        '"Muszę już iść. Żegnaj."' if xachLogic.r1383_condition():
            # a69 # r1383
            jump xach_dispose


# s16 # say561
label xach_s16: # from 6.2 7.3
    nr '"Dlaczego? Zapomniałeś o swojej przeszłości?"'

    menu:
        '"Tak, można to tak ująć."':
            # a70 # r562
            jump xach_s17

        '"Nie… Chciałem tylko sprawdzić, czy jesteś tym, za kogo się podajesz."':
            # a71 # r563
            jump xach_s20

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a72 # r564
            jump xach_s7

        '"Muszę już iść. Żegnaj."' if xachLogic.r565_condition():
            # a73 # r565
            jump xach_s41

        '"Muszę już iść. Żegnaj."' if xachLogic.r1382_condition():
            # a74 # r1382
            jump xach_dispose


# s17 # say566
label xach_s17: # from 16.0 21.0 22.0
    nr '"Cóż, byłeś dziwakiem, zawsze pełnym podejrzeń i zawsze spodziewającym się czegoś… czyjegoś przybycia. Inna sprawa, że we wszystkich swoich żywotach musiałeś namnożyć sobie wrogów. A nie było przesady w twierdzeniu, że kto z tobą zadzierał, szybko lądował w księdze umarłych."'

    menu:
        '"Co jeszcze? Jakieś inne ciekawostki…"':
            # a75 # r569
            jump xach_s18

        '"Mam jeszcze kilka pytań…"':
            # a76 # r570
            jump xach_s7

        '"Czas już na mnie. Żegnaj."' if xachLogic.r571_condition():
            # a77 # r571
            jump xach_s41

        '"Muszę już iść. Żegnaj."' if xachLogic.r1381_condition():
            # a78 # r1381
            jump xach_dispose


# s18 # say567
label xach_s18: # from 17.0
    nr '"Potrafiłeś być także diabelsko okrutny… Takim byłeś, kiedy skłoniłeś mnie do podpisania kontraktu i takim byłeś, kiedy porzuciłeś tę dzierlatkę na Avernusie. Spędziliśmy razem szmat czasu. Nikt z nas nie mógł się pochwalić tym, że ci się w czymś sprzeciwił, synu."'

    menu:
        '"Ach tak… Opowiedz jeszcze coś. Nawet drobiazg z twoich wspomnień może mi pomóc."':
            # a79 # r572
            jump xach_s19

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a80 # r573
            jump xach_s7

        '"Czas już na mnie. Żegnaj."' if xachLogic.r574_condition():
            # a81 # r574
            jump xach_s41

        '"Muszę już iść. Żegnaj."' if xachLogic.r1380_condition():
            # a82 # r1380
            jump xach_dispose


# s19 # say568
label xach_s19: # from 18.0
    nr '"Całe swoje życie traktowałeś jak jedną wielką wojnę. Wszystko było dla ciebie bitwą, którą musiałeś wygrać. A byłeś przy tym najbardziej bezlitosnym łotrem, jakiego za moich czasów świat nosił. Jeśliś na coś zawziął, żadna siła nie mogła cię zawrócić z drogi. I nikt nic dla ciebie nie znaczył. Ani Deionarra ze swoimi szlochem i narzekaniami, ani gith zawsze pełen mądrych wojennych rad, ani biedny Zachariasz, który robił co mógł, aby utrzymać się u twojego boku. Byłeś twardy i niełatwo było cię zabić, ale byliśmy wszyscy tylko ludźmi. Teraz zaś wszyscy jesteśmy stronami księgi umarłych. Niektórzy można nawet rzec stronicami wydartymi."'

    menu:
        '"Coś jeszcze?"' if xachLogic.r63234_condition():
            # a83 # r63234
            jump xach_s32

        '"Deionarra?"':
            # a84 # r576
            jump xach_s26

        '"„Gith“ Kogo masz na myśli?"':
            # a85 # r577
            jump xach_s24

        '"Mam jeszcze kilka pytań…"':
            # a86 # r578
            jump xach_s7

        '"Rozumiem… Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r579_condition():
            # a87 # r579
            jump xach_s41

        '"Rozumiem… Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1379_condition():
            # a88 # r1379
            jump xach_dispose


# s20 # say580
label xach_s20: # from 16.1
    nr '"Hm, cóż takiego mogę ci opowiedzieć? Też nie pamiętam wszystkiego. Pamiętasz, jak ruszyliśmy w tę tułaczkę po Avernusie i wpadliśmy na stado abiszai w tej dolinie pełnej muszych larw?"'

    menu:
        'Kłamstwo: "Tak."':
            # a89 # r581
            jump xach_s21

        '"Nie."':
            # a90 # r582
            jump xach_s22


# s21 # say583
label xach_s21: # from 20.0
    nr '"No cóż cieszę się, że przynajmniej jeden z nas pamięta to wszystko. Bo ja, jak mi Balor miły, niczego takiego nie pamiętam. Kim jesteś, śmiałku, i co sobie obiecujesz po wspomnieniach umarlaka?"'

    menu:
        '"Pragnę poznać samego siebie. Naprawdę zapomniałem o tym, kim jestem, Zachariaszu, a wierzę, że ty mnie znałeś. Co możesz mi opowiedzieć o moim poprzednim życiu?"':
            # a91 # r584
            jump xach_s17

        '"Zapomnijmy o tym. Mam kilka pytań."':
            # a92 # r586
            jump xach_dispose

        '"Niczego… Czas już na mnie. Żegnaj, Zachariaszu."' if xachLogic.r587_condition():
            # a93 # r587
            jump xach_s41

        '"Niczego… Czas już na mnie. Żegnaj, Zachariaszu."' if xachLogic.r1378_condition():
            # a94 # r1378
            jump xach_dispose


# s22 # say588
label xach_s22: # from 20.1
    nr '"Hmmm. Może to całe wydarzenie potoczyło się w inny sposób? A może spróbujemy tego: Pamiętasz, jak Deionarra niemal sama wpakowała się do księgi umarłych, próbując powstrzymać cię przed wstąpieniem w mury Klątwy?"'

    menu:
        '"Nie, naprawdę, ale to nic nie szkodzi. Wierzę ci, że mnie znałeś. Zatem, co możesz mi powiedzieć o moim poprzednim życiu?"':
            # a95 # r590
            jump xach_s17

        '"Mniejsza o to… Mam jeszcze kilka innych pytań."':
            # a96 # r591
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r592_condition():
            # a97 # r592
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1377_condition():
            # a98 # r1377
            jump xach_dispose


# s23 # say589
label xach_s23: # from 6.3 7.4
    nr '"Barwną stanowiliśmy paczkę, nie ma co… Pół-umarły człek, którym zawsze wzgardzała księga umarłych, choćby się starał ze wszelkich sił - tak brzydki, że odwracały się od niego wszelkie Moce Śmierci - płaczliwa córka adwokata, gith wyrzutek, skoczna czaszka o niewyparzonym języku i na poły skurlały ślepy łucznik."'

    menu:
        '"Gith?"':
            # a99 # r593
            jump xach_s24

        '"Płaczliwa córka adwokata?"':
            # a100 # r594
            jump xach_s26

        '"Latająca czaszka?"':
            # a101 # r595
            jump xach_s28

        '"Byłeś ślepym łucznikiem?"':
            # a102 # r596
            jump xach_s49

        '"Czy wiesz, co się stało z moim dziennikiem?"':
            # a103 # r597
            jump xach_s29

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a104 # r598
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r599_condition():
            # a105 # r599
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1376_condition():
            # a106 # r1376
            jump xach_dispose


# s24 # say600
label xach_s24: # from 19.2 23.0 27.0
    nr '"Gith o ponurym wyglądzie… Mroczny i cichy, jak wszyscy z jego gatunku. Nic a nic nie ufałem temu githowi, jak mi bogowie mili. Widzisz, śmiałku, te wrzecionowate githy myślą tylko o dwóch rzeczach: jak uniknąć niewoli i jak zabić jak najwięcej Illithidów o łbach kałamarnic. Wszystko inne dla nich nie ma najmniejszego znaczenia, więc i ten, choć za tobą poszedłby w ogień, nie dałby za resztę z nas złamanego grosza."'

    menu:
        '"Co było tego przyczyną?"' if xachLogic.r601_condition():
            # a107 # r601
            jump xach_s25

        '"Chciałbym usłyszeć coś o moich towarzyszach…"':
            # a108 # r602
            jump xach_s27

        '"Mam jeszcze kilka pytań…"':
            # a109 # r603
            jump xach_s7

        '"Hmm… Interesujące. Dziękuję, Zachariaszu."' if xachLogic.r604_condition():
            # a110 # r604
            jump xach_s41

        '"Hmm… Interesujące. Dziękuję, Zachariaszu."' if xachLogic.r1375_condition():
            # a111 # r1375
            jump xach_dispose


# s25 # say605
label xach_s25: # from 24.0 26.0
    nr '"To jeden z cieni, którego nigdy nie rozgryzłem. Może ty mi powiesz, śmiałku?"'

    menu:
        '"Sam tego nie wiem. Mam jeszcze kilka innych pytań."':
            # a112 # r606
            jump xach_s7

        '"Może będzie lepiej, jeśli to sprawdzę. Żegnaj, Zachariaszu."' if xachLogic.r607_condition():
            # a113 # r607
            jump xach_s41

        '"Może będzie lepiej, jeśli to sprawdzę. Żegnaj, Zachariaszu."' if xachLogic.r1374_condition():
            # a114 # r1374
            jump xach_dispose


# s26 # say608
label xach_s26: # from 19.1 23.1 27.1
    nr '"Ta ognista dzierlatka-która-chciała-być-żołnierzem przysięgała, że pójdzie za tobą do Baator i z powrotem, i klnę się na Wszelkie Moce, zrobiła to! Za nic miała mnie, czy githa. Szalała za tobą. Po mojemu, musiała być pomylona. Nie wiem, co dziewki dostrzegały w twojej poznaczonej bliznami facjacie, ale było w tobie coś takiego, że wszystka krew gotowała im się w żyłach. Pochodziła z bogatej rodziny z Dzielnicy Urzędników, a ty potrzebowałeś czegoś od niej i ostatecznie stanęło na tym, że ruszyła z tobą."'

    menu:
        '"Czego takiego potrzebowałem od niej?"' if xachLogic.r609_condition():
            # a115 # r609
            jump xach_s25

        '"Chciałbym usłyszeć coś o moich towarzyszach…"':
            # a116 # r610
            jump xach_s27

        '"Mam jeszcze kilka pytań…"':
            # a117 # r614
            jump xach_s7

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."' if xachLogic.r611_condition():
            # a118 # r611
            jump xach_s41

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."' if xachLogic.r1373_condition():
            # a119 # r1373
            jump xach_dispose


# s27 # say612
label xach_s27: # from 24.1 26.1 28.0 29.0 33.1 49.0
    nr '"Dobra, o kim?"'

    menu:
        '"O tym githcie."':
            # a120 # r613
            jump xach_s24

        '"O „płaczliwej córce adwokata“."':
            # a121 # r615
            jump xach_s26

        '"O latającej czaszce."':
            # a122 # r616
            jump xach_s28

        '"Ty… Ty byłeś ślepym łucznikiem?"':
            # a123 # r617
            jump xach_s49

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a124 # r618
            jump xach_s7

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."' if xachLogic.r619_condition():
            # a125 # r619
            jump xach_s41

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."' if xachLogic.r1372_condition():
            # a126 # r1372
            jump xach_dispose


# s28 # say620
label xach_s28: # from 23.2 27.2
    nr '"Ta czaszka o plugawym języku zawsze szukała porządnego guza! Zawsze rezonowała i zawsze natrząsała się z mojego położenia!"'

    menu:
        '"Chciałbym usłyszeć coś o moich towarzyszach…"':
            # a127 # r622
            jump xach_s27

        '"Mam jeszcze kilka pytań…"':
            # a128 # r623
            jump xach_s7

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."' if xachLogic.r624_condition():
            # a129 # r624
            jump xach_s41

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."' if xachLogic.r1371_condition():
            # a130 # r1371
            jump xach_dispose


# s29 # say625
label xach_s29: # from 23.4
    nr '"Chodzi ci o tę ohydną księgę o stronnicach z twojej własnej skóry, których było więcej niż lat w moim przeklętym życiu? Jeśliś ją naprawdę zgubił, moje powinszowania! Zawsze w niej coś zapisywałeś, pamiętam. Cuchnęło od jak od zarazy. Wydawało się, że ciągle obawiałeś się, że ktoś przyjdzie i ci ją weźmie. Pisywałeś w mnie tak długo, aż ci palce mdlały i nieraz zastanawiałem się, cóż to za dzieło swojego życia spisujesz. Czasem siadałeś do pisania i nie wstawałeś przez kilka dni. Nienawidziłem tej piekielnej książki. Byłeś od niej uzależniony, ale nie był to miły nałóg. Ostatnim razem, kiedy ją widziałem, była w twoich rękach, śmiałku. Jeżeli nie masz jej przy sobie, nie mam zielonego pojęcia, gdzie może się znajdować w wieloświecie."'

    menu:
        '"Chciałbym usłyszeć coś o moich towarzyszach…"':
            # a131 # r626
            jump xach_s27

        '"Mam jeszcze kilka pytań…"':
            # a132 # r627
            jump xach_s7

        '"Dzięki za wszystko, co mi powiedziałeś. Żegnaj, Zachariaszu."' if xachLogic.r628_condition():
            # a133 # r628
            jump xach_s41

        '"Dzięki za wszystko, co mi powiedziałeś. Żegnaj, Zachariaszu."' if xachLogic.r1370_condition():
            # a134 # r1370
            jump xach_dispose


# s30 # say629
label xach_s30: # from 2.1 2.2 3.0 3.1
    nr '"Głos brzmi zaiste znajomo… Ale jeżeli jesteś tym, o kim teraz myślę, powiedz…" Zombie milknie na pewną chwilę. "Powiedz, kim jestem?"'

    menu:
        '"Zachariasz?"' if xachLogic.r631_condition():
            # a135 # r631
            jump xach_s4

        '"Nie znam twojego imienia. Mogę powrócić tutaj, kiedy je poznam. Póki co, żegnaj."' if xachLogic.r632_condition():
            # a136 # r632
            jump xach_dispose


# s31 # say630
label xach_s31: # from 2.3 3.2
    nr '"Ja…" Zombie milknie na chwilę. "Moje imię. Opuściło mnie. Nie mogę sobie przypomnieć, kim jestem."'

    menu:
        '"Zachariasz?"' if xachLogic.r634_condition():
            # a137 # r634
            jump xach_s4

        '"Nie znam twojego imienia. Może powrócę tutaj, kiedy je poznam. Póki co, żegnaj."' if xachLogic.r635_condition():
            # a138 # r635
            jump xach_dispose

        '"Żegnaj."' if xachLogic.r636_condition():
            # a139 # r636
            jump xach_dispose


# s32 # say642
label xach_s32: # from 19.0
    nr '"Nam wszystkim coś zostawiłeś, kiedy odszedłeś, śmiałku… Zostawiłeś Deionarrze płacz po stracie kochanka, Dak„konowi żal po utracie mistrza, a czaszce rozpacz po rozstaniu z przyjacielem. A mnie? Wbiłeś coś we mnie, bardzo głęboko, tak, że nigdy nie wyszło na wierzch za mojego życia. Ta rzecz, ciśnięta w głąb moich trzewi jak kawał zimnego ołowiu, utoczyła wiele mojej krwi."'

    menu:
        '"Co to takiego?"':
            # a140 # r645
            $ xachLogic.r645_action()
            jump xach_s33

        '"Mam jeszcze kilka pytań…"':
            # a141 # r646
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r648_condition():
            # a142 # r648
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1369_condition():
            # a143 # r1369
            jump xach_dispose


# s33 # say643
label xach_s33: # from 32.0
    nr '"Och… Tego nie wiem. Ale to zmieniło mnie na pewien sposób. Zmieniło moje wnętrze. Chociaż, kiedy mi to zrobiłeś, i tak byłem już bliski śmierci, dlatego niespecjalnie mnie to zainteresowało."'

    menu:
        '"Czy mogę to odzyskać?"':
            # a144 # r649
            jump xach_s34

        '"Chciałbym usłyszeć coś o moich towarzyszach…"':
            # a145 # r650
            jump xach_s27

        '"Mam jeszcze kilka pytań…"':
            # a146 # r651
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r652_condition():
            # a147 # r652
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1368_condition():
            # a148 # r1368
            jump xach_dispose


# s34 # say644
label xach_s34: # from 7.0 33.0
    nr '"Tkwi bardzo głęboko, ale nie mam pojęcia gdzie. Bez pomocy skalpela albo noża i moich wskazówek, nigdy go nie wydobędziesz. Masz skalpel albo nóż?"'

    menu:
        '"Tak."' if xachLogic.r647_condition():
            # a149 # r647
            jump xach_s36

        '"Nie. Ale powinienem móc przynajmniej rozedrzeć szwy."' if xachLogic.r653_condition():
            # a150 # r653
            jump xach_s36


# s35 # say654
label xach_s35: # -
    nr '"Wobec tego powróć tutaj, kiedy będziesz miał czym mnie rozpruć i wtedy pomyślimy o wydostaniu z mojego wnętrza tego drobiazgu."'

    menu:
        '"Mam jeszcze kilka pytań…"':
            # a151 # r655
            jump xach_s7

        '"Poszukam jakiegoś noża. Żegnaj, Zachariaszu."':
            # a152 # r656
            jump xach_dispose


# s36 # say657
label xach_s36: # from 34.0 34.1
    nr '"Zatem otwórz mnie na trzy cale od mostka i ostrożnie pomacaj, tak, aby to wyczuć."'

    menu:
        'Zrób to.':
            # a153 # r658
            jump xach_s37

        '"Mniejsza o to, Zachariaszu… Chciałbym za to zadać ci kilka pytań…"':
            # a154 # r659
            jump xach_s7

        '"Teraz nie mogę. Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r660_condition():
            # a155 # r660
            jump xach_s41

        '"Teraz nie mogę. Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1367_condition():
            # a156 # r1367
            jump xach_dispose


# s37 # say661
label xach_s37: # from 36.0
    nr '"Trochę bardziej na lewo… trochę na lewo…" Natrafiasz na jakiś obiekt.'

    menu:
        'Wyciągnij to.':
            # a157 # r663
            $ xachLogic.r663_action()
            jump xach_s38


# s38 # say662
label xach_s38: # from 37.0
    nr 'Wyciągasz na wierzch wątrobę zombie. "Na oczy Pani Bólu! Wybacz, śmiałku… Wydawało mi się, że Grabarze wywlekli ze mnie wszystkie narządy. Spróbuj jeszcze raz. Może tym razem trochę bardziej na prawo."'

    menu:
        'Spróbuj jeszcze raz.':
            # a158 # r664
            jump xach_s39


# s39 # say665
label xach_s39: # from 38.0
    nr '"Dobra… Teraz troszeczkę na prawo i z powrotem… bardzo niedużo." Znowu na coś natrafiasz. "Wydaje mi się, że to jest to. Wyciągaj."'

    menu:
        'Wyciągnij to.':
            # a159 # r666
            $ xachLogic.r666_action()
            jump xach_s40


# s40 # say667
label xach_s40: # from 39.0
    nr 'Trzymasz w ręku pociemniały obiekt wielkości pięści, który sprawia wrażenie znacznie cięższego niż być powinien. "Tak to właśnie to. W porządku. Och. Większe niż przypuszczałem. Czy to jest… Co to właściwie jest? Wygląda jak… serce."'

    menu:
        '"Tak. Tak mi się wydaje. Dzięki, Zachariaszu. Mam jeszcze kilka innych pytań."':
            # a160 # r668
            jump xach_s7

        '"Na to wygląda. Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r669_condition():
            # a161 # r669
            jump xach_s41

        '"Na to wygląda. Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1366_condition():
            # a162 # r1366
            jump xach_dispose


# s41 # say670
label xach_s41: # from 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
    nr '"Zanim odejdziesz, chciałbym, abyś oddał mi niewielką przysługę, śmiałku."'

    menu:
        '"Co to takiego?"':
            # a163 # r672
            $ xachLogic.r672_action()
            jump xach_s42

        '"Mam dość rozmaitych sprawunków i przysług… Muszę już iść. Żegnaj, Zachariaszu."':
            # a164 # r671
            $ xachLogic.r671_action()
            jump xach_s45


# s42 # say673
label xach_s42: # from 41.0
    nr 'Jego głos schodzi do szeptu, jakby zombie wstydził się czegoś. "Zrobiłem w życiu parę błędów, zaś pośród najgorszych z nich było zapisanie mojego ciała Grabarzom. Gdybym nie był wtedy tak bliski dna, nigdy bym tego nie uczynił. Żałuję tego gorąco, i mam nadzieję, że jesteś w stanie na to poradzić."'

    menu:
        '"Jak?"':
            # a165 # r675
            jump xach_s43

        '"Mam dość rozmaitych sprawunków i przysług… Muszę już iść. Żegnaj, Zachariaszu."':
            # a166 # r676
            jump xach_s45


# s43 # say677
label xach_s43: # from 42.0
    nr '"Z tego, co mi się wydaje, moje ciało będzie trwało jeszcze długo, a każdy taki dzień jest dla nie do zniesienia. Nie mógłbyś śmiałku wypruć mi bebechów jeszcze raz? W imię dawnej komitywy? Perspektywa spędzenia długich lat w tej zatęchłej Kostnicy pośród tych trupich pysków naprawdę nie jest dla mnie miła. Nie dałbyś rady wsadzić mnie z powrotem do księgi umarłych? Tam przecież moje miejsce."'

    menu:
        '"Jeżeli taka twoja wola…"':
            # a167 # r679
            $ xachLogic.r679_action()
            jump xach_s44

        '"Nie mogę cię zabić, Zachariaszu. Ponownie. Żegnaj."':
            # a168 # r680
            jump xach_s45


# s44 # say678
label xach_s44: # from 43.0
    nr 'Przebijasz go, a Zachariasz przewraca się na posadzkę z ciężkim stukotem. Z wnętrza ciała daje się słyszeć słaby świst, kiedy jego pierś unosi się jeszcze w ostatnim skurczu, a potem, w akompaniamencie ostatnich szmerów, zombie cichnie raz na zawsze.'

    menu:
        '"Spoczywaj w pokoju, Zachariaszu."':
            # a169 # r681
            $ xachLogic.r681_action()
            jump xach_dispose


# s45 # say682
label xach_s45: # from 41.1 42.1 43.1
    nr '"Jeśli tak, mniejsza o to. Podejrzewam, że już ci się na wiele nie przydam."'

    menu:
        'Odejdź.':
            # a170 # r684
            jump xach_dispose


# s46 # say683
label xach_s46: # from 5.0
    nr '"Cóż, śmiałku. Trudno poddawać twoją kondycję w wątpliwość. Ale jak to się dzieje, że możesz ze mną rozmawiać? Twój głos jest ostry i jasny, jak nóż…"'

    menu:
        '"Co tutaj robisz?"':
            # a171 # r689
            jump xach_s47

        '"Mam kilka pytań…"':
            # a172 # r690
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r691_condition():
            # a173 # r691
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1365_condition():
            # a174 # r1365
            jump xach_dispose


# s47 # say692
label xach_s47: # from 4.1 5.1 46.0
    nr '"Utkwiłem w najbardziej ponurym z miejsc na Sferach. Wiele dałbym, żeby przebyć Granicę Wieczności i znaleźć dla swojej duszy gniazdko na którejś ze Sfer, ale duża część mojej duszy została rozproszona. A teraz znalazłem się tutaj."'

    menu:
        '"Jak to jest być zombie?"':
            # a175 # r693
            jump xach_s48

        '"Mam kilka pytań…"':
            # a176 # r695
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r696_condition():
            # a177 # r696
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."' if xachLogic.r1364_condition():
            # a178 # r1364
            jump xach_dispose


# s48 # say694
label xach_s48: # from 47.0
    nr '"To uczciwa robota… Szwy na ustach Zachariasza puszczają, a jego wargi wykrzywiają się w grymasie, który mógłby uchodzić za uśmiech. "Mało mnie to obchodzi.""'

    menu:
        '"Mam jeszcze kilka pytań…"':
            # a179 # r697
            jump xach_s7

        '"Zatem żegnaj, Zachariaszu."' if xachLogic.r698_condition():
            # a180 # r698
            $ xachLogic.r698_action()
            jump xach_s41

        '"Zatem żegnaj, Zachariaszu."' if xachLogic.r633_condition():
            # a181 # r633
            jump xach_dispose


# s49 # say63625
label xach_s49: # from 23.3 27.3
    nr '"To byłem ja. Naprawdę zapomniałeś? Ludzie potrafią widzieć nie tylko dzięki oczom, śmiałku… Jednym wychodzi to lepiej, innym gorzej. Ja zaś potrafiłem usłyszeć serca moich wrogów. *Twoich* wrogów. I moje strzały uciszały je niechybnie. Ech, to były czasy…"'

    menu:
        '"Chciałbym usłyszeć coś o moich towarzyszach…"':
            # a182 # r63626
            jump xach_s27

        '"Mam jeszcze kilka pytań…"':
            # a183 # r63627
            jump xach_s7

        '"Hmm… Interesujące. Dziękuję, Zachariaszu."' if xachLogic.r63628_condition():
            # a184 # r63628
            jump xach_s41

        '"Hmm… Interesujące. Dziękuję, Zachariaszu."' if xachLogic.r63629_condition():
            # a185 # r63629
            jump xach_dispose
