init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1041_logic import Zm1041Logic
    zm1041Logic = Zm1041Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1041.DLG
# ###


# s0 # say6573
label zm1041_s0: # - # IF ~  Global("Bei","GLOBAL",0)
    nr 'Te ponownie ożywione zwłoki mężczyzny mają numer "1041" wygrawerowany na czole. Pomimo naprężonej i wysuszonej skóry jest rzeczą oczywistą, że kiedyś jego rysy były raczej „egzotyczne“. Jego wargi zszyto razem - najpewniej po to, aby nie mógł cały czas jęczeć - a całe ciało śmierdzi formaliną.{#zm1041_s0_1}'

    menu:
        '"Więc… widziałeś, aby działo się tu coś ciekawego?"{#zm1041_s0_r6576}' if zm1041Logic.r6576_condition():
            # a0 # r6576
            $ zm1041Logic.r6576_action()
            jump zm1041_s1

        '"Więc… widziałeś, aby działo się tu coś ciekawego?"{#zm1041_s0_r6577}' if zm1041Logic.r6577_condition():
            # a1 # r6577
            jump zm1041_s1

        '"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."{#zm1041_s0_r6578}' if zm1041Logic.r6578_condition():
            # a2 # r6578
            jump zm1041_s1

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm1041_s0_r6579}' if zm1041Logic.r6579_condition():
            # a3 # r6579
            jump zm1041_s2

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.{#zm1041_s0_r6580}' if zm1041Logic.r6580_condition():
            # a4 # r6580
            jump zm1041_s37

        '"Miło było z tobą pogadać. Żegnaj."{#zm1041_s0_r6581}':
            # a5 # r6581
            jump zm1041_dispose

        'Zostaw truposza w spokoju.{#zm1041_s0_r9095}':
            # a6 # r9095
            jump zm1041_dispose


# s1 # say6574
label zm1041_s1: # from 0.0 0.1 0.2
    nr 'Trup wciąż się w ciebie wpatruje.{#zm1041_s1_1}'

    menu:
        'Zostaw truposza w spokoju.{#zm1041_s1_r6582}':
            # a7 # r6582
            jump zm1041_dispose


# s2 # say6575
label zm1041_s2: # from 0.3
    nr 'Trup zatacza się przez chwilę, podczas gdy jego duch ponownie wchodzi do swego niegdysiejszego ciała. Jego migdałowe oczy stają się raz jeszcze czarne, zaś blade ciało staje się na powrót lekko brązowe. Trup prostuje się, strzepując proch z ubrania.  W końcu, dostrzegając osobę, która się do niego zwróciła, duch wpatruje się w ciebie z zaciekawieniem, a potem lekko się kłania.{#zm1041_s2_1}'

    menu:
        'Ukłoń się i ty.{#zm1041_s2_r6583}':
            # a8 # r6583
            $ zm1041Logic.r6583_action()
            jump zm1041_s3

        '"Mam kilka pytań…"{#zm1041_s2_r9096}':
            # a9 # r9096
            $ zm1041Logic.r9096_action()
            jump zm1041_s4

        'Zostaw ducha w spokoju.{#zm1041_s2_r9097}':
            # a10 # r9097
            $ zm1041Logic.r9097_action()
            jump zm1041_dispose


# s3 # say9060
label zm1041_s3: # from 2.0
    nr 'Duch uśmiecha się przez chwilę, jakby z zadowoleniem. Przyjmuje postawę dystyngowaną, trzymając jedną rękę za plecami, i zaczyna mówić delikatnie, melodyjnie:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  To powiedziawszy, wydaje się być zadowolony z siebie i cierpliwie oczekuje twojej odpowiedzi.{#zm1041_s3_1}'

    menu:
        '"Ja… eee…"{#zm1041_s3_r9098}':
            # a11 # r9098
            jump zm1041_s5

        '"Nie mam pojęcia, co powiedziałeś… Czy w ogóle rozumiesz moje słowa?"{#zm1041_s3_r9099}':
            # a12 # r9099
            jump zm1041_s5

        '"Nie rozumiem cię. Żegnaj."{#zm1041_s3_r9100}':
            # a13 # r9100
            jump zm1041_dispose


# s4 # say9061
label zm1041_s4: # from 2.1
    nr 'Otwierasz usta, aby zadać pytanie, ale zanim cokolwiek powiesz, duch zaczyna mówić delikatnie, melodyjnie:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  To powiedziawszy, wydaje się być zadowolony z siebie i cierpliwie oczekuje twojej odpowiedzi.{#zm1041_s4_1}'

    menu:
        '"Ja… eee…"{#zm1041_s4_r9101}':
            # a14 # r9101
            jump zm1041_s5

        '"Nie mam pojęcia, co powiedziałeś… Czy w ogóle rozumiesz moje słowa?"{#zm1041_s4_r9102}':
            # a15 # r9102
            jump zm1041_s5

        '"Nie rozumiem cię. Żegnaj."{#zm1041_s4_r9103}':
            # a16 # r9103
            jump zm1041_dispose


# s5 # say9062
label zm1041_s5: # from 3.0 3.1 4.0 4.1
    nr 'Duch zatrzymuje się na chwilę, jak gdyby dla zebrania myśli. Następnie zaczyna mówić głosem dystyngowanym, aczkolwiek z ciężkim akcentem. "Musisz mi wybaczyć, czcigodny panie. Wiele czasu upłynęło, odkąd posługiwałem się twoim językiem. Niewątpliwie duch mój został tu wezwany, aby odpowiedzieć na twoje pytania; czegóż to pragniesz się ode mnie dowiedzieć?"{#zm1041_s5_1}'

    menu:
        '"Kim jesteś?"{#zm1041_s5_r9104}':
            # a17 # r9104
            jump zm1041_s6

        '"Skąd jesteś?"{#zm1041_s5_r9105}':
            # a18 # r9105
            jump zm1041_s7

        '"W jaki sposób znalazłeś się w tym miejscu? To znaczy, jako zombie?"{#zm1041_s5_r9106}':
            # a19 # r9106
            jump zm1041_s8

        '"Gdzie ty… gdzie mieszka teraz twój… duch?"{#zm1041_s5_r9107}':
            # a20 # r9107
            jump zm1041_s11

        '"Co wiesz o tym miejscu?"{#zm1041_s5_r9108}':
            # a21 # r9108
            jump zm1041_s9

        '"Czy znasz kogoś o imieniu Farod?"{#zm1041_s5_r9109}' if zm1041Logic.r9109_condition():
            # a22 # r9109
            jump zm1041_s10

        '"Niczego, nie przejmuj się."{#zm1041_s5_r9110}':
            # a23 # r9110
            jump zm1041_dispose


# s6 # say9063
label zm1041_s6: # from 5.0 14.0
    nr '"Ciężko mi powiedzieć, kim jestem… łatwiej kim *byłem*. Byłem znany jako Zhuang Bei, nauczyciel i ochroniarz Liu Xixi, córki Cenzora Chi„an."{#zm1041_s6_1}'

    menu:
        '"Nauczyciel *i* ochroniarz?"{#zm1041_s6_r9111}':
            # a24 # r9111
            jump zm1041_s12

        '"Hmmm. To brzmi imponująco."{#zm1041_s6_r9112}':
            # a25 # r9112
            jump zm1041_s13

        '"Rozumiem. Mam więcej pytań…"{#zm1041_s6_r9113}':
            # a26 # r9113
            jump zm1041_s14

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm1041_s6_r9114}':
            # a27 # r9114
            jump zm1041_dispose


# s7 # say9064
label zm1041_s7: # from 5.1 14.1
    nr '"Pochodzę z miejsca znanego jako Shou Lung… miejsca, które niegdyś uważałem za środek Wszechświata." Wydaje się, że sama ta myśl napełnia go umiarkowanym rozbawieniem. "Ile miejsc, tyle światów. Kiedyś uważałem się za naprawdę uczonego człowieka, jednakże zaiste niewiele wiedziałem w chwili śmierci…"{#zm1041_s7_1}'

    menu:
        '"W jaki sposób przybyłeś z tego „Shou Lung?“"{#zm1041_s7_r9115}':
            # a28 # r9115
            jump zm1041_s16

        '"Rozumiem. Mam więcej pytań…"{#zm1041_s7_r9116}':
            # a29 # r9116
            jump zm1041_s14

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm1041_s7_r9117}':
            # a30 # r9117
            jump zm1041_dispose


# s8 # say9065
label zm1041_s8: # from 5.2 14.2
    nr '"Zostałem zamordowany przez jednego z ludzi, którzy wpadli wraz ze mną do tego świata. Polowałem na niego w tym mieście od wielu, wielu tygodni - to właśnie wtedy nauczyłem się twojego języka - ale on odnalazł mnie pierwszy. Był zawodowym zabójcą. Dopadł mnie znienacka i zamordował we śnie."{#zm1041_s8_1}'

    menu:
        '"Wpadliście do tego świata?"{#zm1041_s8_r9118}':
            # a31 # r9118
            jump zm1041_s16

        '"Polowałeś na zabójcę?"{#zm1041_s8_r9119}':
            # a32 # r9119
            jump zm1041_s16

        '"Rozumiem, ale czy wiesz, w jaki sposób twoje zwłoki zaczęły tutaj pracować?"{#zm1041_s8_r9120}':
            # a33 # r9120
            jump zm1041_s17

        '"Nieźle władasz językiem jak na kogoś, kto miał tak niewiele czasu na naukę."{#zm1041_s8_r9121}':
            # a34 # r9121
            jump zm1041_s18

        '"Rozumiem. Mam więcej pytań…"{#zm1041_s8_r9122}':
            # a35 # r9122
            jump zm1041_s14

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm1041_s8_r9123}':
            # a36 # r9123
            jump zm1041_dispose


# s9 # say9066
label zm1041_s9: # from 5.4 14.4
    nr '"Ten budynek? Nic takiego; słyszałem o nim, wiedziałem, że moje ciało będzie tu służyć, ale to wszystko… Niewiele więcej wiem o tym wielkim mieście, „Sigil“. Całe tygodnie spędziłem w nim szukając człowieka, z którym wpadłem do tego świata, i ucząc się tutejszego języka; mimo że było to dla mnie bolesne, nie miałem czasu na nic innego. A tyle mogłem się nauczyć od tych miliardów cudów, których pełno w takim miejscu…"{#zm1041_s9_1}'

    menu:
        '"Twoje ciało miało tutaj służyć? W jaki sposób do tego doszło?"{#zm1041_s9_r9124}':
            # a37 # r9124
            jump zm1041_s17

        '"Wpadliście do tego świata?"{#zm1041_s9_r9125}':
            # a38 # r9125
            jump zm1041_s16

        '"Nieźle władasz językiem jak na kogoś, kto miał tak niewiele czasu na naukę."{#zm1041_s9_r9126}':
            # a39 # r9126
            jump zm1041_s18

        '"Rozumiem. Mam więcej pytań…"{#zm1041_s9_r9127}':
            # a40 # r9127
            jump zm1041_s14

        '"Doskonale. Może znów porozmawiamy."{#zm1041_s9_r9128}':
            # a41 # r9128
            jump zm1041_dispose


# s10 # say9067
label zm1041_s10: # from 5.5 14.5
    nr '"Nie, to imię nic mi nie mówi. Przykro mi, że nie mogłem być tutaj pomocny."{#zm1041_s10_1}'

    menu:
        '"Rozumiem. Mam więcej pytań…"{#zm1041_s10_r9129}':
            # a42 # r9129
            jump zm1041_s14

        '"Doskonale. Może znów porozmawiamy."{#zm1041_s10_r9130}':
            # a43 # r9130
            jump zm1041_dispose


# s11 # say9068
label zm1041_s11: # from 5.3 14.3
    nr 'Najwyraźniej duch odczuwa chwilowy ból. "Ja… Mój duch zamieszkuje królestwo Znakomitego Sędziego pokoju, Yen-Wang-Yeh: Pałac Sądu."{#zm1041_s11_1}'

    menu:
        '"Czy coś jest nie tak? Czy to takie złe miejsce?"{#zm1041_s11_r9131}':
            # a44 # r9131
            jump zm1041_s15

        '"Rozumiem. Mam więcej pytań…"{#zm1041_s11_r9132}':
            # a45 # r9132
            jump zm1041_s14

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm1041_s11_r9133}':
            # a46 # r9133
            jump zm1041_dispose


# s12 # say9069
label zm1041_s12: # from 6.0 16.1
    nr '"Tak. Tam, skąd się wywodzę, nie jest to niczym niezwykłym. Moim obowiązkiem było trwać cały czas przy Panience Liu, nie tylko chroniąc ją przed wszelkim niebezpieczeństwem, ale także kształcąc i wychowując ją. Widzisz, cieszyłem się dobrą reputacją zarówno jako uczony, jak i szermierz. Chociaż być może przysłużyłbym się lepiej mojej pani, gdybym był lepszym szermierzem…"{#zm1041_s12_1}'

    menu:
        '"Przysłużyłbyś się jej lepiej? Czy w jakikolwiek sposób ją zawiodłeś?"{#zm1041_s12_r9134}':
            # a47 # r9134
            jump zm1041_s16

        '"Być może. Mam więcej pytań…"{#zm1041_s12_r9135}':
            # a48 # r9135
            jump zm1041_s14

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm1041_s12_r9136}':
            # a49 # r9136
            jump zm1041_dispose


# s13 # say9070
label zm1041_s13: # from 6.1
    nr '"Imponująco? Tak, być może nawet za bardzo, jak dla mnie. Ja… zawiodłem Panienkę Liu oraz Cenzora."{#zm1041_s13_1}'

    menu:
        '"Jak to?"{#zm1041_s13_r9137}':
            # a50 # r9137
            jump zm1041_s16

        '"Mam więcej pytań…"{#zm1041_s13_r9138}':
            # a51 # r9138
            jump zm1041_s14

        '"Rozumiem. Być może znów porozmawiamy."{#zm1041_s13_r9139}':
            # a52 # r9139
            jump zm1041_dispose


# s14 # say9071
label zm1041_s14: # from 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
    nr 'Duch kiwa potakująco głową, co jest dość nieoczekiwanie pełnym wdzięku ruchem, jak na takie pomarszczone zwłoki. "Proszę, pytaj o co chcesz."{#zm1041_s14_1}'

    menu:
        '"Kim jesteś?"{#zm1041_s14_r9140}':
            # a53 # r9140
            jump zm1041_s6

        '"Skąd jesteś?"{#zm1041_s14_r9141}':
            # a54 # r9141
            jump zm1041_s7

        '"W jaki sposób znalazłeś się w tym miejscu? To znaczy, jako zombie?"{#zm1041_s14_r9142}':
            # a55 # r9142
            jump zm1041_s8

        '"Gdzie ty… gdzie mieszka teraz twój… duch?"{#zm1041_s14_r9143}':
            # a56 # r9143
            jump zm1041_s11

        '"Co wiesz o tym miejscu?"{#zm1041_s14_r9144}':
            # a57 # r9144
            jump zm1041_s9

        '"Czy znasz kogoś o imieniu Farod?"{#zm1041_s14_r9145}' if zm1041Logic.r9145_condition():
            # a58 # r9145
            jump zm1041_s10

        '"O czym to mówiłeś, kiedy pojawiłeś się po raz pierwszy?"{#zm1041_s14_r9146}':
            # a59 # r9146
            jump zm1041_s26

        '"Nieważne. Żegnaj."{#zm1041_s14_r9147}':
            # a60 # r9147
            jump zm1041_dispose


# s15 # say9072
label zm1041_s15: # from 11.0
    nr '"No cóż, widzisz…" Duch przerywa na chwilę, aby się zastanowić, zacierając wyschnięte dłonie. "Kiedy przybyłem, po krótkim oczekiwaniu miałem być przeniesiony do mego ostatecznego, *prawdziwego* celu podróży. Jednakże, w trakcie przeprowadzania mnie przez Pałac, wytworzyło się jakieś zamieszanie i zostałem sam w bocznym pokoju. Obiecano mi, że za chwilę ktoś się mną zajmie."{#zm1041_s15_1}'

    menu:
        '"I…?"{#zm1041_s15_r9148}':
            # a61 # r9148
            jump zm1041_s19

        '"Ostateczny cel podróży? Gdzie miałeś być wysłany?"{#zm1041_s15_r9149}':
            # a62 # r9149
            jump zm1041_s20

        '"Chwileczkę… Mam inne pytania, zanim będziesz opowiadał dalej."{#zm1041_s15_r9150}':
            # a63 # r9150
            jump zm1041_s14

        '"Może reszty posłucham następnym razem. Żegnaj."{#zm1041_s15_r9151}':
            # a64 # r9151
            jump zm1041_dispose


# s16 # say9073
label zm1041_s16: # from 7.0 8.0 8.1 9.1 12.0 13.0
    nr '"Opowiem ci całą historię. Jako nauczyciel i ochroniarz Liu Xixi, zajmowałem się naturalnie zarówno jej wykształceniem, jak i ochroną. Pewnego pięknego wieczoru staliśmy sobie na balkonie nad Dziedzińcem, gdzie uczyłem ją o rozmaitych gwiazdozbiorach."{#zm1041_s16_1}'

    menu:
        '"Mów dalej, proszę."{#zm1041_s16_r9152}':
            # a65 # r9152
            jump zm1041_s21

        '"Nauczyciel *i* ochroniarz?"{#zm1041_s16_r9153}':
            # a66 # r9153
            jump zm1041_s12

        '"Może reszty posłucham następnym razem. Żegnaj."{#zm1041_s16_r9154}':
            # a67 # r9154
            jump zm1041_dispose


# s17 # say9074
label zm1041_s17: # from 8.2 9.0
    nr '"Ach, to. Pewnej nocy podeszła do mnie młoda dziewczyna na ulicy; była ona z organizacji o nazwie Grabarze, tej samej, która opiekuje się tym kompleksem budowli… Zaproponowała mi, aby - w zamian za małą sumkę - moje ciało mogło być… używane… po mojej śmierci."{#zm1041_s17_1}'

    menu:
        '"I nie wydało ci się to trochę dziwne?"{#zm1041_s17_r9155}':
            # a68 # r9155
            jump zm1041_s22

        '"Rozumiem. Następne pytanie, jeśli można…"{#zm1041_s17_r9156}':
            # a69 # r9156
            jump zm1041_s14

        '"To wszystko, co chciałem wiedzieć. Żegnaj."{#zm1041_s17_r9157}':
            # a70 # r9157
            jump zm1041_dispose


# s18 # say9075
label zm1041_s18: # from 8.3 9.2
    nr '"Lingwistyka, w rzeczy samej, to dziedzina szalenie mnie interesująca. Kiedy zostałem uczonym, odkryłem, że mogę uczyć się nowych języków bez większych kłopotów."{#zm1041_s18_1}'

    menu:
        '"To by wyjaśniało pewne rzeczy. Następne pytanie…"{#zm1041_s18_r9158}':
            # a71 # r9158
            jump zm1041_s14

        '"Rozumiem. Dziękuję za tę rozmowę. Żegnaj."{#zm1041_s18_r9159}':
            # a72 # r9159
            jump zm1041_dispose


# s19 # say9076
label zm1041_s19: # from 15.0 20.0
    nr '"No cóż, widzisz… nikt nigdy po mnie nie wrócił. Czekałem cichutko całe dnie, ale na próżno. W końcu opuściłem ten pokój, aby powłóczyć się po Pałacu, gdyż miałem nadzieję, że znajdę kogoś, kto mnie poprowadzi…" Wzdycha miękko, a wraz z wydechem wznosi się w powietrze słaba woń płynu balsamującego. "Jest tam 9001 pokoi; w każdym, przez który przechodziłem, kierowano mnie po prostu do następnego. Wygląda na to, że wpadłem w jakąś dziurę, przynajmniej chwilowo."{#zm1041_s19_1}'

    menu:
        '"Rozumiem, ale mam następne pytanie…"{#zm1041_s19_r9160}':
            # a73 # r9160
            jump zm1041_s14

        '"Czy mogę w jakikolwiek sposób pomóc?"{#zm1041_s19_r9161}':
            # a74 # r9161
            $ zm1041Logic.r9161_action()
            jump zm1041_s24

        '"Biedny głupcze… Zastanawiam się, jak długo pozwolą ci się tak wałęsać!"{#zm1041_s19_r9162}':
            # a75 # r9162
            $ zm1041Logic.r9162_action()
            jump zm1041_s25

        '"Życzę ci szczęścia. Żegnaj."{#zm1041_s19_r9163}':
            # a76 # r9163
            jump zm1041_dispose


# s20 # say9077
label zm1041_s20: # from 15.1
    nr '"No, nie wiem. To wszystko jest takie frustrujące!" Zatrzymuje się na chwilę, aby odzyskać panowanie nad sobą. Zesztywniałe stawy i ścięgna delikatnie skrzypią, rozluźniając się.{#zm1041_s20_1}'

    menu:
        '"Kontynuuj swoją opowieść, proszę."{#zm1041_s20_r9164}':
            # a77 # r9164
            jump zm1041_s19

        '"Wyobrażam sobie… Mam następne pytanie…"{#zm1041_s20_r9165}':
            # a78 # r9165
            jump zm1041_s14

        '"Być może reszty wysłucham następnym razem. Żegnaj."{#zm1041_s20_r9166}':
            # a79 # r9166
            jump zm1041_dispose


# s21 # say9078
label zm1041_s21: # from 16.0
    nr '"Oczywiście. Kiedy tak tam staliśmy, nagle dwóch zabójców zeskoczyło na balkon z dachu, najpewniej w celu zabicia lub porwania Panienki Liu. Krzycząc na straże, wyciągnąłem swój miecz i skoczyłem jej na ratunek. W walce, która się wywiązała, rozwaliliśmy balustradę na balkonie i cała nasza czwórka wpadła do Nefrytowego Portalu."{#zm1041_s21_1}'

    menu:
        '"Nefrytowego Portalu?"{#zm1041_s21_r9167}':
            # a80 # r9167
            jump zm1041_s23

        '"Chwileczkę… Mam inne pytanie, zanim będziesz mówił dalej."{#zm1041_s21_r9168}':
            # a81 # r9168
            jump zm1041_s14

        '"Być może reszty wysłucham następnym razem. Żegnaj."{#zm1041_s21_r9169}':
            # a82 # r9169
            jump zm1041_dispose


# s22 # say9079
label zm1041_s22: # from 17.0
    nr '"Być może z początku… w końcu cały ten pomysł jest dość makabryczny. Ale porozmawiawszy z nią przez chwilę zdałem sobie sprawę, że oni - Grabarze - mają w gruncie rzeczy takie samo podejście do umierania, jak ja. Moje ciało? To tylko narzędzie, nic więcej. Wierzę, że ta ich „Prawdziwa Śmierć“ jest jakimś wysublimowanym stanem, który ja, osobiście, chciałbym osiągnąć… pełnym wyzwoleniem i oderwaniem się od świata materialnego. Gdyby tak moje ciało, po wypełnieniu zadania jako moja śmiertelna powłoka, mogło jeszcze przysłużyć się i tutaj, tym lepiej." Duch uśmiecha się uprzejmie do ciebie.{#zm1041_s22_1}'

    menu:
        '"Rozumiem twój sposób myślenia. Mam następne pytanie…"{#zm1041_s22_r9170}':
            # a83 # r9170
            jump zm1041_s14

        '"Interesujące. Najlepiej będzie, jak teraz pójdę; żegnaj.?{#zm1041_s22_r9171}':
            # a84 # r9171
            jump zm1041_dispose


# s23 # say9080
label zm1041_s23: # from 21.0
    nr '"Och! Proszę wybaczyć to założenie z mojej strony… Nefrytowy Portal to okrągła sadzawka leżąca na Dziedzińcu. Wyłożona jest zielonymi i białymi kafelkami steatytu. Nazywamy ją Portalem, ponieważ jak niektórzy powiadają, czasami można dojrzeć błyski innych miejsc odbite w jej migotających wodach."{#zm1041_s23_1}'

    menu:
        '"Rozumiem. Proszę, kontynuuj swą opowieść."{#zm1041_s23_r9172}':
            # a85 # r9172
            jump zm1041_s27

        '"Zanim opowiesz coś więcej, mam inne pytania…"{#zm1041_s23_r9173}':
            # a86 # r9173
            jump zm1041_s14

        '"To wszystko, co na razie chciałem wiedzieć. Żegnaj."{#zm1041_s23_r9174}':
            # a87 # r9174
            jump zm1041_dispose


# s24 # say9081
label zm1041_s24: # from 19.1
    nr '"Twoja oferta jest nazbyt łaskawa. Obawiam się, jednakże, że nic nie możesz zrobić… Jestem pewny, że za jakiś czas wyruszę w dalszą drogę. Jednakowoż dziękuję raz jeszcze."{#zm1041_s24_1}'

    menu:
        '"Oczywiście. Co powiesz na następne pytanie…"{#zm1041_s24_r9175}':
            # a88 # r9175
            jump zm1041_s14

        '"Nie ma strachu. Pora się stąd zbierać. Do zobaczenia."{#zm1041_s24_r9176}':
            # a89 # r9176
            jump zm1041_dispose


# s25 # say9082
label zm1041_s25: # from 19.2 33.1 35.1
    nr 'Duch spogląda na ciebie zimno; w trupich oczach zapalają się złowrogie światełka; chyba go obraziłeś.{#zm1041_s25_1}'

    menu:
        '"Wybacz, proszę. Czy wolno mi zapytać cię o coś jeszcze?"{#zm1041_s25_r9177}':
            # a90 # r9177
            jump zm1041_s14

        'Zostaw ducha unoszącego się w powietrzu i odejdź.{#zm1041_s25_r9178}':
            # a91 # r9178
            jump zm1041_dispose


# s26 # say9083
label zm1041_s26: # from 14.6
    nr '"Ach, to… ach… to taki wiersz. Trudny do przetłumaczenia. Masz może jakieś inne pytanie?" Uśmiecha się do ciebie niepewnie.{#zm1041_s26_1}'

    menu:
        '"Owszem, mam."{#zm1041_s26_r9179}':
            # a92 # r9179
            jump zm1041_s14

        '"Nie… ale chciałbym dowiedzieć się czegoś więcej o tym wierszu."{#zm1041_s26_r9180}':
            # a93 # r9180
            jump zm1041_s28

        '"Nie. W rzeczy samej sądzę, że wychodzę. Żegnaj."{#zm1041_s26_r9181}':
            # a94 # r9181
            jump zm1041_dispose


# s27 # say9084
label zm1041_s27: # from 23.0
    nr '"Jak już mówiłem, wpadliśmy do Nefrytowego Portalu. Nigdy wcześniej nie sądziłem, że to *jest* portal w jakimkolwiek znaczeniu tego słowa, ale z całą pewnością to był portal! Nagle okazało się, że leżę w jakimś nieznanym zaułku ze złamaną nogą. Znów się obejrzałem, tym razem w porę, aby dojrzeć, jak zabójcy uciekają. Jeden z nich miał Liu Xixi przełożoną przez ramię."{#zm1041_s27_1}'

    menu:
        '"Doprawdy dziwne. Mów dalej, proszę."{#zm1041_s27_r9182}':
            # a95 # r9182
            jump zm1041_s31

        '"Och. Zanim będziesz mówił dalej, mam inne pytania…"{#zm1041_s27_r9183}':
            # a96 # r9183
            jump zm1041_s14

        '"Rozumiem. Dziękuję, ale najlepiej będzie, jeżeli teraz pójdę."{#zm1041_s27_r9184}':
            # a97 # r9184
            jump zm1041_dispose


# s28 # say9085
label zm1041_s28: # from 26.1
    nr '"No dobrze." Namyśla się przez chwilę, stukając końcówkami kościstych palców o siebie. Po chwili zaczyna mówić raz jeszcze rytmicznym, miarowym głosem:  "Trudno jest spotkać się, jak i trudno się rozstać. Wiatr północny zelżał; setki kwiatów blakną. Gdy umrą robaki Wiosny, jedwab nigdy nie wzejdzie. Gdy świecy wosk stanie się popiołem, ustaną łzy."  Uśmiecha się do ciebie.{#zm1041_s28_1}'

    menu:
        '"Ach… mam następne pytanie."{#zm1041_s28_r9185}':
            # a98 # r9185
            jump zm1041_s14

        '"Interesujące. Co to znaczy?"{#zm1041_s28_r9186}':
            # a99 # r9186
            jump zm1041_s29

        '"Więc powiadasz, że powinienem był zostawić twego ducha w spokoju. Czy obraziłem cię, wzywając cię tutaj?"{#zm1041_s28_r9187}' if zm1041Logic.r9187_condition():
            # a100 # r9187
            jump zm1041_s30

        '"Och. Dziękuję za wyjaśnienia. Żegnaj."{#zm1041_s28_r9188}':
            # a101 # r9188
            jump zm1041_dispose


# s29 # say9086
label zm1041_s29: # from 28.1
    nr '"No cóż, ze wstydem przyznaję, że była to subtelna próba powiedzenia… że być może najlepiej byłoby pozostawić dusze umarłych w spokoju. Ja już dłużej nie chcę mieć nic wspólnego z tym…" Duch robi zamaszysty ruch ręką, wskazując wszystko dookoła. "…światem."{#zm1041_s29_1}'

    menu:
        '"Hmm, rozumiem. Mam jeszcze coś, o co chcę cię zapytać."{#zm1041_s29_r9189}':
            # a102 # r9189
            jump zm1041_s14

        '"Rozumiem. Żegnaj zatem."{#zm1041_s29_r9190}':
            # a103 # r9190
            jump zm1041_dispose


# s30 # say9087
label zm1041_s30: # from 28.2
    nr '"Ach… nie. Nie było moim zamiarem być tak bezpośrednim; rozumiesz, unikam konfrontacji. Tylko że nie chcę już dłużej mieć nic wspólnego z tym…" Duch robi zamaszysty ruch ręką, wskazując wszystko dookoła. "…światem."{#zm1041_s30_1}'

    menu:
        '"Hmm, rozumiem. Mam jeszcze coś, o co chcę cię zapytać."{#zm1041_s30_r9191}':
            # a104 # r9191
            jump zm1041_s14

        '"Rozumiem. Żegnaj zatem."{#zm1041_s30_r9192}':
            # a105 # r9192
            jump zm1041_dispose


# s31 # say9088
label zm1041_s31: # from 27.0
    nr '"Cóż, to prawie wszystko. Czując ból, kuśtykałem to tu, to tam, aż znalazłem ludzi, którzy uleczyli moją nogę; jako zapłatę wzięli, co ze sobą miałem. W sumie niewiele. Od tych uzdrowicieli, a i od innych też, nauczyłem się języka tutejszych ludzi, cały czas przetrząsając okolicę w poszukiwaniu tych dwóch zabójców i mojej podopiecznej."{#zm1041_s31_1}'

    menu:
        '"Więc nigdy ich nie znalazłeś?"{#zm1041_s31_r9193}':
            # a106 # r9193
            jump zm1041_s32

        '"Hmmm. Wiesz, to dziwne, jak szybko dałeś radę opanować ten język…"{#zm1041_s31_r9194}':
            # a107 # r9194
            jump zm1041_s38

        '"Och. Zanim dokończysz swoją odpowiedź, mam inne pytania…"{#zm1041_s31_r9195}':
            # a108 # r9195
            jump zm1041_s14

        '"Reszty będę musiał wysłuchać następnym razem; żegnaj."{#zm1041_s31_r9196}':
            # a109 # r9196
            jump zm1041_dispose


# s32 # say9089
label zm1041_s32: # from 31.0 38.0
    nr '"Jednego z nich schwytałem, ale nie chciał nic powiedzieć. Zabiłem go i zatrzymałem sobie jego głowę w jedwabnym worku, aby móc przynieść Cenzorowi, kiedy będę oddawać jego córkę." Marszczy brwi przez chwilę, a potem mówi dalej. "Ten drugi zabójca… umknął mi. Tak naprawdę, zrobił coś jeszcze; zabił mnie, zanim ja zdążyłem zabić jego i ocalić moją podopieczną. To smutne, ale teraz mam to już za sobą."{#zm1041_s32_1}'

    menu:
        '"Czy wiedziałbyś, w jaki sposób powrócić do swej krainy, gdybyś uratował tę… „Xi-xi“?"{#zm1041_s32_r9197}':
            # a110 # r9197
            jump zm1041_s33

        '"Interesująca historia. Jednakowoż ma inne pytania…"{#zm1041_s32_r9198}':
            # a111 # r9198
            jump zm1041_s14

        '"Fascynujące. Teraz jednak lepiej będzie, jak cię zostawię. Żegnaj."{#zm1041_s32_r9199}':
            # a112 # r9199
            jump zm1041_dispose


# s33 # say9090
label zm1041_s33: # from 32.0
    nr '"Nie, ale pewien jestem, że odnalazłbym drogę. W sumie, to nie ma znaczenia."{#zm1041_s33_1}'

    menu:
        '"Zastanawiam się, czy wciąż są w mieście. Może mógłbym ich odnaleźć i pomóc tej dziewczynie."{#zm1041_s33_r9200}':
            # a113 # r9200
            $ zm1041Logic.r9200_action()
            jump zm1041_s34

        '"Z całą pewnością wydaje ci się łatwym tak po prostu nie dbać o swoje obowiązki ponieważ jest się martwym. Nie wiem, czy mógłbym sobie na coś takiego pozwolić."{#zm1041_s33_r9201}':
            # a114 # r9201
            $ zm1041Logic.r9201_action()
            jump zm1041_s25

        '"Interesujące. Pozwól, że zapytam o coś jeszcze…"{#zm1041_s33_r9202}':
            # a115 # r9202
            jump zm1041_s14

        '"Hmmm. Odchodzę. Życzę szczęścia."{#zm1041_s33_r9203}':
            # a116 # r9203
            jump zm1041_dispose


# s34 # say9091
label zm1041_s34: # from 33.0
    nr '"Twoja propozycja dobrze świadczy o twojej szlachetności… jednakowoż, nie mniej niż siedemdziesiąt pięć lat upłynęło, odkąd zostałem zamordowany. Człowiek, który mnie zabił, od dawna już nie żyje, Xixi najprawdopodobniej też."{#zm1041_s34_1}'

    menu:
        '"Hmmm. A zatem nieważne. Mam następne pytanie…"{#zm1041_s34_r9205}':
            # a117 # r9205
            jump zm1041_s14

        '"A zatem nic nie szkodzi. Żegnaj."{#zm1041_s34_r9206}':
            # a118 # r9206
            jump zm1041_dispose


# s35 # say9092
label zm1041_s35: # -
    nr '"Zabójca ów jest podobny do mnie, a na czole wytatuowany ma Kwitnący Lotos." Widząc twoje zmieszanie, dodaje "To rodzaj kwiatu, z siedmioma płatkami. Liu Xixi to młoda dziewczyna; ma ledwie czternaście lat. Być może ona albo zabójca znają drogę powrotną i sposób ponownego uruchomienia całego mechanizmu."{#zm1041_s35_1}'

    menu:
        '"Jeżeli ją zobaczę, zrobię wszystko w mej mocy, aby ulżyć twym wspomnieniom o niej."{#zm1041_s35_r9207}':
            # a119 # r9207
            $ zm1041Logic.r9207_action()
            jump zm1041_s36

        '"Nieważne. Nie mam na to czasu."{#zm1041_s35_r9208}':
            # a120 # r9208
            $ zm1041Logic.r9208_action()
            jump zm1041_s25

        '"W porządku. Mam następne pytanie…"{#zm1041_s35_r9209}':
            # a121 # r9209
            $ zm1041Logic.r9209_action()
            jump zm1041_s14

        '"To wszystko, czego mi trzeba. Żegnaj."{#zm1041_s35_r9210}':
            # a122 # r9210
            $ zm1041Logic.r9210_action()
            jump zm1041_dispose


# s36 # say9093
label zm1041_s36: # from 35.0
    nr '"Jesteś człowiekiem honoru i wielkiej uprzejmości, panie. Nie czyń jednakowoż tego dla mnie… twoja pomoc najwięcej będzie znaczyć dla dziewczyny i jej ojca."{#zm1041_s36_1}'

    menu:
        '"Doskonale. Mam następne pytanie…"{#zm1041_s36_r9211}':
            # a123 # r9211
            jump zm1041_s14

        '"Rozumiem. Żegnaj, duchu."{#zm1041_s36_r9212}':
            # a124 # r9212
            jump zm1041_dispose


# s37 # say9094
label zm1041_s37: # from 0.4 # IF ~  Global("Bei","GLOBAL",1)
    nr '"Z pewnością nie spodziewałem się ujrzeć cię ponownie." Duch skłania się uprzejmie, ale jego oczy pozostają bez wyrazu. "Czego chcesz ode mnie tym razem?"{#zm1041_s37_1}'

    menu:
        '"Mam pytanie…"{#zm1041_s37_r9213}':
            # a125 # r9213
            jump zm1041_s14

        '"Niczego. Zostawiam cię w spokoju."{#zm1041_s37_r9214}':
            # a126 # r9214
            jump zm1041_dispose


# s38 # say9718
label zm1041_s38: # from 31.1
    nr '"Lingwistyka, w rzeczy samej, to dziedzina szalenie mnie interesująca. Kiedy zostałem uczonym, odkryłem, że mogę uczyć się nowych języków bez większych kłopotów."{#zm1041_s38_1}'

    menu:
        '"To wyjaśniałoby pewne rzeczy. Więc nigdy nie znalazłeś zabójców?"{#zm1041_s38_r9719}':
            # a127 # r9719
            jump zm1041_s32

        '"Rozumiem. Pozwól, że zapytam o coś jeszcze…"{#zm1041_s38_r9720}':
            # a128 # r9720
            jump zm1041_s14

        '"Rozumiem. Dziękuję za rozmowę. Żegnaj."{#zm1041_s38_r9721}':
            # a129 # r9721
            jump zm1041_dispose
