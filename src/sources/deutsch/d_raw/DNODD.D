// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNODD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DNODD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 38 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2810 /* ~Als du dich dem kapuzenbedeckten Mann mit der braunen Robe näherst, merkst du, daß er leise vor sich hin murmelt und gelegentlich nickt.~ */
  IF ~~ THEN REPLY #22473 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #22475 /* ~Laß ihn in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 38 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #21938 /* ~"Jemand kommt mit Nodd reden, mit Nodd reden, ja..." Er bekommt plötzlich einen Hustenanfall, dann nickt er vor sich hin.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",4)
~ THEN REPLY #22477 /* ~"Ich hab' mit deiner Schwester Amarysse gesprochen..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22489 /* ~"Ich hab' mit deiner Schwester Amarysse gesprochen..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22490 /* ~"Ich hab' mit deiner Schwester Amarysse gesprochen..."~ */ GOTO 29
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22491 /* ~"Ich hab' mit deiner Schwester Amarysse gesprochen..."~ */ GOTO 29
  IF ~~ THEN REPLY #22492 /* ~"Was machst du da?"~ */ GOTO 2
  IF ~~ THEN REPLY #22493 /* ~"Was ist dies für ein Ort?"~ */ GOTO 6
  IF ~~ THEN REPLY #22494 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #22495 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.4 6.0
  SAY #21939 /* ~"Nichts. Nur Totenbüchler suchen. Sonst nichts." Er schnieft, dann hustet er wieder. Er murmelt einen Moment vor sich hin, dann spricht er weiter. "Sonst nichts. Brauch den Klimper. Klimper-Klimper."~ */
  IF ~~ THEN REPLY #22496 /* ~"Totenbüchler?"~ */ GOTO 3
  IF ~~ THEN REPLY #22497 /* ~"Warum suchst du nach Leichen?"~ */ GOTO 4
  IF ~~ THEN REPLY #22498 /* ~"Was ist dies für ein Ort?"~ */ GOTO 6
  IF ~~ THEN REPLY #22499 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22500 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22501 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #21940 /* ~Der Mann nickt. "Toten-büchler. Kann ich den Staubies verkaufen."~ */
  IF ~~ THEN REPLY #22502 /* ~"Du kannst die Leichen verkaufen?"~ */ GOTO 4
  IF ~~ THEN REPLY #22503 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 6
  IF ~~ THEN REPLY #22504 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22505 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22506 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #21941 /* ~Er beginnt zu nicken, ohne dich wirklich anzusehen. "Schlepp sie zu dem Ort da, der Lei-chen-hal-le." Er beugt den Kopf vor und zurück, dann nickt er wieder. "Da sind die Staubies, die handeln und geben Klimper - die nehmen die Totenbüchler, ja, ja, und Nodd spricht nicht mit denen bis zur nächsten Leiche." Er schnieft und wischt sich die Nase am Handrücken ab.~ */
  IF ~~ THEN REPLY #22507 /* ~"Warum bezahlen sie für die Leichen?"~ */ GOTO 5
  IF ~~ THEN REPLY #22508 /* ~"Was ist dies für ein Ort?"~ */ GOTO 6
  IF ~~ THEN REPLY #22509 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22510 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22511 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21942 /* ~Er zuckt mit den Schultern. "Sschon gut, sschon gut." Er lächelt, dann nickt er heftig. "Klimper für mich, Klimper-Klimper."~ */
  IF ~~ THEN REPLY #22512 /* ~"Was ist dies für ein Ort?"~ */ GOTO 6
  IF ~~ THEN REPLY #22514 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22515 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22516 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.2 3.1 4.1 5.0
  SAY #21950 /* ~Er runzelt die Stirn und leckt sich die Lippen. "Lumpensammler-Platz, der Platz, überall Müll, ja, überall." Er hustet.~ */
  IF ~~ THEN REPLY #22517 /* ~"Was machst du da?"~ */ GOTO 2
  IF ~~ THEN REPLY #22518 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22519 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22520 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.3 3.2 4.2 5.1 6.1
  SAY #21952 /* ~Er nickt. "Was?" Er schnieft, dann blinzelt er dich an. "Klimper." Er klopft sich an den Kopf, zeigt auf dich, dann auf seine Hand. "Willst du was wissen - Klimper. Ja, Klimper-Klimper."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #22521 /* ~Gib ihm ein paar Münzen.~ */ DO ~TakePartyGold(2)
~ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #22522 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 8
  IF ~  PartyGoldGT(9)
~ THEN REPLY #22523 /* ~Laß zehn Kupfermünzen in seine Handflächen fallen.~ */ DO ~TakePartyGold(10)
~ GOTO 8
  IF ~~ THEN REPLY #22524 /* ~"Du bekommst überhaupt nichts und wirst trotzdem meine Fragen beantworten."~ */ GOTO 15
  IF ~~ THEN REPLY #22525 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1 7.2
  SAY #21953 /* ~"Klimper für Nodd, Klimper-Klimper." Er murmelt vor sich hin und verbirgt die Kupfermünzen in den Falten seines Gewands. "Frag, Nodd versucht zu antworten, ja." Er hustet einen Moment und spuckt dann etwas zur Seite aus.~ */
  IF ~~ THEN REPLY #22526 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 9
  IF ~~ THEN REPLY #22527 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22528 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22529 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22530 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22531 /* ~"Vergiß es. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22532 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.1 12.0 13.0 14.0 15.0 16.0
  SAY #21955 /* ~"Ich. Ich?" Er scheint einen Moment unsicher, dann nickt er zustimmend. "Ich. Kratz Toten-büchlerrr zusammen, bring sie den Staubies... Staubies bezahlen, Klimper für Tote, Tote an ihrem richtigen Ort. Tote glücklich. Staubies glücklich. Nodd glücklich, ja, mit Nodds glänzendem Klimper."~ */
  IF ~~ THEN REPLY #22533 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22534 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22535 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22536 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22537 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22538 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.2 12.1 13.1 14.1 15.1
  SAY #21957 /* ~Er zeigt nickend auf den Boden. "Der Platz, Lumpensammler-Platz, überall Müll, ja, Grabteilers Platz." Er murmelt einen Moment lang vor sich hin.~ */
  IF ~~ THEN REPLY #22539 /* ~"Erzähl mir was über Grabteiler."~ */ GOTO 16
  IF ~~ THEN REPLY #22540 /* ~"Erzähl mir was über Sammler."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22579 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22581 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22582 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22584 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22586 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.2 13.2 14.2 15.2 16.1
  SAY #22381 /* ~Er schaut verängstigt und beginnt, den Kopf zu schütteln. "Pharod, Pharod, Pharod..." Er kratzt sich am Kopf. "Was? Was soll mit ihm sein?" Er runzelt die Stirn und schüttelt dann den Kopf, als ob er nicht sicher wäre, ob er mit dir reden soll.~ */
  IF ~~ THEN REPLY #22588 /* ~"Weißt du vielleicht, wo ich ihn finden kann?"~ */ GOTO 12
  IF ~~ THEN REPLY #22589 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 9
  IF ~~ THEN REPLY #22590 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22592 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22593 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22594 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22595 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22384 /* ~Er schüttelt den Kopf und nuschelt. Er wirft dir einen kurzen Blick zu und murmelt dann weiter vor sich hin. Es klingt, als ob er ein Gebet gegen das Böse spricht. "Ni-ni-nicht *hier*. Auf dem Platz..." Er runzelt die Stirn, als sei er nicht sicher, wie er es erklären soll. "...aber nicht auf dem Platz." Er schüttelt wieder den Kopf, dann hustet er.~ */
  IF ~~ THEN REPLY #22596 /* ~"Erzähl mir was über Sammler."~ */ GOTO 9
  IF ~~ THEN REPLY #22597 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22598 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22599 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22600 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22601 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2 10.3 11.3 12.2 14.3 15.3 16.2
  SAY #22387 /* ~"Nein, nein, nein." Er schüttelt heftig den Kopf. "Kein Dschur-nal." Er schnieft und wischt sich die Nase mit dem Ärmel ab.~ */
  IF ~~ THEN REPLY #22602 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 9
  IF ~~ THEN REPLY #22603 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22604 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22605 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22606 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22607 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.3 10.4 11.4 12.3 13.3 15.4 16.3
  SAY #22389 /* ~"Hebamme... heilt und verzaubert, sie... hilft mit den Kleinen, nett." Er rümpft die Nase. "Ihr Haus - oben auf den Plattformen - riecht schlecht."~ */
  IF ~~ THEN REPLY #22608 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 9
  IF ~~ THEN REPLY #22609 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22610 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22611 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 13
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22612 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22613 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #22392 /* ~Er fängt an, den Kopf zu schütteln, und murmelt dann vor sich hin. Er scheint Angst zu haben und nicht zu wissen, was er tun soll.~ */
  IF ~~ THEN REPLY #22614 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 9
  IF ~~ THEN REPLY #22615 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22616 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22617 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22618 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22619 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22620 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0
  SAY #22394 /* ~"Grabteilers Schatten lang, fällt auf Nodd, ja, ja. Nodd gibt Grabteiler was von seinem Klimper, Grabteiler sagt anderen in seinem Schatten: 'Paßt auf Nodd auf', ja." Er schnieft und nickt langsam.~ */
  IF ~~ THEN REPLY #22621 /* ~"Erzähl mir was über Sammler."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22622 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22623 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22624 /* ~"Erzähl mir was über Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22625 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22626 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.3 4.3 5.2 6.2 8.5 9.4 10.5 11.5 12.4 13.4 14.4 15.5 16.4
  SAY #22396 /* ~"Eh... eh..." Er schüttelt den Kopf, hustet, fängt dann wieder an zu nicken. "Du fragst Nodd, ja, Nodd fragt dich... Frage für dich, ja..."~ */
  IF ~~ THEN REPLY #22627 /* ~"Nur zu, stell deine Frage."~ */ GOTO 18
  IF ~~ THEN REPLY #22628 /* ~Ignoriere ihn, dreh dich um und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #22398 /* ~"Nodd hat eine Schwester, ja, Amarysse. Ah-mah-ris... lebt im Stock, weg von hier, weg vom Platz. So lange, lange her, Nodd wurde von seiner Schwester getrennt, weggebracht..."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22629 /* ~"Du wurdest von ihr getrennt und möchtest, daß ich sie wiederfinde?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~Ein Sammler namens Nodd hat mich gebeten, seine Schwester Amarysse zu finden und für ihn mit ihr zu sprechen. Er beschreibt sie als eine attraktive junge Frau, die irgendwo im Stock lebt.~ */ GOTO 19
  IF ~~ THEN REPLY #22630 /* ~"Also, deine Frage lautet...?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~Ein Sammler namens Nodd hat mich gebeten, seine Schwester Amarysse zu finden und für ihn mit ihr zu sprechen. Er beschreibt sie als eine attraktive junge Frau, die irgendwo im Stock lebt.~ */ GOTO 19
  IF ~~ THEN REPLY #22631 /* ~"Interessant. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #22415 /* ~"Du kennst sie nicht?" Er schüttelt einen Moment lang traurig den Kopf und kaut auf seiner Unterlippe. "Wenn du sie siehst, wenn, dann sag ihr, Nodd, ihr Bruder, macht sich Sorgen um sie, ja, er macht sich Sorgen."
~ */
  IF ~~ THEN REPLY #22637 /* ~"Warum suchst du sie nicht selbst?"~ */ GOTO 20
  IF ~~ THEN REPLY #22638 /* ~"In Ordnung. Ich werde das für dich tun.~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22639 /* ~"Ich werd sie finden... gegen ein Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22640 /* ~"Ich werd drüber nachdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #22417 /* ~"NEIN!" Nodd bedeckt seinen Kopf mit seinen Armen und murmelt vor sich hin. "Nodd... Nodd kann nicht mehr richtig sprechen, kann er nicht, nein, und er riecht nach Leiche und dem Dreck auf dem Platz, Lumpensammler-Platz... NEIN!" Seine Aufregung löst einen rasselnden Hustenanfall aus.~ */
  IF ~~ THEN REPLY #22641 /* ~"Was ist mit dir geschehen, Nodd?"~ */ GOTO 21
  IF ~~ THEN REPLY #22642 /* ~"Okay. Ich finde sie für dich."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22643 /* ~"Ich werd sie finden... gegen ein Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22644 /* ~"Ich werd drüber nachdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #22421 /* ~Nodd schnieft und betrachtet schweigend den Boden. Schließlich beginnt er, vor sich hin zu nicken, und sagt leise: "Nodd war jung, ja, war er, und fing an, Stimmen zu hören, die zu Nodd sagen 'Tu dies! Tu das!' Schlechte Dinge, schlecht, wie an Nodds Fingern kauen..." Er hält sich die Hände vors Gesicht, und du kannst unter dem verkrusteten Dreck alte Bißnarben erkennen.~ */
  IF ~~ THEN REPLY #22645 /* ~"Erzähl weiter..."~ */ GOTO 23
  IF ~~ THEN REPLY #22647 /* ~"In Ordnung. Ich werde deine Schwester finden."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22648 /* ~"Ich werd deine Schwester finden... gegen ein Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22649 /* ~"Interessant. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.0
  SAY #22425 /* ~"Weiß nicht, weiß nicht. Übler Ort, übel!" Er schüttelt heftig seinen Kopf und faßt sich dabei an die Schläfen. Dann fängt er wieder an, wie gewohnt zu nicken.~ */
  IF ~~ THEN REPLY #22650 /* ~"Erzähl deine Geschichte weiter..."~ */ GOTO 24
  IF ~~ THEN REPLY #22669 /* ~"In Ordnung. Ich werde deine Schwester finden."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22671 /* ~"Ich werd deine Schwester finden... gegen ein Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22674 /* ~"Interessant. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #22427 /* ~"Nodds Eltern haben ihn an einen dunklen Ort verschleppt. Sie haben ihn in den Geflügelten Turm geworfen, wo sie Nadeln und Haken in Nodds Kopf gesteckt haben... Die Stimmen hören auf, ja, genau, aber Nodd kann nicht richtig denken, nicht richtig sprechen. Nodd flieht von diesem Ort, wacht im Stock auf."~ */
  IF ~~ THEN REPLY #22675 /* ~"Wo ist dieser geflügelte Turm?"~ */ GOTO 22
  IF ~~ THEN REPLY #22676 /* ~"Erzähl deine Geschichte weiter..."~ */ GOTO 24
  IF ~~ THEN REPLY #22677 /* ~"In Ordnung. Ich werde deine Schwester finden."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22678 /* ~"Ich werd deine Schwester finden... gegen ein Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22679 /* ~"Interessant. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.1
  SAY #22431 /* ~"Nodd wacht auf, da sind Sammler, ja, Sammler, die auf Nodd zeigen und sagen 'Da! Kein Totenbüchler. Der da ist kein Totenbüchler! Nehmen wir ihn mit!' Und sie nehmen Nodd mit zurück, zurück zum Platz. So viele... Jahre, so lange ist das her."~ */
  IF ~~ THEN REPLY #22680 /* ~"In Ordnung. Ich werde deine Schwester finden."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22681 /* ~"Ich werd deine Schwester finden... gegen ein Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22682 /* ~"Interessant. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.1 20.1 21.1 22.1 23.2 24.0 26.1
  SAY #22433 /* ~"Nodd dankt dir, ehrlich, Nodd dankt dir. Amarysse war hübsch, echt hübsch, lebt jetzt im Stock. Hellhäutig war sie, pechschwarzes Haar, und immer in blau, blau... Sie war immer in blau..."~ */
  IF ~~ THEN REPLY #22683 /* ~"Leb wohl, Nodd."~ */ JOURNAL #22636 /* ~Ich habe mich bereiterklärt, Nodd zu helfen, seine Schwester Amarysse zu finden. Er hat gesagt, sie sei hellhäutig mit schwarzem Haar und trage immer Blau.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.2 20.2 21.2 22.2 23.3 24.1
  SAY #22435 /* ~Er schüttelt mit dem Kopf und hustet. "Nodd hat nichts, nichts, so wenig zu geben..."~ */
  IF ~~ THEN REPLY #22684 /* ~"Jedes bißchen hilft."~ */ GOTO 27
  IF ~~ THEN REPLY #22685 /* ~"Dann tu ich's also für umsonst."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
~ GOTO 25
  IF ~~ THEN REPLY #22686 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #22437 /* ~Nodd schaut dich traurig an. "Nodd gibt dir alles, was er hat, das macht er. Alles, was Nodd hat, wenn du mit ihr sprichst. Beweis Nodd, daß du mit Amarysse, Nodds Schwester, gesprochen hast, okay?" Er schnieft und hustet. "Hellhäutig war sie, pechschwarzes Haar, und immer in blau, blau... Sie war immer in blau..."~ */
  IF ~~ THEN REPLY #22687 /* ~"Einverstanden. Ich komme zurück, sobald ich mit ihr gesprochen habe. Leb wohl."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",3)
~ JOURNAL #22635 /* ~Ich habe mich bereiterklärt, Nodd zu helfen, seine Schwester Amarysse zu finden... gegen ein gewisses Entgelt. Er hat gesagt, sie sei hellhäutig mit schwarzem Haar und trage immer Blau.~ */ EXIT
  IF ~~ THEN REPLY #22688 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.0 1.1
  SAY #22441 /* ~"Hast du? Nodd ist ja so was von glücklich! Wie geht's Nodds Schwester? Erzähl ihm von Amarysse, bitte erzähl Nodd von ihr!" Nodd ist so aufgeregt, daß er einen lang anhaltenden Hustenanfall bekommt. Als er endlich wieder sprechen kann, fragt er: "Ist Nodds Schwester immer noch so hübsch, so hübsch?"~ */
  IF ~~ THEN REPLY #22689 /* ~"Ja, ist sie. Sie ist jetzt eine... Prostituierte... im Stock. Es geht ihr gut, und sie macht sich Sorgen um dich."~ */ GOTO 31
  IF ~~ THEN REPLY #22690 /* ~Lüge: "Ja, ist sie. Sie arbeitet jetzt als... Dienstmädchen in einer Taverne im Stock. Es geht ihr gut, und sie macht sich Sorgen um dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22691 /* ~Lüge: "Ja, hab' ich. Sie ist eine Hure, und so widerlich, daß ich sie nicht mal umsonst nehmen würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 1.2 1.3
  SAY #22444 /* ~"Beweise! Beweise! Beweis es Nodd..."~ */
  IF ~~ THEN REPLY #22692 /* ~"Sie hat mir erzählt, du wurdest früher Thodus genannt."~ */ DO ~GiveGoldForce(11)
~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 32.4 33.2 34.2
  SAY #22446 /* ~"Aiiieee!" Er stürzt sich auf dich.~ */
  IF ~~ THEN REPLY #22693 /* ~"Huch..."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ JOURNAL #22634 /* ~Ich habe Nodd angelogen, daß seine Schwester eine üble Hure sei, und er ist wütend geworden und hat mich angegriffen.~ */ EXIT
  IF ~~ THEN REPLY #63621 /* ~Pariere seinen Angriff.~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0 28.1 32.2 32.3 33.0 33.1 34.0 34.1
  SAY #22448 /* ~"Nodd ist ja so was von glücklich, daß es seiner Schwester gut geht!" Er scheint kurz davor zu sein zu weinen. Dann faßt er sich. "Und sonst? Hat sie noch mehr für Nodd gesagt?"~ */
  IF ~  GlobalLT("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22695 /* ~"Nur, daß sie dich besuchen würde, sobald sie Zeit hat."~ */ JOURNAL #22710 /* ~Ich habe mit Nodds Schwester Amarysse gesprochen und bin zurückgekehrt, um ihm davon zu erzählen. Er war überglücklich, von ihr zu hören.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldGT(99)
~ THEN REPLY #22696 /* ~"Ja, sie wollte, daß du diese Kupfermünzen bekommst. Sie wird dich auch mal besuchen, sobald sie die Zeit findet."~ */ DO ~TakePartyGold(100)
~ JOURNAL #22709 /* ~Ich habe mit Nodds Schwester Amarysse gesprochen und bin zurückgekehrt, um ihm davon zu erzählen. Er war überglücklich, von ihr zu hören und auch das Kupfer zu bekommen, das ich ihm in ihrem Auftrag bringen sollte.~ */ GOTO 36
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22697 /* ~Lüge: "Sie hat nur noch gesagt, daß sie dich besuchen wird, sobald sie die Zeit findet."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_4","GLOBALLaw",-3)
~ JOURNAL #22708 /* ~Ich habe mit Nodds Schwester Amarysse gesprochen und bin zurückgekehrt, um ihm davon zu erzählen. Er war überglücklich, von ihr zu hören, aber ich habe meinen Schwur gegenüber Amarysse gebrochen und ihn über das Kupfer, das ich ihm mitbringen sollte, belogen.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldLT(100)
~ THEN REPLY #22698 /* ~"Ja. Sie hat mir auch ein wenig Geld für dich mitgegeben... aber das ist weg. Tut mir leid. Sie wird dich besuchen, sobald sie die Zeit findet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nodd_3","GLOBALLaw",-1)
~ JOURNAL #22707 /* ~Ich habe mit Nodds Schwester Amarysse gesprochen und bin zurückgekehrt, um ihm davon zu erzählen. Er war überglücklich, von ihr zu hören, aber ich hatte das Kupfer nicht, das ich versprochen hatte mitzubringen. Er hat mir aber vergeben, und ich fühle mich nun besser, nachdem ich ihm davon erzählt habe.~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #22450 /* ~"Hast du? Nodd ist ja so was von glücklich!" Er faßt unter seine Gewänder und zieht ein speckiges Bündel Lumpen hervor. Er öffnet das Bündel und gibt dir den Inhalt - elf Kupfermünzen. "Das ist alles, was Nodd hat. Wie geht's Nodds Schwester? Erzähl ihm von Amarysse, bitte erzähl Nodd von ihr!" Nodd ist so aufgeregt, daß er einen lang anhaltenden Hustenanfall bekommt. Als er endlich wieder sprechen kann, fragt er: "Ist Nodds Schwester immer noch so hübsch, so hübsch?"~ */
  IF ~~ THEN REPLY #22711 /* ~"Bist du dir *sicher*, daß das  alles ist, was du mir geben kannst, Nodd?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_3","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #22712 /* ~"Ich kann dieses Geld nicht annehmen, Nodd - hier, nimm's zurück."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_3","GLOBALGood",1)
TakePartyGold(11)
~ GOTO 34
  IF ~~ THEN REPLY #22713 /* ~"Ja, ist sie. Sie ist jetzt eine... Prostituierte... im Stock. Es geht ihr gut, und sie macht sich Sorgen um dich."~ */ GOTO 31
  IF ~~ THEN REPLY #22714 /* ~Lüge: "Ja, ist sie. Sie arbeitet jetzt als... Dienstmädchen in einer Taverne im Stock. Es geht ihr gut, und sie macht sich Sorgen um dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22715 /* ~Lüge: "Ja, hab' ich. Sie ist eine Hure, und so widerlich, daß ich sie nicht mal umsonst nehmen würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22452 /* ~Er nickt heftig. "Ja, ja, alles, was Nodd hat! Schau, wo er lebt, der arme Nodd,... schau..." Er gestikuliert hilflos herum und murmelt etwas vor sich hin.~ */
  IF ~~ THEN REPLY #22716 /* ~"Also gut. Sie ist nach wie vor hübsch, aber sie ist jetzt eine... Prostituierte... im Stock. Es geht ihr gut, und sie macht sich Sorgen um dich."~ */ GOTO 31
  IF ~~ THEN REPLY #22717 /* ~Lüge: "Also gut. Sie ist immer noch sehr hübsch. Sie arbeitet jetzt als... Dienstmädchen in einer Taverne im Stock. Es geht ihr gut, und sie macht sich Sorgen um dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22718 /* ~Lüge: "Also gut. Sie ist eine Hure, und so widerlich, daß ich sie nicht mal umsonst nehmen würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #22456 /* ~Für einen Augenblick hört er auf zu nicken und nimmt überrascht die Münzen zurück. "Nodd dankt dir, ehrlich. Ja, er dankt dir..."~ */
  IF ~~ THEN REPLY #22719 /* ~"Natürlich. Sie ist nach wie vor hübsch, aber sie ist jetzt eine... Prostituierte... im Stock. Es geht ihr gut, und sie macht sich Sorgen um dich."~ */ GOTO 31
  IF ~~ THEN REPLY #22720 /* ~Lüge: "Natürlich. Deine Schwester ist immer noch hübsch, und sie arbeitet jetzt als... Dienstmädchen in einer Taverne im Stock. Es geht ihr gut, und sie macht sich Sorgen um dich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22721 /* ~Lüge: "Natürlich. Deine Schwester ist eine Hure, und so widerlich, daß ich sie nicht mal umsonst nehmen würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 31.0 31.2
  SAY #22458 /* ~Unter seiner schmutzigbraunen Kapuze strahlen Nodds Augen vor Freude. "Das sind so wunderbare Nachrichten, so gute, wunderbare Nachrichten! Nodd dankt dir und dankt dir noch mal und dankt dir noch tausendmal!"~ */
  IF ~~ THEN REPLY #22722 /* ~"Schön, daß ich dir helfen konnte. Leb wohl, Nodd."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22723 /* ~"Hör auf, mir zu danken - ich hab's für das Geld getan, auch wenn's nicht viel war, und nicht, weil ich dir einen Gefallen tun wollte. Leb wohl."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22724 /* ~"Hör auf, mir zu danken - ich hab's für das Geld getan, auch wenn's nicht viel war, und nicht, weil ich dir einen Gefallen tun wollte. Leb wohl."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.1
  SAY #22461 /* ~Nodds Kopf hört plötzlich auf zu nicken, und sein Unterkiefer klappt herunter, als du ihm die hundert Münzen gibst. Unter seiner schmutzigbraunen Kapuze strahlen seine Augen vor Freude. "Das sind so wunderbare Nachrichten, so gute, wunderbare Nachrichten! Nodd dankt dir und dankt dir nochmals und dankt dir noch tausendmal!"~ */
  IF ~~ THEN REPLY #22725 /* ~"Schön, daß ich dir helfen konnte. Leb wohl, Nodd."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22726 /* ~"Hör auf, mir zu danken - ich hab's für das Geld getan, auch wenn's nicht viel war, und nicht, weil ich dir einen Gefallen tun wollte. Leb wohl."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22727 /* ~"Hör auf, mir zu danken - ich hab's für das Geld getan, auch wenn's nicht viel war, und nicht, weil ich dir einen Gefallen tun wollte. Leb wohl."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.3
  SAY #22463 /* ~Einen Augenblick lang läßt Nodd seinen Kopf hängen und murmelt leise vor sich hin. Schließlich schaut er dir in die Augen: "Nodd vergibt dir, ehrlich. Gut, daß du Nodd davon erzählt hast, wirklich gut. Das zeigt Nodd, daß du dich bemühst, ein guter Mensch zu sein, aber keiner sein kannst, wie Nodd... wie Nodd. Nodd dankt dir trotzdem für die guten Nachrichten."~ */
  IF ~~ THEN REPLY #22728 /* ~"Leb wohl, Nodd."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nodd_Quest","GLOBAL",8)
~ THEN BEGIN 38 // from:
  SAY #22466 /* ~Du siehst Nodd herumlaufen. Er nickt und murmelt vor sich hin.~ */
  IF ~~ THEN REPLY #22729 /* ~"Sei gegrüßt, Nodd."~ */ GOTO 39
  IF ~~ THEN REPLY #22730 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #22470 /* ~"Ja, da ist der Mann, der Nodd geholfen hat, seine Schwester zu finden, ja, die hübsche Amarysse. Nodd dankt dir, nochmals sehr."~ */
  IF ~~ THEN REPLY #22731 /* ~"Leb wohl, Nodd."~ */ EXIT
END
