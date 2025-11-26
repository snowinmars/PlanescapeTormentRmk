// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ569.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ569~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24575 /* ~Ce cadavre qui se traîne semble être mort depuis de nombreuses années. La peau de son front a pelé, découvrant son crâne couleur de craie. Quelqu'un a gravé le numéro '569' dans l'os ainsi découvert.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #24576 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #24579 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24580 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24581 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 2
  IF ~~ THEN REPLY #24584 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ EXIT
  IF ~~ THEN REPLY #24585 /* ~Examine le cadavre et regarde s'il possède une clé.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #24577 /* ~Le cadavre t'observe en silence.~ */
  IF ~~ THEN REPLY #24578 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #24582 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #24583 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
