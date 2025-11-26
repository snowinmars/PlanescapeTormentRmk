// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ891.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ891~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35274 /* ~Sur ce cadavre de femme particulièrement horrible à voir, il manque les oreilles, le nez et les lèvres. Pour pouvoir fermer la mâchoire par une couture, il a fallu que celui ou celle qui l'a préparé étire bien la peau autour de la bouche ; on voit encore une ligne de dents jaunies et mal rangées à travers ce qu'il reste de la fente. Le numéro '891' est gravé dans la chair du front.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35275 /* ~"Alors… Tu fais quelque chose plus tard ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35292 /* ~"Alors… Tu fais quelque chose plus tard ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35293 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35294 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35299 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXTERN ~DMORTE~ 366
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35300 /* ~Laisse le cadavre tranquille.~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35301 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35302 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35303 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35304 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35276 /* ~Le cadavre continue à te fixer.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35277 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35290 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35291 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35295 /* ~Ce cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35296 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 366
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35297 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35298 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35305 /* ~Ce cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
END
