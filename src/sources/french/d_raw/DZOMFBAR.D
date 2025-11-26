// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2574 /* ~Le cadavre de cette femme est vêtu d'une chemise en toile tachée de nourriture et de vin. Ses lèvres sont cousues ; ses bras et ses jambes sont enveloppés dans plusieurs couches de bandes. Les bandes semblent avoir été imbibées de conservateurs afin de préserver le cadavre. En fait, l'odeur de pourrissement du cadavre est remplacée par un relent de vinaigre tout aussi répugnant.~ */
  IF ~~ THEN REPLY #2575 /* ~"Alors… Tu fais quelque chose plus tard ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2576 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2577 /* ~"C'était super de parler avec toi. Au revoir."~ */ EXTERN ~DMORTE~ 120
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2578 /* ~Laisse le cadavre tranquille.~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7047 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ EXIT
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7048 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7049 /* ~"C'était sympa de bavarder avec toi. Au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7050 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2579 /* ~Le zombi continue de t'observer.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2580 /* ~"Bon, très bien. C'était sympa de parler avec toi. Au revoir."~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7051 /* ~"Bon, très bien. C'était sympa de parler avec toi. Au revoir."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7052 /* ~"Bon, très bien. C'était sympa de parler avec toi. Au revoir."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2581 /* ~Le zombi ne répond pas. Elle semble trop mal en point pour répondre à tes questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2582 /* ~Laisse le cadavre tranquille.~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7053 /* ~Laisse le cadavre tranquille.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7054 /* ~Laisse le cadavre tranquille.~ */ EXIT
END
