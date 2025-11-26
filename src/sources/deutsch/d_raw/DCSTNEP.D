// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTNEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTNEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9789 /* ~Du siehst einen gutaussehenden jungen Mann, der schick gekleidet ist. Er macht einen ziemlich aufgeregten Eindruck.~ */
  IF ~~ THEN REPLY #9790 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #9791 /* ~Laß ihn in Frieden.
~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9794 /* ~Er dreht sich zu dir um und schaut dich verärgert an. "Laß das, Dussel. Deiner Sorte habe ich nichts zu sagen." Er schaut weg.~ */
  IF ~~ THEN REPLY #9797 /* ~"Sieh mal, ich hätte da bloß ein paar Fragen an dich."~ */ GOTO 2
  IF ~~ THEN REPLY #9798 /* ~"Tut mir leid, daß ich dich belästigt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9799 /* ~Er dreht sich wieder zu dir um, sichtlich verärgert über die Störung. "Schließ ab. Ich will hier die Hinrichtung verfolgen, und du laberst mich voll. Laß mich in Ruhe." Er dreht sich wieder weg.~ */
  IF ~~ THEN REPLY #9800 /* ~Tipp ihm auf die Schulter: "Ich habe jetzt wirklich genug von deinem Benehmen. Beantworte mir ein paar Fragen, oder ich polier dir deine hübsche Fresse."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nephew_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #9804 /* ~"Wie du meinst. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9805 /* ~Er dreht sich zu dir um. Sein Kopf ist hochrot vor Wut: "Wie kannst du es wagen! Ganz zufällig bin ich der Neffe von..."~ */
  IF ~~ THEN REPLY #9806 /* ~Unterbrich ihn: "Und wenn du mit der Dame selbst verwandt wärst, das würde mich nicht kümmern. Die nächsten Worte aus deiner Knochenschüssel sollten lieber lauten 'wie kann ich dir helfen'."~ */ GOTO 4
  IF ~~ THEN REPLY #9808 /* ~Unterbrich ihn: "Schon gut. Du bist der Mühe wohl kaum wert."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9810 /* ~Der junge Mann sieht aus, als würde er gleich explodieren. Er schaut suchend in die Menge, findet aber keine Unterstützung. "W-wie kann ich dir helfen?"~ */
  IF ~~ THEN REPLY #9812 /* ~"Siehst du. War doch gar nicht so schwer, oder? Ich hätte da ein paar Fragen an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #9814 /* ~Lächle: "Das hast du schon. Der demütige Blick auf deinem Gesicht genügt mir schon. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 9.0 11.0 12.0
  SAY #9815 /* ~"Ich höre."~ */
  IF ~~ THEN REPLY #9817 /* ~"Was ist denn los?"~ */ GOTO 6
  IF ~~ THEN REPLY #9818 /* ~"Wer hat hier in der Gegend was zu sagen?"~ */ GOTO 8
  IF ~~ THEN REPLY #9820 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei irgendwo in der Stadt."~ */ GOTO 11
  IF ~~ THEN REPLY #9821 /* ~"Irgendwelche Neuigkeiten aus der Gegend?"~ */ GOTO 12
  IF ~~ THEN REPLY #9822 /* ~"Macht nichts. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9823 /* ~"Eine einfache Hinrichtung. Sonst nichts."~ */
  IF ~~ THEN REPLY #9825 /* ~"Was für ein Verbrechen hat er denn begangen?"~ */ GOTO 7
  IF ~~ THEN REPLY #9826 /* ~"Ich verstehe. Dann hier die nächste Frage."~ */ GOTO 5
  IF ~~ THEN REPLY #9827 /* ~"Vielen Dank. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9829 /* ~"Ich weiß nicht. Du kannst dich im Büro der Verwaltung erkundigen."~ */
  IF ~~ THEN REPLY #9831 /* ~"Also gut. Werd' ich tun. Darf ich dich noch etwas anderes fragen?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #9833 /* ~Er lächelt dich vielsagend an. "Mein Onkel, Tovus Giljaf. "~ */
  IF ~~ THEN REPLY #9836 /* ~"Wisch dir das affektierte Lächeln aus'm Gesicht, sonst tu ich's."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #9838 /* ~Das Lächeln erstirbt schnell. Er blickt dich mürrisch an, ohne ein Wort zu sagen.~ */
  IF ~~ THEN REPLY #9839 /* ~"Na, das ist doch schon viel besser. Ich habe da noch ein paar Fragen an dich."
~ */ GOTO 5
  IF ~~ THEN REPLY #9841 /* ~"Ich schätze, ich hab' genug von dir. Leb wohl."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #9843 /* ~"Und auch dir einen schönen Tag. Ich werde meinem Onkel von dir erzählen... Narbengesicht." Er wendet sich erneut der Menge zu.~ */
  IF ~~ THEN REPLY #9845 /* ~"Tu das nur."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #9846 /* ~Er schaut dich geringschätzig an. "Hmpf. Ein Deva in Verdammnis. So was sieht man nicht alle Tage. Entweder du täuschst dich oder du bist ein Hohlkopf."~ */
  IF ~~ THEN REPLY #9847 /* ~"Also gut, nächste Frage."~ */ GOTO 5
  IF ~~ THEN REPLY #9848 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #9849 /* ~Er zuckt mit den Achseln. "Nicht, daß ich wüßte."~ */
  IF ~~ THEN REPLY #9850 /* ~"Ich verstehe. Vielleicht kannst du mir was andres erzählen."~ */ GOTO 5
  IF ~~ THEN REPLY #9851 /* ~"Dann leb wohl."~ */ EXIT
END
