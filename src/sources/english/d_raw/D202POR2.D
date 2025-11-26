// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D202POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D202POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51460 /* ~As you step up to this arch, the black pillars to either side start glowing softly, motes of misty white light drifting from their sides to form a shimmering curtain between them. Beyond the curtain, you can barely make out a weathered stone causeway leading into darkness.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #51461 /* ~Hold the scrap of skin with your regret upon it, then step through the curtain.~ */ EXIT
  IF ~~ THEN REPLY #51462 /* ~Leave the portal alone.~ */ EXIT
END
