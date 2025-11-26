// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART12.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART12~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34204 /* ~Ce tableau représente un sombre paysage urbain. Vue lointaine sur un gigantesque centre de civilisation dévasté par les flammes. Pourtant, les rues sont vides… pas de soldats, pas de réfugiés ni même de cadavres. Une pancarte annonce : 'La Folie d'Udo'.~ */
  IF ~~ THEN REPLY #42679 /* ~Pars.~ */ DO ~SetGlobal("View_Art_12","AR0608",1)
~ EXIT
END
