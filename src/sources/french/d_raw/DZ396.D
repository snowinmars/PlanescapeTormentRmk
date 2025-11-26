// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ396.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ396~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34931 /* ~Ce cadavre va d'une dalle à l'autre en traînant les pieds ; il panse les cadavres étendus là. Le numéro '396' est gravé sur sa tempe gauche et ses lèvres sont cousues ensemble. Tu vois qu'il porte un rouleau de pansements dans la main… qui te semblent utilisables.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34932 /* ~"Ça te gêne pas si j'emprunte ces pansements ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34935 /* ~"Ça te gêne pas si j'emprunte ces pansements ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34936 /* ~Essaie de prendre les pansements au zombi.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34937 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 2
  IF ~~ THEN REPLY #34940 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ EXIT
  IF ~~ THEN REPLY #34941 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34933 /* ~Le cadavre continue à te fixer.~ */
  IF ~~ THEN REPLY #34934 /* ~Essaie de prendre les pansements au zombi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34938 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #34939 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
