// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19524 /* ~Diese verrottende weibliche Leiche scheint dich zuerst überhaupt nicht zu bemerken. Aber als du dich näherst, dreht sie sich um und nickt langsam, als ob sie dich begrüßen wollte.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19554 /* ~"Sei gegrüßt..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19555 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #19556 /* ~Laß den Zombie in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 24.1 27.1
  SAY #19525 /* ~Der Zombie stöhnt zur Antwort leise: "Grhuuu... ssssuuhhh..." Bei jedem Ausatmen erfüllt der Gestank von verrottendem Fleisch die Luft.~ */
  IF ~~ THEN REPLY #19557 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #19558 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19526 /* ~" Aaabgestaaahhhn... Mmmaaahhhrrr." Die Zombie-Frau gibt eine Reihe unverständlicher, jammernder Laute von sich... du kannst nicht verstehen, was sie sagt.~ */
  IF ~~ THEN REPLY #19559 /* ~"Ich kann dich nicht verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 24.0 27.0
  SAY #19527 /* ~Der Zombie stöhnt zur Antwort leise. Nur dank deiner Fähigkeiten, dich mit Toten zu verständigen, kannst du ihn verstehen: "Seiii geeegrüßt."~ */
  IF ~~ THEN REPLY #19560 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #19561 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19528 /* ~Die Leiche bleibt einen Moment stehen, verlagert ihr Gewicht von einem Fuß auf den andern, bevor sie antwortet: "Fraagee?"~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19562 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 6
  IF ~~ THEN REPLY #19563 /* ~"Wo bin ich?"~ */ GOTO 7
  IF ~~ THEN REPLY #19564 /* ~"Was machst du hier?"~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19565 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19566 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19567 /* ~"Ich will dich was über eine bestimmte Person fragen..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19568 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 23
  IF ~~ THEN REPLY #19569 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 6.1 7.1 8.1 9.4 10.3 11.3 12.3 13.3 14.4 15.3 16.4 17.4 18.3 19.4 20.2 21.1 22.1 23.1 26.1
  SAY #19529 /* ~Der Kopf der Leiche nickt schläfrig. "Fraa... geen."~ */
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #19570 /* ~"Warum hat man mich zu einem Gefangenen gemacht?"~ */ GOTO 6
  IF ~~ THEN REPLY #19571 /* ~"Wo bin ich?"~ */ GOTO 7
  IF ~~ THEN REPLY #19572 /* ~"Was machst du hier?~ */ GOTO 8
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19573 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19574 /* ~"Wer wohnt an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19575 /* ~"Ich will dich was über eine bestimmte Person fragen..."~ */ GOTO 26
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #19576 /* ~"Hast du hier irgendwo eine kleine Bronzekugel gesehen?"~ */ GOTO 23
  IF ~~ THEN REPLY #19577 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #19530 /* ~Eine lange Pause. "Häääähhh?" Die Zombie-Frau zuckt mit den Schultern, wobei sie die eine Schulter nicht ganz so hoch zieht wie die andere. "Frraag Mmmary, Mufffffige Maaary."~ */
  IF ~~ THEN REPLY #19578 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19579 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19580 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1
  SAY #19531 /* ~"Hheimat. Mmmeine Heimat." Was von ihrer Gesichtsmuskulatur übrig ist zieht ihren Mund zu einer Fratze, die man als Lächeln interpretieren könnte. "Lllaaand des Sch-schweigenden Königs, Tooote Laaannde."~ */
  IF ~~ THEN REPLY #19581 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19582 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19583 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.2
  SAY #19532 /* ~Der Zombie starrt dich einen Moment lang an. "Mmmeine Pfliicht. Mmmeine Aaarbeit, fffür den Sch-schweigenden König. Ich bbbin ein guuter Dddiener mmmeiner Hhheimat."~ */
  IF ~~ THEN REPLY #19584 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19585 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19586 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3 5.3 11.1 12.1 13.1 14.2 15.1 16.2 17.2 18.1 19.2 20.0
  SAY #19533 /* ~"Vvviele. Wwwiiir, Ssskelette, Ghuuuls." Ihr Arm hebt sich langsam und zeigt nach Osten. "Rrrattennn." Ihr Arm schwingt mühsam herum, bis er auf dich zeigt. "Lllebend."~ */
  IF ~~ THEN REPLY #19587 /* ~"Sind außer mir noch andere Lebende hier?"~ */ GOTO 11
  IF ~~ THEN REPLY #19588 /* ~"Erzähl mir was über deine eigene Rasse."~ */ GOTO 13
  IF ~~ THEN REPLY #19589 /* ~"Erzähl mir was über die anderen Untoten."~ */ GOTO 14
  IF ~~ THEN REPLY #19590 /* ~"Erzähl mir von den Ratten."~ */ GOTO 17
  IF ~~ THEN REPLY #19591 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19592 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.4 5.4 11.2 12.2 13.2 14.3 15.2 16.3 17.3 18.2 19.3 20.1
  SAY #19534 /* ~"Vvviele. Wwwiiir, Knochenn, Ghuuuls." Ihr Arm hebt sich langsam und zeigt nach Osten. "Rrrattennn."~ */
  IF ~~ THEN REPLY #19593 /* ~"Erzähl mir was über deine eigene Rasse."~ */ GOTO 13
  IF ~~ THEN REPLY #19594 /* ~"Erzähl mir was über die anderen Untoten."~ */ GOTO 14
  IF ~~ THEN REPLY #19595 /* ~"Erzähl mir von den Ratten."~ */ GOTO 17
  IF ~~ THEN REPLY #19596 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19597 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #19535 /* ~Der Kopf der Leiche bewegt sich vor und zurück, vor und zurück. "Sssoooegoooo..."~ */
  IF ~~ THEN REPLY #19598 /* ~"Wer ist Soego?"~ */ GOTO 12
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19599 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19600 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19601 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19602 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #19536 /* ~"Staaaub-mmmensch. Frrrag Mmmary, Muffffffige Mmmaaaary."~ */
  IF ~~ THEN REPLY #19603 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19604 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19605 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19606 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19607 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.0
  SAY #19537 /* ~Die Zombie-Frau legt ihre verrottenden Hände über ihre verwesende Brust. "Sch-tark!" Sie zeigt mit ihrer Hand auf ihre Füße, dann auf ihre Schläfe, wo sich ein Stück Fleisch abgelöst und den blanken Schädel darunter freigegeben hat. "Lllaaangsaaam. Hhhehhh..." Die Leiche gibt ein beunruhigendes, gurgelndes Geräusch von sich, das dich entfernt an Gekicher erinnert. "Gggeführt von der Muffffige Mmmary..."~ */
  IF ~~ THEN REPLY #19608 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19609 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19610 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19611 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19612 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 10.1
  SAY #19538 /* ~"Übeeer wwweeen? Knooochen? Ghuuuls?"~ */
  IF ~~ THEN REPLY #19613 /* ~"Knochen... Skelette?"~ */ GOTO 15
  IF ~~ THEN REPLY #19614 /* ~"Die Ghule."~ */ GOTO 19
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19615 /* ~"Na, macht nichts. Wer bewohnt diesen Ort sonst noch ?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19616 /* ~"Na, macht nichts. Wer bewohnt diesen Ort sonst noch ?"~ */ GOTO 10
  IF ~~ THEN REPLY #19617 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19618 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19539 /* ~"Knooochen!" Es klingt irgendwie nach Bewunderung. "Fffüüühre uns, leiiite uns. Zusaaammen bauuuen wir die Toooten Laaannde auf."~ */
  IF ~~ THEN REPLY #19619 /* ~"Die Skelette führen euch?"~ */ GOTO 16
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19620 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19621 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19622 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19623 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #19540 /* ~"Hhhargrimmm ffführt die Knooochen. Sch-spricht mit dem Sch-schweigenden König, sch-spricht dann mit der Mufffffigen Mmmary. Mmmary sch-spricht mit uns, giiibt uns unsere Aaarbeit." Sie nickt.~ */
  IF ~~ THEN REPLY #19624 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19625 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19626 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19627 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19628 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19629 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.3 10.2
  SAY #19541 /* ~Wieder hebt sich langsam ihr Arm und schwingt zurück, bis er nach Osten zeigt. "Rrrattennn..." Die nassen Fetzen ihrer Oberlippe ziehen sich zu einem Grinsen zurück; eine dicke, schwarze Flüssigkeit läuft an den gelbbraunen Zähnen runter. "Fressennn die Toten... fressennn... Schleeechtes. Haaaben jetzt Aaangst, vor den Ghuuuls. Siiie bleiben weeeg."~ */
  IF ~~ THEN REPLY #19630 /* ~"Die Ratten fressen die Leichen hier?"~ */ GOTO 18
  IF ~~ THEN REPLY #19631 /* ~"Ihr habt einen Waffenstillstand mit den Ratten?"~ */ GOTO 18
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19632 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19633 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19634 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19635 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #19542 /* ~"Aaahm... fraaag Mmmary. Muffffige Mmmary."~ */
  IF ~~ THEN REPLY #19636 /* ~"Erzähl mir was über die... Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19637 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19638 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19639 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19640 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #19543 /* ~Die Zombie-Frau zeigt auf ihren Unterleib, wo Löcher in ihrem verrottenden Fleisch den Blick auf verschiedene innere Organe freigeben. "Iiimmeeer hhhungriiig. Die Gggesetze des Sch-schweigenden Königs hhhaaalten sie dddavon ab, die Toten hhhiiier zu fressennn. Ghuuuls beschützennn unsss, bewachennn diiiese Hallleeen."~ */
  IF ~~ THEN REPLY #19641 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19642 /* ~"Vor wem beschützen sie diese Hallen?"~ */ GOTO 20
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19643 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19644 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19645 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19646 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #19544 /* ~"Rrrattennn. Und..." Sie hebt einen Arm und zeigt nach oben. "...die Leeebenden, von oooben. Sie kommennn, um die Toten zu sch-stehlen, sie zu sch-störennn."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #19647 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 9
  IF ~  Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #19648 /* ~"Wer wohnt sonst noch an diesem Ort?"~ */ GOTO 10
  IF ~~ THEN REPLY #19649 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19650 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.0 12.0 13.0 16.1 18.0 22.0 23.0 26.0
  SAY #19545 /* ~"Sssiiie füüührt unsss. Bbbeooobachtet unsss. Verkündet unsss die Wwworte des Sch-schweigenden Königs."~ */
  IF ~~ THEN REPLY #19651 /* ~"Erzähl mir was über den Schweigenden König."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #19652 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19653 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.0 8.0 16.0 19.0 21.0
  SAY #19546 /* ~"Herrr der Toooten Laaannde. Fraaag Mmmary. Mufffffige Mmmary."~ */
  IF ~~ THEN REPLY #19654 /* ~"Erzähl mir was über die Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19655 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #19656 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.6 5.6
  SAY #19547 /* ~Die Leiche steht regungslos da und starrt dich an. Schließlich spricht sie. "Nnnein. Fraaag Mmmary. Mmmuuffige Mmmary."~ */
  IF ~~ THEN REPLY #19657 /* ~"Erzähl mir was über die Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19658 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19659 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #19548 /* ~Als der Zombie dich anblickt, scheint in seinen toten Augen ein Funke des Erkennens aufzublitzen. "Aaahhn."~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #19660 /* ~"Sei gegrüßt..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #19661 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #19662 /* ~Laß den Zombie in Ruhe.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",0)
~ THEN BEGIN 25 // from:
  SAY #19549 /* ~Diese verrottende weibliche Leiche scheint dich zuerst überhaupt nicht zu bemerken. Aber als du dich näherst, dreht sie sich um und nickt langsam, als ob sie dich begrüßen wollte.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Zom","AR1500",1)
~ EXTERN ~DMORTE~ 199
END

IF ~~ THEN BEGIN 26 // from: 4.5 5.5
  SAY #19550 /* ~Die Leiche schüttelt den Kopf. "Fraaag Mmmary. Mufffffige Mmmary."~ */
  IF ~~ THEN REPLY #19663 /* ~"Erzähl mir was über die Muffige Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #19664 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #19665 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Zom","AR1500",1)
~ THEN BEGIN 27 // from:
  SAY #50426 /* ~Diese verrottende weibliche Leiche scheint dich zuerst überhaupt nicht zu bemerken. Aber als du dich näherst, dreht sie sich um und nickt langsam, als ob sie dich begrüßen wollte.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #50427 /* ~"Sei gegrüßt..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #50428 /* ~"Sei gegrüßt..."~ */ GOTO 1
END
