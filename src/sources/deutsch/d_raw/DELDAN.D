// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELDAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DELDAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57545 /* ~Du erblickst einen älteren Mann mit schütteren weißen Haaren. Sein Kleider sind zwar nicht neu, aber sie sind nicht so zerfetzt wie die der anderen Gefangenen. Du siehst Bücher und Schriftrollen um ihn herum. Als du ihn ansprichst, zieht er die Augenbrauen hoch.~ */
  IF ~~ THEN REPLY #57546 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #57547 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57548 /* ~Er mustert dich von oben bis unten und lächelt dann. "Nun... was haben wir denn da? Du siehst recht mitgenommen aus, junger Mann..." Er mustert dich noch eine Weile und zuckt dann die Schultern. "Was willst du von mir?"~ */
  IF ~~ THEN REPLY #57549 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57550 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.1 7.0 8.0 9.0
  SAY #57551 /* ~"Vielleicht kann ich dir ja helfen. Stell deine Fragen." Er lächelt.~ */
  IF ~~ THEN REPLY #57552 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #57553 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #57554 /* ~"Ich habe gehört, hier sitzt ein Deva ein. Weißt du irgendwas davon?"~ */ GOTO 8
  IF ~~ THEN REPLY #57555 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57556 /* ~"Ich bin Eldan. Ein unbedeutender Mann, der gerade schlechte Zeiten durchmacht..."~ */
  IF ~~ THEN REPLY #57557 /* ~"Warum bist du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #57558 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57559 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57560 /* ~Er runzelt die Stirn. "Mein Meister hat meine Dienste nicht mehr benötigt. Aber anstatt mich zu entlassen, hat er es geschafft, mich hier einsperren zu lassen."~ */
  IF ~~ THEN REPLY #57561 /* ~"Warum hat er das getan?"~ */ GOTO 5
  IF ~~ THEN REPLY #57562 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57563 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57564 /* ~"Er war in fragwürdige Geschäfte verwickelt, und ich war sein Buchhalter. Er hält mich hier gefangen, um sein Geheimnis zu wahren... und um mich von denen fernzuhalten, die sein Geheimnis erfahren könnten." Er seufzt. "Ich schätze, es ist besser als tot zu sein... aber nicht viel."~ */
  IF ~~ THEN REPLY #57565 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57566 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #57567 /* ~Er zuckt die Schultern. "Ich weiß nur, daß das hier ein Gefängnis ist. Seit meiner Ankunft bin ich in dieser Zelle und habe auch keinen Bedarf, diesen gefährlichen Ort genauer zu erkunden."~ */
  IF ~~ THEN REPLY #57568 /* ~"Verläßt du nie deine Zelle?"~ */ GOTO 7
  IF ~~ THEN REPLY #57569 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57570 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57571 /* ~"Nein..." Er sieht weg.~ */
  IF ~~ THEN REPLY #57572 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57573 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57574 /* ~Er runzelt die Stirn und sieht dich fragend an. "Ein Deva? Das kann ich mir nicht vorstellen... Warum sollte ein Deva hier sein?" Er zuckt die Schultern. ~ */
  IF ~~ THEN REPLY #57576 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57577 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #57575 /* ~Du erblickst Eldan. Er lächelt dich an. "Du gibst mir wieder die Ehre deines Besuches. Warum?"~ */
  IF ~~ THEN REPLY #57578 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57579 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
