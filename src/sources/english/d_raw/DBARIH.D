// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9708 /* ~This creature has the body of a ram and the torso of a man. Curling horns sprout from its shaggy head, and its pelt is dyed and shaved with intricate patterns. Colored beads and simple jewelry are woven into its hair and dangle from its horns. It seems to take no notice of you.~ */
  IF ~~ THEN REPLY #7544 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #7565 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2725 /* ~Either it didn't hear you or was pretending not to; it seems as if the creature's going to move on.~ */
  IF ~~ THEN REPLY #7623 /* ~"I said, 'Greetings.'"~ */ GOTO 2
  IF ~~ THEN REPLY #7646 /* ~Let him pass.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2734 /* ~It eyes you warily... the creature appears suspicious, but unafraid of you.~ */
  IF ~~ THEN REPLY #12334 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #12335 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2743 /* ~The creature's voice is deep and resonant: "In the streets of the Hive? Here is not the place for such things. Leave me to my own affairs; perhaps we shall meet again in a better place and speak, then."~ */
  IF ~~ THEN REPLY #12336 /* ~"I'd only wanted to ask a few questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #12337 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2753 /* ~"Another time, two-legs... another time." The creature begins to walk away.~ */
  IF ~~ THEN REPLY #12339 /* ~Attack him as he leaves.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12340 /* ~Let him go.~ */ EXIT
END
