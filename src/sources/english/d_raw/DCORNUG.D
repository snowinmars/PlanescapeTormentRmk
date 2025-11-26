// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCORNUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCORNUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3331 /* ~Grrr. Me big Cornugon. Me hurt. Me do lot of hurt.~ */
  IF ~~ THEN REPLY #3332 /* ~Me, too. Pleased to meet you.~ */ EXIT
  IF ~~ THEN REPLY #3520 /* ~Aren't you supposed to be a lot smarter? I mean, you ARE a high-level fiend who's been honing his evil and intelligence for millennia, right?~ */ GOTO 1
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.1
  SAY #3521 /* ~Err, well, yes, but it's so much easier to just "grr" a lot... it impresses the rubes, you see.~ */
  IF ~~ THEN EXIT
END
