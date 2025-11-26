// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DUHIR~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #23329 /* ~Masz wystarczająco dużo czasu, aby zobaczyć obraz paniki w twarzy Zbieracza, kiedy ten odwraca się i ucieka.~ */
  IF ~  Global("Uhir","GLOBAL",0)
~ THEN REPLY #22957 /* ~"Może następnym razem..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~  GlobalGT("Uhir","GLOBAL",0)
~ THEN REPLY #23331 /* ~"Uhirze, poczekaj... cholera!"~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.2
  SAY #23335 /* ~"Ech tak... Poturbował mnie trochę ghul, tam na dole, kiedy rozglądałem się za czymś zdatnym do sprzedania."~ */
  IF ~~ THEN REPLY #23337 /* ~"Na dole?"~ */ GOTO 5
  IF ~~ THEN REPLY #23340 /* ~"Chciałbym ci zadać jeszcze kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #23342 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0
  SAY #23344 /* ~"Wołają na mnie Uhir." Zbieracz spluwa. "Tak jakby to miało na dole jakiekolwiek znaczenie."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23345 /* ~"Czy to jest może twój nóż? Z imieniem 'UHIR' wyrytym na rękojeści?"~ */ GOTO 16
  IF ~~ THEN REPLY #23347 /* ~"Dobra. Chciałbym ci zadać jeszcze kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #23348 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.1 5.1 7.0 8.0 9.1 10.2 10.3 11.0 12.0
  SAY #23349 /* ~Zbieracz kiwa głową, ale nic nie mówi.~ */
  IF ~~ THEN REPLY #23350 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #23351 /* ~"Co tutaj robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #23352 /* ~"Jesteś cały w bandażach. Co ci się stało?"~ */ GOTO 1
  IF ~~ THEN REPLY #23353 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #23354 /* ~"Czekam, aż moje rany zagoją się na tyle, abym mógł znowu rozejrzeć się na dole za czymś zdatnym do sprzedania. Żyję z tego."~ */
  IF ~~ THEN REPLY #23355 /* ~"Na dole?"~ */ GOTO 5
  IF ~~ THEN REPLY #23357 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #23359 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #23366 /* ~Zbierz kiwa głową. "Na dole, w katakumbach, gdzie są wszystkie truposze. Słuchaj, a ty się tam nie wybierasz?"~ */
  IF ~~ THEN REPLY #23368 /* ~"Być może. A co?"~ */ GOTO 9
  IF ~~ THEN REPLY #23370 /* ~"Mniejsza z tym. Mam inne pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #23371 /* ~"Nie wykluczone. Żegnaj."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",3)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #23372 /* ~Uhir z uznaniem kiwa głową. "Dzięki raz jeszcze, śmiałku, za pomoc w odzyskaniu mojego szczęśliwego noża."~ */
  IF ~~ THEN REPLY #23373 /* ~"Naturalnie. Żegnaj."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",1)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #23374 /* ~Uhir lustruje cię ostrożnym spojrzeniem, jak pies strzegący własnej miski. "Ech... Znowu ty? Czego chcesz?"~ */
  IF ~~ THEN REPLY #23375 /* ~"Szukam odpowiedzi na pewne pytania."~ */ GOTO 3
  IF ~~ THEN REPLY #23376 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",0)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #23377 /* ~Ten średniego wieku mężczyzna o kwaśnym wyrazie twarzy podrywa się na twój widok i sięga za pas... a nie znalazłszy tam żadnej broni, cofa się przed tobą. Spostrzegasz, że przedramiona i nogi Zbieracza owinięte są w nie pierwszej czystości bandaże. "Czego chcesz?"~ */
  IF ~~ THEN REPLY #23378 /* ~"Po prostu zastanawia mnie kilka rzeczy... i szukam wyjaśnień."~ */ DO ~SetGlobal("Uhir","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #23379 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #23380 /* ~"Bo straciłem mój szczęśliwy nóż!", Zbieracz warczy wściekle i tupie. "Towarzyszył mi przez całe lata. Był zawsze tutaj..." Mężczyzna wskazuje na pustą pochwę u swego pasa.~ */
  IF ~~ THEN REPLY #23381 /* ~"Więc co się stało z twoim nożem?"~ */ GOTO 10
  IF ~~ THEN REPLY #23382 /* ~"O, to duża szkoda. Mam jeszcze kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #23383 /* ~"Mam nadzieję, że odzyskasz swój nóż. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.3
  SAY #23384 /* ~"Grzebałem sobie w katakumbach na dole i wpadłem wprost na ghula. Musiał to być jakiś przybłęda, bo one z reguły nie chodzą w pojedynkę. Ugryzł mnie w twarz, więc zasłoniłem się ramionami i pchnąłem go nożem między oczy. Spadł na ziemię i zaczął gryźć mnie w nogę, póki drania nie zrzuciłem z siebie i nie wdrapałem się tutaj z powrotem."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23385 /* ~"Czy to jest może twój nóż? Z imieniem 'UHIR' wyrytym na rękojeści?"~ */ GOTO 16
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23386 /* ~"Frapująca historia. Słuchaj, jeżeli znajdę na dole twój nóż, to ci go tutaj przyniosę."~ */ DO ~SetGlobal("Uhir","GLOBAL",2)
~ JOURNAL #21912 /* ~Uhir stracił w katakumbach swój 'szczęśliwy nóż' - pchnął nim ghula w oczy i uciekł. Jeśli się na niego natknę, może będę mógł przynieść go z powrotem.~ */ GOTO 11
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23387 /* ~"Mam nadzieję, że odzyskasz swój nóż. Mam jeszcze kilka innych pytań..."~ */ GOTO 3
  IF ~  Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23388 /* ~"Przecież mówię, że jeśli go znajdę, to ci go przyniosę. Mam jeszcze kilka innych pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #23389 /* ~"Założę się, że ten ghul jest tak samo wkurzony jak ty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #23390 /* ~"Mógłbyś to uczynić? Byłbym niezmiernie wdzięczny. Poznasz go po tym, że ma moje imię wyryte na rękojeści."~ */
  IF ~~ THEN REPLY #23391 /* ~"Chętnie ci pomogę. Zanim odejdę, chciałbym zadać ci kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #23392 /* ~"Chyba domyślasz się, że spodziewam się zapłaty."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #23393 /* ~"Teraz już czas na mnie. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #23394 /* ~Uhir marszczy brwi: "Dam wszystko, co mam, ale to niezbyt wiele. Spójrz na mnie, śmiałku. Nie spodziewaj się, że obsypię cię kosztownościami."~ */
  IF ~~ THEN REPLY #23395 /* ~"Będzie musiało wystarczyć. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #23396 /* ~"Porozmawiamy sobie jeszcze, jak odzyskam swój nóż. Na razie bywaj zdrów."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",2)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #23397 /* ~Uhir patrzy na ciebie przez zmrużone oczy. "I co? Znalazłeś może mój nóż?"~ */
  IF ~  PartyHasItem("UhrKnf")
Global("Good_Uhir_1","GLOBAL",1)
~ THEN REPLY #23398 /* ~"Tak mam go... Proszę bardzo."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~  PartyHasItem("UhrKnf")
Global("Evil_Uhir_1","GLOBAL",1)
~ THEN REPLY #23399 /* ~"Tak, mam go."~ */ GOTO 15
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23400 /* ~Kłamstwo: "Nie... Nie mam go. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Uhir_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23401 /* ~"Nie, jeszcze nie. Powiedz mi jeszcze raz, gdzie go dokładnie zgubiłeś?"~ */ GOTO 10
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23402 /* ~"Jeszcze nie. Do widzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 15.1 16.0
  SAY #23403 /* ~Uhir bierze nóż i tuli go jak kochankę. "Och, powróciłeś. Mój wspaniały, szczęśliwy nożu... Dzięki, śmiałku." Następnie Zbieracz znowu zwraca się do noża, potrząsając nim. "A ty! Nie próbuj nigdy więcej oddalać się ode mnie." Z radosnym uśmiechem wkłada nóż do pochwy u pasa.~ */
  IF ~~ THEN REPLY #23404 /* ~"Bywaj zdrów, Uhirze."~ */ JOURNAL #22025 /* ~Zwróciłem Uhirowi jego 'szczęśliwy' nóż. Może w przyszłości lepiej się mu przysłuży... choć w sumie uratował go raz przed zjedzeniem przez ghula.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.1
  SAY #23405 /* ~"Wszystko, co mam to garść miedziaków, śmiałku..." Wyciąga ku tobie około tuzina monet. "Wystarczy?"~ */
  IF ~~ THEN REPLY #23406 /* ~"Tak, wystarczy. Oto twój nóż."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
GivePartyGold(13)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23407 /* ~"Nie potrzebuję twoich pieniędzy, Uhirze. Oto twój nóż."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23408 /* ~"Hm... Wobec tego po prostu zatrzymam go. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~Zdecydowałem zatrzymać dla siebie 'szczęśliwy' nóż Uhira. Nie był z tego powodu zbytnio zadowolony.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 10.0
  SAY #23409 /* ~Oczy Uhira rozszerzają się ze zdumienia. "To mój szczęśliwy nóż!"~ */
  IF ~~ THEN REPLY #23410 /* ~"Proszę weź go. Należy przecież do ciebie."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Uhir_1","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #23411 /* ~"Jeżeli chcesz go odzyskać, mógę ci go sprzedać."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #23412 /* ~"To ładny nóż... Zatrzymam go dla siebie, Uhirze. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~Zdecydowałem zatrzymać dla siebie 'szczęśliwy' nóż Uhira. Nie był z tego powodu zbytnio zadowolony.~ */ EXIT
END
