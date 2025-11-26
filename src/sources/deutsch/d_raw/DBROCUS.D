// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2887 /* ~Dieser freundlich aussehende ältere Mann dreht sich um, als du näherkommst, und nickt dir höflich zu. "Sei gegrüßt. Kann ich dir irgendwie helfen?"~ */
  IF ~~ THEN REPLY #2888 /* ~"Ja, ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #39381 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #39382 /* ~Der alte Mann dreht sich um und lächelt. "Sei nochmals gegrüßt. Gibt es etwas, das ich für dich tun kann?"~ */
  IF ~~ THEN REPLY #39383 /* ~"Ja, ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #39384 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.1 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0
  SAY #39385 /* ~"Natürlich, leg los, junger Mann."~ */
  IF ~~ THEN REPLY #39386 /* ~"Was machst du hier?"~ */ GOTO 3
  IF ~~ THEN REPLY #39387 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39388 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68124 /* ~"Was kannst du mir über die stumme Hure erzählen?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39389 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39390 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39391 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39392 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39393 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 11
  IF ~~ THEN REPLY #39394 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #39395 /* ~Der alte Mann kichert wohlwollend. "Was die meisten Männer hier tun, junger Freund... mit den schönen Damen des Bordells plaudern."~ */
  IF ~~ THEN REPLY #39396 /* ~"Würdest du eine von ihnen besonders empfehlen?"~ */ GOTO 4
  IF ~~ THEN REPLY #39397 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #39398 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39399 /* ~Er streicht sich den Bart und runzelt gedankenvoll die Stirn. "Da müßte ich sagen... Nein, streich das. Tja, junger Mann, ich bin nicht sicher, was du überhaupt willst. Wenn ich wüßte, was für eine Art von Konversation du unterhaltsam findest, wäre es mir vielleicht eher möglich, dir einen Vorschlag zu machen."~ */
  IF ~~ THEN REPLY #39400 /* ~"Das ist schon in Ordnung. Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #39401 /* ~"Ich glaub, dann red ich besser selbst mit ihnen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #39402 /* ~Der alte Mann lächelt, und seine Augen funkeln. "Ich kann dir sagen, daß es ein ausgesprochen *wunderbares* Etablissement ist! Die Damen hier sind oh, so zauberhaft - sogar diese köstlich geschwätzige Kimasxi, auf ihre eigene, ganz besondere Art. Aber ich bitte dich junger Herr, sprich doch mit Grace, der Gefallenen. Als Eigentümerin des Bordells kann sie dir sicher viel tiefere Einsichten in dieses Ort bieten als ich."~ */
  IF ~~ THEN REPLY #39403 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #39404 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 2.3
  SAY #39405 /* ~"Ah, ja... Dieses liebliche Wesen ist Ecco. Ein süßes junges Ding... und so eine gute Konversationspartnerin. Nicht nur, weil sie stumm ist, nein, sondern weil sie einfach so ein gewisses *Extra* hat." Er seufzt glücklich. "Ich bin allerdings nicht sicher, *warum* sie nicht spricht."~ */
  IF ~~ THEN REPLY #39406 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #39407 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #39408 /* ~"Ravel?" Der alte Mann zieht eine Augenbraue hoch. "Ravel Rätselschön, die Nachthexe? Wie erschreckend! Nein, das ist mir völlig neu. Aber das ist ein ganz schönes Gerücht, ob es nun wahr ist oder nicht."~ */
  IF ~~ THEN REPLY #39409 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #39410 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #39411 /* ~"Nein, das weiß ich nicht. Und ich fürchte, ich würde es nicht mal merken, wenn er direkt unter meiner Nase wäre. Ich habe fast überhaupt keinen Geruchssinn mehr, weißt du." Er tippt sich an die Nase. "Schade, ich weiß, aber wir werden alle nicht jünger. Ich hab gehört, daß Vivian immer ausgesprochen betörend duftet..."~ */
  IF ~~ THEN REPLY #39412 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #39413 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #39414 /* ~Er schüttelt den Kopf. "Ich kenne den Schleier, von dem du sprichst. Ein- oder zweimal habe ich Marissa außerhalb des Bordells gesehen, und da hat sie ihren Schleier getragen. Aber ich weiß nicht, wo er jetzt ist."~ */
  IF ~~ THEN REPLY #39415 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #39416 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #39417 /* ~"Ich weiß nicht viel, nur die Legenden, die beinahe jedes Kind schon gehört hat: Sie ist eine Nachthexe, und zwar eine besonders böse, und sie wurde vor langer, langer Zeit aus Sigil verbannt."~ */
  IF ~~ THEN REPLY #39418 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #39419 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #39420 /* ~Der alte Mann runzelt die Stirn und kratzt sich am Bart. "Wenn es eine zehnte Schülerin *gibt*, mein junger Freund, würde ich sie nur zu gern treffen! Aber soweit ich weiß, gibt es keine."~ */
  IF ~~ THEN REPLY #39421 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #39422 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
