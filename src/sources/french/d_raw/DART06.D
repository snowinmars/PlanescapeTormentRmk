// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34196 /* ~La surface de cette peinture… collage sauvage de couleurs vives… ondule constamment, telle la surface d'un étang sous une pluie légère. Une pancarte annonce : 'Mouvement de vague : étude n°7'.~ */
  IF ~~ THEN REPLY #42693 /* ~Touche le tableau.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42696 /* ~Pars.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42691 /* ~Tu poses la paume de ta main sur la toile… Tu ne sens pas les ondulations proprement dites, mais une sensation de froid et de picotement te traverse la main dès le premier contact.~ */
  IF ~~ THEN REPLY #42698 /* ~Pars.~ */ EXIT
END
