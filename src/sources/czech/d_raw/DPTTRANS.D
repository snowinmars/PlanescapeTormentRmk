// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTTRANS~

IF ~  NumInPartyGT(1)
~ THEN BEGIN 0 // from:
  SAY #38940 /* ~Jak otevíráš bránu, studený vítr vane dovnitř. Začínáš se třást, když slyšíš zvuk šeptajícího hlasu, ačkoliv nerozumíš, co to říká. V sekundě to pomine a všude je ticho... Uvědomíš si, že jsi zde byl již dříve a máš silný pocit, že tvoji společníci tě nemusí následovat.~ */
  IF ~~ THEN REPLY #38951 /* ~"Jdu sám. Počkej na mě tady venku."~ */ EXIT
END
