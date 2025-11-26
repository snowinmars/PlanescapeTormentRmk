// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63563 /* ~Vidíš mladíka se znuděným výrazem ve tváři. Tvůj příchod pro něj zůstal nezaznamenán.~ */
  IF ~~ THEN REPLY #63564 /* ~"Ahoj."~ */ GOTO 1
  IF ~~ THEN REPLY #63565 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63566 /* ~Na tvůj pozdrav nadskočil a obrátil se k tobě. "Co... Co chceš?"~ */
  IF ~~ THEN REPLY #63567 /* ~"Jenom zeptat se na pár věcí..."~ */ GOTO 2
  IF ~~ THEN REPLY #63568 /* ~"Nic. Vůbec nic."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63569 /* ~"Je mi líto. Mám moc práce." ~ */
  IF ~~ THEN REPLY #63570 /* ~"Bude tě to stát jenom chvíli času..."~ */ GOTO 3
  IF ~~ THEN REPLY #63571 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63572 /* ~"To mě nezajímá." Otočil se od tebe.~ */
  IF ~~ THEN REPLY #63573 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63574 /* ~Vidíš mladého muže. Dění okolo sebe věnuje minimální množství pozornosti. Na tvůj příchod pokýval hlavou.~ */
  IF ~~ THEN REPLY #63575 /* ~"Ahoj."~ */ GOTO 5
  IF ~~ THEN REPLY #63576 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63577 /* ~"Hoj. Přeji pěkný den." Prohlédl si tě.~ */
  IF ~~ THEN REPLY #63578 /* ~"Můžu se tě na něco zeptat?"~ */ GOTO 6
  IF ~~ THEN REPLY #63579 /* ~"To bude asi omyl, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63581 /* ~"Prosím ptej se."~ */
  IF ~~ THEN REPLY #63582 /* ~"Kdo jsi?"~ */ GOTO 7
  IF ~~ THEN REPLY #63583 /* ~"Co tady děláš?"~ */ GOTO 8
  IF ~~ THEN REPLY #63584 /* ~"Co mi můžeš říct o této čtvrti?"~ */ GOTO 9
  IF ~~ THEN REPLY #63585 /* ~"Je v této čtvri něco zajímavého?"~ */ GOTO 11
  IF ~~ THEN REPLY #63586 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63587 /* ~"Nikdo důležitý. Je tu ještě něco, na co se mě chceš zeptat?~ */
  IF ~~ THEN REPLY #63588 /* ~"Ano, mám ještě několik otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #63589 /* ~"Ani ne. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63590 /* ~"Pozoruju lidi. Mám rád dívat se ně, každý jsme jiný - mě to fascinuje."~ */
  IF ~~ THEN REPLY #63591 /* ~"Aha. Měl bych ještě pár ozázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #63592 /* ~"No, já už asi půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63593 /* ~"Moc ne. Chodím sem pozorovat lidi. Je tu všude spousta obchodů a to přitahuje širokou škálu lidí... Rád je pozoruji." Rozhlédl se.~ */
  IF ~~ THEN REPLY #63594 /* ~"Co všechno tu můžu koupit?"~ */ GOTO 10
  IF ~~ THEN REPLY #63595 /* ~"Díky. Ale, ještě něco..."~ */ GOTO 6
  IF ~~ THEN REPLY #63597 /* ~"Už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63598 /* ~Usmál se. "No... v podstatě cokoliv... zkus se porozhlédnout v obchodech."~ */
  IF ~~ THEN REPLY #63599 /* ~"Můžu se tě zeptat ještě na něco?"~ */ GOTO 6
  IF ~~ THEN REPLY #63600 /* ~"To už bude asi všechno. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63601 /* ~"Ó ano! Všichni ti lidé mě fascinují. Je jich tu opravdu mnoho, každý jiný... Ale škoda, že to moc lidí nezajímá..."~ */
  IF ~~ THEN REPLY #63602 /* ~"Hmm. Mám na tebe ještě pár dotazů..."~ */ GOTO 6
  IF ~~ THEN REPLY #63603 /* ~"Díky, měj se."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63604 /* ~Vidíš znepokojeně vypadajícího muže. Když ses k němu přiblížil, obštědřil tě otráveným pohledem.~ */
  IF ~~ THEN REPLY #63605 /* ~"Ahoj."~ */ GOTO 13
  IF ~~ THEN REPLY #63606 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63607 /* ~Znuděně se na tebe podíval. "Eh... Ahoj."~ */
  IF ~~ THEN REPLY #63608 /* ~"Mohl bych se tě na něco zeptat?"~ */ GOTO 14
  IF ~~ THEN REPLY #63609 /* ~"Hmm, tak já zase půjdu."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63610 /* ~"Hele, běž otravovat někoho jinýho." Zamračil se na tebe.~ */
  IF ~~ THEN REPLY #63611 /* ~"Nezabere to moc času."~ */ GOTO 15
  IF ~~ THEN REPLY #63612 /* ~"Jak myslíš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63613 /* ~Zamračil se ještě víc. "Vážně na tebe nemám náladu..."~ */
  IF ~~ THEN REPLY #63614 /* ~"Takže ty mi nepomůžeš?"~ */ GOTO 16
  IF ~~ THEN REPLY #63615 /* ~"Ach tak. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63616 /* ~Znechuceně se na tebe podíval a pak se od tebe odvrátil. "Beznadějný případ..."~ */
  IF ~~ THEN REPLY #63617 /* ~"Fajn, jak myslíš. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63618 /* ~Vidíš vyvolávajícího zákazníka. Gestem ti dal najevo, že s tebou nechce znovu mluvit.~ */
  IF ~~ THEN REPLY #63619 /* ~Odejdi.~ */ EXIT
END
