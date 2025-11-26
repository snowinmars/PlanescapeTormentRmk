// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DUPORTAL~

IF ~  !PartyHasItem("Bhanky")
~ THEN BEGIN 0 // from:
  SAY #48030 /* ~Du faltest das schimmernde Metall auf. Es wirkt unheimlich still. Du hast das Gefühl, daß es so lange vor sich hinschlummert, bis der Portalschlüssel in seiner Nähe ist.~ */
  IF ~~ THEN REPLY #48031 /* ~Falt es auf, und leg es weg.~ */ EXIT
END

IF ~  PartyHasItem("Bhanky")
~ THEN BEGIN 1 // from:
  SAY #48407 /* ~Du faltest das schimmernde Metall auf, und plötzlich wird es von Leben erfüllt und knistert. Es beginnt, einen metallischen Kreis zu bilden, der in der Luft schwebt. Irgend etwas von dem, das du bei dir trägst, muß dieses Portal  aktiviert haben!
Plötzlich fällt dir ein, daß du vielleicht überprüfen solltest, ob du alles Nötige dabei hast - möglicherweise wird es *sehr lange* dauern, bevor du nach Sigil zurückkommst.~ */
  IF ~~ THEN REPLY #48408 /* ~Geh durch das Portal.~ */ DO ~DestroyPartyItem("Uportal",TRUE)
DestroyPartyItem("Bhanky",TRUE)
TeleportParty("AR0610",[1207.3088],10)
~ EXIT
  IF ~~ THEN REPLY #48409 /* ~Falte es zusammen, und lege es weg.~ */ EXIT
END
