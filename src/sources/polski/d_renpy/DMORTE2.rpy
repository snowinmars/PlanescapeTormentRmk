init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte2_logic import Morte2Logic
    morte2Logic = Morte2Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE2.DLG
# ###


# s0 # say41144
label morte2_s0: # - # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    nr '"Pssst… Mała rada, szefie: od tego miejsca lepiej być cicho - nie trzeba wpisywać do księgi umarłych zbyt wiele zombie… zwłaszcza zombic. A poza tym, jak ich pozabijamy, to ściągniemy sobie na głowy ich opiekunów."{#morte2_s0_}'

    menu:
        '"Chyba jeszcze o tym nie wspominałeś… *Kim* są ci opiekunowie?"{#morte2_s0_r41145}':
            # a0 # r41145
            $ morte2Logic.r41145_action()
            jump morte2_s1

        '"Skąd się tu wzięły te wszystkie trupy?"{#morte2_s0_r41146}':
            # a1 # r41146
            $ morte2Logic.r41146_action()
            jump morte2_s3

        '"Dlaczego tak się martwisz o zombice?"{#morte2_s0_r41147}':
            # a2 # r41147
            $ morte2Logic.r41147_action()
            jump morte2_s4

        '"Dobra… Postaram się… to wszystko spamiętać."{#morte2_s0_r41148}':
            # a3 # r41148
            $ morte2Logic.r41148_action()
            jump morte2_s8


# s1 # say41149
label morte2_s1: # from 0.0 3.0 7.0
    nr '"Nazywają siebie „Grabarzami“. Trudno ich nie rozpoznać: mają obsesję na punkcie czarnego koloru, a w dodatku ciągle mają śmiertelnie poważny wyraz twarzy. To zbzikowana banda wyznawców śmierci. Wierzą, że każdy powinien umrzeć… i to im szybciej, tym lepiej."{#morte2_s1_}'

    menu:
        '"Czegoś tu nie rozumiem… niby dlaczego ci Grabarze mieliby się przejmować moją ucieczką?"{#morte2_s1_r41150}':
            # a4 # r41150
            jump morte2_s2


# s2 # say41151
label morte2_s2: # from 1.0
    nr '"Czyżbyś mnie nie słuchał?! Powiedziałem, że Grabarze wyznają pogląd, iż KAŻDY powinien umrzeć, i to im szybciej, tym lepiej. Wydaje ci się, że wszystkie trupy, jakie widziałeś, są bardziej szczęśliwe w księdze umarłych niż poza nią?"{#morte2_s2_}'

    menu:
        '"Skąd się tu wzięły te wszystkie trupy?"{#morte2_s2_r41152}':
            # a5 # r41152
            jump morte2_s3

        '"Wspomniałeś coś o tym, żeby nie zabijać żadnych *zombic*. Dlaczego?"{#morte2_s2_r41153}':
            # a6 # r41153
            jump morte2_s4

        '"Dobra… Postaram się… o tym nie zapomnieć."{#morte2_s2_r41154}':
            # a7 # r41154
            jump morte2_s8


# s3 # say41155
label morte2_s3: # from 0.1 2.0 7.1
    nr '"Śmierć nawiedza Sfery każdego dnia. Te zombie to wszystko, co zostało z biednych skurli, którzy po śmierci sprzedali swoje ciała opiekunom."{#morte2_s3_}'

    menu:
        '"Oświeć mnie… *kim* są ci opiekunowie?"{#morte2_s3_r41156}':
            # a8 # r41156
            jump morte2_s1

        '"Wspomniałeś coś o tym, żeby nie zabijać żadnych *zombic*. Dlaczego?"{#morte2_s3_r41157}':
            # a9 # r41157
            jump morte2_s4

        '"Dobra… Postaram się… o tym nie zapomnieć."{#morte2_s3_r41158}':
            # a10 # r41158
            jump morte2_s8


# s4 # say41159
label morte2_s4: # from 0.2 2.1 3.1
    nr '"Co - mówisz *serio*? Te umarłe dzierlatki to ostatnia szansa dla takich śmiałków jak my. Musimy być *szlachetni*… a nie zarzynać je, żeby dostać jakieś klucze. Zapomnij o odcinaniu im nóg i tym podobnych sprawach."{#morte2_s4_}'

    menu:
        '"Ostatnia szansa? O czym ty bredzisz?"{#morte2_s4_r41160}':
            # a11 # r41160
            jump morte2_s5


# s5 # say41161
label morte2_s5: # from 4.0
    nr '"Szefie, ONE nie żyją, MY nie żyjemy… łapiesz, o co mi chodzi? Co?"{#morte2_s5_}'

    menu:
        '"Szczerze mówiąc, nie."{#morte2_s5_r41162}':
            # a12 # r41162
            jump morte2_s6

        '"Chyba żartujesz."{#morte2_s5_r41163}' if morte2Logic.r41163_condition():
            # a13 # r41163
            jump morte2_s6


# s6 # say41164
label morte2_s6: # from 5.0 5.1
    nr '"Szefie, mamy z tymi kuśtykającymi paniami coś wspólnego, więc może uda się nam z nimi coś wskórać. Przecież *każdy z nas* umarł przynajmniej raz, więc jest od czego zacząć. Docenią ludzi z takim doświadczeniem w sprawach śmierci jak my."{#morte2_s6_}'

    menu:
        '"Czekaj… czy nie mówiłeś, że ja *nie* jestem nieboszczykiem?"{#morte2_s6_r41165}':
            # a14 # r41165
            jump morte2_s7


# s7 # say41166
label morte2_s7: # from 6.0
    nr '"No dobra… może *ty* nie umarłeś, ale *ja* tak. A ja nie mam nic przeciwko dzieleniu trumny z jedną z tych niezłych, muskularnych nieboszczyc, które tu widzę." Morte zaczyna dzwonić zębami, jakby nie mógł się już doczekać. "Oczywiście najpierw trzeba byłoby takiego truposza wyrwać z rąk opiekunów, a szanse na to są znikome…"{#morte2_s7_}'

    menu:
        '"Kim są ci opiekunowie?"{#morte2_s7_r41167}':
            # a15 # r41167
            jump morte2_s1

        '"Ale skąd wzięły się te wszystkie ciała?"{#morte2_s7_r41168}':
            # a16 # r41168
            jump morte2_s3

        '"Dobra… Postaram się o tym pamiętać."{#morte2_s7_r41169}':
            # a17 # r41169
            jump morte2_s8


# s8 # say41170
label morte2_s8: # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    nr '"Słuchaj, szefie. To jasne, że nie doszedłeś jeszcze do siebie po pocałunku śmierci, mam więc dla ciebie dwie rady. Po pierwsze, jeśli masz jakieś pytania, to *pytaj*."  ^NNOTE: <SPEAKTO>^-{#morte2_s8_}'

    menu:
        '"Jasne… jak będę miał jakieś pytania, to pójdę z tym do ciebie."{#morte2_s8_r41171}':
            # a18 # r41171
            jump morte2_s9


# s9 # say41172
label morte2_s9: # from 8.0
    nr '"Po drugie, jeśli jesteś nawet w *połowie* tak roztargniony, na jakiego wyglądasz, to zacznij robić zapiski - jak tylko natkniesz się na coś, co może być ważne, zapisz to sobie, żebyś nie zapomniał."{#morte2_s9_}'

    menu:
        '"Gdybym miał ten dziennik, o którym napisano mi na plecach, to bym tak robił."{#morte2_s9_r41173}':
            # a19 # r41173
            jump morte2_s10


# s10 # say41174
label morte2_s10: # from 9.0
    nr '"W takim razie załóż sobie nowy. Żadna strata. Pergaminu i atramentu ci nie zabraknie."{#morte2_s10_}'

    menu:
        '"Hmmmm. Dobra. Przecież to nie będzie bolało… Zrobię sobie nowy."{#morte2_s10_r41175}':
            # a20 # r41175
            jump morte2_s11


# s11 # say41176
label morte2_s11: # from 10.0
    nr '"Użyj go do śledzenia swoich postępów. Jeśli zapomnisz o czymś ważnym, na przykład kim jesteś albo – co ważniejsze – kim *ja* jestem, otwórz go i odśwież sobie pamięć."  ^NNOTE: Aby otworzyć dziennik, wciśnij przycisk dziennika w szybkim menu. W trakcie gry dziennik będzie automatycznie uzupełniany.^-{#morte2_s11_}'

    menu:
        '"Dobra… łapię. Ruszajmy."{#morte2_s11_r41177}':
            # a21 # r41177
            $ morte2Logic.j39516_s11_r41177_action()
            jump morte2_dispose


# s12 # say41178
label morte2_s12: # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0 # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Co cię gryzie, szefie?"{#morte2_s12_}'

    menu:
        '"Czy możesz jeszcze raz przeczytać to, co mam wytatuowane na plecach?"{#morte2_s12_r41179}':
            # a22 # r41179
            jump morte2_s13

        '"Możesz powtórzyć, co to za miejsce?"{#morte2_s12_r41180}':
            # a23 # r41180
            jump morte2_s18

        '"To miejsce jest strasznie wielkie… Kto się tym zajmuje?"{#morte2_s12_r41181}' if morte2Logic.r41181_condition():
            # a24 # r41181
            jump morte2_s19

        '"Możesz powtórzyć, kto się opiekuje tym miejscem?"{#morte2_s12_r41182}' if morte2Logic.r41182_condition():
            # a25 # r41182
            jump morte2_s19

        '"Skąd się tu wzięły wszystkie te ciała?"{#morte2_s12_r41183}':
            # a26 # r41183
            jump morte2_s22

        '"Wspomniałeś coś o tym, żeby nie zabijać żadnych *zombic*. Dlaczego?"{#morte2_s12_r41184}' if morte2Logic.r41184_condition():
            # a27 # r41184
            jump morte2_s23

        '"Jak mam użyć tych bandaży?"{#morte2_s12_r41185}' if morte2Logic.r41185_condition():
            # a28 # r41185
            jump morte2_s21

        '"Nic takiego, Morte. Po prostu sprawdzam, czy wciąż ze mną jesteś."{#morte2_s12_r41186}' if morte2Logic.r41186_condition():
            # a29 # r41186
            jump morte2_s8

        '"Nic takiego, Morte. Po prostu sprawdzam, czy wciąż ze mną jesteś."{#morte2_s12_r41187}' if morte2Logic.r41187_condition():
            # a30 # r41187
            jump morte2_dispose


# s13 # say41188
label morte2_s13: # from 12.0
    nr '"Daj spokój, szefie. Tylko mi nie mów, że już zdążyłeś zapomnieć."{#morte2_s13_}'

    menu:
        '"Muszę tylko odświeżyć sobie pamięć."{#morte2_s13_r41189}':
            # a31 # r41189
            jump morte2_s14

        '"Mniejsza z tym. Mam jeszcze kilka innych pytań…"{#morte2_s13_r41190}':
            # a32 # r41190
            jump morte2_s12

        '"W takim razie zapomnij o tym. Ruszajmy."{#morte2_s13_r41191}' if morte2Logic.r41191_condition():
            # a33 # r41191
            jump morte2_s8

        '"W takim razie zapomnij o tym. Ruszajmy."{#morte2_s13_r41192}' if morte2Logic.r41192_condition():
            # a34 # r41192
            jump morte2_dispose


# s14 # say41193
label morte2_s14: # from 13.0
    nr '"Założę się, że jeszcze nie raz to usłyszę." Morte chrząka znacząco. "Zobaczmy…"  „Wiem że czujesz się, jakbyś władował w siebie kilka baryłek wody ze Styksu, ale musisz się wziąć w GARŚĆ. Masz przy sobie DZIENNIK, który powinien trochę rozjaśnić sprawę. Resztę śpiewki usłyszysz od FARODA, chyba że już go wpisali do księgi umarłych.“{#morte2_s14_}'

    menu:
        '"Farod… hmmmm. Kontynuuj."{#morte2_s14_r41194}':
            # a35 # r41194
            jump morte2_s15

        '"Nieważne. Mam jeszcze kilka pytań…"{#morte2_s14_r41195}':
            # a36 # r41195
            jump morte2_s12

        '"Zapomnij o tym. Już dość mi powiedziałeś. Ruszajmy."{#morte2_s14_r41196}' if morte2Logic.r41196_condition():
            # a37 # r41196
            jump morte2_s8

        '"Zapomnij o tym. Już dość mi powiedziałeś. Ruszajmy."{#morte2_s14_r41197}' if morte2Logic.r41197_condition():
            # a38 # r41197
            jump morte2_dispose


# s15 # say41198
label morte2_s15: # from 14.0
    nr '"Dobrze, dobrze, poczekaj." Morte przerywa na chwilę. "Dobra, to jest ostatnia część…"  „Nie zgub dziennika, bo znowu popłyniemy w górę Styksu. I cokolwiek robisz, NIE MÓW nikomu KIM jesteś, ani CO się z tobą dzieje, bo inaczej wylądujesz w krematorium. Rób co ci każę: PRZECZYTAJ dziennik, a potem ODSZUKAJ Faroda.“{#morte2_s15_}'

    menu:
        '"Kiedy się obudziłem, nie było przy mnie jakiegoś dziennika?"{#morte2_s15_r41199}':
            # a39 # r41199
            jump morte2_s16

        '"Nieważne. Mam jeszcze kilka pytań…"{#morte2_s15_r41200}':
            # a40 # r41200
            jump morte2_s12

        '"Zapomnij o tym. Już dość mi powiedziałeś. Ruszajmy."{#morte2_s15_r41201}' if morte2Logic.r41201_condition():
            # a41 # r41201
            jump morte2_s8

        '"Zapomnij o tym. Już dość mi powiedziałeś. Ruszajmy."{#morte2_s15_r41203}' if morte2Logic.r41203_condition():
            # a42 # r41203
            jump morte2_dispose


# s16 # say41202
label morte2_s16: # from 15.0
    nr '"Nie… jak tu przybyłeś, nie miałeś na sobie żadnego ubrania. A tak poza tym, wygląda na to, że ktoś wypisał ci ten dziennik na skórze."{#morte2_s16_}'

    menu:
        '"Na pewno nie znasz nikogo o imieniu Farod?"{#morte2_s16_r41204}':
            # a43 # r41204
            jump morte2_s17

        '"Mam jeszcze kilka innych pytań…"{#morte2_s16_r41205}':
            # a44 # r41205
            jump morte2_s12

        '"Rozumiem. Ruszajmy."{#morte2_s16_r41206}' if morte2Logic.r41206_condition():
            # a45 # r41206
            jump morte2_s8

        '"Rozumiem. Ruszajmy."{#morte2_s16_r41207}' if morte2Logic.r41207_condition():
            # a46 # r41207
            jump morte2_dispose


# s17 # say41208
label morte2_s17: # from 16.0
    nr '"Nie. Choć jakiś trep powinien wiedzieć, gdzie go można znaleźć. Popytajmy wkoło… JAK JUŻ się stąd wydostaniemy."{#morte2_s17_}'

    menu:
        '"Zanim ruszymy dalej, mam do ciebie kilka pytań…"{#morte2_s17_r41209}':
            # a47 # r41209
            jump morte2_s12

        '"Rozumiem. Ruszajmy."{#morte2_s17_r41210}' if morte2Logic.r41210_condition():
            # a48 # r41210
            jump morte2_s8

        '"Rozumiem. Ruszajmy."{#morte2_s17_r41211}' if morte2Logic.r41211_condition():
            # a49 # r41211
            jump morte2_dispose


# s18 # say41212
label morte2_s18: # from 12.1
    nr '"To „Kostnica“… wielka, czarna budowla o uroku ciężarnej pajęczycy."{#morte2_s18_}'

    menu:
        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"{#morte2_s18_r41213}':
            # a50 # r41213
            jump morte2_s12

        '"Tylko to było mi potrzebne. Dzięki."{#morte2_s18_r41214}' if morte2Logic.r41214_condition():
            # a51 # r41214
            jump morte2_s8

        '"Tylko to było mi potrzebne. Dzięki."{#morte2_s18_r41215}' if morte2Logic.r41215_condition():
            # a52 # r41215
            jump morte2_dispose


# s19 # say41216
label morte2_s19: # from 12.2 12.3
    nr '"Nazywają siebie „Grabarzami“. Trudno ich nie rozpoznać: mają obsesję na punkcie czarnego koloru, a w dodatku ciągle mają śmiertelnie poważny wyraz twarzy. To zaprzała banda wyznawców śmierci. Wierzą, że każdy powinien umrzeć… i to im szybciej, tym lepiej."{#morte2_s19_}'

    menu:
        '"Czegoś tu nie rozumiem… niby dlaczego ci Grabarze mieliby się przejmować moją ucieczką?"{#morte2_s19_r41217}':
            # a53 # r41217
            jump morte2_s20

        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"{#morte2_s19_r41218}':
            # a54 # r41218
            jump morte2_s12

        '"Rozumiem. W takim razie będę uważać."{#morte2_s19_r41219}' if morte2Logic.r41219_condition():
            # a55 # r41219
            jump morte2_s8

        '"Rozumiem. W takim razie będę uważać."{#morte2_s19_r41220}' if morte2Logic.r41220_condition():
            # a56 # r41220
            jump morte2_dispose


# s20 # say41221
label morte2_s20: # from 19.0
    nr '"Czyżbyś mnie nie słuchał?! Powiedziałem, że Grabarze wyznają pogląd, że KAŻDY powinien umrzeć, i to im szybciej, tym lepiej. Wydaje ci się, że wszystkie trupy, jakie widziałeś, są bardziej szczęśliwe w księdze umarłych niż poza nią?"{#morte2_s20_}'

    menu:
        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"{#morte2_s20_r41222}':
            # a57 # r41222
            jump morte2_s12

        '"Dobra… Postaram się… o tym nie zapomnieć."{#morte2_s20_r41223}' if morte2Logic.r41223_condition():
            # a58 # r41223
            jump morte2_s8

        '"Dobra… Postaram się… o tym nie zapomnieć."{#morte2_s20_r41224}' if morte2Logic.r41224_condition():
            # a59 # r41224
            jump morte2_dispose


# s21 # say41225
label morte2_s21: # from 12.6
    nr '"Tak jakby… ich *używasz*. Do tamowania krwawienia i innych takich."  ^NNOTE: <BANDAGES2>^-{#morte2_s21_}'

    menu:
        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"{#morte2_s21_r41226}':
            # a60 # r41226
            jump morte2_s12

        '"Dzięki. Chyba sobie poradzę."{#morte2_s21_r41227}' if morte2Logic.r41227_condition():
            # a61 # r41227
            jump morte2_s8

        '"Dzięki. Chyba sobie poradzę."{#morte2_s21_r41228}' if morte2Logic.r41228_condition():
            # a62 # r41228
            jump morte2_dispose


# s22 # say41229
label morte2_s22: # from 12.4
    nr '"Śmierć nawiedza Sfery każdego dnia. Te zombie to wszystko, co zostało z biednych skurli, którzy po śmierci sprzedali swoje ciała opiekunom."{#morte2_s22_}'

    menu:
        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"{#morte2_s22_r41230}':
            # a63 # r41230
            jump morte2_s12

        '"Dobra… Postaram się… o tym nie zapomnieć."{#morte2_s22_r41231}' if morte2Logic.r41231_condition():
            # a64 # r41231
            jump morte2_s8

        '"Dobra… Postaram się… o tym nie zapomnieć."{#morte2_s22_r41232}' if morte2Logic.r41232_condition():
            # a65 # r41232
            jump morte2_dispose


# s23 # say41233
label morte2_s23: # from 12.5
    nr '"Co - mówisz *serio*? Te umarłe dzierlatki to ostatnia szansa dla takich śmiałków jak my. Musimy być *szlachetni*… a nie zarzynać ich, żeby dostać jakieś klucze. Zapomnij o odcinaniu im nóg i tym podobnych sprawach."{#morte2_s23_}'

    menu:
        '"Ostatnia szansa? O czym ty gadasz?"{#morte2_s23_r41234}':
            # a66 # r41234
            jump morte2_s24

        '"Mniejsza z tym. Mam jeszcze kilka innych pytań…"{#morte2_s23_r41235}':
            # a67 # r41235
            jump morte2_s12

        '"Dobra… Postaram się… o tym nie zapomnieć."{#morte2_s23_r41236}':
            # a68 # r41236
            jump morte2_dispose


# s24 # say41237
label morte2_s24: # from 23.0
    nr '"Szefie, ONE nie żyją, MY nie żyjemy… łapiesz, o co mi chodzi? Co?"{#morte2_s24_}'

    menu:
        '"Tak w sumie, to nie."{#morte2_s24_r41238}':
            # a69 # r41238
            jump morte2_s25

        '"Chyba nie mówisz tego poważnie?"{#morte2_s24_r41239}' if morte2Logic.r41239_condition():
            # a70 # r41239
            jump morte2_s25

        '"Mniejsza z tym. Mam jeszcze kilka innych pytań…"{#morte2_s24_r41240}':
            # a71 # r41240
            jump morte2_s12

        '"Już wystarczająco dużo mi powiedziałeś. Ruszajmy."{#morte2_s24_r41241}':
            # a72 # r41241
            jump morte2_dispose


# s25 # say41242
label morte2_s25: # from 24.0 24.1
    nr '"Szefie, mamy z tymi kuśtykającymi paniami coś wspólnego, więc może uda się nam z nimi coś wskórać. Przecież *każdy z nas* umarł przynajmniej raz, więc jest od czego zacząć. Docenią ludzi z takim doświadczeniem w sprawach śmierci, jak my."{#morte2_s25_}'

    menu:
        '"Czekaj… czy nie mówiłeś, że ja *nie* jestem nieboszczykiem?"{#morte2_s25_r41243}':
            # a73 # r41243
            jump morte2_s26

        '"Mniejsza z tym. Mam jeszcze kilka innych pytań…"{#morte2_s25_r41244}':
            # a74 # r41244
            jump morte2_s12

        '"Już wystarczająco dużo mi powiedziałeś. Ruszajmy."{#morte2_s25_r41245}':
            # a75 # r41245
            jump morte2_dispose


# s26 # say41246
label morte2_s26: # from 25.0
    nr '"No dobra… może *ty* nie umarłeś, ale *ja* tak. A ja nie mam nic przeciwko dzieleniu trumny z jedną z tych niezłych, muskularnych nieboszczyc, które tu widzę." Morte zaczyna dzwonić zębami, jakby nie mógł się już doczekać. "Oczywiście najpierw trzeba byłoby takiego truposza wyrwać z rąk opiekunów, a szanse na to są znikome…"{#morte2_s26_}'

    menu:
        '"Mam do ciebie jeszcze kilka pytań, Morte…"{#morte2_s26_r41247}':
            # a76 # r41247
            jump morte2_s12

        '"Już wystarczająco dużo mi powiedziałeś. Ruszajmy."{#morte2_s26_r41248}':
            # a77 # r41248
            jump morte2_dispose


# s27 # say41250
label morte2_s27: # - # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    nr '"Wiedziałem że wrócisz, szefie! W końcu zdałeś sobie sprawę, że jestem ci potrzebny, co?"{#morte2_s27_}'

    menu:
        '"Jasne… ruszajmy."{#morte2_s27_r41251}':
            # a78 # r41251
            $ morte2Logic.r41251_action()
            jump morte2_dispose

        '"Nie teraz, Morte."{#morte2_s27_r41252}':
            # a79 # r41252
            jump morte2_s28


# s28 # say41253
label morte2_s28: # from 27.1
    nr '"Hmmmm. Nie wiem, czy mnie tu jeszcze zastaniesz, ale dam ci jeszcze OSTATNIĄ szansę. Na pewno nie potrzebujesz moich wskazówek i mojego sprytu?"{#morte2_s28_}'

    menu:
        '"Morte, przecież nie masz ŻADNEJ z tych rzeczy."{#morte2_s28_r41254}':
            # a80 # r41254
            jump morte2_s29

        '"No dobra, zmieniłem zdanie. Ruszajmy."{#morte2_s28_r41255}':
            # a81 # r41255
            $ morte2Logic.r41255_action()
            jump morte2_dispose

        '"Nie teraz, Morte. Może później."{#morte2_s28_r41256}':
            # a82 # r41256
            jump morte2_s29


# s29 # say41257
label morte2_s29: # from 28.0 28.2
    nr '"Chcesz obrazić moje uczucia, szefie? Czyżbym coś powiedział nie tak? A może przeszkadza ci, że nie mam rąk? Co?"{#morte2_s29_}'

    menu:
        '"No dobra, zmieniłem zdanie. Ruszajmy."{#morte2_s29_r41258}':
            # a83 # r41258
            $ morte2Logic.r41258_action()
            jump morte2_dispose

        '"Ależ skądże. Po prostu nie potrzebuję teraz towarzystwa. Żegnaj, Morte."{#morte2_s29_r41259}':
            # a84 # r41259
            jump morte2_s30


# s30 # say41260
label morte2_s30: # from 29.1
    nr '"No cóż, nie będę czekał w NIESKOŃCZONOŚĆ, więc lepiej wróć jak tylko zmienisz zdanie."{#morte2_s30_}'

    menu:
        '"Dobrze. Żegnaj, Morte."{#morte2_s30_r41261}':
            # a85 # r41261
            jump morte2_dispose


# s31 # say41262
label morte2_s31: # - # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Na wielkie moce. To dopiero księga."{#morte2_s31_}'

    menu:
        '"Co to jest?"{#morte2_s31_r41263}':
            # a86 # r41263
            $ morte2Logic.r41263_action()
            jump morte2_s32


# s32 # say41264
label morte2_s32: # from 31.0
    nr '"Jakbym miał zgadywać, powiedziałbym, że to księga, w której zapisują imiona wszystkich biednych trepów, którzy mieli pecha, żeby się tu znaleźć."{#morte2_s32_}'

    menu:
        '"Czy moje imię też tam jest?"{#morte2_s32_r41265}':
            # a87 # r41265
            jump morte2_s33


# s33 # say41266
label morte2_s33: # from 32.0
    nr '"Hmm… no cóż… *chyba* tak. Jak chcesz się dowiedzieć, musisz trochę pokłapać jadaczką z tamtym lewitującym Grabarzem. Choć nie wiem, czy to dobry pomysł."{#morte2_s33_}'

    menu:
        '"Ktoś musi mi wyjaśnić kilka rzeczy. Muszę z nim porozmawiać."{#morte2_s33_r41267}':
            # a88 # r41267
            jump morte2_dispose
