// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS996.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DS996~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35460 /* ~Ce squelette a l'air particulièrement vieux, et les lanières de cuir qui le maintiennent sont craquelées et usées. Le mot 'REPENTIR' est soigneusement gravé dans son front, avec une certaine élégance. Une main moins habile a plus tard gravé le numéro '996' sur les deux tempes.~ */
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35461 /* ~"Excuse-moi, tu n'aurais pas vu des squelettes errants dans le coin ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35484 /* ~"Excuse-moi, tu n'aurais pas vu des squelettes errants dans le coin ?"~ */ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #35485 /* ~"Il faut que je te demande : pourquoi ce sarrau ? Je veux dire, ce n'est pas comme si tu avais quelque chose à cacher."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #35486 /* ~"Il faut que je te demande : pourquoi ce sarrau ? Je veux dire, ce n'est pas comme si tu avais quelque chose à cacher."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35487 /* ~Utilise Histoires-Os-Conter sur le squelette.~ */ GOTO 2
  IF ~~ THEN REPLY #35492 /* ~Examine attentivement le squelette.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35525 /* ~Essaie de déboulonner les articulations du squelette.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 392
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35526 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 4
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35527 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 5
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35528 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35529 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35530 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35531 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35532 /* ~"Qu'est-ce que tu dis de ce squelette, Morte ? Ça t'ira comme corps ?"~ */ EXTERN ~DMORTE~ 388
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35533 /* ~Laisse le squelette tranquille.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 386
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35534 /* ~Laisse le squelette tranquille.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35535 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #35462 /* ~Le squelette ne répond pas.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35463 /* ~"C'était sympa de parler avec toi, Sac d'os. Prends soin de toi."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 386
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35482 /* ~"C'était sympa de parler avec toi, Sac d'os. Prends soin de toi."~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35483 /* ~"C'était sympa de parler avec toi, Sac d'os. Prends soin de toi."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #35488 /* ~Ce squelette ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35489 /* ~Laisse le squelette tranquille.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 386
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35490 /* ~Laisse le squelette tranquille.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35491 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5
  SAY #35493 /* ~Quelqu'un a pris soin d'attacher les os de ce squelette avec des sangles de cuir, enroulées autour du corps de telle manière qu'elles ressemblent à des muscles et des tendons. Les sangles sont fixées à des boulons métalliques, enfoncés dans les articulations du squelette. Ce squelette semble avoir fait l'objet de nombreuses réparations. Nombre de ses os sont ébréchés, et ses innombrables fractures ont été réparées avec des colles puantes.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #35494 /* ~Essaie de déboulonner les articulations du squelette.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 392
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35516 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35517 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 5
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
PartyHasItem("Prybar")
~ THEN REPLY #35518 /* ~Essaie de déboulonner les articulations du squelette.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #35519 /* ~"Je peux emprunter quelques sangles et boulons ?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
!PartyHasItem("Prybar")
CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #35520 /* ~"Je peux emprunter quelques sangles et boulons ?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
PartyHasItem("Prybar")
~ THEN REPLY #35521 /* ~"Je peux emprunter quelques sangles et boulons ?"~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35522 /* ~Laisse le squelette tranquille.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 386
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35523 /* ~Laisse le squelette tranquille.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35524 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.7 0.10 3.1 3.4
  SAY #35499 /* ~Tu tires sur les boulons, mais tu n'es pas assez fort pour les extraire. Ils sont enfoncés assez serrés.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35500 /* ~"Peut-être qu'avec l'outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d'os."~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 386
  IF ~  CheckStatGT(Protagonist,12,INT)
!NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35501 /* ~"Peut-être qu'avec l'outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d'os."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35502 /* ~"Peut-être qu'avec l'outil adéquat, je pourrais les enlever… Hmmmm. Je vais peut-être revenir, Sac d'os."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35503 /* ~Laisse le squelette tranquille.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 386
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #35504 /* ~Laisse le squelette tranquille.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #35505 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.8 0.11 3.2 3.5
  SAY #35507 /* ~Tu tires sur les boulons de toutes tes forces, et après quelques instants, tu arraches le boulon des articulations. Le squelette s'effondre, certains de ses os remuant encore.~ */
  IF ~~ THEN REPLY #35508 /* ~"Excuse-moi, Sac d'os…"~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.9 0.12 3.3 3.6
  SAY #35510 /* ~Tu arraches les boulons des articulations du squelette avec ton pied-de-biche. Le squelette s'effondre, certains de ses os remuant encore.~ */
  IF ~~ THEN REPLY #35511 /* ~"Excuse-moi, Sac d'os…"~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~  False()
~ THEN BEGIN 7 // from:
  SAY #35536 /* ~Ce squelette ne répond pas. Il semble qu'il soit trop absent pour répondre à tes questions.~ */
END
