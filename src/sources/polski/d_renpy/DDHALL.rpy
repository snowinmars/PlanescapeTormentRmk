init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dhall_logic import DhallLogic
    dhallLogic = DhallLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDHALL.DLG
# ###


# s0 # say822
label dhall_s0: # externs morte_s103
    nr 'Nim Morte ma szanse skończyć swoją tyradę, skryba zaczyna kaszleć gwałtownie. Po paru chwilach napad kaszlu mija i oddech skryby na powrót przybiera postać nieregularnego charczenia.'

    jump morte_s104  # EXTERN


# s1 # say826
label dhall_s1: # externs morte_s104
    nr 'Nim Morte ma szansę skończyć, szare oczy skryby kierują się ku tobie. "Balast czasu wywarł na mnie swe piętno, Duchu Niespokojny." Odkłada na bok gęsie pióro. "…jednakże głuchota nie wlicza się jeszcze w poczet mych dolegliwości."'

    menu:
        '"„Duchu Niespokojny“? Znasz mnie?"':
            # a0 # r827
            $ dhallLogic.r827_action()
            jump dhall_s44


# s2 # say829
label dhall_s2: # from 21.0
    nr '"Nie znasz kobiety, której ciało pochowano w położonej poniżej sali pamięci? Sądziłem, że podróżowaliście kiedyś wspólnie…" Zdaje się, iż Dhall zacznie ponownie kaszleć. Łapie jednakże oddech. "Czyżbym się mylił?"'

    menu:
        '"Gdzie spoczywa jej ciało?"' if dhallLogic.r5070_condition():
            # a1 # r5070
            jump dhall_s42

        '"Nic o nie niej nie wiem."' if dhallLogic.r5071_condition():
            # a2 # r5071
            jump dhall_s43

        '"Twierdzi, że mnie zna, ale ja jej nie pamiętam."' if dhallLogic.r5072_condition():
            # a3 # r5072
            jump dhall_s28

        '"Powiedziałeś, że byli też inni. Kto jeszcze tu jest?"' if dhallLogic.r5073_condition():
            # a4 # r5073
            jump dhall_s12

        '"Powiedziałeś, że byli też inni. Kto jeszcze tu jest?"' if dhallLogic.r5074_condition():
            # a5 # r5074
            jump dhall_s12

        '"Możliwe. Mam do ciebie parę innych pytań…"':
            # a6 # r6063
            jump dhall_s9

        '"Udam się do położonej poniżej sali pamięci i przekonam się, czy będę mógł odnaleźć jej ciało."' if dhallLogic.r6064_condition():
            # a7 # r6064
            jump dhall_s11

        '"Może nie. Żegnaj."' if dhallLogic.r13288_condition():
            # a8 # r13288
            jump dhall_s11


# s3 # say832
label dhall_s3: # from 9.0
    nr 'Dhall wbija w ciebie wzrok. "Jesteś pewien?"'

    menu:
        '"Tak. To dobre przebranie."' if dhallLogic.r830_condition():
            # a9 # r830
            $ dhallLogic.r830_action()
            jump dhall_s4

        '"Tak. To dobre przebranie."' if dhallLogic.r831_condition():
            # a10 # r831
            $ dhallLogic.r831_action()
            jump dhall_s4

        '"Nie, po namyśle sądzę, że to jedynie wytwór mojej wyobraźni. Słuchaj, mam parę innych pytań…"':
            # a11 # r834
            jump dhall_s9


# s4 # say833
label dhall_s4: # from 3.0 3.1
    nr '"Ja…" Przerywa mu kolejny atak kaszlu. Po chwili łapie on oddech na tyle, by mógł mówić. "Ja… natychmiast powiadomię straże."'

    menu:
        '"Dziękuję. Mam parę innych pytań…"':
            # a12 # r836
            jump dhall_s9

        '"Świetnie. Żegnaj."':
            # a13 # r837
            jump dhall_s11


# s5 # say838
label dhall_s5: # - # IF ~  Global("Dhall","GLOBAL",0)
    nr 'Skryba wygląda bardzo staro… Skóra jego jest pomarszczona i ma lekko żółtawy odcień, niczym stary pergamin. Z jego kanciastej twarzy patrzą szare niczym węgiel oczy, zaś z przodu szaty spływa, na podobieństwo wodospadu, jego biała broda. Oddycha chrapliwie i nieregularnie, ale nawet pojawiający się sporadycznie kaszel nie spowalnia ruchów jego gęsiego pióra.'

    menu:
        '"Witaj."' if dhallLogic.r839_condition():
            # a14 # r839
            jump morte_s102  # EXTERN

        '"Witaj."' if dhallLogic.r835_condition():
            # a15 # r835
            jump dhall_s7

        '"Witaj."' if dhallLogic.r5058_condition():
            # a16 # r5058
            jump dhall_s6

        'Zostaw starego skrybę w spokoju.':
            # a17 # r5060
            jump dhall_dispose


# s6 # say841
label dhall_s6: # from 5.2
    nr 'W jego szarych oczach pojawia się błysk, gdy podnosi on wzrok znad swojej księgi. "Podejrzewałem, że to ty możesz być odpowiedzialny za napady w Kostnicy. To…" Pokasłuje lekko, po czym bierze chrapliwy oddech. "To nie najlepszy sposób, byś mógł wkroczyć w kolejne życie."'

    menu:
        '"Jedynie się broniłem. Zanim odejdę, chcę ci zadać kilka pytań…"' if dhallLogic.r842_condition():
            # a18 # r842
            jump dhall_s9

        '"Podzielenie się odrobiną śmierci z twoimi wyznawcami trupów nie jest w mym mniemaniu zbyt wielką zbrodnią. Teraz zaś mam kilka pytań do ciebie…"' if dhallLogic.r843_condition():
            # a19 # r843
            $ dhallLogic.r843_action()
            jump dhall_s9

        '"Znasz mnie?"' if dhallLogic.r5062_condition():
            # a20 # r5062
            jump dhall_s44

        '"Żegnaj."':
            # a21 # r5063
            jump dhall_dispose


# s7 # say844
label dhall_s7: # from 5.1
    nr 'Skryba przestaje notować w leżącej przed nim księdze i podnosi wzrok. Oczy jego wyglądają niczym dwa gwoździe wbite w czaszkę. "A więc…" W jego głosie słychać zmęczenie - tak, jakby powtarzał tę samą kwestię już wiele razy. "Obudziłeś się ze swego snu i powróciłeś do swoich marzeń." Dodaje z większą dozą szacunku. "Miło cię spotkać… ponownie, Duchu Niespokojny."'

    menu:
        '"„Duchu Niespokojny“? Znasz mnie?"':
            # a22 # r845
            jump dhall_s44


# s8 # say851
label dhall_s8: # from 22.0
    nr '"Zrozum… Twe istnienie to dla nich bluźnierstwo. Wielu spośród mojej frakcji poddałoby cię kremacji… Gdyby tylko świadomi byli twojej przypadłości."'

    menu:
        '"Jesteś grabarzem, a mimo to wydaje się, iż nie pragniesz mojej śmierci. Dlaczego?"':
            # a23 # r940
            jump dhall_s23

        '"Powiedz mi coś więcej o Kostnicy."':
            # a24 # r911
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a25 # r913
            jump dhall_s9

        '"Usłyszałem już wystarczająco dużo. Żegnaj, Dhall."':
            # a26 # r6038
            jump dhall_s11


# s9 # say852
label dhall_s9: # from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
    nr '"Dobrze. Co chcesz wiedzieć?"'

    menu:
        '"Czy wiesz, że we wschodnich komnatach znajduje się ktoś przebrany za zombie?"' if dhallLogic.r854_condition():
            # a27 # r854
            jump dhall_s3

        '"Co to za miejsce?"':
            # a28 # r857
            jump dhall_s10

        '"Jak się tu znalazłem?"':
            # a29 # r855
            jump dhall_s15

        '"Możesz mi powiedzieć, jak się stąd wydostać?"' if dhallLogic.r858_condition():
            # a30 # r858
            jump dhall_s13

        '"Czy wiesz, kim jestem?"':
            # a31 # r5069
            $ dhallLogic.j39460_s9_r5069_action()
            jump dhall_s21

        '"Czym się tu zajmujesz?"':
            # a32 # r5748
            jump dhall_s25

        '"Wydajesz się być chorym. Nie czujesz się dobrze?"':
            # a33 # r6065
            jump dhall_s26

        '"Nic… Żegnaj, Dhall."':
            # a34 # r41663
            jump dhall_s11


# s10 # say859
label dhall_s10: # from 9.1
    nr '"Jesteś w Kostnicy, Duchu Niespokojny. Ponownie… przybyłeś…" Zanim ma szansę skończyć, dostaje napadu kaszlu. Po chwili uspokaja się i na powrót oddycha chrapliwie. "…to poczekalnie dla tych, którzy mają porzucić cienie tego życia."'

    menu:
        '"Opowiedz mi o Kostnicy."':
            # a35 # r861
            jump dhall_s32

        '"*Duchu Niespokojny*?"':
            # a36 # r860
            jump dhall_s38

        '"Cienie tego życia?"':
            # a37 # r862
            jump dhall_s33

        '"Ponownie…? Byłem już tu wcześniej?"':
            # a38 # r863
            jump dhall_s14

        '"Jak się tu znalazłem?"':
            # a39 # r864
            jump dhall_s15

        '"Mam jeszcze kilka pytań…"':
            # a40 # r865
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a41 # r866
            jump dhall_s11


# s11 # say867
label dhall_s11: # from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
    nr 'Kiedy odwracasz się, by odejść, Dhall rzecze. "Wiedz jedno: Nie zazdroszczę ci, Duchu Niespokojny. Ponowne odradzanie się jest klątwą, której ja nie zdołałbym udźwignąć. Musisz stawić jej czoło. W końcu twa droga cię tu zawiedzie…" Dhall pokasłuje, głos chrobocze mu w gardle. "To czeka wszystkich, którzy z prochu powstali."'

    menu:
        '"W takim razie być może się jeszcze spotkamy, Dhall."':
            # a42 # r41564
            jump dhall_dispose


# s12 # say868
label dhall_s12: # from 2.3 2.4 42.2 42.3 43.1 43.2
    nr '"Są niewątpliwie, jednakże nie znam ich imion, nie wiem też, gdzie leżą. Tacy jak ty zostawiają za sobą ścieżkę, którą kroczyło wielu, przetrwali nieliczni." Dhall wskazuje wokół ciebie. "Przybywają tu wszyscy umarli. Niektórzy z nich bez wątpienia kiedyś z tobą podróżowali."'

    menu:
        '"Gdzie się znajduje ta kobieta, o której wspomniałeś?"' if dhallLogic.r870_condition():
            # a43 # r870
            jump dhall_s42

        '"Uważam, iż twe rozumowanie jest słuszne. Mam kilka innych pytań…"':
            # a44 # r871
            jump dhall_s9

        '"W takim razie poszukam ich. Być może pobudzą mą pamięć. Żegnaj."':
            # a45 # r872
            jump dhall_s11


# s13 # say875
label dhall_s13: # from 9.3
    nr '"Hmmm… Najbardziej oczywistym wyjściem wydaje się brama frontowa, jednak nikogo poza Grabarzami tamtędy nie przepuszczą." Znowu dostaje napadu chrapliwego kaszlu, po czym ciągnie dalej. "…jeden z pilnujących tej bramy ma do niej klucz, jednakże nie otworzy jej dla ciebie, jeśli nie będziesz nadzwyczaj przekonywujący."'

    menu:
        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a46 # r876
            jump dhall_s9

        '"W takim razie żegnaj, Dhall."':
            # a47 # r877
            jump dhall_dispose


# s14 # say878
label dhall_s14: # from 10.3
    nr '"Tak, *ponownie*. Przynoszono cię już tu wiele razy, Duchu Niespokojny. Biorąc pod uwagę rany, jakie odniosłeś, miałem nadzieję, że to już będzie ostatni raz." Wzdycha. "Kiedy wyzbędziesz się swych uczuć i opuścisz cień tego życia?"'

    menu:
        '"*Duchu Niespokojny*?"':
            # a48 # r880
            jump dhall_s38

        '"Rany?"':
            # a49 # r881
            jump dhall_s34

        '"Cień tego życia?"':
            # a50 # r883
            jump dhall_s33

        '"Powiedz mi coś więcej o Kostnicy."':
            # a51 # r879
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a52 # r5751
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a53 # r5752
            jump dhall_s11


# s15 # say885
label dhall_s15: # from 9.2 10.4 32.5
    nr 'Dhall prycha pogardliwie, jakby wspomnienie budziło w nim odrazę. "Twój zatęchły rydwan przywiózł cię do Kostnicy, Duchu Niespokojny. Pomyśl sobie, że przyjechałeś tu na wozie, ułożony po królewsku, na śmierdzącej i ropiejącej kupie równych tobie obywateli."'

    menu:
        '"Przybyłem tu na wozie?"':
            # a54 # r886
            $ dhallLogic.j39463_s15_r886_action()
            jump dhall_s16

        '"Powiedz mi coś więcej o Kostnicy."':
            # a55 # r887
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a56 # r888
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a57 # r889
            jump dhall_s11


# s16 # say890
label dhall_s16: # from 15.0
    nr '"Tak… Twoje ciało znajdowało się gdzieś pośrodku sterty, wymieniając płyny z resztą osobników tworzących górę ciał." Przerywa mu kolejny nagły atak kaszlu; po kilku chwilach łapie on jednak oddech. "Twój „włodarz“ Farod był jak zawsze bardzo zadowolony mogąc przyjąć kilka zaśniedziałych miedziaków w zamian za dostarczenie cię pod bramę Kostnicy."'

    menu:
        '"Kim jest ten Farod?"' if dhallLogic.r891_condition():
            # a58 # r891
            jump dhall_s17

        '"Zdaje się, że nie darzysz Faroda zbytnią sympatią."' if dhallLogic.r892_condition():
            # a59 # r892
            jump dhall_s35

        '"Powiedz mi coś więcej o Kostnicy."':
            # a60 # r893
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a61 # r894
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a62 # r5753
            jump dhall_s11


# s17 # say895
label dhall_s17: # from 16.0
    nr '"Jest… zbieraczem trupów." Dhall wciąga chrapliwie powietrze, po czym kontynuuje. "Istnieją w naszym mieście ludzie zbierający z ulic trupy tych, którzy wkroczyli na drogę Prawdziwej Śmierci. Przynoszą je do nas, by można je było stosownie pochować."'

    menu:
        '"Gdzie mogę znaleźć tego „Faroda“?"':
            # a63 # r897
            jump dhall_s18

        '"Zdaje się, że nie darzysz Faroda zbytnią sympatią."' if dhallLogic.r898_condition():
            # a64 # r898
            jump dhall_s35

        '"Powiedz mi coś więcej o Kostnicy."':
            # a65 # r899
            jump dhall_s32

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a66 # r5754
            jump dhall_s9

        '"W takim razie pójdę poszukać tego Faroda. Żegnaj, Dhall."':
            # a67 # r6031
            jump dhall_s19


# s18 # say900
label dhall_s18: # from 17.0 29.1 31.0 35.1 36.1
    nr '"Jeśli wypadki potoczą się tak jak do tej pory, Duchu Niespokojny, istnieje znacznie większa szansa, że to Farod ciebie odnajdzie i ponownie do nas przywiezie, zanim ty odkryjesz, w czym tym razem macza on palce."'

    menu:
        '"Mimo to muszę go znaleźć."':
            # a68 # r902
            jump dhall_s19

        '"Powiedz mi coś więcej o Kostnicy."':
            # a69 # r903
            jump dhall_s32

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a70 # r904
            jump dhall_s9

        '"Mam przeczucie, że nasze ścieżki się skrzyżują. Żegnaj, Dhall."':
            # a71 # r5755
            jump dhall_s19


# s19 # say901
label dhall_s19: # from 17.4 18.0 18.3 29.3 31.2
    nr 'W ton jego głosu wkrada się ostrzeżenie. "Nie szukaj Faroda, Duchu Niespokojny. Jestem przekonany, że doprowadzi to jedynie do końca kolejne koło. Tobie to mądrości nie przysporzy, a Farod stanie się bogatszy o kilka miedziaków. Przyjmij śmierć, Duchu Niespokojny. Nie tocz już swego koła nieszczęść."'

    menu:
        '"*Muszę* go znaleźć. Wiesz, gdzie jest?"':
            # a72 # r906
            $ dhallLogic.j39464_s19_r906_action()
            jump dhall_s20

        '"Powiedz mi coś więcej o Kostnicy."':
            # a73 # r905
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a74 # r907
            jump dhall_s9

        '"Nie mogę dłużej z tobą rozmawiać. Żegnaj, Dhall."':
            # a75 # r5756
            jump dhall_s11


# s20 # say908
label dhall_s20: # from 19.0
    nr 'Dhall milczy przez chwilę. Gdy w końcu przemawia ponownie, zdaje się czynić to niechętnie. "Nie wiem, w którym rynsztoku zaszył się on obecnie, sądzę jednak, że można znaleźć go gdzieś poza bramą Kostnicy, w Ulu. Być może tam znajdziesz kogoś, kto ci powie, gdzie możesz go szukać."'

    menu:
        '"Zdaje się, że nie darzysz Faroda zbytnią sympatią."' if dhallLogic.r910_condition():
            # a76 # r910
            jump dhall_s35

        '"Czy mógłbyś po powiedzieć o Kostnicy nieco więcej?"':
            # a77 # r909
            jump dhall_s32

        '"Dziękuję. Mam parę innych pytań…"':
            # a78 # r5757
            jump dhall_s9

        '"Pójdę tam I popytam o niego. Żegnaj."':
            # a79 # r6030
            jump dhall_s11


# s21 # say914
label dhall_s21: # from 9.4
    nr '"Wiem o tobie wyjątkowo niewiele, Duchu Niespokojny. Wiem znacznie więcej o tych, którzy z tobą podróżowali, i którzy znajdują się obecnie pod naszą opieką." Wzdycha. "Proszę, byś więcej nie nakłaniał innych do przyłączenia się do ciebie, Duchu Niespokojny… Gdzie ty kroczysz, kroczy nieszczęście. Pozwól, by twe brzemię ciążyło jedynie na tobie."'

    menu:
        '"Istnieją inni, którzy ze mną podróżowali? Gdzież oni są?':
            # a80 # r921
            $ dhallLogic.j39461_s21_r921_action()
            jump dhall_s2

        '"Mam jeszcze kilka pytań…"':
            # a81 # r922
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a82 # r923
            jump dhall_s11


# s22 # say915
label dhall_s22: # from 47.0
    nr 'Dhall wzdycha. "Powiadają, że istnieją dusze, które nigdy nie osiągną Prawdziwej Śmierci. Śmierć się ich wyrzekła, ich imiona nigdy nie zostaną wpisane do Księgi Umarłych. Twe budzenie się ze śmierci… wskazuje, że jesteś jedną z takich dusz. Nasza frakcja nie może się pogodzić z twoim istnieniem."'

    menu:
        '"„Nie może się pogodzić“? Nie stawia to mnie w zbyt dobrej sytuacji."':
            # a83 # r917
            jump dhall_s8

        '"Rozumiem. Powiedz mi coś więcej o Kostnicy."':
            # a84 # r918
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a85 # r919
            jump dhall_s9

        '"Sądzę, że dane mi było usłyszeć wystarczająco dużo. Żegnaj, Dhall."':
            # a86 # r920
            jump dhall_s11


# s23 # say924
label dhall_s23: # from 8.0
    nr '"Ponieważ narzucenie ci naszych przekonań nie byłoby właściwe. Musisz porzucić cień twego życia sam z siebie, a nie dlatego, że cię do tego zmuszamy." Wygląda na to, iż grozi mu kolejny atak kaszlu, udaje mu się jednak powstrzymać. "Dopóki zajmować będę moje stanowisko, będę chronił twe prawo do poszukiwania przynależnej ci prawdy."'

    menu:
        '"Jakie masz stanowisko?"':
            # a87 # r927
            jump dhall_s25

        '"Powiedz mi coś więcej o Kostnicy."':
            # a88 # r928
            jump dhall_s32

        '"Dobrze. Mam kilka innych pytań…"':
            # a89 # r925
            jump dhall_s9

        '"Usłyszałem już wystarczająco dużo. Żegnaj, Dhall."':
            # a90 # r6039
            jump dhall_s11


# s24 # say929
label dhall_s24: # from 25.0
    nr '"Jestem tym, który kataloguje dostarczane nam zwłoki, Duchu Niespokojny." Przerywa mu nagły atak kaszlu, po chwili jednak uspakaja się. "Widzę jedynie twarze tych, którzy leżą na naszych stołach. Sprawy związane z twą egzystencją pozostają mi odległe."'

    menu:
        '"Powiedz mi coś więcej o Kostnicy."':
            # a91 # r1305
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a92 # r6041
            jump dhall_s9

        '"Zdaje się, że mam wobec ciebie dług wdzięczności. Żegnaj, Dhall."':
            # a93 # r6042
            jump dhall_s11


# s25 # say930
label dhall_s25: # from 9.5 23.0
    nr '"Jestem skrybą katalogującym wszystkie dostarczane do Kostnicy zwłoki." Dhall kaszle ponownie, po czym bierze głęboki oddech. "Póki strumień umarłych przepływał będzie przez Kostnicę, dopóty pozostanę na mym stanowisku."'

    menu:
        '"Powiedziałeś, że byłem tu już więcej niż raz. Czemuż więc Grabarze mnie nie rozpoznają?"' if dhallLogic.r931_condition():
            # a94 # r931
            $ dhallLogic.j39462_s25_r931_action()
            jump dhall_s24

        '"Powiedz mi coś więcej o Kostnicy."':
            # a95 # r932
            jump dhall_s32

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a96 # r933
            jump dhall_s9

        '"Dobrze. Żegnaj, Dhall."':
            # a97 # r6040
            jump dhall_s11


# s26 # say934
label dhall_s26: # from 9.6
    nr '"Blisko mi już do Prawdziwej Śmierci, Duchu Niespokojny. Niedługo przekroczę Ostateczną Granicę, by odnaleźć spokój, którego poszukiwałem. Zmęczony jestem tą śmiertelną sferą…" Wzdycha chrapliwie. "Kogoś takiego jak ja Sfery nie są w stanie już niczym zadziwić."'

    menu:
        '"Ostateczną Granicę?"':
            # a98 # r935
            jump dhall_s41

        '"Jesteś pewien? Być może mogę ci w jakiś sposób pomóc."':
            # a99 # r936
            $ dhallLogic.r936_action()
            jump dhall_s27

        '"Mam jeszcze kilka pytań…"':
            # a100 # r937
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a101 # r960
            jump dhall_s11


# s27 # say938
label dhall_s27: # from 26.1
    nr '"Nie chcę żyć wiecznie, bądź żyć ponownie, Duchu Niespokojny. Nie zniósłbym tego."'

    menu:
        '"Dobrze. Mam kilka innych pytań…"':
            # a102 # r1303
            jump dhall_s9

        '"Niech będzie. Żegnaj, Dhall."':
            # a103 # r1304
            jump dhall_s11


# s28 # say939
label dhall_s28: # from 2.2 42.1
    nr '"*Rozmawiała* z tobą?" Głos Dhalla zniża się do szeptu. "Czyżbyś miał *omamy*. Duchu Niespokojny? Ona osiągnęła Prawdziwą Śmierć i odeszła tam, gdzie nie masz dostępu."'

    menu:
        '"Przemówiła do mnie, Dhall. Jej duch tu rezyduje."':
            # a104 # r981
            jump dhall_s30

        '"W takim razie może to jedynie wytwór mojej wyobraźni. Mam kilka innych pytań…"':
            # a105 # r982
            jump dhall_s9

        '"Nie mam pewności, czy osiągnęła ona Prawdziwą Śmierć. Żegnaj, Dhall."':
            # a106 # r873
            jump dhall_s11


# s29 # say941
label dhall_s29: # from 36.0
    nr 'Przerwawszy, zaczyna się zastanawiać. "Najprawdopodobniej. Czy straciłeś coś… szczególnie cennego?" Marszczy brwi i zniża głos. "Farod nie przepuści niczemu, co nie jest częścią twego ciała, a czasami nawet i to nie jest wystarczające, by zaspokoić jego chciwy umysł."'

    menu:
        '"Brakuje mi dziennika."' if dhallLogic.r942_condition():
            # a107 # r942
            jump dhall_s31

        '"Hmmm. Wiesz, gdzie mogę znaleźć Faroda?"' if dhallLogic.r943_condition():
            # a108 # r943
            jump dhall_s18

        '"Mam jeszcze kilka pytań…"':
            # a109 # r944
            jump dhall_s9

        '"Może powinienem porozmawiać z Farodem. Żegnaj, Dhall."' if dhallLogic.r6026_condition():
            # a110 # r6026
            jump dhall_s19

        '"Rozumiem. Żegnaj, Dhall."' if dhallLogic.r874_condition():
            # a111 # r874
            jump dhall_s11


# s30 # say945
label dhall_s30: # from 28.0
    nr 'Dhall nakreśla palcem półkole w powietrzu przed sobą. "To zły znak, Duchu Niespokojny. Pragnąłbym, by ta rozmowa z nią była snem… Obawiam się jednak, że nie była."'

    menu:
        '"Być może to jedynie wytwór mojej wyobraźni. Mam kilka innych pytań."':
            # a112 # r946
            jump dhall_s9

        '"Później być może później porozmawiamy o tym nieco więcej. Żegnaj, Dhall."':
            # a113 # r947
            jump dhall_s11


# s31 # say850
label dhall_s31: # from 29.0
    nr '"Dziennik? Jeśli miał jakąś wartość, to najprawdopodobniej znajduje się w rękach Faroda."'

    menu:
        '"Gdzie mogę znaleźć tego Faroda?"' if dhallLogic.r948_condition():
            # a114 # r948
            jump dhall_s18

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a115 # r949
            jump dhall_s9

        '"W takim razie poszukam go. Żegnaj, Dhall."' if dhallLogic.r6027_condition():
            # a116 # r6027
            jump dhall_s19

        '"Rozumiem. Żegnaj, Dhall."' if dhallLogic.r6066_condition():
            # a117 # r6066
            jump dhall_s11


# s32 # say950
label dhall_s32: # from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
    nr '"To miejsce, do którego dostarcza się zmarłych, by mogli zostać pochowani lub poddani kremacji. Jesteśmy Grabarzami i naszą powinnością jest zaopiekowanie się tymi, którzy opuścili cień tego życia i kroczą ścieżką Prawdziwej Śmierci." Dhall zniża głos, rozważając. "Twe rany musiały dać ci się bardzo we znaki, skoro nie poznajesz tego miejsca. To prawie twój dom w Sigil."'

    menu:
        '"Cień tego życia?"':
            # a118 # r951
            jump dhall_s33

        '"Prawdziwej Śmierci?"':
            # a119 # r953
            $ dhallLogic.r953_action()
            jump dhall_s48

        '"Grabarzami?"':
            # a120 # r954
            jump dhall_s47

        '"Sigil?"':
            # a121 # r955
            jump dhall_s37

        '"Rany?"':
            # a122 # r956
            jump dhall_s34

        '"Jak się tu znalazłem?"':
            # a123 # r846
            jump dhall_s15

        '"Mam jeszcze kilka pytań…"':
            # a124 # r5735
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a125 # r6062
            jump dhall_s11


# s33 # say957
label dhall_s33: # from 10.2 14.2 32.0 41.0 47.2 49.0
    nr '"Tak, cień. Widzisz, Duchu Niespokojny - to życie… nie jest prawdziwe. Twoje życie, moje życie - to cienie, przebłyski tego, czym kiedyś było życie. Obecne „życie“ jest tym, które przypada nam *po* naszej śmierci. Jesteśmy tu… uwięzieni. Zamknięci w klatce. Dopóki nie osiągniemy Prawdziwej Śmierci."'

    menu:
        '"Prawdziwej Śmierci?"':
            # a126 # r958
            $ dhallLogic.r958_action()
            jump dhall_s48

        '"Co sprawia, iż uważasz, że to życie nie jest prawdziwe?"':
            # a127 # r959
            jump dhall_s50

        '"Powiedz mi coś więcej o Kostnicy."':
            # a128 # r5736
            jump dhall_s32

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a129 # r5737
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a130 # r5738
            jump dhall_s11


# s34 # say961
label dhall_s34: # from 14.1 32.4
    nr '"Tak. Rany, które zdobią twe ciało… Wyglądają na takie, które słabszego mężczyznę wysłałyby na ścieżkę Prawdziwej Śmierci… Mimo to zdaje się, iż większość z nich się już zagoiła." Przez chwilę kaszle gwałtownie, po czym się uspokaja. "Ale to tylko powierzchowne rany."'

    menu:
        '"Tylko powierzchowne rany? Co przez to rozumiesz?"':
            # a131 # r1301
            $ dhallLogic.j39470_s34_r1301_action()
            jump dhall_s53

        '"Powiedz mi coś więcej o Kostnicy."':
            # a132 # r1302
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a133 # r5746
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a134 # r5747
            jump dhall_s11


# s35 # say962
label dhall_s35: # from 16.1 17.1 20.0
    nr '"Są tacy, których darzę respektem, Duchu Niespokojny." Bierze chrapliwy oddech i uspokaja się. "Farod się do nich jednak nie zalicza. Obnosi się ze swą spaczoną reputacją niczym z jakąś odznaką honoru i pozwala sobie zabierać zmarłym ich dobytek. Jest macherem, obrzydliwym kanciarzem najgorszego rodzaju."'

    menu:
        '"Macherem?"':
            # a135 # r963
            jump dhall_s36

        '"Wiesz, gdzie mogę znaleźć tego Faroda?"' if dhallLogic.r964_condition():
            # a136 # r964
            jump dhall_s18

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a137 # r965
            jump dhall_s9

        '"Dodaje to otuchy. Żegnaj, Dhall."':
            # a138 # r6028
            jump dhall_s11


# s36 # say966
label dhall_s36: # from 35.0
    nr '"Macherem…" Dhall kaszle. "…złodziejem. Wszyscy, których tu Farod dostarcza, przybywają pozbawieni części godności, jaką mieli za życia. Farod zagarnia wszystko, co tylko może im wyszarpnąć z ich zesztywniałych palców."'

    menu:
        '"Czy ten Farod zabrał *mi* coś?"':
            # a139 # r967
            jump dhall_s29

        '"Wiesz, gdzie mogę znaleźć tego Faroda?"' if dhallLogic.r968_condition():
            # a140 # r968
            jump dhall_s18

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a141 # r969
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a142 # r6029
            jump dhall_s11


# s37 # say970
label dhall_s37: # from 32.3
    nr '"Sigil to nasze wspaniałe miasto, Duchu Niespokojny."'

    menu:
        '"Powiedz mi coś więcej o Kostnicy."':
            # a143 # r971
            jump dhall_s32

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a144 # r972
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a145 # r5758
            jump dhall_s11


# s38 # say973
label dhall_s38: # from 10.1 14.0
    nr '"Duch Niespokojny jest tak samo dobrym określeniem, jak inne…" Wciąga chrapliwie powietrze. "Coś cię tu zatrzymuje, czyż nie? Coś, co trzeba odrzucić - pewne uczucia, które musisz stłumić, nim będziesz mógł osiągnąć Prawdziwą Śmierć…"'

    menu:
        '"Prawdziwą Śmierć?"':
            # a146 # r974
            $ dhallLogic.r974_action()
            jump dhall_s48

        '"Powiedz mi coś więcej o Kostnicy."':
            # a147 # r975
            jump dhall_s32

        '"Mam kilka innych pytań…"':
            # a148 # r5749
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a149 # r5750
            jump dhall_s11


# s39 # say884
label dhall_s39: # -
    nr '"Zrobisz to, co zawsze robiłeś, Duchu Niespokojny. Poszukasz naszego łasego na pieniądze głupca, Glistokudłego i poprosisz go o zwrot twojej własności. Następnie zaczniesz kontynuować swą bezsensowną wędrówkę, starając się rozwiązywać bezsensowne zadania, gromadzić bezsensowne przedmioty, a w końcu zostaniesz uziemiony i zwrócony nam. Zaoszczędź sobie czasu i porozmawiaj ze mną teraz, byśmy nie musieli wznawiać tej rozmowy ponownie, gdy po raz kolejny utracisz wspomnienia."'

    menu:
        '"Mam jeszcze kilka pytań…"':
            # a150 # r976
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a151 # r977
            jump dhall_dispose


# s40 # say978
label dhall_s40: # - # IF ~  Global("Dhall","GLOBAL",1)
    nr 'Dhall przypatruje się tobie, gdy się zbliżasz. "Cóż. A jednak powróciłeś…" Dhall bierze chrapliwy oddech, po czym dostaje gwałtownego napadu kaszlu. Po chwili stan ten ustępuje i na powrót zaczyna on oddychać zgrzytliwie. "…Witaj po raz kolejny, Duchu Niespokojny."'

    menu:
        '"Mam do ciebie kilka innych pytań, Dhall."':
            # a152 # r979
            jump dhall_s9

        '"Mniejsza z tym. Żegnaj."':
            # a153 # r980
            jump dhall_dispose


# s41 # say983
label dhall_s41: # from 26.0 52.0
    nr '"To granica pomiędzy cieniem tego życia i Prawdziwą Śmiercią."'

    menu:
        '"Cieniem tego życia?"':
            # a154 # r984
            jump dhall_s33

        '"Prawdziwą Śmiercią?"':
            # a155 # r985
            $ dhallLogic.r985_action()
            jump dhall_s48

        '"Powiedz mi coś więcej o Kostnicy."':
            # a156 # r5739
            jump dhall_s32

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a157 # r5740
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a158 # r5741
            jump dhall_s11


# s42 # say5075
label dhall_s42: # from 2.0 12.0 43.0
    nr '"Północno-zachodnia sala pamięci na piętrze poniżej. Przyjrzyj się tamtejszym katafalkom… Jej imię powinno widnieć na jednej z pamiątkowych tabliczek. Być może odświeży to twoją pamięć."'

    menu:
        '"Nie wiem. Nie pamiętam nawet, że podróżowałem z kobietą."' if dhallLogic.r5076_condition():
            # a159 # r5076
            jump dhall_s43

        '"Cóż, ona twierdzi, że mnie zna, ale ja jej nie pamiętam."' if dhallLogic.r5077_condition():
            # a160 # r5077
            jump dhall_s28

        '"Powiedziałeś, że byli też inni. Kto jeszcze tu jest?"' if dhallLogic.r5078_condition():
            # a161 # r5078
            jump dhall_s12

        '"Powiedziałeś, że byli też inni. Kto jeszcze tu jest?"' if dhallLogic.r5079_condition():
            # a162 # r5079
            jump dhall_s12

        '"Może udam się, by jej poszukać. Zanim odejdę, mam parę innych pytań do ciebie…"':
            # a163 # r6067
            jump dhall_s9

        '"Udam się do położonej poniżej sali pamięci i przekonam się, czy będę mógł odnaleźć jej ciało."':
            # a164 # r6068
            jump dhall_s11


# s43 # say5080
label dhall_s43: # from 2.1 42.0
    nr 'Dhall nie udziela na nie odpowiedzi. Jedynie przypatruje się tobie w milczeniu.'

    menu:
        '"Gdzie mogę ją znaleźć?"' if dhallLogic.r5081_condition():
            # a165 # r5081
            jump dhall_s42

        '"Wspomniałeś wcześniej, że pochowani są tu również inni, którzy ze mną podróżowali. Gdzie oni są?"' if dhallLogic.r5082_condition():
            # a166 # r5082
            jump dhall_s12

        '"Wspomniałeś wcześniej, że pochowani są tu również inni, którzy ze mną podróżowali. Gdzie oni są?"' if dhallLogic.r5083_condition():
            # a167 # r5083
            jump dhall_s12

        '"Mam do ciebie jeszcze kilka pytań…"':
            # a168 # r6069
            jump dhall_s9

        '"Żegnaj więc."':
            # a169 # r6070
            jump dhall_s11


# s44 # say840
label dhall_s44: # from 1.0 6.2 7.0
    nr '"Czy znam ciebie? Ja…" Gdy mówi, w głosie skryby wyczuć można pewną gorycz. "*Nigdy* cię nie znałem, Duchu Niespokojny. Nie bardziej, niż ty znasz samego siebie." Milknie na moment. "Ponieważ zapomniałeś, czyż nie?"'

    menu:
        '"Kim *ty* jesteś?"':
            # a170 # r1327
            $ dhallLogic.r1327_action()
            jump dhall_s45


# s45 # say5728
label dhall_s45: # from 44.0
    nr '"Jak zwykle - pytanie. I złe pytanie - jak zwykle." Dhall skłania się lekko, jednak poruszenie to powoduje u niego napad kaszlu. "Jestem…" Przerywa na moment, by złapać oddech. "Jestem… Dhall."'

    menu:
        '"Być może odpowiesz mi na parę pytań, Dhall…"':
            # a171 # r5731
            $ dhallLogic.j39459_s45_r5731_action()
            jump dhall_s9

        '"Nie mam na to czasu. Żegnaj."':
            # a172 # r5732
            $ dhallLogic.j39459_s45_r5732_action()
            jump dhall_s46


# s46 # say5730
label dhall_s46: # from 45.1
    nr '"Dobrze, Duchu Niespokojny." Przytakuje. "Obawiam się jednak, że w tym przypadku czas jest twoim wrogiem." Chwyta ponownie gęsie pióro. "Gdybyś zechciał jeszcze kiedyś ze mną porozmawiać, będę tutaj."'

    menu:
        '"Być może wrócę. Żegnaj."':
            # a173 # r40005
            jump dhall_dispose


# s47 # say847
label dhall_s47: # from 32.2
    nr '"My, Grabarze, jesteśmy frakcją, zgromadzeniem tych, którzy dostrzegają, że to życie to jedynie cień, iluzja. Czekamy na następne życie, pomagamy też innym w ich podróży. Czekamy na Prawdziwą Śmierć."'

    menu:
        '"Może mi wyjaśnisz, dlaczego Grabarze chcą, bym był martwy?"' if dhallLogic.r6032_condition():
            # a174 # r6032
            jump dhall_s22

        '"Prawdziwą Śmierć?"':
            # a175 # r6033
            $ dhallLogic.r6033_action()
            jump dhall_s48

        '"To życie to jedynie cień?"':
            # a176 # r6034
            jump dhall_s33

        '"Powiedz mi coś więcej o Kostnicy."':
            # a177 # r6035
            jump dhall_s32

        '"Mam do ciebie jeszcze kilka pytań…"':
            # a178 # r6036
            jump dhall_s9

        '"Żegnaj więc."':
            # a179 # r6037
            jump dhall_s11


# s48 # say848
label dhall_s48: # from 32.1 33.0 38.0 41.1 47.1
    nr '"Prawdziwa Śmierć to niebyt. Stan pozbawienia myśli, zmysłów, uczuć." Dhall kaszle, po czym bierze chrapliwy oddech. "Stan czystości."'

    menu:
        '"Wygląda to na kompletne unicestwienie. Dlaczego ktoś miałby tego pragnąć?"':
            # a180 # r6043
            jump dhall_s49

        '"Och. Możesz mi powiedzieć coś więcej o Kostnicy?"':
            # a181 # r6044
            jump dhall_s32

        '"Ro… zumiem. Mam parę innych pytań."':
            # a182 # r6045
            jump dhall_s9

        '"Muszę już iść. Żegnaj, Dhall."':
            # a183 # r6046
            jump dhall_s11


# s49 # say849
label dhall_s49: # from 48.0
    nr '"Czy to gorsze niż pozostawanie w cieniu tego, czym było niegdyś życie? Sądzę, że nie."'

    menu:
        '"Cieniu?"':
            # a184 # r6047
            jump dhall_s33

        '"Powiedz mi coś więcej o Kostnicy."':
            # a185 # r6048
            jump dhall_s32

        '"Ro… zumiem. Mam parę innych pytań."':
            # a186 # r6049
            jump dhall_s9

        '"Muszę już iść. Żegnaj, Dhall."':
            # a187 # r6050
            jump dhall_s11


# s50 # say853
label dhall_s50: # from 33.1
    nr '"Co sprawia, że uważasz, iż to życie *jest* prawdziwe? Wejrzyj w swoje wnętrze. Nie czujesz, że czegoś ci brakuje?" Dhall potrząsa głową. "To czyściec. Jest tu jedynie żal. Smutek. Udręka. To nie są składniki, które kreują *życie*. Są one częścią klatki, która więzi nas w tym cieniu."'

    menu:
        '"Sądzę, że twój fatalizm przejął nad tobą górę. Te składniki są częścią życia, ale nie stanowią jego całości."':
            # a188 # r6051
            $ dhallLogic.r6051_action()
            jump dhall_s51

        '"Więzi nas? Jak?"':
            # a189 # r6052
            jump dhall_s51

        '"Starczy już twego filozofowania. Co to wszystko ma wspólnego z mym budzeniem się tutaj?"':
            # a190 # r6053
            $ dhallLogic.r6053_action()
            jump dhall_s51


# s51 # say5733
label dhall_s51: # from 50.0 50.1 50.2
    nr 'Dhall potrząsa głową. "Uczucia niosą z sobą ciężar. Zakotwiczają się licznie w cieniu tego życia. Jak długo będzie ktoś się trzymał emocji, tak długo będzie się nieustannie odradzać w cieniu tego „życia“, nie zaznając oczyszczenia Prawdziwej Śmierci."'

    menu:
        '"Ro… zumiem. W jaki sposób można się wyswobodzić z tego kręgu odradzania i osiągnąć tę… Prawdziwą Śmierć?"':
            # a191 # r6054
            jump dhall_s52

        '"Powiedz mi coś więcej o Kostnicy."':
            # a192 # r6055
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a193 # r6056
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a194 # r6057
            jump dhall_s11


# s52 # say5734
label dhall_s52: # from 51.0
    nr '"Zabij swoje uczucia. Wyzbądź się potrzeby doznawania. Gdy się już w pełni oczyścisz, wtedy cykl odradzania dobiegnie końca i osiągniesz spokój." Dhall wzdycha… Brzmi to, jakby śmierć chrobotała mu w gardle. "Poza naszymi skorupami, poza Ostateczną Granicą znajduje się spokój, którego poszukują wszystkie dusze."'

    menu:
        '"Ostateczną Granicą?"':
            # a195 # r6058
            jump dhall_s41

        '"Powiedz mi coś więcej o Kostnicy."':
            # a196 # r6059
            jump dhall_s32

        '"Mam jeszcze kilka pytań…"':
            # a197 # r6060
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a198 # r6061
            jump dhall_s11


# s53 # say5742
label dhall_s53: # from 34.0
    nr '"Mówię o ranach umysłu. Sporo zapomniałeś, czyż nie? Być może rany twe znajdują się znacznie głębiej niż blizny, które zdobią twą cielesną powłokę…" Dhall kaszle ponownie. "…Jest to jednakże coś, co tylko ty możesz wiedzieć…"'

    menu:
        '"Powiedz mi coś więcej o Kostnicy."':
            # a199 # r5743
            jump dhall_s32

        '"Rozumiem. Mam jeszcze kilka pytań…"':
            # a200 # r5744
            jump dhall_s9

        '"Żegnaj, Dhall."':
            # a201 # r5745
            jump dhall_s11
