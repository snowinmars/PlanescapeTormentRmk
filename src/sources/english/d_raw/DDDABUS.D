// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDDABUS~

IF ~  Global("Alley_Dabus_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50355 /* ~You see the dead body of a dabus. The stench of its decay is overpowering and, from the looks of its rigid, unnatural posture, extreme rigor mortis has long since set in. Yet, somehow, you are inexplicably aroused by the scene.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50356 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #50370 /* ~Let the stiff rest in peace.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #50357 /* ~For a few seconds, it appears that nothing is going to happen. Then suddenly, a faint gasp of rasping breath wheezes out of the corpse's open mouth. ~ */
  IF ~~ THEN REPLY #50358 /* ~"Hello? Can you hear me?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50359 /* ~There is silence for several moments, then, without warning the corpse's mouth begins to move. "'Course I can hear you! I'm *dead* not deaf... jive mutha'."[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50360 /* ~"Take it easy... I just want to ask you some questions."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #50361 /* ~"Questions? Do I look like an information booth to you, sucka?"[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50362 /* ~"What's with the jive talk... aren't you dabus supposed to speak in rebuses?"[Temp Line written by Steve Bokkes]~ */ GOTO 4
  IF ~~ THEN REPLY #50369 /* ~"Can you at least tell me how you died so I can complete this damn Pregnant Alley quest and move on to the Lower Ward?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50363 /* ~"Damn! You are one stupid honkey. Everyone knows that death is a universal language. What the hell good would it do me to start spitting out all those silly ass symbols if you couldn't understand a bit of it? How would you solve this quest then, huh? Besides this is only a placeholder dialogue, jackass."[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50364 /* ~"Can you at least tell me how you died so I can complete this damn Pregnant Alley quest and move on to the Lower Ward?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #50365 /* ~"Sure thang, white bread. You see, it's like this. I came down into this Alley lookin' ta find out what the hell was going on with the buildings changin' and all that. Well, I wandered into this here building, then next thing I knew, the doors and windows just closed up. I was trapped with no way out. I tried to hammer my way out, but each time I took a chunk out of the wall, the building just seemed to repair itself."[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50366 /* ~"Thanks, you've been a great help."~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #50367 /* ~"Don't mention it, chump!"[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50368 /* ~Leave.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #50371 /* ~You see the dead body of a dabus. The stench of its decay is overpowering and, from the looks of its rigid, unnatural posture, extreme rigor mortis has long since set in. Yet, somehow, you are inexplicably aroused by the scene.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50372 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 1
  IF ~~ THEN REPLY #50373 /* ~Let the stiff rest in peace.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #50374 /* ~The dead dabus has nothing else to say to you. Try again when Steve puts the final dialogue in.[Temp Line written by Steve Bokkes]~ */
  IF ~~ THEN REPLY #50375 /* ~Leave.~ */ EXIT
END
