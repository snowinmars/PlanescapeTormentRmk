// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49773 /* ~This man's face has been painted white. A pair of arched eyebrows has been penciled onto his brow, and red powder has been used to make small circles on his cheeks and accentuate his lips. He says something, but you can't hear him. His hands are pressed up against what looks to be an invisible wall.~ */
  IF ~~ THEN REPLY #49774 /* ~"What? I can't hear you..."~ */ GOTO 1
  IF ~~ THEN REPLY #49775 /* ~See if you can touch him.~ */ GOTO 2
  IF ~~ THEN REPLY #49776 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49777 /* ~He hangs his head, sighs soundlessly, and shrugs. He then steps back a bit, waves farewell to you, and begins to pantomime various actions... pulling on a rope, walking down stairs, and so on.~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN EXTERN ~DGRACE~ 144
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49778 /* ~See if you can touch him.~ */ GOTO 2
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49779 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #49780 /* ~You reach out to touch the man, but your hand is stayed by some unseen force. The performance artist appears to be trapped in some sort of invisible box or cage.~ */
  IF ~~ THEN REPLY #49781 /* ~Leave.~ */ EXIT
END
