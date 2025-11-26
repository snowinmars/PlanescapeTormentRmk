// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ463.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ463~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6484 /* ~Zmasakrovaná mrtvola na tebe zírá prázdnýma očima. Na čele má vyřezané číslo "463" a její rty byly sešity. Z těla vychází slabý pach formaldehydu.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6485 /* ~"Tak... je tam dál vidět něco zajímavého?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6488 /* ~"Tak... je tam vidět něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6489 /* ~"Vím, že nejsi zombie, jasný? Mě neoklameš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6490 /* ~Použij svoji schopnost Kosti vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #6491 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #6492 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6486 /* ~Mrtvola na tebe stále zírá.~ */
  IF ~~ THEN REPLY #6493 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6487 /* ~Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to aby byla schopna odpovědět na nějakou tvou otázku.~ */
  IF ~~ THEN REPLY #6494 /* ~Nechej mrtvolu být.~ */ EXIT
END
