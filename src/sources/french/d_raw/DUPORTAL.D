// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DUPORTAL~

IF ~  !PartyHasItem("Bhanky")
~ THEN BEGIN 0 // from:
  SAY #48030 /* ~Tu déplies le métal miroitant. Il semble étrangement immobile ; tu as l'impression qu'il sommeille en attendant la clé du portail.~ */
  IF ~~ THEN REPLY #48031 /* ~Replie-le et range-le.~ */ EXIT
END

IF ~  PartyHasItem("Bhanky")
~ THEN BEGIN 1 // from:
  SAY #48407 /* ~Tu déplies le métal scintillant qui commence immédiatement à crépiter de vie ; il se transforme en cercle métallique et se met à planer au-dessus du sol. Tu possèdes quelque chose qui a activé ce portail !
Tu as l'impression qu'il faut que tu vérifies que tu as tout ce qu'il te faut - tu ne remettras peut-être pas les pieds à Sigil de *si* tôt.~ */
  IF ~~ THEN REPLY #48408 /* ~Franchis le portail.~ */ DO ~DestroyPartyItem("Uportal",TRUE)
DestroyPartyItem("Bhanky",TRUE)
TeleportParty("AR0610",[1207.3088],10)
~ EXIT
  IF ~~ THEN REPLY #48409 /* ~Replie-le et range-le.~ */ EXIT
END
