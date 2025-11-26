// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIA~

IF ~  Global("BariA","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #12341 /* ~Der Knochengerüst dieses Wesens ist eine Kombination aus Mann und Widder, und sein Kopf ist eine Mischung aus beiden, mit einer flachen, breiten Nase, Ziegenohren und einem Paar gewundener Hörner. Komplizierte Muster sind in sein schmutziges Fell geschoren, und eine massive vierfach geflanschte Stangenwaffe hängt von seinem Gurtwerk. Er scheint dich nicht zu bemerken.~ */
  IF ~~ THEN REPLY #12469 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ GOTO 3
  IF ~~ THEN REPLY #12470 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  Global("BariA","AR0400",1)
~ THEN BEGIN 1 // from:
  SAY #12342 /* ~"Fier treffen uns also fieder, Fanderer. Folltest du irgendfass von mir?"~ */
  IF ~~ THEN REPLY #12471 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12472 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~  Global("BariA","AR0400",3)
~ THEN BEGIN 2 // from:
  SAY #12383 /* ~"Du! Ich sagte dir doch, daß du nie, *niemals* fieder meinen Feg kreuzen solltest! Stähle dich, Zweipeiner..."~ */
  IF ~~ THEN REPLY #12473 /* ~"Aber..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12474 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #12384 /* ~Er dreht sich mit erstaunlicher Schnelligkeit zu dir um; seine Augen sind dunkel und voller Mißtrauen gegen dich. Seine Stimme ist tief und grollend, nicht ganz menschlich, und hat einen schweren Akzent. "Fass fillst du, Zweipeiner..." Seine Hand ist ganz nah an der Stangenwaffe.~ */
  IF ~~ THEN REPLY #12475 /* ~"Nur mit dir reden. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #12476 /* ~"Wenn du Ärger suchst, den kannst du haben..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #12477 /* ~"Nichts, laß gut sein. Leb wohl.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0 8.0
  SAY #12385 /* ~Er scheint sich zu beruhigen, seine Hand fällt von der Waffe weg. Er hält aber noch immer eine gewisse Distanz zu dir...~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0 10.0 12.2 13.2 14.1 15.2 16.2 17.1 18.1 19.5 20.1 21.2 22.0 23.0 24.0 25.2 26.1
  SAY #12386 /* ~"Fass folltest du mich fragen?"~ */
  IF ~~ THEN REPLY #12478 /* ~"Warum warst du so mißtrauisch?"~ */ GOTO 15
  IF ~~ THEN REPLY #12479 /* ~"Erzähl mir was über diese Stadt."~ */ GOTO 12
  IF ~~ THEN REPLY #12480 /* ~"Erzähl mir was über die Slums um uns herum."~ */ GOTO 19
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12481 /* ~"Was kannst du mir über die Dame der Schmerzen erzählen?"~ */ GOTO 24
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12482 /* ~"Kennst du jemanden namens Pharod?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12483 /* ~"Ich vermisse ein Journal. Hast du vielleicht eins gesehen oder weißt du, wo ich eins finden kann?"~ */ GOTO 23
  IF ~~ THEN REPLY #12484 /* ~"Ehrlich gesagt, nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #12387 /* ~Sofort hat er die Stangenwaffe von seinem Gurtwerk gelöst und zum Schlagen gezückt. "Bevor fier die Hörner kreuzen, möchte ich nur noch fissen, farum du mich angreifst, Zweipeiner." Seine eisenbeschlagenen Hufe schlagen helle Funken auf der Straße, während er sein Gewicht nach vorn und hinten verlagert.~ */
  IF ~~ THEN REPLY #12485 /* ~"Ich hatte nicht die Absicht..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12486 /* ~"Ich? *Du* hast *mir* gedroht."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12487 /* ~"Ich? *Du* hast *mir* gedroht."~ */ GOTO 8
  IF ~~ THEN REPLY #12488 /* ~"Du hast mich beleidigt, du idiotischer vierbeiniger Ziegenhintern!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BariA_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #12489 /* ~"Weil mir gerade der Sinn danach steht..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12490 /* ~Dreh dich um und geh weg.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12491 /* ~Lauf weg.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #12388 /* ~Seine Stangenwaffe senkt sich ein wenig; er seufzt verzweifelt. "Also gut, vielleicht sollten fier nicht so erpicht darauf sein, gegenseitig unser Plut zu vergießen. Fass fillst du von mir?"~ */
  IF ~~ THEN REPLY #12492 /* ~"Ich wollte nur ein paar Fragen stellen..."~ */ GOTO 4
  IF ~~ THEN REPLY #12493 /* ~"Ich hab's mir anders überlegt. Ich würde lieber ein wenig von deinem Blut vergießen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY #12390 /* ~"FASS? Nein, Zweipeiner, *du* hast *mich* angegriffen. Ich versage dir keinen Kampf, fenn es das ist, fass du fillst, aber fenn du dich jetzt zurückziehst, geht das nicht auf Kosten deiner Ehre..."~ */
  IF ~~ THEN REPLY #12494 /* ~"Wie du meinst... Ich wollte nur eine Frage stellen..."~ */ GOTO 4
  IF ~~ THEN REPLY #12495 /* ~"Oh, nein... *du* warst das, und du wirst es bereuen!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12496 /* ~"Dann vergiß es. Leb wohl."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #12391 /* ~"FASS?" Er scheint ob deiner Anschuldigung ungläubig. "Nein, Zweipeiner, *du* hast *mich* angegriffen. Ich versage dir keinen Kampf, fenn es das ist, fass du fillst, aber fenn du dich jetzt zurückziehst, geht das nicht auf Kosten deiner Ehre..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 153
END

IF ~  Global("BariA","AR0400",2)
~ THEN BEGIN 10 // from:
  SAY #12392 /* ~"Ah, du schon fieder, Zweipeiner. Fass ist denn jetzt?"~ */
  IF ~~ THEN REPLY #12497 /* ~"Ich hätte da so ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12498 /* ~"Nichts... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #12393 /* ~"Also gut, du perlhaariger, narpiger, Dung-fressender Affe! Solltest du diesen Kampf üperleben, kreuzt du pesser *nie* fieder meinen Feg!" Seine Hufe schlagen auf das Kopfsteinpflaster, während er sich auf seinen Angriff vorbereitet.~ */
  IF ~~ THEN REPLY #12499 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12500 /* ~Lauf weg.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1
  SAY #12394 /* ~Er ist einen Moment lang still, als ob er auf mehr von dir wartet. "Ah... fass ist mit der Stadt?"~ */
  IF ~~ THEN REPLY #12501 /* ~"Was ist dies für ein Ort?"~ */ GOTO 13
  IF ~~ THEN REPLY #12502 /* ~"Wo genau ist das?"~ */ GOTO 14
  IF ~~ THEN REPLY #12503 /* ~"Egal. Laß mich dich noch was anderes fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12504 /* ~"Vergiß, daß ich gefragt habe; ist wirklich nicht so wichtig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.0
  SAY #12395 /* ~"Ja, also, es ist eine Kreuzung, Zweipeiner. Du feißt doch sicher, daß alle Fege nach Sigil führen?"~ */
  IF ~~ THEN REPLY #12505 /* ~"'Fege'...? Du meinst 'Wege', oder?"~ */ GOTO 25
  IF ~~ THEN REPLY #12506 /* ~"Ja, ich verstehe... wo genau liegt Sigil?"~ */ GOTO 14
  IF ~~ THEN REPLY #12507 /* ~"Laß mich dich noch was anderes fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12508 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.1 25.1
  SAY #12452 /* ~"Fo? Hmm..." Er sieht nachdenklich nach oben und streicht sich seinen Ziegenbart. "...das ist in den Außenländern - dem Zentrum der Epenen. Aper da du es von praktisch üperall aus erreichen kannst, ist Sigil an mehr Orten als nur an diesem einen. Verstehste?"~ */
  IF ~~ THEN REPLY #12509 /* ~"Ich denke schon. Aber was *ist* das für ein Ort?"~ */ GOTO 13
  IF ~~ THEN REPLY #12510 /* ~"In Ordnung. Ich will dich noch was anderes fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12511 /* ~"Ja, in Ordnung. Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.0
  SAY #12453 /* ~Er scheint einen Augenblick lang traurig. "Dieser Ort... ein elender, unreiner Ort... ist voller unfreundlicher und manchmal verzweifelter Leute. Nicht gerade der peste Ort für einen Pariaur, der hier zu Pesuch ist, Zweipeiner." Er zuckt die Schultern. "Ich hap allerdings Geschäfte hier, deshalp pin ich hier."~ */
  IF ~~ THEN REPLY #12512 /* ~"Zu Besuch? Du wohnst nicht hier?"~ */ GOTO 16
  IF ~~ THEN REPLY #12513 /* ~"Geschäfte? Weswegen bist du hier?"~ */ GOTO 17
  IF ~~ THEN REPLY #12514 /* ~"Ich verstehe. Ich hätte noch eine andere Frage an dich."
~ */ GOTO 5
  IF ~~ THEN REPLY #12515 /* ~"Dann überlaß ich dich mal wieder zu deinen Geschäften zurückkehren. Leb wohl."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #12454 /* ~Der Bariaur schüttelt lachend den Kopf. "Nein, nein, Zweipeiner... kein Pariaur könnte so leben."~ */
  IF ~~ THEN REPLY #12516 /* ~"Wo kommst du her?"~ */ GOTO 18
  IF ~~ THEN REPLY #12517 /* ~"Was für Geschäfte haben dich hierher gebracht?"~ */ GOTO 17
  IF ~~ THEN REPLY #12518 /* ~"Ich verstehe. Ich habe da noch eine andere Frage an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #12519 /* ~"Dann überlaß ich dich mal wieder zu deinen Geschäften zurückkehren. Leb wohl."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.1 18.0
  SAY #12455 /* ~"Ein anderes Mal, Zweipeiner. Fenn wir uns mal an einem... glücklicheren Ort treffen, erzähl ich dir alles darüper."~ */
  IF ~~ THEN REPLY #12520 /* ~"Du hast gesagt, du bist hier nur zu Besuch - du wohnst also nicht hier?"~ */ GOTO 16
  IF ~~ THEN REPLY #12521 /* ~"Dann laß mich dich noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12522 /* ~"Na dann, bis zum nächsten Mal. Leb wohl."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #12456 /* ~"Von den Epenen von Ysgard, Zweipeiner. Das ist mein Zuhause." Er lächelt in glücklicher Erinnerung, als ob ihn der Gedanke aufwärmte.~ */
  IF ~~ THEN REPLY #12523 /* ~"Was für Geschäfte sind das, die dich hergebracht haben?"~ */ GOTO 17
  IF ~~ THEN REPLY #12524 /* ~"Ich hab' noch eine andere Frage an dich..."~ */ GOTO 5
  IF ~~ THEN REPLY #12525 /* ~"Das ist alles, was ich wissen wollte. Auf bald."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2
  SAY #12457 /* ~Er sieht dich neugierig an. "Fass genau möchtest du über sie fissen?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12526 /* ~"Ich suche nach einem Ort, wo man sich amüsieren kann."~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12527 /* ~"Ich suche nach einem Ort, wo man sich amüsieren kann."~ */ GOTO 20
  IF ~~ THEN REPLY #12528 /* ~"Ich suche Arbeit."~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12529 /* ~"Kennst du jemanden namens Pharod?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12530 /* ~"Ich vermisse ein Journal. Hast du vielleicht eins gesehen oder weißt du, wo ich eins finden kann?"~ */ GOTO 23
  IF ~~ THEN REPLY #12531 /* ~"Nichts, ehrlich gesagt. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12532 /* ~"Nichts, wenn ich's mir recht überlege. Leb wohl."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #12458 /* ~"Ich glaup nicht, daß man sich hier irgendwo amüsieren kann, Zweipeiner. Vielleicht solltest du's andersfo mal versuchen, in einem anderen Pezirk."~ */
  IF ~~ THEN REPLY #12533 /* ~"Und was, wenn ich Arbeit suchen würde?"~ */ GOTO 21
  IF ~~ THEN REPLY #12534 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12559 /* ~"In einem anderen Bezirk, meinst du? Ja, vielleicht. Leb wohl."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 20.0
  SAY #12459 /* ~Er runzelt die Stirn. "Ich pezweifle, daß man hier irgendfo ehrliche Arpeit finden könnte... das einzige, fass es im Stock reichlich gibt, ist Ärger."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12535 /* ~"Wo kann man sich hier ordentlich amüsieren?"~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12536 /* ~"Wo kann man sich hier ordentlich amüsieren?"~ */ GOTO 20
  IF ~~ THEN REPLY #12557 /* ~"Vielleicht kannst du mir dann was anderes sagen..."~ */ GOTO 5
  IF ~~ THEN REPLY #12558 /* ~"Ja, vielleicht hast du recht. Auf bald."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.4 19.3
  SAY #12460 /* ~"Ich kenn hier ein paar Leute, Zweipeiner... dieser 'Pharod' gehört nicht dazu. Ein Freund von dir?"~ */
  IF ~~ THEN REPLY #12537 /* ~"Keine Ahnung, ehrlich. Ich hab' noch eine andere Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #12538 /* ~"Vielleicht. Ich bin mir selbst nicht sicher. Leb wohl."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 19.4
  SAY #12461 /* ~Er schüttelt einfach den Kopf. "Nein, Zweipeiner - nichts dergleichen."~ */
  IF ~~ THEN REPLY #12539 /* ~"Hmm. Ich hab' noch eine andere Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #12540 /* ~"In Ordnung. Also dann, leb wohl."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3
  SAY #12462 /* ~"Die Dame?" Er sieht sich um, als ob er sicherstellen möchte, daß niemand zuhört. "Ich feiß nur, daß sie üper diesen Ort - ganz Sigil - herrscht, und daß die Ansässigen glaupen, daß es Unglück pringt, fenn man von ihr redet."~ */
  IF ~~ THEN REPLY #12541 /* ~"Ich verstehe. Beantworte mir dann eine andere Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #12542 /* ~"Vielen Dank. Das ist alles, was ich im Augenblick wissen wollte. Auf bald."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.0
  SAY #12463 /* ~Er sieht ein wenig ärgerlich aus. "Ja, das hap ich doch gesagt. 'Fege'."~ */
  IF ~~ THEN REPLY #12543 /* ~"Nein... das war wieder falsch. 'Wege' nicht 'Fege'."~ */ GOTO 26
  IF ~~ THEN REPLY #12544 /* ~"Ich verstehe. Wo genau liegt Sigil?"~ */ GOTO 14
  IF ~~ THEN REPLY #12545 /* ~"Ich verstehe. Ich hab' noch eine andere Frage."
~ */ GOTO 5
  IF ~~ THEN REPLY #12546 /* ~"In Ordnung. Mehr wollte ich gar nicht wissen. Leb wohl."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12464 /* ~Seine dunklen Augen werden schmaler, und er sieht langsam mißtrauisch und ärgerlich aus. "Ich hap gesagt, fass ich gesagt hap. Vielleicht versuchst *du* einfach mal, *meine* Sprache zu sprechen, Zweipeiner..."~ */
  IF ~~ THEN REPLY #12547 /* ~"Kann ich, paß auf: Yah, yah, yah! Bork, bork, bork!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_3","GLOBALLaw",-1)
~ GOTO 27
  IF ~~ THEN REPLY #12548 /* ~"Du hast recht - ich muß mich entschuldigen. Ich möchte dich gerne was fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #12549 /* ~"Ganz wie du meinst, Vierbeiner. Auf bald."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12550 /* ~"Du hast recht. Ich muß mich entschuldigen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #12465 /* ~Er schnaubt verächtlich und greift zu seiner Waffe... und beruhigt sich dann wieder. "Lauf mir nie fieder über den... FEG..., Schweinehund, oder ich pring dich um." Er dreht sich von dir weg.~ */
  IF ~~ THEN REPLY #12551 /* ~Laß ihn abstampfen.~ */ DO ~SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12552 /* ~Greif ihn an, während er weggeht.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END
