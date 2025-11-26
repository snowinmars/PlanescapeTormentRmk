// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR~

IF ~  Global("RChaser","AR0400",0)
!Dead("Adyzoel")
~ THEN BEGIN 0 // from:
  SAY #15496 /* ~Ten brudny, przyodziany w tunikę człowiek chodzi wkoło, ostrożnie się rozglądając. Zauważasz, że nigdy nie oddala się za bardzo od młodego szlachcica, znajdującego się obok. Człowiek spostrzega, że się mu przyglądasz i pospiesznie się oddala.~ */
  IF ~~ THEN REPLY #15520 /* ~"Witaj..."~ */ DO ~SetGlobal("Rchaser","AR0400",1)
~ GOTO 1
  IF ~~ THEN REPLY #15521 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15497 /* ~Człowiek odwraca się w twoją stronę z szeroko otwartymi ze strachu oczami. Zauważasz, że jego twarz pokryta jest ropiejącymi ranami. Nad jego głową krążą leniwie tłuste, czarne muchy. "Nie rób mi krzywdy, panie... nic nie wiem, niczego nie mam!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15522 /* ~"Nie musisz się maskować. Wiem czym jesteś, biesie."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15523 /* ~"Doszły mnie słuchy, że jesteś czymś więcej niż na to wyglądasz."~ */ GOTO 20
  IF ~~ THEN REPLY #15524 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #15525 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #15498 /* ~Człowiek cofa się znacznie, potykając się przy tym i bełkocze: "Ależ... rzekłem ci panie... nic nie wiem! Nic!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15526 /* ~"Nie musisz się maskować. Wiem czym jesteś, biesie."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15527 /* ~"Doszły mnie słuchy, że jesteś czymś więcej niż na to wyglądasz."~ */ GOTO 20
  IF ~~ THEN REPLY #15528 /* ~"Zobaczymy. Będziesz mówić?"~ */ GOTO 3
  IF ~~ THEN REPLY #15529 /* ~"Dobrze więc, idź. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #15499 /* ~"Ano... po... pogadam z tobą panie..." Zaciera nerwowo ręce, odganiając od czasu do czasu muchy, które usiadły na jego ranach.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15530 /* ~"Nie musisz się maskować. Wiem czym jesteś, biesie."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15531 /* ~"Doszły mnie słuchy, że jesteś czymś więcej niż na to wyglądasz."~ */ GOTO 20
  IF ~~ THEN REPLY #15532 /* ~"Kim jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #15533 /* ~"Co tu robisz?"~ */ GOTO 9
  IF ~~ THEN REPLY #15534 /* ~"Opowiedz mi o tej okolicy."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15535 /* ~"Szukam kogoś o imieniu Farod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15536 /* ~"Szukam dziennika, który mi zginął. Nie widziałeś go przypadkiem?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 5.0 6.1 7.0 8.1 9.2 10.1 11.2 12.2 13.1 14.1 15.0 16.2 20.2 21.0
  SAY #15500 /* ~Mężczyzna kiwa głową z wielkim strachem. "Wszytko, mój panie... jeno pytaj..."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15537 /* ~"Nie musisz się maskować. Wiem czym jesteś, biesie."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15538 /* ~"Doszły mnie słuchy, że jesteś czymś więcej niż na to wyglądasz."~ */ GOTO 20
  IF ~~ THEN REPLY #15539 /* ~"Kim jesteś?"~ */ GOTO 8
  IF ~~ THEN REPLY #15540 /* ~"Co tu robisz?"~ */ GOTO 9
  IF ~~ THEN REPLY #15541 /* ~"Opowiedz mi o tej okolicy."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15542 /* ~"Szukam kogoś o imieniu Farod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15543 /* ~"Szukam dziennika, który mi zginął. Nie widziałeś go przypadkiem?"~ */ GOTO 5
  IF ~~ THEN REPLY #15544 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.6
  SAY #15501 /* ~"Nic takiego mój panie, nic. Przysięgam!" Wyciąga przed siebie puste ręce, pozwalając na ich sprawdzenie.~ */
  IF ~~ THEN REPLY #15545 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15546 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.5 4.5
  SAY #15502 /* ~Mężczyzna potrząsa głową. "Ni, nie znam go, mój panie."~ */
  IF ~~ THEN REPLY #15547 /* ~"Jesteś pewien? Z tego, co wiem, to Zbieracz."~ */ GOTO 7
  IF ~~ THEN REPLY #15548 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15549 /* ~"Mniejsza więc o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #15503 /* ~"Co? Och! Działam samotnie mój panie, doprawdy. Żadnych przyjaciół, żadnych wspólników..."~ */
  IF ~~ THEN REPLY #15550 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15551 /* ~"Mniejsza więc o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.2
  SAY #15504 /* ~"Ja? Jestem Malric, mój panie. Ale, uch... zwą mnie Szczękołapem."~ */
  IF ~~ THEN REPLY #15552 /* ~"Dlaczego?"~ */ GOTO 9
  IF ~~ THEN REPLY #15553 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15554 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.3 8.0
  SAY #15505 /* ~"Och... podążam za tym krwawnikiem." Ruchem głowy wskazuje dostojnego człowieka stojącego nieopodal, który zauważa go i z pogardą marszczy brwi, po czym na powrót odwraca wzrok. "Sprzątam po nim, jeśli wiesz, o co mi chodzi. Ciała."~ */
  IF ~~ THEN REPLY #15555 /* ~"Dlaczego to robisz?"~ */ GOTO 10
  IF ~~ THEN REPLY #15556 /* ~"Kto to jest?"~ */ GOTO 11
  IF ~~ THEN REPLY #15557 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15558 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1
  SAY #15506 /* ~"Ja, ech, sprzedaję truposzy w Kostnicy, Grabarzom. No wiesz, za brzdęk. Jeśli umarli samotnie, bez przyjaciół, sprzedaję również to, co mieli przy sobie."~ */
  IF ~~ THEN REPLY #15559 /* ~"Kim jest ten dostojny człowiek?"~ */ GOTO 11
  IF ~~ THEN REPLY #15560 /* ~"Mam jeszcze inne pytania."~ */ GOTO 4
  IF ~~ THEN REPLY #15561 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #15507 /* ~"Kto, on? Nie wim, mój panie. Przywędrował pewnego dnia, zaczął szukać guza... wyzywa przeciwników na 'pojedynki'. Nie rozmawiam z nim, wiesz... tylko odciągam truposzy. Być może mógłbyś, ech, zapytać go..."~ */
  IF ~~ THEN REPLY #15562 /* ~"Jest zatem dobrym wojownikiem?"~ */ GOTO 12
  IF ~~ THEN REPLY #15563 /* ~"Dlaczego odciągasz ciała?"~ */ GOTO 10
  IF ~~ THEN REPLY #15564 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15565 /* ~"Być może. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15566 /* ~Człowiek kiwa głową. "Och, ano... nie jestem sędzią, wiesz, ale on wydaje się bardzo groźny. Nie stanąłbym z nim do pojedynku, jeśli o to ci chodzi..."~ */
  IF ~~ THEN REPLY #15567 /* ~"Uważasz, że jest lepszy ode mnie?"~ */ GOTO 14
  IF ~~ THEN REPLY #15568 /* ~"Jak on walczy? Za pomocą miecza? Magii?"~ */ GOTO 13
  IF ~~ THEN REPLY #15569 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15570 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.0
  SAY #15509 /* ~"Ech... zakrzywionym mieczem mój panie, mieczem. Jest to całkiem ciekawy przedmiot, a on wykonuje nim całkiem fantazyjne ruchy. Jest szybki, porusza się jak w tańcu." Człowiek przyjmuje lichą postawę szermierczą, wzbijając przy tym w górę rój podrażnionych much. "Ciach! Ciach! Ciach-ciach! I już jesteś martwy!" Kiwa głową.~ */
  IF ~~ THEN REPLY #15571 /* ~"Uważasz, że jest lepszy ode mnie?"~ */ GOTO 14
  IF ~~ THEN REPLY #15572 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15573 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #15510 /* ~Nagle przybiera wyraz zmartwionego. "Ech, nie! Nie to chciałem powiedzieć mój panie! Nie widziałem przecież jak walczysz. Być może mógłbyś, ech, spróbować z nim swoich sił. Przekonać się. Ale jeśliś nie dość dobry, on cię zabije. Jeśli chcesz, mogę przekazać Grabarzom twoje ostatnie życzenie. Na wypadek gdybyś, er... przegrał."~ */
  IF ~~ THEN REPLY #15574 /* ~"Jak on walczy? Za pomocą miecza? Magii?"~ */ GOTO 13
  IF ~~ THEN REPLY #15575 /* ~"Nie martw się tym. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15576 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4 4.4
  SAY #15511 /* ~"O Ulu, mój panie?" Mężczyzna drapie się w głowę poprzez kaptur i wzrusza ramionami. "Ul to Ul... ponure slumsy rozciągające się od jednego końca do drugiego. Nic więcej nie jestem ci w stanie powiedzieć, doprawdy."~ */
  IF ~~ THEN REPLY #15577 /* ~"Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15578 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",1)
!Dead("Adyzoel")
~ THEN BEGIN 16 // from:
  SAY #15512 /* ~Wygląda na to, że twoje nadejście przestraszyło tego człowieka, ale wkrótce wyraz jego pokrytej ranami twarzy zdradza, że cię poznał.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15579 /* ~"Nie musisz się maskować. Wiem czym jesteś, biesie."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15580 /* ~"Witaj, Szczękołapie. Doszły mnie słuchy, że jesteś czymś więcej niż na to wyglądasz."~ */ GOTO 20
  IF ~~ THEN REPLY #15581 /* ~"Witaj, Szczękołapie. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15582 /* ~"Witaj, i żegnaj."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",0)
Dead("Adyzoel")
~ THEN BEGIN 17 // from:
  SAY #15513 /* ~Ten brudny, odziany w tunikę człowiek chodzi wkoło, ostrożnie rozglądając się naokoło. Spostrzega, że się mu przyglądasz i pospiesznie się oddala.~ */
  IF ~~ THEN REPLY #15583 /* ~"Witaj..."~ */ GOTO 18
  IF ~~ THEN REPLY #15584 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.2
  SAY #15514 /* ~Człowiek nagle ucieka, powodując ogólne poruszenie wśród much i poruszając gwałtownie brązowymi szatami!~ */
  IF ~~ THEN REPLY #15585 /* ~"Cholera..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Dead("Adyzoel")
~ THEN BEGIN 19 // from:
  SAY #15515 /* ~Człowiek dostrzega twoje nadejście i jego pokryta ranami twarz wykrzywia się ze zmartwienia. Zaczyna się od ciebie cofać.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15586 /* ~"Nie musisz się maskować. Wiem czym jesteś, biesie."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15589 /* ~"Doszły mnie słuchy, że jesteś czymś więcej niż na to wyglądasz."~ */ GOTO 20
  IF ~~ THEN REPLY #15590 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 18
  IF ~~ THEN REPLY #15591 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.1 3.1 4.1 16.1 19.1
  SAY #15516 /* ~"Ech? Co masz na myśli mój panie?" Zdaje się być naprawdę zmieszany.~ */
  IF ~~ THEN REPLY #15592 /* ~"Dlaczego sam mi tego nie powiesz, Szczękołapie."~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15593 /* ~"Wiesz co mam na myśli. Kim tak naprawdę jesteś?"~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15594 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15595 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15517 /* ~"Ja... ja nie wiem do czego zmierzasz mój panie... doprawdy! Czyż nie pomyliłeś mnie przez przypadek z kimś innym?"~ */
  IF ~~ THEN REPLY #15596 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #15597 /* ~Prawda: "Mów albo wyduszę z ciebie odpowiedź. kanalio!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rchasr_1","GLOBALGood",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15598 /* ~Blef: "Mów albo wyduszę z ciebie odpowiedź. kanalio!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rchasr_1","GLOBALLaw",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15599 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",3)
~ THEN BEGIN 22 // from:
  SAY #15518 /* ~W miarę jak podchodzisz do człowieka, na jego twarzy zaczyna się malować wyraz grozy; człowiek wydaje z siebie skomlenie i zaczyna się cofać.~ */
  IF ~~ THEN REPLY #15600 /* ~"Zaczekaj, mam kilka pytań..."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15601 /* ~Pozwól mu odejść.~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.0 2.0 3.0 4.0 16.0 19.0
  SAY #15519 /* ~Przygląda ci się w niemym przerażeniu.~ */
  IF ~~ THEN REPLY #15602 /* ~"A zatem?"~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("RChaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15603 /* ~"Nie bój się, nie chcę ci zrobić krzywdy."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("Rchaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15604 /* ~"Tak jak mi się wydawało."~ */ DO ~SetGlobal("RChaser","AR0400",3)
~ EXIT
END
