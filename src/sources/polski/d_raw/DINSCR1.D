// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38097 /* ~Ta resztka życia pozostała w świecie, wycieka przez dziurę w moim ciele. Niech spłonie świat, niech spłoną sfery, lecz dajcie mi życie! Zniszczę je całkowicie, złamię, rozbiję, splamię kałem i krwią, abyś też nie mógł go zaznać! Niech spłonie całość stworzenia gdyż umrzeć nie mogę!~ */
  IF ~  Global("Inscr_1","GLOBAL",0)
~ THEN REPLY #53654 /* ~Obejrzyj płytę.~ */ GOTO 1
  IF ~~ THEN REPLY #53652 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53656 /* ~Płyta wykonana jest w taki sposób, że może wchodzić w ścianę.~ */
  IF ~~ THEN REPLY #53657 /* ~Wciśnij płytę.~ */ DO ~SetGlobal("Inscr_1","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53658 /* ~Nie ruszaj płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53659 /* ~Wciskasz płytę, a ona z łatwością wchodzi w ścianę. W sarkofagu za sobą słyszysz stuknięcie.~ */
  IF ~~ THEN REPLY #53660 /* ~Odwróć się od inskrypcji.~ */ EXIT
END
