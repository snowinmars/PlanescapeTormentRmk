// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDSTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDSTL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3170 /* ~Brána je držena masivními zámky a západkami. Vypadá to, že je nemožné otevřít ji prostředky, které máš k dispozici.~ */
  IF ~  Global("Curst_key","GLOBAL",7)
~ THEN REPLY #3171 /* ~Vyslov slabiky, které ti řekl Trias.~ */ GOTO 1
  IF ~~ THEN REPLY #68141 /* ~Nechej dveře být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #68142 /* ~Při vyslovení první slabiky vrata zaskřípaly. Při druhé se zkroutily kovové ostny a při třetí se brána rozletěla dokořán.~ */
  IF ~~ THEN REPLY #68143 /* ~"Tak a je to."~ */ DO ~SetDoorLocked("ar702d03",FALSE)
OpenDoor("AR702d03")
~ EXIT
END
