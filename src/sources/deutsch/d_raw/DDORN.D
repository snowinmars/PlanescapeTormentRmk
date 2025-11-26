// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57946 /* ~Du siehst einen Mann mittleren Alters. Er sieht dich interessiert an, als du näherkommst. "Guten Tag, Schleifer."~ */
  IF ~~ THEN REPLY #57947 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #57948 /* ~Ignoriere ihn.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57949 /* ~Er verneigt sich leicht vor dir. "Ich bin Dorn. Kann ich dich vielleicht für meine Waren interessieren?"~ */
  IF ~~ THEN REPLY #57950 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #57951 /* ~"Zeig mir, was du hast."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57952 /* ~"Nein, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57953 /* ~Er schüttelt den Kopf. "Ich habe jetzt keine Zeit für Fragen. Ein andermal vielleicht."~ */
  IF ~~ THEN REPLY #57954 /* ~"Zeig mir deine Waren."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57955 /* ~"Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #57958 /* ~Du siehst Dorn, den Kaufmann. Er begrüßt dich lächelnd: "So treffen wir uns wieder. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #57960 /* ~"Zeig mir deine Waren."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57962 /* ~"Leb wohl."~ */ EXIT
END
