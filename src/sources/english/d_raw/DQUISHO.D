// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISHO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #50027 /* ~You see a red-haired woman, short and plump. Her face is lined with cares, worries, and hatreds that seem to have festered for far too long. She sneers at your approach, and turns her head away so that you cannot see her eyes - she acts as though you can't see her if she can't see you. To her, you do not even exist.~ */
  IF ~~ THEN REPLY #50029 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #50030 /* ~This woman continues to ignore you steadfastly. Nothing you say to her makes an impression.~ */
  IF ~~ THEN REPLY #50031 /* ~"Very well, then."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 2 // from:
  SAY #50033 /* ~You see a red-haired woman, short and plump. Her face is lined with cares, worries, and hatreds that seem to have festered for far too long. She rasps out, "You're the one wantin' to get underground, aye? You'll need to do Dona Quisho a favor before she gives you her piece o' the key. There's a fiend locked up here in town. I needs him freed." She presses a scroll into your hands before you have a chance to react.~ */
  IF ~~ THEN REPLY #50035 /* ~"Why?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50036 /* ~"I don't hold with freeing fiends."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50038 /* ~"Tell me what I have to do."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50039 /* ~"Fall-from-Grace, what's your opinion?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #50040 /* ~"Because it's mine! Because I sacrificed so much for it! Because they took it from me and hid it from me and locked it away and no one would ever help me when it was all I ever wanted for myself!" Her voice grows cunning. "But now I have knowledge you need, and you'll never get it unless you let Agril-Shanak go."~ */
  IF ~~ THEN REPLY #50041 /* ~"How do I know it won't go on a rampage?"~ */ GOTO 6
  IF ~~ THEN REPLY #50042 /* ~"I don't hold with freeing fiends."~ */ GOTO 4
  IF ~~ THEN REPLY #50043 /* ~"Tell me what I have to do."~ */ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50044 /* ~"Fall-from-Grace, what's your opinion?"~ */ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 8.1
  SAY #50045 /* ~She cackles in your face. "That don't matter. You need the fifth part of the Key. I've got it. 'Less you're willing to find another way into your precious underground, you got to do what I say."~ */
  IF ~~ THEN REPLY #50046 /* ~"How do I know it won't go on a rampage?"~ */ GOTO 6
  IF ~~ THEN REPLY #50047 /* ~"I won't do it."~ */ GOTO 7
  IF ~~ THEN REPLY #50048 /* ~"Tell me what I have to do."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.2 6.0 8.2
  SAY #50049 /* ~"Find the grain silo in town. Find the pentagram inscribed into the floor in it. Use that scroll nearby, and when Agril-Shanak appears... free it. Make whatever bargains you like with it, but set it free. I don't care what you do then."~ */
  IF ~~ THEN REPLY #50050 /* ~"Very well. Farewell."~ */ JOURNAL #50051 /* ~For the fifth part of the Key, I am to find the grain silo in this town, find the pentagram inside it, use the scroll near the pentagram, and free the fiend Agril-Shanak. When I have done this, I am to return to Dona Quisho for the Key.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0
  SAY #50052 /* ~A little smile fills her eyes, one of the most poisonous smiles you have ever seen. "That's not a problem that concerns me. You cut your own deals with the fiend. I just want him freed."~ */
  IF ~~ THEN REPLY #50053 /* ~"What do I have to do?"~ */ GOTO 5
  IF ~~ THEN REPLY #50054 /* ~"I won't do it."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 9.1
  SAY #50055 /* ~"Then you won't get the fifth part of the Key. You'll change your mind, you will. Come back when you do." She cackles and turns away from you.~ */
  IF ~~ THEN REPLY #50056 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",5)
Global("Free_Fiend","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #50057 /* ~When you approach her this time, her gaze locks on to yours with determination. She rasps out, "You're the one wantin' to get underground, aye? You'll need to do Dona Quisho a favor before she gives you her piece o' the key. There's a fiend locked up here in town. I needs him freed." She presses a scroll into your hands before you have a chance to react.~ */
  IF ~~ THEN REPLY #50058 /* ~"Why?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50059 /* ~"I don't hold with freeing fiends."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50060 /* ~"Tell me what I have to do."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50061 /* ~"Fall-from-Grace, what's your opinion?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~  GlobalGT("Free_Fiend","GLOBAL",0)
GlobalLT("Free_Fiend","GLOBAL",3)
~ THEN BEGIN 9 // from:
  SAY #50062 /* ~Dona Quisho looks up as you approach, and contempt floods her features. "You've not freed Agril-Shanak yet, have you? Come back when you have."~ */
  IF ~~ THEN REPLY #50063 /* ~"What was I supposed to do again?"~ */ GOTO 10
  IF ~~ THEN REPLY #50064 /* ~"I'm not going to do it."~ */ GOTO 7
  IF ~~ THEN REPLY #50065 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #50066 /* ~She sighs impatiently. "Grain silo. Pentagram. Read scroll. Is that so hard? Go on." She turns away from you.~ */
  IF ~~ THEN REPLY #50067 /* ~"Farewell, then." ~ */ EXIT
END

IF ~  Global("Free_Fiend","GLOBAL",3)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #50068 /* ~"You're done, ain't you? Yes, you are... but where's Agril-Shanak?"~ */
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50069 /* ~Truth: "It's dead."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 13
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50070 /* ~Lie: "It'll be around."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50071 /* ~"I'm sure it'll be around shortly."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #68287 /* ~"I left it stewing in the pentagram. You can go free it yourself. I've resummoned it... the rest is up to you."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.2 11.3
  SAY #50072 /* ~She cackles. "And we shall make our plans and lay our traps and they shall rue their mistakes, oh yes." She presses a bag of coins into your hands. "Here's the last part of the Key: 'As from the Center thrice to the utmost pole'. Go on back and talk to Tainted Barse now; he'll steer you right." Still cackling, she gathers her belongings and scurries out.~ */
  IF ~~ THEN REPLY #50073 /* ~"Farewell..."~ */ DO ~GivePartyGold(1500)
AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50074 /* ~Dona Quisho gave me the fifth part of the Key: "As from the Center thrice to the utmost pole." She cackled something about revenge and told me to talk to Tainted Barse again to use the Key.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #50075 /* ~Her face pales. "Dead... but...? You killed him? Then I am lost. Take your damned key and begone." She intones these words lifelessly: "As from the Center thrice to the utmost pole." She looks around herself for a moment. "Talk to Barse again. He'll know what to do." She gathers herself together, and leaves.~ */
  IF ~~ THEN REPLY #50076 /* ~"Farewell, then."~ */ DO ~AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50077 /* ~Dona Quisho gave me the fifth part of the Key: "As from the Center thrice to the utmost pole." She told me to talk to Tainted Barse again, muttered something about being lost when I told her Agril-Shanak was dead, and she fled as if the hosts of the Nine Hells were pursuing her.~ */ EXIT
END
