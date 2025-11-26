// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~The corpse's meaty head was clearly severed at some point and hastily sewn back on. Several different sets of stitching - all in various states of unraveling - seem to indicate that the head is constantly being knocked back off and reattached during the course of its work. A number - "79" - has been cut into its temple, circumscribed by a fanged circle that appears to have been branded on its forehead.~ */
  IF ~~ THEN REPLY #34943 /* ~"So... seen anything interesting going on?"~ */ DO ~IncrementGlobalOnceEx("GLOBALZombie_Chaotic","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",0)
~ THEN REPLY #34946 /* ~Examine the fanged circle.~ */ DO ~SetGlobal("Know_Copper_Earring_Secret","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"I know you're not a zombie, you know. You're not fooling anyone."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #34944 /* ~The corpse continues to stare at you.~ */
  IF ~~ THEN REPLY #34945 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3 3.0 3.1
  SAY #34949 /* ~The corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #34950 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64278 /* ~The fanged circle looks like it was branded on the corpse's forehead long ago, presumably before it died. It might be a religious icon of some sort, or a rite of passage. You notice that one of the recesses between the inner 'fangs' has a small triangle within it, as if it has some special significance.~ */
  IF ~  !PartyHasItem("CopEarC")
~ THEN REPLY #64279 /* ~"Hmmm. Interesting... how did that mark get there, corpse?"~ */ JOURNAL #64536 /* ~Found a strange fanged circular symbol on the forehead of Zombie #79. For some reason, the mark struck me as important, but I don't know why.~ */ GOTO 2
  IF ~  PartyHasItem("CopEarC")
~ THEN REPLY #64280 /* ~"Hmmm... I wonder if the space between the fangs match the grooves on this copper earring I have..."~ */ JOURNAL #64537 /* ~Found a strange fanged circular symbol on the forehead of Zombie #79. Just looking at the symbol reminded me of the ancient copper earring I got from the Southeast Preparation Room - perhaps the two are connected.~ */ GOTO 2
END
