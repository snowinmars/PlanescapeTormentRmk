// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM965.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM965~

IF ~  NearbyDialog("Dmorte")
~ THEN BEGIN 0 // from:
  SAY #34920 /* ~Ce cadavre suit d'un pas lourd un chemin triangulaire. Quand il atteint l'un des angles du triangle, il s'arrête, tourne et continue en titubant jusqu'à l'angle suivant. Il porte le numéro '965' tatoué sur le côté du crâne. À ton approche, il s'interrompt et te dévisage.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 477
END

IF ~  !NearbyDialog("Dmorte")
~ THEN BEGIN 1 // from:
  SAY #34922 /* ~Ce cadavre suit d'un pas lourd un chemin triangulaire. Quand il atteint l'un des angles du triangle, il s'arrête, tourne et continue en titubant jusqu'à l'angle suivant. Il porte le numéro '965' tatoué sur le côté du crâne. À ton approche, il s'interrompt et te dévisage.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34923 /* ~"Mais… pourquoi tu marches dans un triangle ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45070 /* ~"Mais… pourquoi tu marches dans un triangle ?"~ */ GOTO 2
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45071 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 2
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45072 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 3
  IF ~~ THEN REPLY #45073 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #45074 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34927 /* ~Le cadavre te fixe d'un regard vide.~ */
  IF ~~ THEN REPLY #34928 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #45069 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #45075 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
