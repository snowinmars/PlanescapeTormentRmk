// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANDER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6657 /* ~Starzec patrzy na ciebie z bojaźnią w oczach. "A więc ty jesteś tym, przez którego całe to zamieszanie, co? Idź tedy swoją drogą. Nie mam ci nic do powiedzenia."~ */
  IF ~~ THEN REPLY #6668 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6669 /* ~Starzec patrzy przez chwilę na ciebie przez przymrużone powieki i odzywa się. "Nie potrafię ci pomóc. Będziesz musiał poddać się strażnikom." Odwraca się i wraca do pracy nad przedmiotem, który trzyma w dłoniach.~ */
  IF ~~ THEN REPLY #6670 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Evil_Xander_1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #6671 /* ~"Czy naprawdę uważasz, że twoje pogróżki sprawią, że zechcę ci pomóc? Jesteś większym głupcem, niż mi się wydawało. Żądam przeprosin. I to natychmiast."~ */
  IF ~~ THEN REPLY #6672 /* ~"Niechaj cię Dziewięć Piekieł pochłonie, starcze."~ */ GOTO 15
  IF ~~ THEN REPLY #6673 /* ~Kłamstwo: "Serdecznie przepraszam. Poniosły mnie nerwy. To się już nie powtórzy."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #6674 /* ~"Serdecznie przepraszam. Poniosły mnie nerwy. To się już nie powtórzy."~ */ GOTO 16
  IF ~~ THEN REPLY #6675 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 15 even though they appear after this state */
~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #6676 /* ~"Ten sprzęt nie działa, przyjacielu. Myślę, że jest niesprawny już od czasu śmierci tej idiotki Bedai-Lin. Jeśli chcesz, aby był sprawny, musisz wysłuchać moich wskazówek. A teraz posłuchaj..." Starzec zaczyna ci wyłuszczać wszystkie szczegóły. Nie jesteś pewien, czy wszystkie rozumiesz.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #6677 /* ~"Myślę, że wiem, o co chodzi. Innymi słowy, usuwam pierwotny ząb koła zębatego, czyszczę go smarem, ostrzę stępiony ząb i wkładam go na miejsce, czy tak?"~ */ DO ~SetGlobal("GearRepair","GLOBAL",4)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #6678 /* ~"Myślę, że wiem, o co chodzi... Która to część odpowiadała za pracę pierwotnego zespołu motywacyjnego... Nie, poczekaj. W ogóle tego nie pojmuję."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #6679 /* ~"Jasne. Czy teraz pozwolisz, abym dalej opowiadał o swoim projekcie, czy masz zamiar zadawać mi jakieś inne pytania?"~ */
  IF ~~ THEN REPLY #6680 /* ~"Hm, właściwie, to chciałbym zadać ci kilka pytań."~ */ GOTO 27
  IF ~~ THEN REPLY #6681 /* ~"Nie, to już wszystko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #6682 /* ~"To jasne jak słońce, że nie będziesz w stanie sam tego naprawić. Myślę, że to ja będę musiał się ruszyć i zrobić to za ciebie." Strzec pomrukuje i gramoli się na nogi. "Niektóre trepy naprawdę nie ułatwiają nam, siwobrodym, życia." Mruczy do siebie.~ */
  IF ~~ THEN REPLY #6683 /* ~"Zanim odejdziesz, chciałbym zadać ci kilka pytań."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 27
  IF ~~ THEN REPLY #6684 /* ~"Wiesz, niektórzy z nas mają zdolności innego rodzaju, trepie."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",4)
~ THEN BEGIN 6 // from: 12.2
  SAY #6685 /* ~"Kiedykolwiek będziesz gotów na użycie Klucza Snów, obliźniony, daj mi znać, a zaraz ci go przekażę."~ */
  IF ~~ THEN REPLY #6686 /* ~"Daj mi ten klucz."~ */ GOTO 7
  IF ~~ THEN REPLY #6687 /* ~"Nie. Jeszcze nie. Odpowiedz na kilka moich pytań."~ */ GOTO 27
  IF ~~ THEN REPLY #6688 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6689 /* ~Strzec milknie, jakby mocował się z różnymi myślami. "Zamknij oczy i wyciągnij rękę.", mówi wreszcie, "Będziesz musiał najpierw poczuć ten klucz, zanim go zobaczysz, albo w ogóle nie zadziała."~ */
  IF ~~ THEN REPLY #6690 /* ~Rób, jak ci mówi.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6691 /* ~Spróbuj podpatrzyć.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 11.0
  SAY #6692 /* ~Czujesz, jak coś dotyka wnętrza twojej stwardniałej dłoni. Na początku dotknięcie jest niemal niezauważalne, ale wkrótce jego wrażenie rośnie, aż wreszcie dobiega cię głos Xandera "Otwórz oczy." Kiedy to robisz, dostrzegasz we wnętrzu swoje dłoni czarne piórko. "Moja praca dobiegła końca." mówi Xander "To klucz do drzwi w Kuźni, która są położone najbardziej na lewo. Użyj go, a Kreator Snów stanie przed tobą otworem."~ */
  IF ~~ THEN REPLY #6693 /* ~"Pióro? Pióro to rezultat całej tej pracy?"~ */ JOURNAL #68034 /* ~Wreszcie udało mi się dokończyć to przeklęte zadanie z kreatorem snów. W nagrodę za to dostałem... pióro. To ma być klucz, który otwiera wrota do snów. Mam nadzieję, że to będzie wartego całego tego zachodu.~ */ GOTO 10
  IF ~~ THEN REPLY #6695 /* ~"Dzięki, Xanderze. Żegnaj."~ */ DO ~EscapeArea()
~ JOURNAL #68034 /* ~Wreszcie udało mi się dokończyć to przeklęte zadanie z kreatorem snów. W nagrodę za to dostałem... pióro. To ma być klucz, który otwiera wrota do snów. Mam nadzieję, że to będzie wartego całego tego zachodu.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #6696 /* ~Unosisz nieznacznie powieki i podpatrujesz, jak Xander na chwilę zatapia się w medytacji i wznosi swoją rękę w górę, ponad twoją dłonią. Nie dzieje się nic. Xander otwiera oczy, wlepia wzrok w twoją pustą rękę i wypala: "Mówiłem, żebyś zamknął oczy, trepie. To nie zabawa. Myślisz, że będę tu sterczał wieki i tracił czas na durną błyskotkę. Jak śmiesz w ogóle powątpiewać w moje umiejętności? Zamknij oczy, trepie, i trzymaj je zamknięte albo nigdy nie będziesz miał swojego klucza."~ */
  IF ~~ THEN REPLY #6697 /* ~"Daj mi ten klucz, starcze. Natychmiast."~ */ GOTO 11
  IF ~~ THEN REPLY #6698 /* ~Rób, jak ci mówi.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6699 /* ~"Zapomnij o tym. Mam ciekawsze rzeczy do roboty niż zajmowanie się wariactwami." Odejdź.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #6700 /* ~"To ostatnie zabezpieczenie Kreatora Snów, skurlu. Czy myślisz, że pozwoliłbym, aby każdy mógł tam włazić bez żadnego trudu? Taki głupi, to ja jeszcze nie jestem. Chcesz jeszcze czegoś ode mnie, czy mogę już wracać do swojej roboty?"~ */
  IF ~~ THEN REPLY #6702 /* ~"Wracaj do swojej roboty."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #6703 /* ~"Dzięki. Wracaj do swojej roboty."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #6704 /* ~Jego twarz nabiega czerwienią i masz wrażenie, że mnóstwo słów, niekoniecznie tych najuprzejmiejszych pcha się starcowi na usta. Ostatecznie jednak opanowuje się, bierze głęboki oddech i odzywa się tonem kontrolowanej wściekłości. "Słuchaj, trepie, jeśli chcesz mieć klucz, musisz mi zaufać. Albo mi zaufasz i zamkniesz te swoje przeklęte oczy i będziesz miał dla siebie swoje sny, albo mi nie zaufasz i obejdziesz się smakiem. Twoja wola, twój wybór, przyjacielu."~ */
  IF ~~ THEN REPLY #6705 /* ~Rób, jak ci mówi.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
~ GOTO 8
  IF ~~ THEN REPLY #6706 /* ~"Zapomnij o tym. Mam ciekawsze rzeczy do roboty niż zajmowanie się wariactwami."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",3)
~ THEN BEGIN 12 // from: 19.2
  SAY #6707 /* ~"Potrzebuję jeszcze jednego przedmiotu i będziemy mogli wejść w ostateczną fazę uruchamiania Kreatora Snów. Potrzebna mi poduszka, wyjęta z trumny. Ona ześle na ciebie sen tak głęboki, że zbliżysz się w nim do śmierci. Otworzy ci umysł na emanacje Kreatora Snów. Można to nazwać inwencją z mojej strony."~ */
  IF ~  !PartyHasItem("DrmPllw")
~ THEN REPLY #6708 /* ~"Poduszka wyjęta z trumny? Będziesz to miał. Ale najpierw, odpowiedz na kilka moich pytań."~ */ GOTO 27
  IF ~~ THEN REPLY #6709 /* ~"Nie wydaje mi się, abym miał ochotę dalej znosić ci te wszystkie przedmioty."~ */ GOTO 13
  IF ~  PartyHasItem("DrmPllw")
~ THEN REPLY #6710 /* ~"Mam dla ciebie tę poduszkę. Zaczynajmy wreszcie z tym wszystkim."~ */ DO ~TakePartyItemNum("DrmPllw",1)
SetGlobal("Dream","GLOBAL",4)
~ JOURNAL #68035 /* ~Udało mi się wydostać dla Xandera poduszkę trumienną od Hamrysa. Ciekawym jakie teraz wyznaczy mi zadanie.~ */ GOTO 6
  IF ~~ THEN REPLY #6711 /* ~"Przyniosę ci to."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 19.1 21.1
  SAY #6712 /* ~"Nie masz ochoty, tak? Może byś zatem zakonotował sobie, że przedmioty te niezbędne są dla sfinalizowania projektu przeznaczonego tylko i wyłącznie dla CIEBIE, w którym twój zakichany interes gra pierwsze skrzypce i ponadto praca nad tym niepraktycznym urządzeniem pochłonęła większość czasu czterech pokoleń mojej rodziny, a wszystko to dla CIEBIE. Dlatego, jeżeli chcesz, żeby cała ta sprawa przybrała korzystny dla ciebie obrót, przestać jęczeć i zacznij współpracować."~ */
  IF ~~ THEN REPLY #6713 /* ~"Starcze, albo poskromisz nieco swój język, albo też wiele już się w swoim życiu nie nagadasz."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Xander_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #6714 /* ~"Dobra, Zrobię to. Tylko przestań na mnie pokrzykiwać."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6715 /* ~"Zdecydowałbyś się zaprzepaścić cały ten czas i pracę w to wszystko włożoną? Zdecydowałbyś się poświęcić to wszystko, tylko dlatego, że ktoś, notabene nie bez słuszności, nazwał cię durniem? Prawdziwa z ciebie kapuściana głowa, jeśli sądzisz, że uda ci się to wszystko dokończyć beze mnie. Ale już skrajną głupotę okazujesz w tym, że wyznajesz pogląd, że ostre słowa winno się karać śmiercią. Naprawdę uważasz, że odgrażając się wszystkiemu i wszystkim na twojej drodze, dopniesz upatrzonego celu? Życie w Sferach nie na tym polega, mój ty chłopcze o tysiącu bliznach."~ */
  IF ~~ THEN REPLY #6716 /* ~"Zabijałem z bardziej błahych powodów."~ */ GOTO 16
  IF ~~ THEN REPLY #6717 /* ~"Mam zamiar cię opuścić. Bo inaczej zaraz popełnię błąd, którego obaj będziemy żałować."~ */ EXIT
END

IF WEIGHT #2 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 15 // from: 2.0
  SAY #6718 /* ~"Szpicuj się, skurlu. Nigdy nie odzyskasz swoich snów. Twój drogocenny Kreator Snów jest niesprawny."~ */
  IF ~~ THEN REPLY #6719 /* ~Zrobione.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.1 2.2 14.0
  SAY #6720 /* ~"Nie wątpię, bezmyślny skurlu. Twoja wieczna poza twardziela całkowicie wyprowadza mnie z równowagi. Możesz iść do Otchłani razem ze swoim Kreatorem Snów." Wygląda na to, że starzec zaraz zawoła straże.~ */
  IF ~  CheckStatGT(Protagonist,13,DEX)
~ THEN REPLY #6721 /* ~Skręć mu kark, zanim skończy.~ */ DO ~Kill(Myself)
PlaySoundNotRanged("SPE_11")
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #6722 /* ~Skręć mu kark, zanim skończy.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #6723 /* ~Uciekaj.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #6724 /* ~W mgnieniu oka chwytasz starego inżyniera za kark, miażdżysz go w uścisku jak wykałaczkę. Starzec, bez jednego jęku, osuwa się na ziemie, u twoich stóp. Wygląda na to, że pokazałeś mu dobitnie, czyje argumenty mają tutaj większą siłę przebicia. Inna sprawa, że nieopatrznie pokazałeś to też wszystkim innym zgromadzonym w sali. Ktoś właśnie podniósł alarm.~ */
  IF ~~ THEN REPLY #6725 /* ~"Zatem w porządku."~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #6726 /* ~Starzec zręcznym unikiem ucieka przed twoim uściskiem i woła straże.~ */
  IF ~~ THEN REPLY #6727 /* ~"A niech to diabli."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #7 ~  Global("Dream","GLOBAL",2)
~ THEN BEGIN 19 // from: 21.0
  SAY #6728 /* ~"Do machiny tej potrzebna jest jeszcze klatka na ptaki, ozdobiona brzytwami, solidnie wykuta, aby dzięki niej można było wiernie naśladować niszczycielską siłę snów i ich właściwości pochłaniania naszych serc i naszej wyobraźni. Klatkę taką powinieneś znaleźć w Wieży Oblężniczej."~ */
  IF ~~ THEN REPLY #6729 /* ~"A jak mam się tam dostać?"~ */ GOTO 20
  IF ~~ THEN REPLY #6749 /* ~"Nie bardzo mam ochotę znosić ci te wszystkie przedmioty."~ */ GOTO 13
  IF ~  PartyHasItem("DrmCage")
~ THEN REPLY #6865 /* ~"Mam ją przy sobie. Daj mi moje sny."~ */ DO ~TakePartyItemNum("DrmCage",1)
SetGlobal("Dream","GLOBAL",3)
~ JOURNAL #68036 /* ~Kiedy przyniosłem mu pokrytą żyletkami klatkę, Xander kazał mi jeszcze przynieś trumienną poduszkę, aby można było pomyślnie oddać sen zmarłych.~ */ GOTO 12
  IF ~~ THEN REPLY #6866 /* ~"Klatka. Jakie to prozaiczne. Dobrze. Ale najpierw, odpowiedz na kilka moich pytań."~ */ GOTO 27
  IF ~~ THEN REPLY #6868 /* ~"Klatka z brzytwami. Dobra, wrócę tu niedługo."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #6751 /* ~"Mam cię za człeka zaradnego. Znajdziesz drogę, jeśli się tylko postarasz."~ */
  IF ~~ THEN REPLY #6752 /* ~"Dobra. A teraz odpowiedz na kilka moich pytań."~ */ GOTO 27
  IF ~~ THEN REPLY #6753 /* ~"Dobrze. Na pewno tutaj powrócę."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Dream","GLOBAL",1)
~ THEN BEGIN 21 // from: 24.0 26.0 28.1 29.1 30.0
  SAY #6754 /* ~"To, co jest mi potrzebne do zainicjowania ostatnich etapów uruchomienia Kreatora Snów to kawał twojej skóry umaczany w twojej krwi tak, aby cała machina mogła zapoznać się z istotą twego organizmu. Musisz mi to podać w błękitno-zielonej butli, która będzie symbolizowała ocean snów, ku któremu podążysz."~ */
  IF ~  PartyHasItem("DrmVial")
~ THEN REPLY #6755 /* ~"Mam to przy sobie. Proszę. Pokaż mi moje sny."~ */ DO ~TakePartyItemNum("DrmVial",1)
SetGlobal("Dream","GLOBAL",2)
~ JOURNAL #68037 /* ~Przyniosłem Xanderowi fiolkę ciała i krwi dla jego kreatora snów. Teraz z kolei konstruktor zażądał klatki dla ptaków pokrytej żyletkami.~ */ GOTO 19
  IF ~~ THEN REPLY #6756 /* ~"Nie bardzo mam ochotę tego szukać."~ */ GOTO 13
  IF ~~ THEN REPLY #6757 /* ~"Ciało i krew, tak? Ostatnio dość już tego tu i ówdzie zostawiłem. Najpierw odpowiedz na moje pytanie."~ */ GOTO 27
  IF ~~ THEN REPLY #6758 /* ~"Chciałbym, żebyś odpowiedział na jedno, czy dwa moje pytania. Co do Kreatora Snów, nie jestem zainteresowany."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 22
  IF ~~ THEN REPLY #6759 /* ~"Ciało, krew, butla. Dobrze. Wrócę tu niebawem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.3 33.1
  SAY #6760 /* ~Wygląda na to, że tymi słowami zbiłeś Xandera z tropu. "Nie jesteś zainteresowany? Ależ... Ależ to pochłonęło czas czterech pokoleń mojej rodziny. Mój pradziad powiadał, że nie mogłeś się tego doczekać... On miał ten zwój..."~ */
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #6761 /* ~"Twój pradziad? Co ty opowiadasz? Powiedz mi, co o mnie wiesz."~ */ GOTO 23
  IF ~~ THEN REPLY #6762 /* ~"Nie, nie jestem zainteresowany. Po prostu odpowiedz na kilka moich pytań."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,0,0)
~ GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #6763 /* ~"Przyszedłeś do mojego pradziada Xera i wyznałeś mu, że nie możesz śnić. Powiedziałeś, że chcesz móc śnić znowu. Obiecałeś mu potworną sumę pieniędzy za zbudowanie maszyny, która pomogłaby ci odzyskać stracone sny. Powiedziałeś, że zajrzysz do niego za kilka lat, żeby sprawdzić, jak idą mu prace, ale nigdy już do niego nie powróciłeś."

Czujesz, jak powracają do ciebie wspomnienia.~ */
  IF ~~ THEN REPLY #6764 /* ~Powstrzymaj wspomnienia.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #6765 /* ~Przyjmij wspomnienia.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #6766 /* ~Przyjmij wspomnienia.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #6767 /* ~Siłą woli powstrzymujesz wspomnienia przed wypełnieniem twojego umysłu.

"Po śmierci Xera kontynuowano pracę nad machiną. Moja babka Nula zaczęła opracowywać tę sprawę pod bardziej ezoterycznym kątem. Za pomocą ziół i kamyków mozaikowych tworzyła wzory magiczne, które zdolne były przywołać fragmenty snów ze Sfery Astralnej i Niebiańskiej. Jeszcze dalej poszedł mój wuj, który dla potrzeb tego urządzenia pozyskał sobie pomoc zarówno biesów, jak i niebian. Ja z kolei opracowałem rytuały, które pozwalają na wyzwolenie potencjału Kreatora Snów. I tym sposobem będziesz mógł odzyskać swoje sny."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6768 /* ~"Dobra. Przekonałeś mnie. Więc czego potrzebuję, aby odzyskać swoje sny?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6769 /* ~"Tego akurat nie jestem ciekawy. Odpowiedz na kilka innych moich pytań."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6770 /* ~"Interesujące. Może kiedyś wrócimy do tej rozmowy. Póki co, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.2
  SAY #6772 /* ~Wspomnienia o młodym wynalazcy Xero Xanderze przyćmiewają słowa jego potomka i przypominasz sobie młodego czarodzieja pokazującego ci czary swojej własnej roboty. "Nazywam to 'Uspokojeniem'.", mówi mag. Patrzycie obaj, jak cząsteczki magii osiadają delikatnie wokół ciebie, a na twoje serce spływa głęboki spokój. "Działa.", mówisz, "Miejmy nadzieję, że pójdzie ci tak samo dobrze z tą maszyną do snów."

Nil Xander przestaje mówić. "Czy ty mnie w ogóle słuchasz?"~ */
  IF ~~ THEN REPLY #6773 /* ~"Co? Naturalnie. A czy możesz to powtórzyć?"~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ GOTO 26
  IF ~~ THEN REPLY #6774 /* ~"Nie. Żegnaj."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #6775 /* ~Wygląda na poirytowanego, ale powstrzymuje się od głośnych komentarzy. "Po śmierci Xera kontynuowano pracę nad machiną. Moja babka Nula zaczęła opracowywać tę sprawę pod bardziej ezoterycznym kątem. Za pomocą ziół i kamyków mozaikowych tworzyła wzory magiczne, które zdolne były przywołać fragmenty snów ze Sfery Astralnej i Niebiańskiej. Jeszcze dalej poszedł mój wuj, który dla potrzeb urządzenia pozyskał sobie pomoc zarówno biesów, jak i niebian. Ja z kolei opracowałem rytuały, które pozwalają na wyzwolenie potencjału Kreatora snów I tym sposobem będziesz mógł odzyskać swoje sny."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6776 /* ~"Dobra. Przekonałeś mnie. Więc czego potrzebuję, aby odzyskać swoje sny?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6777 /* ~"Tego akurat nie jestem ciekawy. Odpowiedz na kilka innych moich pytań."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6778 /* ~"Interesujące. Może kiedyś wrócimy do tej rozmowy. Póki co, żegnaj."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 4.0 5.0 6.1 12.0 19.3 20.0 21.2 22.1 24.1 26.1 28.2 29.2 30.1 31.0 32.0 33.2 34.0 35.1 36.0 38.0
  SAY #6779 /* ~Niewielka fałda zadumy dołącza do pajęczyny zmarszczek na jego czole. "A co byś chciał wiedzieć?"~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6780 /* ~"Wspominałeś coś o Kreatorze Snów. Opowiedz mi o nim coś więcej."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6781 /* ~"Powiedz mi, co wiesz o zabójstwie tego kowala."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
~ THEN REPLY #6782 /* ~"Proszono mnie, abym naprawił te koła zębate z Kuźni. Powiesz mi, jak to zrobić?"~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6785 /* ~"Kim jesteś?"~ */ GOTO 33
  IF ~~ THEN REPLY #6787 /* ~"Co możesz mi powiedzieć o Bogowcach?"~ */ GOTO 35
  IF ~~ THEN REPLY #6788 /* ~"Opowiedz mi o tych robotnikach wokół ciebie."~ */ GOTO 34
  IF ~~ THEN REPLY #6789 /* ~"Czym się tutaj zajmujesz?"~ */ GOTO 39
  IF ~  GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #8742 /* ~"W tym momencie niczego. Żegnaj."~ */ EXIT
  IF ~  Global("Dream","GLOBAL",5)
~ THEN REPLY #66567 /* ~"Niczego w tym momencie. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 33.0
  SAY #6791 /* ~"To zarówno maszyna, jak i rytuał. To stan umysłu i budowla stworzona z pary i krwi. Obdarza snami tych, którzy wejdą w jego granice. Kreator powstał dla ciebie i czekał tu na ciebie. Czy jesteś gotowy, aby go wreszcie uruchomić? To urządzenie czekało tu na ciebie przez całe dekady."~ */
  IF ~~ THEN REPLY #6792 /* ~"Skąd wiesz, że to urządzenie przeznaczone jest właśnie dla mnie?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6793 /* ~"Tak."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6795 /* ~"Nie. Może potem do tego wrócimy. Odpowiedz na kilka moich pytań."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6796 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #6798 /* ~"Ponieważ mój pradziad Xero Xander wyrzeźbił twoją twarz w kamieniu, tak, aby każdy z nas mógł cię poznać, jeślibyś miał wrócić po odbiór swojej machiny. Zawsze wierzył, że powrócisz. Tylko on w to wierzył i nikt poza nim. Moja rodzina zbudowała to urządzenie, bo tak wymagał nasz honor zawodowy i szacunek dla prochów przodka. A teraz, proszę bardzo, zjawiłeś się ty."~ */
  IF ~~ THEN REPLY #6799 /* ~"Ciągle masz ten kamień?"~ */ GOTO 30
  IF ~~ THEN REPLY #6801 /* ~"Wobec tego musiałem mieć ku temu jakiś powód. Skończymy budowę tego urządzenia."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6802 /* ~"Nie, nie jestem zainteresowany. Odpowiedz jeszcze na inne moje pytanie."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #6803 /* ~"Nie. Ukradziono mi go jakiś rok temu. Kiedy się zorientowałem, było już za późno - złodziej roztopił się w ciemności. To była jedyna rzecz, jaką zabrał z mojego domu. Nie mam pojęcia, kto to był, ale zachowałem w swojej pamięci rysy twarzy z kamienia."~ */
  IF ~~ THEN REPLY #6804 /* ~"Dobra. Skończmy budowę tego Kreatora Snów."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6805 /* ~"W tym momencie akurat nie jestem zainteresowany. Chciałbym natomiast zadać ci kilka pytań."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6806 /* ~"Nie jestem zainteresowany Kreatorem Snów. Może innym razem. Żegnaj."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 37.1 37.2
  SAY #6808 /* ~"Pójdź porozmawiać z Bedai-Lin. Ona będzie wiedzieć. Ona żyje wszystkimi sprawami tego miejsca. Bedai-Lin nie należy do śniących. Ona zwraca uwagę na wszystko, co dzieje się tutaj. Oni nie zajmuje się prawdziwymi projektami."~ */
  IF ~~ THEN REPLY #6809 /* ~"Dobrze. Mam jeszcze kilka innych pytań."~ */ GOTO 27
  IF ~~ THEN REPLY #6810 /* ~"Dobrze. Zaraz to zrobię."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.1 37.0
  SAY #6812 /* ~"Nie wiem o tym nic. Zawsze pracowałem nad swoim Kreatorem i pochłaniała mnie tylko moja własna praca. Nie zwracałem uwagi na to, co robią robotnicy. Oni robili swoje, a ja swoje."~ */
  IF ~~ THEN REPLY #6816 /* ~"Ach tak. To może odpowiesz na inne moje pytania."~ */ GOTO 27
  IF ~~ THEN REPLY #6817 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 27.3 37.3
  SAY #6819 /* ~"Jestem Nil Xander, prawnuk wynalazcy Xera Xandera, inżyniera, łowcy snów, budowniczego. I to mnie przyszło zakończyć jego pracę, stworzyć urządzenie, które u niego zamówiłeś - Kreator Snów! Czy jesteś gotów, aby go uruchomić?"~ */
  IF ~~ THEN REPLY #6820 /* ~"Kreator Snów? A cóż to takiego?"~ */ GOTO 28
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6821 /* ~"Nie. Mam natomiast kilka innych pytań."~ */ GOTO 22
  IF ~  GlobalGT("Dream","GLOBAL",0)
~ THEN REPLY #6823 /* ~"Nie. Mam natomiast kilka innych pytań."~ */ GOTO 27
  IF ~~ THEN REPLY #6824 /* ~"Nie."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.5 37.5 40.0
  SAY #6827 /* ~"Ba. Oni nie mają w sobie prawdziwego ognia. Opowiadają o tworzeniu, chwalą się swoim potencjałem, ale nie są w stanie stworzyć nic, poza rzeczami przyziemnymi. Ich wyobraźnia jest nikła, ograniczona, skupiona na błahych szczegółach. Prawdziwy łowca snów, moim zdaniem, to ktoś tworzący najpierw wielki schemat, a dopiero potem wypełniający go szczegółami. Kto zaczyna od szczegółów, ten ma wyobraźnię owada... stworzenia, które nie tęskni za niczym innym, jak napełnieniem własnego brzucha."~ */
  IF ~~ THEN REPLY #6829 /* ~"Jestem pod wrażeniem twojej wielkoduszności. A tak poza tym, to może byłbyś łaskaw odpowiedzieć na kilka moich pytań?~ */ GOTO 27
  IF ~~ THEN REPLY #6830 /* ~"Ach tak... Jeżeli tak sprawa wygląda, czas na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.4 37.4
  SAY #6831 /* ~Starzec wzdycha i zbiera się w sobie. "To długi temat. Zacznijmy może w ten sposób: Wszystkie stworzenia czegoś potrzebują, prawda? Tworzą coś, budują, niszczą, marzą, śnią, cudzołożą; robią to wszystko po to, że chcą osiągnąć coś, czego nie mają. Nawet na najbardziej podstawowym poziomie istnienia, każda drobina materii dąży do czegoś, chce się czymś wzbogacić. I niektórym się to udaje. A innym nie."~ */
  IF ~~ THEN REPLY #6832 /* ~"Nie przerywaj."~ */ GOTO 41
  IF ~~ THEN REPLY #6833 /* ~"Nieważne. Chciałbym ci zadać jeszcze kilka innych pytań."~ */ GOTO 27
  IF ~~ THEN REPLY #6834 /* ~"Z drugiej strony na to patrząc to... dajmy temu spokój. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 41.0
  SAY #6836 /* ~"Tutaj na podium masz faktora Keldora. Porozmawiaj z nim. Albo odszukaj tego samobójczego trepa Sandoza i jego o to spytaj. Czy to już koniec twoich pytań?"~ */
  IF ~~ THEN REPLY #6837 /* ~"Jeszcze nie."~ */ GOTO 27
  IF ~~ THEN REPLY #6838 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF WEIGHT #10 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from: 39.1 40.1 41.1
  SAY #6839 /* ~Widzisz mężczyznę o krzaczastej fryzurze, odzianego w ubiór, w którym było mu do twarzy, gdzieś tak na oko, jakieś pięćdziesiąt lat temu. Nosi się jednak godnie i odnosisz wrażenie, że wobec całego otoczenia czuje głęboką pogardę. To może być poza, a może jednak kryją się za tym autentyczne odczucia? Kiedy do niego podchodzisz, nie obdarza cię cieniem uwagi. Dopiero kiedy zaczynasz do niego mówić, jego wzrok zaczyna ostrożnie badać twojego oblicze. "Chciałeś czegoś?", pyta przeciągając sylaby.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6841 /* ~"Powiedz mi, co wiesz o zabójstwie tego kowala."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
~ THEN REPLY #6842 /* ~"Proszono mnie, abym naprawił te koła zębate z Kuźni. Powiesz mi, jak to zrobić?"~ */ GOTO 31
  IF ~  Global("GearRepair","GLOBAL",2)
!Dead("Bedai")
~ THEN REPLY #6843 /* ~"Proszono mnie, abym naprawił te koła zębate z Kuźni. Powiesz mi, jak to zrobić?"~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6846 /* ~"Kim jesteś?~ */ GOTO 33
  IF ~~ THEN REPLY #6847 /* ~"Co możesz mi powiedzieć o Bogowcach?"~ */ GOTO 35
  IF ~~ THEN REPLY #6849 /* ~"Opowiedz mi tych robotnikach wokół ciebie."~ */ GOTO 34
  IF ~~ THEN REPLY #6850 /* ~"Czym się tutaj zajmujesz?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6852 /* ~Mężczyzna wybucha. "Mogę jej pomóc tylko w ten sposób, żeby będę się od niej trzymał z daleka! Nieśmiertelność to jedno z największych przekleństw ludzkiej wyobraźni - każdy trep uważa, że nieśmiertelność jest największym dobrodziejstwem, nie zdając sobie sprawy, co się za nią kryje. To dar dla głupców i tylko głupiec taki dar przyjmuje." Milknie a potem kontynuuje, już spokojniejszym tonem. "A poza tym, wciąż jeszcze głowię się nad moimi maszynami."~ */
  IF ~~ THEN REPLY #6853 /* ~"Ach tak. Zatem odpowiedz na kilka moich pytań."~ */ GOTO 27
  IF ~~ THEN REPLY #6854 /* ~"Ach tak. Ale to żadna dla mnie pomoc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.6 37.6
  SAY #8743 /* ~"Czym się zajmuję? Jestem inżynierem nad inżynierami. Uczyłem się pod okiem samego mistrza kowalstwa tanar'ri, Kazana, który łagodził słowa w kuźni nienawiści, gasił je w kadzi rozpaczy i słał je na wszystkie strony, na pohybel głupocie! Przynoszono mu kawałki zdań, uszczypliwe słówka, a on tworzył z nich potężny oręż - broń, która potrafiła powalić pokotem wrogów i zniszczyć cudze poronione idee. Na pewno zetknąłeś się z jego dziełami."~ */
  IF ~~ THEN REPLY #8756 /* ~"Czy to znaczy, że tworzysz tutaj jakąś diabelską broń?"~ */ GOTO 40
  IF ~~ THEN REPLY #8758 /* ~"Jasne. Odpowiedz na kilka innych moich pytań."~ */ GOTO 37
  IF ~~ THEN REPLY #8759 /* ~"Jasne, nie może być inaczej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8747 /* ~"Ależ skąd! Moja kuźnia nie wznosi się na nienawiści, ale na zrozumieniu. Studiowałem również pod okiem wielkiego artysty Terasaphirei, który stworzył lecznicze dotknięcie łaskawej myśli, idei, która zdolna jest uspokoić najbardziej plugawe, ziejące największą nienawiścią serce. Pracował nad swoją wolą z miłością i poświęceniem. Łączę w swojej pracy dorobek obu z moich mistrzów, tak samo, jak każda psychika kombinuje w sobie elementy demoniczne i wzniosłe."~ */
  IF ~~ THEN REPLY #8761 /* ~"Czy twoi współpracownicy są też tak dobrze wyszkoleni, jak ty?"~ */ GOTO 34
  IF ~~ THEN REPLY #8762 /* ~"Fascynujące! Mogę jeszcze zadać ci kilka innych pytań?"~ */ GOTO 37
  IF ~~ THEN REPLY #8764 /* ~"Będę musiał się nad tym zastanowić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.0
  SAY #8748 /* ~"Każda decyzja, każdy czyn, każda reakcja tworzy podstawy, na której powstają inne rzeczy. Stąd też wydaje się oczywistym, że nasz obecny, niebosiężny stan umysłów tworzy podstawę, dla czegoś, co ma sięgnąć jeszcze wyżej. A cóż to innego, jak nie boskość? W ten sposób zawsze to usprawiedliwiałem i nawiasem mówiąc nie mam nastroju na dyskusje filozoficzne. Jeżeli ich szukasz, porozmawiaj z faktorem, albo kimś innym."~ */
  IF ~~ THEN REPLY #8765 /* ~"A gdzie mogę spotkać faktora?"~ */ GOTO 36
  IF ~~ THEN REPLY #8766 /* ~"Ach tak. A mógłbyś odpowiedź na kilka innych pytań?"~ */ GOTO 37
  IF ~~ THEN REPLY #8767 /* ~"Ach tak. Żegnaj."~ */ EXIT
END
