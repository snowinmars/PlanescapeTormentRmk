// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM199.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM199~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34975 /* ~Ce cadavre réanimé dégage une puanteur de viande carbonisée et de textiles qui brûlent. Il porte sur tout le côté droit des marques de brûlures assez récentes ; peut-être est-il resté trop près d'un feu et qu'il a commencé à s'enflammer. Le numéro '199' est gravé sur son front et ses lèvres sont cousues ensemble.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34976 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34979 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34980 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34981 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #34984 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #34985 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34977 /* ~Le cadavre continue à te fixer.~ */
  IF ~~ THEN REPLY #34978 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34982 /* ~Le cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #34983 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
