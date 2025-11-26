// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38101 /* ~Il est extrêmement important de noter tes voyages, car ils peuvent t'apprendre des choses. Il est cependant primordial de protéger les sources d'informations que tu utilises pour résoudre cette énigme au cas où elles seraient découvertes. Si des personnages clés, des documents ou des oracles venaient à être éliminés, que ce soit par la mort ou par la destruction, alors tu ne serais plus capable de te souvenir de qui tu es et de la raison pour laquelle tu es tel que tu es.~ */
  IF ~  Global("Inscr_3","GLOBAL",0)
~ THEN REPLY #53707 /* ~Examine le panneau.~ */ GOTO 1
  IF ~~ THEN REPLY #53708 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53709 /* ~La fabrication est parfaite. Le panneau est encadré dans le mur avec une précision que seul un maître peut obtenir. Tu penses que le panneau peut s'enfoncer encore plus dans le mur.~ */
  IF ~~ THEN REPLY #53710 /* ~Pousse le panneau.~ */ DO ~SetGlobal("Inscr_3","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53711 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53712 /* ~Tu glisses le panneau dans le mur d'une légère pression de la main. Tu entends un déclic provenant du sarcophage derrière toi.~ */
  IF ~~ THEN REPLY #53713 /* ~Détourne-toi de l'inscription.~ */ EXIT
END
