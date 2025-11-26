// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57946 /* ~Tu aperçois un homme entre deux âges. Il te regarde approcher avec intérêt. "Bonjour, matois."~ */
  IF ~~ THEN REPLY #57947 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #57948 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57949 /* ~Il s'incline légèrement. "Moi, c'est Dorn. Mes marchandises t'intéressent-elles ?"~ */
  IF ~~ THEN REPLY #57950 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57951 /* ~"Montre-moi ce que tu as."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57952 /* ~"Non, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57953 /* ~Il secoue la tête. Je n'ai pas de temps à perdre avec des questions. Peut-être un autre jour."~ */
  IF ~~ THEN REPLY #57954 /* ~"Montre-moi tes marchandises."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57955 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #57958 /* ~Tu aperçois Dorn, le marchand. Il te sourit. "Nous nous rencontrons à nouveau. Que puis-je faire pour toi ?"~ */
  IF ~~ THEN REPLY #57960 /* ~"Montre-moi tes marchandises."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57962 /* ~"Au revoir."~ */ EXIT
END
