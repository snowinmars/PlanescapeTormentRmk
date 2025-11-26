// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ782.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ782~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24708 /* ~Ce cadavre s'arrête et te fixe alors que tu t'approches. Le numéro '782' est gravé sur son front, et ses lèvres ont été cousues. Une légère odeur de formol émane de lui.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24709 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24712 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24713 /* ~Examine le cadavre et regarde s'il possède une clé.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24714 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ GOTO 2
  IF ~~ THEN REPLY #24717 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~~ THEN REPLY #24718 /* ~"Je voulais te parler de Zac, le marchand."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24710 /* ~Le cadavre ne répond pas.~ */
  IF ~~ THEN REPLY #24711 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24715 /* ~Ce cadavre doit être celui qui possède la clé. Il la tient serrée dans sa main gauche, le pouce et l'index comme figés autour. On dirait que tu vas être obligé d'arracher la main du corps pour récupérer la clé.~ */
  IF ~~ THEN REPLY #24716 /* ~"J'ai besoin de cette clé, cadavre… on dirait bien que tu ne vas pas faire long feu dans ce monde."~ */ EXIT
END
