// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DESPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DESPEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53634 /* ~Osoba je velice naštvaná, že odvádíš její pozornost od soudu a popravy, která se tady koná. "Jo?"~ */
  IF ~~ THEN REPLY #57408 /* ~"Co se to tady děje?"~ */ GOTO 1
  IF ~~ THEN REPLY #57409 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57410 /* ~"Ohromná, hnusná, krvavá poprava, pokud bude po *našem*." Šklebí se.~ */
  IF ~~ THEN REPLY #57411 /* ~"Co obžalovaný udělal?"~ */ GOTO 2
  IF ~~ THEN REPLY #57412 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57413 /* ~Pokrčil rameny. "Koho to zajímá? Vinen, vinen, vinen! Jinak nebude krev prolitá!" Promnul si nadšeně ruce.~ */
  IF ~~ THEN REPLY #57414 /* ~"Odsoudíte muže k smrti pro *zábavu*?"~ */ GOTO 3
  IF ~~ THEN REPLY #57415 /* ~"Správně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57416 /* ~Zakroutil očima. "Já nikoho neodsuzuju, vole - to dělá soudce. Jestli s tím máš nějakej problém, promluv si s ním. A teď mě nech být."~ */
  IF ~~ THEN REPLY #57417 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #57418 /* ~Znuděně se na tebe podíval. "Nech mě na pokoji, jo? Na nic ti neodpovím, zbytečně marníš čas."~ */
  IF ~~ THEN REPLY #57419 /* ~Odejdi.~ */ EXIT
END
