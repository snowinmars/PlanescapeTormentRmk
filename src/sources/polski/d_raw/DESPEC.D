// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DESPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DESPEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53634 /* ~Ta osoba zdaje się być zirytowana tym, że przeszkadzasz im w wydaniu wyroku i wykonaniu egzekucji, która zaraz będzie tu miała miejsce. "Tak?"~ */
  IF ~~ THEN REPLY #57408 /* ~"Co tu się dzieje?"~ */ GOTO 1
  IF ~~ THEN REPLY #57409 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57410 /* ~"Wielka, paskudna, krwawa egzekucja, o ile odbędzie się to tak, jak my tego chcemy." Uśmiecha się i kilkakrotnie unosi brwi.~ */
  IF ~~ THEN REPLY #57411 /* ~"Co uczynił oskarżony?"~ */ GOTO 2
  IF ~~ THEN REPLY #57412 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57413 /* ~Wzrusz ramionami. "Kogo to obchodzi? Winny, winny, winny, prawda? To jedyny sposób, abyśmy ujrzeli tu przelaną krew!" Zaciera ręce w oczekiwaniu.~ */
  IF ~~ THEN REPLY #57414 /* ~"Skazujesz człowieka na śmierć dla *zabawy*?"~ */ GOTO 3
  IF ~~ THEN REPLY #57415 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57416 /* ~Wywraca oczami. "Ja nie skazuję *nikogo*, trepie - to zadanie sędziego. Jak masz z tym jakiś problem, to porozmawiaj z nim. A teraz mnie zostaw."~ */
  IF ~~ THEN REPLY #57417 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #57418 /* ~Ta osoba mierzy cię tylko przelotnym, znudzonym spojrzeniem. "Zostaw mnie w spokoju, dobrze? Nie odpowiem na twoje pytania, więc po prostu odejdź."~ */
  IF ~~ THEN REPLY #57419 /* ~Odejdź.~ */ EXIT
END
