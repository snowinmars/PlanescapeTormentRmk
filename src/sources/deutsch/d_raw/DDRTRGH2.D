// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH2~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38622 /* ~"Töte den Troco für unsss, und du kannssst sein Geld haben. Wir nehmen dasss Essssen. Wassss sssagst du?"~ */
  IF ~~ THEN REPLY #38623 /* ~"Was ist das für ein Wesen?"~ */ GOTO 1
  IF ~~ THEN REPLY #38636 /* ~"Einverstanden."~ */ GOTO 4
  IF ~~ THEN REPLY #38637 /* ~"Glaub ich nicht."~ */ GOTO 3
  IF ~~ THEN REPLY #38638 /* ~"Was ist mit deinem Freund?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #38624 /* ~"Trocopotoca. Du mögen? Wir nicht mögen, nein... unheimlichessss und böses Monssster. Sie unsss nicht mögen. Diesssser eine... Er bewacht Leiche, die wir wollen. Du ihn töten?"~ */
  IF ~~ THEN REPLY #38625 /* ~"Was ist mit deinem Freund?"~ */ GOTO 2
  IF ~~ THEN REPLY #38632 /* ~"Ich werde ihn töten."~ */ GOTO 4
  IF ~~ THEN REPLY #38635 /* ~"Das überlasse ich dir."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3 1.0
  SAY #38626 /* ~"Nicht Freund! Angeber! Großer Ghul! Vor nichts Angssst, sagt er! Siehssst du ihn nah am Troco dran? Nein! Er Feigling! Du tötest Troco und zeigst ihm, wassss tapfer issst!"~ */
  IF ~~ THEN REPLY #38627 /* ~"Was ist das denn eigentlich?"~ */ GOTO 1
  IF ~~ THEN REPLY #38628 /* ~"Gut. Ich töte ihn."~ */ GOTO 4
  IF ~~ THEN REPLY #38631 /* ~"Nein, das glaube ich nicht."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.2
  SAY #38629 /* ~"Sssss... wertlosessss Fleissch! Geh!"~ */
  IF ~~ THEN REPLY #38630 /* ~"Nun gut."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #38633 /* ~"Mein Dank... Du nimmsssst Geld, wenn er ssstirbt."~ */
  IF ~~ THEN REPLY #38634 /* ~"Das ist der Plan."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38639 /* ~"Warum du nicht töten Troco? Troco musssss ssterben! Töte ihn!"~ */
  IF ~~ THEN REPLY #38640 /* ~"Dann gehe ich jetzt."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38641 /* ~"Wasss... Wasss bringt dich hierher zurück, dummesss Fleisch? Stiirb!" Die gräßliche Kreatur springt dich an!~ */
  IF ~~ THEN REPLY #38642 /* ~Kämpfe.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #38643 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38644 /* ~"Wasss... Wasss bringt dich hierher zurück, dummesss Fleisch? Stiirb!" Die gräßliche Kreatur springt dich an!~ */
  IF ~~ THEN REPLY #38645 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38646 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38647 /* ~"Du nimssst deinen Schatz, jaaaa? Nimm ihn und geh, Fleischding."~ */
  IF ~~ THEN REPLY #38648 /* ~"Was ist das für ein Ding?"~ */ GOTO 9
  IF ~~ THEN REPLY #38651 /* ~"Einverstanden."~ */ GOTO 10
  IF ~~ THEN REPLY #38652 /* ~"Nicht, wenn du zuerst stirbst."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38649 /* ~"Trocopotoca, jaaa? Du mögen? Wir nicht mögen, nein... unheimlichessss und böses Monssster. Sie unsss nicht mögen. Jetzt tot, jaaa?"~ */
  IF ~~ THEN REPLY #38650 /* ~"Gern geschehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38653 /* ~"So sssschnell zurück? Geh. Wir esssen."~ */
  IF ~~ THEN REPLY #38654 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #67831 /* ~"Schon so früh zurück? Geh. Wir essen."~ */
  IF ~~ THEN REPLY #67832 /* ~"Also gut. Leb wohl."~ */ EXIT
END
