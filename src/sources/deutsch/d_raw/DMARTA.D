// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARTA~

IF ~  Global("Marta","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2831 /* ~Du siehst eine wuchtige Frau, die ein schweres Kleid aus Sackleinen trägt. Sie geht schwerfällig durch den Raum. Ihre Gelenke knacken, als sie sich nach vorn beugt, um Dinge von den verschiedenen Tischen aufzusammeln. Ihre Haare sind mit einer knöchernen Haarnadel nach hinten gesteckt und sie macht einen sauertöpfischen Eindruck. Sie murmelt in einem leichten Singsang vor sich hin.~ */
  IF ~~ THEN REPLY #20473 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #20474 /* ~Geh weg.~ */ EXIT
END

IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2832 /* ~Du siehst Marta. Sie bewegt sich schwerfällig durch den Raum, ihre Gelenke knacken, wenn sie sich herunterbeugt, um Dinge von den verschiedenen Tischen aufzunehmen. Sie ist in einen eigenartigen Singsang vertieft.~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20475 /* ~"Sei gegrüßt, Marta."~ */ GOTO 2
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20476 /* ~"Ich hätte ein paar Fragen an dich, Marta..."~ */ GOTO 30
  IF ~~ THEN REPLY #20477 /* ~Ignoriere Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #20432 /* ~Die Frau scheint dich nicht zu hören - vielmehr stolpert sie zurück zu einem der langen Tische und beginnt, an einer der Leichen herumzuzupfen. "Komm schon..." Sie klappert mit den Zähnen. "Mach's Marta nicht so schwer... er stellt sich an, nicht wahr, Marta...? Ja, ja, das tut er..."~ */
  IF ~~ THEN REPLY #20478 /* ~"Äh... sei gegrüßt?"~ */ GOTO 4
  IF ~  Global("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20479 /* ~Beobachte, was sie tut.~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",0)
~ THEN REPLY #20480 /* ~Beobachte, was sie tut.~ */ GOTO 3
  IF ~~ THEN REPLY #20481 /* ~Ignoriere Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2
  SAY #20433 /* ~Soweit du erkennen kannst, scheint sie Zähne aus dem Mund der Leiche zu entnehmen... nur mit Hilfe ihrer Hände und Fingernägel. Als das nicht funktioniert, zieht sie einen abgesplitterten, hölzernen Meißel und einen Holzhammer hervor und *schlägt* auf den Kiefer ein, bis der Zahn herausbricht, den sie dann in eine an ihrer Taille hängende Tasche steckt.~ */
  IF ~~ THEN REPLY #20482 /* ~"Äh... was tust du?"~ */ DO ~SetGlobal("Marta","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #20483 /* ~Ignoriere Marta, erkunde den Raum.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #20434 /* ~Marta springt erschrocken von der Leiche weg und stößt einen durchdringenden Schrei aus. "Aaahhh!" Sie ringt nach Luft, dann zischt sie wütend die Leiche auf dem Tisch an. "Wärest du nicht tot, hättest du vorher mal was sagen können, falsche Leiche, böse Leiche, ja! *Schämst* du dich nicht?"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20484 /* ~Mit lauter Stimme: "*Du* solltest dich schämen. Mir einfach so die Zähne rauszuschlagen... hast du keine Achtung vor den Toten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20485 /* ~Mit lauter Stimme: "*Du* solltest dich schämen. Mir einfach die Zähne und Fäden zu ziehen... hast du keine Achtung vor den Toten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20486 /* ~"Ich hab' hier gesprochen, nicht die Leiche."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20487 /* ~"Ich hab' hier gesprochen, nicht die Leiche."~ */ GOTO 10
  IF ~~ THEN REPLY #20488 /* ~Ignoriere Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #20435 /* ~"Hah!" Marta stemmt die Hände in die Hüften und bläst sich entrüstet auf. "Man sollte meinen, ihr hättet eure Zähne *gepflegt*! Alle schlecht, verfault und braun - ein Wunder, daß sie nicht aus deiner Knochenschüssel gefallen sind!" Sie kratzt sich am Kopf. "Stimmt's nicht, Marta? Ja, ganz schlecht und verfault sind sie..."~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20489 /* ~Mit lauter Stimme: "Ooooooh... du wirst *bestraft* werden für deinen gemeinen Zahnraub, Marta. Ich will dich *verfolgen* bis ans Ende deiner Tage..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20490 /* ~"Ich hab' hier gesprochen, nicht die Leiche."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20491 /* ~"Ich hab' hier gesprochen, nicht die Leiche."~ */ GOTO 10
  IF ~~ THEN REPLY #20492 /* ~Ignoriere Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20436 /* ~"Hah! Hörst du das, Marta? Hörst du?" Marta kneift ihr Gesicht zusammen wie einen ausgewrungenen Lumpen. "Ich hör's, Marta! Ich hör's!" Mit einem Grunzen beginnt sie, mit ihren Fäusten auf die Leiche einzuschlagen, bei jedem Schlag ist ein *fleischiges* Geräusch zu hören. "*Mich* ärgern, was! Nimm das! Und das!"~ */
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20493 /* ~Mit lauter Stimme: "Ooooooh... hör auf... hör auf... ich will dich nicht weiter verfolgen... vergib mir..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20494 /* ~"Ich hab' hier gesprochen, nicht die Leiche."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20495 /* ~"Ich hab' hier gesprochen, nicht die Leiche."~ */ GOTO 10
  IF ~~ THEN REPLY #20496 /* ~Ignoriere Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20437 /* ~"Verdammte Totenbüchler..." Marta atmet tief ein und läßt den Meißel fallen. "Das ist schon besser, was, Marta? Ja, ja... totenstill... ja."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20497 /* ~"Ich hab' hier gesprochen, nicht die Leiche."~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20498 /* ~"Ich hab' hier gesprochen, nicht die Leiche."~ */ GOTO 10
  IF ~~ THEN REPLY #20499 /* ~Ignoriere Marta.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.1 7.0
  SAY #20438 /* ~Marta blinzelt und dreht sich um. "Was? Wie bist du so schnell da rüber gekommen?" Sie murmelt vor sich hin. "Marta, wie hat er das gemacht? Keinen Schimmer, keinen Schimmer."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 207
END

IF ~~ THEN BEGIN 9 // from:
  SAY #20439 /* ~Marta murmelt weiter vor sich hin, irgendwas über *Leichen* und *Dankbarkeit*, was du nicht richtig verstehst.
~ */
  IF ~~ THEN REPLY #20500 /* ~"Wer bist du?"~ */ JOURNAL #18470 /* ~Ich habe eine verwirrte Näherin namens Marta im Begrabenen Dorf getroffen. Sie spricht dauernd mit sich selbst, als ob es sie zweimal gäbe... Wer weiß, vielleicht ist das ja auch so.~ */ GOTO 11
  IF ~~ THEN REPLY #20501 /* ~"Ah... gut. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3 5.2 6.2 7.1
  SAY #20440 /* ~Marta blinzelt und dreht sich um. "Was? Wie bist du so schnell da rüber gekommen?" Sie murmelt vor sich hin. "Marta, wie hat er das gemacht? Keinen Schimmer, keinen Schimmer."~ */
  IF ~~ THEN REPLY #20502 /* ~"Wer bist du?"~ */ JOURNAL #18470 /* ~Ich habe eine verwirrte Näherin namens Marta im Begrabenen Dorf getroffen. Sie spricht dauernd mit sich selbst, als ob es sie zweimal gäbe... Wer weiß, vielleicht ist das ja auch so.~ */ GOTO 11
  IF ~~ THEN REPLY #20503 /* ~"Ah... gut. Ich muß mich verabschieden. Leb wohl."~ */ JOURNAL #18470 /* ~Ich habe eine verwirrte Näherin namens Marta im Begrabenen Dorf getroffen. Sie spricht dauernd mit sich selbst, als ob es sie zweimal gäbe... Wer weiß, vielleicht ist das ja auch so.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0 13.0 30.0
  SAY #20441 /* ~"Marta, hat der da gefragt, wer ich bin? Ja, hat er, hat er..." Sie fängt an zu summen. "Niemand anderes als ich, ich bin Marta, Marta, die Näherin... hmnnnn... Mar-ta - die - Nä- herin... Mar-ta - die - Nä - herin..." Sie wendet sich wieder der Leiche zu, während sie ihren Namen vor sich hin singt.~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20504 /* ~"Was machst du da?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",2)
~ GOTO 12
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #20505 /* ~"Was machst du da?"~ */ GOTO 12
  IF ~~ THEN REPLY #20506 /* ~"Ah... gut. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 13.1 30.1
  SAY #20442 /* ~Marta dreht sich mit einem Schnaufer wieder zu der Leiche um. "Ich versuch, diesen Dussel dazu zu bewegen, seine Fädchen und Zähnchen herzugeben, und er will einfach nicht kooperieren, nein, nein..." Sie schüttelt den Finger, als ob sie mit einem kleinen Kind schimpft. "Dickköpfig wie ein Esel, nicht wahr, Marta?" Sie zieht einen Flunsch. "Ja, ja, das ist er..."~ */
  IF ~~ THEN REPLY #20507 /* ~"Fädchen... und Zähnchen? Wovon redest du?"~ */ GOTO 14
  IF ~~ THEN REPLY #20508 /* ~"Ich... verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20509 /* ~"Ah... gut. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.4 16.9 17.1 18.1 19.2 20.1 21.0 23.4 24.4 25.4 26.2 26.3 27.0 28.1 29.1 31.2 37.0 39.4
  SAY #20443 /* ~"Hat der da Fragen gesagt, Marta...?" Marta blinzelt, dann runzelt sie die Stirn. "Ja, Marta, hat er, denn er hat den 'fragenden' Blick, den hat er..."~ */
  IF ~~ THEN REPLY #20510 /* ~"Wer bist du?"~ */ JOURNAL #18470 /* ~Ich habe eine verwirrte Näherin namens Marta im Begrabenen Dorf getroffen. Sie spricht dauernd mit sich selbst, als ob es sie zweimal gäbe... Wer weiß, vielleicht ist das ja auch so.~ */ GOTO 11
  IF ~~ THEN REPLY #20511 /* ~"Was machst du da?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20512 /* ~"Warum ziehst du der Leiche Zähne und Fäden?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta, die Näherin, scheint die Aufgabe zu haben, Leichen, die ihr gegeben werden, die Zähne herauszureißen, ihre Nähte aufzulösen, nach Wertsachen zu suchen, die sie an oder in der Leiche finden kann, und sie dann wieder zusammenzunähen.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20513 /* ~"Warum ziehst du der Leiche Zähne und Fäden?"~ */ JOURNAL #20538 /* ~Marta, die Näherin, scheint die Aufgabe zu haben, Leichen, die ihr gegeben werden, die Zähne herauszureißen, ihre Nähte aufzulösen, nach Wertsachen zu suchen, die sie an oder in der Leiche finden kann, und sie dann wieder zusammenzunähen.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20514 /* ~"Kannst du mal in meinem Knochengerüst nachsehen, ob du irgendwas findest?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20515 /* ~"Kannst du mal in meinem Knochengerüst nachsehen, ob du irgendwas findest?"~ */ GOTO 23
  IF ~~ THEN REPLY #20516 /* ~"Kann ich mich hier ein wenig ausruhen?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20517 /* ~"Du ziehst also Fäden aus den Leichen... kann ich dir da vielleicht ein wenig Nähzeug abkaufen?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20518 /* ~"Hast du den Leichen noch was anderes entnommen, das ich gebrauchen könnte?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20519 /* ~"Kann ich mal sehen, was du in letzter Zeit so den Leichen entnommen hast?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20520 /* ~"Keine Fragen. Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #20444 /* ~"Muß die Fädchen, die Zähnchen rausziehen... nicht wahr, Marta? Vielleicht könntest du mir helfen... ich *habe* dir geholfen, altes Mädchen... kein Grund, in so einem Ton mit mir zu reden... zieh die Fädchen und Zähnchen raus, ja. Und die Dingerchen innendrin."
~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #20521 /* ~"Dingerchen innendrin?"~ */ EXTERN ~DMORTE~ 208
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #20522 /* ~"Dingerchen innendrin?"~ */ GOTO 31
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20523 /* ~"Warum ziehst du der Leiche Zähne und Fäden?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta, die Näherin, scheint die Aufgabe zu haben, Leichen, die ihr gegeben werden, die Zähne herauszureißen, ihre Nähte aufzulösen, nach Wertsachen zu suchen, die sie an oder in der Leiche finden kann, und sie dann wieder zusammenzunähen.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20524 /* ~"Warum ziehst du der Leiche Zähne und Fäden?"~ */ JOURNAL #20538 /* ~Marta, die Näherin, scheint die Aufgabe zu haben, Leichen, die ihr gegeben werden, die Zähne herauszureißen, ihre Nähte aufzulösen, nach Wertsachen zu suchen, die sie an oder in der Leiche finden kann, und sie dann wieder zusammenzunähen.~ */ GOTO 16
  IF ~~ THEN REPLY #20525 /* ~"Ich... verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20526 /* ~"Ah... gut. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #20445 /* ~"Dingerchen."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 209
END

IF ~~ THEN BEGIN 16 // from: 13.2 13.3 14.2 14.3 30.2 30.3 31.0 31.1
  SAY #20446 /* ~"Leg sie zur Seite, Marta, das ist es, was ich hier mache." Sie kratzt sich am Kopf. "Ja, Marta, das tun wir... Nähfaden und Zähnchen sind wertvoll, kann man Klimper-Klimper damit machen. 'Nimm die Leichen aus, die wir dir bringen', sagen sie zu Marta: 'Ziehe die Zähnchen, Fädchen raus und die Dingerchen in der Leiche drin, nimm sie richtig aus, und dann verkaufen wir sie an die Staubies."~ */
  IF ~~ THEN REPLY #20527 /* ~"Wie? Die Leiche an die Staubies verkaufen...?"~ */ GOTO 17
  IF ~~ THEN REPLY #20528 /* ~"Wer hat dir das aufgetragen?"~ */ GOTO 19
  IF ~~ THEN REPLY #20529 /* ~"Was findest du in den Leichen?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20530 /* ~"Du suchst in den Leichen nach Gegenständen? Kannst du dann mal in meinem Knochengerüst nachsehen?"~ */ GOTO 22
  IF ~  !NearbyDialog("DMorte")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #20531 /* ~"Du suchst in den Leichen nach Gegenständen? Kannst du dann mal in meinem Knochengerüst nachsehen?"~ */ GOTO 23
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20532 /* ~"Du ziehst also Fäden aus den Leichen... kann ich dir da vielleicht ein wenig Nähzeug abkaufen?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20533 /* ~"Hast du den Leichen noch was anderes entnommen, das ich gebrauchen könnte?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20534 /* ~"Kann ich mal sehen, was du in letzter Zeit so den Leichen entnommen hast?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20535 /* ~"Könnte ich hier vielleicht ein wenig rasten?"~ */ GOTO 29
  IF ~~ THEN REPLY #20536 /* ~"Ich... verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20537 /* ~"Äh... also gut. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20447 /* ~Marta runzelt die Stirn. "Haben wir nicht gesagt, wir verkaufen sie, Marta?" Sie runzelt die Stirn noch mehr und schüttelt den Kopf. "Ja, Marta, haben wir. Staubies kaufen Leichen, aber wir nehmen erst alles, was wir kriegen können."~ */
  IF ~~ THEN REPLY #20539 /* ~"Wer sagt dir, daß du die Leichen ausnehmen sollst?"~ */ GOTO 19
  IF ~~ THEN REPLY #20540 /* ~"Ich... verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20541 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2
  SAY #20448 /* ~"Dingerchen, Dingerchen..." Sie zuckt mit den hängenden Schultern. "Die anderen nehmen sie."~ */
  IF ~~ THEN REPLY #20542 /* ~"Wenn ich wen finde?"~ */ GOTO 19
  IF ~~ THEN REPLY #20543 /* ~"Ich... verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20544 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.1 17.0 18.0
  SAY #20449 /* ~"Der fettgesichtige Schweine-Quint, und der andere Krücken-Humpler, die Humpel-Krücke, der Schön-seltsame Pharod, stimmt's nicht, Marta?" Sie lächelt schief und nickt. "Ja, stimmt, Marta..."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #20545 /* ~"Pharod? Wo ist er?"~ */ GOTO 20
  IF ~~ THEN REPLY #20546 /* ~"Was machen sie mit den Sachen, die du den Leichen entnimmst?"~ */ GOTO 21
  IF ~~ THEN REPLY #20547 /* ~"Ich... verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20548 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20450 /* ~Marta zuckt mit den Schultern. "Wo ist Pharod, fragt der hier? Er ist hier, Marta, nicht wahr...?" Sie nickt. "Ja, Pharod ist hier, Marta. In einem der Gebäude hier, ist er..."~ */
  IF ~~ THEN REPLY #20549 /* ~"Was machen sie mit den Sachen, die du den Leichen entnimmst?"~ */ GOTO 21
  IF ~~ THEN REPLY #20550 /* ~"Ich... verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20551 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #20451 /* ~"Verkaufen. Verkaufen für Glänzendes."~ */
  IF ~~ THEN REPLY #20552 /* ~"Ich... verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20553 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.4 16.3 30.4
  SAY #20452 /* ~Marta blinzelt dich an. "Hmnnn." Dann nickt sie. "Marta kann das machen, nicht wahr Marta? Ja, kannst du."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 210
END

IF ~~ THEN BEGIN 23 // from: 13.5 16.4 30.5
  SAY #20453 /* ~Marta blinzelt dich an. "Hmnnn." Dann nickt sie. "Marta kann das machen, nicht wahr, Marta? Ja, kannst du..." Sie zieht einen zersplitterten Meißel hervor. "Wo? Wo..." Marta studiert dich, als ob sie nach der besten Stelle sucht, um dich aufzubrechen.~ */
  IF ~~ THEN REPLY #20554 /* ~"Versuchen wir's mal am Bauch, ja?"~ */ GOTO 38
  IF ~~ THEN REPLY #20555 /* ~"Wie wär's mit meinem Brustkorb...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20556 /* ~"Schau mal in den Eingeweiden nach... da kann sich alles mögliche versteckt haben."~ */ GOTO 34
  IF ~~ THEN REPLY #20557 /* ~"Brich mir mal den Schädel auf, wenn du so freundlich wärst."~ */ GOTO 32
  IF ~~ THEN REPLY #20558 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #20559 /* ~"Äh... schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #20454 /* ~"Wo? Wo..." Marta studiert dich, als ob sie nach der besten Stelle sucht, um dich aufzubrechen.~ */
  IF ~~ THEN REPLY #20560 /* ~"Versuchen wir's mal am Bauch, ja?"~ */ GOTO 38
  IF ~~ THEN REPLY #20561 /* ~"Wie wär's mit meinem Brustkorb...?"~ */ GOTO 33
  IF ~~ THEN REPLY #20562 /* ~"Schau mal in den Eingeweiden nach... da kann sich alles mögliche versteckt haben."~ */ GOTO 34
  IF ~~ THEN REPLY #20563 /* ~"Brich mir mal den Schädel auf, wenn du so freundlich wärst."~ */ GOTO 32
  IF ~~ THEN REPLY #20564 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #20565 /* ~"Äh... schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 32.0 33.0 34.1 38.0
  SAY #20455 /* ~Einen Moment lang wird dir schwarz vor den Augen, dann siehst du wieder scharf und erkennst, wie Marta den Kopf schüttelt. "Nichts, nichts gefunden, was, Marta?" Sie schüttelt den Kopf. "Nein, nichts, Marta, kein Glück... sollen wir's noch mal versuchen?"~ */
  IF ~~ THEN REPLY #20566 /* ~"L... l... laß es uns am Bauch versuchen..."~ */ GOTO 38
  IF ~~ THEN REPLY #20567 /* ~"W... w... wie wär's mit meinem Brustkorb?"~ */ GOTO 33
  IF ~~ THEN REPLY #20568 /* ~"Sch.... sch... schau mal in den Eingeweiden nach... da kann sich alles mögliche versteckt haben."~ */ GOTO 34
  IF ~~ THEN REPLY #20569 /* ~"Br... br... brich mir mal den Schädel auf, wenn du so freundlich wärst."~ */ GOTO 32
  IF ~~ THEN REPLY #20570 /* ~"Ne... ne... nein, ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #20571 /* ~"Nih... nih... nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.7 16.5 30.7
  SAY #20456 /* ~Sie wirkt verwirrt. "Kaufen? Klimper-Klimper? Bist du nicht hier, um was zu holen... deswegen bist du doch hier, nicht wahr? Um Faden, Knochen, klappernde Zähnchen zu holen?"~ */
  IF ~~ THEN REPLY #20572 /* ~Lüge: "Ja, ich bin hier, um sie abzuholen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marta_4","GLOBALLaw",-1)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Teeth",Protagonist,1,0,0)
~ GOTO 27
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20573 /* ~"Nein, ich bin nicht hier, um sie zu holen, aber ich werd dir ein paar abkaufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 28
  IF ~  PartyGold(0)
~ THEN REPLY #20574 /* ~"Nein, ich bin nicht hier, um sie zu holen, aber ich werd dir ein paar abkaufen... sobald ich das Geld dazu habe. Zunächst hätte ich mal ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Marta_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Marta_1","GLOBALGood",1)
~ GOTO 13
  IF ~  PartyGoldGT(0)
~ THEN REPLY #20575 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #20576 /* ~"Äh... schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20457 /* ~"Hier hast du, weshalb du gekommen bist..." Sie gibt dir die Sachen. "Alles, was ich habe, alles, was ich habe..."~ */
  IF ~~ THEN REPLY #20577 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #20578 /* ~"Danke... das sollte mir weiterhelfen. Leb wohl."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #20458 /* ~Sie starrt auf die Münzen in deiner Hand, als ob sie nicht wüßte, was sie davon halten soll. "Glänzende. Glanz..." Sie runzelt die Stirn. "Was wollten sie noch, Marta?" Sie murmelt. "Marta... Marta, was wollten sie?"~ */
  IF ~~ THEN REPLY #20579 /* ~"Kann ich mal sehen, was du so hast?"~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20580 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #20581 /* ~"Äh... schon gut. Leb wohl."~ */ DO ~SetGlobal("Marta_Store","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 13.6 16.8 30.6
  SAY #20459 /* ~Marta nickt. "Marta zu hause, Marta schläft hier; du kannst dich hier ausruhen, wenn du willst, ja. Ich glaube nicht, daß es Marta stört... oder, Marta?" Sie schüttelt den Kopf. "Nein, nein, Marta, mich stört's nicht, wenn's dich nicht stört..."~ */
  IF ~~ THEN REPLY #20583 /* ~"Also gut..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #20584 /* ~"Ich will mich jetzt noch nicht ausruhen. Ich hätte zuerst noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #20585 /* ~"Vielleicht komm' ich wieder her, wenn ich müde bin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 1.1
  SAY #20460 /* ~Marta blickt auf, als du sprichst. "Hat der eine Frage gefragt, Marta...?" Marta blinzelt, dann runzelt sie die Stirn. "Ja, Marta, hat er, denn er hat den 'fragenden' Blick, hat er..."~ */
  IF ~~ THEN REPLY #20586 /* ~"Wer bist du?"~ */ GOTO 11
  IF ~~ THEN REPLY #20587 /* ~"Was machst du da?"~ */ GOTO 12
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20588 /* ~"Warum ziehst du der Leiche Zähne und Fäden?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta, die Näherin, scheint die Aufgabe zu haben, Leichen, die ihr gegeben werden, die Zähne herauszureißen, ihre Nähte aufzulösen, nach Wertsachen zu suchen, die sie an oder in der Leiche finden kann, und sie dann wieder zusammenzunähen.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20589 /* ~"Warum ziehst du der Leiche Zähne und Fäden?"~ */ JOURNAL #20538 /* ~Marta, die Näherin, scheint die Aufgabe zu haben, Leichen, die ihr gegeben werden, die Zähne herauszureißen, ihre Nähte aufzulösen, nach Wertsachen zu suchen, die sie an oder in der Leiche finden kann, und sie dann wieder zusammenzunähen.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #20590 /* ~"Kannst du mal in meinem Knochengerüst nachsehen, ob du irgendwas findest?"~ */ GOTO 22
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #20591 /* ~"Kannst du mal in meinem Knochengerüst nachsehen, ob du irgendwas findest?"~ */ GOTO 23
  IF ~~ THEN REPLY #20592 /* ~"Kann ich mich hier ein wenig ausruhen?"~ */ GOTO 29
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
Global("Marta_Store","GLOBAL",0)
~ THEN REPLY #20593 /* ~"Du ziehst also Fäden aus den Leichen... kann ich dir da vielleicht ein wenig Nähzeug abkaufen?"~ */ GOTO 26
  IF ~  Global("Marta_Store","GLOBAL",1)
~ THEN REPLY #20594 /* ~"Hast du den Leichen noch was anderes entnommen, das ich gebrauchen könnte?"~ */ GOTO 37
  IF ~  Global("Marta_Store","GLOBAL",2)
~ THEN REPLY #20595 /* ~"Kann ich mal sehen, was du in letzter Zeit so den Leichen entnommen hast?"~ */ DO ~StartStore("Marta",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #20596 /* ~"Keine Fragen. Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 14.1
  SAY #20461 /* ~"Dingerchen innendrin, Dingerchen innendrin... ja, Marta?" Sie nickt, dann schüttelt sie den Kopf. "Wenn sie sie haben, Marta, wenn sie sie haben..."~ */
  IF ~  GlobalLT("Know_Marta_Work","GLOBAL",3)
~ THEN REPLY #20597 /* ~"Warum ziehst du der Leiche Zähne und Fäden?"~ */ DO ~SetGlobal("Know_Marta_Work","GLOBAL",3)
~ JOURNAL #20538 /* ~Marta, die Näherin, scheint die Aufgabe zu haben, Leichen, die ihr gegeben werden, die Zähne herauszureißen, ihre Nähte aufzulösen, nach Wertsachen zu suchen, die sie an oder in der Leiche finden kann, und sie dann wieder zusammenzunähen.~ */ GOTO 16
  IF ~  GlobalGT("Know_Marta_Work","GLOBAL",2)
~ THEN REPLY #20598 /* ~"Warum ziehst du der Leiche Zähne und Fäden?"~ */ JOURNAL #20538 /* ~Marta, die Näherin, scheint die Aufgabe zu haben, Leichen, die ihr gegeben werden, die Zähne herauszureißen, ihre Nähte aufzulösen, nach Wertsachen zu suchen, die sie an oder in der Leiche finden kann, und sie dann wieder zusammenzunähen.~ */ GOTO 16
  IF ~~ THEN REPLY #20599 /* ~"Ich... verstehe. Kann ich dich noch was anderes fragen?"~ */ GOTO 13
  IF ~~ THEN REPLY #20600 /* ~"Ah... gut. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.3 24.3 25.3 39.3
  SAY #20462 /* ~Du liegst auf dem Tisch, und das letzte, was du siehst, ist Marta, wie sie sich mit einsatzbereitem Hammer und Meißel über dich beugt. Es gibt ein lautes *Krachen* und du schreist, während alles um dich herum schwarz wird.~ */
  IF ~~ THEN REPLY #20601 /* ~Dunkelheit umgibt dich...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #20602 /* ~Ich habe Marta - die verwirrte Näherin im Begrabenen Dorf -  gebeten, in meinem Schädel nachzusehen, ob da etwas ist. Aber da war nichts.~ */ GOTO 25
END

IF ~~ THEN BEGIN 33 // from: 23.1 24.1 25.1 39.1
  SAY #20463 /* ~Du liegst auf dem Tisch, und Marta beugt sich mit einsatzbereitem Hammer und Meißel über dich. Es gibt ein lautes *Krachen*, als sie deinen Brustkasten spaltet, und du schluckst deine Schreie runter, als sie anfängt, in deiner Lunge zu kramen... als du versuchst, nach Luft zu schnappen, spürst du deinen Körper nicht mehr, dann wirst du vor Schmerzen ohnmächtig.~ */
  IF ~~ THEN REPLY #20603 /* ~Dunkelheit umgibt dich...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 23.2 24.2 25.2 39.2
  SAY #20464 /* ~Du liegst auf dem Tisch, und Marta beugt sich über dich, ein rostiges Messer in der Hand. Du spürst einen stechenden Schmerz, als sie deinen Unterleib aufschlitzt und dann mit einer sägenden Bewegung brutal nach unten schneidet, so daß deine Eingeweide freigelegt werden. Trotz der Schmerzen schaust du in schweigender, morbider Faszination zu, wie sie, vor sich hin summend, deine Organe durchstöbert...~ */
  IF ~  Global("Marta_Ring","GLOBAL",0)
~ THEN REPLY #20604 /* ~Schau zu...~ */ GOTO 35
  IF ~  Global("Marta_Ring","GLOBAL",1)
~ THEN REPLY #20605 /* ~Dunkelheit umgibt dich...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #20465 /* ~"Ah!" Du fühlst einen reißenden Schmerz, als Marta die strangartige Masse deiner Eingeweide, aus der Blut und andere Flüssigkeiten strömen, in die Höhe hebt. "Schau dir das an, Marta... schau dir das an... Ich seh's, ich seh's, schneid hier, schneid hier..." Marta bringt einen kleinen, geschickten Schnitt an der Seite einer der Därme an, und du hörst ein *ting*, als ein kleiner, metallischer Gegenstand auf den Boden fällt.~ */
  IF ~~ THEN REPLY #20606 /* ~"Uooooh..."~ */ DO ~SetGlobal("Marta_Ring","GLOBAL",1)
GiveItemCreate("Ring02",Protagonist,1,0,0)
GiveItemCreate("Intest",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #20607 /* ~Ich habe Marta - die verwirrte Näherin im Begrabenen Dorf -  gebeten, in meinen Eingeweiden zu suchen, ob sie dort irgend etwas finden könnte. Sie hat einen Ring gefunden... und mir außerdem einen Extrasatz meiner Eingeweide gegeben.~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #20466 /* ~Daraufhin steckt Marta die schwabbelige Masse wieder zurück in deinen Körper, bückt sich, um den Gegenstand aufzuheben... Anscheinend ist es ein Ring. Sie wirft ihn dir zu. "Schön, schön, was, Marta?" Sie nickt. "Ja, Marta, so etwas sollte man nicht verschlucken, nein, nein..."~ */
  IF ~~ THEN REPLY #20608 /* ~"D... Danke... Sonst... noch... was?~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 13.8 16.6 30.8
  SAY #20467 /* ~"Mehr habe ich nicht, nicht wahr, Marta?" Sie nickt. "Dieser hier hat alles schon beim letzten Mal genommen, nichts mehr da, nichts mehr da..."~ */
  IF ~~ THEN REPLY #20609 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #20610 /* ~"Ist ja schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 23.0 24.0 25.0 39.0
  SAY #20468 /* ~Du liegst auf dem Tisch, und Marta beugt sich über dich, ein rostiges Messer in der Hand. Du spürst einen stechenden Schmerz, als sie deinen Unterleib aufschlitzt und dann in einer sägenden Bewegung brutal nach unten schneidet, so daß deine Eingeweide freigelegt werden. Trotz der Schmerzen schaust du in einer morbiden Faszination zu, wie sie deinen Magen hochhebt...~ */
  IF ~~ THEN REPLY #20611 /* ~Schau zu...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0
  SAY #45007 /* ~Marta schüttelt den Kopf. "Sonst nichts, Marta? Bist du sicher, Marta? Sollen wir's mal woanders versuchen?"~ */
  IF ~~ THEN REPLY #45009 /* ~"L... l... laß es uns am Bauch versuchen..."~ */ GOTO 38
  IF ~~ THEN REPLY #45010 /* ~"W... w... wie wär's mit meinem Brustkorb?"~ */ GOTO 33
  IF ~~ THEN REPLY #45011 /* ~"Bi... bi... bitte schau noch mal im Darm nach, ein... letztes... Mal..."~ */ GOTO 34
  IF ~~ THEN REPLY #45012 /* ~"Bi... bi... bitte brich noch mal meinen Schädel auf."~ */ GOTO 32
  IF ~~ THEN REPLY #45013 /* ~"Ne... ne... nein, ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #45014 /* ~"Ne... ne... noch nicht. Leb wohl."~ */ EXIT
END
