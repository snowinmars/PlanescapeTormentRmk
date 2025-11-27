init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.xach_logic import XachLogic
    xachLogic = XachLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DXACH.DLG
# ###


# s0 # say500
label xach_s0: # - # IF ~  True()
    nr 'Widzisz ciało mężczyzny z numerem "331" wyciętym na czole. Jego powieki i wargi są skrupulatnie zaszyte, natomiast w jego szyi tkwi pokaźna wyrwa. Fetor, jaki od niego bije, mógłby zapewne zabić kogoś o delikatniejszych nozdrzach.{#xach_s0_}'

    menu:
        '"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"{#xach_s0_r502}' if xachLogic.r502_condition():
            # a0 # r502
            $ xachLogic.r502_action()
            jump xach_s1

        '"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"{#xach_s0_r503}' if xachLogic.r503_condition():
            # a1 # r503
            jump xach_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#xach_s0_r1354}' if xachLogic.r1354_condition():
            # a2 # r1354
            jump xach_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#xach_s0_r1355}' if xachLogic.r1355_condition():
            # a3 # r1355
            jump xach_s2

        '"Miło było z tobą pogadać. Żegnaj."{#xach_s0_r1357}':
            # a4 # r1357
            jump xach_s1

        'Zostaw truposza w spokoju.{#xach_s0_r1358}':
            # a5 # r1358
            jump xach_dispose


# s1 # say501
label xach_s1: # from 0.0 0.1 0.2 0.4
    nr 'Truposz w milczeniu spogląda przed siebie przez zasznurowane powieki.{#xach_s1_}'

    menu:
        '"Zatem żegnaj."{#xach_s1_r505}':
            # a6 # r505
            jump xach_dispose


# s2 # say504
label xach_s2: # from 0.3
    nr '"Kk-kk…" Zombie niezdarnie odzyskuje głos i sprawia wrażenia silnie wystraszonego. "Kto tam? Odpowiadaj!"{#xach_s2_}'

    menu:
        '"Nie widzisz mnie?"{#xach_s2_r507}':
            # a7 # r507
            jump xach_s3

        'Spróbuj improwizacji: "To ja. Nie poznajesz mojego głosu?"{#xach_s2_r508}' if xachLogic.r508_condition():
            # a8 # r508
            jump xach_s30

        'Spróbuj improwizacji: "To ja. Nie poznajesz mojego głosu?"{#xach_s2_r63307}' if xachLogic.r63307_condition():
            # a9 # r63307
            jump xach_s30

        '"Kim jesteś?"{#xach_s2_r519}':
            # a10 # r519
            jump xach_s31

        '"Zachariasz?"{#xach_s2_r506}' if xachLogic.r506_condition():
            # a11 # r506
            jump xach_s4

        '"Dzisiaj sobie chyba nie pogadamy, truposzu. Żegnaj."{#xach_s2_r520}':
            # a12 # r520
            jump xach_dispose


# s3 # say509
label xach_s3: # from 2.0
    nr '"Ślepy jestem, tak samo po śmierci, jak i za życia… A teraz odpowiadaj, kim jesteś?"{#xach_s3_}'

    menu:
        'Spróbuj improwizacji: "To ja. Nie poznajesz mojego głosu?"{#xach_s3_r510}' if xachLogic.r510_condition():
            # a13 # r510
            jump xach_s30

        'Spróbuj improwizacji: "To ja. Nie poznajesz mojego głosu?"{#xach_s3_r63308}' if xachLogic.r63308_condition():
            # a14 # r63308
            jump xach_s30

        '"Kim jesteś?"{#xach_s3_r511}':
            # a15 # r511
            jump xach_s31

        '"Zachariasz?"{#xach_s3_r521}' if xachLogic.r521_condition():
            # a16 # r521
            jump xach_s4

        '"Dzisiaj sobie chyba nie pogadamy, truposzu. Żegnaj."{#xach_s3_r522}':
            # a17 # r522
            jump xach_dispose


# s4 # say512
label xach_s4: # from 2.4 3.3 30.0 31.0
    nr '"Co…?" Zombie wygląda na wstrząśniętego, ale jego przerażenie szybko ustępuje miejsca radosnemu zdumieniu. "Na Wzrok Pani…" Truposz sprawia wrażenie, jakby na jego niewidzących oczach rozgrywał się prawdziwy cud. "Nie jesteś *martwy*, śmiałku?"{#xach_s4_}'

    menu:
        '"Kim jesteś?"{#xach_s4_r515}':
            # a18 # r515
            jump xach_s5

        '"Co tutaj robisz?"{#xach_s4_r516}':
            # a19 # r516
            jump xach_s47

        '"Co to za miejsce?"{#xach_s4_r517}':
            # a20 # r517
            jump xach_s6

        '"Nie mogę zbyt długo rozmawiać. Czas już na mnie. Żegnaj."{#xach_s4_r518}' if xachLogic.r518_condition():
            # a21 # r518
            jump xach_s41

        '"Nie mogę zbyt długo rozmawiać. Czas już na mnie. Żegnaj."{#xach_s4_r1394}' if xachLogic.r1394_condition():
            # a22 # r1394
            jump xach_dispose


# s5 # say514
label xach_s5: # from 4.0
    nr '"Czy naprawdę tak trudno przebić się wzrokiem przez tę plugawą skorupę i ujrzeć pod nią starego Głupca Zachariasza? To przecież ja, śmiałku. Błogosławione niechaj będą Wszelkie Moce, nie sądziłem, że przyjdzie mi jeszcze kiedykolwiek cię obaczyć… Ale ty się też znacznie zmieniłeś, przynajmniej tak mówi mi mój słuch… Powiedz, czy dalej swoim zwyczajem obierasz błędne i zwodnicze szlaki?" Zachariasz świszczy przez otwór w szyi. "A może też jesteś martwy?"{#xach_s5_}'

    menu:
        '"To długa historia… Ale nie… Nie jestem martwy."{#xach_s5_r685}':
            # a23 # r685
            jump xach_s46

        '"Co tutaj robisz?"{#xach_s5_r686}':
            # a24 # r686
            jump xach_s47

        '"Co to za miejsce?"{#xach_s5_r687}':
            # a25 # r687
            jump xach_s6

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."{#xach_s5_r688}' if xachLogic.r688_condition():
            # a26 # r688
            jump xach_s41

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."{#xach_s5_r1393}' if xachLogic.r1393_condition():
            # a27 # r1393
            jump xach_dispose


# s6 # say513
label xach_s6: # from 4.2 5.2
    nr '"Kostnica, śmiałku. Czy to trudno zauważyć?"{#xach_s6_}'

    menu:
        '"Co doprowadziło cię do takiego stanu?"{#xach_s6_r523}':
            # a28 # r523
            jump xach_s8

        '"Opowiedz mi o Kostnicy."{#xach_s6_r524}' if xachLogic.r524_condition():
            # a29 # r524
            $ xachLogic.r524_action()
            jump xach_s9

        '"Opowiedz mi o moim poprzednim życiu."{#xach_s6_r525}':
            # a30 # r525
            jump xach_s16

        '"Opowiedz mi o którymś z moich dawnych towarzyszy."{#xach_s6_r526}':
            # a31 # r526
            jump xach_s23

        '"Czas już na mnie. Żegnaj."{#xach_s6_r527}' if xachLogic.r527_condition():
            # a32 # r527
            jump xach_s41

        '"Muszę już iść. Żegnaj."{#xach_s6_r1392}' if xachLogic.r1392_condition():
            # a33 # r1392
            jump xach_dispose


# s7 # say528
label xach_s7: # from 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
    nr '"Tak?"{#xach_s7_}'

    menu:
        '"Chciałby teraz wydobyć ten przedmiot, Zachariaszu…"{#xach_s7_r63484}' if xachLogic.r63484_condition():
            # a34 # r63484
            jump xach_s34

        '"Co doprowadziło cię do takiego stanu?"{#xach_s7_r637}':
            # a35 # r637
            jump xach_s8

        '"Opowiedz mi o Kostnicy."{#xach_s7_r638}':
            # a36 # r638
            jump xach_s9

        '"Opowiedz mi o moim poprzednim życiu."{#xach_s7_r639}':
            # a37 # r639
            jump xach_s16

        '"Opowiedz mi o którymś z moich dawnych towarzyszy."{#xach_s7_r640}':
            # a38 # r640
            jump xach_s23

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s7_r1391}' if xachLogic.r1391_condition():
            # a39 # r1391
            jump xach_dispose

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s7_r641}' if xachLogic.r641_condition():
            # a40 # r641
            jump xach_s41


# s8 # say529
label xach_s8: # from 6.0 7.1
    nr 'Jego głos załamuje się, jakby zombie wstydził się czegoś. "Ciężko było podążać za tobą, śmiałku, widziałem też wiele okropieństw. Po tym wszystkim zacząłem pić i stoczyłem się. A któregoś dnia, po pijanemu, zapisałem swoje ciało Grabom. Wkrótce potem Moce odwróciły się ode mnie i zmarłem."{#xach_s8_}'

    menu:
        '"Mam jeszcze kilka pytań…"{#xach_s8_r531}':
            # a41 # r531
            jump xach_s7

        '"Dość już usłyszałem. Żegnaj."{#xach_s8_r545}' if xachLogic.r545_condition():
            # a42 # r545
            jump xach_s41

        '"Dość już usłyszałem. Żegnaj."{#xach_s8_r1390}' if xachLogic.r1390_condition():
            # a43 # r1390
            jump xach_dispose


# s9 # say533
label xach_s9: # from 6.1 7.2
    nr '"Miejsce dla martwych prowadzone przez Martwych… Ale są tu pewne rzeczy, które toczą się podejrzanym torem…"{#xach_s9_}'

    menu:
        '"Na przykład co?"{#xach_s9_r534}':
            # a44 # r534
            jump xach_s10

        '"Mam do ciebie jeszcze kilka pytań…"{#xach_s9_r536}':
            # a45 # r536
            jump xach_s7

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."{#xach_s9_r537}' if xachLogic.r537_condition():
            # a46 # r537
            jump xach_s41

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."{#xach_s9_r1389}' if xachLogic.r1389_condition():
            # a47 # r1389
            jump xach_dispose


# s10 # say535
label xach_s10: # from 9.0
    nr '"Zdradzę ci ten cień. Jest tutaj zombie, który udaje, że jest zombie, ale nie jest nim w istocie. Nie ciekawi mnie przyczyna pojawienia się tu takiej postaci, ale rzecz ta sama w sobie jest bardzo dziwna."{#xach_s10_}'

    menu:
        '"Coś jeszcze?"{#xach_s10_r538}' if xachLogic.r538_condition():
            # a48 # r538
            jump xach_s11

        '"Który to zombie?"{#xach_s10_r539}':
            # a49 # r539
            jump xach_s12

        '"Interesujące. Mam jeszcze kilka pytań…"{#xach_s10_r540}':
            # a50 # r540
            jump xach_s7

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."{#xach_s10_r546}' if xachLogic.r546_condition():
            # a51 # r546
            jump xach_s41

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."{#xach_s10_r1388}' if xachLogic.r1388_condition():
            # a52 # r1388
            jump xach_dispose


# s11 # say541
label xach_s11: # from 10.0 12.0
    nr '"I jeszcze jedna rzecz. Ten stary githzerai, ten, który zajmuje salę przygotowań… Dhall. On wielokrotnie uratował cię przed piecem krematoryjnym. Twoje szczęście, że masz takiego sprzymierzeńca."{#xach_s11_}'

    menu:
        '"Co takiego Dhall zrobił, aby mnie ocalić?"{#xach_s11_r542}' if xachLogic.r542_condition():
            # a53 # r542
            jump xach_s13

        '"Wiem. Mam jeszcze kilka innych pytań."{#xach_s11_r543}':
            # a54 # r543
            jump xach_s7

        '"Nie mam już czasu na dalsze rozmowę. Żegnaj."{#xach_s11_r544}' if xachLogic.r544_condition():
            # a55 # r544
            jump xach_s41

        '"Nie mam już czasu na dalszą rozmowę. Żegnaj."{#xach_s11_r1387}' if xachLogic.r1387_condition():
            # a56 # r1387
            jump xach_dispose


# s12 # say547
label xach_s12: # from 10.1
    nr '"Nawet gdyby moje oczy pozwoliłyby mi go zobaczyć, trudno byłoby mi podać liczbę na jego czole. Mogę ci tylko rzec, jak można go odróżnić od innych, śmiałku: jego głos nie jest głosem zombie… reaguje inaczej, niż inne zombie."{#xach_s12_}'

    menu:
        '"Zauważyłeś jeszcze jakieś inne osobliwe rzeczy w Kostnicy?"{#xach_s12_r548}' if xachLogic.r548_condition():
            # a57 # r548
            jump xach_s11

        '"Hm… Interesujące. Mam jeszcze kilka innych pytań."{#xach_s12_r554}':
            # a58 # r554
            jump xach_s7

        '"Poszukam tego zombie. Żegnaj."{#xach_s12_r549}' if xachLogic.r549_condition():
            # a59 # r549
            jump xach_s41

        '"Poszukam tego zombie. Żegnaj."{#xach_s12_r1386}' if xachLogic.r1386_condition():
            # a60 # r1386
            jump xach_dispose


# s13 # say550
label xach_s13: # from 11.0
    nr '"On dbał o to, aby odwlec kremację na tyle, abyś zdążył się wcześniej obudzić. Ale nie wiem, dlaczego to czynił."{#xach_s13_}'

    menu:
        '"Interesujące. Mam jeszcze kilka pytań…"{#xach_s13_r552}':
            # a61 # r552
            jump xach_s7

        '"Muszę już iść. Żegnaj."{#xach_s13_r553}' if xachLogic.r553_condition():
            # a62 # r553
            jump xach_s41

        '"Muszę już iść. Żegnaj."{#xach_s13_r1385}' if xachLogic.r1385_condition():
            # a63 # r1385
            jump xach_dispose


# s14 # say555
label xach_s14: # -
    nr '"Uznał, że to konieczne dla tego, aby zapobiec… aby zapobiec… No właśnie nie pamiętam za bardzo o co to chodziło, ale wiem, że uznał to za konieczne."{#xach_s14_}'

    menu:
        '"Hm… To brzmi podejrzanie. Mam jeszcze kilka innych pytań."{#xach_s14_r557}':
            # a64 # r557
            jump xach_s7

        '"Ach tak. Zastanawiam się właśnie, czy to *było* konieczne. Przedyskutuję to z Dhallem… Żegnaj."{#xach_s14_r556}' if xachLogic.r556_condition():
            # a65 # r556
            jump xach_s41

        '"Ach tak. Zastanawiam się właśnie, czy to *było* konieczne. Przedyskutuję to z Dhallem… Żegnaj."{#xach_s14_r1384}' if xachLogic.r1384_condition():
            # a66 # r1384
            jump xach_dispose


# s15 # say558
label xach_s15: # -
    nr 'Jego głos załamuje się, jakby zombie wstydził się czegoś. "Ciężko było podążać za tobą, śmiałku, widziałem też wiele okropieństw. Po tym wszystkim zacząłem pić i stoczyłem się. A któregoś dnia, po pijanemu, zapisałem swoje ciało Grabom. Wkrótce potem Moce odwróciły się ode mnie i zmarłem."{#xach_s15_}'

    menu:
        '"Mam jeszcze kilka pytań…"{#xach_s15_r559}':
            # a67 # r559
            jump xach_s7

        '"Muszę już iść. Żegnaj."{#xach_s15_r560}' if xachLogic.r560_condition():
            # a68 # r560
            jump xach_s41

        '"Muszę już iść. Żegnaj."{#xach_s15_r1383}' if xachLogic.r1383_condition():
            # a69 # r1383
            jump xach_dispose


# s16 # say561
label xach_s16: # from 6.2 7.3
    nr '"Dlaczego? Zapomniałeś o swojej przeszłości?"{#xach_s16_}'

    menu:
        '"Tak, można to tak ująć."{#xach_s16_r562}':
            # a70 # r562
            jump xach_s17

        '"Nie… Chciałem tylko sprawdzić, czy jesteś tym, za kogo się podajesz."{#xach_s16_r563}':
            # a71 # r563
            jump xach_s20

        '"Nieważne. Mam jeszcze kilka pytań…"{#xach_s16_r564}':
            # a72 # r564
            jump xach_s7

        '"Muszę już iść. Żegnaj."{#xach_s16_r565}' if xachLogic.r565_condition():
            # a73 # r565
            jump xach_s41

        '"Muszę już iść. Żegnaj."{#xach_s16_r1382}' if xachLogic.r1382_condition():
            # a74 # r1382
            jump xach_dispose


# s17 # say566
label xach_s17: # from 16.0 21.0 22.0
    nr '"Cóż, byłeś dziwakiem, zawsze pełnym podejrzeń i zawsze spodziewającym się czegoś… czyjegoś przybycia. Inna sprawa, że we wszystkich swoich żywotach musiałeś namnożyć sobie wrogów. A nie było przesady w twierdzeniu, że kto z tobą zadzierał, szybko lądował w księdze umarłych."{#xach_s17_}'

    menu:
        '"Co jeszcze? Jakieś inne ciekawostki…"{#xach_s17_r569}':
            # a75 # r569
            jump xach_s18

        '"Mam jeszcze kilka pytań…"{#xach_s17_r570}':
            # a76 # r570
            jump xach_s7

        '"Czas już na mnie. Żegnaj."{#xach_s17_r571}' if xachLogic.r571_condition():
            # a77 # r571
            jump xach_s41

        '"Muszę już iść. Żegnaj."{#xach_s17_r1381}' if xachLogic.r1381_condition():
            # a78 # r1381
            jump xach_dispose


# s18 # say567
label xach_s18: # from 17.0
    nr '"Potrafiłeś być także diabelsko okrutny… Takim byłeś, kiedy skłoniłeś mnie do podpisania kontraktu i takim byłeś, kiedy porzuciłeś tę dzierlatkę na Avernusie. Spędziliśmy razem szmat czasu. Nikt z nas nie mógł się pochwalić tym, że ci się w czymś sprzeciwił, synu."{#xach_s18_}'

    menu:
        '"Ach tak… Opowiedz jeszcze coś. Nawet drobiazg z twoich wspomnień może mi pomóc."{#xach_s18_r572}':
            # a79 # r572
            jump xach_s19

        '"Nieważne. Mam jeszcze kilka pytań…"{#xach_s18_r573}':
            # a80 # r573
            jump xach_s7

        '"Czas już na mnie. Żegnaj."{#xach_s18_r574}' if xachLogic.r574_condition():
            # a81 # r574
            jump xach_s41

        '"Muszę już iść. Żegnaj."{#xach_s18_r1380}' if xachLogic.r1380_condition():
            # a82 # r1380
            jump xach_dispose


# s19 # say568
label xach_s19: # from 18.0
    nr '"Całe swoje życie traktowałeś jak jedną wielką wojnę. Wszystko było dla ciebie bitwą, którą musiałeś wygrać. A byłeś przy tym najbardziej bezlitosnym łotrem, jakiego za moich czasów świat nosił. Jeśliś na coś zawziął, żadna siła nie mogła cię zawrócić z drogi. I nikt nic dla ciebie nie znaczył. Ani Deionarra ze swoimi szlochem i narzekaniami, ani gith zawsze pełen mądrych wojennych rad, ani biedny Zachariasz, który robił co mógł, aby utrzymać się u twojego boku. Byłeś twardy i niełatwo było cię zabić, ale byliśmy wszyscy tylko ludźmi. Teraz zaś wszyscy jesteśmy stronami księgi umarłych. Niektórzy można nawet rzec stronicami wydartymi."{#xach_s19_}'

    menu:
        '"Coś jeszcze?"{#xach_s19_r63234}' if xachLogic.r63234_condition():
            # a83 # r63234
            jump xach_s32

        '"Deionarra?"{#xach_s19_r576}':
            # a84 # r576
            jump xach_s26

        '"„Gith“ Kogo masz na myśli?"{#xach_s19_r577}':
            # a85 # r577
            jump xach_s24

        '"Mam jeszcze kilka pytań…"{#xach_s19_r578}':
            # a86 # r578
            jump xach_s7

        '"Rozumiem… Muszę już iść. Żegnaj, Zachariaszu."{#xach_s19_r579}' if xachLogic.r579_condition():
            # a87 # r579
            jump xach_s41

        '"Rozumiem… Muszę już iść. Żegnaj, Zachariaszu."{#xach_s19_r1379}' if xachLogic.r1379_condition():
            # a88 # r1379
            jump xach_dispose


# s20 # say580
label xach_s20: # from 16.1
    nr '"Hm, cóż takiego mogę ci opowiedzieć? Też nie pamiętam wszystkiego. Pamiętasz, jak ruszyliśmy w tę tułaczkę po Avernusie i wpadliśmy na stado abiszai w tej dolinie pełnej muszych larw?"{#xach_s20_}'

    menu:
        'Kłamstwo: "Tak."{#xach_s20_r581}':
            # a89 # r581
            jump xach_s21

        '"Nie."{#xach_s20_r582}':
            # a90 # r582
            jump xach_s22


# s21 # say583
label xach_s21: # from 20.0
    nr '"No cóż cieszę się, że przynajmniej jeden z nas pamięta to wszystko. Bo ja, jak mi Balor miły, niczego takiego nie pamiętam. Kim jesteś, śmiałku, i co sobie obiecujesz po wspomnieniach umarlaka?"{#xach_s21_}'

    menu:
        '"Pragnę poznać samego siebie. Naprawdę zapomniałem o tym, kim jestem, Zachariaszu, a wierzę, że ty mnie znałeś. Co możesz mi opowiedzieć o moim poprzednim życiu?"{#xach_s21_r584}':
            # a91 # r584
            jump xach_s17

        '"Zapomnijmy o tym. Mam kilka pytań."{#xach_s21_r586}':
            # a92 # r586
            jump xach_dispose

        '"Niczego… Czas już na mnie. Żegnaj, Zachariaszu."{#xach_s21_r587}' if xachLogic.r587_condition():
            # a93 # r587
            jump xach_s41

        '"Niczego… Czas już na mnie. Żegnaj, Zachariaszu."{#xach_s21_r1378}' if xachLogic.r1378_condition():
            # a94 # r1378
            jump xach_dispose


# s22 # say588
label xach_s22: # from 20.1
    nr '"Hmmm. Może to całe wydarzenie potoczyło się w inny sposób? A może spróbujemy tego: Pamiętasz, jak Deionarra niemal sama wpakowała się do księgi umarłych, próbując powstrzymać cię przed wstąpieniem w mury Klątwy?"{#xach_s22_}'

    menu:
        '"Nie, naprawdę, ale to nic nie szkodzi. Wierzę ci, że mnie znałeś. Zatem, co możesz mi powiedzieć o moim poprzednim życiu?"{#xach_s22_r590}':
            # a95 # r590
            jump xach_s17

        '"Mniejsza o to… Mam jeszcze kilka innych pytań."{#xach_s22_r591}':
            # a96 # r591
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s22_r592}' if xachLogic.r592_condition():
            # a97 # r592
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s22_r1377}' if xachLogic.r1377_condition():
            # a98 # r1377
            jump xach_dispose


# s23 # say589
label xach_s23: # from 6.3 7.4
    nr '"Barwną stanowiliśmy paczkę, nie ma co… Pół-umarły człek, którym zawsze wzgardzała księga umarłych, choćby się starał ze wszelkich sił - tak brzydki, że odwracały się od niego wszelkie Moce Śmierci - płaczliwa córka adwokata, gith wyrzutek, skoczna czaszka o niewyparzonym języku i na poły skurlały ślepy łucznik."{#xach_s23_}'

    menu:
        '"Gith?"{#xach_s23_r593}':
            # a99 # r593
            jump xach_s24

        '"Płaczliwa córka adwokata?"{#xach_s23_r594}':
            # a100 # r594
            jump xach_s26

        '"Latająca czaszka?"{#xach_s23_r595}':
            # a101 # r595
            jump xach_s28

        '"Byłeś ślepym łucznikiem?"{#xach_s23_r596}':
            # a102 # r596
            jump xach_s49

        '"Czy wiesz, co się stało z moim dziennikiem?"{#xach_s23_r597}':
            # a103 # r597
            jump xach_s29

        '"Nieważne. Mam jeszcze kilka pytań…"{#xach_s23_r598}':
            # a104 # r598
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s23_r599}' if xachLogic.r599_condition():
            # a105 # r599
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s23_r1376}' if xachLogic.r1376_condition():
            # a106 # r1376
            jump xach_dispose


# s24 # say600
label xach_s24: # from 19.2 23.0 27.0
    nr '"Gith o ponurym wyglądzie… Mroczny i cichy, jak wszyscy z jego gatunku. Nic a nic nie ufałem temu githowi, jak mi bogowie mili. Widzisz, śmiałku, te wrzecionowate githy myślą tylko o dwóch rzeczach: jak uniknąć niewoli i jak zabić jak najwięcej Illithidów o łbach kałamarnic. Wszystko inne dla nich nie ma najmniejszego znaczenia, więc i ten, choć za tobą poszedłby w ogień, nie dałby za resztę z nas złamanego grosza."{#xach_s24_}'

    menu:
        '"Co było tego przyczyną?"{#xach_s24_r601}' if xachLogic.r601_condition():
            # a107 # r601
            jump xach_s25

        '"Chciałbym usłyszeć coś o moich towarzyszach…"{#xach_s24_r602}':
            # a108 # r602
            jump xach_s27

        '"Mam jeszcze kilka pytań…"{#xach_s24_r603}':
            # a109 # r603
            jump xach_s7

        '"Hmm… Interesujące. Dziękuję, Zachariaszu."{#xach_s24_r604}' if xachLogic.r604_condition():
            # a110 # r604
            jump xach_s41

        '"Hmm… Interesujące. Dziękuję, Zachariaszu."{#xach_s24_r1375}' if xachLogic.r1375_condition():
            # a111 # r1375
            jump xach_dispose


# s25 # say605
label xach_s25: # from 24.0 26.0
    nr '"To jeden z cieni, którego nigdy nie rozgryzłem. Może ty mi powiesz, śmiałku?"{#xach_s25_}'

    menu:
        '"Sam tego nie wiem. Mam jeszcze kilka innych pytań."{#xach_s25_r606}':
            # a112 # r606
            jump xach_s7

        '"Może będzie lepiej, jeśli to sprawdzę. Żegnaj, Zachariaszu."{#xach_s25_r607}' if xachLogic.r607_condition():
            # a113 # r607
            jump xach_s41

        '"Może będzie lepiej, jeśli to sprawdzę. Żegnaj, Zachariaszu."{#xach_s25_r1374}' if xachLogic.r1374_condition():
            # a114 # r1374
            jump xach_dispose


# s26 # say608
label xach_s26: # from 19.1 23.1 27.1
    nr '"Ta ognista dzierlatka-która-chciała-być-żołnierzem przysięgała, że pójdzie za tobą do Baator i z powrotem, i klnę się na Wszelkie Moce, zrobiła to! Za nic miała mnie, czy githa. Szalała za tobą. Po mojemu, musiała być pomylona. Nie wiem, co dziewki dostrzegały w twojej poznaczonej bliznami facjacie, ale było w tobie coś takiego, że wszystka krew gotowała im się w żyłach. Pochodziła z bogatej rodziny z Dzielnicy Urzędników, a ty potrzebowałeś czegoś od niej i ostatecznie stanęło na tym, że ruszyła z tobą."{#xach_s26_}'

    menu:
        '"Czego takiego potrzebowałem od niej?"{#xach_s26_r609}' if xachLogic.r609_condition():
            # a115 # r609
            jump xach_s25

        '"Chciałbym usłyszeć coś o moich towarzyszach…"{#xach_s26_r610}':
            # a116 # r610
            jump xach_s27

        '"Mam jeszcze kilka pytań…"{#xach_s26_r614}':
            # a117 # r614
            jump xach_s7

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."{#xach_s26_r611}' if xachLogic.r611_condition():
            # a118 # r611
            jump xach_s41

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."{#xach_s26_r1373}' if xachLogic.r1373_condition():
            # a119 # r1373
            jump xach_dispose


# s27 # say612
label xach_s27: # from 24.1 26.1 28.0 29.0 33.1 49.0
    nr '"Dobra, o kim?"{#xach_s27_}'

    menu:
        '"O tym githcie."{#xach_s27_r613}':
            # a120 # r613
            jump xach_s24

        '"O „płaczliwej córce adwokata“."{#xach_s27_r615}':
            # a121 # r615
            jump xach_s26

        '"O latającej czaszce."{#xach_s27_r616}':
            # a122 # r616
            jump xach_s28

        '"Ty… Ty byłeś ślepym łucznikiem?"{#xach_s27_r617}':
            # a123 # r617
            jump xach_s49

        '"Nieważne. Mam jeszcze kilka pytań…"{#xach_s27_r618}':
            # a124 # r618
            jump xach_s7

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."{#xach_s27_r619}' if xachLogic.r619_condition():
            # a125 # r619
            jump xach_s41

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."{#xach_s27_r1372}' if xachLogic.r1372_condition():
            # a126 # r1372
            jump xach_dispose


# s28 # say620
label xach_s28: # from 23.2 27.2
    nr '"Ta czaszka o plugawym języku zawsze szukała porządnego guza! Zawsze rezonowała i zawsze natrząsała się z mojego położenia!"{#xach_s28_}'

    menu:
        '"Chciałbym usłyszeć coś o moich towarzyszach…"{#xach_s28_r622}':
            # a127 # r622
            jump xach_s27

        '"Mam jeszcze kilka pytań…"{#xach_s28_r623}':
            # a128 # r623
            jump xach_s7

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."{#xach_s28_r624}' if xachLogic.r624_condition():
            # a129 # r624
            jump xach_s41

        '"Powiedziałeś mi już dość. Żegnaj, Zachariaszu."{#xach_s28_r1371}' if xachLogic.r1371_condition():
            # a130 # r1371
            jump xach_dispose


# s29 # say625
label xach_s29: # from 23.4
    nr '"Chodzi ci o tę ohydną księgę o stronnicach z twojej własnej skóry, których było więcej niż lat w moim przeklętym życiu? Jeśliś ją naprawdę zgubił, moje powinszowania! Zawsze w niej coś zapisywałeś, pamiętam. Cuchnęło od jak od zarazy. Wydawało się, że ciągle obawiałeś się, że ktoś przyjdzie i ci ją weźmie. Pisywałeś w mnie tak długo, aż ci palce mdlały i nieraz zastanawiałem się, cóż to za dzieło swojego życia spisujesz. Czasem siadałeś do pisania i nie wstawałeś przez kilka dni. Nienawidziłem tej piekielnej książki. Byłeś od niej uzależniony, ale nie był to miły nałóg. Ostatnim razem, kiedy ją widziałem, była w twoich rękach, śmiałku. Jeżeli nie masz jej przy sobie, nie mam zielonego pojęcia, gdzie może się znajdować w wieloświecie."{#xach_s29_}'

    menu:
        '"Chciałbym usłyszeć coś o moich towarzyszach…"{#xach_s29_r626}':
            # a131 # r626
            jump xach_s27

        '"Mam jeszcze kilka pytań…"{#xach_s29_r627}':
            # a132 # r627
            jump xach_s7

        '"Dzięki za wszystko, co mi powiedziałeś. Żegnaj, Zachariaszu."{#xach_s29_r628}' if xachLogic.r628_condition():
            # a133 # r628
            jump xach_s41

        '"Dzięki za wszystko, co mi powiedziałeś. Żegnaj, Zachariaszu."{#xach_s29_r1370}' if xachLogic.r1370_condition():
            # a134 # r1370
            jump xach_dispose


# s30 # say629
label xach_s30: # from 2.1 2.2 3.0 3.1
    nr '"Głos brzmi zaiste znajomo… Ale jeżeli jesteś tym, o kim teraz myślę, powiedz…" Zombie milknie na pewną chwilę. "Powiedz, kim jestem?"{#xach_s30_}'

    menu:
        '"Zachariasz?"{#xach_s30_r631}' if xachLogic.r631_condition():
            # a135 # r631
            jump xach_s4

        '"Nie znam twojego imienia. Mogę powrócić tutaj, kiedy je poznam. Póki co, żegnaj."{#xach_s30_r632}' if xachLogic.r632_condition():
            # a136 # r632
            jump xach_dispose


# s31 # say630
label xach_s31: # from 2.3 3.2
    nr '"Ja…" Zombie milknie na chwilę. "Moje imię. Opuściło mnie. Nie mogę sobie przypomnieć, kim jestem."{#xach_s31_}'

    menu:
        '"Zachariasz?"{#xach_s31_r634}' if xachLogic.r634_condition():
            # a137 # r634
            jump xach_s4

        '"Nie znam twojego imienia. Może powrócę tutaj, kiedy je poznam. Póki co, żegnaj."{#xach_s31_r635}' if xachLogic.r635_condition():
            # a138 # r635
            jump xach_dispose

        '"Żegnaj."{#xach_s31_r636}' if xachLogic.r636_condition():
            # a139 # r636
            jump xach_dispose


# s32 # say642
label xach_s32: # from 19.0
    nr '"Nam wszystkim coś zostawiłeś, kiedy odszedłeś, śmiałku… Zostawiłeś Deionarrze płacz po stracie kochanka, Dak„konowi żal po utracie mistrza, a czaszce rozpacz po rozstaniu z przyjacielem. A mnie? Wbiłeś coś we mnie, bardzo głęboko, tak, że nigdy nie wyszło na wierzch za mojego życia. Ta rzecz, ciśnięta w głąb moich trzewi jak kawał zimnego ołowiu, utoczyła wiele mojej krwi."{#xach_s32_}'

    menu:
        '"Co to takiego?"{#xach_s32_r645}':
            # a140 # r645
            $ xachLogic.r645_action()
            jump xach_s33

        '"Mam jeszcze kilka pytań…"{#xach_s32_r646}':
            # a141 # r646
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s32_r648}' if xachLogic.r648_condition():
            # a142 # r648
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s32_r1369}' if xachLogic.r1369_condition():
            # a143 # r1369
            jump xach_dispose


# s33 # say643
label xach_s33: # from 32.0
    nr '"Och… Tego nie wiem. Ale to zmieniło mnie na pewien sposób. Zmieniło moje wnętrze. Chociaż, kiedy mi to zrobiłeś, i tak byłem już bliski śmierci, dlatego niespecjalnie mnie to zainteresowało."{#xach_s33_}'

    menu:
        '"Czy mogę to odzyskać?"{#xach_s33_r649}':
            # a144 # r649
            jump xach_s34

        '"Chciałbym usłyszeć coś o moich towarzyszach…"{#xach_s33_r650}':
            # a145 # r650
            jump xach_s27

        '"Mam jeszcze kilka pytań…"{#xach_s33_r651}':
            # a146 # r651
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s33_r652}' if xachLogic.r652_condition():
            # a147 # r652
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s33_r1368}' if xachLogic.r1368_condition():
            # a148 # r1368
            jump xach_dispose


# s34 # say644
label xach_s34: # from 7.0 33.0
    nr '"Tkwi bardzo głęboko, ale nie mam pojęcia gdzie. Bez pomocy skalpela albo noża i moich wskazówek, nigdy go nie wydobędziesz. Masz skalpel albo nóż?"{#xach_s34_}'

    menu:
        '"Tak."{#xach_s34_r647}' if xachLogic.r647_condition():
            # a149 # r647
            jump xach_s36

        '"Nie. Ale powinienem móc przynajmniej rozedrzeć szwy."{#xach_s34_r653}' if xachLogic.r653_condition():
            # a150 # r653
            jump xach_s36


# s35 # say654
label xach_s35: # -
    nr '"Wobec tego powróć tutaj, kiedy będziesz miał czym mnie rozpruć i wtedy pomyślimy o wydostaniu z mojego wnętrza tego drobiazgu."{#xach_s35_}'

    menu:
        '"Mam jeszcze kilka pytań…"{#xach_s35_r655}':
            # a151 # r655
            jump xach_s7

        '"Poszukam jakiegoś noża. Żegnaj, Zachariaszu."{#xach_s35_r656}':
            # a152 # r656
            jump xach_dispose


# s36 # say657
label xach_s36: # from 34.0 34.1
    nr '"Zatem otwórz mnie na trzy cale od mostka i ostrożnie pomacaj, tak, aby to wyczuć."{#xach_s36_}'

    menu:
        'Zrób to.{#xach_s36_r658}':
            # a153 # r658
            jump xach_s37

        '"Mniejsza o to, Zachariaszu… Chciałbym za to zadać ci kilka pytań…"{#xach_s36_r659}':
            # a154 # r659
            jump xach_s7

        '"Teraz nie mogę. Muszę już iść. Żegnaj, Zachariaszu."{#xach_s36_r660}' if xachLogic.r660_condition():
            # a155 # r660
            jump xach_s41

        '"Teraz nie mogę. Muszę już iść. Żegnaj, Zachariaszu."{#xach_s36_r1367}' if xachLogic.r1367_condition():
            # a156 # r1367
            jump xach_dispose


# s37 # say661
label xach_s37: # from 36.0
    nr '"Trochę bardziej na lewo… trochę na lewo…" Natrafiasz na jakiś obiekt.{#xach_s37_}'

    menu:
        'Wyciągnij to.{#xach_s37_r663}':
            # a157 # r663
            $ xachLogic.r663_action()
            jump xach_s38


# s38 # say662
label xach_s38: # from 37.0
    nr 'Wyciągasz na wierzch wątrobę zombie. "Na oczy Pani Bólu! Wybacz, śmiałku… Wydawało mi się, że Grabarze wywlekli ze mnie wszystkie narządy. Spróbuj jeszcze raz. Może tym razem trochę bardziej na prawo."{#xach_s38_}'

    menu:
        'Spróbuj jeszcze raz.{#xach_s38_r664}':
            # a158 # r664
            jump xach_s39


# s39 # say665
label xach_s39: # from 38.0
    nr '"Dobra… Teraz troszeczkę na prawo i z powrotem… bardzo niedużo." Znowu na coś natrafiasz. "Wydaje mi się, że to jest to. Wyciągaj."{#xach_s39_}'

    menu:
        'Wyciągnij to.{#xach_s39_r666}':
            # a159 # r666
            $ xachLogic.r666_action()
            jump xach_s40


# s40 # say667
label xach_s40: # from 39.0
    nr 'Trzymasz w ręku pociemniały obiekt wielkości pięści, który sprawia wrażenie znacznie cięższego niż być powinien. "Tak to właśnie to. W porządku. Och. Większe niż przypuszczałem. Czy to jest… Co to właściwie jest? Wygląda jak… serce."{#xach_s40_}'

    menu:
        '"Tak. Tak mi się wydaje. Dzięki, Zachariaszu. Mam jeszcze kilka innych pytań."{#xach_s40_r668}':
            # a160 # r668
            jump xach_s7

        '"Na to wygląda. Muszę już iść. Żegnaj, Zachariaszu."{#xach_s40_r669}' if xachLogic.r669_condition():
            # a161 # r669
            jump xach_s41

        '"Na to wygląda. Muszę już iść. Żegnaj, Zachariaszu."{#xach_s40_r1366}' if xachLogic.r1366_condition():
            # a162 # r1366
            jump xach_dispose


# s41 # say670
label xach_s41: # from 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
    nr '"Zanim odejdziesz, chciałbym, abyś oddał mi niewielką przysługę, śmiałku."{#xach_s41_}'

    menu:
        '"Co to takiego?"{#xach_s41_r672}':
            # a163 # r672
            $ xachLogic.r672_action()
            jump xach_s42

        '"Mam dość rozmaitych sprawunków i przysług… Muszę już iść. Żegnaj, Zachariaszu."{#xach_s41_r671}':
            # a164 # r671
            $ xachLogic.r671_action()
            jump xach_s45


# s42 # say673
label xach_s42: # from 41.0
    nr 'Jego głos schodzi do szeptu, jakby zombie wstydził się czegoś. "Zrobiłem w życiu parę błędów, zaś pośród najgorszych z nich było zapisanie mojego ciała Grabarzom. Gdybym nie był wtedy tak bliski dna, nigdy bym tego nie uczynił. Żałuję tego gorąco, i mam nadzieję, że jesteś w stanie na to poradzić."{#xach_s42_}'

    menu:
        '"Jak?"{#xach_s42_r675}':
            # a165 # r675
            jump xach_s43

        '"Mam dość rozmaitych sprawunków i przysług… Muszę już iść. Żegnaj, Zachariaszu."{#xach_s42_r676}':
            # a166 # r676
            jump xach_s45


# s43 # say677
label xach_s43: # from 42.0
    nr '"Z tego, co mi się wydaje, moje ciało będzie trwało jeszcze długo, a każdy taki dzień jest dla nie do zniesienia. Nie mógłbyś śmiałku wypruć mi bebechów jeszcze raz? W imię dawnej komitywy? Perspektywa spędzenia długich lat w tej zatęchłej Kostnicy pośród tych trupich pysków naprawdę nie jest dla mnie miła. Nie dałbyś rady wsadzić mnie z powrotem do księgi umarłych? Tam przecież moje miejsce."{#xach_s43_}'

    menu:
        '"Jeżeli taka twoja wola…"{#xach_s43_r679}':
            # a167 # r679
            $ xachLogic.r679_action()
            jump xach_s44

        '"Nie mogę cię zabić, Zachariaszu. Ponownie. Żegnaj."{#xach_s43_r680}':
            # a168 # r680
            jump xach_s45


# s44 # say678
label xach_s44: # from 43.0
    nr 'Przebijasz go, a Zachariasz przewraca się na posadzkę z ciężkim stukotem. Z wnętrza ciała daje się słyszeć słaby świst, kiedy jego pierś unosi się jeszcze w ostatnim skurczu, a potem, w akompaniamencie ostatnich szmerów, zombie cichnie raz na zawsze.{#xach_s44_}'

    menu:
        '"Spoczywaj w pokoju, Zachariaszu."{#xach_s44_r681}':
            # a169 # r681
            $ xachLogic.r681_action()
            jump xach_dispose


# s45 # say682
label xach_s45: # from 41.1 42.1 43.1
    nr '"Jeśli tak, mniejsza o to. Podejrzewam, że już ci się na wiele nie przydam."{#xach_s45_}'

    menu:
        'Odejdź.{#xach_s45_r684}':
            # a170 # r684
            jump xach_dispose


# s46 # say683
label xach_s46: # from 5.0
    nr '"Cóż, śmiałku. Trudno poddawać twoją kondycję w wątpliwość. Ale jak to się dzieje, że możesz ze mną rozmawiać? Twój głos jest ostry i jasny, jak nóż…"{#xach_s46_}'

    menu:
        '"Co tutaj robisz?"{#xach_s46_r689}':
            # a171 # r689
            jump xach_s47

        '"Mam kilka pytań…"{#xach_s46_r690}':
            # a172 # r690
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s46_r691}' if xachLogic.r691_condition():
            # a173 # r691
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s46_r1365}' if xachLogic.r1365_condition():
            # a174 # r1365
            jump xach_dispose


# s47 # say692
label xach_s47: # from 4.1 5.1 46.0
    nr '"Utkwiłem w najbardziej ponurym z miejsc na Sferach. Wiele dałbym, żeby przebyć Granicę Wieczności i znaleźć dla swojej duszy gniazdko na którejś ze Sfer, ale duża część mojej duszy została rozproszona. A teraz znalazłem się tutaj."{#xach_s47_}'

    menu:
        '"Jak to jest być zombie?"{#xach_s47_r693}':
            # a175 # r693
            jump xach_s48

        '"Mam kilka pytań…"{#xach_s47_r695}':
            # a176 # r695
            jump xach_s7

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s47_r696}' if xachLogic.r696_condition():
            # a177 # r696
            jump xach_s41

        '"Muszę już iść. Żegnaj, Zachariaszu."{#xach_s47_r1364}' if xachLogic.r1364_condition():
            # a178 # r1364
            jump xach_dispose


# s48 # say694
label xach_s48: # from 47.0
    nr '"To uczciwa robota… Szwy na ustach Zachariasza puszczają, a jego wargi wykrzywiają się w grymasie, który mógłby uchodzić za uśmiech. "Mało mnie to obchodzi.""{#xach_s48_}'

    menu:
        '"Mam jeszcze kilka pytań…"{#xach_s48_r697}':
            # a179 # r697
            jump xach_s7

        '"Zatem żegnaj, Zachariaszu."{#xach_s48_r698}' if xachLogic.r698_condition():
            # a180 # r698
            $ xachLogic.r698_action()
            jump xach_s41

        '"Zatem żegnaj, Zachariaszu."{#xach_s48_r633}' if xachLogic.r633_condition():
            # a181 # r633
            jump xach_dispose


# s49 # say63625
label xach_s49: # from 23.3 27.3
    nr '"To byłem ja. Naprawdę zapomniałeś? Ludzie potrafią widzieć nie tylko dzięki oczom, śmiałku… Jednym wychodzi to lepiej, innym gorzej. Ja zaś potrafiłem usłyszeć serca moich wrogów. *Twoich* wrogów. I moje strzały uciszały je niechybnie. Ech, to były czasy…"{#xach_s49_}'

    menu:
        '"Chciałbym usłyszeć coś o moich towarzyszach…"{#xach_s49_r63626}':
            # a182 # r63626
            jump xach_s27

        '"Mam jeszcze kilka pytań…"{#xach_s49_r63627}':
            # a183 # r63627
            jump xach_s7

        '"Hmm… Interesujące. Dziękuję, Zachariaszu."{#xach_s49_r63628}' if xachLogic.r63628_condition():
            # a184 # r63628
            jump xach_s41

        '"Hmm… Interesujące. Dziękuję, Zachariaszu."{#xach_s49_r63629}' if xachLogic.r63629_condition():
            # a185 # r63629
            jump xach_dispose
