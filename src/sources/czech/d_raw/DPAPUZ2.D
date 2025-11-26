// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ2~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49588 /* ~Vypadá to, že Dabus tuto budovu právě opravoval. Několik novějších a pevnějších prken bylo přibito přes stará. Se správným nářadím by bylo možno opravy vrátit zpět.~ */
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #49590 /* ~Použij páčidlo na uvolnění prken.~ */ DO ~SetGlobal("Alley_Puzzle_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49589 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49593 /* ~Jedno po druhém jsi vypáčil nová prkna od průčelí budovy. Jak odpadla poslední fošna, stavba vydala hlasitý skřípot, jak se její váha vratce přesunula na teď už nepodpíranou kostru.~ */
  IF ~~ THEN REPLY #49603 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #58919 /* ~Zchátralá budova asi brzy spadne. Na několika místech v poslední době někdo přibil desky, aby podpořil chátrající strukturu.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #58920 /* ~Prozkoumej budovu blíž.~ */ GOTO 0
  IF ~~ THEN REPLY #58921 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #58922 /* ~Zchátraná budova vypadá, že se brzy zřítí. Desky, které na ni přibil dabus byly odstraněny, takže je chatrč zase v původním zříceném stavu.~ */
  IF ~~ THEN REPLY #58923 /* ~Odejdi.~ */ EXIT
END
