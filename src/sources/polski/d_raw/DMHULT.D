// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHULT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHULT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2802 /* ~Ten człowiek wygląda na mniej surowego i nieufnego aniżeli ludzie, którzy go otaczają. Przechadza się w dobrym nastroju, od niechcenia spoglądając na ziemię po obu stronach chodnika. Z chwilą, gdy doń podchodzisz, kiwa przyjaźnie głową na powitanie.~ */
  IF ~~ THEN REPLY #18030 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #18031 /* ~Odwzajemnij skinienie głowy i wymiń go.~ */ EXIT
  IF ~~ THEN REPLY #18032 /* ~Wymiń go.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2803 /* ~"Czołem, śmiałku! Powiedz no... włóczyły się tu jakieś truposze?"~ */
  IF ~~ THEN REPLY #18033 /* ~"Nie, nie w pobliżu. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #18034 /* ~"Nie, nie w pobliżu. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.4 4.3 5.3 6.3 7.4 8.3 9.4 10.3 11.1 12.4 13.3 14.3 15.3 16.1
  SAY #18015 /* ~Do zobaczenia, śmiałku! Macha do ciebie i odchodzi.~ */
  IF ~~ THEN REPLY #18035 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #18016 /* ~"Niedobrze, niedobrze." Wzrusza ramionami. "Masz jakieś pytania, nie? No to słucham."~ */
  IF ~~ THEN REPLY #18036 /* ~"Czego szukasz?"~ */ GOTO 4
  IF ~~ THEN REPLY #18037 /* ~"Czy możesz opowiedzieć mi o tym miejscu?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18038 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18039 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 15
  IF ~~ THEN REPLY #18040 /* ~"Nic nie szkodzi. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18017 /* ~"Truposzy, oczywista! Nie poznajesz się na szatach Zbieracza?" Łapie za sukno i podnosi ci do oczu.~ */
  IF ~~ THEN REPLY #18427 /* ~"Nie..."~ */ GOTO 5
  IF ~~ THEN REPLY #18428 /* ~"Zbieracza?"~ */ GOTO 5
  IF ~~ THEN REPLY #18429 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18430 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 12.0 13.0 14.0 15.0
  SAY #18018 /* ~"Ano, Zbieracza!" Wskazuje na swoje postrzępione brązowe szaty. "Oto są szaty Zbieracza, śmiałku. Każdy skurl, noszący je... ja dla przykładu... pewnie poszukuje truposzy, żeby je sprzedać w Kostnicy." Wzrusza ramionami. "Cokolwiek, żeby se jakoś poradzić w Ulu, nie? Cha, cha!"~ */
  IF ~~ THEN REPLY #18431 /* ~"Czy Zbieracze pracują razem?"~ */ GOTO 6
  IF ~~ THEN REPLY #18432 /* ~"Dlaczego Kostnica płaci za ciała?"~ */ GOTO 11
  IF ~~ THEN REPLY #18433 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18434 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #18019 /* ~Śmieje się serdecznie. "Do diabła, nie! Wszyscy ubieramy się tak samo, ale truposzy nie ma zbyt dużo. Zazwyczaj skrzykujemy się w kilku... i robią się z tego bandy, paczki, gangi... możesz je nazywać jak chcesz... w każdym razie nie są one do siebie zbyt przyjaźnie nastawione."~ */
  IF ~~ THEN REPLY #18435 /* ~"Czy w pobliżu grasują rywalizujące ze sobą bandy Zbieraczy?"~ */ GOTO 7
  IF ~~ THEN REPLY #18436 /* ~"Dlaczego Kostnica płaci za ciała?"~ */ GOTO 11
  IF ~~ THEN REPLY #18437 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18438 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #18020 /* ~Kiwa głową. "To pewne jak Sigil jest okrągłe! Większość zbieraczy w Ulu ma leże przy Placu Szmaciarzy. To taka nora na północ stąd przez dużą bramę. Prowadzą ją chłopaki od Współgrobca, odkąd przegnaliśmy tę sforę Faroda."~ */
  IF ~~ THEN REPLY #18439 /* ~"Opowiedz mi o Współgrobcu."~ */ GOTO 8
  IF ~~ THEN REPLY #18440 /* ~"Opowiedz mi o Farodzie."~ */ GOTO 9
  IF ~~ THEN REPLY #18441 /* ~"Dlaczego Kostnica płaci za ciała?"~ */ GOTO 11
  IF ~~ THEN REPLY #18442 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18443 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 10.0
  SAY #18021 /* ~"Współgrobiec? To mój szef. A i tak nigdy z nim nie mówię... nigdy nawet nie widziałem go z bliska. Przeważnie trzyma się samego siebie i prowadzi interesy przez kilku podwładnych. Możesz go znaleźć w jego kufrze przy Placu Szmaciarzy, ale ja trzymałbym się z dala, chyba że masz rzeczywiście powód, aby z nim pogadać. Trochę nie lubi nieznajomych."~ */
  IF ~~ THEN REPLY #18444 /* ~"Opowiedz mi o Farodzie."~ */ GOTO 9
  IF ~~ THEN REPLY #18445 /* ~"Dlaczego Kostnica płaci za ciała?"~ */ GOTO 11
  IF ~~ THEN REPLY #18446 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18447 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #18022 /* ~"Sam o nim niewiele wiem. Masę czasu spędziliśmy walcząc z jego chłopcami, ale oni nagle zniknęli... razem z Farodem. Wciąż udaje nam się czasem złapać jakiegoś marudera na Placu Szmaciarzy, ale nie mamy pojęcia, gdzie pochowała się cała reszta."~ */
  IF ~~ THEN REPLY #18448 /* ~"Czy wielu ludzi mu zostało?"~ */ GOTO 10
  IF ~~ THEN REPLY #18452 /* ~"Opowiedz mi o Współgrobcu."~ */ GOTO 8
  IF ~~ THEN REPLY #18453 /* ~"Dlaczego Kostnica płaci za ciała?"~ */ GOTO 11
  IF ~~ THEN REPLY #18454 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18456 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #18023 /* ~"Musi, bo doszły nas słuchy, że jego grupa ostatnio odnosi sukcesy. Znaleźli mnóstwo truposzy, wyciągnęli moniaki od Grabarzy w Kostnicy. Nie wiem zresztą, w jaki sposób, bo my ostatnio mieliśmy kłopot ze świeżymi ciałami." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #18457 /* ~"Opowiedz mi o Współgrobcu."~ */ GOTO 8
  IF ~~ THEN REPLY #18459 /* ~"Dlaczego Kostnica płaci za ciała?"~ */ GOTO 11
  IF ~~ THEN REPLY #18460 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18461 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 5.1 6.1 7.2 8.1 9.2 10.1
  SAY #18024 /* ~"Chyba dba o czystość ulic w Ulu, nie dopuszcza do tego, aby nękała nas zaraza i takie tam. Chociaż Grabarze też lubią trzymać umarłych na ich miejscu... dopilnowując, aby ich wszystkich należycie pochowano, przetopiono czy coś takiego. To chyba część ich wiary."~ */
  IF ~~ THEN REPLY #18463 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18464 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.2 5.2 6.2 7.3 8.2 9.3 10.2 11.0
  SAY #18025 /* ~"Pytaj, śmiałku! A może i mnie się poszczęści i ktoś umrze, podczas naszej pogawędki. Ha, ha!"~ */
  IF ~~ THEN REPLY #18466 /* ~"Opowiedz mi o Zbieraczach."~ */ GOTO 5
  IF ~~ THEN REPLY #18467 /* ~"Czy możesz opowiedzieć mi o tym miejscu?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18469 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18471 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 15
  IF ~~ THEN REPLY #18472 /* ~"Nic nie szkodzi. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 3.1 12.1 14.1 15.1
  SAY #18026 /* ~"To właśnie jest Ul, śmiałku. Tak właśnie my, mieszkańcy Ula, nazywamy ten koniec świata Sigil. Nie, żeby w Sigil był jakiś tam koniec. W końcu Sigil jest okrągłe. Ale wiesz, o co mi chodzi. W każdym bądź razie, tutaj jest zachód i północ, przez tę dużą bramę wchodzi się na Plac Szmaciarzy, gdzie Zbieracze tacy jak ja posiadają leże. Obawiam się, że nie wiem za wiele o reszcie Sigil."~ */
  IF ~~ THEN REPLY #18473 /* ~"Czy możesz opowiedzieć mi o Zbieraczach?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18474 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18475 /* ~"Szukam dziennika, który mi zaginął."~ */ GOTO 15
  IF ~~ THEN REPLY #18476 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 3.2 12.2 13.1 15.2
  SAY #18027 /* ~"Szefa Zbieraczy? Sam o nim niewiele wiem. Masę czasu spędziliśmy walcząc z jego chłopcami, ale oni nagle zniknęli... razem z Farodem. Wciąż udaje nam się czasem złapać jakiegoś marudera na Placu Szmaciarzy, ale nie mamy pojęcia, gdzie pochowała się cała reszta."~ */
  IF ~~ THEN REPLY #18477 /* ~"Czy możesz opowiedzieć mi o Zbieraczach?"~ */ GOTO 5
  IF ~~ THEN REPLY #18478 /* ~"Czy możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18479 /* ~"Szukam też dziennika, który mi zaginął."~ */ GOTO 15
  IF ~~ THEN REPLY #18480 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 3.3 12.3 13.2 14.2
  SAY #18028 /* ~"Nie... nie natknąłem się na żaden. Ale coś ci powiem - jak spotkam, zatrzymam dla ciebie."~ */
  IF ~~ THEN REPLY #18481 /* ~"Dzięki. Czy możesz opowiedzieć mi o Zbieraczach?"~ */ GOTO 5
  IF ~~ THEN REPLY #18482 /* ~"Dzięki. Czy możesz mi opowiedzieć o tym miejscu?"~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18483 /* ~"Szukam także człowieka o imieniu Farod."~ */ GOTO 14
  IF ~~ THEN REPLY #18484 /* ~"Dzięki. Zostanie to docenione. Żegnaj."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #18029 /* ~"Czołem, śmiałku. Czy myśmy się już nie spotkali? Tak, na pewno! Teraz pamiętam. Powiedz... są tutaj jacyś truposze?"~ */
  IF ~~ THEN REPLY #18485 /* ~"Nie, nie w pobliżu. Mam jeszcze parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #18486 /* ~"Nie, nie w pobliżu, Żegnaj."~ */ GOTO 2
END
