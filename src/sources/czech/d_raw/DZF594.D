// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF594.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF594~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35018 /* ~Belhající se mrtvola na tebe zírá prázdnýma očima. Kůži má tenkou jako papír... jako by její tělo někdo potáhl hustou pavučinou. Uhlem má na čele napsané číslo "594".~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35019 /* ~"Takže... cos dělala poslední dobou?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35036 /* ~"Takže... cos dělala poslední dobou?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35037 /* ~"Vím, že nejsi zombie. Takhle nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35038 /* ~Použij na mrtvole tvou dovednost Kosti-vyprávějte.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35043 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXTERN ~DMORTE~ 334
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35044 /* ~Nechej mrtvolu být.~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35045 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35046 /* ~Nechej mrtvolu být.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35047 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35048 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35020 /* ~Mrtvola na tebe dál zírá.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35021 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35034 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35035 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35039 /* ~Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35040 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35041 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35042 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35049 /* ~Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.~ */
END
