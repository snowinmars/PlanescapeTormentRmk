// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERFEM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66400 /* ~Vidíš znuděnou ženu. Hodila po tobě okem a pak se k tobě otočila zády.~ */
  IF ~~ THEN REPLY #66401 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #66402 /* ~Ignoruj jí.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66403 /* ~Povzdychla si a obrátila se k tobě. "Zdravím... Co chceš?"~ */
  IF ~~ THEN REPLY #66404 /* ~"Mám nějaké otázky"~ */ GOTO 2
  IF ~~ THEN REPLY #66405 /* ~"Nic, na tom nezáleží."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66406 /* ~Zamračila se ještě víc. "Nemám čas na otázky. Jdi si raději najít nějakého průvodce."~ */
  IF ~~ THEN REPLY #66407 /* ~"Zabere ti to jenom chviličku..."~ */ GOTO 3
  IF ~~ THEN REPLY #66408 /* ~"Tak v tom případě sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66409 /* ~"Pokouším se soustředit se na aukci. Nemám na tebe ani jednu chviličku." Odvrátila se od tebe.~ */
  IF ~~ THEN REPLY #66410 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66411 /* ~Vidíš mladou ženu. Vypadá docela vzrušeně. Když ses přiblížil, přejela po tobě pohledem a usmála se.~ */
  IF ~~ THEN REPLY #66412 /* ~"Zdravím."~ */ GOTO 5
  IF ~~ THEN REPLY #66413 /* ~Ignoruj jí.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66414 /* ~"Nazdárek, bouchači. Potřebuješ něco?"~ */
  IF ~~ THEN REPLY #66415 /* ~"Mám nějaké otázky"~ */ GOTO 6
  IF ~~ THEN REPLY #66416 /* ~"Ne, to nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66417 /* ~Zamračila se vzdychla. "Nechci o nic přijít, tak sebou pohni."~ */
  IF ~~ THEN REPLY #66418 /* ~"Kdo jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #66419 /* ~"Co to děláš?"~ */ GOTO 8
  IF ~~ THEN REPLY #66420 /* ~"Co se vlastně děje?"~ */ GOTO 9
  IF ~~ THEN REPLY #66421 /* ~"Je tady ve čtvrti něco zajímavého?"~ */ GOTO 11
  IF ~~ THEN REPLY #66422 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66423 /* ~"Někdo, kdo se pokouší sledovat aukci. Můžeš si prosím tě pospíšit?"~ */
  IF ~~ THEN REPLY #66424 /* ~"Dobrá tedy. Mám nějaké otázky"~ */ GOTO 6
  IF ~~ THEN REPLY #66425 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66426 /* ~"Zkouším dohazovat na jednoho ze služebníků. Támhle toho chlapa." Zaváhala. Začala se červenat. "No nic. Chceš ještě něco?"~ */
  IF ~~ THEN REPLY #66427 /* ~"Mám nějaké otázky"~ */ GOTO 6
  IF ~~ THEN REPLY #66429 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66430 /* ~"Ti lidé jsou usvědčení zločinci, kteří spáchali méně závažné zločiny, a kteří mají nějaký dluh. Jsou prodávání do služby, za utržené peníze se dluh uhradí."~ */
  IF ~~ THEN REPLY #66431 /* ~"Co se stane, když je dluh splacen?"~ */ GOTO 10
  IF ~~ THEN REPLY #66432 /* ~"Aha. Mám ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #66433 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66434 /* ~Usmála se. "No... je jim navrácen status normálního občana a jsou volní. Mohou znovu začít žít svůj život."~ */
  IF ~~ THEN REPLY #66435 /* ~"Aha. Mám ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #66436 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66437 /* ~"Jenom aukce, alespoň co se mě týká. Je tady ještě jeden vyvolávač, ale ten prodává jenom předměty. Možná bys ho ale měl navštívit."Usmála se.~ */
  IF ~~ THEN REPLY #66438 /* ~"Udělám to. Mám ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #66440 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66439 /* ~Vidíš přísně vyhlížející ženu. Pohlédla na tebe a pokusila se ti vyhnout.~ */
  IF ~~ THEN REPLY #66441 /* ~"Zdravím."~ */ GOTO 13
  IF ~~ THEN REPLY #66442 /* ~Ignoruj jí.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66443 /* ~Podrážděně se na tebe podívala. "No? Co chceš?"~ */
  IF ~~ THEN REPLY #66444 /* ~"Mám nějaké otázky"~ */ GOTO 14
  IF ~~ THEN REPLY #66445 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66446 /* ~Zamračila se na tebe. "Nemám zájem, zajdi si za někým, kdo ho má."~ */
  IF ~~ THEN REPLY #66447 /* ~"Zabere ti to jenom chviličku."~ */ GOTO 15
  IF ~~ THEN REPLY #66448 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66449 /* ~Zamračila se ještě více, její obočí se spojilo. "Řekla jsem, že nemám zájem. Jdi pryč."~ */
  IF ~~ THEN REPLY #66450 /* ~"Nemůžeš se na chviličku zdržet, abys někomu pomohla?"~ */ GOTO 16
  IF ~~ THEN REPLY #66451 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66452 /* ~Znechuceně se na tebe podívala. Odfrkla si a otáčí se pryč.~ */
  IF ~~ THEN REPLY #66453 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66454 /* ~Vidíš zákaznici aukce. Když ses s ní pokusil promluvit, mávla rukou, ať jdeš pryč.~ */
  IF ~~ THEN REPLY #66455 /* ~Odejdi.~ */ EXIT
END
