// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARSLAV~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50939 /* ~You see a heavyset Harmonium guard. He looks grizzled, grim, and partly drunk. He keeps an eye on the slaves they've been rounding up, and talks to you out of the corner of his mouth. "Whaddya want?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50940 /* ~"I'm here to get Tainted Barse's daughter back."~ */ GOTO 2
  IF ~~ THEN REPLY #50941 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #50942 /* ~"What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #50943 /* ~"I'm here to shut down the slave ring."~ */ GOTO 5
  IF ~~ THEN REPLY #50944 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #50945 /* ~"Y'back again?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50946 /* ~"I'm here to get Tainted Barse's daughter back."~ */ GOTO 2
  IF ~~ THEN REPLY #50947 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #50948 /* ~"What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #50949 /* ~"I'm here to shut down the slave ring."~ */ GOTO 5
  IF ~~ THEN REPLY #50950 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.0
  SAY #50951 /* ~"You want to buy her back? Talk to Skatch about it, then... he's the one in charge."~ */
  IF ~~ THEN REPLY #50952 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #50953 /* ~"What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #50954 /* ~"I'm here to shut down the slave ring."~ */ GOTO 5
  IF ~~ THEN REPLY #50955 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 4.1
  SAY #50956 /* ~He grunts. "What's it look like? Harmonium 'recruiters'."~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50957 /* ~"In that case, I'm here to get Tainted Barse's daughter back."~ */ GOTO 2
  IF ~~ THEN REPLY #50958 /* ~"What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #50959 /* ~"Well, I'm here to shut down the slave ring."~ */ GOTO 5
  IF ~~ THEN REPLY #50960 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.1 3.1
  SAY #50961 /* ~"What's it look like? Skatch calls it recruiting. I call it a slave run. Do I care? Nuh. It's good money." He looks at you carefully. "You want something?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50962 /* ~"I'm here to get Tainted Barse's daughter back."~ */ GOTO 2
  IF ~~ THEN REPLY #50963 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #50964 /* ~"I'm here to shut down the slave ring."~ */ GOTO 5
  IF ~~ THEN REPLY #50965 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.2 3.2 4.2
  SAY #50966 /* ~"Heh. Why tell me? Now I got to kill you." He draws his weapon and attacks!~ */
  IF ~~ THEN REPLY #50967 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
