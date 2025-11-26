// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34211 /* ~Ten szaro-biały kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje światłem. Kiedyś na jego podstawie coś była napisane, ale czas zniszczył inskrypcję.~ */
  IF ~~ THEN REPLY #54102 /* ~Odejdź.~ */ DO ~SetGlobal("Grace_Quest_Answer","GLOBAL",1)
~ JOURNAL #66702 /* ~Pod Przybytkiem znalazłem ukrytą komnatę, w której znajdowało się parę lśniących kamieni... Bądźmy zresztą dokładni, było ich tam dziesięć. Jeden z nich był wszakże 'niezapisany'. Coś kiedyś napisano na jego podstawie, ale potem inskrypcję tę usunięto.~ */ EXIT
END
