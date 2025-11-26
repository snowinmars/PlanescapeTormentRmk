// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33304 /* ~Kiedy się do niej zbliżasz, oczy kobiety rozszerzają się ze strachu. "Odejdź! Zostaw mnie w spokoju albo zacznę krzyczeć. Mówię ci!"~ */
  IF ~~ THEN REPLY #33305 /* ~Pozwól jej odejść.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33306 /* ~Kiedy się do niej zbliżasz, kobieta rozgląda się na boki, jakby chciała znaleźć kogoś, za kogo plecami mogłaby się ukryć. "N... nic nie wim, śmiałku - zostaw mnie w spokoju, proszę!"~ */
  IF ~~ THEN REPLY #33307 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33308 /* ~"Idź zawracać głowę komuś innemu, ty skurlu! Nie mam czasu dla takich jak ty..."~ */
  IF ~~ THEN REPLY #33309 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33310 /* ~Kobieta zdecydowanie nie chce zamienić z tobą choćby słowa.~ */
  IF ~~ THEN REPLY #33311 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33312 /* ~Kiedy kobieta zdaje sobie sprawę, że się do niej zbliżasz, jej twarz blednie. Nerwowo zaczyna się rozglądać w poszukiwaniu sztyletu. "Nie chcę mieć z tobą nic wspólnego! Wynoś się stąd!"~ */
  IF ~~ THEN REPLY #33313 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33314 /* ~"To ty jesteś tym trepem, co szukał Faroda! Znalazłeś go już? Jak nie, to poszukaj na północ stąd, na Placu Szmaciarzy."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33315 /* ~"W takim razie spróbuję tam pójść. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33448 /* ~"Już go znalazłem, ale dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33316 /* ~"Jeśli kiedyś pójdziesz do karczmy 'Proch do prochu', to nie zdziw się, jak ktoś będzie oczekiwał, że mu będziesz usługiwał!" Kobieta wybucha rżącym śmiechem.~ */
  IF ~~ THEN REPLY #33317 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33318 /* ~Kobieta, którą przed sobą widzisz, raz po raz gryzie kawałek czegoś, co wygląda jak szczur na patyku. Kiedy spostrzega, że się na nią patrzysz, podejrzliwie mruży oczy. "Jak chcesz coś zjeść, to pogadaj z Kridenem, a nie gap się na mnie! Znajdziesz go przed Biurem do Spraw Szkodników i Zapobiegania Chorobom."~ */
  IF ~~ THEN REPLY #33319 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33320 /* ~"Jak zobaczysz jakiegoś wyjącego szaleńca, pędzącego co sił w nogach, to lepiej zejdź mu z drogi! Te Wygłodzone Psy potrafią napędzić człowiekowi niezłego stracha..."~ */
  IF ~~ THEN REPLY #33321 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33322 /* ~"Nic ci nie powiem, co by ci pomogło... No to zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #33323 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33324 /* ~Kiedy się do niej zbliżasz, kobieta podnosi brwi. "Zajmuję się tylko swoimi sprawami, trepie... I ty chyba powinieneś zrobić to samo - trzymaj się z daleka od kłopotów. Powodzenia."~ */
  IF ~~ THEN REPLY #33325 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33326 /* ~Kiedy się do niej zbliżasz, kobieta rzuca ci groźne spojrzenie. "Nie mam czasu gadać z nieznajomymi, trepie... a w dodatku to niebezpieczne. Żegnaj."~ */
  IF ~~ THEN REPLY #33327 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33328 /* ~Kobieta wzdycha żałośnie. "Nie ma nic gorszego niż życie w Ulu. Można się znaleźć w Księdze Umarłych tylko dlatego, że popatrzy się z ukosa na jakiegoś trepa."~ */
  IF ~~ THEN REPLY #33329 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33330 /* ~"Wygląda na to, że przydałoby ci się trochę odpoczynku w karczmie. Jak cię to interesuje, to znajdziesz ją w środku tej części Ula."~ */
  IF ~~ THEN REPLY #33331 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33332 /* ~"Jeśli kiedyś pójdziesz do karczmy 'Proch do prochu', to nie zdziw się, jak ktoś będzie oczekiwał, że mu będziesz usługiwał!" Kobieta wybucha rżącym śmiechem.~ */
  IF ~~ THEN REPLY #33333 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33334 /* ~Kobieta, którą przed sobą widzisz, raz po raz gryzie kawałek czegoś, co wygląda jak szczur na patyku. Kiedy spostrzega, że się na nią patrzysz, podejrzliwie mruży oczy. "Jak chcesz coś zjeść, to pogadaj z Kridenem, a nie gap się na mnie! Znajdziesz go przed Biurem do Spraw Szkodników i Zapobiegania Chorobom."~ */
  IF ~~ THEN REPLY #33335 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #33336 /* ~"Jak zobaczysz jakiegoś wyjącego szaleńca, pędzącego co sił w nogach, to lepiej zejdź mu z drogi! Te Wygłodzone Psy potrafią napędzić człowiekowi niezłego stracha..."~ */
  IF ~~ THEN REPLY #33337 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #33338 /* ~"To ty jesteś tym trepem, co szukał Faroda! Znalazłeś go już? Jak nie, to poszukaj na północ stąd, na Placu Szmaciarzy."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33339 /* ~"W takim razie spróbuję tam pójść. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33340 /* ~"Już go znalazłem, ale dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33344 /* ~"Jak nie szukasz kłopotów, to trzymaj się z daleka od wypalonej alei na południowy-zachód stąd."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33345 /* ~"Już tam byłem. Żegnaj."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33346 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33347 /* ~"Jest tu w pobliżu biedny człowiek imieniem Śmierdziwiatr... Jak wstrzymasz oddech i rzucisz mu parę miedziaków, to może ci opowiedzieć ciekawe historie."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33348 /* ~"Może pójdę go poszukać. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33349 /* ~"Tak, spotkałem go. Żegnaj."~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33351 /* ~"Byłeś już w gospodzie 'Pod Gorejącym Człekiem'? Niezła knajpa, ale ten płonący facet działa mi na nerwy."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33352 /* ~"Już go tam nie ma. Żegnaj."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33449 /* ~"Tak, też tam byłem. Żegnaj."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33350 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33353 /* ~"Witaj, krwawniku." Kobieta obdarza cię nieśmiałym półuśmiechem. "Właśnie zastanawiam się, czy nie wpaść później na odrobinę bełta... może masz ochotę na jednego?"~ */
  IF ~~ THEN REPLY #33354 /* ~"Może innym razem... Mam teraz strasznie dużo na głowie. Przykro mi."~ */ EXIT
  IF ~~ THEN REPLY #33472 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33355 /* ~"Nie mogę się pogodzić z tym, że moje dziecko będzie tu dorastało. Może pewnego dnia uda mi się opuścić to przeklęte miejsce razem z moją rodziną."~ */
  IF ~~ THEN REPLY #33356 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33357 /* ~Kobieta obdarza cię uśmiechem. "Nie, nie mogę ci pomóc... choć bardzo bym chciała, naprawdę."~ */
  IF ~~ THEN REPLY #33358 /* ~"Mimo wszystko, dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33359 /* ~"Wygląda na to, że przydałoby ci się trochę odpoczynku w karczmie. Jak cię to interesuje, to znajdziesz ją w środku tej części Ula."~ */
  IF ~~ THEN REPLY #33360 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33362 /* ~"To ty jesteś tym trepem, co szukał Faroda! Znalazłeś go już? Jak nie, to poszukaj na północ stąd, na Placu Szmaciarzy."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33363 /* ~"W takim razie spróbuję tam pójść. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33364 /* ~"Już go znalazłem, ale dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33365 /* ~"Pewnego dnia spotkałam tu wytatuowanego człowieka imieniem Porfiron. Mówił, że jest jakimś mnichem-wojownikiem... ale nie wolno mu było walczyć."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33366 /* ~"W takim razie może pójdę go poszukać. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33361 /* ~"Tak, już go spotkałem. Żegnaj."~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33367 /* ~"Jeśli chcesz zorientować się, gdzie co się znajduje, śmiałku, to przed karczmą Proch do Prochu znajdziesz Drogowskaz."~ */
  IF ~~ THEN REPLY #33368 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33370 /* ~"Jak nie szukasz kłopotów, to trzymaj się z daleka od wypalonej alei na południowy-zachód stąd."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33371 /* ~"Już tam byłem. Żegnaj."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33372 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33373 /* ~"Wielu ludzi przychodzi wspominać swoich zmarłych do Kamienia Pamiątkowego Grabarzy... Jest tam Grabarz, który wyryje dla ciebie imię na Kamieniu, albo powie, czy ktoś, kogo szukasz, już umarł."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #33374 /* ~"Tak, nazywa się 'Grzebiący Imiona'. Żegnaj."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #33369 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33375 /* ~"Grabarze trzymają się z daleka od większości oberż w Ulu... ale często można ich spotkać w gospodzie Proch do Prochu. Nie chodzi tam prawie nikt, oprócz Martwych."~ */
  IF ~~ THEN REPLY #33376 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33377 /* ~Kobieta, którą przed sobą widzisz, raz po raz gryzie kawałek czegoś, co wygląda jak szczur na patyku. Kiedy spostrzega, że się na nią patrzysz, podejrzliwie mruży oczy. "Jak chcesz coś zjeść, to pogadaj z Kridenem, a nie gap się na mnie! Znajdziesz go przed Biurem do Spraw Szkodników i Zapobiegania Chorobom."~ */
  IF ~~ THEN REPLY #33378 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33380 /* ~"Jest tu w pobliżu biedny człowiek imieniem Śmierdziwiatr... Jak wstrzymasz oddech i rzucisz mu parę miedziaków, to może ci opowiedzieć ciekawe historie."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33381 /* ~"Może pójdę go poszukać. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33379 /* ~"Tak, już go spotkałem. Żegnaj."~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33382 /* ~"Byłeś już na targu, śmiałku? Mają tam prawie wszystko, czego dusza zapragnie."~ */
  IF ~~ THEN REPLY #33383 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33384 /* ~"Mam nadzieję, że Profira się myli... Jeśli nie słyszałeś jej przepowiedni, to zazwyczaj można je usłyszeć na Targu..."~ */
  IF ~~ THEN REPLY #33386 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33387 /* ~"Jak nie szukasz kłopotów, to trzymaj się z daleka od wypalonej alei na północny-wschód stąd."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33388 /* ~"Już tam byłem. Żegnaj."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33385 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33389 /* ~"Jak zobaczysz jakiegoś wyjącego szaleńca, pędzącego co sił w nogach, to lepiej zejdź mu z drogi! Te Wygłodzone Psy potrafią napędzić człowiekowi niezłego stracha..."~ */
  IF ~~ THEN REPLY #33392 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33393 /* ~"Byłeś już w gospodzie 'Pod Gorejącym Człekiem'? Niezła knajpa, ale ten płonący facet działa mi na nerwy."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33394 /* ~"Już go tam nie ma. Żegnaj."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33390 /* ~"Tak, też tam byłem. Żegnaj."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33391 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33395 /* ~"Pewnego dnia spotkałam człowieka, który mówił o sobie, że jest 'Opłakującym Drzewa'... Wyglądało na to, że bardzo mu zależało na tym, żeby jakoś pomóc tutejszym drzewom. Może lepiej by było, jakby zaczął pomagać ludziom, którzy tutaj żyją."~ */
  IF ~~ THEN REPLY #33396 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33397 /* ~"Mogę cię tylko ostrzec przed złodziejami, od których aż się tu roi... Słyszałam, że w tej części Ula można spotkać wielu kieszonkowców."~ */
  IF ~~ THEN REPLY #33398 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33401 /* ~"Jednego dnia zobaczyłam pewną biedną, ześwirowaną dzierlatkę. Ciekawe, czy nie zagłodziła się na śmierć, albo czy do tej pory nikt jej nie zabił."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33402 /* ~"Tak... powinna już być w domu, albo wróci już niedługo. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33399 /* ~"Spotkałem ją. Ma na imię Ingressa. Żegnaj."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33400 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33403 /* ~"Jak będziesz na Targu, to trzymaj się z daleka od Gaohy! Mój mąż zawsze traci wszystkie pieniądze, jakie postawi u tego po trzykroć przeklętego githa!"~ */
  IF ~~ THEN REPLY #33404 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33407 /* ~"Co za dziwne tatuaże! Niektóre wyglądają podobnie do tych, które robią w jednym salonie, tu w Ulu. No wiesz, ten salon, co to go Dabus prowadzi?"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33408 /* ~"Tak, wiem. Nazwywa się Upadły."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33409 /* ~"Tak, znam to miejsce."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33405 /* ~"Nie, nigdy tam nie byłem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_D","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33410 /* ~"A niech mnie Pani pozbawi wzroku! Widziałam cię już wcześniej, śmiałku, ale nigdy nie przypuszczałam, że cię jeszcze kiedyś zobaczę! Chyba Sigil jest mniejsze, niż się wydaje."~ */
  IF ~~ THEN REPLY #33411 /* ~"Znasz mnie?"~ */ DO ~SetGlobal("Hive_OT_D","GLOBAL",1)
~ GOTO 44
  IF ~~ THEN REPLY #33406 /* ~"Może. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #33413 /* ~Kobieta uśmiecha się nerwowo. "Czy cię znam? Nie, ale jak już mówiłam, widziałam cię. To było w zeszłym roku... późno w nocy, w pobliżu przeciw-szczytu... szukałam wtedy mojej siostry, kiedy przeleciałeś obok mnie jak szalony. Potknąłeś się i upuściłeś to tuż pod moje stopy, a potem uciekłeś. Trzymałam to na szczęście, bo pomyślałam, że sam los zesłał to pod moje stopy." Kobieta podaje ci dziwnie wyglądający sztylet. "Masz... Jak cię jeszcze raz spotkałam, to znaczy, że los chce, żebym ci to oddała. Żegnaj."~ */
  IF ~~ THEN REPLY #33414 /* ~"Dziękuję... żegnaj."~ */ DO ~GiveItemCreate("GSDagger",Protagonist,1,0,0)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,2)
Global("Hive_OT_E","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33415 /* ~Wygląda na to, że kobieta nie ma żadnych problemów z rozpoznaniem ciebie. Przerażona, cofa się do tyłu. "Po tym wszystkim... ty *draniu*! A niech cię wszystkie biesy z Baator porwą! Pewnego dnia pożałujesz tego, co zrobiłeś Aerin... na wszystkie Moce, *przyrzekam* ci to!" Kobieta odwraca się, żeby uciec.~ */
  IF ~~ THEN REPLY #33416 /* ~"Czekaj..."~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33417 /* ~Pozwól jej odejść.~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,3)
Global("Hive_OT_F","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #33420 /* ~"Toż to mój mroczny wybawiciel. Trochę ci to zajęło, żeby do mnie zawitać, nie? Już zaczynałam myśleć, że w ogóle nie przyjdziesz, krwawniku." Kobieta zaczyna grzebać w swojej sakwie.~ */
  IF ~~ THEN REPLY #33421 /* ~"Czekaj... Chyba się mylisz..."~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #33412 /* ~Czekaj cierpliwie.~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
GiveItemCreate("SilRing",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #33424 /* ~"Nie żyje, dokładnie tak, jak powiedziałeś... i tak powinno być. To twoja zapłata... ten pierścień, który ci obiecałam. Niech ci się dobrze wiedzie."~ */
  IF ~~ THEN REPLY #33425 /* ~"Poczekaj chwilkę... Mam do ciebie parę pytań..."~ */ GOTO 48
  IF ~~ THEN REPLY #33418 /* ~Pozwól jej odejść.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #33426 /* ~"Nie, śmiałku... to było dawno temu, ale ciągle lepiej, żeby nikt nie widział, jak z tobą rozmawiam. On miał towarzyszy i oni chyba się domyślają, co się stało. Nie mogę już z tobą rozmawiać."~ */
  IF ~~ THEN REPLY #33427 /* ~"Ale..."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33479 /* ~"Zatem, żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.0
  SAY #33431 /* ~Kobieta przygląda ci się dziwnie, a potem jej wzrok przenosi się na tatuaże na górnej części ramienia. W końcu wzrusza ramionami. "Niech ci będzie, śmiałku. Powodzenia..."~ */
  IF ~~ THEN REPLY #33432 /* ~Pozwól jej odejść.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 50 // from:
  SAY #33434 /* ~Ta osoba nie ma ci już nic więcej do powiedzenia.~ */
  IF ~~ THEN REPLY #33428 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 51 // from:
  SAY #33436 /* ~Ta osoba nie ma ci nic ważnego do powiedzenia.~ */
  IF ~~ THEN REPLY #33451 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 52 // from:
  SAY #33469 /* ~Ta osoba nie może ci powiedzieć nic, co mogłoby cię interesować.~ */
  IF ~~ THEN REPLY #33471 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 53 // from:
  SAY #33470 /* ~Ta osoba nie ma ci już nic więcej do powiedzenia.~ */
  IF ~~ THEN REPLY #33480 /* ~Odejdź.~ */ EXIT
END
