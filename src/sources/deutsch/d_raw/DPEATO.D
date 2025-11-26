// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPEATO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPEATO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58706 /* ~Du siehst einen jungen Mann in schmutzigen, unordentlichen Kleidern. Er sieht dich mißtrauisch an, als du näherkommst. ~ */
  IF ~~ THEN REPLY #58707 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58708 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58709 /* ~"Was willst du?" Er sieht sich nervös um.~ */
  IF ~~ THEN REPLY #58710 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58711 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0 5.0 6.1 7.0 8.1 9.1 10.3 11.2 12.2 13.2 15.2 16.1 17.0 19.0
  SAY #58712 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #58713 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #58714 /* ~"Warum bist du hier?"~ */ GOTO 6
  IF ~~ THEN REPLY #58715 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #58716 /* ~"Ich suche nach einem Deva. Man hat mir gesagt, er sei hier."~ */ GOTO 14
  IF ~~ THEN REPLY #58717 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58718 /* ~Er zögert, bevor er antwortet: "Was interessiert dich das?"~ */
  IF ~~ THEN REPLY #58719 /* ~"Ich wüßte halt gern, mit wem ich rede."~ */ GOTO 4
  IF ~~ THEN REPLY #58720 /* ~"Laß die Arroganz, oder ich prügele sie aus dir heraus."~ */ GOTO 5
  IF ~~ THEN REPLY #58721 /* ~"Schon gut, ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58722 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58723 /* ~"Ich bin Peato." Er schaut dich gelangweilt an.~ */
  IF ~~ THEN REPLY #58724 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58725 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58726 /* ~Ein ärgerlicher Ausdruck erscheint auf seinem Gesicht, und er setzt an, etwas zu sagen. Dann bemerkt er deine Narben und macht schnell einen Rückzieher. "'tschuldige, ich heiße Peato."~ */
  IF ~~ THEN REPLY #58727 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58728 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #58729 /* ~Er grinst. "Man hat mich erwischt, als ich einige Dinge beim Kaufmann im Ort *geborgt* habe. Er war nicht sonderlich erbaut und hat dafür gesorgt, daß ich hier eingelocht werde."~ */
  IF ~~ THEN REPLY #58730 /* ~"Also bist du ein Dieb."~ */ GOTO 7
  IF ~~ THEN REPLY #58731 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58732 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58733 /* ~Er starrt dich ärgerlich an. "So könnte man es wohl nennen."~ */
  IF ~~ THEN REPLY #58734 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58735 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58736 /* ~"Pack ein, Dussel. Ich hab die Nase voll von dir." Er schnaubt verächtlich und schaut an sich hoch und runter, was einer gewissen Komik nicht entbehrt. "Sehe ich etwa aus wie ein Schlepper?"~ */
  IF ~~ THEN REPLY #58737 /* ~"Nein, du siehst aus wie jemand, der schwere gesundheitliche Probleme hat."~ */ GOTO 9
  IF ~~ THEN REPLY #58738 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58739 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58740 /* ~Er sieht dich verwirrt an. "Wovon redest du überhaupt? Ich habe keine Probleme mit meiner Gesundheit."~ */
  IF ~~ THEN REPLY #58741 /* ~"Die wirst du schon noch haben, wenn du meine Frage nicht beantwortest."~ */ GOTO 10
  IF ~~ THEN REPLY #58742 /* ~"Schon gut, ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58743 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58744 /* ~Er will schon auf deine Provokation eingehen, hält aber dann inne und überlegt es sich anders. "Dies ist das Gefängnis. Es besteht aus drei ineinanderliegenden Ringen: dem äußeren Ring, dem mittleren Ring und dem inneren Ring."~ */
  IF ~~ THEN REPLY #58745 /* ~"Erzähl mir etwas über den äußeren Ring."~ */ GOTO 11
  IF ~~ THEN REPLY #58746 /* ~"Erzähl mir etwas über den mittleren Ring."~ */ GOTO 12
  IF ~~ THEN REPLY #58747 /* ~"Erzähl mir etwas über den inneren Ring."~ */ GOTO 13
  IF ~~ THEN REPLY #58748 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58749 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #58750 /* ~"Du befindest dich im äußeren Ring. Die Dussel, die du hier siehst, sitzen wegen kleinerer Vergehen. Hauptsächlich kleinere Diebstähle, Überfälle und so weiter."~ */
  IF ~~ THEN REPLY #58751 /* ~"Erzähl mir etwas über den mittleren Ring."~ */ GOTO 12
  IF ~~ THEN REPLY #58752 /* ~"Erzähl mir etwas über den inneren Ring."~ */ GOTO 13
  IF ~~ THEN REPLY #58753 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58754 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 13.1
  SAY #58755 /* ~"Im mittleren Ring sitzen all die ein, die für etwas gefährlicher gelten: Muskelprotze, Schläger, Dussel, die aus Versehen oder in der Hitze des Gefechts jemanden umgebracht haben."~ */
  IF ~~ THEN REPLY #58756 /* ~"Erzähl mir etwas über den äußeren Ring."~ */ GOTO 11
  IF ~~ THEN REPLY #58757 /* ~"Erzähl mir etwas über den inneren Ring."~ */ GOTO 13
  IF ~~ THEN REPLY #58758 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58759 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1
  SAY #58760 /* ~"Im inneren Ring sind die gefährlichen Verbrecher untergebracht, die eine Bedrohung darstellen: Vergewaltiger, Mörder und Staatsfeinde.~ */
  IF ~~ THEN REPLY #58761 /* ~"Erzähl mir etwas über den äußeren Ring."~ */ GOTO 11
  IF ~~ THEN REPLY #58762 /* ~"Erzähl mir etwas über den mittleren Ring."~ */ GOTO 12
  IF ~~ THEN REPLY #58763 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58764 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.3
  SAY #58765 /* ~"Du meinst Trias." Er runzelt die Stirn und schaut kurz weg. "Ja, er ist hier unten. Sehr zu unserem Leidwesen."~ */
  IF ~~ THEN REPLY #58766 /* ~"Warum sagst du das?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58767 /* ~"Die Wachen setzen uns als Hilfsarbeiter bei der Erweiterung des Gefängnisses ein. Wir graben neue Zellen, wann immer sie gebraucht werden. Bei einem dieser Projekte sind die Arbeiter in einen neuen Sektor vorgestoßen, und dort fanden sie Trias." Er hält inne, und sein Gesicht verfinstert sich. "Bald darauf brach hier unten die Pest aus."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58768 /* ~"Ja. Davon habe ich schon gehört. Wie schlimm war es denn?"~ */ GOTO 16
  IF ~~ THEN REPLY #58769 /* ~"Pest?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #58770 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58771 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.0
  SAY #58772 /* ~"Schlimm... etwa hundert Tote, eine ganze Reihe von Infizierten." Er hält inne. "Es scheint aber, als wäre sie inzwischen unter Kontrolle. Es hat in letzter Zeit keine neuen Fälle mehr gegeben."~ */
  IF ~~ THEN REPLY #58773 /* ~"Ich verstehe. Und wo finde ich nun Trias?"~ */ GOTO 17
  IF ~~ THEN REPLY #58774 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58775 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58776 /* ~Er schüttelt den Kopf. "Ich weiß nicht, ich war nie an der neuen Ausgrabungsstelle. Sieh dich einfach weiter hier um, dann wirst du ihn schon finden."~ */
  IF ~~ THEN REPLY #58777 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58778 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY #58779 /* ~Er nickt. "Ja, eine schlimme Pest. Sie traf uns schwer, gleich nachdem wir seine Kammer geöffnet hatten. Hat sich wie ein Feuer ausgebreitet."~ */
  IF ~~ THEN REPLY #58780 /* ~"Wie schlimm war es denn?"~ */ GOTO 16
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #58781 /* ~Du siehst Peato, den Dieb. "Hallo, da bist du ja wieder. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #58782 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58783 /* ~"Nichts. Leb wohl."~ */ EXIT
END
