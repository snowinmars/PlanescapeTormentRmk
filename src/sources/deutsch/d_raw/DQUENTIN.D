// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUENTIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUENTIN~

IF ~  Global("Quentin","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7410 /* ~Der Mann vor dir scheint im mittleren Alter und von durchschnittlicher Größe zu sein. Er ist kräftig gebaut, hat einen breiten Stiernacken, und seine Schultern sind angezogen, so als ob eine große Last auf ihnen ruht. Mit ungeduldigem Blick starrt er auf den schwarzen Monolithen vor sich.
~ */
  IF ~~ THEN REPLY #7411 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #7412 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7413 /* ~Der Mann wirft dir einen Blick zu. "Es gibt genug Platz. Kein Grund mich zu bitten, hier wegzugehen."~ */
  IF ~~ THEN REPLY #7414 /* ~"Ehrlich gesagt wollte ich nur wissen, was das für ein Monolith ist."~ */ DO ~SetGlobal("Quentin","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #7415 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 13.0
  SAY #7416 /* ~"Es ist ein Grabstein für die Ebenen." Er redet verächtlich. "Friedhöfe von Namen sind in diesen Stein eingeritzt. Ich hoffe nur, daß mein Name derjenige ist, der diesen Stein in zwei Teile sprengt." Er zeigt auf den Sockel des Monolithen. "'Quentin', genau hier, gerade tief genug eingemeißelt, um das Ding zusammenstürzen zu lassen."~ */
  IF ~~ THEN REPLY #7417 /* ~"Grabstein für die Ebenen?"~ */ GOTO 3
  IF ~~ THEN REPLY #7418 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7419 /* ~"Ja," Quentin lächelt gequält. "Die Staubies kratzen die Namen ihrer Toten in dieses Denkmal hier..." Er zeigt um sich. "Und in die Mauern dieses Ortes. Ich schätze, da ist nicht genug Platz, aber egal... sie tun ihr Bestes. Kann kaum die Hälfte der Namen lesen."~ */
  IF ~~ THEN REPLY #7420 /* ~"Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #7421 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.1
  SAY #7422 /* ~"Ich lese die Namen der Neuankömmlinge. Ich schaue nach und finde jeden Tag neue Namen. Ich versuche mich zu erinnern, ob ich sie gekannt habe, das ist alles."~ */
  IF ~~ THEN REPLY #7423 /* ~"Die Staubmenschen halten die Namen aller Gestorbenen auf diesem Monument fest?"~ */ GOTO 5
  IF ~~ THEN REPLY #7424 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7425 /* ~"Ja, sie ritzen sie in diesen Stein... und auch in die Mauern dieses Ortes." Quentin klingt verächtlich. "Ich weiß nicht, warum sie sich die Mühe machen, die Toten zu zählen... die Staubies kümmern sich mehr um die Lebenden."~ */
  IF ~  Global("Mourn","GLOBAL",0)
~ THEN REPLY #7426 /* ~"Die Lebenden?"~ */ DO ~SetGlobal("Mourn","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Mourn","GLOBAL",0)
~ THEN REPLY #7427 /* ~"Die Lebenden?"~ */ GOTO 6
  IF ~~ THEN REPLY #7428 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #7429 /* ~"Ja... kennst du die trauernden Staubmenschen, die an diesen Ort kommen? Sie betrauern nicht die Toten, verstehst du, sie betrauern die Lebenden. Du kannst kaum ein paar Worte mit ihnen wechseln, ohne daß sie dich fragen, ob sie für dich irgendeinen armen *lebenden* Schlucker betrauern sollen."~ */
  IF ~~ THEN REPLY #7430 /* ~"Warum trauern sie um die Lebenden?"~ */ GOTO 7
  IF ~~ THEN REPLY #7431 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7432 /* ~"Da bin ich überfragt, Schleifer." Er zuckt mit den Schultern. "Vielleicht solltest du lieber die da fragen. Für mich verdienen die Toten dreimal soviel Trauer wie irgendein armer Schlucker, der in dieser Hölle lebt." Er nickt in Richtung des Denkmals. "Jeder Name dort steht in meinem Buch."~ */
  IF ~~ THEN REPLY #7433 /* ~"Schon mal von jemandem gehört, der zurückgekommen ist, nachdem sein Name hier eingemeißelt wurde?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7434 /* ~"Kannst du mir sagen, wer dieser verrückte Staubmensch da auf der anderen Seite des Monoliths ist?"~ */ GOTO 10
  IF ~~ THEN REPLY #7435 /* ~"Ich verstehe. Vielen Dank für deine Hilfe. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Quentin","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7436 /* ~Du siehst Quentin. Er betrachtet den Stein noch immer, als ob er ihn mit seinem Blick zum Einsturz bringen könnte.~ */
  IF ~~ THEN REPLY #7437 /* ~"Sei gegrüßt, Quentin."~ */ GOTO 9
  IF ~~ THEN REPLY #7438 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #7439 /* ~"He?" Quentin wirft dir einen Blick zu und nickt dann. "So sehen wir uns also wieder, Schleifer. Bist du gekommen, um dir ein Stück Felsen für deinen Namen zu reservieren?"~ */
  IF ~~ THEN REPLY #7440 /* ~"Noch nicht. Ich will dich erst noch was fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #7441 /* ~"Nein, kam nur grade hier vorbei. Leb wohl, Quentin."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 13.3
  SAY #7442 /* ~Quentin grinst. "Er ist nicht gerade der Klügste in diesem Irrenhaus, oder? Dieser dämliche 'Tod-der Namen.'" Quentin wird ironisch. " 'Tod-des-Verstands' würde besser zu ihm passen."~ */
  IF ~~ THEN REPLY #7443 /* ~"Was macht er hier?"~ */ GOTO 11
  IF ~~ THEN REPLY #7444 /* ~"Ach so. Danke."
~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7445 /* ~"Er ist der Hüter des Denkmalbereichs. Er weiß, wo jeder einzelne Name hier steht und kann ihn heraussuchen, wenn du ihn danach fragst. Er ist mit Sicherheit nicht sehr intelligent, aber er hat mir ein paar Mal geholfen." Er zuckt mit den Achseln. "Er hat auch die Aufgabe, neue Namen einzuritzen, wenn deren Besitzer das Zeitliche segnen."~ */
  IF ~~ THEN REPLY #7446 /* ~"Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 13
  IF ~~ THEN REPLY #7447 /* ~"Ach so. Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0 13.2
  SAY #7448 /* ~"Du meinst, von den Toten auferstanden?" Quentin schüttelt den Kopf. "Nicht ein einziger, Schleifer. Alles was lebt, muß sterben, so ist das nun mal." Er zuckt mit den Achseln. "Trotzdem, wenn ich daran denke, daß die Ebenen nie enden, glaube ich, daß alles möglich ist."~ */
  IF ~~ THEN REPLY #7449 /* ~"Ich nehme es an. Sag mal, ich hätte da noch ein paar Fragen an dich..."~ */ GOTO 13
  IF ~~ THEN REPLY #7450 /* ~"Ach so. Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 11.0 12.0
  SAY #7451 /* ~"Du kannst ruhig fragen, Schleifer."~ */
  IF ~~ THEN REPLY #7452 /* ~"Kannst du mir nochmal sagen, wofür dieses Monument ist?"~ */ GOTO 2
  IF ~~ THEN REPLY #7453 /* ~"Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #7454 /* ~"Schon mal von jemandem gehört, der zurückgekommen ist, nachdem sein Name hier eingemeißelt wurde?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7455 /* ~"Kannst du mir sagen, wer dieser verrückte Staubmensch da auf der anderen Seite des Monoliths ist?"~ */ GOTO 10
  IF ~~ THEN REPLY #7456 /* ~"Ich verstehe. Danke."~ */ EXIT
END
