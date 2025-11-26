// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48991 /* ~Vidíš vykrmenou ženskou, která dělá svou práci. Vůbec si nevšimla, že jsi vešel do místnosti.~ */
  IF ~~ THEN REPLY #48993 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #48994 /* ~Nechej ženu být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48995 /* ~"Zase ty... vidím, že se tvé způsoby nezlepšily."~ */
  IF ~~ THEN REPLY #48996 /* ~"Hmm... tak sem jsem nechtěl."~ */ GOTO 4
  IF ~~ THEN REPLY #48997 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48998 /* ~"Co děláš v mém domě? Copak nemáš žádné způsoby? Nemůžeš jenom tak vlézt někomu do domu!"~ */
  IF ~~ THEN REPLY #48999 /* ~"Omlouvám se. Nevěděl jsem, že tady někdo žije."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49000 /* ~"No a teď to víš. Prosím odejdi hned a zavři dveře, zvenku. Mám spoustu práce a uklízení, které musím dokončit co nejdřív a nepotřebuju, aby mě pořád někdo otravoval. Přeju ti dobrý den."~ */
  IF ~~ THEN REPLY #49001 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49002 /* ~"Tak jdi někam, kam chceš jít a nech mě na pokoji."~ */
  IF ~~ THEN REPLY #49003 /* ~"Sbohem."~ */ EXIT
END
