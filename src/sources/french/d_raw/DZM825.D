// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM825.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM825~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24564 /* ~La tête du cadavre bascule d'avant en arrière sur ses épaules. À en juger par l'angle du cou, tu en déduis que cet homme a été pendu. Le numéro '825' a été peint sur sa tempe.~ */
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
NearbyDialog("DMorte1")
~ THEN REPLY #24565 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ EXTERN ~DMORTE1~ 31
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
!NearbyDialog("DMorte1")
~ THEN REPLY #24568 /* ~"Je cherche une clé… tu n'en aurais pas une, par hasard ?"~ */ GOTO 1
  IF ~  GlobalGT("Mortuary_Walkthrough","GLOBAL",0)
~ THEN REPLY #24569 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #24570 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #24573 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
~ THEN REPLY #24574 /* ~Examine le cadavre et regarde s'il possède une clé.~ */ GOTO 3
  IF ~~ THEN REPLY #42308 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #42309 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.3 3.1
  SAY #24566 /* ~Le cadavre fixe le sol sans répondre.~ */
  IF ~~ THEN REPLY #24567 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #42310 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #24571 /* ~Le cadavre ne bouge pas. Il a l'air trop absent pour répondre à tes questions.~ */
  IF ~~ THEN REPLY #24572 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #42311 /* ~Ce cadavre n'a rien… mais tu remarques que ses mains sont bandées. Une fois enlevés du cadavre, ces bandages pourraient resservir.~ */
  IF ~  NearbyDialog("DMorte1")
~ THEN REPLY #42312 /* ~"Je suppose que tu n'as pas la clé… Tu ne saurais pas lequel de tes amis cadavres a fait sortir cette clé d'ici, par hasard ?"~ */ EXTERN ~DMORTE1~ 31
  IF ~  !NearbyDialog("DMorte1")
~ THEN REPLY #42313 /* ~"Je suppose que tu n'as pas la clé… Tu ne saurais pas lequel de tes amis cadavres a fait sortir cette clé d'ici, par hasard ?"~ */ GOTO 1
  IF ~~ THEN REPLY #42314 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #42315 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
