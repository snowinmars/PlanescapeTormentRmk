// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPAINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPAINT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36403 /* ~You see a slender tiefling girl standing with her back to you. You notice that both her hands and the upended table in front of her are smeared with a fresh coat of what appears to be pink paint. She seems oblivious to your approach.~ */
  IF ~~ THEN REPLY #36406 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36407 /* ~Ignore the girl and move on.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36404 /* ~At the sound of your voice, the girl turns her head to regard you. Her face, though somewhat dirty and spattered with drops of pink, is strikingly beautiful. She flashes you a wide, mischievous smile, then returns her attention to the makeshift canvas.~ */
  IF ~~ THEN REPLY #36408 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36409 /* ~Leave the girl to her painting.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0
  SAY #36405 /* ~The tiefling girl seems totally immersed in her artwork. She ignores you entirely.~ */
  IF ~~ THEN REPLY #36410 /* ~Leave the girl to her painting.~ */ EXIT
END
