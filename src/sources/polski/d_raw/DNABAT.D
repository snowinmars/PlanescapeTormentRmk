// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNABAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DNABAT~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #49302 /* ~Masz przed sobą człowieka o twarzy anioła. Jego oczy są prawie zamknięte, jakby nie chciał oglądać okropieństw tego świata, albo jakby nie chciał pozwolić, żeby świat zobaczył jego okropne wnętrze. Mimo to jego twarz przecina linia uśmiechu. Gdy cię pozdrawia, jego głos brzmi przyjaźnie i lakonicznie. "Cześć."~ */
  IF ~~ THEN REPLY #49303 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #49304 /* ~"Witaj, i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #49305 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #49306 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 2
  IF ~~ THEN REPLY #49307 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #49308 /* ~"Szukam devy."~ */ GOTO 4
  IF ~~ THEN REPLY #49309 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0
  SAY #49310 /* ~"O gospodzie 'Brama Zdrajców'? Prowadzi ją Plugawy Bars. Często można w niej spotkać tych, których tu widzisz: Marqueza, eks-Harmonium; Kitlę, eks-pracownicę; Dallana, eks-czym-tam-nie-był, jeśli nie opowiadałem ci o *nim*, to może kiedyś ci jeszcze opowiem; i Donę Kiszał, której historii nie znam... przynajmniej jak na razie."~ */
  IF ~~ THEN REPLY #49311 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #49312 /* ~"Szukam devy."~ */ GOTO 4
  IF ~~ THEN REPLY #49313 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.1
  SAY #49314 /* ~"Ja? Jestem Nabat. Kiedyś byłem gawędziarzem, a teraz skończyłem na opowiadaniu historii w piwiarniach. Jestem już na emeryturze. Może później opowiem ci jakąś historię. Może. Chcesz jeszcze czegoś?"~ */
  IF ~~ THEN REPLY #49315 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 2
  IF ~~ THEN REPLY #49316 /* ~"Szukam devy."~ */ GOTO 4
  IF ~~ THEN REPLY #49317 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.1
  SAY #49318 /* ~Jego twarz łamie się w uśmiech. "Dlaczego myślisz, że coś o tym wiem? Ale poważnie... co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #49319 /* ~"Co wiesz o tym miejscu?"~ */ GOTO 2
  IF ~~ THEN REPLY #49320 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #49321 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #49322 /* ~Nabat obdarza cię uśmiechem. "Co znowu?"~ */
  IF ~~ THEN REPLY #49323 /* ~"Potrzebuję tylko odpowiedzi na parę pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #49324 /* ~"Dzięki, nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 6 // from:
  SAY #49325 /* ~Masz przed sobą człowieka o twarzy anioła. Jego oczy są prawie zamknięte, jakby nie chciał oglądać okropieństw tego świata, albo jakby nie chciał pozwolić, żeby świat zobaczył jego okropne wnętrze. Mimo to jego twarz przecina linia uśmiechu. Gdy cię pozdrawia, jego głos brzmi przyjaźnie i lakonicznie. "Cześć. Słyszałem, że szukasz pewnego Klucza."~ */
  IF ~~ THEN REPLY #49326 /* ~"Zgadza się."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49327 /* ~"Tak, ale nie w tym momencie. Mam do ciebie kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #49328 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",3)
Global("Caretaker","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #49329 /* ~"Więc... Wróciłeś. Chcesz dostać trzecią część Klucza?"~ */
  IF ~~ THEN REPLY #49330 /* ~"Tak."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49331 /* ~"Tak, ale nie w tym momencie. Mam do ciebie kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #49332 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0 9.0 10.0
  SAY #49333 /* ~"Opiekunem miejskiego wysypiska śmieci jest człowiek imieniem Kyse. Krążą plotki, że ma pod podłogą ukryte dużo złota - i że jakiś gang łotrzyków planuje mu je ukraść. Mam swoje powody by chcieć im w tym przeszkodzić. Porozmawiaj z samym Kysem i dowiedz się czegoś. Zrób to, a dam ci Klucz. Jeśli jesteś zainteresowany, to mogę ci pokazać parę trików z kryciem się."~ */
  IF ~~ THEN REPLY #49334 /* ~"Zgoda. Najpierw mam do ciebie kilka pytań."~ */ JOURNAL #47847 /* ~Nabat w karczmie 'Brama Zdrajców' powiedział mi, co muszę zrobić, by zdobyć trzecią część klucza: przy bramie prowadzącej do Krain Zewnętrznych stoi stróż, o którym chodzą plotki, że jest bogatym człekiem... i plotki mówią, że niedługo coś go za to spotka.~ */ GOTO 9
  IF ~~ THEN REPLY #49335 /* ~"Zgoda. Żegnaj."~ */ JOURNAL #47847 /* ~Nabat w karczmie 'Brama Zdrajców' powiedział mi, co muszę zrobić, by zdobyć trzecią część klucza: przy bramie prowadzącej do Krain Zewnętrznych stoi stróż, o którym chodzą plotki, że jest bogatym człekiem... i plotki mówią, że niedługo coś go za to spotka.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.0
  SAY #49336 /* ~"Masz pytania? To świetnie. Kłopot tylko w tym, czy to zrobisz, czy nie. Mam Klucz, ty masz pytania, dostaniesz odpowiedzi, gdy zadanie zostanie ukończone. Nie masz zbyt dużo czasu."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49337 /* ~"Zgoda. Co mam zrobić?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #49338 /* ~"Dlaczego to jest dla ciebie takie ważne?"~ */ GOTO 10
  IF ~~ THEN REPLY #49339 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #49340 /* ~"Czy to ma jakieś znaczenie? A co by było, jakbym ci powiedział, że to mój dziadek? Gdybym twierdził, że chcę zemścić się na ludziach, którzy planują na niego atak? Gdybym ci powiedział, że sam chcę tych pieniędzy? Czy powody mają jakieś znaczenie? Dostaniesz czego chcesz - Klucz - a ja też będę miał z tego coś dla siebie."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49341 /* ~"Zgoda. Co mam zrobić?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49342 /* ~"W takim razie zgoda. Żegnaj."~ */ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #49343 /* ~Masz wrażenie, jakby te zmrużone oczy dokładnie cię oceniały. "Moje źródła donoszą, że ciągle nie wykonałeś roboty, którą ci zleciłem. Zrób to, a dostaniesz trzecią część Klucza."~ */
  IF ~~ THEN REPLY #49344 /* ~"Odpowiesz mi tylko na kilka pytań?"~ */ GOTO 12
  IF ~~ THEN REPLY #49345 /* ~"Zgoda. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49346 /* ~Nabat wzdycha. "Co chcesz wiedzieć? Chcesz dowiedzieć się czegoś o mnie? Jestem Nabat. Chcesz dowiedzieć się czegoś o Klątwie? Spytaj jednego z tych, których to obchodzi. Chcesz się dowiedzieć czegoś o tej tawernie? Pełno w niej ludzi, którzy zostali zdradzeni. Chcesz zapytać o devę? Skończ swoją robotę, a będziesz o krok bliżej od znalezienia go. Teraz ruszaj i skończ to, co masz zrobić."~ */
  IF ~~ THEN REPLY #49347 /* ~"Zgoda. Żegnaj."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",5)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #49348 /* ~Kiedy wchodzisz, Nabat obdarza cię szerokim uśmiechem. "Słyszałem że skończyłeś. To znaczy, że otrzymujesz trzecią część Klucza." Jego oczy na chwilę się zamykają, a on zaczyna ciągnąć wiersz: "'...tu losy im przeznaczone czekają dopełnienia...'" Kiedy jego oczy znowu są otwarte, Nabat wzrusza ramionami. "Obawiam się, że to żaden wiersz... ale to będzie musiało wystarczyć. Dzięki za pomoc. Następna część Klucza znajduje się u Dallana. To ten z młodą przyjaciółką. Jak chcesz, to mogę ci pokazać parę złodziejskich sztuczek..."~ */
  IF ~~ THEN REPLY #49349 /* ~"Odpowiesz mi tylko na kilka pytań?"~ */ DO ~AddexperienceParty(43750)
SetGlobal("Curst_Key","GLOBAL",4)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat podarował mi trzecią część Klucza: "...tu losy im przeznaczone czekają dopełnienia..." Teraz pójdę porozmawiać z Dallanem. Dallan to człowiek stojący w towarzystwie młodej dziewczyny.~ */ GOTO 14
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49350 /* ~"Udziel mi szkolenia w sztuce krycia się."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat podarował mi trzecią część Klucza: "...tu losy im przeznaczone czekają dopełnienia..." Teraz pójdę porozmawiać z Dallanem. Dallan to człowiek stojący w towarzystwie młodej dziewczyny.~ */ GOTO 20
  IF ~~ THEN REPLY #67170 /* ~"Dzięki. Żegnaj."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat podarował mi trzecią część Klucza: "...tu losy im przeznaczone czekają dopełnienia..." Teraz pójdę porozmawiać z Dallanem. Dallan to człowiek stojący w towarzystwie młodej dziewczyny.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 16.0 17.0 18.0 19.0 22.0 24.1 25.1 26.0
  SAY #49352 /* ~"Dlaczego nie? Coś mnie teraz rozpiera."~ */
  IF ~~ THEN REPLY #49353 /* ~"Dlaczego mam ocalić tego staruszka? Czy to nie jest czasem miasto zdrady?"~ */ GOTO 16
  IF ~~ THEN REPLY #49354 /* ~"Opowiedz mi o sobie."~ */ GOTO 17
  IF ~~ THEN REPLY #49355 /* ~"Chciałbym posłuchać opowieści."~ */ GOTO 18
  IF ~~ THEN REPLY #49356 /* ~"Opowiedz mi coś o tym miejscu."~ */ GOTO 19
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49357 /* ~"Czy możesz udzielić mi szkolenia w sztuce krycia się?"~ */ GOTO 20
  IF ~~ THEN REPLY #67172 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",6)
GlobalGT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #49358 /* ~"To znowu ty? Czego chcesz tym razem?"~ */
  IF ~~ THEN REPLY #49359 /* ~"Odpowiedzi na kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #49360 /* ~"Chcę żebyś udzielił mi szkolenia w sztuce krycia się."~ */ GOTO 20
  IF ~~ THEN REPLY #67173 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #49361 /* ~"Kiedyś to był mój gang. Ale wypędzili mnie za to, że zabrałem ich pieniądze - a przecież ktoś mnie wrobił. Sam puściłem te plotkę o Kyse - wiedziałem, że na to pójdą. Albo ktoś ich zdejmie, albo zostawią po sobie ślady, po których strażnicy ich odszukają. Tak czy inaczej, moje będzie na wierzchu."~ */
  IF ~~ THEN REPLY #49362 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #49363 /* ~"Pięknie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #49364 /* ~"Nazywam się Nabat. Po prostu Nabat. Przybyłem tu z Automaty parę lat temu w poszukiwaniu ludzi, którzy byliby warci moich opowieści. Wdałem się w złe towarzystwo, a potem, no cóż... było, minęło."~ */
  IF ~~ THEN REPLY #49365 /* ~"Cóż to za głęboka opowieść. Mam do ciebie kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #49366 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY #49367 /* ~"Teraz pracuję nad opowieścią o zemście. Można powiedzieć, że właśnie dostałem natchnienie." Nabat śmieje się złowieszczo. "Może kiedy skończę, pozwolę ci jej wysłuchać, ale nie wcześniej. Chciałbym to skończyć, zanim ktoś ją zobaczy."~ */
  IF ~~ THEN REPLY #49368 /* ~"W takim razie zgoda. Odpowiedz mi jeszcze na kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #49369 /* ~"Zgoda. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.3
  SAY #49370 /* ~"To o tym, co widzisz, za wyjątkiem tego, czego nie widzisz. To miasto pełne zdrajców, polityki i podgryzania się nawzajem. To dom najgorszej części ludzkiej natury. Nie ma w nim nic ładnego. Mam nadzieję, że pytałeś się o Klątwę w sensie metafizycznym, bo ja *nie jestem* przewodnikiem."~ */
  IF ~~ THEN REPLY #49371 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #49372 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1 14.4 15.1
  SAY #67171 /* ~"Czy kiedykolwiek kradłeś sakiewki, żeby zarobić na życie? Czy skradałeś się mrocznymi korytarzami bez jednego dźwięku? A może mam cię szkolić od podstaw?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67191 /* ~"Już to wcześniej robiłem."~ */ GOTO 21
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67192 /* ~"Obawiam się, że będziesz musiał zacząć od początku."~ */ GOTO 23
  IF ~~ THEN REPLY #67193 /* ~"Wiesz co, zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #67174 /* ~"Czy jesteś pewien, że chcesz dokonać zmiany? Nie możesz być i wojownikiem i złodziejem."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #67196 /* ~"Wiem. Nie chcę już być wojownikiem. Odświeżmy trochę mój repertuar sztuczek."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #67197 /* ~"Wiem. Nie chcę już być magiem. Odświeżmy trochę mój repertuar sztuczek."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~~ THEN REPLY #67198 /* ~"Nie, chyba nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #67175 /* ~"W porządku. Nie chcesz zapomnieć podstaw, co?"~ */
  IF ~~ THEN REPLY #67199 /* ~"Nie, chyba nie. Mam do ciebie parę innych pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #67200 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #67176 /* ~"Nigdy nie prosisz o drobne przysługi, prawda? W porządku. Zaczynajmy. Przede wszystkim, przekonajmy się, jaki jesteś zwinny. Spróbuj balansować tym sztyletem na czubku palca." Nabat rzuca ci nóż.~ */
  IF ~  CheckStatGT(Protagonist,18,DEX)
~ THEN REPLY #67201 /* ~Złap go na czubek palca.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,19,DEX)
~ THEN REPLY #67202 /* ~Złap go za rękojeść, a potem ustaw na czubku palca.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #67203 /* ~Spróbuj go złapać.~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #67177 /* ~Przyjmujesz nóż na czubek palca i zręcznym ruchem wprawiasz go w obrót. Nabatowi opada szczęka. "W porządku. Z pewnością nie brakuje ci szybkości. Czy na pewno chcesz rozpocząć szkolenie?"~ */
  IF ~~ THEN REPLY #67224 /* ~"Tak. Chcę żebyś mnie uczył."~ */ GOTO 27
  IF ~~ THEN REPLY #67225 /* ~"Nie. Zapomnij o tym. Odpowiedz mi na kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #67226 /* ~"Nie. Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #67178 /* ~Łapiesz sztylet za rękojeść i po paru próbach udaje ci się umieścić go na czubku palca wskazującego. "Ujdzie. Czy na pewno chcesz rozpocząć szkolenie?"~ */
  IF ~~ THEN REPLY #67227 /* ~"Tak. Chcę żebyś mnie uczył."~ */ GOTO 27
  IF ~~ THEN REPLY #67228 /* ~"Nie. Zapomnij o tym. Odpowiedz mi na kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #67229 /* ~"Nie. Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY #67179 /* ~Usiłujesz złapać sztylet, ale jego rękojeść wymyka ci się z ręki i ledwo co unikasz poranienia się. "Przykro mi, przyjacielu. Zdecydowanie brak ci refleksu, żeby zostać dobrym złodziejem. Mogę ci w czymś jeszcze pomóc?"~ */
  IF ~~ THEN REPLY #67230 /* ~"Odpowiedz mi na kilka pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #67231 /* ~"Nie. Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0 25.0
  SAY #67180 /* ~"Zatem do dzieła. Po pierwsze, musisz opanować podstawy: krycie się, otwieranie zamków, znajdowanie i usuwanie pułapek oraz znajdowanie słabych punktów wroga."~ */
  IF ~~ THEN REPLY #67232 /* ~"Mów dalej..."~ */ GOTO 28
  IF ~~ THEN REPLY #67233 /* ~"Chyba znam podstawy. Przejdźmy do szkolenia."~ */ GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67181 /* ~"Jedną z najważniejszych sztuczek, której powinieneś się nauczyć, jest bezszelestne poruszanie się. Dzięki temu możesz przemykać się obok strażników, dostać się za plecy wroga, uniknąć wykrycia i robić tym podobne rzeczy. Pamiętaj tylko, że nie możesz tego robić, kiedy ktoś się na ciebie patrzy."~ */
  IF ~~ THEN REPLY #67234 /* ~"Mów dalej..."~ */ GOTO 29
  IF ~~ THEN REPLY #67240 /* ~"Chyba znam podstawy. Przejdźmy do szkolenia."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #67182 /* ~"W porządku. Zamki. Zamki to twój wróg. Jeśli chcesz gdzieś dojść, musisz nauczyć się sztuki otwierania tych mechanizmów. Oprócz tego, niektórzy dranie lubią przygotowywać małe niespodzianki na tych, którzy próbują obrabować ich domy. Właśnie dlatego powinieneś sprawdzić, czy ktoś nie zastawił na zamku pułapki. Zaraz do tego dojdę."~ */
  IF ~~ THEN REPLY #67235 /* ~"Mów dalej..."~ */ GOTO 30
  IF ~~ THEN REPLY #67236 /* ~"Chyba znam podstawy. Przejdźmy do szkolenia."~ */ GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #67183 /* ~"Niekiedy będziesz chciał wsadzić gdzieś swoją rękę tak, żeby inni tego nie spostrzegli. Czasami w ten sposób możesz odciążyć ich sakiewki, a czasami dostać przedmiot, który ci się szczególnie spodobał. Ale jeśli cię zauważą, to lepiej przygotuj się do walki albo do ucieczki."~ */
  IF ~~ THEN REPLY #67237 /* ~"Mów dalej..."~ */ GOTO 31
  IF ~~ THEN REPLY #67241 /* ~"Chyba znam podstawy. Przejdźmy do szkolenia."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67184 /* ~"Pamiętasz co mówiłem o pułapkach? Czasami to właśnie one mogą być twoim najgorszym wrogiem. Kiedy coś jest strzeżone - albo co gorsza, *nikt* tego nie strzeże - podchodź do tego wolno i miej się na baczności. Pułapki nie zauważysz od razu, więc się nie spiesz."~ */
  IF ~~ THEN REPLY #67238 /* ~"Mów dalej..."~ */ GOTO 32
  IF ~~ THEN REPLY #67242 /* ~"Chyba znam podstawy. Przejdźmy do szkolenia."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #67185 /* ~"Kiedy znajdziesz pułapkę, możesz albo spróbować ją obejść, albo ją rozbroić. Jeśli będziesz chciał unieszkodliwić jej mechanizm, to zawsze istnieje możliwość, że ją uruchomisz i wybuchnie ci prosto w twarz. Możesz tego spróbować, gdy majstrujesz przy dziwnych przedmiotach magicznych albo machinach."~ */
  IF ~~ THEN REPLY #67239 /* ~"Mów dalej..."~ */ GOTO 33
  IF ~~ THEN REPLY #67243 /* ~"Chyba znam podstawy. Przejdźmy do szkolenia."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #67186 /* ~"Teraz przejdźmy do bardzo ważnej rzeczy: zadawania ciosu od tyłu! Z twoimi rękami, to powinno nieźle kogoś zaboleć. Musisz się podkraść się tak, żeby znaleźć się za plecami wroga, wybrać cel, a potem zaatakować. Jeśli ci się uda, możesz zadać naprawdę poważne obrażenia. Kiedy zaatakujesz, to oczywiście wydasz swoje położenie, więc wybieraj swój cel ostrożnie."~ */
  IF ~~ THEN REPLY #67244 /* ~"W porządku. Przejdźmy do szkolenia."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 27.1 28.1 29.1 30.1 31.1 32.1 33.0
  SAY #67187 /* ~"Pierwszą rzeczą, której musisz się nauczyć, to że niczego nie możesz robić w pośpiechu. Pośpiech prowadzi do błędów, a z błędów biorą się kłopoty. A kłopoty to ostatnia rzecz, na której ci  zależy..." Zaczyna się twoje szkolenie na złodzieja.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67245 /* ~Naucz się jak najwięcej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3000)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Wyszkoliłem się na złodzieja pod okiem człowieka o imieniu Nabat, nauczyciela złodziei z zajazdu "Brama Zdrajców" w Klątwie.~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67246 /* ~Naucz się jak najwięcej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Wyszkoliłem się na złodzieja pod okiem człowieka o imieniu Nabat, nauczyciela złodziei z zajazdu "Brama Zdrajców" w Klątwie.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67247 /* ~Naucz się jak najwięcej.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~Wyszkoliłem się na złodzieja pod okiem człowieka o imieniu Nabat, nauczyciela złodziei z zajazdu "Brama Zdrajców" w Klątwie.~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67188 /* ~Po pewnym czasie Nabat przerywa. "Wystarczy. Szybko się uczysz. Więcej nie mogę cię nauczyć. Reszta zależy od ciebie."~ */
  IF ~~ THEN REPLY #67249 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2
  SAY #67189 /* ~Po pewnym czasie Nabat przerywa. "Wystarczy. Szybko się uczysz. Więcej nie mogę cię nauczyć. Reszta zależy od ciebie... ale z twoimi umiejętnościami mam wrażenie, jakbyś już to wcześniej robił." Na dźwięk tych słów zdajesz sobie sprawę, że naprawdę już to *robiłeś*... że kiedyś posiadałeś wszystkie te umiejętności, a szkolenie tylko je obudziło.~ */
  IF ~~ THEN REPLY #67250 /* ~"Może robiłem to wcześniej. Dziękuję. Żegnaj."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #67190 /* ~Kiedy przychodzą do ciebie wyblakłe wspomnienia o tym, jak czaiłeś się w mrocznych korytarzach i unikałeś śmiercionośnych pułapek, udaje ci się przypomnieć tyle rzeczy, żeby 'nauczyć się' więcej, niż nauczył cię Nabat.~ */
  IF ~~ THEN REPLY #67251 /* ~Odejdź.~ */ EXIT
END
