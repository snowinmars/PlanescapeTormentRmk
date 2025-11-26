// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDREAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDREAM~

IF ~  Global("Dream_Sequence","AR3017",0)
~ THEN BEGIN 0 // from:
  SAY #56043 /* ~You find yourself standing under a hangman's noose. A gravelly voice cackles out of the darkness. "You dream again? Again! Again!"~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56044 /* ~Your body seems strangely light and airy, like you've lost control of it, like the winds blow you where they will.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut1",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",1)
~ THEN BEGIN 2 // from:
  SAY #56045 /* ~You find yourself floating through a maze of twisted plants and black barbs that tear at your insubstantial body.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut2",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",2)
~ THEN BEGIN 3 // from:
  SAY #56046 /* ~Creatures of nightmare pull themselves from the ground and walls, and rip at your flesh. Their furious attack drives you into unconsciousness.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut3",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",3)
~ THEN BEGIN 4 // from:
  SAY #56047 /* ~You are standing in front of a tower of skulls that babbles at you, but you can't understand the words. A clattering behind you distracts you, and you see a battalion of fiends rushing you.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut5",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",4)
~ THEN BEGIN 5 // from:
  SAY #56048 /* ~You are standing in the maze again, and the stench of death surrounds you. You know you have killed all of them. The cackling voice breaks in once again.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56049 /* ~"Oh, my pretty little puzzle, you have killed these and so many more that I have lost count of them all." You are stricken mute and cannot reply.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56050 /* ~"Come to me, my poppet... come to Ravel in her black-barbed maze. Come dream with me."~ */
  IF ~~ THEN REPLY #56051 /* ~Shake yourself awake.~ */ DO ~TeleportParty("AR0502",[544.1539],14)
~ EXIT
END
