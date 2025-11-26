// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BVHAILOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~BVHAILOR~

IF ~  LastPersonTalkedTo("Morte")
Global("Vhail_Talked_Morte","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31488 /* ~"Musím se znovu zeptat: Už jsme se setkali, Bezejmenný?"~ [VHA256A] */
  IF ~~ THEN EXTERN ~DMORTE~ 646
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63854 /* ~"Nezabývej se tím, že mi budeš věřit, lebko."~ [VHA256B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Vhail_Talked_Annah","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63855 /* ~"Našel jsem tě, znepokojivě obyčejného, Bezejmenný."~ [VHA257A] */
  IF ~~ THEN EXTERN ~DANNAH~ 314
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63856 /* ~"Tvé mínění nemá váhu, Tiefling. Něco je... špatně. Brzy se pravda sama odhalí."~ [VHA257B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Vhail_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #63857 /* ~"Je tvá pobožnost vykoupením za tvé hříchy vůči smrtelníkům, succube?"~ [VHA258] */
  IF ~~ THEN EXTERN ~DGRACE~ 380
END
