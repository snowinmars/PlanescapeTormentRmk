// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1545 /* ~Widzisz mężczyznę w starym, postrzępionym ubraniu. Gdy podchodzisz, zatrzymuje się i zaczyna gapić na ciebie.~ */
  IF ~~ THEN REPLY #1560 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #1561 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1546 /* ~"Masz jakiś *problem*, trepie...? A może *chcesz* mieć?" Pluje ci pod stopy. "Spadaj, nim przybędzie ci blizn."~ */
  IF ~~ THEN REPLY #1562 /* ~"Uspokój się. Mam tylko parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #1563 /* ~Zaatakuj go.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1564 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1547 /* ~Śmieje się. "Jestem pewien, że tak, ale nie gadam z takimi jak ty. Szpicuj się!"~ */
  IF ~~ THEN REPLY #1565 /* ~Zaatakuj go.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1566 /* ~"Żegnaj więc."~ */ EXIT
END
