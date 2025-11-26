// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFEM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #241 /* ~La morte te dévisage, le regard vide. Un chiffre est gravé sur son front et ses lèvres sont cousues. Une faible odeur de formol émane de son corps.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #242 /* ~"Alors… Tu fais quelque chose plus tard ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #243 /* ~"Alors… Tu fais quelque chose plus tard ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1158 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1342 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1343 /* ~"C'était super de parler avec toi. Au revoir."~ */ EXTERN ~DMORTE~ 46
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1344 /* ~Laisse le cadavre tranquille.~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2598 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2599 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3923 /* ~C'était super de parler avec toi. Au revoir.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3924 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #244 /* ~La morte te dévisage toujours.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #245 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2597 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3925 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #283 /* ~Ce cadavre ne répond pas. Il semble trop mal en point pour répondre à tes questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #1157 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 46
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #2600 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #3926 /* ~"Alors, au revoir."~ */ EXIT
END
