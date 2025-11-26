// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGERIK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGERIK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58157 /* ~Du siehst einen jungen Mann mit einem Rattengesicht. Er beobachtet dich argwöhnisch, als du näherkommst, und scheint jede deiner Bewegungen mit geschultem Auge einzuschätzen.~ */
  IF ~~ THEN REPLY #58158 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58159 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58160 /* ~Er reibt sich das Kinn, während er dich taxiert. Du hast den Eindruck, daß er dich abschätzt. "Ja... sei gegrüßt, Schleifer. Willkommen in unserem Heim. Was willst du von Gerik?"~ */
  IF ~~ THEN REPLY #58161 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58162 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 6.0 9.0 12.0
  SAY #58163 /* ~"Frag nur,... frag..." Er lächelt dich an.~ */
  IF ~~ THEN REPLY #58164 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #58165 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #58166 /* ~"Ich suche nach einem Deva. Weißt du, wo ich ihn finden kann?"~ */ GOTO 10
  IF ~~ THEN REPLY #58167 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58168 /* ~"Wir sind Gerik. Wir sagten es dir bereits,... nicht wahr?" Er zieht die Augenbrauen hoch.~ */
  IF ~~ THEN REPLY #58169 /* ~"Warum bezeichnest du dich selbst als *wir*?"~ */ GOTO 4
  IF ~~ THEN REPLY #58170 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58171 /* ~"Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #58172 /* ~Er runzelt die Stirn. "Weil wir mehr als eine Person sind..." Er blickt zu seiner Linken, dann zu seiner Rechten und sieht dich wieder an. "Kannst du uns etwa nicht sehen?" Er deutet zu beiden Seiten neben sich.~ */
  IF ~~ THEN REPLY #58173 /* ~"Ja, jetzt sehe ich euch alle. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58174 /* ~"Öh... nein, hier sind nur du und ich."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58175 /* ~Er runzelt die Stirn, lehnt sich erst zur einen, dann zur anderen Seite und flüstert einem unsichtbaren Kumpanen etwas zu. Dann wendet er seine Aufmerksamkeit wieder dir zu. "Wir sind etwas ratlos darüber, wie das sein kann. Vielleicht bist du krank? Vielleicht können wir dir helfen." Er lächelt dich an.~ */
  IF ~~ THEN REPLY #58176 /* ~"Ah... da sind sie! Tut mir leid, aber ich habe deine Kumpanen vorher nicht bemerkt. Jetzt sehe ich sie."~ */ GOTO 6
  IF ~~ THEN REPLY #58177 /* ~"Ich habe eher den Eindruck, du bist derjenige, der Hilfe braucht."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58178 /* ~Er lächelt und nickt. "Gut... gut... Dann ist ja alles in Ordnung, und wir sind froh. Hast du noch weitere Fragen?"~ */
  IF ~~ THEN REPLY #58179 /* ~"Ja."~ */ GOTO 2
  IF ~~ THEN REPLY #58180 /* ~"Nein, ich muß gehen. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #58181 /* ~Er zieht die Stirn in tiefe Falten. "Das bereitet uns Sorgen... Du solltest jetzt gehen, wir brauchen Zeit zum Nachdenken..." Er beachtet dich nicht mehr.~ */
  IF ~~ THEN REPLY #58182 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #58183 /* ~Er schaut sich ein paarmal um und scheint dann ins Leere zu starren. "Dies ist unser Sommerquartier... Uns gefällt es hier. Wir finden das Rauschen der Wellen so angenehm entspannend."~ */
  IF ~~ THEN REPLY #58184 /* ~"Warum bezeichnest du dich selbst als *wir*?"~ */ GOTO 4
  IF ~~ THEN REPLY #58185 /* ~"Wellen? Was für Wellen?"~ */ GOTO 9
  IF ~~ THEN REPLY #58186 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #58187 /* ~"Was für Wellen?" Er macht ein ärgerliches Gesicht und zeigt auf einen entfernten Punkt durch die Wand hindurch. "Diese Wellen! Wir lieben das Meer, die sanfte Brise... Es ist so erfrischend."~ */
  IF ~~ THEN REPLY #58188 /* ~"Ich... verstehe. Wirklich sehr schön. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58189 /* ~"Aha... Also, ich vertrage die salzige Luft nicht. Ich muß weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #58190 /* ~Seine Augen weiten sich und er nickt. Er schaut zu seiner Linken, dann zu seiner Rechten, murmelt etwas und spricht anscheinend mit einem unsichtbaren Kumpanen. Nach einer Weile wendet er seine Aufmerksamkeit wieder dir zu. "Ja, wir haben den Deva gesehen. Wunderschön sah er aus..."~ */
  IF ~~ THEN REPLY #58191 /* ~"Wo kann ich ihn finden?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58192 /* ~Er schaut dich ratlos an. "Wir wissen es nicht... Er ist für uns verloren." Sein Blick schweift ab in die Ferne. "Wir haben ihn verloren... verloren... verloren..." Seine Stimme verliert sich in der Stille, und er starrt ausdruckslos an die Wand. Er reagiert nicht mehr auf deine Versuche, mit ihm zu reden.~ */
  IF ~~ THEN REPLY #58193 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #58194 /* ~Du siehst Gerik. Er scheint in Gedanken verloren, wie in seiner eigenen Welt. Dann bemerkt er dich. "Wir erinnern uns an dich... Was wünscht du von Gerik?"~ */
  IF ~~ THEN REPLY #58195 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58196 /* ~"Nichts. Leb wohl."~ */ EXIT
END
