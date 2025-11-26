// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : UPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~UPORTAL~

IF ~  !PartyHasItem("Bhanky")
~ THEN BEGIN 0 // from:
  SAY #48030 /* ~You unfold the shimmering metal. It seems strangely quiescent; you get the feeling that it's lying dormant until the portal key is near it.~ */
  IF ~~ THEN REPLY #48031 /* ~Fold it up and put it away.~ */ EXIT
END

IF ~  PartyHasItem("Bhanky")
~ THEN BEGIN 1 // from:
  SAY #48407 /* ~You unfold the shimmering metal and immediately it begins crackling with life; it begins forming itself into a metallic circle, hovering in the air. There's something in your possession that has activated this portal!

You get the feeling that you probably ought to make sure you have everything you need - you might not be back in Sigil for a *long* time.~ */
  IF ~~ THEN REPLY #48408 /* ~Step through the portal.~ */ DO ~DestroyPartyItem("Uportal",TRUE)
DestroyPartyItem("Bhanky",TRUE)
TeleportParty("AR0610",[1207.3088],10)
~ EXIT
  IF ~~ THEN REPLY #48409 /* ~Fold it up and put it away.~ */ EXIT
END
