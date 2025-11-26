// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRP_DOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRP_DOOR~

IF ~  !PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #42765 /* ~Dieser Durchgang führt nur ein paar Zentimeter in das kleine Gebäude hinein. Dort wird er von einer soliden Müllwand versperrt. Der Müll ist so kompakt aufeinander geschichtet, daß die Wand genauso gut aus Mörtel und Stein sein könnte.~ */
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
!NearbyDialog("Ddakkon")
~ THEN REPLY #48355 /* ~Geh weg.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Ich habe einen unpassierbaren, mit Müll gefüllten Torbogen auf dem Lumpensammler-Platz gefunden. Es führen Fußspuren auf ihn zu, kehren aber nicht um, also muß es einen Weg hindurch geben... Vielleicht weiß es ja jemand auf dem Platz.~ */ GOTO 5
  IF ~  Global("RP_Portal","GLOBAL",0)
NearbyDialog("Dmorte")
~ THEN REPLY #48366 /* ~Geh weg.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Ich habe einen unpassierbaren, mit Müll gefüllten Torbogen auf dem Lumpensammler-Platz gefunden. Es führen Fußspuren auf ihn zu, kehren aber nicht um, also muß es einen Weg hindurch geben... Vielleicht weiß es ja jemand auf dem Platz.~ */ EXTERN ~DMORTE~ 647
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
NearbyDialog("Ddakkon")
~ THEN REPLY #65000 /* ~Geh weg.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Ich habe einen unpassierbaren, mit Müll gefüllten Torbogen auf dem Lumpensammler-Platz gefunden. Es führen Fußspuren auf ihn zu, kehren aber nicht um, also muß es einen Weg hindurch geben... Vielleicht weiß es ja jemand auf dem Platz.~ */ EXTERN ~DDAKKON~ 361
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #65001 /* ~Geh weg.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #48356 /* ~Der Torbogen führt nur ein kurzes Stück in das kleine Gebäude hinein und wird dann von einer massigen Wand aus Müll versperrt. Der Abfall ist so eng gepackt worden, daß es sich ebensogut um eine Wand aus Steinen und Mörtel handeln könnte. Als du dich näherst, fängt jedoch die Begrenzung des Durchgangs zu schimmern an. Du bemerkst, daß die Handvoll Müll, die du mit dir herumträgst ebenfalls zu schimmern anfängt.~ */
  IF ~~ THEN REPLY #48357 /* ~Wirf den Müll in den Torbogen.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",5)
SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
~ GOTO 4
  IF ~  Global("RP_Portal","GLOBAL",0)
~ THEN REPLY #48358 /* ~Tritt zurück, und geh weg.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #48367 /* ~Tritt zurück, und geh weg.~ */ EXIT
END

IF ~  !PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #48359 /* ~Dies ist das Portal, das den Lumpensammler-Platz mit dem Tor zu den Müll-Labyrinthen verbindet. Leider hast du gerade nicht den Müll dabei, der zum aktivieren des Tors benötigt wird.~ */
  IF ~~ THEN REPLY #48360 /* ~Geh weg.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 3 // from:
  SAY #48361 /* ~Dies ist das Portal, das den Lumpensammler-Platz mit dem Tor zu den Müll-Labyrinthen verbindet. Wegen der Nähe des Mülls, den du bei dir trägst, hat es bereits zu schimmern angefangen.~ */
  IF ~~ THEN REPLY #48362 /* ~Wirf den Müll in den Torbogen.~ */ DO ~SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("RP_Portal","GLOBAL",5)
~ GOTO 4
  IF ~~ THEN REPLY #48363 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 3.0
  SAY #48364 /* ~Die Wand aus Müll flackert und scheint sich in sich zusammenzufalten. Dabei tut sich hinter ihr eine freie Fläche auf... Im Rahmen des Eingangs scheint sich ein Durchgang oder ein Portal gebildet zu haben.~ */
  IF ~~ THEN REPLY #48365 /* ~Geschafft.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64988 /* ~Als du gerade gehen willst, bemerkst du eine Reihe dreckiger Fußspuren, die in Richtung Torbogen führen... und nicht zurückkommen. Ganz schön viel Verkehr für einen Torbogen, der angeblich nirgendwo hinführt...~ */
  IF ~~ THEN REPLY #64989 /* ~"Hmmm. Vielleicht weiß jemand hier, wie man durchkommt..."~ */ EXIT
END
