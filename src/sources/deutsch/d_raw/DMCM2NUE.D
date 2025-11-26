// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37249 /* ~Du siehst einen älteren Mann in einfachen Kleidern. Seine blasse, gelbliche Haut ist vom Alter gegerbt. Er sieht dich gelangweilt an, als du näher kommst.~ */
  IF ~~ THEN REPLY #37260 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37261 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37250 /* ~"Sei auch du mir gegrüßt, mein Junge. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #37262 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37263 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37251 /* ~Er runzelt die Stirn, und sein Gesicht verschwindet dabei fast in seinen unzähligen Falten. "Für ein paar wird meine Zeit wohl langen, aber faß dich kurz."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37264 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37265 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 5
  IF ~~ THEN REPLY #37266 /* ~"Kannst du mir etwas über diesen Bezirk erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #37267 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37252 /* ~"Lothar... Den Namen hab' ich noch nie gehört. Da kann ich dir nicht weiterhelfen. Frag doch mal weiter rum, irgendwer wird's schon wissen."~ */
  IF ~~ THEN REPLY #37268 /* ~"Ich verstehe. Kennst du irgend jemanden, der mir helfen kann?"~ */ GOTO 4
  IF ~~ THEN REPLY #37269 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37253 /* ~Er schüttelt den Kopf. "Nee. Wir sind einfache Leute und stecken unsere Nasen nicht in andrer Leute Angelegenheiten." Er sieht dich gelangweilt an.~ */
  IF ~~ THEN REPLY #37270 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37271 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37254 /* ~"Einen Totenschädel verloren..." Er lacht laut auf. "Wirklich, kann nicht behaupten, daß ich sowas schon mal gehört hab'. Weiß auch nicht, was ich dazu sagen soll."~ */
  IF ~~ THEN REPLY #37273 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #37272 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37255 /* ~Er seufzt und wirft dir einen müden Blick zu. "Hör mal, mein Junge. Ich bin hier zum Einkaufen, und du bist kein Kaufmann. Verstehste mich? Wenn nicht: Nun hau schon ab!"~ */
  IF ~~ THEN REPLY #37274 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #37275 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37256 /* ~"Nun, ich weiß keine Antworten. Schönen Tag noch." Er wendet sich ab.~ */
  IF ~~ THEN REPLY #37276 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37257 /* ~Du siehst einen älteren Mann in einfachen Kleidern. Seine blasse, gelbliche Haut ist vom Alter gegerbt. Er sieht dich gelangweilt an, als du näher kommst. "Du schon wieder? Verschwinde!" Er wendet sich ab.~ */
  IF ~~ THEN REPLY #37258 /* ~Geh.~ */ EXIT
END
