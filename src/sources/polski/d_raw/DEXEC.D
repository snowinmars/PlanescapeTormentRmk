// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEXEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DEXEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57394 /* ~Ten wielki mężczyzna zdaje się kompletnie ignorować otoczenie. Ziewa, gdy podchodzisz, czyści z brudu - albo z krwi - paznokcie.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57395 /* ~"Ten człowiek to tylko kozioł ofiarny. Jeśli zostanie stracony, to pogłębi to tylko chaos, który strącił to miasto do Tartaru. Musimy przerwać to szaleństwo, byśmy mogli przywrócić Klątwę na jej miejsce... zanim *wszyscy* zginiemy."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57396 /* ~"Ten człowiek to tylko kozioł ofiarny. Jeśli zostanie stracony, to pogłębi to tylko chaos, który strącił to miasto do Tartaru. Musimy przerwać to szaleństwo, byśmy mogli przywrócić Klątwę na jej miejsce... zanim *wszyscy* zginiemy."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57397 /* ~"Ten człowiek to tylko kozioł ofiarny. Jeśli zostanie stracony, to pogłębi to tylko chaos, który strącił to miasto do Tartaru. Musimy przerwać to szaleństwo, byśmy mogli przywrócić Klątwę na jej miejsce... zanim *wszyscy* zginiemy."~ */ GOTO 1
  IF ~~ THEN REPLY #57398 /* ~"Nie możesz stracić tego człowieka - to tylko kozioł ofiarny. To złe. Właśnie przez takie rzeczy Klątwa stoczyła się do Tartaru... i dlatego musimy ściągnąć Miasto-Bramę z powrotem do Zewnętrznych Sfer."~ */ GOTO 1
  IF ~~ THEN REPLY #57399 /* ~"Stój: nie pozwolę ci stracić tego człowieka."~ */ GOTO 2
  IF ~~ THEN REPLY #57400 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #57401 /* ~Ucina zanim zaczniesz. "Pogadaj z sędzią, śmiałku. Pogadaj z sędzią." Wraca do czyszczenia brudnych paznokci.~ */
  IF ~~ THEN REPLY #57402 /* ~"Nie, mówię do *ciebie*. Nie stracisz tego człowieka."~ */ GOTO 2
  IF ~~ THEN REPLY #57403 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.0
  SAY #57404 /* ~Na chwilę podnosi wzrok znad paznokci. "Jak sędzia każe zabić tego człowieka, to go zabiję... a to, czy będę musiał po tobie przejść, by to zrobić, zależy tylko od *ciebie*, śmiałku. Powinieneś pogadać z sędzią."~ */
  IF ~~ THEN REPLY #57405 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57406 /* ~Kat o rękach pokrytych świeżą krwią obdarza cię znudzonym spojrzeniem. "Wszystko się kręci, śmiałku. Nic co powiesz nie zrobi wielkiej różnicy. Ruszaj się."~ */
  IF ~~ THEN REPLY #57407 /* ~Odejdź.~ */ EXIT
END
