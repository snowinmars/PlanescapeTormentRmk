// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCHLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCHLP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3166 /* ~Du siehst einen älteren Mann, der am Rand einer kleinen Menschenmenge steht. Sie haben sich um etwas versammelt, das wie eine Guillotine aussieht.~ */
  IF ~~ THEN REPLY #3167 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #13656 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13657 /* ~Er schaut dich kurz an und dreht sich weg. Dann ändert er jedoch seine Meinung und dreht sich doch wieder zu dir hin. Seine Augen gehen an dir auf und ab und überprüfen dich sorgfältig, während er langsam seinen Kopf schüttelt. "Ihr seid ja 'n Anblick, Herr. Kann nich sagen, daß ich je einen mit so vielen Narben gesehen habe. Was habt Ihr getan? Ganz allein mit Horden von Baator gekämpft?"~ */
  IF ~~ THEN REPLY #13658 /* ~"Ich habe ein paar Fragen an dich."~ */ GOTO 2
  IF ~~ THEN REPLY #13659 /* ~"Das geht dich nichts an, Alter."~ */ GOTO 7
  IF ~~ THEN REPLY #13660 /* ~"Ich hab' ein paar Schlachten miterlebt, meine Narben beweisen es."~ */ GOTO 8
  IF ~~ THEN REPLY #13661 /* ~"Was geht hier vor sich?"~ */ GOTO 4
  IF ~~ THEN REPLY #13662 /* ~"Ach, egal."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 8.0
  SAY #13663 /* ~Er runzelt die Stirn. "Seht Ihr irgendwo an mir eine Tätowierung mit dem Wort 'Weiser'?" Er sieht dich an, als ob er wirklich eine Antwort auf diese Frage erwartet.~ */
  IF ~~ THEN REPLY #13664 /* ~"Ich... Ähm, nein. Ich dachte nur, daß ein Mann, der so reich an Jahren ist wie du, so einiges an Weisheit erworben hat, die er dann an weniger Begünstigte weitergeben könnte..."~ */ GOTO 3
  IF ~~ THEN REPLY #13665 /* ~"Schau, ich brauche nur ein paar Antworten. Kannst du mir da weiterhelfen?"~ */ GOTO 7
  IF ~~ THEN REPLY #13666 /* ~"Ach, egal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13667 /* ~Aus seinem Stirnrunzeln wird ein Lächeln, und er beginnt zu kichern. "Ihr seid schon ne Nummer, Herr. 'So einiges an Weisheit', Himmel." Er macht einen Moment lang Pause. "Also gut, Ihr habt Euch ein paar Antworten erkauft. Womit kann ich Euch dienen?"~ */
  IF ~~ THEN REPLY #13668 /* ~"Zuerst mal, was geht hier vor?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.0 8.1
  SAY #13669 /* ~Er gestikuliert über seine Schulter. "Seht Ihr das Hackebeilchen da? Heut wird so ein Schlucker um einen Kopf kürzer gemacht. Kein Anblick, den man alle Tage geboten bekommt."~ */
  IF ~~ THEN REPLY #13670 /* ~"Was für ein Verbrechen hat er begangen?"~ */ GOTO 5
  IF ~~ THEN REPLY #13671 /* ~"Oh. Ich wollte dich etwas anderes fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #13672 /* ~"Ich verstehe. Also, vielen Dank für deine Zeit. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #13673 /* ~"Ich weiß nich so recht. Vielleicht hat er nen anderen Schlucker umgebracht, vielleicht hat aber auch nur jemand den Spieß gegen ihn gedreht und ihn so unters Hackebeil geschickt. Das kann man hier nie so recht wissen."~ */
  IF ~~ THEN REPLY #13674 /* ~"Den Spieß gedreht?"~ */ GOTO 6
  IF ~~ THEN REPLY #13675 /* ~"Ich habe noch ein paar andere Fragen an dich."~ */ GOTO 9
  IF ~~ THEN REPLY #13676 /* ~"Oh... ich danke dir. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13677 /* ~Er grinst dich an und kichert. "Ihr seid hier neu, was? 'Den Spieß gedreht.' Betrogen, reingelegt, von jemandem den den Rücken aufgeschlitzt bekommen, sozusagen. Passiert schon mal in Verdammnis."~ */
  IF ~~ THEN REPLY #13678 /* ~"Verstehe. Erzähl mir etwas anderes..."~ */ GOTO 9
  IF ~~ THEN REPLY #13679 /* ~"Hmm. Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1
  SAY #13680 /* ~Er sieht dich böse an und macht dann eine rüde Geste. "Pack ein, Dussel!" Er kehrt dir den Rücken zu.~ */
  IF ~~ THEN REPLY #13681 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY #13682 /* ~Er nickt zustimmend. "Ja, wirklich... Also was kann ich für Euch tun?"~ */
  IF ~~ THEN REPLY #13683 /* ~"Ich habe ein paar Fragen an dich."~ */ GOTO 2
  IF ~~ THEN REPLY #13684 /* ~"Du könntest mir sagen, was hier vor sich geht."~ */ GOTO 4
  IF ~~ THEN REPLY #13685 /* ~"Nichts, ehrlich gesagt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1 5.1 6.0 10.0 11.0 12.0 13.1 14.0
  SAY #13686 /* ~"Klar." Er wartet auf deine Fragen.~ */
  IF ~~ THEN REPLY #13687 /* ~"Ich suche nach einem Deva. Er soll sich hier irgendwo in Verdammnis aufhalten."~ */ GOTO 10
  IF ~~ THEN REPLY #13688 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 11
  IF ~~ THEN REPLY #13689 /* ~"Wer hat hier das Kommando?"
~ */ GOTO 12
  IF ~~ THEN REPLY #13690 /* ~"Was gibt's Neues in der Stadt?"~ */ GOTO 13
  IF ~~ THEN REPLY #13691 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13692 /* ~"Man sagt, daß es einen Deva hier in der Stadt gibt... ich hab' aber keine Ahnung wo. Ein Deva in der Stadt würde auf jeden Fall jede Menge Aufmerksamkeit erregen." Er macht eine Pause, um nachzudenken. "Ich hab' keine Antwort für Euch. Fragt mal weiter rum. Irgend jemand hat ihn wahrscheinlich gesehen."~ */
  IF ~~ THEN REPLY #13693 /* ~"Noch 'ne Frage."~ */ GOTO 9
  IF ~~ THEN REPLY #13694 /* ~"Du warst wirklich sehr hilfreich. Ich muß jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #13695 /* ~Er macht eine Pause, um nachzudenken, und sieht sich dann um. "Verdammnis ist ein Misthaufen, so einfach is das. Hier muß ein Schleifer am besten Augen im Hinterkopf haben... Das is aber alles, was ich sagen mag."~ */
  IF ~~ THEN REPLY #13696 /* ~"In Ordnung. Beantworte mir noch eine andere Frage."~ */ GOTO 9
  IF ~~ THEN REPLY #13697 /* ~"Ich danke dir für deine Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #13698 /* ~"Das wird wohl Tovus Giljaf sein. Den findet Ihr im Verwaltungsbüro. Noch einen guten Rat an Euch. Steckt Eure Nase nicht in seine Angelegenheiten. Das wär nich das Klügste, was Ihr tun könntet, und es könnte Euch Kopf und Kragen kosten." Er gestikuliert zur Guillotine hinter ihm.~ */
  IF ~~ THEN REPLY #13699 /* ~"Ich werd's mir merken. Noch eine andere Sache..."~ */ GOTO 9
  IF ~~ THEN REPLY #13700 /* ~Ich verstehe. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #13701 /* ~Er sieht einen Moment lang tief in Gedanken versunken aus. "Tja... man sagt sich, daß die Tochter vom Besudelten Barse verschwunden ist. Er is deshalb 'n bißchen übergeschnappt. Was anderes fällt mir nich ein, was noch erwähnenswert wäre."~ */
  IF ~~ THEN REPLY #13702 /* ~"Wer ist denn dieser Besudelte Barse?"~ */ GOTO 14
  IF ~~ THEN REPLY #13703 /* ~"Ich habe noch eine andere Frage an dich."~ */ GOTO 9
  IF ~~ THEN REPLY #13704 /* ~"Ich danke dir für deine Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #13705 /* ~"Er is der Barkeeper im Verrätertor. Das is die Tränke vor Ort für die Fusler. Das is da runter, glaub ich." Er macht eine vage Geste in irgendeine grobe Richtung.~ */
  IF ~~ THEN REPLY #13706 /* ~"Erzähl mir noch mehr."~ */ GOTO 9
  IF ~~ THEN REPLY #13707 /* ~"Ich muß dich jetzt verlassen. Leb wohl."~ */ EXIT
END
