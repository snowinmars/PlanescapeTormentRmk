// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38099 /* ~Ta inskrypcja wygląda jak wskazówki na twoich plecach, które Morte przeczytał ci w kostnicy:

Wiem, że czujesz się jak gdybyś władował w siebie kilka baryłek wody ze Styksu, ale musisz się WZIĄĆ W GARŚĆ. Masz przy sobie DZIENNIK, który powinien trochę rozjaśnić sprawę. Resztę śpiewki usłyszysz od FARODA, chyba że już go wpisali do Księgi Umarłych.~ */
  IF ~~ THEN REPLY #53675 /* ~Kontynuuj. To odświeża ci pamięć.~ */ GOTO 1
  IF ~  Global("Inscr_2","GLOBAL",0)
~ THEN REPLY #53676 /* ~Nie zwracaj uwagi na resztę inskrypcji i obejrzyj płytę.~ */ GOTO 3
  IF ~~ THEN REPLY #53677 /* ~Odwróć się od napisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53678 /* ~Nie zgub dziennika bo znowu popłyniemy w górę Styksu. I cokolwiek robisz, NIE MÓW nikomu, KIM jesteś, ani CO się z tobą dzieje, bo inaczej wylądujesz w krematorium. Rób co ki każę: PRZECZYTAJ dziennik, a potem odszukaj FARODA.~ */
  IF ~  Global("Morte_Warning","GLOBAL",0)
~ THEN REPLY #53679 /* ~Kontynuuj.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Morte_Warning","GLOBAL",1)
~ THEN REPLY #53680 /* ~Kontynuuj.~ */ GOTO 5
  IF ~~ THEN REPLY #53681 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53682 /* ~Ku twemu zaskoczeniu, jest tam jeszcze jedno zdanie - takie, którego nie przeczytał ci Morte: 'Nie ufaj czaszce'.~ */
  IF ~~ THEN REPLY #53683 /* ~Obejrzyj płytę.~ */ GOTO 3
  IF ~~ THEN REPLY #53684 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 2.0 5.0
  SAY #53685 /* ~Płyta zrobiona jest w ten sposób, że może wchodzić w ścianę.~ */
  IF ~~ THEN REPLY #53686 /* ~Wciśnij płytę.~ */ DO ~SetGlobal("Inscr_2","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53687 /* ~Nie dotykaj płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53688 /* ~Płyta lekko wchodzi w ścianę. W sarkofagu za tobą słyszysz stuknięcie.~ */
  IF ~~ THEN REPLY #53689 /* ~Odwróć się od napisu.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #53690 /* ~Jest jeszcze jedno zdanie: 'Nie ufaj czaszce'.~ */
  IF ~~ THEN REPLY #53691 /* ~Obejrzyj płytę.~ */ GOTO 3
  IF ~~ THEN REPLY #53692 /* ~Odwróć się od napisu.~ */ EXIT
END
