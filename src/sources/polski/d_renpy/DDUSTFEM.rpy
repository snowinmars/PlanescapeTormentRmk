init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dustfem_logic import DustfemLogic
    dustfemLogic = DustfemLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUSTFEM.DLG
# ###


# s0 # say298
label dustfem_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Kobieta Grabarz zdaje się ciebie nie zauważać. Najwidoczniej bierze cię za jednego z niumarłych pracowników.{#dustfem_s0_1}'

    menu:
        '"Witaj."{#dustfem_s0_r299}':
            # a0 # r299
            jump dustfem_s1

        '"Kim jesteś?"{#dustfem_s0_r318}':
            # a1 # r318
            jump dustfem_s1

        '"Co to za miejsce?"{#dustfem_s0_r1168}':
            # a2 # r1168
            jump dustfem_s1

        '"Mam kilka pytań…"{#dustfem_s0_r1169}':
            # a3 # r1169
            jump dustfem_s1

        'Zostaw ją w spokoju.{#dustfem_s0_r1170}':
            # a4 # r1170
            jump dustfem_dispose


# s1 # say1171
label dustfem_s1: # from 0.0 0.1 0.2 0.3
    nr 'Kobieta podskakuje, po czym unosi gwałtownie głowę, by na ciebie spojrzeć. Zdaje się być zszokowana - twoje przebranie musi być naprawdę dobre.{#dustfem_s1_1}'

    menu:
        'Wykorzystaj to, że jest zaskoczona i skręć jej kark, zanim zdąży zawołać.{#dustfem_s1_r1172}':
            # a5 # r1172
            jump dustfem_s41

        '"Mam kilka pytań."{#dustfem_s1_r1174}':
            # a6 # r1174
            jump dustfem_s2

        'Odejdź. Jak najszybciej.{#dustfem_s1_r1175}':
            # a7 # r1175
            jump dustfem_s2


# s2 # say1176
label dustfem_s2: # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    nr 'Grabarz cofa się o krok, po czym klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego żelaznego dzwonu.{#dustfem_s2_1}'

    menu:
        '"No dobrze…"{#dustfem_s2_r1225}':
            # a8 # r1225
            $ dustfemLogic.r1225_action()
            jump dustfem_dispose


# s3 # say1177
label dustfem_s3: # externs morte_s84
    nr 'Ta blada kobieta ubrana jest w długie, ciemne szaty. Wokół niej roztacza się słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięta swoimi obowiązkami.{#dustfem_s3_1}'

    menu:
        '"Witaj."{#dustfem_s3_r1226}':
            # a9 # r1226
            jump dustfem_s4

        '"Kim jesteś?"{#dustfem_s3_r1227}':
            # a10 # r1227
            jump dustfem_s4

        '"Co to za miejsce?"{#dustfem_s3_r1228}':
            # a11 # r1228
            jump dustfem_s4

        '"Mam kilka pytań…"{#dustfem_s3_r1229}':
            # a12 # r1229
            jump dustfem_s4

        'Zostaw ją w spokoju.{#dustfem_s3_r1230}':
            # a13 # r1230
            jump dustfem_dispose


# s4 # say1178
label dustfem_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Kobieta unosi powoli głowę i obraca się w twym kierunku. "Zgubiłeś się?"{#dustfem_s4_1}'

    menu:
        '"Tak."{#dustfem_s4_r1231}':
            # a14 # r1231
            jump dustfem_s5

        '"Nie."{#dustfem_s4_r1232}':
            # a15 # r1232
            jump dustfem_s6

        '"Nie, nie zgubiłem się. Mam kilka pytań…"{#dustfem_s4_r1233}':
            # a16 # r1233
            jump dustfem_s6

        '"Żegnaj."{#dustfem_s4_r1234}':
            # a17 # r1234
            jump dustfem_s2


# s5 # say1179
label dustfem_s5: # from 4.0 16.2 51.1
    nr '"Wezwę straż, by cię wyprowadziła. Poczekaj chwilę."{#dustfem_s5_1}'

    menu:
        'Skręć jej kark, zanim zdąży zawołać.{#dustfem_s5_r1235}' if dustfemLogic.r1235_condition():
            # a18 # r1235
            jump dustfem_s44

        'Skręć jej kark, zanim zdąży zawołać.{#dustfem_s5_r1236}' if dustfemLogic.r1236_condition():
            # a19 # r1236
            jump dustfem_s41

        'Odejdź. Jak najszybciej.{#dustfem_s5_r1237}':
            # a20 # r1237
            jump dustfem_s2

        'Poczekaj.{#dustfem_s5_r1238}':
            # a21 # r1238
            jump dustfem_s2


# s6 # say1180
label dustfem_s6: # from 4.1 4.2 51.2 51.3
    nr '"Skoro się nie zgubiłeś, to co tutaj robisz?"{#dustfem_s6_1}'

    menu:
        '"To nie twoja sprawa."{#dustfem_s6_r1239}':
            # a22 # r1239
            jump dustfem_s7

        '"Obudziłem się na jednym ze stołów w sali przygotowawczej."{#dustfem_s6_r1240}':
            # a23 # r1240
            jump dustfem_s8

        '"Przyszedłem tu, żeby się z kimś zobaczyć."{#dustfem_s6_r1241}':
            # a24 # r1241
            jump dustfem_s9

        '"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."{#dustfem_s6_r1242}' if dustfemLogic.r1242_condition():
            # a25 # r1242
            jump dustfem_s16

        'Odejdź. Jak najszybciej.{#dustfem_s6_r1243}':
            # a26 # r1243
            jump dustfem_s2


# s7 # say1181
label dustfem_s7: # from 6.0 9.0 20.0
    nr '"Obawiam się, że to jest moja sprawa. Być może straż pomoże rozwiązać ci język." Kobieta cofa się o krok. Wygląda na to, że chce wezwać straże.{#dustfem_s7_1}'

    menu:
        'Skręć jej kark, zanim zdąży zawołać.{#dustfem_s7_r1244}' if dustfemLogic.r1244_condition():
            # a27 # r1244
            jump dustfem_s44

        'Skręć jej kark, zanim zdąży zawołać.{#dustfem_s7_r1245}' if dustfemLogic.r1245_condition():
            # a28 # r1245
            jump dustfem_s41

        '"No to ich wezwij. Chętnie się z nimi spotkam."{#dustfem_s7_r1246}':
            # a29 # r1246
            $ dustfemLogic.r1246_action()
            jump dustfem_dispose


# s8 # say1182
label dustfem_s8: # from 6.1 16.0 20.1
    nr '"Żarty sobie stroisz? Może chcesz się nimi podzielić ze strażą?" Grabarz cofa się o krok. Wygląda na to, że chce wezwać straże."{#dustfem_s8_1}'

    menu:
        'Skręć jej kark, zanim zdąży zawołać.{#dustfem_s8_r1247}' if dustfemLogic.r1247_condition():
            # a30 # r1247
            jump dustfem_s44

        'Skręć jej kark, zanim zdąży zawołać.{#dustfem_s8_r1248}' if dustfemLogic.r1248_condition():
            # a31 # r1248
            jump dustfem_s41

        '"No to ich wezwij. Chętnie się z nimi spotkam."{#dustfem_s8_r1249}':
            # a32 # r1249
            $ dustfemLogic.r1249_action()
            jump dustfem_dispose


# s9 # say1183
label dustfem_s9: # from 6.2 20.2
    nr '"Z kim się chcesz zobaczyć?"{#dustfem_s9_1}'

    menu:
        '"To nie twoja sprawa."{#dustfem_s9_r1251}':
            # a33 # r1251
            jump dustfem_s7

        '"Mam się zobaczyć z Dhallem."{#dustfem_s9_r1253}' if dustfemLogic.r1253_condition():
            # a34 # r1253
            jump dustfem_s10

        '"Mam się zobaczyć z Dhallem."{#dustfem_s9_r1255}' if dustfemLogic.r1255_condition():
            # a35 # r1255
            jump dustfem_s11

        '"Jestem tu, żeby się zobaczyć z Deionarrą."{#dustfem_s9_r1258}' if dustfemLogic.r1258_condition():
            # a36 # r1258
            jump dustfem_s13

        '"Jestem tu, żeby się zobaczyć z Deionarrą."{#dustfem_s9_r4336}' if dustfemLogic.r4336_condition():
            # a37 # r4336
            jump dustfem_s12

        '"Jestem tu, żeby się zobaczyć z Soem."{#dustfem_s9_r33224}' if dustfemLogic.r33224_condition():
            # a38 # r33224
            jump dustfem_s15

        '"Jestem tu, żeby się zobaczyć z Soem."{#dustfem_s9_r33226}' if dustfemLogic.r33226_condition():
            # a39 # r33226
            jump dustfem_s14

        'Kłamstwo: "Uch… z Adahnem. Nadal tu pracuje, czy…?"{#dustfem_s9_r33227}' if dustfemLogic.r33227_condition():
            # a40 # r33227
            $ dustfemLogic.r33227_action()
            jump dustfem_s21

        'Kłamstwo: "Uch… z Adahnem. Nadal tu pracuje, czy…?"{#dustfem_s9_r33229}' if dustfemLogic.r33229_condition():
            # a41 # r33229
            jump dustfem_s21

        '"Uch, z nikim. Przejęzyczyłem się."{#dustfem_s9_r33231}':
            # a42 # r33231
            jump dustfem_s20


# s10 # say1184
label dustfem_s10: # from 9.1
    nr '"Znajdziesz go w sali odbiorczej na tym piętrze. Muszę cię jednak przestrzec… Dhall jest wyjątkowo zajęty swoimi obowiązkami, poza tym nie jest okazem najlepszego zdrowia. Jeśli nie masz nadzwyczaj pilnej sprawy, lepiej byłoby mu nie przeszkadzać."{#dustfem_s10_1}'

    menu:
        '"Świetnie. Dzięki za informacje."{#dustfem_s10_r1259}':
            # a43 # r1259
            jump dustfem_s48


# s11 # say1185
label dustfem_s11: # from 9.2
    nr '"Jest najprawdopodobniej w sali odbiorczej na pierwszym piętrze. Jest jednak wyjątkowo zajęty i nie grzeszy zbytnim zdrowiem. Jeśli nie masz nadzwyczaj pilnej sprawy, lepiej byłoby mu nie przeszkadzać."{#dustfem_s11_1}'

    menu:
        '"Świetnie. Dzięki za informacje."{#dustfem_s11_r1260}':
            # a44 # r1260
            jump dustfem_s48


# s12 # say1186
label dustfem_s12: # from 9.4 19.1
    nr '"Deionarra? Wiem, że w sali pamięci na parterze pochowano jakąś kobietę. Może to była ona?"{#dustfem_s12_1}'

    menu:
        '"Najprawdopodobniej. Dzięki."{#dustfem_s12_r1261}':
            # a45 # r1261
            jump dustfem_s48


# s13 # say1187
label dustfem_s13: # from 9.3
    nr '"Deionarra? Wiem, że w północno-zachodniej sali pamięci pochowano jakąś kobietę. Może to była ona?"{#dustfem_s13_1}'

    menu:
        '"Najprawdopodobniej. Dzięki."{#dustfem_s13_r1262}':
            # a46 # r1262
            jump dustfem_s48


# s14 # say1188
label dustfem_s14: # from 9.6
    nr '"Sądzę, że Soe znajduje się gdzieś w pobliżu frontowej bramy na parterze. Pracuje jako przewodnik w godzinach antyszczytu."{#dustfem_s14_1}'

    menu:
        '"Dobrze. Dzięki."{#dustfem_s14_r1263}':
            # a47 # r1263
            jump dustfem_s48


# s15 # say1189
label dustfem_s15: # from 9.5
    nr '"Sądzę, że znajdziesz go w pobliżu frontowej bramy. Pracuje jako przewodnik w godzinach antyszczytu."{#dustfem_s15_1}'

    menu:
        '"Dobrze. Dzięki."{#dustfem_s15_r1264}':
            # a48 # r1264
            jump dustfem_s48


# s16 # say1190
label dustfem_s16: # from 6.3 20.3
    nr '"Kto miał zostać pochowany? Być może posługi te odbywają się w innym miejscu Kostnicy."{#dustfem_s16_1}'

    menu:
        '"Źle mnie zrozumiałaś… To MNIE chciano przez pomyłkę pochować."{#dustfem_s16_r1265}':
            # a49 # r1265
            jump dustfem_s8

        '"Możliwe. W którym miejscu odbywają się te posługi?"{#dustfem_s16_r1266}':
            # a50 # r1266
            jump dustfem_s17

        '"Czy mogłabyś wskazać mi drogę do wyjścia?"{#dustfem_s16_r1267}':
            # a51 # r1267
            jump dustfem_s5


# s17 # say1191
label dustfem_s17: # from 16.1
    nr '"W obwodzie Kostnicy znajduje się kilka komnat pogrzebowych, które ciągną się wzdłuż krzywizny ścian na parterze i pierwszym piętrze. Znasz imię zmarłego?"{#dustfem_s17_1}'

    menu:
        '"Nie."{#dustfem_s17_r1268}':
            # a52 # r1268
            jump dustfem_s18

        '"Tak."{#dustfem_s17_r1269}':
            # a53 # r1269
            jump dustfem_s19


# s18 # say1192
label dustfem_s18: # from 17.0
    nr '"W takim razie powinieneś skonsultować się z którymś z przewodników przy frontowej bramie. Powinni ci pomóc."{#dustfem_s18_1}'

    menu:
        '"Dobrze. Dzięki."{#dustfem_s18_r1270}':
            # a54 # r1270
            jump dustfem_dispose


# s19 # say1193
label dustfem_s19: # from 17.1
    nr 'Grabarz czeka.{#dustfem_s19_1}'

    menu:
        '"Wybacz… Przejęzyczyłem się. Nie znam imienia zmarłego."{#dustfem_s19_r1271}':
            # a55 # r1271
            jump dustfem_s20

        '"To imię to Deionarra."{#dustfem_s19_r1272}' if dustfemLogic.r1272_condition():
            # a56 # r1272
            jump dustfem_s12

        'Kłamstwo: "To imię to… uch, Adahn."{#dustfem_s19_r1273}' if dustfemLogic.r1273_condition():
            # a57 # r1273
            $ dustfemLogic.r1273_action()
            jump dustfem_s21

        'Kłamstwo: "To imię to… uch, Adahn."{#dustfem_s19_r1274}' if dustfemLogic.r1274_condition():
            # a58 # r1274
            jump dustfem_s21

        'Przybliż się tak, jakbyś chciał jej coś szepnąć na ucho, po czym skręć jej kark.{#dustfem_s19_r1275}' if dustfemLogic.r1275_condition():
            # a59 # r1275
            jump dustfem_s44

        'Przybliż się tak, jakbyś chciał jej coś szepnąć na ucho, po czym skręć jej kark.{#dustfem_s19_r1276}' if dustfemLogic.r1276_condition():
            # a60 # r1276
            jump dustfem_s45

        'Uciekaj.{#dustfem_s19_r1277}':
            # a61 # r1277
            jump dustfem_s2


# s20 # say1194
label dustfem_s20: # from 9.9 19.0
    nr '"Rozumiem. Powiedz teraz, w jakiej sprawie tu jesteś?"{#dustfem_s20_1}'

    menu:
        '"Nie twój interes."{#dustfem_s20_r1278}':
            # a62 # r1278
            jump dustfem_s7

        '"Obudziłem się na jednym ze stołów w sali przygotowawczej."{#dustfem_s20_r1279}':
            # a63 # r1279
            jump dustfem_s8

        '"Przyszedłem tu, żeby się z kimś zobaczyć."{#dustfem_s20_r1280}':
            # a64 # r1280
            jump dustfem_s9

        '"Znalazłem się tu w związku z pogrzebem, ale zaszła najwyraźniej jakaś pomyłka."{#dustfem_s20_r1281}' if dustfemLogic.r1281_condition():
            # a65 # r1281
            jump dustfem_s16

        'Uciekaj.{#dustfem_s20_r1282}':
            # a66 # r1282
            jump dustfem_s2


# s21 # say1195
label dustfem_s21: # from 9.7 9.8 19.2 19.3
    nr '"To imię jest mi obce. Skonsultuj się w tej sprawie z jednym z przewodników przy frontowej bramie… Oni będą w stanie pokierować cię lepiej niż ja."{#dustfem_s21_1}'

    menu:
        '"Dobrze. Zrobię tak. Żegnaj."{#dustfem_s21_r1283}':
            # a67 # r1283
            jump dustfem_dispose


# s22 # say1196
label dustfem_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Ta blada kobieta ubrana jest w długie, ciemne szaty. Wokół niej roztacza się słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięta swoimi obowiązkami.{#dustfem_s22_1}'

    menu:
        '"Witaj."{#dustfem_s22_r1284}':
            # a68 # r1284
            jump dustfem_s23

        'Zostaw ją w spokoju.{#dustfem_s22_r1285}':
            # a69 # r1285
            jump dustfem_dispose


# s23 # say1197
label dustfem_s23: # from 22.0
    nr 'Odwraca się powoli i zerka na twoje szaty. "Witaj, bracie wtajemniczony."{#dustfem_s23_1}'

    menu:
        '"Kim jesteś"?{#dustfem_s23_r1286}':
            # a70 # r1286
            jump dustfem_s24

        '"Co to za miejsce?"{#dustfem_s23_r1287}':
            # a71 # r1287
            jump dustfem_s25

        '"Mam kilka pytań…"{#dustfem_s23_r1288}':
            # a72 # r1288
            jump dustfem_s26

        'Zostaw ją w spokoju.{#dustfem_s23_r1289}':
            # a73 # r1289
            jump dustfem_dispose


# s24 # say1198
label dustfem_s24: # from 23.0
    nr '"Mam do ciebie takie samo pytanie. Nie znam twojej twarzy. Kim jesteś?"{#dustfem_s24_1}'

    menu:
        'Kłamstwo: "To imię to… uch, Adahn."{#dustfem_s24_r1290}' if dustfemLogic.r1290_condition():
            # a74 # r1290
            $ dustfemLogic.r1290_action()
            jump dustfem_s49

        'Kłamstwo: "To imię to… uch, Adahn."{#dustfem_s24_r1291}' if dustfemLogic.r1291_condition():
            # a75 # r1291
            jump dustfem_s49

        '"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."{#dustfem_s24_r1292}' if dustfemLogic.r1292_condition():
            # a76 # r1292
            jump dustfem_s47

        '"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."{#dustfem_s24_r1293}' if dustfemLogic.r1293_condition():
            # a77 # r1293
            jump dustfem_s46


# s25 # say1199
label dustfem_s25: # from 23.1
    nr '"To Kostnica…" Kobieta wpatruje się w ciebie przez chwilę, jakby ważyła to, co właśnie powiedziałeś. "Mógłbyś powtórzyć, jak masz na imię?"{#dustfem_s25_1}'

    menu:
        'Kłamstwo: "To imię to… uch, Adahn."{#dustfem_s25_r1294}' if dustfemLogic.r1294_condition():
            # a78 # r1294
            $ dustfemLogic.r1294_action()
            jump dustfem_s49

        'Kłamstwo: "To imię to… uch, Adahn."{#dustfem_s25_r1295}' if dustfemLogic.r1295_condition():
            # a79 # r1295
            jump dustfem_s49

        '"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."{#dustfem_s25_r1296}' if dustfemLogic.r1296_condition():
            # a80 # r1296
            jump dustfem_s47

        '"Moje imię to nie twoja sprawa. Muszę już iść. Żegnaj."{#dustfem_s25_r1297}' if dustfemLogic.r1297_condition():
            # a81 # r1297
            jump dustfem_s46


# s26 # say1200
label dustfem_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Kobieta czeka cierpliwe, aż zaczniesz kontynuować.{#dustfem_s26_1}'

    menu:
        '"Mogłabyś mi powiedzieć, jak stąd wyjść?"{#dustfem_s26_r1298}':
            # a82 # r1298
            jump dustfem_s27

        '"Czy znasz kogoś o imieniu Farod?"{#dustfem_s26_r1299}':
            # a83 # r1299
            jump dustfem_s28

        '"Zgubiłem dziennik. Nie widziałaś go czasem?"{#dustfem_s26_r1300}':
            # a84 # r1300
            jump dustfem_s39

        '"Nieważne. Przepraszam, że ci przeszkodziłem."{#dustfem_s26_r1328}':
            # a85 # r1328
            jump dustfem_s48


# s27 # say1201
label dustfem_s27: # from 26.0
    nr '"Najprościej będzie wyjść przez frontową bramę. Znajduje się ona na parterze."{#dustfem_s27_1}'

    menu:
        '"Mam jeszcze kilka pytań…"{#dustfem_s27_r1329}':
            # a86 # r1329
            jump dustfem_s26

        '"Dziękuję. Żegnaj."{#dustfem_s27_r1330}':
            # a87 # r1330
            jump dustfem_s48


# s28 # say1202
label dustfem_s28: # from 26.1
    nr '"To imię…" Grabarz przerywa na chwilę. "To imię *brzmi* znajomo… Wydaje mi się, że przypominam sobie Zbieracza, który się tak nazywał. Skryba Dhall powinien o nim wiedzieć."{#dustfem_s28_1}'

    menu:
        '"Zbieracza?"{#dustfem_s28_r1331}':
            # a88 # r1331
            jump dustfem_s29

        '"Dhall?"{#dustfem_s28_r1334}':
            # a89 # r1334
            jump dustfem_s30

        '"Mam jeszcze kilka pytań…"{#dustfem_s28_r1338}':
            # a90 # r1338
            jump dustfem_s26

        '"Dziękuję za poświęcony mi czas. Żegnaj."{#dustfem_s28_r1395}':
            # a91 # r1395
            jump dustfem_s48


# s29 # say1203
label dustfem_s29: # from 28.0
    nr '"Zbieracze… Zabierają z ulic Sigil umarłych i przynoszą ich do Kostnicy." Grabarz przerywa, po czym marszczy brwi. "Nie jesteś stąd. Kim jesteś?"{#dustfem_s29_1}'

    menu:
        '"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."{#dustfem_s29_r1396}' if dustfemLogic.r1396_condition():
            # a92 # r1396
            jump dustfem_s50

        '"Jestem… tu nowy. Sta… ram się przyswoić sobie pewne rzeczy."{#dustfem_s29_r1397}' if dustfemLogic.r1397_condition():
            # a93 # r1397
            jump dustfem_s47

        '"No tak… Jak to było? Trwaj w wierze, uch, o wtajemniczona."{#dustfem_s29_r1398}' if dustfemLogic.r1398_condition():
            # a94 # r1398
            jump dustfem_s47

        '"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."{#dustfem_s29_r1399}' if dustfemLogic.r1399_condition():
            # a95 # r1399
            jump dustfem_s46


# s30 # say1204
label dustfem_s30: # from 28.1
    nr '"Dhall jest jednym z najbardziej poważanych spośród naszej frakcji. Nie znam nikogo, kto częściej rozmyślałby nad naturą Prawdziwej Śmierci i kto bardziej by na nią zasługiwał, niż on. Posiada sporą wiedzę, którą się może podzielić. Jeśli go nie znasz, proponuję ci, byś z nim porozmawiał, gdy tylko będziesz miał okazję. Nie pozostanie on już zbyt długo w cieniu tego istnienia."{#dustfem_s30_1}'

    menu:
        '"Nie pozostanie on już zbyt długo w cieniu tego istnienia?"{#dustfem_s30_r4280}':
            # a96 # r4280
            jump dustfem_s31

        '"Gdzie mogę znaleźć Dhalla?"{#dustfem_s30_r4281}' if dustfemLogic.r4281_condition():
            # a97 # r4281
            jump dustfem_s32

        '"Gdzie mogę znaleźć Dhalla?"{#dustfem_s30_r4282}' if dustfemLogic.r4282_condition():
            # a98 # r4282
            jump dustfem_s33

        '"Mam jeszcze kilka pytań…"{#dustfem_s30_r4283}':
            # a99 # r4283
            jump dustfem_s26

        '"Dzięki za informacje. Porozmawiam z nim."{#dustfem_s30_r33245}':
            # a100 # r33245
            jump dustfem_s48


# s31 # say1205
label dustfem_s31: # from 30.0 32.0 33.0
    nr 'Potwierdza. "Dhall jest chory. Jest stary nawet jak na standardy githzerai. Następstwem choroby, której się nabawił, będzie niewątpliwie śmierć. I tak ma szczęście."{#dustfem_s31_1}'

    menu:
        '"Standardy githzerai?"{#dustfem_s31_r4284}':
            # a101 # r4284
            jump dustfem_s34

        '"Co to jest *githzerai*?"{#dustfem_s31_r4285}':
            # a102 # r4285
            jump dustfem_s35

        '"Szczęście?"{#dustfem_s31_r4286}':
            # a103 # r4286
            jump dustfem_s36

        '"Rozumiem. Mam jeszcze kilka pytań…"{#dustfem_s31_r4287}':
            # a104 # r4287
            jump dustfem_s26

        '"Dziękuję za poświęcony mi czas. Muszę już iść."{#dustfem_s31_r4337}':
            # a105 # r4337
            jump dustfem_s48


# s32 # say1206
label dustfem_s32: # from 30.1
    nr '"Znajdziesz go w sali odbiorczej w północno-zachodnim narożniku tej kondygnacji. Muszę cię jednak przestrzec… Dhall jest bardzo zajęty… Resztę czasu, którego nie pochłaniają jego obowiązki, w głównej mierze zabiera mu jego choroba."{#dustfem_s32_1}'

    menu:
        '"Dhall jest chory?"{#dustfem_s32_r4288}':
            # a106 # r4288
            jump dustfem_s31

        '"Dziękuję za poświęcony mi czas. Muszę już iść. Żegnaj."{#dustfem_s32_r4289}':
            # a107 # r4289
            jump dustfem_s48


# s33 # say1207
label dustfem_s33: # from 30.2
    nr '"Znajdziesz go najpewniej w sali odbiorczej na pierwszym piętrze. Muszę cię jednak przestrzec… Dhall jest bardzo zajęty… Resztę czasu, którego nie pochłaniają jego obowiązki, w głównej mierze zabiera mu jego choroba."{#dustfem_s33_1}'

    menu:
        '"Dhall jest chory?"{#dustfem_s33_r4290}':
            # a108 # r4290
            jump dustfem_s31

        '"Dziękuję za poświęcony mi czas. Muszę już iść. Żegnaj."{#dustfem_s33_r4291}':
            # a109 # r4291
            jump dustfem_s48


# s34 # say1208
label dustfem_s34: # from 31.0
    nr '"Tak, średnia życia githzerai jest znacznie dłuższa niż ludzi."{#dustfem_s34_1}'

    menu:
        '"Co to jest *githzerai*?"{#dustfem_s34_r4292}':
            # a110 # r4292
            jump dustfem_s35

        '"Dlaczego śmierć Dhalla miałaby być szczęściem? Czyż nie jest on lubiany?"{#dustfem_s34_r4293}':
            # a111 # r4293
            jump dustfem_s36

        '"Och. Mam jeszcze kilka pytań…"{#dustfem_s34_r4294}':
            # a112 # r4294
            jump dustfem_s26

        '"Dziękuję za poświęcony mi czas. Żegnaj."{#dustfem_s34_r4295}':
            # a113 # r4295
            jump dustfem_s48


# s35 # say1209
label dustfem_s35: # from 31.1 34.0
    nr '"Githzerai to…" Przerywa, po czym zaczyna przeglądać ci się uważne. "Nie jesteś tutejszy. Kim jesteś?"{#dustfem_s35_1}'

    menu:
        '"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."{#dustfem_s35_r4296}' if dustfemLogic.r4296_condition():
            # a114 # r4296
            jump dustfem_s50

        '"Jestem… tu nowy. Sta… ram się przyswoić sobie pewne rzeczy."{#dustfem_s35_r4297}' if dustfemLogic.r4297_condition():
            # a115 # r4297
            jump dustfem_s47

        '"No tak… Jak to było? Trwaj w wierze, uch, o wtajemniczona."{#dustfem_s35_r4298}' if dustfemLogic.r4298_condition():
            # a116 # r4298
            jump dustfem_s47

        '"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."{#dustfem_s35_r4300}' if dustfemLogic.r4300_condition():
            # a117 # r4300
            jump dustfem_s46


# s36 # say1210
label dustfem_s36: # from 31.2 34.1
    nr '"Ma szczęście, gdyż osiągnie Prawdziwą Śmierć. Nie będzie już musiał żyć w cieniu tego istnienia."{#dustfem_s36_1}'

    menu:
        '"I… to jest czymś dobrym?"{#dustfem_s36_r4299}':
            # a118 # r4299
            jump dustfem_s37

        '"Rozumiem. To rzeczywiście wyjątkowe szczęście. Mam kilka innych pytań…"{#dustfem_s36_r4301}':
            # a119 # r4301
            jump dustfem_s26

        '"Rozumiem. Cóż, muszę cię już opuścić. Żegnaj."{#dustfem_s36_r4302}':
            # a120 # r4302
            jump dustfem_s48


# s37 # say1211
label dustfem_s37: # from 36.0
    nr 'Kobieta przytakuje. "Tak." Marszczy brwi, po czym przygląda ci się uważnie. "Nie jesteś tutejszy. Kim jesteś?"{#dustfem_s37_1}'

    menu:
        '"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."{#dustfem_s37_r4303}' if dustfemLogic.r4303_condition():
            # a121 # r4303
            jump dustfem_s50

        '"Jestem… tu nowy. Sta… ram się przyswoić sobie pewne rzeczy."{#dustfem_s37_r4304}' if dustfemLogic.r4304_condition():
            # a122 # r4304
            jump dustfem_s47

        '"No tak… Jak to było? Trwaj w wierze, uch, o wtajemniczona."{#dustfem_s37_r4305}' if dustfemLogic.r4305_condition():
            # a123 # r4305
            jump dustfem_s47

        '"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."{#dustfem_s37_r4306}' if dustfemLogic.r4306_condition():
            # a124 # r4306
            jump dustfem_s46


# s38 # say1212
label dustfem_s38: # -
    nr '"Nie jesteś jednym z nas, nieprawdaż? Co tu robisz? Jesteś członkiem Anarchistów? Albo szpiegiem którejś z innych frakcji?" Grabarz cofa się o krok do tyłu. "Straż! Straż!"{#dustfem_s38_1}'

    menu:
        '"Cholera!"{#dustfem_s38_r4307}':
            # a125 # r4307
            $ dustfemLogic.r4307_action()
            jump dustfem_dispose

        '"Ciiii! Nie mogę ci odpowiedzieć przez te twoje krzyki!"{#dustfem_s38_r4308}' if dustfemLogic.r4308_condition():
            # a126 # r4308
            $ dustfemLogic.r4308_action()
            jump dustfem_dispose

        '"Ciiii! Nie mogę ci odpowiedzieć przez te twoje krzyki!"{#dustfem_s38_r4309}' if dustfemLogic.r4309_condition():
            # a127 # r4309
            $ dustfemLogic.r4309_action()
            jump dustfem_dispose


# s39 # say1213
label dustfem_s39: # from 26.2
    nr '"Dziennik? Nie widziałam żadnego."{#dustfem_s39_1}'

    menu:
        '"Mam jeszcze kilka pytań…"{#dustfem_s39_r4310}':
            # a128 # r4310
            jump dustfem_s26

        '"Muszę już iść. Żegnaj."{#dustfem_s39_r4311}':
            # a129 # r4311
            jump dustfem_s48


# s40 # say1214
label dustfem_s40: # -
    nr 'Ta blada kobieta ubrana jest w długie, ciemne szaty. Roztacza się wokół niej słaby zapach stęchlizny. Ma obojętny wyraz oczu i wydaje się być pochłonięta swoimi obowiązkami.{#dustfem_s40_1}'

    menu:
        '"Witaj."{#dustfem_s40_r4312}' if dustfemLogic.r4312_condition():
            # a130 # r4312
            jump morte_s81  # EXTERN

        '"Witaj."{#dustfem_s40_r4313}' if dustfemLogic.r4313_condition():
            # a131 # r4313
            jump morte_s83  # EXTERN

        '"Witaj."{#dustfem_s40_r4314}' if dustfemLogic.r4314_condition():
            # a132 # r4314
            jump dustfem_s4

        '"Witaj."{#dustfem_s40_r4315}' if dustfemLogic.r4315_condition():
            # a133 # r4315
            jump dustfem_s4

        'Zostaw ją w spokoju.{#dustfem_s40_r4316}':
            # a134 # r4316
            jump dustfem_dispose


# s41 # say1215
label dustfem_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Nim ma szanse wypowiedzieć choćby słowo, zaciskasz swe dłonie wokół jej skroni i przekręcasz jej głowę gwałtownie w lewą stronę.{#dustfem_s41_1}'

    menu:
        '"Nie mogę dopuścić, byś powiadomiła swoich przyjaciół…"{#dustfem_s41_r4317}':
            # a135 # r4317
            $ dustfemLogic.r4317_action()
            jump dustfem_s42


# s42 # say1216
label dustfem_s42: # from 41.0 45.0
    nr 'Następuje *chrupnięcie* i kobieta pada bezwładnie w twe ramiona.{#dustfem_s42_1}'

    menu:
        '"Lepiej ty niż ja, Grabie."{#dustfem_s42_r4318}' if dustfemLogic.r4318_condition():
            # a136 # r4318
            $ dustfemLogic.r4318_action()
            jump dustfem_s43

        '"Lepiej ty niż ja, Grabie."{#dustfem_s42_r4319}' if dustfemLogic.r4319_condition():
            # a137 # r4319
            $ dustfemLogic.r4319_action()
            jump dustfem_dispose


# s43 # say1217
label dustfem_s43: # from 42.0
    nr 'Ku twemu zdziwieniu wykonałeś to instynktownie, jakbyś już wcześniej robił to wiele razy… Przemyśleniu temu towarzyszą przebłyski wspomnień, są jednak zbyt słabe, by się w pełni ujawnić.{#dustfem_s43_1}'

    menu:
        'Zostaw ciało i kontynuuj.{#dustfem_s43_r4320}':
            # a138 # r4320
            $ dustfemLogic.r4320_action()
            jump dustfem_dispose


# s44 # say1218
label dustfem_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Nie okazujesz się dostatecznie szybki i kobieta wykonuje unik, gdy się na nią rzucasz. Następnie cofa się o krok, po czym klaszcze w dłonie po trzykroć. W odpowiedzi całą Kostnicę wypełnia bicie wielkiego żelaznego dzwonu.{#dustfem_s44_1}'

    menu:
        '"No dobrze…"{#dustfem_s44_r4321}':
            # a139 # r4321
            $ dustfemLogic.r4321_action()
            jump dustfem_dispose


# s45 # say1219
label dustfem_s45: # from 19.5
    nr 'Gdy się przybliżasz, by jej coś szepnąć, ona się również przybliża. Gdy tylko wkracza zasięg twych ramion, zaciskasz swe dłonie wokół jej skroni i przekręcasz jej głowę gwałtownie w lewą stronę.{#dustfem_s45_1}'

    menu:
        '"Nie mogę dopuścić, byś powiadomiła swoich przyjaciół…"{#dustfem_s45_r4322}':
            # a140 # r4322
            $ dustfemLogic.r4322_action()
            jump dustfem_s42


# s46 # say1220
label dustfem_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Grabarz wydaje się być podejrzliwa. Wygląda na to, że chce coś powiedzieć, po czym potrząsa nieznacznie głową i wraca do swoich zajęć.{#dustfem_s46_1}'

    menu:
        'Odejdź.{#dustfem_s46_r4323}':
            # a141 # r4323
            jump dustfem_dispose


# s47 # say1221
label dustfem_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Grabarz przygląda ci się dokładnie. "Nie jesteś jednym z nas, nieprawdaż? Co tu robisz? Jesteś członkiem Anarchistów? Albo szpiegiem którejś z innych frakcji? Zdaje się, że powinna się tym zająć straż…"{#dustfem_s47_1}'

    menu:
        'Skręć jej kark, zanim zdąży zawołać.{#dustfem_s47_r4324}' if dustfemLogic.r4324_condition():
            # a142 # r4324
            jump dustfem_s44

        'Skręć jej kark, zanim zdąży zawołać.{#dustfem_s47_r4325}' if dustfemLogic.r4325_condition():
            # a143 # r4325
            jump dustfem_s41

        'Odejdź. Jak najszybciej.{#dustfem_s47_r4326}':
            # a144 # r4326
            jump dustfem_s2

        '"Nie, nie… To nie tak, eee… To znaczy nie jestem szpiegiem… Rozumiesz, obudziłem się ma jednym ze stołów… i…"{#dustfem_s47_r4327}':
            # a145 # r4327
            jump dustfem_s2


# s48 # say1222
label dustfem_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Grabarza kiwa głową, po czym powraca do swoich zajęć.{#dustfem_s48_1}'

    menu:
        'Odejdź.{#dustfem_s48_r4328}':
            # a146 # r4328
            jump dustfem_dispose


# s49 # say1223
label dustfem_s49: # from 24.0 24.1 25.0 25.1
    nr 'Grabarz marszczy brwi. "Imię to jest mi obce."{#dustfem_s49_1}'

    menu:
        '"Jestem świeżo wtajemniczonym. Wybacz mi moją niewiedzę."{#dustfem_s49_r4329}' if dustfemLogic.r4329_condition():
            # a147 # r4329
            jump dustfem_s50

        '"Jestem… tu nowy. Sta… ram się poznać zasady."{#dustfem_s49_r4331}' if dustfemLogic.r4331_condition():
            # a148 # r4331
            jump dustfem_s47

        '"No tak… Jak to było? Trwaj w wierze, uch, o wtajemniczona."{#dustfem_s49_r4332}' if dustfemLogic.r4332_condition():
            # a149 # r4332
            jump dustfem_s47

        '"Jeśli nie możesz mi pomóc, poszukam kogoś, kto będzie mógł. Żegnaj."{#dustfem_s49_r4333}' if dustfemLogic.r4333_condition():
            # a150 # r4333
            jump dustfem_s46


# s50 # say1224
label dustfem_s50: # from 29.0 35.0 37.0 49.0
    nr 'Nadal patrzy na ciebie krzywo, skłania jednakże lekko głową. "Dobrze. W czym mogę ci pomóc, wtajemniczony?"{#dustfem_s50_1}'

    menu:
        '"Mam kilka pytań…"{#dustfem_s50_r4334}':
            # a151 # r4334
            jump dustfem_s26

        '"Nie tym razem. Żegnaj."{#dustfem_s50_r4335}':
            # a152 # r4335
            jump dustfem_s46


# s51 # say66683
label dustfem_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Grabarz spogląda na ciebie kamiennym wzrokiem. "Zgubiłeś się?"{#dustfem_s51_1}'

    menu:
        '"Nie, jestem członkiem frakcji. Zwiedzam jedynie Kostnicę."{#dustfem_s51_r66684}' if dustfemLogic.r66684_condition():
            # a153 # r66684
            jump dustfem_s52

        '"Tak."{#dustfem_s51_r66685}' if dustfemLogic.r66685_condition():
            # a154 # r66685
            jump dustfem_s5

        '"Nie."{#dustfem_s51_r66686}' if dustfemLogic.r66686_condition():
            # a155 # r66686
            jump dustfem_s6

        '"Nie, nie zgubiłem się. Mam kilka pytań…"{#dustfem_s51_r66687}' if dustfemLogic.r66687_condition():
            # a156 # r66687
            jump dustfem_s6

        '"Żegnaj."{#dustfem_s51_r66688}' if dustfemLogic.r66688_condition():
            # a157 # r66688
            jump dustfem_s2


# s52 # say66689
label dustfem_s52: # from 51.0
    nr 'Grabarz wpatruje się w ciebie przez chwilę, po czym kiwa głową. "Dobrze. Gdybyś potrzebował pomocy, daj mi znać."{#dustfem_s52_1}'

    menu:
        '"Zrobię tak. Żegnaj."{#dustfem_s52_r66690}':
            # a158 # r66690
            jump dustfem_dispose
