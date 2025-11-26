// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR7~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38109 /* ~Mówią - zostałeś podzielony. Jesteś złożony z wielu ludzi. Nosisz wiele imion, a każde z nich zostawiło na tobie bliznę.~ */
  IF ~~ THEN REPLY #53751 /* ~Kontynuuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53752 /* ~Odwróć się od napisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53753 /* ~ZAGUBIONY... NIEŚMIERTELNY... OSTATNIA INKARNACJA... CZŁOWIEK TYSIĄCA ŚMIERCI... SKAZANY NA ŻYCIE... NIESPOKOJNY... JEDEN Z WIELU... WIĘZIEŃ ŻYCIA... TEN KTÓRY SPROWADZA CIENIE... ZRANIONY... PRZYNOSZĄCY NIESZCZĘŚCIE... YEMET...~ */
  IF ~~ THEN REPLY #53754 /* ~Kontynuuj.~ */ GOTO 2
  IF ~~ THEN REPLY #53755 /* ~Odwróć się od napisu.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53756 /* ~Zaczyna mnie to nużyć.~ */
  IF ~  Global("Inscr_7","GLOBAL",0)
~ THEN REPLY #53757 /* ~Obejrzyj płytę.~ */ GOTO 3
  IF ~~ THEN REPLY #53758 /* ~Nie dotykaj płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53759 /* ~Płyta jest wspaniale wykonana, bez wątpienia przez mistrza. Wygląda na to, że może wchodzić w ścianę.~ */
  IF ~~ THEN REPLY #53760 /* ~Wciśnij płytę.~ */ DO ~SetGlobal("Inscr_7","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53761 /* ~Nie dotykaj płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53762 /* ~Z sykiem płyta wchodzi w ścianę. W sarkofagu za sobą słyszysz stuknięcie.~ */
  IF ~~ THEN REPLY #53763 /* ~Odwróć się od inskrypcji.~ */ EXIT
END
