// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR7~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38109 /* ~C'est ce qu'ils ont dit : tu as été divisé. Tu es l'un de tant d'autres. Tu portes beaucoup de noms, et chacun a laissé ses cicatrices dans ta chair.~ */
  IF ~~ THEN REPLY #53751 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53752 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53753 /* ~"L'ÉGARÉ… L'IMMORTEL… LA FIN DES INCARNATIONS… L'HOMME AUX MILLE MORTS… LE CONDAMNÉ À VIE… LE SANS REPOS… L'UN DE TANT… CELUI QUE LA VIE MAINTIENT PRISONNIER… CELUI PAR QUI LES OMBRES ARRIVENT… LE BLESSÉ… LE TRAÎNE-MISÈRE… YEMETH…"~ */
  IF ~~ THEN REPLY #53754 /* ~Continue.~ */ GOTO 2
  IF ~~ THEN REPLY #53755 /* ~Détourne-toi de l'inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53756 /* ~Je suis las.~ */
  IF ~  Global("Inscr_7","GLOBAL",0)
~ THEN REPLY #53757 /* ~Examine le panneau.~ */ GOTO 3
  IF ~~ THEN REPLY #53758 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53759 /* ~Le panneau est finement conçu ; on voit tout de suite qu'il s'agit de l'œuvre d'un maître. On doit pouvoir l'enfoncer dans le mur.~ */
  IF ~~ THEN REPLY #53760 /* ~Pousse le panneau.~ */ DO ~SetGlobal("Inscr_7","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53761 /* ~Ne touche pas au panneau.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53762 /* ~Le panneau glisse doucement dans le mur, dans un léger sifflement. Tu entends un déclic provenant du sarcophage derrière toi.~ */
  IF ~~ THEN REPLY #53763 /* ~Détourne-toi de l'inscription.~ */ EXIT
END
