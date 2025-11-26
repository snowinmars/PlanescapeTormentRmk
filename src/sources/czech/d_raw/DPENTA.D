// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPENTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPENTA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #54184 /* ~Vidíš prázdný pentagram. Vzduch kolem je suchý a chladný. Celou oblastí proniká pocit intenzivního zla.~ */
  IF ~~ THEN REPLY #54185 /* ~Nechej to být.~ */ EXIT
  IF ~  PartyHasItem("AgScroll")
~ THEN REPLY #54186 /* ~Prozkoumej svitek od Dony Quisho. ~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",3)
SinisterPoof("S113SMOK",[850.438],1)
CreateCreature("Agril",[850.438],S)
DestroyPartyItem("AgScroll",TRUE)
AddexperienceParty(60000)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #54187 /* ~Okolí se na chvíli zatemnilo, tvou hlavou a srdcem proniká pocit silného vanoucího větru. Když se tvůj pohled vyjasnil, tyčí se před tebou ohromný fiend!~ */
  IF ~~ THEN EXTERN ~DAGRIL~ 0
END
