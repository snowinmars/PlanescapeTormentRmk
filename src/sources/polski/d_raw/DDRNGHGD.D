// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHGD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from: 3.0
  SAY #38492 /* ~"Sssss... Krwisssta issstoto. Nie ma tu dla ciebie miejsssca."~ */
  IF ~~ THEN REPLY #38493 /* ~"Czym się zajmujesz?"~ */ GOTO 1
  IF ~~ THEN REPLY #38494 /* ~"Co to za miejsce?"~ */ GOTO 2
  IF ~~ THEN REPLY #38495 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #38496 /* ~"Pójdę w taki razie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #38497 /* ~"Prowadzimy poszszukiwania, by powiększszyć naszsz dom. Pozbyć sssię wrogów... Znaleźć jedzenie, byśśśmy nie musssieli obgryzać chodzącego mięsssa, rozumieszszsz? Milczący Król powiedział nam... żadnego chodzącego mięsssa."~ */
  IF ~~ THEN REPLY #38498 /* ~"Kim jest Milczący Król?"~ */ GOTO 4
  IF ~~ THEN REPLY #38499 /* ~"Co to za miejsce?"~ */ GOTO 2
  IF ~~ THEN REPLY #38500 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #38501 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 5.1
  SAY #38502 /* ~"To? To Zatopione Ziemie. Naszszsze nowe terytorium łowieckie. To... To naszsza ssspiżarnia."~ */
  IF ~~ THEN REPLY #38503 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.0 5.2
  SAY #38504 /* ~"Poszszukiwaczami jesssteśśmy, zwiadowcami Ziem Umarłych."~ */
  IF ~~ THEN REPLY #38505 /* ~"Czego poszukujecie?~ */ GOTO 0
  IF ~~ THEN REPLY #38506 /* ~"Rozumiem. Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #38507 /* ~"Ssss!" Ghul syczy ze złością. "Milczący Król to naszsz władca. Akasta to naszsza przywódczyni! Już niedługo znajdziemy między nimi równowagę!"~ */
  IF ~~ THEN REPLY #38508 /* ~"Tak w ogóle to kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #38509 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #38510 /* ~"Sss... Mięssso wróciło..."~ */
  IF ~~ THEN REPLY #38511 /* ~"Czym się zajmujesz?"~ */ GOTO 1
  IF ~~ THEN REPLY #38512 /* ~"Co to za miejsce?"~ */ GOTO 2
  IF ~~ THEN REPLY #38513 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #38514 /* ~"Pójdę w takim razie. Żegnaj."~ */ EXIT
END
