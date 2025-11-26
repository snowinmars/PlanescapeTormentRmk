// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37100 /* ~Du siehst eine junge blasse Frau mit gelblicher Haut. Sie scheint damit beschäftigt zu sein, Waren in einer Kiste zu betrachten.~ */
  IF ~~ THEN REPLY #37111 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37112 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37101 /* ~Sie wirft dir erst einen Blick über die Schulter zu und wendet sich dir dann ganz zu. "Danke, du auch. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #37113 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37114 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37102 /* ~Sie wirkt ein wenig irritiert, lächelt dich jedoch freundlich an. "Ich werd dir helfen, wenn ich kann. Was willst du denn wissen?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37115 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37116 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 5
  IF ~~ THEN REPLY #37117 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 7
  IF ~~ THEN REPLY #37118 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 8
  IF ~~ THEN REPLY #37119 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37103 /* ~Ihre Augen werden größer, und sie zieht schnell einen Halbkreis über ihr Herz. "Da kann ich dir nicht helfen. Es wird gesagt, er ist hier im Bezirk, aber wo weiß ich nicht."~ */
  IF ~~ THEN REPLY #37120 /* ~"Weißt du vielleicht, wer es wissen könnte?"~ */ GOTO 4
  IF ~~ THEN REPLY #37121 /* ~"OK. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37122 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37104 /* ~Sie wirkt beunruhigt. "Nee, Schleifer." Die meisten Leute vermeiden Ärger und legen's nicht drauf an."~ */
  IF ~~ THEN REPLY #37123 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37124 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37105 /* ~Sie zuckt zusammen und sieht dich dann mißtrauisch an. "Ja, ich hab' wohl gehört, daß es Leute gibt, die sowas mögen, aber ich kann dir nicht helfen."~ */
  IF ~~ THEN REPLY #37125 /* ~"Kennst du jemanden, der es könnte?"~ */ GOTO 6
  IF ~~ THEN REPLY #37126 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37127 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37106 /* ~Sie denkt einen Moment nach und zuckt dann die Schultern. "Frag mal den Jungen am Hochofen. Er hält gern ein Schwätzchen mit allen möglichen Leuten. Vielleicht hat er was gehört."
~ */
  IF ~~ THEN REPLY #37128 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37129 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37107 /* ~Sie zeigt zu den Ständen. "Anze verkauft sowas. Das ist der richtige Mann für dich."~ */
  IF ~~ THEN REPLY #37130 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37131 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37108 /* ~Sie zeigt zu den Ständen. "Aalek handelt mit solcher Kunst. Solltest mal mit ihm reden."~ */
  IF ~~ THEN REPLY #37132 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37133 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #37109 /* ~Sie runzelt die Stirn. "Ich will ja nicht unhöflich sein, aber für solch Gerede hab' ich keine Zeit. Frag mal den Jungen am Hochofen. Redet gern mit Fremden."~ */
  IF ~~ THEN REPLY #37134 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37110 /* ~Sie sieht dich an und lächelt. "Guten Tag, Schleifer. "Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #37135 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37136 /* ~"Leb wohl."~ */ EXIT
END
