// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMBIEW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMBIEW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #280 /* ~Belhající se mrtvola na tebe zírá svým prázdným pohledem. Do jejího čela je vyryto číslo a rty jsou sešity. Z těla jí vychází slabý zápach formaldehydu.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #282 /* ~"Takže... viděla jsi poslední dobou něco zajímavého?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #281 /* ~"Takže... viděla jsi poslední dobou něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1160 /* ~"Já vím, že nejsi zombie, víš. Tady nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1345 /* ~Použij svoji schopnost Kosti-vyprávějte na mrtvolu.~ */ GOTO 2
  IF ~~ THEN REPLY #1346 /* ~"Bylo to skvělý s tebou pokecat. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #1347 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #284 /* ~Mrtvola na tebe stále civí.~ */
  IF ~~ THEN REPLY #285 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #1159 /* ~Tato mrtvola neodpovídá. Vypadá, že je příliš mimo na to, aby ti odpověděla na jakoukoliv otázku.~ */
  IF ~~ THEN REPLY #1161 /* ~Nechej mrtvolu být.~ */ EXIT
END
