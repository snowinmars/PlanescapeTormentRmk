// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~ATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34604 /* ~"Kleiner Dummkopf hat sich verlaufen, was? Will kleiner Dummkopf heute durch, muß kleiner Dummkopf zahlen."~ */
  IF ~~ THEN REPLY #34605 /* ~"Wieviel?"~ */ GOTO 1
  IF ~~ THEN REPLY #34606 /* ~"Wenn du mein Geld willst, mußt du es mir schon abnehmen."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34607 /* ~"Erst mal mußt du mich kriegen."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34608 /* ~"Zehn Stück Klimper, mein lieber Freund."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34609 /* ~"Hier, bitte schön."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34610 /* ~"So viel hab' ich nicht."~ */ GOTO 3
  IF ~~ THEN REPLY #34611 /* ~"Vergiß es. Du kriegst es nur über meine Leiche."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34612 /* ~"Erst mal mußt du mich kriegen!"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.0
  SAY #34613 /* ~Der Schläger macht spöttisch eine tiefe Verbeugung. "Ich hoffe wirklich, wir kommen bald wieder ins Geschäft."~ */
  IF ~~ THEN REPLY #34614 /* ~"Ja, wie du meinst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #34615 /* ~Der Schläger setzt eine schockierte Miene auf. "Wenn das so ist, muß ich das wohl von dir in Blut nehmen. Leb wohl, Kumpel."~ */
  IF ~~ THEN REPLY #34616 /* ~"He, warte..."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #34617 /* ~"Sieht wohl so aus."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #34618 /* ~"Der kleine Piepmatz kehrt ins Nest zurück, was? Muß wohl den Rest der Familie füttern?"~ */
  IF ~~ THEN REPLY #34619 /* ~"Wovon redest du eigentlich?"~ */ GOTO 5
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34620 /* ~"Ja. Hier hast du dein Geld."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34621 /* ~"Nein. Ich bin hier, um dich zu töten."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34622 /* ~Sein Gesicht verzieht sich aufgesetzt qualvoll. "Willst du mir damit sagen, du hast das schon wieder vergessen? Mein lieber Mann. Ich spreche von den zehn Klimper Bezahlung, die du mir für den Durchgang durch meine Straße schuldest. Na komm schon... her mit dem Blech."~ */
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34623 /* ~"Da hast du's."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34624 /* ~"Diesmal wirst du mit mir darum kämpfen müssen."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34625 /* ~"Können wir uns über die Sache nicht irgendwie einigen?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #34626 /* ~"Tut mir leid, Dussel." Wir alle müssen uns an Regeln halten, und du mußt dann wohl mit deinem Blut bezahlen. Grüß deine Macht von mir."~ */
  IF ~~ THEN REPLY #34627 /* ~Kämpf mit ihm.~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34628 /* ~Flieh.~ */ DO ~Enemy()
~ EXIT
END
