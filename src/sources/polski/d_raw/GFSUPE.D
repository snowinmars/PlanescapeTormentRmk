// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFSUPE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~GFSUPE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5336 /* ~"Straże! Straże! Zatrzymać tego człowieka! ZATRZYMAĆ GO!"~ */
  IF ~~ THEN REPLY #5337 /* ~Zrobione.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5338 /* ~"Odejdź stąd, trepie. Przyjdź innym razem, to może pogadamy."~ */
  IF ~~ THEN REPLY #5339 /* ~"Mam tylko kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #5502 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #5340 /* ~"Powiedziałem już... ODEJDŹ STĄD. Przyjdź później, kiedy już nauczysz się postępować zgodnie ze wskazówkami."~ */
  IF ~~ THEN REPLY #5341 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 20 9 even though they appear after this state */
~  Global("GearRepair","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #5342 /* ~Kobieta uśmiecha się do ciebie sarkastycznie: "Straszne dzięki za to, że zgodziłeś się naprawić nasze maszyny. Twoje zainteresowanie dobrem Kuźni jest naprawdę rozczulające. Trepie." Kobieta spluwa u twoich stóp i odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #5343 /* ~Zaatakuj ją.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5344 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #5345 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #5346 /* ~"Co? Tylko szybko, skurlu... Nie mam cierpliwości do takich jak ty, a dzięki tobie mam teraz dużo roboty."~ */
  IF ~~ THEN REPLY #5347 /* ~"Zastanowiłem się nad tym i doszedłem do wniosku, że jednak pomogę wam naprawić maszyny."~ */ GOTO 5
  IF ~~ THEN REPLY #5348 /* ~"Możesz mi jeszcze raz powtórzyć, gdzie jest biuro urzędnika?"~ */ GOTO 6
  IF ~~ THEN REPLY #5349 /* ~"W jaki sposób mogę wstąpić do Bogowców?"~ */ GOTO 7
  IF ~~ THEN REPLY #5350 /* ~"W jaki sposób mogę ci się odwdzięczyć?"~ */ GOTO 8
  IF ~~ THEN REPLY #5351 /* ~"Zapomnij o tym. I tak już muszę iść."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #5352 /* ~"Ach, więc kiedy czegoś potrzebujesz, to nagle chcesz pomóc? Jesteś strasznym egoistą, trepie. Nie podobasz mi się. Ani ty, ani ta twoja pomoc. Mamy już kogoś, kto pomoże nam je naprawić. Więc możesz się odszpicować." Kobieta odwraca się do ciebie plecami i odchodzi.~ */
  IF ~~ THEN REPLY #5353 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 7.0
  SAY #5354 /* ~"Zapytaj kogoś innego, trepie, albo sam się domyśl." Kobieta odwraca się do ciebie plecami i odchodzi.~ */
  IF ~~ THEN REPLY #5355 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #5356 /* ~Kobieta przez chwilę zastanawia się, co powinna zrobić: powiedzieć ci, żebyś się odszpicował, czy zdobyć nowego członka do swojej frakcji. W końcu mówi: "Wejdź w drzwi, które znajdują się w ścianie najdalej po prawej stronie Kuźni, a potem udaj się do sali zebrań. Poszukaj tam Keldora z Durian. On ci pomoże."~ */
  IF ~~ THEN REPLY #5357 /* ~"Dzięki. Mam jeszcze jedno pytanie."~ */ GOTO 6
  IF ~~ THEN REPLY #5358 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY #5359 /* ~"Czy jest jakiś sposób, żebyś mógł mi to wynagrodzić? Ha! Chyba nie, skurlu. Spadaj w labirynty." Kobieta odwraca się do ciebie plecami i odchodzi.~ */
  IF ~~ THEN REPLY #5360 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #5361 /* ~"Witaj, poszukiwaczu. W czym mogę ci pomóc? Proszę, tylko się streszczaj... musimy trzymać się planu."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5362 /* ~"Muszę wziąć coś od urzędnika. Gdzie go znajdę?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
~ THEN REPLY #5363 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5364 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
~ THEN REPLY #5366 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
~ THEN REPLY #5367 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia. Zgubiłem mój żeton."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
!HasItem("GToken",Myself)
~ THEN REPLY #5368 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia. Zgubiłem mój żeton."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5372 /* ~"Muszę skorzystać z waszej kuźni."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5373 /* ~"Muszę skorzystać z waszej kuźni."~ */ GOTO 14
  IF ~~ THEN REPLY #5374 /* ~"Gdzie mogę dostać wszystkie przedmioty, które są potrzebne, żeby skorzystać z kuźni?"~ */ GOTO 19
  IF ~~ THEN REPLY #5375 /* ~"Niczego w tej chwili nie potrzebuję. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 16.0
  SAY #5376 /* ~"Widzisz to pomieszczenie z biurkiem? Tam go znajdziesz i powinieneś dostać przedmiot, na którym ci zależy."~ */
  IF ~~ THEN REPLY #5377 /* ~"Dzięki. Mam jeszcze kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5379 /* ~"Dziękuję. To na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 16.1
  SAY #5378 /* ~Kobieta rozgląda się przez moment, żeby się upewnić, że nikt jej nie obserwuje, a potem zdejmuje z szyi złoty medalion i podaje ci go po kryjomu. "Nie mów nikomu, skąd go masz.", syczy.~ */
  IF ~~ THEN REPLY #5380 /* ~"Dzięki. Mam jeszcze kilka pytań."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5381 /* ~"Dziękuję. Żegnaj."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2 16.2 16.3 16.7 16.8
  SAY #5382 /* ~"Bardzo chciałabym ci pomóc, ale na to mogą pozwolić tylko największe szychy. Musisz porozmawiać o tym z Keldorem."~ */
  IF ~~ THEN REPLY #5383 /* ~"W porządku. Mam jeszcze kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5384 /* ~"Dzięki za nic. No to na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.6 16.10
  SAY #5385 /* ~"Oczywiście. Tylko upewnij się, że masz wszystkie potrzebne przedmioty: ochronę przed płomieniami, szczypce, młot i oczywiście rudę żelaza."~ */
  IF ~~ THEN REPLY #5386 /* ~"No tak. Mam jeszcze parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5387 /* ~"Gdzie mógłbym dostać wszystkie te przedmioty?"~ */ GOTO 19
  IF ~~ THEN REPLY #5388 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.7 16.11
  SAY #5389 /* ~"Obawiam się, że musimy pozwolić innym naszym członkom na skorzystanie z kuźni. Zajmujesz ją już zbyt długo, przyjacielu."~ */
  IF ~~ THEN REPLY #5390 /* ~"Aha. W takim razie mam parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5391 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3 16.4
  SAY #5392 /* ~"Z chęcią bym ci pomogła, ale chyba zgubiłam żeton, który umożliwia wejście do środka. Przykro mi, poszukiwaczu."~ */
  IF ~~ THEN REPLY #5393 /* ~"W porządku. Mam jeszcze parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5394 /* ~"No cóż. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0 11.0 12.0 13.0 14.0 15.0 17.0 18.0 19.0 20.0 21.1 22.3 23.5 23.6 24.0 25.2 26.2 27.2 28.0 29.0 32.0 33.1 34.0 35.0 36.0 37.0
  SAY #5395 /* ~"Jeszcze jakieś pytania? Słucham."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5396 /* ~"Muszę wziąć coś od urzędnika. Gdzie go znajdę?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5397 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5398 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("Gtoken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5399 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5400 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5401 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia. Zgubiłem mój żeton."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5402 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia. Zgubiłem mój żeton."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5403 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5404 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia. Zgubiłem mój żeton."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5405 /* ~"Muszę się dostać do tamtego strzeżonego pomieszczenia. Zgubiłem mój żeton."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5406 /* ~"Muszę skorzystać z waszej kuźni."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5407 /* ~"Muszę skorzystać z waszej kuźni."~ */ GOTO 14
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5408 /* ~"Z polecenia Keldora badam sprawę morderstwa, które tu popełniono. Co możesz mi o tym powiedzieć?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5409 /* ~"Szukam drogi do wyjścia."~ */ GOTO 31
  IF ~~ THEN REPLY #5410 /* ~"Szukam biura, w którym wydaje się przedmioty. Muszę coś stamtąd odebrać."~ */ GOTO 32
  IF ~~ THEN REPLY #5411 /* ~"Mogłabyś mnie oprowadzić?"~ */ GOTO 33
  IF ~~ THEN REPLY #5412 /* ~"Kim jesteś?"~ */ GOTO 34
  IF ~~ THEN REPLY #5413 /* ~"Co tu się dzieje?"~ */ GOTO 35
  IF ~~ THEN REPLY #5414 /* ~"Kim są Bogowcy i na czym dokładnie polegają ich przekonania?"~ */ GOTO 36
  IF ~~ THEN REPLY #5415 /* ~"Gdzie mogę dostać wszystkie przedmioty, które są potrzebne, żeby skorzystać z kuźni?"~ */ GOTO 19
  IF ~~ THEN REPLY #5416 /* ~"Niczego w tej chwili nie potrzebuję. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4 16.5
  SAY #5417 /* ~"To dobrze, że ja ciągle mam mój. Zabierz go, ale nie mów nikomu, że ci go dałam, dobrze? Powodzenia."~ */
  IF ~~ THEN REPLY #5418 /* ~"Dzięki. Mam jeszcze kilka pytań."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5419 /* ~"Dziękuję. Żegnaj."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.5 16.6 16.9
  SAY #5420 /* ~"Ja też już nie mam swojego. Przykro mi. Będziesz musiał znaleźć jakiś inny sposób, żeby się tam dostać."~ */
  IF ~~ THEN REPLY #5421 /* ~"Dzięki. Mam jeszcze kilka pytań."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #5422 /* ~"Dziękuję. Żegnaj."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 9.8 13.1 16.19 20.1
  SAY #5423 /* ~"Jeśli nie leżą gdzieś tu, w pobliżu, to będziesz musiał kupić je u urzędnika... oczywiście za cenę nominalną."~ */
  IF ~~ THEN REPLY #5424 /* ~"Rozumiem. Mam jeszcze parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5425 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("G_Test1","GLOBAL",1)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 20 // from:
  SAY #5426 /* ~"No i co? Na co czekasz? Ruszaj kuć! Nie możemy sobie pozwolić, żeby kuźnia stałą niewykorzystana, kiedy to myślisz o niebieskich migdałach."~ */
  IF ~~ THEN REPLY #5427 /* ~"Najpierw chciałem ci zadać parę pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #5428 /* ~"Możesz mi jeszcze raz powtórzyć, gdzie mogę znaleźć przedmioty, które są potrzebne do skorzystania z kuźni?"~ */ GOTO 19
  IF ~~ THEN REPLY #5429 /* ~"Dobrze, dobrze. Już idę."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("G_Test2","GLOBAL",1)
GlobalLT("G_Test2","GLOBAL",11)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 21 // from:
  SAY #5430 /* ~"Powiedziałam ci już wszystko, co wiem! Czego jeszcze ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #5431 /* ~"Powtórz jeszcze raz swoją historię... tylko wolno."~ */ GOTO 22
  IF ~~ THEN REPLY #5432 /* ~"Mam jeszcze inne pytania."~ */ GOTO 16
  IF ~~ THEN REPLY #5433 /* ~"Nie, nic. Na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.12 21.0 29.1 30.0
  SAY #5434 /* ~"Chcesz wiedzieć, co widziałam w noc zabójstwa? No cóż... Pracowałam właśnie późno w nocy, kiedy usłyszałam odgłos, jakby ktoś coś przesuwał. Kiedy wyszłam, zobaczyłam, jak z drzwi wymyka się jakaś mroczna postać i wchodzi do sali spotkań, więc wszczęłam alarm."~ */
  IF ~~ THEN REPLY #5435 /* ~"Czy pamiętasz jeszcze jakieś szczegóły?"~ */ GOTO 23
  IF ~~ THEN REPLY #5436 /* ~"To wszystko?"~ */ GOTO 23
  IF ~~ THEN REPLY #5437 /* ~"Skąd mam wiedzieć, że ty tego nie zrobiłaś?"~ */ GOTO 24
  IF ~~ THEN REPLY #5438 /* ~"Dzięki. Mam jeszcze kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5439 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #5440 /* ~"Znam tylko trzech ludzi, którzy tamtej nocy mieli dostęp do kuźni. To byli Tyldon, Saros i Bedai-Lin. Cała trójka zdecydowanie różni się budową ciała, ale wtedy, w kuźni, wszędzie było pełno pary i nie mogłam tego kogoś dobrze zobaczyć."~ */
  IF ~~ THEN REPLY #5441 /* ~"Skąd mam wiedzieć, że ty tego nie zrobiłaś?"~ */ GOTO 24
  IF ~~ THEN REPLY #5442 /* ~"Więc tylko ta trójka jest podejrzana? To nie brzmi zbyt przekonywująco."~ */ GOTO 24
  IF ~~ THEN REPLY #5443 /* ~"W porządku. Gdzie mogę znaleźć Tyldona?"~ */ GOTO 25
  IF ~~ THEN REPLY #5445 /* ~"Dobra. Gdzie mogę znaleźć Sarosa?"~ */ GOTO 26
  IF ~~ THEN REPLY #5446 /* ~"Brzmi przekonywująco. Gdzie mogę znaleźć Bedai-Lin?"~ */ GOTO 27
  IF ~~ THEN REPLY #5447 /* ~"W porządku. Mam jeszcze kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5448 /* ~"Mam jeszcze inne pytania."~ */ GOTO 16
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0 23.1
  SAY #5444 /* ~"Mam alibi, a poza tym, Keldor już mnie przesłuchiwał. Nie mam nic do ukrycia. Ale wygląda na to, że Tyldon, Saros i Bedai-Lin coś ukrywają, bo nie chcieli się poddać czarom Keldora."~ */
  IF ~~ THEN REPLY #5449 /* ~"W porządku. Mam jeszcze parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5450 /* ~"Gdzie mogę znaleźć Tyldona?"~ */ GOTO 25
  IF ~~ THEN REPLY #5451 /* ~"Gdzie mogę znaleźć Sarosa?"~ */ GOTO 26
  IF ~~ THEN REPLY #5452 /* ~"Gdzie mogę znaleźć Bedai-Lin?"~ */ GOTO 27
  IF ~~ THEN REPLY #5453 /* ~"Dziękuję. To mi powinno pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.1 26.0 27.0
  SAY #5454 /* ~"Zazwyczaj można go spotkać gdzieś pomiędzy główną kuźnią a salą eksperymentów na tyłach. Nie powinno ci to sprawić kłopotów."~ */
  IF ~~ THEN REPLY #5455 /* ~"Gdzie mogę znaleźć Sarosa?"~ */ GOTO 26
  IF ~~ THEN REPLY #5456 /* ~"Gdzie mogę znaleźć Bedai-Lin?"~ */ GOTO 27
  IF ~~ THEN REPLY #64145 /* ~"Mam jeszcze parę innych pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #64146 /* ~"Muszę się z nim zobaczyć. Długo nie miał ode mnie żadnej wiadomości. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.2 25.0 27.1
  SAY #5457 /* ~"Zazwyczaj przebywa w głównej sali spotkań. Odnalezienie go nie powinno sprawić ci problemów."~ */
  IF ~~ THEN REPLY #5458 /* ~"Gdzie mogę znaleźć Tyldona?"~ */ GOTO 25
  IF ~~ THEN REPLY #5459 /* ~"Gdzie mogę znaleźć Bedai-Lin?"~ */ GOTO 27
  IF ~~ THEN REPLY #64147 /* ~"Mam jeszcze inne pytania."~ */ GOTO 16
  IF ~~ THEN REPLY #64148 /* ~"Muszę się o tym upewnić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.4 24.3 25.1 26.1
  SAY #5460 /* ~"Można ją spotkać gdziekolwiek na terenie Kuźni. Jest jednym z naszych głównych inżynierów, więc musi czuwać nad wszystkim. Jak ją zobaczysz, to będziesz wiedział, że to ona."~ */
  IF ~~ THEN REPLY #5461 /* ~"Gdzie mogę znaleźć Tyldona?"~ */ GOTO 25
  IF ~~ THEN REPLY #5462 /* ~"Gdzie mogę znaleźć Sarosa?"~ */ GOTO 26
  IF ~~ THEN REPLY #64149 /* ~"Chyba tak będzie lepiej. Mam jeszcze parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #64150 /* ~"Chyba tak będzie lepiej. Żegnaj."~ */ EXIT
END

IF WEIGHT #6 ~  Global("GearRepair","GLOBAL",5)
~ THEN BEGIN 28 // from:
  SAY #5463 /* ~"Dziękuję za naprawę maszyn. Może poradzilibyśmy sobie i bez ciebie, ale zabrałoby nam to o wiele więcej czasu. Zaskarbiłeś sobie naszą wdzięczność. Co jeszcze mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #5464 /* ~"Mam do ciebie parę pytań."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ GOTO 16
  IF ~~ THEN REPLY #5465 /* ~"No cóż, to niezbyt dużo. Żegnaj."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 29 // from:
  SAY #5466 /* ~"To znowu ty? Czego chcesz tym razem? Przepraszam, że tak się niecierpliwię, ale musimy trzymać się planu."~ */
  IF ~~ THEN REPLY #5467 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5468 /* ~"Z polecenia Keldora badam sprawę morderstwa, które tu popełniono. Co możesz mi o tym powiedzieć?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5469 /* ~"Na razie nic. Jeszcze tu wrócę."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 30 // from:
  SAY #5470 /* ~Widzisz przed sobą niską kobietę, z której czoła wystają małe różki. Jej uszy zawijają się ostro w tył na jej czaszce. Czuć od niej siarką, i to tak, że można to wyczuć pomimo ognia Kuźni. "Witaj. Co mogę dla ciebie zrobić?"~ */
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5471 /* ~"Z polecenia Keldora badam sprawę morderstwa, które tu popełniono. Co możesz mi o tym powiedzieć?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5472 /* ~"Szukam drogi do wyjścia."~ */ GOTO 31
  IF ~~ THEN REPLY #5473 /* ~"Szukam biura, w którym wydaje się przedmioty. Muszę coś stamtąd odebrać."~ */ GOTO 32
  IF ~~ THEN REPLY #5474 /* ~"Mogłabyś mnie oprowadzić?"~ */ GOTO 33
  IF ~~ THEN REPLY #5475 /* ~"Kim jesteś?"~ */ GOTO 34
  IF ~~ THEN REPLY #5476 /* ~"Co tu się dzieje?"~ */ GOTO 35
  IF ~~ THEN REPLY #5477 /* ~"Kim są Bogowcy i na czym dokładnie polegają ich przekonania?"~ */ GOTO 36
  IF ~~ THEN REPLY #5478 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.13 30.1
  SAY #5479 /* ~"Spójrz w tył. Widzisz ten długi tunel? Idź nim, a dojedziesz do głównego wejścia."~ */
  IF ~~ THEN REPLY #5480 /* ~"Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.14 30.2
  SAY #5481 /* ~"To ten pokój z biurkiem. Tam powinieneś go znaleźć."~ */
  IF ~~ THEN REPLY #5482 /* ~"Dzięki. Mam jeszcze kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5483 /* ~"Dzięki. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.15 30.3
  SAY #5484 /* ~"W innym momencie byłabym tym strasznie zainteresowana. Niestety, jesteśmy teraz bardzo zajęci. Przyjdź z powrotem za rok, a postaram się ci pomóc."~ */
  IF ~~ THEN REPLY #5485 /* ~"Co się dzieje?"~ */ GOTO 35
  IF ~~ THEN REPLY #5486 /* ~"W porządku. Mam jeszcze parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5487 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 16.16 30.4
  SAY #5488 /* ~"Mam na imię Alissa Tield. Pod moim nadzorem znajduje się teren Wielkiej Kuźni, w którym teraz wykonuje się większość naszych prac. Oczywiście cała Kuźnia jest o wiele większa, ale pracujemy teraz nad dużym, tajnym kontraktem, wiec większość terenu jest zamknięta. Przepraszam."~ */
  IF ~~ THEN REPLY #5489 /* ~"Rozumiem. Mam jeszcze parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5490 /* ~"Zakaz wstępu? Śmiechu warte! Do zobaczenia!"~ */ EXIT
  IF ~~ THEN REPLY #5491 /* ~"Rozumiem. Dziękuję, że poświęciłaś mi swój czas."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 16.17 30.5 33.0
  SAY #5492 /* ~"Dostaliśmy ogromny - i bardzo tajny - kontrakt, który pochłania praktycznie całe nasze moce przerobowe. Oczywiście wykonujemy mniejsze zlecenia dla pozostałych naszych klientów, ale teraz cała praca w Kuźni skupia się wokół tego kontraktu. Nawet się o niego nie pytaj, bo i tak ci nic nie powiem."~ */
  IF ~~ THEN REPLY #5493 /* ~"Wygląda na to, że nie zmienisz co do tego zdania. No cóż. Mam jeszcze parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5494 /* ~"Wygląda na to, że nie zmienisz co do tego zdania. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.18 30.6
  SAY #5495 /* ~"To frakcja o charakterze zarówno wspólnotowym jak i indywidualnym, a jeśli chodzi o ich przekonania, to różnią się one nieco w zależności od tego, z kim się rozmawia. Ogólne założenia są takie, że życie - nie, całe istnienie - jest pewnego rodzaju testem. Wszystkie rzeczy, na które napotykamy w naszym życiu, są dla nas sprawdzianem, a od tego, w jaki sposób na nie zareagujemy, zależy, czy przybliżymy się do prawdziwego zrozumienia bytu. Szukamy prawdy poza wieloświatem, a dla nas jest oczywiste, że to my mamy rację."~ */
  IF ~~ THEN REPLY #5496 /* ~"R... rozumiem. Mam jeszcze parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5497 /* ~"Jak mogę się do was przyłączyć?"~ */ GOTO 37
  IF ~~ THEN REPLY #5498 /* ~"Hmm. Dziękuję, że poświęciłaś mi swój cenny czas."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #5499 /* ~"Idź porozmawiać z Keldorem z Durian. Znajdziesz go w sali spotkań, którą znajdziesz za drzwiami w prawej części ściany."~ */
  IF ~~ THEN REPLY #5500 /* ~"Dzięki. Mam jeszcze kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5501 /* ~"Dzięki. Do zobaczenia."~ */ EXIT
END
