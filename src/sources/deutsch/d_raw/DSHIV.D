// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHIV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHIV~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3796 /* ~"Du bist also diese alte Vettel von Krystall losgeworden, was? Meinst du etwa, deshalb mußte nicht zahlen? Zu schade, daß du recht hast. Geh einfach durch."~ */
  IF ~~ THEN REPLY #3797 /* ~"Danke. Auf bald."~ */ DO ~BitSet("0301_Status","AR0301",BIT3)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #3798 /* ~"Sei gegrüßt, Fremder. Sieht so aus, als wärst du jetzt im Gebiet der Dunkelgassen-Schlitzer. Sieht so aus, als hättest du einen Geldbeutel, dem ein wenig Erleichterung gut täte. Bete lieber, daß da genug drin ist."~ */
  IF ~~ THEN REPLY #3799 /* ~"Ich muß mit eurem Anführer sprechen."~ */ GOTO 2
  IF ~~ THEN REPLY #3800 /* ~"Wieviel verlangst du?"~ */ GOTO 3
  IF ~~ THEN REPLY #34436 /* ~"Ich möchte sehen, wie du versuchst, es dir zu nehmen - mit Löchern in deiner Haut."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34437 /* ~"Ich habe für diesmal schon bezahlt."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34438 /* ~Täuschung: "Ich habe für diesmal schon bezahlt."~ */ GOTO 8
  IF ~~ THEN REPLY #34439 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #34440 /* ~"Mit dem Verrotteten William? Ja, ich werde dich zu ihm hineinlassen, sobald ich einen Blick in deinen Geldbeutel geworfen habe."~ */
  IF ~~ THEN REPLY #34441 /* ~"Niemals. Vorher wirst du bluten."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34442 /* ~"Wieviel verlangst du?"~ */ GOTO 3
  IF ~~ THEN REPLY #34443 /* ~"Nein. Es ist nicht so wichtig."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 9.1
  SAY #34444 /* ~"Ist nicht teuer", sagt er großmütig. "Mit nur zehn Geldstücken kommst du hier durch."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34445 /* ~"Abgemacht."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 5
  IF ~~ THEN REPLY #34446 /* ~"Vergiß es."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #34447 /* ~"Dann wirst du rausfinden, daß es gar nicht so wichtig ist, wenn du anfängst zu bluten."~ */
  IF ~~ THEN REPLY #34448 /* ~Kämpf.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34449 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #34450 /* ~Er nimmt dein Geld, steckt's ein und sagt: "Und nun verschwinde."~ */
  IF ~~ THEN REPLY #34451 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #34452 /* ~"Dann kommst du hier nicht lebend raus." Er zieht sein Messer und greift an!~ */
  IF ~~ THEN REPLY #34453 /* ~Kämpfe.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34454 /* ~Flüchte.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3 9.3 10.5 11.5 14.4
  SAY #34455 /* ~Er sieht zur Seite in den Schatten, macht eine Handbewegung und sieht dich dann wieder an. "Gut. Geh einfach durch. Dussel."~ */
  IF ~~ THEN REPLY #34456 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 9.4 10.6 11.6 14.5
  SAY #34457 /* ~Er sieht zur Seite in den Schatten, macht eine Handbewegung und sieht dich dann wieder an. "Nein, hast du nicht. Du wirst sterben."~ */
  IF ~~ THEN REPLY #34458 /* ~Kämpf.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34459 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34460 /* ~"Was, du schon wieder? Bist du's denn noch nicht leid, uns ewig Klimper in den Rachen zu stecken? Sieht nicht so aus, sonst wärst du nicht hier. Zehn Geldstücke, und dann kannste ein anderes Mal wiederkommen."~ */
  IF ~~ THEN REPLY #34461 /* ~"Ich muß mit eurem Anführer sprechen."~ */ GOTO 2
  IF ~~ THEN REPLY #34462 /* ~"Wieviel verlangst du?"~ */ GOTO 3
  IF ~~ THEN REPLY #34463 /* ~"Ich möchte sehen, wie du versuchst, es dir zu nehmen - mit Löchern in deiner Haut."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34464 /* ~"Ich habe für diesmal schon bezahlt."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34465 /* ~Täuschung: "Ich habe für diesmal schon bezahlt."~ */ GOTO 8
  IF ~~ THEN REPLY #34466 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #34467 /* ~"Mir ist zu Ohren gekommen, der Verrottete William hat dich zum Töten ausgesandt, he? Aber bevor du's erledigt hast, mußt du hier noch zahlen. Zehn Stück Klimper."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34468 /* ~"In Ordnung. Da hast du."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34469 /* ~"Soviel hab' ich nicht."~ */ GOTO 13
  IF ~~ THEN REPLY #34470 /* ~"Aber ich arbeite doch für den Verrotteten William!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34471 /* ~"Ist es denn wirklich nötig, daß du das einsammelst?"~ */ GOTO 15
  IF ~~ THEN REPLY #34472 /* ~"Das kriegst du nur über meine Leiche!"~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34473 /* ~"Ich habe für diesmal schon bezahlt."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34474 /* ~Täuschung: "Ich habe für diesmal schon bezahlt."~ */ GOTO 8
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #34475 /* ~"Hast du immer noch nicht für den Verrotteten William getötet? Du wirst für diese Verzögerung zahlen müssen. Zehn Stück Klimper, dann kannst du deiner lustigen Wege ziehen."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34476 /* ~"In Ordnung. Da hast du."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34477 /* ~"Soviel hab' ich nicht."~ */ GOTO 13
  IF ~~ THEN REPLY #34478 /* ~"Aber ich arbeite doch für den Verrotteten William!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34479 /* ~"Ist es denn wirklich nötig, daß du das einsammelst?"~ */ GOTO 15
  IF ~~ THEN REPLY #34480 /* ~"Das kriegst du nur über meine Leiche!"~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34481 /* ~"Ich habe für diesmal schon bezahlt."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34482 /* ~Täuschung: "Ich habe für diesmal schon bezahlt."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 14.0
  SAY #34483 /* ~"Gerne doch. Such mich persönlich auf, wenn du zurück bist, ja?" Er gibt dir einen Wink.~ */
  IF ~~ THEN REPLY #34484 /* ~"Lustig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 14.1
  SAY #34485 /* ~"Das ist schade. Der Verrottete William wird gar nicht begeistert sein, wenn er hört, daß du auf einem Messer ausgerutscht bist." Er zieht seine Waffe und macht sich bereit zum Angriff.~ */
  IF ~~ THEN REPLY #34486 /* ~Kämpf.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34487 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2
  SAY #34488 /* ~"Ich auch. Was sagst du nun? Zahlen und bleiben. Oder bluten?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34489 /* ~"Ich werde zahlen."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34490 /* ~"So viel hab' ich nicht."~ */ GOTO 13
  IF ~~ THEN REPLY #34491 /* ~Kämpfe.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34492 /* ~Flüchte.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34493 /* ~"Ich habe für diesmal schon bezahlt."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34494 /* ~Täuschung: "Ich habe für diesmal schon bezahlt."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34495 /* ~"Ist es denn wirklich nötig, daß du das einsammelst?"~ */ GOTO 15
  IF ~~ THEN REPLY #34496 /* ~"Das kriegst du nur über meine Leiche!"~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 14.6
  SAY #34497 /* ~Er betrachtet dich sorgfältig von oben bis unten und wägt deine Worte ab. "Dieses Mal", sagt er, "laß ich's durchgehen. Mach daß du fortkommst."~ */
  IF ~~ THEN REPLY #34498 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4 11.4 14.7
  SAY #34499 /* ~"Du weißt gar nicht, wie sehr ich darauf gewartet habe, das zu hören." Er zieht sein Messer und greift an.~ */
  IF ~~ THEN REPLY #34500 /* ~Kämpf.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34501 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END
