// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17604 /* ~Dieser ältere Händler sieht weltgewandt aus. Seine tiefe Stimme ist sanft, aber sicher. "Ach, hallo. Seid Ihr bereit, einige der besten Leckerbissen zu probieren, die die Ebenen zu bieten haben, guter Mann?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22180 /* ~"Mebbeth, die Hebamme des Platzes, braucht ein paar Kräuter aus diesen Samen hier. Kannst du mir helfen?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17627 /* ~"Was hast du anzubieten?"~ */ GOTO 3
  IF ~~ THEN REPLY #17628 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17629 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17605 /* ~"So sieht man sich wieder. Was darf's denn heute sein? Meerpflaumen? Arboreanische Feuersamen?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22188 /* ~"Mebbeth, die Hebamme des Platzes, braucht ein paar Kräuter aus diesen Samen hier. Kannst du mir helfen?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17630 /* ~"Was hast du anzubieten?"~ */ GOTO 3
  IF ~~ THEN REPLY #17631 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17632 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.2 5.1 6.8 6.10 7.2 8.2 9.2 10.2 11.2 12.2 13.2 15.1 16.1 17.1 18.1 19.1 20.1 21.1
  SAY #17606 /* ~Er schüttelt den Kopf. "Dann sucht Eure Antworten besser woanders, mein Herr. Ich handle nur mit exotischen Lebensmitteln, Gewürzen und Kräutern. Alles andere ist mir einerlei."~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22194 /* ~"Mebbeth, die Hebamme des Platzes, braucht ein paar Kräuter aus diesen Samen hier. Kannst du mir helfen?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17633 /* ~"Was hast du denn dann?"~ */ GOTO 3
  IF ~~ THEN REPLY #17634 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1 24.0
  SAY #17607 /* ~"Eine große Auswahl an Gaumenfreuden, guter Mann. Momentan habe ich arboreanische Feuersamen, Gar-Bar-Wurzeln, elysische Birnen, rote Lotusblüten, bytopianisches Hirtenbrot, Wechselgewürz aus dem Chaos des Limbus und Meerpflaumen da. Für fünf Kupfermünzen könnt Ihr alles durchprobieren."~ */
  IF ~~ THEN REPLY #17635 /* ~Frage, wie etwas schmeckt.~ */ GOTO 4
  IF ~~ THEN REPLY #17636 /* ~Kaufe etwas.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17608 /* ~"Hmmm?"~ */
  IF ~~ THEN REPLY #17637 /* ~"Wie schmecken die Feuersamen?"~ */ GOTO 5
  IF ~~ THEN REPLY #17638 /* ~"Wie schmeckt die Gar-Bar-Wurzel?"~ */ GOTO 5
  IF ~~ THEN REPLY #17639 /* ~"Wie schmecken die Birnen?"~ */ GOTO 5
  IF ~~ THEN REPLY #17640 /* ~"Wie schmecken die Blütenblätter?"~ */ GOTO 5
  IF ~~ THEN REPLY #17641 /* ~"Wie schmeckt das Brot?"~ */ GOTO 5
  IF ~~ THEN REPLY #17642 /* ~"Wie schmeckt das Wechselgewürz?"~ */ GOTO 5
  IF ~~ THEN REPLY #17643 /* ~"Wie schmecken die Meerpflaumen?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5 4.6
  SAY #17609 /* ~"Probiert am besten selber, ob es Euch schmeckt, guter Mann."~ */
  IF ~~ THEN REPLY #17644 /* ~Kaufe etwas.~ */ GOTO 6
  IF ~~ THEN REPLY #17645 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17646 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0 7.1 8.1 9.1 10.1 11.1 12.1 13.1 15.0 16.0 17.0 18.0 19.0 20.0 21.0
  SAY #17610 /* ~"Hmmm?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17647 /* ~"Ich probiere mal die Feuersamen."~ */ GOTO 7
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17649 /* ~"Ich werde eine Gar-Bar-Wurzel probieren."~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17650 /* ~"Ich werde eine Birne probieren."~ */ GOTO 9
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17651 /* ~"Ich werde ein paar Blütenblätter probieren."~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17652 /* ~"Ich werde das Brot probieren."~ */ GOTO 11
  IF ~  PartyGoldGT(4)
!NearbyDialog("DDakkon")
~ THEN REPLY #17653 /* ~"Ich werde das Wechselgewürz probieren."~ */ GOTO 12
  IF ~  PartyGoldGT(4)
NearbyDialog("DDakkon")
~ THEN REPLY #17654 /* ~"Ich werde das Wechselgewürz probieren."~ */ GOTO 14
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17655 /* ~"Ich werde eine Meerpflaume probieren."~ */ GOTO 13
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17656 /* ~"Ich möchte nichts. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17657 /* ~"Wenn ich's mir recht überlege, möchte ich doch nichts. Leb wohl."~ */ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17658 /* ~"Ich habe nicht genug Münzen, um was zu kaufen. Aber ich hätte da ein paar Fragen."~ */ GOTO 2
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17659 /* ~"Ich habe nicht genug Münzen, um was zu kaufen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #17611 /* ~"Nicht runterschlucken, sondern einfach ausspucken, wenn das Kribbeln nachläßt." Lächelnd reicht er dir eine Handvoll kleiner, roter Samen.~ */
  IF ~~ THEN REPLY #17661 /* ~Steck sie in den Mund.~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~~ THEN REPLY #17664 /* ~"Ich glaube nicht, daß ich das mögen würde. Laß mich was anderes probieren."
~ */ GOTO 6
  IF ~~ THEN REPLY #17666 /* ~"Ich hab's mir anders überlegt. Aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17667 /* ~"Ach ne, will ich doch nicht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #17612 /* ~Er reicht dir einen kleinen braunen Würfel, der wie ein gummiartiges Gemüse aussieht. "Sehr angenehm zu kauen... Aber nicht runterschlucken, sondern einfach ausspucken, wenn der Geschmack nachläßt."~ */
  IF ~~ THEN REPLY #17668 /* ~Steck ihn in den Mund.~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~~ THEN REPLY #17670 /* ~"Ich glaube nicht, daß ich das mögen würde. Laß mich was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17672 /* ~"Ich hab''s mir anders überlegt. Aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17674 /* ~"Ach ne, will ich doch nicht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #17613 /* ~Er reicht dir die größte, saftigste Birne, die du je gesehen hast. "Die mag ich besonders gern," sagt der alte Händler lachend. "So süß! Wie früher in meiner Jugend."~ */
  IF ~~ THEN REPLY #17675 /* ~Iß die Birne.~ */ DO ~TakePartyGold(5)
~ GOTO 17
  IF ~~ THEN REPLY #17681 /* ~"Ich glaube nicht, daß ich das mögen würde. Laß mich was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17682 /* ~"Ich hab's mir anders überlegt. Aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17683 /* ~"Ach ne, will ich doch nicht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #17614 /* ~Der alte Mann reicht dir ein paar kleine, rotbraune Flocken, die sich bei genauerem Hinsehen als getrocknete Blütenblätter erweisen. "Von denen kann einem schwindlig werden, guter Mann. Paßt also auf, wenn Ihr sie gegessen habt."~ */
  IF ~~ THEN REPLY #17684 /* ~Steck sie in den Mund.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~~ THEN REPLY #17686 /* ~"Ich glaube nicht, daß ich das mögen würde. Laß mich was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17687 /* ~"Ich hab's mir anders überlegt. Aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17688 /* ~"Ach ne, will ich doch nicht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #17615 /* ~Er reicht dir zwei dicke Scheiben eines Gewürzbrotes mit Nüssen. Es riecht lecker nach Mohrrüben und Mandeln.~ */
  IF ~~ THEN REPLY #17689 /* ~Iß das Brot.~ */ DO ~TakePartyGold(5)
~ GOTO 19
  IF ~~ THEN REPLY #17690 /* ~"Ich glaube nicht, daß ich das mögen würde. Laß mich was anderes probieren."
~ */ GOTO 6
  IF ~~ THEN REPLY #17692 /* ~"Ich hab's mir anders überlegt. Aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17693 /* ~"Ach ne, will ich doch nicht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.5
  SAY #17616 /* ~Er hält dir ein winziges Papierpäckchen hin. "Befeuchtet Eure Fingerspitze und taucht sie in das Gewürz. Und dann leckt einfach Eure Finger ab. Das Gewürz schmeckt bei jedem Probieren anders."~ */
  IF ~~ THEN REPLY #17694 /* ~Probiere ein paar.~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~~ THEN REPLY #17696 /* ~"Ich glaube nicht, daß ich das mögen würde. Laß mich was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17697 /* ~"Ich hab's mir anders überlegt. Aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17698 /* ~"Ach ne, will ich doch nicht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.7
  SAY #17617 /* ~Er reicht dir eine kleine Pflaume mit einer seltsamen, blaugrünen Farbe. "Sie sind kernlos. Ihr könnt sie in einem Stück essen."~ */
  IF ~~ THEN REPLY #17699 /* ~Iß die Meerpflaume.~ */ DO ~TakePartyGold(5)
~ GOTO 21
  IF ~~ THEN REPLY #17701 /* ~"Ich glaube nicht, daß ich das mögen würde. Laß mich was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17702 /* ~"Ich hab's mir anders überlegt. Aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17703 /* ~"Ach ne, will ich doch nicht haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.6
  SAY #17618 /* ~Er hält dir ein winziges Papierpäckchen hin. "Befeuchtet Eure Fingerspitze und taucht sie in das Gewürz. Und dann leckt einfach Eure Finger ab. Das Gewürz schmeckt bei jedem Probieren anders."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 76
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #17619 /* ~Die süßen, leicht nach Zimt schmeckenden Samen werden ganz warm und kribbelig im Mund... Du bemerkst erst einen Augenblick später, daß sie in Flammen aufgegangen sind. Doch das Gefühl läßt schon bald nach, und du spuckst die Samen in den Rinnstein.~ */
  IF ~~ THEN REPLY #17457 /* ~"Laß mich mal was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17704 /* ~"Das ist erstmal alles. Ich hätte da ein paar Fragen."
~ */ GOTO 2
  IF ~~ THEN REPLY #17706 /* ~"Ich brauche sonst nichts weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #17620 /* ~Die süße, nach Sirup schmeckende Wurzel ist am Anfang so hart, daß du sie kaum kauen kannst. Mit der Zeit wird sie weich und gummiartig, und du schmatzt fröhlich vor dich hin. Doch mit der Zeit läßt der Geschmack nach, und du spuckst die klebrige, braune Masse in den Rinnstein.~ */
  IF ~~ THEN REPLY #17707 /* ~"Laß mich mal was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17708 /* ~"Das ist erstmal alles. Ich hätte da ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #17709 /* ~"Ich brauche sonst nichts weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.0
  SAY #17621 /* ~Der Geschmack dieser Birne hat nichts Übernatürliches, aber es ist wahrscheinlich die beste, die du je gegessen hast.~ */
  IF ~~ THEN REPLY #17710 /* ~"Laß mich mal was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17711 /* ~"Das ist erstmal alles. Ich hätte da ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #17712 /* ~"Ich brauche sonst nichts weiter. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0
  SAY #17622 /* ~Die Blütenblätter zergehen dir rasch auf der Zunge und hinterlassen einen seltsamen, nicht unangenehmen Nachgeschmack, den du aber nicht einordnen kannst. Trotz der Warnung des alten Händlers wird dir kein bißchen schwindlig. Enttäuscht nimmt er zur Kenntnis, daß sie bei dir keine Wirkung zeigen.~ */
  IF ~~ THEN REPLY #17713 /* ~"Laß mich mal was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17714 /* ~"Das ist erstmal alles. Ich hätte da ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #17715 /* ~"Ich brauche sonst nichts weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.0
  SAY #17623 /* ~Wie du bereits vermutet hattest, schmeckt das Brot nach Mohrrüben und Mandeln. Es ist leicht süß und so leicht, daß du mehr davon essen möchtest.~ */
  IF ~~ THEN REPLY #17716 /* ~"Laß mich mal was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17717 /* ~"Das ist erstmal alles. Ich hätte da ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #17718 /* ~"Ich brauche sonst nichts weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.0
  SAY #17624 /* ~Als du deinen Finger neun oder zehn Mal abgeleckt hast, ist das Päckchen leer. Wie versprochen ist der Geschmack von Mal zu Mal unterschiedlich.~ */
  IF ~~ THEN REPLY #17719 /* ~"Laß mich mal was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17720 /* ~"Das ist erstmal alles. Ich hätte da ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #17721 /* ~"Ich brauche sonst nichts weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0
  SAY #17625 /* ~Die Pflaumenschale schmeckt etwas bitter und so sauer, daß es dir die Löcher in den Strümpfen zuzieht; das Fruchtfleisch jedoch ist ungewöhnlich süß. Schale und Fleisch zusammen ergänzen sich gut.~ */
  IF ~~ THEN REPLY #17722 /* ~"Laß mich mal was anderes probieren."~ */ GOTO 6
  IF ~~ THEN REPLY #17723 /* ~"Das ist erstmal alles. Ich hätte da ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #17724 /* ~"Ich brauche sonst nichts weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.0 1.0 2.0
  SAY #22184 /* ~Der Mann nimmt den Samen und betrachtet ihn kritisch... Als er ihn zwischen Daumen und Zeigefinger drückt, zuckt er zusammen, und ein kleiner Blutstropfen erscheint auf seinem Daumen. "Ah! Dieser Samen ist bissig..."~ */
  IF ~~ THEN REPLY #22199 /* ~"Das hab' ich gemerkt. Hast du die Kräuter, die sie meint?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #22186 /* ~Er scheint seine Augen nicht von dem Samen abwenden zu können. "Junge, ich weiß nicht, ob es * überhaupt jemanden* gibt, der das hat, wonach Eure Bekannte sucht... Ehrlich gesagt, habe ich so einen Samen noch nie vorher gesehen. Ihr braucht jemanden, der Samen wie diesen hier anpflanzt, denn ich habe keine."~ */
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22204 /* ~"Also gut... wo würde ich so jemanden finden?"~ */ JOURNAL #21906 /* ~Der Kaufmann auf dem Markt sagt, ich müsse einen Gärtner finden, der mir hilft, den Samen anzupflanzen - es muß doch *irgendwo* im Stock einen geben. Ich habe Bäume in manchen Straßen gesehen, also muß sich auch jemand um sie kümmern.~ */ GOTO 24
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22206 /* ~"Also gut... wo würde ich so jemanden finden?"~ */ JOURNAL #21907 /* ~Der Kaufmann auf dem Markt sagt, ich müsse einen Gärtner finden, der mir hilft, den Samen anzupflanzen - vielleicht kann ich ja Der-um-Bäume-trauert um Hilfe bitten.~ */ GOTO 24
  IF ~  Dead("MFTree")
~ THEN REPLY #22208 /* ~"Also gut... wo würde ich so jemanden finden?"~ */ JOURNAL #21908 /* ~Der Kaufmann auf dem Markt sagt, ich müsse einen Gärtner finden, der mir hilft, den Samen anzupflanzen. Unglücklicherweise denke ich, daß Der-um-Bäume-trauert, den ich ja getötet habe, der Einzige gewesen wäre, der mir hätte helfen können. Ich geh wohl besser zurück zu Mebbeth und rette die Situation.~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 23.2
  SAY #22187 /* ~"Ich habe nicht die geringste Ahnung, was das ist, mein Freund." Er gibt dir den Samen zurück. "Es wird schwer sein, im Stock einen Gärtner zu finden..."~ */
  IF ~  !Dead("MFTree")
~ THEN REPLY #22213 /* ~"Verstehe. Kann ich mal sehen, was du sonst noch so hast?"~ */ GOTO 3
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22220 /* ~"Das muß ich wohl. Vielen Dank für deine Hilfe. Leb wohl."~ */ EXIT
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22222 /* ~"Hmmm. Vielleicht kann ja 'Der um die Bäume trauert' mir helfen. Leb wohl."~ */ EXIT
  IF ~  Dead("MFTree")
~ THEN REPLY #22225 /* ~"Der einzige, den ich gesehen habe, ist... tot. Na, trotzdem vielen Dank. Leb wohl."~ */ EXIT
END
