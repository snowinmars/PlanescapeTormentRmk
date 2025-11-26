// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGISCORL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGISCORL~

IF ~  Global("Giscorl","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20655 /* ~Du siehst einen spindeldürren Kaufmann, dessen Kinn von grauen und roten Bartstoppeln geziert wird. Er trägt mehrere Schichten leuchtend bunter Roben, so daß er aussieht wie eine Flagge mit Armen und Beinen. Er zittert leicht, während du in ansiehst.~ */
  IF ~~ THEN REPLY #20656 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21068 /* ~"Bist du Giscorl?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21069 /* ~Beachte den Händler nicht und sieh dir den Rest des Marktes an.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #21056 /* ~"Ich, Giscorl." Er verbeugt sich und breitet die zitternden Hände aus. Dabei bemerkst du, das seine Hände und Arme eine verwachsene Masse von schwarzem Narbengewebe sind... als ob sie einst starke Verbrennungen erlitten hätten.~ */
  IF ~~ THEN REPLY #21070 /* ~"Äh, was verkaufst du?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #21071 /* ~"Äh... wobei hast du dir deine Hände so verletzt?"~ */ DO ~SetGlobal("Giscorl","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21072 /* ~"Ich bin hier, um die Wäsche für jemanden abzuholen... Mebbeth... die Amme... Lumpensammler-Platz?"~ */ GOTO 6
  IF ~~ THEN REPLY #21073 /* ~"Verzeih, daß ich dich gestört hab'. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Giscorl","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21057 /* ~Giscorl wendet sich dir zu. "Ich, Giscorl." Er verbeugt sich und breitet seine zitternden, vernarbten Hände aus. "Ich, Giscorl."~ */
  IF ~  Global("Giscorl","GLOBAL",2)
~ THEN REPLY #21074 /* ~"Kann ich mal sehen, was du so hast?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Giscorl","GLOBAL",1)
~ THEN REPLY #21075 /* ~"Und was machst du?"~ */ GOTO 3
  IF ~~ THEN REPLY #21076 /* ~"Äh... wobei hast du dir deine Hände so verletzt?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21077 /* ~"Ich bin hier, um die Wäsche für jemanden abzuholen... Mebbeth... die Amme... Lumpensammler-Platz?"~ */ GOTO 6
  IF ~~ THEN REPLY #21078 /* ~"Nicht heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1
  SAY #21058 /* ~"Giscorl kauft Stoff." Giscorls Stimme erinnert an das Ticken einer Uhr; sie ist dumpf und bedächtig. "Giscorl verkauft Stoff, wäscht Stoff, flickt Stoff und..." Er deutet mit seinen zitternden Händen auf seine Kleiderschichten. "...trägt Stoff."~ */
  IF ~~ THEN REPLY #21079 /* ~"Kann ich mal sehen, was du so hast?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21080 /* ~"Äh... wobei hast du dir deine Hände so verletzt?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21081 /* ~"Verstehe. Hör mal, ich bin hier, um die Wäsche für jemanden abzuholen... Mebbeth... die Amme... Lumpensammler-Platz?"~ */ GOTO 6
  IF ~~ THEN REPLY #21082 /* ~"Heute nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 3.1 12.1
  SAY #21059 /* ~Giscorl scheint dich nicht gehört zu haben; er antwortet nur wieder im gleichen dumpfen Tonfall mit seinem Sermon. "Giscorl kauft Stoff, verkauft Stoff, wäscht Stoff, flickt Stoff und..." Er deutet mit seinen zitternden Händen auf seine Kleiderschichten. "...trägt Stoff."~ */
  IF ~~ THEN REPLY #21083 /* ~"Kann ich mal sehen, was du so hast?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #21084 /* ~"Ich habe gefragt: wobei hast du dir die Hände so verletzt?"~ */ GOTO 5
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21085 /* ~"Verstehe. Hör mal, ich bin hier, um die Wäsche für jemanden abzuholen... Mebbeth... die Amme... Lumpensammler-Platz?"~ */ GOTO 6
  IF ~~ THEN REPLY #21086 /* ~"Heute nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #21060 /* ~Giscorls Sermon gerät ins Stocken. "Giscorl k-kauft Stoff, v-verkauft Stoff, w-wäscht Stoff und..." Er deutet wieder auf sich selbst, aber seine Hände zittern so stark, daß er nicht einmal seinen Spruch zu Ende bringen kann.~ */
  IF ~~ THEN REPLY #21087 /* ~"Macht nichts. Kann ich sehen, was du hast?"~ */ DO ~StartStore("Giscorl",Protagonist)
~ EXIT
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21088 /* ~"Ach, egal. Hör mal, ich bin hier, um die Wäsche für jemanden abzuholen... Mebbeth... die Amme... Lumpensammler-Platz?"~ */ GOTO 6
  IF ~~ THEN REPLY #21089 /* ~"Verzeih, daß ich dich gestört hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.3 3.2 4.2 5.1 12.2
  SAY #21061 /* ~Giscorl blinzelt. "Stoff waschen?"~ */
  IF ~~ THEN REPLY #21090 /* ~"Ja, Mebbeth... Lumpensammler-Platz?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #21062 /* ~"Eh... Lumpen? Sammler?" Er klopft mit den Fingern, als ob er etwas zählen würde. "Ich weiß. Ich erinnere mich." Er streckt einen zitternden Finger in die Höhe, als ob er dir sagen wollte, daß du warten sollst.~ */
  IF ~~ THEN REPLY #21091 /* ~Warte, bis er die Wäsche geholt hat.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
AddexperienceParty(500)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21063 /* ~Er kommt zurück mit einer plattgedrückten Masse grüner Lumpen, die zwar dünn wie Papier sind, aber trotzdem so steif, daß sie aussehen wie ein guter Ersatz für Holzbretter. Die Lumpen sind mit einer gelb-grünen Stärke derart verkrustet, daß man sie wahrscheinlich jahrelang einweichen müßte, um sie wieder geschmeidig zu machen.~ */
  IF ~~ THEN REPLY #21092 /* ~"Äh... wie oft hast du die gereinigt?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #21064 /* ~"Giscorl wäscht Stoff, stärkt Stoff jeden fünften Tag, wäscht Stoff, stärkt Stoff jeden fünften Tag." Seine Augen flackern. "Giscorl wäscht viele Jahre. Stärkt Stoff immer am fünften Tag. Giscorls Ritual."~ */
  IF ~~ THEN REPLY #21093 /* ~"Aber sie sind völlig ruiniert."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #21065 /* ~"Wäscht Stoff. Ist Giscorls Ritual." Seine Stimme ist dumpf, fast wie bei einem Zombie. "*Muß* Stoff jeden fünften Tag stärken."~ */
  IF ~~ THEN REPLY #3014 /* ~"Wo liegt der Sinn drin, sie alle fünf Tage zu stärken, wenn sie das überhaupt nicht nötig... ach, egal, gib sie schon her."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #21066 /* ~"Gibt dir Stoff." Er nickt, dann reicht er dir die Lumpen. Sie sind schwer... wie ein Armvoll Ziegel.~ */
  IF ~~ THEN REPLY #21095 /* ~"Ich bring sie zurück zu Mebbeth. Leb wohl."~ */ DO ~GiveItemCreate("MebRags",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 12.0
  SAY #21067 /* ~Du hast Giscorls Angebot geprüft, und er nickt. "Ich, Giscorl."~ */
  IF ~~ THEN REPLY #21097 /* ~"Weißt du, ich würde mir wirklich gern noch mal ansehen, was du hier verkaufst..."~ */ DO ~StartStore("Giscorl",Protagonist)
~ GOTO 12
  IF ~~ THEN REPLY #21098 /* ~"Äh... wobei hast du dir deine Hände so verletzt?"~ */ GOTO 4
  IF ~  Global("Mebbeth_Quest","GLOBAL",4)
~ THEN REPLY #21099 /* ~"Verstehe. Hör mal, ich bin hier, um die Wäsche für jemanden abzuholen... Mebbeth... die Amme... Lumpensammler-Platz?"~ */ GOTO 6
  IF ~~ THEN REPLY #21100 /* ~"Das war's für heute. Leb wohl."~ */ EXIT
END
