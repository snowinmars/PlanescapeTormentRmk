// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~GATHUG~

IF ~  GlobalGT("Krystall","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34576 /* ~"Ils m'ont dit qu't'avais un droit d'passage gratuit dans l'territoire des Anges Rasoirs maintenant, bige. N'en abuse pas."~ */
  IF ~~ THEN REPLY #34577 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34578 /* ~"Reste ici. Quelqu'un va venir te parler."~ */
  IF ~~ THEN REPLY #34579 /* ~"N'y compte pas. Je ne serai plus là depuis longtemps quand il se montrera."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34580 /* ~"Et pourquoi on ne l'accueillerait pas avec ton sang ? Je vais déjà commencer à le faire couler."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34581 /* ~"Très bien. J'attends ici."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34582 /* ~"T'as payé, tu peux passer gratuitement. Profites-en tant que ça dure."~ */
  IF ~~ THEN REPLY #34583 /* ~"Merci, je n'y manquerai pas. Au revoir."~ */ EXIT
END
