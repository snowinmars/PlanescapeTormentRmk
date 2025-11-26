// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57946 /* ~Vidíš muže středního věku. Dívá se na tebe se zájmem. "Zdravím, kamaráde."~ */
  IF ~~ THEN REPLY #57947 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #57948 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57949 /* ~Mírně se ti uklonil. "Jsem Dorn. Máš zájem o mé zboží?"~ */
  IF ~~ THEN REPLY #57950 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57951 /* ~"Ukaž mi, co máš."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57952 /* ~"Ne, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57953 /* ~Zavrtěl hlavou. "Teď na tvé otázky nemám čas. Možná nějaký jiný den."~ */
  IF ~~ THEN REPLY #57954 /* ~"Ukaž mi své zboží."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57955 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #57958 /* ~Vidíš obchodníka Dorna. Usmál se na tebe. "Zase se setkáváme. Jak ti můžu posloužit?"~ */
  IF ~~ THEN REPLY #57960 /* ~"Ukaž mi své zboží."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57962 /* ~"Sbohem."~ */ EXIT
END
