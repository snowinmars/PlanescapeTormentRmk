// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR6~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38107 /* ~Nic już nie można zrobić. Wspomnienia odeszły, by nigdy nie wrócić. Z każdą śmiercią tracę część siebie.~ */
  IF ~~ THEN REPLY #53738 /* ~Kontynuuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53739 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53740 /* ~Jak można być nieśmiertelnym, a mimo to umierać?~ */
  IF ~~ THEN REPLY #53741 /* ~Kontynuuj.~ */ GOTO 2
  IF ~~ THEN REPLY #53742 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53743 /* ~Powiedział mi, że każda śmierć osłabia mój umysł. Zapytałem się go jak to możliwe, ale mi nie odpowiedział. Na nic się nie przydał. Zarżnąłem go, aby inne inkarnacje nigdy nie skorzystały z jego bezużyteczności.~ */
  IF ~  Global("Inscr_6","GLOBAL",0)
~ THEN REPLY #53744 /* ~Obejrzyj płytę.~ */ GOTO 3
  IF ~~ THEN REPLY #53745 /* ~Nie ruszaj płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53746 /* ~Inskrypcja wykonana jest prymitywnie i umniejsza fachowość wykonania samej płyty. Po bliższym przyjrzeniu się, wydaje ci się, że płyta może wchodzić w ścianę.~ */
  IF ~~ THEN REPLY #53747 /* ~Wciśnij płytę.~ */ DO ~SetGlobal("Inscr_6","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53748 /* ~Nie ruszaj płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53749 /* ~Płyta wchodzi w ścianę, a w sarkofagu za tobą słychać stuknięcie.~ */
  IF ~~ THEN REPLY #53750 /* ~Odwróć się od inskrypcji.~ */ EXIT
END
