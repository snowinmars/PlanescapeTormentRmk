// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : N1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~N1201~

IF ~  True()
~ THEN BEGIN 0 // from: 1.6 3.0
  SAY #44993 /* ~Cette note dégage une odeur atroce, et un étrange schéma a été dessiné sous le texte. On dirait qu'il t'indique de replier les quatre coins du morceau de papier vers le centre. Il y a toute une série de marques bizarres dans les coins : une en haut à droite, deux en bas à droite et trois en bas à gauche (aucune en haut à gauche).~ */
  IF ~~ THEN REPLY #44994 /* ~Replie le coin du haut à droite vers le centre.~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44995 /* ~Replie le coin du bas à droite vers le centre.~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44996 /* ~Replie le coin du bas à gauche vers le centre.~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44997 /* ~Replie le coin du haut à gauche vers le centre.~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44998 /* ~Laisse la note de côté.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
  SAY #44999 /* ~Tu replies le coin de manière à ce que sa pointe touche le centre.~ */
  IF ~  Global("UR_1201","GLOBAL",0)
~ THEN REPLY #45000 /* ~Replie le coin du haut à droite vers le centre.~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45001 /* ~Replie le coin du bas à droite vers le centre.~ */ DO ~SetGlobal("1201_Note","GLOBAL",2)
SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45002 /* ~Replie le coin du bas à droite vers le centre.~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("LL_1201","GLOBAL",0)
~ THEN REPLY #45003 /* ~Replie le coin du bas à gauche vers le centre.~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45004 /* ~Replie le coin du haut à gauche vers le centre.~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45005 /* ~Replie le coin du haut à gauche vers le centre.~ */ GOTO 2
  IF ~~ THEN REPLY #45006 /* ~Déplie la note et recommence.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 0
  IF ~~ THEN REPLY #45008 /* ~Déplie la note et laisse-la de côté.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.5
  SAY #45015 /* ~Alors que tu plies le coin du haut à gauche vers le centre, tu vois que celui du haut à droite se déplie tout seul pour reprendre sa position initiale.~ */
  IF ~~ THEN REPLY #45016 /* ~Replie le coin du haut à droite vers le centre.~ */ GOTO 4
  IF ~~ THEN REPLY #45017 /* ~Replie le coin du bas à gauche vers l'intérieur.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 3
  IF ~~ THEN REPLY #45018 /* ~Déplie la note et laisse-la de côté.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45019 /* ~Quand tu replies le coin du bas à gauche vers l'intérieur, rien ne se produit pendant un instant, puis les deux autres coins se déplient d'eux-mêmes. Il ne se passe rien d'autre.~ */
  IF ~~ THEN REPLY #45020 /* ~Inspecte une nouvelle fois la note.~ */ GOTO 0
  IF ~~ THEN REPLY #45021 /* ~Laisse la note de côté.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #45022 /* ~Lorsque tu replies le coin du haut à droite vers le centre, celui du bas à gauche se plie également de lui-même. Les quatre coins touchent désormais le centre. Au bout de quelques secondes, les quatre triangles ainsi réunis se soulèvent pour constituer une petite pyramide de papier.~ */
  IF ~~ THEN REPLY #45023 /* ~Écarte les faces de la pyramide.~ */ DO ~AddexperienceParty(250)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45024 /* ~Tu déplies les faces de la pyramide et le papier tombe en poussière pour te révéler une petite boucle d'oreille triangulaire qui luit de mille feux à la lumière.~ */
  IF ~~ THEN REPLY #45025 /* ~Prends la boucle d'oreille triangulaire.~ */ DO ~GiveItemCreate("TEarring",Protagonist,3,0,0)
DestroyPartyItem("N1201",TRUE)
~ EXIT
END
