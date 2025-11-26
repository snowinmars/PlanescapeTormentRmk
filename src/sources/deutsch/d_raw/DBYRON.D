// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBYRON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBYRON~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34629 /* ~Du siehst einen gut gekleideten Mann mittleren Alters. Er scheint die Menge mit geübtem Auge abzusuchen. Er sieht dich herankommen, und mustert dich schnell.~ */
  IF ~~ THEN REPLY #34661 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #34662 /* ~Ignoriere den Mann.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34630 /* ~Er lächelt dich an und nickt dir kaum merklich zu. "Ich bin Byron Nimms, Geldverleiher. Kann ich dir behilflich sein?"~ */
  IF ~~ THEN REPLY #34663 /* ~"Geldverleiher?"~ */ GOTO 2
  IF ~~ THEN REPLY #34664 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #34665 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #34631 /* ~Er nickt wieder. "Ja, ich kümmere mich um die Bedürfnisse von Kaufleuten. Willst du ein Geschäft aufmachen? Eins über Wasser halten, das grade eine Pechsträhne durchmacht? Oder vielleicht dein Geschäft erweitern? In jedem Fall bin ich der richtige Mann für die Finanzierung." Er betrachtet dich von oben bis unten. "Ich glaube nicht, mein Freund, daß du ein Kaufmann bist; was kann ich also für dich tun?"~ */
  IF ~~ THEN REPLY #34666 /* ~"Ich bin Kaufmann."~ */ GOTO 3
  IF ~~ THEN REPLY #34667 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #34668 /* ~"Nichts, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.1
  SAY #34632 /* ~Er lächelt und sieht kurz weg. "Ein Kaufmann des Todes vielleicht, aber nicht die Art von Mensch, mit der ich Geschäfte mache." Er runzelt die Stirn. "Wenn du darauf bestehst, meine Zeit in Anspruch zu nehmen, dann komm doch bitte zum Punkt deines Besuchs."~ */
  IF ~~ THEN REPLY #34669 /* ~"Erzähl mir, was du für Geschäfte machst."~ */ GOTO 4
  IF ~~ THEN REPLY #68104 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #68105 /* ~"Nichts, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #34633 /* ~Er runzelt die Stirn und schüttelt den Kopf. "Nein, ich sehe wirklich keinen Grund..." Er betrachtet dich von oben bis unten. "Du bist eindeutig keiner von den Leuten, mit denen ich Geschäfte treiben möchte. Ich glaube, du solltest jetzt gehen." Er sieht zur Seite.~ */
  IF ~~ THEN REPLY #34672 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #34673 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 6.2 7.2 8.1 9.1 10.4 11.1 12.0 13.1 15.0 16.1 17.2 30.1 31.1
  SAY #34634 /* ~Er seufzt. "Also gut, dann schieß mal los."~ */
  IF ~~ THEN REPLY #34674 /* ~"Was ist dies für ein Ort?"~ */ GOTO 6
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #34675 /* ~"Ich möchte mit dir über Trist reden."~ */ GOTO 16
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #34676 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 24
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #34677 /* ~"Ich vermisse einen Schädel... Kennst du vielleicht jemanden, der so etwas brauchen könnte?"~ */ GOTO 28
  IF ~~ THEN REPLY #34678 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #34635 /* ~"Wenn du den Bezirk im ganzen meinst, der nennt sich 'Unterer Bezirk'. Sprichst du dagegen von diesem Ort hier, so ist das der Straßenmarkt."~ */
  IF ~~ THEN REPLY #34679 /* ~"Erzähl mir etwas über den Unteren Bezirk."~ */ GOTO 7
  IF ~~ THEN REPLY #34680 /* ~"Erzähl mir vom Straßenmarkt."~ */ GOTO 12
  IF ~~ THEN REPLY #34681 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #34682 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from: 6.0
  SAY #34636 /* ~Er sieht gelangweilt aus. "Es ist die Heimstatt der einfachen Leute." Er gestikuliert um sich herum. "Sieh dich um, und du wirst alles sehen, was es zu sehen gibt... nichts. Nichts von Interesse."~ */
  IF ~~ THEN REPLY #34683 /* ~"Warum bist du dann hier?"~ */ GOTO 8
  IF ~~ THEN REPLY #34684 /* ~"Erzähl mir vom Straßenmarkt."~ */ GOTO 12
  IF ~~ THEN REPLY #34685 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #34686 /* ~"Ich muß gehen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34637 /* ~Er lächelt. "Immerhin, für eins sind diese unbekümmerten armen Schlucker ja doch gut: Sie geben ihr Geld aus. Es gibt ihnen das Gefühl, daß sie mit ihrem sonst so bedeutungslosen Leben tatsächlich etwas erreichen." Er macht eine Pause und sieht verächtlich um sich.~ */
  IF ~~ THEN REPLY #34687 /* ~"Red' weiter."~ */ GOTO 9
  IF ~~ THEN REPLY #34688 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #34689 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34638 /* ~Er zuckt die Achseln. "Wo es Geld gibt, findet man auch Kaufleute und Diebe. Ich sehe zu, daß es die nötigen Kaufleute gibt, damit sie ihr..." Er fuchtelt mit seinen Händen herum. "... hart verdientes Geld loswerden." Er lächelt dir zu.~ */
  IF ~~ THEN REPLY #34690 /* ~"Du sagtest was von Dieben. Wer *stellt* sie?"~ */ GOTO 10
  IF ~~ THEN REPLY #34691 /* ~"Ich verstehe... Ich habe noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #34692 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #34639 /* ~"Ich jedenfalls nicht..." Er sieht dich abwägend an und lächelt. "Warum fragst du?"~ */
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34693 /* ~"Nenn es Neugier..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~Da ist so ein Dieb namens Lenny, der irgendwo südöstlich des Marktes gefunden werden kann. Vielleicht kann ich von ihm etwas lernen.~ */ GOTO 11
  IF ~  !Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34694 /* ~"Ich brauche etwas Training..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Know_Lenny","GLOBAL",1)
SetGlobal("Byron_Gave_Exp","GLOBAL",1)
~ JOURNAL #34696 /* ~Da ist so ein Dieb namens Lenny, der irgendwo südöstlich des Marktes gefunden werden kann. Vielleicht kann ich von ihm etwas lernen.~ */ GOTO 31
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #34695 /* ~"Nur so. Ich habe noch ein paar Fragen..."~ */ GOTO 11
  IF ~  Global("Byron_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67290 /* ~"Ich brauche Training..."~ */ GOTO 31
  IF ~~ THEN REPLY #67291 /* ~"Macht nichts, ich habe noch andere Fragen..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.2
  SAY #34640 /* ~Er lacht. "Solch Neugier kann gefährlich sein... sogar tödlich, wenn man nicht aufpaßt." Er macht eine Pause, um seine nächsten Worte abzuwägen, und betrachtet dich genauer. "Vielleicht solltest du mal mit Lenny reden. Er ist normalerweise südlich oder östlich vom Markt zu finden." Er hält inne. "Sag ihm, ich hätte dich geschickt."~ */
  IF ~~ THEN REPLY #34697 /* ~"Erzähl mir vom Straßenmarkt."~ */ GOTO 12
  IF ~~ THEN REPLY #34698 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #35738 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 11.0 31.0
  SAY #34641 /* ~Er zeigt auf das Gebäude hinter sich. "Ein hervorragender Markt; dort gibt es so ziemlich alles." Er hält einen Moment inne, bevor er fortfährt: "Es gibt nichts Außergewöhnliches - diese armen Schlucker können sich so was nicht leisten - aber ein guter Markt ist es doch."~ */
  IF ~~ THEN REPLY #35739 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #35740 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #34642 /* ~Er zuckt die Achseln. "Ich bin kein Stadtführer. Wenn du Sigil kennenlernen willst, mußt du die Stadt schon selbst erkunden. Ich würde es dir empfehlen. Ich muß dich aber warnen: wenn du zu tief hineinschaust, wirst du dein Leben lassen."~ */
  IF ~~ THEN REPLY #35741 /* ~"Oh? Warum das?"~ */ GOTO 14
  IF ~~ THEN REPLY #35742 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #35743 /* ~"Ich verstehe. Ich muß jetzt weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #34643 /* ~Er denkt einen Moment nach, um seine Worte richtig zu wählen. "Sigil birgt viele Geheimnisse, gute und schlechte. Entdeckst du zu viele der schlechten, ist dein Leben womöglich verwirkt."~ */
  IF ~~ THEN REPLY #35744 /* ~"Was für Geheimnisse?"~ */ GOTO 15
  IF ~~ THEN REPLY #35745 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #35746 /* ~"Ich verstehe. Ich muß jetzt weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #34644 /* ~Er sieht dich überrascht an und fängt an zu lachen. "Wären es dann noch Geheimnisse, wenn ich sie dir erzählen würde?"~ */
  IF ~~ THEN REPLY #35747 /* ~"Ich habe noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #35748 /* ~"Ich glaube kaum. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.1 30.2
  SAY #34645 /* ~"Ach ja, Trist..." Er runzelt die Stirn und sieht zur Seite. Dann sieht er dich direkt an und zieht seine Augenbrauen nach oben. "Was ist mit ihr?"~ */
  IF ~~ THEN REPLY #35749 /* ~"Ich suche für sie nach einem Beleg, den sie vermißt."~ */ GOTO 17
  IF ~~ THEN REPLY #35750 /* ~"Schon gut, ich habe noch andere Fragen an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #35751 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #34646 /* ~Er seufzt und schüttelt den Kopf. "Es gibt keinen *fehlenden* Beleg. Das war nur eine von Trist initiierte List, um Zweifel an ihren Schulden aufkommen zu lassen. Diese Angelegenheit wurde von den Gnadentötern gründlich untersucht, und sie fanden keinen Beweis dafür, daß ein solches Dokument je existiert hat."~ */
  IF ~~ THEN REPLY #35752 /* ~"Die Gnadentöter?"~ */ GOTO 18
  IF ~~ THEN REPLY #35753 /* ~"Sie könnten etwas übersehen haben."~ */ GOTO 19
  IF ~~ THEN REPLY #35754 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #35755 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #34647 /* ~"Ja, ein Bund von Fanatikern, die es sich zur Aufgabe machen, bei Verbrechen die *Wahrheit* aufzudecken und Gerechtigkeit walten zu lassen. Sie werden von den Gerichten in Sigil oft als Ermittler eingesetzt. Die leisten wirklich gründliche Arbeit, aber sie haben nichts gefunden..." Er starrt dich an.~ */
  IF ~~ THEN REPLY #35756 /* ~"Sie könnten etwas übersehen haben."~ */ GOTO 19
  IF ~~ THEN REPLY #35757 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #34648 /* ~"Das ist wohl möglich, aber nicht sehr wahrscheinlich. Du kennst dich ganz offensichtlich nicht mit den Gnadentötern oder ihren Methoden aus, sonst würdest du so etwas nicht behaupten. Wenn sie den Schuldschein nicht finden konnten, heißt das, daß er nicht existiert." Er wirft dir einen ärgerlichen Blick zu.~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Jemand könnte den Beleg gestohlen und dann vernichtet haben. Auf diese Weise würde die Schuld zweimal bezahlt..."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Ich glaube, Byron Nimms hat einige Dokumente von einer Frau namens Trist gestohlen. Ohne diese Dokumente kann sie nicht beweisen, daß sie eine Leihsumme zurückgezahlt hat, und nun soll sie in die Sklaverei verkauft werden, um die Schulden zu begleichen.~ */ GOTO 20
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Jemand könnte den Beleg gestohlen... vielleicht sogar vernichtet haben."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Ich glaube, Byron Nimms hat einige Dokumente von einer Frau namens Trist gestohlen. Ohne diese Dokumente kann sie nicht beweisen, daß sie eine Leihsumme zurückgezahlt hat, und nun soll sie in die Sklaverei verkauft werden, um die Schulden zu begleichen.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35758 /* ~"Jemand könnte den Beleg gestohlen und dann vernichtet haben. Auf diese Weise würde die Schuld zweimal bezahlt..."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Ich glaube, Byron Nimms hat einige Dokumente von einer Frau namens Trist gestohlen. Ohne diese Dokumente kann sie nicht beweisen, daß sie eine Leihsumme zurückgezahlt hat, und nun soll sie in die Sklaverei verkauft werden, um die Schulden zu begleichen.~ */ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
!Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #35759 /* ~"Jemand könnte den Beleg gestohlen... vielleicht sogar vernichtet haben."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Stolen_Papers","GLOBAL",1)
SetGlobal("Byron_Gave_Exp_2","GLOBAL",1)
~ JOURNAL #35762 /* ~Ich glaube, Byron Nimms hat einige Dokumente von einer Frau namens Trist gestohlen. Ohne diese Dokumente kann sie nicht beweisen, daß sie eine Leihsumme zurückgezahlt hat, und nun soll sie in die Sklaverei verkauft werden, um die Schulden zu begleichen.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67292 /* ~"Jemand könnte das Dokument gestohlen und vernichtet haben. Auf die Art würden die Schulden doppelt zurückgezahlt..."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Byron_Gave_Exp_2","GLOBAL",1)
~ THEN REPLY #67293 /* ~"Jemand könnte das Dokument gestohlen haben... Vielleicht hat er es sogar vernichtet."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1 19.2 19.3 19.4 19.5
  SAY #34649 /* ~Einen Moment lang sieht es so aus, als ob er aufbrausen wollte, dann jedoch gleitet ein hämisches Lächeln über sein Gesicht. "Was für ein schrecklicher Gedanke... schade, daß es keinen Beweis für solch eine Aktivität gibt..." Er lächelt dich weiter an.~ */
  IF ~~ THEN REPLY #35763 /* ~"Ja... ein Jammer. Sag, wieso willst du Trist als Sklavin verkaufen? Könnte sie dir das Geld nicht in Form eines Schuldscheins zurückzahlen?~ */ GOTO 21
  IF ~~ THEN REPLY #35764 /* ~"Falls es irgendeinen Beweis gibt, werde ich ihn finden."~ */ JOURNAL #35767 /* ~Ich habe Byron Nimms erzählt, daß ich vorhabe, Trists verschwundene Dokumente zu finden.~ */ GOTO 22
  IF ~~ THEN REPLY #35765 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #35766 /* ~"Ich glaube mir reicht's. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #34650 /* ~"Ja, könnte sie, und ich hatte ihr das auch angeboten." Er wirft dir einen strengen Blick zu. "Sie hat mich abgewiesen. Ich gebe keine zweite Chance. Keiner soll sich erlauben, mich abzuweisen, ohne die Folgen zu ertragen. Keiner..."~ */
  IF ~~ THEN REPLY #35768 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #35769 /* ~"Ich verstehe. Ich geh dann jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #34651 /* ~Er lacht dir ins Gesicht. "Na dann wünsch ich dir viel Glück. Wo die Gnadentöter der armen Trist schon nicht helfen konnten, glaube ich kaum, daß du bei allen neun Höllen eine Chance haben wirst. Nun hau schon ab, dummer Schlucker." Er wendet sich ab.~ */
  IF ~~ THEN REPLY #35770 /* ~Geh weg.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0 30.0
  SAY #34652 /* ~"Nein, ich habe die Nase gründlich voll von dir. Ich werde keine einzige deiner Fragen mehr beantworten. Nun hau schon ab, dummer Schlucker." Er wendet sich ab.~ */
  IF ~~ THEN REPLY #35771 /* ~Geh weg.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.2
  SAY #34653 /* ~Er sieht dich zweifelnd an. "Wirklich? Warum im Namen der neun Höllen solltest du ihn finden wollen?"~ */
  IF ~~ THEN REPLY #35772 /* ~"Ich habe meine Gründe."~ */ GOTO 25
  IF ~~ THEN REPLY #35773 /* ~"Er hat mir einen Schädel gestohlen."~ */ GOTO 26
  IF ~~ THEN REPLY #35774 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0 27.0 29.0
  SAY #34654 /* ~Er hält einen Moment inne. "Ich kann dir versichern, daß ich meine Gründe dafür habe, noch dazu ziemlich gute Gründe, niemanden zu Lothar zu führen. Nun hau schon ab, dummer Kerl." Er wendet sich ab.~ */
  IF ~~ THEN REPLY #35775 /* ~Geh.~ */ DO ~SetGlobal("Byron_Questions","AR0500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #34655 /* ~"Und? Was gedenkst du zu tun? Einfach reingehen und ihn zurückverlangen?" Er betrachtet dich von oben bis unten. "Ich muß zwar zugeben, daß du durchaus den Eindruck machst, als könntest du dich in einem Kampf behaupten, aber gegen Lothar?" Er lacht verächtlich. "Dein Totenschädel wird ihm als Wandschmuck dienen."~ */
  IF ~~ THEN REPLY #35776 /* ~"Ich muß ihn trotzdem finden."~ */ GOTO 25
  IF ~~ THEN REPLY #35777 /* ~"Wie stark kann denn ein einzelner Mann schon sein?"~ */ GOTO 27
  IF ~~ THEN REPLY #35778 /* ~"Ich verstehe. Ich muß mich jetzt auf den Weg machen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #34656 /* ~Er lacht schallend und wirft dir einen ungläubigen Blick zu. "Lothar steht über dem Gesetz, Dussel. So mächtig ist er, so stark..."~ */
  IF ~~ THEN REPLY #35779 /* ~"Ich muß ihn trotzdem finden."~ */ GOTO 25
  IF ~~ THEN REPLY #35780 /* ~"Ich verstehe. Ich muß mich jetzt auf den Weg machen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #34657 /* ~Er schüttelt seinen Kopf. "Ehrlich..." Er seufzt und wendet kurz seinen Blick ab. "Ich kann dir versichern, daß dein Totenschädel nicht zu retten ist. Vergiß ihn einfach, besorg dir einen andern."~ */
  IF ~~ THEN REPLY #35781 /* ~"Warum?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 29
  IF ~~ THEN REPLY #35782 /* ~"Danke, aber ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34658 /* ~"Weil es sehr wohl möglich ist, daß dein Totenschädel im Besitz von Lothar, dem Herrn der Knochen, ist. Ist das der Fall, dann ist er verloren." Er zuckt die Achseln.~ */
  IF ~~ THEN REPLY #35783 /* ~"Wo finde ich diesen Lothar?"~ */ GOTO 25
  IF ~~ THEN REPLY #35784 /* ~"Danke, leb wohl.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 30 // from:
  SAY #34659 /* ~Du siehst Byron Nimms, den Geldverleiher. "Wieder zurück?"~ */
  IF ~  Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35785 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 23
  IF ~  !Global("Byron_Questions","AR0500",1)
~ THEN REPLY #35786 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 5
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35787 /* ~"Ich möchte mit dir über Trist reden."~ */ GOTO 16
  IF ~~ THEN REPLY #35788 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 10.1 10.3
  SAY #34660 /* ~Er lacht und sieht sich um. "Wirklich? Nun, solche Dinge solltest du nicht einfach so vor irgend jemandem zugeben." Er sieht dich genau an, während er nachdenkt. "Wie gesagt, ich habe mit Dieben nichts am Hut... Vielleicht solltest du mal mit Lenny reden. Er ist normalerweise südlich oder östlich vom Markt zu finden. Er hält einen Augenblick inne. "Sag ihm, ich hätte dich geschickt."~ */
  IF ~~ THEN REPLY #35789 /* ~"Erzähl mir vom Straßenmarkt."~ */ GOTO 12
  IF ~~ THEN REPLY #35790 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #35791 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END
