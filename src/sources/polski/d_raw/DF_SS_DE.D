// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_DE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_DE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51731 /* ~Podstawa tego wodnego, niebieskiego kamienia została wyrzeźbiona w taki sposób, że zlała się z cokołem, na którym się opiera. Strumień doskonale błękitnych kropli ścieka po bokach, tworząc napis pod cokołem: "Tęsknota."~ */
  IF ~~ THEN REPLY #51732 /* ~Zacznij doznanie.~ */ GOTO 1
  IF ~~ THEN REPLY #52857 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52858 /* ~Kiedy kładziesz dłonie na kamieniu, jego powierzchnia zaczyna falować pod twoim dotykiem. Po rękach przebiega zimny dreszcz, podobnie jak wtedy, gdy zanurzysz je w górskim potoku.~ */
  IF ~~ THEN REPLY #52859 /* ~Zamknij oczy i pogrąż się w doznaniu...~ */ GOTO 2
  IF ~~ THEN REPLY #52860 /* ~Zwalcz doznanie, puść kamień.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #52861 /* ~Kiedy zamykasz oczy, mrugasz i z powrotem je otwierasz - napełniają się łzami, a ty nagle masz straszliwe uczucie *tonięcia*. To uczucie wypełnia cię, w piersiach czujesz poruszenie, *głód*, trujący niczym wąż, WGRYZAJĄCY się w twoje serce, aż wreszcie obawiasz się, że *rozsadzi* ci zaraz klatkę piersiową. Rozpaczliwie usiłujesz powrócić do stanu równowagi, skupić się, ale wszystko, co możesz zobaczyć, to łzy...~ */
  IF ~~ THEN REPLY #52862 /* ~Obetrzyj łzy...~ */ GOTO 3
  IF ~~ THEN REPLY #52863 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #52864 /* ~Podnosisz rękę, aby obetrzeć łzy - masz delikatne dłonie, delikatne niczym dłonie kobiety; ścierają zabłąkane łzy z policzka, a ty zbierasz je w dłonie; każda z nich jest niczym klejnot błyszczący pod wpływem światła...~ */
  IF ~~ THEN REPLY #52865 /* ~Odwróć się, aby dokładnie przyjrzeć się światłom...~ */ GOTO 4
  IF ~~ THEN REPLY #52866 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #52867 /* ~Światło rzucane jest przez kule świec, płynące poprzez twoje sanktuarium. Przybywasz do tego miejsca, aby zebrać myśli, aby zadumać się nad przeszłością, aby wreszcie oczyścić umysł przed czekającą cię podróżą. A jednak... nie możesz się *skoncentrować*. Twoje myśli są wciąż w czasie teraźniejszym, uwięzione tu poprzez to okropne uczucie, które wije ci się w piersi. Co on MIAŁ NA MYŚLI...?!~ */
  IF ~~ THEN REPLY #52868 /* ~Z westchnieniem zamknij oczy...~ */ GOTO 5
  IF ~~ THEN REPLY #52869 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #52870 /* ~Zamykasz oczy, ale jego słowa odbijają się echem w twej głowie, sto, TYSIĄC razy. Czy on KIEDYKOLWIEK powróci? Słychać szept, echo: "Tylko ty. TYLKO ty." A jednak opadło cię ZWĄTPIENIE, na progu drzwi czasu, i z pewnością pomyślał sobie, że BOISZ się iść dalej; ale to nie było tak, to był STRACH przed pozostaniem, a strach... wąż wije się w twoich piersiach ponownie, a jego kły wpijają ci się w serce, napełniając je gotową wybuchnąć w każdej chwili *trucizną*. Znowu pojawiają się łzy, ściekające ci po policzkach, a jego słowa odbijają się echem...~ */
  IF ~~ THEN REPLY #52871 /* ~Rozlega się echo: "Tylko ty. TYLKO ty."~ */ DO ~SetGlobal("Sensory_Deionarra","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #52872 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #52873 /* ~Błyskawicznie otwierasz oczy - to JEGO głos! Skręcasz się, łapiesz powietrze; oto stoi, potężny, w cieniu, i wkracza w światło sunących kloszy świec, a ty czujesz, że ten wąż w tobie zwija się i UMIERA... on powrócił! Jego twarz jest sroga, ale gdzieś w tych rysach prawie możesz dostrzec radość ze spotkania z tobą. W końcu, wrócił po...~ */
  IF ~~ THEN REPLY #52874 /* ~Rozlega się echo: "Tylko ty możesz mi pomóc, Deionarro. Ale źle się stało, że ta prośba o pomoc wyszła z moich ust..."~ */ GOTO 7
  IF ~~ THEN REPLY #52875 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52876 /* ~Mówisz... Deionarra... jednakże ty, to TY, o szarej skórze niczym posąg, unikający światła - czy to ty jesteś tym *obliźnionym*?! Twoje ciało wygląda tak, jakby brało kąpiel wraz z ostrzami noży, same rany, tatuaże, okropne - a jednak, patrzysz OCZAMI DEIONARRY, a ona widzi... jak ona może WIDZIEĆ cię w taki sposób, przykrywa cię PŁASZCZEM, widzi cię w takim *świetle*, takim straszliwym, tęsknym *świetle*... bo ona... jak... ona może CZUĆ taki...?~ */
  IF ~~ THEN REPLY #52877 /* ~Spróbuj ponownie się skupić, weź się w garść, trwaj przy tym doznaniu...~ */ GOTO 8
  IF ~~ THEN REPLY #52878 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #52879 /* ~Widzisz, jak obraz rwie się, podwaja, aż stajesz się tym człowiekiem uciekającym od światła, to TY, ale NIE ty... czujesz wewnętrzne ROZDZIERANIE; to doświadczenie Deionarry, ale równocześnie, jest ono także *twoim* doświadczeniem, a ty... co...~ */
  IF ~~ THEN REPLY #52880 /* ~Rozlega się echo: "Było przesadą prosić cię o twoje towarzystwo, Deionarro. Nie mam prawa wciągać cię w takie niebezpieczeństwo tylko dla własnej wygody..."~ */ GOTO 9
  IF ~~ THEN REPLY #52881 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #52882 /* ~To twoje słowa, ale są one słowami chirurga, dobranymi z chłodną wprawą, bez ŚLADU emocji. Z każdym słowem czujesz wewnątrz POGARDĘ, wiedząc, co ta (nawiedzona) dziewczyna ujrzy swymi (przepełnionymi tęsknotą) oczami, i kogo ujrzy - czy to TY jesteś tą osobą, tym mężczyzną, którego słowa mają na nią tak wielki WPŁYW, i który sam nie wie, jak są potężne, że są niczym pociski z machiny oblężniczej, przeszywającej jej pierś, jej... a jednak, ona ODCZUWA tylko ULGĘ z twojego powrotu. Jak... jak ona może ODCZUWAĆ... i nie wiedzieć, że chcesz...?~ */
  IF ~~ THEN REPLY #52883 /* ~Rozlega się echo: "Przybywam, aby prosić cię o wybaczenie, Deionarro. Wrócę do ciebie tak szybko, jak to będzie możliwe..."~ */ GOTO 10
  IF ~~ THEN REPLY #52884 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #52885 /* ~Wizja znów się rwie, podwaja, krwawi, aż w końcu stoisz ponownie przed sobą samym, usiłując rozpaczliwie coś powiedzieć, OSTRZEC Deionarrę, że to nie człowiek, ale stwór, który zabija dla zaspokojenia własnych potrzeb; nie DBA o ciebie, Deionarro, jesteś dla niego NARZĘDZIEM, NARZĘDZIEM, które potrzebuje do - ale oto Deionarra przemawia, a ty nie potrafisz jej POWSTRZYMAĆ...~ */
  IF ~~ THEN REPLY #52886 /* ~Rozlega się echo: "Najdroższy, dla ciebie mogę doświadczyć *tysięcy* niebezpieczeństw, objąć wieczność. Ja *nie* boję się! Posłuchaj mnie - będę ci towarzyszyć, choćby same Sfery zagrodziły drogę..."~ */ GOTO 11
  IF ~~ THEN REPLY #52887 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52888 /* ~"...choćby same Sfery zagrodziły drogę..." Odczuwasz rozpad, ulgę i zadowolenie - jego ZADOWOLENIE z jej słów; jego ŚWIADOMOŚĆ, że ona wypowie te słowa i to, że on zawsze WIEDZIAŁ. Jej przyznanie się do miłości jest niczym szczęk bramy zamykającej się w twoim sercu. Uwięziona. Ona jest twoja, ale musisz być *pewny*, tak więc chcesz doprowadzić sprawę do końca.~ */
  IF ~~ THEN REPLY #52889 /* ~Rozlega się echo: "Droga jest niebezpieczna. Będziesz musiała wykazać się siłą... *o wiele* większą siłą, niż teraz dysponujesz."~ */ GOTO 12
  IF ~~ THEN REPLY #52890 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52891 /* ~Przez jej umysł przepływa fala niosąca ulgę, koniec tęsknoty, a mimo to TĘSKNOTY za nim, bardziej spowodowanej jego słowami, nie dostrzegającej jego krętactw... Trzeba ci jedynie siły, a jego ścieżka zrówna się z twoją ścieżką! Twoje myśli przypominają ognie... bo przecież możesz mieć więcej sił, więcej niż on sobie zdaje sprawę; ty nie znasz strachu, możesz ODDAĆ życie za niego...!~ */
  IF ~~ THEN REPLY #52892 /* ~Rozlega się echo: "Mogę być silna, Najdroższy. Ja..."~ */ GOTO 13
  IF ~~ THEN REPLY #52893 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #52894 /* ~Jej słowa ześlizgują się po nim niczym woda. Wąż w jej piersi, ten, który przekłuwa jej serce swoją trucizną, został zastąpiony wężem we własnej osobie. Ona nic z tego nie widzi, a jego następne słowa są zaplanowane, starannie, tak bardzo starannie zaplanowane...~ */
  IF ~~ THEN REPLY #52895 /* ~Rozlega się echo: "Nie potrafię powiedzieć, czy nam się uda, Deionarro, ale zrobię wszystko, co w mojej mocy, aby cię chronić. I od ciebie oczekuję tego samego. Może..."~ */ GOTO 14
  IF ~~ THEN REPLY #52896 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #52897 /* ~"...może będzisz musiała złożyć jakieś *ofiary*." Czujesz wewnętrzne ROZDARCIE słysząc to ostatnie, straszliwe słowo; on chce ją skrzywdzić... on chce CIEBIE skrzywdzić, bo ty jesteś NIĄ, a on chce ZRANIĆ ją; a mimo to jej krzywda jest ci POTRZEBNA i - chcesz KRZYCZEĆ, KRZYCZEĆ DO NIEJ, ŻE JEST W NIEBEZPIECZEŃSTWIE, UCIEKAJ, UCIEKAJ, DEIONARRO, PONIEWAŻ JEGO OCZY NISZCZĄ WSZYSTKO I...~ */
  IF ~~ THEN REPLY #52898 /* ~Rozlega się echo: "Oczywiście, Najdroższy. Życie jest ofiarą. Tyle już wiem."~ */ GOTO 15
  IF ~~ THEN REPLY #52899 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #52909 /* ~Ty... ona... jej... wypowiadasz jej słowa i jednocześnie czujesz, że w środku umierasz. Jesteś jako widz, i widzisz, jak kobieta umiera, bo słowa te to wyrok śmierci. A jednak wciąż, wciąż ona mówi, niebaczna i obojętna na niebezpieczeństwo...~ */
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52910 /* ~Rozlega się echo: "Ja... w przechowaniu u mojego ojca jest pewien zapis, Najdroższy; zapytaj o sześć, osiem, siedem, K i S. Zapisuję ci w nim wszystko; nie jest tego dużo, ale wraz z tym zostawiam..."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52913 /* ~Dzięki jednemu z kamieni doznań w Prywatnym Sensorium Miejskiego Gmachu Rozrywki, zobaczyłem ostatnie dni z życia Deionarry. W czasie doznania, Deionarra powiedziała, że pozostawiła dla mnie zapis. To może być coś użytecznego...~ */ GOTO 16
  IF ~  GlobalGT("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52911 /* ~Rozlega się echo: "Ja... w przechowaniu u mojego ojca jest pewien zapis, Najdroższy; zapytaj o sześć, osiem, siedem, K i S. Zapisuję ci w nim wszystko; nie jest tego dużo, ale wraz z tym zostawiam..."~ */ GOTO 16
  IF ~~ THEN REPLY #52912 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #52914 /* ~Ty... on... ogarnia cię fala *irytacji*; zaciskasz zęby, aby ta irytacja nie zaznaczyła się w rysach twojej twarzy. Czy ona *zawsze* musi mleć językiem, nawet jeżeli jej do tego nie *przymuszasz*?! Czy ona musi - ale nie - nie, utrzymuj tę irytację wewnątrz, wymyka się tylko cząstka...~ */
  IF ~~ THEN REPLY #52915 /* ~Rozlega się echo: "Daj spokój, Deionarro, ja nie mogę UMRZEĆ. Nie ma POTRZEBY dla tych głupot..."~ */ GOTO 17
  IF ~~ THEN REPLY #52916 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #52917 /* ~Ona... ty... ona jest owładnięta STRACHEM, strachem, który tobą wstrząsa i ten strach nawarstwia się w niej... w tobie, w tobie gdy obserwujesz, jak on marszczy brwi i śpieszysz, aby go poprawić! Musi on znać przyczyny i musi wiedzieć, jaka mądrość kryje się za nimi, będzie pod wrażeniem twych planów! Mów! Mów, zanim się odwróci...~ */
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52918 /* ~Rozlega się echo: "Wiem, że często postępuję głupio, Najdroższy, ale pamiętam wciąż twoje słowa o tym, że MOŻESZ zapominać, jeżeli się ciebie ciężko zrani. W moim zapisie są rzeczy, które pozwolą ci pamiętać, na wypadek, gdyby cię pamięć zawiodła."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52922 /* ~Podczas doznania Deionarry w Miejskim Gmachu Rozrywki... poczułem, że informacja o zapisie poruszyła jakąś strunę w moim wcześniejszym wcieleniu. Możliwe, że on też pozostawił zapis - dla samego siebie. Gdybym tylko miał numer zapisu, to mógłbym go odzyskać.~ */ GOTO 18
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
GlobalGT("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52919 /* ~Rozlega się echo: "Wiem, że często postępuję głupio, Najdroższy, ale pamiętam wciąż twoje słowa o tym, że MOŻESZ zapominać, jeżeli się ciebie ciężko zrani. W moim zapisie są rzeczy, które pozwolą ci pamiętać, na wypadek, gdyby cię pamięć zawiodła."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52923 /* ~Podczas doznania Deionarry w Miejskim Gmachu Rozrywki... poczułem, że informacja o zapisie poruszyła jakąś strunę w moim wcześniejszym wcieleniu. Na wszelki wypadek pozostawił on zapis dla samego siebie.~ */ GOTO 18
  IF ~  GlobalGT("Memory_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52920 /* ~Rozlega się echo: "Wiem, że często postępuję głupio, Najdroższy, ale pamiętam wciąż twoje słowa o tym, że MOŻESZ zapominać, jeżeli się ciebie ciężko zrani. W moim zapisie są rzeczy, które pozwolą ci pamiętać, na wypadek, gdyby cię pamięć zawiodła."~ */ GOTO 18
  IF ~~ THEN REPLY #52921 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1 17.2
  SAY #52924 /* ~Ona... ty zimno spoglądasz na nią swymi oczami, idąc wzrokiem za swoim spojrzeniem wzdłuż jej pobrużdżonego czoła, zmarszczonego zmartwieniem i rozpaczą. Ona zachowała się zgodnie z twoimi *oczekiwaniami*... a jednak jest coś w tym, co mówi...~ */
  IF ~~ THEN REPLY #52925 /* ~Rozlega się echo: "Być może... mam wszakże nadzieję, że w tym zapisie nie ma nic, co miałoby jakąś *wartość*... Nie chcę, aby gdzieś w jakimś sejfie pozostały rzeczy, które mogłyby być użyteczne w naszej podróży."~ */ GOTO 19
  IF ~~ THEN REPLY #52926 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #52927 /* ~Jej iluzja rozbija się, tylko na chwilę - obserwujesz, w milczeniu, jak emocja roztrzaskuje się na drobne kawałki, niczym posrebrzane szkło. "...być użyteczne..." takie zwyczajne stwierdzenie, a jednak nawet Deionarra WIDZI, i masz nadzieję, tylko przez chwilę, MASZ NADZIEJĘ, że ona WIDZI go takim, jaki jest - wężem, WĘŻEM...~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #52928 /* ~...i twoja nadzieja umiera, kiedy w oczach Deionarry ta emocja zostaje odbudowana, odpryski szkła zostają pozbierane z ziemi, obraz odtworzony, ale jednak niewielki odłamek bólu pozostaje. On sądzi, że twoje działanie było głupotą! Mimo to, twoje działanie było dla NIEGO! Musisz... wynagrodzić szkodę, ale jak?! Musisz przekonać go, że zapis jest nieważny, ale tak NIE JEST, NIE JEST nieważny. Jest WSZYSTKIM...~ */
  IF ~~ THEN REPLY #52929 /* ~Rozlega się echo: "Zapis, Najdroższy, to... to po prostu kilka rzeczy, które pomogą ci pamię..."~ */ GOTO 21
  IF ~~ THEN REPLY #52930 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #52931 /* ~Ostrze słów spada na Deionarrę; jest tak szybkie i tak ostre, że nie jesteś w stanie prześledzić jego toru.~ */
  IF ~~ THEN REPLY #52932 /* ~Rozlega się echo: "Zapis? Rzeczy, które robisz, Deionarro... takie... *romantyczne* gesty. Nieważne..."~ */ GOTO 22
  IF ~~ THEN REPLY #52933 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #52934 /* ~Nie! Ona... ty... Deionarra... znowu udało ci się go odciągnąć, jak poprzedniej nocy! Czujesz, że wąż znów się rusza, odrodzony, owija się wokół twojego serca. Rozlega się najcichszy syk ze wszystkich, a mimo to on nie słyszy...~ */
  IF ~~ THEN REPLY #52935 /* ~Rozlega się echo: "Czy... czy życzeniem twoim byłoby pozostawić jakiś zapis, Najdroższy? Dla siebie... albo dla kogo chcesz. To mogłoby pomóc ci pamiętać, gdybyś zostawił coś dla siebie... lub dla tych, których kochasz..."~ */ GOTO 23
  IF ~~ THEN REPLY #52936 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #52937 /* ~Ostre słowa znów zostają wypowiedziane, straszliwe i błyskawiczne. A jednak tym razem, obraz trwa, a wąż pozostaje zasłonięty. Wąż jest przebiegły i nie ujawni się dopóki nie uderzy.~ */
  IF ~~ THEN REPLY #52938 /* ~Rozlega się echo: "Zapis dla mnie? Nie może być... rzeczy, które chcę dla siebie zostawić, nie byłyby bezpieczne w biurze jakiegoś prawnika, Deionarro. Ale dość o tym... Muszę iść."~ */ GOTO 24
  IF ~~ THEN REPLY #52939 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #52940 /* ~On odchodzi! Musisz sprawić, aby pozostał... i całe doświadczenie WIRUJE wokół ciebie, straszne, wiruje spiralnie, kierując się ku ostatniej scenie... PYTANIE, które ty... ona... chce zadać, nie zadawaj go, Deionarro! Nie ZADAWAJ GO BĄDŹ CICHO BĄDŹ CICHO~ */
  IF ~~ THEN REPLY #52941 /* ~Rozlega się echo: "Najdroższy, zanim odejdziesz..."~ */ GOTO 25
  IF ~~ THEN REPLY #52942 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52943 /* ~JEGO GNIEW JEGO IRYTACJA CO *ZNOWU* DZIEWCZYNO CO *ZNOWU* TY KWILĄCA ZWIASTUNKO ŚMIERCI~ */
  IF ~~ THEN REPLY #52944 /* ~Rozlega się echo: "Zanim odejdę? Wygląda na to, że mi to nie grozi. No, Deionarro, czy te pytania nie mogą poczekać do świtu? Jest wiele..."~ */ GOTO 26
  IF ~~ THEN REPLY #52945 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #52946 /* ~ONA... TY... ONA JEST ZROZPACZONA TONIE POWIEDZ TO POWIEDZ TO POWIEDZ TO I ONA... TY... WYPOWIEDZ TO~ */
  IF ~~ THEN REPLY #52947 /* ~Rozlega się echo: "Czy *chcesz* abym z tobą poszła, Najdroższy?"~ */ GOTO 27
  IF ~~ THEN REPLY #52948 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #52949 /* ~Twoje gorączkowe emocje zamierają. To koniec. Słowa, które on... ty... masz wypowiedzieć są prawdziwe, ale ich prawda nie jest tą prawdą, którą ona dostrzega. Nie ma kłamstw, tylko chłodne kalkulacje. On *oczywiście* chce, abyś z nim poszła, Deionarro. Rozumiesz to doskonale, aż nazbyt doskonale: zbyt wiele zainwestował w biedną dziewczynę, aby teraz pozwolić jej odejść.~ */
  IF ~~ THEN REPLY #52950 /* ~Rozlega się echo: "Oczywiście, Deionarro. Nie pytałbym o to, gdybym nie pragnął twego towarzystwa. *Wiesz*, co do ciebie czuję..."~ */ GOTO 28
  IF ~~ THEN REPLY #52951 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #52952 /* ~W jego umyśle zalega chłodna cisza, potem rozlega się syk myśli, będący ostrą i śmiertelną reakcją, niczym ostrze sztyletu. Kłamstwo przychodzi błyskawicznie, nie obciążone emocjami.~ */
  IF ~~ THEN REPLY #52953 /* ~Rozlega się echo: "Kocham cię, Deionarro."~ */ GOTO 29
  IF ~~ THEN REPLY #52954 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #52955 /* ~A ty chcesz KRZYCZEĆ, jako że czujesz, iż kłamstwo obmywa ją niczym POŚWIATA, lecz jest to CIEŃ PRAWDY, POCAŁUNEK WĘŻA, A ON CHCE CIĘ SKRZYWDZIĆ, ONA ZAŚ NIE *WIDZI*, ŻE CHCESZ WRZESZCZEĆ ALE ONA PŁACZE Z RADOŚCI NAWET GDY - NAWET GDY~ */
  IF ~~ THEN REPLY #52956 /* ~Płaczesz z radości... z frustracji... z radości... z rozpaczy...~ */ GOTO 30
  IF ~~ THEN REPLY #52957 /* ~Oderwij się od doznania.~ */ GOTO 35
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #52958 /* ~Obmywają cię emocje, jakbyś tonął, TONĄŁ, i musisz mówić, PRAGNIESZ mówić, ale nie możesz... i...~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #52959 /* ~Oderwij się od doznania.~ */ GOTO 32
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52960 /* ~Oderwij się od doznania.~ */ GOTO 31
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52961 /* ~Oderwij się od doznania.~ */ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #52962 /* ~...i krzyczysz, krzyczysz, odrywając dłonie od kamienia, z twoich oczu płyną krwawe łzy, spływają strumieniem po ramionach, rękach i okrywają kamień. Krew! Jej krew! A... ty nie możesz jej OSTRZEC... i nie możesz powstrzymać PŁACZU...~ */
  IF ~~ THEN EXTERN ~DANNAH~ 260
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52963 /* ~...i krzyczysz, krzyczysz, odrywając dłonie od kamienia, z twoich oczu płyną krwawe łzy, spływają strumieniem po ramionach, rękach i okrywają kamień. Krew! Jej krew! A... ty nie możesz jej OSTRZEC... i nie możesz powstrzymać PŁACZU...~ */
  IF ~~ THEN EXTERN ~DGRACE~ 165
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #52964 /* ~...i krzyczysz, krzyczysz, odrywając dłonie od kamienia, z twoich oczu płyną krwawe łzy, spływają strumieniem po ramionach, rękach i okrywają kamień. Krew! Jej krew! A... ty nie możesz jej OSTRZEC... i nie możesz powstrzymać PŁACZU...~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52965 /* ~Spróbuj zebrać myśli...~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52966 /* ~Spróbuj zebrać myśli...~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #52967 /* ~Niezależnie od tego, jak bardzo chcesz odrzucić to doświadczenie od siebie, trwasz mocno przy nim, ponieważ wiesz, że jest rzeczą bardzo ważną, aby je zapamiętać. W tym doświadczeniu to byłeś *ty*... Było to doświadczenie Deionarry, ale ponieważ chodziło o ciebie, opanowały cię twoje wspomnienia, i przez to mogłeś ODCZUWAĆ obie strony równocześnie. Kim BYŁ ów ty? Kim był ten... ten twój *cień*?~ */
  IF ~~ THEN REPLY #52968 /* ~Odwróć się od kamienia i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.1 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.2 16.1 17.3 18.1 20.1 21.1 22.1 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #52969 /* ~Odrywasz się od tego doznania, ale przychodzi ci to z wysiłkiem - czujesz się tak, jak człowiek płynący przez ocean, rzucający się, *walczący*, byle tylko wydostać się na brzeg. Bierzesz głęboki oddech, i nagle w głowie masz pełną jasność, i ponownie stoisz przed wodnym, niebieskim kamieniem o nieruchomej i chłodnej powierzchni.~ */
  IF ~~ THEN REPLY #52970 /* ~Odwróć się od kamienia i odejdź.~ */ EXIT
END
