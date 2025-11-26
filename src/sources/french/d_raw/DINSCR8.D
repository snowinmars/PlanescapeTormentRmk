// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR8~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38111 /* ~Crains les noms. Les noms ont le pouvoir de l'identité. Les noms peuvent être utilisés comme armes par les autres. Ils peuvent être utilisés comme appât et suivre ta trace à travers les plans. Reste sans nom et tu seras sauf.~ */
  IF ~~ THEN REPLY #53764 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53765 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53766 /* ~Je suis Sans-nom.~ */
  IF ~  Global("Inscr_8","GLOBAL",0)
~ THEN REPLY #53767 /* ~Examine le panneau.~ */ GOTO 2
  IF ~~ THEN REPLY #53768 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53769 /* ~Le panneau est de conception parfaite. On doit pouvoir l'enfoncer dans le mur.~ */
  IF ~~ THEN REPLY #53770 /* ~Pousse le panneau.~ */ DO ~SetGlobal("Inscr_8","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53771 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53772 /* ~Sans un bruit, le panneau s'enfonce dans le mur. Tu entends un déclic provenant du sarcophage derrière toi.~ */
  IF ~~ THEN REPLY #53773 /* ~Détourne-toi de l'inscription.~ */ EXIT
END
