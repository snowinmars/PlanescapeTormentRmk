// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARISSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARISSA~

IF ~  Global("Marissa","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2957 /* ~Zerkając na postać za zasłoną, z trudem dostrzegasz w ciemności zgrabną postać kobiety. Odwraca się do ciebie, ale nie widzisz jej twarzy.~ */
  IF ~~ THEN REPLY #2959 /* ~"Witaj..."~ */ DO ~SetGlobal("Marissa","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2958 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40451 /* ~Postać odpowiada niskim i zabójczym głosem, podobnym do odgłosu stalowego sztyletu ciągniętego po kamieniu: "Tak? Jesteś tu, by rozmawiać z Marissą, czyż nie? Dość niegrzecznie z twojej strony, że wchodzisz do ciemnego pokoju, hałasując mi tu za zasłoną, tak... niegrzecznie i ryzykancko." Słyszysz słaby szept, podobny do odgłosu lekkiej bryzy... albo syczenia węży.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 428
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40452 /* ~"Wybacz... nie byłem pewien, czy tu ktoś jest."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40453 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40454 /* ~"Zatem, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #40455 /* ~Kobieta *chrząka* lekko. "Ale zdaje się, że ktoś *jest* w tym pokoju, czyż nie? Wyjdziesz, tedy?"~ */
  IF ~~ THEN REPLY #40456 /* ~"Jeszcze nie teraz... Mam kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #40457 /* ~"Tak... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #40458 /* ~"*Czyżby*?" Słychać ciche syczenie; kiedy kobieta znowu się odzywa, jej głos trąci sarkazmem. "Ooo, nie mogę się doczekać..."~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.1 6.1 7.1 8.0 9.1 10.2 11.1 12.2 13.1 14.1 15.2 16.2 17.2 18.1 20.3 21.1 24.3 26.6 27.1 28.2 29.0 31.1 32.0 35.6 37.2 38.1 39.1 40.0 41.0 42.0 43.0 44.0 45.0 46.2 47.0 48.0 50.0 51.1 52.0 53.1 54.0 55.2 57.0 58.0
  SAY #40459 /* ~"Pytaj."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40460 /* ~"Znalazłem twój karmazynowy welon..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40461 /* ~"Znalazłem twój karmazynowy welon..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40462 /* ~"Dlaczego nie wyjdziesz zza tej zasłony?"~ */ GOTO 12
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40463 /* ~"Dlaczego nie wyjdziesz zza tej zasłony?"~ */ GOTO 50
  IF ~  GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40464 /* ~"Dlaczego tu jest tak ciemno?"~ */ GOTO 9
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40465 /* ~"Dlaczego tu jest tak ciemno?"~ */ GOTO 50
  IF ~~ THEN REPLY #40466 /* ~"Co tutaj robisz?"~ */ GOTO 10
  IF ~~ THEN REPLY #40467 /* ~"Czy możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 38
  IF ~  Global("Veil_Quest","AR0605",0)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40469 /* ~"Czy mogłabyś, na przykład, zamienić Lim-Lima w rzeźbę?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40470 /* ~"Czy mogłabyś, na przykład, zamienić Lim-Lima w rzeźbę?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
Global("Know_Marissa_Medusa","AR0605",1)
~ THEN REPLY #40471 /* ~"Czy mogłabyś, na przykład, zamienić Lim-Lima w rzeźbę?"~ */ GOTO 55
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40472 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 52
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67846 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ JOURNAL #66744 /* ~Kiedy zagadnąłem jedną z kurtyzan o Ecco, milczącą kurtyzanę, wówczas poradziła mi, abym wypytał na ten temat Dolorę. Powiedziała mi, że Dolora zna dawnego kochanka Ecco, z czasów, kiedy jeszcze Ecco posiadała dar mowy.~ */ GOTO 52
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40473 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ JOURNAL #66743 /* ~Spytałem się jednej z kurtyzan, czy to prawda, że Kesai-Serris jest córką Raveli. Kobieta ta poradziła mi, abym zapytał o to Julię. Zdaje się, że zanim Julia poznała Monteka, była dobrą przyjaciółką Kesai-Serris.~ */ GOTO 41
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #40474 /* ~"Mówiono mi, że widziano cię ostatnio, jak wymykasz się z komnat Vivian... czy to ma jakiś związek z jej zaginionym zapachem?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~Zapytałem Marissę o to, jak została zauważona gdy wymykała się z komnaty Vivian. Nie chciała mi nic powiedzieć.~ */ GOTO 51
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Hint","AR0605",1)
Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40475 /* ~"Mówiono mi, że widziano cię ostatnio, jak wymykasz się z komnat Vivian... czy to ma jakiś związek z jej zaginionym zapachem?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",2)
~ JOURNAL #39523 /* ~Zapytałem Marissę o to, jak została zauważona gdy wymykała się z komnaty Vivian. Nie chciała mi nic powiedzieć.~ */ GOTO 45
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40476 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ GOTO 44
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40477 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ JOURNAL #66742 /* ~Kiedy zapytałem się o Ravelę jednej z kurtyzan z Przybytku, dziewczyna poradziła mi, abym porozmawiał na temat Raveli z Yves. Powiedziano mi, że Yves zwykła kolekcjonować wszystkie plotki i opowiastki i na pewno znajdzie w swoim repertuarze coś na temat Raveli.~ */ GOTO 43
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40478 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 42
  IF ~~ THEN REPLY #40479 /* ~"W zasadzie to mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 10.0 11.0
  SAY #40468 /* ~Słyszysz ciche syczenie. "Ponieważ zginęło coś, co do mnie należało, a na jego miejsce, u mych drzwi, pojawiło się coś czego nie potrzebuję."~ */
  IF ~~ THEN REPLY #40480 /* ~"Co ci zginęło?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, jedna z kurtyzan w Przybytku Zaspokajania Żądz Intelektualnych, zgubiła swój karmazynowy welon. Nie prosiła mnie bym go poszukał, ale może popytam i sprawdzę, czy gdzieś się nie znajdzie.~ */ GOTO 6
  IF ~~ THEN REPLY #40481 /* ~"Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40482 /* ~"Zatem, odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 51.0
  SAY #40483 /* ~"Mój welon... mój karmazynowy welon. Czy nie widziałeś go przypadkiem?"~ */
  IF ~~ THEN REPLY #40484 /* ~"Nie... czemu on służy? Czy nie jest to zwykły welon?"~ */ GOTO 7
  IF ~~ THEN REPLY #40485 /* ~"Nie. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #40486 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 27.0 53.0
  SAY #40487 /* ~Marissa cicho wzdycha. "Nie, nie zupełnie. Pomaga mi się porozumiewać... w kontaktach twarzą w twarz, w rzeczy samej."~ */
  IF ~~ THEN REPLY #40488 /* ~"Dlaczego musisz zakrywać swoją twarz?"~ */ GOTO 8
  IF ~~ THEN REPLY #40489 /* ~"Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40490 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40491 /* ~"Dość już tych idiotycznych pytań! Jakież to dokuczliwe i irytujące! Czego więc *chcesz*?"~ */
  IF ~~ THEN REPLY #40492 /* ~"Tylko odpowiedzi na kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #40493 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 12.0
  SAY #40494 /* ~"Zapobiec niepotrzebnym... i kłopotliwym... ofiarom. Czego zatem chcesz?"~ */
  IF ~~ THEN REPLY #40495 /* ~"Chcę, byś podeszła do światła."~ */ GOTO 13
  IF ~~ THEN REPLY #40496 /* ~"Tylko odpowiedzi na kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #40497 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.6
  SAY #40498 /* ~"Siedzę tu sama z moimi myślami. Słucham, by wysłuchać twoich. Cisza dosłownie i przenośnie - ogłuszającą jest."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40499 /* ~"Dlaczego masz tak okropne usposobienie?"~ */ GOTO 5
  IF ~~ THEN REPLY #40500 /* ~"Chciałbym usłyszeć twoje myśli..."~ */ GOTO 11
  IF ~~ THEN REPLY #40501 /* ~"Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40502 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40503 /* ~"Och, myślę, że nie. W tej chwili mogłyby okazać się niepochlebnymi. Czego *chcesz*?"~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40504 /* ~"Dlaczego masz tak okropne usposobienie?"~ */ GOTO 5
  IF ~~ THEN REPLY #40505 /* ~"Tylko odpowiedzi na kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #40506 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.2
  SAY #40507 /* ~"Życzeniem twym jest, bym wyszła zza tej zasłony, do tej odrobiny światła i mówiła z tobą twarzą w twarz?" Marissa śmieje się. "Nie, myślę, że nie. Mrok mi odpowiada i niewątpliwie odpowiada też tobie."~ */
  IF ~~ THEN REPLY #40508 /* ~"Dlaczego tu jest tak ciemno?"~ */ GOTO 9
  IF ~~ THEN REPLY #40509 /* ~"Proszę, podejdź do światła..."~ */ GOTO 13
  IF ~~ THEN REPLY #40510 /* ~"Mam więc kolejne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40511 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 12.1
  SAY #40512 /* ~"Nie, i twoje dodawanie słowa 'proszę' na nic się tu nie zda, by mnie przekonać. Czego więc *chcesz*? Z pewnością, nie po to, ktoś przebywa taką drogę, żeby mnie *zobaczyć*."~ */
  IF ~~ THEN REPLY #40513 /* ~"Tak *chcę* widzieć jak wyglądasz..."~ */ GOTO 14
  IF ~~ THEN REPLY #40514 /* ~"Mam zatem kolejne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40515 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40516 /* ~"Nie ma takiej potrzeby."~ */
  IF ~~ THEN REPLY #40517 /* ~"Och, tak."~ */ GOTO 15
  IF ~~ THEN REPLY #40518 /* ~"Mam zatem kolejne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40519 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40520 /* ~"Jak *ty* wyglądasz? Mrok zakrywa i mnie i ciebie. Zabawmy się w zgadywanie. Jestem okropnie znudzona. Niech zgadnę... jesteś człowiekiem płci męskiej?"~ */
  IF ~~ THEN REPLY #40521 /* ~"Tak."~ */ GOTO 16
  IF ~~ THEN REPLY #40522 /* ~"Tak mi się wydaje..."~ */ GOTO 17
  IF ~~ THEN REPLY #40523 /* ~"Żadnych zabaw. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40524 /* ~"Nie mam ochoty teraz na zabawy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #40525 /* ~"Masz... zranione gardło?"~ */
  IF ~~ THEN REPLY #40526 /* ~"Tak."~ */ GOTO 20
  IF ~~ THEN REPLY #40527 /* ~"Nie widzę, ale wierzę, że tak, tak."~ */ GOTO 20
  IF ~~ THEN REPLY #40528 /* ~"Żadnych zabaw. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40529 /* ~"Nie mam ochoty teraz na zabawy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #40530 /* ~"'Tak ci się wydaje'? Jak można tego nie wiedzieć?"~ */
  IF ~~ THEN REPLY #40531 /* ~"To trochę skomplikowane."~ */ GOTO 18
  IF ~~ THEN REPLY #40532 /* ~"Nie wiem, kim naprawdę jestem."~ */ GOTO 19
  IF ~~ THEN REPLY #40533 /* ~"Zapomnij o tym. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40534 /* ~"Mniejsza z tym. Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #40535 /* ~"Doprawdy? Zbyt wspaniałe, aby tak prosty umysł jak mój, mógł to ogarnąć."~ */
  IF ~~ THEN REPLY #40536 /* ~"Nie wiem, kim naprawdę jestem."~ */ GOTO 19
  IF ~~ THEN REPLY #40537 /* ~"Zapomnij o tym. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40538 /* ~"Mniejsza z tym. Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #40539 /* ~"Naprawdę? To prawie... interesujące..." Z ciemności słychać syczenie.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 19.0
  SAY #40540 /* ~"Hmm... opisz mi siebie."~ */
  IF ~~ THEN REPLY #40541 /* ~Prawda: "Jestem wysoki, dobrze zbudowany, i strasznie pokryty bliznami."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marissa_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #40542 /* ~Kłamstwo: "Jestem wysoki, atletycznej budowy... bardzo przystojny..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marissa_1","GLOBALLaw",-1)
~ GOTO 22
  IF ~~ THEN REPLY #40543 /* ~"Ty pierwsza, Marisso."~ */ GOTO 24
  IF ~~ THEN REPLY #40544 /* ~"Nie, dziękuję. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40545 /* ~"Nie jestem w nastroju. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 37.1
  SAY #40546 /* ~"Doprawdy? Hmmm..." Przerywa na chwilę. "Jak to się stało, że masz tyle blizn? Czekaj... mniejsza z tym. Nie chcę wiedzieć."~ */
  IF ~~ THEN REPLY #40547 /* ~"Teraz opisz mi siebie."~ */ GOTO 36
  IF ~~ THEN REPLY #40548 /* ~"Bardzo dobrze. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40549 /* ~"Świetnie. Żegnaj. Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #40550 /* ~"Och, naprawdę? Podejdź bliżej - *bardzo* blisko, żebyśmy mogli się widzieć..." Słychać jak dobiega z niej syczenie...~ */
  IF ~~ THEN REPLY #40551 /* ~Przybliż się do niej.~ */ GOTO 23
  IF ~~ THEN REPLY #40552 /* ~Zaczekaj.~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 22.0 37.0
  SAY #40553 /* ~Występujesz do przodu, tak że twoja twarz niemal dotyka twarzy Marissy, mrużysz oczy, żeby dostrzec jej twarz. Jej rysy są piękne, jej skóra blada i nieskalana, włosy jej jednak, są masą wijących się i syczących żmij. Oczy Marissy - o odcieniu lśniącego błękitu - wydają ci się trochę dziwne, aż zdajesz sobie sprawę, że w rzeczywistości są to tatuaże na jej zamkniętych powiekach. "Chcesz się zdziwić?" zapytała, uśmiechając się chytrze...~ */
  IF ~~ THEN REPLY #40554 /* ~Odwróć się.~ */ GOTO 48
  IF ~~ THEN REPLY #40555 /* ~"Pewnie, zadziw mnie."~ */ GOTO 49
END

IF ~~ THEN BEGIN 24 // from: 20.2
  SAY #40556 /* ~"Wymienimy przymiotnik na przymiotnik? Zatem, ja zacznę od 'zgrabna'. Musisz podać następny przymiotnik."~ */
  IF ~~ THEN REPLY #40557 /* ~"Wysoki."~ */ GOTO 25
  IF ~~ THEN REPLY #40558 /* ~"Dobrze zbudowany."~ */ GOTO 25
  IF ~~ THEN REPLY #40559 /* ~"Pokryty bliznami."~ */ GOTO 25
  IF ~~ THEN REPLY #40560 /* ~"Nie... żadnych zabaw. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40561 /* ~"Nie ma teraz ochoty na zabawy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #40562 /* ~"Mmmm-hmm. Powiem... blada."

W ten sposób wymieniacie wzajemnie przymiotniki dotąd, aż Marissa w końcu opisała się jako zgrabną, piękną kobietę, o bladej skórze, rozwidlonym języku, włosach utworzonych z wijących się żmij, i żarzących się oczach... które jak ci się zdaje, musi trzymać zamknięte.~ */
  IF ~~ THEN REPLY #40563 /* ~"Jesteś biesem?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa, jedna z kurtyzan w Przybytku, znajdującym się w Dzielnicy Urzędniczej, utrzymuje, że jest w stanie zamieniać żywe istoty w kamień samą siłą spojrzenia.~ */ GOTO 26
  IF ~~ THEN REPLY #40564 /* ~"Wygląda na to, że... wyglądasz bardzo egzotycznie, Marisso."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa, jedna z kurtyzan w Przybytku, znajdującym się w Dzielnicy Urzędniczej, utrzymuje, że jest w stanie zamieniać żywe istoty w kamień samą siłą spojrzenia.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0 36.0
  SAY #40565 /* ~Marissa śmieje się lekko, sycząc przy tym cicho. "Nie, bynajmniej... Jednak posiadam moce, które niektórzy mogli by *nazwać* biesimi. Na przykład, potrafię spojrzeniem zamienić rzeczy żywe w kamień. Żywe istoty, w mgnieniu oka, zamieniam w rzeźby..."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40566 /* ~"Żywe istoty w kamień? Czy mogłabyś zamienić, na przykład, Lim-Lima w rzeźbę?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, jedna z kurtyzan w Przybytku Zaspokajania Żądz Intelektualnych, zgubiła swój karmazynowy welon. Nie prosiła mnie bym go poszukał, ale może popytam i sprawdzę, czy gdzieś się nie znajdzie.~ */ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40567 /* ~"Żywe istoty w kamień? Czy mogłabyś zamienić, na przykład, Lim-Lima w rzeźbę?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40568 /* ~"Żywe istoty w kamień? Czy mogłabyś zamienić, na przykład, Lim-Lima w rzeźbę?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40569 /* ~"To musi być czasem uciążliwe."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, jedna z kurtyzan w Przybytku Zaspokajania Żądz Intelektualnych, zgubiła swój karmazynowy welon. Nie prosiła mnie bym go poszukał, ale może popytam i sprawdzę, czy gdzieś się nie znajdzie.~ */ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40570 /* ~"To musi być czasem uciążliwe."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40571 /* ~"To musi być czasem uciążliwe."~ */ GOTO 29
  IF ~~ THEN REPLY #40572 /* ~"Ciekawe. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40573 /* ~"Rozumiem. Pójdę już. Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.3 35.3
  SAY #40574 /* ~"Tak sądzisz? To pewnie dlatego siedzę tu sama, w mroku, chowając się za zasłoną." Mimo, że nie widzisz Marissy, nie masz wątpliwości, że szydzi z ciebie. Nagle wzdycha. "Gdybym tylko wiedziała, gdzie podział się mój karmazynowy welon. Nie widziałeś go gdzieś przypadkiem?"~ */
  IF ~~ THEN REPLY #40575 /* ~"Nie... czemu on służy? Czy nie jest to zwykły welon?"~ */ GOTO 7
  IF ~~ THEN REPLY #40576 /* ~"Nie. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #40577 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 35.4
  SAY #40578 /* ~"Tak sądzisz? To pewnie dlatego siedzę tu sama, w mroku, chowając się za zasłoną." Mimo, że nie widzisz Marissy, nie masz wątpliwości, że szydzi z ciebie. Nagle wzdycha. "Gdybym tylko wiedziała, gdzie podział się mój karmazynowy welon."~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40579 /* ~"Mam twój welon, Marisso..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40580 /* ~"Mam twój welon, Marisso..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40581 /* ~"Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40582 /* ~"Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.5 35.5
  SAY #40583 /* ~"W moim karmazynowym welonie mogę podróżować prawie bez ryzyka, że coś takiego się zdarzy, nie jest to więc takie straszne."~ */
  IF ~~ THEN REPLY #40584 /* ~"Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40585 /* ~"Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 4.0 4.1 28.0 28.1 46.0 46.1
  SAY #40586 /* ~"Mogę cię zatem prosić, byś mi go dał?"~ */
  IF ~~ THEN REPLY #40587 /* ~"Oczywiście. Proszę..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~Zwróciłem Marissie jej karmazynowy welon, pomimo tego jak mi się przysłużył.~ */ GOTO 31
  IF ~~ THEN REPLY #40588 /* ~"Najpierw będę chciał coś w zamian..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marissa_1","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0 33.0 34.0
  SAY #40589 /* ~Trzymasz przed sobą karmazynowy welon i czujesz, jak zabiera ci go z rąk. "Ach. Tak, o wiele lepiej." Dwa świecące punkty czerwonego światła pojawiają się przed tobą, kiedy Marissa otwiera oczy. "Więc, to tak wyglądasz... zapewne czułabym się lepiej, gdybym miała zamknięte oczy."~ */
  IF ~~ THEN REPLY #40590 /* ~"Uważaj na ten swój rozwidlony język, Marisso."~ */ GOTO 32
  IF ~~ THEN REPLY #40591 /* ~"Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40592 /* ~"Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #40593 /* ~"Nawet mnie nie denerwuj."~ */
  IF ~~ THEN REPLY #40594 /* ~"Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40595 /* ~"Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1
  SAY #40596 /* ~"Oczywiście... jakże *wyrachowanie* z twojej strony. Tu... wyciągnij rękę, chwyć mnie za nadgarstek... natrafisz tam na złotą bransoletkę. Weź ją, jest twoja. Bardziej ci się przyda niż mój Welon, zapewniam cię."~ */
  IF ~~ THEN REPLY #40597 /* ~"W zasadzie... mniejsza z tym. Proszę, weź sobie swój Welon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marissa_1","GLOBALGood",1)
~ JOURNAL #39521 /* ~Zwróciłem Marissie jej karmazynowy welon, pomimo tego jak mi się przysłużył.~ */ GOTO 31
  IF ~~ THEN REPLY #40598 /* ~Weź bransoletkę.~ */ DO ~GiveItemCreate("GolBra",Protagonist,1,0,0)
~ JOURNAL #39520 /* ~Zwróciłem Marissie jej karmazynowy welon, ale najpierw poprosiłem o odpowiednią za to zapłatę.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #40599 /* ~Zdejmujesz bransoletkę z delikatnego nadgarstka Marissy...~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 35 // from: 25.1 36.1
  SAY #40600 /* ~Marissa śmieje się lekko, sycząc przy tym cicho. "Och, tak, tak. A moje najzwyklejsze spojrzenie obraca wszystko co żywe w kamień... w mgnieniu oka zamieniam ciało w rzeźbę."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40601 /* ~"Żywe rzeczy w kamień? Mogłabyś, na przykład, zamienić Lim-Lima w rzeźbę?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40602 /* ~"Żywe rzeczy w kamień? Mogłabyś, na przykład, zamienić Lim-Lima w rzeźbę?"~ */ GOTO 54
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40603 /* ~"Żywe rzeczy w kamień? Mogłabyś, na przykład, zamienić Lim-Lima w rzeźbę?"~ */ GOTO 55
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40604 /* ~"To musi być czasem uciążliwe."~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ GOTO 27
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40605 /* ~"To musi być czasem uciążliwe."~ */ GOTO 28
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #40606 /* ~"To musi być czasem uciążliwe."~ */ GOTO 29
  IF ~~ THEN REPLY #40607 /* ~"Interesujące. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40608 /* ~"Rozumiem. Pójdę już. Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 21.0
  SAY #40609 /* ~Marissa opisuje się jako zgrabną, piękną kobietę, o bladej skórze, rozwidlonym języku, włosach utworzonych z wijących się żmij, i żarzących się oczach... które jak ci się zdaje musi trzymać zamknięte.~ */
  IF ~~ THEN REPLY #40610 /* ~"Jesteś biesem?"~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa, jedna z kurtyzan w Przybytku, znajdującym się w Dzielnicy Urzędniczej, utrzymuje, że jest w stanie zamieniać żywe istoty w kamień samą siłą spojrzenia.~ */ GOTO 26
  IF ~~ THEN REPLY #40611 /* ~"Wygląda na to, że... wyglądasz bardzo egzotycznie, Marisso."~ */ DO ~SetGlobal("Know_Marissa_Medusa","AR0605",1)
~ JOURNAL #66746 /* ~Marissa, jedna z kurtyzan w Przybytku, znajdującym się w Dzielnicy Urzędniczej, utrzymuje, że jest w stanie zamieniać żywe istoty w kamień samą siłą spojrzenia.~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #40612 /* ~"Wątpisz w moją ocenę ciebie? Czy możliwe, że nie jesteś tym, na kogo wyglądasz?"~ */
  IF ~~ THEN REPLY #40613 /* ~Przybliż się do niej.~ */ GOTO 23
  IF ~~ THEN REPLY #40614 /* ~"Bardzo dobrze... jestem wysoki, dobrze zbudowany, i strasznie pokryty bliznami."~ */ GOTO 21
  IF ~~ THEN REPLY #40615 /* ~"Zapomnij o tym. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40616 /* ~"Mniejsza o to, teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.7
  SAY #40617 /* ~"Nie, nie jestem w nastroju. Jestem pewna, że któraś z dziewcząt tutaj, chętnie opowiedziałaby ci wszystko o małej szkółce Pani Sławy dla przyszłych Czuciowców... idź poszukać jedną z nich."~ */
  IF ~~ THEN REPLY #40618 /* ~"Czuciowców?"~ */ GOTO 39
  IF ~~ THEN REPLY #40619 /* ~"Nie teraz - mam kolejne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40620 /* ~"Może. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40621 /* ~"Tak, tak... niepoważna mała grupa oddana doświadczaniu i takim tam rzeczom. Na pewno nie muszę być Czuciowcem, żeby *być* Czuciowcem... raz dostałam się do Miejskiego Gmachu Rozrywki i zmęczyły mnie te ich sensoria, po prostu przejdę dalej."~ */
  IF ~~ THEN REPLY #40622 /* ~"Opowiedz mi o sensoriach."~ */ GOTO 40
  IF ~~ THEN REPLY #40623 /* ~"Mam kolejne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40624 /* ~"To wszystko co pragnąłem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40625 /* ~"Są miejscami, gdzie doznania przechowywane są w obiektach zwanych kamieniami doznań. Jest ich dwa: publiczne sensorium w Miejskim Gmachu Rozrywki, otwarte dla wszystkich, oraz sensorium Czuciowców otwarte jedynie dla członków Stronnictwa Doznań - Czuciowców."~ */
  IF ~~ THEN REPLY #40626 /* ~"Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40627 /* ~"To wszystko, co pragnąłem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.13
  SAY #40628 /* ~"Nie wiem... ale ja, z jednej strony, nie byłabym zaskoczona. Na Herę, *spójrz* na tę dziewczynę! Zapytaj jednak Julii - były kiedyś przyjaciółkami... zanim pojawił się Montek."~ */
  IF ~~ THEN REPLY #40629 /* ~"Mam kolejne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40630 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.18
  SAY #40631 /* ~"Spędzam wiele czasu w moich komnatach, ale myślę, że nawet *ja* bym wiedziała, gdyby pojawiła się ta dziesiąta. Teraz, nie ma żadnej."~ */
  IF ~~ THEN REPLY #40632 /* ~"Mam kolejne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40633 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 4.17
  SAY #40634 /* ~"Nie. A ty?" Słyszysz z ciemności zirytowane westchnienie. "Idź zapytaj Yves. Ona zna wiele historii i pewnie będzie mogła powiedzieć coś, co ci się przyda."~ */
  IF ~~ THEN REPLY #40635 /* ~"Mniejsza z tym. Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40636 /* ~"Zapomnij, że pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 4.16
  SAY #40637 /* ~"Nie, nie mam pojęcia."~ */
  IF ~~ THEN REPLY #40638 /* ~"Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40639 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 4.15
  SAY #40640 /* ~Marissa nie mówi nic, chociaż z ciemności dobiega rozgniewane syczenie. "Tak, mówi się, że wkradłam się do komnaty Vivian po jedne z jej perfum... wątpię jednak, czy znajdziesz tu kogoś, kto by tego nie zrobił. Jeśli sugerujesz, że mam jej *osobisty* zapach, cóż... nie krępuj się, obwąchaj tu sobie co chcesz. Nie znajdziesz go jednak, ani na mnie ani w żadnej z moich komnat, zapewniam cię."~ */
  IF ~~ THEN REPLY #40641 /* ~"Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40642 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",1)
~ THEN BEGIN 46 // from:
  SAY #40643 /* ~Chłodny, okrutny głos Marissy posykuje z ciemności. "Znowu tutaj! Wierzę, że tym razem, masz powód, żeby tu przychodzić? Czy też masz tylko więcej swoich bezcelowych pytań?"~ */
  IF ~  PartyHasItem("CVeil")
~ THEN REPLY #40644 /* ~"Faktycznie, przyniosłem twój karmazynowy welon..."~ */ DO ~DestroyPartyItem("CVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #40645 /* ~"Faktycznie, przyniosłem twój karmazynowy welon..."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
SetGlobal("Marissa","GLOBAL",2)
SetGlobal("Veil_Quest","AR0605",2)
SetGlobal("Veil_Quest_QJ","GLOBAL",2)
AddexperienceParty(25000)
~ GOTO 30
  IF ~~ THEN REPLY #40646 /* ~"Jeszcze parę bezcelowych pytań, Marisso."~ */ GOTO 4
  IF ~~ THEN REPLY #40647 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~  Global("Marissa","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #40648 /* ~Czerwone oczy Marissy żarzą się z ciemności. "Tak?" Słabe syczenie dobiega razem z pytaniem.~ */
  IF ~~ THEN REPLY #40649 /* ~"Mam kilka pytań, Marisso..."~ */ GOTO 4
  IF ~~ THEN REPLY #40650 /* ~"Nic, tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 23.0
  SAY #40651 /* ~Odwracasz oczy właśnie wtedy, gdy Marisa otwiera swoje; zdajesz sobie sprawę z zimnego, czerwonego światła, które rzucają w twoim kierunku. "Och..." Wzdycha, zawiedziona. "Dlaczego się odwracasz? *Wcale* nie wyglądasz zgodnie z podanym przez ciebie opisem... jaka szkoda. Dalej, stań do mnie twarzą; Znowu zamknęłam oczy."~ */
  IF ~~ THEN REPLY #40652 /* ~"Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40653 /* ~"W porządku... pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.1
  SAY #40654 /* ~Oczy Marissy otwierają się nagle jak na sprężynach, pławiąc się w swoim zimnym, czerwonym świetle... to ostatnia rzecz jaką twe oczy chłoną, jako że zarówno one - jak i cała reszta twojego ciała - na zawsze zamieniają się w kamień.~ */
  IF ~~ THEN REPLY #40655 /* ~"Aaach..."~ */ DO ~UseItem("M_Gaze",Protagonist)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 4.3 4.5
  SAY #40656 /* ~Marissa milczy przez chwilę, odpowiadając po chwili. "Początkowo powodem było utracenie przeze mnie mojego karmazynowego welonu... ale teraz... nie wiem. Może przyzwyczaiłam się do traktowania moich stałych klientów w ten sposób, i zaczęło mi to sprawiać przyjemność. Z czasem, myślę, zmęczy mnie to i zapuszczę się raz jeszcze do Sigil, ale na razie... dobrze mi tutaj."~ */
  IF ~~ THEN REPLY #40657 /* ~"Mam kolejne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40658 /* ~"To wszystko co pragnąłem wiedzieć. Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 4.14
  SAY #40659 /* ~Marissa nie mówi nic, chociaż z ciemności dobiega rozgniewane syczenie. "Tak, mówi się, że wkradłam się do komnaty Vivian po jedne z jej perfum... wątpię jednak, czy znajdziesz tu kogoś, kto by tego nie zrobił. Jeśli sugerujesz, że mam jej *osobisty* zapach, cóż... nie krępuj się, obwąchaj tu sobie co chcesz. Nie znajdziesz go jednak, ani na mnie ani w żadnej z moich komnat, zapewniam cię. Możliwe, że zarówno zapach Vivian jak i mój karmazynowy welon zabrała ta sama osoba."~ */
  IF ~  Global("Veil_Quest","AR0605",0)
~ THEN REPLY #40660 /* ~"Skradziono ci twój welon?"~ */ DO ~SetGlobal("Veil_Quest","AR0605",1)
SetGlobal("Veil_Quest_QJ","GLOBAL",1)
~ JOURNAL #39522 /* ~Marissa, jedna z kurtyzan w Przybytku Zaspokajania Żądz Intelektualnych, zgubiła swój karmazynowy welon. Nie prosiła mnie bym go poszukał, ale może popytam i sprawdzę, czy gdzieś się nie znajdzie.~ */ GOTO 6
  IF ~~ THEN REPLY #40661 /* ~"Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40662 /* ~"To wszystko co pragnąłem wiedzieć. Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 4.11 4.12
  SAY #40663 /* ~"Tak... 'Ecco'. Znałam kiedyś jedną Ecco, chociaż jej imię pisało się inaczej. Nie wiem jednak nic o tej dziewczynie. Zapytaj o nią Dolorę. Słyszałam, że zaprzyjaźniła się z byłym kochankiem Ecco."~ */
  IF ~~ THEN REPLY #40664 /* ~"Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40665 /* ~"To wszystko co pragnąłem wiedzieć. Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 4.8 26.0 35.0
  SAY #40666 /* ~"Wydaje mi się, że mogłabym... gdybyś miał Lim-Lima, byłabym skłonna to zrobić. I *mogłabym* również to zrobić, gdybym miała mój karmazynowy welon... ale nie wiem, gdzie się podział. Nie wiesz przypadkiem, gdzie może być?~ */
  IF ~~ THEN REPLY #40667 /* ~"Nie... czemu on służy? Czy nie jest to zwykły welon?"~ */ GOTO 7
  IF ~~ THEN REPLY #40668 /* ~"Nie. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #40669 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.9 26.1 35.1
  SAY #40670 /* ~"Wydaje mi się, że tak... gdybyś miał Lim-Lima, byłabym skłonna to zrobić. I *mogłabym* również to zrobić, gdybym miała mój karmazynowy welon."~ */
  IF ~~ THEN REPLY #40671 /* ~"Mam inne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40672 /* ~"To wszystko co pragnąłem wiedzieć. Żegnaj, Marisso."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 4.10 26.2 35.2
  SAY #40673 /* ~"Wydaje mi się, że tak... czemu pytasz? Czyżbyś miał Lim-Lima?"~ */
  IF ~  PartyHasItem("LimLim")
~ THEN REPLY #40674 /* ~"Tak, zgadza się."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
GiveItemCreate("S_LimLim",Protagonist,1,0,0)
~ GOTO 56
  IF ~  !PartyHasItem("LimLim")
~ THEN REPLY #40675 /* ~"Nie, teraz nie."~ */ GOTO 58
  IF ~~ THEN REPLY #40676 /* ~"W zasadzie, mniejsza z tym. Mam pytanie."~ */ GOTO 4
  IF ~~ THEN REPLY #40677 /* ~"Zapomnij, że pytałem, Marisso... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #40678 /* ~"Dawaj go zatem tutaj..." Marrisa zabiera od ciebie to rozradowane małe stworzenie... popiskujące radośnie - 'Pijo! Pijo!' - nieświadome swego zbliżającego się losu.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #40679 /* ~Z niesamowitym błyskiem mdłego czerwonego światła, radosne popiskiwanie Lim-Lima nagle ustaje. Marissa oddaje w twoje ręce Lim-Lima, który jest teraz zimnym i ciężkim kamieniem.~ */
  IF ~~ THEN REPLY #40680 /* ~"Dziękuję, Marisso. Mam pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40681 /* ~"Dziękuje, Marisso. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #40682 /* ~"W takim razie to nieistotne." Wzdycha głośno. "Nie jestem pewna, po co w ogóle zawracałeś mi tym głowę."~ */
  IF ~~ THEN REPLY #40683 /* ~"Mam kolejne pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #40684 /* ~"To wszystko co pragnąłem wiedzieć. Żegnaj, Marisso."~ */ EXIT
END
