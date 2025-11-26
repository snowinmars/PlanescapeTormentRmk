// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_KING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_KING~

IF ~  Global("Took_Skull","AR1501",0)
~ THEN BEGIN 0 // from:
  SAY #51339 /* ~This withering corpse - impressive in its engraved parade-armor despite its coating of dust and cobwebs - is apparently the mighty Silent King. The lord and master of the Dead Nations appears to be little more than a desiccated shell.~ */
  IF ~  Global("1501_Undead_Alert","GLOBAL",1)
~ THEN REPLY #51340 /* ~Take his skull.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ GOTO 1
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
!Class(Protagonist,THIEF)
~ THEN REPLY #51425 /* ~Take his skull.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 2
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
Class(Protagonist,THIEF)
~ THEN REPLY #51426 /* ~Take his skull.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65532 /* ~Leave.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51427 /* ~You twist and yank at the Silent King's head to no avail... it simply won't budge. Finally, you resort to bracing your foot against one of the throne's arms for leverage and tearing the skull off with a sharp *crack.*~ */
  IF ~~ THEN REPLY #51428 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #51429 /* ~Tearing off the Silent King's head will doubtlessly anger the throne room's current occupants... you're going to have to deal with them, first.~ */
  IF ~~ THEN REPLY #51430 /* ~Attempt to take his skull just the same.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #51431 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1
  SAY #51432 /* ~You try and quietly pull at the Silent King's skull, but it won't budge. Finally, you resort to bracing your foot against one of the throne's arms for leverage and tearing the skull off with a sharp *crack* - which alerts everyone present. They turn to see you ripping off the head of their beloved lord and rush to attack...~ */
  IF ~~ THEN REPLY #51433 /* ~Defend yourself.~ */ DO ~SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ EXIT
END

IF ~  Global("Took_Skull","AR1501",1)
~ THEN BEGIN 4 // from:
  SAY #51434 /* ~The lord and master of the Dead Nations appears to be little more than a desiccated shell - and a headless one at that, seeing as how you've ripped his skull off.~ */
  IF ~~ THEN REPLY #51435 /* ~Leave.~ */ EXIT
END

IF ~  Global("Took_Skull","AR1501",2)
~ THEN BEGIN 5 // from:
  SAY #65524 /* ~The lord and master of the Dead Nations appears to be little more than a desiccated shell. His head sits a bit crooked on his shoulders from when you swapped his skull out for another.~ */
  IF ~~ THEN REPLY #65525 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY #65526 /* ~Tearing off the Silent King's head will doubtlessly anger the throne room's current occupants... you're going to have to deal with them, first. However, if you had some other, generic skull, your hands might be fast enough to swap it out with the skull beneath the Silent King's helm before anyone sees you...~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #65527 /* ~Swap the skull out with the one you've got.~ */ DO ~SetGlobal("Took_Skull","AR1501",2)
DestroyPartyItem("Skull",FALSE)
GiveItemCreate("SkullSK",Protagonist,1,0,0)
AddexperienceParty(500)
~ GOTO 7
  IF ~  !PartyHasItem("Skull")
~ THEN REPLY #65530 /* ~Attempt to take his skull just the same.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #65531 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65528 /* ~After making certain you aren't being directly watched, you lift the Silent King's helm, pitch his skull into your inventory, and replace the missing head with the other skull you held. With the helmet back on, no one will ever be the wiser...~ */
  IF ~~ THEN REPLY #65529 /* ~Leave.~ */ EXIT
END
