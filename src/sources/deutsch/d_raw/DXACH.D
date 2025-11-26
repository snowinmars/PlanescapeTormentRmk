// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXACH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DXACH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #500 /* ~Du siehst eine männliche Leiche. Auf ihrem Schädel ist die Zahl "331" eingemeißelt. Ihre Augen und Lippen sind zugenäht, und in ihrem Hals klafft ein Loch. Sie riecht *faulig*.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #502 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #503 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1354 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1355 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #1357 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ GOTO 1
  IF ~~ THEN REPLY #1358 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.4
  SAY #501 /* ~Die Leiche starrt mit ihren erloschenen Augen still geradeaus.~ */
  IF ~~ THEN REPLY #505 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #504 /* ~"W... w..." Die Stimme des Zombies kehrt langsam zurück. Er klingt sehr beunruhigt. "Wer ist da?! So antworte doch!"~ */
  IF ~~ THEN REPLY #507 /* ~"Kannst du mich denn nicht sehen?"~ */ GOTO 3
  IF ~  CheckStatGT(Player1,16,INT)
CheckStatLT(Player1,17,CHR)
~ THEN REPLY #508 /* ~Improvisiere: "Ich bin's. Erkennst du meine Stimme nicht?"~ */ GOTO 30
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #63307 /* ~Improvisiere: "Ich bin's. Erkennst du meine Stimme nicht?"~ */ GOTO 30
  IF ~~ THEN REPLY #519 /* ~"Wer bist du?"~ */ GOTO 31
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #506 /* ~Xachariah?~ */ GOTO 4
  IF ~~ THEN REPLY #520 /* ~"Du sollst an diesem heutigen Tag keine Antworten erhalten, Leiche. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #509 /* ~"Blind bin ich, im Tod genauso wie ich es im Leben war... Aber jetzt antworte mir: Wer bist du?"~ */
  IF ~  CheckStatGT(Player1,16,INT)
CheckStatLT(Player1,17,CHR)
~ THEN REPLY #510 /* ~Improvisiere: "Ich bin's. Erkennst du meine Stimme nicht?"~ */ GOTO 30
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #63308 /* ~Improvisiere: "Ich bin's. Erkennst du meine Stimme nicht?"~ */ GOTO 30
  IF ~~ THEN REPLY #511 /* ~"Wer bist du?"~ */ GOTO 31
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #521 /* ~Xachariah?~ */ GOTO 4
  IF ~~ THEN REPLY #522 /* ~"Du sollst an diesem heutigen Tag keine Antworten erhalten, Leiche. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 3.3 30.0 31.0
  SAY #512 /* ~"Was... du hier!" Der Zombie macht einen bestürzten, aber erfreuten Eindruck. "Beim Blick der Dame..." Sein Ton wird fragend. "Bist du nicht *tot*, Schleifer?"~ */
  IF ~~ THEN REPLY #515 /* ~"Wer bist du?"~ */ GOTO 5
  IF ~~ THEN REPLY #516 /* ~"Was machst du hier?"~ */ GOTO 47
  IF ~~ THEN REPLY #517 /* ~"Was ist das für ein Ort?"~ */ GOTO 6
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #518 /* ~"Ich kann nicht lange mit dir reden. Ich muß fort. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1394 /* ~"Ich kann nicht lange mit dir reden. Ich muß fort. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #514 /* ~"Ganz schön übel, dieses schmutzige Leichentuch wegzuziehen und darunter den alten Narren Xachariah zu erblicken, was? Ich bin es, Schleifer. Gesegnet seien die Mächte, ich hätte nie gedacht, dich je wiederzusehen... Doch auch du hast dich verändert, wenn meine Ohren mich nicht täuschen... Hast du wieder eine schlechte Wahl getroffen?" Xachariah saugt Luft durch das Loch in seiner Kehle. "Bist du etwa auch tot?"~ */
  IF ~~ THEN REPLY #685 /* ~"Das ist eine lange Geschichte... aber nein, tot bin ich nicht."~ */ GOTO 46
  IF ~~ THEN REPLY #686 /* ~"Was machst du hier?"~ */ GOTO 47
  IF ~~ THEN REPLY #687 /* ~"Was ist das für ein Ort?"~ */ GOTO 6
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #688 /* ~"Ich habe keine Zeit mehr, mit dir zu reden, Xachariah. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1393 /* ~"Ich habe keine Zeit mehr, mit dir zu reden, Xachariah. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 5.2
  SAY #513 /* ~"In der Leichenhalle, Schleifer. Wußtest du das nicht?"~ */
  IF ~~ THEN REPLY #523 /* ~"Wie konnte es mit dir denn so weit kommen?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,12,INT)
~ THEN REPLY #524 /* ~"Was kannst du mir über die Leichenhalle sagen?"~ */ DO ~SetGlobal("Vaxis_Exposed","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #525 /* ~"Was kannst du mir über mein vorheriges Leben erzählen?"~ */ GOTO 16
  IF ~~ THEN REPLY #526 /* ~"Was kannst du mir von meinen damaligen Gefährten erzählen?"~ */ GOTO 23
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #527 /* ~"Ich muß gehen. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1392 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
  SAY #528 /* ~"Ja?"~ */
  IF ~  Global("Xachariah_Ring","GLOBAL",1)
~ THEN REPLY #63484 /* ~"Ich wollte diese Sache jetzt zurückholen, Xachariah..."~ */ GOTO 34
  IF ~~ THEN REPLY #637 /* ~"Wie konnte es mit dir denn so weit kommen?"~ */ GOTO 8
  IF ~~ THEN REPLY #638 /* ~"Was kannst du mir über die Leichenhalle sagen?"~ */ GOTO 9
  IF ~~ THEN REPLY #639 /* ~"Was kannst du mir über mein vorheriges Leben erzählen?"~ */ GOTO 16
  IF ~~ THEN REPLY #640 /* ~"Was kannst du mir über meine damaligen Gefährten erzählen?"~ */ GOTO 23
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1391 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ EXIT
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #641 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ GOTO 41
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.1
  SAY #529 /* ~Seine Stimme wird leise, als schäme er sich. "Es ist ein schwieriger Pfad, deinen Schritten zu folgen, und viele schreckliche Dinge habe ich gesehen. Ich habe angefangen zu trinken und wurde halb schwachsinnig von dem Zeug. Einmal war ich so stockbesoffen, daß ich meinen Körper den Staubmenschen versprochen habe. Das Schicksal hat beschlossen, mir noch einen Tritt zu versetzen, als ich am Boden lag, und kurz danach bin ich gestorben."~ */
  IF ~~ THEN REPLY #531 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #545 /* ~"Ich habe jetzt genug gehört. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1390 /* ~"Ich habe jetzt genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.2
  SAY #533 /* ~"Ein Ort der Toten, der von den Toten verwaltet wird... aber irgend etwas stimmt hier nicht..."~ */
  IF ~~ THEN REPLY #534 /* ~"Und was wären das für Fragen?"~ */ GOTO 10
  IF ~~ THEN REPLY #536 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #537 /* ~"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1389 /* ~"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #535 /* ~"Ich erzähl dir das Dunkel: Es gibt einen Zombie, der sich als Zombie ausgibt, aber keiner ist. Eigentlich ist mir egal, warum er das tut, aber merkwürdig ist es schon."~ */
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY #538 /* ~"Sonst noch was?"~ */ GOTO 11
  IF ~~ THEN REPLY #539 /* ~"Welcher Zombie ist das?"~ */ GOTO 12
  IF ~~ THEN REPLY #540 /* ~"Interessant. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #546 /* ~"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1388 /* ~"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #541 /* ~"Der alte Githzerai... der, der sich um den Vorbereitungsraum kümmert... Dhall. Er hat dich zigmal vor der Einäscherung bewahrt. Du hast Glück, daß er dir freundlich gesonnen ist."~ */
  IF ~  CheckStatGT(Player1,17,INT)
~ THEN REPLY #542 /* ~"Was genau hat Dhall getan, um mich zu retten?"~ */ GOTO 13
  IF ~~ THEN REPLY #543 /* ~"Ich weiß. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #544 /* ~"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1387 /* ~"Ich hab keine Zeit mehr, mit dir zu reden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #547 /* ~"Selbst wenn ich sie sehen könnte, ich kann mit Zahlen nichts anfangen. So erkennst du ihn, Schleifer: Seine Stimme paßt nicht zu einem Zombie... Er gibt andere Antworten als die anderen."~ */
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY #548 /* ~"Ist dir sonst noch irgendwas komisch vorgekommen an der Leichenhalle?"~ */ GOTO 11
  IF ~~ THEN REPLY #554 /* ~"Hmmm. Interessant. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #549 /* ~"Ich werde mich mal nach diesem Zombie umsehen. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1386 /* ~"Ich werde mich mal nach diesem Zombie umsehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #550 /* ~"Er hat einfach deine Einäscherung verschoben, bis du von der Bahre gesprungen bist. Weiß eigentlich nicht, warum."~ */
  IF ~~ THEN REPLY #552 /* ~"Interessant. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #553 /* ~"Ich muß gehen. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1385 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #555 /* ~"Er glaubte, verhindern zu müssen, daß... Ich... ich kann mich nicht mehr genau erinnern, weshalb."~ */
  IF ~~ THEN REPLY #557 /* ~"Hmmm. Verdächtig... Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #556 /* ~"Ich verstehe. Ich frage mich, ob das wirklich nötig war. Dhall und ich sollten uns mal darüber unterhalten... Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1384 /* ~"Ich verstehe. Ich frage mich, ob das wirklich nötig war. Dhall und ich sollten uns mal darüber unterhalten... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #558 /* ~Er wird leiser, als schämte er sich. "Als unsere Wege sich trennten, Schleifer, war nicht mehr viel Leben in mir. Es ist nicht leicht, in deine Fußstapfen zu treten, und ich sah viele schreckliche Dinge. Ich begann zu trinken und war schon halb benebelt von dem Zeug. Als ich vollkommen betrunken war, habe ich meinen Körper den Staubies überlassen. Das Schicksal versetzte mir einen Schlag, als ich ohnehin ganz unten war, und kurz darauf starb ich."~ */
  IF ~~ THEN REPLY #559 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #560 /* ~"Ich muß gehen. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1383 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.2 7.3
  SAY #561 /* ~"Weshalb? Hast du dich selbst vergessen?"~ */
  IF ~~ THEN REPLY #562 /* ~"Wenn du so willst... ja."~ */ GOTO 17
  IF ~~ THEN REPLY #563 /* ~"Nein, ich wollte nur sehen, ob du wirklich der bist, für den du dich ausgibst."~ */ GOTO 20
  IF ~~ THEN REPLY #564 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #565 /* ~"Ich muß gehen. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1382 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 21.0 22.0
  SAY #566 /* ~"Du warst eigenartig, immer mißtrauisch und immer nach irgend etwas auf der Suche... Jemand wie du hat sich wohl schon in seinem Leben viele Feinde gemacht. Und wenn sich jemand mit dir angelegte, landete er unweigerlich in den schwarzen Kapiteln des Totenbuches."~ */
  IF ~~ THEN REPLY #569 /* ~"Sonst noch was? Irgendwas Genaueres..."~ */ GOTO 18
  IF ~~ THEN REPLY #570 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #571 /* ~"Ich muß gehen. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1381 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #567 /* ~"Du konntest auch verdammt hart sein... zum Beispiel, als ich diesen Vertrag unterschreiben sollte, oder als du diese jammernde Braut auf Avernus sitzengelassen hast. Wir hatten auch Balor-mäßigen Spaß. Unter deiner Führung spielte keiner von uns je auch nur mit dem Gedanken, von Bord zu gehen, mein Sohn."~ */
  IF ~~ THEN REPLY #572 /* ~"Ich... verstehe. Was sonst noch? Alles, was du erzählst, könnte mir helfen."~ */ GOTO 19
  IF ~~ THEN REPLY #573 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #574 /* ~"Ich muß gehen. Leb wohl."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1380 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #568 /* ~"Im Grunde hast du alles, was dir widerfuhr, wie das Erobern von Gebieten im Krieg betrachtet; für dich war alles eine Schlacht, und du warst der rücksichtsloseste Mistkerl, dem ich je begegnet bin. Das einzige, was zählte, war dieses Ziel. Arme Deionarra mit ihrem Schluchzen und Flehen, das dich nicht erweichen konnte, der Gith, der dich vor deinen Strategien gewarnt hat, und der arme Xachariah, der einfach nur durchhalten wollte, als wir auf den Ebenen landeten. Du warst so zäh, als könnte selbst der Tod dir nichts anhaben, aber wir waren doch nur Menschen. Ich glaube, jetzt stecken wir alle im Totenbuch... oder halb drin und halb draußen sozusagen."~ */
  IF ~  GlobalLT("Xachariah_Ring","GLOBAL",2)
~ THEN REPLY #63234 /* ~"Sonst noch was?"~ */ GOTO 32
  IF ~~ THEN REPLY #576 /* ~Deionarra?~ */ GOTO 26
  IF ~~ THEN REPLY #577 /* ~"Den 'Gith'? Wen meinst du?"~ */ GOTO 24
  IF ~~ THEN REPLY #578 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #579 /* ~"Ich verstehe... Ich muß jetzt gehen. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1379 /* ~"Ich verstehe... Ich muß jetzt gehen. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #580 /* ~"Wie kann ich dir beweisen, daß ich es bin... An alles kann ich mich nicht erinnern, aber warte: Wie wäre es denn damit... Weißt du noch, als wir unseren Weg durch Avernus bahnten und auf diesen Haufen Abishai in dieser madenverseuchten Grube stießen?"~ */
  IF ~~ THEN REPLY #581 /* ~Lüge: "Ja."~ */ GOTO 21
  IF ~~ THEN REPLY #582 /* ~"Nein."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #583 /* ~"Freut mich sehr, daß sich wenigstens einer von uns daran erinnert, denn ich tue es nicht, das ist so sicher wie Balor. Wer bist du, Schleifer, und was versprichst du dir davon, in den Erinnerungen toter Menschen herumzustöbern?"~ */
  IF ~~ THEN REPLY #584 /* ~"Ich will mich selbst finden. Ich habe wirklich vergessen, wer ich bin, Xachariah, und ich glaube, daß du mich gekannt hast. Was kannst du mir über mein vorheriges Leben erzählen?"~ */ GOTO 17
  IF ~~ THEN REPLY #586 /* ~"Vergiß es einfach. Ich hätte ein paar Fragen."~ */ EXIT
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #587 /* ~"Nichts... ich muß fort. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1378 /* ~"Nichts... ich muß fort. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #588 /* ~"Hmmm. Na gut, vielleicht war es auch anders. Versuchen wir's mal damit: Weißt du noch, als Deionarra bei dem Versuch, dich von Verdammnis fernzuhalten, um ein Haar im Totenbuch gelandet wäre?"~ */
  IF ~~ THEN REPLY #590 /* ~"Nein... nicht wirklich. Aber das ist in Ordnung. Ich glaube, du hast mich gekannt. Kannst du mir also etwas über mein vorheriges Leben erzählen?"~ */ GOTO 17
  IF ~~ THEN REPLY #591 /* ~"Macht nichts... Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #592 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1377 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.3 7.4
  SAY #589 /* ~"Ein bunter Haufen waren wir... ein Halbtoter, dessen Versuche, ins Totenbuch zu gelangen, alle scheiterten (er war so häßlich, daß nicht einmal die Mächte des Todes ihn wollten), eine jammernde Anwaltstochter, ein Gith im Exil, ein wippender Totenschädel mit der Zunge eines Schakals und ein halb betrunkener blinder Bogenschütze wie ich."~ */
  IF ~~ THEN REPLY #593 /* ~Gith?~ */ GOTO 24
  IF ~~ THEN REPLY #594 /* ~"Wimmernde Anwaltstochter?"~ */ GOTO 26
  IF ~~ THEN REPLY #595 /* ~"Ein schwebender Totenschädel?"~ */ GOTO 28
  IF ~~ THEN REPLY #596 /* ~"Du warst ein blinder Bogenschütze?"~ */ GOTO 49
  IF ~~ THEN REPLY #597 /* ~"Weißt du, was mit meinem Journal passiert ist?"~ */ GOTO 29
  IF ~~ THEN REPLY #598 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #599 /* ~"Ich muß gehen. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1376 /* ~"Ich muß gehen. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2 23.0 27.0
  SAY #600 /* ~"Ein finster dreinblickender Gith... unfreundlich und schweigsam, wie alle anderen auch. Ich habe ihm kein Stück über den Weg getraut. Weißt du, Schleifer, diese spindeldürren Giths haben nur zwei Dinge im Kopf: Sich von der Sklaverei fernzuhalten und die tintenfischköpfigen Illithids zu töten. Alles andere war zweitrangig, abgesehen von dir kümmerte er sich nicht die Bohne um uns."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #601 /* ~"Warum das?"~ */ GOTO 25
  IF ~~ THEN REPLY #602 /* ~"Zu einigen meiner anderen Gefährten..."~ */ GOTO 27
  IF ~~ THEN REPLY #603 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #604 /* ~"Hmmm. Interessant. Danke, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1375 /* ~"Hmmm. Interessant. Danke, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0
  SAY #605 /* ~"Eines der Dunkel, die ich nie lüften konnte, Schleifer. Vielleicht hilfst du mir auf die Sprünge?"~ */
  IF ~~ THEN REPLY #606 /* ~"Ich weiß es selbst nicht. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #607 /* ~"Vielleicht sollte ich das lieber herausfinden. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1374 /* ~"Vielleicht sollte ich das lieber herausfinden. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.1 23.1 27.1
  SAY #608 /* ~"Diese halbwüchsige Möchtegern-Kämpferin schwor, sie würde dir nach Baator und zurück folgen, und, bei den Mächten, der Gedanke, ihr könntet voneinander getrennt sein, machte sie so fertig, daß sie ihren Schwur hielt. Ich oder der Gith waren ihr so was von egal. Ihr Herz schlug nur für dich, ein Beweis dafür, wie bescheuert sie war. Ich hab' ja keine Ahnung, was die Weiber in deinem Narbengesicht sehen, aber irgendwas bringt ihr Blut in Wallung. Sie war so 'ne reiche Göre aus dem Bezirk der Kuratoren, und du brauchtest etwas von ihr, und der einzige Preis dafür war, daß sie mit dir kommen durfte."~ */
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #609 /* ~"Was wollte ich denn von ihr?"~ */ GOTO 25
  IF ~~ THEN REPLY #610 /* ~"Zu einigen meiner anderen Gefährten..."~ */ GOTO 27
  IF ~~ THEN REPLY #614 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #611 /* ~"Ich habe jetzt genug gehört. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1373 /* ~"Ich habe jetzt genug gehört. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.1 28.0 29.0 33.1 49.0
  SAY #612 /* ~"Welcher?"~ */
  IF ~~ THEN REPLY #613 /* ~"Der Gith."~ */ GOTO 24
  IF ~~ THEN REPLY #615 /* ~"Die 'wimmernde Anwaltstochter'."~ */ GOTO 26
  IF ~~ THEN REPLY #616 /* ~"Der schwebende Totenschädel."~ */ GOTO 28
  IF ~~ THEN REPLY #617 /* ~"Du... warst ein... blinder Bogenschütze?"~ */ GOTO 49
  IF ~~ THEN REPLY #618 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #619 /* ~"Ich habe jetzt genug gehört. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1372 /* ~"Ich habe jetzt genug gehört. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.2 27.2
  SAY #620 /* ~"Ach was, dieser Totenschädel mit seinem dreckigen Geschwätz hat doch geradezu danach geschrien, verprügelt zu werden! Er hat doch nur rumgeprahlt und sich über meinen Zustand lustig gemacht!"~ */
  IF ~~ THEN REPLY #622 /* ~"Zu einigen meiner anderen Gefährten..."~ */ GOTO 27
  IF ~~ THEN REPLY #623 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #624 /* ~"Ich habe jetzt genug gehört. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  GlobalGT("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #1371 /* ~"Ich habe jetzt genug gehört. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.4
  SAY #625 /* ~"Dieses Album, das du dir aus deinem eigenen Fleisch zusammengenäht hast und das mehr Seiten zählte als ich Lebensjahre?! Was für ein Glück, wenn du dieses verteufelte Buch wirklich verloren hast! Du hast doch ständig irgendwas hinein gekritzelt, und es stank zum Himmel. Du schienst ständig Angst zu haben, jemand könnte es dir plötzlich wegnehmen... Du hast geschrieben, bis sich die Haut von deinen Fingern löste. Ich fragte mich, ob du den Inhalt deiner ganzen Rübe durch diesen Stift aufs Papier bringen wolltest. Durch deine Schreiberei hast du uns manchmal tagelang aufgehalten. Was habe ich dieses verdammte Buch gehaßt. Es schien dein Herz im Griff zu haben, und es war gewiß kein sanfter Griff. Das letzte Mal, das ich es gesehen habe, Schleifer, war es in deinem Besitz. Wenn's nicht bei dir ist, hab ich keine Ahnung, wo auf den Ebenen es sein könnte."~ */
  IF ~~ THEN REPLY #626 /* ~"Um nochmal auf meine Gefährten zurückzukommen..."~ */ GOTO 27
  IF ~~ THEN REPLY #627 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #628 /* ~"Danke für die Auskunft. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1370 /* ~"Danke für die Auskunft. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.1 2.2 3.0 3.1
  SAY #629 /* ~"Kommt mir irgendwie bekannt vor... Aber wenn du der bist, für den ich dich halte, dann... wer..." Der Zombie ist einen Augenblick lang still. "Wer bin ich?"~ */
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #631 /* ~Xachariah?~ */ GOTO 4
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #632 /* ~"Dein Name ist mir nicht bekannt. Vielleicht komme ich wieder, wenn er mir einfällt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.3 3.2
  SAY #630 /* ~"Ich..." Der Zombie schweigt. "... mein Name... ist mir entfallen. Ich... ich weiß nicht mehr, wer ich bin."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #634 /* ~Xachariah?~ */ GOTO 4
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #635 /* ~"Ich kenne deinen Namen nicht. Vielleicht komme ich wieder, wenn ich ihn weiß. Leb wohl."~ */ EXIT
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #636 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.0
  SAY #642 /* ~"Du hast etwas vergessen, als du fortgingst, Schleifer... Du hast Deionarra mit ihrem Kummer, Dak'kon ohne Meister und den Schädel ohne Freund zurückgelassen. Und ich? Du hast mir etwas so tief in die Brust gebohrt, daß es für den Rest meines Lebens dort blieb. Ließ mir fast das Blut gefrieren, wie ein kalter Bleiklumpen steckte mir das Ding in der Brust."~ */
  IF ~~ THEN REPLY #645 /* ~"Was ist es?"~ */ DO ~SetGlobal("Xachariah_Ring","GLOBAL",1)
~ GOTO 33
  IF ~~ THEN REPLY #646 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #648 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1369 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #643 /* ~"Ich... Ich weiß es nicht. Aber es hat mich irgendwie verändert. Hat mich innen drin verändert. Ich lag sowieso im Sterben, als du es in meine Brust gebohrt hast, deshalb war es mir in dem Moment ziemlich egal."~ */
  IF ~~ THEN REPLY #649 /* ~"Kann ich ihn zurückbekommen?"~ */ GOTO 34
  IF ~~ THEN REPLY #650 /* ~"Zu meinen anderen Gefährten..."~ */ GOTO 27
  IF ~~ THEN REPLY #651 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #652 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1368 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 7.0 33.0
  SAY #644 /* ~"Er sitzt ganz schön tief. Ohne ein Skalpell und ohne meine Anweisungen wirst du ihn nie herauskriegen. Hast du ein Skalpell?"~ */
  IF ~  PartyHasItem("Scalpel")
~ THEN REPLY #647 /* ~"Ja."~ */ GOTO 36
  IF ~  !PartyHasItem("Scalpel")
~ THEN REPLY #653 /* ~"Nein... Aber ich sollte einfach die Fäden ziehen können."~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from:
  SAY #654 /* ~"Dann komm am besten wieder, wenn du dir eines besorgt hast, damit wir das Ding rausholen können."~ */
  IF ~~ THEN REPLY #655 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #656 /* ~"Ich werde mich mal danach umsehen. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0 34.1
  SAY #657 /* ~"Setz die Klinge fünf Zentimeter unter dem Brustbein an und taste nach ihm."~ */
  IF ~~ THEN REPLY #658 /* ~Tu das.~ */ GOTO 37
  IF ~~ THEN REPLY #659 /* ~"Macht nichts, Xachariah... Ich würde dir statt dessen aber gern ein paar Fragen stellen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #660 /* ~"Das kann ich jetzt nicht, ich muß fort. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1367 /* ~"Das kann ich jetzt nicht, ich muß fort. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #661 /* ~"Etwas weiter links... noch etwas weiter..." Deine Hand umschließt einen Gegenstand.~ */
  IF ~~ THEN REPLY #663 /* ~Zieh es raus.~ */ DO ~GiveItemCreate("XacLiver",Protagonist,0,0,0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #662 /* ~Du ziehst eine Zombieleber heraus. "Beim Blick der Dame! Tut mir leid, Schleifer... Ich dachte, die Staubmenschen hätten uns alle Organe bereits entnommen, bevor sie uns aus dem Totenbuch holten. Los, versuch's noch einmal. Vielleicht weiter rechts."~ */
  IF ~~ THEN REPLY #664 /* ~Tu's noch einmal.~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #665 /* ~"Gut... jetzt etwas nach rechts und nach hinten... noch etwas weiter..." Du spürst etwas Hartes und Kaltes, das etwas größer ist, als du erwartet hast. "Ich glaube, das ist er. Hol ihn raus."~ */
  IF ~~ THEN REPLY #666 /* ~Zieh es raus.~ */ DO ~SetGlobal("Xachariah_Ring","GLOBAL",2)
GiveItemCreate("XacHeart",Protagonist,1,0,0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #667 /* ~Du hältst ein schwärzliches, faustgroßes Objekt in der Hand, das für seine Größe äußerst schwer ist. "Das ist es. Hmm. Größer als ich dacht. Ist das... Was ist das? Sieht aus wie... ein Herz."~ */
  IF ~~ THEN REPLY #668 /* ~"Ja, ich glaube schon. Danke, Xachariah. Ich hätte da noch ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #669 /* ~"Sieht so aus. Ich muß jetzt gehen. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1366 /* ~"Sieht so aus. Ich muß jetzt gehen. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
  SAY #670 /* ~"Bevor du gehst, mußt du mir noch einen kleinen Gefallen tun, Schleifer."~ */
  IF ~~ THEN REPLY #672 /* ~"Was ist es?"~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 42
  IF ~~ THEN REPLY #671 /* ~"Ich habe schon genügend Gefallen und Aufgaben, daß es erst mal für eine Weile reicht... Ich muß jetzt gehen, Xachariah. Leb wohl."~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 45
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #673 /* ~Er wird leiser, als schämte er sich. "Ich habe Fehler gemacht, sogar ein paar ganz dumme Fehler. Der schlimmste war, daß ich diesen Staubmenschen-Vertrag unterschrieben habe. Hätte ich nicht so viel Fusel intus gehabt, hätte ich das nie und nimmer getan. Ich bereue es und habe gehofft, du könntest das in Ordnung bringen."~ */
  IF ~~ THEN REPLY #675 /* ~"Wie?"~ */ GOTO 43
  IF ~~ THEN REPLY #676 /* ~"Ich habe schon genügend Gefallen und Aufgaben, daß es erst mal für eine Weile reicht... Ich muß jetzt gehen, Xachariah. Leb wohl."~ */ GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #677 /* ~"Diese Leiche wird sich lange halten, glaub ich... und mir kommt schon ein einziger Tag zu lang vor. Könntest du mich vielleicht noch einmal ausnehmen, Schleifer... um der alten Zeiten willen? Bei dem Gedanken, mich noch ein paar Jahre mit diesen Milchgesichtern hier in der Leichenhalle herumschlagen zu müssen, läuft es mir eiskalt den Rücken runter. Kannst du dafür sorgen, daß ich zurück ins Totenbuch komme, wo ich hingehöre?"~ */
  IF ~~ THEN REPLY #679 /* ~"Wenn du das möchtest..."~ */ DO ~Kill(Myself)
~ GOTO 44
  IF ~~ THEN REPLY #680 /* ~"Xachariah, ich werde dich nicht töten. Nicht noch einmal. Leb wohl."~ */ GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #678 /* ~Du nimmst ihn aus, und Xachariah fällt mit einem dumpfen Geräusch zu Boden. Du hörst ein leichtes Zischen und siehst, wie der Brustkorb sich noch einmal hebt, bevor die Leiche ein letztes Rasseln von sich gibt.~ */
  IF ~~ THEN REPLY #681 /* ~"Ruhe in Frieden, Xachariah."~ */ DO ~SetGlobal("Xachariah_Gutted","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1 43.1
  SAY #682 /* ~"Schon gut. Jetzt brauchst du mich ja wohl nicht mehr."~ */
  IF ~~ THEN REPLY #684 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 5.0
  SAY #683 /* ~"Hm, die Tatsache, daß du tot bist, Schleifer, würde wohl niemand anzweifeln. Aber wie kommt es, daß du mit mir sprichst? Deine Stimme ist kristallklar..."~ */
  IF ~~ THEN REPLY #689 /* ~"Was machst du hier?"~ */ GOTO 47
  IF ~~ THEN REPLY #690 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #691 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1365 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 4.1 5.1 46.0
  SAY #692 /* ~"Ich bin ein Müllkutscher am leblosesten aller Orte. Ich wünschte, ich könnte die Ewige Grenze überschreiten und eine Ebene mein Heim nennen, doch von meiner Seele wurde viel verschwendet, und jetzt bin ich hier."~ */
  IF ~~ THEN REPLY #693 /* ~"Wie ist das denn eigentlich, so als Zombie?"~ */ GOTO 48
  IF ~~ THEN REPLY #695 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #696 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1364 /* ~"Ich muß fort. Leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #694 /* ~"Das ist ehrliche Arbeit… Die Naht an Xachariahs Mund löst sich, und seine Lippen zeigen etwas, was an ein Lächeln erinnerte. "…Es interessiert mich kaum.""~ */
  IF ~~ THEN REPLY #697 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #698 /* ~"Dann leb wohl, Xachariah."~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #633 /* ~"Dann leb wohl, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.3 27.3
  SAY #63625 /* ~"Das war ich. Du hast es wirklich vergessen, nicht wahr? Alle Menschen sehen mit mehr als mit ihren Augen, Schleifer... manche besser als andere. Ich spürte die Herzen meiner Feinde - *deiner* Feinde - und meine Pfeile trafen immer ins Schwarze. Ach, das waren noch Zeiten..."~ */
  IF ~~ THEN REPLY #63626 /* ~"Zu einigen meiner anderen Gefährten..."~ */ GOTO 27
  IF ~~ THEN REPLY #63627 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #63628 /* ~"Hmmm. Interessant. Danke, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #63629 /* ~"Hmmm. Interessant. Danke, Xachariah."~ */ EXIT
END
