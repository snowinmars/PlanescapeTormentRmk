// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDYLANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDYLANA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57455 /* ~Die siehst eine Frau mittleren Alters, die zerfetzte Kleider trägt. Sie beäugt dich mit offener Feindseligkeit, als du näherkommst.~ */
  IF ~~ THEN REPLY #57456 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #57457 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57458 /* ~"Verschwinde, du Dussel. Nimm die Beine in die Hand und verschwinde..." Sie funkelt dich an.~ */
  IF ~~ THEN REPLY #57459 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57460 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57461 /* ~Sie starrt dich böse an. "Bist du ahnungslos oder einfach nur dumm? Ich hab gesagt, du sollst verschwinden. Ich will mit dir und deinen Fragen nichts zu tun haben."~ */
  IF ~~ THEN REPLY #57462 /* ~"Wenn du mir ein paar Fragen beantwortest, gehe ich...."~ */ GOTO 3
  IF ~~ THEN REPLY #57463 /* ~"Mir gefällt deine Einstellung nicht. Vielleicht prügele ich die Antworten aus dir heraus."~ */ GOTO 11
  IF ~~ THEN REPLY #57464 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.1 5.1 6.0 7.0 8.1 9.1 10.0 11.0 12.0
  SAY #57465 /* ~Sie funkelt sich an. "Na gut. Aber schnell."~ */
  IF ~~ THEN REPLY #57466 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #57467 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 7
  IF ~~ THEN REPLY #57468 /* ~"Ich suche einen Deva. Ich habe gehört, er ist hier."~ */ GOTO 8
  IF ~~ THEN REPLY #57469 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57470 /* ~"Das kann dir doch eigentlich egal sein..." Sie hält inne. "Dylana."~ */
  IF ~~ THEN REPLY #57471 /* ~"Warum bist du hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #57472 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #57473 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57474 /* ~Sie seufzt. "Ich habe mit einem Schmuggler zusammengearbeitet. Wir haben Bier und so in die Stadt gebracht. Eines Nachts haben uns die Wachen geschnappt. Er hat sich losgekauft und mich meinem Schicksal überlassen. Sie zuckt die Schultern. "Und jetzt bin ich hier."~ */
  IF ~~ THEN REPLY #57475 /* ~"Klingt, als wärst du ihm was schuldig."~ */ GOTO 6
  IF ~~ THEN REPLY #57476 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #57477 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57478 /* ~Sie lächelt. "Ja, so ist es. Übrigens: Er heißt Voorsha. Wenn du ihm je begegnen solltest, dann paß bloß auf."~ */
  IF ~~ THEN REPLY #57479 /* ~"Das werde ich. Ich habe ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #57480 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY #57481 /* ~"Da gibt's nicht viel zu erzählen. Es ist ein Gefängnis, um Baators Willen. Man lebt in so einer Zelle vor sich hin und betet, daß man bald wieder Tageslicht sieht."~ */
  IF ~~ THEN REPLY #57482 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #57483 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #57484 /* ~Sie runzelt die Stirn und überlegt. "Nein, ich glaube nicht. Ich will nicht sagen, daß ich hier unten jeden kenne, aber einen Deva kann man ja wohl kaum übersehen. Wenn er in diesem Ring wäre, dann wüßte ich es."~ */
  IF ~~ THEN REPLY #57485 /* ~"In diesem Ring?"~ */ GOTO 9
  IF ~~ THEN REPLY #57486 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #57487 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57488 /* ~"Ja, das Gefängnis besteht aus drei Ringen, dem äußeren, dem mittleren und dem inneren. Je schlimmer dein Verbrechen ist, desto tiefer wirst du eingekerkert."~ */
  IF ~~ THEN REPLY #57489 /* ~"Welcher Ring ist das?"~ */ GOTO 10
  IF ~~ THEN REPLY #57490 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #57491 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57492 /* ~"Dies ist der mittlere Ring. Schlimmer als der äußere, aber nicht so schlimm wie der innere." ~ */
  IF ~~ THEN REPLY #57493 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #57494 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #57495 /* ~Sie will etwas sagen, hält dann aber inne. "Ja... Du siehst so aus, als würdest du das tatsächlich tun.~ */
  IF ~~ THEN REPLY #57496 /* ~"Also, beantwortest du mir meine Fragen?"~ */ GOTO 3
  IF ~~ THEN REPLY #57497 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57498 /* ~Du erblickst Dylana. Sie scheint nicht besonders erfreut zu sein, dich zu sehen. "Wieder zurück... Warum?"~ */
  IF ~~ THEN REPLY #57499 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 3
END
