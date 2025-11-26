// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3202 /* ~Dieser schneidige Edelmann beobachtet deine Ankunft mit Verachtung. "Ich bin hier, um mit den Damen zu sprechen, mein Herr, und *nicht* mit so einem wie Euch. Ich hoffe doch sehr, daß Ihr nicht vorhabt, mich mit Fragen und ähnlichem zu belästigen."~ */
  IF ~~ THEN REPLY #3203 /* ~"Tatsächlich hätte ich da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #40142 /* ~"Ich werde dir schon Respekt beibringen."~ */ GOTO 3
  IF ~~ THEN REPLY #40143 /* ~"Das hatte ich eigentlich vor, aber ich verschwende lieber nicht meine Zeit. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #40144 /* ~"Nein, das hatte ich nicht vor. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40145 /* ~"Und schon wieder ärgert Ihr mich mit Eurer Anwesenheit. Wenn ich mit *Euresgleichen* hätte reden wollen, ja, da gibt es ein ganzes Viertel voll davon östlich von hier. Und jetzt laßt mich in Ruhe."~ */
  IF ~~ THEN REPLY #40146 /* ~"Ich werde dir schon Respekt beibringen."~ */ GOTO 3
  IF ~~ THEN REPLY #40147 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #40148 /* ~Der Edelmann sieht dich mit schmalen Augen an. "Das ist mir egal... völlig egal! Und jetzt haut ab. Geht schon - laßt mich in Ruhe."~ */
  IF ~~ THEN REPLY #40149 /* ~"Ich werde dir schon Respekt beibringen."~ */ GOTO 3
  IF ~~ THEN REPLY #40150 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0
  SAY #40151 /* ~Er schließt die Augen und atmet langsam aus, als ob er sich beruhigen will. "Wenn es einer solchen Tat bedarf, um Euch loszuwerden, dann soll es so sein: Wenn Ihr die *Freundlichkeit* hättet, mein Herr, möchte ich Euch demütigst bitten, von meiner Seite zu weichen und *anderswo* Unterhaltung zu suchen."~ */
  IF ~~ THEN REPLY #40152 /* ~"Gut... Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #40153 /* ~Geh weg.~ */ EXIT
END
