// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #241 /* ~Mrtvola ženy na tebe civí svým prázdným pohledem. Do jejího čela je vyryto číslo a rty má sešité. Z těla jí vychází slabý zápach formaldehydu.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #242 /* ~"Takže... co děláš dneska večer?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #243 /* ~"Takže... co děláš dneska večer?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1158 /* ~"Já vím, že nejsi zombie. Tady nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1342 /* ~Použij svoji schopnost Kosti-vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1343 /* ~"Bylo to skvělý s tebou pokecat. Sbohem."~ */ EXTERN ~DMORTE~ 46
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1344 /* ~Nechej mrtvolu být.~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2598 /* ~Skvěle jsme si pokecali. Sbohem.~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2599 /* ~Nechej mrtvolu být.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3923 /* ~Skvěle jsme si pokecali. Sbohem.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3924 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #244 /* ~Mrtvola na tebe pořád zírá.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #245 /* ~"Pak tedy sbohem."~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2597 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3925 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #283 /* ~Mrtvola neodpovídá. Vypadá to, že je myšlenkami úplně mimo než aby odpověděla na některou z tvých otázek. ~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1157 /* ~"Pak tedy sbohem."~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2600 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3926 /* ~"Sbohem tedy."~ */ EXIT
END
