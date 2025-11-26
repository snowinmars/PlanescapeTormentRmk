init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte2_logic import Morte2Logic
    morte2Logic = Morte2Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE2.DLG
# ###


# s0 # say41144
label morte2_s0: # - # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    nr '"Pssst… Mała rada, szefie: od tego miejsca lepiej być cicho - nie trzeba wpisywać do księgi umarłych zbyt wiele zombie… zwłaszcza zombic. A poza tym, jak ich pozabijamy, to ściągniemy sobie na głowy ich opiekunów."'

    menu:
        '"Chyba jeszcze o tym nie wspominałeś… *Kim* są ci opiekunowie?"':
            # a0 # r41145
            $ morte2Logic.r41145_action()
            jump morte2_s1

        '"Skąd się tu wzięły te wszystkie trupy?"':
            # a1 # r41146
            $ morte2Logic.r41146_action()
            jump morte2_s3

        '"Dlaczego tak się martwisz o zombice?"':
            # a2 # r41147
            $ morte2Logic.r41147_action()
            jump morte2_s4

        '"Dobra… Postaram się… to wszystko spamiętać."':
            # a3 # r41148
            $ morte2Logic.r41148_action()
            jump morte2_s8


# s1 # say41149
label morte2_s1: # from 0.0 3.0 7.0
    nr '"Nazywają siebie „Grabarzami“. Trudno ich nie rozpoznać: mają obsesję na punkcie czarnego koloru, a w dodatku ciągle mają śmiertelnie poważny wyraz twarzy. To zbzikowana banda wyznawców śmierci. Wierzą, że każdy powinien umrzeć… i to im szybciej, tym lepiej."'

    menu:
        '"Czegoś tu nie rozumiem… niby dlaczego ci Grabarze mieliby się przejmować moją ucieczką?"':
            # a4 # r41150
            jump morte2_s2


# s2 # say41151
label morte2_s2: # from 1.0
    nr '"Czyżbyś mnie nie słuchał?! Powiedziałem, że Grabarze wyznają pogląd, iż KAŻDY powinien umrzeć, i to im szybciej, tym lepiej. Wydaje ci się, że wszystkie trupy, jakie widziałeś, są bardziej szczęśliwe w księdze umarłych niż poza nią?"'

    menu:
        '"Skąd się tu wzięły te wszystkie trupy?"':
            # a5 # r41152
            jump morte2_s3

        '"Wspomniałeś coś o tym, żeby nie zabijać żadnych *zombic*. Dlaczego?"':
            # a6 # r41153
            jump morte2_s4

        '"Dobra… Postaram się… o tym nie zapomnieć."':
            # a7 # r41154
            jump morte2_s8


# s3 # say41155
label morte2_s3: # from 0.1 2.0 7.1
    nr '"Śmierć nawiedza Sfery każdego dnia. Te zombie to wszystko, co zostało z biednych skurli, którzy po śmierci sprzedali swoje ciała opiekunom."'

    menu:
        '"Oświeć mnie… *kim* są ci opiekunowie?"':
            # a8 # r41156
            jump morte2_s1

        '"Wspomniałeś coś o tym, żeby nie zabijać żadnych *zombic*. Dlaczego?"':
            # a9 # r41157
            jump morte2_s4

        '"Dobra… Postaram się… o tym nie zapomnieć."':
            # a10 # r41158
            jump morte2_s8


# s4 # say41159
label morte2_s4: # from 0.2 2.1 3.1
    nr '"Co - mówisz *serio*? Te umarłe dzierlatki to ostatnia szansa dla takich śmiałków jak my. Musimy być *szlachetni*… a nie zarzynać je, żeby dostać jakieś klucze. Zapomnij o odcinaniu im nóg i tym podobnych sprawach."'

    menu:
        '"Ostatnia szansa? O czym ty bredzisz?"':
            # a11 # r41160
            jump morte2_s5


# s5 # say41161
label morte2_s5: # from 4.0
    nr '"Szefie, ONE nie żyją, MY nie żyjemy… łapiesz, o co mi chodzi? Co?"'

    menu:
        '"Szczerze mówiąc, nie."':
            # a12 # r41162
            jump morte2_s6

        '"Chyba żartujesz."' if morte2Logic.r41163_condition():
            # a13 # r41163
            jump morte2_s6


# s6 # say41164
label morte2_s6: # from 5.0 5.1
    nr '"Szefie, mamy z tymi kuśtykającymi paniami coś wspólnego, więc może uda się nam z nimi coś wskórać. Przecież *każdy z nas* umarł przynajmniej raz, więc jest od czego zacząć. Docenią ludzi z takim doświadczeniem w sprawach śmierci jak my."'

    menu:
        '"Czekaj… czy nie mówiłeś, że ja *nie* jestem nieboszczykiem?"':
            # a14 # r41165
            jump morte2_s7


# s7 # say41166
label morte2_s7: # from 6.0
    nr '"No dobra… może *ty* nie umarłeś, ale *ja* tak. A ja nie mam nic przeciwko dzieleniu trumny z jedną z tych niezłych, muskularnych nieboszczyc, które tu widzę." Morte zaczyna dzwonić zębami, jakby nie mógł się już doczekać. "Oczywiście najpierw trzeba byłoby takiego truposza wyrwać z rąk opiekunów, a szanse na to są znikome…"'

    menu:
        '"Kim są ci opiekunowie?"':
            # a15 # r41167
            jump morte2_s1

        '"Ale skąd wzięły się te wszystkie ciała?"':
            # a16 # r41168
            jump morte2_s3

        '"Dobra… Postaram się o tym pamiętać."':
            # a17 # r41169
            jump morte2_s8


# s8 # say41170
label morte2_s8: # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    nr '"Słuchaj, szefie. To jasne, że nie doszedłeś jeszcze do siebie po pocałunku śmierci, mam więc dla ciebie dwie rady. Po pierwsze, jeśli masz jakieś pytania, to *pytaj*."  ^NNOTE: <SPEAKTO>^-'

    menu:
        '"Jasne… jak będę miał jakieś pytania, to pójdę z tym do ciebie."':
            # a18 # r41171
            jump morte2_s9


# s9 # say41172
label morte2_s9: # from 8.0
    nr '"Po drugie, jeśli jesteś nawet w *połowie* tak roztargniony, na jakiego wyglądasz, to zacznij robić zapiski - jak tylko natkniesz się na coś, co może być ważne, zapisz to sobie, żebyś nie zapomniał."'

    menu:
        '"Gdybym miał ten dziennik, o którym napisano mi na plecach, to bym tak robił."':
            # a19 # r41173
            jump morte2_s10


# s10 # say41174
label morte2_s10: # from 9.0
    nr '"W takim razie załóż sobie nowy. Żadna strata. Pergaminu i atramentu ci nie zabraknie."'

    menu:
        '"Hmmmm. Dobra. Przecież to nie będzie bolało… Zrobię sobie nowy."':
            # a20 # r41175
            jump morte2_s11


# s11 # say41176
label morte2_s11: # from 10.0
    nr '"Użyj go do śledzenia swoich postępów. Jeśli zapomnisz o czymś ważnym, na przykład kim jesteś albo – co ważniejsze – kim *ja* jestem, otwórz go i odśwież sobie pamięć."  ^NNOTE: Aby otworzyć dziennik, wciśnij przycisk dziennika w szybkim menu. W trakcie gry dziennik będzie automatycznie uzupełniany.^-'

    menu:
        '"Dobra… łapię. Ruszajmy."':
            # a21 # r41177
            $ morte2Logic.j39516_s11_r41177_action()
            jump morte2_dispose


# s12 # say41178
label morte2_s12: # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0 # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Co cię gryzie, szefie?"'

    menu:
        '"Czy możesz jeszcze raz przeczytać to, co mam wytatuowane na plecach?"':
            # a22 # r41179
            jump morte2_s13

        '"Możesz powtórzyć, co to za miejsce?"':
            # a23 # r41180
            jump morte2_s18

        '"To miejsce jest strasznie wielkie… Kto się tym zajmuje?"' if morte2Logic.r41181_condition():
            # a24 # r41181
            jump morte2_s19

        '"Możesz powtórzyć, kto się opiekuje tym miejscem?"' if morte2Logic.r41182_condition():
            # a25 # r41182
            jump morte2_s19

        '"Skąd się tu wzięły wszystkie te ciała?"':
            # a26 # r41183
            jump morte2_s22

        '"Wspomniałeś coś o tym, żeby nie zabijać żadnych *zombic*. Dlaczego?"' if morte2Logic.r41184_condition():
            # a27 # r41184
            jump morte2_s23

        '"Jak mam użyć tych bandaży?"' if morte2Logic.r41185_condition():
            # a28 # r41185
            jump morte2_s21

        '"Nic takiego, Morte. Po prostu sprawdzam, czy wciąż ze mną jesteś."' if morte2Logic.r41186_condition():
            # a29 # r41186
            jump morte2_s8

        '"Nic takiego, Morte. Po prostu sprawdzam, czy wciąż ze mną jesteś."' if morte2Logic.r41187_condition():
            # a30 # r41187
            jump morte2_dispose


# s13 # say41188
label morte2_s13: # from 12.0
    nr '"Daj spokój, szefie. Tylko mi nie mów, że już zdążyłeś zapomnieć."'

    menu:
        '"Muszę tylko odświeżyć sobie pamięć."':
            # a31 # r41189
            jump morte2_s14

        '"Mniejsza z tym. Mam jeszcze kilka innych pytań…"':
            # a32 # r41190
            jump morte2_s12

        '"W takim razie zapomnij o tym. Ruszajmy."' if morte2Logic.r41191_condition():
            # a33 # r41191
            jump morte2_s8

        '"W takim razie zapomnij o tym. Ruszajmy."' if morte2Logic.r41192_condition():
            # a34 # r41192
            jump morte2_dispose


# s14 # say41193
label morte2_s14: # from 13.0
    nr '"Założę się, że jeszcze nie raz to usłyszę." Morte chrząka znacząco. "Zobaczmy…"  „Wiem że czujesz się, jakbyś władował w siebie kilka baryłek wody ze Styksu, ale musisz się wziąć w GARŚĆ. Masz przy sobie DZIENNIK, który powinien trochę rozjaśnić sprawę. Resztę śpiewki usłyszysz od FARODA, chyba że już go wpisali do księgi umarłych.“'

    menu:
        '"Farod… hmmmm. Kontynuuj."':
            # a35 # r41194
            jump morte2_s15

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a36 # r41195
            jump morte2_s12

        '"Zapomnij o tym. Już dość mi powiedziałeś. Ruszajmy."' if morte2Logic.r41196_condition():
            # a37 # r41196
            jump morte2_s8

        '"Zapomnij o tym. Już dość mi powiedziałeś. Ruszajmy."' if morte2Logic.r41197_condition():
            # a38 # r41197
            jump morte2_dispose


# s15 # say41198
label morte2_s15: # from 14.0
    nr '"Dobrze, dobrze, poczekaj." Morte przerywa na chwilę. "Dobra, to jest ostatnia część…"  „Nie zgub dziennika, bo znowu popłyniemy w górę Styksu. I cokolwiek robisz, NIE MÓW nikomu KIM jesteś, ani CO się z tobą dzieje, bo inaczej wylądujesz w krematorium. Rób co ci każę: PRZECZYTAJ dziennik, a potem ODSZUKAJ Faroda.“'

    menu:
        '"Kiedy się obudziłem, nie było przy mnie jakiegoś dziennika?"':
            # a39 # r41199
            jump morte2_s16

        '"Nieważne. Mam jeszcze kilka pytań…"':
            # a40 # r41200
            jump morte2_s12

        '"Zapomnij o tym. Już dość mi powiedziałeś. Ruszajmy."' if morte2Logic.r41201_condition():
            # a41 # r41201
            jump morte2_s8

        '"Zapomnij o tym. Już dość mi powiedziałeś. Ruszajmy."' if morte2Logic.r41203_condition():
            # a42 # r41203
            jump morte2_dispose


# s16 # say41202
label morte2_s16: # from 15.0
    nr '"Nie… jak tu przybyłeś, nie miałeś na sobie żadnego ubrania. A tak poza tym, wygląda na to, że ktoś wypisał ci ten dziennik na skórze."'

    menu:
        '"Na pewno nie znasz nikogo o imieniu Farod?"':
            # a43 # r41204
            jump morte2_s17

        '"Mam jeszcze kilka innych pytań…"':
            # a44 # r41205
            jump morte2_s12

        '"Rozumiem. Ruszajmy."' if morte2Logic.r41206_condition():
            # a45 # r41206
            jump morte2_s8

        '"Rozumiem. Ruszajmy."' if morte2Logic.r41207_condition():
            # a46 # r41207
            jump morte2_dispose


# s17 # say41208
label morte2_s17: # from 16.0
    nr '"Nie. Choć jakiś trep powinien wiedzieć, gdzie go można znaleźć. Popytajmy wkoło… JAK JUŻ się stąd wydostaniemy."'

    menu:
        '"Zanim ruszymy dalej, mam do ciebie kilka pytań…"':
            # a47 # r41209
            jump morte2_s12

        '"Rozumiem. Ruszajmy."' if morte2Logic.r41210_condition():
            # a48 # r41210
            jump morte2_s8

        '"Rozumiem. Ruszajmy."' if morte2Logic.r41211_condition():
            # a49 # r41211
            jump morte2_dispose


# s18 # say41212
label morte2_s18: # from 12.1
    nr '"To „Kostnica“… wielka, czarna budowla o uroku ciężarnej pajęczycy."'

    menu:
        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"':
            # a50 # r41213
            jump morte2_s12

        '"Tylko to było mi potrzebne. Dzięki."' if morte2Logic.r41214_condition():
            # a51 # r41214
            jump morte2_s8

        '"Tylko to było mi potrzebne. Dzięki."' if morte2Logic.r41215_condition():
            # a52 # r41215
            jump morte2_dispose


# s19 # say41216
label morte2_s19: # from 12.2 12.3
    nr '"Nazywają siebie „Grabarzami“. Trudno ich nie rozpoznać: mają obsesję na punkcie czarnego koloru, a w dodatku ciągle mają śmiertelnie poważny wyraz twarzy. To zaprzała banda wyznawców śmierci. Wierzą, że każdy powinien umrzeć… i to im szybciej, tym lepiej."'

    menu:
        '"Czegoś tu nie rozumiem… niby dlaczego ci Grabarze mieliby się przejmować moją ucieczką?"':
            # a53 # r41217
            jump morte2_s20

        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"':
            # a54 # r41218
            jump morte2_s12

        '"Rozumiem. W takim razie będę uważać."' if morte2Logic.r41219_condition():
            # a55 # r41219
            jump morte2_s8

        '"Rozumiem. W takim razie będę uważać."' if morte2Logic.r41220_condition():
            # a56 # r41220
            jump morte2_dispose


# s20 # say41221
label morte2_s20: # from 19.0
    nr '"Czyżbyś mnie nie słuchał?! Powiedziałem, że Grabarze wyznają pogląd, że KAŻDY powinien umrzeć, i to im szybciej, tym lepiej. Wydaje ci się, że wszystkie trupy, jakie widziałeś, są bardziej szczęśliwe w księdze umarłych niż poza nią?"'

    menu:
        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"':
            # a57 # r41222
            jump morte2_s12

        '"Dobra… Postaram się… o tym nie zapomnieć."' if morte2Logic.r41223_condition():
            # a58 # r41223
            jump morte2_s8

        '"Dobra… Postaram się… o tym nie zapomnieć."' if morte2Logic.r41224_condition():
            # a59 # r41224
            jump morte2_dispose


# s21 # say41225
label morte2_s21: # from 12.6
    nr '"Tak jakby… ich *używasz*. Do tamowania krwawienia i innych takich."  ^NNOTE: <BANDAGES2>^-'

    menu:
        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"':
            # a60 # r41226
            jump morte2_s12

        '"Dzięki. Chyba sobie poradzę."' if morte2Logic.r41227_condition():
            # a61 # r41227
            jump morte2_s8

        '"Dzięki. Chyba sobie poradzę."' if morte2Logic.r41228_condition():
            # a62 # r41228
            jump morte2_dispose


# s22 # say41229
label morte2_s22: # from 12.4
    nr '"Śmierć nawiedza Sfery każdego dnia. Te zombie to wszystko, co zostało z biednych skurli, którzy po śmierci sprzedali swoje ciała opiekunom."'

    menu:
        '"Rozumiem. Mam do ciebie jeszcze parę pytań…"':
            # a63 # r41230
            jump morte2_s12

        '"Dobra… Postaram się… o tym nie zapomnieć."' if morte2Logic.r41231_condition():
            # a64 # r41231
            jump morte2_s8

        '"Dobra… Postaram się… o tym nie zapomnieć."' if morte2Logic.r41232_condition():
            # a65 # r41232
            jump morte2_dispose


# s23 # say41233
label morte2_s23: # from 12.5
    nr '"Co - mówisz *serio*? Te umarłe dzierlatki to ostatnia szansa dla takich śmiałków jak my. Musimy być *szlachetni*… a nie zarzynać ich, żeby dostać jakieś klucze. Zapomnij o odcinaniu im nóg i tym podobnych sprawach."'

    menu:
        '"Ostatnia szansa? O czym ty gadasz?"':
            # a66 # r41234
            jump morte2_s24

        '"Mniejsza z tym. Mam jeszcze kilka innych pytań…"':
            # a67 # r41235
            jump morte2_s12

        '"Dobra… Postaram się… o tym nie zapomnieć."':
            # a68 # r41236
            jump morte2_dispose


# s24 # say41237
label morte2_s24: # from 23.0
    nr '"Szefie, ONE nie żyją, MY nie żyjemy… łapiesz, o co mi chodzi? Co?"'

    menu:
        '"Tak w sumie, to nie."':
            # a69 # r41238
            jump morte2_s25

        '"Chyba nie mówisz tego poważnie?"' if morte2Logic.r41239_condition():
            # a70 # r41239
            jump morte2_s25

        '"Mniejsza z tym. Mam jeszcze kilka innych pytań…"':
            # a71 # r41240
            jump morte2_s12

        '"Już wystarczająco dużo mi powiedziałeś. Ruszajmy."':
            # a72 # r41241
            jump morte2_dispose


# s25 # say41242
label morte2_s25: # from 24.0 24.1
    nr '"Szefie, mamy z tymi kuśtykającymi paniami coś wspólnego, więc może uda się nam z nimi coś wskórać. Przecież *każdy z nas* umarł przynajmniej raz, więc jest od czego zacząć. Docenią ludzi z takim doświadczeniem w sprawach śmierci, jak my."'

    menu:
        '"Czekaj… czy nie mówiłeś, że ja *nie* jestem nieboszczykiem?"':
            # a73 # r41243
            jump morte2_s26

        '"Mniejsza z tym. Mam jeszcze kilka innych pytań…"':
            # a74 # r41244
            jump morte2_s12

        '"Już wystarczająco dużo mi powiedziałeś. Ruszajmy."':
            # a75 # r41245
            jump morte2_dispose


# s26 # say41246
label morte2_s26: # from 25.0
    nr '"No dobra… może *ty* nie umarłeś, ale *ja* tak. A ja nie mam nic przeciwko dzieleniu trumny z jedną z tych niezłych, muskularnych nieboszczyc, które tu widzę." Morte zaczyna dzwonić zębami, jakby nie mógł się już doczekać. "Oczywiście najpierw trzeba byłoby takiego truposza wyrwać z rąk opiekunów, a szanse na to są znikome…"'

    menu:
        '"Mam do ciebie jeszcze kilka pytań, Morte…"':
            # a76 # r41247
            jump morte2_s12

        '"Już wystarczająco dużo mi powiedziałeś. Ruszajmy."':
            # a77 # r41248
            jump morte2_dispose


# s27 # say41250
label morte2_s27: # - # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    nr '"Wiedziałem że wrócisz, szefie! W końcu zdałeś sobie sprawę, że jestem ci potrzebny, co?"'

    menu:
        '"Jasne… ruszajmy."':
            # a78 # r41251
            $ morte2Logic.r41251_action()
            jump morte2_dispose

        '"Nie teraz, Morte."':
            # a79 # r41252
            jump morte2_s28


# s28 # say41253
label morte2_s28: # from 27.1
    nr '"Hmmmm. Nie wiem, czy mnie tu jeszcze zastaniesz, ale dam ci jeszcze OSTATNIĄ szansę. Na pewno nie potrzebujesz moich wskazówek i mojego sprytu?"'

    menu:
        '"Morte, przecież nie masz ŻADNEJ z tych rzeczy."':
            # a80 # r41254
            jump morte2_s29

        '"No dobra, zmieniłem zdanie. Ruszajmy."':
            # a81 # r41255
            $ morte2Logic.r41255_action()
            jump morte2_dispose

        '"Nie teraz, Morte. Może później."':
            # a82 # r41256
            jump morte2_s29


# s29 # say41257
label morte2_s29: # from 28.0 28.2
    nr '"Chcesz obrazić moje uczucia, szefie? Czyżbym coś powiedział nie tak? A może przeszkadza ci, że nie mam rąk? Co?"'

    menu:
        '"No dobra, zmieniłem zdanie. Ruszajmy."':
            # a83 # r41258
            $ morte2Logic.r41258_action()
            jump morte2_dispose

        '"Ależ skądże. Po prostu nie potrzebuję teraz towarzystwa. Żegnaj, Morte."':
            # a84 # r41259
            jump morte2_s30


# s30 # say41260
label morte2_s30: # from 29.1
    nr '"No cóż, nie będę czekał w NIESKOŃCZONOŚĆ, więc lepiej wróć jak tylko zmienisz zdanie."'

    menu:
        '"Dobrze. Żegnaj, Morte."':
            # a85 # r41261
            jump morte2_dispose


# s31 # say41262
label morte2_s31: # - # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Na wielkie moce. To dopiero księga."'

    menu:
        '"Co to jest?"':
            # a86 # r41263
            $ morte2Logic.r41263_action()
            jump morte2_s32


# s32 # say41264
label morte2_s32: # from 31.0
    nr '"Jakbym miał zgadywać, powiedziałbym, że to księga, w której zapisują imiona wszystkich biednych trepów, którzy mieli pecha, żeby się tu znaleźć."'

    menu:
        '"Czy moje imię też tam jest?"':
            # a87 # r41265
            jump morte2_s33


# s33 # say41266
label morte2_s33: # from 32.0
    nr '"Hmm… no cóż… *chyba* tak. Jak chcesz się dowiedzieć, musisz trochę pokłapać jadaczką z tamtym lewitującym Grabarzem. Choć nie wiem, czy to dobry pomysł."'

    menu:
        '"Ktoś musi mi wyjaśnić kilka rzeczy. Muszę z nim porozmawiać."':
            # a88 # r41267
            jump morte2_dispose
