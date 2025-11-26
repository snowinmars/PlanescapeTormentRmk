// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMBIEW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMBIEW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #280 /* ~Le cadavre, les pieds traînants, t'observe, le regard vide. Un chiffre est gravé sur son front et ses lèvres sont cousues. Une faible odeur de formol émane de son corps.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #282 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #281 /* ~"Alors… t'as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1160 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1345 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #1346 /* ~"Je suis heureux de t'avoir parlé. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #1347 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #284 /* ~Le cadavre continue à te fixer.~ */
  IF ~~ THEN REPLY #285 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.3
  SAY #1159 /* ~Ce cadavre ne répond pas. Il semble trop mal en point pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #1161 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
