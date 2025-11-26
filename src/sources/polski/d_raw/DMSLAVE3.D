// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37845 /* ~Widzisz chudego człowieka o szczurzym wyglądzie. Uważnie obserwuje ludzi wokół siebie. Zauważa cię.~ */
  IF ~~ THEN REPLY #37869 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37870 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37846 /* ~Mężczyzna patrzy się na ciebie, a jego wzrok mierzy cię od stóp do głowy. W końcu wasze spojrzenia się spotykają. "Witaj."~ */
  IF ~~ THEN REPLY #37871 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37872 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 6.1 7.0 8.1 9.0 10.0 11.0 12.0 15.0 16.2 17.2 18.0
  SAY #37847 /* ~Mężczyzna obdarza cię bezdusznym uśmiechem. "Tak?"~ */
  IF ~~ THEN REPLY #37873 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~~ THEN REPLY #37874 /* ~"Opowiedz mi o tej dzielnicy."~ */ GOTO 9
  IF ~~ THEN REPLY #37875 /* ~"Opowiedz mi o innych dzielnicach."~ */ GOTO 10
  IF ~~ THEN REPLY #37876 /* ~"Opowiedz mi o Sigil."~ */ GOTO 11
  IF ~~ THEN REPLY #37877 /* ~"Czy w okolicy jest coś, co warto zobaczyć?"~ */ GOTO 12
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37878 /* ~"Szukam kogoś imieniem Lotar albo Pan Kości..."~ */ GOTO 13
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37879 /* ~"Zgubiłem czaszkę... Znasz kogoś, komu by się mogła przydać?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #37880 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37848 /* ~Mężczyzna patrzy się na ciebie przez chwilę. "To blok aukcyjny. Tutaj sprzedaje się niewolników."~ */
  IF ~~ THEN REPLY #37881 /* ~"Dlaczego cię sprzedają?"~ */ GOTO 4
  IF ~~ THEN REPLY #37882 /* ~"Nie wiedziałem, że w Sigil uznaje się niewolnictwo."~ */ GOTO 5
  IF ~~ THEN REPLY #37883 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37884 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37852 /* ~Mężczyzna obserwuje cię uważnie, ale na jego twarzy nie widać żadnych emocji. "Jestem winny pieniądze, których nie mogę załacić. Sprzedają mnie tutaj, aby pokryć mój dług."~ */
  IF ~~ THEN REPLY #37885 /* ~"Nie wiedziałem, że w Sigil uznaje się niewolnictwo."~ */ GOTO 5
  IF ~~ THEN REPLY #37886 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37887 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37853 /* ~Mężczyzna waha się, ale po chwili odpowiada. "Niewolnicy są wszędzie, ale większość z nas po prostu nie zdaje sobie z tego sprawy. Jesteśmy niewolnikami swoich uczuć, niewolnikami potrzeby jedzenia i oddychania, potrzeby wydalania ekskrementów, zniewalają nas nawet prawa, według których postępujemy..." Mężczyzna wzrusza ramionami. "Jesteśmy niewolnikami."~ */
  IF ~~ THEN REPLY #37888 /* ~"Rozumiem co chcesz powiedzieć."~ */ GOTO 6
  IF ~~ THEN REPLY #37889 /* ~"Nie mogę się z tobą zgodzić."~ */ GOTO 8
  IF ~~ THEN REPLY #37890 /* ~"Rozumiem. Mam do ciebie jeszcze kilka pytań..."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37855 /* ~Mężczyzna kiwa głową. "Dzięki temu, że zdajemy sobie sprawę ze swojego zniewolenia wobec wieloświata, możemy podjąć pierwsze kroki, aby odzyskać wolność."~ */
  IF ~~ THEN REPLY #37891 /* ~"Jakie kroki?"~ */ GOTO 7
  IF ~~ THEN REPLY #37892 /* ~"Rozumiem. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37893 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37856 /* ~Mężczyzna kiwa przecząco głową. "Tylko ty sam możesz odpowiedzieć na to pytanie. Musisz popatrzyć w głąb siebie..." Nieznajomy milknie, ale nie przestaje cię obserwować.~ */
  IF ~~ THEN REPLY #37894 /* ~"Rozumiem. Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37895 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #37857 /* ~Mężczyzna wzrusza ramionami. "W takim razie jesteś niewolnikiem swojej niewiedzy. Tylko wtedy, gdy zdasz sobie z tego sprawę, będziesz się mógł wyzwolić."~ */
  IF ~~ THEN REPLY #37896 /* ~"Jakie kroki?"~ */ GOTO 7
  IF ~~ THEN REPLY #37897 /* ~"Rozumiem. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37898 /* ~"Muszę już iść, bywaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1
  SAY #37858 /* ~Mężczyzna obserwuje cię uważnie. "To Niższa Dzielnica - dom szczęśliwców, czyli tych, którzy nie mieszkają w slumsach Ula. To dom tych, którzy nie mają tyle szczęścia i nie mogą sobie pozwolić na zbytki Dzielnicy Pani. To dom tych, którym nie brakuje nadziei, i którzy mogą marzyć o lepszych dniach. To także dom tych, którzy już dawno zatracili nadzieję, i nie widzą nic oprócz własnego nieszczęścia..." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #37899 /* ~"Ee... Rozumiem. Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37900 /* ~"Muszę już iść. Bywaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37859 /* ~Wzrusza ramionami. "Dzielnice są jak sztuka teatralna i aktorzy, którzy w niej grają. W każdej scenie zmienia się scenografia, ale ludzie na scenie pozostają ci sami. Możesz przemierzyć Sigil wzdłuż i wszerz, ale przekonasz się, że to prawda." Patrzy na ciebie pustym wzrokiem.~ */
  IF ~~ THEN REPLY #37901 /* ~"Tak... No cóż... Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37902 /* ~"Chyba już pójdę. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3
  SAY #37860 /* ~Mężczyzna patrzy na otaczających go ludzi zimnym okiem, jakby ich oceniał. "Sigil jest takie, jak je odbierasz. Dla jednych to centrum wszystkiego, a dla innych, to tylko przykrywka niczego. Dla jednych to początek wszystkich podróży, dla innych to koniec." Obrzuca cię zimnym spojrzeniem. "A czym jest dla ciebie?"~ */
  IF ~~ THEN REPLY #37903 /* ~"No nie wiem... Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37904 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #37862 /* ~Mężczyzna otwiera ramiona, jakby chciał objąć świat, i patrzy na ciebie swoimi pustymi oczyma. "Wszystko ma swoją wartość, nic nie ma wartości. Wszystko warto zobaczyć." Obniża swoje ręce. "Każdy z nas inaczej patrzy na świat i każdy inaczej przyporządkowuje wartości. To, co ma wartość dla mnie, dla ciebie może być bezwartościowe. Dlatego wszystko jest warte zobaczenia, abyśmy mogli zbudować wszechświat, w którym chcielibyśmy żyć."~ */
  IF ~~ THEN REPLY #37905 /* ~"Ee... Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37906 /* ~"Naprawdę muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.5
  SAY #37863 /* ~Przed udzieleniem odpowiedzi mężczyzna przechyla głowę i lekko się waha. "Pan Kości nie lubi przybyszy. Jeśli pragnąłby twoich odwiedzin, posłałby po ciebie."~ */
  IF ~~ THEN REPLY #37907 /* ~"Co możesz mi o nim powiedzieć?"~ */ GOTO 14
  IF ~~ THEN REPLY #37908 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 15
  IF ~~ THEN REPLY #37909 /* ~"Już po mnie posłał. Ukradł coś, co do mnie należy."~ */ GOTO 16
  IF ~~ THEN REPLY #37910 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0
  SAY #37864 /* ~"To Wysoki Kapłan śmierci, dlatego on sam jej nie podlega. Ma władzę nad życiem i śmiercią, i jest przekonany o swojej roli." Mężczyzna zastanawia się przez chwilę. "On jest ostateczną władzą w Sigil i lepiej go nie lekceważyć."~ */
  IF ~~ THEN REPLY #37911 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 15
  IF ~~ THEN REPLY #37912 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0 16.0 17.1
  SAY #37865 /* ~Mężczyzna odwraca się od ciebie i patrzy w dal. "Znajdziesz go w jego domu, w Kościach Nocy. To gdzieś blisko, ale nie wiem gdzie." Nieznajomy patrzy na ciebie oczyma, w których nie ma życia. "Szukaj dalej. Znajdziesz go, albo on znajdzie ciebie. To dwie ścieżki do tego samego celu."~ */
  IF ~~ THEN REPLY #37913 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37914 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY #37866 /* ~Mężczyzna wzrusza głową. "Raz coś posiadamy, innym razem możemy to utracić. Bądź wdzięczny za to, co ciągle masz."~ */
  IF ~~ THEN REPLY #37915 /* ~"Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 15
  IF ~~ THEN REPLY #37916 /* ~"Co możesz mi o nim powiedzieć?"~ */ GOTO 14
  IF ~~ THEN REPLY #37917 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37918 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #37867 /* ~Mężczyzna powoli potakuje. "Tak. Według mnie to robota Lotara, Pana Kości."~ */
  IF ~~ THEN REPLY #37919 /* ~"Co możesz mi o nim powiedzieć?"~ */ GOTO 14
  IF ~~ THEN REPLY #37920 /* ~"Gdzie go można znaleźć?"~ */ GOTO 15
  IF ~~ THEN REPLY #37921 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37922 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37868 /* ~Widzisz chudego człowieka o szczurzym wyglądzie. Zauważa cię. "Nasze ścieżki znowu się spotykają."~ */
  IF ~~ THEN REPLY #37923 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37924 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END
