// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_TOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_TOMB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48901 /* ~Une petite inscription est gravée sur cette grande tombe.~ */
  IF ~~ THEN REPLY #48902 /* ~Lis l'inscription.~ */ DO ~SetGlobal("DN_Read_Tomb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #58918 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58916 /* ~'Ci-gît la mère bien-aimée de Bah'jin, U-'. La fin de l'inscription est illisible.~ */
  IF ~~ THEN REPLY #58917 /* ~Pars.~ */ EXIT
END
