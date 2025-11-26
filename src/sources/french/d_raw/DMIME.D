// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49773 /* ~Le visage de cet homme a été peint en blanc. Des sourcils courbes ont été dessinés au crayon sur son front et de la poudre rouge a été utilisée pour esquisser de petits cercles sur ses joues et accentuer la couleur de ses lèvres. Il dit quelque chose, mais tu ne l'entends pas. Ses mains sont appuyées sur ce qui ressemble à un mur invisible.~ */
  IF ~~ THEN REPLY #49774 /* ~"Quoi ? Je ne t'entends pas…"~ */ GOTO 1
  IF ~~ THEN REPLY #49775 /* ~Essaie de le toucher.~ */ GOTO 2
  IF ~~ THEN REPLY #49776 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49777 /* ~Il baisse la tête, soupire sans bruit et hausse les épaules. Puis, il se recule légèrement, te fait un signe d'au revoir et commence à mimer divers actes… tirer sur une corde, descendre des escaliers, etc.~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN EXTERN ~DGRACE~ 144
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49778 /* ~Essaie de le toucher.~ */ GOTO 2
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49779 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #49780 /* ~Tu tends le bras pour toucher l'homme, mais ta main est comme paralysée par une force invisible. L'artiste semble être pris au piège dans une sorte de boîte ou de cage invisible.~ */
  IF ~~ THEN REPLY #49781 /* ~Pars.~ */ EXIT
END
