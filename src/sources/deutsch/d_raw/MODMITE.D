// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MODMITE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~MODMITE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64181 /* ~Diese Zauberstange erlaubt es dem Benutzer, Modronkonstrukte herbeizurufen, die seine Feinde bekämpfen. Ein bis drei Konstrukte können eingesetzt werden. Die Konstrukte kämpfen furchtlos bis zu ihrem Tod.~ */
  IF ~~ THEN REPLY #64182 /* ~Verwende es.~ */ DO ~CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64183 /* ~Steck es weg.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 1 // from:
  SAY #64184 /* ~Diese Zauberstange erlaubt es dem Benutzer, Modronkonstrukte herbeizurufen, die seine Feinde bekämpfen. Ein bis drei Konstrukte können eingesetzt werden. Die Konstrukte kämpfen furchtlos bis zu ihrem Tod.~ */
  IF ~~ THEN REPLY #64185 /* ~Verwende es.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64186 /* ~Steck es weg.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 2 // from:
  SAY #64188 /* ~Diese Zauberstange erlaubt es dem Benutzer, Modronkonstrukte herbeizurufen, die seine Feinde bekämpfen. Ein bis drei Konstrukte können eingesetzt werden. Die Konstrukte kämpfen furchtlos bis zu ihrem Tod.~ */
  IF ~~ THEN REPLY #64189 /* ~Verwende es.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64191 /* ~Steck es weg.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 3 // from:
  SAY #67150 /* ~Der Zauberstab fühlt sich kalt und leblos in deinen Händen an. Vielleicht funktioniert er nicht an dem Ort, an dem du dich gerade befindest.~ */
  IF ~~ THEN REPLY #67151 /* ~Leg ihn beiseite.~ */ EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 4 // from:
  SAY #67152 /* ~Der Zauberstab fühlt sich kalt und leblos in deinen Händen an. Vielleicht funktioniert er nicht an dem Ort, an dem du dich gerade befindest.~ */
  IF ~~ THEN REPLY #67153 /* ~Leg ihn beiseite.~ */ EXIT
END
