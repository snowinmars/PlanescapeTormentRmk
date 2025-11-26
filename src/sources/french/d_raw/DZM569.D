// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM569.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM569~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24575 /* ~Ce cadavre qui se traîne semble être mort depuis de nombreuses années. La peau de son front a pelé, découvrant son crâne couleur de craie. Quelqu'un a gravé le numéro '569' dans l'os ainsi découvert.~ */
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
NearbyDialog("DMorte1")
~ THEN REPLY #24576 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ EXTERN ~DMORTE1~ 31
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
!NearbyDialog("DMorte1")
~ THEN REPLY #24579 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ GOTO 1
  IF ~  GlobalGT("Mortuary_Walkthrough","GLOBAL",0)
~ THEN REPLY #24580 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24581 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24584 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
~ THEN REPLY #24585 /* ~Examine le cadavre et regarde s'il possède une clé.~ */ GOTO 3
  IF ~~ THEN REPLY #42290 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #42291 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.3 3.1
  SAY #24577 /* ~Le cadavre t'observe en silence.~ */
  IF ~~ THEN REPLY #24578 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #42292 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #24582 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #24583 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #42293 /* ~Ce cadavre ne semble pas avoir de clé… Et si c'était le cas, il ne pourrait apparemment pas s'en servir. Ses doigts sont cassés, comme si quelqu'un les avait frappés à coups de marteau. Tu constates aussi que son épaule gauche est entièrement bandée… Une fois enlevés du cadavre, ces bandages pourraient resservir.~ */
  IF ~  NearbyDialog("DMorte1")
~ THEN REPLY #42294 /* ~"Je suppose que tu ne l'as pas… Tu ne saurais pas lequel de tes amis cadavres a la clé pour sortir d'ici, par hasard ?"~ */ EXTERN ~DMORTE1~ 31
  IF ~  !NearbyDialog("DMorte1")
~ THEN REPLY #42295 /* ~"Je suppose que tu ne l'as pas… Tu ne saurais pas lequel de tes amis cadavres a la clé pour sortir d'ici, par hasard ?"~ */ GOTO 1
  IF ~~ THEN REPLY #42296 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #42297 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
