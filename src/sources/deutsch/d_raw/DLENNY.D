// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLENNY~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36484 /* ~Du siehst einen wild aussehenden jungen Mann mit abgetragener Kleidung. Seine Augen blitzen umher, als er die Umgebung betrachtet. Er sieht dich herankommen und blickt dir argwöhnisch entgegen.~ */
  IF ~~ THEN REPLY #36525 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36526 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36485 /* ~Er betrachtet dich von oben bis unten und blickt sich um. Dann wendet er dir seine Aufmerksamkeit wieder zu und grinst dich hinterhältig an. "Hoffe, du hast einen guten Grund, Lenny zu stören, Dussel."~ */
  IF ~~ THEN REPLY #36527 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36528 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 32.0
  SAY #36486 /* ~Er lacht dir ins Gesicht. "Ich bin kein Schlepper. Such dir für deine Fragen lieber so einen." Sein Lächeln wird stärker. "Mach dich lieber aus dem Staub, bevor ich dich zur Ader lasse."
~ */
  IF ~~ THEN REPLY #36529 /* ~"Ich muß dir nur ein paar Fragen stellen..."~ */ GOTO 3
  IF ~  Global("Know_Lenny","GLOBAL",1)
~ THEN REPLY #36530 /* ~"Und wenn ich dir sage, daß mich Byron Nimms schickt?"~ */ GOTO 4
  IF ~~ THEN REPLY #36531 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36487 /* ~"Schön, leb wohl."~ */
  IF ~~ THEN REPLY #36532 /* ~"Schön, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36488 /* ~Er lächelt jetzt nicht mehr und betrachtet dich eine Weile. Seine Augen bleiben an deinen Narben hängen, und er schluckt merklich. Einen Augenblick später nimmt sein Gesicht einen nachdenklichen Ausdruck an, und er wirkt nervös. "Nimms... schickt dich? Warum?"~ */
  IF ~~ THEN REPLY #36533 /* ~"Er meinte, du könntest mir ein paar Fragen beantworten..."~ */ GOTO 5
  IF ~~ THEN REPLY #36534 /* ~"Egal, ist nicht so wichtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 7.1 8.0 28.2 29.1 30.1 31.0
  SAY #36489 /* ~Er runzelt die Stirn. "Was für Fragen..." Dir fällt auf, daß er ziemlich angespannt ist.~ */
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36535 /* ~"Mir wurde ein Schädel gestohlen, den ich gern wiederhätte. Kennst du jemanden, der so etwas tun würde?"~ */ JOURNAL #66540 /* ~Lenny, der Dieb, sagt, daß jemand namens Lothar wahrscheinlich für Mortes Diebstahl verantwortlich ist. Ich werde diesem Lothar mal einen Besuch abstatten müssen.~ */ GOTO 6
  IF ~  Global("Stolen_Papers","GLOBAL",1)
~ THEN REPLY #36536 /* ~"Ich möchte von dir etwas über die Papiere wissen, die du Trist gestohlen hast."~ */ GOTO 9
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36537 /* ~"Ich möchte gern die Diebeskunst erlernen. Kannst du sie mich lehren?"~ */ GOTO 27
  IF ~~ THEN REPLY #36538 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 28
  IF ~~ THEN REPLY #36539 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36490 /* ~Er zögert einen Moment und beruhigt sich dann etwas. Du hast den Eindruck, daß er Fragen über etwas anderes erwartet hat. Er lächelt dich an. "Gestohlener Totenschädel, was? Nun, das werden Lothars Jungs gewesen sein, nicht ich."
~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36540 /* ~"Wer ist Lothar?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36541 /* ~"Ich habe von Lothar gehört. Ich muß ihn nur noch finden."~ */ GOTO 8
  IF ~~ THEN REPLY #36542 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #36543 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36491 /* ~Er lächelt grimmig. "Den 'Herrn der Knochen' nennen sie ihn, und genau das ist er auch. Er ist der höchste der Hohenpriester irgendsoeiner einflußreichen Macht, ich weiß nicht welcher." Er lacht. "Wohnt in einer Absteige namens 'Knochen der Nacht'."~ */
  IF ~~ THEN REPLY #36544 /* ~"Wo ist dieser Ort?"~ */ JOURNAL #66541 /* ~Lenny sagt, daß Lothar in einem verfallenen Gebäude südlich vom Belagerungsturm gefunden werden kann. Ich werd ihn mal über Mortes Diebstahl befragen.~ */ GOTO 8
  IF ~~ THEN REPLY #36545 /* ~"Ich verstehe. Ich habe noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #36546 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #36492 /* ~Er runzelt die Stirn. "Mmh, ich bin mir nicht sicher, ob gerade ich diese Frage beantworten will..." Er starrt dich einen Moment lang an und zuckt dann die Schultern. "Kaputtes Gebäude gleich südlich des Belagerungsturms, kannste nicht verfehlen." Wieder zeigt er sein grimmiges Lächeln.~ */
  IF ~~ THEN REPLY #36547 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #36548 /* ~"Ist gut, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #36493 /* ~Er schluckt und starrt dich an. Du siehst, wie sich seine Muskeln anspannen; er scheint davonlaufen zu wollen. Er stützt eine Hand lässig in die Hüfte, aber du weißt, daß er angespannt ist wie eine Feder. "Ich weiß nicht, wovon du sprichst, Dussel. Sieh lieber zu, daß du dich aus dem Staub machst."~ */
  IF ~~ THEN REPLY #36549 /* ~Mit einem gemeinen Lächeln: "Du weißt, wovon ich rede,  Lenny. Byron hat dich beauftragt, Trist einige Papiere zu stehlen, und ich bin hier, um sie abzuholen."~ */ GOTO 10
  IF ~~ THEN REPLY #36550 /* ~Wahrheit: "Gib mir die Papiere, die du Trist gestohlen hast, oder ich bringe dich um."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Lenny_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36551 /* ~Täuschung: "Gib mir die Papiere, die du Trist gestohlen hast, oder ich bringe dich um."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lenny_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36552 /* ~"Ich hab' genug davon. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2
  SAY #36494 /* ~Er schluckt hart, und sein eines Auge fängt an zu zucken. Er wirft einen Blick auf die Narben, die deinen Körper bedecken, und versucht dann, dir fest in die Augen zu sehen, schafft es jedoch nicht. "Sie abzuholen... Ich... ich hab' die Papiere zerstört, nachdem ich sie gestohlen hatte, genau wie Byron es mir aufgetragen hat." Er blickt dir endlich in die Augen.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36553 /* ~"Wirklich? Warum bist du dann so nervös, Lenny? Laß mich raten: Byron glaubt, du hättest die Papiere vernichtet, aber vielleicht hast du das gar nicht. Vielleicht hast du sie behalten. Als Material für eine kleine Erpressung vielleicht?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36554 /* ~"Warum bist du denn dann so nervös, Lenny? Ich glaube, du lügst."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67296 /* ~"Wirklich? Warum bist du dann so nervös, Lenny? Laß mich raten: Byron glaubt, du hättest die Papiere zerstört, aber vielleicht stimmt das nicht. Vielleicht hast du sie aufbewahrt. Als Druckmaterial für eine kleine Erpressung vielleicht?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67297 /* ~"Warum bist du dann so nervös, Lenny? Ich glaube, du lügst."~ */ GOTO 11
  IF ~~ THEN REPLY #67298 /* ~"Ich muß weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2 10.3
  SAY #36495 /* ~Er starrt dich kurz an und dreht sich dann plötzlich um, um davonzulaufen.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #36556 /* ~Schnapp ihn dir, bevor er sich davonmacht.~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #36557 /* ~Schnapp ihn dir, bevor er sich davonmacht.~ */ GOTO 13
  IF ~~ THEN REPLY #36558 /* ~Laß ihn gehen.~ */ DO ~RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36496 /* ~Gerade als er losläuft machst du einen Satz nach vorne und greifst seinen Arm. Er versucht sich loszureißen, aber gegen deine Kraft kommt er nicht an. Schließlich gibt er auf. "Okay, ich hab' sie nicht zerstört! Ich werd sie dir geben, aber erst mußt du mich loslassen". Du lockerst deinen Griff.~ */
  IF ~~ THEN REPLY #36559 /* ~"Rück sie raus, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36560 /* ~"Warum hast du sie behalten, Lenny? Erpressung, nehme ich an."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36561 /* ~"Du hast sie also behalten. Warum?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #36497 /* ~Gerade als er losläuft machst du einen Satz nach vorne und greifst nach ihm. Er entzieht sich geschickt deinem Griff und beginnt dir auszuweichen. Du siehst deine Beute schon fast entkommen und machst noch einen verzweifelten Satz in seine Richtung. Du erwischst ihn nicht, aber du stößt hart mit ihm zusammen, so daß er das Gleichgewicht verliert. Deine Anstrengungen vereiteln ihm die Flucht. "Okay, ich hab' sie nicht zerstört! Ich werd sie dir geben, aber erst mußt du mich loslassen".~ */
  IF ~~ THEN REPLY #36562 /* ~"Rück sie raus, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36563 /* ~"Warum hast du sie behalten, Lenny? Erpressung, nehme ich an."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36564 /* ~"Du hast sie also behalten. Warum?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #36498 /* ~Er seufzt. "Ich... ich hab sie nicht hier." Du siehst ihn scharf an und siehst, daß sich Angst auf seinem Gesicht breit macht. "Ich schwör's! Ich hab sie nicht! Ich hab sie im Lager zur Aufbewahrung abgegeben!" Er starrt dich weiter an, sein Atem geht schwer.~ */
  IF ~~ THEN REPLY #36565 /* ~"Dann gehen wir sie eben holen."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36499 /* ~Er schüttelt traurig den Kopf. "Geht nicht. Sie sind im Lagerhaus, und es ist gerade geschlossen. Es wird gemunkelt, daß sich da irgendwas im Management ändert... Aber ich weiß nicht, ob das stimmt. Jedenfalls komm ich nicht an die Papiere ran." Er blickt dich verschüchtert an.~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36566 /* ~"Um dieses kleine Problem  habe ich mich gekümmert. Wir können die Papiere holen gehen."~ */ GOTO 16
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36567 /* ~"Dann kümmer ich mich drum und hole die Papiere eben selbst."~ */ GOTO 16
  IF ~~ THEN REPLY #36568 /* ~"Ich hab' genug davon. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1 21.1
  SAY #36500 /* ~Er zuckt die Achseln. "Schön. Ich schätze diese Schlange von Nimms hat mal wieder gewonnen..." Er blickt dich herausfordernd an.~ */
  IF ~~ THEN REPLY #36569 /* ~"Laß uns einfach gehen und die Papiere holen, Lenny."~ */ GOTO 17
  IF ~~ THEN REPLY #36570 /* ~"Diese Runde geht übrigens an Trist, Lenny."~ */ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 16.0 26.0
  SAY #36501 /* ~"Geh zum Lagerhaus und sag dem Kurator 'Ich bin hier wegen einer Anleihe', dann wird er dir die Papiere geben. Später, Dussel." Er reißt sich plötzlich los und rennt davon.~ */
  IF ~~ THEN REPLY #36571 /* ~Geh.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Stolen_Papers","GLOBAL",3)
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ JOURNAL #36021 /* ~Lenny bewahrt Trists Schuldscheine im Lager auf. Ich kann sie vom Kurator bekommen.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1 13.1
  SAY #36502 /* ~Er schnaubt verächtlich und sieht dich herausfordernd an. "Ich hab' sie behalten, damit ich den Spieß gegen deinen Boss Nimms drehen könnte, und um Trist vor dem Podest zu retten!" Er schüttelt den Kopf. "Erpressung, daß ich nicht lache..."~ */
  IF ~~ THEN REPLY #36572 /* ~"Den Spieß drehen?"~ */ GOTO 19
  IF ~~ THEN REPLY #36573 /* ~"Warum den Spieß gegen ihn drehen?"~ */ GOTO 21
  IF ~~ THEN REPLY #36574 /* ~"Übrigens, Nimms ist nicht mein Boß."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0
  SAY #36503 /* ~"Ja, den Spieß drehen." Er blickt dich an und ihm wird erst nach einer Weile bewußt, daß du nicht verstehst, was er meint. "Das heißt, ich wollte ihn anzeigen, ihn an das Harmonium verraten."~ */
  IF ~~ THEN REPLY #36575 /* ~"Warum den Spieß gegen ihn drehen?"~ */ GOTO 21
  IF ~~ THEN REPLY #36576 /* ~"Übrigens, Nimms ist nicht mein Boß."~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.2 13.2
  SAY #36504 /* ~Er schnaubt verächtlich und sieht dich herausfordernd an. "Ich hab' sie behalten, damit ich den Spieß gegen deinen Boss Nimms drehen könnte, und um Trist vor dem Podest zu retten!"~ */
  IF ~~ THEN REPLY #36577 /* ~"Den Spieß drehen?"~ */ GOTO 19
  IF ~~ THEN REPLY #36578 /* ~"Warum den Spieß gegen ihn drehen?"~ */ GOTO 21
  IF ~~ THEN REPLY #36579 /* ~"Übrigens, Nimms ist nicht mein Boß."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1
  SAY #36505 /* ~Er sieht dich stolz an. "Ich mag wohl ein Dieb sein, aber auch ich habe meine Grundsätze. Ich würde keinen armen Schlucker umbringen oder so was tun, was Nimms Trist und ihrem Ehemann angetan hat." Er schüttelt den Kopf und sieht zur Seite. "Ich hab deinem Boss gesagt, daß das, was er tut, falsch ist, und da hat er mich ausgelacht."~ */
  IF ~~ THEN REPLY #36580 /* ~"Übrigens, Nimms ist nicht mein Boß."~ */ GOTO 22
  IF ~~ THEN REPLY #36581 /* ~"Laß uns die Papiere holen gehen, Lenny."~ */ GOTO 16
END

IF ~~ THEN BEGIN 22 // from: 18.2 19.1 20.2 21.0 26.1
  SAY #36506 /* ~Er starrt dich ungläubig an. "Im Ernst? Ich dachte... aber du hast doch gesagt..." Er sieht dich genau an und fängt dann an zu lachen. "Du hast mich geschält, damit ich dir alles ausplaudere!" Er schüttelt den Kopf und sieht dich respektvoll an. "Gute Arbeit, Schleifer."~ */
  IF ~~ THEN REPLY #36582 /* ~"Laß uns die Papiere holen gehen, Lenny."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36507 /* ~Er schüttelt traurig den Kopf. "Geht nicht, es ist gerade geschlossen. Es wird gemunkelt, daß sich da irgendwas im Management ändert... Aber ich weiß nicht, ob das stimmt. Jedenfalls komm ich nicht an die Papiere ran." Er blickt dich verschüchtert an. "Das ist auch der Grund, warum ich Trist nicht selbst geholfen habe, Schleifer. Ich komm an die blöden Papiere nicht ran."~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36583 /* ~"Um dieses kleine Problem  habe ich mich gekümmert. Wir können die Papiere holen gehen."~ */ GOTO 24
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36584 /* ~"Dann kümmer ich mich drum und hole die Papiere eben selbst."~ */ GOTO 24
  IF ~~ THEN REPLY #36585 /* ~"Ich hab' genug davon. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 35.1 36.0
  SAY #36508 /* ~Er lächelt dich an. "Geh zum Lagerhaus und sag dem Kurator 'Ich bin hier wegen einer Anleihe', dann wird er dir Trists Papiere geben. Wenn du ihm dann noch sagst 'Ich hab' Nimms eins gegrinst', wird er dir einen Bonus geben..."~ */
  IF ~~ THEN REPLY #36586 /* ~"Was für ein Bonus?"~ */ DO ~AddexperienceParty(4000)
SetGlobal("Stolen_Papers","GLOBAL",3)
SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36509 /* ~Er lacht. "Beweismaterial, Schleifer." Wird Nimms für lange, lange Zeit aus dem Verkehr ziehen, wenn du's den richtigen Leuten in die Hand drückst..." Er denkt einen Moment nach. "Wenn du jemanden im Harmonium kennst, dem du vertrauen kannst, dann gib's ihm."~ */
  IF ~  Dead("Byron")
~ THEN REPLY #36587 /* ~"Der ist nicht mehr auf den Straßen, Lenny. Byron is tot."~ */ GOTO 41
  IF ~~ THEN REPLY #39445 /* ~"Leb wohl."~ */ JOURNAL #36022 /* ~Lenny bewahrt die Beweise für Byron Nimms illegale Aktivitäten im Lager auf. Er hat vorgeschlagen, daß ich die Beweise jemandem im Harmonium bringe, dem ich trauen kann. Ich kann die Beweise bekommen, wenn ich mit dem Kurator rede.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY #36510 /* ~Er runzelt die Stirn. "Wie meinst du das?"
~ */
  IF ~~ THEN REPLY #36588 /* ~"Geht dich nichts an."~ */ GOTO 17
  IF ~~ THEN REPLY #36589 /* ~"Ich arbeite nicht für Nimms, Lenny."~ */ DO ~AddexperienceParty(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 5.2 33.1 34.1 38.1 40.1
  SAY #36511 /* ~"Biste sicher, daß du deinen aktuellen Beruf aufgeben und ein Dieb werden willst?"~ */
  IF ~~ THEN REPLY #36590 /* ~"Ja..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 42
  IF ~~ THEN REPLY #52390 /* ~"Nein, laß mich noch eine Weile darüber nachdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #36512 /* ~Er sieht sich um und zuckt mit den Achseln. "Dies ist der Untere Bezirk, Heimat des gemeinen Volks. Das Leben ist hier nicht so hoffnungslos wie im Stock, aber auch nicht so gut wie im Bezirk der Kuratoren." Er sieht sich noch einmal um. "Sonst ist da nicht viel zu erzählen."~ */
  IF ~~ THEN REPLY #36591 /* ~"Was weißt du über den Stock?"~ */ GOTO 29
  IF ~~ THEN REPLY #36592 /* ~"Was weißt du über den Bezirk der Kuratoren?"~ */ GOTO 30
  IF ~~ THEN REPLY #36593 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #36594 /* ~"Danke, ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 30.0
  SAY #36513 /* ~Er schüttelt den Kopf und grinst. "Ich schätze, du würdest ihn als Slum von Sigil bezeichnen. Viele arme Schlucker gibt's da, die nirgendwo ihren Platz haben außer im Totenbuch." Er hält inne. "Weiter läßt sich dazu nichts sagen."~ */
  IF ~~ THEN REPLY #36595 /* ~"Was weißt du über den Bezirk der Kuratoren?"~ */ GOTO 30
  IF ~~ THEN REPLY #36596 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #36597 /* ~"Danke, ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.0
  SAY #36514 /* ~Er lächelt. "Der Name sagt doch schon alles, Dussel. Kuratoren, Kuratoren und noch mehr Kuratoren. Wenn du Papiere in Umlauf bringen willst oder welche in die Hand gedrückt bekommen willst, dann ist das der richtige Ort dafür." Er zuckt die Achseln. "Weiter läßt sich dazu nichts sagen."~ */
  IF ~~ THEN REPLY #36598 /* ~"Was weißt du über den Stock?"~ */ GOTO 29
  IF ~~ THEN REPLY #36599 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #36600 /* ~"Danke, ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #36515 /* ~Er grinst und lacht dann scharf auf. "Die meisten Leute denken, Sigil wäre das Zentrum des Multiversums. Ich persönlich finde, es ist eher der Arsch der Welt, und die armen Schlucker, die hier leben, sind die Exkremente, die die Welt auswirft." Er grinst dich weiter an.~ */
  IF ~~ THEN REPLY #36601 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #36602 /* ~"Danke, ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 32 // from:
  SAY #36516 /* ~Du siehst Lenny. Er sieht dich mit einem falschen Lächeln an, als du dich näherst. "Oh, hallo du da, Dussel. Womit habe ich diese Ehre verdient?"~ */
  IF ~~ THEN REPLY #36603 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36604 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 38 40 even though they appear after this state */
~  Global("Stolen_Papers","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #36517 /* ~Du siehst Lenny. Er sieht alles andere als begeistert aus, als er dich entdeckt. "Was willst du, Dussel?"~ */
  IF ~~ THEN REPLY #36605 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 34
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36606 /* ~"Ich würde gern die Diebeskunst erlernen. Kannst du sie mich lehren?"~ */ GOTO 27
  IF ~~ THEN REPLY #36607 /* ~"Nichts, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36518 /* ~Er runzelt die Stirn. "Keine weiteren Fragen, keine weiteren Antworten. Geh zurück zu Nimms, deinem Boss, und sag' ihm, er soll mich in Ruhe lassen." Er starrt dich an.~ */
  IF ~~ THEN REPLY #36608 /* ~"Nimms ist nicht mein Boß."~ */ GOTO 35
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36609 /* ~"Ich möchte gern die Diebeskunst erlernen. Kannst du sie mich lehren?"~ */ GOTO 27
  IF ~~ THEN REPLY #36610 /* ~"Schön, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36519 /* ~Er starrt dich ungläubig an. "Im Ernst? Ich dachte... aber vorhin hast du doch gesagt..." Er sieht dich genau an und fängt dann an zu lachen. "Du hast mir mich geschält, damit ich dir alles ausplaudere!" Er schüttelt den Kopf und sieht dich respektvoll an. "Gute Arbeit, Schleifer." Er hält inne. "Was hältst du davon, wenn wir Nimms eins grinsen?"~ */
  IF ~~ THEN REPLY #36611 /* ~"Im eins grinsen?"~ */ GOTO 36
  IF ~~ THEN REPLY #36612 /* ~"Ja, das würde ich gern."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36613 /* ~"Nein, es ist mir eigentlich egal - jetzt, wo ich habe, weshalb ich gekommen bin."~ */ GOTO 37
  IF ~~ THEN REPLY #36614 /* ~"Bestimmt nicht, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36520 /* ~Er lächelt. "Ja, ihm eins grinsen... ihn aus dem Verkehr ziehen, ihn einlochen und so."~ */
  IF ~~ THEN REPLY #36615 /* ~"Ja, das würde ich gern."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36616 /* ~"Nein, es ist mir eigentlich egal - jetzt, wo ich habe, weshalb ich gekommen bin."~ */ GOTO 37
  IF ~~ THEN REPLY #36617 /* ~"Bestimmt nicht, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2 36.1
  SAY #36521 /* ~Er zuckt mit den Schultern. "Nun, das sagt alles. Lebe wohl, Dussel."~ */
  IF ~~ THEN REPLY #36618 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 40 even though they appear after this state */
~  GlobalGT("Evidence_Papers","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #36522 /* ~Du siehst Lenny. Er lächelt dir zu, als du näher kommst. "Hallo, Schleifer. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #36619 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36620 /* ~"Ich möchte gern die Diebeskunst erlernen. Kannst du sie mich lehren?"~ */ GOTO 27
  IF ~~ THEN REPLY #36621 /* ~"Nichts, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.0
  SAY #36523 /* ~"Ich hab' dir alles erzählt, was ich weiß, Schleifer. Ich habe keine weiteren Antworten für dich."
~ */
  IF ~~ THEN REPLY #36622 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Byron_Arrested","GLOBAL",0)
~ THEN BEGIN 40 // from:
  SAY #36524 /* ~Du siehst Lenny. Er lächelt dir zu, als du näher kommst. "Hallo, Schleifer. Ich hab' die Sache mit Byron gehört; hätte gar nicht besser kommen können." Er grinst. "Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #36623 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36624 /* ~"Ich möchte gern die Diebeskunst erlernen. Kannst du sie mich lehren?"~ */ GOTO 27
  IF ~~ THEN REPLY #36625 /* ~"Nichts, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 25.0
  SAY #39446 /* ~Er zögert und lächelt dann gemein. "Wirklich? Wie wunderbar. Das hätte keiner netteren Person passieren können."~ */
  IF ~~ THEN REPLY #39447 /* ~"Leb wohl, Lenny."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.0
  SAY #52391 /* ~"Zeig mir, was du kannst, dann gebe ich dir ein paar Tips." Er beobachtet dich genau, während du vorführst, was du kannst. An mehreren Stellen stoppt er dich und zeigt dir, wie du deine Fähigkeiten verbessern kannst. Nach ein paar Stunden glaubst du, daß deine Fähigkeiten als Dieb nun ausgereift genug sind.~ */
  IF ~  Global("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Danke, Lenny."~ */ DO ~SetGlobal("Thief_Training","GLOBAL",3)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 43
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Danke, Lenny."~ */ GOTO 43
  IF ~  !HasItem("Zpunch",Myself)
~ THEN REPLY #64222 /* ~"Danke. Ich muß los."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 42.1
  SAY #64223 /* ~Lenny lächelt und nickt gedankenverloren. "Hier, Schleifer. Nimm die hier auch noch. Ein Geschenk von Lenny, um dir in deinem neuen Beruf zu helfen... Ich werd' sie sowieso nicht mehr brauchen." Er gibt dir ein Paar Schlagdolche.~ */
  IF ~~ THEN REPLY #64224 /* ~"Danke, Lenny. Leb wohl."~ */ DO ~GiveItem("Zpunch",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #64783 /* ~"Zeig mir, was du kannst, dann gebe ich dir ein paar Tips." Er beobachtet dich genau, während du vorführst, was du kannst. An mehreren Stellen stoppt er dich und zeigt dir, wie du deine Fähigkeiten verbessern kannst. Nach ein paar Stunden glaubst du, daß deine Fähigkeiten als Dieb nun ausgereift genug sind.~ */
  IF ~~ THEN REPLY #64784 /* ~"Danke. Ich muß los."~ */ EXIT
END
