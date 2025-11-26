// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERMALE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERMALE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66457 /* ~Vidíš mladého muže se znuděným výrazem na tváři. Když zaznamenal tvou přítomnost, kývl ti na pozdrav.~ */
  IF ~~ THEN REPLY #66458 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #66459 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66460 /* ~"Ano? Co chceš?"~ */
  IF ~~ THEN REPLY #66461 /* ~"Mám nějaké otázky"~ */ GOTO 2
  IF ~~ THEN REPLY #66462 /* ~"Nic, na tom nezáleží."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66463 /* ~"Hmm. No, nejsem zrovna dobře informovaná osoba. Měl bys jít za někým jiným."~ */
  IF ~~ THEN REPLY #66464 /* ~"Zabere ti to jenom chviličku..."~ */ GOTO 3
  IF ~~ THEN REPLY #66465 /* ~"Tak v tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66466 /* ~"No, stejně si myslím, že bys měl jít jinam." Otočil se k tobě zády.~ */
  IF ~~ THEN REPLY #66467 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66468 /* ~Vidíš mladého muže. Opatrně tě pozoruje.~ */
  IF ~~ THEN REPLY #66469 /* ~"Zdravím."~ */ GOTO 5
  IF ~~ THEN REPLY #66470 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66471 /* ~"Přeju ti dobrej den, kámo." Zadíval se na tvé jizvy. Na tváři se mu usadil znepokojený výraz.~ */
  IF ~~ THEN REPLY #66473 /* ~"Mám nějaké otázky"~ */ GOTO 6
  IF ~~ THEN REPLY #66474 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66475 /* ~"Hmm. Dobrá..."~ */
  IF ~~ THEN REPLY #66476 /* ~"Kdo jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #66477 /* ~"Co to děláš?"~ */ GOTO 8
  IF ~~ THEN REPLY #66478 /* ~"Můžeš mi říct, co se to tady děje?"~ */ GOTO 9
  IF ~~ THEN REPLY #66479 /* ~"Je v téhle čtvrti něco zajímavého?"~ */ GOTO 11
  IF ~~ THEN REPLY #66480 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66481 /* ~"Radši nic. No ptej se."~ */
  IF ~~ THEN REPLY #66482 /* ~"Dobrá tedy, mám nějaké otázky"~ */ GOTO 6
  IF ~~ THEN REPLY #66483 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66484 /* ~"Jenom sleduju aukci. Nemůžu si dovolit nic koupit, ale je to sranda, sledovat lidi, kteří tady jsou."~ */
  IF ~~ THEN REPLY #66485 /* ~"Aha. Mám nějaké otázky"~ */ GOTO 6
  IF ~~ THEN REPLY #66486 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66487 /* ~Než odpověděl, na chvíli se soustředil. Pak se zamyšlenou tváří promluvil: "No, to jsou lidi, kteří spáchali nějaké zločiny a někomu dluží prachy. Jelikož nemůžou zaplatit, tak jsou prodaní na čas do služby, aby se dluhy uhradily."~ */
  IF ~~ THEN REPLY #66488 /* ~"Tím myslíš, že jsou otroci?"~ */ GOTO 10
  IF ~~ THEN REPLY #66489 /* ~"Aha. Mám ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #66490 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66491 /* ~Pokrčil rameny. "Jo, asi jo... aspoň na čas. Většina lidí jim ale říká služebníci..."~ */
  IF ~~ THEN REPLY #66492 /* ~"Mám ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #66493 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66494 /* ~"Nah, ani prd. Život je tady vlastně docela nudnej. Proto chodím sem a sleduju aukce." Povzdychl si.~ */
  IF ~~ THEN REPLY #66495 /* ~"Hmm. Mám ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #66496 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66497 /* ~Vidíš dychtivě se tvářícího muže. Usmál se a zamával ti.~ */
  IF ~~ THEN REPLY #66498 /* ~"Zdravím."~ */ GOTO 13
  IF ~~ THEN REPLY #66499 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66500 /* ~"Nazdárek, bouchači. Co se děje?"~ */
  IF ~~ THEN REPLY #66501 /* ~"Mám nějaké otázky"~ */ GOTO 14
  IF ~~ THEN REPLY #66502 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66503 /* ~"Otázky? Oh... No, to potřebuješ turistickýho průvodce. Ne mně." Otočil se k tobě zády.~ */
  IF ~~ THEN REPLY #66504 /* ~"Nemůžeš mi odpovědět na pár otázek?"~ */ GOTO 15
  IF ~~ THEN REPLY #66505 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66506 /* ~"Ne, fakt ne. Nebaví mě dodávat rady bezradným." Usmál se.~ */
  IF ~~ THEN REPLY #66507 /* ~"Takže mi nepomůžeš?"~ */ GOTO 16
  IF ~~ THEN REPLY #66508 /* ~"Tak  sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66509 /* ~"Ne. Jdi si najít toho průvodce."~ */
  IF ~~ THEN REPLY #66510 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66511 /* ~Vidíš zákazníka aukce. Mávl na tebe, ať mu dáš pokoj.~ */
  IF ~~ THEN REPLY #66512 /* ~Odejdi.~ */ EXIT
END
