// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ463.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ463~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6484 /* ~Le cadavre dégingandé t'observe d'un air hagard. Le numéro '463' est gravé sur son front et ses lèvres sont cousues. Une très légère odeur de formol émane de ce corps.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6485 /* ~"Alors… t'as vu quelque chose d'intéressant ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6488 /* ~"Alors… t'as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6489 /* ~"Je sais que tu n'es pas un zombi. Tu ne trompes personne."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6490 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #6491 /* ~"Je suis heureux de t'avoir parlé. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #6492 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6486 /* ~Le cadavre continue à te fixer.~ */
  IF ~~ THEN REPLY #6493 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6487 /* ~Le cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #6494 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
