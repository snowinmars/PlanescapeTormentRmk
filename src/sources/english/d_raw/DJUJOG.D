// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUJOG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUJOG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53212 /* ~This large guardsman is bellowing orders to the civilians gathered around him. He glares at you through the slits of his helm as you interrupt him. "What d'ya want, piker? An' make it quick, afore we get ta workin' 'ere."~ */
  IF ~~ THEN REPLY #53213 /* ~"What's going on here?"~ */ GOTO 1
  IF ~~ THEN REPLY #53214 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53215 /* ~"What's it look like, ya sod?! We're about ta loot this warehouse. Ya want in on the action, or not? 'Cause this ain't gonna be some sorry-arse, disorderly mess... we're doin' it *right,* an' I'm givin' the orders."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53216 /* ~"If we can calm things down, it'll help the town slide back onto the Outlands. Once Curst is wholly overrun with monsters, how long do you think you'll live to enjoy the spoils of your looting?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53217 /* ~"If we can calm things down, it'll help the town slide back onto the Outlands. Once Curst is wholly overrun with monsters, how long do you think you'll live to enjoy the spoils of your looting?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53218 /* ~"If we can calm things down, it'll help the town slide back onto the Outlands. Once Curst is wholly overrun with monsters, how long do you think you'll live to enjoy the spoils of your looting?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53219 /* ~"What you're doing is making the problems here worse. Take these people and help defend the walls - instead of looting - so that the town can slide back onto the Outlands."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53220 /* ~"What you're doing is making the problems here worse. Take these people and help defend the walls - instead of looting - so that the town can slide back onto the Outlands."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53221 /* ~"Hold it: there won't be any looting while I'm around."~ */ GOTO 3
  IF ~~ THEN REPLY #53222 /* ~"I've got other things to do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3
  SAY #53223 /* ~The guardsman lifts the visor of his helm so that he may spit at your feet. "Hah! Out of my face, sod; we've lootin' to do."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53224 /* ~"If we can calm things down, it'll help the town slide back onto the Outlands. Once Curst is wholly overrun with monsters, how long do you think you'll live to enjoy the spoils of your looting?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53225 /* ~"If we can calm things down, it'll help the town slide back onto the Outlands. Once Curst is wholly overrun with monsters, how long do you think you'll live to enjoy the spoils of your looting?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53226 /* ~"If we can calm things down, it'll help the town slide back onto the Outlands. Once Curst is wholly overrun with monsters, how long do you think you'll live to enjoy the spoils of your looting?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53227 /* ~"Hold it: there won't be any looting while I'm around."~ */ GOTO 3
  IF ~~ THEN REPLY #53228 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5 2.3
  SAY #53229 /* ~You can sense his sneer even from behind the visored helm. "Oh there *won't,* eh? Well, then..." He hefts his massive weapon. "We'll just have ta remedy that, then."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53230 /* ~"If we can calm things down, it'll help the town slide back onto the Outlands. Once Curst is wholly overrun with monsters, how long do you think you'll live to enjoy the spoils of your looting?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53231 /* ~"If we can calm things down, it'll help the town slide back onto the Outlands. Once Curst is wholly overrun with monsters, how long do you think you'll live to enjoy the spoils of your looting?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53232 /* ~"If we can calm things down, it'll help the town slide back onto the Outlands. Once Curst is wholly overrun with monsters, how long do you think you'll live to enjoy the spoils of your looting?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53693 /* ~"What you're doing is making the problems here worse. Take these people and help defend the walls - instead of looting - so that the town can slide back onto the Outlands."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53694 /* ~"What you're doing is making the problems here worse. Take these people and help defend the walls - instead of looting - so that the town can slide back onto the Outlands."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53233 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 1.4 2.0 2.1 2.2 3.0 3.1 3.2 3.4
  SAY #53234 /* ~"But... ah, hells; ye're right." He shouts to the looters who've gathered around him: "Right! You heard the man, let's get goin'! And if anyone speaks o' this if we get the town slid back... ye're dead! Now let's go! Move!" He turns to you again. "And as fer *you:* ye've a better brain on yer shoulders than it looks. Good man."~ */
  IF ~~ THEN REPLY #53235 /* ~"Thanks. Farewell."~ */ DO ~AddexperienceParty(150000)
EscapeArea()
~ JOURNAL #53236 /* ~I was able to get a pack of citizens - led by a guardsman, of all people - to halt their looting and help in the defense of the town.~ */ EXIT
END
