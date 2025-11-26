// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIX~

IF ~~ THEN BEGIN 0 // from:
  SAY #3069 /* ~You see a broad-shouldered, hulking, dog-headed thing with four arms. One set of its heavily-muscled arms terminate in horrific, jagged pincers that look as though they could tear the very spirit from an unwilling victim. It speaks in an unexpectedly gentle voice. "Ah, traveler! I see you bring companions of worth and," it pauses to sniff the air, "a *delectable* scent. Annah, I knew your father - he toils deep in the Abyss even now. And Mistress Grace, your mother Red Shroud will surely be glad for news of your well-being."~ */
  IF ~~ THEN REPLY #3367 /* ~"My pleasure. I would ask some questions of you..."~ */ EXIT
END
