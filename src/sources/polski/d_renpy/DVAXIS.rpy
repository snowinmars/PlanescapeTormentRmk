init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    nr 'Człapiący niezdarnie nieumarły ogarnia cię nieobecnym spojrzeniem. Spostrzegasz, że na jego czole wyryto numer "821", zaś jego usta starannie zaszyto. Bije od niego lekki odór formaliny.'

    menu:
        '"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"' if vaxisLogic.r454_condition():
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        '"Więc, cóż? Jakieś ciekawe wrażenia z podróży po okolicy?"' if vaxisLogic.r455_condition():
            # a1 # r455
            jump vaxis_s5

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if vaxisLogic.r456_condition():
            # a2 # r456
            jump vaxis_s5

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if vaxisLogic.r457_condition():
            # a3 # r457
            jump vaxis_s1

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r458
            jump vaxis_s5

        'Zostaw truposza w spokoju.':
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    nr 'Ku twojemu zdziwieniu, twoje umiejętności wydają się być bezużyteczne w odniesieniu do tego truposza.'

    menu:
        'Dziabnij truposza w oko.':
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        'Zostaw truposza w spokoju.':
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    nr 'Kiedy zadajesz mu cios w oko, żywy truposz wydaje stłumiony skowyt i zmartwiałymi rękami próbuje nakryć twarz. Mamrocze pod nosem coś, co z bardzo dużą dozą prawdopodobieństwa możesz uznać za przekleństwa pod twoim adresem.'

    menu:
        '"Ty nie jesteś zombie! Kim jesteś?"':
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        '"Dlaczego chodzisz przebrany za zombie?"':
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        'Odejdź. Jak najszybciej.':
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    nr 'Kiedy odwracasz się, aby odejść, zombie poczyna coś mamrotać… Wygląda na to, że próbuje coś powiedzieć, ale jest to niejako kłopotliwe, biorąc pod uwagę, że truposz ma zasznurowane usta. "Ktyyy tyyy? Czyygyy chcyysz?"'

    menu:
        '"Szukam stąd wyjścia. Możesz mi pomóc?"' if vaxisLogic.r468_condition():
            # a11 # r468
            jump vaxis_s7

        '"Kim jesteś?"':
            # a12 # r469
            jump vaxis_s7

        '"Powiesz mi, kim jesteś, albo zaraz zawołam straże."':
            # a13 # r470
            jump vaxis_s7

        'Kłamstwo: "Bo… szukałem ciebie."' if vaxisLogic.r472_condition():
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."':
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        '"Wybacz, że ci zawracałem głowę… Kimkolwiek jesteś, żegnaj."':
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    nr 'Kiedy odwracasz się, aby odejść, zombie wydobywa ze swojego gardła głuchy warkot. "Nic nie myyyw o mnie. Nic nie myyw. Nic nie myyw Graabom." Przykłada palce do zasznurowanych ust. "Szaaa!". Potem przeciąga palcem po twojej szyi. "Bo jaak powiesz, wypaaatroszę cię we śnie. Zrozyymiano?"'

    menu:
        '"Czy to miała być pogróżka? Jeśli tak… bądź gotowy na śmierć."':
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        'Kłamstwo: "Ani przez chwilę nie przeszła mi przez głowę myśl, żeby powiedzieć o tobie Grabarzom."':
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        'Prawda: "Obiecuję, że nie nic o tobie nie powiem Grabarzom."':
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        '"Nieważne. Ja mam swoje sprawy, a ty swoje."':
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    nr 'Kiedy zwracasz się do truposza, ten sprawia wrażenie zdziwionego. "Ech? Cooo?"'

    menu:
        '"Ty nie jesteś zombie! Kim jesteś?"':
            # a21 # r480
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        '"Dlaczego chodzisz przebrany za zombie?"':
            # a22 # r481
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        'Odejdź. Jak najszybciej.':
            # a23 # r482
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    nr 'Pomimo zasznurowanych warg, zombie próbuje wydobyć z siebie odpowiedź. Jego twarz wykręca się w przedziwnym, na poły lękliwym, na poły gniewnym grymasie. "Ktoo tyyy? Czyygo chcyysz?"'

    menu:
        '"Szukam stąd wyjścia. Możesz mi pomóc?"' if vaxisLogic.r484_condition():
            # a24 # r484
            jump vaxis_s7

        '"Kim jesteś?"':
            # a25 # r485
            jump vaxis_s7

        '"Powiesz mi, kim jesteś, albo zaraz zawołam straże."':
            # a26 # r486
            jump vaxis_s7

        'Kłamstwo: "Bo… szukałem ciebie."' if vaxisLogic.r487_condition():
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."':
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        '"Wybacz, że ci zawracałem głowę… Kimkolwiek jesteś, żegnaj."':
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    nr 'Wydaje się, że twoje słowa nie dotarły do uszu zombie. Mierzy cię spojrzeniem przez kilka chwil, potem zaś marszczy brwi. "Czego tuu szuukasz?" Jego oczy zwężają się podejrzliwie. "Szpiegyyjesz Grabów?"'

    menu:
        '"Nie. Próbuję stąd uciec."' if vaxisLogic.r491_condition():
            # a30 # r491
            jump vaxis_s12

        '"Nie jestem szpiegiem. Trafiłem tu przez przypadek. Czy możesz mi pomóc wydostać się stąd?"' if vaxisLogic.r492_condition():
            # a31 # r492
            jump vaxis_s31

        'Kłamstwo: "Tak, szpieguję… Grabów."' if vaxisLogic.r493_condition():
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        'Kłamstwo: "Tak, szpieguję… Grabów."' if vaxisLogic.r494_condition():
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        '"Może byś tak powiedział mi co tutaj robisz? Czy wolisz poczekać na strażników?"' if vaxisLogic.r495_condition():
            # a34 # r495
            jump vaxis_s21

        '"Może byś tak powiedział mi co tutaj robisz? Czy wolisz poczekać na strażników?"' if vaxisLogic.r496_condition():
            # a35 # r496
            jump vaxis_s17

        '"Słuchaj to ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."' if vaxisLogic.r1306_condition():
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        '"Słuchaj to ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."' if vaxisLogic.r1348_condition():
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        '"Muszę już iść. Żegnaj."':
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    nr 'Truposz spogląda na ciebie z rosnącą uwagą. "Ty szpieg? Ktyyra koommmórka?"'

    menu:
        '"Słucham?"':
            # a39 # r4671
            jump vaxis_s10

        '"Komórka?"':
            # a40 # r1352
            jump vaxis_s10

        'Kłamstwo: "Tak… Szukałem cię. Cieszę, się, że cię wreszcie znalazłem."' if vaxisLogic.r1359_condition():
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        'Kłamstwo: "Tak… Ale nie mogę mówić o tym zbyt dużo w tym momencie, jeśli wiesz, co mam na myśli. A na czym polega twoja misja?"' if vaxisLogic.r1360_condition():
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        'Kłamstwo: "Tak… Ale nie mogę mówić o tym zbyt dużo w tym momencie. Co tutaj robisz?"' if vaxisLogic.r1361_condition():
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        '"Eee… nie mam teraz czasu na rozmowy… Może następnym razem."':
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    nr 'Truposz spogląda na ciebie z rosnącą uwagą. "Ty szpieg? Ktyyra koommmórka?"'

    menu:
        '"Słucham?"':
            # a45 # r4359
            jump morte_s85  # EXTERN

        '"Komórka?"':
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    nr 'Truposz marszczy brwi a potem syka. "Ty nie szpieg!". Zombie wykonuje teraz dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. "Odyyyjdź! Odyyyjdź!"'

    menu:
        '"Najpierw powiesz mi, co tutaj robisz albo zawołam straże."' if vaxisLogic.r4362_condition():
            # a47 # r4362
            jump vaxis_s21

        '"Najpierw powiesz mi, co tutaj robisz albo zawołam straże."' if vaxisLogic.r4363_condition():
            # a48 # r4363
            jump vaxis_s17

        '"Albo odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."' if vaxisLogic.r4364_condition():
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        '"Albo odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."' if vaxisLogic.r4365_condition():
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        '"No już dobrze, dobrze… Odchodzę."':
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    nr 'Zombie kiwa głową na twe słowa i odnosisz wrażenie, że połaskotałeś nieznacznie jego dumę, uczucie jak widać nieobce nawet żywym trupom.'

    menu:
        '"Czy możesz pomóc mi w ucieczce?"' if vaxisLogic.r4368_condition():
            # a52 # r4368
            jump vaxis_s12

        '"W takim razie, co tutaj robisz?"':
            # a53 # r4369
            jump vaxis_s28

        'Kłamstwo: "A więc jesteś szpiegiem Anarchistów? No cóż, ja też szpieguję Grabów… Ale w tym momencie nie mogę zbyt dużo o tym mówić, jeśli wiesz, co mam na myśli. A na czym polega twoja misja?"' if vaxisLogic.r4370_condition():
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        'Kłamstwo: "A więc jesteś szpiegiem Anarchistów? No cóż, ja też szpieguję Grabów… Ale w tym momencie nie mogę zbyt dużo o tym mówić. A co tutaj robisz?"' if vaxisLogic.r4371_condition():
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        '"Eee… nie mam teraz czasu na rozmowy… Może następnym razem."':
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    nr 'Zombie sprawia wrażenie zainteresowanego twoim położeniem. "Masz kłyypyyty? A jakie?"'

    menu:
        '"Obudziłem się na jednej z płyt na wyższym poziomie."':
            # a57 # r4374
            jump vaxis_s13

        '"Wpadłem tutaj w pułapkę. Czy możesz mi pomóc?"':
            # a58 # r4375
            jump vaxis_s31

        '"Może powiem ci o tym następnym razem."':
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    nr 'Zombie patrzy na ciebie jak na zdrowo stukniętego. "Tyy wariaat?"'

    menu:
        '"Tak, ja wyyriat. Wielki wyyriat."':
            # a60 # r4378
            jump vaxis_s14

        '"„Wyyriat“? A cóż to takiego?"' if vaxisLogic.r4379_condition():
            # a61 # r4379
            jump vaxis_s16

        '"„Wyyriat“? A cóż to takiego?"' if vaxisLogic.r4380_condition():
            # a62 # r4380
            jump morte_s87  # EXTERN

        '"Wiem, że to co powiem może zabrzmieć niewiarygodnie, ale to szczera prawda: Powstałem z martwych na jednej z płyt na wyższym poziomie."':
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        '"Nie… Właściwie, to wpadłem tutaj w pułapkę. Czy możesz pomóc mi wydostać się stąd?"':
            # a64 # r4382
            jump vaxis_s31

        '"Zapomnij o naszej rozmowie. Teraz już czas na mnie."':
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    nr 'Spogląda na ciebie przez chwilę, potem syczy, następnie zaś zaczyna wykonywać dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. "Tyy wariaat! Odyyyjdź, odyyyjdź ode mniee!"'

    menu:
        '"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."' if vaxisLogic.r4385_condition():
            # a66 # r4385
            jump vaxis_s21

        '"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."' if vaxisLogic.r4386_condition():
            # a67 # r4386
            jump vaxis_s17

        '"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4387_condition():
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        '"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4388_condition():
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        '"Dobrze już, dobrze… żegnaj."':
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    nr 'Fałszywy zombie spogląda na was obu bardzo podejrzliwie.'

    menu:
        '"To prawda – obudziłem się na katafalku."':
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        '"Och, wybacz. Właściwie to wpadłem tutaj w pułapkę. Czy możesz pomóc znaleźć wyjście?"':
            # a72 # r4392
            jump vaxis_s31

        '"Mniejsza o to. Czas już na mnie."':
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    nr 'Spogląda na ciebie przez chwilę, potem syczy, następnie zaś zaczyna wykonywać dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. "Pomyyleeniec! Idioota! Odyyyjdź, odyyyjdź ode mniee, trypie! Preecz!"'

    menu:
        '"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."' if vaxisLogic.r4395_condition():
            # a74 # r4395
            jump vaxis_s21

        '"Nigdzie nie odejdę. Albo powiesz mi co tutaj robisz, albo zawołam straże."' if vaxisLogic.r4396_condition():
            # a75 # r4396
            jump vaxis_s17

        '"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4397_condition():
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        '"Odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4398_condition():
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        '"No już dobrze, dobrze… Odchodzę."':
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    nr 'Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy cię badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "Ty mi wyyjywiłeś syykryyet, to i ja ci powiem syykryyet. Ja mam tutaj swoich przyyjyyciół w ukryciu, a ty nikogo. Nie powinieneś tutaj byyć. Graby zabiją cię. Ja uciyyknę."'

    menu:
        '"Jeżeli cię ZABIJĘ, to nigdzie nie uciekniesz. A teraz zacznij odpowiadać na moje pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4401_condition():
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        '"Jeżeli cię ZABIJĘ, to nigdzie nie uciekniesz. A teraz zacznij odpowiadać na moje pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4402_condition():
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        '"Zatem idź do diabła. Odchodzę."':
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    nr 'Oczy truposza zwężają się, gdy syczy na ciebie wściekle. "Próbujesz mnie wpyykyywać do księgi umarłych? Myym tutaj ukrytych przyjaciół, a ty nikyygo. Dotknij mnie, a moi kumple zabiją cię."'

    menu:
        '"Zaryzykuję. Przygotuj się na śmierć."':
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie… *zombie*."':
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    nr 'Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy twoją postać badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "TY próbujesz wpakować MNIE do księgi umarłych? Myym tutaj ukrytych przyjaciół, a ty nikyygo. Dotknij mnie, a moi kumple zabiją cię."'

    menu:
        '"Zaryzykuję. Przygotuj się na śmierć."':
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_dispose

        '"A co będzie, jeżeli zdecyduję się poinformować strażników o tobie i twoim gustownym przebraniu?"' if vaxisLogic.r4409_condition():
            # a85 # r4409
            jump vaxis_s21

        '"A co będzie, jeżeli zdecyduję się poinformować strażników o tobie i twoim gustownym przebraniu?"' if vaxisLogic.r4410_condition():
            # a86 # r4410
            jump vaxis_s20

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie… *zombie*."':
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    nr 'Oczy truposza zwężają się i syczy: "Ty mi wyjawiłeś syykyyet, to i ja ci powiem syykryyet. Ja mam tutaj swoich przyjaciół w ukryciu, a ty nikogo. Nie powinieneś tutaj być. Graby zabiją cię. Ja ucieknę."'

    menu:
        '"Właśnie zaprzepaściłeś swoją ostatnią szansę, truposzu. Przygotuj się na śmierć."':
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj, żeby ci się tutaj krzywda nie stała, panie *zombie.*"':
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    nr 'Zombie musiał coś dostrzec w twoim spojrzeniu, bo jego mina szybko zrzedłą. "Nie-Nie-Nie! Nie wyyłyyj strażników!" Wygląda na mocno podenerwowanego. "Ja szpieguję Gryybów. Jeśli co podpatrzę, zaraz donoszę. Nic poza tym."'

    menu:
        '"Szpiegujesz? Niby z czyjego polecenia?"':
            # a90 # r4416
            jump vaxis_s23

        '"I co takiego podpatrzyłeś u Grabarzy? Co oni robią?"':
            # a91 # r4417
            jump vaxis_s29

        '"Mam jeszcze kilka pytań…"':
            # a92 # r4418
            jump vaxis_s43

        '"To już wszystko, co chciałem wiedzieć. Bywaj zdrów, *zombie*."':
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    nr '"Nie-nie-nie Nie krzywdź mnie!" Chyba podziałał tu na zombie fakt, że jesteś od niego cięższy o te kilka kilogramów masy mięśniowej. Mina zombie zrzedła zupełnie. "Nie krzywdź mnie! Ja szpieguję Grabów. Jeśli co podpatrzę, zaraz donoszę. Nic poza tym."'

    menu:
        '"Szpiegujesz? Niby z czyjego polecenia?"':
            # a94 # r4421
            jump vaxis_s23

        '"I co takiego podpatrzyłeś u Grabarzy? Co oni robią?"':
            # a95 # r4422
            jump vaxis_s29

        '"Mam jeszcze kilka pytań…"':
            # a96 # r4423
            jump vaxis_s43

        '"To już wszystko, co chciałem wiedzieć. A teraz zejdź z mojej drogi, *zombie*."':
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    nr 'Zombie milknie i zapada długa cisza, wypełniona jego namacalnym lękiem. Nie wydaje się, aby w tym momencie zombie miał cokolwiek więcej do dodania.'

    menu:
        '"No, gadaj. Dlaczego obserwujesz to miejsce?"' if vaxisLogic.r4426_condition():
            # a98 # r4426
            jump vaxis_s70

        '"No, gadaj. Dlaczego obserwujesz to miejsce?"' if vaxisLogic.r4427_condition():
            # a99 # r4427
            jump morte_s89  # EXTERN

        '"Zaoszczędzisz sobie naprawdę bardzo dużo boleści, jeżeli zaraz powiesz mi z czyjego polecenia tutaj szpiegujesz."' if vaxisLogic.r4428_condition():
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        '"Zaoszczędzisz sobie naprawdę bardzo dużo boleści, jeżeli zaraz powiesz mi z czyjego polecenia tutaj szpiegujesz."' if vaxisLogic.r4429_condition():
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        '"Nieważne. Co takiego podpatrzyłeś u Grabarzy? Co oni robią?"':
            # a102 # r4430
            jump vaxis_s29

        '"Chciałbym cię spytać jeszcze o coś innego…"':
            # a103 # r4431
            jump vaxis_s43

        '"Zatem zapomnijmy o tym. Żegnaj, *zombie*."':
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    nr '"Szuuukałeeś mnie? Dlaaaczyygo?" Zombie patrzy na ciebie przez zmrużone powieki. "Maaasz dlyyy mmnie wiaadyyymyyść?"'

    menu:
        'Kłamstwo: "Tak, mam dla ciebie wiadomość."':
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        '"Wiadomość? Od kogo?"':
            # a106 # r4435
            jump vaxis_s27

        '"Nie, nie mam żadnej wiadomości."':
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    nr 'Zanosi się gniewnym sykiem "Więc czego chcesz, trypie?"'

    menu:
        '"Szukam stąd wyjścia. Możesz mi pomóc?"' if vaxisLogic.r4438_condition():
            # a108 # r4438
            jump vaxis_s31

        '"Potrzebuję paru informacji…"':
            # a109 # r4439
            jump vaxis_s43

        '"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."' if vaxisLogic.r4440_condition():
            # a110 # r4440
            jump vaxis_s21

        '"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."' if vaxisLogic.r4441_condition():
            # a111 # r4441
            jump vaxis_s17

        '"Albo zrobisz to, co chcę czyli odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."' if vaxisLogic.r4442_condition():
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        '"Albo zrobisz to, co chcę czyli odpowiesz na moje cholerne pytania, albo sprawię, że nie będziesz się musiał przebierać, żeby wyglądać na truposza. Naprawdę nie żartuję."' if vaxisLogic.r4443_condition():
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        '"Wybacz, że ci zawracałem głowę… Kimkolwiek jesteś, żegnaj."':
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    nr '"Jaką wiadomość?"'

    menu:
        '"Masz mi powiedzieć o swojej misji."' if vaxisLogic.r4446_condition():
            # a115 # r4446
            jump vaxis_s28

        'Kłamstwo: "Mam dla ciebie nowe rozkazy."' if vaxisLogic.r4447_condition():
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        'Kłamstwo: "Mam dla ciebie nowe rozkazy."' if vaxisLogic.r4448_condition():
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        '"Wybacz, ale nie mam żadnej wiadomości."':
            # a118 # r4449
            jump vaxis_s27

        '"Mniejsza z tym. Wybacz, że ci zawracałem głowę. Żegnaj."':
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    nr 'Jego oczy zwężają się wściekle "Nie jesteś posłańcem. Kim jesteś?"'

    menu:
        '"Szukam stąd wyjścia. Możesz mi pomóc?"' if vaxisLogic.r4452_condition():
            # a120 # r4452
            jump vaxis_s31

        '"Potrzebuję paru informacji…"':
            # a121 # r4453
            jump vaxis_s43

        '"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."' if vaxisLogic.r4454_condition():
            # a122 # r4454
            jump vaxis_s21

        '"Powiesz mi zaraz, co tutaj robisz albo zawołam straże."' if vaxisLogic.r4455_condition():
            # a123 # r4455
            jump vaxis_s17

        '"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4456_condition():
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '"Ja tutaj jestem od zadawania pytań, panie *zombie*. Powiesz mi, kim jesteś, albo sprawię, że nie będziesz się musiał już przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4457_condition():
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        '"Wybacz, że ci zawracałem głowę… Kimkolwiek jesteś, żegnaj."':
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    nr '"Szpieeegyyję Gryybów. Jeśli cyy podpatrzę, zaraz donoszę. Nic poza tym."'

    menu:
        '"I co takiego podpatrzyłeś u Grabarzy? Co oni robią?"':
            # a127 # r4460
            jump vaxis_s29

        '"Rozumiem. Chciałbym cię spytać jeszcze o coś innego…"':
            # a128 # r4461
            jump vaxis_s43

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    nr '"Nic! Onyy nic niee ryybią! Niczeeego nie szukyyją! To martwi, martwi, martwi luudzie. Gryyby nic nie robią." Oczy truposza tchną szczerością. "Ale całyy czyys czyywam."'

    menu:
        '"Rozumiem. Chciałbym cię spytać jeszcze o coś innego…"':
            # a130 # r4464
            jump vaxis_s43

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    nr 'Jego oczy zwężają się, jakby próbował przeniknąć twoje słowa. "Jakie rozkazy?"'

    menu:
        '"Opowiedz mi o swojej misji."':
            # a132 # r4467
            jump vaxis_s28

        '"Szukam drogi ucieczki, którą mógłbym przebyć niepostrzeżenie."':
            # a133 # r4468
            jump vaxis_s49

        '"Przybyłem tutaj, aby cię zluzować. Przekaż mi wszystkie informacje, które zgromadziłeś, wszystkie swoje rzeczy, a potem odejdź."' if vaxisLogic.r4469_condition():
            # a134 # r4469
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        '"Jestem tu, żeby nieść ci pomóc w jakikolwiek sposób."':
            # a135 # r4470
            jump vaxis_s35

        '"Twoje rozkazy na razie poczekają. Wrócę tu."':
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    nr 'Milknie na chwilę, a potem kiwa głową, jakby w zrozumieniu: "Dlaczego miyyłbym ci pomyygać?"'

    menu:
        '"Ponieważ potrzebujesz pomocy."':
            # a137 # r4473
            jump vaxis_s32

        '"Może moglibyśmy się dogadać. Czego oczekujesz w zamian?"' if vaxisLogic.r4474_condition():
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        '"Ponieważ jeśli mi pomożesz, pozwolę, abyś pozostał nierozpoznany."' if vaxisLogic.r4475_condition():
            # a139 # r4475
            jump vaxis_s33

        '"Ponieważ jeśli mi pomożesz, pozwolę, abyś pozostał nierozpoznany."' if vaxisLogic.r4476_condition():
            # a140 # r4476
            jump vaxis_s34

        '"Po prostu wyglądasz mi bardziej na kogoś, kto raczej udaje trupa niż na kogoś, kto jest trupem w rzeczywistości. Czy to wystarczające wytłumaczenie?"' if vaxisLogic.r4477_condition():
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        '"Po prostu wyglądasz mi bardziej na kogoś, kto raczej udaje trupa niż na kogoś, kto jest trupem w rzeczywistości. Czy to wystarczające wytłumaczenie?"' if vaxisLogic.r4478_condition():
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        '"Zapomnij o tym, że się spotkaliśmy. Teraz już czas na mnie. Żegnaj."':
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    nr 'Zombie uśmiecha się półgębkiem. "Każdy czegoś potrzyybuje, ale nikt niczego nie daje. Dasz mi coś, może ci pyymyygę."'

    menu:
        '"Więc czego potrzebujesz?"':
            # a144 # r4481
            jump vaxis_s35

        '"A może byś tak powiedział mi co tutaj robisz? Czy może wolisz poczekać na strażników, których zaraz wezwę."' if vaxisLogic.r4482_condition():
            # a145 # r4482
            jump vaxis_s33

        '"A może byś tak powiedział mi co tutaj robisz? Czy może wolisz poczekać na strażników, których zaraz wezwę."' if vaxisLogic.r4483_condition():
            # a146 # r4483
            jump vaxis_s34

        '"Wyglądasz na kogoś, kto woli cieszyć życiem, niż przeciwstawiać się mi i szybko życie stracić. Więc teraz… pytam po raz ostatni: Jak można wydostać się z tego miejsca?"' if vaxisLogic.r4484_condition():
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        '"Wyglądasz na kogoś, kto woli cieszyć życiem, niż przeciwstawiać się mi i szybko życie stracić. Więc teraz… pytam po raz ostatni: Jak można wydostać się z tego miejsca?"' if vaxisLogic.r4485_condition():
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        '"Nie interesuje mnie to. Żegnaj."':
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    nr 'Mierzy cię badawczym wzrokiem od stóp do głów, jakby rozważał czy mógł dać ci radę, ogląda twoje blizny, a potem podejmuje decyzję. "Hm… Mógłbyyś próbyywać ucieeczki przez portyyle."'

    menu:
        '"Portale?"':
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    nr 'Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy cię badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "Ty mi wyjawyyłeś syykryyet, to i ja ci powiem syykryyet. Ja mam tutaj swyyich przyjaciół w ukryyciu, a ty nikyygo. Nie powinieneś tyytaj być. Graby zabyyją cię. Ja uciyyknę."'

    menu:
        '"Jeżeli cię zabiję, nie uciekniesz nigdzie. A teraz zacznij mówić, albo sprawię, że nie będziesz się już musiał już przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4489_condition():
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        '"Jeżeli cię zabiję, nie uciekniesz nigdzie. A teraz zacznij mówić, albo sprawię, że nie będziesz się już musiał już przebierać, żeby wyglądać na truposza."' if vaxisLogic.r4490_condition():
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        '"Zatem idź do diabła. Odchodzę."':
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    nr '"Uch… Muszę znyyleźć dla mnie klyycz. Potrzyybuję żelyyznego klucza od byylsyymowni."'

    menu:
        '"Mówisz o tym kluczu?"' if vaxisLogic.r4494_condition():
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        '"No dobra. Gdzie jest ten klucz?"':
            # a155 # r4495
            jump vaxis_s36

        '"Nie mam czasu na to wszystko. Albo pomożesz mi stąd uciec, albo zawołam straże."' if vaxisLogic.r4496_condition():
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        '"Nie mam czasu na to wszystko. Albo pomożesz mi stąd uciec, albo zawołam straże."' if vaxisLogic.r4497_condition():
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        '"Nie mam zamiaru niczego ci przynosić. Albo pomożesz mi stąd uciec, albo skręcę ci kark. Mówię poważnie."' if vaxisLogic.r4498_condition():
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        '"Nie mam zamiaru niczego ci przynosić. Albo pomożesz mi stąd uciec, albo skręcę ci kark. Mówię poważnie."' if vaxisLogic.r4499_condition():
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        '"Nie, dziękuję. Może innym razem."':
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    nr '"Ma go kobiyyta od Grabów." Wymownie pokazuje swoje oczy. "Tyyka z żółtymi oczyymi…" Teraz zombie wykonuje swoimi dłońmi gesty, które przywodzą ci na pamięć pracę nożyc ogrodniczych "Ma noże na palcach."'

    menu:
        '"Tak, już się spotkaliśmy wcześniej. A oto i klucz."' if vaxisLogic.r4502_condition():
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        '"Kobieta Grabarz… O żółtych oczach i nożach zamiast palców? Już ją spotkałem w balsamowni. Poczekaj. Zaraz przyjdę z kluczem."' if vaxisLogic.r64520_condition():
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        '"Kobieta od Grabarzy… o żółtych oczach i ostrzach na palcach? Zatem dobrze, wrócę tu z tym kluczem."' if vaxisLogic.r4503_condition():
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        '"Z twojego opisu wnoszę, że ta Grabarka to bardzo atrakcyjna niewiasta. Jesteś pewien, że nie chcesz, abym obu was przedstawił?"':
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    nr 'Truposz mruga powiekami. Chyba cię nie zrozumiał.'

    menu:
        '"Ach, to tylko żart. Zawsze wszystko bierzesz na poważnie? No nic, idę poszukać tego klucza."' if vaxisLogic.r4506_condition():
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        '"Ach, to tylko żart. Zawsze wszystko bierzesz na poważnie? No nic, idę poszukać tego klucza."' if vaxisLogic.r66150_condition():
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    nr 'Zombie patrzy na ciebie przez zmrużone ślepia. "Jak cię złyypią, nie mów im nic yy mnie, bo wypatryyyyszę cię we śnie."'

    menu:
        '"Znajdę ten przeklęty klucz… A ty lepiej głęboko zastanów cię nad swoimi pogróżkami, zrozumiano?"' if vaxisLogic.r4508_condition():
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        '"Wrócę tu."' if vaxisLogic.r4509_condition():
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        '"Znajdę ten przeklęty klucz… A ty lepiej głęboko zastanów cię nad swoimi pogróżkami, zrozumiano?"' if vaxisLogic.r4510_condition():
            # a169 # r4510
            jump vaxis_dispose

        '"Wrócę tu."' if vaxisLogic.r4511_condition():
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    nr '"Myje przybranie dybre… Ja tyż mam blizny. Mam na sybie dużo płynu balsymujyncego. Ja dybrze udaję zombie." Chichocze za zasznurowanymi wargami, a potem klepie się po głowie "Graby bardzo głuu-pie."'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    nr '"Poczyykam tu na ciyybie. Znajdź klyycz." Zombie posyła ci uśmiech, od którego widoku może się zrobić niedobrze. "Pyytyym ci pyymyygę."'

    menu:
        '"Jeżeli go znajdę, to go tutaj przyniosę."':
            # a171 # r4515
            jump vaxis_dispose

        '"W takim razie zapomnij o tym."':
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    nr 'Oczy zombie rozszerzają się, a potem wyciąga rękę i rozcapierza palce. "Daj mi to."'

    menu:
        '"Poczekaj na chwilę. Chciałbym o coś spytać."':
            # a173 # r4518
            jump vaxis_dispose

        '"Proszę."':
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    nr 'Oczy zombie rozszerzają się i porywa klucz z twojej dłoni. Ogląda go przez chwilę, kiwając głową. "Dobrze… Dobrze."'

    menu:
        '"Dobra… A jak mogę się stąd wydostać?"' if vaxisLogic.r4521_condition():
            # a175 # r4521
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        '"Dobra… Chciałbym o coś spytać…"' if vaxisLogic.r4522_condition():
            # a176 # r4522
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    nr '"Czyygo chcyysz?"'

    menu:
        '"Jak mogę stąd uciec?"' if vaxisLogic.r64508_condition():
            # a177 # r64508
            jump vaxis_s49

        '"Jak mogę stąd uciec?"' if vaxisLogic.r4524_condition():
            # a178 # r4524
            jump vaxis_s49

        '"Powiedz mi jeszcze raz gdzie jest ten portal?"' if vaxisLogic.r4525_condition():
            # a179 # r4525
            jump vaxis_s52

        '"A możesz ucharakteryzować mnie na zombie?"' if vaxisLogic.r4526_condition():
            # a180 # r4526
            jump vaxis_s63

        '"Możesz jeszcze raz ucharakteryzować mnie na zombie?"' if vaxisLogic.r4527_condition():
            # a181 # r4527
            jump vaxis_s63

        '"Co tutaj robisz?"' if vaxisLogic.r4528_condition():
            # a182 # r4528
            jump vaxis_s28

        '"Czy znasz kogoś o imieniu Farod?"' if vaxisLogic.r4673_condition():
            # a183 # r4673
            jump vaxis_s44

        '"Zgubiłem dziennik. Nie widziałeś go czasem?"' if vaxisLogic.r4530_condition():
            # a184 # r4530
            jump vaxis_s47

        '"Możesz opowiedzieć mi o Dhallu?"' if vaxisLogic.r4531_condition():
            # a185 # r4531
            jump vaxis_s53

        '"Możesz opowiedzieć mi o Deionarze?"' if vaxisLogic.r4532_condition():
            # a186 # r4532
            jump vaxis_s54

        '"Możesz opowiedzieć mi o Soem?"' if vaxisLogic.r4533_condition():
            # a187 # r4533
            jump vaxis_s55

        '"Co trzeba zrobić, żeby wyglądać tak jak ty?"' if vaxisLogic.r4534_condition():
            # a188 # r4534
            jump vaxis_s60

        '"Co trzeba zrobić, żeby wyglądać tak jak ty?"' if vaxisLogic.r4535_condition():
            # a189 # r4535
            jump vaxis_s39

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    nr '"Faa-rod?" Zombie mruga oczami, namyślając się przez chwilę. "Słyszałem, że mieszka gdzieś w Ulu." Potrząsa głową. "Nie wiem gdzie." Znowu mruży oczy. "Graby bardzo złe. Nie lubią Faroda."'

    menu:
        '"W Ulu?"':
            # a191 # r4538
            jump vaxis_s45

        '"Dlaczego Grabarze nie lubią Faroda?"':
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        '"Chciałbym cię spytać jeszcze o coś innego…"':
            # a193 # r4540
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    nr '"Pobliskie slumsy."'

    menu:
        '"Dlaczego Grabarze nie lubią Faroda?"':
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        '"Chciałbym cię spytać jeszcze o coś innego…"':
            # a196 # r4544
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    nr '"On jest Zbieraczem. Przywozi umarłych do Kostnicy, sprzedaje ich ciała Grabarzom. Przywozi dużo umarłych. Graby nie wiedzą, skąd bierze tyle umarłych. Chyba pakuje trepów do księgi umarłych."'

    menu:
        '"Uch… Co?"' if vaxisLogic.r4547_condition():
            # a198 # r4547
            jump vaxis_s48

        '"Uch… Co?"' if vaxisLogic.r4548_condition():
            # a199 # r4548
            jump morte_s91  # EXTERN

        '"Och. Chciałbym cię spytać jeszcze o coś innego…"':
            # a200 # r4549
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    nr '"Nie wiem. Jakiś trep cię oskórował?"'

    menu:
        '"Uch… Co?"' if vaxisLogic.r4552_condition():
            # a202 # r4552
            jump vaxis_s48

        '"Uch… Co?"' if vaxisLogic.r4553_condition():
            # a203 # r4553
            jump morte_s92  # EXTERN

        '"Och. Chciałbym cię spytać jeszcze o coś innego…"':
            # a204 # r4554
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    nr 'Zombie próbuje coś mówić, potem milknie, próbuje jeszcze raz i wzrusza ramionami. Zapewne doszedł do wniosku, że nie umie tego lepiej wyjaśnić.'

    menu:
        '"Och. Chciałbym cię spytać jeszcze o coś innego…"':
            # a206 # r4557
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    nr 'Zombie burczy. "Możeesz uuciec przyyz portalyy." Macha rękami. "Puuff."'

    menu:
        '"Portale? Jakie portale?"':
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    nr '"Poorrtyyle…" Zombie ogarnia ruchem rąk wszystko w pobliżu. "Porrtyyle są wszędziie."'

    menu:
        '"Możesz wskazać mi drogę do któregoś z takich portali?"' if vaxisLogic.r4564_condition():
            # a209 # r4564
            jump vaxis_s31

        '"Możesz wskazać mi drogę do któregoś z takich portali?"' if vaxisLogic.r64509_condition():
            # a210 # r64509
            jump vaxis_s51

        '"Możesz wskazać mi drogę do któregoś z takich portali?"' if vaxisLogic.r64510_condition():
            # a211 # r64510
            jump vaxis_s51

        '"Możesz wskazać mi drogę do któregoś z takich portali?"' if vaxisLogic.r64511_condition():
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    nr 'Zombie kiwa głową. "Chcesz stąd wyjść… Idź do łuku na pierwszym poziomie. Północno-zachodnia komnata. Musisz mieć przy sobie kość z palca, skrzywioną." Podnosi swój wskazujący palec do góry i malowniczo wygina go. "Jak będziesz miał ten klucz. Podejdź do łuku, wejdź do sekretnej krypty, a stamtąd możesz uciec. To tajna droga ucieczki." Kiwa głową z dużą żywością. "Możesz też tam ODPOCZĄĆ."'

    menu:
        '"Skrzywiona kość z palca? A gdzież ja będę mógł znaleźć coś takiego?"' if vaxisLogic.r64527_condition():
            # a213 # r64527
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        '"Mam jeszcze kilka pytań…"' if vaxisLogic.r4568_condition():
            # a214 # r4568
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        '"Łuk na parterze, komnata północno-zachodnia, tak? W porządku, zaraz pójdę to sprawdzić."' if vaxisLogic.r4569_condition():
            # a215 # r4569
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    nr '"Słuchaj! Pamiętaj!" Zombie sprawia wrażenie wkurzonego. "Łuk, na pierwszym poziomie, komnata północno-zachodnia…" Podnosi swój wskazujący palec i wygina go. "Potrzebujesz kości palca, zgiętej. Idziesz do tajnej krypty. Tam droga ucieczki. Ta można ODPOCZĄĆ."'

    menu:
        '"Chciałbym cię spytać jeszcze o coś innego…"':
            # a216 # r4571
            jump vaxis_s43

        '"Łuk, na parterze, komnata północno-zachodnia, otwiera się skrzywioną kością od palca, tak? W porządku, teraz wszystko już rozumiem."':
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    nr '"Skryba." Zombie wzrusza ramionami. "Stary. Żółty."'

    menu:
        '"Przypuszczam, że nie ma już chyba co rozwodzić się nad tym tematem. Chciałbym natomiast spytać o coś innego…"':
            # a218 # r4574
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    nr '"Kto?" Truposz marszczy brwi. "Ona kto?"'

    menu:
        '"Zapomnij o tym. Chciałbym natomiast spytać o coś innego…"':
            # a220 # r4577
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    nr '"Przewodnik. On jest przy drzwiach wejściowych do Kostnicy. Czego od niego chcesz?"'

    menu:
        '"Co możesz o nim powiedzieć?"':
            # a222 # r4580
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    nr '"Zachowyyje się dziwnie. Nie z Gryybów. Nie z Anarchyystów, ma zmieniyyne oczyy…" Wzrusza. "Lubi szczyyyry. Dziwny on."'

    menu:
        '"Nie on jeden jest dziwny w tym miejscu. Ale chciałbym spytać o coś innego…"':
            # a224 # r4583
            jump vaxis_s43

        '"Mniejsza o to. Później będę miał kilka pytań. Nie odchodź stąd nigdzie."':
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    nr 'Widzisz fałszywego zombie. Przebranie tego człowieka naprawdę potrafi wprawić w zdumienie… Jego oddech jest tak stłumiony, że ledwie go zauważasz.'

    menu:
        '"Witaj."' if vaxisLogic.r4586_condition():
            # a226 # r4586
            jump vaxis_s58

        '"Witaj."' if vaxisLogic.r4587_condition():
            # a227 # r4587
            jump vaxis_s58

        '"Witaj."' if vaxisLogic.r4588_condition():
            # a228 # r4588
            jump vaxis_s59

        '"Witaj."' if vaxisLogic.r4589_condition():
            # a229 # r4589
            jump vaxis_s58

        'Zostaw go w spokoju.':
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    nr 'Zombie rzuca wokół szybkie spojrzenie, kontrolując, czy kogoś nie ma pobliżu, a potem obraca się do ciebie. "I co?"'

    menu:
        '"Oto i klucz, którego poszukiwałeś."' if vaxisLogic.r4592_condition():
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        '"Oto i klucz, którego poszukiwałeś."' if vaxisLogic.r4593_condition():
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        '"A gdzie jest ten klucz, o którym wspominałeś?"' if vaxisLogic.r4594_condition():
            # a233 # r4594
            jump vaxis_s36

        '"Mam do ciebie kilka pytań…"':
            # a234 # r4595
            jump vaxis_s43

        '"Nieważne."':
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    nr 'Zombie rzuca wokół szybkie spojrzenie, kontrolując, czy kogoś nie ma pobliżu, a potem obraca się do ciebie i wykonuje dziwne ruchy, które mają zapewne na celu przepędzenie cię precz i to możliwie jak najszybciej. Syczy "Odyyjdź stąd, Oddyjdź!"'

    menu:
        '"Nie. Najpierw chciałbym zadać kilka pytań…"':
            # a236 # r4598
            jump vaxis_s43

        '"W takim razie nieważne."' if vaxisLogic.r4599_condition():
            # a237 # r4599
            jump vaxis_s4

        '"W takim razie nieważne."' if vaxisLogic.r4600_condition():
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    nr '"Myje przybranie dybre… Ja tyż mam blizny. Mam na sybie dużo płynu balsymujyncego. Ja dybrze udaję zombie." Chichocze za zasznurowanymi wargami, a potem klepie się po głowie "Graby bardzo głuu-pie."'

    menu:
        '"Tak, oni nie są zbyt lotni, masz rację."':
            # a239 # r4602
            jump vaxis_s61

        '"A czy to nie boli?"':
            # a240 # r4603
            jump vaxis_s62

        '"To przebranie jest całkiem niezłe. Słuchaj… A czy nie mógłbyś i mnie ucharakteryzować na zombie?"' if vaxisLogic.r4604_condition():
            # a241 # r4604
            jump vaxis_s63

        '"Chciałbym cię spytać jeszcze o coś innego…"':
            # a242 # r4605
            jump vaxis_s43

        '"Czas już na mnie. Żegnaj."':
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    nr 'Zombie szybko chowa swój sarkazm do kieszeni. Kiwa głową z zapałem. "Graby bardzo głupie. Ja dobrze udaję zombie."'

    menu:
        '"A czy to nie boli?"':
            # a244 # r4608
            jump vaxis_s62

        '"To przebranie jest całkiem niezłe. Słuchaj… A czy nie mógłbyś i mnie ucharakteryzować na zombie?"' if vaxisLogic.r4609_condition():
            # a245 # r4609
            jump vaxis_s63

        '"Chciałbym cię spytać jeszcze o coś innego…"' if vaxisLogic.r4610_condition():
            # a246 # r4610
            jump vaxis_s64

        '"Czas już na mnie. Żegnaj."' if vaxisLogic.r4611_condition():
            # a247 # r4611
            jump vaxis_s64

        '"Chciałbym cię spytać jeszcze o coś innego…"' if vaxisLogic.r4612_condition():
            # a248 # r4612
            jump vaxis_s43

        '"Czas już na mnie. Żegnaj."' if vaxisLogic.r4613_condition():
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    nr 'Zombie patrzy na twoje blizny. "Spytam się o to samo. Mnie to nie boli." Uderza się po piersi. "Ja twardy."'

    menu:
        '"To przebranie jest całkiem niezłe. Słuchaj… A czy nie mógłbyś i mnie ucharakteryzować na zombie?"' if vaxisLogic.r4615_condition():
            # a250 # r4615
            jump vaxis_s63

        '"Chciałbym cię spytać jeszcze o coś innego…"' if vaxisLogic.r4616_condition():
            # a251 # r4616
            jump vaxis_s64

        '"Czas już na mnie. Żegnaj."' if vaxisLogic.r4617_condition():
            # a252 # r4617
            jump vaxis_s64

        '"Chciałbym cię spytać jeszcze o coś innego…"' if vaxisLogic.r4618_condition():
            # a253 # r4618
            jump vaxis_s43

        '"Czas już na mnie. Żegnaj."' if vaxisLogic.r4674_condition():
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    nr 'Zombie mierzy cię przez chwilę badawczym wzrokiem od stóp do głów, mrucząc do samego siebie, a potem kiwa głową. "Um… Potrzyyba mi słoja płynu byylsyymującego." Pokazuje na blizny na twojej piersi. "I tryychę igieł i nici."'

    menu:
        '"Proszę."' if vaxisLogic.r4620_condition():
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        '"Pomyślę o tym. Mam kilka innych pytań…"':
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        '"Nie, dzięki. Może innym razem… Żegnaj."':
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        '"Trochę płynu balsamującego i trochę nici? Pójdę i poszukam, może coś dla ciebie znajdę."':
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    nr 'Zombie mierzy cię przez chwilę badawczym wzrokiem od stóp do głów z dziwnym wyrazem twarzy. "Ty dyybry zombie. Myygę zryybić z ciebie zombie. Dyybre przebranie."'

    menu:
        '"Tak, czy siak dziękuję. Mam jeszcze kilka innych pytań…"':
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        '"Jasne. Możesz to zrobić?"':
            # a260 # r4626
            jump vaxis_s63

        '"Czemu nie? I tak cały czas czuję się, jak chodzący truposz."':
            # a261 # r4627
            jump vaxis_s63

        '"Nie, nie, nie. Nie trzeba. Żegnaj."':
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    nr 'Zombie bierze od ciebie rzeczy, i bierze się do roboty…'

    menu:
        'Próbuj stać nieruchomo.' if vaxisLogic.r4630_condition():
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        'Próbuj stać nieruchomo.' if vaxisLogic.r4631_condition():
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        'Próbuj stać nieruchomo.' if vaxisLogic.r4632_condition():
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        'Próbuj stać nieruchomo.' if vaxisLogic.r64533_condition():
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    nr 'Zombie hojnie umieszcza na twoim ciele płyn balsamujący, a potem zaś zgrabnie zaszywa kilka twoich blizn. Począwszy od twoich stóp, idzie w górę i zaszywa twoje blizny, a potem kończy twoją charakteryzację zaszywając ci usta."'

    menu:
        '"Mmm-hmmph-mmm… Dziu-ku-ju."' if vaxisLogic.r4634_condition():
            # a267 # r4634
            jump vaxis_s67

        '"Mmm-hmmph-mmm… Dziu-ku-ju."' if vaxisLogic.r4635_condition():
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        '"Mmm-hmmph-mmm… Dziu-ku-ju."' if vaxisLogic.r4636_condition():
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    nr 'Zombie unosi dłoń. "Ostryyżnie. Nie mów nic. Kiedy mówisz, szwy w twyyich bliznach pękyyją. Zombie nie mówią. Jeśli już myysisz mówić, mów powoli, ostryyżnie."  UWAGA: Weź pod uwagę, że nikt tutaj nie spodziewa się spotkać mówiącego zombie. Jeżeli będąc w przebraniu zombie zdecydujesz się na rozmowę z kimkolwiek, narazisz się dekonspirację.'

    menu:
        '"Mmph… mmm… Rozumiem."':
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    nr 'Zombie marszczy brwi. "Przebryynie nie utrzyymuje się dłyyygo… Płyn balsamyyyjący wysycha, szwy wypadyyyją." Wzrusza ramionami. "Przebryyynie zapewne nie trzyma się długo pyyza Kostnicą. I nie biegaj! Zaczniesz biegać, zniszczysz całe przebryyynie."  UWAGA: Wprowadzenie do twojego ekwipunku broni oraz / lub podjęcie biegu natychmiast kasuje twoje przebranie zombie. Dlatego, jeżeli znajdziesz nową broń, powstrzymaj się przed wprowadzeniem jej do twojego ekwipunku do chwili, kiedy nie będziesz już potrzebował przebrania. Jeżeli masz uruchomioną opcję Ciągłego Biegu, pamiętaj o tym, żeby ją wyłączyć, zaraz po tym, jak skończysz rozmowę z Vaxisem.'

    menu:
        'Skiń jeszcze raz głową i odejdź.':
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    nr 'Zombie marszczy brwi. "Wydyyjesz mi się znajyymy? Widziyyyłem cię wczyyśniej?"'

    menu:
        '"Możliwe. A gdzie mnie spotkałeś?"':
            # a272 # r4642
            jump vaxis_dispose

        'Ani mru-mru.':
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    nr 'Ku twemu zdziwieniu, zombie odwraca się od ciebie… i zaczyna bacznym wzrokiem lustrować otoczenie.'

    menu:
        '"Nie chcesz mówić, tak? Wobec tego zaraz będziesz krzyczał z bólu."':
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_dispose

        '"Nieważne. Co takiego podpatrzyłeś u Grabarzy? Co oni robią?"':
            # a275 # r4646
            jump vaxis_s29

        '"Chciałbym cię spytać jeszcze o coś innego…"':
            # a276 # r4647
            jump vaxis_s43

        '"Zatem zapomnijmy o tym. Żegnaj, *zombie*."':
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    nr 'Zombie patrzy na was obu wzrokiem pełnym obawy. Jest niemy… ale coś w jego wyglądzie mówi ci, że spostrzeżenie Mortego było słuszne.'

    menu:
        '"Anarchiści, co? To dla nich tutaj węszysz?"':
            # a278 # r4650
            jump vaxis_s70

        '"Zaoszczędzisz sobie naprawdę bardzo dużo boleści, jeżeli zaraz powiesz mi dlaczego Anarchiści wysyłają cię tutaj na przeszpiegi."':
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        '"Nieważne. Co takiego podpatrzyłeś u Grabarzy? Co oni robią?"':
            # a280 # r4652
            jump vaxis_s29

        '"Chciałbym cię spytać jeszcze o coś innego…"':
            # a281 # r4653
            jump vaxis_s43

        '"Zatem zapomnijmy o tym. Żegnaj, *zombie*."':
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    nr 'Zombie wygląda na rozczarowanego, ale wzrusza ramionami i zaczyna grzebać w połach swojej splamionej tuniki. "Było spyykojnie. Gryyby były spyykojne. Nic nyywego od czasu poprzyydniego raportu." Po kilku chwilach, wręcza ci parę przedmiotów "Pryyszę." Sądząc po zapachu, przedmioty te musiały być schowane tak głęboko, aby nie dostały się w cudze ręce w przypadku rewizji. "Odyyjdę niebyywem."'

    menu:
        '"Odejść? Jak?"' if vaxisLogic.r4656_condition():
            # a283 # r4656
            jump vaxis_s51

        '"Dobrze. Żegnaj, Vaxisie."' if vaxisLogic.r64532_condition():
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    nr 'Zombie mruczy: "Pyyyrtal to łuk. Parter, kyymnata półnyycno-zachyyydnia, potrzyyba ci kości palca ze szkyyyletu, żeby otwyyyrzyć pyyrtal." Kiwa głową na pożegnanie. "Powyyydzenia."'

    menu:
        '"Uch… Dobra."':
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    nr 'Oczy truposza zwężają się, gdy syczy na ciebie wściekle. "Próbujesz mnie wpyykyywać do księgi umyyrłych? Myym tutaj ukryytych przyjaciół, a ty nikyygo. Dotknij mnie, a myyi kumple zabiją cię."'

    menu:
        '"Właśnie zaprzepaściłeś swoją ostatnią szansę, aby ujść z życiem, truposzu. Przygotuj się na śmierć."':
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj, żeby ci się tutaj krzywda nie stała, panie *zombie.*"':
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    nr 'Przez chwilę wygląda na poważnie wstrząśniętego, potem zaś długo mierzy twoją postać badawczym spojrzeniem i jego martwą twarz okrasza coś w rodzaju uśmiechu: "TY próbujesz wpakować MNIE do księgi umarłych? Myym tutaj ukrytych przyjaciół, a ty nikyygo. Dotknij mnie, a moi kumple zabiją cię."'

    menu:
        '"A co będzie, jeżeli zdecyduję się poinformować strażników o twoim przebraniu?"' if vaxisLogic.r4664_condition():
            # a288 # r4664
            jump vaxis_s33

        '"A co będzie, jeżeli zdecyduję się poinformować strażników o twoim przebraniu?"' if vaxisLogic.r4665_condition():
            # a289 # r4665
            jump vaxis_s76

        '"Zaryzykuję. Przygotuj się na śmierć."':
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie… *zombie*."':
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    nr 'Oczy truposza zwężają i syczy: "Ty mi wyjawiłeś syykyyet, to i ja ci powiem syykryyet. Ja mam tutaj swoich przyjaciół w ukryciu, a ty nikogo. Nie powinieneś tutaj być. Graby zabiją cię. Ja ucieknę."'

    menu:
        '"Właśnie zaprzepaściłeś swoją ostatnią szansę, truposzu. Przygotuj się na śmierć."':
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_dispose

        '"Zatem idź do diabła. Odchodzę. A ty lepiej uważaj na siebie… *zombie*."':
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    nr 'Fałszywy zombie wzrusza ramionami. "Musi być gdzieś tutaj… Poszukaj w magazynach na wyższym poziomie. Może tam będzie."'

    menu:
        '"Dobrze. Mam jeszcze kilka innych pytań…"':
            # a294 # r64524
            jump vaxis_s43

        '"Dobra. Poszukam na górze skrzywionej kości z palca, a potem skieruję się na parter i zbliżę do jednego z łuków w komnacie północno-zachodniej. Zrozumiałem."':
            # a295 # r64525
            jump vaxis_dispose
