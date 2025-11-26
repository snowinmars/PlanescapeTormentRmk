// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWM~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61241 /* ~Vidíš zaneprázdněného dělníka. Tvůj příchod ani nevzal na vědomí.~ */
  IF ~~ THEN REPLY #61242 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #61243 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61244 /* ~"Je mi líto, ale mám oravdu moc práce. Neruš mne prosím." Odvrátil se od tebe.~ */
  IF ~~ THEN REPLY #61245 /* ~Odejdi.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61246 /* ~Vidíš zaneprázdněného dělníka. "Nemám na povídání čas. Pokud potřebuješ poomoc, jdi za dozorcem." Odvrátil se.~ */
  IF ~~ THEN REPLY #61247 /* ~Odejdi.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61248 /* ~Vidíš zaneprázdněného dělníka. Zamračil se když jsi přistoupil. "Vodpal troubo. Nemám na kecání čas." Ignoruje tě.~ */
  IF ~~ THEN REPLY #61249 /* ~Odejdi.~ */ EXIT
END
