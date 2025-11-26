// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43000 /* ~Ta osoba wpatruje się uważnie w metalową płytę, przymocowaną do ściany komnaty. Po chwili wielkiej koncentracji wymachuje rękoma i wypowiada ciąg imponująco brzmiących 'tajemnych sylab'... wszystko na próżno. Mimo to, dalej pilnie ćwiczy, zbytnio zajęta tym co robi, żeby z tobą porozmawiać.~ */
  IF ~~ THEN REPLY #43001 /* ~Odejdź.~ */ EXIT
END
