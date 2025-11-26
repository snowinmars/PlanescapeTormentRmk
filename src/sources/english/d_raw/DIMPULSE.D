// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIMPULSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DIMPULSE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52690 /* ~This huge crystal radiates a pulsating, spectral light as it hovers above the crater in the middle of the room. The rhythm of its pulses remind you of a heartbeat, but slow and sickly. Light from the crystal touches the edges of the room like fingers, each ray of light casting a glow on the ruined faces of the statues surrounding it.~ */
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
!Dead("IgnusF")
~ THEN REPLY #52691 /* ~Touch the crystal...~ */ GOTO 2
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
!Dead("VhailF")
~ THEN REPLY #64586 /* ~Touch the crystal...~ */ GOTO 3
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Dead("IgnusF")
~ THEN REPLY #64587 /* ~Touch the crystal...~ */ GOTO 1
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Dead("VhailF")
~ THEN REPLY #64588 /* ~Touch the crystal...~ */ GOTO 1
  IF ~~ THEN REPLY #64589 /* ~Leave the crystal alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.3
  SAY #59895 /* ~There is a moment of dizziness as you touch the crystal; then a slow chill passes through your body, and you discover that your muscles have locked, your hand frozen to the crystal's surface. There is a moment of silence, then sharp pains splinter through your body like fractures - you feel as if your very BEING has been turned to ice, then *shattered*...~ */
  IF ~~ THEN REPLY #59896 /* ~Fall into darkness...~ */ DO ~TeleportParty("AR1203",[932.703],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64590 /* ~As you touch the crystal, there is a flash of heat, an orange-white light, and you whip your hand back - the crystal burns, like the heat from Ignus' flames. From within the crystal, the sickly white-blue light dances and flickers like fire.~ */
  IF ~~ THEN REPLY #64591 /* ~"Look like I'll have to put you in the dead-book, first, Ignus..."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64592 /* ~As you touch the crystal, there is a sudden chill, a bright white light, and you whip your hand back - the crystal is like ice, like the chill from Vhailor's armor. From within the crystal, the sickly white-blue light blinks, like the eye of some great beast.~ */
  IF ~~ THEN REPLY #64593 /* ~"Look like I'll have to put you in the dead-book, first, Vhailor..."~ */ EXIT
END
