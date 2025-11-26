// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ965~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~Ce cadavre suit d'un pas lourd un chemin triangulaire. Quand il atteint l'un des angles du triangle, il s'arrête, tourne et continue en titubant jusqu'à l'angle suivant. Il porte le numéro '965' tatoué sur le côté du crâne. À ton approche, il s'interrompt et te dévisage.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34921 /* ~~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34924 /* ~~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34925 /* ~~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34926 /* ~~ */ GOTO 2
  IF ~~ THEN REPLY #34929 /* ~~ */ EXIT
  IF ~~ THEN REPLY #34930 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34922 /* ~Ce cadavre suit d'un pas lourd un chemin triangulaire. Quand il atteint l'un des angles du triangle, il s'arrête, tourne et continue en titubant jusqu'à l'angle suivant. Il porte le numéro '965' tatoué sur le côté du crâne. À ton approche, il s'interrompt et te dévisage.~ */
  IF ~~ THEN REPLY #34923 /* ~"Mais… pourquoi tu marches dans un triangle ?"~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34927 /* ~Le cadavre te fixe d'un regard vide.~ */
  IF ~~ THEN REPLY #34928 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
