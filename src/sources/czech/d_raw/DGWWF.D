// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWF~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61250 /* ~Vidíš zaneprázdněnou dělnici. Tvůj příchod ani nevzala na vědomí.~ */
  IF ~~ THEN REPLY #61251 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #61252 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61253 /* ~"Promiň zlato. Mám vážně moc práce. Nevyrušuj mě." Otočila se od tebe.~ */
  IF ~~ THEN REPLY #61254 /* ~Odejdi.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61255 /* ~Vidíš zaneprázdněnou dělnici. "Nemám tolik času, abych si s tebou mohla povídat fešáku. Jestli něco potřebuješ, jdi za dozorcem." Odvrátila se.~ */
  IF ~~ THEN REPLY #61256 /* ~Odejdi.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61257 /* ~Vidíš zaneprázdněnou dělnici. Zamračila se když jsi přišel blíž. "Jdi pryč. Nemám na bezduchý tlachaní čas." Ignoruje tě.~ */
  IF ~~ THEN REPLY #61258 /* ~Odejdi.~ */ EXIT
END
