// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2574 /* ~Ženská mrtvola je oblečená v košili zašpiněné jídlem a vínem. Rty má pevně sešity dohromady, ruce a nohy má omotány obvazy, které jsou asi napuštěny konzervačním roztokem, aby udržely maso čerstvé... výsledkem je, že pach hniloby překrývá odpuzující zápach po octu.~ */
  IF ~~ THEN REPLY #2575 /* ~"Takže... byla jsi někde v poslední době? Na nějakém zajímavém místě?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2576 /* ~Použij na těle svou schopnost Kosti-Vyprávějte~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2577 /* ~"Skvěle jsme si pokecali. Sbohem."~ */ EXTERN ~DMORTE~ 120
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2578 /* ~Nechej mrtvolu být.~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7047 /* ~"Bylo poučné si s tebou promluvit. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7048 /* ~Nechej mrtvolu na pokoji.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7049 /* ~"Bylo poučné si s tebou promluvit. Sbohem."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7050 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2579 /* ~Zombie na tebe dál zírá.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2580 /* ~"Dobrá tedy. Skvěle jsme si pokecali. Sbohem."~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7051 /* ~"Prima. Díky za rozhovor, moc mi pomohl. Sbohem."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7052 /* ~"Skvělé. Díky za obsažný rozhovor. Sbohem."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2581 /* ~Zombie neodpovídá. Asi už uhnila příliš, aby byla schopná komunikace. Zkus najít jejího tiskového mluvčího.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2582 /* ~Nechej mrtvolu být.~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7053 /* ~Nechej mrtvolu na pokoji.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7054 /* ~Nechej mrtvolu být.~ */ EXIT
END
