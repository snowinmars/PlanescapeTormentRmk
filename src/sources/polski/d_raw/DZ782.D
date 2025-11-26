// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ782.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ782~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24708 /* ~Ten trup zatrzymuje się i beznamiętnie patrzy, kiedy doń podchodzisz. Na czole ma wyryty numer "782", a wargi zaszyte. Od ciała unosi się słaby odór formaliny.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24709 /* ~"Szukam klucza... czy ty przypadkiem go nie masz?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24712 /* ~"Szukam klucza... czy ty przypadkiem go nie masz?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24713 /* ~Obejrzyj truposza, sprawdź, czy nie ma klucza.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24714 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ GOTO 2
  IF ~~ THEN REPLY #24717 /* ~Zostaw truposza w spokoju.~ */ EXIT
  IF ~~ THEN REPLY #24718 /* ~"Chciałbym z tobą porozmawiać o kupcu, który nazywa się Zak."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24710 /* ~Trup nie odpowiada.~ */
  IF ~~ THEN REPLY #24711 /* ~"W takim razie trudno. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24715 /* ~Ten truposz wygląda na tego, który ma klucz. Trzyma go mocno w lewej dłoni. Kciuk i palec wskazujący zacisnęły się na nim w śmiertelnym uścisku. Chyba będziesz musiał odrąbać mu rękę, aby zdobyć ten klucz.~ */
  IF ~~ THEN REPLY #24716 /* ~"Potrzebuję tego klucza, trupku... nie bardzo chyba tęskno ci do tego świata."~ */ EXIT
END
