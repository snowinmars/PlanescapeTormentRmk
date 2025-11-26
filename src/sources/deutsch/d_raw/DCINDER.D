// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCINDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCINDER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34264 /* ~Du siehst einen großen Händler, der hektisch rumrennt. Er scheint überhaupt keine Haare zu haben und seine blasse, gelbe Haut ist mit Narben übersät, die von Verbrennungen zu stammen scheinen. Er sieht dich eindringlich an, als du dich näherst.~ */
  IF ~~ THEN REPLY #34265 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #34266 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34267 /* ~Er lächelt dich an. "Sei gegrüßt. Ich bin Staub-und-Asche. Ich habe schon von dir gehört. Du mußt der narbenübersäte planlose Kerl sein, der durch die Bezirke wandert und Fragen stellt. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #34268 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34269 /* ~"Du siehst aus, als hättest du selbst ein paar Narben."~ */ GOTO 13
  IF ~~ THEN REPLY #34270 /* ~"Nichts, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 5.0 9.0 10.0 13.1 14.1 15.0 16.0 17.1 18.2 20.1 21.2 22.2 23.1 24.2 25.1 26.1 28.1
  SAY #34271 /* ~"Ich beantworte gern deine Fragen..." Er kneift die Augen zusammen und lächelt dich verschmitzt an. "Über den Laden und die Ware, die du hier siehst, meine ich. Aber ich bin kein Schlepper."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34272 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34273 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 4
  IF ~~ THEN REPLY #34274 /* ~"Ich will Waffen kaufen."~ */ GOTO 9
  IF ~~ THEN REPLY #34275 /* ~"Ich will magische Gegenstände kaufen."~ */ GOTO 10
  IF ~~ THEN REPLY #34276 /* ~"Ich interessiere mich für Zauber."~ */ GOTO 11
  IF ~~ THEN REPLY #34277 /* ~"Wo bin ich hier?"~ */ GOTO 17
  IF ~~ THEN REPLY #34278 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34279 /* ~Er runzelt nachdenklich die Stirn. "Lothar... Herrn der... nein, das sagt mir überhaupt nichts."~ */
  IF ~~ THEN REPLY #34280 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34281 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #34282 /* ~Er runzelt die Stirn. "Ein Schädel? Du meinst, ein... Schädel?"~ */
  IF ~~ THEN REPLY #34283 /* ~"Ja, ein Schädel."~ */ GOTO 5
  IF ~~ THEN REPLY #34284 /* ~"Nein, ich will dich nur veralbern."~ */ GOTO 6
  IF ~~ THEN REPLY #34285 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34286 /* ~Er sieht verwirrt aus. "Ich sehe keinen Grund, wieso du einen Schädel haben solltest, und erst recht keinen, wieso irgendein Dussel ihn dir stehlen sollte."~ */
  IF ~~ THEN REPLY #34287 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34288 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #34289 /* ~Er blickt dich wütend an. "Es ist offensichtlich, daß wir hier nicht auf einer Wellenlänge liegen, Schleifer. Komm wieder, wenn du seriöser geworden bist."~ */
  IF ~~ THEN REPLY #34290 /* ~"Ich will dich noch was fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #34291 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #34292 /* ~Er sieht wütend aus. "Deine Fragen interessieren mich nicht. Willst du was *kaufen*? Denn ich habe keine Zeit, hier rumzustehen und deine Fragen zu beantworten. Wenn du quatschen willst, dann geh zu Lazlo, dem faulen Burschen da drüben. Der Junge redet sogar noch Kreise um die Großen Ringe, wenn man ihn läßt."~ */
  IF ~~ THEN REPLY #34293 /* ~"Lazlo?"~ */ GOTO 8
  IF ~~ THEN REPLY #34294 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34295 /* ~Er nickt. "Er paßt normalerweise auf den Ofen da auf."~ */
  IF ~~ THEN REPLY #34296 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #34297 /* ~Er zeigt zum anderen Ende des Marktes. "Dann ist Anze der Richtige. Seine Absteige ist da drüben beim Ofen."~ */
  IF ~~ THEN REPLY #34298 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34299 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #34300 /* ~Er deutet auf die andere Seite des Marktes. "Dann geh zu Aalek. Sein Stand ist da hinten, beim Ofen."~ */
  IF ~~ THEN REPLY #34301 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34302 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.4 16.1
  SAY #34303 /* ~Er lächelt. "Dann bist du hier richtig. Ich zeig dir mal meine Ware."~ */
  IF ~~ THEN REPLY #34304 /* ~"In Ordnung."~ */ DO ~StartStore("Cindstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34305 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #34306 /* ~Null node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #34310 /* ~Er runzelt die Stirn und fängt dann an zu lachen. "Ja, da hast du recht. Vor ein paar Jahren hatte ich meinen Stand im Stock. Irgendein übergeschnappter Magier hat dann auf einmal beschlossen, den Bezirk aus Sigil regelrecht wegzubrennen. Wär fast mit draufgegangen. War einen ganzen Monat krank."~ */
  IF ~~ THEN REPLY #34311 /* ~"Einen Monat? Das geht doch noch."~ */ GOTO 14
  IF ~~ THEN REPLY #34312 /* ~"Aha. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #34313 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34314 /* ~Er nickt und sein Blick schweift für eine Weile in die Ferne. "Ja, es hätte schlimmer kommen können. Der örtliche Magier hat mich geheilt, die Narben geheilt und so weiter. Hätte mir wieder Haare wachsen lassen können, aber mir gefiel's so eigentlich ganz gut."~ */
  IF ~~ THEN REPLY #34315 /* ~"Glaubst du, dieser Magier kann etwas gegen meine Narben tun?"~ */ GOTO 15
  IF ~~ THEN REPLY #34316 /* ~"Aha. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #34317 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34318 /* ~Er sieht dich an und zuckt dann die Schultern. "Ich denke schon. Deine Narben sehen nicht so schlimm aus..." Er sieht dich genauer an. "Am besten, du sprichst selbst mit ihm. Er heißt Sebastion. Du findest ihn da hinten bei der Gießerei."~ */
  IF ~~ THEN REPLY #34319 /* ~"Das mach ich vielleicht. Ich habe da ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #34320 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #34321 /* ~Staub-und-Asche lächelt dich an. "Da bist du ja wieder! Was kann ich diesmal für dich tun?"~ */
  IF ~~ THEN REPLY #34322 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34323 /* ~"Ich brauche ein paar Zauber."~ */ GOTO 11
  IF ~~ THEN REPLY #34324 /* ~"Nichts, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.5
  SAY #34325 /* ~Er deutet mit seiner Hand stolz auf den Platz. "Das hier ist der Markt, einer der besten Läden in Sigil. Das Glück war dir hold, als du hergekommen bist, Schleifer. Wir haben einen leeren Stand." Er zeigt auf den Stand neben seinem. "Wenn du selbst ein Händler bist, kannst du dich hier niederlassen und hier Handel treiben, solange du nicht zu laut bist oder zu sehr störst..."~ */
  IF ~~ THEN REPLY #34326 /* ~"Wieso ist dieser Stand leer?"~ */ GOTO 18
  IF ~~ THEN REPLY #34327 /* ~"Ich werde es mir merken. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34328 /* ~"Danke, aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34329 /* ~Er wirft einen Blick auf den leeren Stand. "Ein Händler namens Zac hatte da seinen Stand. Hat sich kürzlich eine Seite im Totenbuch zugelegt." Er runzelt die Stirn. "Eine seltsame Geschichte war das."~ */
  IF ~~ THEN REPLY #34330 /* ~"Seltsam? Inwiefern?"~ */ GOTO 19
  IF ~~ THEN REPLY #34331 /* ~"Im Totenbuch?"~ */ GOTO 25
  IF ~~ THEN REPLY #34332 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34333 /* ~"Danke, aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 25.0
  SAY #34334 /* ~Er denkt eine Weile nach. "Nun... ich kenne zwar nicht das ganze Dunkel, aber soweit ich weiß, war Zac in finanziellen Schwierigkeiten und brauchte Geld. Er nahm also bei Byron Nimms, dem Geldverleiher, einen Kredit auf. Danach hat Nimms versucht, ihm den Laden wegzunehmen, aber Zac hat sich geweigert." Er hält inne.~ */
  IF ~~ THEN REPLY #34335 /* ~"Red' weiter."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #34336 /* ~Er seufzt und schüttelt den Kopf. "Nicht lange danach war Zac ein Totenbüchler. Nimms hat seine Witwe, Trist, vor Gericht gezerrt, um den Klimper zu kriegen, den Zac ihm schuldete. Sie hat behauptet, daß die Schulden abgezahlt wären, und gesagt, daß sie die Unterlagen hätte, um das zu beweisen... aber es stellte sich heraus, daß sie weg waren."~ */
  IF ~~ THEN REPLY #34337 /* ~"Was ist dann passiert?"~ */ GOTO 21
  IF ~~ THEN REPLY #34338 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34339 /* ~"Danke, aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34340 /* ~Er zuckt die Schultern. "Es gab keinen Beweis, daß die Schulden bezahlt waren, also wurde der Laden verkauft und die Witwe Trist für die restlichen Schulden zur Verantwortung gezogen. Sie konnte nicht zahlen, also kam sie aufs Podest."~ */
  IF ~~ THEN REPLY #34341 /* ~"Aufs Podest?"~ */ GOTO 22
  IF ~~ THEN REPLY #34342 /* ~"Du hast was von Unterlagen gesagt, die verschwunden sind."~ */ JOURNAL #31880 /* ~Jemand namens Byron Nimms treibt vielleicht einige zwielichtige Geschäfte. Er könnte einen Kaufmann namens Zac getötet und dann einige Dokumente von dessen Frau Trist gestohlen haben. Ohne diese Dokumente kann Trist nicht beweisen, daß sie eine Leihsumme bezahlt hat, so daß sie in die Sklaverei verkauft würde, um ihre Schulden zu decken. Vielleicht sehe ich mir die Sache mal genauer an.~ */ GOTO 24
  IF ~~ THEN REPLY #34343 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34344 /* ~"Danke, aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #34345 /* ~"Ja, aufs Versteigerungspodest. Wenn du deine Schulden nicht abzahlen kannst, wirst du zur Strafe verkauft und mußt ein paar Jahre Dienst ableisten." Er schüttelt traurig den Kopf.~ */
  IF ~~ THEN REPLY #34346 /* ~"Wo ist dieses Podest?"~ */ GOTO 23
  IF ~~ THEN REPLY #34347 /* ~"Du hast was von Unterlagen gesagt, die verschwunden sind."~ */ JOURNAL #31880 /* ~Jemand namens Byron Nimms treibt vielleicht einige zwielichtige Geschäfte. Er könnte einen Kaufmann namens Zac getötet und dann einige Dokumente von dessen Frau Trist gestohlen haben. Ohne diese Dokumente kann Trist nicht beweisen, daß sie eine Leihsumme bezahlt hat, so daß sie in die Sklaverei verkauft würde, um ihre Schulden zu decken. Vielleicht sehe ich mir die Sache mal genauer an.~ */ GOTO 24
  IF ~~ THEN REPLY #34348 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34349 /* ~"Danke, aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34350 /* ~"Geh vom Markt aus nach Norden. Geh dahin, wo die große Menschenmenge ist. Du kannst es nicht verfehlen."~ */
  IF ~~ THEN REPLY #34351 /* ~"Du hast was von Unterlagen gesagt, die verschwunden sind."~ */ JOURNAL #31880 /* ~Jemand namens Byron Nimms treibt vielleicht einige zwielichtige Geschäfte. Er könnte einen Kaufmann namens Zac getötet und dann einige Dokumente von dessen Frau Trist gestohlen haben. Ohne diese Dokumente kann Trist nicht beweisen, daß sie eine Leihsumme bezahlt hat, so daß sie in die Sklaverei verkauft würde, um ihre Schulden zu decken. Vielleicht sehe ich mir die Sache mal genauer an.~ */ GOTO 24
  IF ~~ THEN REPLY #34352 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34353 /* ~"Danke, aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1 22.1 23.0
  SAY #34354 /* ~"Ja. Trist sagte, daß ihr Mann Zac den Kredit ganz abbezahlt und daß sie die entsprechenden Unterlagen darüber hätte. Und als sie sie holen wollte, waren sie weg." Er grunzt und macht ein wütendes Gesicht. "Ich würd Klimper drauf verwetten, daß Nimms hinter dieser Sache steckt."~ */
  IF ~~ THEN REPLY #34355 /* ~"Wo finde ich diesen Nimms?"~ */ GOTO 26
  IF ~~ THEN REPLY #34356 /* ~"Beschäftigt sich irgend jemand mit dieser Angelegenheit?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34357 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #66229 /* ~"Danke, ich muß jetzt weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 18.1
  SAY #34358 /* ~Er sieht dich erstaunt an. "Ja, hast du denn überhaupt keinen Plan? Er wurde getötet und ins Totenbuch gesteckt."~ */
  IF ~~ THEN REPLY #34359 /* ~"Aha. Du wolltest mir gerade was über den leeren Stand erzählen."~ */ GOTO 19
  IF ~~ THEN REPLY #34360 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34361 /* ~"Danke, ich muß jetzt weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.0 28.0
  SAY #34362 /* ~"Hat seine Absteige direkt beim Markt, Schleifer. Kannste nicht verfehlen."~ */
  IF ~~ THEN REPLY #34356 /* ~"Beschäftigt sich irgend jemand mit dieser Angelegenheit?"~ */ DO ~SetGlobal("Corvus_Zac","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #34363 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #34364 /* ~"Danke, ich muß jetzt weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.0
  SAY #66230 /* ~"Ja, das Harmonium..." Er macht eine kurze Pause und seufzt dann. "Es konnten natürlich keine Beweise für eine Missetat gefunden werden. Corvus, eine der Harmonium-Wachen hier auf dem Markt, hat großes Interesse daran, herauszufinden, was Zac zugestoßen ist. Wenn irgendwas gefunden werden sollte, dann sollte es ihm gebracht werden..."~ */
  IF ~~ THEN REPLY #66231 /* ~"Wo finde ich Corvus?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #66232 /* ~"Er ist für gewöhnlich am Westausgang da drüben zu finden." Er seufzt. "Gibt's sonst noch was, das du wissen mußt?"~ */
  IF ~~ THEN REPLY #66233 /* ~"Wo finde ich Byron Nimms?"~ */ GOTO 26
  IF ~~ THEN REPLY #66234 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #66235 /* ~"Danke, ich muß jetzt weiter. Leb wohl."~ */ EXIT
END
