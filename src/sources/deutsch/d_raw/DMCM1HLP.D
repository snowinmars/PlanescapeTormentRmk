// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37212 /* ~Du siehst einen jungen blassen Mann mit gelblicher Haut. Er scheint damit beschäftigt zu sein, Waren in einer Kiste zu betrachten.~ */
  IF ~~ THEN REPLY #37226 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37227 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37213 /* ~Er wirft dir erst einen Blick über die Schulter zu und wendet sich dir dann ganz zu. "Danke, du auch. Was willst du von mir?"~ */
  IF ~~ THEN REPLY #37225 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37228 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37214 /* ~Er wirkt irritiert, lächelt dich jedoch freundlich an. "Ich werde dir helfen, wenn ich kann. Was willst du denn wissen?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37229 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37230 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 5
  IF ~~ THEN REPLY #37231 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 7
  IF ~~ THEN REPLY #37232 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 8
  IF ~~ THEN REPLY #37233 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 9
  IF ~~ THEN REPLY #37234 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37215 /* ~Seine Augen weiten sich aus, und er zeichnet rasch einen Halbkreis über seinem Herz. "Ich kann dir nicht helfen. Man sagt, er soll im Bezirk sein, aber ich weiß nicht, wo."~ */
  IF ~~ THEN REPLY #37235 /* ~"Weißt du vielleicht, wer es wissen könnte?"~ */ GOTO 4
  IF ~~ THEN REPLY #37236 /* ~"OK. Ich habe noch ein paar Fragen..."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37216 /* ~Er sieht besorgt aus. "Nee, Schleifer." Die meisten Leute vermeiden Ärger und legen's nicht drauf an."~ */
  IF ~~ THEN REPLY #37237 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37238 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37217 /* ~Er zuckt zusammen und sieht dich dann besorgt an. "Ja, ich hab' wohl gehört, daß es Leute gibt, die sowas mögen, aber ich kann dir nicht helfen."~ */
  IF ~~ THEN REPLY #37239 /* ~"Kennst du jemanden, der es könnte?"~ */ GOTO 6
  IF ~~ THEN REPLY #37240 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37218 /* ~Er denkt einen Moment nach und zuckt dann die Schultern. "Frag mal Lazlo, den Jungen da am Hochofen. Er hält gern ein Schwätzchen mit allen möglichen Leuten. Vielleicht hat er was gehört."~ */
  IF ~~ THEN REPLY #37241 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37242 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37219 /* ~Er zeigt zu den Ständen. "Anze verkauft sowas. Das ist der richtige Mann für dich."~ */
  IF ~~ THEN REPLY #37244 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37220 /* ~Er zeigt zu den Ständen. "Aalek handelt mit solcher Kunst. Solltest mal mit ihm reden."~ */
  IF ~~ THEN REPLY #37245 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37246 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #37221 /* ~Er runzelt die Stirn. "Sieh mal, Schleifer, ich will ja nicht unhöflich sein, aber für solch Gerede hab' ich keine Zeit. Frag mal Lazlo, den Jungen da am Hochofen. Redet gern mit Fremden."~ */
  IF ~~ THEN REPLY #37247 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37222 /* ~Er sieht dich an und lächelt. "Guten Tag, Schleifer. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #37223 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37248 /* ~"Leb wohl."~ */ EXIT
END
