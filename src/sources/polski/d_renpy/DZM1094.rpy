init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1094_logic import Zm1094Logic
    zm1094Logic = Zm1094Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1094.DLG
# ###


# s0 # say6562
label zm1094_s0: # - # IF ~  Global("Asonje","GLOBAL",0)
    nr 'Ten chodzący trup ma numer "1094" wygrawerowany na czole, usta zaszyte mocną nicią, a w unoszącej się wokół niego chmurze można wyczuć smród świeżej formaliny. Pomimo bladych i zapadłych rysów twarzy, oraz pozbawionych życia białych oczu, jest rzeczą oczywistą, że kiedyś był to przystojny młodzieniec.'

    menu:
        '"Więc jak… widziałeś, aby działo się tutaj coś interesującego?"' if zm1094Logic.r6565_condition():
            # a0 # r6565
            $ zm1094Logic.r6565_action()
            jump zm1094_s1

        '"Więc jak… widziałeś, aby działo się tutaj coś interesującego?"' if zm1094Logic.r6566_condition():
            # a1 # r6566
            jump zm1094_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."' if zm1094Logic.r6567_condition():
            # a2 # r6567
            jump zm1094_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if zm1094Logic.r6568_condition():
            # a3 # r6568
            $ zm1094Logic.r6568_action()
            jump zm1094_s2

        '"Miło było z tobą pogadać. Żegnaj."':
            # a4 # r6569
            jump zm1094_dispose

        'Zostaw truposza w spokoju.':
            # a5 # r6570
            jump zm1094_dispose


# s1 # say6563
label zm1094_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.'

    menu:
        'Zostaw truposza w spokoju.':
            # a6 # r6571
            jump zm1094_dispose


# s2 # say6564
label zm1094_s2: # from 0.3
    nr 'Trup drży przez chwilę, potem uspokaja się, a jego dusza z powrotem wlatuje do swej niegdysiejszej powłoki. W mgnieniu oka jakiś pozór życia pojawia się w oczach zombiaka i zaczyna on rozglądać się z wyrazem zdumienia na twarzy. Całe jego ciało wydaje się spowijać miękka, złocista poświata.'

    menu:
        '"Pragnę ci zadać pytanie…"':
            # a7 # r6572
            jump zm1094_s3

        'Zostaw ducha w spokoju.':
            # a8 # r9246
            jump zm1094_dispose


# s3 # say9224
label zm1094_s3: # from 2.0
    nr 'Wydaje się, że duch nagle cię dostrzega. Posyła ci rozbrajająco przyjazny, szeroki uśmiech, przez co puszczają mu wszystkie szwy wokół ust. Przez chwilę jest zaskoczony. Ręką dotyka ust, wzrusza ramionami i kiwa głową na powitanie. "Gdzie… gdzie ja jestem? To takie dziwaczne miejsce. Czy ja cię znam?" Cicho pokasłuje, pocierając swoje zesztywniałe gardło.'

    menu:
        '"Duchu, jesteś tu, aby odpowiadać na *moje* pytania."':
            # a9 # r9247
            $ zm1094Logic.r9247_action()
            jump zm1094_s4

        '"Ty… albo przynajmniej twoje szczątki… są w kostnicy."':
            # a10 # r9248
            jump zm1094_s13

        '"Wątpię, byś mnie znał. A teraz mam dla ciebie pytanie…"':
            # a11 # r9249
            jump zm1094_s14

        '"Wątpię. Żegnaj."':
            # a12 # r9250
            jump zm1094_dispose


# s4 # say9225
label zm1094_s4: # from 3.0
    nr 'Przyjazne zachowanie ducha znika w mgnieniu oka. Przez chwilę marszczy brwi, a z jego szarych, uschniętych ust zwisają strzępy porwanych szwów. "Doskonale, pytaj o co chcesz." Odwraca wzrok, ewidentnie znudzony.'

    menu:
        '"Kim jesteś?"':
            # a13 # r9251
            jump zm1094_s5

        '"Skąd pochodzisz?"':
            # a14 # r9252
            jump zm1094_s6

        '"W jaki sposób się tu znalazłeś? To znaczy, jako zombie?"':
            # a15 # r9253
            jump zm1094_s7

        '"Gdzie ty jesteś… gdzie teraz zamieszkuje twoja dusza?"':
            # a16 # r9254
            jump zm1094_s8

        '"Co wiesz na temat tego miejsca?"':
            # a17 # r9255
            jump zm1094_s9

        '"Czy znasz kogoś o imieniu Farod?"' if zm1094Logic.r9256_condition():
            # a18 # r9256
            jump zm1094_s10

        '"Nieważne. Żegnaj."':
            # a19 # r9257
            jump zm1094_dispose


# s5 # say9226
label zm1094_s5: # from 4.0 11.0
    nr '"Nazywałem się Asonje. Czy mogę odejść?"'

    menu:
        '"Nie, mam następne pytanie…"':
            # a20 # r9258
            jump zm1094_s11

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a21 # r9259
            jump zm1094_dispose


# s6 # say9227
label zm1094_s6: # from 4.1 11.1
    nr '"Nie pamiętam. Coś jeszcze?"'

    menu:
        '"Tak, mam następne pytanie…"':
            # a22 # r9260
            jump zm1094_s11

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a23 # r9261
            jump zm1094_dispose


# s7 # say9228
label zm1094_s7: # from 4.2 11.2
    nr 'Duch wzrusza ramionami i patrzy do góry, na niebo. "Nie powiedziałbym. Ale jakie to ma znaczenie?" Zaciska usta nieszczęśliwie i patrzy na ciebie twardo, zaś w jego oczach dostrzegasz groźne błyski. "Czy potrzebujesz ode mnie czegoś jeszcze?"'

    menu:
        '"Tak, mam następne pytanie…"':
            # a24 # r9262
            jump zm1094_s11

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a25 # r9263
            jump zm1094_dispose


# s8 # say9229
label zm1094_s8: # from 4.3 11.3
    nr '"Moja dusza przebywa w Arborei…" Na chwilę przerywa, zagubiony w czułym wspomnieniu. "Nawet teraz tęskno mi do tamtejszego domu, z dala od twojego samolubnego, nierozważnego i raczej nudnego węszenia. Czy wolno mi tam powrócić?"'

    menu:
        '"Nie, mam następne pytanie…"':
            # a26 # r9264
            jump zm1094_s11

        '"Tak, idź. Żegnaj."':
            # a27 # r9265
            jump zm1094_dispose


# s9 # say9230
label zm1094_s9: # from 4.4 11.4
    nr 'Duch spogląda na ciebie z rozpaczą. "Oczywiście, że nic!" Potrząsa głową, zagniewany, a zerwane szwy kołyszą się wraz z ruchem jego głowy.'

    menu:
        '"W takim razie jak to się stało, że twoje zwłoki są tutaj i pracują w tych posępnych gmaszyskach?"':
            # a28 # r9266
            jump zm1094_s12

        '"Mam następne pytanie…"':
            # a29 # r9267
            jump zm1094_s11

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a30 # r9268
            jump zm1094_dispose


# s10 # say9231
label zm1094_s10: # from 4.5 11.5
    nr '"Nie." Nie wydaje się, aby duch zwracał na ciebie uwagę.'

    menu:
        '"W takim razie mam następne pytanie…"':
            # a31 # r9269
            jump zm1094_s11

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a32 # r9270
            jump zm1094_dispose


# s11 # say9232
label zm1094_s11: # from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
    nr 'Duch wydaje głośne westchnienie, wraz z którym powietrze wypełnia woń formaliny z jego płuc. "Tak… tak… pytaj."'

    menu:
        '"Kim jesteś?"':
            # a33 # r9271
            jump zm1094_s5

        '"Skąd pochodzisz?"':
            # a34 # r9272
            jump zm1094_s6

        '"W jaki sposób się tu znalazłeś? To znaczy, jako zombie?"':
            # a35 # r9273
            jump zm1094_s7

        '"Gdzie ty jesteś… gdzie teraz zamieszkuje twoja dusza?"':
            # a36 # r9274
            jump zm1094_s8

        '"Co wiesz o tym miejscu?"':
            # a37 # r9275
            jump zm1094_s9

        '"Czy znasz kogoś o imieniu Farod?"' if zm1094Logic.r9276_condition():
            # a38 # r9276
            jump zm1094_s10

        '"Nic to, nieważne."':
            # a39 # r9277
            jump zm1094_dispose


# s12 # say9233
label zm1094_s12: # from 9.0
    nr '"Zgadujesz równie dobrze jak ja, prostaku. Chciałbym już odejść, za twym przyzwoleniem."'

    menu:
        '"Nie, mam następne pytanie…"':
            # a40 # r9278
            jump zm1094_s11

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a41 # r9279
            jump zm1094_dispose


# s13 # say9234
label zm1094_s13: # from 3.1
    nr 'Trawi to przez chwilę w myśli, potem śmieje się. "Tak! To miałoby sens, nieprawdaż? No dobrze, czy ja ciebie znam?" Przekrzywia głowę w jedną stronę, wpatrując się w ciebie intensywnie. Wydaje się, że rozpoznanie twojej tożsamości jest dla niego czymś w rodzaju zabawnej gry.'

    menu:
        '"Nie, wątpię, byś mnie znał. A teraz mam dla ciebie następne pytanie…"':
            # a42 # r9280
            jump zm1094_s14

        '"Wątpię. Żegnaj."':
            # a43 # r9281
            jump zm1094_dispose


# s14 # say9235
label zm1094_s14: # from 3.2 13.0
    nr 'Duch wzrusza ramionami i uśmiecha się, chichocząc łagodnie. "Być może masz rację! O co to chcesz mnie spytać?" W roztargnieniu zaczyna szarpać za porwane szwy z warg i zrzuca je na podłogę, jedną po drugiej.'

    menu:
        '"Kim jesteś?"' if zm1094Logic.r9282_condition():
            # a44 # r9282
            jump zm1094_s15

        '"Kim jesteś?"' if zm1094Logic.r9286_condition():
            # a45 # r9286
            jump zm1094_s25

        '"Skąd pochodzisz?"':
            # a46 # r9287
            jump zm1094_s16

        '"W jaki sposób się tu znalazłeś? To znaczy, jako zombie?"':
            # a47 # r9288
            jump zm1094_s17

        '"Gdzie ty jesteś… gdzie teraz zamieszkuje twoja dusza?"':
            # a48 # r9317
            jump zm1094_s18

        '"Co wiesz o tym miejscu?"':
            # a49 # r9318
            jump zm1094_s19

        '"Czy znasz kogoś o imieniu Farod?"' if zm1094Logic.r9319_condition():
            # a50 # r9319
            jump zm1094_s20

        '"Nic to, nieważne."':
            # a51 # r9320
            jump zm1094_dispose


# s15 # say9236
label zm1094_s15: # from 14.0 22.0
    nr '"Nazywałem się Asonje. Czy mógłbym poznać twoje imię?"'

    menu:
        '"Ja… ja nie wiem."':
            # a52 # r9289
            $ zm1094Logic.r9289_action()
            jump zm1094_s21

        '"Powiem ci następnym razem. Mam pytanie…"':
            # a53 # r9290
            $ zm1094Logic.r9290_action()
            jump zm1094_s22

        '"Może następnym razem. Żegnaj."':
            # a54 # r9291
            $ zm1094Logic.r9291_action()
            jump zm1094_dispose


# s16 # say9237
label zm1094_s16: # from 14.2 22.2
    nr '"Pochodzę z wielu miejsc! Tak naprawdę, nie znam swego miejsca urodzenia. W mym życiu sporo podróżowałem i wiele miejsc nazywałem swoim domem. A teraz cała Arborea jest przedmiotem mych badań…" Wydaje się, że duch jest z siebie zadowolony.'

    menu:
        '"Rozumiem. Mam następne pytanie…"':
            # a55 # r9292
            jump zm1094_s22

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a56 # r9293
            jump zm1094_dispose


# s17 # say9238
label zm1094_s17: # from 14.3 22.3
    nr 'Uśmiech ducha gaśnie i przez chwilę wygląda na zmartwionego. "Dziwne… Nie wiem! Naprawdę nie jestem pewny, w jaki sposób umarłem." Wzrusza ramionami. "Nieważne!" Jego ucieszny szeroki uśmiech powraca, jakiś taki rozjaśniony, mimo że wydaje się przyklejony do jego wyschniętej twarzy.'

    menu:
        '"Mam następne pytanie…"':
            # a57 # r9294
            jump zm1094_s22

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a58 # r9295
            jump zm1094_dispose


# s18 # say9239
label zm1094_s18: # from 14.4 22.4
    nr '"Arborea! Nie śmiałbym prosić o cudowniejsze miejsce. Nigdzie w trakcie mojego śmiertelnego życia nie znalazłem miejsca o tak wielkiej namiętności… takiej wspaniałości…" Na chwilę przerywa, zagubiony w przyjemnym wspomnieniu. "Piękno tej krainy, ludzie - to po prostu wspaniałe. Zaprawdę powiadam ci, tęsknię doń nawet teraz!"'

    menu:
        '"Rozumiem. Mam następne pytanie…"':
            # a59 # r9296
            jump zm1094_s22

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a60 # r9297
            jump zm1094_dispose


# s19 # say9240
label zm1094_s19: # from 14.5 22.5
    nr '"Niewiele. Podpisałem kontrakt z Grabarzem pod wpływem kaprysu… wskazała mi to straszliwe miejsce i powiedziała, że kiedyś moje ciało zostanie wskrzeszone i będzie używane jako pracownik. Pomyślałem sobie: Nie będzie mi ono już potrzebne, kiedy zacznę inne życie - więc czemu nie? Równie dobrze mogę wziąć miedziaki i wydać je na kobiety i wino!" Chichocze na samą myśl o tym, a w jego oczach błyskają wesołe ogniki.'

    menu:
        '"Czy wiesz coś na temat miasta wokół Kostnicy?"':
            # a61 # r9298
            jump zm1094_s24

        '"Rozumiem. Mam następne pytanie…"':
            # a62 # r9299
            jump zm1094_s22

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a63 # r9300
            jump zm1094_dispose


# s20 # say9241
label zm1094_s20: # from 14.6 22.6
    nr 'Duch zastanawia się przez chwilę. "Nie, obawiam się, że nie słyszałem o tym człowieku. To twój przyjaciel?"'

    menu:
        '"Być może. Mam następne pytanie…"':
            # a64 # r9301
            jump zm1094_s22

        '"Nie wiem. Żegnaj."':
            # a65 # r9302
            jump zm1094_dispose


# s21 # say9242
label zm1094_s21: # from 15.0
    nr 'Wydaje się być zdziwiony. "To dziwne! Wstyd, doprawdy. Muszę cię *jakoś* nazywać, nieprawdaż?" Duch spogląda na ciebie wyczekująco.'

    menu:
        '"Z pewnością coś wymyślisz. Mam pytanie…"':
            # a66 # r9303
            jump zm1094_s22

        'Wymyśl jakieś imię: "Nie wiem… może „Adahn“?"':
            # a67 # r9304
            $ zm1094Logic.r9304_action()
            jump zm1094_s23

        '"Nie, to nie jest ważne. Żegnaj."':
            # a68 # r9305
            jump zm1094_dispose


# s22 # say9243
label zm1094_s22: # from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
    nr '"Naturalnie. Pytaj!" Uśmiecha się z zadowoleniem, oczekując na twoje pytania z zainteresowaniem. Jako że ostatnie szwy już popuściły, jego szeroki uśmiech nie jest już niesamowity.'

    menu:
        '"Kim jesteś?"' if zm1094Logic.r9306_condition():
            # a69 # r9306
            jump zm1094_s15

        '"Kim jesteś?"' if zm1094Logic.r9307_condition():
            # a70 # r9307
            jump zm1094_s25

        '"Skąd pochodzisz?"':
            # a71 # r9308
            jump zm1094_s16

        '"W jaki sposób się tu znalazłeś? To znaczy, jako zombie?"':
            # a72 # r9309
            jump zm1094_s17

        '"Gdzie ty jesteś… gdzie teraz zamieszkuje twoja dusza?"':
            # a73 # r9310
            jump zm1094_s18

        '"Co wiesz o tym miejscu?"':
            # a74 # r9311
            jump zm1094_s19

        '"Czy znasz kogoś o imieniu Farod?"' if zm1094Logic.r9312_condition():
            # a75 # r9312
            jump zm1094_s20

        '"Nic to, nieważne."':
            # a76 # r9321
            jump zm1094_dispose


# s23 # say9244
label zm1094_s23: # from 21.1
    nr 'Wyczuwając twoją frustrację, duch śmieje się serdecznie. "Biedny skurl! W takim razie niech będzie Adahn, przyjacielu. No, masz dla mnie jakieś pytanie?"'

    menu:
        '"Tak…"':
            # a77 # r9313
            jump zm1094_s22

        '"Nie. Żegnaj."':
            # a78 # r9314
            jump zm1094_dispose


# s24 # say9245
label zm1094_s24: # from 19.0
    nr '"Co, Sigil?" Widząc twoje potakujące skinienie głowy, uśmiech truposza przeistacza się w szeroki, szelmowski grymas. "O, nie zepsuję ci tej przyjemności! Idź zbadaj to miejsce samemu! Zgub się w tych uliczkach, oberżach, wśród tych ludzi… ale uważaj! Może to być zarówno niebezpieczne, jak i wspaniałe miejsce. To właśnie czyni je tak ekscytującym, nieprawdaż?"'

    menu:
        '"Chyba… chyba tak. Mam następne pytanie…"':
            # a79 # r9315
            jump zm1094_s22

        '"Być może. Żegnaj."':
            # a80 # r9316
            jump zm1094_dispose


# s25 # say9283
label zm1094_s25: # from 14.1 22.1
    nr '"Nazywałem się Asonje."'

    menu:
        '"Mam następne pytanie…"':
            # a81 # r9284
            jump zm1094_s22

        '"To wszystko, co chciałem wiedzieć. Żegnaj."':
            # a82 # r9285
            jump zm1094_dispose


# s26 # say20061
label zm1094_s26: # - # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    nr '"Znów tu jesteś, co?" Uśmiecha się szeroko.'

    menu:
        '"Mam kilka pytań…"':
            # a83 # r20063
            jump zm1094_s22

        '"Tylko tędy przechodziłem. Żegnaj."':
            # a84 # r20064
            jump zm1094_dispose


# s27 # say20062
label zm1094_s27: # - # IF ~  Global("Asonje","GLOBAL",3)
    nr '"Och, to ty… znowu." Marszczy brwi i odwraca wzrok.'

    menu:
        '"Mam kilka pytań…"':
            # a85 # r20065
            jump zm1094_s11

        '"Tylko tędy przechodziłem. Żegnaj."':
            # a86 # r20066
            jump zm1094_dispose
