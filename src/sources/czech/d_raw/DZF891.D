// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF891.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF891~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35274 /* ~Obzvláště příšerně vypadající ženské tělo postrádá uši, nos a rty. Aby jí mohl sešít čelist, preparátor jí stáhnul kůži kolem úst obzvláště pevně. Řada zkřivených zažloutlých zubů je stále vidět skrze úzkou štěrbinu. Nad obočím má vyryto číslo "891".~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35275 /* ~"Takže... cos dělala poslední dobou?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35292 /* ~"Takže... cos dělala poslední dobou?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35293 /* ~"Vím, že nejsi zombie. Takhle nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35294 /* ~Použij na mrtvole tvou dovednost Kosti-vyprávějte.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35299 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXTERN ~DMORTE~ 366
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35300 /* ~Nechej mrtvolu být.~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35301 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35302 /* ~Nechej mrtvolu být.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35303 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35304 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35276 /* ~Mrtvola na tebe dál zírá.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35277 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35290 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35291 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35295 /* ~Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35296 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35297 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35298 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35305 /* ~Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.~ */
END
