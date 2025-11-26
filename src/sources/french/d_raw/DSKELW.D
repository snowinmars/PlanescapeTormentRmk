// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #286 /* ~Le squelette se retourne, face à toi. Un chiffre a été gravé sur son front. Certains de ses os - notamment ses mâchoires et ses articulations - sont maintenus par des bandes de cuir. Son corps est drapé dans une blouse noire.~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #288 /* ~"Excuse-moi, tu as vu des squelettes dans le coin ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #289 /* ~"Excuse-moi, tu as vu des squelettes dans le coin ?"~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #287 /* ~"Il faut que je te demande : pourquoi ce sarrau ? Je veux dire, ce n'est pas comme si tu avais quelque chose à cacher."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #1164 /* ~"Il faut que je te demande : pourquoi ce sarrau ? Je veux dire, ce n'est pas comme si tu avais quelque chose à cacher."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1340 /* ~Utilise Histoires-Os-Conter sur le squelette.~ */ GOTO 2
  IF ~~ THEN REPLY #1341 /* ~Examine le squelette attentivement.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #3929 /* ~Essaie de déboulonner les articulations du squelette.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 65
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #3930 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #3931 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #3932 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #3933 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #3934 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #3935 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3936 /* ~"Qu'est-ce que tu dis de ce squelette, Morte ? Ça t'ira comme corps ?"~ */ EXTERN ~DMORTE~ 69
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3937 /* ~Laisse le squelette tranquille.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3938 /* ~Laisse le squelette tranquille.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3939 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #290 /* ~Le squelette ne répond pas.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #291 /* ~"C'était sympa de parler avec toi, tas d'os. Prends soin de toi."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3940 /* ~"C'était sympa de parler avec toi, Sac d'os. Prends soin de toi."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3941 /* ~"C'était sympa de parler avec toi, Sac d'os. Prends soin de toi."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.4
  SAY #1162 /* ~Ce squelette ne répond pas. Il semble trop mal en point pour répondre à tes questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #1163 /* ~Laisse le squelette tranquille.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3942 /* ~Laisse le squelette tranquille.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3943 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #3927 /* ~Quelqu'un a lié les os de ce squelette à l'aide de bandes de cuirs, tissées autour du corps de telle manière qu'elles ressemblent à des muscles et des tendons. Les bandes sont attachées à des boulons de métal vissés dans les articulations du squelette. Il semble qu'il a beaucoup servi : bon nombre de ses os sont ébréchés et ses multiples fractures sont réparées avec des enduits et des colles malodorantes.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #3928 /* ~Essaie de déboulonner les articulations du squelette.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 65
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #3944 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #3945 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #3946 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #3947 /* ~"Je peux emprunter quelques sangles et boulons ?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #3948 /* ~"Je peux emprunter quelques sangles et boulons ?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #3949 /* ~"Je peux emprunter quelques sangles et boulons ?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3950 /* ~Laisse le squelette tranquille.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3951 /* ~Laisse le squelette tranquille.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3952 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #3953 /* ~Tu tires sur les boulons en fer, mais tu n'es pas assez fort pour arriver à les sortir. Ils ont été solidement vissés.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3954 /* ~"Peut-être qu'avec l'outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d'os."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3955 /* ~"Peut-être qu'avec l'outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d'os."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3956 /* ~"Peut-être qu'avec l'outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d'os."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3957 /* ~Laisse le squelette tranquille.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 67
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #3958 /* ~Laisse le squelette tranquille.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #3959 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #3960 /* ~Tu tires de toutes tes forces sur les boulons en fer ; finalement, tu réussis à arracher les boulons des articulations. Le squelette s'effondre. Certains de ses os bougent encore.~ */
  IF ~~ THEN REPLY #3962 /* ~"Excuse-moi, Sac d'os…"~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #3961 /* ~À l'aide de ton pied-de-biche, tu arraches des boulons des articulations du squelette. Il s'effondre ; certains de ses os bougent encore.~ */
  IF ~~ THEN REPLY #3963 /* ~"Excuse-moi, Sac d'os…"~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
AddexperienceParty(15)
~ EXIT
END
