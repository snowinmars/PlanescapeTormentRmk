// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRP_DOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRP_DOOR~

IF ~  !PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #42765 /* ~Ce porche mène au petit bâtiment, le passage étant bloqué par un mur d'ordures. Les détritus sont tellement entassés qu'ils forment une masse aussi compacte que de la pierre et du mortier.~ */
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
!NearbyDialog("Ddakkon")
~ THEN REPLY #48355 /* ~Pars.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~J'ai découvert une arche infranchissable car pleine de déchets dans le Square du Chiffonnier. Des traces mènent toutefois jusqu'à elle, ce qui signifie qu'il doit être possible de l'utiliser. Peut-être qu'un occupant du square pourra m'en apprendre davantage.~ */ GOTO 5
  IF ~  Global("RP_Portal","GLOBAL",0)
NearbyDialog("Dmorte")
~ THEN REPLY #48366 /* ~Pars.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~J'ai découvert une arche infranchissable car pleine de déchets dans le Square du Chiffonnier. Des traces mènent toutefois jusqu'à elle, ce qui signifie qu'il doit être possible de l'utiliser. Peut-être qu'un occupant du square pourra m'en apprendre davantage.~ */ EXTERN ~DMORTE~ 647
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
NearbyDialog("Ddakkon")
~ THEN REPLY #65000 /* ~Pars.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~J'ai découvert une arche infranchissable car pleine de déchets dans le Square du Chiffonnier. Des traces mènent toutefois jusqu'à elle, ce qui signifie qu'il doit être possible de l'utiliser. Peut-être qu'un occupant du square pourra m'en apprendre davantage.~ */ EXTERN ~DDAKKON~ 361
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #65001 /* ~Pars.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #48356 /* ~Ce porche mène au petit bâtiment avant d'être bloqué par un mur solide d'ordures. Les détritus sont tellement entassés qu'ils forment une masse compacte semblable à de la pierre et du mortier. Alors que tu t'en approches, les contours du porche se mettent à étinceler. Tu remarques que les déchets que tu as sur toi commencent à étinceler eux aussi.~ */
  IF ~~ THEN REPLY #48357 /* ~Fourre le bric-à-brac de déchets dans le porche.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",5)
SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
~ GOTO 4
  IF ~  Global("RP_Portal","GLOBAL",0)
~ THEN REPLY #48358 /* ~Recule et pars.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #48367 /* ~Recule et pars.~ */ EXIT
END

IF ~  !PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #48359 /* ~C'est le portail qui relie le Square du Chiffonnier à l'entrée des Dédales d'Ordures. Malheureusement, tu n'as pas les déchets qui permettent de l'activer pour le moment.~ */
  IF ~~ THEN REPLY #48360 /* ~Pars.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 3 // from:
  SAY #48361 /* ~C'est le portail qui relie le Square du Chiffonnier à l'entrée des Dédales d'Ordures. Il a déjà commencé à étinceler à cause de la proximité des déchets que tu as sur toi.~ */
  IF ~~ THEN REPLY #48362 /* ~Fourre le bric-à-brac de déchets dans le porche.~ */ DO ~SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("RP_Portal","GLOBAL",5)
~ GOTO 4
  IF ~~ THEN REPLY #48363 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 3.0
  SAY #48364 /* ~Le mur d'ordures clignote, vacille et semble se replier sur lui-même pour dévoiler un espace ouvert… un passage ou un portail semble se former dans l'encadrement du porche.~ */
  IF ~~ THEN REPLY #48365 /* ~Terminé.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64988 /* ~Tandis que tu t'apprêtes à partir, tu remarques des traces de pas boueuses qui conduisent à l'arche… et ne la contournent pas. On dirait qu'il y a beaucoup de passage sous cette arche qui ne semble mener nulle part…~ */
  IF ~~ THEN REPLY #64989 /* ~"Hmm. Peut-être que quelqu'un ici sait comment passer…"~ */ EXIT
END
