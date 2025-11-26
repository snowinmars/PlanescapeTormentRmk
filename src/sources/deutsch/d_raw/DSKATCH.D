// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKATCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKATCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50896 /* ~Du siehst einen Offizier des Harmoniums in Zeremonienrüstung. Er scheint den Arbeitstrupp von Harmonium- und Thokola-Sklavenhändlern zu befehligen. Er wirkt wie ein besonders bösartiges und hochmütiges Exemplar seiner Art. "Was willst du?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50897 /* ~"Ich bin hier, um die Tochter von Besudelter Barse zurückzuholen."~ */ GOTO 1
  IF ~~ THEN REPLY #50898 /* ~"Was machst du hier?"~ */ GOTO 2
  IF ~~ THEN REPLY #50899 /* ~"Wer bist du?"~ */ GOTO 5
  IF ~~ THEN REPLY #50900 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50901 /* ~Er grinst dich höhnisch an. "So? Und was machst du, wenn ich sie töte?" Er macht eine Geste in Richtung seiner Männer. "Tötet sie!" Er zieht seine Klinge und greift dich an!~ */
  IF ~~ THEN REPLY #50902 /* ~Kämpfe.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #50903 /* ~"Nun, meine Männer und ich sammeln Rekruten, um sie zu lehren, was richtig und was falsch ist. Wie du siehst, sind sie nicht immer willig... Aber durch uns werden sie schließlich das Licht sehen." Er beäugt dich. "Ich könnte mir vorstellen, daß du ein guter Rekrut wärst."~ */
  IF ~~ THEN REPLY #50904 /* ~"Ich bin nicht interessiert."~ */ GOTO 3
  IF ~~ THEN REPLY #50905 /* ~"Erzähl mir mehr."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #50906 /* ~"Zu dumm." Er macht eine Geste in Richtung seiner Männer. "Vergeßt das Mädchen. Ergreift ihn."~ */
  IF ~~ THEN REPLY #50907 /* ~Kämpfe.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #50908 /* ~"Gerne. Wir werden dich nach Arkadien bringen und dir die Wahrheit zeigen." Er macht eine Geste in Richtung seiner Männer. "Ergreift ihn."~ */
  IF ~~ THEN REPLY #50909 /* ~Kämpfe.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY #50910 /* ~"Ich bin Skatch, Zweiter Rang des Harmoniums." Er verbeugt sich. "Meine Männer und ich sammeln hier Rekruten. Würdest du gerne mehr über das Wesen des Harmoniums erfahren?"~ */
  IF ~~ THEN REPLY #50911 /* ~"Nein."~ */ GOTO 3
  IF ~~ THEN REPLY #50912 /* ~"Erzähl mir mehr."~ */ GOTO 4
  IF ~~ THEN REPLY #50913 /* ~"Für mich sieht das aus wie Sklaverei. Wäre es möglich, daß du dieses eine Mal jemanden laufen läßt?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #50914 /* ~"Du bist nicht besonders schlau, oder? Nein. Unmöglich. Es gibt unseren Weg, und es gibt den falschen Weg. Die auf dem falschen Weg müssen... bestraft werden." Er zeigt auf dich und ruft seine Männer. "Ergreift ihn!"~ */
  IF ~~ THEN REPLY #50915 /* ~Kämpfe.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
