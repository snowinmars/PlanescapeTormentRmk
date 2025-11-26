// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHGD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from: 3.0
  SAY #38492 /* ~"Sssss... tvore z massa, toto není míssto pro tebe."~ */
  IF ~~ THEN REPLY #38493 /* ~"Co tady děláš?"~ */ GOTO 1
  IF ~~ THEN REPLY #38494 /* ~"Co je tohle místo zač?"~ */ GOTO 2
  IF ~~ THEN REPLY #38495 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #38496 /* ~"Pak tedy půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #38497 /* ~"Snažíme se rozzšířit naše domovy. Zzneškodnit nepřátele... nalézzt jídlo, abychom nemusseli žvýkat chodící masso, ano ano? Tichý Král nám říká... žádné chodící maso."~ */
  IF ~~ THEN REPLY #38498 /* ~"Kdo je ten Tichý Král?"~ */ GOTO 4
  IF ~~ THEN REPLY #38499 /* ~"Co je tohle za místo?"~ */ GOTO 2
  IF ~~ THEN REPLY #38500 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #38501 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 5.1
  SAY #38502 /* ~"Tohle? Tohle jssou Přemožené národy. Tohle je naše nové lovecké doupě. Tohle... tohle je naše spižírna."~ */
  IF ~~ THEN REPLY #38503 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.0 5.2
  SAY #38504 /* ~"Jssme Sskauti, průzkumníci Mrtvých Národů."~ */
  IF ~~ THEN REPLY #38505 /* ~"A co prozkoumáváte?"~ */ GOTO 0
  IF ~~ THEN REPLY #38506 /* ~"Aha. Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #38507 /* ~"Ssss!" Ghúlka zasyčela zklamáním. "Tichý král je náš vládce. Acaste je náší vůdkyní! Brzy nalezzneme rovnováhu mezzi těmi dvěma!"~ */
  IF ~~ THEN REPLY #38508 /* ~"A kdo vlastně jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #38509 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #38510 /* ~"Ssss... masso sse vrátilo..."~ */
  IF ~~ THEN REPLY #38511 /* ~"Co tady děláš?"~ */ GOTO 1
  IF ~~ THEN REPLY #38512 /* ~"Co je tohle za místo?"~ */ GOTO 2
  IF ~~ THEN REPLY #38513 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #38514 /* ~"Pak tedy půjdu. Sbohem."~ */ EXIT
END
