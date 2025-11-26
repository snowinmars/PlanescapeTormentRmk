// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGIB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGIB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58400 /* ~Du siehst einen älteren Mann in schäbigen Kleidern. Er beobachtet dich gelangweilt, während du näherkommst.~ */
  IF ~~ THEN REPLY #58402 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58403 /* ~Beachte den Mann nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58405 /* ~Er sieht dich weiterhin gelangweilt an. Schließlich nickt er. "Hallo, Schleifer. Was klapperst du mir mit deiner Knochenschüssel ins Ohr?"~ */
  IF ~~ THEN REPLY #58407 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58412 /* ~"Nur so, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58414 /* ~Er nickt langsam und schaut zur Seite. "Naja,... ich sitze in diesem Mistloch, weil ich gestohlen habe, was rechtmäßig nicht mir gehört, und nicht, um dämliche Fragen zu beantworten..." Er sieht dich haßerfüllt an. "Hau ab."~ */
  IF ~~ THEN REPLY #58416 /* ~"Das Leben hier ist sicher hart. Es wäre sicher noch härter für dich, wenn du ein Krüppel wärst."~ */ GOTO 3
  IF ~~ THEN REPLY #58417 /* ~"Na, dann werde ich wohl gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58419 /* ~Er runzelt die Stirn und denkt über deine Worte nach. Seine Augen fahren an deinen Narben entlang und treffen dann deinen Blick. "Drohst du mir etwa, Dussel?"~ */
  IF ~~ THEN REPLY #58421 /* ~"Ja. Beantworte mir einige Fragen, oder ich werde dich Stück für Stück in deine Einzelteile zerlegen."~ */ GOTO 4
  IF ~~ THEN REPLY #58422 /* ~"Nein, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.0 8.0 9.2 10.1 11.0 12.1 13.1 14.0
  SAY #58424 /* ~Er nickt langsam. "Was für Fragen?"~ */
  IF ~~ THEN REPLY #58426 /* ~"Wer bist du?"~ */ GOTO 5
  IF ~~ THEN REPLY #58428 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #58430 /* ~"Ich suche nach einem Deva. Wie ich höre, ist er hier."~ */ GOTO 9
  IF ~~ THEN REPLY #58432 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58433 /* ~Er zögert. "Gib... Ich heiße Gib."~ */
  IF ~~ THEN REPLY #58435 /* ~"Warum bist du hier?"~ */ GOTO 6
  IF ~~ THEN REPLY #58437 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58438 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58440 /* ~"Hast du mir nicht zugehört? Ich sagte doch, ich bin ein Dieb. Ich bin hier, weil sie mich erwischt haben." Er lächelt. "Wenn du mich schon zwingst, irgendwelche Fragen zu beantworten, könntest du zumindest zusehen, daß sie einigermaßen intelligent sind."~ */
  IF ~~ THEN REPLY #58441 /* ~"Hier den Klugscheißer zu spielen ist auch nicht gerade brillant..."~ */ GOTO 7
  IF ~~ THEN REPLY #58442 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58444 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58446 /* ~Er zuckt mit den Achseln.~ */
  IF ~~ THEN REPLY #58447 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58449 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #58450 /* ~"Das Gefängnis besteht aus drei Ringen: dem äußeren, dem mittleren und dem inneren Ring. Dies ist der äußere Ring, wo die kleinen Verbrecher z. B. Diebe einsitzen. Im mittleren Ring sitzen hartgesottenere Verbrecher wie Schläger und so. Der innere Ring ist für die gefährlicheren Verbrecher, z. B. Mörder, Verschwörer, oder Staatsfeinde."~ */
  IF ~~ THEN REPLY #58451 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58452 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #58454 /* ~Er sieht dich besorgt an. "Der Deva... Ja, er ist hier unten. Du solltest dir aber noch einmal gut überlegen, ob du ihn wirklich finden willst."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58456 /* ~"Wegen der Pest?"~ */ GOTO 10
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #58458 /* ~"Warum denn das?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #58460 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58462 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58464 /* ~Er nickt. "Also weißt du Bescheid... Ja, die Pest. Sie traf uns hart und unerwartet, die meisten, die sie traf, landeten im Totenbuch." Er sieht dich finster an. "Niemand, der hört, daß du bei ihm warst, wird in deine Nähe kommen..."~ */
  IF ~~ THEN REPLY #58466 /* ~"Wo ist er?"~ */ GOTO 11
  IF ~~ THEN REPLY #58467 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58468 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 13.0
  SAY #58470 /* ~"Dort entlang..." Er deutet unbestimmt in eine Richtung. "Irgendwann wirst du bestimmt auf ihn treffen."~ */
  IF ~~ THEN REPLY #58471 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58473 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #58474 /* ~"Es geht der Plausch um, er sei ein Pestträger." Er schaut dich an, um deine Reaktion zu sehen und zuckt die Achseln. "Ich persönlich weiß nicht, ob das stimmt, aber die Pest brach genau zu der Zeit aus, als er hier auftauchte."~ */
  IF ~~ THEN REPLY #58476 /* ~"Erzähl mir von dieser Pest."~ */ GOTO 13
  IF ~~ THEN REPLY #58477 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58479 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #58481 /* ~"Sie traf uns plötzlich und unerwartet, die meisten Betroffenen landeten im Totenbuch." Er sieht dich finster an. "Alle, die hören, daß du beim Deva warst, werden dich meiden..."~ */
  IF ~~ THEN REPLY #58483 /* ~"Wo kann ich ihn finden?"~ */ GOTO 11
  IF ~~ THEN REPLY #58484 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58485 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #58487 /* ~Du siehst Gib, den Dieb. Er blickt dich finster an, als du näherkommst. "Du schon wieder..."~ */
  IF ~~ THEN REPLY #58490 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #58492 /* ~"Leb wohl."~ */ EXIT
END
