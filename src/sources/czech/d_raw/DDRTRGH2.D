// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH2~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38622 /* ~"Zabij pro náss troca, ano a ssebereš jeho penízze. My vzzít jeho jídlo. Líbí tobě, ano?"~ */
  IF ~~ THEN REPLY #38623 /* ~"Co je to za tvora?"~ */ GOTO 1
  IF ~~ THEN REPLY #38636 /* ~"Jistě."~ */ GOTO 4
  IF ~~ THEN REPLY #38637 /* ~"To si nemyslím."~ */ GOTO 3
  IF ~~ THEN REPLY #38638 /* ~"Co je s tvým přítelem?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #38624 /* ~"Trocopotoca. Líbí sse ti? Nám nelíbit, ne... děssivé a odporné monsstrum. Nemít náss rádi. Tento... hlídá tělo co my chtít. Zabiješ to?"~ */
  IF ~~ THEN REPLY #38625 /* ~"Co je s tvým přítelem?"~ */ GOTO 2
  IF ~~ THEN REPLY #38632 /* ~"Zabiju to."~ */ GOTO 4
  IF ~~ THEN REPLY #38635 /* ~"Nechám tě to udělat."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3 1.0
  SAY #38626 /* ~"To ne přítel! Chvasstoun! Velký ghúl! Nebát sse ničeho, říká! Vidíš, jak sse blíží k trocovi? Ne! On zzbabělec! Zabij ho a ukaž mu, kdo být sstatečný!"~ */
  IF ~~ THEN REPLY #38627 /* ~"Co to vlastně je?"~ */ GOTO 1
  IF ~~ THEN REPLY #38628 /* ~"Fajn. Zabiju to."~ */ GOTO 4
  IF ~~ THEN REPLY #38631 /* ~"Ne, myslím že ne."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.2
  SAY #38629 /* ~"Sssss... bezzccené masso! Jdi!"~ */
  IF ~~ THEN REPLY #38630 /* ~"Dobře."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #38633 /* ~"Mé díky... ty vzzít peníze až to umřít."~ */
  IF ~~ THEN REPLY #38634 /* ~"Dohodnuto"~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38639 /* ~"Proč ty nezzabít troco? Troco mussí zemřít! Zzabij to!"~ */
  IF ~~ THEN REPLY #38640 /* ~"Tak já jdu."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38641 /* ~"Cco... cco tě ssem přivádí zzpět, bláznivé masso? Zzemři!" Hrozivá příšera se na tebe vrhla!~ */
  IF ~~ THEN REPLY #38642 /* ~Bojuj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #38643 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38644 /* ~"Cco... cco tě ssem přivádí zzpět, bláznivé masso? Zzemři!" Hrozivá příšera se na tebe vrhla!~ */
  IF ~~ THEN REPLY #38645 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38646 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38647 /* ~"Vezzmi ssi ssvé cennosti, tak? Vezzmi je a jdi, masitá věci."~ */
  IF ~~ THEN REPLY #38648 /* ~"Co je ta věc?"~ */ GOTO 9
  IF ~~ THEN REPLY #38651 /* ~"Dohodnuto."~ */ GOTO 10
  IF ~~ THEN REPLY #38652 /* ~"Ne když ty zemřeš jako první."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38649 /* ~"Trocopotoca, ano? Tobě líbí? Nám nelíbit, ne... sssstrašlivé a podlé monsstrum. Nemít náss rádi. Teď mrtvý, ano?"~ */
  IF ~~ THEN REPLY #38650 /* ~"Není zač. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38653 /* ~"Vezzmi ssi to a jdi... my mussíme jísst."~ */
  IF ~~ THEN REPLY #38654 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #67831 /* ~"Užžžž zzzpátky? Jdi. My jíme."~ */
  IF ~~ THEN REPLY #67832 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END
