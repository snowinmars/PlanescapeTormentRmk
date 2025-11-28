init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    nr 'Człapiący niezdarnie nieumarły ogarnia cię nieobecnym spojrzeniem. Spostrzegasz, że na jego czole wyryto numer "821", zaś jego usta starannie zaszyto. Bije od niego lekki odór formaliny.{#vaxis_s0_1}'

    menu:
        '"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"{#vaxis_s0_r454}' if vaxisLogic.r454_condition():
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        '"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"{#vaxis_s0_r455}' if vaxisLogic.r455_condition():
            # a1 # r455
            jump vaxis_s5

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#vaxis_s0_r456}' if vaxisLogic.r456_condition():
            # a2 # r456
            jump vaxis_s5

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#vaxis_s0_r457}' if vaxisLogic.r457_condition():
            # a3 # r457
            jump vaxis_s1

        '"Miło było z tobą pogadać. Żegnaj."{#vaxis_s0_r458}':
            # a4 # r458
            jump vaxis_s5

        'Zostaw truposza w spokoju.{#vaxis_s0_r459}':
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    nr 'Ku twojemu zdziwieniu, twoje umiejętności wydają się być bezużyteczne w odniesieniu do tego truposza.{#vaxis_s1_1}'

    menu:
        'Dziabnij truposza w oko.{#vaxis_s1_r461}':
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'Zostaw truposza w spokoju.{#vaxis_s1_r462}':
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    nr 'Kiedy zadajesz mu cios w oko, żywy truposz wydaje stłumiony skowyt i zmartwiałymi rękami próbuje nakryć twarz. Mamrocze pod nosem coś, co z bardzo dużą dozą prawdopodobieństwa możesz uznać za przekleństwa pod twoim adresem.{#vaxis_s2_1}'

    menu:
        '"Ty nie jesteś zombie! Kim jesteś?"{#vaxis_s2_r464}':
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        '"Dlaczego chodzisz przebrany za zombie?"{#vaxis_s2_r465}':
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        'Odejdź. Jak najszybciej.{#vaxis_s2_r466}':
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    nr 'Kiedy odwracasz się, aby odejść, zombie poczyna coś mamrotać… Wygląda na to, że próbuje coś powiedzieć, ale jest to niejako kłopotliwe, biorąc pod uwagę, że truposz ma zasznurowane usta. "Ktyyy tyyy? Czyygyy chcyysz?"{#vaxis_s3_1}'

    menu:
        '"Szukam stąd wyjścia. Możesz mi pomóc?"{#vaxis_s3_r468}' if vaxisLogic.r468_condition():
            # a11 # r468
            jump vaxis_s7

        '"Kim jesteś?"{#vaxis_s3_r469}':
            # a12 # r469
            jump vaxis_s7

        '"Powiesz mi, kim jesteś, albo zaraz zawołam straże."{#vaxis_s3_r470}':
            # a13 # r470
            jump vaxis_s7

        'Kłamstwo: "Bo… szukałem ciebie."{#vaxis_s3_r472}' if vaxisLogic.r472_condition():
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."{#vaxis_s3_r473}':
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        '"Wybacz, że ci zawracałem głowę… Kimkolwiek jesteś, żegnaj."{#vaxis_s3_r474}':
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    nr 'Kiedy odwracasz się, aby odejść, zombie wydobywa ze swojego gardła głuchy warkot. "Nic nie myyyw o mnie. Nic nie myyw. Nic nie myyw Graabom." Przykłada palce do zasznurowanych ust. "Szaaa!". Potem przeciąga palcem po twojej szyi. "Bo jaak powiesz, wypaaatroszę cię we śnie. Zrozyymiano?"{#vaxis_s4_1}'

    menu:
        '"Czy to miała być pogróżka? Jeśli tak… bądź gotowy na śmierć."{#vaxis_s4_r475}':
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        'Kłamstwo: "Ani przez chwilę nie przeszła mi przez głowę myśl, żeby powiedzieć o tobie Grabarzom."{#vaxis_s4_r476}':
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'Prawda: "Obiecuję, że nie nic o tobie nie powiem Grabarzom."{#vaxis_s4_r477}':
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        '"Nieważne. Ja mam swoje sprawy, a ty swoje."{#vaxis_s4_r478}':
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    nr 'Kiedy zwracasz się do truposza, ten sprawia wrażenie zdziwionego. "Ech? Cooo?"{#vaxis_s5_1}'

    menu:
        '"Ty nie jesteś zombie! Kim jesteś?"{#vaxis_s5_r480}':
            # a21 # r480
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        '"Dlaczego chodzisz przebrany za zombie?"{#vaxis_s5_r481}':
            # a22 # r481
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'Odejdź. Jak najszybciej.{#vaxis_s5_r482}':
            # a23 # r482
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    nr 'Pomimo zasznurowanych warg, zombie próbuje wydobyć z siebie odpowiedź. Jego twarz wykręca się w przedziwnym, na poły lękliwym, na poły gniewnym grymasie. "Ktoo tyyy? Czyygo chcyysz?"{#vaxis_s6_1}'

    menu:
        '"Szukam stąd wyjścia. Możesz mi pomóc?"{#vaxis_s6_r484}' if vaxisLogic.r484_condition():
            # a24 # r484
            jump vaxis_s7

        '"Kim jesteś?"{#vaxis_s6_r485}':
            # a25 # r485
            jump vaxis_s7

        '"Powiesz mi, kim jesteś, albo zaraz zawołam straże."{#vaxis_s6_r486}':
            # a26 # r486
            jump vaxis_s7

        'Kłamstwo: "Bo… szukałem ciebie."{#vaxis_s6_r487}' if vaxisLogic.r487_condition():
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."{#vaxis_s6_r488}':
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        '"Wybacz, że ci zawracałem głowę… Kimkolwiek jesteś, żegnaj."{#vaxis_s6_r489}':
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    nr 'Wydaje się, że twoje słowa nie dotarły do uszu zombie. Mierzy cię spojrzeniem przez kilka chwil, potem zaś marszczy brwi. "Czego tuu szuukasz?" Jego oczy zwężają się podejrzliwie. "Szpiegyyjesz Grabów?"{#vaxis_s7_1}'

    menu:
        '"Nie. Próbuję stąd uciec."{#vaxis_s7_r491}' if vaxisLogic.r491_condition():
            # a30 # r491
            jump vaxis_s12

        '"Nie jestem szpiegiem. Trafiłem tu przez przypadek. Czy możesz mi pomóc wydostać się stąd?"{#vaxis_s7_r492}' if vaxisLogic.r492_condition():
            # a31 # r492
            jump vaxis_s31

        'Kłamstwo: "Tak, szpieguję… Grabów."{#vaxis_s7_r493}' if vaxisLogic.r493_condition():
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'Kłamstwo: "Tak, szpieguję… Grabów."{#vaxis_s7_r494}' if vaxisLogic.r494_condition():
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        '"Może byś tak powiedział mi co tutaj robisz? Czy wolisz poczekać na strażników?"{#vaxis_s7_r495}' if vaxisLogic.r495_condition():
            # a34 # r495
            jump vaxis_s21

        '"Może byś tak powiedział mi co tutaj robisz? Czy wolisz poczekać na strażników?"{#vaxis_s7_r496}' if vaxisLogic.r496_condition():
            # a35 # r496
            jump vaxis_s17

        '"Słuchaj to ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."{#vaxis_s7_r1306}' if vaxisLogic.r1306_condition():
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        '"Słuchaj to ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."{#vaxis_s7_r1348}' if vaxisLogic.r1348_condition():
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        '"Muszę już iść. Żegnaj."{#vaxis_s7_r1349}':
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    nr 'Truposz spogląda na ciebie z rosnącą uwagą. "Ty szpieg? Ktyyra koommmórka?"{#vaxis_s8_1}'

    menu:
        '"Słucham?"{#vaxis_s8_r4671}':
            # a39 # r4671
            jump vaxis_s10

        '"Komórka?"{#vaxis_s8_r1352}':
            # a40 # r1352
            jump vaxis_s10

        'Kłamstwo: "Tak… Szukałem cię. Cieszę, się, że cię wreszcie znalazłem."{#vaxis_s8_r1359}' if vaxisLogic.r1359_condition():
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'Kłamstwo: "Tak… Ale nie mogę mówić o tym zbyt dużo w tym momencie, jeśli wiesz, co mam na myśli. A na czym polega twoja misja?"{#vaxis_s8_r1360}' if vaxisLogic.r1360_condition():
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'Kłamstwo: "Tak… Ale nie mogę mówić o tym zbyt dużo w tym momencie. Co tutaj robisz?"{#vaxis_s8_r1361}' if vaxisLogic.r1361_condition():
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        '"Eee… nie mam teraz czasu na rozmowy… Może następnym razem."{#vaxis_s8_r1362}':
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    nr 'Truposz spogląda na ciebie z rosnącą uwagą. "Ty szpieg? Ktyyra koommmórka?"{#vaxis_s9_1}'

    menu:
        '"Słucham?"{#vaxis_s9_r4359}':
            # a45 # r4359
            jump morte_s85  # EXTERN

        '"Komórka?"{#vaxis_s9_r4360}':
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    nr 'Truposz marszczy brwi a potem syka. "Ty nie szpieg!". Zombie wykonuje teraz dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. "Odyyyjdź! Odyyyjdź!"{#vaxis_s10_1}'

    menu:
        '"Najpierw powiesz mi, co tutaj robisz albo zawołam straże."{#vaxis_s10_r4362}' if vaxisLogic.r4362_condition():
            # a47 # r4362
            jump vaxis_s21

        '"Najpierw powiesz mi, co tutaj robisz albo zawołam straże."{#vaxis_s10_r4363}' if vaxisLogic.r4363_condition():
            # a48 # r4363
            jump vaxis_s17

        '"Albo odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."{#vaxis_s10_r4364}' if vaxisLogic.r4364_condition():
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        '"Albo odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."{#vaxis_s10_r4365}' if vaxisLogic.r4365_condition():
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        '"No już dobrze, dobrze… Odchodzę."{#vaxis_s10_r4367}':
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    nr 'Zombie kiwa głową na twe słowa i odnosisz wrażenie, że połaskotałeś nieznacznie jego dumę, uczucie jak widać nieobce nawet żywym trupom.{#vaxis_s11_1}'

    menu:
        '"Czy możesz pomóc mi w ucieczce?"{#vaxis_s11_r4368}' if vaxisLogic.r4368_condition():
            # a52 # r4368
            jump vaxis_s12

        '"W takim razie, co tutaj robisz?"{#vaxis_s11_r4369}':
            # a53 # r4369
            jump vaxis_s28

        'Kłamstwo: "A więc jesteś szpiegiem Anarchistów? No cóż, ja też szpieguję Grabów… Ale w tym momencie nie mogę zbyt dużo o tym mówić, jeśli wiesz, co mam na myśli. A na czym polega twoja misja?"{#vaxis_s11_r4370}' if vaxisLogic.r4370_condition():
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'Kłamstwo: "A więc jesteś szpiegiem Anarchistów? No cóż, ja też szpieguję Grabów… Ale w tym momencie nie mogę zbyt dużo o tym mówić. A co tutaj robisz?"{#vaxis_s11_r4371}' if vaxisLogic.r4371_condition():
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        '"Eee… nie mam teraz czasu na rozmowy… Może następnym razem."{#vaxis_s11_r4372}':
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    nr 'Zombie sprawia wrażenie zainteresowanego twoim położeniem. "Masz kłyypyyty? A jakie?"{#vaxis_s12_1}'

    menu:
        '"Obudziłem się na jednej z płyt na wyższym poziomie."{#vaxis_s12_r4374}':
            # a57 # r4374
            jump vaxis_s13

        '"Wpadłem tutaj w pułapkę. Czy możesz mi pomóc?"{#vaxis_s12_r4375}':
            # a58 # r4375
            jump vaxis_s31

        '"Może powiem ci o tym następnym razem."{#vaxis_s12_r4376}':
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    nr 'Zombie patrzy na ciebie jak na zdrowo stukniętego. "Tyy wariaat?"{#vaxis_s13_1}'

    menu:
        '"Tak, ja wyyriat. Wielki wyyriat."{#vaxis_s13_r4378}':
            # a60 # r4378
            jump vaxis_s14

        '"„Wyyriat“? A cóż to takiego?"{#vaxis_s13_r4379}' if vaxisLogic.r4379_condition():
            # a61 # r4379
            jump vaxis_s16

        '"„Wyyriat“? A cóż to takiego?"{#vaxis_s13_r4380}' if vaxisLogic.r4380_condition():
            # a62 # r4380
            jump morte_s87  # EXTERN

        '"Wiem, że to co powiem może zabrzmieć niewiarygodnie, ale to szczera prawda: Powstałem z martwych na jednej z płyt na wyższym poziomie."{#vaxis_s13_r4381}':
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        '"Nie… Właściwie, to wpadłem tutaj w pułapkę. Czy możesz pomóc mi wydostać się stąd?"{#vaxis_s13_r4382}':
            # a64 # r4382
            jump vaxis_s31

        '"Zapomnij o naszej rozmowie. Teraz już czas na mnie."{#vaxis_s13_r4383}':
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    nr 'Spogląda na ciebie przez chwilę, potem syczy, następnie zaś zaczyna wykonywać dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. "Tyy wariaat! Odyyyjdź, odyyyjdź ode mniee!"{#vaxis_s14_1}'

    menu:
        '"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."{#vaxis_s14_r4385}' if vaxisLogic.r4385_condition():
            # a66 # r4385
            jump vaxis_s21

        '"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."{#vaxis_s14_r4386}' if vaxisLogic.r4386_condition():
            # a67 # r4386
            jump vaxis_s17

        '"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."{#vaxis_s14_r4387}' if vaxisLogic.r4387_condition():
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        '"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."{#vaxis_s14_r4388}' if vaxisLogic.r4388_condition():
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        '"Dobrze już, dobrze… żegnaj."{#vaxis_s14_r4389}':
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    nr 'Fałszywy zombie spogląda na was obu bardzo podejrzliwie.{#vaxis_s15_1}'

    menu:
        '"To prawda – obudziłem się na katafalku."{#vaxis_s15_r4391}':
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        '"Och, wybacz. Właściwie to wpadłem tutaj w pułapkę. Czy możesz pomóc znaleźć wyjście?"{#vaxis_s15_r4392}':
            # a72 # r4392
            jump vaxis_s31

        '"Mniejsza o to. Czas już na mnie."{#vaxis_s15_r4393}':
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    nr 'Spogląda na ciebie przez chwilę, potem syczy, następnie zaś zaczyna wykonywać dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. "Pomyyleeniec! Idioota! Odyyyjdź, odyyyjdź ode mniee, trypie! Preecz!"{#vaxis_s16_1}'

    menu:
        '"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."{#vaxis_s16_r4395}' if vaxisLogic.r4395_condition():
            # a74 # r4395
            jump vaxis_s21

        '"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."{#vaxis_s16_r4396}' if vaxisLogic.r4396_condition():
            # a75 # r4396
            jump vaxis_s17

        '"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."{#vaxis_s16_r4397}' if vaxisLogic.r4397_condition():
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        '"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."{#vaxis_s16_r4398}' if vaxisLogic.r4398_condition():
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        '"No już dobrze, dobrze… Odchodzę."{#vaxis_s16_r4399}':
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    nr 'Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy cię badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "Ty mi wyyjywiłeś syykryyet, to i ja ci powiem syykryyet. Ja mam tutaj swoich przyyjyyciół w ukryciu, a ty nikogo. Nie powinieneś tutaj byyć. Graby zabiją cię. Ja uciyyknę."{#vaxis_s17_1}'

    menu:
        '"Jeżeli cię ZABIJĘ, to nigdzie nie uciekniesz. A teraz zacznij odpowiadać na moje pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."{#vaxis_s17_r4401}' if vaxisLogic.r4401_condition():
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        '"Jeżeli cię ZABIJĘ, to nigdzie nie uciekniesz. A teraz zacznij odpowiadać na moje pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."{#vaxis_s17_r4402}' if vaxisLogic.r4402_condition():
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        '"Zatem idź do diabła. Odchodzę."{#vaxis_s17_r4403}':
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    nr 'Oczy truposza zwężają się, gdy syczy na ciebie wściekle. "Próbujesz mnie wpyykyywać do księgi umarłych? Myym tutaj ukrytych przyjaciół, a ty nikyygo. Dotknij mnie, a moi kumple zabiją cię."{#vaxis_s18_1}'

    menu:
        '"Zaryzykuję. Przygotuj się na śmierć."{#vaxis_s18_r4405}':
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie… *zombie*."{#vaxis_s18_r4406}':
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    nr 'Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy twoją postać badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "TY próbujesz wpakować MNIE do księgi umarłych? Myym tutaj ukrytych przyjaciół, a ty nikyygo. Dotknij mnie, a moi kumple zabiją cię."{#vaxis_s19_1}'

    menu:
        '"Zaryzykuję. Przygotuj się na śmierć."{#vaxis_s19_r4408}':
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_dispose

        '"A co będzie, jeżeli zdecyduję się poinformować strażników o tobie i twoim gustownym przebraniu?"{#vaxis_s19_r4409}' if vaxisLogic.r4409_condition():
            # a85 # r4409
            jump vaxis_s21

        '"A co będzie, jeżeli zdecyduję się poinformować strażników o tobie i twoim gustownym przebraniu?"{#vaxis_s19_r4410}' if vaxisLogic.r4410_condition():
            # a86 # r4410
            jump vaxis_s20

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie… *zombie*."{#vaxis_s19_r4411}':
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    nr 'Oczy truposza zwężają się i syczy: "Ty mi wyjawiłeś syykyyet, to i ja ci powiem syykryyet. Ja mam tutaj swoich przyjaciół w ukryciu, a ty nikogo. Nie powinieneś tutaj być. Graby zabiją cię. Ja ucieknę."{#vaxis_s20_1}'

    menu:
        '"Właśnie zaprzepaściłeś swoją ostatnią szansę, truposzu. Przygotuj się na śmierć."{#vaxis_s20_r4413}':
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj, żeby ci się tutaj krzywda nie stała, panie *zombie.*"{#vaxis_s20_r4414}':
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    nr 'Zombie musiał coś dostrzec w twoim spojrzeniu, bo jego mina szybko zrzedłą. "Nie-Nie-Nie! Nie wyyłyyj strażników!" Wygląda na mocno podenerwowanego. "Ja szpieguję Gryybów. Jeśli co podpatrzę, zaraz donoszę. Nic poza tym."{#vaxis_s21_1}'

    menu:
        '"Szpiegujesz? Niby z czyjego polecenia?"{#vaxis_s21_r4416}':
            # a90 # r4416
            jump vaxis_s23

        '"I co takiego podpatrzyłeś u Grabarzy? Co oni robią?"{#vaxis_s21_r4417}':
            # a91 # r4417
            jump vaxis_s29

        '"Mam jeszcze kilka pytań…"{#vaxis_s21_r4418}':
            # a92 # r4418
            jump vaxis_s43

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów, *zombie*."{#vaxis_s21_r4419}':
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    nr '"Nie-nie-nie Nie krzywdź mnie!" Chyba podziałał tu na zombie fakt, że jesteś od niego cięższy o te kilka kilogramów masy mięśniowej. Mina zombie zrzedła zupełnie. "Nie krzywdź mnie! Ja szpieguję Grabów. Jeśli co podpatrzę, zaraz donoszę. Nic poza tym."{#vaxis_s22_1}'

    menu:
        '"Szpiegujesz? Niby z czyjego polecenia?"{#vaxis_s22_r4421}':
            # a94 # r4421
            jump vaxis_s23

        '"I co takiego podpatrzyłeś u Grabarzy? Co oni robią?"{#vaxis_s22_r4422}':
            # a95 # r4422
            jump vaxis_s29

        '"Mam jeszcze kilka pytań…"{#vaxis_s22_r4423}':
            # a96 # r4423
            jump vaxis_s43

        '"To już wszystko, co chciałem wiedzieć. A teraz zejdź z mojej drogi, *zombie*."{#vaxis_s22_r4424}':
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    nr 'Zombie milknie i zapada długa cisza, wypełniona jego namacalnym lękiem. Nie wydaje się, aby w tym momencie zombie miał cokolwiek więcej do dodania.{#vaxis_s23_1}'

    menu:
        '"No, gadaj. Dlaczego obserwujesz to miejsce?"{#vaxis_s23_r4426}' if vaxisLogic.r4426_condition():
            # a98 # r4426
            jump vaxis_s70

        '"No, gadaj. Dlaczego obserwujesz to miejsce?"{#vaxis_s23_r4427}' if vaxisLogic.r4427_condition():
            # a99 # r4427
            jump morte_s89  # EXTERN

        '"Zaoszczędzisz sobie naprawdę bardzo dużo boleści, jeżeli zaraz powiesz mi z czyjego polecenia tutaj szpiegujesz."{#vaxis_s23_r4428}' if vaxisLogic.r4428_condition():
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        '"Zaoszczędzisz sobie naprawdę bardzo dużo boleści, jeżeli zaraz powiesz mi z czyjego polecenia tutaj szpiegujesz."{#vaxis_s23_r4429}' if vaxisLogic.r4429_condition():
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        '"Nieważne. Co takiego podpatrzyłeś u Grabarzy? Co oni robią?"{#vaxis_s23_r4430}':
            # a102 # r4430
            jump vaxis_s29

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s23_r4431}':
            # a103 # r4431
            jump vaxis_s43

        '"Zatem zapomnijmy o tym. Żegnaj, *zombie*."{#vaxis_s23_r4432}':
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    nr '"Szuuukałeeś mnie? Dlaaaczyygo?" Zombie patrzy na ciebie przez zmrużone powieki. "Maaasz dlyyy mmnie wiaadyyymyyść?"{#vaxis_s24_1}'

    menu:
        'Kłamstwo: "Tak, mam dla ciebie wiadomość."{#vaxis_s24_r4434}':
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        '"Wiadomość? Od kogo?"{#vaxis_s24_r4435}':
            # a106 # r4435
            jump vaxis_s27

        '"Nie, nie mam żadnej wiadomości."{#vaxis_s24_r4436}':
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    nr 'Zanosi się gniewnym sykiem "Więc czego chcesz, trypie?"{#vaxis_s25_1}'

    menu:
        '"Szukam stąd wyjścia. Możesz mi pomóc?"{#vaxis_s25_r4438}' if vaxisLogic.r4438_condition():
            # a108 # r4438
            jump vaxis_s31

        '"Potrzebuję paru informacji…"{#vaxis_s25_r4439}':
            # a109 # r4439
            jump vaxis_s43

        '"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."{#vaxis_s25_r4440}' if vaxisLogic.r4440_condition():
            # a110 # r4440
            jump vaxis_s21

        '"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."{#vaxis_s25_r4441}' if vaxisLogic.r4441_condition():
            # a111 # r4441
            jump vaxis_s17

        '"Albo zrobisz to, co chcę czyli odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."{#vaxis_s25_r4442}' if vaxisLogic.r4442_condition():
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        '"Albo zrobisz to, co chcę czyli odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."{#vaxis_s25_r4443}' if vaxisLogic.r4443_condition():
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        '"Wybacz, że ci zawracałem głowę… Kimkolwiek jesteś, żegnaj."{#vaxis_s25_r4444}':
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    nr '"Jaką wiadomość?"{#vaxis_s26_1}'

    menu:
        '"Masz mi powiedzieć o swojej misji."{#vaxis_s26_r4446}' if vaxisLogic.r4446_condition():
            # a115 # r4446
            jump vaxis_s28

        'Kłamstwo: "Mam dla ciebie nowe rozkazy."{#vaxis_s26_r4447}' if vaxisLogic.r4447_condition():
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'Kłamstwo: "Mam dla ciebie nowe rozkazy."{#vaxis_s26_r4448}' if vaxisLogic.r4448_condition():
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        '"Wybacz, ale nie mam żadnej wiadomości."{#vaxis_s26_r4449}':
            # a118 # r4449
            jump vaxis_s27

        '"Mniejsza z tym. Wybacz, że ci zawracałem głowę. Żegnaj."{#vaxis_s26_r4450}':
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    nr 'Jego oczy zwężają się wściekle "Nie jesteś posłańcem. Kim jesteś?"{#vaxis_s27_1}'

    menu:
        '"Szukam stąd wyjścia. Możesz mi pomóc?"{#vaxis_s27_r4452}' if vaxisLogic.r4452_condition():
            # a120 # r4452
            jump vaxis_s31

        '"Potrzebuję paru informacji…"{#vaxis_s27_r4453}':
            # a121 # r4453
            jump vaxis_s43

        '"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."{#vaxis_s27_r4454}' if vaxisLogic.r4454_condition():
            # a122 # r4454
            jump vaxis_s21

        '"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."{#vaxis_s27_r4455}' if vaxisLogic.r4455_condition():
            # a123 # r4455
            jump vaxis_s17

        '"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."{#vaxis_s27_r4456}' if vaxisLogic.r4456_condition():
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."{#vaxis_s27_r4457}' if vaxisLogic.r4457_condition():
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        '"Wybacz, że ci zawracałem głowę… Kimkolwiek jesteś, żegnaj."{#vaxis_s27_r4458}':
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    nr '"Szpieeegyyję Gryybów. Jeśli cyy podpatrzę, zaraz donoszę. Nic poza tym."{#vaxis_s28_1}'

    menu:
        '"I co takiego podpatrzyłeś u Grabarzy? Co oni robią?"{#vaxis_s28_r4460}':
            # a127 # r4460
            jump vaxis_s29

        '"Rozumiem. Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s28_r4461}':
            # a128 # r4461
            jump vaxis_s43

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#vaxis_s28_r4462}':
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    nr '"Nic! Onyy nic niee ryybią! Niczeeego nie szukyyją! To martwi, martwi, martwi luudzie. Gryyby nic nie robią." Oczy truposza tchną szczerością. "Ale całyy czyys czyywam."{#vaxis_s29_1}'

    menu:
        '"Rozumiem. Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s29_r4464}':
            # a130 # r4464
            jump vaxis_s43

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#vaxis_s29_r4465}':
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    nr 'Jego oczy zwężają się, jakby próbował przeniknąć twoje słowa. "Jakie rozkazy?"{#vaxis_s30_1}'

    menu:
        '"Opowiedz mi o swojej misji."{#vaxis_s30_r4467}':
            # a132 # r4467
            jump vaxis_s28

        '"Szukam drogi ucieczki, którą mógłbym przebyć niepostrzeżenie."{#vaxis_s30_r4468}':
            # a133 # r4468
            jump vaxis_s49

        '"Przybyłem tutaj, aby cię zluzować. Przekaż mi wszystkie informacje, które zgromadziłeś, wszystkie swoje rzeczy, a potem odejdź."{#vaxis_s30_r4469}' if vaxisLogic.r4469_condition():
            # a134 # r4469
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        '"Jestem tu, żeby nieść ci pomóc w jakikolwiek sposób."{#vaxis_s30_r4470}':
            # a135 # r4470
            jump vaxis_s35

        '"Twoje rozkazy na razie poczekają. Wrócę tu."{#vaxis_s30_r4471}':
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    nr 'Milknie na chwilę, a potem kiwa głową, jakby w zrozumieniu: "Dlaczego miyyłbym ci pomyygać?"{#vaxis_s31_1}'

    menu:
        '"Ponieważ potrzebujesz pomocy."{#vaxis_s31_r4473}':
            # a137 # r4473
            jump vaxis_s32

        '"Może moglibyśmy się dogadać. Czego oczekujesz w zamian?"{#vaxis_s31_r4474}' if vaxisLogic.r4474_condition():
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        '"Ponieważ jeśli mi pomożesz, pozwolę, abyś pozostał nierozpoznany."{#vaxis_s31_r4475}' if vaxisLogic.r4475_condition():
            # a139 # r4475
            jump vaxis_s33

        '"Ponieważ jeśli mi pomożesz, pozwolę, abyś pozostał nierozpoznany."{#vaxis_s31_r4476}' if vaxisLogic.r4476_condition():
            # a140 # r4476
            jump vaxis_s34

        '"Po prostu wyglądasz mi bardziej na kogoś, kto raczej udaje trupa niż na kogoś, kto jest trupem w rzeczywistości. Czy to wystarczające wytłumaczenie?"{#vaxis_s31_r4477}' if vaxisLogic.r4477_condition():
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        '"Po prostu wyglądasz mi bardziej na kogoś, kto raczej udaje trupa niż na kogoś, kto jest trupem w rzeczywistości. Czy to wystarczające wytłumaczenie?"{#vaxis_s31_r4478}' if vaxisLogic.r4478_condition():
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        '"Zapomnij o tym, że się spotkaliśmy. Teraz już czas na mnie. Żegnaj."{#vaxis_s31_r4479}':
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    nr 'Zombie uśmiecha się półgębkiem. "Każdy czegoś potrzyybuje, ale nikt niczego nie daje. Dasz mi coś, może ci pyymyygę."{#vaxis_s32_1}'

    menu:
        '"Więc czego potrzebujesz?"{#vaxis_s32_r4481}':
            # a144 # r4481
            jump vaxis_s35

        '"A może byś tak powiedział mi co tutaj robisz? Czy może wolisz poczekać na strażników, których zaraz wezwę."{#vaxis_s32_r4482}' if vaxisLogic.r4482_condition():
            # a145 # r4482
            jump vaxis_s33

        '"A może byś tak powiedział mi co tutaj robisz? Czy może wolisz poczekać na strażników, których zaraz wezwę."{#vaxis_s32_r4483}' if vaxisLogic.r4483_condition():
            # a146 # r4483
            jump vaxis_s34

        '"Wyglądasz na kogoś, kto woli cieszyć życiem, niż przeciwstawiać się mi i szybko życie stracić. Więc teraz… pytam po raz ostatni: Jak można wydostać się z tego miejsca?"{#vaxis_s32_r4484}' if vaxisLogic.r4484_condition():
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        '"Wyglądasz na kogoś, kto woli cieszyć życiem, niż przeciwstawiać się mi i szybko życie stracić. Więc teraz… pytam po raz ostatni: Jak można wydostać się z tego miejsca?"{#vaxis_s32_r4485}' if vaxisLogic.r4485_condition():
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        '"Nie interesuje mnie to. Żegnaj."{#vaxis_s32_r4486}':
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    nr 'Mierzy cię badawczym wzrokiem od stóp do głów, jakby rozważał czy mógł dać ci radę, ogląda twoje blizny, a potem podejmuje decyzję. "Hm… Mógłbyyś próbyywać ucieeczki przez portyyle."{#vaxis_s33_1}'

    menu:
        '"Portale?"{#vaxis_s33_r4672}':
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    nr 'Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy cię badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "Ty mi wyjawyyłeś syykryyet, to i ja ci powiem syykryyet. Ja mam tutaj swyyich przyjaciół w ukryyciu, a ty nikyygo. Nie powinieneś tyytaj być. Graby zabyyją cię. Ja uciyyknę."{#vaxis_s34_1}'

    menu:
        '"Jeżeli cię zabiję, nie uciekniesz nigdzie. A teraz zacznij mówić, albo sprawię, że nie będziesz się już musiał już przebierać, żeby wyglądać na truposza."{#vaxis_s34_r4489}' if vaxisLogic.r4489_condition():
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        '"Jeżeli cię zabiję, nie uciekniesz nigdzie. A teraz zacznij mówić, albo sprawię, że nie będziesz się już musiał już przebierać, żeby wyglądać na truposza."{#vaxis_s34_r4490}' if vaxisLogic.r4490_condition():
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        '"Zatem idź do diabła. Odchodzę."{#vaxis_s34_r4492}':
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    nr '"Uch… Muszę znyyleźć dla mnie klyycz. Potrzyybuję żelyyznego klucza od byylsyymowni."{#vaxis_s35_1}'

    menu:
        '"Mówisz o tym kluczu?"{#vaxis_s35_r4494}' if vaxisLogic.r4494_condition():
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        '"No dobra. Gdzie jest ten klucz?"{#vaxis_s35_r4495}':
            # a155 # r4495
            jump vaxis_s36

        '"Nie mam czasu na to wszystko. Albo pomożesz mi stąd uciec, albo zawołam straże."{#vaxis_s35_r4496}' if vaxisLogic.r4496_condition():
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        '"Nie mam czasu na to wszystko. Albo pomożesz mi stąd uciec, albo zawołam straże."{#vaxis_s35_r4497}' if vaxisLogic.r4497_condition():
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        '"Nie mam zamiaru niczego ci przynosić. Albo pomożesz mi stąd uciec, albo skręcę ci kark. Mówię poważnie."{#vaxis_s35_r4498}' if vaxisLogic.r4498_condition():
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        '"Nie mam zamiaru niczego ci przynosić. Albo pomożesz mi stąd uciec, albo skręcę ci kark. Mówię poważnie."{#vaxis_s35_r4499}' if vaxisLogic.r4499_condition():
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        '"Nie, dziękuję. Może innym razem."{#vaxis_s35_r4500}':
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    nr '"Ma go kobiyyta od Grabów." Wymownie pokazuje swoje oczy. "Tyyka z żółtymi oczyymi…" Teraz zombie wykonuje swoimi dłońmi gesty, które przywodzą ci na pamięć pracę nożyc ogrodniczych "Ma noże na palcach."{#vaxis_s36_1}'

    menu:
        '"Tak, już się spotkaliśmy wcześniej. A oto i klucz."{#vaxis_s36_r4502}' if vaxisLogic.r4502_condition():
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        '"Kobieta Grabarz… O żółtych oczach i nożach zamiast palców? Już ją spotkałem w balsamowni. Poczekaj. Zaraz przyjdę z kluczem."{#vaxis_s36_r64520}' if vaxisLogic.r64520_condition():
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        '"Kobieta od Grabarzy… o żółtych oczach i ostrzach na palcach? Zatem dobrze, wrócę tu z tym kluczem."{#vaxis_s36_r4503}' if vaxisLogic.r4503_condition():
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        '"Z twojego opisu wnoszę, że ta Grabarka to bardzo atrakcyjna niewiasta. Jesteś pewien, że nie chcesz, abym obu was przedstawił?"{#vaxis_s36_r4504}':
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    nr 'Truposz mruga powiekami. Chyba cię nie zrozumiał.{#vaxis_s37_1}'

    menu:
        '"Ach, to tylko żart. Zawsze wszystko bierzesz na poważnie? No nic, idę poszukać tego klucza."{#vaxis_s37_r4506}' if vaxisLogic.r4506_condition():
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        '"Ach, to tylko żart. Zawsze wszystko bierzesz na poważnie? No nic, idę poszukać tego klucza."{#vaxis_s37_r66150}' if vaxisLogic.r66150_condition():
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    nr 'Zombie patrzy na ciebie przez zmrużone ślepia. "Jak cię złyypią, nie mów im nic yy mnie, bo wypatryyyyszę cię we śnie."{#vaxis_s38_1}'

    menu:
        '"Znajdę ten przeklęty klucz… A ty lepiej głęboko zastanów cię nad swoimi pogróżkami, zrozumiano?"{#vaxis_s38_r4508}' if vaxisLogic.r4508_condition():
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        '"Wrócę tu."{#vaxis_s38_r4509}' if vaxisLogic.r4509_condition():
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        '"Znajdę ten przeklęty klucz… A ty lepiej głęboko zastanów cię nad swoimi pogróżkami, zrozumiano?"{#vaxis_s38_r4510}' if vaxisLogic.r4510_condition():
            # a169 # r4510
            jump vaxis_dispose

        '"Wrócę tu."{#vaxis_s38_r4511}' if vaxisLogic.r4511_condition():
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    nr '"Myje przybranie dybre… Ja tyż mam blizny. Mam na sybie dużo płynu balsymujyncego. Ja dybrze udaję zombie." Chichocze za zasznurowanymi wargami, a potem klepie się po głowie "Graby bardzo głuu-pie."{#vaxis_s39_1}'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    nr '"Poczyykam tu na ciyybie. Znajdź klyycz." Zombie posyła ci uśmiech, od którego widoku może się zrobić niedobrze. "Pyytyym ci pyymyygę."{#vaxis_s40_1}'

    menu:
        '"Jeżeli go znajdę, to go tutaj przyniosę."{#vaxis_s40_r4515}':
            # a171 # r4515
            jump vaxis_dispose

        '"W takim razie zapomnij o tym."{#vaxis_s40_r4516}':
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    nr 'Oczy zombie rozszerzają się, a potem wyciąga rękę i rozcapierza palce. "Daj mi to."{#vaxis_s41_1}'

    menu:
        '"Poczekaj na chwilę. Chciałbym o coś spytać."{#vaxis_s41_r4518}':
            # a173 # r4518
            jump vaxis_dispose

        '"Proszę."{#vaxis_s41_r4519}':
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    nr 'Oczy zombie rozszerzają się i porywa klucz z twojej dłoni. Ogląda go przez chwilę, kiwając głową. "Dobrze… Dobrze."{#vaxis_s42_1}'

    menu:
        '"Dobra… A jak mogę się stąd wydostać?"{#vaxis_s42_r4521}' if vaxisLogic.r4521_condition():
            # a175 # r4521
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        '"Dobra… Chciałbym o coś spytać…"{#vaxis_s42_r4522}' if vaxisLogic.r4522_condition():
            # a176 # r4522
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    nr '"Czyygo chcyysz?"{#vaxis_s43_1}'

    menu:
        '"Jak mogę stąd uciec?"{#vaxis_s43_r64508}' if vaxisLogic.r64508_condition():
            # a177 # r64508
            jump vaxis_s49

        '"Jak mogę stąd uciec?"{#vaxis_s43_r4524}' if vaxisLogic.r4524_condition():
            # a178 # r4524
            jump vaxis_s49

        '"Powiedz mi jeszcze raz gdzie jest ten portal?"{#vaxis_s43_r4525}' if vaxisLogic.r4525_condition():
            # a179 # r4525
            jump vaxis_s52

        '"A możesz ucharakteryzować mnie na zombie?"{#vaxis_s43_r4526}' if vaxisLogic.r4526_condition():
            # a180 # r4526
            jump vaxis_s63

        '"Możesz jeszcze raz ucharakteryzować mnie na zombie?"{#vaxis_s43_r4527}' if vaxisLogic.r4527_condition():
            # a181 # r4527
            jump vaxis_s63

        '"Co tutaj robisz?"{#vaxis_s43_r4528}' if vaxisLogic.r4528_condition():
            # a182 # r4528
            jump vaxis_s28

        '"Czy znasz kogoś o imieniu Farod?"{#vaxis_s43_r4673}' if vaxisLogic.r4673_condition():
            # a183 # r4673
            jump vaxis_s44

        '"Zgubiłem dziennik. Nie widziałeś go czasem?"{#vaxis_s43_r4530}' if vaxisLogic.r4530_condition():
            # a184 # r4530
            jump vaxis_s47

        '"Możesz opowiedzieć mi o Dhallu?"{#vaxis_s43_r4531}' if vaxisLogic.r4531_condition():
            # a185 # r4531
            jump vaxis_s53

        '"Możesz opowiedzieć mi o Deionarze?"{#vaxis_s43_r4532}' if vaxisLogic.r4532_condition():
            # a186 # r4532
            jump vaxis_s54

        '"Możesz opowiedzieć mi o Soem?"{#vaxis_s43_r4533}' if vaxisLogic.r4533_condition():
            # a187 # r4533
            jump vaxis_s55

        '"Co trzeba zrobić, żeby wyglądać tak jak ty?"{#vaxis_s43_r4534}' if vaxisLogic.r4534_condition():
            # a188 # r4534
            jump vaxis_s60

        '"Co trzeba zrobić, żeby wyglądać tak jak ty?"{#vaxis_s43_r4535}' if vaxisLogic.r4535_condition():
            # a189 # r4535
            jump vaxis_s39

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s43_r4536}':
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    nr '"Faa-rod?" Zombie mruga oczami, namyślając się przez chwilę. "Słyszałem, że mieszka gdzieś w Ulu." Potrząsa głową. "Nie wiem gdzie." Znowu mruży oczy. "Graby bardzo złe. Nie lubią Faroda."{#vaxis_s44_1}'

    menu:
        '"W Ulu?"{#vaxis_s44_r4538}':
            # a191 # r4538
            jump vaxis_s45

        '"Dlaczego Grabarze nie lubią Faroda?"{#vaxis_s44_r4539}':
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s44_r4540}':
            # a193 # r4540
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s44_r4541}':
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    nr '"Pobliskie slumsy."{#vaxis_s45_1}'

    menu:
        '"Dlaczego Grabarze nie lubią Faroda?"{#vaxis_s45_r4543}':
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s45_r4544}':
            # a196 # r4544
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s45_r4545}':
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    nr '"On jest Zbieraczem. Przywozi umarłych do Kostnicy, sprzedaje ich ciała Grabarzom. Przywozi dużo umarłych. Graby nie wiedzą, skąd bierze tyle umarłych. Chyba pakuje trepów do księgi umarłych."{#vaxis_s46_1}'

    menu:
        '"Uch… Co?"{#vaxis_s46_r4547}' if vaxisLogic.r4547_condition():
            # a198 # r4547
            jump vaxis_s48

        '"Uch… Co?"{#vaxis_s46_r4548}' if vaxisLogic.r4548_condition():
            # a199 # r4548
            jump morte_s91  # EXTERN

        '"Och. Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s46_r4549}':
            # a200 # r4549
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s46_r4550}':
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    nr '"Nie wiem. Jakiś trep cię oskórował?"{#vaxis_s47_1}'

    menu:
        '"Uch… Co?"{#vaxis_s47_r4552}' if vaxisLogic.r4552_condition():
            # a202 # r4552
            jump vaxis_s48

        '"Uch… Co?"{#vaxis_s47_r4553}' if vaxisLogic.r4553_condition():
            # a203 # r4553
            jump morte_s92  # EXTERN

        '"Och. Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s47_r4554}':
            # a204 # r4554
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s47_r4555}':
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    nr 'Zombie próbuje coś mówić, potem milknie, próbuje jeszcze raz i wzrusza ramionami. Zapewne doszedł do wniosku, że nie umie tego lepiej wyjaśnić.{#vaxis_s48_1}'

    menu:
        '"Och. Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s48_r4557}':
            # a206 # r4557
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s48_r4558}':
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    nr 'Zombie burczy. "Możeesz uuciec przyyz portalyy." Macha rękami. "Puuff."{#vaxis_s49_1}'

    menu:
        '"Portale? Jakie portale?"{#vaxis_s49_r4560}':
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    nr '"Poorrtyyle…" Zombie ogarnia ruchem rąk wszystko w pobliżu. "Porrtyyle są wszędziie."{#vaxis_s50_1}'

    menu:
        '"Możesz wskazać mi drogę do któregoś z takich portali?"{#vaxis_s50_r4564}' if vaxisLogic.r4564_condition():
            # a209 # r4564
            jump vaxis_s31

        '"Możesz wskazać mi drogę do któregoś z takich portali?"{#vaxis_s50_r64509}' if vaxisLogic.r64509_condition():
            # a210 # r64509
            jump vaxis_s51

        '"Możesz wskazać mi drogę do któregoś z takich portali?"{#vaxis_s50_r64510}' if vaxisLogic.r64510_condition():
            # a211 # r64510
            jump vaxis_s51

        '"Możesz wskazać mi drogę do któregoś z takich portali?"{#vaxis_s50_r64511}' if vaxisLogic.r64511_condition():
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    nr 'Zombie kiwa głową. "Chcesz stąd wyjść… Idź do łuku na pierwszym poziomie. Północno-zachodnia komnata. Musisz mieć przy sobie kość z palca, skrzywioną." Podnosi swój wskazujący palec do góry i malowniczo wygina go. "Jak będziesz miał ten klucz. Podejdź do łuku, wejdź do sekretnej krypty, a stamtąd możesz uciec. To tajna droga ucieczki." Kiwa głową z dużą żywością. "Możesz też tam ODPOCZĄĆ."{#vaxis_s51_1}'

    menu:
        '"Skrzywiona kość z palca? A gdzież ja będę mógł znaleźć coś takiego?"{#vaxis_s51_r64527}' if vaxisLogic.r64527_condition():
            # a213 # r64527
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        '"Mam jeszcze kilka pytań…"{#vaxis_s51_r4568}' if vaxisLogic.r4568_condition():
            # a214 # r4568
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        '"Łuk na parterze, komnata północno-zachodnia, tak? W porządku, zaraz pójdę to sprawdzić."{#vaxis_s51_r4569}' if vaxisLogic.r4569_condition():
            # a215 # r4569
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    nr '"Słuchaj! Pamiętaj!" Zombie sprawia wrażenie wkurzonego. "Łuk, na pierwszym poziomie, komnata północno-zachodnia…" Podnosi swój wskazujący palec i wygina go. "Potrzebujesz kości palca, zgiętej. Idziesz do tajnej krypty. Tam droga ucieczki. Ta można ODPOCZĄĆ."{#vaxis_s52_1}'

    menu:
        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s52_r4571}':
            # a216 # r4571
            jump vaxis_s43

        '"Łuk, na parterze, komnata północno-zachodnia, otwiera się skrzywioną kością od palca, tak? W porządku, teraz wszystko już rozumiem."{#vaxis_s52_r4572}':
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    nr '"Skryba." Zombie wzrusza ramionami. "Stary. Żółty."{#vaxis_s53_1}'

    menu:
        '"Przypuszczam, że nie ma już chyba co rozwodzić się nad tym tematem. Chciałbym natomiast spytać o coś innego…"{#vaxis_s53_r4574}':
            # a218 # r4574
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s53_r4575}':
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    nr '"Kto?" Truposz marszczy brwi. "Ona kto?"{#vaxis_s54_1}'

    menu:
        '"Zapomnij o tym. Chciałbym natomiast spytać o coś innego…"{#vaxis_s54_r4577}':
            # a220 # r4577
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s54_r4578}':
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    nr '"Przewodnik. On jest przy drzwiach wejściowych do Kostnicy. Czego od niego chcesz?"{#vaxis_s55_1}'

    menu:
        '"Co możesz o nim powiedzieć?"{#vaxis_s55_r4580}':
            # a222 # r4580
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s55_r4581}':
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    nr '"Zachowyyje się dziwnie. Nie z Gryybów. Nie z Anarchyystów, ma zmieniyyne oczyy…" Wzrusza. "Lubi szczyyyry. Dziwny on."{#vaxis_s56_1}'

    menu:
        '"Nie on jeden jest dziwny w tym miejscu. Ale chciałbym spytać o coś innego…"{#vaxis_s56_r4583}':
            # a224 # r4583
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."{#vaxis_s56_r4584}':
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    nr 'Widzisz fałszywego zombie. Przebranie tego człowieka naprawdę potrafi wprawić w zdumienie… Jego oddech jest tak stłumiony, że ledwie go zauważasz.{#vaxis_s57_1}'

    menu:
        '"Witaj."{#vaxis_s57_r4586}' if vaxisLogic.r4586_condition():
            # a226 # r4586
            jump vaxis_s58

        '"Witaj."{#vaxis_s57_r4587}' if vaxisLogic.r4587_condition():
            # a227 # r4587
            jump vaxis_s58

        '"Witaj."{#vaxis_s57_r4588}' if vaxisLogic.r4588_condition():
            # a228 # r4588
            jump vaxis_s59

        '"Witaj."{#vaxis_s57_r4589}' if vaxisLogic.r4589_condition():
            # a229 # r4589
            jump vaxis_s58

        'Zostaw go w spokoju.{#vaxis_s57_r4590}':
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    nr 'Zombie rzuca wokół szybkie spojrzenie, kontrolując, czy kogoś nie ma pobliżu, a potem obraca się do ciebie. "I co?"{#vaxis_s58_1}'

    menu:
        '"Oto i klucz, którego poszukiwałeś."{#vaxis_s58_r4592}' if vaxisLogic.r4592_condition():
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        '"Oto i klucz, którego poszukiwałeś."{#vaxis_s58_r4593}' if vaxisLogic.r4593_condition():
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        '"A gdzie jest ten klucz, o którym wspominałeś?"{#vaxis_s58_r4594}' if vaxisLogic.r4594_condition():
            # a233 # r4594
            jump vaxis_s36

        '"Mam do ciebie kilka pytań…"{#vaxis_s58_r4595}':
            # a234 # r4595
            jump vaxis_s43

        '"Nieważne."{#vaxis_s58_r4596}':
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    nr 'Zombie rzuca wokół szybkie spojrzenie, kontrolując, czy kogoś nie ma pobliżu, a potem obraca się do ciebie i wykonuje dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. Syczy "Odyyjdź stąd, Oddyjdź!"{#vaxis_s59_1}'

    menu:
        '"Nie. Najpierw chciałbym zadać kilka pytań…"{#vaxis_s59_r4598}':
            # a236 # r4598
            jump vaxis_s43

        '"W takim razie nieważne."{#vaxis_s59_r4599}' if vaxisLogic.r4599_condition():
            # a237 # r4599
            jump vaxis_s4

        '"W takim razie nieważne."{#vaxis_s59_r4600}' if vaxisLogic.r4600_condition():
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    nr '"Myje przybranie dybre… Ja tyż mam blizny. Mam na sybie dużo płynu balsymujyncego. Ja dybrze udaję zombie." Chichocze za zasznurowanymi wargami, a potem klepie się po głowie "Graby bardzo głuu-pie."{#vaxis_s60_1}'

    menu:
        '"Tak, oni nie są zbyt lotni, masz rację."{#vaxis_s60_r4602}':
            # a239 # r4602
            jump vaxis_s61

        '"A czy to nie boli?"{#vaxis_s60_r4603}':
            # a240 # r4603
            jump vaxis_s62

        '"To przebranie jest całkiem niezłe. Słuchaj… A czy nie mógłbyś i mnie ucharakteryzować na zombie?"{#vaxis_s60_r4604}' if vaxisLogic.r4604_condition():
            # a241 # r4604
            jump vaxis_s63

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s60_r4605}':
            # a242 # r4605
            jump vaxis_s43

        '"Czas już na mnie. Żegnaj."{#vaxis_s60_r4606}':
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    nr 'Zombie szybko chowa swój sarkazm do kieszeni. Kiwa głową z zapałem. "Graby bardzo głupie. Ja dobrze udaję zombie."{#vaxis_s61_1}'

    menu:
        '"A czy to nie boli?"{#vaxis_s61_r4608}':
            # a244 # r4608
            jump vaxis_s62

        '"To przebranie jest całkiem niezłe. Słuchaj… A czy nie mógłbyś i mnie ucharakteryzować na zombie?"{#vaxis_s61_r4609}' if vaxisLogic.r4609_condition():
            # a245 # r4609
            jump vaxis_s63

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s61_r4610}' if vaxisLogic.r4610_condition():
            # a246 # r4610
            jump vaxis_s64

        '"Czas już na mnie. Żegnaj."{#vaxis_s61_r4611}' if vaxisLogic.r4611_condition():
            # a247 # r4611
            jump vaxis_s64

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s61_r4612}' if vaxisLogic.r4612_condition():
            # a248 # r4612
            jump vaxis_s43

        '"Czas już na mnie. Żegnaj."{#vaxis_s61_r4613}' if vaxisLogic.r4613_condition():
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    nr 'Zombie patrzy na twoje blizny. "Spytam się o to samo. Mnie to nie boli." Uderza się po piersi. "Ja twardy."{#vaxis_s62_1}'

    menu:
        '"To przebranie jest całkiem niezłe. Słuchaj… A czy nie mógłbyś i mnie ucharakteryzować na zombie?"{#vaxis_s62_r4615}' if vaxisLogic.r4615_condition():
            # a250 # r4615
            jump vaxis_s63

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s62_r4616}' if vaxisLogic.r4616_condition():
            # a251 # r4616
            jump vaxis_s64

        '"Czas już na mnie. Żegnaj."{#vaxis_s62_r4617}' if vaxisLogic.r4617_condition():
            # a252 # r4617
            jump vaxis_s64

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s62_r4618}' if vaxisLogic.r4618_condition():
            # a253 # r4618
            jump vaxis_s43

        '"Czas już na mnie. Żegnaj."{#vaxis_s62_r4674}' if vaxisLogic.r4674_condition():
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    nr 'Zombie mierzy cię przez chwilę badawczym wzrokiem od stóp do głów, mrucząc do samego siebie, a potem kiwa głową. "Um… Potrzyyba mi słoja płynu byylsyymującego." Pokazuje na blizny na twojej piersi. "I tryychę igieł i nici."{#vaxis_s63_1}'

    menu:
        '"Proszę."{#vaxis_s63_r4620}' if vaxisLogic.r4620_condition():
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        '"Pomyślę o tym. Mam kilka innych pytań…"{#vaxis_s63_r4621}':
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        '"Nie, dzięki. Może innym razem… Żegnaj."{#vaxis_s63_r4622}':
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        '"Trochę płynu balsamującego i trochę nici? Pójdę i poszukam, może coś dla ciebie znajdę."{#vaxis_s63_r4623}':
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    nr 'Zombie mierzy cię przez chwilę badawczym wzrokiem od stóp do głów z dziwnym wyrazem twarzy. "Ty dyybry zombie. Myygę zryybić z ciebie zombie. Dyybre przebranie."{#vaxis_s64_1}'

    menu:
        '"Tak, czy siak dziękuję. Mam jeszcze kilka innych pytań…"{#vaxis_s64_r4625}':
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        '"Jasne. Możesz to zrobić?"{#vaxis_s64_r4626}':
            # a260 # r4626
            jump vaxis_s63

        '"Czemu nie? I tak cały czas czuję się, jak chodzący truposz."{#vaxis_s64_r4627}':
            # a261 # r4627
            jump vaxis_s63

        '"Nie, nie, nie. Nie trzeba. Żegnaj."{#vaxis_s64_r4628}':
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    nr 'Zombie bierze od ciebie rzeczy, i bierze się do roboty…{#vaxis_s65_1}'

    menu:
        'Próbuj stać nieruchomo.{#vaxis_s65_r4630}' if vaxisLogic.r4630_condition():
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'Próbuj stać nieruchomo.{#vaxis_s65_r4631}' if vaxisLogic.r4631_condition():
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        'Próbuj stać nieruchomo.{#vaxis_s65_r4632}' if vaxisLogic.r4632_condition():
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'Próbuj stać nieruchomo.{#vaxis_s65_r64533}' if vaxisLogic.r64533_condition():
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    nr 'Zombie hojnie umieszcza na twoim ciele płyn balsamujący, a potem zaś zgrabnie zaszywa kilka twoich blizn. Począwszy od twoich stóp, idzie w górę i zaszywa twoje blizny, a potem kończy twoją charakteryzację zaszywając ci usta."{#vaxis_s66_1}'

    menu:
        '"Mmm-hmmph-mmm… Dziu-ku-ju."{#vaxis_s66_r4634}' if vaxisLogic.r4634_condition():
            # a267 # r4634
            jump vaxis_s67

        '"Mmm-hmmph-mmm… Dziu-ku-ju."{#vaxis_s66_r4635}' if vaxisLogic.r4635_condition():
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        '"Mmm-hmmph-mmm… Dziu-ku-ju."{#vaxis_s66_r4636}' if vaxisLogic.r4636_condition():
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    nr 'Zombie unosi dłoń. "Ostryyżnie. Nie mów nic. Kiedy mówisz, szwy w twyyich bliznach pękyyją. Zombie nie mówią. Jeśli już myysisz mówić, mów powoli, ostryyżnie."  UWAGA: Weź pod uwagę, że nikt tutaj nie spodziewa się spotkać mówiącego zombie. Jeżeli będąc w przebraniu zombie zdecydujesz się na rozmowę z kimkolwiek, narazisz się dekonspirację.{#vaxis_s67_1}'

    menu:
        '"Mmph… mmm… Rozumiem."{#vaxis_s67_r4638}':
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    nr 'Zombie marszczy brwi. "Przebryynie nie utrzyymuje się dłyyygo… Płyn balsamyyyjący wysycha, szwy wypadyyyją." Wzrusza ramionami. "Przebryyynie zapewne nie trzyma się długo pyyza Kostnicą. I nie biegaj! Zaczniesz biegać, zniszczysz całe przebryyynie."  UWAGA: Wprowadzenie do twojego ekwipunku broni oraz / lub podjęcie biegu natychmiast kasuje twoje przebranie zombie. Dlatego, jeżeli znajdziesz nową broń, powstrzymaj się przed wprowadzeniem jej do twojego ekwipunku do chwili, kiedy nie będziesz już potrzebował przebrania. Jeżeli masz uruchomioną opcję Ciągłego Biegu, pamiętaj o tym, żeby ją wyłączyć, zaraz po tym, jak skończysz rozmowę z Vaxisem.{#vaxis_s68_1}'

    menu:
        'Skiń jeszcze raz głową i odejdź.{#vaxis_s68_r4640}':
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    nr 'Zombie marszczy brwi. "Wydyyjesz mi się znajyymy? Widziyyyłem cię wczyyśniej?"{#vaxis_s69_1}'

    menu:
        '"Możliwe. A gdzie mnie spotkałeś?"{#vaxis_s69_r4642}':
            # a272 # r4642
            jump vaxis_dispose

        'Ani mru-mru.{#vaxis_s69_r4643}':
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    nr 'Ku twemu zdziwieniu, zombie odwraca się od ciebie… i zaczyna bacznym wzrokiem lustrować otoczenie.{#vaxis_s70_1}'

    menu:
        '"Nie chcesz mówić, tak? Wobec tego zaraz będziesz krzyczał z bólu."{#vaxis_s70_r4645}':
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_dispose

        '"Nieważne. Co takiego podpatrzyłeś u Grabarzy? Co oni robią?"{#vaxis_s70_r4646}':
            # a275 # r4646
            jump vaxis_s29

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s70_r4647}':
            # a276 # r4647
            jump vaxis_s43

        '"Zatem zapomnijmy o tym. Żegnaj, *zombie*."{#vaxis_s70_r4648}':
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    nr 'Zombie patrzy na was obu wzrokiem pełnym obawy. Jest niemy… ale coś w jego wyglądzie mówi ci, że spostrzeżenie Mortego było słuszne.{#vaxis_s71_1}'

    menu:
        '"Anarchiści, co? To dla nich tutaj węszysz?"{#vaxis_s71_r4650}':
            # a278 # r4650
            jump vaxis_s70

        '"Zaoszczędzisz sobie naprawdę bardzo dużo boleści, jeżeli zaraz powiesz mi dlaczego Anarchiści wysyłają cię tutaj na przeszpiegi."{#vaxis_s71_r4651}':
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        '"Nieważne. Co takiego podpatrzyłeś u Grabarzy? Co oni robią?"{#vaxis_s71_r4652}':
            # a280 # r4652
            jump vaxis_s29

        '"Chciałbym cię spytać jeszcze o coś innego…"{#vaxis_s71_r4653}':
            # a281 # r4653
            jump vaxis_s43

        '"Zatem zapomnijmy o tym. Żegnaj, *zombie*."{#vaxis_s71_r4654}':
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    nr 'Zombie wygląda na rozczarowanego, ale wzrusza ramionami i zaczyna grzebać w połach swojej splamionej tuniki. "Było spyykojnie. Gryyby były spyykojne. Nic nyywego od czasu poprzyydniego raportu." Po kilku chwilach, wręcza ci parę przedmiotów "Pryyszę." Sądząc po zapachu, przedmioty te musiały być schowane tak głęboko, aby nie dostały się w cudze ręce w przypadku rewizji. "Odyyjdę niebyywem."{#vaxis_s72_1}'

    menu:
        '"Odejść? Jak?"{#vaxis_s72_r4656}' if vaxisLogic.r4656_condition():
            # a283 # r4656
            jump vaxis_s51

        '"Dobrze. Żegnaj, Vaxisie."{#vaxis_s72_r64532}' if vaxisLogic.r64532_condition():
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    nr 'Zombie mruczy: "Pyyyrtal to łuk. Parter, kyymnata półnyycno-zachyyydnia, potrzyyba ci kości palca ze szkyyyletu, żeby otwyyyrzyć pyyrtal." Kiwa głową na pożegnanie. "Powyyydzenia."{#vaxis_s73_1}'

    menu:
        '"Uch… Dobra."{#vaxis_s73_r4659}':
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    nr 'Oczy truposza zwężają się, gdy syczy na ciebie wściekle. "Próbujesz mnie wpyykyywać do księgi umyyrłych? Myym tutaj ukryytych przyjaciół, a ty nikyygo. Dotknij mnie, a myyi kumple zabiją cię."{#vaxis_s74_1}'

    menu:
        '"Właśnie zaprzepaściłeś swoją ostatnią szansę, aby ujść z życiem, truposzu. Przygotuj się na śmierć."{#vaxis_s74_r4661}':
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj, żeby ci się tutaj krzywda nie stała, panie *zombie.*"{#vaxis_s74_r4662}':
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    nr 'Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy twoją postać badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "TY próbujesz wpakować MNIE do księgi umarłych? Myym tutaj ukrytych przyjaciół, a ty nikyygo. Dotknij mnie, a moi kumple zabiją cię."{#vaxis_s75_1}'

    menu:
        '"A co będzie, jeżeli zdecyduję się poinformować strażników o twoim przebraniu?"{#vaxis_s75_r4664}' if vaxisLogic.r4664_condition():
            # a288 # r4664
            jump vaxis_s33

        '"A co będzie, jeżeli zdecyduję się poinformować strażników o twoim przebraniu?"{#vaxis_s75_r4665}' if vaxisLogic.r4665_condition():
            # a289 # r4665
            jump vaxis_s76

        '"Zaryzykuję. Przygotuj się na śmierć."{#vaxis_s75_r4666}':
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie… *zombie*."{#vaxis_s75_r4667}':
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    nr 'Oczy truposza zwężają i syczy: "Ty mi wyjawiłeś syykyyet, to i ja ci powiem syykryyet. Ja mam tutaj swoich przyjaciół w ukryciu, a ty nikogo. Nie powinieneś tutaj być. Graby zabiją cię. Ja ucieknę."{#vaxis_s76_1}'

    menu:
        '"Właśnie zaprzepaściłeś swoją ostatnią szansę, truposzu. Przygotuj się na śmierć."{#vaxis_s76_r4669}':
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie… *zombie*."{#vaxis_s76_r4670}':
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    nr 'Fałszywy zombie wzrusza ramionami. "Musi być gdzieś tutaj… Poszukaj w magazynach na wyższym poziomie. Może tam będzie."{#vaxis_s77_1}'

    menu:
        '"Dobrze. Mam jeszcze kilka innych pytań…"{#vaxis_s77_r64524}':
            # a294 # r64524
            jump vaxis_s43

        '"Dobra. Poszukam na górze skrzywionej kości z palca, a potem skieruję się na parter i zbliżę do jednego z łuków w komnacie północno-zachodniej. Zrozumiałem."{#vaxis_s77_r64525}':
            # a295 # r64525
            jump vaxis_dispose
