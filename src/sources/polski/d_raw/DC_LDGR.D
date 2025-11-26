// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_LDGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_LDGR~

IF ~  NumTimesTalkedTo(0)
RandomNum(2,1)
~ THEN BEGIN 0 // from:
  SAY #67947 /* ~"A cóż to? Wydawało mi się, że zamknąłem drzwi wejściowe na klucz! Wyjdź stąd, dobrze?"~ */
  IF ~~ THEN REPLY #67948 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #67949 /* ~"Słuchaj, może to faktycznie moja własna i przeklęta wina, że zapomniałem zamknąć za sobą drzwi na klucz, ale, jakby tu powiedzieć, lepiej byłoby, żebyś sobie stąd poszedł. Odejdź proszę." Człowiek wymownie wskazuje na drzwi.~ */
  IF ~~ THEN REPLY #67950 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #67951 /* ~Człowiek patrzy na ciebie wściekle i bez słowa wskazuje na drzwi. Nietrudno się domyślić, że chce, abyś jak najszybciej znalazł się po drugiej stronie.~ */
  IF ~~ THEN REPLY #67952 /* ~Odejdź.~ */ EXIT
END
