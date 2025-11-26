// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR8~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38111 /* ~Obawiaj się imion. Imiona mają władzę nad tożsamością. Mogą posłużyć innym jako broń. Są jak ślad, dzięki któremu można wytropić cię poprzez sfery. Pozostań bezimienny, a będziesz bezpieczny.~ */
  IF ~~ THEN REPLY #53764 /* ~Kontynuuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53765 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53766 /* ~Jestem Bezimienny.~ */
  IF ~  Global("Inscr_8","GLOBAL",0)
~ THEN REPLY #53767 /* ~Obejrzyj płytę.~ */ GOTO 2
  IF ~~ THEN REPLY #53768 /* ~Odwróć się od napisu.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53769 /* ~Płyta jest wspaniale zrobiona. Wydaje ci się, że może wchodzić w ścianę.~ */
  IF ~~ THEN REPLY #53770 /* ~Wciśnij płytę.~ */ DO ~SetGlobal("Inscr_8","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53771 /* ~Nie dotykaj płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53772 /* ~Nie wydając żadnego dźwięku płyta wchodzi w ścianę. W sarkofagu za sobą słyszysz stuknięcie.~ */
  IF ~~ THEN REPLY #53773 /* ~Odwróć się od inskrypcji.~ */ EXIT
END
