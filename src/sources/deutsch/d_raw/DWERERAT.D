// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERERAT~

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23941 /* ~Die Werratte zischt dich an. "Menscchhhhhh! Sssstirrrb!" Sie springt dich an.~ */
  IF ~~ THEN REPLY #23946 /* ~Kämpf.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23947 /* ~Flüchte.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #23942 /* ~Die Werratte zischt dich an. "Menscchhhhhh! Sssstirrrb!" Sie springt dich an.~ */
  IF ~~ THEN REPLY #23948 /* ~Kämpf.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23949 /* ~Flüchte.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #23943 /* ~Die Werratte zischt dich an, unterdrückt aber den Wunsch dich anzugreifen. Statt dessen schleicht sie ein Stück zurück und behält dich dabei im Auge.~ */
  IF ~~ THEN REPLY #23950 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("CR_Vic","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #23944 /* ~Die Menschenratte lacht dich an und schüttelt ihren Kopf, als du versuchst, mit ihr zu sprechen. Offensichtlich hat sie die Lust an der Kommunikation mit Menschen verloren.~ */
  IF ~~ THEN REPLY #23951 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("Zap","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #23945 /* ~Die Werratte zischt dich an. "Menscchhhhhh! Sssstirrrb!" Sie springt dich an.~ */
  IF ~~ THEN REPLY #23952 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23953 /* ~Flüchte.~ */ EXIT
END

IF ~  CreatureInArea("AR0508")
~ THEN BEGIN 5 // from:
  SAY #67268 /* ~Die Werratte zischt dich an, kann ihre offenkundige Angriffslust aber zügeln. Statt dessen schleicht sie zurück und beobachtet dich.~ */
  IF ~~ THEN REPLY #67269 /* ~"Dann leb wohl."~ */ EXIT
END
