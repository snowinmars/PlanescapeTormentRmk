// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BLADEIM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~BLADEIM~

IF ~  !Global("Current_Area","GLOBAL",1200)
!Global("Current_Area","GLOBAL",1201)
!Global("Current_Area","GLOBAL",1202)
!Global("Current_Area","GLOBAL",1204)
!Global("Current_Area","GLOBAL",1203)
~ THEN BEGIN 0 // from:
  SAY #55069 /* ~Podivná zbraň vypadá dost nehezky, je vytvarovaná tak, že připomíná jeden ze symbolů na tvé levé ruce. Povrchem kovu prosvítají černé žilky, ostří je tak tupé, že by se s ním nedalo krájet ani máslo. Na dotek je zbraň vlažná.~ */
  IF ~~ THEN REPLY #55071 /* ~Nech meč být.~ */ EXIT
END

IF ~  GlobalLT("Current_Area","GLOBAL",1205)
GlobalGT("Current_Area","GLOBAL",1199)
~ THEN BEGIN 1 // from:
  SAY #63968 /* ~Tato strašlivá čepel je ošklivě vypadající zbraň, zformovaná tak, aby se podobala jednomu ze znaků na tvojí levé paži. Když si ji držel poprvé, byla nehybná, ale teď se černé žilky rozbíhají přes kov v drobounkých proudech a ostří se stává tenké jako vlas. Čepel v tvém sevření těžce pulsuje, jako nějaký druh chorého srdce.~ */
  IF ~~ THEN REPLY #63969 /* ~Podřízni si touto zbraní krk.~ */ GOTO 2
  IF ~~ THEN REPLY #63970 /* ~Dej zbraň do pochvy.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63971 /* ~Čepelí si přejíždíš přes krk a ostří se ti do něj bolestivě zařezává...~ */
  IF ~  Exists("Trans")
~ THEN REPLY #63972 /* ~Upadáš v temnotu...~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
StartMovie("T1Death")
SetGlobal("Immortal_Blade_Death","GLOBAL",1)
SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
  IF ~  !Exists("Trans")
~ THEN REPLY #63973 /* ~Upadáš v temnotu...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
SetAnimState(Protagonist,ANIM_MIMEDIE)
~ EXIT
END
