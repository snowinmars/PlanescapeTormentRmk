// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_LDGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_LDGR~

IF ~  NumTimesTalkedTo(0)
RandomNum(2,1)
~ THEN BEGIN 0 // from:
  SAY #67947 /* ~"Co to.. Já *vím*, že jsem za sebou zamknul! Vypadni odsaď!"~ */
  IF ~~ THEN REPLY #67948 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #67949 /* ~"Možná je to moje chyba, že jsem zapomněl zamknout ty zatracený dveře... ale byl bych radši, kdybys nebyl v mé místnosti. Pryč. Prosím." Mávl ke dveřím.~ */
  IF ~~ THEN REPLY #67950 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #67951 /* ~Zlostně na tebe zírá a ukazuje ke dveřím, není ochoten říct ti ani jedno slovo.~ */
  IF ~~ THEN REPLY #67952 /* ~Odejdi.~ */ EXIT
END
