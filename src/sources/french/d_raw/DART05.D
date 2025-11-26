// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34193 /* ~Ce tableau, peinture abstraite de verts et de violets, frémit et ondule sous le regard. En l'examinant de plus près, on s'aperçoit que c'est l'image peinte qui change, et non la toile elle-même. Une pancarte annonce : 'Coup d'œil du moment depuis les Murs de Moch'chma'.~ */
  IF ~~ THEN REPLY #42720 /* ~Touche le tableau.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42721 /* ~Pars.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42719 /* ~Tu poses la main sur le tableau… Comme tu t'en doutais, ce n'est pas la toile qui bouge, mais la représentation peinte qui change.~ */
  IF ~~ THEN REPLY #42722 /* ~Pars.~ */ EXIT
END
