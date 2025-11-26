// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVORTEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVORTEN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42519 /* ~Du siehst einen Offizier des Harmoniums. Er schaut dich gelangweilt an, als du näherkommst.~ */
  IF ~~ THEN REPLY #44833 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #44834 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42520 /* ~Er schaut dich gelangweilt an. "Sei gegrüßt, Bürger. Vorten vom Dritten Rang, zu Euren Diensten."~ */
  IF ~~ THEN REPLY #44838 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44839 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #44835 /* ~Er seufzt. "Ich will ja nicht unhöflich sein, aber ich bin grad im Dienst und hab keine Zeit für Fragen." Er hält inne. "Wenn du Auskünfte wünschst, dann sprich mit Ebb Knarrknie."~ */
  IF ~~ THEN REPLY #44836 /* ~"Wer ist Ebb Knarrknie?"~ */ GOTO 3
  IF ~~ THEN REPLY #44837 /* ~"Wo kann ich ihn finden?"~ */ GOTO 4
  IF ~~ THEN REPLY #44840 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44841 /* ~"Er ist ein alter Freund von mir. Er betrachtet sich jetzt wahrscheinlich als Schlepper, das heißt, er kennt den Plausch über ziemlich alles."~ */
  IF ~~ THEN REPLY #44842 /* ~"Wo find ich ihn?"~ */ GOTO 4
  IF ~~ THEN REPLY #44843 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #44844 /* ~Er denkt kurz nach. "Das letzte, was ich von ihm gehört habe, ist, daß er in der Bar zur Schwelenden Leiche die Sau rausgelassen hat. Du findest ihn irgendwo unten im Stock."~ */
  IF ~~ THEN REPLY #44845 /* ~"Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #44846 /* ~Du siehst Vorten vom Dritten Rang, den Offizier des Harmoniums. Er nickt dir schwach zu. "Hallo. Wieder da?"~ */
  IF ~~ THEN REPLY #44847 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #44848 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
