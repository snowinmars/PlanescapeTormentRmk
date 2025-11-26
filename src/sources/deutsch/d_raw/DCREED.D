// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCREED.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCREED~

IF ~  Global("Creeden","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #10080 /* ~Dieser schäbig wirkende Mann merkt gleich, daß du ihn anschaust. Sekunden später ist er bei dir und bietet seine 'Ware' feil. Er trägt einen langen hölzernen Stock, an dem Dutzende gehäutete und gekochte Ratten hängen. Während er spricht, zeigt er mit seiner breiten, dreckverkrusteten Hand auf sie und entblößt dabei grinsend seine gelben, unregelmäßigen Zähne. "Na, wie steht's, Schleifer. Welche süße, kleine Ratze darf's denn sein?"
~ */
  IF ~~ THEN REPLY #12628 /* ~Sieh dir die 'Ratzen' an.~ */ GOTO 2
  IF ~~ THEN REPLY #12629 /* ~"Lieber würde ich Innereien essen."~ */ GOTO 4
  IF ~~ THEN REPLY #12630 /* ~"Was für... kleine 'Ratzen' hast du denn so im Angebot?"~ */ GOTO 5
  IF ~~ THEN REPLY #12631 /* ~"Heute mal keine... Ich hätte allerdings eine Frage an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #12632 /* ~"Keine davon interessiert mich. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",1)
~ THEN BEGIN 1 // from:
  SAY #12560 /* ~"He, da, Schleifer; schön, dich wiederzusehen. Hunger auf 'n paar von Creedens leckeren kleinen Ratzen, hm?"~ */
  IF ~~ THEN REPLY #12633 /* ~"Warum nicht... was hast du denn so für welche?"~ */ GOTO 5
  IF ~~ THEN REPLY #12634 /* ~"Eher würd ich mein eigenes Fleisch essen als solchen Dreck!"~ */ GOTO 4
  IF ~~ THEN REPLY #12635 /* ~"Nein, heute nicht. Ich hätte allerdings ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12636 /* ~"Nein danke. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #12561 /* ~Jede Ratte ist gehäutet und ausgenommen, und ihre Füße und Schwänze sind entfernt worden; sie hängen an Haken, die durch ihre Hälse gestochen sind. Während du die verschiedenen Zubereitungsarten betrachtest, fällt dir auf, daß ihre Köpfe etwas deformiert sind - aus jedem Schädel steht ein knolliger Knochenknoten hervor, der voller Kringel ist, so daß er wie Hirnmasse aussieht.~ */
  IF ~~ THEN REPLY #12637 /* ~"Diese Ratten sehen aber seltsam aus."~ */ GOTO 3
  IF ~~ THEN REPLY #12638 /* ~"Ich nehm eine."~ */ GOTO 5
  IF ~~ THEN REPLY #12639 /* ~"Ich esse nichts von diesem Abfall."~ */ GOTO 4
  IF ~~ THEN REPLY #12640 /* ~"Für mich nichts, danke. Ich hätte allerdings eine Frage an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #12641 /* ~"Keine Ratte für mich. Danke. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9344 /* ~"Ah, da hast du einen scharfen Blick, Schleifer! Ich verkaufe nur Klugschädlinge... ich bin sicher, die schmecken viel aromatischer als die normalen Ratten. Eigentlich wirklich gut!" Er bietet sie dir noch einmal an, indem er dir mit der Stange einladend vor dem Gesicht herumwedelt... die Ratten schwingen an ihren Haken hin und her wie winzige Rinderfilets.~ */
  IF ~~ THEN REPLY #12642 /* ~"Klugschädlinge?"~ */ GOTO 22
  IF ~~ THEN REPLY #12643 /* ~"Ich probier mal eine."~ */ GOTO 5
  IF ~~ THEN REPLY #12644 /* ~"Widerlich. Eher würd ich Innereien essen als so einen Dreck."~ */ GOTO 4
  IF ~~ THEN REPLY #12645 /* ~"Interessant. Ich hätte eine Frage an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #12646 /* ~"Das ist alles, was ich hören wollte. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.2 3.2 5.4 6.1 7.1 8.1 9.1 59.1 60.1
  SAY #12562 /* ~Den Mann scheint dies überhaupt nicht zu berühren; statt dessen blinzelt er dir zu und lächelt vergnügt. "Laß mich dir sagen, Schleifer - du hast keine Ahnung, was du verpaßt! Ich bin hier, falls du es dir anders überlegst..." Der Mann bietet weiterhin vorbeigehenden Leuten seine Ratten feil.~ */
  IF ~~ THEN DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 2.1 3.1 10.1 11.1 12.1 13.1 15.11 59.0 60.0 61.0
  SAY #12563 /* ~"Gut, Schleifer, gut! Welche Sorte hättest du denn gern?" Er zeigt mit einem dreckigen Fingernagel auf die einzelnen Ratten. "Ich hätt' gebackene, scharfe, gekochte und gegrillte! Alle frisch, alle lecker... und nur drei Kupferstücke für zwei Stück!"~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12647 /* ~"Gebacken."~ */ DO ~TakePartyGold(3)
~ GOTO 6
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12648 /* ~"Scharf."~ */ DO ~TakePartyGold(3)
~ GOTO 7
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12649 /* ~"Gekocht."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12650 /* ~"Gegrillt."~ */ DO ~TakePartyGold(3)
~ GOTO 9
  IF ~~ THEN REPLY #12651 /* ~"Lecker? Wohl kaum. Wer würde denn solchen Abfall essen?"~ */ GOTO 4
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12652 /* ~"Ich hab' nicht genug Geld bei mir... aber ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #12653 /* ~"Ich hab' nicht genug Geld bei mir... Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12654 /* ~"Wenn ich's mir recht überlege, das ist doch nichts für mich. Ich hätte jedoch eine Frage..."~ */ GOTO 15
  IF ~  PartyGoldGT(2)
~ THEN REPLY #12655 /* ~"Wenn ich's mir recht überlege, habe ich überhaupt keinen Hunger. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12564 /* ~Du gibst ihm die Kupfermünzen, und in einer fließenden Bewegung sticht er einen Holzspieß durch ein Paar gebackener Ratten, nimmt sie vom Haken und legt sie in deine Hand. Er zwinkert dir zu: "Einen guten, Schleifer!"~ */
  IF ~~ THEN REPLY #12656 /* ~Iß die 'Ratze'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #12657 /* ~Wirf die Ratte angewidert auf den Boden.~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12565 /* ~Du gibst ihm die Kupfermünzen, und in einer fließenden Bewegung sticht er einen Holzspieß durch ein Paar scharfer Ratten, nimmt sie vom Haken und legt sie in deine Hand. Er zwinkert dir zu: "Einen guten, Schleifer!"~ */
  IF ~~ THEN REPLY #12658 /* ~Iß die 'Ratze'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #12659 /* ~Wirf die Ratte angewidert auf den Boden.~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #12566 /* ~Du gibst ihm die Kupfermünzen, und in einer fließenden Bewegung sticht er einen Holzspieß durch ein Paar gekochter Ratten, nimmt sie vom Haken und legt sie in deine Hand. Er zwinkert dir zu: "Einen guten, Schleifer!"~ */
  IF ~~ THEN REPLY #12660 /* ~Iß die 'Ratze'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #12661 /* ~Wirf die Ratte angewidert auf den Boden.~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #12567 /* ~Du gibst ihm die Kupfermünzen, und in einer fließenden Bewegung sticht er einen Holzspieß durch ein Paar gegrillter Ratten, nimmt sie vom Haken und legt sie in deine Hand. Er zwinkert dir zu: "Einen guten, Schleifer!"~ */
  IF ~~ THEN REPLY #12662 /* ~Iß die 'Ratze'.~ */ DO ~IncrementGlobal("Rat_Eater","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #12663 /* ~Wirf die Ratte angewidert auf den Boden.~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #12568 /* ~Das Rattenfleisch ist zart und saftig; es löst sich leicht vom Knochen und zergeht dir auf der Zunge. Es ist ein wenig fettig und ziemlich schwer und schmeckt nach... irgend einer anderen... Sorte Fleisch, von der du sicher bist, sie schon einmal gegessen zu haben. Der Mann sieht dich erwartungsvoll an. "Hat's geschmeckt? Magst du noch eine?"~ */
  IF ~~ THEN REPLY #12664 /* ~"War nicht schlecht, aber ich hätte noch eine Frage an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #12665 /* ~"Okay, ich nehm noch eine."~ */ GOTO 5
  IF ~~ THEN REPLY #12666 /* ~"Nein, die hier ist verdorben."~ */ GOTO 14
  IF ~~ THEN REPLY #12667 /* ~"Für mich nicht mehr. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #12569 /* ~Das Rattenfleisch ist aromatisch und ziemlich würzig; es wurde vor dem Garen offensichtlich in einer Art Kräutermischung mariniert. Es ist ein wenig fettig und ziemlich schwer und schmeckt nach... irgend einer anderen... Sorte Fleisch, von der du sicher bist, sie schon einmal gegessen zu haben. Der Mann sieht dich erwartungsvoll an. "Hat's geschmeckt? Magst du noch eine?"~ */
  IF ~~ THEN REPLY #12668 /* ~"War nicht schlecht, aber ich hätte noch eine Frage an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #12669 /* ~"Okay, ich nehm noch eine."~ */ GOTO 5
  IF ~~ THEN REPLY #12670 /* ~"Nein, die hier ist verdorben."~ */ GOTO 14
  IF ~~ THEN REPLY #12671 /* ~"Für mich nicht mehr. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #12570 /* ~Das Rattenfleisch schmeckt, auf diese Art zubereitet, ziemlich nichtssagend und gummiartig. Es schmeckt ein wenig wie irgendein... anderes... Fleisch, von dem du sicher bist, daß du es schon einmal gegessen hast. Du bist sicher, daß es auf eine andere Art zubereitet besser schmecken würde, und du kannst dir nicht vorstellen, warum auch nur *irgend jemand* das Fleisch zum Essen kochen würde. Der Mann sieht dich erwartungsvoll an. "Hat's geschmeckt? Magst du noch eine?"~ */
  IF ~~ THEN REPLY #12672 /* ~"War nicht schlecht, aber ich hätte noch eine Frage an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #12673 /* ~"Okay, ich nehm noch eine."~ */ GOTO 5
  IF ~~ THEN REPLY #12674 /* ~"Nein, die hier ist verdorben."~ */ GOTO 14
  IF ~~ THEN REPLY #12675 /* ~"Für mich nicht mehr. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #12571 /* ~Das Rattenfleisch ist außen angebrannt und knusprig, innen aber zart und saftig. Es ist ein wenig fettig und ziemlich schwer und schmeckt nach... irgend einer anderen... Sorte Fleisch, von der du sicher bist, sie schon einmal gegessen zu haben. Der Mann sieht dich erwartungsvoll an. "Hat's geschmeckt? Magst du noch eine?"~ */
  IF ~~ THEN REPLY #12676 /* ~"War nicht schlecht, aber ich hätte noch eine Frage an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #12677 /* ~"Okay, ich nehm noch eine."~ */ GOTO 5
  IF ~~ THEN REPLY #12678 /* ~"Nein, die hier ist verdorben."~ */ GOTO 14
  IF ~~ THEN REPLY #12679 /* ~"Für mich nicht mehr. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 12.2 13.2 61.1
  SAY #12572 /* ~Er sieht wirklich überrascht aus. "Das tut mir leid, Schleifer. Schönen Tag noch." Er scheint gehen zu wollen.
~ */
  IF ~~ THEN REPLY #12680 /* ~"Warte - ich hätte eine Frage an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #12681 /* ~Laß ihn gehen.~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.3 1.2 2.3 3.3 5.5 5.7 10.0 11.0 12.0 13.0 14.0 16.1 17.1 18.2 19.2 20.0 21.1 22.1 23.3 24.1 25.2 26.2 27.2 28.2 29.2 30.2 33.1 34.1 35.2 36.2 37.2 38.1 39.5 40.2 41.3 42.1 43.2 44.1 45.0 46.1 47.3 48.3 49.0 50.0 51.2 52.2 53.1 54.0 55.1 56.1 57.1 58.1 60.2 61.2 62.1 63.0
  SAY #12573 /* ~Er wirft sich die Rattenstange lässig über die Schulter. "Was ist das für ne Frage, Schleifer?"~ */
  IF ~  Global("RP_Portal","GLOBAL",2)
~ THEN REPLY #48399 /* ~"Ich soll mich an einen Mann namens Creeden vor dem Büro zur Schädlings- und Seuchenbekämpfung wenden, um etwas über den mit Müll gefüllten Torbogen auf dem Lumpensammler-Platz zu erfahren. Kannst du mir weiterhelfen?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",3)
~ JOURNAL #47844 /* ~Ein Mann namens Creeden hat mir erzählt, ich solle eine Frau namens Nall fragen, wenn ich wissen wolle, wie man sich unter den müllbeladenen Torbögen des Lumpensammler-Platzes zurechtfindet. Er hat gesagt, daß Nall nordöstlich des Büros zur Schädlings- und Seuchenbekämpfung zu finden sein sollte, wo sie in einem Stapel Holz herumwühle.~ */ GOTO 63
  IF ~~ THEN REPLY #12682 /* ~"Wer bist du?"~ */ GOTO 21
  IF ~~ THEN REPLY #12683 /* ~"Ich wollte mit dir über Ratten sprechen..."~ */ GOTO 23
  IF ~~ THEN REPLY #12684 /* ~"Was ist das für ein Gebäude hinter dir?"~ */ GOTO 17
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12685 /* ~"Kannst du mir was über diese... Stadt erzählen?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #12686 /* ~"Kannst du mir was über Sigil erzählen?"~ */ GOTO 28
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #12687 /* ~"Kannst du mir was über diese Slums erzählen?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 35
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #12688 /* ~"Kannst du mir was über den Stock erzählen?"~ */ GOTO 36
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12689 /* ~"Kannst du mir was über die Dame der Schmerzen erzählen?"~ */ GOTO 50
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12690 /* ~"Kennst du jemanden mit dem Namen Pharod?"~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12691 /* ~"Ich vermisse ein Journal. Hast du zufällig eins gesehen?"~ */ GOTO 54
  IF ~~ THEN REPLY #12692 /* ~"Ich hätte gern eine von den Ratten, die du da hast."~ */ GOTO 5
  IF ~~ THEN REPLY #12693 /* ~"Nichts. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 16 // from: 23.0
  SAY #12574 /* ~"Was? Diese hier?" Er schüttelt die Stange, wodurch die gehäuteten Ratten in einem makabren kleinen Tanz hüpfen. "Die fang ich selbst, jawohl... in Kellern und Gassen hier im Stock."~ */
  IF ~~ THEN REPLY #12694 /* ~"Ich verstehe. Erzähl mir was über diesen 'Stock'."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #12695 /* ~"Ich hätte da noch eine andere Frage an dich."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12696 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 17 // from: 15.3
  SAY #12575 /* ~Er wirft einen Blick über seine Schulter. "Das ist das Büro zur Schädlings- und Seuchenbekämpfung, Schleifer. Die bekommen von mir die Rattenschwänze für Klimper, und dann koch ich die kleinen Mistviecher und verkauf sie."~ */
  IF ~~ THEN REPLY #12697 /* ~"Jemand zahlt Geld für die Schwänze dieser Ratten?"~ */ GOTO 18
  IF ~~ THEN REPLY #12698 /* ~"Ich hätte noch eine andere Frage..."~ */ GOTO 15
  IF ~~ THEN REPLY #12699 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 18 // from: 17.0 26.1 47.1 48.2 57.0
  SAY #12576 /* ~"Genau, Schleifer! Im Büro zur Schädlings- und Seuchenbekämpfung sitzt so'n Dussel namens Lort, und der zahlt ne Belohnung für sie. Ein Kupferstück gibt's pro Kopf - äh, Schwanz. Aber das müssen Klugschädlinge sein, jawohl... nich einfach normale Ratten."~ */
  IF ~~ THEN REPLY #12700 /* ~"Erzähl mir was über diesen Lort."~ */ GOTO 19
  IF ~~ THEN REPLY #12701 /* ~"Klugschädlinge?"~ */ GOTO 22
  IF ~~ THEN REPLY #12702 /* ~"Interessant. Beantworte mir noch eine andere Frage..."~ */ GOTO 15
  IF ~~ THEN REPLY #12703 /* ~"Ich verstehe. Das wäre erstmal alles. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #12577 /* ~"Sein Name is Phineas. Phineas Lort. Der war, glaub' ich, mal so'n hohes Tier, bis er von seinen Rivalen ruhiggestellt und hier ans hintere Ende von Sigil verfrachtet wurde. Der Dussel sitzt da drin Tag und Nacht allein, wie's scheint, und wartet drauf, daß man ihm Schwänze reinbringt, und zahlt dann ne Belohnung dafür. Und weißt du, was das Beste ist? Der arme Kerl muß ne Allergie gegen Ratten haben, weil der nämlich immer schlimmen Ausschlag hat! Ho ho! Die Mächte seien gepriesen, daß ich nich dieser Kerl bin."~ */
  IF ~~ THEN REPLY #12704 /* ~"'Ruhiggestellt?'" Irgendeine Idee, warum?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #12705 /* ~"Sigil?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12706 /* ~"In Ordnung. Ich hätte noch eine andere Frage..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12707 /* ~"Vielleicht schau ich mal bei ihm vorbei. Auf bald."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12578 /* ~"Tja, er is ganz schön gesprächig, das isser - der rasselt seine Knochenschüssel stundenlang und erzählt, wie klug er doch is und so. Vielleicht hat das ja was damit zu tun." Er zuckt mit den Schultern.~ */
  IF ~~ THEN REPLY #12708 /* ~"Verstehe. Eine andere Frage..."~ */ GOTO 15
  IF ~~ THEN REPLY #12709 /* ~"Vielleicht geh ich mal zu ihm. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 21 // from: 15.1
  SAY #12579 /* ~"Was, ich? Also, ich bin Creeden, manchmal auch Creed genannt - der Schlächter der Ratten!" Er lächelt großspurig und legt dabei zwei schlecht passende Reihen gelber, schiefer und kaputter Zähne bloß.~ */
  IF ~~ THEN REPLY #12710 /* ~"Du scheinst auf jeden Fall... freundlicher zu sein... als die meisten anderen hier."~ */ GOTO 49
  IF ~~ THEN REPLY #12711 /* ~"Schön, dich wiederzusehen, Creeden. Ich hätte noch eine Frage an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #12712 /* ~"Vielleicht treffen wir uns mal wieder, Creeden. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 3.0 18.1 23.2 47.2
  SAY #12580 /* ~"Ja, Schleifer, Klugschädlinge. Schlimme Kreaturen sind das. Weißt du, normale Ratten, die fressen nur deine Vorräte auf und vermehren sich, verbreiten Seuchen und das alles... ein Ärgernis, wirklich, aber nich mehr. *Schädelratten* dagegen - Klugschädlinge, wo *ich* hinterher bin - die sind nichts als Ärger. Wenn du mehr als eine kleine Handvoll der kleinen Viecher auf einem Haufen antriffst, kommen die dir gleich frech... manchmal *richtig* frech."~ */
  IF ~~ THEN REPLY #12713 /* ~"Sie werden intelligenter?"~ */ GOTO 24
  IF ~~ THEN REPLY #12714 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12715 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 23 // from: 15.2
  SAY #12581 /* ~Er lacht schallend; sein Atem ist faulig und stinkt nach Zwiebeln. "Auf dem Gebiet bin ich ein Experte, jawohl! Was ist deine Frage, Schleifer?"~ */
  IF ~~ THEN REPLY #12716 /* ~"Woher hast du all diese Ratten?"~ */ GOTO 16
  IF ~~ THEN REPLY #12717 /* ~"Wo sind die besten Orte zum Rattenfangen?"~ */ GOTO 62
  IF ~~ THEN REPLY #12718 /* ~"Erzähl mir was über diese Ratten, die du fängst."~ */ GOTO 22
  IF ~~ THEN REPLY #12719 /* ~"Ach, nichts. Nichts weiter. Keine weiteren Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12720 /* ~"Vergiß es. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #12582 /* ~"So wahr ich hier vor dir stehe, das tun sie! Wenn ich auf mehr als vierzig von ihnen stieße, würd ich um mein Leben laufen, und zwar *so*..." Er schnippt mit den Fingern, um seine Worte zu unterstreichen. "...Das würd ich! Wenn du so viele auf einem Haufen triffst, dann... dann, ja, dann werden die so klug wie ein Mensch, jawohl!"~ */
  IF ~~ THEN REPLY #12721 /* ~"Erzähl weiter..."~ */ GOTO 25
  IF ~~ THEN REPLY #12722 /* ~"Interessant. Laß mich dich noch was anderes fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12723 /* ~"Ich verstehe... Das ist alles, was ich momentan wissen wollte. Auf bald."~ */ GOTO 59
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12583 /* ~"Ich hab' einen guten Rat für dich, Schleifer... wenn du Klugschädlinge fangen willst, dann halt' dich an die kleinen Gruppen. Ein Dutzend oder so höchstens. Aber ich sag dir..." Er kommt einen Schritt näher, sein fauler Atem bläst dir direkt ins Gesicht, und er spricht leise weiter: "Wenn du auf mehr triffst... mehr als zwei oder drei Dutzend... dann renn lieber, als ob du im Schatten der Dame wärst!" Er geht wieder einen Schritt zurück.~ */
  IF ~~ THEN REPLY #12724 /* ~"Warum? Was gibt es zu befürchten?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #12725 /* ~"Die Dame?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #12726 /* ~"Ich werde mich vor ihnen in acht nehmen. Ich hätte noch eine andere Frage..."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12727 /* ~"Ich werd's mir merken. Leb wohl."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12584 /* ~"Zauberei, Schleifer... Zauberei! Wenn du genügend der kleinen Scheusale auf einem Haufen hast, haben die plötzlich jede Menge seltsamer Kräfte! Die lassen das Hirn eines Knochenbrechers aus seinen Ohren fließen, jawohl! Richtiggehend furchteinflößend... es is einfach falsch, das sag ich dir. Deshalb is Sigil so erpicht drauf, sie loszuwerden... über die Belohnung und so."~ */
  IF ~~ THEN REPLY #12728 /* ~"Sigil?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #12729 /* ~"Belohnung? Du meinst, jemand zahlt für Rattenschwänze?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #12730 /* ~"Verstehe. Ich hätte noch eine Frage..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #12731 /* ~"Verstehe. Mehr wollte ich nicht wissen. Leb wohl."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 59
END

IF ~~ THEN BEGIN 27 // from: 15.4
  SAY #12585 /* ~"Sigil meinst du? Was willste denn über den alten Käfig wissen, Schleifer?"~ */
  IF ~~ THEN REPLY #12732 /* ~"Warum nennst du Sigil 'den Käfig'?"~ */ GOTO 29
  IF ~~ THEN REPLY #12733 /* ~"Wo genau ist das?"~ */ GOTO 42
  IF ~~ THEN REPLY #12734 /* ~"Ehrlich gesagt, nichts. Aber ich hätte noch ein paar andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12735 /* ~"Nichts... ist nicht wichtig. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 28 // from: 15.5 19.1 26.0
  SAY #12586 /* ~"Ja, Sigil... der Käfig... was willste denn wissen, Schleifer?"~ */
  IF ~~ THEN REPLY #12736 /* ~"Warum nennst du Sigil 'den Käfig'?"~ */ GOTO 29
  IF ~~ THEN REPLY #12737 /* ~"Wo genau ist das?"~ */ GOTO 42
  IF ~~ THEN REPLY #12738 /* ~"Ehrlich gesagt, nichts. Aber ich hätte noch ein paar andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12739 /* ~"Nichts... ist nicht wichtig. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #12587 /* ~Er schüttelt seinen Kopf und lacht, wodurch die toten Ratten auf seiner Stange hin- und hergeschüttelt werden. "Weißte, Schleifer, das is alles nur von wegen den Toren. Manche Leute nennen Sigil die 'Stadt der Tore'... magische Tore sind das, und einfach überall... die können überall hinführen. Und wenn ich das sag, mein ich *überall*! Aber jetzt kommt noch der Trick am Ganzen... die sind alle verschlossen! Also is das hier eher 'n Käfig als irgend etwas sonst... man kann nur kommen und gehen, wenn man den richtigen Schlüssel hat."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12740 /* ~"Erzähl mir was über diese Tore und Schlüssel."~ */ GOTO 30
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12741 /* ~"Erzähl mir was über diese Tore und Schlüssel."~ */ GOTO 31
  IF ~~ THEN REPLY #12742 /* ~"Ich verstehe. Laß mich dich noch was anderes fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12743 /* ~"Mehr wollte ich erst mal nicht wissen. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #12588 /* ~"Heh-hooo! Du willst ja ne Menge hören, willste ja. Also, dann mach' ich es mal kurz für dich: Der Käfig is voller Tore. Diese Tore sind überall, überall in der Stadt Sigil... aber die kannste nich sehen, wenn du nich den richtigen Schlüssel hast. Jedes Tor hat seinen eigenen Schlüssel, und jeder Schlüssel sieht anders aus. Ein Schlüssel kann wie 'n richtiger Schlüssel aussehen, Messing und all das, alles klar? Aber der nächste könnte... sagen wir mal... ne gegarte Ratte sein! Oder 'n kleines Tänzchen, das du vor einem Tor aufführst. Wenn du erst mal den richtigen Schlüssel hast, kannste durch das Tor gehen, wo immer dich das dann hinführt."~ */
  IF ~~ THEN REPLY #12744 /* ~"Woher weiß man, wohin ein Tor führt?"~ */ GOTO 33
  IF ~~ THEN REPLY #12745 /* ~"Woher weiß man, welcher Schlüssel zu welchem Tor gehört?"~ */ GOTO 34
  IF ~~ THEN REPLY #12746 /* ~"Interessant. Ich hätte ein paar andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12747 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #12589 /* ~Der Rattenfänger sieht Morte, der neben dir schwebt, fragend an. "Man könnt meinen, du würdest deinen Mimir einfach nach so 'nem Dunkel fragen, möchte man meinen..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 155
END

IF ~~ THEN BEGIN 32 // from:
  SAY #12590 /* ~Der Rattenfänger starrt dich verwirrt an und kratzt sich am Kopf, als ihm plötzlich bewußt wird, daß die Aufmerksamkeit wieder auf ihn gerichtet ist. Er schüttelt seinen verwunderten Ausdruck ab und faßt sich wieder.~ */
  IF ~~ THEN REPLY #12748 /* ~Laß ihn sprechen.~ */ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 30.0 34.0
  SAY #12591 /* ~Er runzelt die Stirn und denkt über die Antwort nach. "Tja, wie ich das sehe, würde man, wenn man den Schlüssel kennt, schon wissen, wo das Tor hinführt. Wenn man eins zufällig öffnet, kann ja vorkommen, dann sollte man aber wirklich vorsichtig sein, das sollte man. Man könnt ja mal versuchen, nur den Kopf durchzustecken und nachzuschauen... aber manche Tore saugen einen einfach rein! Da kann man an den übelsten Orten landen, Schleifer, merk dir das."~ */
  IF ~~ THEN REPLY #12749 /* ~"Woher weiß man, welcher Schlüssel zu welchem Tor gehört?"~ */ GOTO 34
  IF ~~ THEN REPLY #12750 /* ~"Interessant. Laß mich dich noch was anderes fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12751 /* ~"Ich verstehe. Vielen Dank für deine Antworten. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 34 // from: 30.1 33.0
  SAY #12592 /* ~Er zuckt mit den Schultern, wodurch die Rattenstange hüpft und das gegarte Ungeziefer wieder hin- und herschwingt. "Da mußt du die richtigen Leute fragen. Leute, die das Dunkel über so was kennen, denk ich mal. Weißte, manche Tore bleiben an Ort und Stelle, und andere bewegen sich... da könnt man ja glatt überschnappen, wenn man über das alles den Überblick behalten wollte. Ich selbst benutz ja kaum Tore, also werd ich dir auch keine große Hilfe sein."~ */
  IF ~~ THEN REPLY #12752 /* ~"Woher weiß man, wohin ein Tor führt?"~ */ GOTO 33
  IF ~~ THEN REPLY #12753 /* ~"Interessant. Laß mich dich noch was anderes fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12754 /* ~"Ich verstehe. Vielen Dank für deine Antworten. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 35 // from: 15.6
  SAY #12593 /* ~Er scheint einen Moment lang verwirrt. "Was, der Stock, hier? Was willst denn darüber wissen, Schleifer?"~ */
  IF ~~ THEN REPLY #12755 /* ~"Weißt du, warum er 'Stock' genannt wird?"~ */ GOTO 37
  IF ~~ THEN REPLY #12756 /* ~"Was gibt es hier Interessantes?"~ */ GOTO 39
  IF ~~ THEN REPLY #12757 /* ~"Nichts, gar nichts. Ich will dich noch was anderes fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12758 /* ~"Egal - das ist alles. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 36 // from: 15.7 16.0
  SAY #12594 /* ~"Mein Zuhause und Geschäftsort! Was willste denn wissen, Schleifer?"~ */
  IF ~~ THEN REPLY #12759 /* ~"Weißt du, warum er 'Stock' genannt wird?"
~ */ GOTO 37
  IF ~~ THEN REPLY #12760 /* ~"Was gibt es hier an Interessantem?"~ */ GOTO 39
  IF ~~ THEN REPLY #12761 /* ~"Nichts, gar nichts. Ich will dich noch was anderes fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12762 /* ~"Egal - das ist alles. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #12595 /* ~"Hrm..." Der Rattenfänger kratzt sich am Kinn, und seine Finger hinterlassen ölige Spuren. "Da gibt's ne Reihe von Geschichten drüber... so wie ich das verstehe, gibt es irgendwo 'n Haufen Gebäude, so 'n Durcheinander von Schuppen und Ruinen, die als so ne Art Versammlungsort dienen. Wurde der Stock genannt, und daher haben diese Slums... dieser ganze Bezirk... ihren Namen."~ */
  IF ~~ THEN REPLY #12763 /* ~"Ein Versammlungsort? Für wen?"~ */ GOTO 38
  IF ~~ THEN REPLY #12764 /* ~"Ich verstehe. Was gibt es hier Interessantes?"~ */ GOTO 39
  IF ~~ THEN REPLY #12765 /* ~"Hmmm. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12766 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #12596 /* ~Der Mann ist plötzlich nicht mehr freundlich und sieht böse aus: "Unruhestifter, Schleifer. Selbst wenn du den Ort finden kannst, würd ich dir raten, dich davon fernzuhalten. Mehr kann ich dazu nich sagen." Er wischt sich die Nase mit einem Ausdruck der Endgültigkeit, und der böse Blick verschwindet.~ */
  IF ~~ THEN REPLY #12767 /* ~"Ich verstehe. Was gibt's denn hier so Interessantes?"~ */ GOTO 39
  IF ~~ THEN REPLY #12768 /* ~"Verstehe. Dann laß mich dich noch was anderes fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12769 /* ~"Also gut. Dann leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 39 // from: 35.1 36.1 37.1 38.0
  SAY #12597 /* ~"Ich bin mir nich sicher, woran du interessiert bist, Schleifer. Laß es mich wissen, und vielleicht kann der alte Creeden dir ja den richtigen Weg weisen."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12770 /* ~"Ich will mich ein wenig amüsieren."~ */ EXTERN ~DMORTE~ 159
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12771 /* ~"Ich bin auf der Suche nach ein wenig Unterhaltung."~ */ GOTO 40
  IF ~~ THEN REPLY #12772 /* ~"Ich bin auf der Suche nach Arbeit."~ */ GOTO 47
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12773 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 51
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12774 /* ~"Ich suche ein Journal. Hast du eins gesehen?"~ */ GOTO 54
  IF ~~ THEN REPLY #12775 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12776 /* ~"Vergiß es. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #12598 /* ~"Da gibt's ne Reihe von weniger gefährlichen Orten, an denen man sich vollaufen lassen kann... die Bar 'Zum Staubfänger', und die Bar 'Zur Schwelenden Leiche'. Was anderes kann ich dir eigentlich nich empfehlen, Schleifer."~ */
  IF ~~ THEN REPLY #12777 /* ~"Könntest du mir zeigen, wo diese Schuppen zu finden sind?"~ */ GOTO 55
  IF ~~ THEN REPLY #12778 /* ~"Gefährlich?"~ */ GOTO 41
  IF ~~ THEN REPLY #12779 /* ~"Danke. Ich hätte noch eine andere Frage."~ */ GOTO 15
  IF ~~ THEN REPLY #12780 /* ~"Vielleicht schau ich bei einem dieser Schuppen mal vorbei. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 41 // from: 40.1 55.0
  SAY #12599 /* ~Er denkt einen Moment nach, bevor er dir antwortet. "Tja, Schleifer, weißte... so gut geht es uns hier nich. Das Leben is hart, das isses. Is'n verzweifelter Ort, voller verzweifelter Leute. Ich sag mal, manche Leute tun alles, um über die Runden zu kommen, einfach alles, ohne sich groß um die Dussel um sie rum zu kümmern. Ganz schön einfach, im Stock zu verschwinden, das isses."~ */
  IF ~~ THEN REPLY #12781 /* ~"Du scheinst mir aber ganz nett zu sein..."~ */ GOTO 49
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12782 /* ~"Verschwinden?"~ */ EXTERN ~DMORTE~ 160
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12783 /* ~"Verschwinden?"~ */ GOTO 56
  IF ~~ THEN REPLY #12784 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #12785 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 42 // from: 27.1 28.1
  SAY #12600 /* ~"Heh... wo isses nich, Schleifer? Da Sigil überall angrenzt... und ich mein das so, wie ich das sage... gibt es wirklich keinen Ort, wo es nich is. Bin mir nich sicher, ob es wirklich im wahrsten Sinne des Wortes so einen Ort gibt... ich mein, an nur einem Ort. Die meisten Vollblüter werden dir aber sagen, daß der in den Außenländern liegt."~ */
  IF ~~ THEN REPLY #12786 /* ~"Die Außenländer?"
~ */ GOTO 43
  IF ~~ THEN REPLY #12787 /* ~"Eigenartig. Laß mich dich noch was anderes fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12788 /* ~"Ich glaube, ich verstehe. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #12601 /* ~"Ja, Schleifer, das is richtig. Es is das sogenannte 'Zentrum der Ebenen', wo Sigil liegt. Und das ist mein Problem damit: Wenn du in Sigil bist, kannste nich raus, ohne durch so ein magisches Tor zu gehen. Es gibt keinen 'normalen' Weg nach draußen in die Außenländer."~ */
  IF ~~ THEN REPLY #12789 /* ~"Erzähl weiter..."~ */ GOTO 44
  IF ~~ THEN REPLY #12790 /* ~"Tore?"~ */ GOTO 46
  IF ~~ THEN REPLY #12791 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #12792 /* ~"Ich hör mir den Rest ein andermal an. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 44 // from: 43.0 46.0
  SAY #12602 /* ~"Genau. Und wenn du außerhalb von Sigil bist... in den Außenländern also... kannste nich wieder nach Sigil reinspazieren. Da ist dieser endlose Felssäule, die im Zentrum der Außenländer bis in die Wolken ragt, und oben auf der Spitze soll sich Sigil darum herum drehen!"~ */
  IF ~~ THEN REPLY #12793 /* ~"Ja... fahre fort..."~ */ GOTO 45
  IF ~~ THEN REPLY #12794 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #12795 /* ~"Ich hör mir den Rest ein andermal an. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #12603 /* ~Er nickt. "Jetzt sag mir mal, Schleifer: Wenn du nich einfach von Sigil raus in die Außenländer spazieren kannst, oder aus den Außenländern wieder rein nach Sigil, wer will dann behaupten, daß es wirklich irgendwo physisch existiert?" Er nickt weise, zufrieden mit seinem kleinen Dilemma. "Ich glaube, Sigil breitet sich über alle Ebenen aus, daß es gleichzeitig sowohl Überall als auch Nirgends ist."~ */
  IF ~~ THEN REPLY #12796 /* ~"Vielleicht. Ich hätte noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12797 /* ~"Interessante Theorie. Ich werd mal drüber nachdenken. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 46 // from: 43.1
  SAY #12604 /* ~"Ja, Schleifer, Tore. Ich mach's mal kurz: Diese Tore sind überall in Sigil verstreut... aber man kann sie nich sehen, wenn man nich den richtigen Schlüssel hat. Jedes Tor hat einen eigenen Schlüssel, und jeder Schlüsel is wieder anders. Wenn du erst mal den richtigen Schlüssel hast, kannst durch das Tor spazieren, wo immer dich das dann hinführt."~ */
  IF ~~ THEN REPLY #12798 /* ~"In Ordnung, red' weiter."~ */ GOTO 44
  IF ~~ THEN REPLY #12799 /* ~"Bevor du weitererzählst, laß mich dich was fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12800 /* ~"Ich hör mir den Rest ein andermal an. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 47 // from: 39.2
  SAY #12605 /* ~"Im Stock gibt's eigentlich nich viel Arbeit... die meisten Leute sehen nur zu, daß sie genug zwischen die Zähne bekommen und am Leben bleiben. Du könntest zum Beispiel Totenbüchler sammeln, wie die Sammler... oder du könntest Klugschädlinge jagen und die Belohnung einstreichen."~ */
  IF ~~ THEN REPLY #12801 /* ~"Sammler?"~ */ GOTO 48
  IF ~~ THEN REPLY #12802 /* ~"Es gibt Leute, die für tote Ratten zahlen?"~ */ GOTO 18
  IF ~~ THEN REPLY #12803 /* ~"Klugschädlinge?"~ */ GOTO 22
  IF ~~ THEN REPLY #12804 /* ~"Ich verstehe. Ich hätte noch eine andere Frage..."~ */ GOTO 15
  IF ~~ THEN REPLY #12805 /* ~"Nun denn. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 48 // from: 47.0 52.0 58.0
  SAY #12606 /* ~Er nickt. "Ein Dussel kann Leichen sammeln und sie zur Leichenhalle bringen. Die Staubmenschen zahlen ihm dann 'n Kupferstück pro Totenbüchler, glaub' ich. Die Sammler tun das als Lebensunterhalt und rauben meistens auch gleich noch die frisch Verstorbenen aus, bevor sie die Leichen verkaufen. Ich hab' gehört..." Er senkt seine Stimme und sieht sich schnell rundherum um. "...daß manche einem Dussel dabei nachhelfen zu verschwinden, wenn du weißt, was ich meine. Ganz üble Leute sind das."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12806 /* ~"Verschwinden?"~ */ EXTERN ~DMORTE~ 161
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12807 /* ~"Verschwinden?"~ */ GOTO 57
  IF ~~ THEN REPLY #12808 /* ~"Was hast du noch mal gesagt über Leute, die für tote Ratten zahlen?"~ */ GOTO 18
  IF ~~ THEN REPLY #12809 /* ~"Interessant. Ich hätte noch eine Frage zu einer anderen Sache..."~ */ GOTO 15
  IF ~~ THEN REPLY #12810 /* ~"Nun denn. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 49 // from: 21.0 41.0 56.0
  SAY #12607 /* ~"Tja, Schleifer, ich versuch's. Kommt von meinem Geschäft, glaub' ich... die meisten hier sind luchsig und richtiggehend unfreundlich, aber ich will, daß jeder Schleifer weiß, daß Creeden immer 'n warmes Lächeln und ne glühendheiße, frisch gegarte Ratze für ihn hat!" Er zwinkert dir zu.~ */
  IF ~~ THEN REPLY #12811 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #12812 /* ~"Das ist verständlich. Leb wohl, Creeden."~ */ GOTO 59
END

IF ~~ THEN BEGIN 50 // from: 15.8 25.1
  SAY #12608 /* ~"Ja, die Herrin von Sigil. Ich sprech nich über die Dame, Schleifer... und du solltest auch nich nach ihr fragen. Das bringt dir nur Unglück, jawohl." Er macht ein Zeichen in Form eines Halbkreises über seiner Brust.~ */
  IF ~~ THEN REPLY #12813 /* ~"Dann laß mich dich noch was anderes fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #12814 /* ~"Ich möchte mich dann empfehlen. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 15.9 39.3
  SAY #12609 /* ~Er sieht ein wenig erstaunt aus. "Pharod? Warum sollte ein Schleifer nach so einem Mann suchen?"~ */
  IF ~~ THEN REPLY #12815 /* ~"Ach, das ist eine lange Geschichte - ich muß ihn einfach finden."~ */ GOTO 52
  IF ~~ THEN REPLY #12816 /* ~"Das geht dich nichts an, Rattenfänger."~ */ GOTO 53
  IF ~~ THEN REPLY #12817 /* ~"Vergiß, daß ich gefragt habe. Beantworte mir noch eine andere Frage..."~ */ GOTO 15
  IF ~~ THEN REPLY #12818 /* ~"Vergiß es... war nicht wichtig. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 52 // from: 51.0 53.0
  SAY #12610 /* ~"Er is der Anführer einer Bande von Sammlern, isser... immer auf Achse, wahrscheinlich, um Ärger zu vermeiden. Hat seinen Schuber am Lumpensammler-Platz, höchstwahrscheinlich. Das is 'n ganz schön verschlagener Bursche, der Pharod. Ein Schleifer sollte sich bei dem Kerl lieber vorsehen."~ */
  IF ~~ THEN REPLY #12819 /* ~"Sammler?"~ */ GOTO 48
  IF ~~ THEN REPLY #12820 /* ~"Wo ist dieser Lumpensammler-Platz?'"~ */ GOTO 58
  IF ~~ THEN REPLY #12821 /* ~"In Ordnung. Ich hab' noch mehr Fragen..."
~ */ GOTO 15
  IF ~~ THEN REPLY #12822 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #12611 /* ~Creeden runzelt die Stirn. "Ja dann, Schleifer, geht's mich auch nichts an, wo so ein Mann sein könnte."~ */
  IF ~~ THEN REPLY #12823 /* ~"Es ist wirklich wichtig, daß ich ihn finde... Ich möchte mich für meine unfreundlichen Worte von vorhin entschuldigen. Könntest du mir helfen?"~ */ GOTO 52
  IF ~~ THEN REPLY #12824 /* ~"Gut. Vielleicht kannst du mir ja was anderes sagen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12825 /* ~"So sei es. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 54 // from: 15.10 39.4
  SAY #12612 /* ~"Tut mir leid, Schleifer - kann nich sagen, daß ich einen von denen hier irgendwo gesehen hätt."~ */
  IF ~~ THEN REPLY #12826 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #12827 /* ~"Dann muß ich halt weitersuchen. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 55 // from: 40.0
  SAY #12613 /* ~"Klar, Schleifer. Die Bar 'Zum Staubfänger' is gegenüber der Leichenhalle, und die Bar 'Zur Schwelenden Leiche' is östlich von hier.~ */
  IF ~~ THEN REPLY #12828 /* ~"Vielen Dank. Du sagtest etwas davon, daß es irgendwo gefährlich wäre?"~ */ GOTO 41
  IF ~~ THEN REPLY #12829 /* ~"Vielen Dank. Ich hätte allerdings noch eine andere Frage..."~ */ GOTO 15
  IF ~~ THEN REPLY #12830 /* ~"Vielleicht schau ich bei einem dieser Schuppen mal vorbei. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 41.2
  SAY #12614 /* ~"Ja, Schleifer... verschwinden. Im Totenbuch."~ */
  IF ~~ THEN REPLY #12831 /* ~"Ich verstehe... Aber du scheinst doch ganz nett zu sein..."~ */ GOTO 49
  IF ~~ THEN REPLY #12832 /* ~"Verstehe. Eine andere Frage..."~ */ GOTO 15
  IF ~~ THEN REPLY #12833 /* ~"Ich verstehe. Das war alles, was ich wissen wollte. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 57 // from: 48.1
  SAY #12615 /* ~"Genau, Schleifer... verschwinden. Im Totenbuch."~ */
  IF ~~ THEN REPLY #12834 /* ~"Verstehe. Und was war das noch mal für eine Geschichte über Leute, die für tote Ratten zahlen?"~ */ GOTO 18
  IF ~~ THEN REPLY #12835 /* ~"Verstehe. Ich hätte noch eine Frage zu was anderem..."~ */ GOTO 15
  IF ~~ THEN REPLY #12836 /* ~"Nun denn. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 52.1 62.0
  SAY #12616 /* ~"Ich zeig's dir, Schleifer... gib mir mal deine Karte." Der Mann zeigt es dir und hinterläßt dabei einen großen, fettigen Fingerabdruck auf der Karte.~ */
  IF ~~ THEN REPLY #12837 /* ~"Danke. Du sagtest was von Sammlern?"~ */ GOTO 48
  IF ~~ THEN REPLY #12838 /* ~"Vielen Dank. Ich hätte noch mehr Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12839 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 3.4 15.12 16.2 17.2 18.3 19.3 20.1 21.2 22.2 23.4 24.2 25.3 26.3 27.3 28.3 29.3 30.3 33.2 34.2 35.3 36.3 37.3 38.2 39.6 40.3 41.4 42.2 43.3 44.2 45.1 46.2 47.4 48.4 49.1 50.1 51.3 52.3 53.2 54.1 55.2 56.2 57.2 58.2 62.2 63.1
  SAY #12617 /* ~Er berührt deinen Arm: "Ich seh schon, du willst gehen, Schleifer, aber bevor du gehst, wie wär's mit ner köööst-lichen kleinen Ratze? Eine für unterwegs, sozusagen?"~ */
  IF ~~ THEN REPLY #12840 /* ~"Warum nicht..."~ */ GOTO 5
  IF ~~ THEN REPLY #12841 /* ~"Eher würd ich meine eigene Zunge essen."~ */ GOTO 4
  IF ~~ THEN REPLY #12842 /* ~"Nein, danke. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",1)
~ EXIT
END

IF ~  Global("Creeden","AR0300",2)
~ THEN BEGIN 60 // from:
  SAY #12618 /* ~"Heda, Schleifer, so sieht man sich wieder. Haste deine Meinung geändert? Wieder zurückgekommen, um eine von Creedens kööööst-lichen kleinen Ratzen zu probieren?" Er rüttelt seine Rattenstange einladend hin und her.~ */
  IF ~~ THEN REPLY #12843 /* ~"Warum nicht... was hast du denn so für welche?"~ */ GOTO 5
  IF ~~ THEN REPLY #12844 /* ~"Eher würd ich meine eigene Zunge essen."~ */ GOTO 4
  IF ~~ THEN REPLY #12845 /* ~"Nein, heute nicht. Ich hätte allerdings ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12846 /* ~"Nein danke. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",2)
~ EXIT
END

IF ~  Global("Creeden","AR0300",3)
~ THEN BEGIN 61 // from:
  SAY #12619 /* ~"Heda, Schleifer, so sieht man sich wieder. Könnt ich dich irgendwie dazu bringen, noch eine meiner kööööst-lichen kleinen Ratzen zu probieren? Ich weiß, die letzte hat dir nich so geschmeckt, aber vielleicht hat Creeden ja ne andere Geschmacksrichtung, die dir mehr liegt..."~ */
  IF ~~ THEN REPLY #12847 /* ~"Warum nicht... was hast du denn so für welche?"~ */ GOTO 5
  IF ~~ THEN REPLY #12848 /* ~"Ich mach mir einfach nichts draus, Rattenfänger."~ */ GOTO 14
  IF ~~ THEN REPLY #12849 /* ~"Nein, heute nicht. Ich hätte allerdings ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #12850 /* ~"Nein danke. Leb wohl."~ */ DO ~SetGlobal("Creeden","AR0300",3)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 23.1
  SAY #12620 /* ~"Das is nich so einfach zu beantworten wie früher mal, Schleifer... siehste, die Mistviecher machen sich die Tage rar. Ich hab' sie früher ganz einfach in dunklen Straßen und Kellern mit Fallen fangen können, aber vielleicht hab' ich sie ein bißchen zu viel gejagt. Du kannst es ja mal auf dem Lumpensammler-Platz versuchen; die Müllhaufen da machen es ganz schön für Ratten."~ */
  IF ~~ THEN REPLY #12851 /* ~"Wo ist dieser Lumpensammler-Platz?'"~ */ GOTO 58
  IF ~~ THEN REPLY #12852 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 15
  IF ~~ THEN REPLY #12853 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 15.0
  SAY #48396 /* ~Er denkt einen Augenblick nach. "Ja, ich weiß, wovon du sprichst. Da war mal'n Mädel mit Namen Eisennagel. Die hab ich da mal durchgeh'n seh'n, als ich nach Ratten gesucht hab. Hab aber keine Ahnung, wie sie's gemacht hat. Du findest sie wahrscheinlich nordöstlich von hier, wo sie in 'nem Stapel Holz nach Nägeln und so herumwühlt."~ */
  IF ~~ THEN REPLY #48397 /* ~"Danke. Ich hätte noch eine andere Frage..."~ */ GOTO 15
  IF ~~ THEN REPLY #48398 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 59
END
