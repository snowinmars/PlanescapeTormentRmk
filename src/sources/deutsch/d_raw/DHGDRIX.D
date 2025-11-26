// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGDRIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGDRIX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37412 /* ~Du siehst einen hochgewachsenen Mann im Feldharnisch. Die Rüstung ist ungewöhnlich konstruiert, mit Dornen an den Schultern, Ellbogen und Unterarmen. Er nickt dir zu, als du näher kommst. "Guten Tag, Bürger."~ */
  IF ~~ THEN REPLY #37413 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37414 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37415 /* ~"Wie kann ich Dir helfen, Bürger?" Er sieht dich freundlich an.~ */
  IF ~~ THEN REPLY #37416 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37417 /* ~"Ich glaube nicht, daß du das kannst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 7.2 8.1 9.0 11.0 12.0
  SAY #37418 /* ~Er lächelt. "Aber natürlich doch, Bürger."~ */
  IF ~~ THEN REPLY #37419 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37420 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 7
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37421 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #37422 /* ~"Ich will Waffen kaufen."~ */ GOTO 11
  IF ~~ THEN REPLY #37423 /* ~"Ich will magische Gegenstände kaufen."~ */ GOTO 11
  IF ~~ THEN REPLY #37459 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37424 /* ~Er macht eine leichte Verbeugung vor dir. "Ich bin die Wache Drixel vom Harmonium, Bürger." Ich sorge für den Frieden hier auf dem Markt."~ */
  IF ~~ THEN REPLY #37425 /* ~"Erzähl mir was über das Harmonium."~ */ GOTO 4
  IF ~~ THEN REPLY #37426 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37427 /* ~Er salutiert. "Unser Glaube ist einfach. Wir sind das Licht. Wir sind der Weg. Wir sind die Ordnung. Wir sind die Wahrheit." Sein Blick wird stählern. "Es war für mich keine Frage, daß ich ihnen beitreten wollte. Weißt du, einige Dussel reden immer vom Kampf gegen das Chaos, um Ordnung und Harmonie wiederherzustellen, aber sie haben am Ende dann doch nicht den Mut, irgendetwas in der Richtung zu unternehmen. Wir vom Harmonium, wir stellen was auf die Beine. Wir erhalten die Ordnung in den Straßen von Sigil und auf den Ebenen." Er nickt bekräftigend.~ */
  IF ~~ THEN REPLY #37428 /* ~"Erzähl weiter."~ */ GOTO 5
  IF ~~ THEN REPLY #37429 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37430 /* ~Sein Blick wird beim Reden noch kecker. "Und wir halten nicht nur mit Worten Ordnung. Wir kämpfen, und wir kämpfen hart, um die Ordnung zu erhalten und durchzusetzen. Querhändler, Postenritter, Unabhängige, Anarchisten, Xaositekten, Tanar-Ri-Scheusale... sie alle sollten sich besser vor dem Schatten des Harmoniums in Acht nehmen. Chaos kann nur zusammen mit Toleranz existieren!"~ */
  IF ~~ THEN REPLY #37431 /* ~"Was kannst du mir über die anderen Bünde erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #37432 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37433 /* ~Er blickt ziemlich gelangweilt drein und zuckt dann mit den Achseln. "Nichts. Sie sind nicht Teil der Wahrheit, die das Harmonium verkörpert. Ich habe mich mit ihnen nicht beschäftigt."~ */
  IF ~~ THEN REPLY #37434 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 2.1 10.0
  SAY #37435 /* ~Er wirft dir einen verdutzten Blick zu, will etwas sagen, schweigt und beginnt noch einmal. "Also gut... niemand weiß genau, wo Lothar ist, Bürger. Soweit wir wissen, hat er keine uns bekannten Gesetze gebrochen, also lassen wir vom Harmonium ihn in Ruhe. Ähm... Und ich würde dir empfehlen, dasselbe zu tun."~ */
  IF ~~ THEN REPLY #37436 /* ~"Warum?"~ */ GOTO 8
  IF ~~ THEN REPLY #37437 /* ~"Ich muß ihn trotzdem finden."~ */ GOTO 9
  IF ~~ THEN REPLY #37438 /* ~"Ich verstehe... Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37439 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37440 /* ~Er sieht dich etwas unwirsch an. "Darum, Dussel. Man legt sich einfach nicht mit jemandem so mächtigen wie Lothar an, ohne einen wirklich guten Grund dafür zu haben und viele Freunde, die einen bei der Sache unterstützen! Jetzt weißt du's."~ */
  IF ~~ THEN REPLY #37441 /* ~"Ich muß ihn trotzdem finden."~ */ GOTO 9
  IF ~~ THEN REPLY #37442 /* ~"Ich verstehe... Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37443 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #37444 /* ~Er starrt dich eine Weile an, bevor er antwortet. "Also gut. Du findest den Eingang zu seiner Absteige in einer Gebäuderuine hier im Bezirk." Er scheint durch dich hindurch zu blicken, anstatt dich anzusehen.~ */
  IF ~~ THEN REPLY #37445 /* ~"Danke. Ich habe noch ein paar Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37446 /* ~Er starrt dich eine Weile an, bevor er antwortet. "Das hört sich sehr nach Lothar, dem 'Herrn der Knochen' an; der würde so etwas tun." Er blickt sich nervös um und spricht dann leise weiter. "Na gut, nicht Lothar selbst, aber einer seiner Spießgesellen. Lothar macht sich die Hände nicht schmutzig."~ */
  IF ~~ THEN REPLY #37448 /* ~"Wo finde ich diesen Lothar?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #37449 /* ~Er weist auf den Markt. "Viele Kaufleute hier, Bürger. Da wirst du schon finden, was du suchst."~ */
  IF ~~ THEN REPLY #37450 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37452 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #37454 /* ~Drixel verneigt sich leicht vor dir. "Guten Tag, Bürger. Wie kann ich dir zu Diensten sein?"~ */
  IF ~~ THEN REPLY #37455 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37456 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
