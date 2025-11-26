// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10089 /* ~Du siehst ein junge Frau mit einem aufgesetzten Lächeln, die billig gekleidet ist und nach billigem Parfüm riecht. Als sie dich bemerkt, lächelt sie.~ */
  IF ~~ THEN REPLY #10090 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #10091 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10092 /* ~Sie kommt einen Schritt näher, legt dir eine Hand auf die Schulter und läßt die andere langsam über deinen Rücken gleiten. Sie lächelt und bewegt ihre Hand langsam von deiner Schulter hinunter über deinen Arm. "Na, Schleifer, du bist doch stark, oder? Ich mag starke Männer, die sich nehmen, was sie brauchen." Sie drückt dich plötzlich an sich. "Sag mir also... was brauchst du?"~ */
  IF ~~ THEN REPLY #10093 /* ~"Ähh... Bloß Antworten auf ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #10094 /* ~"Macht nichts. Ich muß gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10095 /* ~Sie schaut dir in die Augen und lächelt noch breiter. "Dazu bin ich aber nicht hier. Du willst wirklich nur reden?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10096 /* ~Diese Frau ist ein wenig zu aggressiv. Irgendwas stimmt hier nicht.~ */ GOTO 3
  IF ~  PartyGoldGT(10)
~ THEN REPLY #10097 /* ~"Nun... Vielleicht würde mir ein wenig Unterhaltung gut tun."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10098 /* ~"Nun... Vielleicht würde mir ein wenig Unterhaltung gut tun."~ */ GOTO 10
  IF ~~ THEN REPLY #10099 /* ~"Schon gut. Ich muß jetzt fort."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10100 /* ~Du hast den Eindruck, daß mit dieser Frau etwas nicht stimmt, und stößt sie von dir weg. Dabei spürst du ein Ziehen an deiner Seite. Du siehst gerade noch rechtzeitig, wie sie ihre *leere* Hand aus deinem Beutel zieht. Jetzt scheint sie es plötzlich eilig zu haben und will gehen.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10101 /* ~Greif nach ihr.~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #10102 /* ~Greif nach ihr.~ */ GOTO 9
  IF ~~ THEN REPLY #10103 /* ~Laß sie laufen.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10104 /* ~Flugs packst du sie am Handgelenk. Sie wehrt sich und versucht verzweifelt, sich loszureißen. "Laß mich, Dussel, oder ich schreie nach den Wächtern!"~ */
  IF ~~ THEN REPLY #10105 /* ~"Na los, schrei doch. Du wirst eh tot sein, bevor Hilfe da ist."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pros3_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #10106 /* ~"Na los, dann schrei doch. Ich glaube nicht, daß auch nur einer in dieser Stadt sich dafür interessiert."~ */ GOTO 5
  IF ~~ THEN REPLY #10107 /* ~Laß sie laufen.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #10108 /* ~Sie wirft dir einen flehenden Blick zu und hört auf, sich zu wehren. "Bitte laß mich gehen. Du hast mich doch noch rechtzeitig erwischt."~ */
  IF ~~ THEN REPLY #10109 /* ~"Gib mir all dein Geld, und dann kannst du gehen."~ */ GOTO 6
  IF ~~ THEN REPLY #10110 /* ~"Schön, aber laß dich hier nicht nochmal erwischen. Kapiert?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10111 /* ~Sie nickt und greift nach ihrer Geldbörse, aus der sie eine kleine Handvoll Münzen nimmt, die sie dir hinhält. "Bitte, Sir. Ich brauche den Klimper, sonst kann ich mir nichts zu essen kaufen. Bitte laßt mich gehen."~ */
  IF ~~ THEN REPLY #10112 /* ~Nimm das Geld und laß sie gehen.~ */ DO ~GivePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #10113 /* ~Nimm das Geld und bring sie um.~ */ DO ~GivePartyGold(10)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10114 /* ~Laß sie laufen.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10115 /* ~Du nimmst die Münzen und steckst sie ein. Sie starrt dich noch einen Augenblick an, dann dreht sie sich um und geht langsam davon.~ */
  IF ~~ THEN REPLY #10116 /* ~Laß sie laufen.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.2
  SAY #10117 /* ~Du läßt sie los und bedeutest ihr mit einem Wink zu gehen. Sie starrt dich noch einen Augenblick an und lächelt schwach. "Danke vielmals, Sir." Sie dreht sich um und geht langsam davon.~ */
  IF ~~ THEN REPLY #10118 /* ~Geh weg.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #10119 /* ~Du willst sie am Handgelenk packen, aber sie weicht dir aus. Sie springt zur Seite und beginnt zu rennen.~ */
  IF ~~ THEN REPLY #10120 /* ~Greif sie an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10121 /* ~Laß sie gehen.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.2
  SAY #10122 /* ~Sie entläßt dich aus ihrer Umklammerung, geht einen Schritt zurück und lächelt. "Tschuldigung, Schleifer. Ich hab's mir anders überlegt. Leb wohl." Sie dreht sich um und geht.~ */
  IF ~~ THEN REPLY #10123 /* ~Laß sie gehen.~ */ EXIT
END
