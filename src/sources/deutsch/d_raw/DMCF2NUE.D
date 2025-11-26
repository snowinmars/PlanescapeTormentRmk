// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37137 /* ~Du siehst eine ältere Frau in einfachen Kleidern. Ihre blasse, gelbliche Haut ist vom Alter gegerbt. Sie sieht dich gelangweilt an, als du näher kommst.~ */
  IF ~~ THEN REPLY #37146 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37147 /* ~Ignoriere sie.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37138 /* ~"Sei auch du mir gegrüßt, mein Junge. Was kann die alte Belle für dich tun?"~ */
  IF ~~ THEN REPLY #37148 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37149 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37139 /* ~Sie runzelt die Stirn, und ihr Gesicht verschwindet dabei fast in ihren Falten. "Für ein paar wird meine Zeit wohl langen, aber faß dich kurz."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37150 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37151 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 5
  IF ~~ THEN REPLY #37152 /* ~"Kannst du mir etwas über diesen Bezirk erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #37153 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37140 /* ~"Lothar... Den Namen hab' ich noch nie gehört. Da kann ich dir nicht weiterhelfen."~ */
  IF ~~ THEN REPLY #37154 /* ~"Ich verstehe. Kennst du irgend jemanden, der mir helfen kann?"~ */ GOTO 4
  IF ~~ THEN REPLY #37155 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37141 /* ~Sie schüttelt den Kopf. "Nee." Sie sieht dich gelangweilt an.~ */
  IF ~~ THEN REPLY #37156 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37157 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37142 /* ~"Einen Totenschädel verloren..." Sie lacht laut auf. "Wirklich, kann nicht behaupten, daß ich sowas schon mal gehört hab'. Weiß auch nicht, was ich dazu sagen soll."~ */
  IF ~~ THEN REPLY #37158 /* ~"Ich verstehe. Kennst du irgend jemanden, der mir helfen kann?"~ */ GOTO 4
  IF ~~ THEN REPLY #37159 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37143 /* ~Sie seufzt. "Hör mal, mein Junge. Ich bin hier zum Einkaufen, und du bist kein Kaufmann. Verstehste mich?"~ */
  IF ~~ THEN REPLY #37160 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #37161 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37144 /* ~"Nun, ich weiß keine Antworten. Schönen Tag noch." Sie wendet sich ab.~ */
  IF ~~ THEN REPLY #37162 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37145 /* ~Du siehst eine ältere Frau in einfachen Kleidern. Ihre blasse, gelbliche Haut ist vom Alter gegerbt. Sie sieht dich gelangweilt an, als du näher kommst. "Warum kannst du mich nicht einfach in Ruhe lassen? Geh schon!" Sie wendet sich ab.~ */
  IF ~~ THEN REPLY #37163 /* ~Geh.~ */ EXIT
END
