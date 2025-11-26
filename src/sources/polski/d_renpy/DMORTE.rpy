init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte_logic import MorteLogic
    morteLogic = MorteLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE.DLG
# ###


# s0 # say986
label morte_s0: # -
    nr '"Hej, szefie. Dobrze się czujesz? Udajesz martwego, czy chcesz wpędzić Grabarzy w ślepaki? Myślałem, że jesteś stuprocentowym truposzem."'

    menu:
        '"Kim jesteś?"':
            # a0 # r987
            jump morte_s1

        'Nie zwracaj uwagi na czaszkę i przeszukaj pomieszczenie.':
            # a1 # r989
            jump morte_dispose

        'Weź głęboki oddech, potrząśnij przecząco głową i nie zwracaj uwagi na czaszkę, która do ciebie mówi.':
            # a2 # r988
            jump morte_dispose

        '"Na pewno masz do powiedzenia tysiąc mądrych rzeczy, Morte, ale lepiej się zamknij i przyłącz do mnie."':
            # a3 # r17833
            $ morteLogic.r17833_action()
            jump morte_dispose


# s1 # say990
label morte_s1: # from 0.0 29.0 31.0
    nr '"Ja?" Morte wydaje się być oburzony. "A może by tak zacząć od *ciebie*? Jak ty masz na imię?"'

    menu:
        '"N… nie wiem."':
            # a4 # r992
            jump morte_s2

        '"N… nie wiem. Nie pamiętam."':
            # a5 # r995
            jump morte_s3

        '"Ja zapytałem cię pierwszy."':
            # a6 # r993
            jump morte_s4

        'Nie zwracaj uwagi na czaszkę i przeszukaj pomieszczenie.':
            # a7 # r991
            jump morte_dispose


# s2 # say997
label morte_s2: # from 1.0 4.0 5.0
    nr '"Nie wiesz, jak masz no imię, co? Trzeba było po prostu powiedzieć „szpicuj się, trepie“. No cóż, dobra… udawaj, że nie masz pojęcia, co się wokół ciebie dzieje. I tak mnie to guzik obchodzi. Jestem Morte. Witaj, cieszę się, że cię widzę, i tak dalej."'

    menu:
        '"Gdzie ja jestem?"':
            # a8 # r998
            jump morte_s6

        '"Wiesz może, jak można się stąd wydostać?"' if morteLogic.r1006_condition():
            # a9 # r1006
            jump morte_s21

        '"Jak się tu znalazłem?"':
            # a10 # r1080
            jump morte_s20

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a11 # r1087
            jump morte_dispose


# s3 # say999
label morte_s3: # from 1.1 4.1 5.1
    nr '"Nie *pamiętasz*? No to chyba ostatnia noc nie była dla ciebie najprzyjemniejsza. Mam nadzieję, że nikogo nie skrzywdziłeś… Jestem Morte. Witaj, cieszę się, że cię widzę, i tak dalej." Czaszka przerywa na chwilę. "Wiesz co, *muszę* cię spytać: jesteś jednym z Czuciowców, który się samo okaleczył, czy to ktoś zafundował ci te blizny?"'

    menu:
        '"Co to za Czuciowcy?"':
            # a12 # r1000
            jump morte_s12

        '"Jakie blizny?"':
            # a13 # r1001
            jump morte_s13

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a14 # r1002
            jump morte_dispose


# s4 # say1003
label morte_s4: # from 1.2
    nr '"No, a ja spytałem drugi. Jak masz na imię?"'

    menu:
        '"N… nie wiem."':
            # a15 # r1004
            jump morte_s2

        '"N… nie wiem. Nie pamiętam."':
            # a16 # r1005
            jump morte_s3

        '"Ty pierwszy."':
            # a17 # r1007
            jump morte_s5

        'Nie zwracaj uwagi na czaszkę i przeszukaj pomieszczenie.':
            # a18 # r994
            jump morte_dispose


# s5 # say1008
label morte_s5: # from 4.2
    nr '"Chłopie, jesteś bardziej spięty niż mokry sznur. Dobra, dobra… Ustąpię ci. Jestem Morte. Jakie imię ma tak wielkiego pecha, żeby mieć cię jako swojego właściciela?"'

    menu:
        '"N… nie wiem."':
            # a19 # r1009
            jump morte_s2

        '"N… nie wiem. Nic nie pamiętam."':
            # a20 # r1010
            jump morte_s3

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a21 # r1011
            jump morte_dispose


# s6 # say1012
label morte_s6: # from 2.0 29.1 31.1
    nr '"Jesteś w „Kostnicy“… To wielka, czarna budowla o uroku ciężarnej pajęczycy."'

    menu:
        '"„Kostnica?“ Czy to oznacza, że jestem… martwy?"':
            # a22 # r1013
            jump morte_s7

        '"Jak się stąd można wydostać?"' if morteLogic.r1015_condition():
            # a23 # r1015
            jump morte_s21

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a24 # r1085
            jump morte_dispose


# s7 # say1014
label morte_s7: # from 6.0 9.0
    nr '"Średnio się w tym orientuję… ale w tym mieście nie znajdziesz nic bardziej przypominającego prosektorium niż ta Kostnica. Trepy przynoszą tu umarłych, a potem albo ich grzebią albo palą, a jeśli któryś ma *naprawdę* dużo szczęścia, to może zostać przywróconym z powrotem do życia jako niewolnik. To na pewno nie jest najprzyjemniejsze miejsce w Sferach. Na twoim miejscu poszukałbym najbliższego wyjścia i odśmiał bym stąd jak najszybciej."'

    menu:
        '"Przepraszam… „Kostnica?“ Co to za miejsce?"':
            # a25 # r1016
            jump morte_s10

        '"Wracają do życia jako niewolnicy?"':
            # a26 # r1017
            jump morte_s9

        '"A mimo to ciągle mogę chodzić?"':
            # a27 # r1018
            jump morte_s11

        '"Powiadasz, że ludzie przyciągają tu martwe ciała? Czy ze mną było tak samo?"' if morteLogic.r1019_condition():
            # a28 # r1019
            jump morte_s8

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a29 # r1020
            jump morte_dispose


# s8 # say1021
label morte_s8: # from 7.3
    nr 'Morte przerywa na chwilę. "Chyba tak. Może jakiś trep wziął cię za truposza i cię tu wrzucił. *Ja* się dałem nabrać na to, jak udawałeś trupa… Może powinieneś znaleźć trepa, który cię tu przyciągnął, i to jego zapytać, co? Całkiem nieźle kombinujesz jak na niedoszłego truposza… Dobrze wiedzieć, że twój czerep jest ciągle w jednym kawałku."'

    menu:
        '"Dlaczego ktoś miałby mnie tu przynosić?"':
            # a30 # r1029
            jump morte_s14

        '"Mam jeszcze kilka pytań…"':
            # a31 # r1030
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a32 # r1137
            jump morte_dispose


# s9 # say1022
label morte_s9: # from 7.1
    nr '"No, to świetne życie… Nie licząc tego, że ciągle muszą ci aplikować formalinę i przyszywać kończyny, kiedy te odpadną, to prawdziwy raj."'

    menu:
        '"Dlaczego ja tu jestem? Czy ja nie żyję?"':
            # a33 # r1113
            jump morte_s7

        '"Jak wyglądam? Dużo mam tych blizn?"':
            # a34 # r1114
            jump morte_s13

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a35 # r1115
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a36 # r1116
            jump morte_dispose


# s10 # say1023
label morte_s10: # from 7.0
    nr '"Ee… Jak już mówiłem, Kostnica. Wszystko w porządku, szefie? Nie wyglądasz najlepiej."'

    menu:
        '"Dlaczego ja tu jestem? Czy ja nie żyję?"':
            # a37 # r1109
            jump morte_s16

        '"Jak wyglądam? Dużo mam tych blizn?"':
            # a38 # r1110
            jump morte_s13

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a39 # r1111
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a40 # r1112
            jump morte_dispose


# s11 # say1024
label morte_s11: # from 7.2
    nr '"Szefie, z mojego punktu widzenia, to już samo to, że zczołgałeś się z tego stołu, było niesamowite. Wyglądasz, jakbyś za chwilę miał puścić niezłego pawia, jeśli rozumiesz, co mam na myśli."'

    menu:
        '"Czy to możliwe, że nie żyję? I właśnie dlatego tu jestem?"':
            # a41 # r1133
            jump morte_s16

        '"Czy to wygląda aż tak źle?"':
            # a42 # r1134
            jump morte_s13

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a43 # r1135
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a44 # r1136
            jump morte_dispose


# s12 # say1025
label morte_s12: # from 3.0 33.0
    nr '"Nie wiesz, kto to są Czuciowcy? Oj, naprawdę ktoś powinien się tobą zająć! To ta grupa hultai, którzy mają świra na punkcie doświadczenia wszystkiego, co sfery mają do zaoferowania, włącznie z… a zresztą, na razie możesz o tym zapomnieć. No więc co z tymi bliznami?"'

    menu:
        '"Jakie blizny?"':
            # a45 # r1027
            jump morte_s13

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a46 # r1028
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a47 # r1143
            jump morte_dispose


# s13 # say1026
label morte_s13: # from 3.1 9.1 10.1 11.1 12.0 33.1
    nr '"Wygląda to tak, jakby jakiś hultaj próbował na tobie rysowania nożem. Wszędzie masz blizny… nawet na plecach, no może oprócz…" Morte na chwilę zawiesza głos. "A niech to, masz na plecach całą galerię tatuażu, trepie. Coś mi to przypomina…"'

    menu:
        '"Co tam pisze?"':
            # a48 # r1088
            $ morteLogic.r1088_action()
            jump morte_s34

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a49 # r1089
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a50 # r1090
            jump morte_dispose


# s14 # say1031
label morte_s14: # from 8.0 29.3
    nr '"Niektórzy ludzie w tym mieście zbierają truposzy po ulicach i sprzedają ich tutaj za brzdęk. To niezbyt ekscytujący sposób na powiązanie końca z końcem, ale kiedy się żyje w nocniku Sfer, to wybór jest raczej ograniczony."'

    menu:
        '"Brzdęk? Co to takiego?"':
            # a51 # r1032
            jump morte_s15

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a52 # r1033
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a53 # r1142
            jump morte_dispose


# s15 # say1034
label morte_s15: # from 14.0
    nr '"Ech… pieniądze. Brzdęk to pieniądze. Nie mieliście tego tam, skąd przychodzisz?"'

    menu:
        '"Nie pamiętam skąd jestem."':
            # a54 # r1035
            jump morte_s19

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a55 # r1036
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a56 # r1138
            jump morte_dispose


# s16 # say1037
label morte_s16: # from 10.0 11.0
    nr 'Morte przerywa na chwilę. "Nie wiem. Ty ze mną *rozmawiasz*… Chodzące truchła zazwyczaj tego nie robią. Z tego co widzę, Grabarze musieli się pomylić i wrzucili cię tu, mimo, że nie byłeś truposzem. Przypomnij sobie, może podpisywałeś z nimi jakiś kontrakt? Chodzi mi o to, że zanim wyciągną kogoś z księgi umarłych, trzeba wypełnić wiele papierków i uregulować różnorodne kwestie prawne."'

    menu:
        '"Ee… kontrakt? Nie, nie pamiętam, żebym coś takiego podpisywał. W… w ogóle nic nie pamiętam."':
            # a57 # r1038
            jump morte_s32

        '"Co to za księga umarłych?"':
            # a58 # r1039
            jump morte_s17

        '"Kwestie prawne?"':
            # a59 # r1040
            jump morte_s18

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a60 # r1041
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a61 # r1150
            jump morte_dispose


# s17 # say1042
label morte_s17: # from 16.1 18.0
    nr '"Tak, „księga umarłych“. Chyba wiesz, co to jest? Ech, może jednak nie wiesz. Wiesz co, zapomnij o księdze umarłych. Ciągle żyjesz, więc na pewno nie jesteś tam wpisany."'

    menu:
        '"Co to za kwestie prawne… kontrakt, o którym wspominałeś?"':
            # a62 # r1151
            jump morte_s18

        '"Mam jeszcze kilka pytań…"':
            # a63 # r1152
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a64 # r1153
            jump morte_dispose


# s18 # say1043
label morte_s18: # from 16.2 17.0
    nr '"No, czy to cię nie wkurza? W Sigil najważniejsze jest prawo, do tego stopnia, że bez podpisania paru kontraktów nie można nawet opróżnić pęcherza."'

    menu:
        '"Możesz powtórzyć, co mówiłeś o „księdze umarłych?“"':
            # a65 # r1154
            jump morte_s17

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a66 # r1155
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a67 # r1156
            jump morte_dispose


# s19 # say1044
label morte_s19: # from 15.0
    nr '"Na bogów, naprawdę nie masz o niczym pojęcia! Masz jakieś pojęcie, skąd się tu znalazłeś? Pewnie teraz jakiś naród ciemniaków tęskni za swoim królem. Uderzyłeś się w głowę, czy zawsze byłeś taki ciężko kapujący?"'

    menu:
        '"N… nie wiem. Nic nie pamiętam."':
            # a68 # r1139
            jump morte_s32

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a69 # r1140
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a70 # r1141
            jump morte_dispose


# s20 # say1045
label morte_s20: # from 2.2 31.2
    nr '"Szefie, nie mam zielonego pojęcia. Ale na pewno świetnie umiesz udawać martwego. Kiedy tak tu leżałeś, ani razu nie widziałem, żebyś poruszył klatką piersiową czy mrugnął okiem… Piłeś coś?"'

    menu:
        '"N… nie wiem. Nic nie pamiętam."':
            # a71 # r1097
            jump morte_s32

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a72 # r1098
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a73 # r1099
            jump morte_dispose


# s21 # say1046
label morte_s21: # from 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1
    nr '"Hmmm, dobre pytanie. Czas ci ucieka szefie. Jak Grabarze cię znajdą, to pewnie będą próbowali naprawić ten „problem“ z twoim zmartwychwstaniem, wrzucając cię do krematorium. Jak dalej będziesz udawał truposza, to i tak pójdziesz do pieca. To dopiero wybór wart modrona, co? Co teraz robić?"'

    menu:
        '"Kim są ci Grabarze?"':
            # a74 # r1047
            jump morte_s30

        '"Chyba… ucieknę."':
            # a75 # r1048
            jump morte_s22

        '"Wyjaśnię tym… Grabarzom całą sytuację."':
            # a76 # r1049
            jump morte_s25

        '"W takim razie co mam robić?"' if morteLogic.r1050_condition():
            # a77 # r1050
            jump morte_s23

        '"Dlaczego nie chcesz mi powiedzieć? Wyczuwam, że już znasz odpowiedź."' if morteLogic.r1051_condition():
            # a78 # r1051
            jump morte_s23

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a79 # r1081
            jump morte_dispose


# s22 # say1052
label morte_s22: # from 21.1
    nr '"Och, *dobry* pomysł, szefie! Dlaczego *ja* na to nie wpadłem? Niby jak masz zamiar uciec, co? Podpowiem ci: Potrzeba ci będzie pomocnika."'

    menu:
        '"To całkiem interesujące. Mów dalej."':
            # a80 # r1053
            jump morte_s23

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a81 # r1054
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a82 # r1145
            jump morte_dispose


# s23 # say1055
label morte_s23: # from 21.3 21.4 22.0 26.0
    nr '"Z mojego punktu widzenia to oczywiste, że musisz się stąd wydostać. Ja mogę sobie pozwolić na czekanie, bo grozi mi chyba tylko nuda. Moglibyśmy sobie nawzajem pomóc."'

    menu:
        '"Mów dalej…"':
            # a83 # r1058
            jump morte_s24

        '"Nie masz nawet rąk. Niby w jaki sposób mógłbyś mi pomóc?"':
            # a84 # r1059
            jump morte_s24

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a85 # r1060
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a86 # r1146
            jump morte_dispose


# s24 # say1061
label morte_s24: # from 23.0 23.1
    nr '"Może na to nie wyglądam, ale ja mógłbym pomóc tobie się stąd wydostać, a ty mógłbyś pomóc mi. Nie mam rąk, więc nie ze wszystkim mogę sobie poradzić. Tobie brakuje oleju w mózgownicy, a ja mam dużo doświadczenia i orientuję się, jak można cię wyciągnąć z tych tarapatów. Jeśli będziemy współpracować, to obu nam się to opłaci. Umowa stoi, trepie?"'

    menu:
        '"Zgoda."':
            # a87 # r1057
            jump morte_s28

        '"Zgoda. Mam dziwne przeczucie, że to los chce, żebyśmy podróżowali razem."':
            # a88 # r1062
            jump morte_s27

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a89 # r1063
            jump morte_s31

        '"Nie, dzięki. Rozmowa z tobą jest już wystarczająco bolesna. Sam spróbuję się stąd wydostać."':
            # a90 # r1147
            jump morte_dispose


# s25 # say1064
label morte_s25: # from 21.2
    nr '"Och, *dobry* pomysł, szefie! Dlaczego *ja* na to nie wpadłem?" Morte zaczyna cię przedrzeźniać. "„A tak przy okazji, Panie Grabarzu, umarłem i obudziłem się na stole w waszej małej Kostnicy. Byłbym wdzięczny, gdybyś zechciał mi “pomóc„. Na pewno ci pomogą. Przyjrzą ci się przez chwilę, a potem zawołają strażników i wrzucą do pieca."'

    menu:
        '"To niewiarygodne… Dlaczego mieliby to robić?"':
            # a91 # r1065
            jump morte_s26

        '"Ci strażnicy będą się musieli nieźle namęczyć, żeby mnie pokonać."':
            # a92 # r1066
            jump morte_s26

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a93 # r1067
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a94 # r1149
            jump morte_dispose


# s26 # say1068
label morte_s26: # from 25.0 25.1
    nr '"Zaufaj mi… Dostaną cię bez względu na to, co im powiesz. Możesz sobie myśleć, że jesteś strasznie twardy. Nie starczy ci sił, żeby przebić się przez ścianę grobowca, albo żeby przeżyć żar Sfery Żywiołu Ognia. Jeśli chodzi o tutejszych opiekunów, to masz prześpiewane już za sam fakt, że się obudziłeś z martwych. Nie bądź kretynem."'

    menu:
        '"Więc jaki jest nasz plan?"':
            # a95 # r1069
            jump morte_s23

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a96 # r1070
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a97 # r1148
            jump morte_dispose


# s27 # say1071
label morte_s27: # from 24.1
    nr '"Jeśli o mnie chodzi, to los może sobie przykucnąć nad halabardą. Słuchaj, szefie. Zwróć uwagę na to, jak często słowa „zły“ i „los“ występują obok siebie, a zaraz zrozumiesz małe tajemnice życia. Najlepszą rzeczą, jaką można zrobić, to wysłanie losu do diaska. Oczywiście, niektórzy twierdzą, że los nigdy nie daje za wygraną."'

    menu:
        '"Będę o tym pamiętał."':
            # a98 # r1073
            jump morte_s28

        '"Dość tego gadania. Jaki jest twój plan?"':
            # a99 # r1074
            jump morte_s28


# s28 # say1072
label morte_s28: # from 24.0 27.0 27.1
    nr '"Dobra… Teraz spadajmy stąd. Drzwi, które prowadzą na zewnątrz, są zamknięte, więc będziemy potrzebować klucza. Może jakieś chodzące truchło w tym pomieszczeniu będzie go miało przy sobie."'

    menu:
        '"Chodzące truchło?"':
            # a100 # r1079
            $ morteLogic.r1079_action()
            jump morte_s240


# s29 # say996
label morte_s29: # -
    nr '"Ach, a więc *znowu* chcesz ze mną rozmawiać, co?"'

    menu:
        '"Kim jesteś?"':
            # a101 # r1075
            jump morte_s1

        '"Gdzie ja jestem?"':
            # a102 # r1076
            jump morte_s6

        '"Wiesz może, jak można się stąd wydostać?"' if morteLogic.r1077_condition():
            # a103 # r1077
            jump morte_s21

        '"Jak się tu znalazłem?"':
            # a104 # r1078
            jump morte_s14

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a105 # r1086
            jump morte_dispose


# s30 # say1082
label morte_s30: # from 21.0
    nr '"Grabarze. To oni sprawują pieczę nad tym miejscem. Trudno ich nie rozpoznać… Mają obsesję na punkcie czarnego koloru, a w dodatku ciągle mają śmiertelnie poważny wyraz twarzy. Nazywają siebie „Grabarzami“ i udają frakcję, ale to tylko zaprzała banda wyznawców śmierci. Lepiej trzymać się od nich z daleka."'

    menu:
        '"Więc jak się stąd można wydostać?"' if morteLogic.r1083_condition():
            # a106 # r1083
            jump morte_s21

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a107 # r1084
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a108 # r1144
            jump morte_dispose


# s31 # say1091
label morte_s31: # from 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2
    nr '"No… Na przykład *jakie*?"'

    menu:
        '"Kim jesteś?"':
            # a109 # r1092
            jump morte_s1

        '"Gdzie ja jestem?"':
            # a110 # r1093
            jump morte_s6

        '"Jak się tu znalazłem?"':
            # a111 # r1094
            jump morte_s20

        '"Jak się stąd można wydostać?"' if morteLogic.r1095_condition():
            # a112 # r1095
            jump morte_s21

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a113 # r1096
            jump morte_dispose


# s32 # say1100
label morte_s32: # from 16.0 19.0 20.0
    nr '"*Nic* nie pamiętasz? Daj spokój, przecież to kupa łajna tanar„ri. Mówisz to na poważnie?"'

    menu:
        '"Tak."':
            # a114 # r1101
            jump morte_s33

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a115 # r1102
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a116 # r1103
            jump morte_dispose


# s33 # say1104
label morte_s33: # from 32.0
    nr '"Na boga i jego matkę… No cóż, szefie, wygląda na to, że twoje wspomnienia dały niezłego nura w głąb twojej mózgownicy. Zaufaj mi, jak będziesz miał trochę szczęścia, to wkrótce powinny znowu wydostać się na powierzchnię. Musiałeś spędzić okropną noc. Mam nadzieję, że nikogo nie skrzywdziłeś, ani nie złamałeś prawa. A tak przy okazji, czy nie jesteś jednym z Czuciowców, który się samo okaleczył, czy to ktoś zafundował ci te blizny?"'

    menu:
        '"Co to za Czuciowcy?"':
            # a117 # r1105
            jump morte_s12

        '"Jakie blizny?"':
            # a118 # r1106
            jump morte_s13

        '"Mam jeszcze kilka pytań…"':
            # a119 # r1107
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a120 # r1108
            jump morte_dispose


# s34 # say1117
label morte_s34: # from 13.0
    nr '"Ha! Wygląda na to, że to jakieś rady…" Morte chrząka zaciekawiony. "Zobaczmy, co to jest… zaczyna się od…  UWAGA: "Wiem, że czujesz się, jakbyś władował w siebie kilka baryłek wody ze Styksu, ale musisz się wziąć w garść. Powinieneś mieć przy sobie DZIENNIK, który trochę rozjaśni ci sprawę. Resztę śpiewki usłyszysz od FARODA, chyba że już go wpisali do księgi umarłych.  Nie zgub tego skrawka ciała ALBO dziennika, bo znowu popłyniesz w górę Styksu, zrozumiano? I zaufaj mi, cokolwiek będziesz robił, NIE MÓW nikomu, KIM jesteś, CO ci się przydarzyło, ani SKĄD przybyłeś, bo wylądujesz w ogniu krematorium."'

    menu:
        '"Nic dziwnego, że mnie plecy bolą. Czy znasz kogoś o imieniu Farod?"':
            # a121 # r1118
            jump morte_s36

        '"Czy jak tu leżałem, to miałem przy sobie jakiś dziennik?"':
            # a122 # r1119
            jump morte_s35

        '"Jak się stąd można wydostać?"' if morteLogic.r1120_condition():
            # a123 # r1120
            jump morte_s21

        '"Mam jeszcze kilka pytań…"':
            # a124 # r1121
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a125 # r1122
            jump morte_dispose


# s35 # say1123
label morte_s35: # from 34.1 36.0
    nr '"Nie… jak tu przybyłeś, nie miałeś na sobie żadnego ubrania. A poza tym, wygląda na to, że ktoś wypisał ci ten dziennik na skórze."'

    menu:
        '"Czy znasz kogoś o imieniu Farod?"':
            # a126 # r1124
            jump morte_s36

        '"Jak się stąd można wydostać?"' if morteLogic.r1125_condition():
            # a127 # r1125
            jump morte_s21

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a128 # r1126
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a129 # r1127
            jump morte_dispose


# s36 # say1128
label morte_s36: # from 34.0 35.0
    nr '"Nikogo takiego nie znam… Choć, prawdę mówiąc, nie mam zbyt wielu znajomych. Może jakiś trep będzie wiedział, gdzie szukać tego Faroda… oczywiście, jeśli uda się nam stąd wydostać."'

    menu:
        '"Czy jak tu leżałem, to miałem przy sobie jakiś dziennik?"':
            # a130 # r1129
            jump morte_s35

        '"Jak się stąd można wydostać?"' if morteLogic.r1130_condition():
            # a131 # r1130
            jump morte_s21

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a132 # r1131
            jump morte_s31

        'Nie zwracaj uwagi na Mortego i przeszukaj pomieszczenie.':
            # a133 # r1132
            jump morte_dispose


# s37 # say1818
label morte_s37: # -
    nr '"Ależ mamy szczęście! To pewnie u ciebie zgubiliśmy to, czego szukamy, panienko."'

    menu:
        '"Zgubiłem gdzieś dziennik."':
            # a134 # r1820
            jump harlotn_s2  # EXTERN

        '"Pomóż mi w odnalezieniu mojej zguby."':
            # a135 # r1819
            jump harlotn_s3  # EXTERN

        '"Nic nie zgubiłem, ale mam do ciebie kilka pytań…"':
            # a136 # r1821
            jump harlotn_s9  # EXTERN

        '"Muszę już iść. Żegnaj."':
            # a137 # r1822
            jump harlotn_s11  # EXTERN


# s38 # say1844
label morte_s38: # -
    nr '"Szefie, możesz odpalić mi trochę brzdęku… Minęło już… trochę czasu."'

    menu:
        '"Hmmm, czemu nie…"':
            # a138 # r1845
            $ morteLogic.r1845_action()
            jump harlotn_s7  # EXTERN

        '"Wolę się nie pytać, jak zamierzasz tego dokonać."':
            # a139 # r1846
            $ morteLogic.r1846_action()
            jump harlotn_s7  # EXTERN

        '"Naprawdę, musimy już iść, Morte. Żegnaj, panienko."':
            # a140 # r1847
            $ morteLogic.r1847_action()
            jump morte_dispose


# s39 # say2000
label morte_s39: # -
    nr '"Jej chodzi o pieniądze."'

    menu:
        '"Och."':
            # a141 # r2001
            jump annah_s5  # EXTERN


# s40 # say2048
label morte_s40: # -
    nr '"To dobrze, że ani ty, ani twój ogon nie są na sprzedaż. I tak nie zdołałabyś się z tego utrzymać."'

    menu:
        '"Uch…"':
            # a142 # r2049
            jump annah_s13  # EXTERN


# s41 # say2067
label morte_s41: # -
    nr '"To diabelstwo, szefie. Takie jak ona mają w sobie trochę krwi biesów i dlatego są strasznie podejrzliwe i nastawione defensywnie… choć ten ogon jest całkiem niezły. Szkoda, że jest przyczepiony do takiego brzydkiego ciała."'

    menu:
        '"Hej, nie przesadzaj…"':
            # a143 # r2068
            jump annah_s17  # EXTERN

        '"Hej, to było dobre, Morte."':
            # a144 # r2069
            jump annah_s17  # EXTERN


# s42 # say2074
label morte_s42: # -
    nr '"Dlaczego nie *spróbujesz* mi przyłożyć, diablico?! Ciągle tylko słyszę paplaninę jakiegoś śmiecia z Ula! No dalej! Wyzywam cię! Odgryzę ci twoje nóżki!"'

    menu:
        '"Dość tego!"':
            # a145 # r2076
            jump annah_s18  # EXTERN

        '"Dość tego! Idziemy."':
            # a146 # r2075
            jump annah_s14  # EXTERN


# s43 # say2079
label morte_s43: # -
    nr '"Mimir to gadająca encyklopedia. To ja, szefie."'

    menu:
        '"Rozumiem."':
            # a147 # r2080
            $ morteLogic.r2080_action()
            jump annah_s21  # EXTERN


# s44 # say2348
label morte_s44: # -
    nr '"Daj spokój, szefie. Rozmowa z githem to jak miłość z ostroroślą. Ruszajmy stąd."'

    menu:
        '"Githem?"' if morteLogic.r9029_condition():
            # a148 # r9029
            $ morteLogic.r9029_action()
            jump morte_s135

        '"Githem?"' if morteLogic.r9030_condition():
            # a149 # r9030
            jump morte_s135

        '"Nie mogę jeszcze iść. Najpierw chcę mu zadać kilka pytań…"':
            # a150 # r9031
            jump gith_s7  # EXTERN

        'Zostaw githa w spokoju.':
            # a151 # r9032
            jump morte_dispose


# s45 # say2354
label morte_s45: # -
    nr '"Nie próbowałbym rozmawiać z jednym z tych ignorantów. Wynośmy się stąd, szefie."'

    menu:
        '"Nie mogę jeszcze iść. Najpierw chcę mu zadać kilka pytań…"':
            # a152 # r9033
            jump gith_s7  # EXTERN

        'Zostaw githa w spokoju.':
            # a153 # r9034
            jump morte_dispose


# s46 # say2601
label morte_s46: # externs zf916_s2 zf916_s1 zf916_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a154 # r2603
            $ morteLogic.r2603_action()
            jump morte_s47

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a155 # r2602
            $ morteLogic.r2602_action()
            jump morte_s47


# s47 # say2604
label morte_s47: # from 46.0 46.1 121.1 121.2
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Na pewno była zbyt zajęta mną, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a156 # r2605
            $ morteLogic.r2605_action()
            jump morte_s49

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi, ani nie słyszy."':
            # a157 # r2606
            jump morte_s48

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a158 # r2607
            jump morte_s48

        '"Nieważne, Morte. Ruszajmy."':
            # a159 # r2608
            jump morte_dispose


# s48 # say2609
label morte_s48: # from 47.1 47.2
    nr '"Dobra, dobra, nieważne. Jak się jest umarłym tak długo jak ja, to od razu rozpoznaje się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a160 # r2610
            jump morte_dispose


# s49 # say2611
label morte_s49: # from 47.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a161 # r2612
            jump morte_dispose


# s50 # say2709
label morte_s50: # -
    nr '"Co? Co znowu? Czy ta dzierlatka ci się naprzykrza?"'

    jump test_s7  # EXTERN


# s51 # say2711
label morte_s51: # -
    nr '.'

    jump test_s0  # EXTERN


# s52 # say2782
label morte_s52: # -
    nr '"Och, na miłość Mocy! Szpicowany dabus."'

    menu:
        '"Coś nie tak?"':
            # a162 # r2783
            jump morte_s53


# s53 # say2788
label morte_s53: # from 52.0
    nr '"To dabus. One „mówią“ rebusami, no wiesz, tymi denerwującymi zagadkami słownymi. Jeśli nie wiesz, co taki mówi, to lepiej znajdź sobie tubylca, albo jakiś inny sposób, żeby się z nim porozumieć… oczywiście, jeśli naprawdę tego chcesz. Ależ one potrafią wkurzyć. Wiesz, co ja o tym myślę? One *potrafią* mówić, ale wolą wszystkich wkurzać zadając te przeklęte zagadki."'

    menu:
        '"Co to jest „dabus?“"':
            # a163 # r2791
            jump morte_s54


# s54 # say2789
label morte_s54: # from 53.0
    nr '"Śpiewka niesie, że robią za dozorców u Pani Bólu. Latają tu i tam, psując, naprawiając i łatając całe Sigil tak, jak ona sobie zażyczy. Są gorsze niż trupie muchy." Morte wzdycha ciężko. "Ale nie można im przyłożyć, bo Pani się… zdenerwuje."'

    menu:
        '"„Pani Bólu?“ Kto to taki?"' if morteLogic.r6952_condition():
            # a164 # r6952
            $ morteLogic.r6952_action()
            jump morte_s113

        '"Czy możesz mi coś powiedzieć o Pani Bólu?"' if morteLogic.r6953_condition():
            # a165 # r6953
            jump morte_s113

        '"Rozumiem."' if morteLogic.r6954_condition():
            # a166 # r6954
            jump dabus_s3  # EXTERN


# s55 # say3473
label morte_s55: # externs eivene_s3
    nr '"Ta grabarska dzierlatka chyba ma problemy ze słuchem, szefie. Spadajmy stąd, dobrze?"'

    menu:
        '"Co jest z jej rękami?"':
            # a167 # r3474
            $ morteLogic.j38205_s55_r3474_action()
            jump morte_s56

        'Klepnij ją w ramię, ściągnij jej uwagę.':
            # a168 # r3475
            jump eivene_s4  # EXTERN

        'Zostaw ją w spokoju.':
            # a169 # r3476
            jump morte_dispose


# s56 # say3477
label morte_s56: # from 55.0
    nr '"Ech… to *diabelstwo*, szefie. Takie jak ona mają w sobie trochę biesiej krwi, bo zazwyczaj biorą się z tego, że jakiś bies wpadł w majtki matce czy babce. Przez to niektóre z nich są lekko pomylone… i w dodatku strasznie brzydkie."'

    menu:
        'Klepnij ją w ramię, ściągnij jej uwagę.':
            # a170 # r3478
            jump eivene_s4  # EXTERN

        'Zostaw ją w spokoju.':
            # a171 # r3479
            jump morte_dispose


# s57 # say3480
label morte_s57: # externs eivene_s20
    nr '"Ta grabarska dzierlatka chyba ma problemy ze słuchem, szefie. Spadajmy stąd, dobrze?"'

    menu:
        '"Co jest z jej rękami?"':
            # a172 # r3483
            $ morteLogic.j38205_s57_r3483_action()
            jump morte_s58

        'Odejdź.':
            # a173 # r3484
            jump morte_dispose


# s58 # say3481
label morte_s58: # from 57.0
    nr '"Ech… to *diabelstwo*, szefie. Takie jak ona mają w sobie trochę biesiej krwi, bo zazwyczaj biorą się z tego, że jakiś bies wpadł w majtki matce czy babce. Przez to niektóre z nich są lekko pomylone… i w dodatku strasznie brzydkie."'

    menu:
        'Odejdź.':
            # a174 # r3482
            jump morte_dispose


# s59 # say3487
label morte_s59: # externs eivene_s9
    nr '"Wygląda na to, że masz nową przyjaciółkę, szefie. Potrzebujecie trochę czasu dla siebie, czy…?"'

    menu:
        '"Zamknij się, Morte."':
            # a175 # r3488
            jump eivene_s11  # EXTERN

        'Dalej udawaj zombie.':
            # a176 # r3489
            jump eivene_s11  # EXTERN

        'Odepchnij kobietę.':
            # a177 # r3490
            jump eivene_s10  # EXTERN


# s60 # say3492
label morte_s60: # externs eivene_s13
    nr '"Chyba drugi raz w życiu zdarza mi się dziękować, że nie mam nosa."'

    jump eivene_s14  # EXTERN


# s61 # say3870
label morte_s61: # externs dust_s40
    nr '"Hej! Hej! Co robisz?"'

    menu:
        '"Mam zamiar *pogadać* z tym gościem. Coś ci się nie podoba?"':
            # a178 # r3871
            $ morteLogic.r3871_action()
            jump morte_s62

        '"Nic. Ruszajmy."':
            # a179 # r3872
            jump morte_dispose


# s62 # say3873
label morte_s62: # from 61.0
    nr '"Jeśli masz zamiar gadać z Grabarzami, to zostaw mnie tutaj. Nie żyję z nimi w najlepszych stosunkach… a ty też lepiej się z nimi nie spoufalaj. Prędzej puszczą cię z dymem, niż posłuchają, co masz do powiedzenia. Nie bądź szaleńcem, wynośmy się stąd."'

    menu:
        '"Dzięki za radę, ale *w dalszym ciągu* mam zamiar pogadać z tym gościem."':
            # a180 # r3874
            $ morteLogic.r3874_action()
            jump morte_s64

        '"Zgoda. Ruszajmy."':
            # a181 # r3875
            jump morte_dispose


# s63 # say3876
label morte_s63: # externs dust_s40
    nr '"Hej! Jeseś głuchy? Co robisz?"'

    menu:
        '"Słuchaj, mam zamiar pogadać z tym gościem. Coś ci się nie podoba?"':
            # a182 # r3877
            $ morteLogic.r3877_action()
            jump morte_s64

        '"Nic. Ruszajmy."':
            # a183 # r3878
            jump morte_dispose


# s64 # say3879
label morte_s64: # from 62.0 63.0
    nr '"No to mnie *nie* słuchaj - to twój pogrzeb."'

    menu:
        '"Tak, a ty możesz zagrać marsz pogrzebowy. Teraz siedź cicho."':
            # a184 # r3880
            jump dust_s3  # EXTERN

        '"Masz rację. Zapomnij o tym. Ruszajmy."':
            # a185 # r3881
            jump morte_dispose


# s65 # say3964
label morte_s65: # -
    nr '"Hola, szefie. To wandalizm. Te nity to pewnie jedyna rzecz, która trzyma te kości w kupie. Pewnie ci goście nie znają się zbyt dobrze na nekromancji."'

    menu:
        '"Więc?"':
            # a186 # r3965
            $ morteLogic.r3965_action()
            jump morte_s66

        '"Och… Nie chciałem wyrządzić nieodwracalnych szkód."':
            # a187 # r3966
            $ morteLogic.r3966_action()
            jump morte_s66

        '"W takim razie mniejsza z tym. Może innym razem."':
            # a188 # r3967
            jump morte_s66


# s66 # say3968
label morte_s66: # from 65.0 65.1 65.2
    nr '"Och, to żaden problem." Morte wykonuje dziwny podskok, który od biedy dałoby się wziąć za wzruszenie ramion. "Po prostu nie byłem pewien, czy to wiesz. Ale oczywiście, nawet się nie zastanawiaj."'

    menu:
        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r3969_condition():
            # a189 # r3969
            jump skelw_s4  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r3970_condition():
            # a190 # r3970
            jump skelw_s5  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r3971_condition():
            # a191 # r3971
            jump skelw_s6  # EXTERN

        'Mniejsza z tym. Może innym razem.' if morteLogic.r3972_condition():
            # a192 # r3972
            $ morteLogic.r3972_action()
            jump morte_s67

        'Mniejsza z tym. Może innym razem.' if morteLogic.r3973_condition():
            # a193 # r3973
            jump morte_dispose


# s67 # say3974
label morte_s67: # from 66.3
    nr '"Hmm. Zastanawiam się, czy ten szarobrody miałby coś przeciwko, gdybym pożyczył sobie jego ciało…"'

    menu:
        '"Szarobrody?"':
            # a194 # r3975
            jump morte_s68

        '"Wątpię, żeby był w stanie zaprotestować."':
            # a195 # r3976
            jump morte_s69

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a196 # r3977
            jump morte_s70


# s68 # say3978
label morte_s68: # from 67.0
    nr '"Szarobrody… No wiesz, staruszek, żółty pies… stary."'

    menu:
        '"Wątpię, żeby mógł zaprotestować. Może weźmiesz jego ciało?"':
            # a197 # r3979
            jump morte_s69

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a198 # r3980
            jump morte_s70


# s69 # say3981
label morte_s69: # from 67.1 68.0
    nr 'Morte przygląda się przez chwilę szkieletowi, a potem potrząsa głową. "Niee… Potrzeba mi czegoś trochę świeższego. I czegoś z odrobiną więcej godności… Ten strasznie skrzypi i cały jest połamany."'

    menu:
        '"A ty nie jesteś?"':
            # a199 # r3982
            jump morte_s70

        '"No dobra. Ruszajmy."':
            # a200 # r3983
            jump morte_dispose


# s70 # say3984
label morte_s70: # from 67.2 68.1 69.0 127.0
    nr '"Och, ależ z ciebie beczka śmiechu." Morte zaczyna się w ciebie wpatrywać. "A tak na marginesie, Z TOBĄ to dopiero jest rozmowa, trepie. Lustra błagają o litość, gdy się do nich zbliżasz."'

    menu:
        '"Ach, tak? Przynajmniej *ja* mam wszystkie części ciała."':
            # a201 # r3985
            jump morte_s71

        '"Ruszajmy."':
            # a202 # r3986
            jump morte_dispose


# s71 # say3987
label morte_s71: # from 70.0
    nr 'Morte zaczyna prychać. Zastanawiasz się, jak on to robi, nie mając płuc.'

    menu:
        '"Wiesz co, Morte? Nie ma nic wspanialszego, niż przejść się po ziemi, kołysząc rękami i wdychając ostre powietrze do swoich płuc. To WSPANIAŁE uczucie mieć ciało."':
            # a203 # r3988
            $ morteLogic.r3988_action()
            jump morte_s72

        '"Ruszajmy."':
            # a204 # r3989
            jump morte_dispose


# s72 # say3990
label morte_s72: # from 71.0
    nr '"Zaczynam żałować, że pomogłem ci uciec z pomieszczenia, gdzie przeprowadza się sekcje zwłok." Morte jeszcze raz prycha. "Trzeba było cię tam zostawić, żebyś zgnił… to znaczy zgnił jeszcze bardziej niż teraz."'

    menu:
        '"Cieszę się, że tak myślisz. Ruszajmy."':
            # a205 # r3991
            jump morte_dispose


# s73 # say4018
label morte_s73: # externs giantsk_s9 giantsk_s8 giantsk_s7 giantsk_s6 giantsk_s5 giantsk_s4 giantsk_s1 giantsk_s0
    nr 'Morte szczerzy zęby w uśmiechu.'

    menu:
        '"Ee, to miało znaczyć tak, czy…?"':
            # a206 # r4019
            jump morte_s74


# s74 # say4020
label morte_s74: # from 73.0
    nr '"Och… przepraszam." Morte podlatuje do głowy szkieletu, zaczyna mu się przyglądać, po czym zlatuje na dół, oglądając pancerz i ostrze. "O, tak. Tak, ten będzie dobry."'

    menu:
        '"W takim razie poczekaj chwilę, to oderwę mu głowę."' if morteLogic.r4023_condition():
            # a207 # r4023
            jump giantsk_s2  # EXTERN

        '"W takim razie poczekaj chwilę, to oderwę mu głowę."' if morteLogic.r4024_condition():
            # a208 # r4024
            jump giantsk_s3  # EXTERN

        '"Nie wiem. To coś jest chyba zbyt duże, żebyś sobie z tym poradził."':
            # a209 # r4025
            jump morte_s75

        '"Chyba lepiej zostawmy to coś w spokoju."':
            # a210 # r4026
            jump morte_s75


# s75 # say4021
label morte_s75: # from 74.2 74.3
    nr '"W takim razie po co, na Baator, spytałeś mnie, czy go chcę? Ćwiczysz swoje okrucieństwo?" Morte podskakuje oburzony. "Po tym wszystkim, co dla ciebie zrobiłem…"'

    menu:
        '"W takim razie poczekaj chwilę, to oderwę mu głowę."' if morteLogic.r4027_condition():
            # a211 # r4027
            jump giantsk_s2  # EXTERN

        '"W takim razie poczekaj chwilę, to oderwę mu głowę."' if morteLogic.r4028_condition():
            # a212 # r4028
            jump giantsk_s3  # EXTERN

        '"Chodziło mi o twoje bezpieczeństwo, Morte. Boję się, żeby ci się nic nie stało, jak cię przymocuję do czegoś takiego."':
            # a213 # r4029
            $ morteLogic.r4029_action()
            jump morte_s76

        '"W dalszym ciągu uważam, że powinniśmy dać sobie z tym spokój. Wynośmy się stąd."':
            # a214 # r4030
            jump morte_dispose


# s76 # say4022
label morte_s76: # from 75.2
    nr 'Morte przez chwilę wpatruje się w ciebie. "Czyżbyśmy wzięli ślub? Co to za bzdury z tym „Nie chcę, żeby ci się coś stało“?" Morte rzuca ci złowrogie spojrzenie. "Gdybyś się NAPRAWDĘ o mnie martwił, znalazłbyś jakiś sposób, żeby osadzić moją głowę na tym ogromnym szkielecie."'

    menu:
        '"W takim razie poczekaj chwilę, to oderwę mu głowę."' if morteLogic.r4031_condition():
            # a215 # r4031
            jump giantsk_s2  # EXTERN

        '"W takim razie poczekaj chwilę, to oderwę mu głowę."' if morteLogic.r4032_condition():
            # a216 # r4032
            jump giantsk_s3  # EXTERN

        '"Przykro mi, ale aż tak bardzo mi na tobie nie zależy. Ruszajmy."':
            # a217 # r4033
            jump morte_dispose

        '"Ile razy mam mówić, żebyś sobie dał z tym spokój. Wynośmy się stąd."' if morteLogic.r4034_condition():
            # a218 # r4034
            jump morte_dispose


# s77 # say4134
label morte_s77: # -
    nr '"Hej! Hej! Co robisz?"'

    menu:
        '"Mam zamiar *pogadać* z tym gościem. Coś ci się nie podoba?"':
            # a219 # r4144
            $ morteLogic.r4144_action()
            jump morte_s78

        '"Nic. Ruszajmy."':
            # a220 # r4145
            $ morteLogic.r4145_action()
            jump morte_dispose


# s78 # say4135
label morte_s78: # from 77.0
    nr '"Jeśli masz zamiar gadać z Grabarzami, to zostaw mnie tutaj. Nie żyję z nimi w najlepszych stosunkach… a ty też lepiej się z nimi nie spoufalaj. Prędzej puszczą cię z dymem, niż posłuchają, co masz do powiedzenia. Nie bądź szaleńcem, wynośmy się stąd."'

    menu:
        '"Dzięki za radę, ale *w dalszym ciągu* mam zamiar pogadać z tym gościem."':
            # a221 # r4142
            $ morteLogic.r4142_action()
            jump morte_s80

        '"Zgoda. Ruszajmy."':
            # a222 # r4143
            $ morteLogic.r4143_action()
            jump morte_dispose


# s79 # say4136
label morte_s79: # -
    nr '"Hej! Jesteś głuchy? Co robisz?"'

    menu:
        '"Słuchaj, mam zamiar pogadać z tym gościem. Coś ci się nie podoba?"':
            # a223 # r4140
            $ morteLogic.r4140_action()
            jump morte_s80

        '"Nic. Ruszajmy."':
            # a224 # r4141
            jump morte_dispose


# s80 # say4137
label morte_s80: # from 78.0 79.0
    nr '"No to mnie *nie* słuchaj - to twój pogrzeb."'

    menu:
        '"Tak, a ty możesz zagrać marsz pogrzebowy. Teraz siedź cicho."':
            # a225 # r4138
            jump dustgu_s12  # EXTERN

        '"Masz rację. Zapomnij o tym. Ruszajmy."':
            # a226 # r4139
            jump morte_dispose


# s81 # say4338
label morte_s81: # externs dustfem_s40
    nr '"Hej! Hej! Co robisz?"'

    menu:
        '"Mam zamiar pogadać z tą kobietą. Coś ci się nie podoba?"':
            # a227 # r4339
            $ morteLogic.r4339_action()
            jump morte_s82

        '"Nic. Ruszajmy."':
            # a228 # r4340
            jump morte_dispose


# s82 # say4341
label morte_s82: # from 81.0
    nr '"Jeśli masz zamiar gadać z Grabarzami, to zostaw mnie tutaj. Nie żyję z nimi w najlepszych stosunkach… a ty też lepiej się z nimi nie spoufalaj. Prędzej puszczą cię z dymem, niż posłuchają, co masz do powiedzenia. Nie bądź szaleńcem, wynośmy się stąd."'

    menu:
        '"Dzięki za radę, ale *w dalszym ciągu* mam zamiar pogadać z tą kobietą."':
            # a229 # r4342
            $ morteLogic.r4342_action()
            jump morte_s84

        '"Zgoda. Ruszajmy."':
            # a230 # r4343
            jump morte_dispose


# s83 # say4344
label morte_s83: # externs dustfem_s40
    nr '"Hej! Jesteś głuchy? Co robisz?"'

    menu:
        '"Słuchaj, mam zamiar pogadać z tą kobietą. Coś ci się nie podoba?"':
            # a231 # r4345
            $ morteLogic.r4345_action()
            jump morte_s84

        '"Nic. Ruszajmy."':
            # a232 # r4346
            jump morte_dispose


# s84 # say4347
label morte_s84: # from 82.0 83.0
    nr '"No to mnie *nie* słuchaj - to twój pogrzeb."'

    menu:
        '"Tak, a ty możesz zagrać marsz pogrzebowy. Teraz siedź cicho."':
            # a233 # r4348
            jump dustfem_s3  # EXTERN

        '"Masz rację. Zapomnij o tym. Ruszajmy."':
            # a234 # r4349
            jump morte_dispose


# s85 # say4675
label morte_s85: # externs vaxis_s9
    nr 'Morte przerywa rozmowę i szepcze ci do ucha. "Na wszystkie Moce… Ten trep to *Anarchista*. Udawanie zombie to chyba ulubione zajęcie tych pomylonych skurli."'

    menu:
        '"Anarchista?"':
            # a235 # r4676
            $ morteLogic.j64512_s85_r4676_action()
            jump morte_s86


# s86 # say4677
label morte_s86: # from 85.0
    nr '"Anarchiści… to frakcja…" Morte wygląda, jakby za chwilę miał rzucić strumień obelg, ale nagle spostrzega, że zombie wpatruje się w was, słuchając uważnie, o czym mówicie. "…oni, ee, chcą *uwolnić* wszystkich z więzów rządu. Obalić stare i ustalić nowy ład bez żadnego porządku."'

    menu:
        'Prawda: "To szlachetne dążenia. Od czasu do czasu można by zaburzyć trochę porządek."':
            # a236 # r4678
            $ morteLogic.r4678_action()
            jump vaxis_s11  # EXTERN

        'Kłamstwo: "To szlachetne dążenia. Każdy Anarchista oddany takim szczytnym ideom jest moim przyjacielem."':
            # a237 # r4679
            $ morteLogic.r4679_action()
            jump vaxis_s11  # EXTERN

        '"To wydaje się trochę… sprzeczne."':
            # a238 # r4680
            jump vaxis_s10  # EXTERN

        '"To chyba jedna z największych bzdur, jakie w życiu słyszałem."':
            # a239 # r4681
            jump vaxis_s10  # EXTERN

        'Prawda: "Wątpię, żeby to kogoś uszczęśliwiło. Do postępu zawsze potrzeba trochę prawa i porządku."':
            # a240 # r4682
            $ morteLogic.r4682_action()
            jump vaxis_s10  # EXTERN


# s87 # say4683
label morte_s87: # externs vaxis_s13
    nr 'Morte szepcze ci na ucho: "On zastanawia się, czy jesteś szalony, pomylony, stuknięty… Zresztą mnie to też nurtuje. A teraz wstaw jeszcze tę gadkę typu „Obudziłem się z martwych“, co?! Ależ się za ciebie wstydu najem."'

    menu:
        '"Czy ja cię zawstydzam?"':
            # a241 # r4684
            jump morte_s88

        '"Ciekawi mnie tylko, o czym mówił ten… trup. Dobra?"':
            # a242 # r4685
            jump morte_s88

        '"To nie moja wina, że nikt w tym zwariowanym… „świrniętym“… miejscu nie mówi jak normalny człowiek… ani na takiego nie wygląda."' if morteLogic.r4686_condition():
            # a243 # r4686
            jump morte_s88

        '"NIE mam zamiaru wciskać temu gościowi żadnych kłamstw. Lepiej bądźmy z nim szczerzy."':
            # a244 # r4687
            $ morteLogic.r4687_action()
            jump morte_s88


# s88 # say4688
label morte_s88: # from 87.0 87.1 87.2 87.3
    nr 'Morte wzdycha. "Słuchaj szefie… musisz się w końcu wziąć w garść. Nie możesz chodzić sobie i cały czas opowiadać wszystkim PRAWDY. Nie możemy sobie pozwolić na to, żeby każdy łowca jeleni wziął nas na celownik."'

    menu:
        '"„Łowca Jeleni“? „Na celownik?“ Co ty - a zresztą, nieważne."':
            # a245 # r4689
            jump vaxis_s15  # EXTERN

        '"Zamknij się, Morte."':
            # a246 # r4690
            jump vaxis_s15  # EXTERN

        '"Zapamiętam to. Chcę jeszcze trochę porozmawiać z tym „truchłem“.':
            # a247 # r4691
            jump vaxis_s15  # EXTERN


# s89 # say4692
label morte_s89: # externs vaxis_s23
    nr '"Poczekaj…" Morte wygląda na zaskoczonego. "Ten trep musi być *Anarchistą*. Udawanie zombie to chyba ulubione zajęcie tych pomylonych skurli."'

    menu:
        '"Anarchistą?"':
            # a248 # r4693
            $ morteLogic.j64512_s89_r4693_action()
            jump morte_s90


# s90 # say4694
label morte_s90: # from 89.0
    nr '"Anarchiści… to frakcja ludzi, którzy tracą czas na obserwowanie członków władz i wymyślanie sposobów na pozbycie się wszystkiego, co śmierdzi porządkiem albo dyscypliną." Morte prycha. "Anarchiści uważają, że gdy pozbędą się władz, każdy trep w całych Sferach będzie wolny i szczęśliwy, bo będzie mógł poszukiwać swojej własnej „prawdy“. Chcą ustanowić nowy ład - bez żadnego porządku."'

    menu:
        'Prawda: "To szlachetne dążenia. Od czasu do czasu można by zaburzyć trochę porządek."':
            # a249 # r4695
            $ morteLogic.r4695_action()
            jump vaxis_s71  # EXTERN

        '"To wydaje się trochę… sprzeczne."':
            # a250 # r4696
            jump vaxis_s71  # EXTERN

        '"To chyba jedna z największych bzdur, jakie w życiu słyszałem."':
            # a251 # r4697
            jump vaxis_s71  # EXTERN

        '"Nieważne."':
            # a252 # r4698
            jump vaxis_s71  # EXTERN

        'Prawda: "Wątpię, żeby to kogoś uszczęśliwiło. Do postępu zawsze potrzeba trochę prawa i porządku."':
            # a253 # r4699
            $ morteLogic.r4699_action()
            jump vaxis_s71  # EXTERN


# s91 # say4700
label morte_s91: # externs vaxis_s46
    nr '"On mówi, że ten trep, Farod, sprzedaje Grabarzom dużo truposzy… znaczy ciał umarłych. Właśnie tym zajmują się Grabarze: zbierają trupy i sprzedają je Grabarzom. Wygląda na to, że ten twój Farod sprzedaje tylu truposzy, że Grabarze zaczęli podejrzewać go o to, że sam wpisuje mieszkańców Ula do księgi umarłych zanim wybije ich godzina… no wiesz, zabija ludzi."'

    menu:
        '"Rozumiem. Mam jeszcze jedno pytanie…"':
            # a254 # r4701
            jump vaxis_s43  # EXTERN

        '"Ten Farod brzmi jak jakiś święty. Może później będę chciał ci zadać parę pytań. Nigdzie nie odchodź."':
            # a255 # r4702
            jump morte_dispose


# s92 # say4703
label morte_s92: # externs vaxis_s47
    nr '"On pyta się, czy ktoś cię okradł. Pewnie ma rację."'

    menu:
        '"Rozumiem. Mam jeszcze jedno pytanie…"':
            # a256 # r4704
            jump vaxis_s43  # EXTERN

        '"Nie mogę się doczekać, aż znajdę tego złodzieja. Może później będę chciał ci zadać parę pytań. Nigdzie nie odchodź."':
            # a257 # r4705
            jump morte_dispose


# s93 # say4706
label morte_s93: # externs vaxis_s39
    nr '"Tak, oni *są* głupi."'

    jump vaxis_s61  # EXTERN


# s94 # say4708
label morte_s94: # externs vaxis_s65
    nr '"Nie mogę uwierzyć, że dalej w to brniesz. Czy nie zostało ci choć trochę oleju w mózgownicy?"'

    menu:
        '"Niewiele, jak sądzę…"' if morteLogic.r64535_condition():
            # a258 # r64535
            $ morteLogic.r64535_action()
            jump vaxis_s66  # EXTERN

        '"Niewiele, jak sądzę…"' if morteLogic.r64534_condition():
            # a259 # r64534
            $ morteLogic.r64534_action()
            jump vaxis_s66  # EXTERN


# s95 # say4710
label morte_s95: # externs vaxis_s66
    nr '"Nie możesz już bardziej zasznurować mu ust?"'

    menu:
        '"Zemknij si Myrte…"':
            # a260 # r4711
            jump vaxis_s67  # EXTERN

        '"Mmm-HMMMH!"':
            # a261 # r4712
            jump vaxis_s67  # EXTERN


# s96 # say5029
label morte_s96: # -
    nr '"Hej! Hej! Co robisz?"'

    menu:
        '"Mam zamiar *pogadać* z tym gościem. Coś ci się nie podoba?"':
            # a262 # r5030
            $ morteLogic.r5030_action()
            jump morte_s97

        '"Nic. Ruszajmy."':
            # a263 # r5031
            jump morte_dispose


# s97 # say5032
label morte_s97: # from 96.0
    nr '"Jeśli masz zamiar gadać z Grabarzami, to zostaw mnie tutaj. Nie żyję z nimi w najlepszych stosunkach… a ty też lepiej się z nimi nie spoufalaj. Prędzej puszczą cię z dymem, niż posłuchają, co masz do powiedzenia. Nie bądź szaleńcem, wynośmy się stąd."'

    menu:
        '"Dzięki za radę, ale *w dalszym ciągu* mam zamiar pogadać z tym gościem."':
            # a264 # r5033
            $ morteLogic.r5033_action()
            jump morte_s99

        '"Zgoda. Ruszajmy."':
            # a265 # r5034
            jump morte_dispose


# s98 # say5035
label morte_s98: # -
    nr '"Hej! Jesteś głuchy? Co robisz?"'

    menu:
        '"Słuchaj, mam zamiar pogadać z tym gościem. Coś ci się nie podoba?"':
            # a266 # r5036
            $ morteLogic.r5036_action()
            jump morte_s99

        '"Nic. Ruszajmy."':
            # a267 # r5037
            jump morte_dispose


# s99 # say5038
label morte_s99: # from 97.0 98.0
    nr '"No to mnie *nie* słuchaj - to twój pogrzeb."'

    menu:
        '"Tak, a ty możesz zagrać marsz pogrzebowy. Teraz siedź cicho."':
            # a268 # r5039
            jump soego_s3  # EXTERN

        '"Masz rację. Zapomnij o tym. Ruszajmy."':
            # a269 # r5040
            jump morte_dispose


# s100 # say5041
label morte_s100: # externs soego_s20
    nr '"Co *robisz*?! Jak chcesz go zabić, to na co czekasz!"'

    menu:
        '"Ależ udało mi się złamać mu kark! Nie powinien się nawet ruszać!"':
            # a270 # r5042
            jump soego_s21  # EXTERN


# s101 # say5043
label morte_s101: # externs soego_s10
    nr '"Przynajmniej on *może* chodzić." Morte zaczyna prychać. "Latanie przestaje być ekscytujące, gdy chcesz kogoś kopnąć w tyłek."'

    jump soego_s11  # EXTERN


# s102 # say5049
label morte_s102: # externs dhall_s5
    nr '"Hej, szefie! Co robisz?!"'

    menu:
        '"Zamierzam porozmawiać z tym skrybą. Może on wie coś o tym, dlaczego tu jestem."':
            # a271 # r5050
            jump morte_s103


# s103 # say5052
label morte_s103: # from 102.0
    nr '"Szczękanie jadaczką z Grabarzami powinno być OSTATNIĄ rzeczą…"'

    jump dhall_s0  # EXTERN


# s104 # say5053
label morte_s104: # externs dhall_s0
    nr '"A już *szczególnie* nie powinniśmy wymieniać śpiewki z chorymi Grabarzami. Dalej, spadajmy stąd. Im szybciej się stąd zwiniemy, tym lep…"'

    jump dhall_s1  # EXTERN


# s105 # say6071
label morte_s105: # externs deionarra_s8 deionarra_s48 deionarra_s26 deionarra_s19 deionarra_s0
    nr '"Znowu jesteś ze mną, szefie? Już myślałem, że utonąłeś w myślach."'

    menu:
        '"Nic mi nie jest. Co to był za duch?"':
            # a272 # r6075
            $ morteLogic.r6075_action()
            jump morte_s106

        '"Nic mi nie jest. Ruszajmy."':
            # a273 # r6076
            jump morte_dispose


# s106 # say6072
label morte_s106: # from 105.0
    nr '"Duch?"'

    menu:
        '"Widmo, z którym rozmawiałem. Ta kobieta."':
            # a274 # r6077
            jump morte_s107


# s107 # say6073
label morte_s107: # from 106.0
    nr '"Gadałeś z jakąś kobietą? Gdzie?" Morte w podnieceniu rozgląda się wkoło. "Jak ona wyglądała?"'

    menu:
        '"Stała dokładnie tam, na tym katafalku. Nie widziałeś jej?"':
            # a275 # r6078
            jump morte_s108


# s108 # say6074
label morte_s108: # from 107.0
    nr '"Ech… nie, tylko tak jakbyś się trochę zamyślił, po prostu stałeś nieruchomo jak posąg. Zacząłem się trochę martwić, że znowu zacząłeś się na mnie wkurzać."'

    menu:
        '"Nic mi nie jest… chyba. Ruszajmy."':
            # a276 # r6079
            jump morte_dispose


# s109 # say6324
label morte_s109: # -
    nr '"To mi przypomina o robocie, którą kiedyś miałem." Morte wydaje się być zakłopotany. "To znaczy… chodziło mi o to, że… bez rąk."'

    menu:
        'Obejrzyj truposza.' if morteLogic.r6325_condition():
            # a277 # r6325
            jump post_s3  # EXTERN

        'Obejrzyj truposza.' if morteLogic.r6326_condition():
            # a278 # r6326
            jump post_s4  # EXTERN

        '"Hmmm. Ciekawe, czy to zadziała także przy innych informacjach…"' if morteLogic.r6327_condition():
            # a279 # r6327
            jump post_s5  # EXTERN

        '"Hmmm. Ciekawe, czy to zadziała także przy innych informacjach…"' if morteLogic.r6328_condition():
            # a280 # r6328
            jump post_s5  # EXTERN

        'Zbadaj inne informacje.' if morteLogic.r6329_condition():
            # a281 # r6329
            jump post_s5  # EXTERN

        'Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.' if morteLogic.r6330_condition():
            # a282 # r6330
            jump post_s2  # EXTERN

        'Zostaw truposza w spokoju.':
            # a283 # r6331
            jump morte_dispose


# s110 # say6609
label morte_s110: # externs s42_s3 s42_s0
    nr '"Hola, szefie. To wandalizm. Te nity to pewnie jedyna rzecz, która trzyma te kości w kupie. Pewnie ci goście nie znają się zbyt dobrze na nekromancji."'

    menu:
        '"Więc?"':
            # a284 # r6658
            $ morteLogic.r6658_action()
            jump s42_s1  # EXTERN

        '"Och… Nie chciałem wyrządzić nieodwracalnych szkód."':
            # a285 # r6659
            $ morteLogic.r6659_action()
            jump s42_s1  # EXTERN

        '"W takim razie mniejsza z tym. Może innym razem."':
            # a286 # r6660
            jump s42_s1  # EXTERN


# s111 # say6610
label morte_s111: # externs s42_s3 s42_s2 s42_s0
    nr '"Hmm. Zastanawiam się, czy ten szarobrody miałby coś przeciwko, gdybym pożyczył sobie jego ciało…"'

    menu:
        '"Jaki szarobrody?"':
            # a287 # r6661
            jump s42_s1  # EXTERN

        '"Wątpię, żeby był w stanie zaprotestować."':
            # a288 # r6662
            jump s42_s1  # EXTERN

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a289 # r6663
            jump s42_s1  # EXTERN


# s112 # say6611
label morte_s112: # externs s42_s13
    nr '"Możesz przestać? Zaraz mu ręce odpadną."'

    menu:
        'Skrzyżuj ręce na piersiach.' if morteLogic.r6664_condition():
            # a290 # r6664
            jump s42_s4  # EXTERN

        'Spróbuj naśladować ruchy szkieletu… Zobacz co się stanie.' if morteLogic.r6665_condition():
            # a291 # r6665
            jump s42_s9  # EXTERN

        '"Uch…"':
            # a292 # r6666
            jump s42_s10  # EXTERN

        'Zostaw szkielet w spokoju.':
            # a293 # r6667
            jump morte_dispose


# s113 # say6771
label morte_s113: # from 54.0 54.1
    nr '"To ona włada całym miastem. Nietrudno ją poznać: wokół twarzy wystają jej ostrza, jest prawie tak wysoka jak olbrzym, a w dodatku unosi się nad ziemią, dokładnie jak ci goście." Morte wskazuje głową na dabusa, który się wam przygląda. "Nikt nie wie o niej zbyt wiele rzeczy… Ona też nie mówi zbyt dużo. Trzeba tylko pamiętać o tym, żeby jej nie zezłościć. Dam ci radę: Jak ją zobaczysz, to uciekaj, ile sił w nogach."'

    menu:
        '"Rozumiem."':
            # a294 # r2784
            jump dabus_s3  # EXTERN


# s114 # say6784
label morte_s114: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza? Znajdź jakiegoś rodowitego Sigilianina."'

    menu:
        '"Rozumiem."':
            # a295 # r6955
            jump dabus_s3  # EXTERN


# s115 # say6786
label morte_s115: # -
    nr '"Och, jestem pewien, że *mają* imiona."'

    jump annah_s43  # EXTERN


# s116 # say6790
label morte_s116: # -
    nr '"To *ty* tak twierdzisz, kaduczku."'

    menu:
        '"Zamknij się, Morte. Anno, czy mogłabyś zadać mu kilka innych pytań?"':
            # a296 # r6956
            jump annah_s40  # EXTERN

        '"Mniejsza z tym. Ruszajmy."':
            # a297 # r6957
            $ morteLogic.r6957_action()
            jump dabus_s6  # EXTERN


# s117 # say6794
label morte_s117: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza? Weź do tego tę kaduczą dzierlatkę." Morte wskazuje na Annę. "To rodowita mieszkanka Ula."'

    menu:
        '"Może to zrobię…"':
            # a298 # r6958
            jump dabus_s3  # EXTERN


# s118 # say6797
label morte_s118: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza?" Morte wskazuje na Dak“kona. "Weź do tego świętoszkowatego niemowę."'

    menu:
        '"Może to zrobię…"':
            # a299 # r6959
            jump dabus_s3  # EXTERN


# s119 # say6800
label morte_s119: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza? Weź do tego tę tanar“ri." Morte wskazuje na Nie-Sławę. "Ona pewnie nie raz musiała wymieniać z nimi śpiewkę."'

    menu:
        '"Może to zrobię…"':
            # a300 # r6960
            jump dabus_s3  # EXTERN


# s120 # say7040
label morte_s120: # -
    nr 'Kiedy się odwracasz, widzisz wpatrzony w siebie wzrok Mortego. "Ach…"'

    menu:
        '"O co chodzi?"':
            # a301 # r7055
            jump morte_s121


# s121 # say7041
label morte_s121: # from 120.0
    nr '"*Widziałeś* jak ta nieboszczykowata piękność się na mnie patrzyła? Zęby Mortego zaczynają zgrzytać, jakby nie mógł się czegoś doczekać. "Szukała jakiegoś śmiałka, który ogrzałby jej trumnę."'

    menu:
        '"*Proszę*, tylko nie znowu to samo."' if morteLogic.r7056_condition():
            # a302 # r7056
            $ morteLogic.r7056_action()
            jump morte_s122

        '"O czym ty *gadasz*?"' if morteLogic.r7057_condition():
            # a303 # r7057
            $ morteLogic.r7057_action()
            jump morte_s47

        '"Co? Masz na myśli to puste spojrzenie, jakby zza grobu?"' if morteLogic.r7058_condition():
            # a304 # r7058
            $ morteLogic.r7058_action()
            jump morte_s47


# s122 # say7042
label morte_s122: # from 121.0
    nr 'Morte nie zwraca na ciebie uwagi i wpada w zamyślenie. "Prawdę mówiąc, to takie przyciąganie uwagi wcale mi nie przeszkadza… Po prostu lubię, gdy ktoś widzi we mnie coś więcej niż tylko czaszkę, rozumiesz? Mam w sobie uczucia, które wychodzą poza moje podstawowe zwierzęce instynkty. Chcę prawdziwego romansu, a nie szybkiego numerku koło mauzoleum."'

    menu:
        '"Mów tak dalej, a zaraz stąd wylecisz."':
            # a305 # r7059
            jump morte_s123

        '"Morte, *jesteś* czaszką. Wszyscy widzą cię właśnie w ten sposób. Musisz się z tym pogodzić."':
            # a306 # r7060
            jump morte_s124

        '"Rozumiem. A teraz wynośmy się stąd, dobra?"':
            # a307 # r7061
            jump morte_dispose


# s123 # say7043
label morte_s123: # from 122.0
    nr '"Ech, szefie…" Morte cofa się lekko, żeby się znaleźć poza zasięgiem twoich ramion. "Kobiety marzą o kochankach, a nie o awanturnikach."'

    menu:
        '"Jesteś chyba *ostatnią* osobą, którą poprosiłbym o rady w sprawach miłości."':
            # a308 # r7062
            jump morte_s126

        '"Nieważne, Morte. Ruszajmy."':
            # a309 # r7063
            jump morte_dispose


# s124 # say7044
label morte_s124: # from 122.1
    nr '"Może i jestem tylko czaszką, ale mam wielkie serce."'

    menu:
        '"Prawdę mówiąc, *nie* masz nic takiego."':
            # a310 # r7064
            jump morte_s125

        '"Nieważne, Morte. Ruszajmy."':
            # a311 # r7065
            jump morte_dispose


# s125 # say7045
label morte_s125: # from 124.0
    nr '"Czy ktoś wrzucił cię do mojego życia, żebyś ciągle niweczył moje marzenia i aspiracje?! Niech ci będzie. Nie mam serca, ale za to *mam* duszę."'

    menu:
        '"Szczerze mówiąc, to mogę się założyć, że… Mniejsza z tym. Ruszajmy."':
            # a312 # r7066
            jump morte_dispose

        '"Nieważne, Morte. Ruszajmy."':
            # a313 # r7067
            jump morte_dispose


# s126 # say7046
label morte_s126: # from 123.0
    nr '"Gdybyś miał tylko połowę tego rozsądku, z którym umarłeś, to nie wygadywałbyś takich bzdur." Głos Mortego staje się jeszcze bardziej kwiecisty. "Jeśli chodzi o kroniki miłości, to wszystkie wyszły spod mojego pióra."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a314 # r7068
            jump morte_dispose


# s127 # say7071
label morte_s127: # -
    nr 'Morte przez chwilę przygląda się szkieletowi, a potem potrząsa głową. "Niee… ten jest znowu zbyt czysty… Prawie nie zostało na nim żadne mięso. A poza tym, nigdy nie udałoby mi się zmyć całego tego bielidła z kości."'

    menu:
        '"No, nie wiem, czy on jest „zbyt czysty“… Mógłbyś się jeszcze nauczyć co nieco o czystości."':
            # a315 # r7076
            jump morte_s70

        '"No dobra. Ruszajmy."':
            # a316 # r7077
            jump morte_dispose


# s128 # say7130
label morte_s128: # -
    nr '"Taaak!"'

    jump hivef1_s8  # EXTERN


# s129 # say7187
label morte_s129: # -
    nr '"Mimir to gadająca encyklopedia. To ja, szefie."'

    menu:
        '"Rozumiem. Nie podniecaj się tak, Morte. Sądząc po tym, jak ona wygląda, to pewnie ratuję cię przed powtórną śmiercią."':
            # a317 # r7483
            $ morteLogic.r7483_action()
            jump harlotn_s8  # EXTERN

        '"Wynośmy się stąd. Żegnaj, ślicznotko."':
            # a318 # r7484
            jump morte_dispose


# s130 # say7188
label morte_s130: # -
    nr 'Morte wpatruje się, zahipnotyzowany, w dziwkę, która wypuszcza z siebie strumień przekleństw. Kiedy kończy tę swoją lawinę słów, Morte przez chwilę trwa w milczeniu, po czym odwraca się do ciebie. "Łał, szefie. Znam jeszcze parę innych obelg do jej arsenału." Czaszka odwraca się z powrotem do dziwki, która właśnie nabiera powietrza do następnej serii. "Oprócz tego jestem także zakochany."~ [MRT387]'

    menu:
        'Odejdź.':
            # a319 # r7485
            $ morteLogic.r7485_action()
            jump morte_dispose


# s131 # say7775
label morte_s131: # -
    nr '"Hola, szefie." Morte wtrąca się, zanim otworzysz usta, żeby rozpocząć rozmowę. "Knebel. Nie możesz zagadywać każdego biesa, którego spotkasz na ulicy. Daj sobie spokój."'

    menu:
        '"Chcę tylko zadać mu kilka pytań…"':
            # a320 # r7776
            jump morte_s132

        'Zostaw to stworzenie w spokoju.':
            # a321 # r7777
            jump morte_dispose


# s132 # say7778
label morte_s132: # from 131.0
    nr '"Wcale nie." Morte spogląda na postać, a potem odwraca się do ciebie i zniża głos do szeptu. "Są strasznie czułe. Lepiej już chodźmy."'

    menu:
        '"Zaryzykuję."':
            # a322 # r7779
            jump bishab_s11  # EXTERN

        'Zostaw to stworzenie w spokoju.':
            # a323 # r7780
            jump morte_dispose


# s133 # say7805
label morte_s133: # -
    nr 'Kiedy już masz się odezwać, Morte wydaje głośne westchnienie.'

    menu:
        '"Słucham?"':
            # a324 # r7806
            jump morte_s134


# s134 # say7807
label morte_s134: # from 133.0
    nr '"Och, nic… Wiesz, życie to najlepszy nauczyciel." Morte wskazuje na stworzenie. "Dalej, nie przeszkadzaj sobie."'

    menu:
        '"Zgoda."':
            # a325 # r7808
            jump bishab_s11  # EXTERN

        '"Mniejsza z tym. Ruszajmy."':
            # a326 # r7809
            jump morte_dispose


# s135 # say2349
label morte_s135: # from 44.0 44.1
    nr '"Tak, „githem“…" Morte przenosi wzrok na githa, który ciągle się w ciebie wpatruje. "Porozmawiamy o tym innym razem."'

    menu:
        '"Nie mogę jeszcze iść. Najpierw chcę mu zadać kilka pytań…"':
            # a327 # r9035
            jump gith_s7  # EXTERN

        'Zostaw githa w spokoju.':
            # a328 # r9036
            jump morte_dispose


# s136 # say9860
label morte_s136: # -
    nr '"Dalej, szefie… Zabijesz tego skurla zanim zdąży się obudzić!"'

    menu:
        '"Masz rację, Morte. Ruszajmy."':
            # a329 # r9882
            jump morte_dispose


# s137 # say11946
label morte_s137: # -
    nr 'Morte podlatuje do ciebie. "Jaką masz do mnie śpiewkę, szefie?"'

    menu:
        '"Widzisz te zęby?"':
            # a330 # r11974
            jump morte_s138

        '"Nic, mniejsza z tym."':
            # a331 # r11975
            jump morte_dispose


# s138 # say11947
label morte_s138: # from 137.0
    nr 'Morte spogląda na twoją dłoń. Wydaje się być chorobliwie zafascynowany. "Taaak. Ależ z nich brzydkie, małe trepy, prawda?"'

    jump morte_dispose


# s139 # say11948
label morte_s139: # -
    nr '"Knebel." Czaszką Mortego wstrząsa dreszcz. "Czy chciałbyś te rzeczy w *sobie*?"'

    menu:
        '"Daj spokój, Morte. Wygląda na to, że się im spodobałeś. Spójrz tylko, jak na ciebie patrzą."':
            # a332 # r11976
            jump morte_s140

        'Złap Mortego i wsuń mu zęby do ust.':
            # a333 # r11977
            $ morteLogic.r11977_action()
            jump morte_s141

        '"Mniejsza z tym."':
            # a334 # r11978
            jump morte_dispose


# s140 # say11949
label morte_s140: # from 139.0
    nr '"Niech te małe gnojki nawet się do mnie nie zbliżają, albo już ja im…" Morte przerywa w pół słowa. "Wiesz, nie mam zielonego pojęcia, jak można postraszyć zęby."'

    menu:
        'Przyjrzyj się zębom dokładnie.':
            # a335 # r11979
            jump morte_dispose

        'Złap Mortego i wsuń mu zęby do ust.':
            # a336 # r11980
            $ morteLogic.r11980_action()
            jump morte_s141

        '"Mniejsza z tym."':
            # a337 # r11981
            jump morte_dispose


# s141 # say11950
label morte_s141: # from 139.1 140.1
    nr 'Walka nie trwa długo. Łapiesz Mortego za głowę - zresztą to jedyny chwyt, który możesz zastosować - i kiedy czaszka próbuje wgryźć się w twoją rękę, wyskakują z niej zęby i zaczynają zbliżać się do jego szczęki. Nie czekając ani chwili, zęby Ingressy wyrywają stare zęby Mortego i wskakują na ich miejsce.'

    menu:
        '"No i co, Morte. Nie było tak źle, prawda?"':
            # a338 # r11982
            $ morteLogic.r11982_action()
            jump morte_s143


# s142 # say11951
label morte_s142: # from 149.0
    nr 'Morte nie przestaje wyć. Zęby usadawiają się na swoich nowych miejscach, dostosowując się i zapuszczając korzenie przy akompaniamencie okropnego odgłosu wiercenia.'

    menu:
        '"Morte? Wszystko w porządku?"':
            # a339 # r11983
            $ morteLogic.r11983_action()
            jump morte_s143


# s143 # say11952
label morte_s143: # from 141.0 142.0
    nr 'Wygląda na to, że Morte cię nie słyszy… ciągle nie przestaje wyć, a potem nagle zaczyna uderzać o siebie szczękami. Udaje mu się to zrobić ze trzy razy, ale potem jego górne i dolne zęby złączają się ze sobą i nie pozwalają mu otworzyć ust.'

    menu:
        '"Łał."':
            # a340 # r11984
            jump morte_s144


# s144 # say11953
label morte_s144: # from 143.0
    nr 'Morte coś do ciebie mruczy przez zęby i raz po raz szeroko otwiera oczy.'

    menu:
        '"No i… podobają ci się?"' if morteLogic.r11985_condition():
            # a341 # r11985
            jump morte_s145

        '"Wszystko w porządku, Morte?"' if morteLogic.r11986_condition():
            # a342 # r11986
            jump morte_s150


# s145 # say11954
label morte_s145: # from 144.0
    nr 'Zęby nagle puszczają, a Morte może wreszcie wziąć głęboki wdech. "*Zabiję* cię za to. To było chamskie z twojej strony."'

    menu:
        '"Jakie to uczucie?"':
            # a343 # r11987
            jump morte_s146


# s146 # say11955
label morte_s146: # from 145.0 150.0
    nr 'Morte porusza swoją szczęką, jakby chciał ją wypróbować. "Trochę dziwne. Ale wcale nie takie złe." Nagle zęby zamieniają się w kły. "Ooooooch! One się zmieniają!" Zęby z powrotem wracają do normalnej wielkości, potem znowu zamieniają się w kły, i znowu się zmniejszają… "Chyba je polubię."'

    menu:
        '"Przykro mi, Morte. Nie chciałem cię skrzywdzić."' if morteLogic.r11988_condition():
            # a344 # r11988
            jump morte_s147

        '"Widzisz? No i nie miałem racji?"' if morteLogic.r11989_condition():
            # a345 # r11989
            jump morte_s147


# s147 # say11956
label morte_s147: # from 146.0 146.1
    nr '"Och, i tak cię za to dostanę." Odpowiada Morte. Na jego twarzy pojawia się uśmiech, a jego zęby znowu zamieniają się w kły. "Tylko poczekaj."'

    menu:
        '"Ee… zemsta nigdy nikomu nie pomogła… Ruszajmy."' if morteLogic.r11990_condition():
            # a346 # r11990
            jump morte_dispose

        '"Jeszcze mi podziękujesz."' if morteLogic.r11991_condition():
            # a347 # r11991
            jump morte_dispose


# s148 # say11957
label morte_s148: # -
    nr '"Coś nie tak?" Morte podlatuje bliżej i spogląda na twoją dłoń. "Hej… one wyglądają, jakby się do czegoś szykowały, no nie?"'

    menu:
        '"Na pewno, one…"':
            # a348 # r11992
            jump morte_s149


# s149 # say11958
label morte_s149: # from 148.0
    nr 'To, co dzieje się w następnym momencie, jest trudne do opisania… i nie można ukryć współczucia, gdy się na to patrzy. Kiedy już masz zamknąć dłoń, zęby wyskakują z niej i zaczynają się zbliżać do szczęki Mortego. Nie czekając ani chwili, zęby Ingressy wyrywają stare zęby czaszki i wskakują na ich miejsce.'

    menu:
        '"Morte!"':
            # a349 # r11993
            jump morte_s142


# s150 # say11959
label morte_s150: # from 144.1
    nr 'Zęby nagle puszczają, a Morte może w końcu wziąć głęboki oddech. "*Zabiję* cię za to! Zrobiłeś to z premedytacją! Jestem tego pewien!"'

    menu:
        '"Nie chciałem, żeby to się stało… Nawet cię ostrzegałem. Ee… jakie to uczucie?"':
            # a350 # r11994
            jump morte_s146


# s151 # say12389
label morte_s151: # -
    nr 'Morte szepcze ci do ucha: "Szefie, nie podoba mi się to. Oni nie powinni być tutaj. Wojna Krwi nie dołożyła niebiańskim tyłkom aż tak porządnie, żeby byle jaki bies mógł zostawiać swoje obowiązki. Oni czegoś *chcą*. Postępuj ostrożnie." W międzyczasie Tegar„in nie przestaje odpowiadać swojemu towarzyszowi…'

    jump tegarin_s12  # EXTERN


# s152 # say12449
label morte_s152: # -
    nr '"Szefie, jestem więcej niż pewien, że tym trepom nie można ufać. Wygląda mi na to, że oni zdezerterowali, a teraz szukają jakiegoś sposobu, żeby podwyższyć swój status w Baator. Lepiej z nimi nie rozmawiać, szefie… Nie wiesz, co oni knują, a możesz się spalić… dosłownie."'

    menu:
        '"W porządku, Morte. Jeszcze tylko parę pytań do tych dwóch…"':
            # a351 # r12450
            jump aethel_s11  # EXTERN

        '"W porządku, Morte. Już skończyłem."':
            # a352 # r12451
            jump morte_dispose


# s153 # say12466
label morte_s153: # -
    nr 'Morte podlatuje do twojego ucha i szepcze: "On *ma* rację, szefie… Nie wiem co cię tak wkurzyło."'

    menu:
        '"W porządku… Chciałem tylko zadać pytanie…"':
            # a353 # r12553
            jump baria_s4  # EXTERN

        '"Zamknij się, ty gderająca czaszko! A ty, kozi pomiocie: Giń…"':
            # a354 # r12554
            $ morteLogic.r12554_action()
            jump morte_dispose

        '"O nie… Pożałujesz tego…"':
            # a355 # r12555
            $ morteLogic.r12555_action()
            jump morte_dispose

        '"W takim razie mniejsza z tym. Żegnaj."':
            # a356 # r12556
            $ morteLogic.r12556_action()
            jump morte_dispose


# s154 # say12467
label morte_s154: # -
    nr '"Tak, tak! Dobry towar!"'

    jump baria_s20  # EXTERN


# s155 # say12621
label morte_s155: # -
    nr 'Kiedy wszystkie oczy zwracają się na czaszkę, Morte wydaje się być zaskoczony. "Co? Co?" Odnosisz wrażenie, że gdyby miał usta, to zagwizdałby nimi niewinnie.'

    menu:
        '"Masz na to jakieś wytłumaczenie, Morte?"':
            # a357 # r12854
            jump morte_s156

        '"Co to jest „mimir?“"' if morteLogic.r12855_condition():
            # a358 # r12855
            $ morteLogic.r12855_action()
            jump morte_s157

        '"Mniejsza z tym… Mógłbyś mi odpowiedzieć?"':
            # a359 # r12856
            jump creed_s30  # EXTERN


# s156 # say12622
label morte_s156: # from 155.0
    nr '"Chyba powinniśmy wysłuchać tego człowieka. Co?" Morte odwraca się i spogląda na szczurołapa.'

    menu:
        '"Nie… Posłuchajmy, co ty masz do powiedzenia, Morte."':
            # a360 # r12857
            jump morte_s158

        '"Za chwilę… Co to jest „mimir?“"' if morteLogic.r12858_condition():
            # a361 # r12858
            $ morteLogic.r12858_action()
            jump morte_s157

        'Odwróć się tyłem do szczurołapa.':
            # a362 # r12859
            jump creed_s32  # EXTERN


# s157 # say12623
label morte_s157: # from 155.1 156.1
    nr 'Morte opuszcza wzrok, jakby był zakłopotany. "To… mówiąca encyklopedia. Wcale nie jestem z tego dumny. Teraz wysłuchajmy tego człowieka, dobrze?"'

    menu:
        '"Dobrze."':
            # a363 # r12860
            $ morteLogic.r12860_action()
            jump creed_s32  # EXTERN

        '"Nie, nie mam już więcej pytań. Żegnaj, szczurołapie."':
            # a364 # r12861
            $ morteLogic.r12861_action()
            jump creed_s59  # EXTERN


# s158 # say12624
label morte_s158: # from 156.0
    nr '"Och, daj spokój, szefie… Dlaczego miałbym coś przed tobą ukrywać? Powiedziałem ci o wszystkich użytecznych rzeczach, o których wiedziałem. Pozwólmy temu trepowi dokończyć."'

    menu:
        '"Dobrze."':
            # a365 # r12862
            jump creed_s32  # EXTERN

        '"Mniejsza z tym. Ruszajmy… Żegnaj, szczurołapie."':
            # a366 # r12863
            jump creed_s59  # EXTERN


# s159 # say12625
label morte_s159: # -
    nr '"Tak, szefie! To dopiero duch!"'

    jump creed_s40  # EXTERN


# s160 # say12626
label morte_s160: # -
    nr '"Zdechnąć, szefie… zdechnąć."'

    menu:
        '"Ty jednak masz przyjacielskie zamiary, szczurołapie…"':
            # a367 # r12864
            jump creed_s49  # EXTERN

        '"Rozumiem. Jeszcze tylko jedno pytanie…"':
            # a368 # r12865
            jump creed_s15  # EXTERN

        '"Dzięki za informację. Żegnaj."':
            # a369 # r12866
            jump creed_s59  # EXTERN


# s161 # say12627
label morte_s161: # -
    nr '"Zdechnąć, szefie… zdechnąć."'

    menu:
        '"Ach… Możesz powtórzyć jeszcze raz o tych ludziach, którzy płacą za nieżywe szczury?"':
            # a370 # r12867
            jump creed_s18  # EXTERN

        '"Rozumiem. Chcę cię jeszcze spytać o coś innego…"':
            # a371 # r12868
            jump creed_s15  # EXTERN

        '"Rozumiem. Żegnaj."':
            # a372 # r12869
            jump creed_s59  # EXTERN


# s162 # say13748
label morte_s162: # -
    nr '"W tym drzewie złamała się o jedna gałąź za dużo." Morte zaczyna przewracać oczyma. "Nie ma sensu gadać z Kaosytami, szefie. To świry."'

    menu:
        '"Z Kaosytami?"' if morteLogic.r13774_condition():
            # a373 # r13774
            $ morteLogic.r13774_action()
            jump morte_s163

        '"Możesz mi powtórzyć, kim są ci Kaosyci?"' if morteLogic.r13775_condition():
            # a374 # r13775
            $ morteLogic.r13775_action()
            jump morte_s163

        '"Pomyślałem, że mógłbym się czegoś od niego nauczyć. Mniejsza z tym. Ruszajmy."' if morteLogic.r13776_condition():
            # a375 # r13776
            $ morteLogic.r13776_action()
            jump morte_dispose


# s163 # say13749
label morte_s163: # from 162.0 162.1
    nr '"Tworzą „frakcję“, która nie kieruje się żadnymi zasadami… Oprócz tej, że żadna myśl nie zamieszka zbyt długo w ich głowach. Czasami nazywają ich „Chaosytami“. Chyba nie trzeba wyjaśniać dlaczego."'

    menu:
        '"W jaki sposób zdobywają nowych członków?"':
            # a376 # r13777
            jump morte_s164

        '"Rozumiem. Ruszajmy."':
            # a377 # r13778
            jump morte_dispose


# s164 # say13750
label morte_s164: # from 163.0
    nr '"Wygląda na to, że członkowie garną się do nich jak muchy… Chyba muszą być nieźle stuknięci. Wątpię, żeby mieli kogoś, kto zajmowałby się naborem… Choć prawdę mówiąc, nie można o nich nic powiedzieć na sto procent."'

    menu:
        '"Rozumiem. Dzięki za informację."':
            # a378 # r13779
            jump morte_dispose


# s165 # say13828
label morte_s165: # -
    nr '"W tym drzewie złamała się o jedna gałąź za dużo." Morte zaczyna przewracać oczyma. "Nie ma sensu gadać z Kaosytami, szefie. To świry."'

    menu:
        '"Z Kaosytami?"' if morteLogic.r13986_condition():
            # a379 # r13986
            $ morteLogic.r13986_action()
            jump morte_s166

        '"Możesz mi powtórzyć, kim są ci Kaosyci?"' if morteLogic.r13987_condition():
            # a380 # r13987
            $ morteLogic.r13987_action()
            jump morte_s166

        '"Pomyślałem, że mógłbym się czegoś od niego nauczyć. Mniejsza z tym. Ruszajmy."' if morteLogic.r13988_condition():
            # a381 # r13988
            $ morteLogic.r13988_action()
            jump morte_dispose


# s166 # say13829
label morte_s166: # from 165.0 165.1
    nr '"Tworzą „frakcję“, która nie kieruje się żadnymi zasadami… Oprócz tej, że żadna myśl nie zamieszka zbyt długo w ich głowach. Czasami nazywają ich „Chaosytami“. Chyba nie trzeba wyjaśniać dlaczego."'

    menu:
        '"W jaki sposób zdobywają nowych członków?"' if morteLogic.r13989_condition():
            # a382 # r13989
            jump morte_s167

        '"Rozumiem. W takim razie ruszajmy."':
            # a383 # r13990
            jump morte_dispose


# s167 # say13830
label morte_s167: # from 166.0
    nr '"Wygląda na to, że członkowie garną się do nich jak muchy… Chyba muszą być nieźle stuknięci. Wątpię, żeby mieli kogoś, kto zajmowałby się naborem… Choć prawdę mówiąc, nie można o nich nic powiedzieć na sto procent."'

    menu:
        '"Rozumiem. Dzięki za informację."':
            # a384 # r13991
            jump morte_dispose


# s168 # say14075
label morte_s168: # -
    nr '"W porządku…" Syczy do ciebie Morte. "Ruszajmy, szefie. Ten Grabarz równie dobrze nadawałby się na nawóz."'

    menu:
        '"Wynośmy się stąd."' if morteLogic.r14275_condition():
            # a385 # r14275
            jump await_s6  # EXTERN

        '"Wynośmy się stąd."' if morteLogic.r14276_condition():
            # a386 # r14276
            jump await_s6  # EXTERN

        '"Wynośmy się stąd."' if morteLogic.r14277_condition():
            # a387 # r14277
            jump await_s6  # EXTERN

        '"Wynośmy się stąd."' if morteLogic.r14278_condition():
            # a388 # r14278
            jump await_s15  # EXTERN


# s169 # say15339
label morte_s169: # -
    nr '"Rozedrzyj tego cukierkowatego pięknisia na strzępy, szefie! Pokaż mu gdzie raki zimują!"'

    jump adyzoel_s19  # EXTERN


# s170 # say15340
label morte_s170: # -
    nr '"No właśnie, odpowiadaj na pytania!"'

    jump adyzoel_s13  # EXTERN


# s171 # say15341
label morte_s171: # -
    nr '"Stawiam jednego miedziaka na tego wielkiego gościa z bliznami!" Morte podlatuje bliżej i szepcze ci do ucha: "Czyli na ciebie, szefie. Nie zawiedź nas."'

    jump adyzoel_s20  # EXTERN


# s172 # say15342
label morte_s172: # -
    nr '"W porządku, szefie: tym razem mu dołożysz! Zapomnij o fair play!"'

    jump adyzoel_s19  # EXTERN


# s173 # say15343
label morte_s173: # -
    nr '"No właśnie, ty pompatyczny, wyperfumowany, cukierkowaty tyłku… *słyszałaś*, co powiedział!"'

    jump adyzoel_s32  # EXTERN


# s174 # say15344
label morte_s174: # -
    nr '"Kim *ja* jestem? Ha! Mógłbym być twoim ojcem, ale ta małpa zrzuciła mnie ze schodów!"'

    menu:
        '"Morte, siedź cicho."':
            # a389 # r15490
            jump morte_s175

        'Pozwól Mortemu dokończyć.':
            # a390 # r15491
            jump morte_s175


# s175 # say15345
label morte_s175: # from 174.0 174.1
    nr '"Coś nie tak, księżniczko? Zabrakło ci słów? Lepiej zamknij tę rozdziawioną szczękę zanim jakaś zabłąkana mucha wleci ci do gardła! Słyszysz co mówię! Zabieraj stąd swój zapchlony stanik i wracaj pod brudną spódnicę do swojej matki, bo tam twoje miejsce! I pozdrów ją ode mnie!"'

    menu:
        '"Morte: zamknij się, i to *już*."':
            # a391 # r15492
            $ morteLogic.r15492_action()
            jump morte_s176

        'Pozwól Mortemu dokończyć.':
            # a392 # r15493
            jump morte_s177


# s176 # say15346
label morte_s176: # from 175.0
    nr '"CO? Och… przepraszam, szefie. Tacy jak on strasznie mnie wkurzają…"'

    jump adyzoel_s33  # EXTERN


# s177 # say15347
label morte_s177: # from 175.1
    nr '"Gdybym nie wiedział tego lepiej, powiedziałbym, że…"'

    jump adyzoel_s33  # EXTERN


# s178 # say15348
label morte_s178: # -
    nr '"Co? Jestem tylko mimirem, szefie! Nie potrafię się „pojedynkować“!"'

    $ morteLogic.s178_action()
    jump adyzoel_s35  # EXTERN


# s179 # say15349
label morte_s179: # -
    nr '"To, ee… coś w stylu mówiącej encyklopedii. Naprawdę, nie lubię o tym wspominać, bo trochę mnie to zawstydza."'

    if morteLogic.s179_condition():
        $ morteLogic.s179_action()
        jump adyzoel_s36  # EXTERN
    menu:
        '"Ale ty NIE JESTEŚ mimirem, Morte…"' if morteLogic.r65537_condition():
            # a393 # r65537
            jump adyzoel_s36  # EXTERN


# s180 # say15350
label morte_s180: # -
    nr '"Dalej, szefie… Puścisz mu to płazem? Zmiażdż tego pyszałkowatego pięknisia! Jak już go położysz, to zajmę się jego oczami!"'

    menu:
        '"Masz rację… Dorwijmy go."':
            # a394 # r15494
            jump adyzoel_s19  # EXTERN

        '"Nie czas teraz na to, Morte. Ruszajmy."':
            # a395 # r15495
            $ morteLogic.r15495_action()
            jump morte_dispose


# s181 # say16613
label morte_s181: # from 185.0
    nr '"Co? Och, dobra, szefie - cokolwiek powiesz."'

    menu:
        '"Dzięki. Mam do ciebie parę pytań, Opłakujący…"' if morteLogic.r16881_condition():
            # a396 # r16881
            jump mftree_s28  # EXTERN

        '"Mówię serio, Morte. Mógłbyś się na to zdobyć?"' if morteLogic.r16882_condition():
            # a397 # r16882
            $ morteLogic.r16882_action()
            jump morte_s182

        '"Dzięki, Morte. Żegnaj, Opłakujący Drzewa."':
            # a398 # r16883
            jump morte_dispose


# s182 # say16614
label morte_s182: # from 181.1
    nr 'Morte przygląda ci się przez chwilę w milczeniu, a potem potakuje głową. "Jasne, że tak. Jeśli to dla ciebie takie ważne, to mogę to zrobić."'

    menu:
        '"Dzięki. Anno? Mogłabyś?"' if morteLogic.r16884_condition():
            # a399 # r16884
            $ morteLogic.r16884_action()
            jump annah_s99  # EXTERN

        '"Dzięki. Ignusie?"' if morteLogic.r16885_condition():
            # a400 # r16885
            $ morteLogic.r16885_action()
            jump ignus_s11  # EXTERN

        '"Dzięki. Sławo, zastanowisz się nad tym?"' if morteLogic.r16886_condition():
            # a401 # r16886
            $ morteLogic.r16886_action()
            jump grace_s14  # EXTERN

        '"Dzięki. Dak„konie, mógłbyś pomóc temu człowiekowi?"' if morteLogic.r16887_condition():
            # a402 # r16887
            $ morteLogic.r16887_action()
            jump dakkon_s74  # EXTERN

        '"Dzięki. Dak„konie: pomóż temu człowiekowi."' if morteLogic.r16888_condition():
            # a403 # r16888
            $ morteLogic.r16888_action()
            jump dakkon_s75  # EXTERN

        '"Dzięki. Nordomie, mógłbyś pomóc?"' if morteLogic.r16889_condition():
            # a404 # r16889
            $ morteLogic.r16889_action()
            jump nordom_s1  # EXTERN

        '"Dzięki. Vhailorze, mógłbyś pomóc?"' if morteLogic.r16890_condition():
            # a405 # r16890
            $ morteLogic.r16890_action()
            jump vhail_s1  # EXTERN

        '"Dzięki. Mam do ciebie parę pytań, Opłakujący…"':
            # a406 # r16891
            jump mftree_s28  # EXTERN

        '"Dzięki, Morte. Żegnaj, Opłakujący Drzewa."':
            # a407 # r16892
            jump morte_dispose


# s183 # say16615
label morte_s183: # -
    nr '"Wiesz co, szefie, *naprawdę* nie wydaje mi się, żeby to miało jakikolwiek sens. Na tych małych gości to po prostu nie działa."'

    jump nordom_s2  # EXTERN


# s184 # say16616
label morte_s184: # -
    nr '"O rany, no i masz. W ten sposób tylko tracisz swój czas, szefie!"'

    jump nordom_s3  # EXTERN


# s185 # say16617
label morte_s185: # -
    nr '"Wiesz co, szefie, widziałem wiele dziwnych rzeczy… Ale nieźle mnie zszokowało, że coś takiego jest w ogóle *możliwe*."'

    menu:
        '"Dziękuję, Nordomie. Morte? Co ty na to?"' if morteLogic.r16893_condition():
            # a408 # r16893
            $ morteLogic.r16893_action()
            jump morte_s181

        '"Dziękuję, Nordomie. Anno? Mogłabyś?"' if morteLogic.r16894_condition():
            # a409 # r16894
            $ morteLogic.r16894_action()
            jump annah_s99  # EXTERN

        '"Dziękuję, Nordomie. Ignusie?"' if morteLogic.r16895_condition():
            # a410 # r16895
            $ morteLogic.r16895_action()
            jump ignus_s11  # EXTERN

        '"Dziękuję, Nordomie. Sławo, co o tym sądzisz?"' if morteLogic.r16896_condition():
            # a411 # r16896
            $ morteLogic.r16896_action()
            jump grace_s14  # EXTERN

        '"Dziękuję, Nordomie. Dak„konie, czy mógłbyś pomóc temu człowiekowi?"' if morteLogic.r16897_condition():
            # a412 # r16897
            $ morteLogic.r16897_action()
            jump dakkon_s74  # EXTERN

        '"Dziękuję, Nordomie. Dak„konie: pomóż temu człowiekowi."' if morteLogic.r16898_condition():
            # a413 # r16898
            $ morteLogic.r16898_action()
            jump dakkon_s75  # EXTERN

        '"Dziękuję, Nordomie. Vhailorze, mógłbyś pomóc?"' if morteLogic.r16899_condition():
            # a414 # r16899
            $ morteLogic.r16899_action()
            jump vhail_s1  # EXTERN

        '"Dziękuję, Nordomie. Mam do ciebie parę pytań, Opłakujący…"':
            # a415 # r16900
            jump mftree_s28  # EXTERN

        '"Dziękuję ci, Nordomie. Żegnaj, Opłakujący Drzewa."':
            # a416 # r16901
            jump morte_dispose


# s186 # say16618
label morte_s186: # -
    nr '"Och! Nie mogę na to patrzeć!"'

    jump ignus_s13  # EXTERN


# s187 # say17533
label morte_s187: # -
    nr '"Dlaczego nie, szefie! Jak będziemy w złym humorze, to będzie komu przykopać, no nie? Hmm… Przynajmniej będę sobie wyobrażać, że przykopuję… A poza tym chcę zobaczyć ten piętnastostopowy wyskok od gorącego węgla!"'

    menu:
        '"Co o tym myślisz, Anno?"' if morteLogic.r17583_condition():
            # a417 # r17583
            jump annah_s107  # EXTERN

        '"Wezmę jednego, handlarzu."' if morteLogic.r17584_condition():
            # a418 # r17584
            $ morteLogic.r17584_action()
            jump 300mer5_s5  # EXTERN

        '"Lepiej nie wydawać pieniędzy. Ale mam parę pytań…"' if morteLogic.r17585_condition():
            # a419 # r17585
            jump 300mer5_s2  # EXTERN

        '"Wolę nie rozstawać się z moimi miedziakami. Żegnaj, kupcze."' if morteLogic.r17586_condition():
            # a420 # r17586
            jump morte_dispose

        '"Nie mam tylu miedziaków. Ale mam do ciebie parę pytań, kupcze…"' if morteLogic.r17587_condition():
            # a421 # r17587
            jump 300mer5_s2  # EXTERN

        '"Mniejsza z tym, kupcze. Nie mam tylu miedziaków. Żegnaj."' if morteLogic.r17588_condition():
            # a422 # r17588
            jump morte_dispose


# s188 # say18801
label morte_s188: # -
    nr 'Morte odwraca się do mieszkańca Ula. "Szpicuj się."'

    menu:
        '"Nie dostaniesz tej czaszki."':
            # a423 # r18802
            $ morteLogic.r18802_action()
            jump colylfn_s5  # EXTERN

        '"To nie twoja czaszka."':
            # a424 # r18803
            jump colylfn_s6  # EXTERN

        'Prawda: "No dalej, zabierz tę czaszkę."':
            # a425 # r18804
            jump colylfn_s9  # EXTERN

        'Zaatakuj go jak tylko się odkryje: "No dalej, zabierz tę czaszkę."':
            # a426 # r18805
            jump colylfn_s10  # EXTERN

        'Prawda: "Gdybyś potrafił udowodnić, że ta czaszka do ciebie należy, wówczas oddałbym ci ją. To byłoby fair."':
            # a427 # r18578
            $ morteLogic.r18578_action()
            jump colylfn_s12  # EXTERN

        '"Kim jesteś?"':
            # a428 # r18807
            jump colylfn_s13  # EXTERN

        '"Odkupię od ciebie tę czaszkę. Zgoda?"':
            # a429 # r18808
            $ morteLogic.r18808_action()
            jump colylfn_s14  # EXTERN


# s189 # say18809
label morte_s189: # -
    nr 'Morte trzyma palec mężczyzny pomiędzy zębami, jakby to było jakieś makabryczne cygaro. Po chwili mówi: "Dotknij mnie jeszcze raz, trepie, a twoja ręka pójdzie w ślad za palcem."'

    menu:
        '"Morte! Oddaj temu człowiekowi jego palec."':
            # a430 # r18810
            jump morte_s190

        '"Masz pecha. Spadaj, kundlu."':
            # a431 # r18811
            jump colylfn_s11  # EXTERN

        '"To ciężka nauczka. Żegnaj."':
            # a432 # r18812
            jump colylfn_s11  # EXTERN


# s190 # say18813
label morte_s190: # from 189.0
    nr 'Morte wypluwa palec, który odbija się od klatki piersiowej mężczyzny i spada na ziemię.'

    menu:
        '"Masz pecha. Spadaj, kundlu."':
            # a433 # r18814
            jump colylfn_s11  # EXTERN

        '"To ciężka nauczka. Żegnaj."':
            # a434 # r18815
            jump colylfn_s11  # EXTERN


# s191 # say18816
label morte_s191: # -
    nr 'Morte wykonuje obrót w twoim kierunku: "Szefie, nic temu śmieciowi nie dawaj."'

    menu:
        '"Ja…"':
            # a435 # r18817
            jump colylfn_s15  # EXTERN


# s192 # say18818
label morte_s192: # -
    nr 'Morte obraca się do mężczyzny. "*Nie* mówiłem do ciebie, obsrajmózgu. Jak będę się zwracał do ciebie, to od razu poznasz, bo będę rzęził i chrząkał, żebyś mógł zrozumieć, co do ciebie mówię."'

    jump colylfn_s16  # EXTERN


# s193 # say18819
label morte_s193: # -
    nr '"Szefie, *nie* rób tego."'

    menu:
        'Daj mu pięć miedziaków.' if morteLogic.r18820_condition():
            # a436 # r18820
            $ morteLogic.r18820_action()
            jump colylfn_s18  # EXTERN

        'Daj mu pięćdziesiąt miedziaków.' if morteLogic.r18821_condition():
            # a437 # r18821
            $ morteLogic.r18821_action()
            jump colylfn_s18  # EXTERN

        'Daj mu sto miedziaków.' if morteLogic.r18822_condition():
            # a438 # r18822
            $ morteLogic.r18822_action()
            jump colylfn_s18  # EXTERN

        'Daj mu pięćset miedziaków.' if morteLogic.r18823_condition():
            # a439 # r18823
            $ morteLogic.r18823_action()
            jump colylfn_s18  # EXTERN

        '"Nie mogę ci dać żadnych miedziaków, bo ich nie mam."' if morteLogic.r18824_condition():
            # a440 # r18824
            jump colylfn_s19  # EXTERN

        '"Zapomnij o mojej ofercie. To nie twoja czaszka, i na pewno jej nie dostaniesz."':
            # a441 # r18825
            jump colylfn_s6  # EXTERN


# s194 # say18826
label morte_s194: # -
    nr '"Latam obok największego kretyna w wieloświecie."'

    menu:
        '"…i co, Żółtopalcy? Okradają cię, a ty *co* zrobisz?"':
            # a442 # r18827
            jump colylfn_s20  # EXTERN

        '"Teraz, gdy już mamy to za sobą, Żółtopalcy, mam do ciebie parę pytań…"':
            # a443 # r18828
            jump colylfn_s23  # EXTERN

        '"Żegnaj, Żółtopalcy."' if morteLogic.r18829_condition():
            # a444 # r18829
            jump colylfn_s41  # EXTERN

        '"Żegnaj, Żółtopalcy."' if morteLogic.r18830_condition():
            # a445 # r18830
            $ morteLogic.r18830_action()
            jump morte_dispose


# s195 # say18831
label morte_s195: # -
    nr '"Szefie! No, daj spokój!"'

    jump colylfn_s52  # EXTERN


# s196 # say18832
label morte_s196: # -
    nr '"Z mojego punktu widzenia też mi to nie wygląda zbyt ładnie."'

    menu:
        'Daj mu pięć miedziaków.' if morteLogic.r18833_condition():
            # a446 # r18833
            $ morteLogic.r18833_action()
            jump colylfn_s53  # EXTERN

        'Daj mu dziesięć miedziaków.' if morteLogic.r18834_condition():
            # a447 # r18834
            $ morteLogic.r18834_action()
            jump colylfn_s53  # EXTERN

        'Daj mu pięćdziesiąt miedziaków.' if morteLogic.r18835_condition():
            # a448 # r18835
            $ morteLogic.r18835_action()
            jump colylfn_s53  # EXTERN

        'Daj mu sto miedziaków.' if morteLogic.r18836_condition():
            # a449 # r18836
            $ morteLogic.r18836_action()
            jump colylfn_s53  # EXTERN

        '"Odwołuję co powiedziałem. Odejdź, i nie pokazuj mi się już więcej na oczy."':
            # a450 # r18837
            jump colylfn_s61  # EXTERN


# s197 # say19031
label morte_s197: # -
    nr '"Hej ty tam, wielki zabijako! Jak się ma twój kolega w ścianie?"'

    jump ojo_s11  # EXTERN


# s198 # say19032
label morte_s198: # -
    nr 'Morte skłania głowę. "Cokolwiek powiesz, szefie."'

    menu:
        '"W porządku. Ojo, mam do ciebie parę pytań."':
            # a451 # r19033
            jump ojo_s12  # EXTERN

        '"W porządku. Ruszajmy."':
            # a452 # r19034
            jump morte_dispose


# s199 # say19551
label morte_s199: # -
    nr '"Rany, szefie… Ale ślicznotka, co? Nie wszędzie można spotkać taką słodką dzierlatkę."'

    menu:
        '"Jakoś nie widzę nic atrakcyjnego w rozkładających się zwłokach, Morte. I to bez względu na to, czy one są damskie, czy nie."':
            # a453 # r19666
            jump morte_s200

        '"Hmm, gdyby dało się zapomnieć o „śmierdzącym, zarobaczonym, gnijącym ciele“…"':
            # a454 # r19667
            jump morte_s201


# s200 # say19552
label morte_s200: # from 199.0
    nr 'Morte zaczyna przewracać swoimi oczyma. "Phi! Pewnego dnia zrozumiesz, co mam na myśli."'

    menu:
        'Nie zwracaj na niego uwagi i przywitaj zombie.' if morteLogic.r19668_condition():
            # a455 # r19668
            jump zomcitf_s1  # EXTERN

        'Nie zwracaj na niego uwagi i przywitaj zombie.' if morteLogic.r19669_condition():
            # a456 # r19669
            jump zomcitf_s3  # EXTERN


# s201 # say19553
label morte_s201: # from 199.1
    nr '"Widzisz, właśnie o to mi… hej!" Morte obraca się w twoim kierunku. "Czyżbyś robił się sarkastyczny?"'

    menu:
        'Nie zwracaj na niego uwagi i przywitaj zombie.' if morteLogic.r19670_condition():
            # a457 # r19670
            jump zomcitf_s1  # EXTERN

        'Nie zwracaj na niego uwagi i przywitaj zombie.' if morteLogic.r19671_condition():
            # a458 # r19671
            jump zomcitf_s3  # EXTERN


# s202 # say19681
label morte_s202: # -
    nr '"Ech… Nie wiem, czy warto rozmawiać z tym… czymś."'

    menu:
        '"Dlaczego nie, Morte?"':
            # a459 # r19691
            jump morte_s203

        '"W takim razie w porządku. Ruszajmy."':
            # a460 # r19692
            jump morte_dispose

        'Nie zwracaj uwagi na Mortego i przywitaj ghula.':
            # a461 # r19693
            jump ghocitm_s1  # EXTERN


# s203 # say19682
label morte_s203: # from 202.0
    nr '"Kiedyś byli ludźmi… Oni, albo ich przodkowie, urządzali sobie uczty z truposzy, i stali się tym, czym są teraz. To prawie zwierzęta. *Dzikie* zwierzęta."'

    menu:
        '"W takim razie w porządku. Ruszajmy."':
            # a462 # r19694
            jump morte_dispose

        '"I tak z nim porozmawiam."':
            # a463 # r19695
            jump ghocitm_s1  # EXTERN


# s204 # say19702
label morte_s204: # -
    nr '"Ech… Nie wiem, czy warto rozmawiać z tym… czymś."'

    menu:
        '"Zaskakujesz mnie, Morte… ona jest martwa, a w dodatku to kobieta. Zazwyczaj to ci wystarcza."':
            # a464 # r19713
            jump morte_s206

        '"Dlaczego nie, Morte?"':
            # a465 # r19714
            jump morte_s205

        '"W takim razie w porządku. Ruszajmy."':
            # a466 # r19715
            jump morte_dispose

        'Nie zwracaj uwagi na Mortego i przywitaj ghula.':
            # a467 # r19716
            jump ghocitf_s1  # EXTERN


# s205 # say19703
label morte_s205: # from 204.1 206.0
    nr '"Kiedyś byli ludźmi… Oni, albo ich przodkowie, urządzali sobie uczty z truposzy, i stali się tym, czym są teraz. To prawie zwierzęta. *Dzikie* zwierzęta."'

    menu:
        '"W takim razie w porządku. Ruszajmy."':
            # a468 # r19717
            jump morte_dispose

        '"I tak z nią porozmawiam."':
            # a469 # r19718
            jump ghocitf_s1  # EXTERN


# s206 # say19704
label morte_s206: # from 204.0
    nr '"To nie do końca to samo, szefie…"'

    jump morte_s205


# s207 # say20469
label morte_s207: # -
    nr '"Ten grobojad jest ślepy i prawie głuchy."'

    jump marta_s9  # EXTERN


# s208 # say20470
label morte_s208: # -
    nr '"Myślę, że ona mówi o organach. Przynajmniej mam taką nadzieję."'

    jump marta_s15  # EXTERN


# s209 # say20471
label morte_s209: # -
    nr 'Morte odwraca się w kierunku Marty. "Tak, „trzewusie“." Potem czaszka odwraca się do ciebie. "Ach, ta semantyka."'

    menu:
        '"Marto, dlaczego wyciągasz z tych zwłok zęby i szwy?"' if morteLogic.r20612_condition():
            # a470 # r20612
            $ morteLogic.r20612_action()
            jump marta_s16  # EXTERN

        '"Marto, dlaczego wyciągasz z tych zwłok zęby i szwy?"' if morteLogic.r20613_condition():
            # a471 # r20613
            $ morteLogic.j20538_s209_r20613_action()
            jump marta_s16  # EXTERN

        '"Uch… dobrze. Muszę już iść, Marto. Żegnaj."':
            # a472 # r20614
            jump morte_dispose


# s210 # say20472
label morte_s210: # -
    nr '"Ja *nie* mam zamiaru tego oglądać."'

    jump marta_s24  # EXTERN


# s211 # say21602
label morte_s211: # -
    nr '"Och, na miłość Mocy…! Szpicowany dabus."'

    menu:
        '"Coś nie tak?"':
            # a473 # r24695
            jump morte_s212


# s212 # say21603
label morte_s212: # from 211.0
    nr '"To dabus. One „mówią“ rebusami, no wiesz, tymi denerwującymi zagadkami słownymi. Jeśli nie wiesz, co taki mówi, to lepiej znajdź sobie tubylca, albo jakiś inny sposób, żeby się z nim porozumieć… oczywiście, jeśli naprawdę tego chcesz. Ależ one potrafią wkurzyć. Wiesz, co ja o tym myślę? One *potrafią* mówić, ale wolą wszystkich wkurzać zadając te przeklęte zagadki."'

    menu:
        '"Co to jest „dabus“?"':
            # a474 # r24696
            jump morte_s213


# s213 # say21604
label morte_s213: # from 212.0
    nr '"Śpiewka niesie, że robią za dozorców u Pani Bólu. Latają tu i tam, psując, naprawiając i łatając całe Sigil tak, jak ona sobie zażyczy. Są gorsze niż trupie muchy." Morte wzdycha ciężko. "Ale nie można im przyłożyć, bo Pani się… zdenerwuje."'

    menu:
        '"„Pani Bólu“? Kto to taki?"' if morteLogic.r24697_condition():
            # a475 # r24697
            $ morteLogic.r24697_action()
            jump morte_s214

        '"Co możesz mi powiedzieć o Pani Bólu?"' if morteLogic.r24698_condition():
            # a476 # r24698
            jump morte_s214

        '"Rozumiem."' if morteLogic.r24699_condition():
            # a477 # r24699
            jump fell_s8  # EXTERN


# s214 # say21605
label morte_s214: # from 213.0 213.1
    nr '"To ona włada całym miastem. Nietrudno ją poznać: wokół twarzy wystają jej ostrza, jest prawie tak wysoka jak olbrzym, a w dodatku unosi się nad ziemią, dokładnie jak ci goście." Morte wskazuje głową na dabusa, który się wam przygląda. "Nikt nie wie o niej zbyt wiele rzeczy… Ona też nie mówi zbyt dużo. Trzeba tylko pamiętać o tym, żeby jej nie zezłościć. Dam ci radę: Jak ją zobaczysz, to uciekaj, ile sił w nogach."'

    menu:
        '"Ee… poczekaj. Powiedziałeś, że dabusy unoszą się w powietrzu, tak? A ten tu chodzi po ziemi."' if morteLogic.r24700_condition():
            # a478 # r24700
            jump morte_s215

        '"Ee… poczekaj. Powiedziałeś, że dabusy unoszą się w powietrzu, tak? A ten tu chodzi po ziemi."' if morteLogic.r24701_condition():
            # a479 # r24701
            jump morte_s215

        '"Rozumiem."':
            # a480 # r24702
            jump fell_s8  # EXTERN


# s215 # say21606
label morte_s215: # from 214.0 214.1
    nr 'Morte spogląda na dabusa, a jego oczy nagle się powiększają. "Aha! Widziałem, ty kozia głowo, że potrafisz chodzić! Wiedziałem!" Morte odwraca się do ciebie z radosnym uśmiechem. "Ha! Ten chyba nie jest na tyle nadęty, żeby móc oderwać się od ziemi."'

    menu:
        '"Może i tak…"':
            # a481 # r24703
            jump fell_s8  # EXTERN


# s216 # say21607
label morte_s216: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza? Znajdź sobie rodowitego Sigilianina."'

    menu:
        '"Rozumiem."':
            # a482 # r24704
            jump fell_s8  # EXTERN


# s217 # say21608
label morte_s217: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza? Weź do tego tę kaduczą dzierlatkę." Morte wskazuje na Annę. "To rodowita mieszkanka Ula."'

    menu:
        '"Może to zrobię…"':
            # a483 # r24705
            jump fell_s8  # EXTERN


# s218 # say21609
label morte_s218: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza?" Morte wskazuje na Dak“kona. "Weź do tego świętoszkowatego niemowę."'

    menu:
        '"Może to zrobię…"':
            # a484 # r24706
            jump fell_s8  # EXTERN


# s219 # say21610
label morte_s219: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza? Weź do tego tę tanar“ri." Morte wskazuje na Nie-Sławę. "Ona pewnie nie raz musiała wymieniać z nimi śpiewkę."'

    menu:
        '"Może to zrobię…"':
            # a485 # r24707
            jump fell_s8  # EXTERN


# s220 # say22061
label morte_s220: # externs soego_s93
    nr '"Po prostu chcesz ich zabić. Odczuwanie czegokolwiek zagraża Grabarzom."'

    menu:
        '"Mam do ciebie parę innych pytań…"':
            # a486 # r22062
            jump soego_s83  # EXTERN

        '"Nie mam już więcej pytań. Żegnaj."':
            # a487 # r22063
            jump morte_dispose


# s221 # say22849
label morte_s221: # -
    nr 'Morte spogląda na ciebie i kręci głową.'

    menu:
        '"Cóż to, sześcienny bohaterze? „Morte to głupia czaszka?“ Tak, oczywiście. Czyż nie?"':
            # a488 # r22850
            $ morteLogic.r22850_action()
            jump morte_s222

        'Odłóż kostkę.':
            # a489 # r22851
            jump morte_dispose


# s222 # say22852
label morte_s222: # from 221.0
    nr '"Hej! On tego nie powiedział!"'

    menu:
        '"Właśnie, że powiedział! Dokładnie w tym momencie!"':
            # a490 # r22853
            $ morteLogic.r22853_action()
            jump morte_s223

        'Odłóż kostkę.':
            # a491 # r22854
            jump morte_dispose


# s223 # say22855
label morte_s223: # from 222.0
    nr '"Co?! Dawaj to!"'

    menu:
        '"Nie, jest mój. Chce się do mnie przyłączyć. Prawda, sześcienny bohaterze? Mówię ci, że chcesz!"':
            # a492 # r22856
            $ morteLogic.r22856_action()
            jump morte_s224

        'Odłóż kostkę.':
            # a493 # r22857
            jump morte_dispose


# s224 # say22858
label morte_s224: # from 223.0
    nr '"Chcę. To. Tylko. Przez. Chwilę. Potrzymać."'

    menu:
        '"Przecież ty nie masz rąk."':
            # a494 # r22859
            jump morte_s225

        'Odłóż kostkę.':
            # a495 # r22860
            jump morte_dispose


# s225 # say22861
label morte_s225: # from 224.0
    nr '"Przytrzymam to ZĘBAMI."'

    menu:
        '"Nie, chyba go na razie odłożę."':
            # a496 # r22862
            jump morte_s226


# s226 # say22863
label morte_s226: # from 225.0
    nr '"Zaraz rozwalę tę kostkę modrona, szefie."~ [MRT251]'

    menu:
        '"Słyszałeś coś, sześcienny bohaterze? Ja też nie!"':
            # a497 # r22864
            jump morte_dispose


# s227 # say22892
label morte_s227: # -
    nr '"Oooooch!" Morte klika zębami, gdy Kradok zbiera parę… Można wręcz usłyszeć, jak robi notatki wewnątrz swojej czaszki.~ [MRT387]'

    jump craddo_s15  # EXTERN


# s228 # say24174
label morte_s228: # -
    nr '"Wiesz, szefie, zaczynałem już mieć naprawdę dość tych… jego ciągłych… przerw… Tak czy inaczej… to dobrze… że w końcu się zamknął."'

    menu:
        '"Bardzo śmieszne, Morte. Ruszajmy."':
            # a498 # r24175
            jump morte_dispose


# s229 # say24176
label morte_s229: # -
    nr '"Szefie, po co nam nieskończone zapasy wody? Pali się gdzieś, czy co?"'

    menu:
        '"Może się przydać później, Morte. Ruszajmy."':
            # a499 # r24177
            jump morte_dispose

        '"To jest rzecz, którą trzeba zrobić, Morte."':
            # a500 # r24178
            jump morte_s230


# s230 # say24179
label morte_s230: # from 229.1
    nr '"Trzeba zrobić? Gdybyś zapomniał, szefie, to masz własną misję, którą powinieneś się zająć! Ale cóż, to ty tu dowodzisz…"'

    menu:
        '"Dziękuję za zgodę, Morte. Ruszajmy."':
            # a501 # r24180
            jump morte_dispose


# s231 # say24903
label morte_s231: # -
    nr '"Hej… wszystko w porządku? Myślałem, że naprawdę jesteś truposzem."'

    menu:
        '"Ki…? Kim jesteś?"':
            # a502 # r24904
            $ morteLogic.r24904_action()
            jump morte_s232

        '"Na pewno masz do powiedzenia tysiąc mądrych rzeczy, Morte, ale lepiej się zamknij i przyłącz do mnie."':
            # a503 # r24905
            $ morteLogic.r24905_action()
            jump morte_dispose


# s232 # say24906
label morte_s232: # from 231.0
    nr '"Co… kim *ja* jestem? A dlaczego *ty* nie zaczniesz? Kim jesteś?"'

    menu:
        '"N… nie wiem. Nie pamiętam."':
            # a504 # r24907
            jump morte_s233

        '"Ja zapytałem *cię* pierwszy, czaszko."':
            # a505 # r24908
            jump morte_s234


# s233 # say24909
label morte_s233: # from 232.0 234.0 235.0
    nr '"Nie pamiętasz swojego *imienia*? Ech. NASTĘPNYM razem, jak będziesz chciał spędzić noc w mieście, to nie przeginaj z bełtem. Nazywam się Morte. Ja też tu jestem uwięziony."'

    menu:
        '"Uwięziony?"':
            # a506 # r24910
            jump morte_s236


# s234 # say24911
label morte_s234: # from 232.1
    nr '"Dobra, a ja pytałem *drugi*. Jak masz na imię?"'

    menu:
        '"N… nie wiem. Nie pamiętam."':
            # a507 # r24912
            jump morte_s233

        '"Ty pierwszy, czaszko. Mówię to po raz ostatni."':
            # a508 # r24913
            jump morte_s235


# s235 # say24914
label morte_s235: # from 234.1
    nr '"Echhhh… jesteś spięty, jakby ci coś w tyłek włożyli. Niech ci będzie. W takim razie to *ja* będę nawijał. Moje imię brzmi Morte. Jak się nazywasz?"'

    menu:
        '"N… nie wiem. Nie pamiętam."':
            # a509 # r24915
            jump morte_s233


# s236 # say24916
label morte_s236: # from 233.0
    nr '"No dobra, widzę, że jeszcze się nie pozbierałeś, więc śpiewka jest taka: Spróbowałem wszystkich drzwi i wygląda na to, że ten pokój jest zamknięty lepiej niż pas cnoty."'

    menu:
        '"Gdzie jesteśmy zamknięci? Co to za miejsce?"':
            # a510 # r24917
            jump morte_s237


# s237 # say24918
label morte_s237: # from 236.0
    nr '"Nazywają to „Kostnicą“… To wielka, czarna budowla o uroku ciężarnej pajęczycy."'

    menu:
        '"„Kostnica“? Czy to oznacza, że jestem… martwy?"':
            # a511 # r24919
            jump morte_s238


# s238 # say24920
label morte_s238: # from 237.0
    nr '"Z tego co widzę, to nie. Masz blizn od groma… wygląda na to, że jakiś trep podmalował cię kosą. To jeszcze jeden powód, żebyśmy się stąd odśmiali zanim ten ktoś wróci, żeby dokończyć roboty."'

    menu:
        '"Jak się stąd wydostaniemy?"':
            # a512 # r24921
            jump morte_s239


# s239 # say24922
label morte_s239: # from 238.0
    nr '"Wszystkie drzwi są pozamykane, więc będziemy potrzebowali klucza. Może jakieś chodzące truchło ma go przy sobie."'

    menu:
        '"Chodzące truchło?"':
            # a513 # r24923
            jump morte_s240


# s240 # say24924
label morte_s240: # from 28.0 239.0
    nr '"Właściciele Kostnicy używają ich jako taniej siły roboczej. To kompletni kretyni, ale nie są groźni. Nic ci nie zrobią, jeśli ty ich pierwszy nie zaatakujesz."'

    menu:
        '"Może jest jakiś inny sposób? Nie chcę zabijać ich tylko po to, żeby dostać klucz."':
            # a514 # r24925
            $ morteLogic.r24925_action()
            jump morte_s241

        '"Więc mam zaatakować jednego z tych trupów i zabrać mu klucz?"':
            # a515 # r24926
            jump morte_s242


# s241 # say24927
label morte_s241: # from 240.0
    nr '"A niby co, według ciebie, może urazić ich uczucia? Przecież są MARTWI. Ale ma to też swoje plusy - jak ich zabijesz, to przynajmniej odpoczną sobie przez chwilę, zanim ich pracodawcy znowu ich nie zapędzą do pracy."'

    menu:
        '"Hmmm, dobrze… Zabiję jednego z nich i zabiorę mu klucz."':
            # a516 # r24928
            jump morte_s242


# s242 # say24929
label morte_s242: # from 240.1 241.0
    nr '"Jeśli chcesz to zrobić, to lepiej poszukaj jakiejś broni. Chyba widziałem tu gdzieś na półkach skalpel."  UWAGA: Przeszukaj półki w całym pomieszczeniu i znajdź broń, której użyjesz przeciwko zombie.'

    menu:
        '"Dobrze, poszukam go."':
            # a517 # r24930
            jump morte_s243


# s243 # say24931
label morte_s243: # from 242.0
    nr '"Jeszcze jedno: Te trupy są powolne jak muchy w smole, ale uderzają z siłą bojowego tarana. Jeśli zaczną ci sprawiać kłopoty, pamiętaj, że w przeciwieństwie do ciebie nie potrafią BIEGAĆ. Odsuń się od nich, jeśli będziesz potrzebować chwili, by opatrzyć rany."  ^NNOTE: <RUNAWAY> W sytuacji zagrożenia życia odbiegnij od zombie na bezpieczną odległość i opatrz swoje rany.^-'

    menu:
        '"Dobrze. Dzięki za radę."':
            # a518 # r24932
            $ morteLogic.r24932_action()
            jump morte_dispose


# s244 # say25962
label morte_s244: # -
    nr '"To coś w stylu gadającej encyklopedii, szefie. Naprawdę, nie lubię o tym rozmawiać."'

    if morteLogic.s244_condition():
        $ morteLogic.s244_action()
        jump cwrushf_s27  # EXTERN
    menu:
        '"Ale ty NIE JESTEŚ mimirem, Morte…"' if morteLogic.r66902_condition():
            # a519 # r66902
            jump cwrushf_s27  # EXTERN


# s245 # say25964
label morte_s245: # -
    nr 'Morte mruga i podlatuje w kierunku kobiety. "Potrafię nie tylko mów…"'

    menu:
        '"Wystarczy, Morte."':
            # a520 # r25965
            jump morte_s246


# s246 # say25966
label morte_s246: # from 245.0
    nr '"Tak, tak. W porządku." Morte przewraca oczyma i zaczyna mamrotać. "Rany, traktuje mnie zupełnie jakbym był *martwy*…"'

    menu:
        '"Zdziwiłaś się, że umie mówić? Czy zazwyczaj tego nie robią?"' if morteLogic.r25967_condition():
            # a521 # r25967
            jump cwrushf_s28  # EXTERN

        '"Mam parę pytań do tej kobiety…"':
            # a522 # r25968
            jump cwrushf_s2  # EXTERN

        'Zostaw tę kobietę w spokoju.':
            # a523 # r25969
            jump morte_dispose


# s247 # say25970
label morte_s247: # -
    nr 'Morte przerywa jej: "Widzisz, szefie, tu chodzi o różnice w *jakości* mimira. Niektórzy - ta jak ja - mają więcej zdolności od innych. Mają więcej… ee… „samoświadomości“, to chyba dobre słowo."'

    menu:
        '"Hmm."':
            # a524 # r25971
            jump cwrushf_s29  # EXTERN

        '"Rozumiem."':
            # a525 # r25972
            jump cwrushf_s29  # EXTERN


# s248 # say25973
label morte_s248: # -
    nr '"Hej! Szefie, ja po prostu próbuje się tu trochę zabawić!"'

    jump cwrushf_s27  # EXTERN


# s249 # say27285
label morte_s249: # -
    nr '"Mała rada, szefie: od tego miejsca lepiej być cicho - nie trzeba wpisywać do księgi umarłych zbyt wiele zombie… zwłaszcza zombic. A poza tym, jak ich pozabijamy, to ściągniemy sobie na głowy ich opiekunów."'

    menu:
        '"Chyba wcześniej o tym nie wspominałeś… *Kim* są ci opiekunowie?"':
            # a526 # r27303
            jump morte_s250

        '"Skąd się wzięły wszystkie te trupy, których tutaj pełno?"':
            # a527 # r27304
            jump morte_s252

        '"Dlaczego tak ci zależy na zombicach?"':
            # a528 # r27305
            jump morte_s253

        '"W porządku… Spróbuję to zapamiętać."':
            # a529 # r27306
            jump morte_s257


# s250 # say27286
label morte_s250: # from 249.0 252.0 256.0
    nr '"Nazywają siebie „Grabarzami“. Trudno ich nie rozpoznać: mają obsesję na punkcie czarnego koloru, a w dodatku ciągle mają śmiertelnie poważny wyraz twarzy. To zaprzała banda wyznawców śmierci. Wierzą, że każdy powinien umrzeć… i to im szybciej, tym lepiej."'

    menu:
        '"Nic nie rozumiem… Dlaczego ci Grabarze mieliby się przejmować moją ucieczką?"':
            # a530 # r27307
            jump morte_s251


# s251 # say27287
label morte_s251: # from 250.0
    nr '"Czyżbyś mnie nie słuchał?! Powiedziałem, że Grabcie wyznają pogląd, że KAŻDY powinien umrzeć, i to im szybciej, tym lepiej. Wydaje ci się, że wszystkie trupy, jakie widziałeś, są bardziej szczęśliwe w księdze umarłych niż poza nią?"'

    menu:
        '"Skąd się wzięły wszystkie te trupy, których tutaj pełno?"':
            # a531 # r27308
            jump morte_s252

        '"Wcześniej wspomniałeś, żebym nie zabijał żadnych *zombic*. Dlaczego?"':
            # a532 # r27309
            jump morte_s253

        '"W porządku… Spróbuję… Spróbuję to zapamiętać."':
            # a533 # r27310
            jump morte_s257


# s252 # say27288
label morte_s252: # from 249.1 251.0 256.1
    nr '"Śmierć nawiedza Sfery każdego dnia. Te truchła to wszystko, co zostało z biednych skurli, którzy po śmierci sprzedali swoje ciała opiekunom."'

    menu:
        '"Oświeć mnie… *Kim* są ci opiekunowie?"':
            # a534 # r27311
            jump morte_s250

        '"Wcześniej wspomniałeś, żebym nie zabijał żadnych *zombic*. Dlaczego?"':
            # a535 # r27312
            jump morte_s253

        '"W porządku… Spróbuję to zapamiętać."':
            # a536 # r27313
            jump morte_s257


# s253 # say27289
label morte_s253: # from 249.2 251.1 252.1
    nr '"Co - mówisz na *serio*? Ci biedacy to ostatnia szansa dla takich twardzieli jak my. Musimy być *szlachetni*… a nie zarzynać ich, żeby dostać jakieś tak klucze. Zapomnij o odcinaniu im nóg i tym podobnych sprawach."'

    menu:
        '"Ostatnia szansa? O czy… O czym ty mówisz?"':
            # a537 # r27314
            jump morte_s254


# s254 # say27290
label morte_s254: # from 253.0
    nr '"Szefie, ONE nie żyją, MY nie żyjemy… łapiesz, o co mi chodzi? Co?"'

    menu:
        '"Nie… Prawdę mówiąc, ani trochę."':
            # a538 # r27315
            jump morte_s255

        '"Chyba nie mówisz na poważnie."' if morteLogic.r27316_condition():
            # a539 # r27316
            jump morte_s255


# s255 # say27291
label morte_s255: # from 254.0 254.1
    nr '"Szefie, mamy z tymi kuśtykającymi paniami coś wspólnego, więc może uda się nam z nimi coś wskórać. Przecież *każdy z nas* umarł przynajmniej raz, więc jest od czego zacząć. Docenią ludzi z takim doświadczeniem w sprawach śmierci, jak my."'

    menu:
        '"Ale… Czekaj… Czy nie powiedziałeś, że ja *nie* umarłem?"':
            # a540 # r27317
            jump morte_s256


# s256 # say27292
label morte_s256: # from 255.0
    nr '"No dobra… może *ty* nie umarłeś, ale *ja* tak. A ja nie mam nic przeciwko dzieleniu trumny z jedną z tych niezłych, muskularnych nieboszczyc, które tu widzę." Morte zaczyna dzwonić zębami, jakby nie mógł się już doczekać. "Oczywiście najpierw trzeba byłoby takiego truposza wyrwać z rąk opiekunów, a szanse na to są znikome…"'

    menu:
        '"Możesz mi jeszcze raz powtórzyć, kim są ci opiekunowie?"':
            # a541 # r27318
            jump morte_s250

        '"Ale skąd się wzięły wszystkie te trupy?"':
            # a542 # r27319
            jump morte_s252

        '"W porządku… Spróbuję… Spróbuję to zapamiętać."':
            # a543 # r27320
            jump morte_s257


# s257 # say27293
label morte_s257: # from 249.3 251.2 252.2 256.2
    nr '"Słuchaj, szefie. Nie doszedłeś jeszcze do siebie po pocałunku śmierci. Mam dla ciebie dwie rady. Po pierwsze, jeśli masz jakieś pytania, to *pytaj*."  ^NNOTE: <SPEAKTO>^-'

    menu:
        '"W porządku… Jeśli będę miał jakieś pytania, zwrócę się z nimi do ciebie."':
            # a544 # r27321
            jump morte_s258


# s258 # say27294
label morte_s258: # from 257.0
    nr '"Po drugie, jeśli jesteś nawet w *połowie* tak roztargniony, na jakiego wyglądasz, to zacznij robić zapiski - jak tylko natkniesz się na coś, co może być ważne, zapisz to sobie, żebyś nie zapomniał."'

    menu:
        '"Jak w dzienniku?"':
            # a545 # r27322
            jump morte_s259


# s259 # say27295
label morte_s259: # from 258.0
    nr '"Tak, to coś w rodzaju dziennika. Jeśli zapomnisz o czymś ważnym, na przykład gdzie właściwie jesteś, otwórz go i odśwież sobie pamięć. Jasne?"  ^NNOTE: Aby otworzyć dziennik, wciśnij przycisk dziennika w szybkim menu. W trakcie gry dziennik będzie automatycznie uzupełniany.^-'

    menu:
        '"W porządku… Rozumiem. Ruszajmy."':
            # a546 # r27323
            jump morte_dispose


# s260 # say27296
label morte_s260: # -
    nr '"Gdzieś na półce powinien być skalpel. Lepiej znajdź go, zanim zadrzesz z jakimś zombie."'

    menu:
        '"W porządku… Poszukam dalej."':
            # a547 # r27324
            jump morte_dispose


# s261 # say27297
label morte_s261: # - # IF WEIGHT #8 /* Triggers after states #: 729 444 325 281 742 737 733 487 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Świetnie, masz już skalpel! Teraz zabierz się za zombie… nie martw się, w razie czego udzielę ci potrzebnych wskazówek taktycznych."'

    menu:
        '"Może byś mi *pomógł*, Morte?"':
            # a548 # r27325
            jump morte_s262

        '"W porządku."':
            # a549 # r27326
            jump morte_dispose


# s262 # say27298
label morte_s262: # from 261.0
    nr '"Przecież BĘDĘ ci pomagał. Ciężko teraz o dobre rady."'

    menu:
        '"Chodziło mi o pomoc w zaatakowaniu tego *zombie*."':
            # a550 # r27327
            jump morte_s263

        '"W takim razie, w porządku."':
            # a551 # r27328
            jump morte_dispose


# s263 # say27299
label morte_s263: # from 262.0
    nr '"Ja? Jestem romantykiem, a nie żołnierzem. Ruszaj już lepiej."'

    menu:
        '"Jeśli nie chcesz być następnym, w którym zanurzę ten skalpel, to kiedy zaatakuję tego zombie, lepiej nie kryj się po kątach, tylko stój przy mnie."':
            # a552 # r27329
            jump morte_s264

        '"W takim razie, w porządku."':
            # a553 # r27330
            jump morte_dispose


# s264 # say27300
label morte_s264: # from 263.0
    nr '"No dobra… Pomogę ci."  UWAGA: Jeśli chcesz, aby Morte pomógł ci w walce, nie zapomnij wybrać was obu, kiedy będziesz atakował zombie. Wtedy twój towarzysz także przyłączy się do ataku."'

    menu:
        '"Cieszę się, że się rozumiemy. A teraz do dzieła."':
            # a554 # r27331
            jump morte_dispose


# s265 # say27301
label morte_s265: # -
    nr '"Świetnie. Wygląda na to, że trafiłeś na tego zombie, co trzeba. Teraz musisz znaleźć klucz. Przedmioty pojawiają się na kupce obok ciała. Przeszukaj dokładnie teren i uważaj, abyś czegoś nie przeoczył."'

    menu:
        '"W porządku."':
            # a555 # r27332
            jump morte_dispose


# s266 # say27302
label morte_s266: # -
    nr '"Dobra robota, masz już klucz. Na pewno pasuje do któregoś z zamków w tym pomieszczeniu."'

    menu:
        '"W takim razie spróbuję wszystkie drzwi."':
            # a556 # r27333
            jump morte_dispose


# s267 # say27911
label morte_s267: # -
    nr 'Morte syczy ci do ucha: "Prawnicy."'

    jump cwcafef_s15  # EXTERN


# s268 # say27912
label morte_s268: # -
    nr '"To coś w stylu gadającej encyklopedii, szefie. Naprawdę, nie lubię o tym rozmawiać."'

    if morteLogic.s268_condition():
        $ morteLogic.s268_action()
        jump cwcafef_s50  # EXTERN
    menu:
        '"Ale ty NIE JESTEŚ mimirem, Morte…"' if morteLogic.r65536_condition():
            # a557 # r65536
            jump cwcafef_s50  # EXTERN


# s269 # say27913
label morte_s269: # -
    nr 'Morte podlatuje w kierunku kobiety. "Nie o to mi…"'

    menu:
        '"Już wystarczy, Morte."':
            # a558 # r27914
            jump morte_s270


# s270 # say27915
label morte_s270: # from 269.0
    nr '"Tak, tak. Wszystko w porządku." Morte przewraca oczyma i zaczyna mamrotać. "Mało co, a byłbym już *martwy*…"'

    menu:
        '"Powiedziałaś „samodzielnie“? Zazwyczaj tego nie robią?"' if morteLogic.r27916_condition():
            # a559 # r27916
            jump cwcafef_s51  # EXTERN

        '"Mam parę pytań do tej kobiety…"':
            # a560 # r27917
            jump cwcafef_s4  # EXTERN

        'Zostaw tę kobietę w spokoju.':
            # a561 # r27918
            jump morte_dispose


# s271 # say27919
label morte_s271: # -
    nr 'Morte przerywa jej słowa: "Widzisz, szefie, tu chodzi o różnice w *jakości* mimira. Niektórzy - tak jak ja - mają więcej zdolności od innych. Mają więcej… ee… „samoświadomości“, to chyba dobre słowo."'

    menu:
        '"Hmm."':
            # a562 # r27920
            jump cwcafef_s52  # EXTERN

        '"Rozumiem."':
            # a563 # r27921
            jump cwcafef_s52  # EXTERN


# s272 # say27922
label morte_s272: # -
    nr '"Hej! Szefie, ja po prostu próbuje się tu trochę zabawić!"'

    jump cwcafef_s50  # EXTERN


# s273 # say28036
label morte_s273: # -
    nr 'Morte kiwa głową z uznaniem. "Hej, ten gościu nie jest zły."'

    menu:
        '"Dobrze… Zabierz swoje pieniądze z powrotem, Malmanerze."':
            # a564 # r28041
            $ morteLogic.r28041_action()
            jump malmanr_s13  # EXTERN

        'Rzuć w Malmanera dziesięcioma miedziakami.':
            # a565 # r28042
            $ morteLogic.r28042_action()
            jump malmanr_s14  # EXTERN

        '"Naprawdę? Słyszałeś coś, Morte? Bo ja nie. Ruszajmy."':
            # a566 # r28043
            jump malmanr_s15  # EXTERN


# s274 # say28037
label morte_s274: # -
    nr 'Morte kiwa głową z uznaniem. "Hej, ten gościu nie jest zły."'

    menu:
        '"Dobrze… Zabierz swoje pieniądze z powrotem, Malmanerze."' if morteLogic.r28038_condition():
            # a567 # r28038
            $ morteLogic.r28038_action()
            jump malmanr_s13  # EXTERN

        'Rzuć do Malmanera trzydzieści miedziaków.' if morteLogic.r28039_condition():
            # a568 # r28039
            $ morteLogic.r28039_action()
            jump malmanr_s14  # EXTERN

        '"Dobrze… Zabierz swoje pieniądze z powrotem, Malmanerze."' if morteLogic.r28040_condition():
            # a569 # r28040
            $ morteLogic.r28040_action()
            jump malmanr_s13  # EXTERN

        'Rzuć do Malmanera pięćdziesiąt miedziaków.' if morteLogic.r28044_condition():
            # a570 # r28044
            $ morteLogic.r28044_action()
            jump malmanr_s14  # EXTERN

        '"Dobrze… Zabierz swoje pieniądze z powrotem, Malmanerze."' if morteLogic.r28045_condition():
            # a571 # r28045
            $ morteLogic.r28045_action()
            jump malmanr_s13  # EXTERN

        'Rzuć do Malmanera pięćdziesiąt miedziaków.' if morteLogic.r28046_condition():
            # a572 # r28046
            $ morteLogic.r28046_action()
            jump malmanr_s14  # EXTERN

        '"Dobrze… Zabierz swoje pieniądze z powrotem, Malmanerze."' if morteLogic.r28047_condition():
            # a573 # r28047
            $ morteLogic.r28047_action()
            jump malmanr_s13  # EXTERN

        'Rzuć do Malmanera osiemdziesiąt miedziaków.' if morteLogic.r28048_condition():
            # a574 # r28048
            $ morteLogic.r28048_action()
            jump malmanr_s14  # EXTERN

        '"Naprawdę? Słyszałeś coś, Morte? Bo ja nie. Ruszajmy."':
            # a575 # r28049
            jump malmanr_s15  # EXTERN


# s275 # say28630
label morte_s275: # -
    nr '"Nie brzmi to zbyt ekscytująco."'

    jump grace_s60  # EXTERN


# s276 # say28631
label morte_s276: # -
    nr '"Ona jest tanar„ri… sukkubem."'

    jump grace_s72  # EXTERN


# s277 # say28632
label morte_s277: # -
    nr '"Knebel, kaduku!" Morte zaczyna szczękać zębami. "CAŁY jestem za tym, żeby sukkub się do nas przyłączył… Moce wiedzą, że wędrowanie z tobą *jest* prawie tak zabawne, jak przeciąganie kaktusa przez swoje jelita."'

    jump annah_s166  # EXTERN


# s278 # say28633
label morte_s278: # -
    nr '"Hej, czekaj! To *ja* doskonale znam Sfery! To moja działka, szefie!"'

    menu:
        '"Myślę, że to nie jest głupi pomysł, żeby mieć w swojej grupie dwie osoby, które posiadają dużą wiedzę na temat Sfer. Poza tym, powiedziałem też „miła“, Morte."':
            # a576 # r28634
            jump morte_s279


# s279 # say28635
label morte_s279: # from 278.0
    nr '"Owszem, miła dla oczu! Wydaje *mi* się, że wystarczy, jak jakaś dzierlatka pokaże ci kawałek gołej skóry, a od razu na nią polecisz!" Morte przez chwilę myśli nad czymś w ciszy. "Nie żebym miał coś przeciwko temu, ale pomyślałem, że powinienem o tym wspomnieć."'

    menu:
        '"W porządku, Morte. Pani Sławo… wybacz moją bezpośredniość, ale czy zechciałabyś się do nas przyłączyć?"':
            # a577 # r28636
            jump grace_s79  # EXTERN


# s280 # say28637
label morte_s280: # -
    nr '"Mój obliźniony przyjaciel miał na myśli nas DWÓCH… Jestem Morte, a tak przy okazji: przepraszam za mojego towarzysza, że zapomniał nas sobie przedstawić… Będzie WSPANIALE, jeśli się do nas przyłączysz. Dla takiego sukkuba jak ty miejsce zawsze się znajdzie. DUŻO miejsca."'

    jump grace_s119  # EXTERN


# s281 # say28738
label morte_s281: # - # IF WEIGHT #4 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  Global("Morte_Stolen","GLOBAL",2) !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Dzięki szefie. Nawet nie wiesz jak się cieszę, że znowu jestem z tobą." Głos Mortego aż kipi od sarkazmu. "A przy okazji nauczyłem się tam nowego triku."'

    menu:
        '"Aha. Cieszę się, że znowu z nami jesteś."':
            # a578 # r28743
            $ morteLogic.r28743_action()
            jump morte_dispose

        '"Przepraszam, przyjacielu. Chodziło mi tylko o to, żeby z nim zablefować."' if morteLogic.r28744_condition():
            # a579 # r28744
            $ morteLogic.r28744_action()
            jump morte_s282

        '"Przepraszam, przyjacielu. Chodziło mi tylko o to, żeby z nim zablefować."' if morteLogic.r28745_condition():
            # a580 # r28745
            $ morteLogic.r28745_action()
            jump morte_s283


# s282 # say28739
label morte_s282: # from 281.1
    nr '"Naprawdę? To miło z twojej strony, szefie. Nieźle główkujesz. Chwilowo ci wybaczam. Ale nie rób tego na przyszłość."'

    menu:
        '"Pewnie, Morte. Ruszajmy."':
            # a581 # r28746
            jump morte_dispose


# s283 # say28740
label morte_s283: # from 281.2
    nr '"Jakoś nie mogę ci uwierzyć. Po prostu zapomnijmy, że to się kiedykolwiek zdarzyło. Ruszajmy."'

    menu:
        '"Dobrze."':
            # a582 # r28747
            jump morte_dispose

        '"Morte, ja z nim tylko blefowałem. Zobaczysz."':
            # a583 # r28748
            jump morte_dispose


# s284 # say28741
label morte_s284: # -
    nr '"Dzięki, szefie. Wynośmy się stąd! Och, tak przy okazji, szefie… Ci goście naprawdę mieli głowy na karku. Czegoś się od nich nauczyłem."'

    menu:
        '"Ruszajmy."':
            # a584 # r28749
            jump morte_dispose


# s285 # say28962
label morte_s285: # -
    nr '"Ee… szefie? Chyba już widziałeś w swoim życiu posągi, prawda? Wiesz, że z nimi nie da się gadać, co?"'

    menu:
        '"Zastanów się nad tym, Morte: Jesteś latającą i gadającą czaszką, która twierdzi, że nie ma żywych posągów."' if morteLogic.r28967_condition():
            # a585 # r28967
            jump morte_s286

        '"Pewien napotkany mag, imieniem Salabesz, powiedział mi o kamiennym człowieku. Czy to o ty nim jesteś?"' if morteLogic.r28968_condition():
            # a586 # r28968
            $ morteLogic.r28968_action()
            jump quisai_s5  # EXTERN

        '"Możliwe, Morte. Spróbuję go tylko dotknąć…"':
            # a587 # r28969
            jump quisai_s3  # EXTERN

        'Odejdź.':
            # a588 # r28970
            jump morte_dispose


# s286 # say28963
label morte_s286: # from 285.0
    nr '"No cóż… ee… hmm. Tu mnie masz, szefie."'

    menu:
        '"Pewien napotkany mag, imieniem Salabesz, powiedział mi o kamiennym człowieku. Czy to o ty nim jesteś?"' if morteLogic.r28971_condition():
            # a589 # r28971
            $ morteLogic.r28971_action()
            jump quisai_s5  # EXTERN

        '"Spróbuję go tylko dotknąć…"':
            # a590 # r28972
            jump quisai_s3  # EXTERN

        'Odejdź.':
            # a591 # r28973
            jump morte_dispose


# s287 # say28964
label morte_s287: # -
    nr '"Wygląda na trochę zbyt dokładny pod względem anatomii. Co, szefie?"'

    menu:
        '"To było pytanie retoryczne, Morte."':
            # a592 # r28974
            jump morte_s288


# s288 # say28965
label morte_s288: # from 287.0
    nr '"Jasne, szefie. Wiedziałem o tym."'

    menu:
        '"Pewien napotkany mag, imieniem Salabesz, powiedział mi o kamiennym człowieku. Czy to ty nim jesteś?"' if morteLogic.r28975_condition():
            # a593 # r28975
            $ morteLogic.r28975_action()
            jump quisai_s5  # EXTERN

        'Uderz posąg.':
            # a594 # r28976
            $ morteLogic.r28976_action()
            jump quisai_s23  # EXTERN

        'Odejdź.':
            # a595 # r28977
            jump morte_dispose


# s289 # say28966
label morte_s289: # -
    nr 'Morte zaczyna przewracać oczyma i wydawać dziwne dźwięki. "Na wszystkie Moce, nie, tylko nie jeszcze jeden trep, który gada… w ten… sposób!"'

    menu:
        '"Mam parę pytań dotyczących ciebie…"':
            # a596 # r28978
            jump quisai_s11  # EXTERN

        '"Nurtuje mnie parę pytań dotyczących tego miejsca."':
            # a597 # r28979
            jump quisai_s30  # EXTERN

        '"Co wiesz o Raveli Szaradnej?"' if morteLogic.r28980_condition():
            # a598 # r28980
            jump quisai_s29  # EXTERN

        '"Będę się z tobą o tym kłócił innym razem. Żegnaj."':
            # a599 # r28981
            jump morte_dispose


# s290 # say29677
label morte_s290: # -
    nr '"Hej, szefie - on chyba nie mówi prawdy!"'

    jump quell_s21  # EXTERN


# s291 # say30527
label morte_s291: # -
    nr 'Morte szepcze ci do ucha. "On mówi, że jest prawnikiem. Adwokatem. Jednym z tych trepów, co to kłapią jadaczkami w sądach."'

    jump iannis_s10  # EXTERN


# s292 # say30816
label morte_s292: # -
    nr 'Morte odwraca się i spogląda za siebie. "Gdzie?! Gdzie?!"'

    jump able_s2  # EXTERN


# s293 # say30817
label morte_s293: # -
    nr 'Morte sapie. "Uważaj, za tobą - jeszcze jedna latająca czaszka!"'

    menu:
        'Sam poszukaj czaszki.' if morteLogic.r30822_condition():
            # a600 # r30822
            jump able_s10  # EXTERN

        'Pozwól Mortemu się zabawić.' if morteLogic.r30823_condition():
            # a601 # r30823
            jump able_s10  # EXTERN

        '"Daj spokój, Morte. Mam do niego parę pytań…"' if morteLogic.r30824_condition():
            # a602 # r30824
            jump able_s10  # EXTERN


# s294 # say30818
label morte_s294: # -
    nr '"Dokładnie tam, gdzie wskazuję! Tam!"'

    jump able_s11  # EXTERN


# s295 # say30819
label morte_s295: # -
    nr 'Morte mówi z udawanym oburzeniem: "Przegapiłeś ją! A nawet cały ich *pochód*! Pewnie takie coś zdarzy się następny raz za jakieś milion obrotów Wielkiego Koła!"'

    jump able_s12  # EXTERN


# s296 # say30820
label morte_s296: # -
    nr 'Morte podskakuje lekko, jakby chciał wzruszyć ramionami. "Wolę określać to jako „bystre spostrzeżenia na temat ludzkiej natury“."'

    menu:
        '"Mam kilka pytań…"' if morteLogic.r30825_condition():
            # a603 # r30825
            jump able_s16  # EXTERN

        'Jeszcze raz zwróć na siebie uwagę mężczyzny.' if morteLogic.r30826_condition():
            # a604 # r30826
            $ morteLogic.r30826_action()
            jump able_s13  # EXTERN


# s297 # say30821
label morte_s297: # -
    nr '"Wiesz co, szefie? To JEST TAK SZALONE, ŻE MOŻE SIĘ UDAĆ!"'

    jump able_s65  # EXTERN


# s298 # say31566
label morte_s298: # -
    nr '"Na ostre cycki Pani, co za…"  Nagle wszystko milknie, a twoje czucie zaczyna zanikać, aż w końcu zapada ciemność.~ [MRT387]'

    menu:
        'Zgiń okrutną śmiercią, ofiaro Koszmarnej Klątwy Gangroighydona.':
            # a605 # r31567
            $ morteLogic.r31567_action()
            jump morte_dispose


# s299 # say32367
label morte_s299: # -
    nr '"„Cieniach“?! Daj spokój! Chyba nie będziemy słuchali tej paplaniny? Dalej… ruszajmy i znajdźmy sobie jakąś dzierlatkę od Czuciowców, która jeszcze nigdy nie zaznała przyjemności posmakowania ognistych ust czaszki." Morte zaczyna poruszać brwiami, jakby nie mógł się już tego doczekać.'

    menu:
        '"Uspokój się, Morte. Zostajemy… przynajmniej przez chwilę."':
            # a606 # r32368
            jump deathad_s1  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj dalej.':
            # a607 # r32369
            jump deathad_s1  # EXTERN

        '"Masz rację, Morte. Chodźmy stąd."':
            # a608 # r32370
            $ morteLogic.r32370_action()
            jump morte_dispose


# s300 # say32371
label morte_s300: # -
    nr 'Morte szepcze: "Teraz będzie jeszcze bardziej bolało."'

    menu:
        'Przytaknij Mortemu głową w milczeniu.':
            # a609 # r32372
            jump deathad_s2  # EXTERN

        '"Morte - uspokój się."':
            # a610 # r32373
            jump deathad_s2  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj dalej.':
            # a611 # r32374
            jump deathad_s2  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a612 # r32375
            $ morteLogic.r32375_action()
            jump morte_dispose


# s301 # say32376
label morte_s301: # -
    nr 'Morte szepcze: "Na pewno."'

    menu:
        'Przytaknij Mortemu głową w milczeniu.':
            # a613 # r32377
            jump deathad_s3  # EXTERN

        '"Morte - uspokój się."':
            # a614 # r32378
            jump deathad_s3  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj dalej.':
            # a615 # r32379
            jump morte_s303

        '"Chodźmy stąd, Morte."':
            # a616 # r32380
            $ morteLogic.r32380_action()
            jump morte_dispose


# s302 # say32381
label morte_s302: # -
    nr 'Morte szepcze: "A także wieczną nudą."'

    menu:
        'Przytaknij Mortemu głową w milczeniu.':
            # a617 # r32382
            jump deathad_s5  # EXTERN

        '"Morte, proszę: siedź cicho."':
            # a618 # r32383
            jump deathad_s5  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj dalej.':
            # a619 # r32384
            jump deathad_s5  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a620 # r32385
            $ morteLogic.r32385_action()
            jump morte_dispose


# s303 # say32386
label morte_s303: # from 301.2
    nr 'Morte szepcze: "Wygląda na to, że obaj wiemy, gdzie wylądujemy po śmierci."'

    menu:
        'Przytaknij Mortemu głową w milczeniu.':
            # a621 # r32387
            jump deathad_s6  # EXTERN

        '"Morte: przestań kłapać jadaczką."':
            # a622 # r32388
            jump deathad_s6  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj dalej.':
            # a623 # r32389
            jump deathad_s6  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a624 # r32390
            $ morteLogic.r32390_action()
            jump morte_dispose


# s304 # say32391
label morte_s304: # -
    nr 'Morte szepcze: "I to jak będziesz miał trochę szczęścia."'

    menu:
        'Przytaknij Mortemu głową w milczeniu.':
            # a625 # r32392
            jump deathad_s8  # EXTERN

        '"Morte, wystarczy."':
            # a626 # r32393
            jump deathad_s8  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj dalej.':
            # a627 # r32394
            jump deathad_s8  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a628 # r32395
            $ morteLogic.r32395_action()
            jump morte_dispose


# s305 # say32396
label morte_s305: # -
    nr 'Morte szepcze: "I to niby ma nam przynieść korzyści? Musimy to robić *jeszcze raz*? O rany, nie mogę się doczekać, żeby od nowa zostać latającą czaszką. Niech się szpicuje. Co za idiota. Mówi dokładnie tak, jak ktoś, kto nigdy wcześniej nie umarł, co?"'

    menu:
        'Przytaknij Mortemu głową w milczeniu.':
            # a629 # r32397
            jump deathad_s9  # EXTERN

        '"Daj spokój, Morte. Siedź cicho."':
            # a630 # r32398
            jump deathad_s9  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj dalej.':
            # a631 # r32399
            jump deathad_s9  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a632 # r32400
            $ morteLogic.r32400_action()
            jump morte_dispose


# s306 # say32401
label morte_s306: # -
    nr 'Morte szepcze: "To jedna, wielka kupa bredni."'

    menu:
        'Przytaknij Mortemu głową w milczeniu.':
            # a633 # r32402
            jump deathad_s11  # EXTERN

        '"Morte - uspokój się."':
            # a634 # r32403
            jump deathad_s11  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj dalej.':
            # a635 # r32404
            jump deathad_s11  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a636 # r32405
            $ morteLogic.r32405_action()
            jump morte_dispose


# s307 # say32406
label morte_s307: # -
    nr 'Morte mówi na głos: "Ale nuda!"'

    jump deathad_s15  # EXTERN


# s308 # say32407
label morte_s308: # -
    nr 'Morte schodzi z pola widzenia wykładowcy, a potem odwraca się do ciebie i szepcze: "Dalej, szefie. Powiedz mu o wszystkich cieniach tej sprawy."'

    menu:
        '"Tak, mam do ciebie jedno pytanie…"':
            # a637 # r32408
            jump deathad_s17  # EXTERN

        '"Nie mamy żadnych pytań. Mój przyjaciel się przejęzyczył."':
            # a638 # r32409
            jump deathad_s16  # EXTERN


# s309 # say32410
label morte_s309: # -
    nr '"Świetnie! Jeszcze jedna śmierć! Piszę się na to!" Z widowni rozlega się śmiech. Na te słowa mówca zaczyna się złościć.'

    menu:
        '"Co się dzieje, gdy umierają?"':
            # a639 # r32411
            jump deathad_s26  # EXTERN

        '"Mam jeszcze jedno pytanie…"':
            # a640 # r32412
            jump deathad_s17  # EXTERN

        '"Nie mam już więcej pytań."':
            # a641 # r32413
            jump deathad_s18  # EXTERN


# s310 # say32651
label morte_s310: # -
    nr '"Mam ochrzanić tę głupią dzierlatkę, szefie?"'

    menu:
        '"Nie miej litości, Morte."':
            # a642 # r32661
            jump morte_s316

        '"Nie, Morte… Sam sobie poradzę."':
            # a643 # r32662
            jump sarhava_s3  # EXTERN


# s311 # say32652
label morte_s311: # -
    nr '"Uwielbiam te twoje pomylone pomysły, szefie."'

    jump sarhava_s4  # EXTERN


# s312 # say32653
label morte_s312: # -
    nr 'Kiedy klękasz przed kobietą, Morte krzyczy: "Szefie! Chyba sobie ze mnie żartujesz! Chyba że naprawdę *lubisz* te rzeczy…"'

    menu:
        'Nie zwracaj uwagi na Mortego i poliż buta kobiety.':
            # a644 # r32663
            jump sarhava_s14  # EXTERN

        '"Nie chcę żadnych kłopotów, Morte. Jeśli nie będę uważać, to ściągnę sobie na głowę strażników."':
            # a645 # r32664
            jump morte_s313

        '"Masz rację, Morte. Ruszajmy."':
            # a646 # r32665
            jump sarhava_s13  # EXTERN


# s313 # say32654
label morte_s313: # from 312.1
    nr '"Hmmm, niby masz rację… ale jednak…"'

    menu:
        '"Zapomnij o tym, Morte. Wiesz co, kobieto?… dajmy sobie z tym spokój, zanim sam zawołam straże."':
            # a647 # r32666
            jump sarhava_s7  # EXTERN

        '"Masz rację, Morte. Ruszajmy."':
            # a648 # r32667
            jump sarhava_s13  # EXTERN


# s314 # say32655
label morte_s314: # -
    nr 'Morte zaczyna chichotać i klikać zębami. "Normalny donżuan, co szefie?"'

    jump morte_dispose


# s315 # say32656
label morte_s315: # -
    nr '"Ech-och…"'

    jump morte_dispose


# s316 # say32657
label morte_s316: # from 310.0
    nr 'Morte mruga do ciebie i woła do kobiety: "Hej, ty! Tak… ty tam, gburowata zdziro… patrz na mnie, jak do ciebie mówię! Coś taka nieuprzejma, hę?"'

    jump sarhava_s39  # EXTERN


# s317 # say32658
label morte_s317: # -
    nr '"Och, czy mała Księżniczka Pustyni chodzi w spodniach, bo Sułtan chciał mieć jeszcze jednego syna? Powiedz mi, „Księżniczko Pustyni“, czy spędzasz większość czasu pijąc ze swoimi klakierami, żeby w ten sposób usprawiedliwić swoje istnienie przed niezadowolonym ojcem?"'

    jump sarhava_s40  # EXTERN


# s318 # say32659
label morte_s318: # -
    nr '"Czy naprawdę wydaje ci się, że wdając się w banalne bójki w końcu zaczniesz o sobie lepiej myśleć? Że wreszcie poczujesz, że jesteś czegoś *warta*? NIC Z TEGO! Jeśli to jest dla ciebie sposób na poprawienie samopoczucia, to lepiej sobie daruj, wróć do domu, a potem znajdź sobie miejsce w haremie jakiegoś dworzanina!"'

    jump sarhava_s41  # EXTERN


# s319 # say32660
label morte_s319: # -
    nr 'Morte odwraca się do ciebie. "Doskonale *wiem*, co się tu teraz wydarzy. *Wszyscy* wiemy, że Morte dokładnie się na tym zna. Ale nie, dumna, mała Księżniczka Pustyni, zhańbiona na oczach wszystkich, pokonan…"'

    jump sarhava_s42  # EXTERN


# s320 # say33073
label morte_s320: # -
    nr '"Wojna Krwi? To nudniejsze od słuchania Guwernata recytującego ustawy. Lepiej znajdźmy jakąś młodą dzierlatkę należącą do Czuciowców, którą trzeba zindoktrynować w sprawach namiętności!" Zaczyna ruszać brwiami, jakby nie mógł się już tego doczekać.'

    menu:
        '"Morte, nie… Chcę tego posłuchać."':
            # a649 # r33074
            jump ghysis_s1  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj dalej.':
            # a650 # r33075
            jump ghysis_s1  # EXTERN

        '"W porządku, Morte - idziemy."':
            # a651 # r33076
            $ morteLogic.r33076_action()
            jump morte_dispose


# s321 # say33300
label morte_s321: # -
    nr 'Morte przewraca oczami, a z jego ust wyrywa się krzyk. "Oj! Spójrz! Gadające łajno!"'

    jump ghivem_s49  # EXTERN


# s322 # say33301
label morte_s322: # -
    nr 'Morte wskazuje w twoim kierunku i mówi do człowieka: "Mówiłem o tym wielkim trepie z bliznami… a nie o tobie, krwawniku! Nie gniewasz się, co?"'

    menu:
        '"Uważaj, Morte…"':
            # a652 # r33302
            jump ghivem_s51  # EXTERN

        'Nie zwracaj uwagi na Mortego.':
            # a653 # r33303
            jump ghivem_s51  # EXTERN


# s323 # say33423
label morte_s323: # -
    nr 'Morte przewraca oczyma, a z jego ust wyrywa się krzyk. "Oj! Spójrz! Gadające łajno!"'

    jump ghivef_s47  # EXTERN


# s324 # say33429
label morte_s324: # -
    nr 'Morte wskazuje w twoim kierunku i mówi do człowieka: "Mówiłem o tym wielkim trepie z bliznami… a nie o tobie! Nie gniewasz się, co?"'

    menu:
        '"Uważaj, Morte…"':
            # a654 # r33430
            jump ghivef_s49  # EXTERN

        'Nie zwracaj uwagi na Mortego.':
            # a655 # r33433
            jump ghivef_s49  # EXTERN


# s325 # say33958
label morte_s325: # - # IF WEIGHT #5 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Widziałem że wrócisz, szefie! W końcu zrozumiałeś, że mnie potrzebujesz, co?"~ [MRT516]'

    menu:
        '"Tak… chodźmy."':
            # a656 # r33959
            $ morteLogic.r33959_action()
            jump morte_dispose

        '"Nie teraz, Morte."':
            # a657 # r33960
            jump morte_s326


# s326 # say33961
label morte_s326: # from 325.1
    nr '"Hmmmm. Nie wiem, czy mnie tu jeszcze zastaniesz, ale dam ci jeszcze OSTATNIĄ szansę. Na pewno nie potrzebujesz moich wskazówek i mojego sprytu?"'

    menu:
        '"Morte, nie masz ani jednego, ani drugiego."':
            # a658 # r33962
            jump morte_s327

        '"W porządku, zmieniłem zdanie. Dalej, ruszajmy."':
            # a659 # r33963
            $ morteLogic.r33963_action()
            jump morte_dispose

        '"Nie teraz, Morte. Może później."':
            # a660 # r33964
            jump morte_s327


# s327 # say33965
label morte_s327: # from 326.0 326.2
    nr '"Chcesz obrazić moje uczucia, szefie? Czyżbym coś powiedział nie tak? A może przeszkadza ci, że nie mam rąk? Co?"'

    menu:
        '"W porządku, zmieniłem zdanie. Dalej, ruszajmy."':
            # a661 # r33966
            $ morteLogic.r33966_action()
            jump morte_dispose

        '"Nic z tych rzeczy. Po prostu w tym momencie nie potrzebuję twojego towarzystwa. Żegnaj, Morte."':
            # a662 # r33967
            jump morte_s328


# s328 # say33968
label morte_s328: # from 327.1
    nr '"No cóż, nie będę czekał w NIESKOŃCZONOŚĆ, więc lepiej wróć, jak tylko zmienisz zdanie."'

    menu:
        '"Obiecuję. Żegnaj, Morte."':
            # a663 # r33969
            jump morte_dispose


# s329 # say33970
label morte_s329: # from 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0
    nr '"Co cię gryzie, szefie?"'

    menu:
        '"Możesz mi jeszcze raz przeczytać, co mam wytatuowane na plecach?"':
            # a664 # r65539
            jump morte_s649

        '"Możesz powiedzieć mi coś o Sigil?"':
            # a665 # r65540
            jump morte_s659

        '"Morte… nie mam nic przeciwko temu, żebyś ze mną wędrował, ale czy umiesz robić coś *innego* oprócz trajkotania?"' if morteLogic.r65541_condition():
            # a666 # r65541
            jump morte_s663

        '"Morte… możesz mi jeszcze raz opowiedzieć o twoich specjalnych zdolnościach?"' if morteLogic.r65542_condition():
            # a667 # r65542
            jump morte_s666

        '"Morte, dlaczego mi nie powiedziałeś o dodatkowej linii tatuaży na moich plecach?"' if morteLogic.r65543_condition():
            # a668 # r65543
            jump morte_s654

        '"Chyba przydałaby mi się jakaś rada. Co według ciebie powinniśmy teraz zrobić?"':
            # a669 # r65544
            jump morte_s669

        '"Mówiłeś, że jesteś mimirem, prawda, Morte?"' if morteLogic.r65545_condition():
            # a670 # r65545
            jump morte_s684

        '"Opowiedz mi jeszcze raz o tym, jak wylądowałeś w Słupie Czaszek."' if morteLogic.r65546_condition():
            # a671 # r65546
            jump morte_s693

        '"Morte, dlaczego przyłączyłeś się do mnie z powrotem, kiedy odszedłem od Słupa?"' if morteLogic.r65547_condition():
            # a672 # r65547
            jump morte_s715

        '"Co wiesz o Wojnie Krwi?"' if morteLogic.r65548_condition():
            # a673 # r65548
            jump morte_s723

        '"Co wiesz o nocnej wiedźmie Raveli?"' if morteLogic.r65549_condition():
            # a674 # r65549
            jump morte_s722

        '"W jaki sposób umarłeś, Morte?"':
            # a675 # r65550
            jump morte_s726

        '"Nic, Morte. Tylko sprawdzam, czy wciąż ze mną jesteś."':
            # a676 # r65551
            jump morte_dispose


# s330 # say34990
label morte_s330: # externs zf114_s2 zf114_s1 zf114_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a677 # r34991
            $ morteLogic.r34991_action()
            jump morte_s331

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a678 # r35001
            $ morteLogic.r35001_action()
            jump morte_s331


# s331 # say34992
label morte_s331: # from 330.0 330.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a679 # r34993
            $ morteLogic.r34993_action()
            jump morte_s332

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a680 # r34996
            jump morte_s333

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a681 # r34999
            jump morte_s333

        '"Nieważne, Morte. Ruszajmy."':
            # a682 # r35000
            jump morte_dispose


# s332 # say34994
label morte_s332: # from 331.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a683 # r34995
            jump morte_dispose


# s333 # say34997
label morte_s333: # from 331.1 331.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a684 # r34998
            jump morte_dispose


# s334 # say35022
label morte_s334: # externs zf594_s2 zf594_s1 zf594_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a685 # r35023
            $ morteLogic.r35023_action()
            jump morte_s335

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a686 # r35033
            $ morteLogic.r35033_action()
            jump morte_s335


# s335 # say35024
label morte_s335: # from 334.0 334.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a687 # r35025
            $ morteLogic.r35025_action()
            jump morte_s336

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a688 # r35028
            jump morte_s337

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a689 # r35031
            jump morte_s337

        '"Nieważne, Morte. Ruszajmy."':
            # a690 # r35032
            jump morte_dispose


# s336 # say35026
label morte_s336: # from 335.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a691 # r35027
            jump morte_dispose


# s337 # say35029
label morte_s337: # from 335.1 335.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a692 # r35030
            jump morte_dispose


# s338 # say35054
label morte_s338: # externs zf626_s2 zf626_s1 zf626_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a693 # r35055
            $ morteLogic.r35055_action()
            jump morte_s339

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a694 # r35065
            $ morteLogic.r35065_action()
            jump morte_s339


# s339 # say35056
label morte_s339: # from 338.0 338.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a695 # r35057
            $ morteLogic.r35057_action()
            jump morte_s340

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a696 # r35060
            jump morte_s341

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a697 # r35063
            jump morte_s341

        '"Nieważne, Morte. Ruszajmy."':
            # a698 # r35064
            jump morte_dispose


# s340 # say35058
label morte_s340: # from 339.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a699 # r35059
            jump morte_dispose


# s341 # say35061
label morte_s341: # from 339.1 339.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a700 # r35062
            jump morte_dispose


# s342 # say35086
label morte_s342: # externs zf1096_s2 zf1096_s1 zf1096_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a701 # r35087
            $ morteLogic.r35087_action()
            jump morte_s343

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a702 # r35097
            $ morteLogic.r35097_action()
            jump morte_s343


# s343 # say35088
label morte_s343: # from 342.0 342.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a703 # r35089
            $ morteLogic.r35089_action()
            jump morte_s344

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a704 # r35092
            jump morte_s345

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a705 # r35095
            jump morte_s345

        '"Nieważne, Morte. Ruszajmy."':
            # a706 # r35096
            jump morte_dispose


# s344 # say35090
label morte_s344: # from 343.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a707 # r35091
            jump morte_dispose


# s345 # say35093
label morte_s345: # from 343.1 343.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a708 # r35094
            jump morte_dispose


# s346 # say35118
label morte_s346: # externs zf1072_s2 zf1072_s1 zf1072_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a709 # r35119
            $ morteLogic.r35119_action()
            jump morte_s347

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a710 # r35129
            $ morteLogic.r35129_action()
            jump morte_s347


# s347 # say35120
label morte_s347: # from 346.0 346.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a711 # r35121
            $ morteLogic.r35121_action()
            jump morte_s348

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a712 # r35124
            jump morte_s349

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a713 # r35127
            jump morte_s349

        '"Nieważne, Morte. Ruszajmy."':
            # a714 # r35128
            jump morte_dispose


# s348 # say35122
label morte_s348: # from 347.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a715 # r35123
            jump morte_dispose


# s349 # say35125
label morte_s349: # from 347.1 347.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a716 # r35126
            jump morte_dispose


# s350 # say35150
label morte_s350: # externs zf832_s2 zf832_s1 zf832_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a717 # r35151
            $ morteLogic.r35151_action()
            jump morte_s351

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a718 # r35161
            $ morteLogic.r35161_action()
            jump morte_s351


# s351 # say35152
label morte_s351: # from 350.0 350.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a719 # r35153
            $ morteLogic.r35153_action()
            jump morte_s352

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a720 # r35156
            jump morte_s353

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a721 # r35159
            jump morte_s353

        '"Nieważne, Morte. Ruszajmy."':
            # a722 # r35160
            jump morte_dispose


# s352 # say35154
label morte_s352: # from 351.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a723 # r35155
            jump morte_dispose


# s353 # say35157
label morte_s353: # from 351.1 351.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a724 # r35158
            jump morte_dispose


# s354 # say35182
label morte_s354: # externs zf679_s2 zf679_s1 zf679_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a725 # r35183
            $ morteLogic.r35183_action()
            jump morte_s355

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a726 # r35193
            $ morteLogic.r35193_action()
            jump morte_s355


# s355 # say35184
label morte_s355: # from 354.0 354.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a727 # r35185
            $ morteLogic.r35185_action()
            jump morte_s356

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a728 # r35188
            jump morte_s357

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a729 # r35191
            jump morte_s357

        '"Nieważne, Morte. Ruszajmy."':
            # a730 # r35192
            jump morte_dispose


# s356 # say35186
label morte_s356: # from 355.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a731 # r35187
            jump morte_dispose


# s357 # say35189
label morte_s357: # from 355.1 355.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a732 # r35190
            jump morte_dispose


# s358 # say35214
label morte_s358: # externs zf444_s2 zf444_s1 zf444_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a733 # r35215
            $ morteLogic.r35215_action()
            jump morte_s359

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a734 # r35225
            $ morteLogic.r35225_action()
            jump morte_s359


# s359 # say35216
label morte_s359: # from 358.0 358.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a735 # r35217
            $ morteLogic.r35217_action()
            jump morte_s360

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a736 # r35220
            jump morte_s361

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a737 # r35223
            jump morte_s361

        '"Nieważne, Morte. Ruszajmy."':
            # a738 # r35224
            jump morte_dispose


# s360 # say35218
label morte_s360: # from 359.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a739 # r35219
            jump morte_dispose


# s361 # say35221
label morte_s361: # from 359.1 359.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a740 # r35222
            jump morte_dispose


# s362 # say35246
label morte_s362: # externs zf1148_s2 zf1148_s1 zf1148_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a741 # r35247
            $ morteLogic.r35247_action()
            jump morte_s363

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a742 # r35257
            $ morteLogic.r35257_action()
            jump morte_s363


# s363 # say35248
label morte_s363: # from 362.0 362.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a743 # r35249
            $ morteLogic.r35249_action()
            jump morte_s364

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a744 # r35252
            jump morte_s365

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a745 # r35255
            jump morte_s365

        '"Nieważne, Morte. Ruszajmy."':
            # a746 # r35256
            jump morte_dispose


# s364 # say35250
label morte_s364: # from 363.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a747 # r35251
            jump morte_dispose


# s365 # say35253
label morte_s365: # from 363.1 363.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a748 # r35254
            jump morte_dispose


# s366 # say35278
label morte_s366: # externs zf891_s2 zf891_s1 zf891_s0
    nr '"Psssst. Widziałeś, jak ona na mnie patrzyła? Co? Widziałeś jak wodziła wzrokiem po zagięciu mojej kości potylicznej?"'

    menu:
        '"O czym ty *gadasz*?"':
            # a749 # r35279
            $ morteLogic.r35279_action()
            jump morte_s367

        '"Masz na myśli to puste spojrzenie, jakby zza grobu?"':
            # a750 # r35289
            $ morteLogic.r35289_action()
            jump morte_s367


# s367 # say35280
label morte_s367: # from 366.0 366.1
    nr '"Co - ogarnęła cię ŚLEPOTA?! Widziałeś jak na mnie patrzyła! Ta bezwstydnica mnie CHCIAŁA!"'

    menu:
        '"Może chciała, żebyś sobie *poszedł*. Niewątpliwie była zbyt zajęta MNĄ, żeby zwracać uwagę na jakąś głupią, podskakującą czaszkę z wielką jadaczką."':
            # a751 # r35281
            $ morteLogic.r35281_action()
            jump morte_s368

        '"Chyba coś ci się przywidziało. To zombica. Nieżywe ciało. Umarła. Pewnie nawet cię nie widzi ani nie słyszy."':
            # a752 # r35284
            jump morte_s369

        '"Chyba powinieneś dać trochę odpocząć swojej wyobraźni."':
            # a753 # r35287
            jump morte_s369

        '"Nieważne, Morte. Ruszajmy."':
            # a754 # r35288
            jump morte_dispose


# s368 # say35282
label morte_s368: # from 367.0
    nr '"Tobą? Akurat! Zaufaj mi, dzierlatki poza grobem nie przejmują się całą tą „fizyczną stroną“. Mają gdzieś jakieś tam „Ja mam ciało“ albo „Jestem cały w bliznach i wyglądam na twardziela“. One chcą gości z DUCHEM. To znaczy mnie, szefie. Ty? Truposzy takich jak ty można spotkać na każdym rogu."'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a755 # r35283
            jump morte_dispose


# s369 # say35285
label morte_s369: # from 367.1 367.2
    nr '"Tak, tak. Jak się jest umarłym tak długo jak ja, to od razu zna się sygnały. Ale może dla ciebie były one zbyt SUBTELNE. Kiedy ja będę spędzał lubieżne noce z tą niedawno zmarłą dzierlatką, ty będziesz biegał wkoło gadając „Co? Co się dzieje? Gdzie się podziała moja pamięć?“"'

    menu:
        '"Nieważne, Morte. Ruszajmy."':
            # a756 # r35286
            jump morte_dispose


# s370 # say35310
label morte_s370: # from 377.3
    nr '"Hmm. Zastanawiam się, czy ten szarobrody miałby coś przeciwko, gdybym pożyczył sobie jego ciało…"'

    menu:
        '"Szarobrody?"':
            # a757 # r35311
            jump morte_s371

        '"Wątpię, żeby był w stanie zaprotestować."':
            # a758 # r35326
            jump morte_s372

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a759 # r35327
            jump morte_s373


# s371 # say35312
label morte_s371: # from 370.0
    nr '"Szarobrody… No wiesz, staruszek, żółty pies… stary."'

    menu:
        '"Wątpię, żeby mógł zaprotestować. Może weźmiesz jego ciało?"':
            # a760 # r35313
            jump morte_s372

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a761 # r35325
            jump morte_s373


# s372 # say35314
label morte_s372: # from 370.1 371.0
    nr 'Morte przygląda się przez chwilę szkieletowi, a potem potrząsa głową. "Niee… Potrzeba mi czegoś trochę świeższego. I czegoś z odrobiną więcej godności… Ten strasznie skrzypi i cały jest połamany."'

    menu:
        '"A ty nie jesteś?"':
            # a762 # r35315
            jump morte_s373

        '"No dobra. Ruszajmy."':
            # a763 # r35324
            jump morte_dispose


# s373 # say35316
label morte_s373: # from 370.2 371.1 372.0
    nr '"Och, ależ z ciebie beczka śmiechu." Morte zaczyna się w ciebie wpatrywać. "A tak na marginesie, Z TOBĄ to dopiero jest rozmowa, trepie. Lustra błagają o litość, gdy się do nich zbliżasz."'

    menu:
        '"Ach, tak? Przynajmniej *ja* mam wszystkie części ciała."':
            # a764 # r35317
            jump morte_s374

        '"Ruszajmy."':
            # a765 # r35323
            jump morte_dispose


# s374 # say35318
label morte_s374: # from 373.0
    nr 'Morte zaczyna prychać. Zastanawiasz się, jak on to robi, nie mając płuc.'

    menu:
        '"Wiesz co, Morte? Nie ma nic wspanialszego, niż przejść się po ziemi, kołysząc rękami i wdychając ostre powietrze do swoich płuc. To WSPANIAŁE uczucie mieć ciało."':
            # a766 # r35319
            $ morteLogic.r35319_action()
            jump morte_s375

        '"Ruszajmy."':
            # a767 # r35322
            jump morte_dispose


# s375 # say35320
label morte_s375: # from 374.0
    nr '"Zaczynam żałować, że pomogłem ci uciec z pomieszczenia, gdzie przeprowadza się sekcje zwłok." Morte jeszcze raz prycha. "Trzeba było cię tam zostawić, żebyś zgnił… to znaczy zgnił jeszcze bardziej niż teraz."'

    menu:
        '"Cieszę się, że tak myślisz. Ruszajmy."':
            # a768 # r35321
            jump morte_dispose


# s376 # say35341
label morte_s376: # externs s1221_s3 s1221_s0
    nr '"Hola, szefie. To wandalizm. Te nity to pewnie jedyna rzecz, która trzyma te kości w kupie. Pewnie ci goście nie znają się zbyt dobrze na nekromancji."'

    menu:
        '"Więc?"':
            # a769 # r35342
            $ morteLogic.r35342_action()
            jump morte_s377

        '"Och… Nie chciałem wyrządzić nieodwracalnych szkód."':
            # a770 # r35360
            $ morteLogic.r35360_action()
            jump morte_s377

        '"W takim razie mniejsza z tym. Może innym razem."':
            # a771 # r35361
            jump morte_s377


# s377 # say35343
label morte_s377: # from 376.0 376.1 376.2
    nr '"Och, to żaden problem." Morte wykonuje dziwny podskok, który od biedy dałoby się wziąć za wzruszenie ramion. "Po prostu nie byłem pewien, czy to wiesz. Ale oczywiście, nawet się nie zastanawiaj."'

    menu:
        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35344_condition():
            # a772 # r35344
            jump s1221_s4  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35352_condition():
            # a773 # r35352
            jump s1221_s5  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35355_condition():
            # a774 # r35355
            jump s1221_s6  # EXTERN

        'Mniejsza z tym. Może innym razem.' if morteLogic.r35358_condition():
            # a775 # r35358
            $ morteLogic.r35358_action()
            jump morte_s370

        'Mniejsza z tym. Może innym razem.' if morteLogic.r35359_condition():
            # a776 # r35359
            jump morte_dispose


# s378 # say35387
label morte_s378: # from 385.3
    nr '"Hmm. Zastanawiam się, czy ten szarobrody miałby coś przeciwko, gdybym pożyczył sobie jego ciało…"'

    menu:
        '"Szarobrody?"':
            # a777 # r35388
            jump morte_s379

        '"Wątpię, żeby był w stanie zaprotestować."':
            # a778 # r35403
            jump morte_s380

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a779 # r35404
            jump morte_s381


# s379 # say35389
label morte_s379: # from 378.0
    nr '"Szarobrody… No wiesz, staruszek, żółty pies… stary."'

    menu:
        '"Wątpię, żeby mógł zaprotestować. Może weźmiesz jego ciało?"':
            # a780 # r35390
            jump morte_s380

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a781 # r35402
            jump morte_s381


# s380 # say35391
label morte_s380: # from 378.1 379.0
    nr 'Morte przygląda się przez chwilę szkieletowi, a potem potrząsa głową. "Niee… Potrzeba mi czegoś trochę świeższego. I czegoś z odrobiną więcej godności… Ten strasznie skrzypi i cały jest połamany."'

    menu:
        '"A ty nie jesteś?"':
            # a782 # r35392
            jump morte_s381

        '"No dobra. Ruszajmy."':
            # a783 # r35401
            jump morte_dispose


# s381 # say35393
label morte_s381: # from 378.2 379.1 380.0
    nr '"Och, ależ z ciebie beczka śmiechu." Morte zaczyna się w ciebie wpatrywać. "A tak na marginesie, Z TOBĄ to dopiero jest rozmowa, trepie. Lustra błagają o litość, gdy się do nich zbliżasz."'

    menu:
        '"Ach, tak? Przynajmniej *ja* mam wszystkie części ciała."':
            # a784 # r35394
            jump morte_s382

        '"Ruszajmy."':
            # a785 # r35400
            jump morte_dispose


# s382 # say35395
label morte_s382: # from 381.0
    nr 'Morte zaczyna prychać. Zastanawiasz się, jak on to robi, nie mając płuc.'

    menu:
        '"Wiesz co, Morte? Nie ma nic wspanialszego, niż przejść się po ziemi, kołysząc rękami i wdychając ostre powietrze do swoich płuc. To WSPANIAŁE uczucie mieć ciało."':
            # a786 # r35396
            $ morteLogic.r35396_action()
            jump morte_s383

        '"Ruszajmy."':
            # a787 # r35399
            jump morte_dispose


# s383 # say35397
label morte_s383: # from 382.0
    nr '"Zaczynam żałować, że pomogłem ci uciec z pomieszczenia, gdzie przeprowadza się sekcje zwłok." Morte jeszcze raz prycha. "Trzeba było cię tam zostawić, żebyś zgnił… to znaczy zgnił jeszcze bardziej niż teraz."'

    menu:
        '"Cieszę się, że tak myślisz. Ruszajmy."':
            # a788 # r35398
            jump morte_dispose


# s384 # say35418
label morte_s384: # externs s748_s3 s748_s0
    nr '"Hola, szefie. To wandalizm. Te nity to pewnie jedyna rzecz, która trzyma te kości w kupie. Pewnie ci goście nie znają się zbyt dobrze na nekromancji."'

    menu:
        '"Więc?"':
            # a789 # r35419
            $ morteLogic.r35419_action()
            jump morte_s385

        '"Och… Nie chciałem wyrządzić nieodwracalnych szkód."':
            # a790 # r35437
            $ morteLogic.r35437_action()
            jump morte_s385

        '"W takim razie mniejsza z tym. Może innym razem."':
            # a791 # r35438
            jump morte_s385


# s385 # say35420
label morte_s385: # from 384.0 384.1 384.2
    nr '"Och, to żaden problem." Morte wykonuje dziwny podskok, który od biedy dałoby się wziąć za wzruszenie ramion. "Po prostu nie byłem pewien, czy to wiesz. Ale oczywiście, nawet się nie zastanawiaj."'

    menu:
        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35421_condition():
            # a792 # r35421
            jump s748_s4  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35429_condition():
            # a793 # r35429
            jump s748_s5  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35432_condition():
            # a794 # r35432
            jump s748_s6  # EXTERN

        'Mniejsza z tym. Może innym razem.' if morteLogic.r35435_condition():
            # a795 # r35435
            $ morteLogic.r35435_action()
            jump morte_s378

        'Mniejsza z tym. Może innym razem.' if morteLogic.r35436_condition():
            # a796 # r35436
            jump morte_dispose


# s386 # say35464
label morte_s386: # from 393.3
    nr '"Hmm. Zastanawiam się, czy ten szarobrody miałby coś przeciwko, gdybym pożyczył sobie jego ciało…"'

    menu:
        '"Szarobrody?"':
            # a797 # r35465
            jump morte_s387

        '"Wątpię, żeby był w stanie zaprotestować."':
            # a798 # r35480
            jump morte_s388

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a799 # r35481
            jump morte_s389


# s387 # say35466
label morte_s387: # from 386.0
    nr '"Szarobrody… No wiesz, staruszek, żółty pies… stary."'

    menu:
        '"Wątpię, żeby mógł zaprotestować. Może weźmiesz jego ciało?"':
            # a800 # r35467
            jump morte_s388

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a801 # r35479
            jump morte_s389


# s388 # say35468
label morte_s388: # from 386.1 387.0
    nr 'Morte przygląda się przez chwilę szkieletowi, a potem potrząsa głową. "Niee… Potrzeba mi czegoś trochę świeższego. I czegoś z odrobiną więcej godności… Ten strasznie skrzypi i cały jest połamany."'

    menu:
        '"A ty nie jesteś?"':
            # a802 # r35469
            jump morte_s389

        '"No dobra. Ruszajmy."':
            # a803 # r35478
            jump morte_dispose


# s389 # say35470
label morte_s389: # from 386.2 387.1 388.0
    nr '"Och, ależ z ciebie beczka śmiechu." Morte zaczyna się w ciebie wpatrywać. "A tak na marginesie, Z TOBĄ to dopiero jest rozmowa, trepie. Lustra błagają o litość, gdy się do nich zbliżasz."'

    menu:
        '"Ach, tak? Przynajmniej *ja* mam wszystkie części ciała."':
            # a804 # r35471
            jump morte_s390

        '"Ruszajmy."':
            # a805 # r35477
            jump morte_dispose


# s390 # say35472
label morte_s390: # from 389.0
    nr 'Morte zaczyna prychać. Zastanawiasz się, jak on to robi, nie mając płuc.'

    menu:
        '"Wiesz co, Morte? Nie ma nic wspanialszego, niż przejść się po ziemi, kołysząc rękami i wdychając ostre powietrze do swoich płuc. To WSPANIAŁE uczucie mieć ciało."':
            # a806 # r35473
            $ morteLogic.r35473_action()
            jump morte_s391

        '"Ruszajmy."':
            # a807 # r35476
            jump morte_dispose


# s391 # say35474
label morte_s391: # from 390.0
    nr '"Zaczynam żałować, że pomogłem ci uciec z pomieszczenia, gdzie przeprowadza się sekcje zwłok." Morte jeszcze raz prycha. "Trzeba było cię tam zostawić, żebyś zgnił… to znaczy zgnił jeszcze bardziej niż teraz."'

    menu:
        '"Cieszę się, że tak myślisz. Ruszajmy."':
            # a808 # r35475
            jump morte_dispose


# s392 # say35495
label morte_s392: # externs s996_s3 s996_s0
    nr '"Hola, szefie. To wandalizm. Te nity to pewnie jedyna rzecz, która trzyma te kości w kupie. Pewnie ci goście nie znają się zbyt dobrze na nekromancji."'

    menu:
        '"Więc?"':
            # a809 # r35496
            $ morteLogic.r35496_action()
            jump morte_s393

        '"Och… Nie chciałem wyrządzić nieodwracalnych szkód."':
            # a810 # r35514
            $ morteLogic.r35514_action()
            jump morte_s393

        '"W takim razie mniejsza z tym. Może innym razem."':
            # a811 # r35515
            jump morte_s393


# s393 # say35497
label morte_s393: # from 392.0 392.1 392.2
    nr '"Och, to żaden problem." Morte wykonuje dziwny podskok, który od biedy dałoby się wziąć za wzruszenie ramion. "Po prostu nie byłem pewien, czy to wiesz. Ale oczywiście, nawet się nie zastanawiaj."'

    menu:
        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35498_condition():
            # a812 # r35498
            jump s996_s4  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35506_condition():
            # a813 # r35506
            jump s996_s5  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35509_condition():
            # a814 # r35509
            jump s996_s6  # EXTERN

        'Mniejsza z tym. Może innym razem.' if morteLogic.r35512_condition():
            # a815 # r35512
            $ morteLogic.r35512_action()
            jump morte_s386

        'Mniejsza z tym. Może innym razem.' if morteLogic.r35513_condition():
            # a816 # r35513
            jump morte_dispose


# s394 # say35541
label morte_s394: # from 401.3
    nr '"Hmm. Zastanawiam się, czy ten szarobrody miałby coś przeciwko, gdybym pożyczył sobie jego ciało…"'

    menu:
        '"Szarobrody?"':
            # a817 # r35542
            jump morte_s395

        '"Wątpię, żeby był w stanie zaprotestować."':
            # a818 # r35557
            jump morte_s396

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a819 # r35558
            jump morte_s397


# s395 # say35543
label morte_s395: # from 394.0
    nr '"Szarobrody… No wiesz, staruszek, żółty pies… stary."'

    menu:
        '"Wątpię, żeby mógł zaprotestować. Może weźmiesz jego ciało?"':
            # a820 # r35544
            jump morte_s396

        '"Nie wiem dlaczego, ale coś mi mówi, że z rękami byłbyś dwa razy bardziej denerwujący. Ruszajmy."':
            # a821 # r35556
            jump morte_s397


# s396 # say35545
label morte_s396: # from 394.1 395.0
    nr 'Morte przygląda się przez chwilę szkieletowi, a potem potrząsa głową. "Niee… Potrzeba mi czegoś trochę świeższego. I czegoś z odrobiną więcej godności… Ten strasznie skrzypi i cały jest połamany."'

    menu:
        '"A ty nie jesteś?"':
            # a822 # r35546
            jump morte_s397

        '"No dobra. Ruszajmy."':
            # a823 # r35555
            jump morte_dispose


# s397 # say35547
label morte_s397: # from 394.2 395.1 396.0
    nr '"Och, ależ z ciebie beczka śmiechu." Morte zaczyna się w ciebie wpatrywać. "A tak na marginesie, Z TOBĄ to dopiero jest rozmowa, trepie. Lustra błagają o litość, gdy się do nich zbliżasz."'

    menu:
        '"Ach, tak? Przynajmniej *ja* mam wszystkie części ciała."':
            # a824 # r35548
            jump morte_s398

        '"Ruszajmy."':
            # a825 # r35554
            jump morte_dispose


# s398 # say35549
label morte_s398: # from 397.0
    nr 'Morte zaczyna prychać. Zastanawiasz się, jak on to robi, nie mając płuc.'

    menu:
        '"Wiesz co, Morte? Nie ma nic wspanialszego, niż przejść się po ziemi, kołysząc rękami i wdychając ostre powietrze do swoich płuc. To WSPANIAŁE uczucie mieć ciało."':
            # a826 # r35550
            $ morteLogic.r35550_action()
            jump morte_s399

        '"Ruszajmy."':
            # a827 # r35553
            jump morte_dispose


# s399 # say35551
label morte_s399: # from 398.0
    nr '"Zaczynam żałować, że pomogłem ci uciec z pomieszczenia, gdzie przeprowadza się sekcje zwłok." Morte jeszcze raz prycha. "Trzeba było cię tam zostawić, żebyś zgnił… to znaczy zgnił jeszcze bardziej niż teraz."'

    menu:
        '"Cieszę się, że tak myślisz. Ruszajmy."':
            # a828 # r35552
            jump morte_dispose


# s400 # say35572
label morte_s400: # externs s863_s3 s863_s0
    nr '"Hola, szefie. To wandalizm. Te nity to pewnie jedyna rzecz, która trzyma te kości w kupie. Pewnie ci goście nie znają się zbyt dobrze na nekromancji."'

    menu:
        '"Więc?"':
            # a829 # r35573
            $ morteLogic.r35573_action()
            jump morte_s401

        '"Och… Nie chciałem wyrządzić nieodwracalnych szkód."':
            # a830 # r35591
            $ morteLogic.r35591_action()
            jump morte_s401

        '"W takim razie mniejsza z tym. Może innym razem."':
            # a831 # r35592
            jump morte_s401


# s401 # say35574
label morte_s401: # from 400.0 400.1 400.2
    nr '"Och, to żaden problem." Morte wykonuje dziwny podskok, który od biedy dałoby się wziąć za wzruszenie ramion. "Po prostu nie byłem pewien, czy to wiesz. Ale oczywiście, nawet się nie zastanawiaj."'

    menu:
        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35575_condition():
            # a832 # r35575
            jump s863_s4  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35583_condition():
            # a833 # r35583
            jump s863_s5  # EXTERN

        'Spróbuj wyciągnąć nity ze stawów szkieletu.' if morteLogic.r35586_condition():
            # a834 # r35586
            jump s863_s6  # EXTERN

        'Mniejsza z tym. Może innym razem.' if morteLogic.r35589_condition():
            # a835 # r35589
            $ morteLogic.r35589_action()
            jump morte_s394

        'Mniejsza z tym. Może innym razem.' if morteLogic.r35590_condition():
            # a836 # r35590
            jump morte_dispose


# s402 # say38265
label morte_s402: # -
    nr '"Ta dzierlatka już mi się podoba!"'

    menu:
        '"W takim razie może potrafisz pisać, albo pokazywać na migi?"':
            # a837 # r38267
            jump ecco_s7  # EXTERN


# s403 # say38266
label morte_s403: # -
    nr '"O rany!"'

    menu:
        '"Co takiego?"':
            # a838 # r38268
            jump ecco_s34  # EXTERN


# s404 # say39000
label morte_s404: # -
    nr 'Morte szepcze: "To mi się nie podoba, szefie. Uważaj na siebie, albo one sprawią, że twój umysł obróci się w niwecz… W większych grupach są silniejsze - każdy z nich dodaje cząstkę siebie do mózgu całej grupy. One są *zabójczo* groźne."'

    jump manyas1_s5  # EXTERN


# s405 # say39001
label morte_s405: # -
    nr 'Morte szepcze: "To mi się nie podoba, szefie. Uważaj na siebie, albo one sprawią, że twój umysł obróci się w niwecz… W większych grupach są silniejsze - każdy z nich dodaje cząstkę siebie do mózgu całej grupy. One są *zabójczo* groźne."'

    jump manyas1_s58  # EXTERN


# s406 # say39002
label morte_s406: # -
    nr 'Morte szepcze: "Nie wiem co one knują, szefie, ale uważaj na swoje myśli. One tworzą zbiorowy mózg, a każdy kolejny szczur sprawia, że są jeszcze silniejsze. W dodatku walczą, jak - wybacz za wyrażenie - zagonione w szczurzy róg. Jesteśmy teraz w ich mieszkaniu, więc nie mają już gdzie iść. Lepiej z nimi nie zaczynać."'

    jump manyas1_s78  # EXTERN


# s407 # say39564
label morte_s407: # -
    nr '"Co za zbieg okoliczności! Ja też lubię dużo mówić."'

    jump yves_s2  # EXTERN


# s408 # say39565
label morte_s408: # -
    nr '"Ja? Dlaczego to *ja* zawsze muszę opowiadać?"'

    menu:
        '"W takim razie zapomnij o tym."':
            # a839 # r39713
            jump morte_s409

        '"Po prostu opowiedz jakąś historię, Morte."':
            # a840 # r39714
            jump morte_s413


# s409 # say39566
label morte_s409: # from 408.0
    nr '"Dobrze, dobrze, już się robi… Pomyślałem sobie tylko, że trochę ponarzekam, żeby nie było zbyt nudno. Poza tym, uwielbiam skupiać na sobie uwagę wszystkich."'

    menu:
        '"Nic z tego, Morte. Nie chcę tego słuchać."':
            # a841 # r39715
            jump morte_s410

        '"Dobra… w takim razie zaczynaj."':
            # a842 # r39716
            $ morteLogic.r39716_action()
            jump morte_s414


# s410 # say39567
label morte_s410: # from 409.0
    nr '"Proszę! No, szefie? Słuchaj! To wspaniała opowieść! Dużo postaci, akcji i zaskakujący *finał*!"'

    menu:
        '"Nie może być aż tak dobra."':
            # a843 # r39717
            jump morte_s411

        '"Co to jest finał?"':
            # a844 # r39718
            jump morte_s412

        '"Dobra… zaczynaj."':
            # a845 # r39719
            $ morteLogic.r39719_action()
            jump morte_s414


# s411 # say39568
label morte_s411: # from 410.0
    nr '"Jest! Naprawdę! No, dalej!"'

    menu:
        '"Czekaj… Co to jest finał?"':
            # a846 # r39720
            jump morte_s412

        '"Dobra, zaczynaj."':
            # a847 # r39721
            $ morteLogic.r39721_action()
            jump morte_s414


# s412 # say39569
label morte_s412: # from 410.1 411.0
    nr '"Nie mam pojęcia! Ale *brzmi* doskonale!"'

    menu:
        '"Dobra, zaczynaj."':
            # a848 # r39722
            $ morteLogic.r39722_action()
            jump morte_s414


# s413 # say39570
label morte_s413: # from 408.1
    nr '"Dobrze, dobrze…"'

    $ morteLogic.s413_action()
    jump morte_s414


# s414 # say39571
label morte_s414: # from 409.1 410.2 411.1 412.0 413.0
    nr '"Na mrocznej ścieżce stał sobie staruszek. Nie był pewien, w którym kierunku powinien pójść, bo zapomniał gdzie i do kogo wędrował. Usiadł więc na chwilę, żeby dać odpocząć swoim strudzonym nogom. Gdy tak siedział, nagle ujrzał przed sobą staruszkę. Starowinka uśmiechnęła się do niego swoimi bezzębnymi ustami, a potem rzekła: „Jakie jest twoje *trzecie* życzenie?“"'

    menu:
        '"Mów dalej, Morte…"':
            # a849 # r39724
            jump morte_s415

        '"Czekaj… Mam pytanie do Yves…"':
            # a850 # r39725
            jump yves_s4  # EXTERN

        '"Posłuchamy tego kiedy indziej, Morte. Żegnaj, Yves."':
            # a851 # r39726
            jump morte_dispose


# s415 # say39572
label morte_s415: # from 414.0
    nr '"„Trzecie życzenie?“ Mężczyznę ogarnęła konsternacja. „Jak mogę powiedzieć trzecie życzenie, kiedy nie poprosiłem jeszcze o pierwsze i drugie?“"'

    menu:
        '"Mów dalej, Morte…"':
            # a852 # r39727
            jump morte_s416

        '"Czekaj… Mam pytanie do Yves…"':
            # a853 # r39728
            jump yves_s4  # EXTERN

        '"Posłuchamy tego kiedy indziej, Morte. Żegnaj, Yves."':
            # a854 # r39729
            jump morte_dispose


# s416 # say39573
label morte_s416: # from 415.0
    nr '"„Już wcześniej poprosiłeś mnie, żebym spełniła dwa życzenia.“ Powiedziała wiedźma. „Ale twoim drugim życzeniem było, żeby wszystko powróciło do stanu, zanim wypowiedziałeś pierwsze życzenie. Właśnie dlatego nic nie pamiętasz, przecież wszystko jest tak, jak było, zanim o cokolwiek poprosiłeś. I właśnie dlatego zostało ci jeszcze jedno życzenie.“"'

    menu:
        '"Mów dalej, Morte…"':
            # a855 # r39752
            jump morte_s417

        '"Czekaj… Mam pytanie do Yves…"':
            # a856 # r39753
            jump yves_s4  # EXTERN

        '"Posłuchamy tego kiedy indziej, Morte. Żegnaj, Yves."':
            # a857 # r39754
            jump morte_dispose


# s417 # say39574
label morte_s417: # from 416.0
    nr '"„No dobrze.“ Powiedział człowiek. „Nie wierzę ci, ale co mi szkodzi powiedzieć jakieś życzenie. Chcę się dowiedzieć, kim jestem.“"  "„To zabawne.“ Powiedziała staruszka, spełniając jego życzenie. „Właśnie to było twoje pierwsze życzenie.“ Potem staruszka zniknęła i już nigdy się nie pojawiła."'

    jump yves_s55  # EXTERN


# s418 # say39575
label morte_s418: # -
    nr '"I co to miało być, ty głupi wielościanie?! W życiu nie słyszałem nudniejszej historii."'

    jump nordom_s11  # EXTERN


# s419 # say39576
label morte_s419: # -
    nr '"Z upiększeniami?"'

    jump nordom_s12  # EXTERN


# s420 # say39577
label morte_s420: # -
    nr '"Daj spokój, kaduku. Wystarczy ci ogon, z którym nie chcesz się rozstać."'

    jump annah_s196  # EXTERN


# s421 # say40068
label morte_s421: # -
    nr 'Morte zaczyna kręcić się wokół ciebie, przedrzeźniając naiwność dziewczyny. "Na wszystkie moce, szefie… Ona ma rację! Że też wcześniej tego nie zauważyłem… jesteś cały w *bliznach*!"'

    menu:
        '"To stare blizny. Nic mi nie jest."' if morteLogic.r40069_condition():
            # a858 # r40069
            jump nenny_s2  # EXTERN

        '"Tylko trochę. Nic mi nie będzie."' if morteLogic.r40070_condition():
            # a859 # r40070
            jump nenny_s2  # EXTERN

        '"Oj, tak. I to bardzo."' if morteLogic.r40071_condition():
            # a860 # r40071
            jump nenny_s2  # EXTERN

        '"Nie zwracaj na to uwagi. Mam do ciebie kilka pytań…"':
            # a861 # r40072
            jump nenny_s3  # EXTERN

        '"Nie martw się o to. Żegnaj."':
            # a862 # r40073
            jump morte_dispose


# s422 # say40074
label morte_s422: # -
    nr 'Morte rusza brwiami. "Jesteś zbyt „bezpośrednia“? Może ma to coś wspólnego z tymi kołyszącymi się, pełnymi pier…"'

    menu:
        '"Morte, wystarczy."':
            # a863 # r40075
            jump morte_s423


# s423 # say40076
label morte_s423: # from 422.0
    nr 'Morte się zamyka.'

    menu:
        '"Nic nie szkodzi, Nenny."' if morteLogic.r40077_condition():
            # a864 # r40077
            jump nenny_s9  # EXTERN

        '"Postaraj się, żeby to było ostatni raz, Nenny."' if morteLogic.r40078_condition():
            # a865 # r40078
            jump nenny_s9  # EXTERN

        '"Nic nie szkodzi, panienko."' if morteLogic.r40079_condition():
            # a866 # r40079
            jump nenny_s9  # EXTERN

        '"Postaraj się, żeby to było ostatni raz, dziewczyno."' if morteLogic.r40080_condition():
            # a867 # r40080
            jump nenny_s9  # EXTERN


# s424 # say40081
label morte_s424: # -
    nr '"Hej!"'

    jump nenny_s27  # EXTERN


# s425 # say40082
label morte_s425: # -
    nr 'Morte mruczy do siebie: "To chyba dobrze, że *coś* tu jednak jest."'

    menu:
        '"Mam do ciebie jeszcze jedno pytanie, Nenny…"':
            # a868 # r40083
            jump nenny_s3  # EXTERN

        '"To wszystko, co chciałem wiedzieć, Nenny. Żegnaj."':
            # a869 # r40084
            jump morte_dispose


# s426 # say40222
label morte_s426: # -
    nr '"Oooch, nie… *Musisz* nam powiedzieć, i to teraz."'

    menu:
        '"Tak… Proszę, panie, opowiadaj."':
            # a870 # r40223
            jump brocus4_s4  # EXTERN

        '"Daj spokój, Morte. Mam do niego jeszcze jedno pytanie…"':
            # a871 # r40224
            jump brocus4_s2  # EXTERN

        '"Zapomnij o tym, Morte. Ruszajmy."':
            # a872 # r40225
            jump morte_dispose


# s427 # say40275
label morte_s427: # -
    nr 'Morte podlatuje do ciebie i szepcze ci do ucha: "Żal mi jej ukochanego. Za tą dzierlatką problemy chodzą stadami."'

    menu:
        '"To nie brzmi rozsądnie. Ciesz się tym, co masz."':
            # a873 # r40276
            jump sadjuli_s12  # EXTERN

        '"Co masz na myśli?"':
            # a874 # r40277
            jump sadjuli_s13  # EXTERN

        '"Mam do ciebie parę pytań…"':
            # a875 # r40278
            jump sadjuli_s24  # EXTERN

        '"Nie mam już więcej pytań. żegnaj."':
            # a876 # r40279
            jump morte_dispose


# s428 # say40685
label morte_s428: # -
    nr 'Morte szepcze ci do ucah: "Eeech… upiorna dzierlatka."'

    menu:
        '"Przyjmij moje przeprosiny, pani… Nie wiedziałem, że ktoś tu jest."':
            # a877 # r40686
            jump marissa_s2  # EXTERN

        '"Mam do ciebie parę pytań, pani…"':
            # a878 # r40687
            jump marissa_s3  # EXTERN

        '"W takim razie żegnaj, moja pani."':
            # a879 # r40688
            jump morte_dispose


# s429 # say40846
label morte_s429: # -
    nr '"Daj spokój, szefie! Jesteśmy w budynku pełnym najbardziej seksownych dzierlatek po tej stronie wieloświata, a ty zatrzymujesz się, żeby porozmawiać z *modronami?*"'

    menu:
        '"Co możesz mi o nich powiedzieć, Morte?"':
            # a880 # r40847
            jump morte_s430

        'Nie zwracaj uwagi na Mortego i przywitaj modrona.':
            # a881 # r40848
            $ morteLogic.r40848_action()
            jump brocus6_s3  # EXTERN

        '"Przepraszam, Morte, ale rozmawiam z modronem."':
            # a882 # r40849
            jump morte_s431

        '"W porządku. Chodźmy, Morte."':
            # a883 # r40850
            jump morte_dispose


# s430 # say40851
label morte_s430: # from 429.0
    nr 'Morte wydaje z siebie odgłos obrzydzenia. "A o czym tu z nimi rozmawiać? Te małe, mechaniczne szkodniki… Ciągle robią wszystko, żeby zaprowadzić prawo i porządek w całym wieloświecie. I nie chodzi im o *dobro*… tylko o *prawo*. Dajmy sobie z nimi spokój i chodźmy pogadać z kobietami, co?"'

    menu:
        'Nie zwracaj uwagi na Mortego i przywitaj modrona.':
            # a884 # r40852
            $ morteLogic.r40852_action()
            jump brocus6_s3  # EXTERN

        '"Przepraszam, Morte, ale rozmawiam z modronem."':
            # a885 # r40853
            jump morte_s431

        '"W porządku. Chodźmy, Morte."':
            # a886 # r40854
            jump morte_dispose


# s431 # say40855
label morte_s431: # from 429.2 430.1
    nr 'Morte ciężko wzdycha. "Dobra - ale nie mów, że cię nie ostrzegałem. Pewnie i tak nic z nich nie wyciągniesz… Strasznie dziwnie się z nimi rozmawia."'

    menu:
        '"Witaj…"':
            # a887 # r40856
            $ morteLogic.r40856_action()
            jump brocus6_s3  # EXTERN


# s432 # say41135
label morte_s432: # -
    nr '"Wszystko!" Wykrzykuje Morte. "Zrób ze mną, cokolwiek chcesz!"'

    jump kesai_s2  # EXTERN


# s433 # say41136
label morte_s433: # -
    nr '"To wystarczy, żebym się rozpłakał… Gdzie była ta dzierlatka, kiedy jeszcze miałem *ciało*?!"'

    jump kesai_s11  # EXTERN


# s434 # say41632
label morte_s434: # -
    nr '"Mój kumpel uważa, że jesteś całkiem atrakcyjna! Czy on kiedykolwiek może się mylić!"'

    jump kimasxi_s2  # EXTERN


# s435 # say41633
label morte_s435: # from 436.0
    nr '"Pewnie, szefie. Co mi tam. Ale czarownica, co?" Morte chrząka, a potem zaczyna szybko poruszać brwiami. "To mi się *podoba*!"'

    menu:
        '"Wierzę ci, Morte, ale muszę z nią porozmawiać."':
            # a888 # r41634
            jump kimasxi_s14  # EXTERN

        '"W porządku… Chodźmy, Morte."':
            # a889 # r41635
            jump kimasxi_s4  # EXTERN


# s436 # say41636
label morte_s436: # -
    nr '"Nawet gdybym je miał, to nie dopuściłbym go w pobliże! Co, usłyszałaś słowo „przybytek“ i pomyślałaś, że możesz tam zarobić trochę brzdęku, ty zawszona ulicznico? Nie mogę uwierzyć, że w ogóle wpuścili cię do środka… zwłaszcza z tymi kleszczami hasającymi po twoich kudłatych nogach!"'

    menu:
        '"Hej, wy dwoje. Wystarczy już tego."':
            # a890 # r41637
            jump morte_s435

        'Nie przerywaj im.':
            # a891 # r41638
            jump kimasxi_s3  # EXTERN


# s437 # say41639
label morte_s437: # -
    nr '"*On*! Ma być: „*ON* ma plugawy język“, Kimasxi „Gówniany Pęcherz“… Ty włochata, kozionoga ulicznico!"'

    jump kimasxi_s18  # EXTERN


# s438 # say41640
label morte_s438: # -
    nr '"Pewnie lepszy niż ty?" Morte zaczyna szybko poruszać brwiami. "Co? Co?"'

    jump kimasxi_s20  # EXTERN


# s439 # say41641
label morte_s439: # -
    nr '"Nic z tego, *diabelstwo*. Przyznaję, że może jednak czegoś się nauczyłem… Nieźle kojarzysz, szefie!"~ [MRT387]'

    menu:
        '"No pewnie, Morte."':
            # a892 # r41642
            jump kimasxi_s21  # EXTERN


# s440 # say41830
label morte_s440: # from 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1
    nr '"Słuchaj, szefie. To jasne, że nie doszedłeś jeszcze do siebie po pocałunku śmierci, mam więc dla ciebie dwie rady. Po pierwsze, jeśli masz jakieś pytania, to *pytaj*."  ^NNOTE: <SPEAKTO>^-'

    menu:
        '"W porządku… Jeśli będę miał jakieś pytania, zwrócę się z nimi do ciebie."':
            # a893 # r41831
            jump morte_s441


# s441 # say41832
label morte_s441: # from 440.0
    nr '"Po drugie, jeśli jesteś nawet w *połowie* tak roztargniony, na jakiego wyglądasz, to zacznij robić zapiski - jak tylko natkniesz się na coś, co może być ważne, zapisz to sobie, żebyś nie zapomniał."'

    menu:
        '"Gdybym miał ten dziennik, który to niby *powinien* przy mnie być, to bym to zrobił."':
            # a894 # r41833
            jump morte_s442


# s442 # say41834
label morte_s442: # from 441.0
    nr '"W takim razie sobie załóż. Żadna strata. Pergaminu i atramentu ci nie zabraknie."'

    menu:
        '"Hmmmm. W porządku. Co mi szkodzi… W takim razie zrobię sobie nowy."':
            # a895 # r41835
            jump morte_s443


# s443 # say41836
label morte_s443: # from 442.0
    nr '"Użyj go do śledzenia swoich postępów. Jeśli zapomnisz o czymś ważnym, na przykład kim jesteś albo – co ważniejsze – kim *ja* jestem, otwórz go i odśwież sobie pamięć."  ^NNOTE: Aby otworzyć dziennik, wciśnij przycisk dziennika w szybkim menu. W trakcie gry dziennik będzie automatycznie uzupełniany.^-'

    menu:
        '"W porządku… Rozumiem. Ruszajmy."':
            # a896 # r41837
            $ morteLogic.j39516_s443_r41837_action()
            jump morte_dispose


# s444 # say41838
label morte_s444: # from 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0 # IF WEIGHT #6 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) Global("AR0200_Visited","GLOBAL",0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Co cię gryzie, szefie?"~ [MRT515]'

    menu:
        '"Możesz mi jeszcze raz przeczytać, co wytatuowano mi na plecach?"':
            # a897 # r41840
            jump morte_s445

        '"Możesz mi jeszcze raz powtórzyć, co to jest za miejsce?"':
            # a898 # r41841
            jump morte_s450

        '"To pomieszczenie jest ogromne… Kto się nim opiekuje?"' if morteLogic.r41842_condition():
            # a899 # r41842
            jump morte_s451

        '"Możesz mi jeszcze raz powtórzyć, kim są opiekunowie tego miejsca?"' if morteLogic.r41843_condition():
            # a900 # r41843
            jump morte_s451

        '"Skąd się wzięły wszystkie te trupy, których tutaj pełno?"':
            # a901 # r41844
            jump morte_s454

        '"Wcześniej wspomniałeś, żebym nie zabijał żadnych *zombic*. Dlaczego?"' if morteLogic.r41845_condition():
            # a902 # r41845
            jump morte_s455

        '"Jak mogę użyć tych bandaży?"' if morteLogic.r41846_condition():
            # a903 # r41846
            jump morte_s453

        '"Nic takiego, Morte. Po prostu sprawdzam, czy wciąż ze mną jesteś."' if morteLogic.r41847_condition():
            # a904 # r41847
            jump morte_s440

        '"Nic takiego, Morte. Po prostu sprawdzam, czy wciąż ze mną jesteś."' if morteLogic.r41848_condition():
            # a905 # r41848
            jump morte_dispose


# s445 # say41849
label morte_s445: # from 444.0
    nr '"Daj spokój, szefie. Tylko mi nie mów, że już zdążyłeś zapomnieć."'

    menu:
        '"Po prostu muszę odświeżyć sobie pamięć."':
            # a906 # r41850
            jump morte_s446

        '"W takim razie mniejsza z tym. Mam jeszcze parę innych pytań…"':
            # a907 # r41851
            jump morte_s444

        '"W takim razie zapomnij o tym. Ruszajmy."' if morteLogic.r41852_condition():
            # a908 # r41852
            jump morte_s440

        '"W takim razie zapomnij o tym. Ruszajmy."' if morteLogic.r41853_condition():
            # a909 # r41853
            jump morte_dispose


# s446 # say41854
label morte_s446: # from 445.0
    nr '"Założę się, że jeszcze nie raz to usłyszę." Morte chrząka znacząco. "Zobaczmy…"  „Wiem, że czujesz się, jakbyś władował w siebie kilka baryłek wody ze Styksu, ale musisz się wziąć w GARŚĆ. Masz przy sobie DZIENNIK, który powinien trochę rozjaśnić sprawę. Resztę śpiewki usłyszysz od FARODA, chyba że już go wpisali do księgi umarłych.“'

    menu:
        '"Farod… hmmm. Nie przerywaj."':
            # a910 # r41855
            jump morte_s447

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a911 # r41856
            jump morte_s444

        '"Mniejsza z tym. Nie mam już więcej pytań. Ruszajmy."' if morteLogic.r41857_condition():
            # a912 # r41857
            jump morte_s440

        '"Mniejsza z tym. Nie mam już więcej pytań. Ruszajmy."' if morteLogic.r41858_condition():
            # a913 # r41858
            jump morte_dispose


# s447 # say41859
label morte_s447: # from 446.0
    nr '"Dobrze, dobrze, poczekaj." Morte przerywa na chwilę. "Dobra, tu jest koniec…"  „Nie zgub dziennika, bo znowu popłyniemy w górę Styksu. I cokolwiek robisz, NIE MÓW nikomu, KIM jesteś, ani CO się z tobą dzieje, bo inaczej wylądujesz w krematorium. Rób, co ci każę: PRZECZYTAJ dziennik, a potem ODSZUKAJ Faroda.“'

    menu:
        '"Czy jak się obudziłem, nie było przy mnie żadnego dziennika?"':
            # a914 # r41860
            jump morte_s448

        '"Zatem dobrze. Mam do ciebie parę innych pytań…"':
            # a915 # r41861
            jump morte_s444

        '"Mniejsza z tym. Nie mam już więcej pytań. Ruszajmy."' if morteLogic.r41862_condition():
            # a916 # r41862
            jump morte_s440

        '"Mniejsza z tym. Nie mam już więcej pytań. Ruszajmy."' if morteLogic.r41863_condition():
            # a917 # r41863
            jump morte_dispose


# s448 # say41864
label morte_s448: # from 447.0
    nr '"Nie… jak tu przybyłeś, nie miałeś na sobie żadnego ubrania. A tak poza tym, wygląda na to, że ktoś wypisał ci ten dziennik na skórze."'

    menu:
        '"I na pewno nie znasz nikogo imieniem Farod?"':
            # a918 # r41865
            jump morte_s449

        '"To prawda. Mam do ciebie kilka innych pytań…"':
            # a919 # r41866
            jump morte_s444

        '"W takim razie w porządku. Ruszajmy."' if morteLogic.r41867_condition():
            # a920 # r41867
            jump morte_s440

        '"W takim razie w porządku. Ruszajmy."' if morteLogic.r41868_condition():
            # a921 # r41868
            jump morte_dispose


# s449 # say41869
label morte_s449: # from 448.0
    nr '"Nie. Choć jakiś trep powinien wiedzieć, gdzie go można znaleźć. Popytajmy wkoło… JAK JUŻ się stąd wydostaniemy."'

    menu:
        '"Zanim wyruszymy, mam do ciebie kilka innych pytań…"':
            # a922 # r41870
            jump morte_s444

        '"W takim razie w porządku. Ruszajmy."' if morteLogic.r41871_condition():
            # a923 # r41871
            jump morte_s440

        '"W takim razie w porządku. Ruszajmy."' if morteLogic.r41872_condition():
            # a924 # r41872
            jump morte_dispose


# s450 # say41873
label morte_s450: # from 444.1
    nr '"To „Kostnica“… wielka, czarna budowla o uroku ciężarnej pajęczycy."'

    menu:
        '"Rozumiem. Mam do ciebie kilka innych pytań…"':
            # a925 # r41874
            jump morte_s444

        '"Nie mam już więcej pytań. Dzięki."' if morteLogic.r41875_condition():
            # a926 # r41875
            jump morte_s440

        '"Nie mam już więcej pytań. Dzięki."' if morteLogic.r41876_condition():
            # a927 # r41876
            jump morte_dispose


# s451 # say41877
label morte_s451: # from 444.2 444.3
    nr '"Nazywają siebie „Grabarzami“. Trudno ich nie rozpoznać: mają obsesję na punkcie czarnego koloru, a w dodatku ciągle mają śmiertelnie poważny wyraz twarzy. To zaprzała banda wyznawców śmierci. Wierzą, że każdy powinien umrzeć… i to im szybciej, tym lepiej."'

    menu:
        '"Nic nie rozumiem… Dlaczego ci Grabarze mieliby się przejmować moją ucieczką?"':
            # a928 # r41878
            jump morte_s452

        '"Rozumiem. Mam do ciebie kilka innych pytań…"':
            # a929 # r41879
            jump morte_s444

        '"Rozumiem. W takim razie będę uważał."' if morteLogic.r41880_condition():
            # a930 # r41880
            jump morte_s440

        '"Rozumiem. W takim razie będę uważał."' if morteLogic.r41881_condition():
            # a931 # r41881
            jump morte_dispose


# s452 # say41882
label morte_s452: # from 451.0
    nr '"Czyżbyś mnie nie słuchał?! Powiedziałem, że Grabarze wyznają pogląd, że KAŻDY powinien umrzeć, i to im szybciej, tym lepiej. Wydaje ci się, że wszystkie trupy, jakie widziałeś, są bardziej szczęśliwe w księdze umarłych niż poza nią?"'

    menu:
        '"Rozumiem. Mam do ciebie kilka innych pytań…"':
            # a932 # r41883
            jump morte_s444

        '"W porządku… Spróbuję to zapamiętać."' if morteLogic.r41884_condition():
            # a933 # r41884
            jump morte_s440

        '"W porządku… Spróbuję to zapamiętać."' if morteLogic.r41885_condition():
            # a934 # r41885
            jump morte_dispose


# s453 # say41886
label morte_s453: # from 444.6
    nr '"Tak jakby… ich *używasz*. Do tamowania krwawienia i innych takich."  ^NNOTE: <BANDAGES2>^-'

    menu:
        '"Rozumiem. Mam do ciebie kilka innych pytań…"':
            # a935 # r41887
            jump morte_s444

        '"Dzięki. Chyba sobie poradzę."' if morteLogic.r41888_condition():
            # a936 # r41888
            jump morte_s440

        '"Dzięki. Chyba sobie poradzę."' if morteLogic.r41889_condition():
            # a937 # r41889
            jump morte_dispose


# s454 # say41890
label morte_s454: # from 444.4
    nr '"Śmierć nawiedza Sfery każdego dnia. Te zombie to wszystko, co zostało z biednych skurli, którzy po śmierci sprzedali swoje ciała opiekunom."'

    menu:
        '"Rozumiem. Mam do ciebie kilka innych pytań…"':
            # a938 # r41891
            jump morte_s444

        '"W porządku… Spróbuję to zapamiętać."' if morteLogic.r41892_condition():
            # a939 # r41892
            jump morte_s440

        '"W porządku… Spróbuję to zapamiętać."' if morteLogic.r41893_condition():
            # a940 # r41893
            jump morte_dispose


# s455 # say41894
label morte_s455: # from 444.5
    nr '"Co - mówisz *serio*? Te umarłe dzierlatki to ostatnia szansa dla takich twardzieli jak my. Musimy być *szlachetni*… a nie zarzynać je, żeby dostać jakieś klucze. Zapomnij o odcinaniu im nóg i tym podobnych sprawach."'

    menu:
        '"Ostatnia szansa? O czym ty *gadasz*?"':
            # a941 # r41895
            jump morte_s456

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a942 # r41896
            jump morte_s444

        '"W porządku… Spróbuję to zapamiętać."':
            # a943 # r41897
            jump morte_dispose


# s456 # say41898
label morte_s456: # from 455.0
    nr '"Szefie, ONE nie żyją, MY nie żyjemy… łapiesz, o co mi chodzi? Co?"'

    menu:
        '"Nie… Prawdę mówiąc, nie."':
            # a944 # r41899
            jump morte_s457

        '"Chyba *nie mówisz* tego na poważnie."' if morteLogic.r41900_condition():
            # a945 # r41900
            jump morte_s457

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a946 # r41901
            jump morte_s444

        '"Nie mam już więcej pytań. Ruszajmy."':
            # a947 # r41902
            jump morte_dispose


# s457 # say41903
label morte_s457: # from 456.0 456.1
    nr '"Szefie, mamy z tymi kuśtykającymi paniami coś wspólnego, więc może uda się nam z nimi coś wskórać. Przecież *każdy z nas* umarł przynajmniej raz, więc jest od czego zacząć. Docenią ludzi z takim doświadczeniem w sprawach śmierci, jak my."'

    menu:
        '"Ale… Czekaj… Czy nie powiedziałeś, że ja *nie* umarłem?"':
            # a948 # r41904
            jump morte_s458

        '"Mniejsza z tym. Mam do ciebie parę innych pytań…"':
            # a949 # r41905
            jump morte_s444

        '"Nie mam już więcej pytań. Ruszajmy."':
            # a950 # r41906
            jump morte_dispose


# s458 # say41907
label morte_s458: # from 457.0
    nr '"No dobra… może *ty* nie umarłeś, ale *ja* tak. A ja nie mam nic przeciwko dzieleniu trumny z jedną z tych niezłych, muskularnych nieboszczyc, które tu widzę." Morte zaczyna dzwonić zębami, jakby nie mógł się już doczekać. "Oczywiście najpierw trzeba byłoby takiego truposza wyrwać z rąk opiekunów, a szanse na to są znikome…"'

    menu:
        '"Mam do ciebie parę pytań, Morte…"':
            # a951 # r41908
            jump morte_s444

        '"Nie mam już więcej pytań. Ruszajmy."':
            # a952 # r41909
            jump morte_dispose


# s459 # say41910
label morte_s459: # -
    nr '"Na wszystkie Moce. To dopiero księga."'

    menu:
        '"Co to jest?"':
            # a953 # r41911
            $ morteLogic.r41911_action()
            jump morte_s460


# s460 # say41913
label morte_s460: # from 459.0
    nr '"Jakbym miał zgadywać, powiedziałbym, że to księga, w której zapisują imiona wszystkich biednych trepów, którzy mieli pecha, żeby się tu znaleźć."'

    menu:
        '"Może tam znajdę swoje imię?"':
            # a954 # r41914
            jump morte_s461


# s461 # say41915
label morte_s461: # from 460.0
    nr '"Hmm… no cóż… *chyba* tak. Jak chcesz się dowiedzieć, musisz trochę pokłapać jadaczką z tamtym lewitującym Grabarzem. Choć nie wiem, czy to dobry pomysł."'

    menu:
        '"Hmmm, mam wiele pytań. Porozmawiam z nim."':
            # a955 # r41916
            jump morte_dispose


# s462 # say41919
label morte_s462: # -
    nr 'Morte szepcze: "Gdzieś, w domu dla obłąkanych, brakuje jednego idioty."'

    menu:
        '"Mam do ciebie parę pytań, Mieszaczu…"':
            # a956 # r41920
            jump jumble_s2  # EXTERN

        '"To ty rzuciłeś klątwę na Śmierdziwiatra, prawda?"' if morteLogic.r41921_condition():
            # a957 # r41921
            $ morteLogic.r41921_action()
            jump jumble_s8  # EXTERN

        '"Chciałbym, żebyś zdjął klątwę ze Śmierdziwiatra."' if morteLogic.r67864_condition():
            # a958 # r67864
            jump jumble_s9  # EXTERN

        '"Muszę już iść. Żegnaj, Mieszaczu."':
            # a959 # r41922
            jump morte_dispose


# s463 # say41923
label morte_s463: # -
    nr '"Ups… Szefie, wygląda na to, że ktoś właśnie rzucił na ciebie klątwę…"'

    menu:
        '"Mieszaczu, co mi zrobiłeś?"':
            # a960 # r41924
            jump jumble_s7  # EXTERN

        '"Mieszaczu… proszę, cokolwiek zrobiłeś, cofnij to."':
            # a961 # r41925
            jump jumble_s7  # EXTERN

        '"Cokolwiek zrobiłeś, cofnij to - albo gorzko tego pożałujesz."':
            # a962 # r41926
            jump jumble_s7  # EXTERN

        '"Ruszajmy, Morte."':
            # a963 # r41927
            jump morte_dispose


# s464 # say42929
label morte_s464: # -
    nr '"Po prostu ignoruj tę dzierlatkę… Zachowuj się, jakbyś się nią nie interesował. To powinno dodać tej sprawie trochę pieprzyku!"'

    jump montagu_s29  # EXTERN


# s465 # say42930
label morte_s465: # -
    nr '"Zaufaj mi. Ignoruj ją, stwórz pewne tarcie, zostaw je sam na sam z myślami, a będą za tobą goniły, żeby odkryć, o co chodzi. Prawda, szefie?"'

    menu:
        '"Tak… Ona będzie myślała, że coś jest nie tak, i tym razem to on rozegra swoją grę, a nie będzie celem."':
            # a964 # r42931
            jump montagu_s30  # EXTERN

        '"Nie… To zły pomysł."':
            # a965 # r42932
            jump montagu_s31  # EXTERN


# s466 # say43543
label morte_s466: # -
    nr '"Właśnie dlatego githowie nie powinni się rozmnażać. Ciągle tylko myślą o tym „gdzie jest jakiś githyanki, którego można by było zabić“, albo o tym podobnych rzeczach. Pewnie nawet nie znajdują przyjemności w… no wiesz. Zapominają o swoim poczuciu humoru i albo idiocieją, albo strasznie się skupiają. Gadają jakieś głupoty o skoncentrowaniu, o zaufaniu społeczności, ale nie wspominają nic o rasie, w której doszło do rozłamu. I jak tu nie twierdzić, że religia i ideologia kiedyś nie przyczynią się do upadku Sfer."'

    jump kiina_s35  # EXTERN


# s467 # say43908
label morte_s467: # -
    nr '"Łał."'

    menu:
        '"Ty jesteś Nemelle? Podobno znasz słowo-rozkaz do tej karafki."' if morteLogic.r43909_condition():
            # a966 # r43909
            jump neml_s4  # EXTERN

        '"Nemelle? Szuka cię Aelwina, twoja przyjaciółka."' if morteLogic.r43910_condition():
            # a967 # r43910
            $ morteLogic.r43910_action()
            jump neml_s6  # EXTERN

        '"Szukasz kogoś?"' if morteLogic.r43911_condition():
            # a968 # r43911
            jump neml_s14  # EXTERN

        '"Mam kilka pytań…"':
            # a969 # r43912
            jump neml_s11  # EXTERN

        '"Niczego nie potrzebuję, Nemelle. Do zobaczenia."':
            # a970 # r43913
            jump morte_dispose


# s468 # say43914
label morte_s468: # -
    nr '"Łał."'

    jump annah_s209  # EXTERN


# s469 # say43915
label morte_s469: # -
    nr '"O rany, ale gorąca dzierlatka! Spragniona uwagi? Jak jesteś zazdrosna, to do ciebie też mogę się poślinić…" Morte podlatuje do Anny, wydając przy tym dźwięki, jakby się oblizywał…'

    jump annah_s210  # EXTERN


# s470 # say43916
label morte_s470: # -
    nr 'Morte zatrzymuje się w miejscu. Potem odwraca się mrucząc coś pod nosem.'

    menu:
        '"Ty jesteś Nemelle? Podobno znasz słowo-rozkaz do tej karafki."' if morteLogic.r43917_condition():
            # a971 # r43917
            jump neml_s4  # EXTERN

        '"Nemelle? Szuka cię Aelwina, twoja przyjaciółka."' if morteLogic.r43918_condition():
            # a972 # r43918
            $ morteLogic.r43918_action()
            jump neml_s6  # EXTERN

        '"Szukasz kogoś?"' if morteLogic.r43919_condition():
            # a973 # r43919
            jump neml_s14  # EXTERN

        '"Mam kilka pytań…"':
            # a974 # r43920
            jump neml_s11  # EXTERN

        '"Niczego nie potrzebuję, Nemelle. Do zobaczenia."':
            # a975 # r43921
            jump morte_dispose


# s471 # say43922
label morte_s471: # -
    nr '"No, szefie… Jestem pewien, że *coś* wymyślimy. Co ty na to?"'

    menu:
        '"Zapomnij o tym, Morte. Ruszajmy."':
            # a976 # r43923
            jump morte_dispose


# s472 # say44244
label morte_s472: # -
    nr 'Morte podlataje bliżej i szepcze: "Ale nie mnie. Co, szefie?" Mruga do ciebie.'

    jump goncal_s20  # EXTERN


# s473 # say44245
label morte_s473: # -
    nr 'Przerażony Morte zaczyna wrzeszczeć. "Nie!!! Człowieku, czyś ty *oszalał*?! Co za durna gadka!"'

    jump annah_s214  # EXTERN


# s474 # say44677
label morte_s474: # -
    nr 'Morte zaczyna przewracać oczami. "Głupcy pakują się w…"'

    jump yi'minn_s47  # EXTERN


# s475 # say44944
label morte_s475: # -
    nr '"Uwieeeeelbiam Gmach Rozrywki."'

    jump udesire_s2  # EXTERN


# s476 # say45026
label morte_s476: # -
    nr 'Morte głośno wzdycha. "Daj spokój, szefie, naprawdę na tym zostaniemy?"'

    menu:
        '"Bądź cicho przez chwilę, Morte. Chcę tego posłuchać."':
            # a977 # r45027
            jump 3planea_s1  # EXTERN

        'Nie zwracaj uwagi na Mortego i słuchaj wykładu.':
            # a978 # r45028
            jump 3planea_s1  # EXTERN

        '"Masz rację, Morte. Ruszajmy."':
            # a979 # r45029
            $ morteLogic.r45029_action()
            jump morte_dispose


# s477 # say45088
label morte_s477: # externs zm965_s0
    nr '"Ha. Wygląda na to, że ktoś zapomniał powiedzieć temu skurlowi, żeby przestał chodzić z Regułą Trójek."'

    menu:
        '"Co masz na myśli?"':
            # a980 # r45089
            jump morte_s478


# s478 # say45091
label morte_s478: # from 477.0
    nr '"Ci truposze nie mają zbyt dużo oleju w głowie, dlatego nie mogą robić więcej niż jednej rzeczy naraz… Jak się im powie, żeby coś zrobili, będą to robić tak długo, aż ktoś nie rozkaże im, żeby przestali. Ten biedny skurl pewnie skończył wykonywać jakieś zadanie i nikt mu o tym nie powiedział."'

    menu:
        '"Kto wydaje im polecenia?"':
            # a981 # r45092
            jump morte_s481

        '"Wspomniałeś coś o „Regule Trójek“. Co miałeś wtedy na myśli?"':
            # a982 # r45093
            $ morteLogic.j39477_s478_r45093_action()
            jump morte_s479

        '"W porządku. Dalej, ruszajmy."':
            # a983 # r45094
            jump morte_dispose


# s479 # say45095
label morte_s479: # from 478.1 481.0
    nr '"Co? Reguła Trójek to jedno z „praw“, która rządzą Sferami. Chodzi o to, że wszystko zazwyczaj dzieje się trzykrotnie… albo składa się z trzech części… albo zawsze są trzy drogi wyboru i tak dalej."'

    menu:
        '"Nie brzmisz zbyt przekonywująco."':
            # a984 # r45096
            jump morte_s480


# s480 # say45098
label morte_s480: # from 479.0
    nr '"Jeśli o mnie chodzi, to myślę, że to kupa bzdur. Jeśli szukasz liczby, jakiejkolwiek liczby, i chcesz do niej przyporządkować jakieś wielkie znaczenie, to na pewno natkniesz się na wiele zbiegów okoliczności."'

    menu:
        '"Rozumiem. Mówiłeś, że ktoś wydał temu zombie polecenie, a potem zapomniał mu powiedzieć, żeby przestał. Kto wydaje te polecenia?"':
            # a985 # r45099
            jump morte_s481

        '"Rozumiem. Chcę się przyjrzeć temu zombie trochę lepiej…"':
            # a986 # r45100
            jump zm965_s1  # EXTERN

        '"W porządku. Dalej, ruszajmy."':
            # a987 # r45101
            jump morte_dispose


# s481 # say45102
label morte_s481: # from 478.0 480.0
    nr '"Albo to jeden z opiekunów, albo jakiś nekromanta wskrzesił je z księgi umarłych. Pewnie raczej opiekun… Przecież to im potrzeba taniej siły roboczej."'

    menu:
        '"Rozumiem. Możesz mi powtórzyć, co mówiłeś wcześniej… o „Regule Trójek“?"':
            # a988 # r45103
            $ morteLogic.j39477_s481_r45103_action()
            jump morte_s479

        '"Rozumiem. Chcę się przyjrzeć temu zombie trochę lepiej…"':
            # a989 # r45104
            jump zm965_s1  # EXTERN

        '"W porządku. Dalej, ruszajmy."':
            # a990 # r45105
            jump morte_dispose


# s482 # say45540
label morte_s482: # externs zm985_s4 zm985_s0
    nr '"Ee… szefie… Raczej nie będziesz tego…"'

    jump zm985_s3  # EXTERN


# s483 # say45709
label morte_s483: # -
    nr '"Och, aukcja! Może tu sprzedamy Annę."'

    jump annah_s215  # EXTERN


# s484 # say45710
label morte_s484: # -
    nr '"Och, aukcja! Może tu sprzedamy Dak„kona."'

    jump dakkon_s163  # EXTERN


# s485 # say45711
label morte_s485: # -
    nr '"Och, aukcja! Może tu znajdziemy dla mnie jakieś ciało."'

    menu:
        '"Dobrze, Morte. Na pewno o to zapytam."':
            # a991 # r45712
            jump giltsp_s4  # EXTERN

        '"W takim razie ruszajmy dalej."':
            # a992 # r45713
            jump morte_dispose


# s486 # say45714
label morte_s486: # -
    nr '"To musi być miłość. To miłość, prawda, szefie?"'

    menu:
        '"Wy dwoje! Dajcie spokój. Muszę dostać odpowiedź na kilka pytań."':
            # a993 # r45715
            jump giltsp_s4  # EXTERN

        '"Nieważne, Morte. Chodźmy stąd."':
            # a994 # r45716
            jump morte_dispose


# s487 # say45996
label morte_s487: # - # IF WEIGHT #0 ~  NumTimesTalkedTo(0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Hej, patrz! Jeszcze jedna latająca głowa."'

    jump vault9_s0  # EXTERN


# s488 # say47813
label morte_s488: # -
    nr '"Wygląda na to, że ta wekiera trochę zazdrości mi mądrości. Szpicuj się, ty kupo żelastwa."'

    menu:
        '"Spokój. Muszę dostać odpowiedzi na parę pytań…"':
            # a995 # r47814
            jump justfer_s8  # EXTERN

        '"Na razie skończyliśmy rozmowę."':
            # a996 # r47815
            jump morte_dispose


# s489 # say49443
label morte_s489: # -
    nr '"Och, githyanki. Założę się, że Dak„kon pomoże z *wielką* przyjemnością."'

    menu:
        '"Dziękuję ci za twoje cenne uwagi, Morte. Ruszajmy."':
            # a997 # r49444
            jump morte_dispose


# s490 # say50162
label morte_s490: # -
    nr '"Och, one *mają* imiona. Jestem tego pewien."'

    jump annah_s242  # EXTERN


# s491 # say50164
label morte_s491: # -
    nr '"To *ty* tak mówisz, kaduku."'

    menu:
        '"Zamknij się, Morte. Anno, czy mogłabyś zadać mu parę innych pytań?"':
            # a998 # r50165
            jump annah_s240  # EXTERN

        '"Mniejsza z tym. Ruszajmy."':
            # a999 # r50166
            $ morteLogic.r50166_action()
            jump adabus_s6  # EXTERN


# s492 # say50263
label morte_s492: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza? Znajdź sobie rodowitego Sigilianina."'

    menu:
        '"Rozumiem."':
            # a1000 # r50264
            jump adabus_s2  # EXTERN


# s493 # say50266
label morte_s493: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza? Weź do tego tę kaduczą dzierlatkę." Morte wskazuje na Annę. "To rodowita mieszkanka Ula."'

    menu:
        '"Może to zrobię…"':
            # a1001 # r50267
            jump adabus_s2  # EXTERN


# s494 # say50269
label morte_s494: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza?" Morte wskazuje na Dak“kona. "Weź do tego świętoszkowatego niemowę."'

    menu:
        '"Może to zrobię…"':
            # a1002 # r50270
            jump adabus_s2  # EXTERN


# s495 # say50272
label morte_s495: # -
    nr 'Na twarzy Mortego pojawia się szyderczy uśmiech. "Prędzej dam się przeciągnąć przez wnętrzności tanar„ri, niż odgadnę, co te kozie głowy chcą powiedzieć. Potrzeba ci tłumacza? Weź do tego tę tanar“ri." Morte wskazuje na Nie-Sławę. "Ona pewnie nie raz musiała wymieniać z nimi śpiewkę."'

    menu:
        '"Może to zrobię…"':
            # a1003 # r50273
            jump adabus_s2  # EXTERN


# s496 # say50320
label morte_s496: # -
    nr '"Och, na miłość Mocy! Szpicowany dabus."'

    menu:
        '"Coś się stało?"':
            # a1004 # r50321
            jump morte_s497


# s497 # say50322
label morte_s497: # from 496.0
    nr '"To dabus. One „mówią“ rebusami, no wiesz, tymi denerwującymi zagadkami słownymi. Jeśli nie wiesz, co taki mówi, to lepiej znajdź sobie tubylca, albo jakiś inny sposób, żeby się z nim porozumieć… oczywiście, jeśli naprawdę tego chcesz. Ależ one potrafią wkurzyć. Wiesz, co ja o tym myślę? One *potrafią* mówić, ale wolą wszystkich wkurzać zadając te przeklęte zagadki."'

    menu:
        '"Co to jest „dabus?“"':
            # a1005 # r50323
            jump morte_s498


# s498 # say50324
label morte_s498: # from 497.0
    nr '"Śpiewka niesie, że robią za dozorców u Pani Bólu. Latają tu i tam, psując, naprawiając i łatając całe Sigil tak, jak ona sobie zażyczy. Są gorsze niż trupie muchy." Morte wzdycha ciężko. "Ale nie można im przyłożyć, bo Pani się… zdenerwuje."'

    menu:
        '"„Pani Bólu?“ Kto to taki?"' if morteLogic.r50325_condition():
            # a1006 # r50325
            $ morteLogic.r50325_action()
            jump morte_s499

        '"Co możesz mi powiedzieć o Pani Bólu?"' if morteLogic.r50328_condition():
            # a1007 # r50328
            jump morte_s499

        '"Rozumiem."' if morteLogic.r50329_condition():
            # a1008 # r50329
            jump adabus_s2  # EXTERN


# s499 # say50326
label morte_s499: # from 498.0 498.1
    nr '"To ona włada całym miastem. Nietrudno ją poznać: wokół twarzy wystają jej ostrza, jest prawie tak wysoka jak olbrzym, a w dodatku unosi się nad ziemią, dokładnie tak, jak ci goście." Morte wskazuje głową na dabusa, który się wam przygląda. "Nikt nie wie o niej za wiele… ona nie mówi zbyt dużo. Trzeba tylko pamiętać o tym, żeby jej nie zezłościć. Dam ci radę: Jak ją zobaczysz, to uciekaj, ile sił w nogach."'

    menu:
        '"Rozumiem."':
            # a1009 # r50327
            jump adabus_s2  # EXTERN


# s500 # say50410
label morte_s500: # -
    nr '"Co? Co? Co w tym było, szefie?"'

    menu:
        '"Nie wiem co powiedzieć, Morte…"':
            # a1010 # r50411
            jump morte_s501

        '"Nic co cię powinno obchodzić, Morte."':
            # a1011 # r50412
            jump morte_s501

        'Pokaż mu Kodeks.':
            # a1012 # r50413
            jump morte_s503


# s501 # say50414
label morte_s501: # from 500.0 500.1
    nr '"CO?! Żarty sobie ze mnie stroisz, co? Daj zobaczyć!"'

    menu:
        'Pokaż mu Kodeks.':
            # a1013 # r50415
            jump morte_s503

        '"Nie, Morte. Zapomnij, że go widziałeś."':
            # a1014 # r50416
            $ morteLogic.r50416_action()
            jump morte_s502


# s502 # say50417
label morte_s502: # from 501.1
    nr 'Morte mruczy coś skwaszony… ale porzuca ten temat.'

    jump codexi_s2  # EXTERN


# s503 # say50418
label morte_s503: # from 500.2 501.0
    nr 'Morte podlatuje do ciebie, żeby lepiej przyjrzeć się zawartości Kodeksu. Kiedy przegląda strony, jego oczy sprawiają wrażenie, jakby chciały wyskoczyć z oczodołów: "Ooo. Ooooooooo. Och, ja… ale… łał."'

    jump codexi_s2  # EXTERN


# s504 # say50697
label morte_s504: # -
    nr '"Hej! Hej! Hej! *Żarty* sobie ze mnie stroisz, prawda? Na pewno *nie mówisz* poważnie, szefie!"'

    menu:
        '"Mówię. Weźmiesz go, Vrisziko?"':
            # a1015 # r50698
            jump vrisch_s45  # EXTERN

        '"Żartowałem. Mam do ciebie jeszcze jedno pytanie, Vrisziko…"':
            # a1016 # r50699
            jump vrisch_s7  # EXTERN

        '"Masz rację, Morte. To nie było dobry pomysł. Ruszajmy."':
            # a1017 # r50700
            jump morte_dispose


# s505 # say50701
label morte_s505: # -
    nr '"Nie wierzę własnym uszom… Już wcześniej udawało ci się upaść całkiem nisko, szefie, ale to już zupełne przegięcie. Do zobaczenia w Baator, ty powalony, karłomózgi, podstępny, niewdzięczny, zapryszczony, tłustowłosy śmieciu ogarnięty amnezją! Zapamiętaj moje słowa, ty szpicowany skurlu, rób tak dalej, a już niedługo umrzesz *na dobre*…"'

    $ morteLogic.s505_action()
    jump vrisch_s46  # EXTERN


# s506 # say52571
label morte_s506: # -
    nr '"Połknęło go, ale nie wiem, czy wyszedł z *tamtego* końca."'

    menu:
        '"Wystarczy już tego - słuchaj, Ravelo, pozbawiłaś mnie śmiertelności i w rezultacie więcej w tym było złego niż dobrego. Oddaj mi ją teraz - chyba już zbyt długo miałaś ją w swoim posiadaniu."':
            # a1018 # r52572
            jump ravel_s126  # EXTERN


# s507 # say52573
label morte_s507: # -
    nr '"Chyba wiem, kto powinien być w klatce…"'

    jump ravel_s189  # EXTERN


# s508 # say52574
label morte_s508: # -
    nr '"No tak, nie miałem nic LEPSZEGO do roboty, tylko pójść do labiryntu Pani i spotkać się z jednym z najbardziej złych stworów, jakie kiedykolwiek widziało Sigil, więc się zgodziłem!"'

    menu:
        '"Morte, siedź cicho. Ravelo, ja…"':
            # a1019 # r52575
            jump morte_s509


# s509 # say52576
label morte_s509: # from 508.0
    nr '"„Siedź cicho“?!" Morte zaczyna kłapać zębami. "Jeszcze czego! Chyba już wystarczająco długo słuchaliśmy tej zdziry, a teraz ona jeszcze gada, że nie mam skóry! No i CO, że nie mam?! Właśnie widać, jak to, że ONA ma skórę, ją upiększa! Czy jej się wydaje, że mi się podoba latanie z gołą potylicą? I jeszcze jedno…"'

    menu:
        '"Morte! Daj spokój! Ravelo, wiesz…"' if morteLogic.r52577_condition():
            # a1020 # r52577
            $ morteLogic.r52577_action()
            jump ravel_s66  # EXTERN

        '"Morte! Daj spokój! Ravelo, wiesz…"' if morteLogic.r52578_condition():
            # a1021 # r52578
            $ morteLogic.r52578_action()
            jump ravel_s67  # EXTERN

        '"Morte! Daj spokój! Ravelo, wiesz…"' if morteLogic.r52579_condition():
            # a1022 # r52579
            jump ravel_s68  # EXTERN


# s510 # say52644
label morte_s510: # -
    nr '"Super. Więc technicznie rzecz biorąc, gdzie my teraz stoimy?"'

    menu:
        '"Naprawdę nie chcę tego wiedzieć, Morte."':
            # a1023 # r52771
            jump pregal_s10  # EXTERN


# s511 # say53623
label morte_s511: # -
    nr '"Och, no to *świetnie*."'

    jump pillar_s5  # EXTERN


# s512 # say53624
label morte_s512: # from 522.0 523.0 524.0
    nr 'Kiedy podchodzisz o krok bliżej do Słupa, Morte syczy ci do ucha: "Psssst! Szefie! Szefie… słuchaj, nie mogę pozwolić, żeby to coś mnie zobaczyło. Musisz mnie stąd zabrać… Zostaw mnie gdzieś, a potem po mnie wróć, dobra?"'

    menu:
        '"Zapomnij o tym, Morte. Zaraz z nim porozmawiam…"' if morteLogic.r53625_condition():
            # a1024 # r53625
            $ morteLogic.r53625_action()
            jump pillar_s9  # EXTERN

        '"Dlaczego, Morte? O co w tym wszystkim chodzi?"' if morteLogic.r53627_condition():
            # a1025 # r53627
            jump morte_s513

        '"Dobrze. W takim razie idziemy stąd."':
            # a1026 # r53628
            jump morte_dispose


# s513 # say53626
label morte_s513: # from 512.1
    nr '"Ee… Naprawdę, nie chcę o tym mówić. Chodźmy już dalej, co?" Głos Mortego aż drży ze strachu. Jego wzrok raz spoczywa na tobie, a raz na ogromnym słupie z czaszek.'

    menu:
        '"Mam już dość tego, że ciągle coś przede mną ukrywasz, Morte. Musisz mi w końcu powiedzieć, o co w tym wszystkim chodzi."':
            # a1027 # r53629
            $ morteLogic.r53629_action()
            jump morte_s514

        '"Dość już tych uników, Morte. *Teraz* powiesz mi, o co w tym wszystkim chodzi, albo *zapragniesz* jedynie rozmowy z głowami."':
            # a1028 # r53630
            $ morteLogic.r53630_action()
            jump morte_s514

        '"Dobrze. W takim razie idziemy stąd."':
            # a1029 # r53631
            jump morte_dispose


# s514 # say53632
label morte_s514: # from 513.0 513.1
    nr 'Morte wzdycha, nie mogąc wytrzymać twojego wzroku. W końcu ustępuje. "Dobra, dobra… Powiem ci. Na Avernusie, pierwszej warstwie Baator, znajduje się słup zbudowany z głów tych, których kłamstwa spowodowały czyjąś śmierć. To… właśnie ten słup. Chodzi o to, że właśnie tam skończyłem. Reszty domyśl się sam."'

    menu:
        '"Więc… ty byłeś jedną z tych głów?"' if morteLogic.r53662_condition():
            # a1030 # r53662
            jump morte_s516

        '"Więc… ty byłeś jedną z tych głów?"' if morteLogic.r53663_condition():
            # a1031 # r53663
            jump morte_s515


# s515 # say53664
label morte_s515: # from 514.1
    nr '"No. Raz czy dwa trochę przesadziłem. Po prostu jedna z moich sugestii doprowadziła do twojej śmierci. Jedna. Może więcej. Trochę już o tym zapomniałem."'

    menu:
        '"Rozumiem…"':
            # a1032 # r53665
            jump morte_s518


# s516 # say53666
label morte_s516: # from 514.0
    nr '"No. Raz czy dwa trochę przesadziłem. Po prostu jedna z moich sugestii…"'

    jump annah_s269  # EXTERN


# s517 # say53667
label morte_s517: # -
    nr 'Morte, nieporuszony, ciągnie dalej: "…jedna z moich *sugestii* doprowadziła do twojej śmierci. Jedna. Może więcej. Trochę już o tym zapomniałem."'

    jump morte_s518


# s518 # say53668
label morte_s518: # from 515.0 517.0
    nr 'Wzrok Mortego jest wbity w twoje stopy - nigdy nie widziałeś go tak przygnębionego. "Pamięć o tym… nawet nie pamiętam tego, jak *byłem* człowiekiem. Nie pamiętam życia zanim wylądowałem w Słupie…"'

    if morteLogic.s518_condition():
        jump dakkon_s183  # EXTERN
    menu:
        '"Mów dalej…"' if morteLogic.r54105_condition():
            # a1033 # r54105
            jump morte_s520


# s519 # say53794
label morte_s519: # -
    nr 'Morte spogląda na Dak„kona, a potem na ciebie. "Taak, chyba tak. Mniej więcej tak to wygląda, jak człowiek umrze. Po prostu się… zapomina. Pewnie za życia nie byłem zbyt wartościowym członkiem społeczności… ale, do diabła, kto nim jest?" Morte jeszcze raz wzdycha. "Po prostu nic na to nie mogę poradzić. Nie ma nic gorszego, niż bycie cały czas uczciwym. Ale słuchaj, szefie: jak ta kupa głów mnie zobaczy, to będzie chciała, żebym tam wrócił. Nie możesz pozwolić, żeby to się stało!"'

    menu:
        '"Zapomnij o tym, Morte. Zaraz z nim porozmawiam…"':
            # a1034 # r53795
            $ morteLogic.r53795_action()
            jump pillar_s9  # EXTERN

        '"Czekaj… W jaki sposób udało ci się uwolnić ze Słupa?"':
            # a1035 # r53796
            jump morte_s521

        '"Czekaj… Dlaczego wtedy, w Kostnicy, nie przyznałeś się, że mnie znasz?"':
            # a1036 # r53797
            jump morte_s523

        '"Jeszcze chwilkę. To w końcu jak długo mnie znasz, Morte?"':
            # a1037 # r53798
            jump morte_s524

        '"W porządku. Chodźmy, Morte."':
            # a1038 # r53799
            jump morte_dispose


# s520 # say53800
label morte_s520: # from 518.1
    nr '"W każdym razie, pewnie za życia nie byłem zbyt wartościowym członkiem społeczności… ale, do diabła, kto nim jest?" Morte jeszcze raz wzdycha. "Po prostu nic na to nie mogę poradzić. Nie ma nic gorszego, niż bycie cały czas uczciwym. Ale słuchaj, szefie: jak ta kupa głów mnie zobaczy, to będzie chciała, żebym tam wrócił. Nie możesz pozwolić, żeby to się stało!"'

    menu:
        '"Zapomnij o tym, Morte. Zaraz z nim porozmawiam…"':
            # a1039 # r53801
            $ morteLogic.r53801_action()
            jump pillar_s9  # EXTERN

        '"Czekaj… W jaki sposób udało ci się uwolnić ze Słupa?"':
            # a1040 # r53802
            jump morte_s521

        '"Czekaj… Dlaczego wtedy, w Kostnicy, nie przyznałeś się, że mnie znasz?"':
            # a1041 # r53803
            jump morte_s523

        '"Jeszcze chwilkę. To w końcu jak długo mnie znasz, Morte?"':
            # a1042 # r53804
            jump morte_s524

        '"W porządku. Chodźmy, Morte."':
            # a1043 # r53805
            jump morte_dispose


# s521 # say53806
label morte_s521: # from 519.1 520.1 523.1 524.1
    nr '"Wyciągnąłeś mnie stamtąd, szefie. Walczyłem jak mogłem, żeby wydostać się na powierzchnię Słupa. Wrzeszczałem i wyłem, aż mnie zauważyłeś. Błagałem, żebyś mnie uwolnił, zaklinałem się, że za tobą pójdę, że będę się z tobą dzielić swoją wiedzą aż po moje ostatnie dni… Nawet nie zdawałem sobie sprawy, ile czasu minęło, zanim w końcu mnie wyciągnąłeś."'

    menu:
        '"A cała Wiedza Słupa…?"':
            # a1044 # r53807
            $ morteLogic.j53633_s521_r53807_action()
            jump morte_s522


# s522 # say53808
label morte_s522: # from 521.0
    nr '"Och, hmmm… Nie zdawałem sobie sprawy, że kiedy wydostanę się ze Słupa, stracę większość wiedzy, która była w nim zgromadzona. Na szpicujące Moce, ale *to* cię kiedyś wkurzyło! Ale ty i tak zostawiłeś mnie przy sobie. I na początku czułem się z tobą związany… Że to może twoje sztuczki magiczne zamieniły mnie w coś w rodzaju chowańca. Ale po paruset latach zrozumiałem, że to było coś *więcej*… coś głębszego. Coś więcej, niż tylko dług wdzięczności, choć to na pewno się do tego przyczyniło. Po prostu czułem, że coś mnie do ciebie ciągnie, że jestem z tobą w jakiś sposób *połączony*. Może to przez te wszystkie twoje cierpienia, szefie… przez twoje udręki. Nie wiem. Może porównywałem je z moimi udrękami, gdy byłem częścią słupa."'

    menu:
        '"Teraz mam zamiar porozmawiać ze Słupem…"':
            # a1045 # r53809
            jump morte_s512

        '"Dlaczego wtedy, w Kostnicy, nie przyznałeś się, że mnie znasz?"':
            # a1046 # r53810
            jump morte_s523

        '"To w końcu jak długo mnie znasz, Morte?"':
            # a1047 # r53811
            jump morte_s524

        '"W porządku. Chodźmy stąd, Morte."':
            # a1048 # r53812
            jump morte_dispose


# s523 # say53813
label morte_s523: # from 519.2 520.2 522.1 524.2
    nr 'Morte nagle zaczyna się bronić. "Bo nigdy nie *wiem*, kim będziesz! Niektóre z twoich wcieleń były bardzo wściekłe i zapalczywe! Pewnego razu obudziłeś się ogarnięty obsesją, żeby mnie roztrzaskać i pożreć… Na szczęście, przejechał cię na ulicy jakiś przejeżdżający powóz. Innym razem, jako „dobry i praworządny,“ próbowałeś wrzucić mnie z powrotem do Słupa, bo „tam było moje miejsce“." Morte sili się na wymuszony uśmiech. "*Właśnie* dlatego. A poza tym, co ci szkodziło, że nie wiedziałeś…"'

    menu:
        '"Teraz mam zamiar porozmawiać ze Słupem…"':
            # a1049 # r53814
            jump morte_s512

        '"Jak ci się udało uwolnić ze Słupa?"':
            # a1050 # r53815
            jump morte_s521

        '"To w końcu jak długo mnie znasz, Morte?"':
            # a1051 # r53816
            jump morte_s524

        '"W porządku. Chodźmy stąd, Morte."':
            # a1052 # r53817
            jump morte_dispose


# s524 # say53818
label morte_s524: # from 519.3 520.3 522.2 523.2
    nr '"Nie mam pojęcia. Pewnie parę wieków. Za każdym razem robiłem co w mojej mocy, żeby ci pomóc odnaleźć drogę, ale…" Morte wzdycha, a potem podnosi wzrok i spogląda ci prosto w oczy. "Nieczęsto udawało ci się dojść aż tak daleko. Naprawdę, tylko jakieś cztery czy pięć razy. Może to właśnie ten raz… Ten „ty“, któremu się uda, dowie się, o co w tym wszystkim chodzi."'

    menu:
        '"Teraz mam zamiar porozmawiać ze Słupem…"':
            # a1053 # r53819
            jump morte_s512

        '"Jak ci się udało uwolnić ze Słupa?"':
            # a1054 # r53820
            jump morte_s521

        '"Dlaczego wtedy, w Kostnicy, nie przyznałeś się, że mnie znasz?"':
            # a1055 # r53821
            jump morte_s523

        '"W porządku. Chodźmy stąd, Morte."':
            # a1056 # r53822
            jump morte_dispose


# s525 # say53823
label morte_s525: # -
    nr '"Och, nie…"'

    jump pillar_s10  # EXTERN


# s526 # say53824
label morte_s526: # -
    nr 'Morte trzęsie się ze strachu, a jego zęby szczękają w panice. "Nie mogę tam wrócić, szefie! Nie mogę! Nie mogę! Nie mogę!"'

    menu:
        '"On nie przyszedł, by do ciebie powrócić, Słupie Czaszek. Ale mam do ciebie kilka pytań…"' if morteLogic.r53825_condition():
            # a1057 # r53825
            $ morteLogic.r53825_action()
            jump pillar_s2  # EXTERN

        '"On nie przyszedł, by do ciebie powrócić, Słupie Czaszek. Ale mam do ciebie kilka pytań…"' if morteLogic.r53826_condition():
            # a1058 # r53826
            $ morteLogic.r53826_action()
            jump pillar_s2  # EXTERN

        '"On nie przyszedł, by do ciebie powrócić, Słupie Czaszek. Ale mam do ciebie kilka pytań…"' if morteLogic.r53827_condition():
            # a1059 # r53827
            jump pillar_s12  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a1060 # r53828
            jump pillar_s50  # EXTERN


# s527 # say53829
label morte_s527: # -
    nr '"O rany, szefie. Czy nie *powiedziałem ci właśnie, co to jest?! Słup składa się z głów kłamców, których „porady“ wysłały jakichś nieszczęśników na tamten świat. Głowy odpowiedzą na prawie każde pytanie, ale zapłata za taką usługę jest bardzo wysoka. Nie zadawaj im takich pytań!"'

    jump pillar_s14  # EXTERN


# s528 # say53830
label morte_s528: # -
    nr '"Nie wrzucaj mnie tam z powrotem, szefie. Proszę!"'

    jump pillar_s17  # EXTERN


# s529 # say53831
label morte_s529: # -
    nr '"Szefie?! Nie! Nie! *Nie możesz* tego zrobić!"'

    menu:
        '"Nie martw się, Morte - wyciągnę cię później z powrotem."' if morteLogic.r53832_condition():
            # a1061 # r53832
            jump morte_s530

        '"Nie martw się, Morte - wyciągnę cię później z powrotem."' if morteLogic.r53833_condition():
            # a1062 # r53833
            jump morte_s530

        '"Nie martw się, Morte - wyciągnę cię później z powrotem."' if morteLogic.r53834_condition():
            # a1063 # r53834
            jump morte_s530

        '"Nie martw się, Morte - wyciągnę cię później z powrotem."' if morteLogic.r53835_condition():
            # a1064 # r53835
            jump morte_s531

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53836_condition():
            # a1065 # r53836
            jump pillar_s19  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53837_condition():
            # a1066 # r53837
            jump pillar_s20  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53838_condition():
            # a1067 # r53838
            jump pillar_s21  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53839_condition():
            # a1068 # r53839
            jump pillar_s22  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53840_condition():
            # a1069 # r53840
            jump pillar_s23  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a1070 # r53841
            $ morteLogic.r53841_action()
            jump pillar_s50  # EXTERN


# s530 # say53842
label morte_s530: # from 529.0 529.1 529.2
    nr 'Morte rzuca ci sceptyczne spojrzenie. "Jesteś *pewien?* Przysięgasz? Hej, co ja gadam?! Nie! Za żadne skarby! Daj spokój, szefie, *nie możesz* mnie tam zostawić!"'

    menu:
        'Złap Mortego i wrzuć go do Słupa Czaszek.':
            # a1071 # r53843
            $ morteLogic.r53843_action()
            jump morte_dispose

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53844_condition():
            # a1072 # r53844
            jump pillar_s19  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53863_condition():
            # a1073 # r53863
            jump pillar_s20  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53864_condition():
            # a1074 # r53864
            jump pillar_s21  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53865_condition():
            # a1075 # r53865
            jump pillar_s22  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53866_condition():
            # a1076 # r53866
            jump pillar_s23  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a1077 # r53867
            $ morteLogic.r53867_action()
            jump pillar_s50  # EXTERN


# s531 # say53849
label morte_s531: # from 529.3
    nr 'Przez chwilę Morte spogląda na ciebie z rozdziawionymi ustami. "CO?! Nie masz szans! Nie jesteś tak silny, jak wtedy, gdy… Zresztą zapomnij o tym. Nie możesz tego zrobić! Daj spokój, szefie, *nie możesz* mnie tam zostawić!"'

    menu:
        'Złap Mortego i wrzuć go do Słupa Czaszek.':
            # a1078 # r53850
            $ morteLogic.r53850_action()
            jump morte_dispose

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53851_condition():
            # a1079 # r53851
            jump pillar_s19  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53852_condition():
            # a1080 # r53852
            jump pillar_s20  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53853_condition():
            # a1081 # r53853
            jump pillar_s21  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53854_condition():
            # a1082 # r53854
            jump pillar_s22  # EXTERN

        '"Dobrze, Morte. Słupie Czaszek: Jaki inny rodzaj trybutu zgodzisz się przyjąć?"' if morteLogic.r53855_condition():
            # a1083 # r53855
            jump pillar_s23  # EXTERN

        '"Chodźmy stąd, Morte."':
            # a1084 # r53856
            $ morteLogic.r53856_action()
            jump pillar_s50  # EXTERN


# s532 # say53857
label morte_s532: # -
    nr '"Hej… czekaj! Nie tak szybko! Słupie… Ja mogę ci powiedzieć, gdzie znaleźć Fjhulla Rozdwojonego Języka! No co jest, nie chcesz wiedzieć? Co ty na to, byś się tego dowiedział zamiast mnie? Co? Co ty na to?"'

    menu:
        '"Poczekaj, Morte. Nie sprzedamy Fhjulla."':
            # a1085 # r53858
            jump morte_s533

        'Poczekaj na odpowiedź Słupa.':
            # a1086 # r53859
            jump pillar_s19  # EXTERN


# s533 # say53860
label morte_s533: # from 532.0
    nr '"Co? Straciłeś zmysły?! Jesteś gotowy sprzedać *mnie*, ale nie tego *BIESA*?! Pomaga ci tylko dlatego, że jest do ciebie przywiązany zaklęciem! A co ze *mną*? Kto wydostał cię z Kostnicy, co? Kto stanie - ee, kto będzie latał przy twoim boku, kiedy staniesz twarzą z twarz z tym, co cię czeka w Fortecy Czegoś Tam?! Co?! Co?! BO NA PEWNO NIE FHJULL GRUBY-TYŁEK!"'

    menu:
        '"Dobrze, dobrze. Co powiesz na to, Słupie?"':
            # a1087 # r53861
            jump pillar_s19  # EXTERN

        '"Przykro mi, Morte. Muszę cię poświęcić."':
            # a1088 # r53862
            jump pillar_s18  # EXTERN


# s534 # say54155
label morte_s534: # from 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0
    nr '"Dlaczego nie, szefie?" Morte kręci głową. "Byliśmy już w co drugiej sferze wieloświata. Dlaczego nie zrobić jednego kroku więcej?" Tu czaszka zaczyna lekko grzechotać. "Ale czy *TY* jesteś gotowy? Bo jeśli nie…"'

    menu:
        '"Czy możesz powiedzieć mi jeszcze raz, co znajduje się za portalem?"':
            # a1089 # r54156
            jump morte_s544

        '"Jestem gotów, Morte. Już lepiej przygotować się nie mogę. Idziesz ze mną?"':
            # a1090 # r54157
            jump morte_s535

        '"Może i masz rację… Daj mi jeszcze trochę czasu, żebym się lepiej przygotował."':
            # a1091 # r54158
            jump morte_dispose


# s535 # say54159
label morte_s535: # from 534.1
    nr '"Hmmm, ja…" Morte spogląda na połyskującą, niebieską zasłonę i znowu zaczyna grzechotać. "No pewnie. Ruszajmy. Chyba żadne inne miejsce nie może być gorsze od Kostnicy, prawda?"'

    menu:
        '"No dobrze…"':
            # a1092 # r54160
            $ morteLogic.r54160_action()
            jump morte_dispose


# s536 # say54161
label morte_s536: # -
    nr '"Ee…" Morte waha się, spogląda na portal, na ciebie, potem znowu na portal, a w końcu wyrywa mu się grzechoczące westchnienie. "Wiesz co? Nie będę tu gadał *zbyt* długo, ale… Jest coś, o czym powinieneś wiedzieć…"'

    menu:
        '"O co chodzi, Morte?"':
            # a1093 # r54162
            jump morte_s537

        '"Co znowu? Daj spokój, Morte, musimy już iść…"':
            # a1094 # r54163
            jump morte_s537


# s537 # say54164
label morte_s537: # from 536.0 536.1
    nr '"Hmm, chodzi o to, gdzie się wybieramy… albo ee, prawdę mówiąc, gdzie… gdzie… *byliśmy*."'

    menu:
        '"Gdzie „BYLIŚMY“? O czym ty gadasz?"' if morteLogic.r54165_condition():
            # a1095 # r54165
            jump morte_s540

        '"Gdzie „BYLIŚMY“? O czym ty gadasz?"' if morteLogic.r54166_condition():
            # a1096 # r54166
            jump dakkon_s174  # EXTERN

        '"Gdzie „BYLIŚMY“? O czym ty gadasz?"' if morteLogic.r54167_condition():
            # a1097 # r54167
            jump morte_s540


# s538 # say54168
label morte_s538: # -
    nr '"Uch… szefie?" Morte waha się, spogląda na portal, na ciebie, potem znowu na portal, a w końcu wyrywa mu się grzechoczące westchnienie. "Wiesz co? Nie będę gadał *zbyt* długo, ale… Jest coś, o czym powinieneś wiedzieć…"'

    menu:
        '"O co chodzi, Morte?"':
            # a1098 # r54169
            jump morte_s539

        '"Co znowu? Daj spokój, Morte, musimy już iść…"':
            # a1099 # r54170
            jump morte_s539


# s539 # say54171
label morte_s539: # from 538.0 538.1
    nr '"Hmm, chodzi o to, gdzie się wybieramy… albo ee… prawdę mówiąc, gdzie… gdzie… *byliśmy*."'

    menu:
        '"Gdzie „BYLIŚMY“? O czym ty gadasz?"' if morteLogic.r54172_condition():
            # a1100 # r54172
            jump morte_s540

        '"Gdzie „BYLIŚMY“? O czym ty gadasz?"' if morteLogic.r54173_condition():
            # a1101 # r54173
            jump dakkon_s174  # EXTERN

        '"Gdzie „BYLIŚMY“? O czym ty gadasz?"' if morteLogic.r54174_condition():
            # a1102 # r54174
            jump morte_s540


# s540 # say54175
label morte_s540: # from 537.0 537.2 539.0 539.2
    nr '"Nie… ee… nie PIERWSZY raz przez to przechodzimy… widzisz, już wcześniej byliśmy w tej „Fortecy Żalu“. Choć my… ja… wtedy o tym nie wiedziałem."'

    menu:
        '"Nie *wiedziałeś*? Jak to możliwe?"':
            # a1103 # r54176
            jump morte_s541

        '"Wiec od SAMEGO POCZĄTKU… mogłeś mi POWIEDZIEĆ, gdzie jest portal, CO jest do niego kluczem, DLACZEGO jestem nieśmiertelny, CO stało się z moją śmiertelnością oraz to, że ona jest w tej Fortecy?! Morte, zaraz cię *ZABIJĘ*…!"':
            # a1104 # r54177
            jump morte_s542

        '"Morte, czekam na wyjaśnienia… Tym razem bez żadnych kłamstw i oszustw."':
            # a1105 # r54178
            jump morte_s541

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54179_condition():
            # a1106 # r54179
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54180_condition():
            # a1107 # r54180
            $ morteLogic.r54180_action()
            jump morte_dispose


# s541 # say54181
label morte_s541: # from 540.0 540.2
    nr '"Ciężko to wyjaśnić, jeśli ktoś tam nie *był*… a poza tym, nie znałeś tego *drugiego* ciebie - on nie był śmiałkiem, który chciał się dzielić śpiewką z innymi. To znaczy wiedział, że szukał JAKIEGOŚ miejsca, ale nie wiedziałem dlaczego, gdzie ono było, ani CO to było, więc NIC ci nie mogłem powiedzieć, bo sam NIC nie wiedziałem! Ja… wiem tylko, co się stało, gdy tam DOTARLIŚMY…"'

    menu:
        '"Więc… co się stało?"' if morteLogic.r54189_condition():
            # a1108 # r54189
            jump morte_s544

        '"Więc… co się stało?"' if morteLogic.r54190_condition():
            # a1109 # r54190
            jump morte_s543

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54191_condition():
            # a1110 # r54191
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54192_condition():
            # a1111 # r54192
            $ morteLogic.r54192_action()
            jump morte_dispose


# s542 # say54193
label morte_s542: # from 540.1
    nr 'Morte sprawia wrażenie przerażonego. "Nie! Nie! My… ja… nigdy o tym nie WIEDZIAŁEM! Nie zawsze byłeś najbardziej otwartym śmiałkiem w Sferach! Ten… ten *inny* ty większość śpiewki trzymał w tajemnicy, więc nawet nie wiedziliśmy DLACZEGO idziemy do tego miejsca ani CO to miało być za miejsce! Wiem tylko, co się stało, gdy tam DOTARLIŚMY…"'

    menu:
        '"Więc… co się stało?"' if morteLogic.r54194_condition():
            # a1112 # r54194
            jump morte_s544

        '"Więc… co się stało?"' if morteLogic.r54195_condition():
            # a1113 # r54195
            jump morte_s543

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54196_condition():
            # a1114 # r54196
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54197_condition():
            # a1115 # r54197
            $ morteLogic.r54197_action()
            jump morte_dispose


# s543 # say54198
label morte_s543: # from 541.1 542.1
    nr '"Poszliśmy to tej - tej FORTECY, i zanim nawet zdążyliśmy tam postawić stopę, zostaliśmy ROZDZIELENI, a każde z nas musiało walczyć o własne życie… Więc przede wszystkim chcę ci powiedzieć, że jeśli już jesteś zdecydowany, by tam pójść, to jest bardzo prawdopodobne, że każdy kto przejdzie przez portal wyląduje *daleko* od innych. Problem w tym, że w dalszym ciągu możesz potrzebować innych…"'

    menu:
        '"Dlaczego tak sądzisz?"':
            # a1116 # r54199
            jump morte_s545

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54200_condition():
            # a1117 # r54200
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54201_condition():
            # a1118 # r54201
            $ morteLogic.r54201_action()
            jump morte_dispose


# s544 # say54202
label morte_s544: # from 534.0 541.0 542.0
    nr '"Poszliśmy do tej - tej FORTECY, i zanim nawet zdążyliśmy tam postawić stopę, zostaliśmy ROZDZIELENI, a każde z nas musiało walczyć o własne życie…" Morte wzdryga się na samo wspomnienie o tej przygodzie. "Więc przede wszystkim chcę ci powiedzieć, że jeśli już jesteś zdecydowany, by tam pójść, to jest bardzo prawdopodobne, że każdy kto przejdzie przez portal wyląduje *daleko* od innych. Problem w tym, że nawet jeśli się rozdzielimy, to w dalszym ciągu możemy być twoją jedyną nadzieją…"'

    menu:
        '"Dlaczego tak sądzisz?"':
            # a1119 # r54203
            jump morte_s545

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54204_condition():
            # a1120 # r54204
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54205_condition():
            # a1121 # r54205
            $ morteLogic.r54205_action()
            jump morte_dispose


# s545 # say54206
label morte_s545: # from 543.0 544.0
    nr '"Bo cokolwiek czeka na ciebie w tej Fortecy, szefie, już raz cię pokonało… Do dzisiaj nie wiem, jak ci się udało przeżyć, ale jeśli znowu zginiesz, będziesz potrzebować kogoś, kto cię stamtąd wyciągnie…"'

    menu:
        '"Morte, musisz mi powiedzieć wszystko, co wiesz o Fortecy… To bardzo ważne."' if morteLogic.r54207_condition():
            # a1122 # r54207
            jump morte_s547

        '"Morte, musisz mi powiedzieć wszystko, co wiesz o Fortecy… To bardzo ważne."' if morteLogic.r54208_condition():
            # a1123 # r54208
            jump morte_s546

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54209_condition():
            # a1124 # r54209
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54210_condition():
            # a1125 # r54210
            $ morteLogic.r54210_action()
            jump morte_dispose


# s546 # say54211
label morte_s546: # from 545.1
    nr '"„Forteca Żalu“… rozciąga się na wiele mil. To Forteca, ale wewnątrz bardziej przypomina SFERĘ, wszędzie tylko ściany, ciemności i cienie - wszędzie cienie. Jeśli się tam wybierasz… to lepiej bądź przygotowany."'

    menu:
        '"Co się stało, kiedy poszliśmy tam pierwszy raz?"':
            # a1126 # r54212
            jump morte_s548

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54213_condition():
            # a1127 # r54213
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54214_condition():
            # a1128 # r54214
            $ morteLogic.r54214_action()
            jump morte_dispose


# s547 # say54215
label morte_s547: # from 545.0
    nr '"„Forteca Żalu“… rozciąga się na wiele mil. To Forteca, ale wewnątrz bardziej przypomina SFERĘ, wszędzie tylko ściany, ciemności i cienie - wszędzie cienie. Jeśli się tam wybieramy… to lepiej bądźmy przygotowani."'

    menu:
        '"Co się stało, kiedy poszliśmy tam pierwszy raz?"':
            # a1129 # r54216
            jump morte_s548

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54217_condition():
            # a1130 # r54217
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54218_condition():
            # a1131 # r54218
            $ morteLogic.r54218_action()
            jump morte_dispose


# s548 # say54219
label morte_s548: # from 546.0 547.0
    nr '"Nie wiem co się stało z TOBĄ, ale wiem, co spotkało MNIE… Przez cały czas biegałem od krypty do krypty, a cienie za mną, próbując mnie dopaść… Potem nagle… wydostaliśmy się stamtąd, jakby ktoś nas wyciągnął z powrotem…"'

    menu:
        '"Czekaj chwilę. Kiedy mówisz „my“, to mam wrażenie, że nie chodzi ci tylko o nas dwóch."' if morteLogic.r54220_condition():
            # a1132 # r54220
            jump morte_s565

        '"Czekaj chwilę. Kiedy mówisz „my“, to mam wrażenie, że nie chodzi ci tylko o nas dwóch."' if morteLogic.r54221_condition():
            # a1133 # r54221
            jump morte_s549

        '"Czekaj chwilę. Kiedy mówisz „my“, to mam wrażenie, że nie chodzi ci tylko o nas dwóch."' if morteLogic.r54223_condition():
            # a1134 # r54223
            jump morte_s550

        '"Rozumiem. Masz mi jeszcze coś do powiedzenia?"':
            # a1135 # r54225
            jump morte_s552

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54226_condition():
            # a1136 # r54226
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54227_condition():
            # a1137 # r54227
            $ morteLogic.r54227_action()
            jump morte_dispose


# s549 # say54229
label morte_s549: # from 548.1
    nr 'Przez chwilę panuje cisza, potem Morte mówi. "Nie… byli jeszcze inni. Dak„kon, ta dzierlatka należąca do Czuciowców - Deionarra, ten ślepy łucznik, który cały czas był lekko zawiany, ty, no i ja. Potem nagle wszystko wymknęło się spod kontroli. Oczywiście tobie, mnie i Dak“konowi się udało, ale nie wiem, co stało się z resztą."'

    menu:
        '"Dak„kon? Ale dlaczego… Muszę go o to spytać. Ale mówisz, że Deionarra i ten łucznik nigdy nie wrócili z Fortecy?"' if morteLogic.r54230_condition():
            # a1138 # r54230
            jump morte_s551

        '"Dak„kon? Ale dlaczego… Muszę go o to spytać. Ale mówisz, że ta kobieta, Deionarra i ten łucznik nigdy nie wrócili z Fortecy?"' if morteLogic.r54231_condition():
            # a1139 # r54231
            jump morte_s551

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54232_condition():
            # a1140 # r54232
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54233_condition():
            # a1141 # r54233
            $ morteLogic.r54233_action()
            jump morte_dispose


# s550 # say54234
label morte_s550: # from 548.2
    nr 'Przez chwilę panuje cisza, potem Morte mówi. "Nie… byli jeszcze inni. Stary gith o imieniu Dak„kon, ta dzierlatka należąca do Czuciowców - Deionarra, ten ślepy łucznik, który cały czas był lekko zawiany, ty, no i ja. Potem nagle wszystko wymknęło się spod kontroli. Oczywiście tobie, mnie i Dak“konowi się udało, ale nie wiem, co stało się z resztą."'

    menu:
        '"Mówisz, że Deionarra i ten łucznik nigdy nie wrócili z Fortecy?"' if morteLogic.r54235_condition():
            # a1142 # r54235
            jump morte_s551

        '"Mówisz, że ta kobieta, Deionarra, i ten łucznik nigdy nie wrócili z Fortecy?"' if morteLogic.r54236_condition():
            # a1143 # r54236
            jump morte_s551

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54237_condition():
            # a1144 # r54237
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54238_condition():
            # a1145 # r54238
            $ morteLogic.r54238_action()
            jump morte_dispose


# s551 # say54239
label morte_s551: # from 549.0 549.1 550.0 550.1
    nr 'Morte kręci głową przecząco. "Ja nic o tym nie wiem."'

    menu:
        '"Czy jest coś jeszcze, co możesz mi powiedzieć o tej Fortecy?"':
            # a1146 # r54240
            jump morte_s552

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54241_condition():
            # a1147 # r54241
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54242_condition():
            # a1148 # r54242
            $ morteLogic.r54242_action()
            jump morte_dispose


# s552 # say54243
label morte_s552: # from 548.3 551.0
    nr '"Nic więcej nie mogę ci powiedzieć. Pamiętaj tylko, że zaraz jak tam przybędziemy, na pewno zostaniemy rozłączeni. To OGROMNE miejsce, wszędzie czają się cienie… i gdzieś w tej Fortecy znajduje się coś lub ktoś bardziej potężny niż *ktokolwiek* z nas."'

    menu:
        '"Jesteś *pewien*? Może nie będziemy już mieli szansy ze sobą porozmawiać…"':
            # a1149 # r54244
            $ morteLogic.r54244_action()
            jump morte_s553

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54245_condition():
            # a1150 # r54245
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54246_condition():
            # a1151 # r54246
            $ morteLogic.r54246_action()
            jump morte_dispose


# s553 # say54249
label morte_s553: # from 552.0
    nr '"Hmm…" Morte zamyśla się. "Tak, jest jeszcze coś, o czym powinieneś wiedzieć - ten TY, którego znałem wcześniej, ten TY, który nas tam poprowadził, był zupełnie inny od ciebie."'

    menu:
        '"Co masz na myśli?"' if morteLogic.r54250_condition():
            # a1152 # r54250
            jump morte_s554

        '"Co masz na myśli?"' if morteLogic.r54252_condition():
            # a1153 # r54252
            jump morte_s555

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54255_condition():
            # a1154 # r54255
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54262_condition():
            # a1155 # r54262
            $ morteLogic.r54262_action()
            jump morte_dispose


# s554 # say54263
label morte_s554: # from 553.0
    nr '"Ten inny TY… nie obchodził go nikt inny. Nikt. Mogliśmy wszyscy umrzeć w Fortecy, a on nawet nie mrugnąłby okiem. Więc… Lepiej nie staraj się do niego upodobnić, bo… hmm, bo *ty* bardziej mi odpowiadasz. O WIELE bardziej."'

    menu:
        '"Ale to nie wszystko, co chciałeś mi powiedzieć, prawda?"' if morteLogic.r54264_condition():
            # a1156 # r54264
            jump morte_s556

        '"To wszystko?"':
            # a1157 # r54265
            jump morte_s556

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54266_condition():
            # a1158 # r54266
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54267_condition():
            # a1159 # r54267
            $ morteLogic.r54267_action()
            jump morte_dispose


# s555 # say54268
label morte_s555: # from 553.1
    nr '"Chcę tylko powiedzieć, że pomimo swojego uporu, masz więcej zapału niż tamten. On… nie wkładał w to, co robił, całego siebie. Więc… po prostu chciałem, żebyś o tym pamiętał."'

    menu:
        '"Ale to nie wszystko, co chciałeś mi powiedzieć, prawda?"' if morteLogic.r54269_condition():
            # a1160 # r54269
            jump morte_s556

        '"Skończyłeś?"':
            # a1161 # r54270
            jump morte_s556

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54271_condition():
            # a1162 # r54271
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54272_condition():
            # a1163 # r54272
            $ morteLogic.r54272_action()
            jump morte_dispose


# s556 # say54273
label morte_s556: # from 554.0 554.1 555.0 555.1
    nr '"Nie…" Morte zamyśla się na chwilę. "Jest jeszcze coś - może i nie lubiłem tego *innego* ciebie, ale był z niego bardzo sprytny śmiałek - najsprytniejszy, jakiego kiedykolwiek znałem. Zawsze bardzo dobrze się ubezpieczał. Jeśli on zginął w Fortecy, to znaczy, że… no cóż…"'

    menu:
        '"Nie sądzisz, że mi się uda, prawda?"':
            # a1164 # r54274
            jump morte_s557

        '"Mniejsza z tym, Morte. Jestem gotowy, żeby przejść przez portal - idziesz ze mną?"' if morteLogic.r54275_condition():
            # a1165 # r54275
            jump morte_s534

        '"Trudno, Morte. Co się stało, to się nie odstanie. I tak mam zamiar przejść przez portal."' if morteLogic.r54276_condition():
            # a1166 # r54276
            $ morteLogic.r54276_action()
            jump morte_dispose


# s557 # say54277
label morte_s557: # from 556.0
    nr '"Nie…" Morte kręci przecząco głową. "To nie o to chodzi. Nie zawsze chodzi o to, kto ma najwięcej sprytu, albo kto jest najsilniejszy, albo najtwardszy… czasami najważniejsze jest to, kim się jest i czego się *naprawdę* chce. Chodzi o to, że kiedyś chciałeś stać się nieśmiertelny - ale czy to jest właśnie to, czego *naprawdę* chcesz? Chcę tylko powiedzieć, że tym razem musisz być pewien tego, o co ci chodzi."'

    menu:
        '"Dzięki za szczerość. Słuchaj, Morte… Nie mówiliśmy o tym, ale nie musisz ze mną tam iść. Zrozumiem, jeśli nie będziesz chciał mi towarzyszyć."' if morteLogic.r54278_condition():
            # a1167 # r54278
            $ morteLogic.r54278_action()
            jump morte_s558

        '"Rozumiem. Jeśli jesteś gotów, to ruszajmy, dobrze?"' if morteLogic.r54279_condition():
            # a1168 # r54279
            jump morte_s534

        '"Rozumiem. Dzięki za radę, Morte. Teraz przejdę przez portal."' if morteLogic.r54280_condition():
            # a1169 # r54280
            $ morteLogic.r54280_action()
            jump morte_dispose


# s558 # say54281
label morte_s558: # from 557.0
    nr '"Tak… Wiem, szefie. I nie mogę cię okłamywać… Nie chcę iść… ale pójdę. Wiedz tylko, że kiedy przekroczymy portal, to już nie będzie chodziło tylko o *ciebie*. Tam będzie chodziło o nasze życia, a nas po śmierci nikt nie zastąpi."'

    menu:
        '"W takim razie dlaczego ty…"' if morteLogic.r54282_condition():
            # a1170 # r54282
            jump grace_s169  # EXTERN

        '"W takim razie dlaczego ty…"' if morteLogic.r54283_condition():
            # a1171 # r54283
            jump grace_s170  # EXTERN

        '"W takim razie dlaczego ty…"' if morteLogic.r54284_condition():
            # a1172 # r54284
            jump morte_s562

        '"W takim razie dlaczego ty…"' if morteLogic.r54285_condition():
            # a1173 # r54285
            jump morte_s563

        '"W takim razie dlaczego ty…"' if morteLogic.r54286_condition():
            # a1174 # r54286
            jump morte_s564


# s559 # say54762
label morte_s559: # -
    nr 'Morte oddaje cios: "Twój zapach nie jest wcale lepszy. Kiedy ostatni raz zdarzyło ci się wykąpać?"'

    jump grace_s176  # EXTERN


# s560 # say54763
label morte_s560: # -
    nr 'Morte oddaje cios: "Twój zapach nie jest wcale lepszy. Kiedy ostatni raz zdarzyło ci się wykąpać?"'

    jump grace_s177  # EXTERN


# s561 # say54764
label morte_s561: # -
    nr 'Morte oddaje cios: "Twój zapach nie jest wcale lepszy. Kiedy ostatni raz zdarzyło ci się wykąpać?"'

    jump trias_s8  # EXTERN


# s562 # say54831
label morte_s562: # from 558.2
    nr '"W labiryncie, Ravela powiedziała, że przyciągasz do siebie ludzi, którzy cierpią. Może dlatego, że sam cały czas cierpisz. Może kiedy uda ci się znaleźć spokój, my także wreszcie będziemy mogli go zaznać. Kto wie."'

    menu:
        '"Może i tak. Zatem… Idziesz ze mną, Morte?"' if morteLogic.r54832_condition():
            # a1175 # r54832
            jump morte_s534

        '"Rozumiem. Dzięki za radę, Morte. Teraz przejdę przez portal."' if morteLogic.r54833_condition():
            # a1176 # r54833
            $ morteLogic.r54833_action()
            jump morte_dispose


# s563 # say54834
label morte_s563: # from 558.3
    nr '"To co mówiła Ravela w labiryncie - i to co powiedział Upadły o Symbolu Udręki. Mówili, że przyciągasz do siebie ludzi, którzy cierpią. Może dlatego, że sam cały czas cierpisz. Może kiedy uda ci się znaleźć spokój, my także wreszcie będziemy mogli go zaznać. Kto wie."'

    menu:
        '"Może i tak. Zatem… Idziesz ze mną, Morte?"' if morteLogic.r54835_condition():
            # a1177 # r54835
            jump morte_s534

        '"Rozumiem. Dzięki za radę, Morte. Teraz przejdę przez portal."' if morteLogic.r54836_condition():
            # a1178 # r54836
            $ morteLogic.r54836_action()
            jump morte_dispose


# s564 # say54837
label morte_s564: # from 558.4
    nr '"Znam cię już od dawna, szefie, i wiem, że masz w sobie *coś*, dzięki czemu przyciągasz do siebie ludzi, którzy cierpią. Może jest tak dlatego, że sam cały czas cierpisz. Może kiedy uda ci się znaleźć spokój, my także wreszcie będziemy mogli go zaznać. Kto wie."'

    menu:
        '"Może i tak. Zatem… Idziesz ze mną, Morte?"' if morteLogic.r54838_condition():
            # a1179 # r54838
            jump morte_s534

        '"Rozumiem. Dzięki za radę, Morte. Teraz przejdę przez portal."' if morteLogic.r54839_condition():
            # a1180 # r54839
            $ morteLogic.r54839_action()
            jump morte_dispose


# s565 # say54840
label morte_s565: # from 548.0
    nr 'Morte milknie.'

    jump dakkon_s175  # EXTERN


# s566 # say54841
label morte_s566: # -
    nr '"Tą czaszką byłem ja." Mówi cicho Morte. "Kobietą była pewna dzierlatka o imieniu Deionarra. Nigdy nie znałem łucznika…"'

    jump dakkon_s177  # EXTERN


# s567 # say54842
label morte_s567: # -
    nr '"Tak…" Morte zaczyna grzechotać, jakby się trząsł. "Szefie, w tej Fortecy - tam *wszędzie* jest pełno cieni…"'

    jump dakkon_s178  # EXTERN


# s568 # say54843
label morte_s568: # -
    nr '"Oni mówili do mnie tak, jak Słup Czaszek…" Morte zniża głos. "Oni *wiedzieli*…"'

    menu:
        '"Muszę wiedzieć wszystko, co możecie mi powiedzieć o tej Fortecy…"':
            # a1181 # r54844
            jump dakkon_s179  # EXTERN


# s569 # say54845
label morte_s569: # -
    nr '"Nic więcej nie mogę ci powiedzieć. Pamiętaj tylko, że jak tylko tam przybędziemy, na pewno zostaniemy rozłączeni. To OGROMNE miejsce, wszędzie czają się cienie… i gdzieś w tej Fortecy znajduje się coś lub ktoś bardziej potężny niż *ktokolwiek* z nas."'

    jump dakkon_s182  # EXTERN


# s570 # say54846
label morte_s570: # -
    nr '"Nic więcej nie mogę ci powiedzieć. Pamiętaj tylko, że jakakolwiek grupa, która tam wejdzie, na pewno zostanie rozłączona. To OGROMNE miejsce, wszędzie czają się cienie… i gdzieś w tej Fortecy znajduje się coś bardziej potężnego od *czegokolwiek*, z czym się wcześniej spotkałeś."'

    jump dakkon_s182  # EXTERN


# s571 # say55832
label morte_s571: # -
    nr '"Szefie, mamy kłopoty. Ten modron się zbuntował."'

    menu:
        '"Zbuntował?"':
            # a1182 # r55833
            jump morte_s572


# s572 # say55834
label morte_s572: # from 571.0
    nr '"Czasami modrony zaczynają zachowywać się nieco chaotycznie, a kiedy to się stanie… no cóż, chyba *najlepszym* wyjaśnieniem będzie jak powiem, że zbuntowane modrony zachowują się jak… uwstecznione."'

    menu:
        '"W takim razie to jest… uwsteczniony modron?"':
            # a1183 # r55836
            jump nordom_s21  # EXTERN


# s573 # say55837
label morte_s573: # -
    nr '"Szefie, może to i niezła zabawa, ale chyba pożyteczniej jest próbować wyciągnąć taboret z tyłka baatezu, niż kłapać jadaczką z tym głupim wielościanem."'

    menu:
        '"Morte, a może *ty* wiesz, czym są te duchy trybów?"':
            # a1184 # r55839
            jump morte_s574


# s574 # say55841
label morte_s574: # from 573.0
    nr '"Szefie, nie mam pojęcia, o czym to pudło gada."'

    menu:
        '"Myślałem, że jesteś *ekspertem* w sprawach dotyczących Sfer."':
            # a1185 # r55842
            jump morte_s575

        '"Zatem w porządku. Nordomie, mam do ciebie parę innych pytań…"':
            # a1186 # r55843
            jump nordom_s74  # EXTERN

        '"W takim razie mniejsza z tym. Ruszajmy dalej."':
            # a1187 # r55844
            jump morte_dispose


# s575 # say55845
label morte_s575: # from 574.0
    nr '"Wiem więcej niż *ty*, ty jąkający się, zapominalski kretynie! A tak przy okazji, posłuchaj trzech wiadomości, które mogą trochę pogrzechotać w twojej pustej mózgownicy: po pierwsze, NIE MA ekspertów w sprawach Sfer, po drugie, jestem najbliższy temu czemuś, czego szukasz, a po trzecie, należy mi się od ciebie trochę respektu. Dlaczego? Zwróć uwagę na drugą wiadomość."'

    menu:
        '"Zatem w porządku. Nordomie, mam do ciebie parę innych pytań…"':
            # a1188 # r55846
            jump nordom_s74  # EXTERN

        '"W takim razie mniejsza z tym. Ruszajmy dalej."':
            # a1189 # r55847
            jump morte_dispose


# s576 # say55848
label morte_s576: # -
    nr '"Mechanus? Strasznie nudny w dokładnym tego słowa znaczeniu. Wyobraź sobie sferę wypełnioną modronami i wielkimi kołami zębatymi, a zrozumiesz, jak wygląda wielka, NUDNA sfera o nazwie Mechanus. Zbyt dużo praw, zbyt denerwująca. O takim miejscu nie chce się nawet myśleć, a co dopiero się tam wybierać."'

    if morteLogic.s576_condition():
        $ morteLogic.s576_action()
        jump grace_s184  # EXTERN
    menu:
        '"Co miałeś na myśli, mówiąc „Brak Domu“, Nordomie?"' if morteLogic.r55849_condition():
            # a1190 # r55849
            jump nordom_s65  # EXTERN

        '"Mniejsza z tym, Morte. Nie mam już więcej pytań. Chodźmy."' if morteLogic.r55850_condition():
            # a1191 # r55850
            jump morte_dispose


# s577 # say55855
label morte_s577: # -
    nr '"Przepraszam BARDZO, Panno Kapłanko Bogobojności, ale Mechanus JEST najnudniejszym miejscem w wieloświecie… Jedyną interesującą rzeczą byłoby, gdybyś *ty* się tam wybrała…" Morte zaczyna przewracać oczyma. "Ale mam przeczucie, że nawet *to* straciłoby po jakimś czasie swój czar."'

    menu:
        '"Co miałeś na myśli, mówiąc „Brak Domu“, Nordomie?"':
            # a1192 # r55857
            jump nordom_s65  # EXTERN

        '"Mniejsza z tym, Morte. Nie mam już więcej pytań. Chodźmy."':
            # a1193 # r55858
            jump morte_dispose


# s578 # say55860
label morte_s578: # -
    nr '"Wszystkie modrony są częścią czegoś w stylu wielkiego banku energii… Kiedy jeden z nich ginie, energia, która posłużyła do jego wytworzenia, powraca z powrotem do banku, i powstaje nowy egzemplarz. Ale kiedy modron dostanie lekkiego świra, to zrywa połączenie, a część energii zostaje w nim."'

    if morteLogic.s578_condition():
        jump grace_s186  # EXTERN
    menu:
        '"Więc… Nordomie, czy ten Mechanus jest źródłem energii?"':
            # a1194 # r55862
            jump nordom_s67  # EXTERN

        '"Rozumiem. Nordomie, mam do ciebie parę innych pytań…"':
            # a1195 # r55864
            jump nordom_s74  # EXTERN

        '"Nie mam już więcej pytań. Ruszajmy dalej."':
            # a1196 # r55865
            jump morte_dispose


# s579 # say55867
label morte_s579: # -
    nr 'Morte spogląda z oburzeniem na Nie-Sławę. "Przepraszam bardzo! Ja miałem odpowiedzieć na to pytanie. To *JA* jestem tu źródłem informacji, a nie TY, zrozumiano?"'

    jump grace_s187  # EXTERN


# s580 # say55870
label morte_s580: # -
    nr '"Och, rozumiem! Może gdybym był sukkubem, to słuchałbyś mnie bardziej, tak? Może gdybym od czasu do czasu pokazał kawałek gołego ciała, to zasłużyłbym na trochę poważania z twojej strony, co? A niech to, szefie! Chyba powinienem…"'

    jump grace_s191  # EXTERN


# s581 # say55871
label morte_s581: # -
    nr '.'

    jump morte_dispose


# s582 # say55873
label morte_s582: # -
    nr '"Ach, tak?! Ja…?! Ty właśnie… słyszałeś co ten sukkub powiedział? Ma rację. Łatwiej mnie zrozumieć, mam mądrzejszą śpiewkę, rozumiesz? Więc potrzebujesz mnie przy sobie, co nie?"'

    menu:
        '"Dobrze, w takim razie mam jeszcze jedno pytanie: mówicie, że Nordom jest częścią Źródła, ale został od niego odcięty. A kiedy modron umiera, zostaje zreabsorbowany. Czy z Nordomem będzie tak samo?"' if morteLogic.r55875_condition():
            # a1197 # r55875
            jump morte_s583

        '"Nigdy nie twierdziłem inaczej, Morte. Więc… Nordomie, czy to źródło energii, o którym wspomniałeś, pochodzi z Mechanusa?"':
            # a1198 # r55876
            jump nordom_s67  # EXTERN

        '"W porządku. Nordomie, mam do ciebie parę innych pytań…"':
            # a1199 # r55877
            jump nordom_s74  # EXTERN

        '"Nie mam już więcej pytań. Ruszajmy dalej."':
            # a1200 # r55879
            jump morte_dispose


# s583 # say55882
label morte_s583: # from 582.0
    nr 'Morte przytakuje.'

    menu:
        '"A jeśli on umrze, to zostanie utworzony następny Nordom."':
            # a1201 # r55884
            jump morte_s584


# s584 # say55886
label morte_s584: # from 583.0
    nr '"Ee… nie."'

    menu:
        '"Co się stanie?"':
            # a1202 # r55887
            jump morte_s585


# s585 # say55890
label morte_s585: # from 584.0
    nr '"Ta energia zostanie wykorzystana do wytworzenia innego modrona, ale to nie będzie Nordom, bo on *tak naprawdę* nie jest już modronem - przejął już zbyt wiele elementów Sfer. Dlatego powstanie nowy nie-Nordom."'

    menu:
        '"Więc… Buntując się, stał się… śmiertelny?"':
            # a1203 # r55892
            jump morte_s586

        '"W porządku. Nordomie, mam do ciebie parę innych pytań…"':
            # a1204 # r55894
            jump nordom_s74  # EXTERN

        '"Nie mam już więcej pytań. Ruszajmy dalej."':
            # a1205 # r55895
            jump morte_dispose


# s586 # say55897
label morte_s586: # from 585.0
    nr 'Morte przez chwilę tkwi w zamyśleniu. "Hmmm… tak, można to tak ująć. To znaczy, gdyby nie przeszedł przez etap rebelii, byłby w porządku… i gdyby wtedy umarł, wyskoczyłby następny modron, dokładnie taki sam jak on. Ale ponieważ zrobił się „uwsteczniony“ - hmm, kiedy umrze, ta jego część zostanie utracona."'

    menu:
        '"W porządku. Nordomie, mam do ciebie parę innych pytań…"':
            # a1206 # r55898
            jump nordom_s74  # EXTERN

        '"Nie mam już więcej pytań. Ruszajmy dalej."':
            # a1207 # r55900
            jump nordom_s74  # EXTERN


# s587 # say55901
label morte_s587: # -
    nr '"Aaaaach! Przestań, albo zwariuję! Jak będziesz go o to ciągle pytał, to w końcu dostanie pomieszania zmysłów!"'

    menu:
        '"Taki był *pomysł*, Morte."':
            # a1208 # r55902
            $ morteLogic.r55902_action()
            jump morte_s588

        '"No cóż, chciałem dostać odpowiedź, a on mi jej udzielał."':
            # a1209 # r55905
            jump morte_s589

        '"Mniejsza z tym. Mam do Nordoma parę innych pytań…"':
            # a1210 # r55906
            jump nordom_s74  # EXTERN

        '"Mniejsza z tym. Ruszajmy dalej."':
            # a1211 # r55907
            jump morte_dispose


# s588 # say55909
label morte_s588: # from 587.0
    nr '"Och." Na twarzy Mortego pojawia się „uśmiech“. "Trzeba było coś POWIEDZIEĆ. Ależ oczywiście, mów dalej. Oczywiście…" Morte *klika* zębami, naśladując Nordoma. "Jeśli chcesz się dowiedzieć czegoś o modronach, zapytaj MNIE."'

    menu:
        '"W porządku, Morte… Co wiesz o modronach?"':
            # a1212 # r55910
            jump morte_s590

        '"Mniejsza z tym. Mam do Nordoma parę innych pytań…"':
            # a1213 # r55912
            jump nordom_s74  # EXTERN

        '"Mniejsza z tym. Ruszajmy dalej."':
            # a1214 # r55913
            jump morte_dispose


# s589 # say55914
label morte_s589: # from 587.1
    nr '"NORMALNE modrony ledwo co rozumieją swoje podstawowe zadania, ale ten głupi wielościan w dodatku zachowuje się, jakby był spoza Sfer. Lepiej mu nie mieszać w trybach! Przynajmniej dopóki jest uzbrojony. Jak chcesz się dowiedzieć czegoś o modronach, to spytaj mnie, a nie jego."'

    menu:
        '"W porządku, Morte… Co wiesz o modronach?"':
            # a1215 # r55915
            jump morte_s590

        '"Mniejsza z tym. Mam do Nordoma parę innych pytań…"':
            # a1216 # r55917
            jump nordom_s74  # EXTERN

        '"Mniejsza z tym. Ruszajmy dalej."':
            # a1217 # r55918
            jump morte_dispose


# s590 # say55921
label morte_s590: # from 588.0 589.0
    nr '"Sprawa wygląda tak: Modrony to takie głupie bryły geometryczne, które pętają się po swojej sferze, Mechanusie - są bardzo czyste, lubią porządek, i chcą, żeby RESZTA wieloświata była taka jak one. Właśnie dlatego są takie uciążliwe."'

    menu:
        '"Co w tym złego, że ktoś próbuje zaprowadzić w wieloświecie większy porządek?"':
            # a1218 # r55923
            jump morte_s592

        '"Co to jest Mechanus?"':
            # a1219 # r55925
            $ morteLogic.r55925_action()
            jump morte_s591

        '"Mniejsza z tym. Mam do Nordoma parę innych pytań…"':
            # a1220 # r55926
            jump nordom_s74  # EXTERN

        '"Mniejsza z tym. Ruszajmy dalej."':
            # a1221 # r55928
            jump morte_dispose


# s591 # say55930
label morte_s591: # from 590.1
    nr '"To sfera, z której pochodzą wszystkie te mechaniczne konstrukty. Zapytaj go o nią i zobacz, co ci powie. Siedzą tam i cały czas wszystko porządkują… jedno katalogują, coś innego porządkują, przygotowują jakieś ustawy i prawa, i tak dalej."'

    menu:
        'Prawda: "To chyba szlachetny cel. Co w tym złego, że ktoś próbuje zaprowadzić w wieloświecie większy porządek?"':
            # a1222 # r55931
            $ morteLogic.r55931_action()
            jump morte_s592

        '"Nie wyglądasz, jakbyś był tym zachwycony."':
            # a1223 # r55935
            jump morte_s592

        '"Mam do Nordoma parę innych pytań…"':
            # a1224 # r55936
            jump nordom_s74  # EXTERN

        '"Mniejsza z tym. Ruszajmy dalej."':
            # a1225 # r55937
            jump morte_dispose


# s592 # say55938
label morte_s592: # from 590.0 591.0 591.1
    nr 'Morte spogląda na Nordoma, który trzyma lewą kuszę przy swojej głowie, jakby jej słuchał.'

    jump morte_s593


# s593 # say55940
label morte_s593: # from 592.0
    nr '"Ponieważ nie można pozbawić świata chaosu. A gdyby wszystko zrobić tak, jak chcą *modrony*, to co by to było za życie… przynajmniej ja bym tak nie chciał żyć. One chcą, żeby wszystko było *wystrukturowane*. Eeeech."'

    menu:
        'Prawda: "Zgadzam się. Chaos też powinien mieć swoje miejsce… Jeśli będzie zbyt wiele praw, to wszyscy popadniemy w stagnację. Teraz mam jeszcze parę pytań do Nordoma…"':
            # a1226 # r55941
            $ morteLogic.r55941_action()
            jump nordom_s74  # EXTERN

        '"Rozumiem. Słuchaj, mam jeszcze parę innych pytań do Nordoma…"':
            # a1227 # r55942
            jump nordom_s74  # EXTERN

        '"W takim razie w porządku. Ruszajmy dalej."':
            # a1228 # r55944
            jump morte_dispose


# s594 # say56029
label morte_s594: # -
    nr '"Podoba mi się jej zapach. Całkiem ładny."'

    jump fhjull_s27  # EXTERN


# s595 # say56030
label morte_s595: # -
    nr '"Poczekaj, szefie… Baator mi się nie podoba. Ten bies pewnie coś przed nami ukrywa… A nawet jeśli tam jest jakiś „Słup Czaszek,“ to pewnie i tak uda nam się znaleźć kogoś, kto wie jak dotrzeć do Fortecy, a nie będziemy musieli zapędzać się do najbardziej niebezpiecznej sfery w wieloświecie."'

    menu:
        '"Coś przede mną kryjesz, Rozdwojony Języku?"':
            # a1229 # r56031
            jump fhjull_s88  # EXTERN

        '"Dlaczego nie chcesz tam ze mną pójść, Morte?"':
            # a1230 # r56032
            jump morte_s596


# s596 # say56033
label morte_s596: # from 595.1
    nr '"To miejsce jest niebezpieczne. Lepiej się tam nie zapuszczajmy. Już tam byłem, i wcale mi się nie podobało. W porządku?"'

    menu:
        '"Porozmawiamy o tym później. Rozdwojony Języku, mam do ciebie parę pytań…"':
            # a1231 # r56034
            jump fhjull_s46  # EXTERN


# s597 # say56936
label morte_s597: # -
    nr '"Ten gościu *wszędzie* się wkręci!"'

    menu:
        '"Tak, ale bardzo nam pomógł. Ruszajmy."':
            # a1232 # r56937
            jump morte_dispose


# s598 # say59827
label morte_s598: # -
    nr '.'

    jump morte_dispose


# s599 # say60950
label morte_s599: # -
    nr '"Hej, bycie umarłym nie jest takie złe. Przynajmniej nie trzeba już gadać z tymi śmiesznymi świrami."'

    menu:
        '"Spokój, Morte. Poradzę sobie. Możesz mi powiedzieć, co się stało?"':
            # a1233 # r61111
            jump morte_dispose

        '"Mniejsza z tym. Zostawiam cię w spokoju."':
            # a1234 # r61112
            jump morte_dispose


# s600 # say61408
label morte_s600: # -
    nr '"Ee… szefie? Może byś tak odpalił staremu Mortemu trochę brzdęku? Minęło już trochę czasu…"'

    menu:
        '"No pewnie, czemu nie. Panienko?"' if morteLogic.r61411_condition():
            # a1235 # r61411
            jump ucho_s9  # EXTERN

        '"Przykro mi, Morte, nie mam pieniędzy. Chodźmy."' if morteLogic.r61412_condition():
            # a1236 # r61412
            jump morte_dispose

        '"Naprawdę, musimy już iść, Morte. Żegnaj, panienko."':
            # a1237 # r61413
            jump morte_dispose


# s601 # say61409
label morte_s601: # -
    nr '"Dobra! Dzięki, szefie!" Morte odwraca się, żeby podążyć za kobietą.'

    menu:
        'Poczekaj aż wróci.':
            # a1238 # r61414
            $ morteLogic.r61414_action()
            jump ucho_s10  # EXTERN


# s602 # say61410
label morte_s602: # -
    nr 'Wygląda na to, że Morte nie zdaje sobie sprawy z twojej obecności. Na przemian to chichocze do siebie, to wzdycha z rozkoszy.'

    menu:
        '"Dobra… Domyślam się, że wszystko poszło dobrze. Żegnaj, panienko."':
            # a1239 # r61415
            jump morte_dispose


# s603 # say61481
label morte_s603: # -
    nr '"Ja? Jestem głową Vekny."~ [MRT562]'

    $ morteLogic.s603_action()
    jump morte_dispose


# s604 # say61482
label morte_s604: # -
    nr '"Bogowie są miłosierni!!"~ [MRT485]'

    $ morteLogic.s604_action()
    jump morte_dispose


# s605 # say61483
label morte_s605: # -
    nr '"To długa historia, dotycząca Głowy Vekny. Nie chcę o tym mówić."~ [MRT559A]'

    jump grace_s3  # EXTERN


# s606 # say61484
label morte_s606: # -
    nr '"*Proszę*, czy moglibyśmy zmienić temat?"~ [MRT559B]'

    $ morteLogic.s606_action()
    jump morte_dispose


# s607 # say61485
label morte_s607: # -
    nr '"Ja? Jestem *le petit Morte*."~ [MRT560]'

    $ morteLogic.s607_action()
    jump morte_dispose


# s608 # say61486
label morte_s608: # -
    nr '"Cóż tu mówić? Jestem *Memento Morte*."~ [MRT561]'

    $ morteLogic.s608_action()
    jump morte_dispose


# s609 # say61487
label morte_s609: # -
    nr '"Tylko jeśli będę mógł odpocząć na twoich poduszeczkach."~ [MRT486A]'

    jump grace_s7  # EXTERN


# s610 # say61488
label morte_s610: # -
    nr '"Nic! Zupełnie nic."~ [MRT486B]'

    $ morteLogic.s610_action()
    jump morte_dispose


# s611 # say61489
label morte_s611: # -
    nr '"Hau! Hau! Hau!" ||dyszy jak pies||~ [MRT484]'

    $ morteLogic.s611_action()
    jump morte_dispose


# s612 # say62890
label morte_s612: # -
    nr '"Ona jest tanar„ri… to sukkub, szefie."'

    jump grace_s213  # EXTERN


# s613 # say63454
label morte_s613: # -
    nr '"Nigdzie nie mogę stać. Wiesz, chodzi o nogi."~ [MRT482]'

    jump annah_s1  # EXTERN


# s614 # say63455
label morte_s614: # -
    nr '"Myślałem, że jesteś ładna, ale się pomyliłem."~ [MRT483]'

    jump annah_s3  # EXTERN


# s615 # say63456
label morte_s615: # -
    nr '"Zaparło mi dech, kiedy po raz pierwszy cię ujrzałem, kaduku."~ [MRT524]'

    $ morteLogic.s615_action()
    jump morte_dispose


# s616 # say63457
label morte_s616: # -
    nr '"Jakby co to mam IMIĘ."~ [MRT526]'

    jump annah_s6  # EXTERN


# s617 # say63458
label morte_s617: # -
    nr '"A ciekawe, że o tym wspominasz… parę dni temu pytałem ich, ile dadzą za ciebie."~ [MRT531]'

    jump annah_s8  # EXTERN


# s618 # say63459
label morte_s618: # -
    nr '"Wiesz co, byłabyś znacznie bardziej urocza, gdybyś nie otwierała buźki."~ [MRT530]'

    jump annah_s10  # EXTERN


# s619 # say63460
label morte_s619: # -
    nr '"Ale już przecież masz moje serce, kaduku."~ [MRT532]'

    jump annah_s12  # EXTERN


# s620 # say63462
label morte_s620: # -
    nr '"Są znacznie gorsze rzeczy."~ [MRT525]'

    $ morteLogic.s620_action()
    jump morte_dispose


# s621 # say63463
label morte_s621: # -
    nr '"Wiesz co, przecież po części *jesteś* biesem."~ [MRT533A]'

    jump annah_s15  # EXTERN


# s622 # say63464
label morte_s622: # -
    nr '"Z mojej strony wygląda dobrze."~ [MRT533B]'

    $ morteLogic.s622_action()
    jump morte_dispose


# s623 # say63666
label morte_s623: # -
    nr '"Zauważyłem. Czemu nie podzielisz się swoimi spostrzeżeniami z szefem?"~ [MRT563]'

    $ morteLogic.s623_action()
    jump morte_dispose


# s624 # say63667
label morte_s624: # -
    nr '"Wzdęcie, ty durny wieloboku."~ [MRT468A]'

    jump nordom_s2  # EXTERN


# s625 # say63668
label morte_s625: # -
    nr '"Więc zrób nam wszystkim przysługę i bądź bardziej „wydajny“."~ [MRT469A]'

    $ morteLogic.s625_action()
    jump morte_dispose


# s626 # say63669
label morte_s626: # -
    nr '"Ja, no… nigdy tego nie powiedziałem!"~ [MRT470B]'

    jump annah_s315  # EXTERN


# s627 # say63670
label morte_s627: # -
    nr '"Czy Anna wciąż nosi ubranie?"~ [MRT565A]'

    jump nordom_s6  # EXTERN


# s628 # say63671
label morte_s628: # -
    nr '"Więc odpowiedź brzmi „tak“."~ [MRT565B]'

    $ morteLogic.s628_action()
    jump morte_dispose


# s629 # say63672
label morte_s629: # -
    nr '"Zrobię ci dziewiętnasty, jeśli nie zamkniesz gęby."~ [MRT564]'

    $ morteLogic.s629_action()
    jump morte_dispose


# s630 # say63673
label morte_s630: # -
    nr '"Jeśli wolna wola oznacza wypełnianie bez wahania moich rozkazów, to tak."~ [MRT569A]'

    jump nordom_s9  # EXTERN


# s631 # say63674
label morte_s631: # -
    nr '"Witaj w Sferach, mały."~ [MRT569B]'

    $ morteLogic.s631_action()
    jump morte_dispose


# s632 # say63675
label morte_s632: # -
    nr '"Czy Nie-Sława jest naga?"~ [MRT568A]'

    jump nordom_s11  # EXTERN


# s633 # say63676
label morte_s633: # -
    nr '"Więc odpowiedź na to pytanie brzmi „tak“."~ [MRT568B]'

    $ morteLogic.s633_action()
    jump morte_dispose


# s634 # say63677
label morte_s634: # -
    nr '"Anna, Nie-Sława oraz ja zażywający kąpieli w cymmeryjskim błocie."~ [MRT571A]'

    jump nordom_s13  # EXTERN


# s635 # say63678
label morte_s635: # -
    nr '"Niektórzy ludzie czytają słowniki, inni je tworzą."~ [MRT572B]'

    $ morteLogic.s635_action()
    jump morte_dispose


# s636 # say63679
label morte_s636: # -
    nr '"Anna, butelka furjodańskiego ognistego bursztynu oraz apartament w Domu Uciech."~ [MRT573]'

    jump nordom_s15  # EXTERN


# s637 # say63680
label morte_s637: # -
    nr '"Och, *zamknij się*."~ [MRT471D]'

    jump nordom_s17  # EXTERN


# s638 # say63681
label morte_s638: # -
    nr '"Zanudzaj kogo innego, ty durne liczydło."~ [MRT576A]'

    jump nordom_s19  # EXTERN


# s639 # say63682
label morte_s639: # -
    nr '"Nie wiem, dobra? Po prostu… go nie ma."~ [MRT576B]'

    jump nordom_s20  # EXTERN


# s640 # say63683
label morte_s640: # -
    nr '"Zaraz ci pokażę, jeśli nie zamkniesz gęby."~ [MRT576C]'

    $ morteLogic.s640_action()
    jump morte_dispose


# s641 # say63684
label morte_s641: # -
    nr '"Pocałuj się w nos."~ [MRT575A]'

    jump grace_s373  # EXTERN


# s642 # say63685
label morte_s642: # -
    nr '"Wierz mi. Annie dobrze by to zrobiło."~ [MRT575B]'

    $ morteLogic.s642_action()
    jump morte_dispose


# s643 # say63686
label morte_s643: # -
    nr '::Gwiżdże niewinnie::~ [MRT472A]'

    $ morteLogic.s643_action()
    jump morte_dispose


# s644 # say63688
label morte_s644: # -
    nr '"Nikt! Nikt mu tego nie powiedział!"~ [MRT473D]'

    $ morteLogic.s644_action()
    jump morte_dispose


# s645 # say63689
label morte_s645: # -
    nr '"To całkowicie dobrowolne z ich strony, ty kretynie. Eee… to znaczy, ja o tym nic nie wiem."~ [MRT577]'

    $ morteLogic.s645_action()
    jump morte_dispose


# s646 # say63858
label morte_s646: # -
    nr '"Zaufaj mi, ni… nigdy go nie spotkałeś."~ [MRT475AA]'

    jump vhailor_s1  # EXTERN


# s647 # say64990
label morte_s647: # -
    nr '"Poczekaj, szefie… spójrz na to." Spoglądasz w dół i spostrzegasz brudne odciski stóp, które prowadzą do łuku… i nie wracają. "Tam chyba musi być portal albo coś w tym rodzaju."'

    menu:
        '"Portal? Jak go otworzymy?"':
            # a1240 # r64991
            jump morte_s648

        '"Może i tak. Chodźmy."':
            # a1241 # r64993
            jump morte_dispose


# s648 # say64992
label morte_s648: # from 647.0
    nr '"Nie mam zielonego pojęcia, szefie. Choć to musi być jakiś popularny klucz - popatrz, ilu już tędy przechodziło! Może jedna z tych niskich form życia będzie wiedziała…"'

    menu:
        '"W takim razie popytam w okolicy. Chodźmy."':
            # a1242 # r64994
            jump morte_dispose


# s649 # say65552
label morte_s649: # from 329.0 729.0
    nr '"No nie, szefie. Tylko mi nie mów, że znowu zapomniałeś."'

    menu:
        '"Muszę sobie tylko odświeżyć pamięć."':
            # a1243 # r65553
            jump morte_s650

        '"Nie, ale tym razem chcę usłyszeć *wszystko* - no dalej, odśwież mi pamięć."' if morteLogic.r65554_condition():
            # a1244 # r65554
            jump morte_s650

        '"W takim razie mniejsza z tym. Mam do ciebie jeszcze parę pytań…"':
            # a1245 # r65555
            jump morte_s329

        '"W takim razie zapomnij o tym. Chodźmy."':
            # a1246 # r65556
            jump morte_dispose


# s650 # say65557
label morte_s650: # from 649.0 649.1
    nr '"Założę się, że jeszcze nie raz to usłyszę." Morte chrząka znacząco. "Zobaczmy…"  „Wiem, że czujesz się, jakbyś władował w siebie kilka baryłek wody ze Styksu, ale musisz się wziąć w GARŚĆ. Masz przy sobie DZIENNIK, który powinien trochę rozjaśnić sprawę. Resztę śpiewki usłyszysz od FARODA, chyba że już go wpisali do księgi umarłych.“'

    menu:
        '"Farod… hmmm. Czytaj dalej."' if morteLogic.r65558_condition():
            # a1247 # r65558
            jump morte_s651

        '"Czytaj dalej."' if morteLogic.r65559_condition():
            # a1248 # r65559
            jump morte_s651

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1249 # r65560
            jump morte_s329

        '"Mniejsza z tym. Nie mam już więcej pytań. Ruszajmy."':
            # a1250 # r65561
            jump morte_dispose


# s651 # say65562
label morte_s651: # from 650.0 650.1
    nr '"Dobrze, dobrze, poczekaj." Morte przerywa na chwilę. "Dobra, tu jest koniec…"  „Nie zgub dziennika, bo znowu popłyniemy w górę Styksu. I cokolwiek robisz, NIE MÓW nikomu, KIM jesteś, ani CO się z tobą dzieje, bo inaczej wylądujesz w krematorium. Rób co, ci każę: PRZECZYTAJ dziennik, a potem ODSZUKAJ Faroda.“'

    if morteLogic.s651_condition():
        jump morte_s653
    menu:
        '"Czytaj dalej. Co jest napisane dalej?"' if morteLogic.r65566_condition():
            # a1251 # r65566
            jump morte_s652

        '"Czy jak się obudziłem, nie było przy mnie żadnego dziennika?"' if morteLogic.r65565_condition():
            # a1252 # r65565
            jump morte_s682

        '"Dobra. Mam do ciebie parę innych pytań…"':
            # a1253 # r65567
            jump morte_s329

        '"Mniejsza z tym. Nie mam już więcej pytań. Ruszajmy."':
            # a1254 # r65568
            jump morte_dispose


# s652 # say65563
label morte_s652: # from 651.1
    nr '"O czym ty gadasz, szefie? Tu nie ma nic więcej."'

    menu:
        '"A co z „Nie ufaj czaszce“?"' if morteLogic.r65569_condition():
            # a1255 # r65569
            $ morteLogic.r65569_action()
            jump morte_s654

        '"A co z „Nie ufaj czaszce“?"' if morteLogic.r65570_condition():
            # a1256 # r65570
            jump morte_s654

        '"W takim razie mniejsza z tym. Mam do ciebie jeszcze parę pytań…"':
            # a1257 # r65571
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1258 # r65572
            jump morte_dispose


# s653 # say65564
label morte_s653: # from 651.0
    nr '"Aha, i oczywiście na końcu jest jeszcze o tym, żebyś nie ufał czaszkom."'

    menu:
        '"Co to według ciebie oznacza? Myślisz, że to się odnosi do *ciebie*?"':
            # a1259 # r65574
            jump morte_s655

        '"W takim razie mniejsza z tym. Mam do ciebie jeszcze parę pytań…"':
            # a1260 # r65575
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1261 # r65576
            jump morte_dispose


# s654 # say65577
label morte_s654: # from 329.4 652.0 652.1 729.4
    nr '"Ach… *ten* kawałek na końcu? No cóż, pomyślałem, że to nieważne, więc nie przeczytałem tego na głos."'

    menu:
        '"Naprawdę? A co według ciebie to oznacza? Myślisz, że to zdanie odnosi się do *ciebie*?"':
            # a1262 # r65578
            jump morte_s655

        '"W takim razie mniejsza z tym. Mam do ciebie jeszcze parę pytań…"':
            # a1263 # r65579
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1264 # r65580
            jump morte_dispose


# s655 # say65581
label morte_s655: # from 653.0 654.0
    nr '"Wątpię. Przecież *mi* możesz ufać, prawda, szefie?"'

    menu:
        '"Morte, czy ty mnie *okłamujesz*?"':
            # a1265 # r65582
            jump morte_s656

        '"W takim razie mniejsza z tym. Mam do ciebie jeszcze parę pytań…"':
            # a1266 # r65583
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1267 # r65584
            jump morte_dispose


# s656 # say65585
label morte_s656: # from 655.0
    nr '"Nie! Daj spokój, o co ci chodzi, szefie. Przecież jeszcze nie wprowadziłem cię w błąd."'

    menu:
        '"*Jeszcze*. Nie podoba mi się, że nie przeczytałeś mi tej linii i chciałbym wiedzieć, o czym *jeszcze* zapomniałeś wspomnieć, od czasu jak ze sobą wędrujemy."':
            # a1268 # r65587
            jump morte_s657

        '"W takim razie mniejsza z tym. Mam do ciebie jeszcze parę pytań…"':
            # a1269 # r65586
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1270 # r65588
            jump morte_dispose


# s657 # say65589
label morte_s657: # from 656.0
    nr '"Powiedziałem ci wszystko… no, PRAWIE wszystko, ale nie powiedziałem ci nic, no wiesz, *niebezpiecznego*."'

    menu:
        '"Jeśli jest JESZCZE Coś, to lepiej powiedz mi o tym teraz."':
            # a1271 # r65590
            jump morte_s658

        '"W takim razie mniejsza z tym. Mam do ciebie jeszcze parę pytań…"':
            # a1272 # r65591
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1273 # r65592
            jump morte_dispose


# s658 # say65593
label morte_s658: # from 657.0
    nr '"Szefie, mówię prawdę. Już nic przed tobą nie ukrywam. Przecież bym ci powiedział."'

    menu:
        '"Zatem w porządku, Morte. Mam do ciebie parę innych pytań…"':
            # a1274 # r65594
            jump morte_s329

        '"Mam nadzieję. Chodźmy."':
            # a1275 # r65595
            jump morte_dispose


# s659 # say65596
label morte_s659: # from 329.1 729.1
    nr '"Sigil to miasto w kształcie koła, położone na szczycie nieskończenie wysokiej iglicy. Niektórzy powiadają, że to centrum Sfer… Oczywiście to, *w jaki sposób* może się ono znajdować na szczycie nieskończenie wysokiej iglicy, a nawet w jaki sposób Sigil może *być położone* w centrum Sfer rodzi wiele pytań."'

    menu:
        '"Coś jeszcze?"':
            # a1276 # r65597
            jump morte_s660

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1277 # r65598
            jump morte_s329

        '"To wszystko, co chciałem wiedzieć. Chodźmy."':
            # a1278 # r65599
            jump morte_dispose


# s660 # say65600
label morte_s660: # from 659.0
    nr '"Sigil zwą "Miastem Drzwi," przede wszystkim dlatego, że znajduje się w nim WIELE niewidzialnych drzwi, które prowadzą z i do miasta - w odpowiednich warunkach prawie każdy łuk, futryna drzwi, obręcz z beczki, półka na książki czy otwarte okno może okazać się portalem. Wszystko zależy od tego, czy będziesz miał klucz, żeby go otworzyć."'

    menu:
        '"Jaki klucz?"':
            # a1279 # r65601
            jump morte_s661

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1280 # r65602
            jump morte_s329

        '"To wszystko, co chciałem wiedzieć. Chodźmy."':
            # a1281 # r65603
            jump morte_dispose


# s661 # say65604
label morte_s661: # from 660.0
    nr '"Widzisz, chyba najprościej wytłumaczyć to w ten sposób - większość portali jest „uśpiona“. Możesz przechodzić przez nie, obok nich, włazić na nie i nic się nie stanie. Ale każdy portal ma coś, co może go „obudzić“. To może być melodia, którą sobie zanucisz, bochenek tygodniowego chleba Dwutopiańskiego, wspomnienie swojego pierwszego pocałunku. A wtedy - BAM - portal się ożywia i możesz przez niego przeskoczyć do tego, co znajduje się po drugiej stronie."'

    menu:
        '"Czyli dokąd?"':
            # a1282 # r65605
            jump morte_s662

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1283 # r65606
            jump morte_s329

        '"To wszystko, co chciałem wiedzieć. Chodźmy."':
            # a1284 # r65607
            jump morte_dispose


# s662 # say65608
label morte_s662: # from 661.0
    nr '"W dowolne miejsce, szefie. Dosłownie. W Sigil znajdują się portale do wszystkich miejsc, o jakich tylko pomyślisz. Właśnie dlatego to miasto cieszy się taką popularnością wśród mieszkańców Sfer."'

    menu:
        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a1285 # r65609
            jump morte_s329

        '"To wszystko, co chciałem wiedzieć. Chodźmy."':
            # a1286 # r65610
            jump morte_dispose


# s663 # say65611
label morte_s663: # from 329.2 729.2
    nr '"Hej! Trajkotanie to moja najważniejsza zaleta." Morte przez chwilę grzechocze zębami, a potem na jego twarzy pojawia się uśmiech. "Co? Co?"'

    menu:
        '"Och, dobrze *to* słyszeć."':
            # a1287 # r65612
            jump morte_s664

        '"Tak, wiem o Litanii przekleństw, Morte - Ciekawi mnie, co dostałeś, kiedy byłeś u Lotara."' if morteLogic.r65613_condition():
            # a1288 # r65613
            jump morte_s667

        '"Mam jeszcze kilka pytań…"':
            # a1289 # r65614
            jump morte_s329

        '"Mniejsza z tym. Chodźmy."':
            # a1290 # r65615
            jump morte_dispose


# s664 # say65616
label morte_s664: # from 663.0
    nr '"Nie, ale na serio, szefie - mam dar trajkotania tak, jak trzeba. Naprawdę potrafię komuś przygadać, jeśli rozumiesz, co mam na myśli. Znam takie obelgi i przekleństwa, że niejednemu by uszy zwiędły."'

    menu:
        '"Ee… i niby jak *to* się ma przydać?"':
            # a1291 # r65617
            jump morte_s665

        '"Mam jeszcze kilka pytań…"':
            # a1292 # r65618
            jump morte_s329

        '"Mniejsza z tym. Chodźmy."':
            # a1293 # r65619
            jump morte_dispose


# s665 # say65620
label morte_s665: # from 664.0
    nr '"To jeden z moich talentów… Nazywam to moją „Litanią przekleństw“. Widzisz, czasami mogę komuś nieźle dopiec odpowiednim epitetem. Oczywiście potem zazwyczaj muszę brać nogi za pas, że tak powiem… ale mniej więcej łapiesz, o co biega."'

    menu:
        '"Jak to działa?"':
            # a1294 # r65621
            $ morteLogic.r65621_action()
            jump morte_s666

        '"Coś jeszcze?"' if morteLogic.r65622_condition():
            # a1295 # r65622
            jump morte_s667

        '"Mam jeszcze kilka pytań…"':
            # a1296 # r65623
            jump morte_s329

        '"Hmmm. To się może przydać. Ruszajmy."':
            # a1297 # r65624
            jump morte_dispose


# s666 # say65626
label morte_s666: # from 329.3 665.0 729.3
    nr '"Mogę rzucać na kogoś obelgami tak długo, aż wścieknie się i zacznie mnie gonić."  UWAGA: Morte posiada umiejętność zwaną „Litanią przekleństw“. Przekleństwa nie działają na zasadzie magii. Jeśli celowi nie uda się im oprzeć, jego Klasa Pancerza zostaje obniżona, a on sam będzie za wszelką cenę usiłował zmusić Mortego do walki wręcz. Zwróć uwagę na to, że im więcej Morte usłyszy obelg, tym jego Litania staje się bardziej efektywna. To BARDZO skuteczna broń przeciwko magom.'

    menu:
        '"Umiesz robić coś poza tym?"' if morteLogic.r65627_condition():
            # a1298 # r65627
            jump morte_s667

        '"Mam jeszcze kilka pytań…"':
            # a1299 # r65628
            jump morte_s329

        '"Hmmm. To się może przydać. Ruszajmy."':
            # a1300 # r65629
            jump morte_dispose


# s667 # say65630
label morte_s667: # from 663.1 665.1 666.0
    nr '"Hmmm, kiedy siedziałem sobie na półce u Lotara, czekając na ciebie, aż przyjdziesz mnie uwolnić - przy okazji, dzięki, że się nie spieszyłeś - poznałem kilku przyjaciół. Powiedzieli, że gdybym potrzebował pomocy, to mogę ich po prostu zawołać."'

    menu:
        '"Przyjaciół? Co masz na myśli?"':
            # a1301 # r65631
            $ morteLogic.j65637_s667_r65631_action()
            jump morte_s668

        '"Mam jeszcze kilka pytań…"':
            # a1302 # r65632
            jump morte_s329

        '"W takim razie cieszę się, że to słyszę. Ruszajmy."':
            # a1303 # r65633
            jump morte_dispose


# s668 # say65634
label morte_s668: # from 667.0
    nr '"No cóż, po prostu zagwiżdzę, a oni się zjawią. To trochę tak ja z wężami. Niezła z nich banda śmiałków."  UWAGA: Morte (od teraz) posiada specjalną umiejętność zwaną "Hordą Czaszek." Kiedy się jej użyje, spoza ekranu zjawia się sfora czaszek, która zadaje przeciwnikowi wielokrotne ugryzienia. Ich siła i zadawane przez nie obrażenia zależy od poziomu Mortego. Ta umiejętność może być użyta tylko określoną ilość razy w ciągu jednego dnia.'

    menu:
        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a1304 # r65635
            jump morte_s329

        '"W takim razie cieszę się, że to słyszę. Ruszajmy."':
            # a1305 # r65636
            jump morte_dispose


# s669 # say65638
label morte_s669: # from 329.5 729.5
    nr '"Hmmm, oto jak *ja* to wszystko widzę…"'

    menu:
        '"Mów dalej…"' if morteLogic.r65639_condition():
            # a1306 # r65639
            jump morte_s671

        '"Mów dalej…"' if morteLogic.r65640_condition():
            # a1307 # r65640
            jump morte_s672

        '"Mów dalej…"' if morteLogic.r65641_condition():
            # a1308 # r65641
            jump morte_s673

        '"Mów dalej…"' if morteLogic.r65642_condition():
            # a1309 # r65642
            jump morte_s670

        '"Mów dalej…"' if morteLogic.r65643_condition():
            # a1310 # r65643
            jump morte_s674

        '"Mów dalej…"' if morteLogic.r65644_condition():
            # a1311 # r65644
            jump morte_s675

        '"Mów dalej…"' if morteLogic.r65645_condition():
            # a1312 # r65645
            jump morte_s677

        '"Mów dalej…"' if morteLogic.r65646_condition():
            # a1313 # r65646
            jump morte_s680

        '"Mów dalej…"' if morteLogic.r65647_condition():
            # a1314 # r65647
            jump morte_s681

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1315 # r65648
            jump morte_s329

        '"Wiesz co, namyśliłem się. Zapomnij o tym. Ruszajmy."':
            # a1316 # r65649
            jump morte_dispose


# s670 # say65650
label morte_s670: # from 669.3
    nr '"Widzę to tak, że to teraz twoja działka, szefie. Nie mogę teraz powiedzieć zbyt wiele, co by ci mogło pomóc."'

    menu:
        '"*To* zupełnie co innego. Mam do ciebie parę innych pytań…"':
            # a1317 # r65651
            jump morte_s329

        '"W porządku. W takim razie ruszajmy dalej."':
            # a1318 # r65652
            jump morte_dispose


# s671 # say65653
label morte_s671: # from 669.0
    nr '"Myślę, że powinieneś znaleźć tego „Faroda“, gdziekolwiek się ukrywa. Ten typek musi mieć z tobą coś wspólnego, bo inaczej po co ktoś miałby ci rysować na plecach te tatuaże ze wskazówkami. Jakiś tubylec MUSI wiedzieć, gdzie go można znaleźć."'

    menu:
        '"Słuszna uwaga. Mam do ciebie parę innych pytań…"':
            # a1319 # r65654
            jump morte_s329

        '"W porządku. W takim razie szukajmy go dalej."':
            # a1320 # r65655
            jump morte_dispose


# s672 # say65656
label morte_s672: # from 669.1
    nr '"Spróbujmy jak najszybciej zakosić skądś tę „kulę z brązu“ i oddać ją temu staremu kuternodze."'

    menu:
        '"Słuszna uwaga. Mam do ciebie parę innych pytań…"':
            # a1321 # r65657
            jump morte_s329

        '"W porządku. W takim razie ruszajmy dalej."':
            # a1322 # r65658
            jump morte_dispose


# s673 # say65659
label morte_s673: # from 669.2
    nr '"Myślę, że powinniśmy dowiedzieć się, co się stało z twoimi zwłokami. Może uda się nam dowiedzieć, w jaki sposób znalazłeś się w księdze umarłych."'

    menu:
        '"Słuszna uwaga. Mam do ciebie parę innych pytań…"':
            # a1323 # r65660
            jump morte_s329

        '"W porządku. W takim razie ruszajmy dalej."':
            # a1324 # r65661
            jump morte_dispose


# s674 # say65662
label morte_s674: # from 669.4
    nr '"Wydaje mi się, że powinniśmy znaleźć kogoś, kto wie o tobie coś więcej - może w ten sposób dowiesz się, dlaczego stało się z tobą to, co się stało. W którejś Dzielnicy muszą być jacyś cwani śmiałkowie, którzy wiedzą o tobie coś więcej."'

    menu:
        '"Słuszna uwaga. Mam do ciebie parę innych pytań…"':
            # a1325 # r65663
            jump morte_s329

        '"W porządku. W takim razie ruszajmy dalej."':
            # a1326 # r65664
            jump morte_dispose


# s675 # say65665
label morte_s675: # from 669.5
    nr '"Wygląda na to, że powinniśmy dowiedzieć się czegoś więcej o tej nocnej wiedźmie, Raveli - a muszę ci powiedzieć, szefie, że wcale mi się do tego nie pali. Może jacyś mędrcy z Gmachu Rozrywki albo jakieś kamienie doznań coś nam powiedzą."'

    menu:
        '"Co to za Gmach Rozrywki? Jakie kamienie doznań?"' if morteLogic.r65666_condition():
            # a1327 # r65666
            $ morteLogic.j65669_s675_r65666_action()
            jump morte_s676

        '"Słuszna uwaga. Mam do ciebie parę innych pytań…"':
            # a1328 # r65667
            jump morte_s329

        '"W porządku. W takim razie ruszajmy dalej."':
            # a1329 # r65668
            jump morte_dispose


# s676 # say65670
label morte_s676: # from 675.0
    nr '"Wybacz, szefie - ciągle zapominam, że wiesz tyle, co świeżo wykluty pisklak. Gmach Rozrywki to główna siedziba frakcji Czuciowców, która znajduje się w Dzielnicy Urzędników. Jest tam biblioteka kamieni, w których są przechowywane doznania. Oprócz tego można tam spotkać wielu mędrców, wykładowców i trenerów, którzy może będą nam mogli przybliżyć cień tego, co wiedzą o Raveli."'

    menu:
        '"Słuszna uwaga. Mam do ciebie parę innych pytań…"':
            # a1330 # r65671
            jump morte_s329

        '"W porządku. W takim razie ruszajmy dalej."':
            # a1331 # r65672
            jump morte_dispose


# s677 # say65673
label morte_s677: # from 669.6
    nr '"No cóż, Ravela ukryła się w labiryncie. Ale jeśli ciągle chcesz tam iść, to pewnie gdzieś jest JAKIŚ klucz i JAKIŚ portal, który nas tam przeniesie."'

    menu:
        '"Nie wiesz przypadkiem, co może być kluczem do jej labiryntu?"' if morteLogic.r65674_condition():
            # a1332 # r65674
            $ morteLogic.j65678_s677_r65674_action()
            jump morte_s678

        '"Nie wiesz przypadkiem, gdzie można znaleźć portal prowadzący do jej labiryntu?"':
            # a1333 # r65675
            jump morte_s679

        '"Mam jeszcze kilka pytań…"':
            # a1334 # r65676
            jump morte_s329

        '"W porządku. W takim razie ruszajmy dalej."':
            # a1335 # r65677
            jump morte_dispose


# s678 # say65679
label morte_s678: # from 677.0
    nr '"Nie mam pojęcia - „część Raveli“? To może być cokolwiek, od jej zaschniętego wrzodu, do dzieła sztuki, które ona zrobiła, albo kropli śliny z jej ust. To zbyt niejasne. Ale założę się, że KTOŚ w Dzielnicy Urzędników musi wiedzieć, jak dostać się do tej zbzikowanej wiedźmy. Jak to się nie uda, to możemy spróbować z kamieniami doznań w Gmachu Rozrywki - może jeden z nich powie nam coś, co się nam przyda."'

    menu:
        '"Nie wiesz przypadkiem, gdzie można znaleźć portal prowadzący do jej labiryntu?"':
            # a1336 # r65680
            jump morte_s679

        '"Słuszna uwaga. Mam do ciebie parę innych pytań…"':
            # a1337 # r65681
            jump morte_s329

        '"W porządku. W takim razie szukajmy dalej."':
            # a1338 # r65682
            jump morte_dispose


# s679 # say65683
label morte_s679: # from 677.1 678.0
    nr '"A niech mnie, szefie. W Sigil są setki portali. Możemy spróbować w Gmachu Rozrywki - wątpię, żeby tam był, ale może jeden z kamieni doznań coś nam powie. Jak to się nie uda, to możemy zapomnieć o tej całej bieganinie i znaleźć kogoś, kto ZROBI nam ten portal."'

    menu:
        '"W porządku. Mam do ciebie parę innych pytań…"':
            # a1339 # r65684
            jump morte_s329

        '"W porządku. W takim razie ruszajmy dalej."':
            # a1340 # r65685
            jump morte_dispose


# s680 # say65686
label morte_s680: # from 669.7
    nr '"Według mnie powinniśmy znaleźć to, czego nam trzeba i zmywać się stąd, szefie. Na sam widok tego miejsca dostaję dreszczy, a nawet nie mam skóry. Dobra?"'

    menu:
        '"Masz rację. Mam do ciebie parę innych pytań…"':
            # a1341 # r65687
            jump morte_s329

        '"Dobra. Ruszajmy dalej."':
            # a1342 # r65688
            jump morte_dispose


# s681 # say65689
label morte_s681: # from 669.8
    nr '"Aleś mnie zażył, szefie. To twoje przedstawienie - ja tylko za tobą chodzę."'

    menu:
        '"Masz rację. Mam do ciebie parę innych pytań…"':
            # a1343 # r65690
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1344 # r65691
            jump morte_dispose


# s682 # say65692
label morte_s682: # from 651.2
    nr '"Nie… byłeś rozebrany do gołej skóry. Zresztą już wcześniej mówiłem, że ktoś wytatuował ci cały dziennik na plecach."'

    menu:
        '"I jesteś pewien, że nie znasz nikogo o imieniu Farod?"' if morteLogic.r65693_condition():
            # a1345 # r65693
            jump morte_s683

        '"Masz rację. Mam do ciebie parę innych pytań…"':
            # a1346 # r65694
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1347 # r65695
            jump morte_dispose


# s683 # say65696
label morte_s683: # from 682.0
    nr '"Nie. Ale jakiś skurl musi wiedzieć, gdzie go można znaleźć. Zapytajmy jakichś tubylców."'

    menu:
        '"Zanim wyruszymy, mam do ciebie parę innych pytań…"':
            # a1348 # r65697
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1349 # r65698
            jump morte_dispose


# s684 # say65699
label morte_s684: # from 329.6 729.6
    nr '"No… mimir to latająca encyklopedia. Jak się do niej włoży jakieś informacje, to później samemu można się czegoś dowiedzieć."'

    menu:
        '"Ale czy mimiry nie są zrobione ze srebrzystego metalu?"' if morteLogic.r65700_condition():
            # a1350 # r65700
            jump morte_s685

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a1351 # r65701
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1352 # r65702
            jump morte_dispose


# s685 # say65703
label morte_s685: # from 684.0
    nr '"No i co z tego? Może niektóre są, ale *ja nie*. W Sferach natkniesz się na dziwniejsze rzeczy niż to, szefie."'

    menu:
        '"Wydaje mi się, że nie jesteś mimirem, Morte. Coś ty za jeden?"':
            # a1353 # r65704
            jump morte_s686

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a1354 # r65705
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1355 # r65706
            jump morte_dispose


# s686 # say65707
label morte_s686: # from 685.0
    nr '"A co to, przesłuchanie? A w ogóle, co *ty* w ogóle wiesz o mimirach?"'

    menu:
        '"Wiem na tyle dużo, żeby cię podejrzewać, że mnie okłamujesz."' if morteLogic.r65708_condition():
            # a1356 # r65708
            jump morte_s687

        '"Wiem na tyle dużo, żeby cię podejrzewać, że mnie okłamujesz. Najpierw ta brakująca linijka na moich plecach, mówiąca, żeby ci nie ufać, a teraz to. Niby co mam myśleć?"' if morteLogic.r65709_condition():
            # a1357 # r65709
            jump morte_s687

        '"Chyba nic. Mam jeszcze parę innych pytań…"':
            # a1358 # r65710
            $ morteLogic.j65712_s686_r65710_action()
            jump morte_s329

        '"W takim razie mniejsza z tym. Ruszajmy."':
            # a1359 # r65711
            $ morteLogic.j65712_s686_r65711_action()
            jump morte_dispose


# s687 # say65713
label morte_s687: # from 686.0 686.1
    nr '"No dobra, *nie* jestem mimirem, ale wiem o wielu sprawach, więc równie dobrze *mógłbym* nim być."'

    menu:
        '"No to czym *jesteś*?"':
            # a1360 # r65714
            jump morte_s688

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1361 # r65715
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1362 # r65716
            jump morte_dispose


# s688 # say65717
label morte_s688: # from 687.0
    nr '"Jestem latającą czaszką, która dużo wie."'

    menu:
        '"No to dlaczego jesteś cały przesiąknięty smrodem Baator?"' if morteLogic.r65718_condition():
            # a1363 # r65718
            jump morte_s690

        '"No to dlaczego jesteś cały przesiąknięty smrodem Baator?"' if morteLogic.r65719_condition():
            # a1364 # r65719
            jump morte_s689

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1365 # r65720
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1366 # r65721
            jump morte_dispose


# s689 # say65722
label morte_s689: # from 688.1
    nr '"A niby skąd TY miałbyś wiedzieć, jak cuchnie Baator?!"'

    menu:
        '"Bo tam *byłem*, Morte. Chodziłem po Avernusie."':
            # a1367 # r65723
            jump morte_s691

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1368 # r65724
            jump morte_s329

        '"Mniejsza z tym. Chodźmy."':
            # a1369 # r65725
            jump morte_dispose


# s690 # say65726
label morte_s690: # from 688.0
    nr '"A niby skąd TY miałbyś wiedzieć, jak cuchnie Baator? Chyba że - hej, rozmawiałeś o mnie z tą tanar„ri, tak?! Co ona wie?!"'

    menu:
        '"No cóż, na pewno coś wie - to woń z Baator, prawda?"':
            # a1370 # r65727
            jump morte_s691

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1371 # r65728
            jump morte_s329

        '"Mniejsza z tym. Chodźmy."':
            # a1372 # r65729
            jump morte_dispose


# s691 # say65730
label morte_s691: # from 689.0 690.0
    nr '"Hmmm, tak, ale - no cóż, tak. No to trochę ode mnie cuchnie. Strasznie za to *przepraszam*."'

    menu:
        '"*Dlaczego* czuć od ciebie Baator?"':
            # a1373 # r65731
            $ morteLogic.r65731_action()
            jump morte_s692


# s692 # say65732
label morte_s692: # from 691.0
    nr '"Trochę byłem w piekłach. W sumie całkiem długo. Ten smród strasznie się ciągnie."'

    menu:
        '"Byłeś w piekłach? Niby co tam ROBIŁEŚ?"':
            # a1374 # r65733
            $ morteLogic.r65733_action()
            jump morte_s693


# s693 # say65734
label morte_s693: # from 329.7 692.0 729.7
    nr '"Na Avernusie, pierwszej warstwie Baator, znajduje się pewien *słup*. Nazywają go Słupem Czaszek, ale tak naprawdę jest zrobiony z głów."'

    jump morte_s694


# s694 # say65735
label morte_s694: # from 693.0
    nr '"Z tego, co powiadają niektórzy śmiałkowie, Słup *podobno* składa się przede wszystkim z głów mędrców i uczonych, którzy za życia użyli swojej wiedzy, żeby trochę naciągnąć prawdę… na tyle, że przez to kogoś zranili, albo ee, przyczynili się do jego śmierci. No cóż, kiedy ja *umarłem*, to skończyłem właśnie jako jedna z głów w Słupie. Zabawne, co?"'

    menu:
        '"Nie do końca."':
            # a1375 # r65846
            jump morte_s695


# s695 # say65736
label morte_s695: # from 694.0
    nr '"Ee…" Morte milknie na chwilę. "Tak, masz rację, to wcale nie jest śmieszne. Widzisz, chyba musiałem dużo wiedzieć za życia. I może kiedy coś wiedziałem, to nie zawsze mówiłem o tym prawdę. Wydaje mi się, że kiedy naciągnąłem prawdę raz czy dwa, mogłem się przyczynić do tego, że kogoś przedwcześnie wpisali do księgi umarłych."'

    menu:
        '"Możesz sobie przypomnieć, kogo?"':
            # a1376 # r65737
            jump morte_s697

        '"To byłem ja, prawda?"' if morteLogic.r65738_condition():
            # a1377 # r65738
            jump morte_s696

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65739_condition():
            # a1378 # r65739
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65740_condition():
            # a1379 # r65740
            jump morte_dispose


# s696 # say65741
label morte_s696: # from 695.1
    nr 'Morte spogląda przez chwilę na ciebie. "Tak. Nie wiem *dlaczego* to pamiętam, ale tak mi się wydaje. To chyba ty mnie tam wysłałeś; to ostatnia rzecz jaką pamiętam. Problem w tym, że nie mogę sobie przypomnieć, co się stało - nie pamiętam nawet czasów, gdy byłem człowiekiem, ani swojego życia zanim stałem się częścią Słupa."'

    menu:
        '"Dlaczego zapomniałeś?"':
            # a1380 # r65742
            jump morte_s698

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65743_condition():
            # a1381 # r65743
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65744_condition():
            # a1382 # r65744
            jump morte_dispose


# s697 # say65745
label morte_s697: # from 695.0
    nr '"Nie wiem *dlaczego* to pamiętam, ale wydaje mi się, że to byłeś *ty*. Przynajmniej w jednym przypadku. Problem w tym, że nie mogę sobie przypomnieć, co się stało - nie pamiętam nawet czasów, gdy byłem człowiekiem, ani swojego życia zanim obudziłem się jako jedna z głów ze Słupa."'

    menu:
        '"Dlaczego zapomniałeś?"':
            # a1383 # r65746
            jump morte_s698

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65747_condition():
            # a1384 # r65747
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65748_condition():
            # a1385 # r65748
            jump morte_dispose


# s698 # say65749
label morte_s698: # from 696.0 697.0
    nr '"Tak to jest, kiedy się umiera, zresztą jestem pewien, że tobie to też nie jest obce. Po prostu… zapominasz. Pewnie za życia nie byłem zbyt wartościowym członkiem społeczności… ale, do diabła, kto nim jest?" Morte wzdycha. "Po prostu nic na to nie mogę poradzić. Nie ma nic gorszego, niż bycie cały czas uczciwym."'

    menu:
        '"Chyba, że skażą cię na piekła. To brzmi o wiele gorzej niż mówienie prawdy."' if morteLogic.r65750_condition():
            # a1386 # r65750
            $ morteLogic.r65750_action()
            jump morte_s699

        '"To prawda… ale trzeba uważnie dobierać kłamstwa."' if morteLogic.r65751_condition():
            # a1387 # r65751
            $ morteLogic.r65751_action()
            jump morte_s699


# s699 # say65752
label morte_s699: # from 698.0 698.1
    nr '"Tak… masz rację. *Znowu*." Morte zaczyna klekotać zębami, co przypomina ci, jakby ktoś uderzał palcami w blat stołu. "Pewnie całe dobro i zło, kłamstwa i oszustwa prędzej czy później człowieka dopadają - a kiedy mnie wpisano do księgi umarłych, to i na mnie przyszła kolej, żeby odpokutować za swoje występki."'

    menu:
        '"Więc jak udało ci się uciec ze Słupa?"':
            # a1388 # r65753
            $ morteLogic.j53633_s699_r65753_action()
            jump morte_s700

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65754_condition():
            # a1389 # r65754
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65755_condition():
            # a1390 # r65755
            jump morte_dispose


# s700 # say65757
label morte_s700: # from 699.0
    nr '"Ty mi pomogłeś, szefie. Kiedy zjawiłeś się przed Słupem Czaszek, wypchałem się na powierzchnię. Oczywiście moje obycie i wrodzony czar osobisty przyciągnęły twoją uwagę - wiedziałeś, że to *ja* byłem głową, która wiedziała najwięcej. No więc zawarłem z tobą umowę."'

    menu:
        '"Umowę…?"':
            # a1391 # r65758
            $ morteLogic.r65758_action()
            jump morte_s701

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65759_condition():
            # a1392 # r65759
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65760_condition():
            # a1393 # r65760
            jump morte_dispose


# s701 # say65761
label morte_s701: # from 700.0
    nr 'Kiedy Morte tak mówi, przed oczami ukazuje ci się ognistoczerwony obraz, a w uszach słyszysz wycie, okropne *krzyki*, i mnóstwo głosów. WSZYSTKIE proszą i błagają, żeby je uwolnić. I głos Mortego… słaby, prawie ginący w tym zgiełku. Brzmi, jakby czaszka była przerażona, zrozpaczona i… co może zabrzmieć patetycznie, tragicznie *zagubiona*.'

    menu:
        'Wspomnienie: "Ty. Czaszko. Mów."':
            # a1394 # r65762
            jump morte_s702

        'Odpędź od siebie to wspomnienie.':
            # a1395 # r65763
            $ morteLogic.r65763_action()
            jump morte_s706


# s702 # say65764
label morte_s702: # from 701.0
    nr 'Wycie przechodzi w ciszę. Widzisz małą, naznaczoną czerwonymi liniami czaszkę, której oczy, oświetlone piekielnym światłem, zwracają się na ciebie. Po jej twarzy spływają krew i limfa, a jej zęby szczękają jakby z zimna. "M… Mogę c-c-ci pomóc. Wiem, cz-cz-czego szukasz… te wszystkie głowy… cała ich wiedza… tylko proszę, *błagam* cię, uwolnij mnie. Pozwól, że ci *pomogę*. Powiem ci wszystko, *wszystko*."'

    menu:
        'Wspomnienie: "*Naprawdę?* PRZYSIĘGNIJ, czaszko. PRZYSIĘGNIJ, że będziesz mi służyć aż po koniec moich dni, albo zostaniesz tutaj."':
            # a1396 # r65765
            jump morte_s703

        'Odpędź od siebie to wspomnienie.':
            # a1397 # r65766
            $ morteLogic.r65766_action()
            jump morte_s706


# s703 # say65767
label morte_s703: # from 702.0
    nr '"Przysięgam. Przysięgam… tylko proszę, *proszę* uwolnij mnie…" Widzisz, jak Morte z trudem pokonuje swoją dumę. "*Błagam* cię. Pozwól, żebym ci *pomógł*. Proszę."'

    menu:
        'Wspomnienie: "Dobrze. Uwolnię cię."':
            # a1398 # r65768
            jump morte_s704

        'Odpędź od siebie to wspomnienie.':
            # a1399 # r65769
            $ morteLogic.r65769_action()
            jump morte_s706


# s704 # say65770
label morte_s704: # from 703.0
    nr 'Widok przed twoimi oczyma zaciera się, jakbyś się porusał, a kakafonia krzyków i wyć zaczyna się od nowa. Twoje uszy atakuje koszmarna horda obelg, przekleństw i wyzwisk… czujesz jak twoje ręce zanurzają się w plugawe bagno słupa, czujesz ugryzienia ostrych kłów, aż w końcu natrafiasz na małą czaszkę i wydzierasz ja ze słupa jak stary strup…'

    menu:
        'Wspomnienie: "GOTOWE."':
            # a1400 # r65771
            jump morte_s705

        'Odpędź od siebie to wspomnienie.':
            # a1401 # r65772
            $ morteLogic.r65772_action()
            jump morte_s706


# s705 # say65773
label morte_s705: # from 704.0
    nr 'Spoglądasz na pokrwawioną czaszkę spoczywającą w twoich rękach. Jej oczy ciągle zakrywa limfa ze Słupa, ale zęby zaczynają szczękać, raz, potem jeszcze raz. Ten widok przypomina ci kwilącego, bezbronnego noworodka - a w oczach człowieka, którym niegdyś byłeś - bardzo patetyczne.'

    menu:
        'Wspomnienie: "Uwolniłem cię. Teraz jestem panem twojego życia… i śmierci… Morte."' if morteLogic.r65774_condition():
            # a1402 # r65774
            $ morteLogic.r65774_action()
            jump morte_s706

        'Wspomnienie: "Uwolniłem cię. Teraz jestem panem twojego życia… i śmierci… Morte."' if morteLogic.r65775_condition():
            # a1403 # r65775
            $ morteLogic.r65775_action()
            jump morte_s706


# s706 # say65776
label morte_s706: # from 701.1 702.1 703.1 704.1 705.0 705.1
    nr 'Wizja przed twoimi oczyma znowu się zaciera, mgły przeszłości odpływają, a Morte ciągle trajkocze. "Pogadaliśmy przez chwilę, zastanawiając się nad tym, czy umowa jest do przyjęcia przez obie strony. Wydaje mi się, że obaj zrobiliśmy na sobie duże wrażenie, więc zaprosiłeś mnie, żebym wyszedł ze Słupa, i od tego czasu jestem z tobą."'

    menu:
        '"Ee… co stało się potem?"':
            # a1404 # r65777
            jump morte_s707

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65778_condition():
            # a1405 # r65778
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65779_condition():
            # a1406 # r65779
            jump morte_dispose


# s707 # say65780
label morte_s707: # from 706.0
    nr '"No cóż, nie miałem pojęcia, że kiedy opuszczę Słup, stracę większą część jego wiedzy… No bo i skąd miałem wiedzieć, przecież nigdy stamtąd nie wychodziłem… Ale ty okazałeś mi wiele wyrozumiałości…"'

    menu:
        '"Straciłeś całą wiedzę, którą podobno posiadałeś…?"':
            # a1407 # r65781
            $ morteLogic.r65781_action()
            jump morte_s708

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65782_condition():
            # a1408 # r65782
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65783_condition():
            # a1409 # r65783
            jump morte_dispose


# s708 # say65784
label morte_s708: # from 707.0
    nr 'Wizja przed twoimi oczyma znowu się zaciera, przez co dostajesz zawrotów głowy. Czujesz, jak przewracają ci się kiszki - do twoich uszu dochodzi odgłos uderzenia i trzaśnięcie kości, a potem wycie Mortego - wyjącego z bólu, krzyczącego, żeby ktoś przestał, żeby go nie *zabijał*… Potem dostrzegasz własną rękę, uderzającą raz po raz, a potem…'

    menu:
        'Wspomnienie: "A NIECH CIĘ, czaszko, OKŁAMAŁEŚ mnie. WRZUCĘ CIĘ Z POWROTEM DO TEGO PRZEKLĘTEGO SŁUPA I ZOSTAWIĘ, ŻEBYŚ TAM *UMARŁ*."':
            # a1410 # r65785
            jump morte_s709

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65786_condition():
            # a1411 # r65786
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65787_condition():
            # a1412 # r65787
            jump morte_dispose


# s709 # say65788
label morte_s709: # from 708.0
    nr 'Słyszysz uderzenia kości o coś, co brzmi jak metalowa podłoga albo ściana, a potem sypią się zęby. Morte błaga cię, jak bity pies, żebyś przestał.'

    menu:
        'Wspomnienie: "TWOJE CIERPIENIE W SŁUPIE BĘDZIE *NICZYM* W PORÓWNANIU Z MĘKAMI, KTÓRE JA CI *ZADAM*."':
            # a1413 # r65789
            $ morteLogic.r65789_action()
            jump morte_s710

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65790_condition():
            # a1414 # r65790
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65791_condition():
            # a1415 # r65791
            jump morte_dispose


# s710 # say65792
label morte_s710: # from 709.0
    nr 'Wizja przed twoimi oczyma znowu się zaciera, a krzyki Mortego cichą, przechodząc w jego rytmiczne trajkotanie. "No i zrozumiałeś, że ciągle mogę ci się przydać. Więc się z tobą pogodziłem i od tego czasu jestem przy tobie."'

    menu:
        '"Morte, czego ja chciałem od Słupa? I jak dawno temu cię uwolniłem?"':
            # a1416 # r65793
            jump morte_s711

        '"Ee… zapomnij o tym, Morte. Mam do ciebie jeszcze parę pytań…"' if morteLogic.r65794_condition():
            # a1417 # r65794
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65795_condition():
            # a1418 # r65795
            jump morte_dispose


# s711 # say65796
label morte_s711: # from 710.0
    nr 'Morte zamyśla się na chwilę. "Co do tego, kiedy to było, to nie wiem dokładnie, ale pewnie całe wieki temu. Za każdym razem robiłem, co tylko mogłem, żeby ci pomóc, ale…" Czaszka wzdycha. "To nie takie łatwe. A co do tego, czego chciałeś od Słupa, to nie wiem - kiedy mnie z niego wyrwałeś, wszystko zapomniałem."'

    menu:
        '"Morte, dlaczego nic nie POWIEDZIAŁEŚ, kiedy jeszcze byliśmy w Kostnicy?"':
            # a1419 # r65797
            jump morte_s712

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65798_condition():
            # a1420 # r65798
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65799_condition():
            # a1421 # r65799
            jump morte_dispose


# s712 # say65800
label morte_s712: # from 711.0
    nr 'Morte nagle zaczyna się bronić. "Bo nigdy nie *wiedziałem*, kim będziesz! Niektóre z twoich wcieleń były bardzo wściekłe i zapalczywe! Pewnego razu obudziłeś się ogarnięty obsesją, że jestem twoją czaszką i goniłeś mnie wokół Iglicy, próbując mnie roztrzaskać i pożreć… Na szczęście, przejechał cię na ulicy jakiś przejeżdżający powóz. Innym razem, jako „dobry i praworządny,“ próbowałeś wrzucić mnie z powrotem do Słupa, bo „tam było moje miejsce“." Morte sili się na wymuszony uśmiech. "*Właśnie* dlatego. A poza tym, co ci szkodziło, że nie wiedziałeś…"'

    menu:
        '"Więc przez ten cały czas ciągle jesteś ze mną?"' if morteLogic.r65801_condition():
            # a1422 # r65801
            jump morte_s713

        '"Zapomnij o tym, Morte. Mam jeszcze parę innych pytań…"' if morteLogic.r65802_condition():
            # a1423 # r65802
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."' if morteLogic.r65803_condition():
            # a1424 # r65803
            jump morte_dispose


# s713 # say65804
label morte_s713: # from 712.0
    nr '"No tak, szefie. Przecież powiedziałem, że z tobą zostanę. Morte zawsze dotrzymuje obietnic." Czaszka przerywa na chwilę. "No, przynajmniej większości. Cha, cha. Na Arborei była pewna dzierlatka, która…"'

    $ morteLogic.s713_action()
    jump morte_s714


# s714 # say65805
label morte_s714: # from 713.0
    nr 'Nagle zdajesz sobie sprawę z tego, że ton głosu Mortego się zmienił - wiesz, że pod tym żartem, czaszka próbuje coś przed tobą ukryć. Coś o tym, dlaczego jest z tobą.'

    menu:
        '"Morte, już bez żartów, dlaczego ciągle ze mną wędrujesz?"':
            # a1425 # r65806
            jump morte_s715

        '"Dobra. Mam do ciebie parę innych pytań…"':
            # a1426 # r65807
            jump morte_s329

        '"Mniejsza z tym, Morte. Ruszajmy dalej."':
            # a1427 # r65808
            jump morte_dispose


# s715 # say65809
label morte_s715: # from 329.8 714.0 729.8
    nr '"Szefie, przecież powiedziałem, że ci to obiecałem, no nie?" Morte wygląda na poirytowanego. "A niby dlaczego?"'

    menu:
        '"Nie wiem. Nie musiałeś zostawać przy mnie po tym, jak cię uwolniłem."':
            # a1428 # r65810
            jump morte_s716

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1429 # r65811
            jump morte_s329

        '"Zapomnij o tym, Morte. Ruszajmy dalej."':
            # a1430 # r65812
            jump morte_dispose


# s716 # say65813
label morte_s716: # from 715.0
    nr '"Oczywiście, że nie musiałem, szefie, ale ja…" Nagle ton jego głosu coś w tobie budzi i już wiesz *dlaczego* on cię nie opuścił przez cały ten czas.'

    menu:
        '"Czujesz się *winny*. Bo dawno temu przyczyniłeś się do mojej śmierci, prawda? I od tego czasu cierpisz."':
            # a1431 # r65814
            jump morte_s717


# s717 # say65815
label morte_s717: # from 716.0
    nr '"Daj spokój, szefie. Ja, mam się czuć *winny*? W końcu jestem Morte."'

    menu:
        '"Chyba jednak mam rację. Kiedy uwolniłem cię od losu, na który sobie zasłużyłeś, nie mogłeś mi nie pomóc. I mimo, że mogłeś ode mnie odejść, zostałeś. Bo czułeś się moim dłużnikiem."':
            # a1432 # r65816
            jump morte_s718


# s718 # say65817
label morte_s718: # from 717.0
    nr 'Morte milczy przez chwilę, patrząc na ciebie. "Może. Wiesz? To zabawne. Na początku nawet nie wiedziałem co to za uczucie - ono powoli cię zjada, wiesz?"'

    jump morte_s719


# s719 # say65818
label morte_s719: # from 718.0
    nr '"Najpierw myślałem, że to efekt uboczny jakiegoś uroku, który mnie z tobą „związał“… Ale po paruset latach zrozumiałem, że to było coś *więcej*… coś głębszego. Po prostu czułem, że coś mnie do ciebie ciągnie, że jestem z tobą w jakiś sposób *połączony*. Może to przez te wszystkie twoje cierpienia, szefie… przez twoje udręki. Nie wiem, może czułem się *odpowiedzialny* za to, co kiedyś zrobiłem. Może to właśnie coś, co ja zrobiłem, sprawiło, że znajdujesz się teraz w tym stanie."'

    $ morteLogic.s719_action()
    jump morte_s720


# s720 # say65820
label morte_s720: # from 719.0
    nr '"Wątpię, żebym ja - albo ten, kimkolwiek kiedyś byłem - naprawdę *zrozumiał* konsekwencje swoich kłamstw i oszustw. A kiedy zobaczyłem cię po raz pierwszy, gdy byłem uwięziony w Słupie, jakoś *wiedziałem*, że to ciebie zdradziłem. Kiedyś… dawno temu." Morte wzdycha. "To wszystko, co wiem."'

    menu:
        '"Rozumiem. Dzięki, że mi w końcu powiedziałeś."':
            # a1433 # r65821
            $ morteLogic.r65821_action()
            jump morte_s721


# s721 # say65822
label morte_s721: # from 720.0
    nr '"Nie dziękuj mi…" Morte wzdycha. Ku twojemu zdziwieniu, jego głos wydaje się być silniejszy, bardziej pewny. Niektóre pęknięcia na jego czaszce znikły, jakby się zagoiły. "To ja powinienem tobie dziękować - czuję się tak, jakby mi ktoś całą Sferę zdjął z serca… że tak powiem."'

    menu:
        '"Mam jeszcze kilka pytań…"':
            # a1434 # r65823
            jump morte_s329

        '"W porządku, Morte. Ruszajmy dalej."':
            # a1435 # r65824
            jump morte_dispose


# s722 # say65826
label morte_s722: # from 329.10 729.10
    nr '"To nocna wiedźma - musi być naprawdę zbzikowana, jeśli właśnie CIEBIE zrobiła nieśmiertelnym. Przecież mogła wybrać mnie." Morte zaczyna przewracać oczyma. "Choć z drugiej strony, zastanawiam się, czy naprawdę warto szukać kogoś, kto był na tyle szalony, żeby zadzierać z Panią Bólu?"'

    menu:
        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a1436 # r65827
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1437 # r65828
            jump morte_dispose


# s723 # say65829
label morte_s723: # from 329.9 729.9
    nr '"To wojna. Wielka, krwawa wojna. Toczy się wszędzie wokół, choć nie zawsze można to dostrzec."'

    menu:
        '"Mów dalej…"':
            # a1438 # r65830
            jump morte_s724

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a1439 # r65831
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1440 # r65832
            jump morte_dispose


# s724 # say65833
label morte_s724: # from 723.0
    nr '"To wojna pomiędzy dwiema rasami: demonami i diabłami. Dawno temu żadna z nich nie wiedziała o istnieniu drugiej. Diabły były złe, ale to była „uporządkowana“ odmiana zła. Demony także były złe, ale były bardziej impulsywne, chaotyczne, a mniej zorganizowane. Diabły były jak politycy, a demony jak rzeźnicy."'

    jump morte_s725


# s725 # say65834
label morte_s725: # from 724.0
    nr '"W końcu, pewnego dnia, obie rasy się spotkały. Kiedy się poznały, nie spodobało im się, jak druga rasa traktuje zło. I od tego czasu trwa wojna. To jeden wielki koszmar. Ale przynajmniej dzięki niej obie rasy są czymś zajęte, więc nie buszują po całych Sferach."'

    menu:
        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a1441 # r65835
            jump morte_s329

        '"To wszystko, co chciałem wiedzieć. Chodźmy."':
            # a1442 # r65836
            jump morte_dispose


# s726 # say65837
label morte_s726: # from 329.11 729.11
    nr '"Nie mam pojęcia, szefie. Chyba o tym zapomniałem, kiedy umarłem. Nie mogę powiedzieć, żebym za bardzo siebie winił - przynajmniej coś na mnie po śmierci czekało - nawet jeśli to było życie jako latająca czaszka. Chciałem przez to powiedzieć, że mogło być znacznie gorzej."'

    menu:
        '"Co się stało z twoim ciałem?"':
            # a1443 # r65839
            jump morte_s727

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a1444 # r65840
            jump morte_s329

        '"W takim razie w porządku. Idziemy."':
            # a1445 # r65841
            jump morte_dispose


# s727 # say65838
label morte_s727: # from 726.0
    nr '"Ech… nie wiem, dobra? Po prostu znikło." Morte rzuca ci złowrogie spojrzenie. "Ale nie myśl, że za nim TĘSKNIĘ, bo jest mi dobrze tak jak teraz. I nie potrzebuję twoich pożal się biesie osądów i uwag, dobra?"'

    menu:
        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a1446 # r65842
            jump morte_s329

        '"Nieważne - ruszajmy. No, dalej, pospiesz się."':
            # a1447 # r65843
            jump morte_s728


# s728 # say65844
label morte_s728: # from 727.1
    nr 'Morte rzuca ci złowrogie spojrzenie. "Zastanawiam się, czy nie jesteś czasem jakimś chodzącą przekleństwem, które zostało zesłane, żeby za mną łazić."'

    menu:
        '"I kto to mówi. Ruszajmy."':
            # a1448 # r65845
            jump morte_dispose


# s729 # say66344
label morte_s729: # - # IF WEIGHT #7 /* Triggers after states #: 742 737 733 even though they appear after this state */ ~  Global("AR0200_Visited","GLOBAL",1) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Co cię gryzie, szefie?"~ [MRT515]'

    menu:
        '"Możesz mi jeszcze raz przeczytać, co mam wytatuowane na plecach?"':
            # a1449 # r66345
            jump morte_s649

        '"Możesz powiedzieć mi coś o Sigil?"':
            # a1450 # r66346
            jump morte_s659

        '"Morte… nie mam nic przeciwko temu, żebyś ze mną wędrował, ale czy umiesz robić coś *innego* oprócz trajkotania?"' if morteLogic.r66347_condition():
            # a1451 # r66347
            jump morte_s663

        '"Morte… możesz mi jeszcze raz opowiedzieć o twoich specjalnych zdolnościach?"' if morteLogic.r66348_condition():
            # a1452 # r66348
            jump morte_s666

        '"Morte, dlaczego mi nie powiedziałeś o dodatkowej linii tatuaży na moich plecach?"' if morteLogic.r66349_condition():
            # a1453 # r66349
            jump morte_s654

        '"Chyba przydałaby mi się jakaś rada. Co według ciebie powinniśmy teraz zrobić?"':
            # a1454 # r66350
            jump morte_s669

        '"Mówiłeś, że jesteś mimirem, prawda, Morte?"' if morteLogic.r66351_condition():
            # a1455 # r66351
            jump morte_s684

        '"Opowiedz mi jeszcze raz o tym, jak wylądowałeś w Słupie Czaszek."' if morteLogic.r66352_condition():
            # a1456 # r66352
            jump morte_s693

        '"Morte, dlaczego przyłączyłeś się do mnie z powrotem, kiedy odszedłem od Słupa?"' if morteLogic.r66353_condition():
            # a1457 # r66353
            jump morte_s715

        '"Co wiesz o Wojnie Krwi?"' if morteLogic.r66354_condition():
            # a1458 # r66354
            jump morte_s723

        '"Co wiesz o nocnej wiedźmie Raveli?"' if morteLogic.r66355_condition():
            # a1459 # r66355
            jump morte_s722

        '"W jaki sposób umarłeś, Morte?"':
            # a1460 # r66356
            jump morte_s726

        '"Nic, Morte. Tylko sprawdzam, czy wciąż ze mną jesteś."':
            # a1461 # r66357
            jump morte_dispose


# s730 # say66816
label morte_s730: # -
    nr '"Hej, szefie, możesz w to uwierzyć? Oni mogą nauczyć *mnie* paru rzeczy…"~ [MRT387]'

    menu:
        '"Wierzę, Morte. Chodźmy."':
            # a1462 # r66817
            jump morte_dispose


# s731 # say67510
label morte_s731: # -
    nr '"Chciałbym się tylko wtrącić i powiedzieć, że będę już siedział cicho. Nie chcę psuć nastroju, szefie. Po prostu polatam sobie tutaj i popatrzę. Naprawdę, nie przejmuj się mną."'

    jump annah_s418  # EXTERN


# s732 # say67600
label morte_s732: # -
    nr '"Hej, wy dwoje, przestańcie, bo zawołam dabusa, żeby was rozdzielił! Albo przynajmniej pozwólcie, że się wtrącę."'

    jump annah_s446  # EXTERN


# s733 # say68171
label morte_s733: # - # IF WEIGHT #1 ~  Global("Fortress_Morte","GLOBAL",3) Global("Absorb","GLOBAL",0)
    nr 'Kiedy wyciągasz rękę, Morte nagle się odzywa. "Hola, hola, hola! Poczekaj, szefie. Ee… jest parę rzeczy, które ci muszę powiedzieć."~ [MRT242]'

    menu:
        '"Morte…?! Ty żyjesz!"':
            # a1463 # r68176
            $ morteLogic.r68176_action()
            jump morte_s734


# s734 # say68172
label morte_s734: # from 733.0
    nr '"No cóż - kiedy będziesz już martwy tak długo jak ja, nauczysz się świetnie udawać truposza. Słyszałem całą waszą rozmowę. Użyj tej mocy na kimś innym - ja jej nie potrzebuję."'

    menu:
        '"Więc zamierzałeś tam *leżeć* i przyglądać się, jak dostaję w tyłek?"':
            # a1464 # r68177
            jump morte_s735


# s735 # say68173
label morte_s735: # from 734.0
    nr '"Chodzi mi o to, że gdyby ci się nie udało, to potrzebowałbyś kogoś, kto będzie pamiętał wszystko za ciebie. Oprócz tego wiesz, jaki jestem bezużyteczny w walce - hmm, chyba że obrzucam obelgami jakiegoś maga…"'

    menu:
        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68178_condition():
            # a1465 # r68178
            jump morte_s736

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68189_condition():
            # a1466 # r68189
            $ morteLogic.r68189_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68190_condition():
            # a1467 # r68190
            $ morteLogic.r68190_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68191_condition():
            # a1468 # r68191
            $ morteLogic.r68191_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68192_condition():
            # a1469 # r68192
            $ morteLogic.r68192_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68193_condition():
            # a1470 # r68193
            $ morteLogic.r68193_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68194_condition():
            # a1471 # r68194
            $ morteLogic.r68194_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68239_condition():
            # a1472 # r68239
            $ morteLogic.r68239_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68438_condition():
            # a1473 # r68438
            $ morteLogic.r68438_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68439_condition():
            # a1474 # r68439
            $ morteLogic.r68439_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68446_condition():
            # a1475 # r68446
            $ morteLogic.r68446_action()
            jump morte_dispose

        '"Może właśnie do tego mi się przydasz. Porozmawiamy o tym *później,* Morte…"' if morteLogic.r68503_condition():
            # a1476 # r68503
            jump trans_s142  # EXTERN


# s736 # say68174
label morte_s736: # from 735.0
    nr 'Używasz swojej mocy jeszcze raz…'

    menu:
        'Wskrześ Annę.' if morteLogic.r68175_condition():
            # a1477 # r68175
            $ morteLogic.r68175_action()
            jump morte_dispose

        'Wskrześ Dak„kona.' if morteLogic.r68179_condition():
            # a1478 # r68179
            $ morteLogic.r68179_action()
            jump morte_dispose

        'Wskrześ Nie-Sławę.' if morteLogic.r68180_condition():
            # a1479 # r68180
            $ morteLogic.r68180_action()
            jump morte_dispose

        'Wskrześ Nordoma.' if morteLogic.r68181_condition():
            # a1480 # r68181
            $ morteLogic.r68181_action()
            jump morte_dispose

        'Wskrześ Ignusa.' if morteLogic.r68182_condition():
            # a1481 # r68182
            $ morteLogic.r68182_action()
            jump morte_dispose

        'Wskrześ Vhailora.' if morteLogic.r68183_condition():
            # a1482 # r68183
            $ morteLogic.r68183_action()
            jump morte_dispose


# s737 # say68310
label morte_s737: # - # IF WEIGHT #2 ~  Global("Fortress_Morte","GLOBAL",3) GlobalGT("Absorb","GLOBAL",0)
    nr 'Kiedy próbujesz użyć swojej mocy, Morte nagle wzlatuje w powietrze. "Ee… poczekaj, szefie. Nie musisz mnie wskrzeszać. Ja tylko, ee, tu sobie leżałem i słuchałem, o czym mówicie."'

    menu:
        '"UDAWAŁEŚ NIEŻYWEGO."':
            # a1483 # r68311
            jump morte_s738


# s738 # say68312
label morte_s738: # from 737.0
    nr '"Hmm, tak, to znaczy, przecież ja *już* nie żyję i… ee, szefie, co się stało z twoim *głosem?*"'

    menu:
        '"JESTEM TERAZ… CZYMŚ INNYM. CZASU JEST JUŻ CORAZ MNIEJ, I JUŻ WKRÓTCE PRZEZNACZENIE I CZAS MNIE DOSIĘGNĄ. JEŚLI CHCESZ, PRZENIOSĘ CIĘ Z POWROTEM DO SIGIL, MORTE."':
            # a1484 # r68313
            jump morte_s739


# s739 # say68314
label morte_s739: # from 738.0
    nr '"Co…? Przeniesiesz mnie? A co z *tobą*? Daj spokój, szefie, może i jestem *tchórzem*, ale za nic nie zostawię cię tutaj samego."'

    menu:
        '"WIELE ZBRODNI POPEŁNIONO, KIEDY MOJA ŚMIERTELNOŚĆ I JA BYLIŚMY ROZDZIELENI. ZA TE ZBRODNIE TRZEBA… ZAPŁACIĆ CENĘ. NIE MOŻESZ PÓJŚĆ TAM, GDZIE JA UDAM SIĘ JUŻ WKRÓTCE."':
            # a1485 # r68315
            jump morte_s740


# s740 # say68316
label morte_s740: # from 739.0
    nr '"Hmm, gdybyś chciał, to mimo wszystko *mógłbym* iść z tobą, szefie - przecież byliśmy w gorsz…"'

    menu:
        '"NIE TYM RAZEM. MOŻE PEWNEGO DNIA SPOTKAMY SIĘ JESZCZE RAZ, NA INNEJ SFERZE. ALE NIE TERAZ."':
            # a1486 # r68317
            jump morte_s741


# s741 # say68318
label morte_s741: # from 740.0
    nr 'Morte wpatruje się w ciebie przez chwilę, a potem wyrywa mu się westchnienie. "Nie chciałbym się rozczulać, ale było mi naprawdę bardzo miło, szefie."~ [MRT109]'

    menu:
        '"ŻEGNAJ, MORTE."' if morteLogic.r68319_condition():
            # a1487 # r68319
            $ morteLogic.r68319_action()
            jump morte_dispose

        '"ŻEGNAJ, MORTE."' if morteLogic.r68320_condition():
            # a1488 # r68320
            $ morteLogic.r68320_action()
            jump morte_dispose

        '"ŻEGNAJ, MORTE."' if morteLogic.r68321_condition():
            # a1489 # r68321
            $ morteLogic.r68321_action()
            jump morte_dispose

        '"ŻEGNAJ, MORTE."' if morteLogic.r68322_condition():
            # a1490 # r68322
            $ morteLogic.r68322_action()
            jump morte_dispose

        '"ŻEGNAJ, MORTE."' if morteLogic.r68323_condition():
            # a1491 # r68323
            $ morteLogic.r68323_action()
            jump morte_dispose

        '"ŻEGNAJ, MORTE."' if morteLogic.r68324_condition():
            # a1492 # r68324
            $ morteLogic.r68324_action()
            jump morte_dispose

        '"ŻEGNAJ, MORTE."' if morteLogic.r68325_condition():
            # a1493 # r68325
            $ morteLogic.r68325_action()
            jump morte_dispose

        '"ŻEGNAJ, MORTE."' if morteLogic.r68490_condition():
            # a1494 # r68490
            $ morteLogic.r68490_action()
            jump morte_dispose

        '"ŻEGNAJ, MORTE."' if morteLogic.r68491_condition():
            # a1495 # r68491
            $ morteLogic.r68491_action()
            jump morte_dispose

        '"ŻEGNAJ, MORTE."' if morteLogic.r68492_condition():
            # a1496 # r68492
            $ morteLogic.r68492_action()
            jump morte_dispose


# s742 # say68408
label morte_s742: # - # IF WEIGHT #3 ~  Global("Fortress_Morte","GLOBAL",4)
    nr 'Morte wpatruje się w ciebie przez chwilę, a potem wyrywa mu się westchnienie. "Nie chciałbym się rozczulać, ale było mi naprawdę bardzo miło, szefie."~ [MRT109]'

    menu:
        '"W takim razie przejdźmy do rzeczy…"':
            # a1497 # r68409
            jump morte_dispose
