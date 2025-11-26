// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~BATHUG~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34568 /* ~"Du hast gezahlt, indem du diese Schlampe Krystall umgebracht hast. Schön und gut für den Boss. Ich denke, wir sollten dich trotzdem aufschlitzen. Na los... mach daß du fortkommst."~ */
  IF ~~ THEN REPLY #34569 /* ~"Wirklich ergreifend. Leb wohl."~ */ EXIT
END

IF ~  Global("Paid_DAS","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34570 /* ~"Wir werden früh genug etwas Klimper von dir verlangen. Münze oder Blut. Geh und sprich mit dem Zollkassierer - und versuch bloß nicht zu kneifen. Einverstanden?"~ */
  IF ~~ THEN REPLY #34571 /* ~"Glaub' ich nicht."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34572 /* ~"Wie du meinst."~ */ EXIT
  IF ~~ THEN REPLY #34573 /* ~Flieh.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Paid_DAS","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34574 /* ~"Du hast doch bezahlt, warum haust du dann nicht endlich ab? Können dich hier nicht brauchen."~ */
  IF ~~ THEN REPLY #34575 /* ~"Ja ja. Leb wohl."~ */ EXIT
END
