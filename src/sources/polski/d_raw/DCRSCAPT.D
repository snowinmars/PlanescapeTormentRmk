// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSCAPT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSCAPT~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #60328 /* ~Widzisz udręczonego mężczyznę w imponującej zbroi. Przygotowuje innych strażników do obrony miasta. "Nie mam czasu na gadanie!" warczy. "Jeśli chcesz się na coś przydać, pozbądź się tego cholernego devy lub załatw te gerelethy! Nie marnuj mojego czasu!" Odwraca się do swoich ludzi.~ */
  IF ~~ THEN REPLY #60329 /* ~"Co się dzieje?"~ */ GOTO 1
  IF ~~ THEN REPLY #60330 /* ~"W porządku. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60331 /* ~"Co się dzieje? Skąd ty jesteś, co? Ten szpicowaty skurl, deva, wyskoczył z ziemi i zaciągnął nas do Tartaru; oto co się dzieje! I teraz musimy borykać się z gerelethami, które mają nas za niezły kąsek. Jesteśmy w samym środku kłopotów, trepie, więc zjeżdżaj mi z drogi!" Niegrzecznie przepycha się koło ciebie i nie chce już odpowiadać na żadne pytania.~ */
  IF ~~ THEN REPLY #60332 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 2 // from: 0.1
  SAY #60333 /* ~"Włazisz mi w drogę, trepie... posprzątaj po tym devie, jeśli chcesz zrobić coś dla miasta! I przestań ZAWRACAĆ MI GŁOWĘ!"~ */
  IF ~~ THEN REPLY #60334 /* ~"Dobrze, dobrze..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 3 // from:
  SAY #60335 /* ~Widzisz rześkiego, dobrze uzbrojonego mężczyznę, noszącego ubiór strażnika Klątwy, lecz sprawiającego wrażenie kogoś ważniejszego. Obdarza cię pogardliwym spojrzeniem. "Czego chcesz?"~ */
  IF ~~ THEN REPLY #60336 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 5
  IF ~~ THEN REPLY #60337 /* ~"Chciałbym się widzieć z kimś, kto tu dowodzi."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60338 /* ~"Kobieta, która zwie się Lady Roberta, planuje zabić swojego męża, Karla. Myślę, że to jeden z pomocników Włodarza."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60340 /* ~"Chcę się przyznać do zamordowania Karla Parfidora."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60341 /* ~"Jeden z miejscowych urzędników poprosił mnie, bym zamordował jednego z nich. Pomyślałem, że lepiej was uprzedzić."~ */ GOTO 9
  IF ~~ THEN REPLY #60342 /* ~"Aresztujcie mnie."~ */ GOTO 10
  IF ~~ THEN REPLY #60343 /* ~"Szukam devy."~ */ GOTO 11
  IF ~~ THEN REPLY #60344 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 4 // from: 5.0 7.0 11.0 12.0 13.0 14.0
  SAY #60345 /* ~"Czego?"~ */
  IF ~~ THEN REPLY #60346 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 5
  IF ~~ THEN REPLY #60347 /* ~"Chcę się widzieć z kimś, kto tu dowodzi."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60348 /* ~"Kobieta, która zwie się Lady Roberta, planuje zabić swojego męża, Karla. Myślę, że to jeden z pomocników Włodarza.~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60349 /* ~"Chcę się przyznać do zamordowania Karla Parfidora."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60350 /* ~"Jeden z miejscowych urzędników poprosił mnie, bym zamordował jednego z nich. Pomyślałem, że lepiej was uprzedzić."~ */ GOTO 9
  IF ~~ THEN REPLY #60351 /* ~"Aresztujcie mnie."~ */ GOTO 10
  IF ~~ THEN REPLY #60352 /* ~"Szukam devy."~ */ GOTO 11
  IF ~~ THEN REPLY #60353 /* ~"Nic ważnego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #60354 /* ~"To Klątwa. Co chcesz wiedzieć? Że to miasto przesiąknięte jest zdradą, rządzone przez szaleńca i pełne intryg, tak jak Tartar gerelethów. Że tutaj obcemu możesz ufać tak bardzo jak rodzinie? Że tutaj marzy się o nieuczciwości i zemście? Rozejrzyj się, trepie, i sam spróbuj je rozgryźć."~ */
  IF ~~ THEN REPLY #60355 /* ~"W porządku. Odpowiedz mi na parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #60356 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1
  SAY #60357 /* ~"Kto tu dowodzi? A po co ci to?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60358 /* ~"Kobieta, która zwie się Lady Roberta, planuje zabić swojego męża, Karla. Myślę, że to jeden z pomocników Włodarza.~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60359 /* ~"Chcę się przyznać do zamordowania Karla Parfidora."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60360 /* ~"Jeden z miejscowych urzędników poprosił mnie, bym zamordował jednego z nich. Pomyślałem, że lepiej was uprzedzić."~ */ GOTO 9
  IF ~~ THEN REPLY #60361 /* ~"Aresztujcie mnie."~ */ GOTO 10
  IF ~~ THEN REPLY #60362 /* ~"Szukam devy."~ */ GOTO 11
  IF ~~ THEN REPLY #60363 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 4.2 6.0
  SAY #60364 /* ~"Naprawdę? Zajmiemy się tym, przyjacielu. Mieszkańcy Klątwy dziękują ci."~ */
  IF ~~ THEN REPLY #60365 /* ~"Wspaniale. Mam parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #60366 /* ~"Wspaniale. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 6.1
  SAY #60367 /* ~"Naprawdę? Opowiedz mi o tym. W gruncie rzeczy, opowiesz to celi, w której się znajdziesz. Będziesz współpracował?"~ */
  IF ~~ THEN REPLY #60368 /* ~"Pójdę nie stawiając oporu."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #60369 /* ~"Żartujesz? Nie ma mowy."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.4 6.2
  SAY #60370 /* ~Jego twarz przybiera srogi wyraz. "Podaj mi imię. Kto i co planuje?"~ */
  IF ~~ THEN REPLY #60371 /* ~"Sjaba chce zamordować An'izjusza."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~Powiadomiłem kapitana strażników z Klątwy, że Sjaba próbuje uśmiercić An'izjusza. Wiadomość ta zrobiła na nim duże wrażenie i obiecał, że natychmiast ją aresztuje. Mam nadzieję, że dobrze rozegrałem całą sprawę...~ */ GOTO 12
  IF ~~ THEN REPLY #60372 /* ~"An'izjusz poprosił mnie, bym wrobił Sjabę, która chce, bym wrobił Anizjusza. Obydwoje są skorumpowani."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60373 /* ~"An'izjusz próbuje zamordować Sjabę."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~Powiadomiłem kapitana strażników z Klątwy, że An'izjusz próbuje uśmiercić Siabhę. Wiadomość ta zrobiła na nim duże wrażenie i obiecał, że natychmiast aresztuje tego githyanki. Mam nadzieję, że dobrze rozegrałem całą sprawę.~ */ GOTO 14
  IF ~~ THEN REPLY #60374 /* ~"Zapomnij, że coś mówiłem."~ */ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.5 4.5 6.3
  SAY #60375 /* ~"Za jaką zbrodnię? Dalej, wynoś się stąd. Jestem zajętym człowiekiem." Spogląda na otaczający was teren, wyraźnie cię ignorując.~ */
  IF ~~ THEN REPLY #60376 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.6 4.6 6.4
  SAY #60377 /* ~Przechyla głowę w twoją stronę. "Czemu miałbyś tu szukać devy? Z tego co wiem, nie było żadnego w Klątwie przez długi, długi czas. Uciekłby pod ziemię, bo nie mógłby znieść zdrady i zła, które unoszą się w powietrzu." Śmieje się.~ */
  IF ~~ THEN REPLY #60378 /* ~"W porządku. Odpowiedz na kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #60379 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 15.0
  SAY #60380 /* ~Oczy zmieniają mu się w szparki. "Już od jakiegoś czasu marzę o tym, by znalazła się w celi. Mam dla niej coś specjalnego. Wyślę oddział specjalny. Wielce dziękuję, przybyszu."~ */
  IF ~~ THEN REPLY #60381 /* ~"To nic specjalnego. Mam więcej pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #60382 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 15.1
  SAY #60383 /* ~"Oboje, taa? Dobrze. To powinno ugruntować moją kontrolę nad tym miastem. Zanim się zorientujesz już ich nie będzie. Wielce dziękuję, przybyszu."~ */
  IF ~~ THEN REPLY #60384 /* ~"To nic specjalnego. Mam więcej pytań..."~ */ JOURNAL #60386 /* ~Powiadomiłem kapitana gwardzistów z Klątwy, że zarówno Sjaba, jak i An'izjusz próbują obciążyć jedno drugie fałszywymi oskarżeniami o dokonanie przestępstw. Wiadomość ta wprawiła go w znakomity nastrój. Mam nadzieję, że postąpiłem słusznie.~ */ GOTO 4
  IF ~~ THEN REPLY #60385 /* ~"Jasne. Żegnaj."~ */ JOURNAL #60386 /* ~Powiadomiłem kapitana gwardzistów z Klątwy, że zarówno Sjaba, jak i An'izjusz próbują obciążyć jedno drugie fałszywymi oskarżeniami o dokonanie przestępstw. Wiadomość ta wprawiła go w znakomity nastrój. Mam nadzieję, że postąpiłem słusznie.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 15.2
  SAY #60390 /* ~"Ten bękart githyanki w końcu się pomylił, co? Będzie wspaniałym uzupełnieniem naszych więźniów. Wyślę po niego oddział specjalny. Masz moją wdzięczność, przybyszu."~ */
  IF ~~ THEN REPLY #60391 /* ~"To nic specjalnego. Mam więcej pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #60392 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #60394 /* ~Z wściekłością patrzy na ciebie. "Nie zapomnę tego. Albo dasz mi te informacje, albo je z ciebie wycisnę."~ */
  IF ~~ THEN REPLY #60395 /* ~"Sjaba chce zamordować An'izjusza."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~Powiadomiłem kapitana strażników z Klątwy, że Sjaba próbuje uśmiercić An'izjusza. Wiadomość ta zrobiła na nim duże wrażenie i obiecał, że natychmiast ją aresztuje. Mam nadzieję, że dobrze rozegrałem całą sprawę...~ */ GOTO 12
  IF ~~ THEN REPLY #60396 /* ~"An'izjusz poprosił mnie, bym wrobił Sjabę, która chce, bym wrobił An'izjusza. Obydwoje są skorumpowani."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60397 /* ~"An'izjusz próbuje zamordować Sjabę."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~Powiadomiłem kapitana strażników z Klątwy, że An'izjusz próbuje uśmiercić Siabhę. Wiadomość ta zrobiła na nim duże wrażenie i obiecał, że natychmiast aresztuje tego githyanki. Mam nadzieję, że dobrze rozegrałem całą sprawę.~ */ GOTO 14
  IF ~~ THEN REPLY #60398 /* ~"Będziesz to musiał ze mnie wydobyć."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
