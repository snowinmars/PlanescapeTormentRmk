// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDDABUS~

IF ~  Global("Alley_Dabus_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50355 /* ~Tu vois le corps mort d'un dabus. La puanteur de son corps en décomposition est accablante et à en juger par sa posture rigide et étrange, il semble mort depuis bien longtemps. Mais, sans pouvoir te l'expliquer, la scène éveille ta curiosité.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50356 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #50370 /* ~Laisse le macchabée reposer en paix.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #50357 /* ~Pendant quelques secondes, on dirait qu'il ne va rien se passer. Puis, tout à coup, un léger souffle rauque sort de la bouche ouverte du cadavre.~ */
  IF ~~ THEN REPLY #50358 /* ~"Bonjour ? Tu m'entends ?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50359 /* ~Un silence perdure pendant un moment, puis, sans crier gare, la bouche du cadavre se met à bouger. "Bien sûr que je peux t'entendre ! Je suis mort, pas sourd… tête de bige."~ */
  IF ~~ THEN REPLY #50360 /* ~"Ne t'en fais pas… Je veux juste te poser quelques questions."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #50361 /* ~Des questions ? Est-ce que ta petite tête de béjaune trouve que je ressemble à un pôle information ?~ */
  IF ~~ THEN REPLY #50362 /* ~Pourquoi ces insultes ? Je croyais que les dabus ne communiquaient qu'avec des énigmes ?~ */ GOTO 4
  IF ~~ THEN REPLY #50369 /* ~"Est-ce que tu peux au moins me dire comment tu es mort pour que j'achève cette foutue quête de l'Allée enceinte et que je puisse me rendre dans le Bas Quartier ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50363 /* ~Fichtre ! T'es vraiment pas brillant toi. Tout le monde sait que la mort est un langage universel. Qu'est-ce que tu veux que ça m'apporte de balancer ces symboles débiles si t'es pas capable d'en comprendre la moitié ? Comment tu ferais pour résoudre cette quête hein ? Et puis c'est juste un espace de dialogue réservé, tête de baudet.~ */
  IF ~~ THEN REPLY #50364 /* ~"Est-ce que tu peux au moins me dire comment tu es mort pour que j'achève cette foutue quête de l'Allée enceinte et que je puisse me rendre dans le Bas Quartier ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #50365 /* ~"C'est sûr, gamin. Tu vois, c'est comme ça. Je suis venu dans cette Allée pour savoir pourquoi les bâtiments changeaient tout le temps. Alors, je me suis aventuré dans ce bâtiment, et la dernière chose dont je me souviens, c'est que les portes et les fenêtres se sont fermées. J'ai été pris au piège et impossible d'en sortir. J'ai tenté de creuser un passage à coups de marteaux, mais chaque fois que j'enlevais un morceau du mur, le bâtiment semblait immédiatement s'auto-réparer."~ */
  IF ~~ THEN REPLY #50366 /* ~"Merci, tu m'a bien aidé."~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #50367 /* ~N'en parlons plus, ballot !~ */
  IF ~~ THEN REPLY #50368 /* ~Pars.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #50371 /* ~Tu vois le corps mort d'un dabus. La puanteur de son corps en décomposition est accablante et à en juger par sa posture rigide et étrange, il semble mort depuis bien longtemps. Mais, sans pouvoir te l'expliquer, la scène éveille ta curiosité.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50372 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 1
  IF ~~ THEN REPLY #50373 /* ~Laisse le macchabée reposer en paix.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #50374 /* ~Le dabus mort n'a plus rien à te dire. Essaye de nouveau lorsque Steve aura terminé ce morceau de dialogue.~ */
  IF ~~ THEN REPLY #50375 /* ~Pars.~ */ EXIT
END
