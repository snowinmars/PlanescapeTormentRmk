// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOOCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOOCH~

IF ~  Global("Mochai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3078 /* ~"Bin ja schon weg! Bin ja schon weg! Kannst dich wieder beruhigen!"~ */
  IF ~~ THEN REPLY #10577 /* ~"Wollte nur auf Nummer Sicher gehen. Los mit Dir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,INT)
~ THEN BEGIN 1 // from:
  SAY #10578 /* ~Du siehst eine Gestalt, die wie eine Staubmenschen-Frau gekleidet ist und in der rechten Hand ein halbvolles Glas hält. Als du ihr näherkommst, ruft sie dir zu: "He, du. Komm mal her..." Irgend etwas stimmt nicht mit ihr... deine Erfahrung mit den Staubmenschen sagt dir, daß diese Gestalt zu lebhaft ist, um wirklich ein Mitglied dieses Bundes sein zu können.~ */
  IF ~~ THEN REPLY #10579 /* ~Nähere dich ihr.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10580 /* ~Laß sie in Ruhe.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10581 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #10582 /* ~Du siehst eine Staubmenschen-Frau. Als du näherkommst, ruft sie dir zu: "He, du. Komm mal her..."~ */
  IF ~~ THEN REPLY #10583 /* ~Nähere dich ihr.
~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10584 /* ~Laß sie in Ruhe.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10585 /* ~Laß sie in Ruhe.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Mooch","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #10586 /* ~"He... was willst du?"~ */
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10587 /* ~"Barkis meint, es wär Zeit, daß du deine Zeche begleichst. Also zahl."~ */ GOTO 9
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10588 /* ~"Du bist nicht wirklich ein Staubmensch, oder?"~ */ GOTO 8
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10589 /* ~"Ich will mehr Geld, sonst halte ich deine Staubmenschen-Farce nicht geheim."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10590 /* ~"Ich will sogar noch mehr Geld, sonst halte ich deine Staubmenschen-Farce nicht geheim."~ */ GOTO 21
  IF ~~ THEN REPLY #10591 /* ~"Ich will Antworten auf ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10592 /* ~"Nichts."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #10593 /* ~"Bist dir wohl zu schade für uns Staubmenschen, was? Wenn du mir was zu trinken spendierst, laß ich dich in Frieden."~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10594 /* ~"Also schön. Hier sind fünf Münzen. Und nun laß mich in Ruhe."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10595 /* ~"Du bist nicht wirklich ein Staubmensch, oder?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10596 /* ~"Barkis meint, es wär Zeit, daß du deine Zeche begleichst. Also zahl."~ */ GOTO 9
  IF ~~ THEN REPLY #10597 /* ~"Das glaub ich nicht. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0
  SAY #10598 /* ~"Hey, Schleifer... willst du mir nicht einen ausgeben?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10599 /* ~"Du bist nicht wirklich ein Staubmensch, oder?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10600 /* ~"Barkis meint, es wär Zeit, daß du deine Zeche begleichst. Also zahl."~ */ GOTO 9
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Also schön. Hier hast du fünf Münzen."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10601 /* ~"Wer bist du?"~ */ GOTO 24
  IF ~~ THEN REPLY #10602 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 25
  IF ~~ THEN REPLY #10603 /* ~"Erzähl mir was über die Gäste hier."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10604 /* ~"Wer ist die brennende Leiche?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
Global("Mochai","GLOBAL",1)
CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10605 /* ~Vergifte ihren Drink mit Balsamierungsöl.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10606 /* ~Vergifte ihren Drink mit Balsamierungsöl.~ */ GOTO 15
  IF ~~ THEN REPLY #10607 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.2 12.0
  SAY #10608 /* ~"Danke, Schleifer... mögest du den Wahren Tod finden." Sie steckt dein Geld ein und blickt nervös zum Eingangsbereich der Bar.~ */
  IF ~~ THEN REPLY #10609 /* ~"Und nun gib mir ein paar Antworten für meinen Klimper."~ */ GOTO 7
  IF ~~ THEN REPLY #10610 /* ~"Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.4 6.0 9.2 10.1 12.1 13.3 13.4 14.3 14.4 15.2 18.0 19.0 20.1 21.0 24.0 25.0 26.0 27.0
  SAY #10611 /* ~"Was, äh, möchtest du wissen?"
~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10612 /* ~"Du bist nicht wirklich ein Staubmensch, oder?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10613 /* ~"Barkis meint, es wär Zeit, daß du deine Zeche begleichst. Also zahl."~ */ GOTO 9
  IF ~~ THEN REPLY #10614 /* ~"Wer bist du?"~ */ GOTO 24
  IF ~~ THEN REPLY #10615 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 25
  IF ~~ THEN REPLY #10616 /* ~"Erzähl mir was über die Gäste hier."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10617 /* ~"Wer ist die brennende Leiche?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10618 /* ~Vergifte ihren Drink mit Balsamierungsöl.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10619 /* ~Vergifte ihren Drink mit Balsamierungsöl.~ */ GOTO 15
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10620 /* ~"Ich will mehr Geld, sonst halte ich deine Staubmenschen-Farce nicht geheim."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10621 /* ~"Ich will sogar noch mehr Geld, sonst halte ich deine Staubmenschen-Farce nicht geheim."~ */ GOTO 21
  IF ~~ THEN REPLY #10622 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 4.1 5.0 7.0
  SAY #10623 /* ~Sie blickt nervös um sich und macht plötzlich einen völlig nüchternen Eindruck. "Wie, äh, wie meinst du das?"~ */
  IF ~~ THEN REPLY #10624 /* ~"Weil du dich nicht wie'n Staubie benimmst, und keine Verträge anbietest. Und dann nimmst du Geld an, anstatt es auszugeben für die Leichenarbeit, die sie in der Leichenhalle tun."~ */ GOTO 10
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10625 /* ~"Weil ich selbst ein Staubmensch bin."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.2 5.1 7.1
  SAY #10626 /* ~Sie beginnt zu zucken, und ihre Nervosität verwandelt sich in pure Angst. "Was hast du vor?"~ */
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10627 /* ~"Ich bitte dich, deine Zeche zu begleichen. Und zwar jetzt."~ */ GOTO 11
  IF ~  GlobalGT("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10628 /* ~"Ich bitte dich, deine Zeche zu begleichen. Und zwar jetzt."~ */ GOTO 22
  IF ~~ THEN REPLY #10629 /* ~"Nichts bisher. Beantworte mir ein paar Fragen."~ */ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #10630 /* ~Sie schreit entsetzt auf und erklärt hastig: "Nein, nein, nein. Natürlich nicht. Ich bin gar kein Staubmensch. Ich habe diese Robe auf der Straße gefunden und konnte mir nichts Vernünftiges zum Anziehen leisten, und ich, äh, habe gehört, daß sich ein Staubmenschen-Dieb rumtreibt, aber den findest du wahrscheinlich irgendwo im südwestlichen Teil des Stocks. Ich habe ihn gesehen, mich aber vor ihm versteckt. Bitte tu mir nicht weh."~ */
  IF ~~ THEN REPLY #10631 /* ~"Gib mir ein bißchen Geld, und ich lasse dich gehen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_One","GLOBALGood",-1)
IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(50)
~ GOTO 19
  IF ~~ THEN REPLY #10632 /* ~"Ich hab's nicht vor. Du solltest aber wissen, daß du nicht sehr überzeugend wirkst. Jetzt beantworte mir ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10633 /* ~"Das werde ich nicht tun. Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #10634 /* ~"Äääh... ich hab' nicht genug. Und wenn du mir nur zehn Prozent leihst? Wenn ich sie ihm gebe, weiß er, daß ich den Rest zahle."~ */
  IF ~~ THEN REPLY #10635 /* ~"Wieviel brauchst du?"~ */ GOTO 13
  IF ~~ THEN REPLY #10636 /* ~"Das glaub ich nicht. Ich bin doch kein Wohlfahrtsverein. Hast du keine andere Idee, wie du bezahlen könntest?"~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Mochai","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #10637 /* ~"Hast du nicht ein paar Münzen übrig, um mir was zu spendieren, Schleifer?"~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Also schön. Hier hast du fünf Münzen."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10639 /* ~"Nein. Beantworte mir statt dessen ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10640 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 22.0
  SAY #10641 /* ~"Hm, ich schätze, ich brauch ungefähr hundert Münzen, damit ich anfangen kann, meine Schulden abzubezahlen."~ */
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10642 /* ~Vergifte ihren Drink mit Balsamierungsöl.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10643 /* ~Vergifte ihren Drink mit Balsamierungsöl.~ */ GOTO 15
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10644 /* ~"Ich werd dir das Geld vorstrecken. Hier. Nimm's und zahl. Jetzt."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Lüge: "Ich würde dir das Geld ja vorstrecken, wenn ich's hätte. Beantworte mir noch ein paar andere Fragen, ja?"~ */ GOTO 7
  IF ~  PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Wahrheit: "Ich würde dir das Geld ja vorstrecken, wenn ich's hätte. Beantworte mir noch ein paar andere Fragen, ja?"~ */ GOTO 7
  IF ~~ THEN REPLY #10652 /* ~"Ich bin gleich mit ein wenig Geld zurück."~ */ EXIT
  IF ~~ THEN REPLY #10645 /* ~"Fällt dir keine andere Lösung ein?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.6 22.1
  SAY #10646 /* ~"Eine andere Möglichkeit zu bezahlen? Ha." Sie lächelt traurig. "Du, äh, könntest mich zum Beispiel umbringen."~ */
  IF ~  PartyHasItem("Embalm")
~ THEN REPLY #10647 /* ~Lenk sie ab: "Könnte ich, aber... was ist denn das dahinten?"~ */ GOTO 15
  IF ~~ THEN REPLY #10648 /* ~"Könnte ich, aber mir wäre eine andere Lösung doch lieber."~ */ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10649 /* ~"Ich werde dir das Geld einfach vorstrecken. Und nun geh und bezahl."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  False()
PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Lüge: "Ich würde dir das Geld ja vorstrecken, wenn ich's hätte. Beantworte mir noch ein paar andere Fragen, ja?"~ */ GOTO 7
  IF ~  False()
PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Wahrheit: "Ich würde dir das Geld ja vorstrecken, wenn ich's hätte. Beantworte mir noch ein paar andere Fragen, ja?"~ */ GOTO 7
  IF ~  False()
~ THEN REPLY #10652 /* ~"Ich bin gleich mit ein wenig Geld zurück."~ */ EXIT
  IF ~~ THEN REPLY #10653 /* ~"Ich komme wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.7 5.8 7.6 7.7 13.0 13.1 14.0
  SAY #10654 /* ~"Wo?" Sie wirft den Kopf herum und starrt auf den Punkt, auf den zu zeigst. Sie hält kurz inne, um ihren vom Alkohol benebelten Blick auf den Punkt zu konzentrieren. "Ich seh' nichts."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Vergifte ihren Drink mit Balsamierungsöl.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Vergifte ihren Drink mit Balsamierungsöl.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #10656 /* ~"Schon gut. Beantworte mir doch ein paar Fragen, ja?"~ */ GOTO 7
  IF ~~ THEN REPLY #10657 /* ~"Dann war es wohl doch nichts. Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10658 /* ~Während sie wegsieht, gießt du ihr rasch das Balsamierungsöl ins halbvolle Glas. Es breitet sofort seinen Geruch aus, den sie aber nicht zu bemerken scheint. Sie dreht sich wieder um und leert das Giftgemisch in einem Zug. "Was war denn? Was hätte ich sehen sollen?" Plötzlich kriegt sie keine Luft mehr.~ */
  IF ~~ THEN REPLY #10659 /* ~"Deinen Tod. Leb wohl, Mochai."~ */ DO ~Kill(Myself)
DestroyPartyItem("Embalm",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #10660 /* ~"He... was tust du da?" Sie beobachtet dich mißtrauisch, während du deine Flasche Balsamierungsöl in Position bringst.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10661 /* ~"Wollte bloß meine Flasche auf den Tisch stellen. Ich hab' mir selbst was mitgebracht."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10662 /* ~"Wollte bloß meine Flasche auf den Tisch stellen. Ich hab' mir selbst was mitgebracht."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10663 /* ~"Wollte bloß meine Flasche auf den Tisch stellen. Ich hab' mir selbst was mitgebracht."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10664 /* ~"Glotz nicht so herüber. Ich gucke nur meine Sachen durch, damit ich weiß, was ich alles mit mir rumtrage."~ */ GOTO 18
  IF ~~ THEN REPLY #10665 /* ~"Nichts, was dich angeht."~ */ GOTO 18
  IF ~~ THEN REPLY #10666 /* ~"Nichts. Ich habe noch woanders eine Verabredung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.1 17.0 17.1 17.2 17.3 17.4
  SAY #10667 /* ~Sie schaut dich noch einen Augenblick an, schwankt hin und her und sagt: "Na gut. Willst du sonst noch was?"~ */
  IF ~~ THEN REPLY #10668 /* ~"Ja. Einige Antworten."~ */ GOTO 7
  IF ~~ THEN REPLY #10669 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.0
  SAY #10670 /* ~"Ich kann dir fünfzig Münzen geben. Aber... sag's nicht weiter."~ */
  IF ~~ THEN REPLY #10671 /* ~"Wir werden sehen. Und jetzt beantworte mir noch ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10672 /* ~"Fünfzig? Ich will mehr."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(25)
~ GOTO 20
  IF ~~ THEN REPLY #10673 /* ~"Wir werden sehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.2 7.8 19.1
  SAY #10674 /* ~"Was, du willst mehr? Ich, äh, kann mir nicht soviel leisten wie letztes Mal. Aber, äh, fünfundzwanzig Münzen sind vielleicht drin."
~ */
  IF ~~ THEN REPLY #10675 /* ~"Ich will mehr."~ */ GOTO 21
  IF ~~ THEN REPLY #10676 /* ~"Das sollte reichen... erstmal. Beantworte mir in der Zwischenzeit noch ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10677 /* ~"Das müßte reichen... erstmal. Ich komme wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.3 7.9 20.0
  SAY #10678 /* ~"Hm, das ist dumm. Mehr hab' ich wirklich nicht übrig. Ich, äh, hab' einfach kein Geld."~ */
  IF ~~ THEN REPLY #10679 /* ~"Zu schade. Beantworte mir dann ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10680 /* ~"Zu schade. Mal sehen, was dabei herauskommt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY #10681 /* ~Sie schaut dich vorwurfsvoll an. "Ich kann nicht. Irgendein, ähm, Dussel, hat mir mein ganzes Geld abgenommen. Ich müßte mir was leihen, um meine Schulden bei ihm abbezahlen zu können."~ */
  IF ~~ THEN REPLY #10682 /* ~"Wieviel brauchst du?"~ */ GOTO 13
  IF ~~ THEN REPLY #10683 /* ~"Das glaub ich nicht. Ich bin doch kein Wohlfahrtsverein. Hast du keine andere Idee, wie du bezahlen könntest?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 13.2 14.2
  SAY #10684 /* ~Sie steckt deinen Klimper ein, blickt kurz auf die Tür, als spekuliere sie darauf, abzuhauen. Als ihr klar wird, daß sie keine Chance hat, seufzt sie und steuert verdrießlich auf die Bar zu. "Dann muß ich mich wohl bedanken."~ */
  IF ~~ THEN REPLY #10685 /* ~"Schon gut. Und nicht daß du auch nur einen Gedanken daran verschwendest, in Richtung Tür zu entschwinden, bevor zu gezahlt hast."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3 7.2
  SAY #10686 /* ~"Ich? Ich bin Mochai. Ich, äh, trinke hier nur gerne einen und..." Sie verliert für einen Moment den roten Faden. "Ich bin einfach eine Person, verstehst du?"~ */
  IF ~~ THEN REPLY #10687 /* ~"Ich verstehe. Dann beantworte mir doch noch was anderes."~ */ GOTO 7
  IF ~~ THEN REPLY #10688 /* ~"Ich verstehe. Na dann leb wohl, Mochai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 7.3
  SAY #10689 /* ~"Das ist die Schwelende Leiche. Kannst du nicht lesen? Oder bist du noch besoffener als ich?"~ */
  IF ~~ THEN REPLY #10690 /* ~"Vergiß es. Erzähl' mir etwas anderes."~ */ GOTO 7
  IF ~~ THEN REPLY #10691 /* ~"Vergiß es. Gehab dich wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.5 7.4
  SAY #10692 /* ~"Was soll ich sagen. Das sind einfach irgendwelche Leute. Ich mach mir nicht viel aus andren Leuten, außer wenn sie mir einen ausgeben..." Sie sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #10693 /* ~"Ich verstehe. Gib mir noch ein paar andere Antworten."~ */ GOTO 7
  IF ~~ THEN REPLY #10694 /* ~"Ich versteh wohl, warum. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.6 7.5
  SAY #10695 /* ~"Das, äh, ist keine Leiche, sondern irgendein verrückter Zauberer. Frag die anderen. Die wissen Bescheid."~ */
  IF ~~ THEN REPLY #10696 /* ~"Also schön. Dann beantworte mir noch ein paar andere Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10697 /* ~"Leb wohl."~ */ EXIT
END
