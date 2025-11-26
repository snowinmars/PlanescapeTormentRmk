// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2583 /* ~Zombie na tebe zírá prázdnýma očima. Rty má pevně sešity, kolem jeho těla jsou na několika místech omotány obvazy. Z mrtvoly vychází slabý zápach alkoholu.~ */
  IF ~~ THEN REPLY #2587 /* ~"Takže... děje se tu v poslední době něco zajímavého?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2588 /* ~Použij na tělo svou schopnost Kosti-Vyprávějte~ */ GOTO 2
  IF ~~ THEN REPLY #2589 /* ~"Skvěle jsme si pokecali. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #2591 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2584 /* ~Zombie na tebe dál zírá.~ */
  IF ~~ THEN REPLY #2590 /* ~"Dobrá tedy. Skvěle jsme si pokecali. Sbohem."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2585 /* ~Zombie neodpovídá. Asi už uhnila příliš, aby byla schopná komunikace. Zkus najít jejího tiskového mluvčího.~ */
  IF ~~ THEN REPLY #2586 /* ~"Sbohem tedy."~ */ EXIT
END
