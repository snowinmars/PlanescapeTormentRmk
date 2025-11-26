// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRANGEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRANGEL~

IF ~  GlobalGT("Krystall","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #34502 /* ~"Du hast den Verrotteten William mit Rot ins Totenbuch eingetragen, Schleifer. Das heißt, du kommst umsonst durch das Gebiet der Klingenengel."~ */
  IF ~~ THEN REPLY #34503 /* ~"Danke. Auf bald."~ */ DO ~BitSet("0301_Status","AR0301",BIT4)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #34504 /* ~Dieser Gassenbewohner grüßt dich mit übertriebener Höflichkeit und einer tiefen Verbeugung. "Sei gegrüßt, Fremder. Du hast einen, hmm, günstigen Tag gewählt, durch unsere Lande zu ziehen. Der Zoll beträgt heute nur ganze zehn Münzen."~ */
  IF ~~ THEN REPLY #34505 /* ~"Zehn Münzen? Das ist ja Wucher!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34506 /* ~"Dasselbe habe ich gerade eben diesen Dusseln dort drüben gezahlt!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34507 /* ~"Zehn? Also gut, da hast du zehn."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34508 /* ~"Ich habe schon bezahlt."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34509 /* ~Täuschung: "Das habe ich schon bezahlt."~ */ GOTO 6
  IF ~~ THEN REPLY #34510 /* ~"Du wirst schon mit mir darum kämpfen müssen."~ */ GOTO 2
  IF ~~ THEN REPLY #34511 /* ~"Erst mal mußt du mich kriegen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.5 7.0 7.5
  SAY #34512 /* ~"Nur ganze zehn Münzen. Es ist unser Gebiet. Ich bin sicher, du weißt, daß dies kein Ort für Schwächlinge ist. Du bist hier aus freien Stücken reinmarschiert. Nun mußt du den Preis dafür zahlen, so oder so: Münze oder Blut. Wofür entscheidest du dich?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34513 /* ~"Münze. Hier."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34514 /* ~"Blut."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34515 /* ~"Versuch doch, mich zu kriegen!"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #34516 /* ~"Klar, aber diese Dussel sind nicht unsere Verbündeten. Die Schlitzer sind unsere ärgsten Feinde. Entweder begleichst du jetzt deine Rechnung, oder wir legen dich um."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34517 /* ~"Hier, da hast du das Geld."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34518 /* ~"Vorher wirst du sterben, Freundchen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34519 /* ~"Versuch doch, mich zu kriegen!"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0 6.0 7.2
  SAY #34520 /* ~"Die Klingenengel danken dir. Geh in Frieden, Reisender."~ */
  IF ~~ THEN REPLY #34521 /* ~"Danke, Dussel. Leb wohl."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #34522 /* ~Der Klingenengel sieht einen Moment lang in die Schatten, gibt ein Zeichen mit der Hand und nickt dann. "Stimmt. Und nun mach, daß du weiter kommst. Dann zahlste eben, wenn du das nächste Mal vorbeikommst."~ */
  IF ~~ THEN REPLY #34523 /* ~"Sicher wirst du das. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 7.4
  SAY #34524 /* ~Der Klingenengel sieht einen Moment lang in die Schatten, gibt ein Zeichen mit der Hand und sieht dich dann kopfschüttelnd an. "Nein, haste nicht. Dies ist meine letzte Warnung. Zehn Münzen, oder du guckst die Gänseblümchen von unten an."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34525 /* ~"Hier, da hast du das Geld."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34526 /* ~"Versuch doch, sie mir wegzunehmen, du Dussel."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34527 /* ~"Erst mal mußt du mich kriegen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #34528 /* ~"Bist du also wiedergekommen. Der Preis ist immer noch der gleiche, falls du hier durch willst. Zehn Münzen, mein Freund, und du kannst deiner Wege ziehen mit all deinen hübschen Narben."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34529 /* ~"Zehn Münzen? Das ist ja Wucher!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34530 /* ~"Dasselbe habe ich gerade eben diesen Dusseln dort drüben gezahlt!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34531 /* ~"Zehn? Also gut, da hast du zehn."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34532 /* ~"Ich habe schon bezahlt."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34533 /* ~Täuschung: "Das habe ich schon bezahlt."~ */ GOTO 6
  IF ~~ THEN REPLY #34534 /* ~"Du wirst schon mit mir darum kämpfen müssen."~ */ GOTO 2
  IF ~~ THEN REPLY #34535 /* ~"Erst mal mußt du mich kriegen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #34536 /* ~"Hab' gehört, du arbeitest für Krystall. Gut. Mach, daß du schnell damit fertig wirst, hörst du? Oh... bevor ich's vergesse: du mußt noch den Wegzoll zahlen. Da du zu uns gehörst, ist's nur der halbe Preis - bloß fünf Münzen."~ */
  IF ~~ THEN REPLY #34537 /* ~"Aber ich arbeite für Krystall!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34538 /* ~"Hier."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34539 /* ~"Dasselbe habe ich gerade eben diesen Dusseln dort drüben gezahlt!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34540 /* ~"Ich habe schon bezahlt."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34541 /* ~Täuschung: "Das habe ich schon bezahlt."~ */ GOTO 14
  IF ~~ THEN REPLY #34542 /* ~"Vorher wirst du sterben, Freundchen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34543 /* ~"Erst mal mußt du mich kriegen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34544 /* ~"Du hast den Verrotteten William noch nicht getötet oder? Also zahlste die fünf Münzen bis Krystall was anderes anordnet."~ */
  IF ~~ THEN REPLY #34545 /* ~"Aber ich arbeite für Krystall!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34546 /* ~"Hier."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34547 /* ~"Dasselbe habe ich gerade eben diesen Dusseln dort drüben gezahlt!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34548 /* ~"Ich habe schon bezahlt."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34549 /* ~Täuschung: "Das habe ich schon bezahlt."~ */ GOTO 14
  IF ~~ THEN REPLY #34550 /* ~"Vorher wirst du sterben, Freundchen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #34551 /* ~"Erst mal mußt du mich kriegen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #34552 /* ~"Das stimmt. Und ich auch. Wir alle haben zuhause Mäuler zu stopfen, und du kannst unsere stopfen. Fünf Münzen, oder ich hau dich um."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34553 /* ~"Hier."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34554 /* ~"Vorher wirst du sterben, Freundchen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34555 /* ~"Erst mal mußt du mich kriegen."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.0 14.0
  SAY #34556 /* ~"War mir eine Freude. Viel Glück mit dem Verrotteten William, diesem Schurken."~ */
  IF ~~ THEN REPLY #34557 /* ~"OK, danke."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2
  SAY #34558 /* ~"Ja, und du mußt ihn töten, um es zurückzubekommen. Aber das mußt du mit denen ausmachen; hier geht's erstmal um uns. Nun zahl schon, Freund."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34559 /* ~"Hier."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34560 /* ~"Versuch doch, es mir wegzunehmen! Ich bin bereit."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34561 /* ~"Niemals. Ich hau ab."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.3
  SAY #34562 /* ~Der Klingenengel wirft einen prüfenden Blick in den Schatten. Er wendet sich dir wieder zu. "Oh, ich bitte um Entschuldigung. Du kannst durchgehen."~ */
  IF ~~ THEN REPLY #34563 /* ~"Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.4
  SAY #34564 /* ~Der Klingenengel wirft einen prüfenden Blick in den Schatten. Er wendet sich dir wieder zu. "Nein, hast du nicht. Zahl, Freund, oder du kommst erst gar nicht bis zum Verrotteten William."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34565 /* ~"Hier."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34566 /* ~"Ich bring ihn um, sobald ich mit dir fertig bin."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34567 /* ~"Ich glaube kaum, daß du mich kriegen kannst."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END
