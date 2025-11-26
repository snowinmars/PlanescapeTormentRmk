// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVRISCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVRISCH~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3001 /* ~Ta kobieta o ostrych rysach twarzy, ciemnej, opadającej w błękit skórze i jasnych żółtych oczach jest w równym stopniu atrakcyjna, co odpychająca. Kiedy przygląda ci się badawczo, na jej plecach rozprostowuje się para niewielkich nietoperzych skrzydeł, które zaraz potem znowu chowają się gdzieś między jej łopatkami.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 52.0
  SAY #50480 /* ~"Proszę, proszę... Fruwająca, pozbawiona reszty ciała, wykrętna i bezczelna czaszka..."~ */
  IF ~~ THEN GOTO 4
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",0)
~ THEN BEGIN 2 // from: 53.0
  SAY #50481 /* ~"Proszę, proszę... Nie-Sława... Czy jakkolwiek tam siebie teraz nazywasz. Oglądać cię w moich progach to prawdziwa przyjemność. Ale czym zasłużyłam sobie na zaszczyt takiej wizyty? Wydawało mi się, że stronisz od osób mojego pokroju." Kobieta zerka teraz w twoją stronę i lustruje cię przez chwilę z takim samym ukradkowym uśmieszkiem na ustach. "A może twój przydział tutaj już się zakończył?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 3 // from: 54.0
  SAY #50482 /* ~"Proszę, proszę... Fruwająca, pozbawiona reszty ciała, wykrętna i bezczelna czaszka, a także Nie-Sława, czy jakkolwiek tam siebie teraz nazywasz. Oglądać cię w moich progach to prawdziwa przyjemność. Ale czym zasłużyłam sobie na zaszczyt takiej wizyty? Wydawało mi się, że stronisz od osób mojego pokroju." Kobieta zerka teraz w twoją stronę i lustruje cię przez chwilę z takim samym ukradkowym uśmieszkiem na ustach. "A może twój przydział tutaj już się zakończył?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0 6.0
  SAY #50483 /* ~Jej oczy zwężają się. "To ty... ty jesteś tym człowiekiem w bliznach, który krąży po okolicy i zadaje wszystkim masę rozmaitych pytań." Mierzy cię długim spojrzeniem od stóp do głów. "Wyglądasz mi na kogoś, kto się zgubił. Chcesz zatem wstąpić w moje progi, czy tylko po prostu wałęsasz się w pobliżu, bo nie masz nic lepszego do roboty?"

"Wiedz bowiem, że Vriszika..." Kobieta wskazuje na siebie. "Może ci pomóc."~ */
  IF ~~ THEN REPLY #50485 /* ~"Jak możesz mi pomóc?"~ */ GOTO 19
  IF ~~ THEN REPLY #50486 /* ~"Co to za miejsce?"~ */ GOTO 8
  IF ~~ THEN REPLY #50487 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #50488 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #50484 /* ~Vriszika odpowiada błyskawicznie, odbijając pytanie jak puklerz uderzenie topora. "Z wyboru. A ty? Kiedy stąd pójdziesz, dokąd poprowadzą cię dalsze rozkazy?" Odwraca się nagle do ciebie. "Widzisz, mój mały człowieczku..." Vriszika uśmiecha się, jakby delektując się własnymi słowami. "...największa kusicielka to ta, która omami cię do tego stopnia, że będziesz miał wrażenie, że obcujesz z kimś wyuzdanym i dziewiczym jednocześnie. Taka kusicielka to prostytutka i kapłanka w jednej osobie. A Pani Sława to jedna z najlepszych w swej sztuce..." Teraz Vriszika zwraca się do Nie-Sławy "Czyż nie? Nie przypuszczałaś, że te parę tysiące lat niewolnictwa pozostawi po sobie takie ślady, prawda?"~ */
  IF ~~ THEN DO ~SetGlobal("Vris_vs_Grace","GLOBAL",1)
~ EXTERN ~DGRACE~ 152
END

IF ~~ THEN BEGIN 6 // from:
  SAY #50489 /* ~"Dobrze. Chociaż z drugiej strony przecież wstąpiliście do *mojego* antykwariatu..." Vriszika spogląda na ciebie.~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN GOTO 4
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #50717 /* ~"Tak?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.0 9.0 10.2 17.1 18.0 19.0 44.5 50.0 55.0
  SAY #50490 /* ~"Z przyjemnością odpowiem na wszelkie pytania dotyczące handlu, ale jeżeli masz zamiar rzucić mnie w ostrzał swoich słynnych już pytań w stylu 'o-co-tu-we-wszystkim-biega?', to możesz w ogóle nie otwierać ust, *zrozumiano*?~ */
  IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN REPLY #50491 /* ~"Jesteś zainteresowana zakupem niewolnika lub sługi, Vrisziko?"~ */ GOTO 44
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66961 /* ~"Dałem komuś Język Biesa i pojawiły się pewne... efekty uboczne. Można coś na to poradzić?"~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #50492 /* ~"Czym ty jesteś, Vrisziko?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50493 /* ~"Co miałaś na myśli, kiedy nazwałaś Mortego 'wykrętną czaszką'?~ */ GOTO 9
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50494 /* ~"Wygląda na to, że ty i Nie-Sława nie przepadacie za sobą..."~ */ GOTO 10
  IF ~~ THEN REPLY #50495 /* ~"Opowiedz mi przynajmniej coś o tym miejscu."~ */ GOTO 8
  IF ~~ THEN REPLY #50496 /* ~"Zatem spójrzmy na twoje towary."~ */ GOTO 20
  IF ~~ THEN REPLY #50497 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 7.5
  SAY #50498 /* ~"To, co widzisz we wnętrzu mojego sklepu to w głównej mierze plon wielu podróży po Sferach i kupieckich sukcesów." Vriszika wystudiowanym gestem wskazuje swój sklep. "Mam tutaj wystawione na sprzedaż rozmaite towary; oręż, czary, a także inne artykuły, specjalnego przeznaczenia. Znajdziesz u mnie wszystko, co rzadkie i powalające na kolana swoim pięknem. Możesz tu nasycić wszystkie żądze."~ */
  IF ~~ THEN REPLY #50499 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 7
  IF ~~ THEN REPLY #50500 /* ~"Zatem spójrzmy na twoje towary."~ */ GOTO 20
  IF ~~ THEN REPLY #50501 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #50502 /* ~"Wykrętna... Przeinaczająca, wiarołomna, blagierska, kłamliwa, och, czyż wymknęło mi się to obraźliwe słowo? Chciałam rzec fruwająca, pozbawiona reszty ciała, nieustannie perorująca czaszka. I zawsze wypowiadająca opinie o rzeczach tonem pyszałkowatym i egoistycznym." Vriszika uśmiecha się niewinnie.~ */
  IF ~~ THEN REPLY #50503 /* ~"Hm... Mam jeszcze jedno pytanie..."~ */ GOTO 7
  IF ~~ THEN REPLY #50504 /* ~"Dobrze zatem. Pozwolisz, że rzucę okiem na twoje towary."~ */ GOTO 20
  IF ~~ THEN REPLY #50505 /* ~"Ach tak. To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.4
  SAY #50507 /* ~"Ach, toż to ta markietanka rasy baatezu, która uwiła sobie gniazdko w Sigil? Interesujące, nieprawdaż? Ale z drugiej strony, gdzie szukać lepszego miejsca na wyszkolenie swoich agentów, jak nie w swoim niepozornym 'przybytku'..."~ */
  IF ~~ THEN REPLY #50508 /* ~"Markietanka rasy baatezu?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50509 /* ~"Wyszkolenie swoich agentów?"~ */ GOTO 14
  IF ~~ THEN REPLY #50510 /* ~"Hm... Mam jeszcze jedno pytanie..."~ */ GOTO 7
  IF ~~ THEN REPLY #50511 /* ~"Chciałbym rzucić okiem na twoje towary."~ */ GOTO 20
  IF ~~ THEN REPLY #50512 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 17.0
  SAY #50513 /* ~"Odkąd matka sprzedała ją w niewolę, stała się na długie wieki maskotką w wielu Sferach. Utrzymuje, że sama wyzwoliła się z niewolnictwa, ale według mnie, to w tym twierdzeniu jest dokładnie tyle samo prawdy, co w bajdurzeniach każdej innej wiedźmy tanar'ri." Vriszika uśmiecha się nieznacznie. "Wyłączywszy moją skromną osobę, rzecz jasna."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 153
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50514 /* ~"Prawda?! *Prawda*?! Nie da się tak po prostu wygrać wolności i zerwać kontrakt zawarty z baatezu, suko w ludzkiej skórze. Kłamiesz. Wszystkie tanar'ri to wiedzą, ile ich pałęta się po wszystkich Sferach. Nie-Sława była niewolnicą baatezu od chwili, kiedy przyszła na świat, więc i zostanie nią na *zawsze*. Ciągle jesteś zabawką baatezu, przyznaną im na mocy umowy, zabawką, którą mogą torturować albo kierować według własnego upodobania." Vriszika uśmiecha się szyderczo. "Nawet teraz *zachowujesz się* tak, jak chcą tego baatezu."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 154
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50515 /* ~"Dość już! Nie ma potrzeby, abym wysłuchiwała tych wszystkich łgarstw z twoich ust!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 155
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #50516 /* ~"Tak... One są jej oczami i uszami w Sigil i pośród Sfer. To, czego same nie zobaczą, ani nie usłyszą, wydostaną od mężczyzn, którzy to widzieli i słyszeli. Któż mógłby przypuszczać, że ludzie zdolni są do takich oszustw i podstępów? Och, Sława to naprawdę bystra sztuka. Może nie aż tak bystra, jak jej matka, ale wystarczająco bystra..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 156
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50517 /* ~"Och, ależ *oczywiście*, że nie. Czy naprawdę okazałam tak daleko idącą śmiałość i zasugerowałam coś takiego? Ale może pozwólmy, żeby ten człowiek sam się w tej materii wypowiedział." Vriszika obraca się ku tobie z ogniem w oczach. "Czy ty się w ogóle czasem nad czymś zastanawiasz, człowieczku? Czy nigdy w twojej głowie nie wykluła się żadna ciekawość i zainteresowanie takim stanem rzeczy? Czy to całe spotkanie w przybytku nie wydało ci się nigdy nieco osobliwe?"~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #50518 /* ~Vriszika nie pozwala ci na zabranie głosu. "Brzytwa Occama zostawia bliznę, ale usuwa również wrzód, który wzrósł na pożywce kłamców i marzycieli."

"I oto nagle zjawia się ona, towarzyszka twej wędrówki. Wielce osobliwe. Cóż to za powód skłonił właścicielkę takiego przybytku do porzucenia swego interesu i puszczenia się z tobą w podróż? Uważasz, że robi dla ciebie? Człowieka, którego prawie nie zna? Pytania, pytania..."

"A odpowiedzi mogą przynieść ból, w rzeczy samej."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 157
END

IF ~~ THEN BEGIN 17 // from:
  SAY #50519 /* ~"Och, ależ oczywiście, że zadał takie pytanie... Jakiż mężczyzna mógłby o to nie zapytać?" Vriszika uśmiecha się pogardliwie i z obrzydzeniem odwraca spojrzenie.~ */
  IF ~~ THEN REPLY #50520 /* ~"Co miałaś na myśli, kiedy powiedziałaś o niej, że jest markietanką rasy baatezu?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50521 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 7
  IF ~~ THEN REPLY #50522 /* ~"Chciałbym rzucić okiem na twoje towary."~ */ GOTO 20
  IF ~~ THEN REPLY #50523 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY #50524 /* ~Vriszika wzdycha głośno "Jestem alu-biesem... pół demonicą. Moja matka była z rasy tanar'ri, a mój ojciec był potężnym królem śmiertelnych. Nawiasem mówiąc twoje pytanie nie należało do szczególnie uprzejmych. Ale z drugiej strony trudno wymagać uprzejmych pytań od osobnika o nieuprzejmym wyglądzie, nieprawdaż?"~ */
  IF ~~ THEN REPLY #50525 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 7
  IF ~~ THEN REPLY #50526 /* ~"Chciałbym rzucić okiem na twoje towary."~ */ GOTO 20
  IF ~~ THEN REPLY #50527 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.0
  SAY #50528 /* ~"Wiele czasu poświęcam na podróże i handel. Słyszę wiele, kupuję wiele i mam wiele. Może więc i tobie wiele pomogę? Czy pożądasz czegoś konkretnego?"~ */
  IF ~~ THEN REPLY #50529 /* ~"Szukam odpowiedzi na pewne pytania..."~ */ GOTO 7
  IF ~~ THEN REPLY #50530 /* ~"Być może. A co takiego sprzedajesz?"~ */ GOTO 20
  IF ~~ THEN REPLY #50531 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.6 8.1 9.1 10.3 17.2 18.1 19.1 50.1 55.1
  SAY #50533 /* ~"Może więc rzucisz okiem na oręż i czary? Albo może interesują cię bardziej egzotyczne towary?"~ */
  IF ~~ THEN REPLY #50534 /* ~"Oręż i czary, powiadasz."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50535 /* ~"Egzotyczne towary, powiadasz..."~ */ GOTO 21
  IF ~~ THEN REPLY #50536 /* ~"Właściwie to nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1 22.2 23.1 24.1 31.2 31.3 32.1 33.1 34.1 37.2 38.1 41.1 43.1 58.1 59.6 60.6
  SAY #50539 /* ~Widząc, że z uwagą przyglądasz się sklepowym regałom, Vriszika uśmiecha się. "Jeżeli nie widzisz tutaj nic godnego twojego zainteresowania, więcej znajdziesz w przedniej i w tylnej części mojego sklepu."~ */
  IF ~  Global("Vris_Buy_05","AR0609",0)
~ THEN REPLY #50551 /* ~Przyjrzyj się Językowi Biesa.~ */ GOTO 31
  IF ~  Global("Vris_Buy_06","AR0609",0)
~ THEN REPLY #50552 /* ~Przyjrzyj się Maści z Gorgony.~ */ GOTO 32
  IF ~  Global("Vris_Buy_08","AR0609",0)
~ THEN REPLY #50554 /* ~Przyjrzyj się metalowej figurce w kształcie sześcianu.~ */ GOTO 33
  IF ~  Global("Vris_Buy_09","AR0609",0)
~ THEN REPLY #50555 /* ~Przyjrzyj się Potwornemu Dzbanowi.~ */ GOTO 34
  IF ~~ THEN REPLY #66633 /* ~Zajrzyj do przedniej części sklepu.~ */ GOTO 59
  IF ~~ THEN REPLY #66634 /* ~Zajrzyj do tylnej części sklepu.~ */ GOTO 60
  IF ~~ THEN REPLY #50562 /* ~"Właściwie to chciałbym rzucić okiem na oręż i czary..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50563 /* ~"W tym momencie nic mnie szczególnie nie interesuje. Żegnaj, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #50564 /* ~Vriszika zauważa, że z uwagą przyglądasz się księdze zatytułowanej 'KODY OSZUSTW'. "Tak, w środku jest dokładnie to, co myślisz. Nie krępuj się, przejrzyj sobie tę księgę."~ */
  IF ~~ THEN REPLY #50565 /* ~"Kody Oszustw? Nie rozumiem..."~ */ GOTO 23
  IF ~~ THEN REPLY #50566 /* ~Przyjrzyj się poszczególnym Oszustwom.~ */ GOTO 24
  IF ~~ THEN REPLY #50567 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 21
  IF ~~ THEN REPLY #50568 /* ~"W tym momencie nic mnie szczególnie nie interesuje. Żegnaj, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #50573 /* ~"Och, daj spokój." Vriszika kładzie dłonie na biodrach i kręci głową z politowaniem. "Nie musisz przede mną udawać. Pamiętaj, że jestem biesem. Potrafię wyczuć z daleka fascynację, jaką wzbudził w tobie ten tytuł. Tak..." Mówi wolno, jakby tłumaczyła coś niezbyt pojętnemu dziecku. "To są kody *oszustw*. Pozwalają ci na *OSZUKIWANIE*. No, dalej... Sprawdź je. Nie ugryzą cię."~ */
  IF ~~ THEN REPLY #50574 /* ~Przyjrzyj się poszczególnym Oszustwom.~ */ GOTO 24
  IF ~~ THEN REPLY #50575 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 21
  IF ~~ THEN REPLY #50576 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 23.0
  SAY #50577 /* ~Księga ma wiele rozdziałów: Oszustwo Teleportowania, Oszustwo Leczenia, Oszustwo Bogactwa, Oszustwo Odnowienia Czarów, Oszustwo Współczynników, Oszustwo Śmierci, Oszustwo Odkrycia Obszaru, Oszustwo Dobra i Oszustwo Zła.~ */
  IF ~~ THEN REPLY #50578 /* ~"A co chciałabyś w zamian?"~ */ GOTO 41
  IF ~~ THEN REPLY #50579 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 21
  IF ~~ THEN REPLY #50580 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 59.0
  SAY #50581 /* ~Przyglądasz się grupie niewielkich butelek. Każda z nich jest podpisana 'Olejek z Niemowląt'. Vriszika chwyta jedną z fiolek i przysuwa ci usłużnie. "Jesteś zainteresowany? To oczywiście prawdziwe. Do produkcji tego specyfiku zużyto tysiące rozwrzeszczanych niemowląt."~ */
  IF ~~ THEN REPLY #50582 /* ~"E... Nie, dziękuję. Pozwól, że rzucę okiem na resztę towarów."~ */ GOTO 59
  IF ~~ THEN REPLY #50583 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 59.1
  SAY #50584 /* ~Przyglądasz się figurce niewielkiego, poskręcanego, przypominającego diabełka stwora, zatopionego w czekoladowej masie mlecznej. "Smakowicie wygląda, co? To towar importowany ze Sfer Niższych. Te cacka są dość rzadkie, no i bardzo wysoko cenione przez łasuchów. To prawdziwy quasit, krewniak biesów, wtopiony w czekoladę za sprawą potężnych czarów. Kosztuje zaledwie sto i dziewięćdziesiąt dziewięć miedziaków."~ */
  IF ~  PartyGoldGT(198)
~ THEN REPLY #50585 /* ~"Dobra. Biorę go."~ */ DO ~SetGlobal("Vris_Buy_01","AR0609",1)
DestroyPartyGold(199)
GiveItemCreate("ChocoQ",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50586 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 59
  IF ~~ THEN REPLY #50587 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 59.2
  SAY #50589 /* ~Przyglądasz się niepozornej księdze, zamkniętej na niewielki mosiężny zatrzask. "To, co widzisz," szczebiocze Vriszika, "to Księga Rzeczy Niepojętych. Mogę tylko rzec, że jest to... jest to... hm... Właściwie to nie potrafię tego wyjaśnić. Naprawdę bardzo trudno oddać to słowami! W każdym bądź razie możesz stać się właścicielem tego przedmiotu za śmieszną sumkę tysiąca miedziaków... I wierzaj mi, ta księga warta jest wydania takich pieniędzy."~ */
  IF ~  PartyGoldGT(999)
~ THEN REPLY #50590 /* ~"Dobra. Biorę ją."~ */ DO ~SetGlobal("Vris_Buy_02","AR0609",1)
DestroyPartyGold(1000)
GiveItemCreate("CodexI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50591 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 59
  IF ~~ THEN REPLY #50592 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 59.3
  SAY #50593 /* ~Przyglądasz się niewielkiej szklanej fiolce z etykietą o treści 'Łzy devy'. "Te łzy zostały pobrane od devy, który trafił do niewoli w czasie potyczki w Wojnie Krwi. Biesy przez miriady lat torturowały swego niebiańskiego jeńca. Wszelako udało mu się ostatecznie zbiec. Ta buteleczka zawiera dwanaście łez, które deva uronił podczas swej niewoli. Łzy devy będą cię kosztowały nie więcej jak sto miedziaków."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50594 /* ~"Dobra. Biorę je."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50595 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 59
  IF ~~ THEN REPLY #50596 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 59.4 61.0
  SAY #50597 /* ~Przyglądasz się niewielkiej szklanej fiolce z etykietą o treści 'Łzy devy'. Vriszika przysuwa ci usłużnie buteleczkę. "Te łzy zostały pobrane od devy, który trafił do niewoli w czasie potyczki w Wojnie Krwi. Biesy przez miriady lat torturowały swego niebiańskiego jeńca. Wszelako udało mu się ostatecznie zbiec. Ta buteleczka zawiera dwanaście łez, które deva uronił podczas swej niewoli. Mówi się, że każda z łez jest w stanie ukoić najdzikszy gniew. Nawet ten zrodzony przez język biesa." Vriszika uśmiecha się okrutnie. "Łzy devy nie będą cię kosztowały więcej, jak dziewięćset dziewięćdziesiąt miedziaków."~ */
  IF ~  PartyHasItem("EcNote")
~ THEN REPLY #64175 /* ~"Mam skrypt dłużny z Przybytku, opiewający na kwotę tysiąca miedziaków."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyItem("EcNote",FALSE)
GiveGoldForce(1)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 58
  IF ~  PartyGoldGT(998)
~ THEN REPLY #50598 /* ~"One mogą powstrzymać przekleństwo Języka Biesa. Biorę je."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",2)
DestroyPartyGold(999)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50599 /* ~"Właściwie to chętnie rzuciłbym okiem na inne rzeczy..."~ */ GOTO 59
  IF ~~ THEN REPLY #50600 /* ~"Mogłyby przynieść pożytek Ecco... Ale nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 59.5
  SAY #50601 /* ~Przyglądasz się butelce z etykietą 'Eliksir Przerażającej Separacji'. Vriszika przesuwa flakonik w twoim kierunku. "Preparat ten sporządziła pewna zdolna uczennica magii, która odkryła, że jej dusza posiada dwa oblicza. Mroczniejsze z nich dochodziło czasami do głosu i popychało ją ku niegodziwym czynom. Ten eliksir miał za zadanie całkowicie wydzielić z jej duszy ową mroczną cząstkę i zamknąć ją w osobnym magicznym bycie. Niestety zdolna czarodziejka nie zdołała wypróbować na sobie tego specyfiku, ponieważ wcześniej wytropili ją Łaskobójcy i ukrócili ją o głowę za kilka bestialskich morderstw, które popełniła za podszeptem ciemnej strony swojej duszy."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #50602 /* ~"Dobra. Biorę go."~ */ DO ~SetGlobal("Vris_Buy_04","AR0609",1)
DestroyPartyGold(200)
GiveItemCreate("ElixirS",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50603 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 59
  IF ~~ THEN REPLY #50604 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.0
  SAY #50605 /* ~Przyglądasz się czemuś, co wygląda na język pływający w słoju wypełnionym solną zalewą. Vriszika krzywi się nieznacznie. "To język biesa... Mam wrażenie, że kornugona, ale co do tego nie można mieć pewności. Uważa się, że język ten umieszczony w ustach jakiejkolwiek żywej istoty, obdarzy ją zaraz umiejętnością mowy, choćby nawet mowa była dla niej dotychczas pojęciem obcym. Gdybyś był zainteresowany, wiedz, że moja cena tej osobliwości to tylko sześćdziesiąt sześć miedziaków.~ */
  IF ~  PartyGoldGT(65)
!Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50606 /* ~"Dobra. Biorę go."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  PartyGoldGT(65)
Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50607 /* ~"Dobra. Biorę go. Może przywróci głos Ecco."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66812 /* ~"Może przywróci głos Ecco... Ale niechaj najpierw przyjrzę się innym towarom."~ */ JOURNAL #66814 /* ~W sklepie z osobliwościami Vrisziki znalazłem Język Biesa. Po tym, co powiedziała mi o tej osobliwości właścicielka sklepu, doszedłem do wniosku, że przedmiot ten może przywrócić Ecco mowę.~ */ GOTO 21
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50608 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 21
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66813 /* ~"Może przywróci głos Ecco... Ale nie, dziękuję. Żegnaj."~ */ JOURNAL #66814 /* ~W sklepie z osobliwościami Vrisziki znalazłem Język Biesa. Po tym, co powiedziała mi o tej osobliwości właścicielka sklepu, doszedłem do wniosku, że przedmiot ten może przywrócić Ecco mowę.~ */ EXIT
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50609 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1
  SAY #50610 /* ~Przyglądasz się butelce z etykietą o treści 'Maść z Gorgony'. Vriszika przysuwa ją do ciebie usłużnie. "Wytargowałam ją od pewnego rębajły z Pierwszego Świata. Miał na imię zdaje się... Perseusz. Jeśli rozsmarujesz tę maść na powierzchni jakiejkolwiek istoty przemienionej w głaz, zaklęcie zostanie natychmiast zneutralizowane i powrócisz jej ciało. Kosztuje tylko sto miedziaków - cena atrakcyjna, zważywszy, że to bardzo poręczny specyfik. Przecież każdego dnia może się okazać, że któryś z twoich przyjaciół padł ofiarą okrutnego figla i został zaklęty w kamień, nieprawdaż?"~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50611 /* ~"Dobra. Biorę ją."~ */ DO ~SetGlobal("Vris_Buy_06","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Gsalve",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50612 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 21
  IF ~~ THEN REPLY #50613 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 21.2
  SAY #50614 /* ~Przyglądasz się niewielkiemu metalowemu posążkowi w kształcie sześcianu, przedstawiającemu istotę o wielu twarzach i wielkich oczach usadowionych na jednej z twarzy. Stworek ma dwoje nóg, dwoje ramion i dwoje złożonych skrzydeł. Vriszika uśmiecha się, kiedy go do rąk. "To albo talizman Zbieraczy albo po prostu dzieło sztuki... Nie znam jego przeznaczenia. Może ktoś inny w okolicy miałby na ten temat więcej do powiedzenia. W każdym razie, gdybyś miał ochotę to zakupić, wiedz, że nie będziesz musiał wydać więcej, jak sto miedziaków."~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50615 /* ~"Dobra. Biorę go."~ */ DO ~SetGlobal("Vris_Buy_08","AR0609",1)
DestroyPartyGold(1500)
GiveItemCreate("Cube",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50616 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 21
  IF ~~ THEN REPLY #50617 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 21.3
  SAY #50618 /* ~Przyglądasz się wyglądającemu dość pospolicie dzbanowi. Chociaż na pierwszy rzut oka nie budzi żadnych podejrzeń, ani niemiłych skojarzeń, powstrzymujesz się przed dotknięciem go ręką, jakbyś obawiał się, że jego zawartość ugryzie cię. Vriszika śledzi twoje wahanie z wesołością w oczach, po czym wzrusza ramionami. "To dzban jak każdy inny. Z tym, że w środku jest uwięziony pewien stwór. To dlatego na widok tego dzbana przechodzą cię takie dreszcze. Możesz go mieć za sto dwadzieścia trzy miedziaki."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50619 /* ~"Dobra. Biorę go."~ */ DO ~SetGlobal("Vris_Buy_09","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("MonJug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50620 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 21
  IF ~~ THEN REPLY #50621 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 60.0
  SAY #50622 /* ~Przyglądasz się okrągłej, poplamionej soczewce o szerokości twojej dłoni, umieszczonej w sfatygowanym stalowym pierścieniu. Niewielka klamra na pierścieniu sugeruje, że soczewka jest częścią jakiegoś mechanizmu o niewiadomym przeznaczeniu. Od przedmiotu bije ledwie wyczuwalny, ale okropny dla twoich nozdrzy zapach. Vriszika chwyta soczewkę i prezentuje ci ją w całej krasie. "Prawdę powiedziawszy nie mam pojęcia, do czego może służyć ten przedmiot, ale emanuje od niego aura bardzo silnej magii. Osobliwość tę przywiózł dla mnie ze Sfer Niższych żołnierz o imieniu Ghysis. Pochodzi z tamtejszego pobojowiska. Ghysis zdezerterował, zgładziwszy wszystkich swoich towarzyszy i przywiózł mi ze swoich kampanii mnóstwo osobliwości. Ten drobiazg trzymam tu raczej z przyzwyczajenia, więc jeśli jesteś zainteresowany, możesz go nabyć za jedyne sto czterdzieści dziewięć miedziaków."~ */
  IF ~  PartyGoldGT(148)
~ THEN REPLY #50623 /* ~"Dobra. Biorę ją."~ */ DO ~SetGlobal("Vris_Buy_10","AR0609",1)
DestroyPartyGold(149)
GiveItemCreate("Lens12",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50624 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 60
  IF ~~ THEN REPLY #50625 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 60.1
  SAY #50626 /* ~Przyglądasz się pierścieniowi, umieszczonemu w niewielkim, wyściełanym puzderku. Vriszika przysuwa go usłużnie tak, abyś mógł go lepiej zobaczyć. "To Pierścień Niepełnej Niewidzialności Yevraha. Kto go wsadzi na palec, będzie niewidzialny, no powiedzmy, *prawie* niewidzialny. Mogę się rozstać z tym pierścieniem za skromną sumkę trzystu czterdziestu dziewięciu miedziaków."~ */
  IF ~  PartyGoldGT(348)
~ THEN REPLY #50627 /* ~"Dobra. Biorę go."~ */ DO ~SetGlobal("Vris_Buy_11","AR0609",1)
DestroyPartyGold(349)
GiveItemCreate("RingAI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50628 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 60
  IF ~~ THEN REPLY #50629 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #50630 /* ~Przyglądasz się sztyletowi o osobliwym kształcie, umieszczonemu na ozdobnym regale. Na tabliczce umocowanej pod regałem odczytujesz napis 'Miecz z W'hynn'. Vriszika dotyka rękojeści sztyletu koniuszkiem palca. "Inaczej zwany Ostrzem Oszustów. Wystarczy, że wniesiesz go ku górze, a możesz być pewny wygranej w każdej grze. Miecz może zmienić właściciela za jedyne tysiąc pięćset miedziaków."~ */
  IF ~~ THEN REPLY #50631 /* ~"Wygraną w grze... Nie rozumiem. Co przez to rozumiesz?"~ */ GOTO 38
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50632 /* ~"Dobra. Biorę go."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50633 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 21
  IF ~~ THEN REPLY #50634 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #50635 /* ~Vriszika patrzy na ciebie z niedowierzaniem. "Och, daj spokój. *Doskonale* wiesz, co mam na myśli. Kup Ostrze Oszustów, a będziesz zwycięzcą w grze. To takie proste... I kosztuje tylko tysiąc pięćset miedziaków. Chcesz to kupić, czy nie?"~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50636 /* ~"Dobra. Biorę go."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50637 /* ~"Nie... ale pozwól, że rzucę okiem na resztę towarów."~ */ GOTO 21
  IF ~~ THEN REPLY #50638 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 60.3
  SAY #50639 /* ~Upływ czasu nie był łaskawy dla tej niewielkiej szmacianej laleczki. Jej szwy ledwie się trzymają, a nici już dawno opuściły przynależne im miejsca. Przypomina osobliwie odzianą kobietę o głowie upstrzonej gęstwiną kolców. Vriszika przysuwa do ciebie lalkę. "Tę laleczkę znaleziono w ogniotrwałej szkatule pod powierzchnią Sigil. Leżała w stercie rozmaitych kosztowności i zakazanych ksiąg magicznych. Nie potrafię określić jej przeznaczenia. Gdybyś miał ochotę stać jej właścicielem, będzie cię to kosztowało nie więcej jak dziewięćdziesiąt dziewięć miedziaków."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50640 /* ~"Dobra. Biorę ją."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50641 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 60
  IF ~~ THEN REPLY #50642 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 60.4
  SAY #50643 /* ~Upływ czasu nie był łaskawy dla tej niewielkiej szmacianej laleczki. Jej szwy ledwie się trzymają, a nici już dawno opuściły przynależne im miejsca. Bez wątpliwości lalka ma być podobizną Pani Bólu, ale jej oczy z guzików i pluszowa sylwetka raczej nie budzą w tobie nabożnego przerażenia. Vriszika przysuwa do ciebie lalkę. "Tę laleczkę znaleziono w ogniotrwałej szkatule pod powierzchnią Sigil. Leżała w stercie rozmaitych kosztowności i zakazanych ksiąg magicznych. Nie potrafię określić jej przeznaczenia. Gdybyś miał ochotę stać jej właścicielem, będzie cię to kosztowało nie więcej jak dziewięćdziesiąt dziewięć miedziaków."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50644 /* ~"Dobra. Biorę ją."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50645 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 60
  IF ~~ THEN REPLY #50646 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 24.0
  SAY #50647 /* ~Vriszika podchodzi nieco bliżej. "Pieniądz to nie wystarczający ekwiwalent za taki przedmiot. Chcę funta twojej krwi, utoczonej w mojej obecności, za pomocą *tego* ostrza..." Nagle w dłoni Vrisziki pojawia się ząbkowany sztylet "...i przelanej do tego żelaznego pudła. Nie chcę w zamian niczego więcej ponad to."~ */
  IF ~~ THEN REPLY #50648 /* ~"Uczynię to."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,10)
FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Vris_Buy_07","GLOBAL",1)
GiveItemCreate("Cheats",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #50649 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 21
  IF ~~ THEN REPLY #50650 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #50651 /* ~Po kilku minutach odrażający rytuał dobiega końca, a Vriszika z uśmiechem ukontentowania na ustach wręcza ci książkę. "Nie zostało ci teraz zbyt wiele czasu. Żegnaj."~ */
  IF ~~ THEN REPLY #50652 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 26.0 27.0 28.0 29.1 30.0 31.0 31.1 32.0 33.0 34.0 35.0 36.0 37.1 38.0 39.0 40.0 51.0
  SAY #50653 /* ~"Tak." mruczy Vriszika. "To mądry wybór." Masz wrażenie, że miedziaki, które wsypujesz w jej otwartą dłoń, znikają w momencie zetknięcia się z jej ciałem. Vriszika wręcza ci zakupiony artykuł. "Proszę bardzo. Ciesz się nowym zakupem."~ */
  IF ~~ THEN REPLY #58910 /* ~"Chciałbym teraz rzucić okiem na oręż i czary..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58911 /* ~"Chciałbym teraz rzucić jeszcze raz okiem na te egzotyczne przedmioty..."~ */ GOTO 21
  IF ~~ THEN REPLY #50654 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 7.0
  SAY #50655 /* ~Pełne, czarne usta Vrisziki układają się w uśmiech. "Nigdy nie wzgardzam niczyją pomocą. Kałamarz, ten leniwy ciemięga, pomaga mi w sklepie, ale przecież mogę zawsze przyjąć kogoś na służbę do swojej posiadłości. A kogo byś chciał mi polecić? Płacę pięć tysięcy miedziaków, jeśli to ktoś przyzwoity."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50656 /* ~"A co myślisz o Mortem?"~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 504
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50657 /* ~"To diabelstwo, Annę."~ */ DO ~SetGlobal("Sell_Annah","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DANNAH~ 250
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50658 /* ~"Dak'kona, githzerai."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 167
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50659 /* ~"Nie-Sławę."~ */ DO ~SetGlobal("Sell_Grace","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ GOTO 48
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #50660 /* ~"Tego modrona - Nordoma."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DNORDOM~ 13
  IF ~~ THEN REPLY #50661 /* ~"Właściwie to dajmy temu spokój. Mam jeszcze jedno pytanie..."~ */ GOTO 7
  IF ~~ THEN REPLY #50662 /* ~"Nie, nikogo. Dajmy temu spokój. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #50663 /* ~Vriszika patrzy na Mortego przez zmrużone oczy. "Hm... Ta czaszka mogłaby być pożyteczna. Tak... Ale musisz wiedzieć, że jeśli wezmę go na służbę, nie zobaczysz go już nigdy... Mogę zapłacić ci za niego pięć tysięcy miedziaków."~ */
  IF ~~ THEN REPLY #50664 /* ~"Nigdy więcej, powiadasz? W porządku... Jest twój."~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DMORTE~ 505
  IF ~~ THEN REPLY #50665 /* ~"Nie. Wolałbym nie próbować takich rzeczy. Żegnaj, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #50666 /* ~Vriszika podaje swojemu nowemu niewolnikowi Mortemu skrawek pergaminu. "Tutaj jest adres mojego domu, położonego w Dzielnicy Pani. Idź tam, a spróbuj tylko rozmyślić się po drodze, to naślę na ciebie bandę biesów, a jak ci siądą na gardle, będziesz skowyczał i błagał, żeby powrócić do Sigil i służyć mi." Vriszika odwraca się do ciebie. "A *tobie* wielkie dzięki. Nie wątpię, że mój nowy nabytek przyniesie mi wiele radości. Oto i twoje pięć tysięcy miedziaków... Żegnaj."~ */
  IF ~~ THEN REPLY #50668 /* ~"Żegnaj."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Morte")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #50667 /* ~Vriszika patrzy na Dak'kona przez zmrużone oczy. "Hm... Czy to nie githzerai? I przy tym zerth, prawda? Ale musisz wiedzieć, że jeśli wezmę go na służbę, nigdy go już nie zobaczysz... Mogę zapłacić ci za niego pięć tysięcy miedziaków."~ */
  IF ~~ THEN REPLY #50669 /* ~"Nigdy więcej? Rozumiem. Jest twój."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DDAKKON~ 168
  IF ~~ THEN REPLY #50670 /* ~"Nie. Wolałbym nie próbować takich rzeczy. Żegnaj, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.3
  SAY #50671 /* ~"Nie bądź *śmieszny*." Vriszika patrzy na ciebie z politowaniem, kręcąc głową. "Niby jakie masz do niej prawo, żeby ją sprzedawać? Idź swoją drogą i powróć tu, ale pod warunkiem, że będziesz miał wówczas odrobinę mądrzejsze pomysły."~ */
  IF ~~ THEN REPLY #50672 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #50673 /* ~Vriszika patrzy na Nordoma przez zmrużone oczy. "Hm... Mechaniczny sługa na każde moje skinienie? Dobrze, mogę na to pójść. Ale musisz wiedzieć, że jeśli wezmę go na służbę, nigdy go już nie zobaczysz... Mogę zapłacić ci za niego pięć tysięcy miedziaków."~ */
  IF ~~ THEN REPLY #50674 /* ~"Nigdy więcej? Rozumiem. Jest twój."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DNORDOM~ 14
  IF ~~ THEN REPLY #50675 /* ~"Nie. Wolałbym nie próbować takich rzeczy. Żegnaj, Vrisziko."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",1)
~ THEN BEGIN 50 // from: 6.1
  SAY #50676 /* ~Vriszika oddaje ci niedbały ukłon. "Witaj znowu. Chcesz coś kupić?"~ */
  IF ~~ THEN REPLY #50677 /* ~"Nie w tej chwili. Ale mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #50678 /* ~"Tak."~ */ GOTO 20
  IF ~~ THEN REPLY #52599 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 60.2
  SAY #50679 /* ~Przyglądasz się dużemu cynowemu naczyniu pokrytemu dziwnymi runami. Vriszika przysuwa go do ciebie, tak abyś mógł nim więcej nacieszyć swoje oczy. "To kufel na piwo, osobliwej roboty, który ma tę właściwość, że jego zawartość, zazwyczaj oczywiście piwo, jest zawsze lodowato zimna, niezależnie od temperatury otoczenia. Płacisz dwieście dziewięćdziesiąt dziewięć miedziaków i będziesz mógł zawsze delektować się najzimniejszym piwem we wszystkich Sferach, wyjąwszy może Parasferę Lodu."~ */
  IF ~  PartyGoldGT(298)
~ THEN REPLY #50680 /* ~"Dobra. Biorę to."~ */ DO ~SetGlobal("Vris_Buy_14","AR0609",1)
DestroyPartyGold(299)
GiveItemCreate("DwfMug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50681 /* ~"Właściwie to chętnie rzuciłbym jeszcze okiem na inne rzeczy..."~ */ GOTO 60
  IF ~~ THEN REPLY #50682 /* ~"Nie, dziękuję. Bądź zdrowa, Vrisziko."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 52 // from:
  SAY #50683 /* ~Ta kobieta o ostrych rysach twarzy, ciemnej, opadającej w błękit skórze i jasnych żółtych oczach jest w równym stopniu atrakcyjna, co odpychająca. Kiedy przygląda ci się badawczo, na jej plecach rozprostowuje się para niewielkich nietoperzych skrzydeł, które zaraz potem znowu chowają się gdzieś między jej łopatkami.~ */
  IF ~~ THEN GOTO 1
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 53 // from:
  SAY #50684 /* ~Ta kobieta o ostrych rysach twarzy, ciemnej, opadającej w błękit skórze i jasnych żółtych oczach jest w równym stopniu atrakcyjna, co odpychająca. Kiedy przygląda ci się badawczo, na jej plecach rozprostowuje się para niewielkich nietoperzych skrzydeł, które zaraz potem znowu chowają się gdzieś między jej łopatkami.~ */
  IF ~~ THEN GOTO 2
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 54 // from:
  SAY #50685 /* ~Ta kobieta o ostrych rysach twarzy, ciemnej, opadającej w błękit skórze i jasnych żółtych oczach jest w równym stopniu atrakcyjna, co odpychająca. Kiedy przygląda ci się badawczo, na jej plecach rozprostowuje się para niewielkich nietoperzych skrzydeł, które zaraz potem znowu chowają się gdzieś między jej łopatkami.~ */
  IF ~~ THEN GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DGrace")
~ THEN BEGIN 55 // from:
  SAY #52596 /* ~Vriszika oddaje ci niedbały ukłon. "Witaj znowu. Chcesz coś kupić?"~ */
  IF ~~ THEN REPLY #52597 /* ~"Nie w tej chwili. Ale mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #52598 /* ~"Tak."~ */ GOTO 20
  IF ~~ THEN REPLY #52600 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63985 /* ~Vriszika podaje swojemu nowemu niewolnikowi Dak'konowi skrawek pergaminu. "Tutaj jest adres mojego domu, położonego w Dzielnicy Pani. Idź tam, a spróbuj tylko rozmyślić się po drodze, to naślę na ciebie bandę biesów, a jak ci siądą na gardle, będziesz skowyczał i błagał, żeby powrócić do Sigil i służyć mi." Vriszika odwraca się do ciebie. "A *tobie* wielkie dzięki. Nie wątpię, że mój nowy nabytek przyniesie mi wiele radości. Oto i twoje pięć tysięcy miedziaków... Żegnaj."~ */
  IF ~~ THEN REPLY #63986 /* ~"Żegnaj."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Dakkon")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #63987 /* ~Vriszika podaje swojemu nowemu niewolnikowi Nordomowi skrawek pergaminu. "Tutaj jest adres mojego domu, położonego w Dzielnicy Pani. Idź tam, a spróbuj tylko rozmyślić się po drodze, to naślę na ciebie bandę biesów, a jak ci siądą na gardle, będziesz skowyczał i błagał, żeby powrócić do Sigil i służyć mi." Vriszika odwraca się do ciebie. "A *tobie* wielkie dzięki. Nie wątpię, że mój nowy nabytek przyniesie mi wiele radości. Oto i twoje pięć tysięcy miedziaków... Żegnaj."~ */
  IF ~~ THEN REPLY #63988 /* ~"Żegnaj."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Nordom")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 29.0
  SAY #64171 /* ~Vriszika krzywi się nieznacznie, przyglądając się dokumentowi. "Hm... Sądzę, że Kałamarz później to odbierze. Dobrze, proszę, to dla ciebie." Vriszika wręcza ci wybrany artykuł. "Ciesz się nowym zakupem."~ */
  IF ~~ THEN REPLY #64172 /* ~"Chciałbym teraz rzucić okiem na oręż i czary..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64173 /* ~"Chciałbym teraz rzucić jeszcze raz okiem na te egzotyczne przedmioty..."~ */ GOTO 21
  IF ~~ THEN REPLY #64174 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.4 25.0 26.1 27.1 28.1 29.2 30.1 60.5
  SAY #66631 /* ~Zaczynasz przyglądać się regałom znajdującym się w przedniej części sklepu Vrisziki.~ */
  IF ~~ THEN REPLY #66635 /* ~Przyjrzyj się Olejkowi z Niemowląt.~ */ GOTO 25
  IF ~  Global("Vris_Buy_01","AR0609",0)
~ THEN REPLY #66636 /* ~Przyjrzyj się Quasitowi z Czekolady.~ */ GOTO 26
  IF ~  Global("Vris_Buy_02","AR0609",0)
~ THEN REPLY #66637 /* ~Przyjrzyj się Księdze Rzeczy Niepojętych.~ */ GOTO 27
  IF ~  Global("Vris_Buy_03","AR0609",0)
!Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66638 /* ~Przyjrzyj się Łzom Devy.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 28
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66639 /* ~Przyjrzyj się Łzom Devy.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ JOURNAL #66815 /* ~Kiedy przyglądałem się Łzom Devy, wystawionym na sprzedaż w sklepie Vriszika, właścicielka sklepu powiedziała mi, że łzy te są w stanie uśmierzyć najdzikszy gniew, nawet spowodowany przez Język Biesa. Może to pomoże Ecco.~ */ GOTO 29
  IF ~  Global("Vris_Buy_04","AR0609",0)
~ THEN REPLY #66640 /* ~Przyjrzyj się Eliksirowi Przerażającej Separacji.~ */ GOTO 30
  IF ~~ THEN REPLY #66641 /* ~Zajrzyj do środkowej części sklepu.~ */ GOTO 21
  IF ~~ THEN REPLY #66642 /* ~Zajrzyj do tylnej części sklepu.~ */ GOTO 60
  IF ~~ THEN REPLY #66643 /* ~"Właściwie to chciałbym rzucić okiem na oręż i czary..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66644 /* ~"W tym momencie nic mnie szczególnie nie interesuje. Żegnaj, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 21.5 35.1 36.1 39.1 40.1 51.1 59.7
  SAY #66632 /* ~Zaczynasz przyglądać się regałom znajdującym się w tylnej części sklepu Vrisziki.~ */
  IF ~  Global("Vris_Buy_10","AR0609",0)
~ THEN REPLY #66645 /* ~Przyjrzyj się poplamionej soczewce.~ */ DO ~SetGlobal("CW_Vrischika_Ghysis","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Vris_Buy_11","AR0609",0)
~ THEN REPLY #66646 /* ~Przyjrzyj się Pierścieniowi Yevraha.~ */ GOTO 36
  IF ~  Global("Vris_Buy_14","AR0609",0)
~ THEN REPLY #66647 /* ~Przyjrzyj się pokrytemu runami kuflowi do piwa.~ */ GOTO 51
  IF ~  Global("Vris_Buy_13","AR0609",0)
Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #66648 /* ~Przyjrzyj się szmacianej lalce.~ */ GOTO 39
  IF ~  Global("Vris_Buy_13","AR0609",0)
GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #66649 /* ~Przyjrzyj się szmacianej lalce.~ */ GOTO 40
  IF ~~ THEN REPLY #66650 /* ~Zajrzyj do przedniej części sklepu.~ */ GOTO 59
  IF ~~ THEN REPLY #66651 /* ~Zajrzyj do środkowej części sklepu.~ */ GOTO 21
  IF ~~ THEN REPLY #66652 /* ~"Chciałbym teraz rzucić okiem na oręż i czary..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66653 /* ~"W tym momencie nic mnie szczególnie nie interesuje. Żegnaj, Vrisziko."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 7.1
  SAY #66959 /* ~Vriszika tylko uśmiecha się i wskazuje towar znajdujący się w przedniej części sklepu.~ */
  IF ~~ THEN REPLY #66960 /* ~Popatrz w wskazanym przez nią kierunku.~ */ GOTO 29
END
