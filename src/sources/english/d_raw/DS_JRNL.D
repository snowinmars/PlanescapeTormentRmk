// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_JRNL~

IF ~  NearbyDialog("Dsoego")
~ THEN BEGIN 0 // from:
  SAY #48857 /* ~This metal slab is apparently used as a bed. There looks to be a portion on its side that can be pried open.~ */
  IF ~~ THEN REPLY #48859 /* ~Pry it open, look inside.~ */ GOTO 1
  IF ~~ THEN REPLY #48861 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48862 /* ~You're not going to be able to pry into Soego's things while he's around. You'll need to find some way to distract or lure him away from the area if you want to get in there.~ */
  IF ~~ THEN REPLY #48863 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.0
  SAY #48864 /* ~Certain that Soego's not coming around, you pry open the small panel and peer inside. There's some sort of book or journal, there.~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #66860 /* ~Pull it out, read it.~ */ GOTO 3
  IF ~  Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #48865 /* ~Pull it out, read it.~ */ DO ~SetGlobal("Soego_Journal","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 3
  IF ~~ THEN REPLY #48866 /* ~Close the panel and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48867 /* ~The book proves to be Soego's journal. It details his being attacked by a wererat, his eventual regression into lycanthropy, and his flight from the Mortuary after unwittingly slaying and devouring a friend. Looking for a hiding place, he came upon the Warrens of Thought and agreed to serve Many-as-One, hive mind of the cranium rats gathered there. He is now here in the Dead Nations in order to spy on the undead for Many-as-One, who hopes to one day control this part of the catacombs.~ */
  IF ~~ THEN REPLY #48868 /* ~Replace the journal, close the panel and leave.~ */ JOURNAL #47846 /* ~I discovered Soego's journal hidden in his room, detailing his being attacked by a wererat, his eventual regression into lycanthropy, and his flight from the Mortuary after unwittingly slaying and devouring a friend. Looking for a hiding place, he came upon the Warrens of Thought and agreed to serve Many-as-One, hive mind of the cranium rats gathered there. He is here now in the Dead Nations in order to spy on the undead for Many-as-One, who hopes to one day control this part of the catacombs.~ */ EXIT
END

IF ~  !NearbyDialog("Dsoego")
~ THEN BEGIN 4 // from:
  SAY #67165 /* ~This metal slab is apparently used as a bed. There looks to be a portion on its side that can be pried open.~ */
  IF ~~ THEN REPLY #67166 /* ~Pry it open, look inside.~ */ GOTO 2
  IF ~~ THEN REPLY #67167 /* ~Leave.~ */ EXIT
END
