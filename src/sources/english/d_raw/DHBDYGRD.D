// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHBDYGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHBDYGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~This giant of a man wears an equally immense suit of ornate red armor. He regards you cautiously but without fear as you approach him.~ */
  IF ~~ THEN REPLY #31238 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #31239 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2894 /* ~A booming voice echoes from within his great helm: "Greetings, citizen. I am Matter-Of-Course... bodyguard to Diligence, Fourth Magistrate of the Ward. You must excuse me, for my duties lie at her side. Farewell."~ */
  IF ~~ THEN REPLY #31240 /* ~"One moment... I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #31241 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #31235 /* ~He simply turns and begins to walk away.~ */
  IF ~~ THEN REPLY #31242 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #31236 /* ~This giant of a man wears an equally immense suit of ornate red armor. Even through the slits of his helm you can see him peering suspiciously at you as you approach.~ */
  IF ~~ THEN REPLY #31243 /* ~"Greetings..."~ */ GOTO 4
  IF ~~ THEN REPLY #31244 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31237 /* ~He suddenly raises his weapon. "It's as I thought: you're him!" He rushes to attack you as he shouts for more guards.~ */
  IF ~~ THEN REPLY #31245 /* ~Defend yourself.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #31246 /* ~Run away.~ */ DO ~Enemy()
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
