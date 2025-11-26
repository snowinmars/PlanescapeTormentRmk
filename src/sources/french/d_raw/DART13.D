// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART13.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART13~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34205 /* ~On dirait un paysage souterrain… L'intérieur d'une immense caverne pleine de champignons géants multicolores et légèrement luminescents. Une pancarte annonce : 'Vallée sous Clanggedin'.~ */
  IF ~~ THEN REPLY #42680 /* ~Pars.~ */ DO ~SetGlobal("View_Art_13","AR0608",1)
~ EXIT
END
