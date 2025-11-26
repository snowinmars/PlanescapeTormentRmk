// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAMSEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAMSEL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2207 /* ~Widzisz urodziwą, młodą kobietę. Włosy ma rozwichrzone i rozdartą górną część sukienki. Rozgląda się wzrokiem pełnym zdesperowania i dostrzega ciebie.~ */
  IF ~~ THEN REPLY #2208 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #2209 /* ~Zignoruj ją.~ */ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0
  SAY #51524 /* ~Podbiega do ciebie i chwyta cię za ramię. Zauważasz, że przód jej sukienki pokryty jest krwią. "Pomóż mi, śmiałku! Proszę! Mordują moją siostrę!" Zaczyna ciągnąć cię za ramię.~ */
  IF ~~ THEN REPLY #51525 /* ~"Kto?"~ */ GOTO 2
  IF ~~ THEN REPLY #51526 /* ~"Pomogę ci. Zaprowadź mnie do niej."~ */ GOTO 12
  IF ~~ THEN REPLY #51527 /* ~"Nie mam na to czasu. Żegnaj."~ */ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51528 /* ~Rozgląda się wokół dziko. "Ten pijak z którejś z karczm, który szedł za nami... Sądziliśmy, że nie miał zamiaru nas krzywdzić... Proszę, śmiałku, nie ma chwili do stracenia! Pomóż nam!"~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #51529 /* ~"Chwila. Najpierw powiedziałaś, że *oni* mordują twoją siostrę. Teraz zaś mówisz, że *on*. Jak to jest?"~ */ GOTO 3
  IF ~~ THEN REPLY #51530 /* ~"Dlaczego ją zaatakował?"~ */ GOTO 10
  IF ~~ THEN REPLY #51531 /* ~"Pomogę ci. Zaprowadź mnie do niej."~ */ GOTO 12
  IF ~~ THEN REPLY #51532 /* ~"Nie mam na to czasu. Żegnaj."~ */ GOTO 13
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51533 /* ~Spogląda na ciebie, niepewna, co powiedzieć. "Ja... Ja nie wiem, co mówię... Pomyliłam się." Zerka na krwawe plamy na swej sukience. "Proszę, pomóż mi, śmiałku!"~ */
  IF ~~ THEN REPLY #51534 /* ~Przyjrzyj się plamom krwi na jej sukience.~ */ GOTO 4
  IF ~~ THEN REPLY #51535 /* ~"Nie mam na to czasu. Żegnaj."~ */ GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.0
  SAY #51536 /* ~Spoglądasz na jej sukienkę i przyglądasz się plamom krwi. Mimo iż wydają się być prawdziwe, wyschły już całkowicie. Muszą mieć już z parę godzin.~ */
  IF ~~ THEN REPLY #51537 /* ~"Ta krew ma już kilka godzin... Co tu jest grane?"~ */ GOTO 5
  IF ~~ THEN REPLY #51538 /* ~"Nie, muszę już iść. Żegnaj."~ */ GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51539 /* ~Widzisz, jak jej wzrok wędruje na chwilę ku plamom krwi, po czym ponownie kieruje się w twoją stronę. Sądzisz, że wyczuwasz w jej głosie nutkę niepokoju. "Mylisz się, śmiałku. Proszę, pomóż mi! Moja siostra leży umierająca, kiedy my tu zwlekamy!"~ */
  IF ~~ THEN REPLY #51540 /* ~Prawda: "Kombinujesz coś. Powiedz mi, co jest grane, albo cię zabiję."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Damsel_1","GLOBALGood",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51541 /* ~Blef: "Kombinujesz coś. Powiedz mi, co jest grane, albo cię zabiję."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Damsel_1","GLOBALLaw",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51542 /* ~"Nie mam na to czasu. Żegnaj."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #51543 /* ~Spogląda ci w oczy, po czym przygląda się bliznom pokrywającym twe ciało. Przełyka nerwowo ślinę i robi się blada. "Mam... Mam za zadanie zwabiać ludzi do pobliskiej alejki. Oni tam czekają... by zabrać twój brzdęk..." Spogląda na ciebie przepełniona obawą.~ */
  IF ~~ THEN REPLY #51544 /* ~"Dam ci pewną radę..."~ */ GOTO 7
  IF ~~ THEN REPLY #51545 /* ~"Zjeżdżaj stąd i więcej się tu nie pokazuj..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51546 /* ~Wpatruje się w ciebie w milczeniu, po czym przytakuje.~ */
  IF ~~ THEN REPLY #51547 /* ~"Nie obieraj sobie kogoś takiego jak ja za swój cel. Wybierz jakiegoś pijaczynę, który - tak jak ty - nigdy w życiu nie widział żadnej bitwy..."~ */ GOTO 8
  IF ~~ THEN REPLY #51548 /* ~"Mniejsza z tym. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51549 /* ~Obdarza cię pojedynczym, niechętnym skinięciem głowy.~ */
  IF ~~ THEN REPLY #51550 /* ~"I upewnij się, że wygląda on na takiego, który wart jest więcej niż garść miedziaków. Teraz zjeżdżaj stąd."~ */ GOTO 9
  IF ~~ THEN REPLY #51551 /* ~"Mniejsza z tym. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #51552 /* ~Przytakuje niechętnie, po czym cofa się. Przez chwilę się waha, po czym odwraca się. by odejść. "Dziękuję, śmiałku." Zaczyna uciekać pędem.~ */
  IF ~~ THEN REPLY #51553 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #51554 /* ~"Kiedy odkryła, że nie ma on ani grosza, powiedziała, że się z nim nie prześpi. Wtedy on wyciągnął nóż..." Spogląda na przód swej sukienki i ponownie szarpie cię za ramię.~ */
  IF ~~ THEN REPLY #51555 /* ~Przyjrzyj się plamom krwi na jej sukience.~ */ GOTO 4
  IF ~~ THEN REPLY #51556 /* ~"Nie mam na to czasu. Żegnaj."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY #51557 /* ~"Proszę, śmiałku, nie ignoruj mnie. Potrzebuję pomocy!"~ */
  IF ~~ THEN REPLY #51558 /* ~"Czego chcesz ode mnie?"~ */ GOTO 1
  IF ~~ THEN REPLY #51559 /* ~Ignoruj ją w dalszym ciągu.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 1.1 2.2
  SAY #51560 /* ~Na jej twarzy pojawia się uczucie ulgi. Chwyta cię za ramię. "Tędy, śmiałku."~ */
  IF ~~ THEN REPLY #51561 /* ~Pójdź za nią.~ */ DO ~SetGlobal("Damsel_Ambush","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 2.3 3.1 4.1 5.2 10.1 11.1
  SAY #51562 /* ~Gdy odchodzisz, kobieta wciąż płacze i wzywa pomocy.~ */
  IF ~~ THEN REPLY #51563 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END
