// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL1~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10418 /* ~Ten krzepki, o rześkiej twarzy, młodzieniec spogląda przez chwilę na ciebie i nagle wyrzuca z siebie: "Ej ty! Słyszałem o tobie! Jesteś aresztowany! Nie, czekaj... ciebie czeka egzekucja!" Wyciąga broń gotując się do ataku.~ */
  IF ~~ THEN REPLY #10419 /* ~Zaatakuj go.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10420 /* ~Uciekaj.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10421 /* ~Widzisz młodzieńca, wyglądającego na nie więcej niż osiemnaście lat. Jego twarz wydaje się zdradzać pewne napięcie. "Pomóc ci jakoś, śmiałku?"~ */
  IF ~~ THEN REPLY #10422 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10423 /* ~"Szukam dziennika. Nie natknąłeś się ostatnio przypadkiem na jakiś?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10424 /* ~"Szukam Zbieracza o imieniu Farod. Nie wiesz przypadkiem, gdzie mogę go znaleźć?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10425 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 12
  IF ~~ THEN REPLY #10427 /* ~"Kim są twoi przyjaciele?"~ */ GOTO 5
  IF ~~ THEN REPLY #10428 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 6
  IF ~~ THEN REPLY #10429 /* ~"Co robisz?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10430 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10431 /* ~"To znowu ty? Czego chcesz?" Wygląda na zniecierpliwionego i zdenerwowanego.~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10432 /* ~"Czy pojawił się już ten zabójca?"~ */ GOTO 8
  IF ~~ THEN REPLY #10433 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10434 /* ~"Szukam dziennika. Nie natknąłeś się ostatnio przypadkiem na jakiś?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10435 /* ~"Szukam Zbieracza o imieniu Farod. Nie wiesz przypadkiem, gdzie mogę go znaleźć?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10436 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 12
  IF ~~ THEN REPLY #10437 /* ~"Kim są twoi przyjaciele, tutaj?"~ */ GOTO 5
  IF ~~ THEN REPLY #10438 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 6
  IF ~~ THEN REPLY #10439 /* ~"Co robisz?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10440 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 10.1
  SAY #10441 /* ~"Jestem Kaleb. Jestem Łaskobójcą. Przyszliśmy tu z Tarnerem i Ilsidonem, żeby złapać mojego pierwszego przestępcę."~ */
  IF ~~ THEN REPLY #10442 /* ~"Co możesz mi powiedzieć o Łaskobójcach?"~ */ GOTO 9
  IF ~~ THEN REPLY #10443 /* ~"Rozumiem. Chciałbym ci zadać kolejne pytanie."~ */ GOTO 10
  IF ~~ THEN REPLY #10444 /* ~"Powodzenia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 10.2
  SAY #10445 /* ~"Dziennik? Nie, wybacz. Jestem tu wciąż nowy, więc nie mam jeszcze takich powiązań. Dam ci znać, gdyby coś takiego wpadło mi w ręce." Rozgląda się po gospodzie.~ */
  IF ~~ THEN REPLY #10446 /* ~"Co robisz?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10447 /* ~"Dziękuję. W międzyczasie możesz mi odpowiedzieć na kilka pytań."~ */ GOTO 10
  IF ~~ THEN REPLY #10448 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 2.5 10.5
  SAY #10449 /* ~"To są ludzie, którzy mają dopilnować, żebym nie spaprał tego zadania. Tarner jest z nich najstarszy. Ilsidon ma pilnować, żebym dobrze wykonał robotę i pomóc w razie potrzeby." Przełyka głośno. "Mam nadzieję, że to nie będzie konieczne."~ */
  IF ~~ THEN REPLY #10450 /* ~"Dasz sobie radę, jestem tego pewny. Zechciej odpowiedzieć mi na kilka pytań?"~ */ GOTO 10
  IF ~~ THEN REPLY #10451 /* ~"Życzę ci szczęścia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.6 10.6
  SAY #10452 /* ~"To jest gospoda 'Pod Gorejącym Człekiem'. Wydaje mi się, że nazwa pochodzi od gościa przy wejściu. To miejsce do którego złażą się różne męty i kryminaliści. Ale... znajdziesz też tutaj śmiałków, którzy wiedzą o czym mówią. Niektórzy z nich to te biesy tam, ale nie lubię się z nimi zadawać. Zawsze wydaje mi się, jakby patrzyli mi prosto w duszę."~ */
  IF ~~ THEN REPLY #10453 /* ~"Rozumiem. Możesz odpowiedzieć na kilka innych pytań?"~ */ GOTO 10
  IF ~~ THEN REPLY #10454 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.7 4.0 10.7
  SAY #10455 /* ~"Więc, z racji tego, że jestem nowym Łaskobójcą, mam doprowadzić przestępcę przed oblicze sprawiedliwości, żeby udowodnić, że nadaję się do tej roboty. Zdecydowałem, że chcę złapać zabójcę, więc popytaliśmy tu i tam i dowiedzieliśmy się, że ma tu być. Nie widziałem go jednak jeszcze. Mówiąc szczerze, trochę się denerwuję. Wybacz, ale naprawdę powinienem jeszcze raz tu sobie wszystkich obejrzeć." Wyciąga szyję i rozgląda się po gospodzie.~ */
  IF ~~ THEN REPLY #10456 /* ~"Jeszcze tylko kilka pytań i możesz iść."~ */ GOTO 10
  IF ~~ THEN REPLY #10457 /* ~"Dobrze. Do widzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 10.0
  SAY #10458 /* ~"Nie. Jeszcze nie. Ale Tarner mówi, że to właśnie tu ma przyjść ten przestępca. Więc teraz bawimy się w czekanie."~ */
  IF ~~ THEN REPLY #10459 /* ~"Dobrze. Odpowiedz mi na kilka pytań."~ */ GOTO 10
  IF ~~ THEN REPLY #10460 /* ~"Powodzenia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0
  SAY #10461 /* ~"Więc, oni... wybacz, *my* - muszę do tego przywyknąć! - wierzymy, że najważniejsza w życiu jest Sprawiedliwość. Wierzę, że życie bez sprawiedliwości nie ma sensu, a pozbawieni sensu życia, równie dobrze możemy je sobie odebrać. Nie chcę odbierać sobie życia, więc doszedłem do wniosku, że sprawiedliwość ma sens. Jeśli chcesz dowiedzieć się więcej, trzeba ci zapytać jednego z tych dwóch, albo znaleźć innego z naszych rekrutów. Będą do ciebie gadać, aż ci uszy odpadną!"~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10462 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 12
  IF ~~ THEN REPLY #10463 /* ~"Mógłbym to zrobić. Najpierw zechciej odpowiedzieć mi na kilka pytań."~ */ GOTO 10
  IF ~~ THEN REPLY #10464 /* ~"Wystarczy. Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.1 4.1 5.0 6.0 7.0 8.0 9.1 11.0 12.0
  SAY #10465 /* ~"Co chcesz wiedzieć?"~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10466 /* ~"Czy pojawił się już ten zabójca?"~ */ GOTO 8
  IF ~~ THEN REPLY #10467 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10468 /* ~"Szukam dziennika. Nie natknąłeś się ostatnio przypadkiem na jakiś?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10469 /* ~"Szukam Zbieracza o imieniu Farod. Nie wiesz przypadkiem, gdzie mogę go znaleźć?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10470 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 12
  IF ~~ THEN REPLY #10471 /* ~"Kim są twoi przyjaciele?"~ */ GOTO 5
  IF ~~ THEN REPLY #10472 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 6
  IF ~~ THEN REPLY #10473 /* ~"Co robisz?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10474 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.2 2.3 10.3
  SAY #10475 /* ~"Nie mogę powiedzieć, żebym o nim słyszał. Jest przestępcą? Może pogadamy o nim później... Dziękuję za informację, obywatelu."~ */
  IF ~~ THEN REPLY #10476 /* ~"Po prostu muszę go znaleźć, nie chcę go zabijać. Możesz odpowiedzieć mi na kilka pytań?"~ */ GOTO 10
  IF ~~ THEN REPLY #10477 /* ~"Cała przyjemność po mojej stronie. Jeśli go złapiesz, to daj mi wcześniej znać, nim go zabijesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.3 2.4 9.0 10.4
  SAY #10478 /* ~"Vhailor? Wydaje mi się, że kiedyś był Łaskobójcą. Jeśli mi się uda, chce być kiedyś taki jak on. Słyszałem, że krwawnik był praktycznie jak bóg!"~ */
  IF ~~ THEN REPLY #10479 /* ~"Bez wątpienia jest dla ciebie inspiracją. Możesz odpowiedzieć mi na kilka pytań?"~ */ GOTO 10
  IF ~~ THEN REPLY #10480 /* ~"Rozumiem. Dziękuję."~ */ EXIT
END
