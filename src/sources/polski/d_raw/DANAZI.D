// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAZI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAZI~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #3024 /* ~Widzisz chorą kobietę githzerai. Jest ona zgarbiona i zgięta, a jej ciągły kaszel jest najwyraźniej dla niej bolesny - trzyma przy twarzy chusteczkę prawie ociekającą krwią i flegmą. Dostrzega cię i syczy.~ */
  IF ~~ THEN REPLY #3025 /* ~"Witaj."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42426 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42427 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42428 /* ~"Nie mam do ciebie pytań. Żegnaj."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #42429 /* ~An'azi mruga w twoją stronę, jej mgliste oczy wilgotnieją, a ona syczy kilka słów w stronę Dak'kona.~ */
  IF ~~ THEN REPLY #42430 /* ~"Co ona powiedziała?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ EXTERN ~DDAKKON~ 132
  IF ~~ THEN REPLY #42431 /* ~"Zabij ją, Dak'konie. Niech ją to zaboli."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DDAKKON~ 126
  IF ~~ THEN REPLY #42432 /* ~"Dak'konie, zakończ jej cierpienia. Najwyraźniej ból jest dla niej zbyt wielki, a ona nie przeżyje wiele dłużej."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DDAKKON~ 130
  IF ~~ THEN REPLY #42433 /* ~"Spadajmy stąd, Dak'konie. Pożegnaj się."~ */ EXTERN ~DDAKKON~ 128
  IF ~~ THEN REPLY #42434 /* ~Zakończ jej cierpienia.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #42435 /* ~Dźgnij ją dla zabawy.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_2","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 0.3
  SAY #42436 /* ~Wpatruje się w ciebie i wypowiada kilka niewyraźnych słów w stronę Dak'kona.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 124
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 3 // from:
  SAY #42467 /* ~Widzisz chorą kobietę githzerai. Jest ona zgarbiona i zgięta, a jej ciągły kaszel jest najwyraźniej dla niej bolesny - trzyma przy twarzy chusteczkę prawie ociekającą krwią i flegmą. Dostrzega cię i syczy.~ */
  IF ~~ THEN REPLY #42468 /* ~"Witaj."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42469 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42470 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42471 /* ~"Czy potrzebujesz leczenia? Czy jest coś, co mogę dla ciebie uczynić?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #42472 /* ~"Co z tobą?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #42473 /* ~"Nie mam do ciebie pytań. Żegnaj."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 4 // from:
  SAY #42474 /* ~Stara kobieta wygląda, o ile to w ogóle możliwe, jeszcze gorzej niż przedtem. Próbuje syczeć w twoją stronę, ale przerywa jej atak krwawego kaszlu.~ */
  IF ~~ THEN REPLY #42475 /* ~"Czy potrzebujesz leczenia? Czy jest coś, co mogę dla ciebie uczynić?"~ */ GOTO 6
  IF ~~ THEN REPLY #42476 /* ~"Co z tobą?"~ */ GOTO 9
  IF ~~ THEN REPLY #42477 /* ~"Czy byłoby możliwe, abyś odpowiedziała na kilka moich pytań?"~ */ GOTO 7
  IF ~~ THEN REPLY #42478 /* ~"Żegnaj, stara kobieto."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 3.2 3.5
  SAY #42479 /* ~Kaszle i kaszle, wypełniając mokrą chusteczkę skrzepami krwi. Jej oczy wpatrują się w ciebie z wrogością.~ */
  IF ~~ THEN REPLY #42480 /* ~"Czy potrzebujesz leczenia? Czy jest coś, co mogę dla ciebie uczynić?"~ */ GOTO 6
  IF ~~ THEN REPLY #42481 /* ~"Co z tobą?"~ */ GOTO 9
  IF ~~ THEN REPLY #42482 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3 4.0 5.0
  SAY #42483 /* ~Kobieta kaszle. Odprawia cię gestem ręki. Zawija się w szmaty, najwyraźniej życząc sobie, aby dano jej umrzeć samotnie.~ */
  IF ~~ THEN REPLY #42484 /* ~"Czy coś cię boli? Czy jest *cokolwiek*, co można dla ciebie zrobić?"~ */ GOTO 7
  IF ~~ THEN REPLY #42485 /* ~Daj jej kilka monet.~ */ GOTO 8
  IF ~~ THEN REPLY #42486 /* ~"Słuchaj, tylko odpowiedz mi na kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #42487 /* ~"Zatem dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.0 6.2
  SAY #42488 /* ~Kobieta wykasłuje kilka zdań w języku, którego nie znasz, i zgina się wpół w agonii, gdy kolejny atak kaszlu dopada jej ciało.~ */
  IF ~~ THEN REPLY #42489 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #42490 /* ~Wybija monety z twojej ręki, rozsypując je po ulicy. Ponownie cicho na ciebie syczy.~ */
  IF ~~ THEN REPLY #42491 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.1 5.1
  SAY #42492 /* ~Wykonuje w powietrzu słaby gest. Wskazuje w stronę Kuźni, potem na śmieci, sterty węgla, aż w końcu na swoją klatkę piersiową. Jakby dla podkreślenia jej słów, kolejny dopada ją atak kaszlu i pokrywa jej usta krwią.~ */
  IF ~~ THEN REPLY #42493 /* ~"Czy to smog?"~ */ GOTO 10
  IF ~~ THEN REPLY #42494 /* ~"Czy mogę ci zaoferować jakiekolwiek leczenie?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42495 /* ~Przytakuje i ponownie kaszle.~ */
  IF ~~ THEN REPLY #42496 /* ~"Czy mogę ci zaoferować jakiekolwiek leczenie?"~ */ GOTO 11
  IF ~~ THEN REPLY #42497 /* ~"Zatem nic nie mogę dla ciebie uczynić. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #42498 /* ~Jej oczy tężeją, gdy wskazuje na twoją broń, a potem na siebie.~ */
  IF ~~ THEN REPLY #42499 /* ~"Chcesz, żebym cię zabił?"~ */ GOTO 12
  IF ~~ THEN REPLY #42500 /* ~"Nie zrobię tego dla ciebie. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #42501 /* ~Kiwa głową tak mocno, jak tylko jest w stanie i płaci za to okrutnym atakiem kaszlu. Stanowczo wskazuje palcem na twoją broń. Jej pożółkłe oczy nie okazują strachu.~ */
  IF ~~ THEN REPLY #42502 /* ~"Zatem dobrze. Życzę ci szczęścia w przyszłym życiu."~ */ GOTO 14
  IF ~~ THEN REPLY #42503 /* ~"Nie zrobię tego dla ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 12.1 14.1
  SAY #42504 /* ~W chwili, gdy się od niej odwracasz, spluwa zakrwawioną gulą flegmy pod twoje stopy.~ */
  IF ~~ THEN REPLY #42505 /* ~Zostaw ją w spokoju.~ */ EXIT
  IF ~~ THEN REPLY #42506 /* ~Zabij ją.~ */ DO ~AddexperienceParty(4000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.4 1.5 12.0
  SAY #42507 /* ~Odważnie, bez lęku, oczekuje morderczego uderzenia.~ */
  IF ~~ THEN REPLY #42508 /* ~Zakończ jej cierpienia.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #42509 /* ~"Nie mogę tego dla ciebie uczynić."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42510 /* ~Szybkim cięciem pozbawiasz ją życia. Jej ciało zwija się i opada na twardą ulicę - ale w jakiś sposób wygląda na wdzięczną.~ */
  IF ~~ THEN REPLY #42511 /* ~"Żegnaj, githzerai."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill(Myself)
~ JOURNAL #67286 /* ~Zabiłem dzisiaj w Niższej Dzielnicy chorą kobietę githzerai. Miała duże kłopoty z oddychaniem ciężkim powietrzem Dzielnicy i nie obawiała się śmierci.~ */ EXIT
END
