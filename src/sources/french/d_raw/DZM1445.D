// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1445.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1445~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46756 /* ~La chair de ce cadavre est grêlée et ses oreilles, le bout de son nez et plusieurs de ses doigts ont pourri. Nul doute que le pauvre bougre a succombé à une terrible maladie. Le numéro '1445' est tatoué sur son front et ses lèvres ont été cousues.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #46757 /* ~"Alors… as-tu vu quelque chose d'intéressant ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #46760 /* ~"Alors… as-tu vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #46761 /* ~"Je sais que tu n'es pas un zombi. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46762 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #46765 /* ~"Je suis ravis de t'avoir parlé. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #46766 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #46758 /* ~Le cadavre continue à te regarder.~ */
  IF ~~ THEN REPLY #46759 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #46763 /* ~Le cadavre ne répond pas. Il semble qu'il soit incapable de répondre à tes questions.~ */
  IF ~~ THEN REPLY #46764 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
