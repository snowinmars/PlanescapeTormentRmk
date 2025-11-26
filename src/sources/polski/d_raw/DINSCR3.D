// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38101 /* ~Niezmiernie ważne jest, abyś zapisywał swe doświadczenia i wyciągał z nich wnioski. Jeszcze ważniejsze jest jednak, abyś chronił źródła wiadomości, które pomagają ci rozwiązać tę tajemnicę. Jeśli kluczowe postacie, dokumenty, lub przepowiednie zostaną w jakiś sposób usunięte, czy to przez śmierć czy zniszczenie, wtedy nigdy nie dowiesz się kim jesteś i skąd się wziąłeś.~ */
  IF ~  Global("Inscr_3","GLOBAL",0)
~ THEN REPLY #53707 /* ~Obejrzyj płytę.~ */ GOTO 1
  IF ~~ THEN REPLY #53708 /* ~Odwróć się od inskrypcji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53709 /* ~Została wykonana z wielkim kunsztem. Płyta umieszczona jest w ścianie z precyzją, jaką mógł osiągnąć tylko mistrz rzemiosła. Wydaje ci się, że można ją jeszcze bardziej wcisnąć w ścianę.~ */
  IF ~~ THEN REPLY #53710 /* ~Wciśnij płytę.~ */ DO ~SetGlobal("Inscr_3","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53711 /* ~Odjedź od płyty.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53712 /* ~Pod wpływem lekkiego nacisku płyta wchodzi w ścianę. W sarkofagu za sobą słyszysz stuknięcie.~ */
  IF ~~ THEN REPLY #53713 /* ~Odwróć się od inskrypcji.~ */ EXIT
END
