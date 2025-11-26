// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBBPLOT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBBPLOT2~

IF ~  Global("BBPlot_Secret_2","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53136 /* ~This circular plot on the floor of the maze is peculiar in that all the vegetation around it has died, except for three sickly twigs in the center... it looks as if the twigs devoured all the other vegetation around them. ~ */
  IF ~  OR(2)
!Global("BBPlot_Secret_1","GLOBAL",0)
!Global("BBPlot_Secret_3","GLOBAL",0)
~ THEN REPLY #53137 /* ~Start humming, the same tune Ravel used when she called upon the maze's power.~ */ GOTO 1
  IF ~  !Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53153 /* ~Examine the twigs.~ */ GOTO 6
  IF ~  Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53156 /* ~Examine the twigs.~ */ GOTO 7
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53163 /* ~Examine the twigs.~ */ GOTO 7
  IF ~~ THEN REPLY #53164 /* ~Leave the twigs alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #53138 /* ~As you begin humming, the twigs suddenly begin twisting within their dead circle, the fingers thrashing, grabbing for something... and you know, instinctively, they are clutching for a black-barbed seed.~ */
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #53139 /* ~While humming, throw one of the black-barbed seeds into their midst.~ */ DO ~DestroyPartyItem("BBSeed",FALSE)
SetGlobal("BBPlot_Secret_2","GLOBAL",1)
~ GOTO 2
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #53151 /* ~"I hope I can find some other seeds... though I have a feeling that Ravel gave me the only ones here."~ */ EXIT
  IF ~~ THEN REPLY #53152 /* ~Leave the thrashing twigs alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53140 /* ~While humming, you flick the seed into the mass of branches, and the three twigs twist around the seed with a *crack,* splintering it. The twigs stop thrashing, and you watch as the twigs slowly grow, thickening to become branches. As they grow, the three new branches twist around each other, then with a *crack,* they snap at the base. They roll across the floor, then stop, deathly still.~ */
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53141 /* ~Pick up the three twined branches.~ */ DO ~GiveItemCreate("BBWand",Protagonist,9,9,0)
~ GOTO 3
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53144 /* ~Pick up the three twined branches.~ */ DO ~GiveItemCreate("BBWand",Protagonist,33,33,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53147 /* ~Pick up the three twined branches.~ */ DO ~GiveItemCreate("BBWand",Protagonist,66,66,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53148 /* ~Pick up the three twined branches.~ */ DO ~GiveItemCreate("BBWand",Protagonist,99,99,0)
~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53142 /* ~You pick up the three-twined branch; it is still in your hands, but you can feel your humming very faintly within it. It's obviously magical... but the branches look a little stunted; you're not sure how much power the branch possesses.~ */
  IF ~~ THEN REPLY #53143 /* ~"I'll just take this, then... it could prove useful."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.2
  SAY #53145 /* ~You pick up the three-twined branch; it is still in your hands, but you can feel your humming within it. It's obviously magical... and powerful. ~ */
  IF ~~ THEN REPLY #53146 /* ~"I'll just take this, then... it could prove useful."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY #53149 /* ~You pick up the three-twined branch; it is still in your hands, but you can feel your humming strongly within it, like a heartbeat. It's obviously magical... and powerful. You could *feel* the branch responding to your humming, so much so you were able to encourage its growth as the branches intertwined. A tremendous amount of power lies within the branch... a trace of Ravel's power, perhaps, but mostly your own force of will. You can't help but feel impressed with yourself. ~ */
  IF ~~ THEN REPLY #53150 /* ~Take the branch... *your* branch.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #53154 /* ~The twigs are thin, like grasping fingers, and they have none of the black barbs that coat the branches elsewhere in the maze. Other than that, there seems to be nothing remarkable about them.~ */
  IF ~~ THEN REPLY #53155 /* ~Leave the twigs alone.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 0.3
  SAY #53157 /* ~The twigs are thin, like grasping fingers, and they have none of the black barbs that coat the branches elsewhere in the maze. As you examine them, however, you can feel a magical vibration from them - they are like the faint vibrations you feel in the maze, but they are more insistent, like the wailing of tiny children.~ */
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53158 /* ~Start humming, the same tune Ravel used when she called upon the maze's power.~ */ GOTO 1
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53159 /* ~Study the twigs carefully, see if you can determine the nature of the aura.~ */ GOTO 8
  IF ~~ THEN REPLY #53162 /* ~Leave the twigs alone.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #53160 /* ~You examine the twigs carefully; for some reason, you are struck with the feeling that these twigs are being grown for a purpose. They seem to have some magical potential within them, but you can't figure out how to unlock it.~ */
  IF ~~ THEN REPLY #53161 /* ~Leave the twigs alone.~ */ EXIT
END

IF ~  Global("BBPlot_Secret_2","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #53165 /* ~Before you is a dead circle on the floor of the maze... no new branches have grown, nor do you think they ever will, now that Ravel has met her end.~ */
  IF ~~ THEN REPLY #53166 /* ~Leave the circle.~ */ EXIT
END
