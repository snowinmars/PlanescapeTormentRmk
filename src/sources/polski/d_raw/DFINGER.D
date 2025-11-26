// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINGER~

IF ~  Global("Finger","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #17479 /* ~Jest to poważnie nadgniła i prawie pozbawiona ciała kość palca, pochodząca z jakiegoś humanoida twojego mniej więcej wzrostu. Coś w rodzaju dziwacznego pierścienia wciąż widnieje na palcu. Jest to rzecz intrygująca, rzeźbiona na dziesiątki maleńkich, ozdobnych kryz i dekoracyjnych wypukłości.~ */
  IF ~~ THEN REPLY #17485 /* ~Zsuń pierścień z palca.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #17486 /* ~Odłóż kość z pierścieniem.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ EXIT
END

IF ~  Global("Finger","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17480 /* ~Wyjmujesz starą kość, aby przyjrzeć jej się dokładniej. Jest to poważnie nadgniła i prawie pozbawiona ciała kość palca, pochodząca z jakiegoś humanoida twojego mniej więcej wzrostu. Coś w rodzaju dziwacznego pierścienia wciąż widnieje na palcu. Jest to rzecz intrygująca, rzeźbiona na dziesiątki maleńkich, ozdobnych kryz i dekoracyjnych wypukłości.~ */
  IF ~~ THEN REPLY #17487 /* ~Zsuń pierścień z palca.~ */ GOTO 2
  IF ~~ THEN REPLY #17488 /* ~Odłóż kość z pierścieniem.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17481 /* ~Próbujesz z całych sił, ale nie jesteś w stanie zdjąć pierścienia. Wydaje się, jakby ostre brzegi pierścienia wpiły się w sam martwy palec i nie chciały się oderwać. Masz jednak jakieś dziwne uczucie...~ */
  IF ~  HPLT(Protagonist,5)
~ THEN REPLY #17489 /* ~Usuń własny palec, a w jego miejsce wstaw kość.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 3
  IF ~  HPGT(Protagonist,4)
~ THEN REPLY #17490 /* ~Usuń własny palec, a w jego miejsce wstaw kość.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 4
  IF ~~ THEN REPLY #17491 /* ~Odłóż kość z pierścieniem.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17482 /* ~Wkładasz sobie do ust palec serdeczny lewej ręki, zamykasz oczy, bierzesz głęboki oddech i wgryzasz się w palec jak najgłębiej potrafisz. Rozlega się przyprawiające o mdłości *chrupnięcie*. Wszędzie czujesz smak i zapach krwi. Niestety, twój organizm był już w takim stanie, że nie mógł znieść więcej bólu. Padasz na ziemię i umierasz.~ */
  IF ~~ THEN REPLY #17492 /* ~Już po wszystkim.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #17483 /* ~Wkładasz sobie do ust palec serdeczny lewej ręki, zamykasz oczy, bierzesz głęboki oddech i wgryzasz się w palec jak najgłębiej potrafisz. Rozlega się przyprawiające o mdłości *chrupnięcie*. Wszędzie czujesz smak i zapach krwi. Wypluwasz odgryziony palec, a do tryskającego krwią kikuta przykładasz ten nadgniły, na którym znajduje się pierścień...~ */
  IF ~~ THEN REPLY #17493 /* ~Nie przestawaj...~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17484 /* ~Początkowo nic się nie dzieje. Przeraża cię myśl o tym, co właśnie się stało. Nagle jednak czujesz dziwne uczucie mrowienia. Kości zaczynają się zrastać, a ścięgna ponownie się spajają. Po kilku chwilach gnijąca kość staje się żywą cząstką twojego ciała, mimo że wciąż boleśnie cię rwie. Postrzępiony pierścień nagle obluzowuje się i ześlizguje prosto do twych dłoni...~ */
  IF ~~ THEN REPLY #17494 /* ~Już po wszystkim.~ */ DO ~TransformPartyItem("Finger","Jring",1,0,0)
~ EXIT
END
