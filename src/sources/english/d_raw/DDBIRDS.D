// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDBIRDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDBIRDS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #31493 /* ~Several shards of black crystal - or ice - swirl within the freezing wind that this ornate pedestal gives forth. Each shard looks razor sharp; touching or grabbing one could be perilous. A placard on the pedestal reads 'Dark Birds of Ocanthus.'~ */
  IF ~~ THEN REPLY #31494 /* ~Leave them be.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ EXIT
  IF ~~ THEN REPLY #31495 /* ~Touch one.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #31496 /* ~Grab one.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
~ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31497 /* ~Catch one in your Frost-Ale Mug.~ */ DO ~SetGlobal("View_Art_DBirds","AR0608",1)
SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.1
  SAY #31498 /* ~As you reach out to touch one of the whirling shards, your finger enters the icy wind that rises from the pedestal. Instantly, a coat of numbing frost forms around your finger, causing you to momentarily draw back.~ */
  IF ~~ THEN REPLY #31499 /* ~Leave them be.~ */ EXIT
  IF ~  HPLT(Protagonist,3)
~ THEN REPLY #31500 /* ~Place your finger back in and touch one.~ */ GOTO 2
  IF ~  HPGT(Protagonist,2)
~ THEN REPLY #31501 /* ~Place your finger back in and touch one.~ */ DO ~Damage(Protagonist,LOWER,2)
~ GOTO 3
  IF ~~ THEN REPLY #31502 /* ~Grab one.~ */ GOTO 4
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31503 /* ~Catch one in your Frost-Ale Mug.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #31504 /* ~You thrust your finger into the frigid wind. Though you haven't realized it yet, your forefinger freezes solid. As one of the black shards spins into it, your fingertip breaks off with a sharp *crack* and goes skittering across the galleria floor. A normally trivial wound, in your battered condition it leads to your death.~ */
  IF ~~ THEN REPLY #31505 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #31506 /* ~You thrust your finger into the frigid, numbing wind. Unbeknownst to you, your forefinger freezes solid. As one of the black shards spins into it, your fingertip breaks off with a sharp *crack* and goes skittering across the galleria floor. The icy Dark Birds remain in their whirling orbit as you wait for your fingertip to grow back.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31507 /* ~Catch one in your Frost-Ale Mug.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31508 /* ~Leave, hope no one saw any of that.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.3
  SAY #31509 /* ~As you reach out to grab one of the whirling shards, your fingers enter the icy wind that rises from the pedestal. Instantly, a coat of numbing frost forms around them, causing you to momentarily draw back.~ */
  IF ~~ THEN REPLY #31510 /* ~Leave them be.~ */ EXIT
  IF ~~ THEN REPLY #31511 /* ~Just touch one.~ */ GOTO 1
  IF ~  HPLT(Protagonist,6)
~ THEN REPLY #31512 /* ~Place your hand back in and grab one.~ */ GOTO 5
  IF ~  HPGT(Protagonist,5)
~ THEN REPLY #31513 /* ~Place your hand back in and grab one.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31514 /* ~Catch one in your Frost-Ale Mug.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #31515 /* ~You thrust your hand into the frigid, numbing wind. Unbeknownst to you, your entire hand freezes solid as you wrap it around one of the Dark Birds. As another of the black shards spins into your fist, your hand breaks off at the wrist with a sharp *crack* and goes clattering across the galleria floor. Already beaten and battered, you collapse, dying.~ */
  IF ~~ THEN REPLY #31516 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #31517 /* ~You thrust your hand into the frigid, numbing wind. Unbeknownst to you, your entire hand freezes solid as you wrap it around one of the Dark Birds. As another of the black shards spins into your fist, your hand breaks off at the wrist with a sharp *crack* and goes clattering across the galleria floor.~ */
  IF ~~ THEN REPLY #31518 /* ~Pick your hand up and stick it back on, quick!~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31519 /* ~You pick up the frost-covered fist and thrust it onto your bleeding stump, noticing that the Dark Bird you grabbed - a razor-sharp shard of black ice - has already melted away to nothing. It looks like you'll have to catch it in something that will keep it cold. Eventually, warmth and feeling returns to your hand as your tissues thaw and regenerate.~ */
  IF ~  PartyHasItem("DwfMug")
Global("CW_Caught_Bird","AR0608",0)
~ THEN REPLY #31520 /* ~Catch one in your Frost-Ale Mug.~ */ DO ~SetGlobal("CW_Caught_Bird","AR0608",1)
DestroyPartyItem("DwfMug",FALSE)
GiveItemCreate("DwfMug2",Protagonist,1,0,0)
~ GOTO 8
  IF ~~ THEN REPLY #31521 /* ~Leave, hope no one saw any of that.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.4 3.0 4.4 7.0
  SAY #31522 /* ~You 'dip' the mug into the icy wind rising from the pedestal, catching a small shard with a slight *clang.* Peering into the mug, you can see that the Dark Bird is a razor-sharp sliver of black ice. Only the mug's magical properties prevent the shard from melting away to nothing.~ */
  IF ~~ THEN REPLY #31523 /* ~Leave.~ */ EXIT
END
