// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR1~

IF ~  Dead("Ravel")
PartyHasItem("Bbchrm")
!PartyHasItem("RavelHai")
~ THEN BEGIN 0 // from:
  SAY #48816 /* ~Der Bereich unter dem überhängenden Zweig leuchtet sanft... Dahinter scheint ein kleiner dorniger Raum zu liegen. Als du ihn genauer betrachtest, bemerkst du plötzlich, daß der schwarze Stacheltalisman, den Ravel dir gegeben hat, sich wie eine sterbende Schlange windet.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #48817 /* ~Wickle Ravels Talisman um deinen linken Zeigefinger, und geh durch das Portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #48819 /* ~Untersuche den Talisman, und warte ab, was geschieht.~ */ GOTO 1
  IF ~~ THEN REPLY #51446 /* ~Laß den überhängenden Ast in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51443 /* ~Der seltsame Talisman beißt sich mit seinen stacheligen Samen sanft in die Haut und klettert mit Hilfe der Stacheln langsam zu deiner linken Hand hinauf, wo er sich fest um deinen Zeigefinger wickelt. Als Reaktion wird das Leuchten unter dem Bogen heller, als wolle es dich auffordern, hindurchzugehen.~ */
  IF ~~ THEN REPLY #51447 /* ~Geh durch das Portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51448 /* ~Laß den überhängenden Ast in Ruhe.~ */ EXIT
END

IF ~  Dead("Ravel")
PartyHasItem("RavelHai")
~ THEN BEGIN 2 // from:
  SAY #51444 /* ~Der Bereich unter diesem überhängenden Ast leuchtet gedämpft. Dahinter scheint ein kleiner, von Dornenzweigen umwucherter Raum zu liegen. Du bemerkst, daß das graue Haar, das Ravel sich ausgerissen hat, sich langsam wie ein Schraubenzieher windet.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #51449 /* ~Wickel Ravels Haar um deinen linken Zeigefinger und geh durch das Portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51450 /* ~Warte ab, was das Haar macht.~ */ GOTO 3
  IF ~~ THEN REPLY #51451 /* ~Laß den überhängenden Ast in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #51445 /* ~Das Haar ringelt sich langsam deinen linken Arm hinauf, umringt dein Handgelenk und wickelt sich dann fest um deinen linken Zeigefinger. Daraufhin leuchtet das Licht unter dem Bogen heller, als wolle es dich auffordern, hindurchzugehen.~ */
  IF ~~ THEN REPLY #51452 /* ~Geh durch das Portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51453 /* ~Laß den überhängenden Ast in Ruhe.~ */ EXIT
END
