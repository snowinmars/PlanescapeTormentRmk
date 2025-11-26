// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH1~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38573 /* ~"Ssss... tvore z massa... trocopotoca náss drží pryč od pokladu, ano? Troco mussí zzemřít. Ty ssi nech cenossti. My ssi vezzmem tělo. Ano?"~ */
  IF ~~ THEN REPLY #38588 /* ~"Co je to za tvora?"~ */ GOTO 1
  IF ~~ THEN REPLY #38589 /* ~"Jistě."~ */ GOTO 2
  IF ~~ THEN REPLY #38590 /* ~"To si nemyslím."~ */ GOTO 3
  IF ~~ THEN REPLY #38591 /* ~"Co je s tvým přítelem?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #38592 /* ~"Je to trocopotoca. Bílý. Rohatý. Odporný. Trocové jísst masso. Naši nepřátelé. Zzabij to, ano?"~ */
  IF ~~ THEN REPLY #38593 /* ~"Co je s tvým přítelem?"~ */ GOTO 4
  IF ~~ THEN REPLY #38594 /* ~"Zabiju to."~ */ GOTO 2
  IF ~~ THEN REPLY #38595 /* ~"Nechám tě to udělat."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.1
  SAY #38596 /* ~"Ano... sskvělé. Ty ssi vzzít z těla cennossti. My vzzít masso. Jdi! Zabij!"~ */
  IF ~~ THEN REPLY #38597 /* ~"Už jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.2
  SAY #38598 /* ~"Sssss... neužitečný tvore z massa. Jdi pryč!"~ */
  IF ~~ THEN REPLY #38599 /* ~"Dobře."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.0
  SAY #38600 /* ~"Ha ha... zzbabělec jssi. Bát sse troca. Ha ha. Zabij to pro náss, ano?"~ */
  IF ~~ THEN REPLY #38601 /* ~"Co je to vůbec zač?"~ */ GOTO 1
  IF ~~ THEN REPLY #38602 /* ~"Dobrá. Zabiju to."~ */ GOTO 2
  IF ~~ THEN REPLY #38603 /* ~"Ne, myslím že ne."~ */ GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38604 /* ~"Ha ha... zzbabělec jssi. Bát sse troca. Ha ha. Zabij to pro náss, ano?"~ */
  IF ~~ THEN REPLY #38605 /* ~"Pak tedy odcházím."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38606 /* ~"Je mrtvý... je to tvá vina! Je mrtvý! Zemři, massso!" Ghúl na tebe zaútočil!~ */
  IF ~~ THEN REPLY #38607 /* ~Bojuj.
~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38608 /* ~Uteč.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38609 /* ~"Je mrtvý... je to tvá vina! Je mrtvý! Zemři, massso!" Ghúl na tebe zaútočil!~ */
  IF ~~ THEN REPLY #38610 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38611 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38612 /* ~"Ssss... troco být mrtvý... ty ssi vem cenossti, my vezzmem maso, ano?"~ */
  IF ~~ THEN REPLY #38613 /* ~"Co je ta věc?"~ */ GOTO 9
  IF ~~ THEN REPLY #38614 /* ~"Dohodnuto."~ */ GOTO 10
  IF ~~ THEN REPLY #38615 /* ~"Ne když chcípneš první."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38616 /* ~"To je trocopotoca. Bílý. Rohatý. Odporný. Trocové jísst masso. Naši nepřátelé. Chutnají odporně. Teď mrtvý. My děkujeme, tvore z massa."~ */
  IF ~~ THEN REPLY #38617 /* ~"Není zač. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38618 /* ~"Vezzmi ssi to a jdi... mussíme jísst."~ */
  IF ~~ THEN REPLY #38619 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #38620 /* ~"Zasse zzpátky, tvore z massa? Vezzmi ssvé mincce a jdi."~ */
  IF ~~ THEN REPLY #38621 /* ~"Dobře. Sbohem."~ */ EXIT
END
