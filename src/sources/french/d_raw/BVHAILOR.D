// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BVHAILOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~BVHAILOR~

IF ~  LastPersonTalkedTo("Morte")
Global("Vhail_Talked_Morte","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31488 /* ~*Je te le demande une nouvelle fois : nous sommes-nous déjà rencontrés, Sans-nom ?*~ [VHA256A] */
  IF ~~ THEN EXTERN ~DMORTE~ 646
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63854 /* ~*Tu ne m'inspires pas confiance, crâne.*~ [VHA256B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Vhail_Talked_Annah","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63855 /* ~*Tu m'es étonnamment familier, Sans-nom.*~ [VHA257A] */
  IF ~~ THEN EXTERN ~DANNAH~ 314
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63856 /* ~*Ton opinion n'a aucune importance dans cette affaire, tieffeline. Quelque chose ne va pas. La vérité se manifestera bien assez tôt.*~ [VHA257B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Vhail_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #63857 /* ~*Est-ce que ce sont de pieuses expiations pour tes péchés contre les mortels, succube ?*~ [VHA258] */
  IF ~~ THEN EXTERN ~DGRACE~ 380
END
