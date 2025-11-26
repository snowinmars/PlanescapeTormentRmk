// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #19349 /* ~Diese verrottende männliche Leiche scheint dich zuerst überhaupt nicht zu bemerken. Aber als du dich näherst, dreht sie sich um und nickt langsam, als ob sie dich begrüßen wollte.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19397 /* ~"Sei gegrüßt..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19398 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #19399 /* ~Laß den Zombie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1
  SAY #19350 /* ~Der Zombie stöhnt zur Antwort leise: "Grhuuu... ssssuuhhh..." Bei jedem Ausatmen erfüllt der Gestank von verrottendem Fleisch die Luft.~ */
  IF ~~ THEN REPLY #19400 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #19401 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19351 /* ~"Aaabgestaaahhhn... Mmmaaahhhrrr." Der Zombie gibt eine Reihe unverständlicher, jammernder Laute von sich... Du kannst nicht verstehen, was er sagt.~ */
  IF ~~ THEN REPLY #19402 /* ~"Ich kann dich nicht verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0
  SAY #19352 /* ~Der Zombie stöhnt zur Antwort leise. Nur dank deiner Fähigkeiten, dich mit Toten zu verständigen, kannst du ihn verstehen: "Seiii geeegrüßt."~ */
  IF ~~ THEN REPLY #19403 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #19404 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19353 /* ~Die Leiche bleibt einen Moment stehen, verlagert ihr Gewicht von einem Fuß auf den andern, bevor sie antwortet. "Fraagee?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19405 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 6
  IF ~~ THEN REPLY #19407 /* ~"Wo bin ich?"~ */ GOTO 7
  IF ~~ THEN REPLY #19408 /* ~"Was machst du hier?"~ */ GOTO 8
  IF ~  !Dead("Soego2")
~ THEN REPLY #19410 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 9
  IF ~  Dead("Soego2")
~ THEN REPLY #19523 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19411 /* ~"Ich will dich was über eine bestimmte Person fragen..."~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19413 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 23
  IF ~~ THEN REPLY #19415 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 25.1
  SAY #19357 /* ~Der Kopf der Leiche nickt schläfrig. "Fraa... geen."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19417 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 6
  IF ~~ THEN REPLY #19418 /* ~"Wo bin ich?"~ */ GOTO 7
  IF ~~ THEN REPLY #19419 /* ~"Was machst du hier?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19420 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19421 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19422 /* ~"Ich will dich was über eine bestimmte Person fragen..."~ */ GOTO 25
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19423 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 23
  IF ~~ THEN REPLY #19424 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19358 /* ~Eine lange Pause. "Häääähhh?" Der Zombie zuckt mit den Schultern, wobei er die eine Schulter nicht ganz so hoch zieht wie die andere. "Frraag Mmmary, Mufffffige Mmmaaary."~ */
  IF ~~ THEN REPLY #19425 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19426 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19427 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19359 /* ~"Hhheimat. Mmmeine Heimat." Was von seiner Gesichtsmuskulatur übrig ist zieht seinen Mund zu einer Fratze, die man als Lächeln interpretieren könnte. "Lllaaand des Sch-schweigenden Kööönigs, Tooote Laaannnde."~ */
  IF ~~ THEN REPLY #19428 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19429 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19430 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19375 /* ~Der Zombie starrt dich einen Moment lang an. "Mmmeine Pfliicht. Mmmeine Aaarbeit, fffür den Sch-schweigenden König. Ich bbbin ein guuter Dddiener mmmeiner Hhheimat."~ */
  IF ~~ THEN REPLY #19431 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19432 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19433 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19377 /* ~"Vvviele. Wwwiiir, Ssskelette, Ghuuuls." Sein Arm hebt sich langsam und zeigt nach Osten. "Rrrattennn." Sein Arm schwingt mühsam herum, bis er auf dich zeigt. "Lllebend."~ */
  IF ~~ THEN REPLY #19434 /* ~"Sind außer mir noch andere Lebende hier?"~ */ GOTO 11
  IF ~~ THEN REPLY #19435 /* ~"Erzähl mir was über deine eigene Rasse."~ */ GOTO 13
  IF ~~ THEN REPLY #19436 /* ~"Erzähl mir was über die anderen Untoten."~ */ GOTO 14
  IF ~~ THEN REPLY #19437 /* ~"Erzähl mir von den Ratten."~ */ GOTO 17
  IF ~~ THEN REPLY #19438 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19439 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19380 /* ~"Vvviele. Wwwiiir, Knochenn, Ghuuuls." Sein Arm hebt sich langsam und zeigt nach Osten. "Rrrattennn."~ */
  IF ~~ THEN REPLY #19440 /* ~"Erzähl mir was über deine eigene Rasse."~ */ GOTO 13
  IF ~~ THEN REPLY #19441 /* ~"Erzähl mir was über die anderen Untoten."~ */ GOTO 14
  IF ~~ THEN REPLY #19442 /* ~"Erzähl mir von den Ratten."~ */ GOTO 17
  IF ~~ THEN REPLY #19443 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19444 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19382 /* ~Der Kopf der Leiche bewegt sich vor und zurück, vor und zurück. "Sssoooegoooo..."~ */
  IF ~~ THEN REPLY #19445 /* ~"Wer ist Soego?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19446 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19447 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19448 /* ~"Ich hätte da noch ein paar Fragen."
~ */ GOTO 5
  IF ~~ THEN REPLY #19449 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19383 /* ~"Staaaub-mmmensch. Frrrag Mmmary, Muffffffige Mmmaaaary."~ */
  IF ~~ THEN REPLY #19450 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19451 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19452 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19453 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19454 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19384 /* ~Der Zombie legt seine verrottenden Hände über seine verwesende Brust. "Sch-stark!" Er zeigt mit einer Hand auf seine Füße, dann auf seine Schläfe, wo sich ein Stück Fleisch abgelöst und den blanken Schädel darunter freigegeben hat. "Lllaaangsaaam. Hhhehhh..." Die Leiche gibt ein beunruhigendes, gurgelndes Geräusch von sich, das dich entfernt an Gekicher erinnert. "Gggeführt von der Mufffffigen Mmmary..."~ */
  IF ~~ THEN REPLY #19455 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19456 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19457 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19458 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19459 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19385 /* ~"Übeeer wwweeen? Knooochen? Ghuuuls?"~ */
  IF ~~ THEN REPLY #19460 /* ~"Knochen... Skelette?"~ */ GOTO 15
  IF ~~ THEN REPLY #19461 /* ~"Die Ghule."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19462 /* ~"Na, macht nichts. Wer bewohnt diesen Ort sonst noch ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19463 /* ~"Na, macht nichts. Wer bewohnt diesen Ort sonst noch ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19464 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19465 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19386 /* ~"Knooochen!" Es klingt irgendwie nach Bewunderung. "Fffüüühre uns, leiiite uns. Zusaaammen bauuuen wir die Toooten Laaannde auf."~ */
  IF ~~ THEN REPLY #19466 /* ~"Die Skelette führen euch?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19467 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19468 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19469 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19470 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19387 /* ~"Hhhargrimmm ffführt die Knooochen. Sch-spricht mit dem Sch-schweigenden König, sch-spricht dann mit der Mufffffigen Mmmary. Mmmary sch-spricht mit uns, giiibt uns unsere Aaarbeit." Er nickt.~ */
  IF ~~ THEN REPLY #19471 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19472 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19473 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19474 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19475 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19476 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19388 /* ~Wieder hebt sich langsam sein Arm und schwingt zurück, bis er nach Osten zeigt. "Rrrattennn..." Die nassen Fetzen seiner Oberlippe ziehen sich zu einem Grinsen zurück; eine dicke, schwarze Flüssigkeit läuft an den gelbbraunen Zähnen runter. "Fressennn die Toten... fressennn... Schleeechtes. Haaaben jetzt Aaangst, vor den Ghuuuls. Siiie bleiben weeeg."~ */
  IF ~~ THEN REPLY #19477 /* ~"Die Ratten fressen die Leichen hier?"~ */ GOTO 18
  IF ~~ THEN REPLY #19478 /* ~"Ihr habt einen Waffenstillstand mit den Ratten?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19479 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19480 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19481 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19482 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19389 /* ~"Aaahm... fraaag Mmmary. Muffffige Mmmary."~ */
  IF ~~ THEN REPLY #19483 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19484 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19485 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19486 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19487 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19390 /* ~Der Zombie zeigt auf seinen Unterleib, wo Löcher in seinem verrottendem Fleisch den Blick auf verschiedene innere Organe freigeben. "Iiimmeeer hhhungriiig. Die Gggesetze des Sch-schweigenden Königs hhhaaalten sie dddavon ab, die Toten hhhiiier zu fressennn. Ghuuuls beschützennn unsss, bewachennn diiiese Hallleeen."~ */
  IF ~~ THEN REPLY #19488 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19489 /* ~"Vor wem beschützen sie diese Hallen?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19490 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19491 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19492 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19493 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19391 /* ~"Rrrattennn. Und..." Er hebt einen Arm und zeigt nach oben. "...die Leeebenden, von oooben. Sie kommennn, um die Toten zu sch-stehlen, sie zu sch-störennn."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19494 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19495 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19496 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19497 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 25.0
  SAY #19392 /* ~"Sssiiie füüührt unsss. Bbbeooobachtet unsss. Verkündet unsss die Wwworte des Sch-schweigenden Königs."
~ */
  IF ~~ THEN REPLY #19498 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19499 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19500 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19393 /* ~"Herrr der Toooten Laaannde. Fraaag Mmmary. Mufffffige Mmmary."~ */
  IF ~~ THEN REPLY #19501 /* ~"Erzähl mir was über die Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19502 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19503 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19394 /* ~Die Leiche steht regungslos da und starrt dich an. Schließlich spricht sie. "Nnnein. Fraaag Mmmary. Muffffige Mmmary."~ */
  IF ~~ THEN REPLY #19504 /* ~"Erzähl mir was über die Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19505 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19506 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19395 /* ~Als der Zombie dich anblickt, scheint in seinen toten Augen ein Funke des Erkennens aufzublitzen. "Aaahhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19507 /* ~"Sei gegrüßt..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19508 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #19509 /* ~Laß den Zombie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.5 5.5
  SAY #19396 /* ~Die Leiche schüttelt den Kopf. "Fraaag Mmmary. Mufffffige Mmmary."~ */
  IF ~~ THEN REPLY #19510 /* ~"Erzähl mir was über die Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19511 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19512 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
