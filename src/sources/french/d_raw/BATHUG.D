// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~BATHUG~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34568 /* ~"T'as payé en tuant cette chienne de Krystall. Ça suffit au patron. Mais j'crois qu'on va quand même t'chiver. G'wan… sors de là."~ */
  IF ~~ THEN REPLY #34569 /* ~"C'est touchant. Au revoir."~ */ EXIT
END

IF ~  Global("Paid_DAS","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34570 /* ~"Va falloir que t'allonges tes piécettes. C'est la bourse ou la vie ! Pousse une visite au péage et fais pas mine de l'oublier. Pigé ?"~ */
  IF ~~ THEN REPLY #34571 /* ~"Sûrement pas."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34572 /* ~"Très bien."~ */ EXIT
  IF ~~ THEN REPLY #34573 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Paid_DAS","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34574 /* ~"T'as payé, alors pourquoi tu vas pas caguer ailleurs ? On n'a pas besoin d'toi ici."~ */
  IF ~~ THEN REPLY #34575 /* ~"Peu importe. Au revoir."~ */ EXIT
END
