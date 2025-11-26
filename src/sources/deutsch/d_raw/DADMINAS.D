// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADMINAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DADMINAS~

IF ~  Global("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61498 /* ~Du siehst einen elegant gekleideten Mann mittleren Alters. Als du näherkommst, blickt er dich gelangweilt an. ~ */
  IF ~~ THEN REPLY #61499 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #61500 /* ~Beachte den Mann nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61501 /* ~Er deutet ein Nicken an. "Du auch, Schleifer. Ich bin Carl Parfidor, Verwaltungsassistent. Kann ich dir helfen?"~ */
  IF ~~ THEN REPLY #61502 /* ~"Ich suche einen Deva. Man hat mir gesagt, er sei in Verdammnis."~ */ GOTO 2
  IF ~~ THEN REPLY #61503 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #61504 /* ~Er blickt dich mit gerunzelter Stirn an. "Du meinst wohl Trias. Ja, er ist hier. Genauer gesagt ist er im Gefängnis. Warum willst du zu ihm?"~ */
  IF ~~ THEN REPLY #61505 /* ~"Brauche ich einen Grund?"~ */ GOTO 3
  IF ~~ THEN REPLY #61506 /* ~"Es ist eine private Angelegenheit."~ */ GOTO 4
  IF ~~ THEN REPLY #61507 /* ~"Ich habe ein paar Fragen, die nur er beantworten kann."~ */ GOTO 5
  IF ~~ THEN REPLY #61508 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61509 /* ~Er lacht. "Jawohl. Also, warum willst du zu Trias?"~ */
  IF ~~ THEN REPLY #61510 /* ~"Es ist eine private Angelegenheit."~ */ GOTO 4
  IF ~~ THEN REPLY #61511 /* ~"Ich habe ein paar Fragen, die nur er beantworten kann."~ */ GOTO 5
  IF ~~ THEN REPLY #61512 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #61513 /* ~Er schüttelt lächelnd den Kopf. "Nichts, was Trias betrifft, ist eine persönliche Angelegenheit. Warum willst du zu ihm?"~ */
  IF ~~ THEN REPLY #61514 /* ~"Ich habe ein paar Fragen, die nur er beantworten kann."~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #61515 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 4.0
  SAY #61516 /* ~Er blickt dich eine Weile ruhig an. "Ich verstehe. Nun, niemand darf ohne Erlaubnis von Tovus Giljaf zu Trias." Er lächelt dich an. "Und niemand wird zu Tovus vorgelassen, nach dem er nicht geschickt hat. Ich schlage vor, daß du wieder gehst."~ */
  IF ~~ THEN REPLY #61517 /* ~"Du kannst es doch sicher arrangieren, daß ich mit Tovus sprechen kann."~ */ GOTO 6
  IF ~~ THEN REPLY #61518 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61519 /* ~Er lacht. "Ja, aber ich habe nicht die Absicht, dir Zutritt zu gewähren, solange Tovus nicht nach dir schickt. Jetzt geh."~ */
  IF ~~ THEN REPLY #61520 /* ~"Ich kann dich auch töten und einfach zu ihm reingehen."~ */ GOTO 7
  IF ~~ THEN REPLY #61521 /* ~"Es ist wichtig. Es muß einen Weg geben, wie ich hineinkommen kann, um mit Tovus sprechen."~ */ GOTO 8
  IF ~~ THEN REPLY #61522 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61523 /* ~Er mustert dich von oben bis unten und nickt dann. "Oh ja, du bist ziemlich furchteinflößend und könntest spielend an mir vorbeikommen. Aber ich denke, die Stadtwache könnte es mit dir aufnehmen, und dann ist da noch die Tatsache, daß Tovus selbst ein exzellenter Zauberwerfer ist. Es wäre dumm von dir, zu versuchen..."~ */
  IF ~~ THEN REPLY #61524 /* ~"Es ist wichtig. Es muß einen Weg geben, wie ich hineinkommen kann, um mit Tovus sprechen."~ */ GOTO 8
  IF ~~ THEN REPLY #61525 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #61526 /* ~Er schüttelt den Kopf. "Der einzige Weg durch diese Tür ist, daß Tovus nach dir schickt oder ich dich hineinlasse. Tovus hat nicht nach dir geschickt, und ich habe nicht die Absicht, dich selbst hineinzulassen." Er lacht. "Außer natürlich, wenn du etwas Wichtiges für mich hättest. Hmm. Mir fällt nichts ein, was ich gerne von dir hätte."~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61527 /* ~"Was, wenn ich dir sagen würde, daß deine Frau Roberta plant, dich umbringen zu lassen?"~ */ DO ~SetGlobal("Roberta_Betrayed","GLOBAL",1)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 9
  IF ~~ THEN REPLY #61528 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61529 /* ~Er starrt dich verständnislos an, dann schnaubt er unvermittelt. "Das ist lächerlich. Warum sollten wir das tun?"~ */
  IF ~~ THEN REPLY #61530 /* ~"Sie hat dich beschattet. Sie weiß alles über die Huren und will dich tot sehen."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61531 /* ~Du scheinst seine Aufmerksamkeit erregt zu haben, er hängt an deinen Lippen. "Und wer, wenn ich fragen darf, soll die Tat ausführen? Du vielleicht?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61532 /* ~"Nein, Roberta dachte daran, für die Tat eine Hure anzuheuern. Wahrscheinlich ein Mädchen namens Kiri."~ */ GOTO 11
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61533 /* ~"Nein, Roberta dachte daran, für die Tat eine Hure anzuheuern, weil niemand sonst nah genug an dich herankommt.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #61534 /* ~Er schaut dich eine Weile an. "Warte hier. Ich bin in spätestens einer Stunde zurück..." Er geht ein paar Schritte weit und hält dann inne. "Oh, und es wäre gut, wenn deine Informationen stimmen. Wenn ich herausfinde, das dem nicht so ist, findest du dich im Gefängnis mit Trias wieder." Er lächelt. "Dann kannst du nach Belieben mit ihm reden, was auch immer dir das dann nützt." Er geht weg.~ */
  IF ~~ THEN REPLY #61535 /* ~"Ich werde warten."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #61536 /* ~Du siehst Carl Parfidor. Er kommt mit besorgter Miene auf dich zu. "Danke, daß du gewartet hast, Schleifer. Es scheint, daß deine Informationen sich als richtig erwiesen haben. Ich danke dir dafür."~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61537 /* ~"Und was passiert jetzt mit Roberta und Kiri?"~ */ GOTO 14
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61538 /* ~"Und was passiert jetzt mit Roberta?"~ */ GOTO 15
  IF ~~ THEN REPLY #61539 /* ~"Kann ich jetzt also zu Tovus?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.0 15.0
  SAY #61540 /* ~Er schüttelt den Kopf. "Nein, das geht nicht. Tovus Giljaf empfängt niemanden, nach dem er nicht geschickt hat. Jetzt schlage ich vor, daß du wieder gehst, bevor ich dich festnehmen lasse, weil du die Ermordung eines Stadtbeamten geplant hast!" Er lächelt dich an. "Oder möchtest du gerne den Rest deiner Tage in einer Zelle mit Roberta verbringen?"~ */
  IF ~~ THEN REPLY #61541 /* ~"Nein, ich gehe jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #61542 /* ~Er sieht dich überrascht an. "Interessiert dich das wirklich?" Er zuckt die Achseln. "Naja... Roberta hat das Verbrechen gestanden und wird ins Gefängnis kommen. Kiri dagegen... Mit ihr habe ich andere Pläne." Er lächelt.~ */
  IF ~~ THEN REPLY #61543 /* ~"Kann ich jetzt also zu Tovus?"~ */ GOTO 13
  IF ~~ THEN REPLY #61544 /* ~"Ich verstehe. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #61545 /* ~Er sieht dich überrascht an. "Interessiert dich das wirklich?" Er zuckt die Achseln. "Naja... Roberta hat das Verbrechen gestanden und wird ins Gefängnis kommen." Er lächelt.~ */
  IF ~~ THEN REPLY #61546 /* ~"Kann ich jetzt also zu Tovus?"~ */ GOTO 13
  IF ~~ THEN REPLY #61547 /* ~"Ich verstehe. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61548 /* ~Du siehst einen elegant gekleideten Mann mittleren Alters. Als du näherkommst, lächelt er dir zu.~ */
  IF ~~ THEN REPLY #61549 /* ~"Sei gegrüßt."~ */ GOTO 17
  IF ~~ THEN REPLY #61550 /* ~Beachte den Mann nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61551 /* ~Er nickt dir leicht zu. "Guten Tag, Schleifer. Ich bin der Verwaltungsassistent. Wie kann ich dir helfen?"~ */
  IF ~~ THEN REPLY #61552 /* ~"Ich suche einen Deva. Man hat mir gesagt, er sei in Verdammnis.~ */ GOTO 18
  IF ~~ THEN REPLY #61553 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61554 /* ~"Einen Moment bitte..." Er blättert eine Weile durch einige Papiere und hält dann inne, um eine Seite zu lesen. "Ah! Da ist es... Das muß Trias sein. Hmmm..." Er runzelt die Stirn und schüttelt den Kopf.~ */
  IF ~~ THEN REPLY #61555 /* ~"Ist das ein Problem?"~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61556 /* ~"Ich fürchte ja... Niemand darf ohne ausdrückliche Erlaubnis von Tovus Giljaf zu Trias."~ */
  IF ~~ THEN REPLY #61557 /* ~"Dann möchte ich gerne zu Tovus."~ */ GOTO 20
  IF ~~ THEN REPLY #61558 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61559 /* ~Er runzelt die Stirn und schüttelt den Kopf. "Das ist leider nicht möglich. Es wird niemand zu Tovus vorgelassen, nach dem er nicht geschickt hat."~ */
  IF ~~ THEN REPLY #61560 /* ~"Es ist wichtig, daß ich mit ihm spreche.~ */ GOTO 21
  IF ~~ THEN REPLY #61561 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #61562 /* ~Er sieht dich verärgert an. "Es tut mir leid, Schleifer, aber es wird niemand zu Tovus vorgelassen, nach dem er nicht geschickt hat. Bitte geh wieder."~ */
  IF ~~ THEN REPLY #61563 /* ~"Ich kann nicht einmal einen Termin für einen späteren Zeitpunkt machen?"~ */ GOTO 22
  IF ~~ THEN REPLY #61564 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61565 /* ~Er funkelt dich an. "Nein. Du kannst heute nicht zu Tovus, morgen nicht, und auch an keinem anderen Tag, wenn er nicht nach dir schickt. Du kannst keinen Termin bekommen, Tovus heute zu sprechen, oder morgen, oder an irgendeinem anderen Tag, weil er keine Termine gibt. Wenn du Tovus sehen willst, wirst du ihn sehen, wenn ER DICH sehen will, denn ER wird nach DIR schicken." Er macht eine Pause, um Atem zu holen, und lächelt. "Habe ich mich deutlich genug ausgedrückt?"~ */
  IF ~~ THEN REPLY #61566 /* ~"Sehr, leb wohl."~ */ EXIT
END
