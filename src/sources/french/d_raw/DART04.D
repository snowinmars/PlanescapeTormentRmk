// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34192 /* ~Une chaîne sanglante et animée, qui s'enroule et se déroule sur elle-même. Elle semble ondoyer comme l'épine dorsale d'un serpent. Une petite pancarte annonce : 'Chaîne animée de kyton, de Tintacogne'.~ */
  IF ~~ THEN REPLY #42657 /* ~Touche la chaîne.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42658 /* ~Pars.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42656 /* ~La chaîne est légèrement chaude au toucher, comme si elle était vivante. Tu remarques que des agrafes, crochets, aiguilles et autres petites pièces pointues sont soudés le long de la chaîne.~ */
  IF ~~ THEN REPLY #42659 /* ~Pars.~ */ EXIT
END
