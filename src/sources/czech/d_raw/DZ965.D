// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ965~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~Tato mrtvola se belhá kolem po trojúhelníkové dráze. Jakmile dojde do rohu trojúhelníku, zarazí se, pak se otočí a jde do dalšího rohu. Na straně lebky má vytetováno číslo "965". Když se přiblížíš, zastaví se a zírá na tebe.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34921 /* ~
~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34924 /* ~
~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34925 /* ~
~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34926 /* ~
~ */ GOTO 2
  IF ~~ THEN REPLY #34929 /* ~
~ */ EXIT
  IF ~~ THEN REPLY #34930 /* ~
~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34922 /* ~Tato mrtvola se belhá kolem po trojúhelníkové dráze. Jakmile dojde do rohu trojúhelníku, zarazí se, pak se otočí a jde do dalšího rohu. Na straně lebky má vytetováno číslo "965". Když se přiblížíš, zastaví se a zírá na tebe.~ */
  IF ~~ THEN REPLY #34923 /* ~"Hele... proč chodíš v trojúhelníku?"~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34927 /* ~Mrtvola na tebe prázdně zírá.~ */
  IF ~~ THEN REPLY #34928 /* ~Nechej mrtvolu být.~ */ EXIT
END
