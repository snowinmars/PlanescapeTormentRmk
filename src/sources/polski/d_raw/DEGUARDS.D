// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEGUARDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DEGUARDS~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57421 /* ~Strażnik odwraca się, gdy podchodzisz, ale nie wydaje z siebie żadnego dźwięku. Przez szczeliny w hełmie możesz dostrzec dwoje otępiałych, apatycznych oczu.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57422 /* ~"Ten człowiek to tylko kozioł ofiarny. Jeśli zostanie stracony to pogłębi to tylko chaos, który zepchnął to miejsce do Tartaru. Musimy przerwać to szaleństwo, byśmy mogli przywrócić Klątwę na jej miejsce... zanim *wszyscy* zginiemy."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57423 /* ~"Ten człowiek to tylko kozioł ofiarny. Jeśli zostanie stracony to pogłębi to tylko chaos, który zepchnął to miejsce do Tartaru. Musimy przerwać to szaleństwo, byśmy mogli przywrócić Klątwę na jej miejsce... zanim *wszyscy* zginiemy."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57424 /* ~"Ten człowiek to tylko kozioł ofiarny. Jeśli zostanie stracony to pogłębi to tylko chaos, który zepchnął to miejsce do Tartaru. Musimy przerwać to szaleństwo, byśmy mogli przywrócić Klątwę na jej miejsce... zanim *wszyscy* zginiemy."~ */ GOTO 1
  IF ~~ THEN REPLY #57425 /* ~"Nie możesz dopuścić, by ten człowiek został stracony - to tylko kozioł ofiarny. To nie w *porządku*. To przez takie rzeczy Klątwa upadła do Tartaru... jeśli chcemy, by miasto wróciło do Zewnętrznych Krain to musimy to powstrzymać."~ */ GOTO 1
  IF ~~ THEN REPLY #57426 /* ~"Nie możesz pozwolić, by ten człowiek został stracony."~ */ GOTO 1
  IF ~~ THEN REPLY #57427 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.4
  SAY #57428 /* ~Strażnik wzrusza tylko ramionami.~ */
  IF ~~ THEN REPLY #57429 /* ~"Nie interesuje cię to? Nie widzisz co tu się dzieje?"~ */ GOTO 2
  IF ~~ THEN REPLY #57430 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57431 /* ~W odpowiedzi strażnik pociąga nosem.~ */
  IF ~~ THEN REPLY #57432 /* ~"Dobrze... znajdę kogoś innego."~ */ EXIT
  IF ~~ THEN REPLY #57433 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57434 /* ~Wygląda na to, że ten apatyczny strażnik uparł się, że będzie cię całkowicie ignorował.~ */
  IF ~~ THEN REPLY #57435 /* ~Odejdź.~ */ EXIT
END
