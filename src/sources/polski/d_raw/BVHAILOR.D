// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BVHAILOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~BVHAILOR~

IF ~  LastPersonTalkedTo("Morte")
Global("Vhail_Talked_Morte","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31488 /* ~*Muszę spytać raz jeszcze: czy spotkaliśmy się już wcześniej, Bezimienny?*~ [VHA256A] */
  IF ~~ THEN EXTERN ~DMORTE~ 646
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63854 /* ~*Nie wzbudzasz we mnie zaufania, czaszko.*~ [VHA256B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Vhail_Talked_Annah","GLOBAL",0)
Global("Lawful_Vhailor_5","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63855 /* ~*Wydajesz mi się niepokojąco znajomy, Bezimienny.*~ [VHA257A] */
  IF ~~ THEN EXTERN ~DANNAH~ 314
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63856 /* ~*Twoje zdanie w tej sprawie nie ma znaczenia, diabelstwo. Coś jest... nie tak. Wkrótce prawda wyjdzie na jaw.*~ [VHA257B] */
  IF ~~ THEN EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Vhail_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #63857 /* ~*Czy twoja pobożność ma być zadośćuczynieniem za grzechy, których się dopuściłaś na śmiertelnikach, sukkubie?*~ [VHA258] */
  IF ~~ THEN EXTERN ~DGRACE~ 380
END
