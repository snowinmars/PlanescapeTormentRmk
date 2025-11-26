// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37758 /* ~Du siehst einen Mann mit traurigem Gesicht. Er sieht dich hoffnungslos an, als du näher kommst.~ */
  IF ~~ THEN REPLY #37770 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37771 /* ~Beachte den Mann nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37759 /* ~Er wirft einen Blick auf seine Umgebung, dann sieht er dich wieder an. "Willste was von mir, Dussel?"~ */
  IF ~~ THEN REPLY #37772 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37773 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37760 /* ~Er schüttelt den Kopf. "Sieh mal, Dussel, ich bin wirklich nicht in der richtigen Lage, um deine schwachsinnigen Fragen zu beantworten. Pack ein!"~ */
  IF ~~ THEN REPLY #37774 /* ~"He, was ist denn hier los?"~ */ GOTO 3
  IF ~~ THEN REPLY #37775 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37761 /* ~Er starrt dich an. "Dies ist das Versteigerungspodest, Planloser. Ich soll als Sklave verkauft werden! Und jetzt geh stranden."~ */
  IF ~~ THEN REPLY #37776 /* ~"Warum wirst du verkauft?"~ */ GOTO 4
  IF ~~ THEN REPLY #37777 /* ~"Was bedeutet 'stranden gehen'?"~ */ GOTO 9
  IF ~~ THEN REPLY #37778 /* ~"Schön, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 9.0
  SAY #37762 /* ~Er wirft dir einen frustrierten Blick zu. "Klar, ich hab' eine solch wundervolle Persönlichkeit, daß ich mir ausgerechnet hatte, ich könnt ein bißchen Klimper verdienen, wenn ich mich selbst verkaufte. Na, wie wär's, wenn das deine letzte Frage wäre, du übergeschnappter Schlucker!"~ */
  IF ~~ THEN REPLY #37779 /* ~"Ich möchte den wahren Grund wissen, weshalb du verkauft wirst."~ */ GOTO 5
  IF ~~ THEN REPLY #37780 /* ~"Nichts dagegen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37763 /* ~Seine Miene verzieht sich ärgerlich, dann scheint er sich jedoch dreinzuschicken. "Ich hab' wen zur Ader gelassen, okay? War betrunken, wir hatten 'nen Streit, und ich hab' ihm ne Klinge 'reingerammt." Er seufzt. "Ich bin den Mächten dankbar, daß er nicht dran gestorben ist. Wäre er tot, wär's der Knast für mich."~ */
  IF ~~ THEN REPLY #37781 /* ~"Was ist das?"~ */ GOTO 6
  IF ~~ THEN REPLY #37782 /* ~"Das Gefängnis?"~ */ GOTO 7
  IF ~~ THEN REPLY #37783 /* ~"Ich verstehe. Du wirst also wegen einer Schlägerei als Sklave verkauft?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37764 /* ~Er runzelt die Stirn. "Du bist auch so' planloser Schlucker, was? Ne Klinge ist ein Messer, du Idiot." Er sieht in eine andere Richtung. "Ich werde jetzt keine Fragen mehr beantworten. Verschwinde."~ */
  IF ~~ THEN REPLY #37784 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37765 /* ~Er runzelt die Stirn. "Ja, der Knast. Wenn du da landest, dann war's das für einen guten Teil deines Lebens, und da ist es nicht grade angenehm. Als Sklave wird's mir nicht so schlecht ergehen, und es wird auch nicht für so lange Zeit sein." Er sieht in eine andere Richtung. "Ich werde jetzt keine Fragen mehr beantworten. Verschwinde."~ */
  IF ~~ THEN REPLY #37785 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #37766 /* ~Er runzelt die Stirn. "Ja... Der Typ, den ich abgestochen hab', war ein Freund, deshalb hat er nicht auf Anklage gedrungen. Ich kam trotzdem vor Gericht, und die haben mich zur Versteigerung verurteilt." Er sieht in eine andere Richtung. "Ich werde jetzt keine Fragen mehr beantworten. Los, verzieh dich."~ */
  IF ~~ THEN REPLY #37786 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #37767 /* ~Er grinst dich an. "Will heißen: mach einen langen Spaziergang durch ein Einbahn-Portal, und komm nicht wieder!"~ */
  IF ~~ THEN REPLY #37787 /* ~"Ich verstehe. Und warum wirst du verkauft?"~ */ GOTO 4
  IF ~~ THEN REPLY #37788 /* ~"Schön, leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37768 /* ~Du siehst einen Mann mit traurigem Gesicht. Er sieht dich hoffnungslos an, als du näher kommst. "Nicht schon wieder du. Was muß ich denn noch tun, damit du mich in Ruhe läßt?"~ */
  IF ~~ THEN REPLY #37789 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #37790 /* ~"Schon gut. Leb wohl.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37769 /* ~Er sieht dich etwas ärgerlich an. "Mann, ich habe keine Antworten für dich. Pack ein, Fusler!"~ */
  IF ~~ THEN REPLY #37791 /* ~"Na gut. Leb wohl."~ */ EXIT
END
