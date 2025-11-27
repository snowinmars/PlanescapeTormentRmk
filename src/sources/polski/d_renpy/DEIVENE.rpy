init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.eivene_logic import EiveneLogic
    eiveneLogic = EiveneLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DEIVENE.DLG
# ###


# s0 # say3404
label eivene_s0: # - # IF ~  Global("EiVene","GLOBAL",0)
    nr 'Widzisz młodą, drobną kobietę o bladej cerze. Zapadnięte policzki i skóra na szyi sprawiają, że wygląda jakby od dawna głodowała. Wydaje się być skupiona na rozczłonkowaniu leżącego przed nią ciała. Dźga palcami jego pierś.{#eivene_s0_}'

    menu:
        '"Witaj."{#eivene_s0_r3406}':
            # a0 # r3406
            jump eivene_s1

        'Zostaw ją w spokoju.{#eivene_s0_r3407}':
            # a1 # r3407
            jump eivene_dispose


# s1 # say3410
label eivene_s1: # from 0.0
    nr 'Kobieta nie reaguje… Wygląda na zbyt pochłoniętą leżącym przed nią ciałem. Gdy tak przyglądasz się jej pracy, nagle zwracasz uwagę na jej dłonie… zamiast palców ma szpony. Nagłymi ruchami rozcina klatkę piersiową ciała, wyciąga organy.{#eivene_s1_}'

    menu:
        '"Powiedziałem „witaj“."{#eivene_s1_r3412}' if eiveneLogic.r3412_condition():
            # a2 # r3412
            jump eivene_s2

        '"Powiedziałem „witaj“."{#eivene_s1_r3413}' if eiveneLogic.r3413_condition():
            # a3 # r3413
            jump eivene_s3

        '"Co stało się z twoimi rękami?"{#eivene_s1_r3414}' if eiveneLogic.r3414_condition():
            # a4 # r3414
            jump eivene_s2

        '"Co stało się z twoimi rękami?"{#eivene_s1_r3415}' if eiveneLogic.r3415_condition():
            # a5 # r3415
            jump eivene_s19

        'Zostaw ją w spokoju.{#eivene_s1_r3416}':
            # a6 # r3416
            jump eivene_dispose


# s2 # say3417
label eivene_s2: # from 1.0 1.2
    nr 'Kobieta nie reaguje.{#eivene_s2_}'

    menu:
        'Klepnij ją w ramię, ściągnij jej uwagę.{#eivene_s2_r3418}':
            # a7 # r3418
            $ eiveneLogic.r3418_action()
            jump eivene_s4

        'Zostaw ją w spokoju.{#eivene_s2_r3419}':
            # a8 # r3419
            jump eivene_dispose


# s3 # say3420
label eivene_s3: # from 1.1
    nr 'Kobieta nie reaguje.{#eivene_s3_}'

    jump morte_s55  # EXTERN


# s4 # say3421
label eivene_s4: # from 2.0
    nr 'Nagle kobieta podskakuje i odwraca się w waszą stronę… jej oczy są koloru zgniłej żółci, z małymi pomarańczowymi plamkami źrenic. Gdy cię dostrzega, wyraz jej twarzy zmienia się z zaskoczonego na rozdrażniony, krzywo na ciebie patrzy.{#eivene_s4_}'

    menu:
        '"Uch… witaj."{#eivene_s4_r3422}':
            # a9 # r3422
            $ eiveneLogic.r3422_action()
            jump eivene_s5


# s5 # say3423
label eivene_s5: # from 4.0
    nr 'Wygląda na to, że cię nie usłyszała. Pochyla się do przodu, patrząc przez zmrużone oczy, jakby nie mogła cię dostrzec… Cokolwiek stało się z jej oczami, musiało sprawić, że jest niemal ślepa. "Ty…" klaszcze, łącząc zakończone pazurami palce, wykonuje dziwny ruch rękami. "Znajdź NIĆ i płyn do balsamowania, przynieś TUTAJ, do Ei-Vene. Idź-idź."  Uwaga: Przydzielono ci zadanie. Zadania są wyświetlone w dzienniku, w części "Zadania". Aby zobaczyć wszystkie przydzielone ci zadania (i ich stan) wybierz po prostu w menu dziennika "Zadania".{#eivene_s5_}'

    menu:
        'Daj jej nić i płyn do balsamowania.{#eivene_s5_r3424}' if eiveneLogic.r3424_condition():
            # a10 # r3424
            $ eiveneLogic.r3424_action()
            jump eivene_s7

        '"Najpierw chciałbym zadać ci kilka pytań…"{#eivene_s5_r3425}' if eiveneLogic.r3425_condition():
            # a11 # r3425
            $ eiveneLogic.j37702_s5_r3425_action()
            jump eivene_s6

        '"Najpierw chciałbym zadać ci kilka pytań…"{#eivene_s5_r3426}' if eiveneLogic.r3426_condition():
            # a12 # r3426
            $ eiveneLogic.j37702_s5_r3426_action()
            jump eivene_s20

        '"Co stało się z twoimi rękami?"{#eivene_s5_r3427}' if eiveneLogic.r3427_condition():
            # a13 # r3427
            $ eiveneLogic.j37702_s5_r3427_action()
            jump eivene_s6

        '"Co stało się z twoimi rękami?"{#eivene_s5_r3428}' if eiveneLogic.r3428_condition():
            # a14 # r3428
            $ eiveneLogic.j37702_s5_r3428_action()
            jump eivene_s20

        'Odejdź.{#eivene_s5_r3429}':
            # a15 # r3429
            $ eiveneLogic.j37702_s5_r3429_action()
            jump eivene_dispose


# s6 # say3430
label eivene_s6: # from 5.1 5.3
    nr 'Odwraca się… nie daje po sobie poznać, że cię usłyszała. Jej słuch musi być tak samo słaby jak jej wzrok.{#eivene_s6_}'

    menu:
        'Klepnij ją w ramię, ściągnij jej uwagę.{#eivene_s6_r3431}':
            # a16 # r3431
            jump eivene_s17

        'Odejdź.{#eivene_s6_r3432}':
            # a17 # r3432
            jump eivene_dispose


# s7 # say3433
label eivene_s7: # from 5.0 17.0
    nr 'Nie marnując ani chwili, Ei-Vene szybko zabiera nić z twojej ręki, nabija na jeden ze szponów i zaczyna zszywać klatkę piersiową leżących przed nią zwłok. Następnie bierze płyn do balsamowania i zaczyna preparować ciało.{#eivene_s7_}'

    menu:
        'Poczekaj.{#eivene_s7_r3434}':
            # a18 # r3434
            jump eivene_s9

        'Odejdź.{#eivene_s7_r3435}':
            # a19 # r3435
            jump eivene_s8


# s8 # say3436
label eivene_s8: # from 7.1
    nr 'Gdy już chcesz odejść, Ei-Vene odzywa się: "Zostań. Ty - następny."{#eivene_s8_}'

    menu:
        'Poczekaj.{#eivene_s8_r3437}':
            # a20 # r3437
            jump eivene_s9

        'Odejdź. Jak najszybciej.{#eivene_s8_r3438}':
            # a21 # r3438
            jump eivene_dispose


# s9 # say3439
label eivene_s9: # from 7.0 8.0
    nr 'Kończy w ciągu kilku minut. Klaszcze szponami i obraca się w twoją stronę. Ku twojemu zdziwieniu wyciąga ręce i obejmuje szponami twoje ramiona i klatkę piersiową.{#eivene_s9_}'

    menu:
        '"Eee, nie żeby mi to nie schlebiało, ale…"{#eivene_s9_r3440}' if eiveneLogic.r3440_condition():
            # a22 # r3440
            jump eivene_s11

        '"Eee, nie żeby mi to nie schlebiało, ale…"{#eivene_s9_r3441}' if eiveneLogic.r3441_condition():
            # a23 # r3441
            jump morte_s59  # EXTERN

        'Dalej udawaj zombie.{#eivene_s9_r3442}' if eiveneLogic.r3442_condition():
            # a24 # r3442
            jump eivene_s11

        'Dalej udawaj zombie.{#eivene_s9_r3443}' if eiveneLogic.r3443_condition():
            # a25 # r3443
            jump morte_s59  # EXTERN

        'Odepchnij ją, odejdź.{#eivene_s9_r3444}':
            # a26 # r3444
            jump eivene_s10


# s10 # say3445
label eivene_s10: # from 9.4 12.1
    nr 'Wygląda na zaskoczoną, gdy ją odpychasz. "Zombi? Ty nie zombi!" Cofa się o krok i zanim zdążysz zareagować klaszcze trzy razy. W odpowiedzi w całej Kostnicy odbija się echem bicie wielkiego dzwonu.{#eivene_s10_}'

    menu:
        '"No dobrze…"{#eivene_s10_r3491}':
            # a27 # r3491
            $ eiveneLogic.r3491_action()
            jump eivene_dispose


# s11 # say3446
label eivene_s11: # from 9.0 9.2
    nr 'Gdy bada twoje ramiona i klatkę piersiową, nagle zauważasz, że chyba ogląda blizny. Cofa szpony, klaszcze nimi dwa razy, pochyla się do przodu i zaczyna studiować niektóre z tatuaży, które masz na piersiach. "Hmmf. Kto pisać na ty? Mieszkańcy Ula to zrobić? Nie mieć szacunek dla zombi. Zombi nie trzeba obrazy." Pociąga nosem i dotyka jednej z twoich blizn. "Ten być w kiepski stan, wiele blizn, bez konserwantów."{#eivene_s11_}'

    menu:
        'Poczekaj.{#eivene_s11_r3447}':
            # a28 # r3447
            jump eivene_s12


# s12 # say3448
label eivene_s12: # from 11.0
    nr 'Nagle nabija na szpon przyniesioną przez ciebie nić i z szybkością błyskawicy wbija inny w skórę obok jednej z twoich blizn. Nie czujesz nic więcej niż przy ukłuciu szpilką, ale wygląda na to, że zaraz zacznie cię zszywać.{#eivene_s12_}'

    menu:
        'Pozwól jej robić swoje.{#eivene_s12_r3449}':
            # a29 # r3449
            $ eiveneLogic.r3449_action()
            jump eivene_s13

        'Odepchnij ją, odejdź.{#eivene_s12_r3450}':
            # a30 # r3450
            jump eivene_s10


# s13 # say3451
label eivene_s13: # from 12.0
    nr 'Co ciekawe, nie czujesz żadnego bólu, gdy Ei-Vene zaczyna zszywać twe blizny.  Po skończeniu obwąchuje cię, marszczy brwi i zanurza palce w płynie do balsamowania. W ciągu kilku minut przemywa nim twoje ciało… To dziwne, ale czujesz się *lepiej*.{#eivene_s13_}'

    menu:
        'Pozwól jej robić swoje.{#eivene_s13_r3452}' if eiveneLogic.r3452_condition():
            # a31 # r3452
            jump eivene_s14

        'Pozwól jej robić swoje.{#eivene_s13_r3453}' if eiveneLogic.r3453_condition():
            # a32 # r3453
            jump morte_s60  # EXTERN


# s14 # say3454
label eivene_s14: # from 13.0
    nr 'Ei-Vene dotyka cię po raz ostatni, jeszcze raz cię obwąchuje, kiwa głową i szponami robi ruch, jakby chciała coś pokazać. "Zrobione. Idź - idź."{#eivene_s14_}'

    menu:
        '"Poczekaj chwilę." (Robisz ręką ruch jakbyś obracał klucz.) "Potrzebuję klucza, masz taki?"{#eivene_s14_r3456}' if eiveneLogic.r3456_condition():
            # a33 # r3456
            $ eiveneLogic.r3456_action()
            jump eivene_s18

        '"Poczekaj chwilę." (Robisz ręką ruch jakbyś obracał klucz.) "Potrzebuję klucza, masz taki?"{#eivene_s14_r3457}' if eiveneLogic.r3457_condition():
            # a34 # r3457
            jump eivene_s24

        'Odejdź.{#eivene_s14_r4350}':
            # a35 # r4350
            jump eivene_dispose


# s15 # say3458
label eivene_s15: # - # IF ~  Global("EiVene","GLOBAL",1)
    nr 'Widzisz Ei-Vene. Wciąż jest zajęta rozczłonkowywaniem leżących przed nią zwłok. Rytm, w jakim poruszają się jej szpony, coś ci przypomina, ale nie wiesz co.{#eivene_s15_}'

    menu:
        'Obserwuj ją, zwróć uwagę na ruchy jej dłoni.{#eivene_s15_r3459}' if eiveneLogic.r3459_condition():
            # a36 # r3459
            $ eiveneLogic.r3459_action()
            jump eivene_s16

        'Klepnij ją w ramię, ściągnij jej uwagę.{#eivene_s15_r3463}' if eiveneLogic.r3463_condition():
            # a37 # r3463
            jump eivene_s17

        'Klepnij ją w ramię, ściągnij jej uwagę.{#eivene_s15_r4351}' if eiveneLogic.r4351_condition():
            # a38 # r4351
            jump eivene_s22

        'Odejdź.{#eivene_s15_r4352}':
            # a39 # r4352
            jump eivene_dispose


# s16 # say3464
label eivene_s16: # from 15.0
    nr 'Gdy tak przyglądasz się ruchom dłoni Ei-Vene, czujesz ciarki z tyłu głowy i nagle twoja wizja wiruje, zamazuje się aż…{#eivene_s16_}'

    $ eiveneLogic.s16_action()
    jump eivene_s26


# s17 # say3468
label eivene_s17: # from 6.0 15.1 25.0 27.0
    nr 'Odwraca się, zauważa cię i marszczy brwi. "Głupie zombi." Niecierpliwie klaszcze szponami i robi ruch jakby coś zszywała. "Znajdź nić i płyn do balsamowania, przynieś tutaj, do Ei-Vene. Idź - idź."{#eivene_s17_}'

    menu:
        'Daj jej nić i płyn do balsamowania.{#eivene_s17_r3469}' if eiveneLogic.r3469_condition():
            # a40 # r3469
            $ eiveneLogic.r3469_action()
            jump eivene_s7

        '"Poczekaj chwilę." (Robisz ręką ruch jakbyś obracał klucz.) "Potrzebuję klucza, masz taki?"{#eivene_s17_r3470}' if eiveneLogic.r3470_condition():
            # a41 # r3470
            $ eiveneLogic.r3470_action()
            jump eivene_s18

        '"Poczekaj chwilę." (Robisz ręką ruch jakbyś obracał klucz.) "Potrzebuję klucza, masz taki?"{#eivene_s17_r3497}' if eiveneLogic.r3497_condition():
            # a42 # r3497
            jump eivene_s24

        'Odejdź.{#eivene_s17_r4357}':
            # a43 # r4357
            jump eivene_dispose


# s18 # say3471
label eivene_s18: # from 14.0 17.1 22.0
    nr 'Pochyla się, patrzy na ruchy twoich dłoni, pociąga nosem. Jej dłoń znika w fałdach togi, po chwili pojawia się z powrotem. Na ostrym jak brzytwa palcu wisi klucz. Strząsa go w twoją dłoń. "Przynieś z powrotem gdy skończysz. Idź - idź."{#eivene_s18_}'

    menu:
        '"Co stało się z twoimi rękami?"{#eivene_s18_r3494}' if eiveneLogic.r3494_condition():
            # a44 # r3494
            $ eiveneLogic.j38203_s18_r3494_action()
            jump eivene_s23

        '"Co stało się z twoimi rękami?"{#eivene_s18_r3495}' if eiveneLogic.r3495_condition():
            # a45 # r3495
            $ eiveneLogic.j38203_s18_r3495_action()
            jump eivene_s21

        'Odejdź.{#eivene_s18_r3496}':
            # a46 # r3496
            $ eiveneLogic.j38203_s18_r3496_action()
            jump eivene_dispose


# s19 # say3472
label eivene_s19: # from 1.3
    nr 'Kobieta nie reaguje.{#eivene_s19_}'

    $ eiveneLogic.j38205_s19_action()
    jump morte_s56  # EXTERN


# s20 # say3485
label eivene_s20: # from 5.2 5.4
    nr 'Odwraca się… nie daje po sobie poznać, że cię usłyszała.{#eivene_s20_}'

    jump morte_s57  # EXTERN


# s21 # say3486
label eivene_s21: # from 18.1
    nr 'Odwraca się… nie daje po sobie poznać, że cię usłyszała. Jej słuch musi być tak samo słaby jak jej wzrok.{#eivene_s21_}'

    $ eiveneLogic.j38205_s21_action()
    jump morte_s58  # EXTERN


# s22 # say3493
label eivene_s22: # from 15.2 25.1 27.1
    nr 'Odwraca się, zauważa cię i marszczy brwi. "Głupie zombi." Niecierpliwie klaszcze szponiastymi palcami, robi ruch jakby coś zszywała. "Ty skończony. Wszystko zszyte. Idź - idź."{#eivene_s22_}'

    menu:
        '"Poczekaj chwilę." (Robisz ręką ruch jakbyś obracał klucz.) "Potrzebuję klucza, masz taki?"{#eivene_s22_r3501}' if eiveneLogic.r3501_condition():
            # a47 # r3501
            $ eiveneLogic.r3501_action()
            jump eivene_s18

        '"Poczekaj chwilę." (Robisz ręką ruch jakbyś obracał klucz.) "Potrzebuję klucza, masz taki?"{#eivene_s22_r3502}' if eiveneLogic.r3502_condition():
            # a48 # r3502
            jump eivene_s24

        'Odejdź.{#eivene_s22_r4358}':
            # a49 # r4358
            jump eivene_dispose


# s23 # say3498
label eivene_s23: # from 18.0
    nr 'Odwraca się… nie daje po sobie poznać, że cię usłyszała. Jej słuch musi być tak samo słaby jak jej wzrok.{#eivene_s23_}'

    menu:
        'Odejdź.{#eivene_s23_r3499}':
            # a50 # r3499
            jump eivene_dispose


# s24 # say4200
label eivene_s24: # from 14.1 17.2 22.1
    nr 'Pochyla się, patrzy na ruchy twoich dłoni, pociąga nosem. Jej dłoń znika w fałdach togi, szpera tam przez chwilę i wzrusza ramionami. "Nie mieć klucz." Robi ruch, jakby chciała coś pokazać. "Idź - idź - idź".{#eivene_s24_}'

    menu:
        'Odejdź.{#eivene_s24_r4201}':
            # a51 # r4201
            jump eivene_dispose


# s25 # say4353
label eivene_s25: # -
    nr 'Przyglądasz jej się przez chwilę, a rytm jej dłoni wywołuje dwa wspomnienia. Pierwsze - gry na jakimś instrumencie strunowym, może na harfie. Drugie o kradzieży sakiewki… ku twemu zdumieniu to wspomnienie wywołuje nagłą pokusę, by dobrać się do kieszeni Ei-Vene.  Uwaga: Odzyskałeś część pamięci. Wspomnienia mogą przynieść ci dodatkowe punkty doświadczenia, umiejętności, a nawet umożliwić dalsze odzyskiwanie pamięci.{#eivene_s25_}'

    menu:
        'Klepnij ją w ramię, ściągnij jej uwagę.{#eivene_s25_r4354}' if eiveneLogic.r4354_condition():
            # a52 # r4354
            jump eivene_s17

        'Klepnij ją w ramię, ściągnij jej uwagę.{#eivene_s25_r4355}' if eiveneLogic.r4355_condition():
            # a53 # r4355
            jump eivene_s22

        'Odejdź.{#eivene_s25_r4356}':
            # a54 # r4356
            jump eivene_dispose


# s26 # say63477
label eivene_s26: # from 16.0
    nr '…stoisz przed świeżymi zwłokami, ich wargi wykrzywia stężenie pośmiertne; na głowie wydrapany został numer „42“. Zombi leży na płycie, a ty właśnie skończyłeś zszywać jego klatkę piersiową. Włożyłeś coś do środka, coś, co może okazać się przydatne, gdybyś jeszcze tędy przechodził…{#eivene_s26_}'

    menu:
        'Echo: "Pilnuj tych rzeczy i poczekaj, aż wrócę."{#eivene_s26_r63478}' if eiveneLogic.r63478_condition():
            # a55 # r63478
            $ eiveneLogic.r63478_action()
            jump eivene_s27

        'Echo: "Pilnuj tych rzeczy i poczekaj, aż wrócę."{#eivene_s26_r63479}' if eiveneLogic.r63479_condition():
            # a56 # r63479
            jump eivene_s27


# s27 # say63480
label eivene_s27: # from 26.0 26.1
    nr 'Wspomnienie głosu to dziwne puste echo w twych uszach. Krzyżujesz ramiona na piersiach i ku twemu zdumieniu zwłoki robią to samo. Po chwili jego ręce opadają z powrotem i wizja znika… do czasu, gdy jeszcze raz obserwujesz jak Ei-Vene robi ruchy jakby coś zszywała.{#eivene_s27_}'

    menu:
        'Klepnij ją w ramię, ściągnij jej uwagę.{#eivene_s27_r63482}' if eiveneLogic.r63482_condition():
            # a57 # r63482
            jump eivene_s17

        'Klepnij ją w ramię, ściągnij jej uwagę.{#eivene_s27_r63481}' if eiveneLogic.r63481_condition():
            # a58 # r63481
            jump eivene_s22

        'Odejdź.{#eivene_s27_r63483}':
            # a59 # r63483
            jump eivene_dispose
