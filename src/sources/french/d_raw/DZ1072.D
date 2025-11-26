// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1072.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1072~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35114 /* ~L'odeur de formol qui se dégage de ce cadavre de femme est particulièrement forte… On a dû l'appliquer récemment… heureusement d'ailleurs, car le cadavre semble avoir atteint un stade de décomposition avancé. Sa mâchoire manque et la chair a en partie disparu du crâne, laissant apparaître le numéro '1072' buriné dans l'os.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35115 /* ~"Celle-là, elle a dû connaître des jours meilleurs…"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35132 /* ~"Celle-là, elle a dû connaître des jours meilleurs…"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35133 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35134 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35139 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXTERN ~DMORTE~ 346
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35140 /* ~Laisse le cadavre tranquille.~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35141 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35142 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35143 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35144 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35116 /* ~Le cadavre ne réagit pas à ta voix. L'absence de mâchoire y est peut-être pour quelque chose… à moins qu'il n'ait tout simplement rien à dire.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35117 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35130 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35131 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35135 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35136 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35137 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35138 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35145 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
END
