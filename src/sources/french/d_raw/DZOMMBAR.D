// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2583 /* ~Le zombi te regarde de ses yeux vides. Ses lèvres ont été cousues et des bandes entourent plusieurs parties de son corps. Une légère odeur d'alcool émane de son cadavre.~ */
  IF ~~ THEN REPLY #2587 /* ~"Alors… Tu as vu quelque chose d'intéressant dans le coin ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2588 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #2589 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #2591 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2584 /* ~Le zombi continue de t'observer.~ */
  IF ~~ THEN REPLY #2590 /* ~"Bon, très bien. C'était sympa de parler avec toi. Au revoir."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2585 /* ~Le zombi ne répond pas. Il semble trop mal en point pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #2586 /* ~"Alors, au revoir."~ */ EXIT
END
