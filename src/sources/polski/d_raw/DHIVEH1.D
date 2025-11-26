// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1542 /* ~Widzisz mężczyznę w starym, postrzępionym ubraniu. Gdy podchodzisz, zmienia kierunek tak, by móc cię ominąć.~ */
  IF ~~ THEN REPLY #1549 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #1548 /* ~"Hej! Poczekaj chwilę!"~ */ GOTO 1
  IF ~~ THEN REPLY #1550 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1543 /* ~Mężczyzna nie zwraca na ciebie uwagi. Przyśpiesza.~ */
  IF ~~ THEN REPLY #1551 /* ~"Proszę pana?"~ */ GOTO 2
  IF ~~ THEN REPLY #1552 /* ~"Hej! Poczekaj chwilę!"~ */ GOTO 2
  IF ~~ THEN REPLY #1553 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #1544 /* ~Odwraca się, patrząc w lewo i prawo, jak gdyby sprawdzał, czy jesteś sam. Wyciąga nóż. "Lepiej daj mi spokój, albo będziesz miał stal między żebrami!"~ */
  IF ~~ THEN REPLY #1554 /* ~"Uspokój się. Mam tylko parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #1555 /* ~Zaatakuj go.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1556 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1557 /* ~Śmieje się. "Jestem pewien, że tak, ale nie gadam z takimi jak ty. Szpicuj się!"~ */
  IF ~~ THEN REPLY #1558 /* ~Zaatakuj go.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1559 /* ~"Żegnaj więc."~ */ EXIT
END
