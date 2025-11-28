init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte1_logic import Morte1Logic
    morte1Logic = Morte1Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE1.DLG
# ###


# s0 # say39792
label morte1_s0: # - # IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */ ~  !InParty("Morte") Global("Morte","GLOBAL",0)
    nr '"Hej, szefie. Dobrze się czujesz? Udajesz martwego, czy chcesz wpędzić Grabarzy w ślepaki? Myślałem, że jesteś stuprocentowym truposzem."~ [MRT001]{#morte1_s0_1}'

    menu:
        '"Ki…? Kim jesteś?"{#morte1_s0_r39793}':
            # a0 # r39793
            $ morte1Logic.r39793_action()
            jump morte1_s1


# s1 # say39795
label morte1_s1: # from 0.0
    nr '"Co… kim *ja* jestem? A może byś *ty* zaczął. Ktoś ty?"{#morte1_s1_1}'

    menu:
        '"N… nie wiem. Nie pamiętam."{#morte1_s1_r39796}':
            # a1 # r39796
            jump morte1_s2

        '"Ja zapytałem *cię* pierwszy, czaszko."{#morte1_s1_r39797}':
            # a2 # r39797
            jump morte1_s3


# s2 # say39798
label morte1_s2: # from 1.0 3.0 4.0
    nr '"Nie pamiętasz swojego *imienia*, co? NASTĘPNYM razem, jak będziesz chciał spędzić noc w tej dziurze, to nie przeginaj z bełtem. Nazywam się Morte. Ja też tu jestem uwięziony."{#morte1_s2_1}'

    menu:
        '"Uwięziony?"{#morte1_s2_r39799}':
            # a3 # r39799
            jump morte1_s5


# s3 # say39800
label morte1_s3: # from 1.1
    nr '"Dobra, a ja pytałem *drugi*. Jak masz na imię?"{#morte1_s3_1}'

    menu:
        '"N… nie wiem. Nie pamiętam."{#morte1_s3_r39801}':
            # a4 # r39801
            jump morte1_s2

        '"Ty pierwszy, czaszko. Mówię to po raz ostatni."{#morte1_s3_r39802}':
            # a5 # r39802
            jump morte1_s4


# s4 # say39803
label morte1_s4: # from 3.1
    nr '"Ech… jesteś spięty, jakby ci coś w tyłek włożyli. Niech ci będzie. W takim razie to *ja* będę nawijał. Moje imię brzmi Morte. Jak się nazywasz?"{#morte1_s4_1}'

    menu:
        '"N… nie wiem. Nie pamiętam."{#morte1_s4_r39804}':
            # a6 # r39804
            jump morte1_s2


# s5 # say39805
label morte1_s5: # from 2.0
    nr '"No dobra, widzę, że jeszcze się nie pozbierałeś, więc śpiewka jest taka: Spróbowałem wszystkich drzwi i wygląda na to, że ten pokój jest zamknięty lepiej niż pas cnoty."{#morte1_s5_1}'

    menu:
        '"Gdzie jesteśmy zamknięci? Co to za miejsce?"{#morte1_s5_r39806}':
            # a7 # r39806
            jump morte1_s6


# s6 # say39807
label morte1_s6: # from 5.0
    nr '"Nazywają to „Kostnicą“… To wielka, czarna budowla o uroku ciężarnej pajęczycy."{#morte1_s6_1}'

    menu:
        '"Kostnica? Czy to oznacza, że jestem… martwy?"{#morte1_s6_r39808}':
            # a8 # r39808
            jump morte1_s7


# s7 # say39809
label morte1_s7: # from 6.0
    nr '"Z tego co widzę, to nie. Masz blizn od groma… wygląda na to, że jakiś trep podmalował cię kosą. To jeszcze jeden powód, żebyśmy się stąd odśmiali zanim ten ktoś wróci, żeby dokończyć roboty."{#morte1_s7_1}'

    menu:
        '"Blizny? Jak to wygląda?"{#morte1_s7_r39810}':
            # a9 # r39810
            jump morte1_s8


# s8 # say39811
label morte1_s8: # from 7.0
    nr '"No tak… rany na klatce nie są AŻ TAK tragiczne… ale te na plecach…" Morte waha się. "Powiedzmy, że wygląda to tak, jakby ktoś zamienił cię w galerię tatuażu, szefie. Coś mi to przypomina…"{#morte1_s8_1}'

    menu:
        '"Tatuaże na plecach? Co na nich jest?"{#morte1_s8_r39812}':
            # a10 # r39812
            jump morte1_s9


# s9 # say39813
label morte1_s9: # from 8.0
    nr '"Ha! Wygląda na to, że to jakiej rady…" Morte chrząka zaciekawiony. "Zobaczmy co to jest… zaczyna się od…"  „Wiem że czujesz się, jakbyś władował w siebie kilka baryłek wody ze Styksu, ale musisz się wziąć w GARŚĆ. Masz przy sobie DZIENNIK, który powinien trochę rozjaśnić sprawę. Resztę śpiewki usłyszysz od FARODA, chyba że już go wpisali do księgi umarłych.“{#morte1_s9_1}'

    menu:
        '"Faroda…? Jest tam coś jeszcze?"{#morte1_s9_r39814}':
            # a11 # r39814
            jump morte1_s10


# s10 # say39815
label morte1_s10: # from 9.0
    nr '"Jeszcze coś tu jest…" Morte zastanawia się. "Zobaczmy… to chyba ciąg dalszy…"  „Nie zgub dziennika, bo znowu popłyniemy w górę Styksu. I cokolwiek robisz, NIE MÓW nikomu KIM jesteś, ani CO się z tobą dzieje, bo inaczej wylądujesz w krematorium. Rób co ci każę: PRZECZYTAJ dziennik, a potem ODSZUKAJ Faroda.“{#morte1_s10_1}'

    menu:
        '"Nic dziwnego, że strasznie mnie bolą plecy; jakiś kretyn wypisał na nich całą książkę. A co do tego dziennika, który to niby mam mieć przy sobie… widziałeś gdzieś coś takiego, jak tu leżałem?"{#morte1_s10_r39816}':
            # a12 # r39816
            jump morte1_s11


# s11 # say39817
label morte1_s11: # from 10.0
    nr '"Nie… jak tu przybyłeś, nie miałeś na sobie żadnego ubrania. A poza tym, wygląda na to, że ktoś wypisał ci ten dziennik na skórze."{#morte1_s11_1}'

    menu:
        '"A co to za Farod? Znasz go?"{#morte1_s11_r39818}':
            # a13 # r39818
            jump morte1_s12


# s12 # say39819
label morte1_s12: # from 11.0
    nr '"Nikogo takiego nie znam… Choć, prawdę mówiąc, nie mam zbyt wielu znajomych. Może jakiś trep będzie wiedział, gdzie szukać tego Faroda… oczywiście, jeśli uda się nam stąd wydostać."{#morte1_s12_1}'

    menu:
        '"Niby *JAK* mamy się stąd wydostać?"{#morte1_s12_r39820}':
            # a14 # r39820
            jump morte1_s13


# s13 # say39821
label morte1_s13: # from 12.0
    nr '"Wszystkie drzwi są pozamykane, więc będziemy potrzebowali klucza. Może jakiś zombie ma go przy sobie."{#morte1_s13_1}'

    menu:
        '"Zombie?"{#morte1_s13_r39822}':
            # a15 # r39822
            jump morte1_s14


# s14 # say39823
label morte1_s14: # from 13.0
    nr '"Właściciele Kostnicy używają ich jako taniej siły roboczej. To kompletni kretyni, ale nie są groźni. Nic ci nie zrobią, jeśli ty ich pierwszy nie zaatakujesz."{#morte1_s14_1}'

    menu:
        '"Może jest jakiś inny sposób? Nie chcę zabijać ich tylko dlatego, żeby dostać klucz."{#morte1_s14_r39824}':
            # a16 # r39824
            $ morte1Logic.r39824_action()
            jump morte1_s15

        '"Więc mam zaatakować jednego z tych zombie i zakosić mu klucz?"{#morte1_s14_r39825}':
            # a17 # r39825
            jump morte1_s16


# s15 # say39826
label morte1_s15: # from 14.0
    nr '"A co, uważasz, że to urazi ich uczucia? Przecież są MARTWI. Ale ma to też swoje plusy - jak ich zabijesz, to przynajmniej odpoczną sobie przez chwilę zanim ich pracodawcy znowu ich nie zapędzą do pracy."{#morte1_s15_1}'

    menu:
        '"No dobra… Zabiję jednego i zabiorę mu klucz."{#morte1_s15_r39827}':
            # a18 # r39827
            jump morte1_s16


# s16 # say39828
label morte1_s16: # from 14.1 15.0
    nr '"Zanim to zrobisz, znajdź sobie jakąś broń. Na jednej z tych półek widziałem chyba skalpel."  ^NNOTE: Przeszukaj półki w pokoju, aby znaleźć broń przeciw zombie. <SEARCH_WEAPON>^-{#morte1_s16_1}'

    menu:
        '"Dobra, poszukam."{#morte1_s16_r39829}':
            # a19 # r39829
            jump morte1_s17


# s17 # say39830
label morte1_s17: # from 16.0
    nr '"Jeszcze jedno: Te trupy są powolne jak muchy w smole, ale uderzają z siłą bojowego tarana. Jeśli zaczną ci sprawiać kłopoty, pamiętaj, że w przeciwieństwie do ciebie nie potrafią BIEGAĆ. Odsuń się od nich, jeśli będziesz potrzebować chwili, by opatrzyć rany."  ^NNOTE: <RUNAWAY> W sytuacji zagrożenia życia odbiegnij od zombie na bezpieczną odległość i opatrz swoje rany.^-{#morte1_s17_1}'

    menu:
        '"Jasne. Dzięki za radę."{#morte1_s17_r39831}':
            # a20 # r39831
            $ morte1Logic.r39831_action()
            jump morte1_dispose


# s18 # say39832
label morte1_s18: # - # IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Na jednej z półek powinien być skalpel." Na twoim miejscu poszukałbym go, zanim się zmierzę z ożywionymi trupami."  ^NNOTE: Przeszukaj półki w pokoju, aby znaleźć broń przeciw zombie. <SEARCH_WEAPON>^-{#morte1_s18_1}'

    menu:
        '"Dobra… poszukam jeszcze."{#morte1_s18_r39833}':
            # a21 # r39833
            jump morte1_dispose


# s19 # say39834
label morte1_s19: # - # IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Świetnie, masz już skalpel! Teraz zabierz się za zombie… nie martw się, w razie czego udzielę ci potrzebnych wskazówek taktycznych."{#morte1_s19_1}'

    menu:
        '"Może jednak mógłbyś mi *pomóc*?"{#morte1_s19_r39835}':
            # a22 # r39835
            jump morte1_s20

        '"W porządku."{#morte1_s19_r39836}':
            # a23 # r39836
            jump morte1_s23


# s20 # say39837
label morte1_s20: # from 19.0
    nr '"Przecież BĘDĘ ci pomagał. Ciężko teraz o dobre rady."{#morte1_s20_1}'

    menu:
        '"Chodziło mi o pomoc w walce z *zombie*."{#morte1_s20_r39838}':
            # a24 # r39838
            jump morte1_s21

        '"Rozumiem."{#morte1_s20_r39839}':
            # a25 # r39839
            jump morte1_s23


# s21 # say39840
label morte1_s21: # from 20.0
    nr '"Ja? Jestem romantykiem, a nie żołnierzem. Ruszaj już lepiej."{#morte1_s21_1}'

    menu:
        '"Jak będę walczył z tym truposzem, lepiej mnie nie zostawiaj, bo będziesz następnym delikwentem, którego poszlachtuję."{#morte1_s21_r39841}':
            # a26 # r39841
            jump morte1_s22

        '"Rozumiem."{#morte1_s21_r39842}':
            # a27 # r39842
            jump morte1_s23


# s22 # say39843
label morte1_s22: # from 21.0
    nr '"No dobra… Pomogę ci."  UWAGA: Jeśli chcesz, aby Morte pomógł ci w walce, nie zapomnij wybrać was obu, kiedy będziesz atakował zombie. Wtedy twój towarzysz także przyłączy się do ataku.{#morte1_s22_1}'

    menu:
        '"Cieszę się, że się rozumiemy."{#morte1_s22_r39844}':
            # a28 # r39844
            jump morte1_s23


# s23 # say39845
label morte1_s23: # from 19.1 20.1 21.1 22.0
    nr '"Czas zabić te trupy drugi raz…"  ^NNOTE: <ATTACKNOTE>^-{#morte1_s23_1}'

    menu:
        '"Ruszajmy."{#morte1_s23_r39846}':
            # a29 # r39846
            jump morte1_dispose


# s24 # say39847
label morte1_s24: # - # IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("KeyPr") Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
    nr '"Widzę, że udało ci się załatwić właściwego trupa. Teraz musisz tylko znaleźć klucz. Powinien mieć go przy sobie. On pozwoli nam się stąd wydostać."  ^NNOTE: <DEADPILE>^-{#morte1_s24_1}'

    menu:
        '"W porządku."{#morte1_s24_r39848}':
            # a30 # r39848
            jump morte1_dispose


# s25 # say39849
label morte1_s25: # - # IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("KeyPr")
    nr '"Dobra robota; masz już klucz. Na pewno pasuje do któregoś z zamków w tym pomieszczeniu."{#morte1_s25_1}'

    menu:
        '"W takim razie spróbuję wszystkich drzwi."{#morte1_s25_r39850}':
            # a31 # r39850
            jump morte1_dispose


# s26 # say39851
label morte1_s26: # - # IF WEIGHT #0 ~  !InParty("Morte") GlobalGT("Morte","GLOBAL",0)
    nr '"Wiedziałem, że wrócisz, szefie! W końcu zorientowałeś się, że mnie potrzebujesz, co?"~ [MRT516]{#morte1_s26_1}'

    menu:
        '"Aha… do dzieła."{#morte1_s26_r39852}':
            # a32 # r39852
            $ morte1Logic.r39852_action()
            jump morte1_dispose

        '"Jeszcze nie teraz."{#morte1_s26_r39853}':
            # a33 # r39853
            jump morte1_s27


# s27 # say39854
label morte1_s27: # from 26.1
    nr '"Hmmmm. Nie wiem, czy mnie tu jeszcze zastaniesz, ale dam ci jeszcze OSTATNIĄ szansę. Jesteś pewien, że nie potrzebujesz moich wskazówek i mojego sprytu?"{#morte1_s27_1}'

    menu:
        '"Przecież nie masz ŻADNEJ z tych rzeczy."{#morte1_s27_r39855}':
            # a34 # r39855
            jump morte1_s28

        '"No dobra, zmieniłem zdanie. No dalej, ruszajmy."{#morte1_s27_r39856}':
            # a35 # r39856
            $ morte1Logic.r39856_action()
            jump morte1_dispose

        '"Nie teraz, może później."{#morte1_s27_r39857}':
            # a36 # r39857
            jump morte1_s28


# s28 # say39858
label morte1_s28: # from 27.0 27.2
    nr '"Chcesz obrazić moje uczucia, szefie? Czyżbym coś powiedział nie tak? A może przeszkadza ci, że nie mam rąk? Co?"{#morte1_s28_1}'

    menu:
        '"No dobra, zmieniłem zdanie. No dalej, ruszajmy."{#morte1_s28_r39859}':
            # a37 # r39859
            $ morte1Logic.r39859_action()
            jump morte1_dispose

        '"Nic z tych rzeczy. Po prostu w tej chwili nie potrzebuję towarzystwa. Żegnaj, Morte."{#morte1_s28_r39860}':
            # a38 # r39860
            jump morte1_s29


# s29 # say39861
label morte1_s29: # from 28.1
    nr '"No cóż, nie będę czekał w NIESKOŃCZONOŚĆ, więc lepiej wróć, jak tylko zmienisz zdanie."{#morte1_s29_1}'

    menu:
        '"Masz to jak w banku. Żegnaj, Morte."{#morte1_s29_r39862}':
            # a39 # r39862
            jump morte1_dispose


# s30 # say39863
label morte1_s30: # - # IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
    nr '"Co cię gryzie, szefie?"~ [MRT515]{#morte1_s30_1}'

    menu:
        '"Nic takiego, Morte. Po prostu sprawdzam, czy wciąż ze mną jesteś."{#morte1_s30_r39864}':
            # a40 # r39864
            jump morte1_dispose


# s31 # say42298
label morte1_s31: # externs zm825_s3 zm825_s0 zm569_s3 zm569_s0
    nr '"Szefie… one cię nie słyszą. Przecież są martwe."{#morte1_s31_1}'

    menu:
        '"Ale przecież ty też nie żyjesz, a ze mną rozmawiasz."{#morte1_s31_r42299}':
            # a41 # r42299
            jump morte1_s32


# s32 # say42300
label morte1_s32: # from 31.0
    nr '"Tak, ale ja *jestem* inny. Śmierć nie zabiła we mnie chęci życia. A te tu…" Morte wskazuje na żywe trupy. "Pewnie nie miały wystarczająco dużo charakteru."{#morte1_s32_1}'

    menu:
        '"Ro… rozumiem."{#morte1_s32_r42301}':
            # a42 # r42301
            jump morte1_s33


# s33 # say42302
label morte1_s33: # from 32.0
    nr '"Wiesz, szefie… coś mnie trafia, jak próbujesz wymienić śpiewkę z tymi truposzami. Zostawmy to świrom, dobra?"{#morte1_s33_1}'

    menu:
        '"W takim razie ruszajmy."{#morte1_s33_r42303}':
            # a43 # r42303
            jump morte1_dispose


# s34 # say42306
label morte1_s34: # externs zm782_s0
    nr '"Wygląda na to, że mamy drania, szefie. Patrz… ma w ręce klucz."{#morte1_s34_1}'

    jump zm782_s2  # EXTERN
