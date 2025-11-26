// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37845 /* ~Du siehst einen dünnen jungen Mann, dessen Gesichtszüge etwas Rattenhaftes haben. Er scheint die Leute um sich herum genau zu studieren. Er bemerkt dich und starrt dich ausdruckslos an.~ */
  IF ~~ THEN REPLY #37869 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37870 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37846 /* ~Er starrt dich weiter an. Dann sieht er dich von oben bis unten genau an. Endlich blickt er dir in die Augen. "Ja, guten Tag."~ */
  IF ~~ THEN REPLY #37871 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37872 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 6.1 7.0 8.1 9.0 10.0 11.0 12.0 15.0 16.2 17.2 18.0
  SAY #37847 /* ~Er lächelt dich kalt an. "Ja?"~ */
  IF ~~ THEN REPLY #37873 /* ~"Was ist dies für ein Ort?"~ */ GOTO 3
  IF ~~ THEN REPLY #37874 /* ~"Kannst du mir etwas über diesen Bezirk erzählen?"~ */ GOTO 9
  IF ~~ THEN REPLY #37875 /* ~"Kannst du mir etwas über die anderen Bezirke erzählen?"~ */ GOTO 10
  IF ~~ THEN REPLY #37876 /* ~"Was weißt du über die Stadt Sigil?"~ */ GOTO 11
  IF ~~ THEN REPLY #37877 /* ~"Gibt es hier irgend etwas Lohnendes zu sehen?"~ */ GOTO 12
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37878 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 13
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37879 /* ~"Ich vermisse einen Schädel... Kennst du vielleicht jemanden, der so etwas brauchen könnte?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #37880 /* ~"Ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37848 /* ~Er starrt dich einen Moment lang mit ausdruckloser Miene an. "Dies ist das Versteigerungspodest. Hier werden Sklaven gehandelt."~ */
  IF ~~ THEN REPLY #37881 /* ~"Warum wirst du verkauft?"~ */ GOTO 4
  IF ~~ THEN REPLY #37882 /* ~"Ich wußte gar nicht, daß es in Sigil Sklaverei gibt."~ */ GOTO 5
  IF ~~ THEN REPLY #37883 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37884 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37852 /* ~Er sieht dich fest an, ohne jegliche Regung zu zeigen. "Ich habe Schulden und kann sie nicht zurückzahlen. Ich soll verkauft werden, um meine Schulden zu begleichen."~ */
  IF ~~ THEN REPLY #37885 /* ~"Ich wußte gar nicht, daß es in Sigil Sklaverei gibt."~ */ GOTO 5
  IF ~~ THEN REPLY #37886 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37887 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37853 /* ~Er zögert, bevor er antwortet. "Sklaverei gibt es überall; die meisten Leute kriegen es nur einfach nicht mit. Wir sind Sklaven unserer Gefühle, unseres Bedürfnisses, zu essen und zu atmen, unseres Bedürfnisse abzuführen, selbst der Gesetze, mit denen wir uns regieren..." Er zuckt die Achseln. "Wir sind Sklaven."~ */
  IF ~~ THEN REPLY #37888 /* ~"Ich verstehe, was du meinst."~ */ GOTO 6
  IF ~~ THEN REPLY #37889 /* ~"Das sehe ich anders."~ */ GOTO 8
  IF ~~ THEN REPLY #37890 /* ~"Ich verstehe. Ich habe ein paar Fragen..."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37855 /* ~Er nickt. "Nur wenn du erkennst, daß du Sklave eines gleichgültigen Multiversums bist, kannst du Schritte zu deiner Selbstbefreiung ergreifen."~ */
  IF ~~ THEN REPLY #37891 /* ~"Was für Schritte?"~ */ GOTO 7
  IF ~~ THEN REPLY #37892 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37893 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37856 /* ~Er schüttelt den Kopf. "Nur du selbst kannst diese Frage beantworten. Du mußt dafür in dich hineinsehen..." Er hüllt sich in Schweigen und starrt dich weiter mit leerem Blick an.~ */
  IF ~~ THEN REPLY #37894 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37895 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #37857 /* ~Er zuckt die Achseln. "Dann bist du Sklave deiner eigenen Unkenntnis. Wenn du das erst einmal erkannt hat, kannst du Schritte zu deiner Befreiung ergreifen."~ */
  IF ~~ THEN REPLY #37896 /* ~"Was für Schritte?"~ */ GOTO 7
  IF ~~ THEN REPLY #37897 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37898 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1
  SAY #37858 /* ~Er sieht dich fest an. "Dies ist der Untere Bezirk. Er ist das Heim der Glücklichen; derer, die nicht in den Slums des Stocks leben. Es ist das Heim der Unglücklichen - derer, die sich die Pracht des Bezirks der Dame nicht leisten können. Es ist die Heimat der Hoffenden -  derer, die sich mehr vorstellen. Es ist die Heimat der Hoffnungslosen - derer, die nichts als ihre eigene Verzweiflung sehen..." Er zuckt die Achseln.~ */
  IF ~~ THEN REPLY #37899 /* ~"Äh... Ich verstehe. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37900 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37859 /* ~Er zuckt die Achseln. "Die Bezirke lassen sich gut mit einem Theaterstück und den Schauspielern darin vergleichen. Die Kulissen ändern sich von Szene zu Szene, aber die Personen auf der Bühne bleiben die gleichen. Da kannst du kreuz und quer durch Sigil reisen und wirst feststellen, daß das so ist." Er sieht dich mit ausdrucksloser Miene an.~ */
  IF ~~ THEN REPLY #37901 /* ~"Ja... also... ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37902 /* ~"Ich glaube, ich sollte gehen, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3
  SAY #37860 /* ~Er betrachtet seine Umgebung mit berechnendem Blick und sachlichem Ausdruck. "Sigil ist so, wie du es sehen willst. Für einige ist es das Zentrum von allem, für andere ist es der Nabel von nichts. Für einige ist es der Anfang aller Reisen, für andere ist es das Ende." Er starrt dich mit kaltem Blick an. "Was interessiert dich das schon?"~ */
  IF ~~ THEN REPLY #37903 /* ~"Ich bin nicht sicher... Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37904 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #37862 /* ~Er breitet seine Arme aus, als wolle er die ganze Welt umfassen, und sieht dich mit leeren Augen an. "Alle Dinge haben einen Wert; alle Dinge sind wertlos. Es hat Wert, alle Dinge anzusehen." Er senkt die Arme. "Wir betrachten die Welt als Individuen, und als Individuum weisen wir Werte zu. Etwas, das für mich von Wert ist, mag für dich wertlos sein. Deshalb lohnt es sich, alle Dinge zu sehen, damit wir uns das Universum errichten können, in dem wir leben wollen."~ */
  IF ~~ THEN REPLY #37905 /* ~"Äh... Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37906 /* ~"Ich muß jetzt wirklich weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.5
  SAY #37863 /* ~Er neigt den Kopf zur Seite und zögert, bevor er dir antwortet. "Der 'Herr der Knochen' hat nicht gerne Besuch. Wenn er deine Gegenwart wünschte, würde er nach dir schicken."~ */
  IF ~~ THEN REPLY #37907 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 14
  IF ~~ THEN REPLY #37908 /* ~"Weißt du, wo ich ihn finden kann?"~ */ GOTO 15
  IF ~~ THEN REPLY #37909 /* ~"Er hat nach mir geschickt. Er hat etwas gestohlen, was mir gehört."~ */ GOTO 16
  IF ~~ THEN REPLY #37910 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0
  SAY #37864 /* ~"Er ist ein Hohepriester des Todes und als solcher selbst unsterblich. Er hat die Macht über Leben und Tod und übt sie mit voller Überzeugung aus." Er denkt einen Moment nach. "Er ist die höchste Macht in Sigil und mit ihm ist nicht zu spaßen."~ */
  IF ~~ THEN REPLY #37911 /* ~"Weißt du, wo ich ihn finden kann?"~ */ GOTO 15
  IF ~~ THEN REPLY #37912 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0 16.0 17.1
  SAY #37865 /* ~Er wendet sich von dir ab und blickt in die Ferne. "Du kannst ihn in seinem Heim, in den 'Knochen der Nacht' finden. Das ist hier in der Gegend, aber ich weiß nicht genau, wo." Er sieht dich aus leblosen Augen an. "Such einfach weiter nach ihm. Entweder findest du ihn oder er dich. Zwei Wege zum selben Ziel."~ */
  IF ~~ THEN REPLY #37913 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37914 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY #37866 /* ~Er schüttelt den Kopf. "Eigentum kommt und geht. Sei dankbar für das, was du noch besitzt."~ */
  IF ~~ THEN REPLY #37915 /* ~"Weißt du vielleicht, wo ich ihn finden kann?"~ */ GOTO 15
  IF ~~ THEN REPLY #37916 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 14
  IF ~~ THEN REPLY #37917 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37918 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #37867 /* ~Er nickt langsam. "Ja. Ich könnte mir denken, daß das das Werk von Lothar, dem 'Herrn der Knochen', war."~ */
  IF ~~ THEN REPLY #37919 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 14
  IF ~~ THEN REPLY #37920 /* ~"Wo kann ich ihn finden?"~ */ GOTO 15
  IF ~~ THEN REPLY #37921 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37922 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37868 /* ~Du siehst den dünnen jungen Mann mit den rattenhaften Gesichtszügen wieder. Er bemerkt dich und starrt dich mit leerem Blick an. "Unsere Wege kreuzen sich von neuem."~ */
  IF ~~ THEN REPLY #37923 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37924 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
