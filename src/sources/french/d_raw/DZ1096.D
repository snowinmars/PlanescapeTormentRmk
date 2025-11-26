// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1096.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1096~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35082 /* ~Ce cadavre de femme fait le tour de la salle, d'une dalle à l'autre. Ses cheveux sont ramassés en une longue tresse enroulée autour du cou tel un nœud coulant. Quelqu'un a marqué au pochoir le numéro '1096' sur son front, et ses lèvres sont cousues ensemble.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35083 /* ~"Hum… jolie tresse."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35100 /* ~"Hum… jolie tresse."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35101 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35102 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35107 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXTERN ~DMORTE~ 342
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35108 /* ~Laisse le cadavre tranquille.~ */ EXTERN ~DMORTE~ 342
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35109 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35110 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35111 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35112 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35084 /* ~Le cadavre ne réagit pas. Tu doutes même qu'il ait conscience de ta présence.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35085 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 342
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35098 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35099 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35103 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35104 /* ~"Alors, au revoir."~ */ EXTERN ~DMORTE~ 342
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35105 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35106 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35113 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
END
