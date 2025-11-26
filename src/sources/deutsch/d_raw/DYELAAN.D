// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYELAAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DYELAAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58377 /* ~Du siehst eine junge Frau. Ihr Gesicht ist schmutzig, ihr Haar ungekämmt, und ihre Kleider scheinen aus den Resten verschiedener Kleidungsstücke zusammengeflickt zu sein. Sie blickt dich finster an, als du näherkommst.~ */
  IF ~~ THEN REPLY #58378 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58379 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58380 /* ~Sie schaut sich mißtrauisch um und weicht einen Schritt zurück. "Was willst du, Dussel?"~ */
  IF ~~ THEN REPLY #58381 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58382 /* ~"Nichts. Leb wohl."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58383 /* ~Sie starrt dich einen Augenblick lang an, und ihre Anspannung läßt etwas nach. "Ich kann nur hoffen, daß das alles ist, was du willst." Sie taxiert dich mißtrauisch.~ */
  IF ~~ THEN REPLY #58384 /* ~"Was sollte ich wohl sonst wollen?"~ */ GOTO 3
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58386 /* ~"Alles, was ich will, sind einige Antworten."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58387 /* ~"Alles, was ich will, sind einige Antworten."~ */ GOTO 7
  IF ~~ THEN REPLY #58388 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58389 /* ~Sie zieht die Augenbrauen hoch und stemmt die Hände in die Hüften. "Paß auf, Dussel: So häßlich bin ich nicht, und es gibt hier unten nicht gerade ne Menge Frauen. Also denk mal nach."~ */
  IF ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN REPLY #58390 /* ~"Alles, was ich will, sind einige Antworten."~ */ GOTO 4
  IF ~  Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58391 /* ~"Alles, was ich will, sind einige Antworten."~ */ GOTO 7
  IF ~~ THEN REPLY #58392 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58393 /* ~"Klar, wieso n..." Sie unterbricht sich plötzlich und betrachtet dich aufmerksam. Auf ihrem Gesicht erscheint ein Ausdruck der Erleuchtung. "Moment mal. Ein großer Dussel mit Narben und 'ner merkwürdigen Frisur... Du bist doch der, der den Spieß gegen Roberta gedreht hat!"~ */
  IF ~~ THEN REPLY #58394 /* ~"Roberta Parfidor... ? Ist sie hier unten?"~ */ GOTO 5
  IF ~~ THEN REPLY #58395 /* ~"Ich weiß nicht, wovon du redest."~ */ GOTO 6
  IF ~~ THEN REPLY #58396 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58397 /* ~"Ja, sie ist hier." Sie hält inne und grinst. "Du solltest sie besuchen. Sie würde sich wahnsinnig freuen."~ */
  IF ~~ THEN REPLY #58398 /* ~"Ja, das würde es bestimmt, aber zuerst habe ich einige Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58399 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58401 /* ~Sie sieht dich ärgerlich an. "Das war ja klar. Also, was wolltest du?"~ */
  IF ~~ THEN REPLY #58404 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58406 /* ~"Ach, nichts."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 15.1 16.0 17.0
  SAY #58408 /* ~"Frag, was du willst."~ */
  IF ~~ THEN REPLY #58409 /* ~"Wer bist du?"~ */ GOTO 8
  IF ~~ THEN REPLY #58410 /* ~"Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #58411 /* ~"Ich suche nach einem Deva. Wie ich höre, ist er hier."~ */ GOTO 13
  IF ~~ THEN REPLY #58413 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58415 /* ~"Ich bin Yelaan. Kein so toller Name, aber so heiße ich nun einmal."~ */
  IF ~~ THEN REPLY #58418 /* ~"Warum bist du hier?"~ */ GOTO 9
  IF ~~ THEN REPLY #58420 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58423 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58425 /* ~Sie denkt einen Augenblick nach und zuckt dann die Schultern. "Ich habe irgend so ein Flittchen zusammengeschlagen, das mir Kundschaft stehlen wollte. Man hat mich erwischt und hier eingelocht."~ */
  IF ~~ THEN REPLY #58427 /* ~"Kundschaft stehlen?"~ */ GOTO 10
  IF ~~ THEN REPLY #58429 /* ~"Wen hast du zusammengeschlagen?"~ */ GOTO 11
  IF ~~ THEN REPLY #58431 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58434 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #58436 /* ~"Ich hab als Hure gearbeitet, und das Geschäft lief ganz gut... bis sie aufkreuzte. Also hab ich mir gedacht, wenn ich ein bißchen was an ihrem Aussehen verändere, krieg ich meine Kundschaft wieder." Sie seufzt.~ */
  IF ~~ THEN REPLY #58439 /* ~"Wen hast du zusammengeschlagen?"~ */ GOTO 11
  IF ~~ THEN REPLY #58443 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58445 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #58448 /* ~Sie denkt einen Moment nach und zuckt mit den Achseln. "Kann mich an den Namen nicht mehr erinnern... Vielleicht hab ich ihn auch nie gekannt. Sie war Konkurrenz, mehr brauchte ich nicht zu wissen."~ */
  IF ~~ THEN REPLY #58453 /* ~"Du sagst, sie hat dir Kundschaft gestohlen?"~ */ GOTO 10
  IF ~~ THEN REPLY #58455 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58457 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #58459 /* ~Sie starrt dich einen Moment lang an, und du siehst, wie sich in ihrem Auge eine Träne bildet. Sie wischt sie rasch weg und sammelt sich. "Was gibt es da schon zu sagen... Dies ist ein Gefängnis, und das Leben hier ist mies. Man sagt, es gibt schlimmere Gefängnisse, aber ich glaub nicht so recht dran..." Die Stimme versagt ihr und wird zu einem Flüstern. "Wenn ich nur alles noch einmal anders machen könnte..."~ */
  IF ~~ THEN REPLY #58461 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58463 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #58465 /* ~Sie nickt. "Es ist ein Deva hier unten... irgendwo. Ich selbst hab ihn zwar nie gesehen, aber es wird viel geredet über ihn. Die meisten nennen ihn den *Pestboten.*"~ */
  IF ~~ THEN REPLY #58469 /* ~"Pestboten?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #58472 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58475 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58478 /* ~"Ja,... gleich nachdem man ihn fand, brach hier unten die Pest aus. Fegte durchs ganze Gefängnis. Hat die meisten von uns ausgelöscht, wie man mir erzählte." Sie zuckt mit den Achseln. "Viele sagen, er sei der Grund, aber ich weiß nicht recht."~ */
  IF ~~ THEN REPLY #58480 /* ~"Wo kann ich ihn finden?"~ */ GOTO 15
  IF ~~ THEN REPLY #58482 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58486 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58488 /* ~Sie zuckt mit den Achseln. "Ich weiß nicht. Irgendwo in der Nähe, mehr kann ich auch nicht sagen."~ */
  IF ~~ THEN REPLY #58489 /* ~"Du weißt, er ist in der Nähe, aber du weißt nicht genau, wo..."~ */ GOTO 16
  IF ~~ THEN REPLY #58491 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58493 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58494 /* ~Sie nickt. "Paß auf, Dussel. Die Pest ist hier durchgefegt und hat nicht viel übriggelassen, und viele behaupten, der Deva sei schuld daran. Wieso in Baators Namen sollte ich ihn wohl suchen gehen?"~ */
  IF ~~ THEN REPLY #58495 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58496 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #58497 /* ~Du siehst Yelaan. Sie winkt dir zu, als du näherkommst. "Wieder hier? Was gibt's?"~ */
  IF ~~ THEN REPLY #58498 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #58499 /* ~"Nichts. Leb wohl."~ */ EXIT
END
