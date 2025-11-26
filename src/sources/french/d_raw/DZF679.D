// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF679.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF679~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35178 /* ~On dirait le cadavre d'une très vieille femme. Hormis la puanteur de la lotion d'embaumement, les coutures qui ferment la bouche et le numéro '679' cousu sur la joue droite, il est probable que son apparence actuelle ne diffère guère de celle qu'elle avait à la fin de sa vie.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35179 /* ~"Alors… Tu fais quelque chose plus tard ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35196 /* ~"Alors… Tu fais quelque chose plus tard ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35197 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35198 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35203 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXTERN ~DMORTE~ 354
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35204 /* ~Laisse le cadavre tranquille.~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35205 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35206 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35207 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35208 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35180 /* ~Le cadavre continue à te fixer.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35181 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35194 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35195 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35199 /* ~Ce cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35200 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 354
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35201 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35202 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35209 /* ~Ce cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
END
