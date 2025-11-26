// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM396.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM396~

IF ~  HasItem("Bandage","ZM396")
~ THEN BEGIN 0 // from:
  SAY #34931 /* ~Ce cadavre va d'une dalle à l'autre en traînant les pieds ; il panse les cadavres étendus là. Le numéro '396' est gravé sur sa tempe gauche et ses lèvres sont cousues ensemble. Tu vois qu'il porte un rouleau de pansements dans la main… qui te semblent utilisables.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34932 /* ~"Ça te gêne pas si j'emprunte ces pansements ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34935 /* ~"Ça te gêne pas si j'emprunte ces pansements ?"~ */ GOTO 1
  IF ~~ THEN REPLY #34936 /* ~Essaie de prendre les pansements au zombi.~ */ DO ~GiveItem("Bandage",Protagonist)
~ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34937 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34940 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #34941 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #45106 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.3 4.0 4.1 4.2
  SAY #34933 /* ~Le cadavre continue à te fixer.~ */
  IF ~  HasItem("Bandage","ZM396")
~ THEN REPLY #34934 /* ~Essaie de prendre les pansements au zombi.~ */ DO ~GiveItem("Bandage",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #45107 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 4.3
  SAY #34938 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #34939 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.0
  SAY #45108 /* ~Tu dégages ta main en prenant les bandages que tenait le cadavre. Ce dernier ne s'en aperçoit même pas. Il continue de panser les autres corps comme si de rien n'était.~ */
  IF ~~ THEN REPLY #45109 /* ~Réexamine le cadavre.~ */ GOTO 4
  IF ~~ THEN REPLY #45110 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~  !HasItem("Bandage","ZM396")
~ THEN BEGIN 4 // from: 3.0
  SAY #45111 /* ~Le mort-vivant passe d'une table à l'autre et panse les cadavres allongés. Ou du moins, il effectue les gestes nécessaires, car il n'a plus le moindre bandage en main. Le numéro '396' est gravé sur sa tempe gauche et ses lèvres ont été cousues.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45112 /* ~"Désolé de t'avoir pris ces bandages, mais j'en ai davantage besoin que ces cadavres."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45113 /* ~"Désolé de t'avoir pris ces bandages, mais j'en ai davantage besoin que ces cadavres."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45114 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45115 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #45116 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #45117 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
