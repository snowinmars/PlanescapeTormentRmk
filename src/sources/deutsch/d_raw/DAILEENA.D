// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAILEENA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAILEENA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58096 /* ~Du siehst eine junge Frau in schmutziger Arbeitskleidung. Sie nickt dir zu, als du näherkommst.~ */
  IF ~~ THEN REPLY #58098 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #58099 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58100 /* ~"Hallo... Brauchst du etwas?"~ */
  IF ~~ THEN REPLY #58101 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58102 /* ~"Nein, eigentlich nicht. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.0 10.0
  SAY #58103 /* ~"In Ordnung."~ */
  IF ~~ THEN REPLY #58104 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #58105 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~~ THEN REPLY #58106 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #58107 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei in Verdammnis."~ */ GOTO 9
  IF ~~ THEN REPLY #58108 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58109 /* ~"Mein Name ist Aileena."~ */
  IF ~~ THEN REPLY #58110 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58111 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58112 /* ~"Ich bearbeite Arbeitsaufträge. Ich bekomme verschiedene Warenaufträge von Kaufleuten aus der ganzen Stadt. Ich suche die einzelnen Artikel zusammen und mache sie versandfertig."~ */
  IF ~~ THEN REPLY #58113 /* ~"Hört sich nach einer interessanten Arbeit an."~ */ GOTO 5
  IF ~~ THEN REPLY #58114 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58115 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58116 /* ~Sie lächelt. "Ja, das ist sie wirklich..." Sie seufzt und zuckt mit den Schultern. "Sonst würde ich sie ganz bestimmt nicht machen."~ */
  IF ~~ THEN REPLY #58117 /* ~"Warum denn das?"~ */ GOTO 6
  IF ~~ THEN REPLY #58118 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58119 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58120 /* ~Sie zieht nachdenklich die Stirn in Falten. "Naja, leicht ist die Arbeit nicht, und sie sollte sicherlich von mehr als einer Person erledigt werden. Aber leider ist der Boß ein schäbiger Geizkragen und stellt niemand anderen ein."~ */
  IF ~~ THEN REPLY #58121 /* ~"Warum bleibst du dann hier?"~ */ GOTO 7
  IF ~~ THEN REPLY #58122 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58123 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58124 /* ~Sie lächelt. "Devore, der Boß, mag zwar ein Geizhals sein, aber er hat auch nette Züge. Er gibt sogar jedem von uns einen Tag in der Woche frei - bei vollem Lohn!"~ */
  IF ~~ THEN REPLY #58125 /* ~"Ich verstehe. Ich habe einige Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58126 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58127 /* ~Sie zuckt mit den Schultern. "Es gibt nichts zu erzählen. Wenn du ein Lager kennst, kennst du alle. Dies hier ist keine Ausnahme."~ */
  IF ~~ THEN REPLY #58128 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58129 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58130 /* ~Sie sieht dich einen Moment lang verwirrt an. "Ich wollte gerade sagen, du mußt verrückt sein, in Verdammnis zu suchen... aber jetzt erinnere ich mich: da war etwas mit einem Deva." Sie hält inne. "Ich kann mich allerdings nicht genau erinnern, was es war. Du solltest zum Verwaltungsbüro gehen und da mal fragen. Es ist auf dem Marktplatz."~ */
  IF ~~ THEN REPLY #58131 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58132 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58133 /* ~Du siehst Aileena, die Lagerarbeiterin. Sie lächelt und nickt dir zu, als du näherkommst. "Hallo, da bist du ja wieder. Was gibt's?"~ */
  IF ~~ THEN REPLY #58134 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #58135 /* ~"Nichts. Leb wohl."~ */ EXIT
END
