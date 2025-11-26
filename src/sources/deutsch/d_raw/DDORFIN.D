// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORFIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORFIN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57994 /* ~Du siehst einen muskulösen jungen Mann in schmutziger Arbeitskleidung. Er überprüft anscheinend den Inhalt verschiedener Kisten und gleicht ihn mit einer Liste ab.~ */
  IF ~~ THEN REPLY #57996 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #57998 /* ~Beachte den Mann nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58000 /* ~Er hält einen Augenblick inne und wendet sich dann dir zu. "Ja bitte? Kann ich dir behilflich sein?"~ */
  IF ~~ THEN REPLY #58001 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58007 /* ~"Nein, eigentlich nicht. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #58009 /* ~Er schaut sich schnell nach allen Seiten um. "OK..."~ */
  IF ~~ THEN REPLY #58010 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #58012 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~~ THEN REPLY #58014 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #58016 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei in Verdammnis."~ */ GOTO 9
  IF ~~ THEN REPLY #58017 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58019 /* ~"Ich bin Dorfin, Schleifer. Ich bin einer der Lagerarbeiter hier." Er lächelt dich freundlich an.~ */
  IF ~~ THEN REPLY #58021 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58022 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58024 /* ~"Inventur." Er blickt finster drein. "Zum dritten Mal diesen Monat, um genau zu sein."~ */
  IF ~~ THEN REPLY #58025 /* ~"Ist das so ungewöhnlich?"~ */ GOTO 5
  IF ~~ THEN REPLY #58027 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58029 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58030 /* ~Er seufzt. "Nein. Der Boß ist ein Sklaventreiber. Er läßt uns hart arbeiten und gönnt uns kaum eine Pause." Er zuckt mit den Achseln. "Es ist immerhin eine Arbeit."~ */
  IF ~~ THEN REPLY #58031 /* ~"Wenn er ein solcher Sklaventreiber ist, wieso arbeitest du dann für ihn?"~ */ GOTO 6
  IF ~~ THEN REPLY #58033 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58034 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58035 /* ~Er beugt sich nah zu dir heran und flüstert: "Wir bekommen einen Tag frei in der Woche... ohne Lohnabzug. Deshalb beschwert sich keiner von uns."~ */
  IF ~~ THEN REPLY #58037 /* ~"Interessant. Warum tut er das?"~ */ GOTO 7
  IF ~~ THEN REPLY #58038 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58040 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58042 /* ~Er zuckt die Achseln. "Ich hab keine Ahnung, und es ist mir auch ziemlich egal. Jedenfalls ist eine Pause vom täglichen Trott."~ */
  IF ~~ THEN REPLY #58043 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58044 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58045 /* ~Er sieht dich verwirrt an und zuckt die Achseln. "Es ist bloß ein Lager. Wir lagern das übliche Zeug. Du weißt schon: Werkzeug, Waffen, Nahrungsmittel, alles Mögliche halt..."~ */
  IF ~~ THEN REPLY #58046 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58048 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58049 /* ~"Wirklich?" Er sieht überrascht aus. "Das kann ich mir kaum vorstellen... Ich meine, warum sollte wohl ein Deva hierher kommen?" Er macht eine kurze Pause und stößt dann ein heiseres Lachen aus. "Ha! Es sei denn es wäre, um *göttliche Gerechtigkeit* über uns zu ergießen."~ */
  IF ~~ THEN REPLY #58051 /* ~'Was meinst du damit?"~ */ GOTO 10
  IF ~~ THEN REPLY #58052 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58054 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58055 /* ~"Die Einwohner von Verdammnis sind nicht eben für ihre Freundlichkeit und Großzügigkeit bekannt. Ein Deva ist viel zu gut für diesen Ort. Es besteht kein Grund, warum einer hier sein sollte, es sei denn natürlich, er oder sie wäre von irgendeiner Macht geschickt worden, und das würde nur im Namen einer *höheren * Gerechtigkeit geschehen."~ */
  IF ~~ THEN REPLY #58057 /* ~"Aha. Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58058 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58059 /* ~Du siehst Dorfin, den Lagerarbeiter. Er nickt dir zu. "Hallo, Schleifer, wieder da?"~ */
  IF ~~ THEN REPLY #58062 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58064 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
