// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISHO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #50027 /* ~Widzisz pulchną, niską, rudowłosą kobietę. Jej twarz naznaczona jest troskami, zmartwieniami i gniewem - jątrzącymi się w niej już zbyt długo. Gdy się zbliżasz, zaczyna uśmiechać się szyderczo i odwraca głowę tak, że nie możesz dostrzec jej oczu. Zachowuje się tak, jakbyś ty nie mógł jej ujrzeć, a ona ciebie. Nawet dla niej nie istniejesz.~ */
  IF ~~ THEN REPLY #50029 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #50030 /* ~Kobieta w dalszym ciągu wytrwale cię ignoruje. Nic, co do niej mówisz, nie wywiera na niej wrażenia.~ */
  IF ~~ THEN REPLY #50031 /* ~"W porządku."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 2 // from:
  SAY #50033 /* ~Widzisz pulchną, niską, rudowłosą kobietę. Jej twarz naznaczona jest troskami, zmartwieniami i gniewem - jątrzącymi się w niej już zbyt długo. Rzecze szorstko. "Tyś ten, co się chce do podziemi dostać, ta? Nim dostaniesz od Dony Kiszał jej fragment klucza, musisz dla niej przysługę wykonać. Tu, w mieście, uwięziono biesa. Chcę, żeby był wolny." Zanim masz szansę zareagować, wręcza ci do ręki pergamin.~ */
  IF ~~ THEN REPLY #50035 /* ~"Dlaczego?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50036 /* ~"Nie pomagam w uwalnianiu biesów."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50038 /* ~"Powiedz mi, co mam zrobić."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50039 /* ~"Nie-Sławo, co o tym sądzisz?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #50040 /* ~"Bo jest mój! Bo tak wiele dla niego poświęciłam! Bo go ode mnie zabrali, ukryli przede mną i zamknęli. I nikt by mi nie pomógł, a on był wszystkim, co kiedykolwiek chciałam dla siebie!" Jej głos przybiera przebiegły ton. "Ale teraz mam wiedzę, której ty potrzebujesz. I nie dostaniesz jej, jeśli nie wypuścisz Agril-Szanaka."~ */
  IF ~~ THEN REPLY #50041 /* ~"Skąd mam wiedzieć, czy nie będzie się zachowywać agresywnie?"~ */ GOTO 6
  IF ~~ THEN REPLY #50042 /* ~"Nie pomagam w uwalnianiu biesów."~ */ GOTO 4
  IF ~~ THEN REPLY #50043 /* ~"Powiedz mi, co mam zrobić."~ */ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50044 /* ~"Nie-Sławo, co o tym sądzisz?"~ */ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 8.1
  SAY #50045 /* ~Śmieje ci się w twarz. "To nie ma znaczenia. Potrzebujesz piątej części Klucza. Ja ją mam. Rób, co mówię, albo będziesz musiał poszukać innej drogi do twego cennego podziemia."~ */
  IF ~~ THEN REPLY #50046 /* ~"Skąd mam wiedzieć, czy nie będzie się zachowywać agresywnie?"~ */ GOTO 6
  IF ~~ THEN REPLY #50047 /* ~"Nie zrobię tego."~ */ GOTO 7
  IF ~~ THEN REPLY #50048 /* ~"Powiedz mi, co mam zrobić."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.2 6.0 8.2
  SAY #50049 /* ~"Znajdź w mieście spichlerz. Znajdź wyrysowany na jego podłodze pentagram. Użyj w pobliżu pergaminu, a gdy pojawi się Agril-Szanak... uwolnij go. Jakoś się z nim dogadaj, ważne, żeby był wolny. To, co zrobisz później, już mnie nie obchodzi."~ */
  IF ~~ THEN REPLY #50050 /* ~"Świetnie. Żegnaj."~ */ JOURNAL #50051 /* ~Aby otrzymać piątą część Klucza, muszę odszukać w tym mieście spichlerz ze zbożem, wygrzebać w jego wnętrzu pentagram, użyć zwoju przy pentagramie i uwolnić biesa Agril-Szanaka. Kiedy to uczynię, mogę już wracać do Dony Kiszał po piątą część Klucza.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0
  SAY #50052 /* ~W jej oczach pojawia się uśmieszek - jeden z najbardziej jadowitych uśmiechów, jakie kiedykolwiek dane ci było widzieć. "To już mnie nie obchodzi. Zawrzyj z biesem własne układy. Chcę jedynie, by był wolny."~ */
  IF ~~ THEN REPLY #50053 /* ~"Co mam zrobić?"~ */ GOTO 5
  IF ~~ THEN REPLY #50054 /* ~"Nie zrobię tego."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 9.1
  SAY #50055 /* ~"W takim razie nie otrzymasz piątej części Klucza. Jeszcze zmienisz zdanie, oj tak. Przyjdź, gdy już to zrobisz." Chichocze i odwraca się.~ */
  IF ~~ THEN REPLY #50056 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",5)
Global("Free_Fiend","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #50057 /* ~Gdy się zbliżasz do niej tym razem, z determinacją koncentruje na tobie swój wzrok. Mówi szorstko. "Tyś ten, co się chce do podziemi dostać, ta? Nim dostaniesz od Dony Kiszał jej fragment klucza, musisz dla niej przysługę wykonać. Tu, w mieście, uwięziono biesa. Chcę, żeby był wolny." Zanim masz szansę zareagować, wręcza ci pergamin do ręki.~ */
  IF ~~ THEN REPLY #50058 /* ~"Dlaczego?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50059 /* ~"Nie pomagam w uwalnianiu biesów."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50060 /* ~"Powiedz mi, co mam zrobić."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50061 /* ~"Nie-Sławo, co o tym sądzisz?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~  GlobalGT("Free_Fiend","GLOBAL",0)
GlobalLT("Free_Fiend","GLOBAL",3)
~ THEN BEGIN 9 // from:
  SAY #50062 /* ~Dona Kiszał przygląda ci się, gdy się zbliżasz. Na jej twarzy maluje się pogarda. "Nie uwolniłeś jeszcze Agril-Szanaka, czyż nie? Wróć, gdy to zrobisz."~ */
  IF ~~ THEN REPLY #50063 /* ~"Jeszcze raz, co miałem zrobić?"~ */ GOTO 10
  IF ~~ THEN REPLY #50064 /* ~"Nie zrobię tego."~ */ GOTO 7
  IF ~~ THEN REPLY #50065 /* ~"Świetnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #50066 /* ~Wzdycha zniecierpliwiona. "Spichlerz. Pentagram. Przeczytać pergamin. Czy to takie trudne? Idź już." Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #50067 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~  Global("Free_Fiend","GLOBAL",3)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #50068 /* ~"Zrobione, co? Tak, tak... Ale gdzie jest Agril-Szanak?"~ */
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50069 /* ~Prawda: "Nie żyje."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 13
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50070 /* ~Kłamstwo: "Pojawi się tutaj."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50071 /* ~"Jestem pewny, że niedługo się tu pojawi."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #68287 /* ~"Zostawiłem go w pentagramie. Sama możesz go uwolnić. Przywołałem go... reszta należy do ciebie."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.2 11.3
  SAY #50072 /* ~Rechocze. "A więc zrealizujemy nasze plany, ustawimy pułapki i pożałują oni swych błędów, oj tak." Wręcza ci sakwę pełną monet. "Oto ostatnia część Klucza: 'Ile po trzykroć Środek od najdalszego bieguna'. Idź i porozmawiaj z Plugawym Barsem. On już skieruje cię odpowiednio." Nadal rechocząc, zbiera swoje rzeczy i szybko odchodzi.~ */
  IF ~~ THEN REPLY #50073 /* ~"Żegnaj..."~ */ DO ~GivePartyGold(1500)
AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50074 /* ~Dona Kiszał dała mi piątą część Klucza: "Ile po trzykroć Środek od najdalszego bieguna". Dona mamrotała coś o zemście i poradziła mi, abym teraz, chcąc skorzystać z całego Klucza, znów porozmawiał z Plugawym Barsem.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #50075 /* ~Jej twarz przybiera blady odcień. "Nie żyje... ale... Zabiłeś go? W takim razie jestem zgubiona. Weź ten swój cholerny klucz i zjeżdżaj." Niemrawym głosem wypowiada następujące słowa: "Ile po trzykroć Środek od najdalszego bieguna." Rozgląda się przez chwilę wokół. "Porozmawiaj ponownie z Plugawym Barsem. On będzie wiedział, co robić." Zabiera swoje rzeczy i odchodzi.~ */
  IF ~~ THEN REPLY #50076 /* ~"Żegnaj więc."~ */ DO ~AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50077 /* ~Dona Kiszał dała mi piątą część Klucza: "Ile po trzykroć Środek od najdalszego bieguna". Powiedziała mi, abym jeszcze raz porozmawiał ze Plugawym Barsem. Mamrotała też coś o tym, że śmierć Agril-Szanaka to dla niej zguba, po czym pognała gdzieś jakby ścigały go ją zastępy Dziewięciu Piekieł "~ */ EXIT
END
