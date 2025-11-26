// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAODA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAODA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49891 /* ~Du scheinst sie erschreckt zu haben. Sie hört plötzlich auf, das Zelt zu durchwühlen und starrt dich nervös an.~ */
  IF ~~ THEN REPLY #49892 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #49893 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49894 /* ~"Ich hab gar nichts gemacht! Ich schwör's!"~ */
  IF ~~ THEN REPLY #49895 /* ~"Warum erzählst du mir nicht, was du nicht getan hast?" ~ */ GOTO 2
  IF ~~ THEN REPLY #49896 /* ~"Was du tust ist deine Angelegenheit. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #49897 /* ~Sie sieht dich so an, als ob sie dir etwas sagen will, und dann huscht sie schnell zum Ausgang.~ */
  IF ~~ THEN REPLY #49898 /* ~"Halt..."~ */ DO ~EscapeArea()
~ EXIT
END
