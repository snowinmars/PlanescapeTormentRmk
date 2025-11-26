// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIGNUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DIGNUS~

IF ~  Global("Ignus","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2846 /* ~This crackling, billowing creature twists slowly above an iron grill upon the floor of the bar. It may have once been human, but now its skin is charred beyond recognition. Streams of fire form a wreath around the creature's body, and the flames lick at the few remaining pockets of flesh, causing them to bubble and run like wax down the creature's skeletal frame. ~ */
  IF ~~ THEN REPLY #16198 /* ~"Greetings...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~~ THEN REPLY #16200 /* ~Examine the smoldering corpse.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16201 /* ~"Hmmm. I wonder if this Decanter of Endless Water will do something...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16210 /* ~Leave the thing alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #2847 /* ~The thing makes no response. It writhes slowly within the flames - it lives, but it does not seem *aware* of anything other than the fire that surrounds it. Its skin is flame, its heart is flame, and you know, within some shadowed corner of your memory, that this thing is *dangerous.*~ */
  IF ~~ THEN REPLY #16212 /* ~Examine the creature.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16213 /* ~"Hmmm. I wonder if this Decanter of Endless Water will do something...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16214 /* ~Leave the thing alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #16199 /* ~The heat surrounding this... creature... is incredible. To your surprise, the iron grill the creature floats above has sagged and bent from the heat. At first, you thought the heat came from the grill... but now you realize it emanates from the creature. As you watch, flecks of ash drift from the writhing corpse and float slowly to the ceiling.~ */
  IF ~~ THEN REPLY #16215 /* ~"Greetings...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16216 /* ~"Hmmm. I wonder if this Decanter of Endless Water will do something...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16217 /* ~Leave the thing alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #16202 /* ~You tilt the decanter over the grill and begin to pour. A small stream of ice-blue water pours from the decanter, and touches the flames of the grill with a violent hissing and a rush of steam... as if in response to this challenge, the decanter seems to *lunge* forward, falling onto the grill and shattering! ~ */
  IF ~~ THEN REPLY #16218 /* ~"By the hells...?!"~ */ DO ~DestroyPartyItem("Decant2",TRUE)
AddexperienceParty(5000)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16203 /* ~Hissing billows of steam and a furious crackling noise rushes from the grill, spilling over you and forcing you to cover your ears and turn away... there is a scream, a cackling, a terrible sound like a hundred buildings burning, people screaming, their screams being cut short by the roar of flame and melting flesh... ~ */
  IF ~~ THEN REPLY #16219 /* ~Cover your ears, block out the sound.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16204 /* ~As you put your hands over your ears to block out the sound, you feel a stickiness on your hands, like hot cheese or candle wax... your ears are bleeding from the sound! You draw your hands back, and see them covered with chunks of melted flesh filled with bloody swirls...~ */
  IF ~~ THEN REPLY #16220 /* ~Try and get out of the bar.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #16205 /* ~You are about to run from the bar, anything to get away from the sound, when suddenly all falls silent, except for a jagged crackling coming from the grill. You turn - on the grill lies the Decanter of Endless Water, now nothing but shards and steam. Above it is the creature, flames still trailing from its body, floating over the bar's floor. It is staring at you, its eyes flickering like two torches...~ */
  IF ~~ THEN REPLY #16221 /* ~"I *know* you..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16206 /* ~The creature's face splits, charred flesh peeling away from its jaw so that it might speak. *"Yessss..."* Its voice crackles, burns, roars through the creature's chest, and with every word, flakes of cinder and ash spit from its mouth and drift into the air. You can barely stand to look at the thing - the blazing radiance surrounding it is terrible to behold.~ [IGN116] */
  IF ~~ THEN REPLY #16222 /* ~"Ignus..."~ */ DO ~SetGlobal("Ignus_Free","GLOBAL",1)
SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #16207 /* ~*"Yesssss..."* The creature floats towards you, the air bending from the thermals surrounding it. *"Long have I ssslept... dreamssss of flamesss..."* As if in response, flames curl within Ignus' throat, and a tongue of flame streams from behind his blackened teeth. *"I am yourssss... till death comessss for ussss both..."*~ [IGN004C] */
  IF ~~ THEN REPLY #48406 /* ~"We shall see..."~ */ EXIT
END

IF ~  Global("Ignus","GLOBAL",1)
!InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #16208 /* ~As you approach it, the creature hisses, the air bending from the thermals surrounding it. *"Long have I ssslept... dreamssss of flamesss..."*~ [IGN004B] */
  IF ~~ THEN REPLY #16223 /* ~"Greetings, Ignus... will you travel with me?"~ */ DO ~SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #52781 /* ~"Keep your dreams close, Ignus... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16209 /* ~As if in response, flames curl around Ignus' throat, and a tongue of flame streams from behind his blackened teeth. *"I am yourssss... till death comessss for ussss both..."*~ [IGN248] */
  IF ~~ THEN REPLY #52782 /* ~"We shall see..."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #16624 /* ~Ignus slowly turns to meet your gaze. *"Yesss?"*~ */
  IF ~  !Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16922 /* ~"Never mind; it was a bad idea. I had some questions, Mourns..."~ */ EXTERN ~DMFTREE~ 28
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16923 /* ~"See these trees, Ignus? Do you think you could find it in your heart to *care* for them?"~ */ GOTO 12
  IF ~~ THEN REPLY #16924 /* ~"Nothing; I don't know what I was thinking. Farewell, Mourns-for-Trees."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #16625 /* ~Ignus turns to the trees, the air around him becoming uncomfortably hot in seconds. *"Yesss... burnnnn..."*~ */
  IF ~~ THEN EXTERN ~DMFTREE~ 52
END

IF ~~ THEN BEGIN 13 // from:
  SAY #16626 /* ~Ignus laughs horribly; gouts of flame erupt from his throat. *"You ssstand between me and thing that burnsss? Youuu, tooo, will burnnnn..."*~ */
  IF ~~ THEN REPLY #16925 /* ~"Ignus, wait..."~ */ DO ~Attack("MFTree")
~ EXIT
  IF ~~ THEN REPLY #16926 /* ~Let him do as he pleases.~ */ DO ~Attack("MFTree")
IncrementGlobalOnceEx("GLOBALEvil_Mourns_3","GLOBALGood",-2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #33991 /* ~As you approach him, Ignus hisses, the air bending from the thermals surrounding him. *"Assss I remained here... thoughtssss filled with flamesss..."*~ [IGN247] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #33992 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61855 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61856 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61857 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61858 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61859 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61860 /* ~"Uh... I see. Farewell, then."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 84.0 85.0
  SAY #33994 /* ~*"I am yourssss... till death comessss for ussss both..."*~ [IGN248] */
  IF ~~ THEN REPLY #33995 /* ~"Very well. Let's go."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~  InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #33996 /* ~Flames curl around Ignus' throat, and a tongue of flame streams from behind his blackened teeth. *"Yessssss...?"*~ [IGN249] */
  IF ~~ THEN REPLY #33997 /* ~"Ignus, what happened to you to make you this way?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57439 /* ~"Ignus... is it true you burned down the Alley of Dangerous Angles?"~ */ GOTO 36
  IF ~~ THEN REPLY #57440 /* ~"What were you doing in the Smoldering Corpse Bar?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57441 /* ~"Ignus, I spoke with a storyteller in the Hive, and he mentioned that someone *taught* you these things... who?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(10000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57442 /* ~"Ignus, are you SURE your teacher was me?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57443 /* ~"Ignus, your mastery of the Art... can you teach me any of your powers?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57444 /* ~"Ignus, your mastery of the Art... I am willing to suffer to learn more."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57445 /* ~"Ignus, your mastery of the Art... I am willing to suffer to learn more."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57446 /* ~"Ignus, about your teaching, about the torments I subjected you to... I'm sorry."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57447 /* ~"Nothing, Ignus. I was just checking to see if you were still with us... so to speak."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52561 /* ~*"Burnnnnn..."*~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52562 /* ~"And what other torments do your eyes see, Ravel?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52563 /* ~"And what other torments do your eyes see, Ravel?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52564 /* ~"And what other torments do your eyes see, Ravel?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52565 /* ~"And what other torments do your eyes see, Ravel?"~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 18 // from:
  SAY #52566 /* ~*"Burrnnnn..."*~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52567 /* ~"Ravel, you've made your point. Now enough of t-"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52568 /* ~"Ravel, you've made your point. Now enough of t-"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52569 /* ~"Ravel, you've made your point. Now enough of t-"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52570 /* ~"Ravel, you've made your point. Now enough of t-"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 19 // from: 46.1
  SAY #54145 /* ~*"I am yourssss... till death comessss for ussss BOTH..."*~ */
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54146 /* ~"I... see. Fall-from-Grace?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54147 /* ~"I... see. Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54148 /* ~"I... see. Dak'kon?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("grace")
!InParty("annah")
NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54149 /* ~"I... see. Dak'kon?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54150 /* ~"I... see. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54151 /* ~"I... see. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54152 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54153 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54154 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 31.2 33.2 34.3 35.1 39.1 40.2 45.1 46.2 47.3 48.3 49.2 51.1 63.2 64.2 65.4 68.2 72.2 73.3 77.2 81.2 82.2 83.2
  SAY #57448 /* ~*"HSSSS'SSSSS!"* Your heart jumps as Ignus soars several feet into the air, and his jaw tears open, fiery trails spilling forth like a nest of snakes. *"NO MORE TALK AND QUESSSSTIONSSS! Ssssilence...!"* ~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57449 /* ~"But I wish to speak of flames, Ignus, and of burning..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57450 /* ~"But I wish to speak of flames, Ignus, and of burning..."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57451 /* ~"But I wish to speak of flames, Ignus, and of burning..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57452 /* ~"But I wish to speak of flames, Ignus, and of burning..."~ */ GOTO 27
  IF ~~ THEN REPLY #57453 /* ~"You WILL answer my questions, Ignus. I set you free, and I may send you back to your hell again."~ */ GOTO 21
  IF ~~ THEN REPLY #57454 /* ~"Never mind, then..."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.4
  SAY #57580 /* ~*"Think YOU could ch'ain Ignussss...?"* The flames around Ignus swirl like a cloak, then fan outwards, as if seeking to caress you. *"KILL you, turn you to *asssshessss* Ignussss can... for now, Ignusssss followsssss... but threatsssss... threatsss ANGER Ignusssss..."* ~ */
  IF ~~ THEN REPLY #57581 /* ~"Actually, Ignus, you couldn't stop me - you could burn me, but I'd keep coming at you until you were kindling. So *enough* with the threats..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 22
  IF ~~ THEN REPLY #57582 /* ~"So *you* say... we'll speak later, Ignus."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #57583 /* ~There is a crackling in the air, and Ignus cocks his head slightly, as if studying you, then hisses. *"FLAMESSSSS will burnnnn the immmortality from you... you are NOT sssafe from my flamesssss..."*~ */
  IF ~~ THEN REPLY #57584 /* ~"Maybe you don't understand what immortality MEANS, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
~ GOTO 23
  IF ~~ THEN REPLY #57585 /* ~"How did you know I was immortal?"~ */ GOTO 23
  IF ~~ THEN REPLY #57586 /* ~"So *you* say... we'll speak later, Ignus."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #57587 /* ~*"You are *NOT* immmortal... Ignusssss can KILL you... ssscatter your asssshesss to the windssss..."* You watch as he flings his arms wide, and a HEAT pours from him, so powerful you are forced to shield your eyes - there is a great ROARING, as the air flees past you being drawn into Ignus. ~ */
  IF ~~ THEN REPLY #57588 /* ~"Ignus! Stop th-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #57589 /* ~As you try to shout at Ignus to stop, the tide of heat turns back upon itself, and a blazing *heat* washes over you. You feel your flesh begin to smolder, then smoke, and the beginnings of PAIN... you clench your teeth, and over the pain, you can hear Ignus cackling... cackling, crackling laughter... ~ */
  IF ~~ THEN REPLY #57590 /* ~"Ignus!"~ */ DO ~SetGlobal("Ignus_Kill_Nameless","GLOBAL",1)
~ JOURNAL #57591 /* ~Ignus almost went totally barmy when I was speaking to him... I survived his tantrum, but there's something about that elemental power he commands; I think he has the power to kill me... permanently. ~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #57603 /* ~As you shout his name again, the heat dies - as you draw your arms back from your face, you see that your skin has blackened from where Ignus burned it... and Ignus is watching you hungrily. You know, more than anything, that whatever Ignus *is,* whatever power that has embraced him, it has the power to destroy you - if his flames were to kill you, there would be nothing left of your body.~ */
  IF ~~ THEN REPLY #57605 /* ~"I have had ENOUGH of you, Ignus... perhaps you can kill me, perhaps not - I'm willing to put it to the test."~ */ GOTO 29
  IF ~~ THEN REPLY #57607 /* ~"Very well, Ignus. We shall speak later then, you and I..."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 20.2
  SAY #57608 /* ~Your words are like oil... and you watch them fill Ignus' eyes, fanning the flames you see there. *"Flamessss?"* Ignus drifts down slightly, the heat around him rising, as if in interest. *"Sssss'peak... Ignusss will lisssten..."*~ */
  IF ~~ THEN REPLY #57609 /* ~"Ignus, what happened to you to make you this way?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57610 /* ~"Ignus... is it true you burned down the Alley of Dangerous Angles?"~ */ GOTO 36
  IF ~~ THEN REPLY #57612 /* ~"What were you doing in the Smoldering Corpse Bar?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57613 /* ~"Ignus, I spoke with a storyteller in the Hive, and he mentioned that someone *taught* you these things... who?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57616 /* ~"Ignus, are you SURE your teacher was me?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57619 /* ~"Ignus, your mastery of the Art... can you teach me any of your powers?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57624 /* ~"Ignus, your mastery of the Art... I am willing to suffer to learn more."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57628 /* ~"Ignus, your mastery of the Art... I am willing to suffer to learn more."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57630 /* ~"Ignus, about your teaching, about the torments I subjected you to... I'm sorry."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57633 /* ~"We'll discuss flames later, Ignus, not now."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 20.1 20.3 28.0 31.1 33.1 34.2 35.0 39.0 40.1 45.0 47.2 48.2 49.1 51.0 63.1 64.1 65.3 68.1 72.1 73.2 77.1 81.1 82.1 83.1
  SAY #57636 /* ~*"Flamessss...?"* Ignus' voice crackles, as if in interest. *"Sssss'peak... Ignusss will lisssten..."*~ */
  IF ~~ THEN REPLY #57637 /* ~"Ignus, what happened to you to make you this way?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57639 /* ~"Ignus... is it true you burned down the Alley of Dangerous Angles?"~ */ GOTO 36
  IF ~~ THEN REPLY #57641 /* ~"What were you doing in the Smoldering Corpse Bar?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57643 /* ~"Ignus, I spoke with a storyteller in the Hive, and he mentioned that someone *taught* you these things... who?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57645 /* ~"Ignus, are you SURE your teacher was me?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57648 /* ~"Ignus, your mastery of the Art... can you teach me any of your powers?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57650 /* ~"Ignus, your mastery of the Art... I am willing to suffer to learn more."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57654 /* ~"Ignus, your mastery of the Art... I am willing to suffer to learn more."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57656 /* ~"Ignus, about your teaching, about the torments I subjected you to... I'm sorry."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57658 /* ~"I have no further questions... let your dreams be filled with flames, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 26.9 27.9
  SAY #57659 /* ~*"NO! SSSS'PEAKKKK!"* Ignus howls, and the air around you *twists* again from the sheer amount of heat. *"SPEAK OF FLAMESSSSS! SSS'PEAK OF THE BURNING!"* ~ */
  IF ~~ THEN REPLY #57660 /* ~"Uh... very well. I had these questions... about flames..."~ */ GOTO 27
  IF ~~ THEN REPLY #57661 /* ~"No, Ignus... we'll speak some other time! Not now!"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57662 /* ~"Ignus... have you ever *felt* a building a-flame? The flames licking the edges of the timbers, blackening the wood beneath, watching the heat peel the paint from the walls, thatch crackling, the smell of burning straw..."~ */ DO ~SetGlobal("Ignus_Calm_Tale","GLOBAL",1)
AddexperienceParty(1500)
SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57663 /* ~"Ignus... have you ever *felt* a building a-flame? The flames licking the edges of the timbers, blackening the wood beneath, watching the heat peel the paint from the walls, thatch crackling, the smell of burning straw..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.0 28.1 82.0
  SAY #57664 /* ~Ignus howls, a horrible *screaming* roar, and a fiery radiance suddenly surrounds him - and his eyes - his eyes are like windows to some other PLACE. He raises his hands, flames crackling along the edges, growing to become great, flaming whips. *"You sssshalll BURNNNN!"*~ */
  IF ~~ THEN REPLY #57665 /* ~"Ignus, you *asked* for this..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3
  SAY #57666 /* ~As you speak, the crackling of the flames around Ignus' frame ebbs, as if the flames themselves are listening to your words... when you finish, Ignus hisses softly, and the flames in his eyes have dimmed, as if he is lost in a memory. *"Yessssss..."*~ */
  IF ~~ THEN REPLY #57667 /* ~"We'll speak later then, Ignus... stay calm in the meantime."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.0 26.0 27.0
  SAY #57668 /* ~*"Thissss way..."* A small pocket of flesh on Ignus' cheek *pops,* and runs in a steaming trickle down his jaw. *"Thissss way... Ignussss alwayssss wasss..."*~ */
  IF ~~ THEN REPLY #57669 /* ~"But... you look human. Or at least, you look like you were human once."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 32
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57670 /* ~"I wish to speak more of burning and flames..."~ */ GOTO 27
  IF ~~ THEN REPLY #57671 /* ~"I had some other questions for you..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57672 /* ~"I see. You and I may speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #57673 /* ~Ignus twists, hunching his head forward as his body spins slowly above the ground... the effect is much like a fiery whirlwind, thermals streaming off his body and distorting the air around him. *"Ssssstill Ignusss... alwayssss Ignusss..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57674 /* ~"I wish to speak more of burn-"~ */ GOTO 33
  IF ~~ THEN REPLY #57675 /* ~"Never mind, then. I had some other quest-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
  IF ~~ THEN REPLY #57676 /* ~"I see. Well, that's enough f-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1 32.2
  SAY #57677 /* ~As you open your mouth to speak, Ignus suddenly whirls on you - you are forced to choke back your words as the heat from his frame floods over you. *"Ignussss might YOU be... sss'PARKssss in bodiesss, alwayssss sssseeeking to rise..."*~ */
  IF ~~ THEN REPLY #57678 /* ~"'Sparks in bodies'? What do you mean?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL1)
~ GOTO 34
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57679 /* ~"I wish to speak more of burning and flames..."~ */ GOTO 27
  IF ~~ THEN REPLY #57680 /* ~"I had some other questions for you..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57681 /* ~"I see. You and I may speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #57682 /* ~*"ALL thingssss burn... insssside..."* Ignus' head cranes back and throws his arms wide, spirals of flame and heat traveling up his arms. *"Only need to be KINDLED with flamessss to become Ignusssss... sssso might YOU have been... Ignussss..."*~ */
  IF ~~ THEN REPLY #57683 /* ~"Actually, if you end up trying to kindle the flames within people, you usually end up killing them."~ */ GOTO 35
  IF ~~ THEN REPLY #57684 /* ~"So... you're saying everyone has the potential to become like you, with the right... spark?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 35
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57685 /* ~"I wish to speak more of burning and flames..."~ */ GOTO 27
  IF ~~ THEN REPLY #57686 /* ~"I had some other questions for you..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57688 /* ~"I see. You and I may speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #57689 /* ~*"Yessssss..."* Ignus 'grins,' cocking his head to one side, ashes falling from his skull and being swept up in the flaming wreath that surrounds him. ~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57690 /* ~"I wish to speak more of burning and flames..."~ */ GOTO 27
  IF ~~ THEN REPLY #57691 /* ~"I had some other questions for you..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57693 /* ~"I see. You and I may speak more... later."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.1 26.1 27.1
  SAY #57694 /* ~Ignus' face splits, the flesh around the corner of his mouth cracking, then re-melting into charred, sneering red-and-black pieces. *"Yessss... a dream sssshall Ignussss ssshare..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57696 /* ~"Maybe later. For now I wish to speak more of burn-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57697 /* ~"Uh... not right now. I had some other quest-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57698 /* ~"I've heard enough. We'll sp-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1 36.2
  SAY #57700 /* ~A torrent of flames pours from Ignus, and you take a step back, the air *bending* from the heat. *"Sssstreetsss at night... ssssso cold... Ignussss BURNNN the buildingssss, the dwellersss... all RAN from Ignussss, the flamessss, and the buildingssss were as flamessssss... screamssss as the dwellerssss became TORCHESSssss..."*~ */
  IF ~~ THEN REPLY #57701 /* ~"I've heard enough, Ign-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
  IF ~~ THEN REPLY #57703 /* ~Listen quietly, wait for his ranting to die.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #57704 /* ~*"Buildingssss as SKELETONSSSS... Anglessss, bodiessss as skeletonssss... redsss and orangessss and blackssss, the flamessss sssspreading, caresssing... sssuch LIGHTSSSS..."*~ */
  IF ~~ THEN REPLY #57706 /* ~"Ignus, I've heard ENOUGH -"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
  IF ~~ THEN REPLY #57707 /* ~Listen quietly, wait for his ranting to die.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #57709 /* ~*"Sss..."* Ignus' fury dies, the wreaths of flames surrounding him ebbing somewhat. He seems to be lost in thought - perhaps lost in memory. *"Ssss... and Ignussss wassss pleasssed..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57710 /* ~"I wish to speak more of burning and flames..."~ */ GOTO 27
  IF ~~ THEN REPLY #57712 /* ~"I have other questions for you, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57713 /* ~"I see. We shall speak later, you and I..."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 16.2 26.2 27.2
  SAY #57714 /* ~For a moment, you don't think Ignus has heard you, when suddenly the fires in his eyes dim slightly, and he gives a soft hiss, cinders and ash dancing at the edges of his jaw. *"Ignusss... once... knew NOTHING of flamessss..."*~ */
  IF ~~ THEN REPLY #57717 /* ~"Yes?"~ */ GOTO 41
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57718 /* ~"I wish to speak more of burning and flames..."~ */ GOTO 27
  IF ~~ THEN REPLY #57719 /* ~"Never mind. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57723 /* ~"Never mind, Ignus. We'll speak again some other time."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #57725 /* ~*"Once... Ignussss knew NOTHING of flamessss... he ssset ssssmall firesss, tiny flamesss, tiny flickeringssss... sssmall bitsss of flame..."* Ignus hisses again, ashes and fiery motes drifting from the ruin of his mouth. *"The firessss grew... Ignussss ssset firessss in their streetssss... and lit the firessss of anger in their heartssss..."* ~ */
  IF ~~ THEN REPLY #57726 /* ~"Yes?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57727 /* ~"I wish to speak more of burning and flames..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57729 /* ~"Never mind. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57730 /* ~"Never mind, Ignus. We'll speak again some other time."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 41.2 41.3
  SAY #57733 /* ~You speak, but Ignus doesn't seem to hear you... he seems to be somewhere else, as if re-living a memory through his words... against your will, you stop and listen.~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #57734 /* ~*"They sssought to punisssh Ignus, the ssmall fliesss from the Hive. They wissshed to sssee Ignusss BURNNN after Ignusss ssset fire to their ssstreets... tiny magelingsss, hedge wizzardsss, runecasterssss... tiny ssss'parks of magic came to PUNISSSSH Ignusss for hurting their loved onessss... they sssentenced Ignusssss to BURNNNN, made Ignussss a TORCH, a sssspitting FLAME, burning, burning... It wassss JUSSSTICE, they sssaid..."*~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #57736 /* ~*"Jusss'tice..."* You watch, mesmerized, as Ignus begins slowly turning again, as he did above the grill in the Smoldering Corpse. *"...but it was not a sssentence... there is ssoooo much flamessss and painnn that there issss NO pain... there issss LIGHT, and HEAT, and the flesssh runsss as TALLOW acrossss my bonessss... and for the firssst time... Ignussss issss PLEASSSSED..."*~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #57738 /* ~Ignus stops his rotation, and his gaze falls upon you. As it does, the fires in his eyes flare, and a charred grin splits his features, the flesh crackling and bubbling as it melts and streams across his face. Ignus wears the face of all hells, of flames, and his next words are spoken like a death sentence - not only for you, but for everyone, everywhere. *"When the planessss burnnnn and all life is torchesss, then Ignusss ssshall at lassst... be at peace..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57739 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57740 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57741 /* ~Leave Ignus to his thoughts of flames...~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 16.3 26.3 27.3
  SAY #57743 /* ~*"Of learningssss and teachingsss you know..."* Gouts of flame erupt from Ignus' mouth, in a horrid semblance of laughter. *"You have ALWAYSSSS taught Ignussss... Ignusss MASSSS'TER, you *were.*"*~ */
  IF ~~ THEN REPLY #57744 /* ~"Me? Are you *sure*...?"~ */ JOURNAL #57592 /* ~Ignus claims I am his master, the one who taught him the Art. He says it's the only reason he obeys me...~ */ GOTO 47
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57745 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 19
  IF ~~ THEN REPLY #57747 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57748 /* ~"Never mind, Ignus... we'll speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 16.4 26.4 27.4 46.0
  SAY #57751 /* ~Ignus' voice *drops,* and the crackling of the flames dies. *"Yessss... it issss the only reasssson... Ignussss... OBEYSSS you..."* Flames rise around him in a crackling spiral. *"till DEATH comessss for ussss both... your wordsssss to ME... to your sssstudent IGNUSSSS... Ignusss hassss NOT forgotten... Masssster..."*~ */
  IF ~~ THEN REPLY #57753 /* ~"Ignus... it must have been long ago when you learned the Art... are you absolutely sure it was me?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 48
  IF ~~ THEN REPLY #57754 /* ~"Ignus, if I was your 'Master'... can you remember anything about me?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57755 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57757 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57759 /* ~"Never mind, Ignus... we will speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #57760 /* ~*"Yesss..."* Ignus cackles. *"Yessssss... the face hassss changed... but many lesssonssss you taught Ignussss..."*~ */
  IF ~~ THEN REPLY #57761 /* ~"If my face has changed, how do you know?"~ */ GOTO 49
  IF ~~ THEN REPLY #57763 /* ~"Ignus... this is important. Can you remember anything about me?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57764 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57765 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57766 /* ~"Never mind, Ignus... we will speak more of this later."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #57768 /* ~*"Insssside all thingssss... tiny flamessss... the ssss'PARK, the flamesss, the SSSSAME... no matter what the sssskin... ssskin can bleed... ssskin can burn... but the INNER flame remainssssss..."* ~ */
  IF ~~ THEN REPLY #57769 /* ~"Ignus... this is important. Can you remember anything about me?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57771 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57773 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57775 /* ~"Never mind, Ignus... we will speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.1 48.1 49.0
  SAY #57776 /* ~Ignus hisses... and for a moment, his *features* flicker - at first, you think it's the flames, but it's not... it's the flickering of *memory*...~ */
  IF ~~ THEN REPLY #57777 /* ~Surrender to the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 52
  IF ~~ THEN REPLY #57778 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 61.1 62.0 62.1 62.2
  SAY #57779 /* ~Your vision clears, the memory streaming away like smoke. Ignus is hovering above you, his head cocked to one side, and an insane, blackened grin smeared across his face... *"Masssster... Ignusssss hasss NOT forgotten your teachingsss..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57780 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57781 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57782 /* ~"Never mind, Ignus... we will speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.0
  SAY #57783 /* ~The crackling of Ignus' flames subsides, lessening as the charred bones of Ignus' body fold up, twisting into itself until his limbs lie motionless, becoming a stack of wood within a huge iron fireplace... you are staring into a fire, burning brightly within a vaulted room. The fire crackles and spits embers onto the stone floor, motes rising from the fireplace. Faintly, from the darkness behind you, you can hear the rasp of someone breathing.~ */
  IF ~~ THEN REPLY #57784 /* ~Memory: "I can *hear* you... step into the light."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #57785 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #57786 /* ~There is the shuffling of sandals, and a frail youth steps into the edges of the firelight. His wide, black eyes catch the flames and mirror them. He is nervous - you can hear his muscles shaking, his voice trembling - just enough to increase your irritation. "Forgive my intrusion, master. I-"~ */
  IF ~~ THEN REPLY #57787 /* ~Memory: "You have *already* intruded, supplicant. You did so with intention. I will hear it now, then you will leave me to my thoughts."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #57788 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #57789 /* ~The boy takes a deep breath, and glances at the fire. "Master, I... dreamed of flames again, last night... they felt real, and you said that we were to come to you if-"~ */
  IF ~~ THEN REPLY #57790 /* ~Memory: "It was a *dream,* nothing more. Now leave." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 55
  IF ~~ THEN REPLY #57791 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #57792 /* ~The boy does not move - his brows draw together, and slowly, he displays his hands. The flesh around the fingers... blackened, burned. ~ */
  IF ~~ THEN REPLY #57793 /* ~Memory: "How did your hands come to be burned, supplicant?" ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 56
  IF ~~ THEN REPLY #57794 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #57795 /* ~"I awoke and my hands were as ash." The boy meets your gaze; he is still trembling, faintly, but there is an eagerness in his voice which angers you. "I dreamed I soared above the earth and the ground and sky were as fire. The world itself was so bright that it... hurt to look at it, master. And when I awoke, my hands... they were burned, as if I had held a flame within my hands."~ */
  IF ~~ THEN REPLY #57796 /* ~Memory: "You lie, supplicant. You have come to me with a story, and now you are in danger of *angering* me." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 57
  IF ~~ THEN REPLY #57797 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #57798 /* ~"No, master..." The boy's face glistens with a sweaty sheen of fear. "No, upon my life, I do not!"~ */
  IF ~~ THEN REPLY #57799 /* ~Memory: "You burned yourself with a candle, supplicant. Or thrust your hand within one of the pyres in the Vault of Currents. Now you come to me and tell me a dream burned you. I tire of your lies."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #57800 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #57801 /* ~The boy falls silent, and to your surprise, his face clenches in anger. "No. I do not lie. It was the *dream* that burned me, master, as you said it might if we felt the power stirring. They were *your* words, and I came to *repeat* them to you and tell you they are *true.*" He holds up his hands. "Look, master..."~ */
  IF ~~ THEN REPLY #57802 /* ~Memory: Grab his hands.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 59
  IF ~~ THEN REPLY #57803 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #57804 /* ~Before the boy can react, your hand - huge in comparison - lashes out, crushing his burned hands in its grip, and the boy screams, echoing in the vault. With a snarl, you hurl him to the ground in front of the fireplace, and there is a sharp *crack* as his knees strike the flagstones.~ */
  IF ~~ THEN REPLY #57805 /* ~Memory: "Look into those flames, supplicant! Raise your head, look!" ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 60
  IF ~~ THEN REPLY #57806 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #57807 /* ~The boy is shuddering from the pain from his knees... you watch tears blur his eyes as he raises his head to look into the fireplace. The flames cast his face in a red, gaunt glow...~ */
  IF ~~ THEN REPLY #57808 /* ~Memory: "Is *that* what you wish to hold, supplicant? Is the shaping of flames what stirs your heart? Know that flames can burn, and if you would learn their power, you must suffer their touch."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 61
  IF ~~ THEN REPLY #57809 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #57810 /* ~The boy is silent, staring into the flames. He seems mesmerized. His tears have dried in the heat, and the shaking is gone. The flames are his focus. He is not LISTENING to you, and you feel fury washing over you.~ */
  IF ~~ THEN REPLY #57811 /* ~Memory: "If that is what consumes you, enough for you to *intrude* upon my meditations, then I shall teach you of the shaping of flames, supplicant." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #57812 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #57814 /* ~Your hand lashes out and clamps onto the boy's wrist. He howls as you drag him closer to the fireplace, then thrust his hands into the coals - there is a crackling, a hissing of burning flesh, and his *screams* - such terrible, yet -~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #57815 /* ~Memory: "To learn, you must *suffer,* supplicant. You must allow yourself to be burned by the power of that which you wield. Know its torment, and you shall know how to use it against your enemies."~ */ DO ~SetGlobal("Memory_Ignus_Taught","GLOBAL",1)
GiveExperience(Protagonist,10000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ JOURNAL #57818 /* ~I had a strong memory when I confronted Ignus about his 'teacher.' Apparently... at some point in the past... *I* was the one who taught Ignus the ways of the Art, though I think Ignus learned the wrong lessons from me. ~ */ GOTO 51
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57816 /* ~Memory: "To learn, you must *suffer,* supplicant. You must allow yourself to be burned by the power of that which you wield. Know its torment, and you shall know how to use it against your enemies."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
  IF ~~ THEN REPLY #57817 /* ~Shake off the memory.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 63 // from: 16.5 26.5 27.5
  SAY #57819 /* ~*"Ssss... Ignussss once knew *much*... no longer... Ignussss burnnssss... in sssuffering, Ignusssss learnssss..."* A tiny flame gusts from his mouth, like laughter, and a stream of embers spits forth. *"Ssssuffer... learn..."*~ */
  IF ~~ THEN REPLY #57820 /* ~"I am willing to suffer for such knowledge..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57821 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57822 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57823 /* ~"Maybe some other time, Ignus... we may speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #57824 /* ~As you are about to speak the words, you feel a crawling sensation in the back of your skull... and you are suddenly struck with the certainty, that the knowledge Ignus has to teach may permanently scar you... but you don't know *how* you know this.~ */
  IF ~~ THEN REPLY #57825 /* ~Repeat: "I am willing to suffer for such knowledge..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57826 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57827 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57828 /* ~"Maybe some other time, Ignus... we may speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 16.6 26.6 27.6 64.0 68.0
  SAY #57829 /* ~*"Ssssufffer...?"* Flames flicker eagerly along the edges of Ignus' mouth, spiraling up along the melted ruin of his face. *"Burnnnnn? Piecesssss of sssself are burnnned away... sssss... Ignusss... Ignusss may ssstill teach *MUCH.*"*~ */
  IF ~  Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57830 /* ~"I wish to learn, Ignus... can you teach me some of the Art?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",1)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 66
  IF ~  Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57831 /* ~"I wish to learn, Ignus... can you teach me some more of the Art?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",2)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 69
  IF ~  GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57832 /* ~"I wish to learn, Ignus... can you teach me some more of the Art?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57833 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57834 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57835 /* ~"Maybe some other time, Ignus... we may speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #57836 /* ~*"Where flamessss once burnnned, one may ssssend them again..."* Before you can react, Ignus' claw lashes out and clutches your finger, and with a greedy *hssssss,* he BURNS it, and through the searing pain, you close your eyes and SCREAM...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,1)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
GiveExperience(Protagonist,6000)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #57837 /* ~You force your eyes open to see the burning mass of your hand from where Ignus touched it... he floats above, uncaring, cradling your finger, then *snaps* the tip off, leaving just the base. He *hsses,* cinders and ash drifting from his mouth, and he flicks the charred remains of your finger back to you.~ */
  IF ~~ THEN REPLY #57838 /* ~"Erhkk... what... did... you... do...?"~ */ DO ~GiveItemCreate("Ignus01",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57839 /* ~Ignus 'taught' me some of his knowledge of the Art by snapping off my finger, burning the flesh from it, then giving it back to me... he seems to think I know what to do with it. In suffering through the ordeal, I think I did some permanent damage to my health, though my resistance to fire has increased. Despite the ordeal, my finger seems to be growing back, so it shouldn't impair my fighting or spell-casting abilities.~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #57840 /* ~*"Teachingsssss..."* Ignus cackles, the sound now strangely painful to your ears. *"To learn, one must ssssufffer."*~ */
  IF ~~ THEN REPLY #57841 /* ~"I... wish... to learn... more..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57842 /* ~"I... wished... to speak more... of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57843 /* ~"I... see. I... had some... other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57844 /* ~"Enough... Ignus... we will speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #57845 /* ~*"Yesssssssss..."* Before you can react, Ignus' claws lash out and clutch your left hand, and with a mad cackle, and with a greedy *hssssss,* he BURNS it, and through the searing pain, you close your eyes and SCREAM...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,3)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,5)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,5)
GiveExperience(Protagonist,12000)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #57846 /* ~You force your eyes open to see the burning mass of your hand from where Ignus touched it... only a blackened *stump* remains, twitching, blood steaming from it. Ignus seems oblivious to your pain - his attention is devoted to your severed hand, which he is holding, admiring it like a trophy. ~ */
  IF ~~ THEN REPLY #57847 /* ~"Ig... nus... give... me... BACK... my hand..."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #57848 /* ~Ignus ignores you; you watch as flames from his hands encircle your severed hand like a wreath, slowly burning the last remains of flesh from it, like a sculptor, until only the fused bone remains. He gives a long, low *hssssss* and then flings his 'creation' back to you; you manage to catch it in your remaining hand. You notice the flesh of your severed hand is re-knitting itself, slowly, painfully... it looks like it's regrowing. ~ */
  IF ~~ THEN REPLY #57849 /* ~"What did... you do..."~ */ DO ~GiveItemCreate("Ignus04",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57850 /* ~Ignus 'taught' me some of his knowledge of the Art by burning off my HAND, scouring the flesh from it, then giving it back to me... he seems to think I know what to do with it. In suffering through the ordeal, I think I did some permanent damage to my health, though my resistance to fire has increased. Despite the ordeal, my hand seems to be growing back, so it shouldn't impair my fighting or spell-casting abilities.~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #57851 /* ~*"Teachingsssss..."* Ignus cackles, the sound now strangely painful to your ears. *"To learn, one must ssssufffer."*~ */
  IF ~~ THEN REPLY #57852 /* ~"I... wish... to learn... more..."~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57853 /* ~"I... wished... to speak more... of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57854 /* ~"I... see. I... had some... other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57855 /* ~"Enough... Ignus... we will speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 16.7 26.7 27.7 65.2 72.0 77.0 83.0
  SAY #57856 /* ~*"Ssssss..."* Ignus hurls himself into the air, leaving a hissing flame trail as he rises. *"No more! Piecesssss of sssself are burnnned away... sssss... Ignusss... yet no more of ssssharing will Ignusss teach..."*~ */
  IF ~  PartyHasItem("Eyeball")
Global("Ignus_Teach","GLOBAL",2)
~ THEN REPLY #57857 /* ~"You need pieces of me in order to teach me? What about my eyeball?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",3)
GiveExperience(Protagonist,12000)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 74
  IF ~  PartyHasItem("Intest")
~ THEN REPLY #57858 /* ~"You need pieces of me in order to teach me? What about this strip of my intestines?"~ */ DO ~DestroyPartyItem("Intest",TRUE)
GiveExperience(Protagonist,24000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 78
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57859 /* ~"Very well. I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57860 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57861 /* ~"Never mind then, Ignus... we will speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #57862 /* ~Ignus lashes out again, his finger like a spear... but he doesn't strike for the eye that you can remove; instead, he impales your OTHER eye. There is no pain for a moment, only surprise, then you *scream,* as Ignus lets lose a stream of flames into your socket. They seem to eat into your skull ... the hiss of burning flesh fills your nostrils and smoke clouds your vision... ~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,2)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #57863 /* ~You force your eyes open through your bloodied vision - yet only ONE eye opens - you can barely make out, Ignus, hovering in the air in front of you, his hands cupping a small orb of flame in his hands - your eye, seemingly untouched by the heat. As you watch, his hands cover the eye, and you feel a second burning pain in your eye socket...~ */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #57864 /* ~And suddenly, even through the searing pain, you can see correctly again... Ignus opens his hand, and within it, you can see the ruined mass of your eyeball, barely recognizable... yet... your eye is still in its socket. He cackles, and with a breath of flame, the eyeball rises from his grasp and drifts over to you, like a flake of ash in the air. ~ */
  IF ~~ THEN REPLY #57865 /* ~Take the eyeball... your eyeball...~ */ DO ~GiveItemCreate("Ignus02",Protagonist,1,0,0)
~ JOURNAL #57866 /* ~Ignus 'taught' me some of his knowledge of the Art by scalding my eye, then giving it back to me... he seems to think I know what to do with it. In suffering through the ordeal, I think I did some permanent damage to my health, though my resistance to fire has increased. Sometimes I wish Ignus would use some DAMN SCROLLS instead of these ordeals... at least I can still see through my eye. ~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #57867 /* ~Tiny snakes of flame spiral from Ignus' ruined sockets, traveling up past his charred skull. *"More teachingsssss..."* The two snakes of flame circle around behind him, then flare into torches in his hands. *"More sufferingssss..."*~ */
  IF ~~ THEN REPLY #57868 /* ~"I am willing to suffer for more knowledge... can you teach me any more?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57869 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57870 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57871 /* ~"Thanks, Ignus... I think. We will speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 73.1
  SAY #57872 /* ~Ignus cocks his head as you hold up your intestines, then he suddenly swoops in and snatches it from your grasp. Holding it, he strings it between two hands, like rope, and he *hssssssss* to himself... you watch the intestines steam as he holds them, turning black... and you feel a slow, burning pain in your abdomen...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #57873 /* ~Ignus strings out the intestines, handspan by handspan, and as he lets each length fall from his grasp, it starts rotating around him like a spiral, snaking in a slow pattern, each portion being roasted by his flames - there seems to be some dancing pattern to the way the flames are touching the strip of intestines, slowly blackening them, until it looks like a long string of charred meat...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #57874 /* ~The burning in your abdomen makes you wince, but it's nothing compared to the pain you felt when Ignus charred the other portions of your body. You watch your burning guts spiral in Ignus' flames, then suddenly, they gutter out, and they fall into Ignus' hands. He gives a *hssssss* and throws them to you. *"MUCH powersssss in an im'mortalsssss organsss..."*~ */
  IF ~~ THEN REPLY #57875 /* ~Take the charred intestines...~ */ DO ~GiveItemCreate("Ignus03",Protagonist,1,0,0)
~ JOURNAL #57876 /* ~Ignus 'taught' me some of his knowledge of the Art by charring my intestines, then giving it back to me... he seems to think I know what to do with it. Unlike the other ordeals, I don't seem to have suffered when Ignus 'treated' my intestines with his flames.~ */ GOTO 83
END

IF ~~ THEN BEGIN 81 // from: 16.8 26.8 27.8
  SAY #57877 /* ~*"Flamesssss... no... tormentssssss..."* Ignus slowly turns, twisting above the ground; he may have heard you, but you don't know if the words *meant* anything to him...~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57878 /* ~"Are you sure, supplicant?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 82
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57879 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57880 /* ~"At least I tried... I had some other questions for you, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57881 /* ~"Well, for what it's worth, Ignus, I'm sorry you ended up like this... we'll speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #57882 /* ~Ignus stops instantly, and he whirls on you, *new* flames bleeding from his chest and skull in a horrid crackling mass... it's like a nest of flaming snakes suddenly erupted from hidden recesses on Ignus' body. *"Sssssssupplicant NO MORE isssss Ignussssss...! Ssssspeak ssssuch again, and Ignusssss will BURNNN you!"*~ */
  IF ~~ THEN REPLY #57883 /* ~"Try it, *supplicant.* It seems I will have to remind you of your station..."~ */ GOTO 29
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57884 /* ~"Never mind, then. I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57885 /* ~"Understood... I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57886 /* ~"Never mind then, Ignus... we will speak again later."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.0
  SAY #57887 /* ~You hold your charred intestines in your hand; they look like a blackened rope. Ignus hovers above you, tiny motes of ash drifting from his burning, emaciated frame.~ */
  IF ~~ THEN REPLY #57888 /* ~"I am willing to suffer for more knowledge... can you teach me any more?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57889 /* ~"I wished to speak more of flames and burning, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57890 /* ~"I... see. I had some other questions..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57891 /* ~"Thank you, Ignus... we will speak again later."~ */ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",1)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 84 // from:
  SAY #61827 /* ~Flames curl around Ignus' throat, and dance along the edges of his skull. His charred lips peel back, and he speaks, his voice crackling. "I... wait."~ [IGN148] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61828 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61829 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61830 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61831 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61832 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61833 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61834 /* ~"Uh... I see. Farewell, then."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",2)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 85 // from:
  SAY #61835 /* ~Ignus gives a lingering, crackling hiss as you approach. "I wait to walk the path of flamesssss."~ [IGN149] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61836 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61837 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61838 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61839 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61840 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61841 /* ~"Ignus, I need your help."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61842 /* ~"Uh... I see. Farewell, then."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 14.1 84.1 85.1
  SAY #61843 /* ~There is the crackle and pop of melting flesh, then Ignus gives a long, low hiss. "Asss you wisssh."~ [IGN106] */
  IF ~~ THEN REPLY #61844 /* ~"Let's go."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 14.2 84.2 85.2
  SAY #61845 /* ~Ignus' teeth clack together, a stream of embers pouring from his mouth. "Firessss shall sweep through the streetsssss."~ [IGN077] */
  IF ~~ THEN REPLY #61846 /* ~"Let's go."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 14.3 84.3 85.3
  SAY #61847 /* ~Motes of ash drift from Ignus' mouth as he nods his head. "Ignus obeyssss..."~ [IGN101] */
  IF ~~ THEN REPLY #61848 /* ~"Let's go."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 14.4 84.4 85.4
  SAY #61849 /* ~Ignus' voice is low, and the flames around his ruined features dim as he speaks. "I will walk the path of flamessss with you."~ [IGN151] */
  IF ~~ THEN REPLY #61850 /* ~"Let's go."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 14.5 84.5 85.5
  SAY #61851 /* ~A tongue of flame darts from Ignus' mouth, like that of a serpent, then dissipates into hissing smoke, leaving only tiny motes of ash. "Yessssss."~ [IGN191A] */
  IF ~~ THEN REPLY #61852 /* ~"Let's go."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",3)
~ THEN BEGIN 91 // from:
  SAY #68216 /* ~Ignus stirs, the air around him flickering slightly, almost enough to bring him to life.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68218 /* ~"Arise, Ignus. I have need of you."~ */ DO ~SetGlobal("Fortress_Ignus","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 92
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68387 /* ~ARISE, IGNUS. ~ */ GOTO 93
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #68217 /* ~There is a rush of flames and heat, and Ignus soars into the air, the air *bending* from the thermals streaming from his body. He turns to you, his eyes like portals to the hells. *"I am yours... till death comes for us both."*~ [IGN248] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68219 /* ~"It may be this day, Ignus..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68220 /* ~"It may be this day, Ignus..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68221 /* ~"It may be this day, Ignus..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68243 /* ~"It may be this day, Ignus..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",1)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68441 /* ~"It may be this day, Ignus..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #68388 /* ~There is a rush of flames and heat, and Ignus soars into the air, the air *bending* from the thermals streaming from his body. He turns to you, his eyes like portals to the hells, and he gives a low, lingering hiss - but there is no menace in it, only a wariness, a caution you haven't heard before.~ */
  IF ~~ THEN REPLY #68389 /* ~I WILL NOT REMAIN HERE MUCH LONGER, IGNUS. I WILL RETURN YOU TO SIGIL, IF YOU WISH.~ */ GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #68390 /* ~Ignus stares at you; his expression is unreadable past the ruins of his face - and suddenly, you know what Ignus desires.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68391 /* ~I WILL SEND YOU TO THE ELEMENTAL PLANE OF FIRE, IGNUS. THERE YOU SHALL SOAR UPON SKIES OF FLAMES, AND ALL CREATURES SHALL KNOW YOUR HEART. IN PERPETUAL FLAMES SHALL YOU DWELL, AS YOU WERE MEANT.~ */ GOTO 95
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68422 /* ~I WILL SEND YOU TO THE ELEMENTAL PLANE OF FIRE, IGNUS. THERE YOU SHALL SOAR UPON SKIES OF FLAMES, AND ALL CREATURES SHALL KNOW YOUR HEART. IN PERPETUAL FLAMES SHALL YOU DWELL, AS YOU WERE MEANT.~ */ GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #68392 /* ~Ignus hovers, silent for a moment, and when he speaks, his voice sounds like someone... else, like a child, a student, one you remember long ago, in a different incarnation. "Master, forgive me... I have betrayed your teaching."~ [IGN254] */
  IF ~~ THEN REPLY #68393 /* ~ONCE I TAUGHT YOU SUFFERING, IGNUS, AND THE BETRAYAL WAS MINE. NOW, I WILL SEND YOU TO A PLACE OF PEACE WHERE YOUR HEART MAY BE FREE.~ */ GOTO 96
  IF ~~ THEN REPLY #68394 /* ~THERE WERE MANY BETRAYALS, IGNUS. I FORGIVE YOU.~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 95.1
  SAY #68395 /* ~Ignus says nothing to this, merely bows. The flames crackle around his form; wisps of ash swirl around him, like tiny leaves.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68396 /* ~FAREWELL, IGNUS.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68397 /* ~FAREWELL, IGNUS.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
~ THEN REPLY #68467 /* ~FAREWELL, IGNUS.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",4)
~ THEN BEGIN 97 // from:
  SAY #68418 /* ~Ignus is like a raging inferno, streams of flames rolling off his body like waves in some fiery ocean. *"Burnnnnn..."*~ [IGN090A] */
  IF ~~ THEN REPLY #68419 /* ~"Keep up the pressure, Ignus - don't give him a chance to concentrate."~ */ EXIT
END
