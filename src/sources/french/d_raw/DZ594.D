// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ594.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ594~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35018 /* ~Les yeux vides du cadavre de femme te fixent. Sa peau est aussi fine que du papier, presque translucide… comme si le cadavre était drapé d'un manteau de toiles d'araignée. Le numéro '594' est gravé au fusain sur son front.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35019 /* ~"Alors… Tu fais quelque chose plus tard ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35036 /* ~"Alors… Tu fais quelque chose plus tard ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35037 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35038 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35043 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXTERN ~DMORTE~ 334
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35044 /* ~Laisse le cadavre tranquille.~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35045 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35046 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35047 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35048 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35020 /* ~Le cadavre continue à te fixer.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35021 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35034 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35035 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35039 /* ~Ce cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35040 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35041 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35042 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35049 /* ~Ce cadavre ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
END
