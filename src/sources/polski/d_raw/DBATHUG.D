// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2826 /* ~"Kim ty, na Otchłań, jesteś? Idź porozmawiać ze Zgniłym Williamem - jeśli jemu nie spodobają się twoje odpowiedzi, to cię potnie. Nie pogadasz z nim, to potniemy cię my. Idź!"~ */
  IF ~~ THEN REPLY #3550 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3551 /* ~"Moce nad nami! Czy nie mówiłem ci, żebyś porozmawiał ze Zgniłym Williamem? Ty głupi, głupi trepie. KOSY Z MROCZNEJ ALEI! ATAKOWAĆ!"~ */
  IF ~~ THEN REPLY #3552 /* ~Uciekaj.~ */ EXIT
  IF ~~ THEN REPLY #3553 /* ~Zaatakuj.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3554 /* ~"Zabiłeś tego strażnika? Dobrze. On nam naprawdę nieźle bruździł. Porozmawiaj z Williamem - on da ci coś miłego."~ */
  IF ~~ THEN REPLY #3555 /* ~Odejdź.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3556 /* ~"Przestań ze mną gadać i pozbądź się tego śmierdzącego strażnika! Nasze życia wiszą na włosku, skurlu!"~ */
  IF ~~ THEN REPLY #3557 /* ~Odejdź.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3558 /* ~"Wiedziałem, że ta stanowiąca sama dla siebie prawo dziewka kiedyś zostanie skopana. Idź porozmawiać ze Zgniłym Williamem. On ma ci coś do powiedzenia."~ */
  IF ~~ THEN REPLY #3559 /* ~Odejdź.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3560 /* ~"Czy nie masz zbyt dużo miejsca, żeby zabijać?"~ */
  IF ~~ THEN REPLY #3561 /* ~Odejdź.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3562 /* ~"To ty! Giń! KOSY Z MROCZNEJ ALEI! ATAKOWAĆ!"~ */
  IF ~~ THEN REPLY #3563 /* ~Zaatakuj.~ */ DO ~Enemy()
SetGlobal("0301_Bad_Angry","AR0301",1)
~ EXIT
  IF ~~ THEN REPLY #3564 /* ~Uciekaj.~ */ EXIT
END
