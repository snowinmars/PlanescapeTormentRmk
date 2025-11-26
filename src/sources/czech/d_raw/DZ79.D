// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~Masitá hlava mrtvoly byla čistě odseknutá a úspěšně přišitá zpět. Několik různých druhů stehů - všechny v různém stádiu rozmotání - ukazují, že hlavu neustále někdo uráží a pak zase přišívá. Do spánku je vyryto číslo "79", obkroužené zubatou kružnicí, která byla do kůže asi vypálená cejchem.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34943 /* ~"Takže... děje se tady poslední dobou něco zajímavého?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34946 /* ~Prozkoumej zubatou kružnici.~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"Vím, že nejsi zombie. Takhle nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Použij na mrtvole tvou dovednost Kosti-vyprávějte.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34944 /* ~Mrtvola na tebe dál zírá.~ */
  IF ~~ THEN REPLY #34945 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34949 /* ~Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.~ */
  IF ~~ THEN REPLY #34950 /* ~Nechej mrtvolu být.~ */ EXIT
END
