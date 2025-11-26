// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DNORDOM~

IF ~  Global("Nordom","GLOBAL",0)
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2852 /* ~You see a cube with four arms and two legs; despite its mechanical appearance, the front of the cube is a strange, organic green face, with two wide, elliptical eyes. The cube doesn't seem to notice you; it is staring intently at the two crossbows cradled in its hands. A multi-faceted lens dangles from the upper left corner of the cube; it looks like it's designed to pop down over one of the cube's eyes, like a scope. ~ */
  IF ~~ THEN REPLY #2853 /* ~"Uh... greetings...?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 18
  IF ~~ THEN REPLY #34013 /* ~Ignore the... cube.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16630 /* ~"Define: Aid, required."~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
NearbyDialog("DMorte")
~ THEN REPLY #16952 /* ~"I'm asking you to help Mourns care for the trees here."~ */ EXTERN ~DMORTE~ 183
  IF ~  CheckStatLT(Protagonist,15,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #16953 /* ~"I'm asking you to help Mourns care for the trees here."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #16954 /* ~"Nordom: Desire for all trees in the 'Hive' ward of Sigil to become healthy and grow."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #16631 /* ~"In what manner shall I tend to them."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16955 /* ~"Uh... no, I meant 'care.' To hold dear."~ */ EXTERN ~DMORTE~ 184
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16956 /* ~"Uh... no, I meant 'care.' To hold dear."~ */ GOTO 3
  IF ~~ THEN REPLY #16957 /* ~"Never mind. I have some questions, Mourns..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16958 /* ~"Forget it. Farewell, Mourns-for-Trees."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #16632 /* ~"Request: Aid Mourns (AKA Mourns-for-Trees) (Hold trees dear). Invalid command/object name."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16970 /* ~"Never mind. Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16971 /* ~"Never mind. Annah? Could you?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16972 /* ~"Never mind. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16973 /* ~"Never mind. Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16981 /* ~"Never mind. Dak'kon, could you help this man?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16982 /* ~"Never mind. Dak'kon: help this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16983 /* ~"Never mind. Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16984 /* ~"Never mind. I have some questions, Mourns..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16990 /* ~"Forget it. Farewell, Mourns-for-Trees."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16633 /* ~"The command is understood. The parameters are acceptable. What purpose will the said desire serve."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16991 /* ~"The Hive is a place of Chaos and decay. There is a good chance the presence of the invigorated trees will bring a sense of order to the place."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16993 /* ~"The Hive is a place of Chaos and decay. There is a good chance the presence of the invigorated trees will bring a sense of order to the place."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16634 /* ~"Said desire will begin immediately."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 185
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #16992 /* ~"Said desire will begin immediately."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16994 /* ~"I thank you, Nordom. Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16995 /* ~"I thank you, Nordom. Annah? Could you?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16996 /* ~"I thank you, Nordom. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16997 /* ~"I thank you, Nordom. Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16998 /* ~"I thank you, Nordom. Dak'kon, could you help this man?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16999 /* ~"I thank you, Nordom. Dak'kon: help this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #17000 /* ~"I thank you, Nordom. Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #17001 /* ~"I thank you, Nordom. I had some questions, Mourns..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17002 /* ~"I am grateful to you, Nordom. Farewell, Mourns-for-Trees."~ */ EXIT
END

IF ~  GlobalGT("Nordom","GLOBAL",0)
!InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #34006 /* ~Nordom looks lost in thought. Literally. He is *kliking* and *whrrring* to himself like an adding machine.~ */
  IF ~~ THEN REPLY #34007 /* ~"Nordom, I need your help. Will you travel with me?"~ */ GOTO 8
  IF ~~ THEN REPLY #34008 /* ~Leave Nordom to his "thoughts."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34009 /* ~Nordom's 'mouth' forms a bizarre sideways semi-circle. "Affirmatory! Admission granted, permissions exchanged." His two crossbows begin *kliking* and *twanging* violently, almost vibrating out of his hands. "Status: All ready and Waiting."~ [NOR298] */
  IF ~  Global("Nordom","GLOBAL",2)
~ THEN REPLY #34010 /* ~"Let's go, then."~ */ DO ~ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalLT("Nordom","GLOBAL",2)
~ THEN REPLY #66820 /* ~"Let's go, then."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #34011 /* ~Nordom is staring at his crossbows intently. They are making a variety of clicking noises, first one, then the other, as if conversing.~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55968 /* ~"Nordom, can you tell me what the duties of the Creative Director are?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55971 /* ~"Nordom, tell me again what the duties of the Creative Director are."~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55974 /* ~"As Creative Director, I have some orders for you."~ */ GOTO 81
  IF ~~ THEN REPLY #55975 /* ~"What are you doing with your crossbows?"~ */ GOTO 43
  IF ~~ THEN REPLY #55977 /* ~"I'm curious, Nordom... how did you end up in Rubikon?"~ */ GOTO 49
  IF ~~ THEN REPLY #55979 /* ~"Nordom, what *are* modrons?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55980 /* ~"Tell me about Mechanus, Nordom."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55984 /* ~"Uh... how are you doing, Nordom?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55988 /* ~"How are you doing, Nordom?"~ */ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55991 /* ~"Nordom, you asked how I was doing before, didn't you?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55994 /* ~"Can we discuss my immortality again?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55996 /* ~"Ever heard of someone named Ravel Puzzlewell, Nordom?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #56000 /* ~"Nordom, do you know anything about the Blood War?"~ */ GOTO 76
  IF ~~ THEN REPLY #56002 /* ~Leave Nordom to his weapons.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #39579 /* ~"In the 13.7th Revolution, we were required to fix gear and cog sub-set thirty-one in the fifth ring of Mechanus. We removed the obstruction and the gear turned as per its normal speed. Upon completing our task, we were then returned to the Source."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 418
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39759 /* ~"That was an... interesting story, Nordom."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #39580 /* ~"It was what took place. With embellishments, of course."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 419
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39760 /* ~"Embellishments?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #39582 /* ~"I thought the return to Source was a particularly fitting image to close the tale."~ */
  IF ~~ THEN EXTERN ~DYVES~ 59
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50712 /* ~"Am I to understand that my services are being presented for purchase? A transfer of authority from you to Vrischika based upon a monetary exchange?"~ */
  IF ~~ THEN REPLY #50713 /* ~"Yes, that's correct. Will you take him, Vrischika?"~ */ EXTERN ~DVRISCH~ 49
  IF ~~ THEN REPLY #50714 /* ~"Yes, but forget it. I had another question, Vrischika..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50715 /* ~"Yes... but I've reconsidered. Let's go, Nordom."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50716 /* ~"Nordom preparing to assume Vrischika - alu-fiend, importer, curiosity shop proprietress - as primary authority figure."~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 57
END

IF ~~ THEN BEGIN 15 // from:
  SAY #52580 /* ~"Query: What does Nordom define /choice/? Define: CHOICE: The act of choosing, selection; the right or opportunity to choo-"~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #52581 /* ~"Nordom, stop. This is between Ravel and I. Look, Ravel-"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52582 /* ~"Nordom, stop. This is between Ravel and I. Look, Ravel-"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52583 /* ~"Nordom, stop. This is between Ravel and I. Look, Ravel-"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52584 /* ~"Nordom, stop. This is between Ravel and I. Look, Ravel-"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52585 /* ~"Nordom, stop. This is between Ravel and I. Look, Ravel-"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 16 // from:
  SAY #54847 /* ~"Query: Received. Response: Nordom is readied and waited. Awaiting to profess further directives."~ */
  IF ~  NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #54848 /* ~"Actually, it's 'process'... never mind. Vhailor?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54849 /* ~"Actually, it's 'process'... never mind. Ignus?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54850 /* ~"Actually, it's 'process'... never mind. Fall-from-Grace?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54851 /* ~"Actually, it's 'process'... never mind. Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54852 /* ~"Actually, it's 'process'... never mind. Dak'kon?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54853 /* ~"Actually, it's 'process'... never mind. Dak'kon?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54854 /* ~"Actually, it's 'process'... never mind. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54855 /* ~"Actually, it's 'process'... never mind. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54856 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54857 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54858 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #55092 /* ~"Pillar of Skulls: known to be composed of the living heads of mortals who have lied, where said lies resulted in the deaths of other mortals. The Pillar serves as a repository of knowledge. The Pillar will demand payment for sharing said knowledge no less than ninety-seven percent of the time. The Pillar's demands are consistently of a level that the typical mortal would call 'very great.' Logic would suggest one not query the Pillar unless the need for a particular unit of information could be considered similarly 'very great.'"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 18 // from: 0.0
  SAY #55099 /* ~The cube *chrrrups,* and there is a *klik-klik-klik* as its eyes blink wildly. The cube whirls to face you, its eyes wide, then flings its two free hands up in the air, as if in surrender... yet its two crossbows have turned in its hands and are now trained on you. In a strange, detached way, you can't help but notice that every joint on this creature seems to be a series of *whrrrring* gears and cogs. ~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 571
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55102 /* ~"Uh..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #55105 /* ~After a moment of staring at you, its cubic body swivels, turning its back on you, and begins bobbing up and down as if running away - yet its feet remain firmly planted facing front. As it "runs," the gears of its crossbows start *klikking* and *twanging* in the creature's hands.~ */
  IF ~~ THEN REPLY #55106 /* ~"Uh... do you know you're facing backwards?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #55107 /* ~The creature suddenly stops its bobbing motion, then swivels back around to face you. "Backwards modron = 'Nordom'?" The cube's voice has a metallic, warbling quality to it, as if every word it speaks is jumping off a spring and landing... well, somewhere else. Its mouth forms a bizarre sideways semi-circle, which you take to be a smile. "Gratitudes! Gratefuls!"~ */
  IF ~~ THEN REPLY #55108 /* ~"Uh... I'm sorry?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~I've learned the danger of names. While wandering around inside Rubikon, I encountered a strange modron - when I spoke to him, he thought I was naming him. His new name is 'Nordom,' and for a modron, he seems pretty... unhinged. ~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from:
  SAY #55110 /* ~"Backwards modron = 'Nordom'?" The cube's voice has a metallic, warbling quality to it, as if every word it speaks is jumping off a spring and landing... well, somewhere else. Its mouth forms a bizarre sideways semi-circle, which you take to be a smile. "Gratitudes! Gratefuls!"~ */
  IF ~~ THEN REPLY #55111 /* ~"Uh... I'm sorry?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~I've learned the danger of names. While wandering around inside Rubikon, I encountered a strange modron - when I spoke to him, he thought I was naming him. His new name is 'Nordom,' and for a modron, he seems pretty... unhinged. ~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #55112 /* ~"Not sorries. Null sorries. Gratitudes! Indentification of self comprosized by doubtings + mullings + analysis." The cube *chrrrups* again, and one of its eyes blinks with a *klik* - then after a moment, the other eye *kliks,* as if it doesn't want to be left out.~ */
  IF ~~ THEN REPLY #55113 /* ~"I still don't understand."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55114 /* ~"You're grateful... that I identified you? Aren't you a modron?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #55115 /* ~The cube's features steady themselves, and its mouth forms a flat line. "Indemnification of this unit (was) compromised. Subject - addressee indemnified unit as 'Nordom.' Gratitudes tendered for providing Nordom indemnification."~ */
  IF ~~ THEN REPLY #55116 /* ~"It was nothing. Really."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #55117 /* ~Nordom's eyes *klik* blink once, twice, three times; each time the black spots in the center of his eyes dilate - by the third blink, they are the size of dots. "Real-eye-zation reached: Nordom null know name of addressee. Indemify yourself."~ */
  IF ~~ THEN REPLY #55118 /* ~"You mean 'identify,' right?"~ */ GOTO 25
  IF ~~ THEN REPLY #55119 /* ~Truth: "I don't really *have* a name, Nordom."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55120 /* ~Lie: "Adahn. My name is Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #55121 /* ~"Affirmatory. Indent-ify, required. Request: Identify identity to Nordom."~ */
  IF ~~ THEN REPLY #55122 /* ~Truth: "I don't really *have* a name, Nordom."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55123 /* ~Lie: "Adahn. My name is Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
  IF ~~ THEN REPLY #55124 /* ~"Nordom, I don't want to identify myself. In fact, I'd like to end this conversation with you and be about my business."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #55125 /* ~Nordom's eyes widen, the diameter of his 'pupils' growing back to normal size. He *klik* blinks once - but the metal shutters that fall across his eyes don't rise. After a moment, they begin rattling, as if stuck.~ */
  IF ~~ THEN REPLY #55126 /* ~"Uh... Nordom. You can open your eyes now."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #55127 /* ~There is another *klik* and Nordom's eyes open. "Not closing eyes: Engaged-ged in Action Clarification for Subject (Unidentified, Nameless). Formulating... submitting query: Are you lost?"~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #55128 /* ~"Lost? What do you mean?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #55129 /* ~"Lost? What do you mean?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #55130 /* ~"Lost? What do you mean?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #55131 /* ~As Nordom's warbling query ends with the word 'Lost,' a curious crawling sensation worms through the back of your skull - with it comes two certainties, hand in hand: This is not the first time you've heard this, and that what Nordom is *about* to say to your next question is important.~ */
  IF ~~ THEN REPLY #55132 /* ~"When you say 'loss,' Nordom, what do you mean?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #55133 /* ~"Absence of Name = Absence of Identity = Absence of Purpose = Absence of Place in Multiverse = Null State = Loss. Nordom existed in State, Null, until Subject (Unidentified, Nameless) attached identity to Nordom. Null Identity, Null Purpose, Null Place equates to 'Loss.'"~ */
  IF ~~ THEN REPLY #55134 /* ~"Well, I imagine I had a name once, but I forgot it."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #55135 /* ~"Formulating new query." There is a *tkkk-tkkk-tkkk* as Nordom blinks three times, rapidly - the sound is like the tapping of a hammer on a sheet of tin. "Explain to Nordom why you performed this action: FORGOT-ing."~ */
  IF ~~ THEN REPLY #55136 /* ~"It just happened. It wasn't intentional."~ */ GOTO 31
  IF ~~ THEN REPLY #55137 /* ~"It's in my nature to forget things, I think."~ */ GOTO 31
  IF ~~ THEN REPLY #55138 /* ~"It's a side effect of my... condition, I think."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0 30.1 30.2
  SAY #55139 /* ~The metal shutters seal over Nordom's eyes with a *whrrr,* then he rattles to himself for a few moments with his eyes closed. When they *klik* open, Nordom *chrrrups.* "Query: Memory defective?"~ */
  IF ~~ THEN REPLY #55140 /* ~"Yes, you could say that."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #55141 /* ~"Pre-Conditional Action to clarify Query: Nordom memory space not yet near capacity. Query/Action: In event of 'Yes' return from Subject (Unidentified, Nameless) Nordom can re-remember for you."~ */
  IF ~~ THEN REPLY #55142 /* ~"Sure, go ahead, Nordom... anyway, look, I really have to be about my business."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
  IF ~~ THEN REPLY #55143 /* ~"Thanks for the offer, Nordom. You can if you want. But look, I really should be going."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 24.2 25.1
  SAY #55144 /* ~Nordom's eyes widen, the diameter of his 'pupils' growing back to normal size. He *klik* blinks once, but the metal shutters that fall across his eyes don't rise.~ */
  IF ~~ THEN REPLY #55145 /* ~"Uh... Nordom. You can open your eyes now."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55146 /* ~There is another *klik* and Nordom's eyes open. "Not closing eyes: Action Clarification for Adahn. Filing Information, Remembering. Adahn: Name catalogued. Nordom will not forget identity, sentient: Adahn."~ */
  IF ~~ THEN REPLY #55147 /* ~"Great. Anyway, Nordom, it's been great, but I have to be going."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 25.2 32.0 32.1 34.0
  SAY #55148 /* ~There is a sudden, rapid series of *kliks* and *twangs* from the crossbows in Nordom's hands. His eyes spin and re-focus on the crossbows, holding the right one up closer to his side, as if listening to it.~ */
  IF ~~ THEN REPLY #55149 /* ~"Is everything okay?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #55150 /* ~One of Nordom's eyes remain on the crossbow, which is *klikking* faintly, and his other eye focuses on you. "Query: May these ones join you on your gurney?"~ */
  IF ~~ THEN REPLY #55157 /* ~"Uh, don't you mean 'journey'?"~ */ GOTO 37
  IF ~~ THEN REPLY #55164 /* ~"You know, I REALLY don't think that would be a good idea. No, not now... Nordom."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55165 /* ~"Well... all right. I may have to move some people around, however."~ */ GOTO 39
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55166 /* ~"Sure. We could always use a hand... or four."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #55167 /* ~"Veritably. Journey, affirmed. Permission granted?"~ */
  IF ~~ THEN REPLY #55168 /* ~"You know, I REALLY don't think that would be a good idea. No, not now... Nordom."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55169 /* ~"Well... all right. I may have to move some people around, however."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55170 /* ~"Sure. We could always use a hand... or four."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #55171 /* ~Nordom stares at you with his wide eyes. His right crossbow *ker-klaks,* then Nordom blinks. "Appendix Query: Please?"~ */
  IF ~~ THEN REPLY #55172 /* ~"Not this time, Nordom."~ */ GOTO 39
  IF ~  NumInParty(6)
~ THEN REPLY #55173 /* ~"Well... all right. I may have to move some people around, however."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55174 /* ~"Well... all right. We could always use a hand... or four."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #55175 /* ~Nordom's mouth swivels into a downward semi-circle. "Answer to query: received and ack-knowledged. Nordom will persist in abstinence of larger community. Nordom will continue to inhabit this polygonal space until retrieved."~ */
  IF ~~ THEN REPLY #55176 /* ~"Very well. I may return, Nordom."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 37.1 37.2 38.1 38.2
  SAY #55177 /* ~Nordom's 'mouth' forms the bizarre semi-circle it did before, and his two crossbows begin *klikking* and *twanging* violently, almost vibrating out of his hands. "Gratitudes! Gratefuls! Nordom and crossbows have been attached to a larger community."~ */
  IF ~~ THEN REPLY #55178 /* ~"I wouldn't be too grateful just yet. Let's move out..."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #55179 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #55180 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 9.3
  SAY #55181 /* ~"Attention, Nordom: required!" Nordom turn-swivels to you, stutters in mid-path, then re-orients himself with a *klank.* "Response to Query: Action being performed on crossbows? Submit Request for Clarification: Null crossbows present."~ */
  IF ~~ THEN REPLY #55182 /* ~"You have a pair of crossbows right there, Nordom."~ */ GOTO 44
  IF ~~ THEN REPLY #55183 /* ~"Oh, really? What do you call those two -klicking- things in your hands?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55184 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55185 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #55186 /* ~"Clarifaction: Statement 'rife with fallacies.' Nordom does not employ crossbows." He stutters for a moment, then suddenly the crossbows are pointing at you - but you didn't see them move. "N-N-N-Null crossbows."~ */
  IF ~~ THEN REPLY #55189 /* ~"Don't point those crossbows at me."~ */ GOTO 45
  IF ~~ THEN REPLY #55190 /* ~"Nordom, you *employ* crossbows - you have TWO of them right there."~ */ GOTO 45
  IF ~~ THEN REPLY #55191 /* ~"Oh, really? What do you call those two -klicking- things in your hands?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55192 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55193 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #55194 /* ~You blink for just a moment - and the crossbows are suddenly pointing at Nordom. He seems oblivious to their movements, his gaze remaining focused on you. "Contradiction not initiate contraction. Null crossbows."~ */
  IF ~~ THEN REPLY #55195 /* ~"Oh, really? What do you call those two -klicking- things in your hands, Nordom?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55196 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55197 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.1 44.2 45.0
  SAY #55198 /* ~"Response: Two -KLICKING- objects held in opposable digits." Nordom raises his riveted fingers and waves the two crossbows, which suddenly start *klikking* and *twanging,* as if in irritation. "Response: Objects = Gear spirits."~ */
  IF ~~ THEN REPLY #55199 /* ~"Gear spirits? What do you mean?"~ */ GOTO 47
  IF ~~ THEN REPLY #55200 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55201 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #55202 /* ~"Query: Define: Gear spirits. Response: Gear spirits."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55203 /* ~"Yeah, but what *are* gear spirits?"~ */ EXTERN ~DMORTE~ 573
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55204 /* ~"Yeah, but what *are* gear spirits?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY #55205 /* ~"Query = Query: Define = Define: Gear spirits. Response = Gear spirits."~ */
  IF ~~ THEN REPLY #55206 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55207 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 9.4 74.3
  SAY #55208 /* ~Nordom *chrrrups.* "Query requires submitting of Chronology: Shall Nordom submit chronology?"~ */
  IF ~~ THEN REPLY #55209 /* ~"Yes, I would like to know."~ */ DO ~SetGlobal("Know_Mechanus","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #55210 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55211 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #55212 /* ~"Orders received at initiation of Rubikon project: Departure from Plane/Mechanus. Stage First: Arrival at Destination: Plane/Limbo. Stage Second: Parameters dictated by Superior/Creative Director: Shaped matter of Plane (Limbo) to test hypothesis. Rubikon dungeon constructed."~ */
  IF ~~ THEN REPLY #55213 /* ~"Go on..."~ */ GOTO 51
  IF ~~ THEN REPLY #55214 /* ~"Hold on, Nordom. What's the Plane of Mechanus?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~~ THEN REPLY #55215 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55216 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #55217 /* ~"Superior/ - Director of 'Create' - lost in field test. Chronology disrupted upon achievement of Stage Second, Third Stage (disruption) occurs, not part of project directives."~ */
  IF ~~ THEN REPLY #55218 /* ~"What happened during this third stage?"~ */ GOTO 60
  IF ~~ THEN REPLY #55219 /* ~"What was this field test?"~ */ GOTO 52
  IF ~~ THEN REPLY #55220 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55221 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY #55222 /* ~"Superior/ - Director of 'Create' - field test: Scouting perimeters of Rubikon (Difficult) Dungeon construct to determine: Variances. Many deviations detected: errors considerable." Nordom gives a low whine and shuts his eyes with a *klik.* "Director of 'Create' not return from field test."~ */
  IF ~~ THEN REPLY #55223 /* ~"I see. What happened during that third stage you mentioned?"~ */ GOTO 60
  IF ~  Global("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55224 /* ~"What happened to him?"~ */ GOTO 55
  IF ~  Global("Know_Director_Truth","GLOBAL",1)
~ THEN REPLY #55225 /* ~"I heard that the Rubikon Wizard disintegrated the Creative Director."~ */ GOTO 56
  IF ~  Global("Know_Director_Truth","GLOBAL",0)
~ THEN REPLY #55226 /* ~"What happened to him?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 53
  IF ~~ THEN REPLY #55227 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55228 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.3
  SAY #55229 /* ~There is a sudden burst of *klikking* from the left crossbow, and Nordom lifts the crossbow up to his side, as if to hear it better. The *klikking* goes on for some time, until it is suddenly silenced by a long, reverberating *twannnnng* from the right crossbow.~ */
  IF ~~ THEN REPLY #55230 /* ~"Uh, Nordom? Any idea what happened to him?"~ */ GOTO 54
  IF ~~ THEN REPLY #55231 /* ~"Forget it - what happened during the third stage of the project?"~ */ GOTO 60
  IF ~~ THEN REPLY #55232 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55233 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #55234 /* ~"Suspicion, Unsubstantiated: Superior encountered an error." Nordom's eyes *klik,* as if to clear them. "Hypothesis: The error may have been large and unexpected."~ */
  IF ~~ THEN REPLY #55235 /* ~"I suppose that's possible. What happened during the third stage of the project?"~ */ GOTO 60
  IF ~~ THEN REPLY #55236 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55237 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1
  SAY #55244 /* ~"Citing/Rubikon Wizard/Megalomaniac Declaration of Freedom: Creative Director encountered Error: Rubikon Wizard. Hypothesis: Director discounted strength of error. Sought to correct aberrance in Rubikon Wizard. Result: Director = Nulled."~ */
  IF ~~ THEN REPLY #55245 /* ~"Actually, Nordom, Rubikon still has a Director - me."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55246 /* ~"That's what the Wizard claimed - so, after he was 'nulled,' what happened during the third stage of the project?"~ */ GOTO 60
  IF ~~ THEN REPLY #55247 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55248 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.2
  SAY #55249 /* ~"Suspicion, Unsubstantiated = Now Confirmed: Superior encountered an error." Nordom's eyes *klik,* as if to clear them. "Query: The error was large and unexpected?"~ */
  IF ~~ THEN REPLY #55250 /* ~"I'll say. I don't think he had much difficulty in wiping out the Director."~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 57
  IF ~~ THEN REPLY #55251 /* ~"We'll discuss it some other time - tell me about the third stage of the Project."~ */ GOTO 60
  IF ~~ THEN REPLY #55252 /* ~"I'll tell you later, Nordom. For now, I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55253 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #55254 /* ~"Processing new information..." Nordom stares at you for a moment in silence, then there is a low grinding of gears from inside his frame. After a moment, he *chrrrups.* "Fate of Creative Director confirmed. Director = Nulled."~ */
  IF ~~ THEN REPLY #55255 /* ~"Well, actually, Nordom, I'm the new Creative Director of Rubikon."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55256 /* ~"Glad I could clear that up for you, Nordom. Now, I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55257 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.0 57.0
  SAY #55258 /* ~Nordom stares at you for a moment in silence, then a slow *whrrrr* comes from inside his frame and he *KLIKS.* You're not certain, but it sounds like something clicked into place. ~ */
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55259 /* ~"Uh... you all right, Nordom?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55261 /* ~Had a repeat of that stabilizing incident with Nordom, similar to when I told him that his separation from the Source may have caused his shift in perspective - when I told Nordom that I was the new Creative Director of Rubikon, he seemed to become even more stable. I think maybe establishing a new chain of command for Nordom helped him become even more 'focused.' Maybe the loss of the Director unhinged him more than I knew. ~ */ GOTO 59
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55260 /* ~"Uh... you all right, Nordom?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55262 /* ~Something strange happened when I told Nordom that I was the new Creative Director of Rubikon - he seemed to become more *stable.* It's odd, but I think maybe establishing a new chain of command for Nordom helped him become... well, a little more 'focused.' Maybe the loss of the Director unhinged him more than I knew. ~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1
  SAY #55263 /* ~"Status Updated: Creative Director now re-affirmed in hierarchy." To your surprise, some of the warbling has gone out of Nordom's voice; it is more level, more controlled than it was before. The effect is a little unnerving.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,WIS)
~ THEN REPLY #55264 /* ~"Hmmmm. Nordom... out of curiosity, what sort of duties is the Creative Director responsible for? And how much do you have to obey him?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #55265 /* ~"Hmmmm. Nordom... out of curiosity, what sort of duties is the Creative Director responsible for? And how much do you have to obey him?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #55266 /* ~"I see. Glad I could clear that up for you. But back to the stages of the project - what happened during the third stage?"~ */ GOTO 60
  IF ~~ THEN REPLY #55267 /* ~"Nordom, I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55268 /* ~"I think we've talked enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 51.0 52.0 53.1 54.0 55.1 56.1 59.2
  SAY #55269 /* ~"Third Stage, unprecedented: Nordom-specific stage. Hypothesis: Lack of Director, plus Exposure to Plane (chaos) resulted in perspective of /Nordom/ to deviate from norm."~ */
  IF ~~ THEN REPLY #55270 /* ~"'Deviate from norm'? How?"~ */ GOTO 61
  IF ~~ THEN REPLY #55271 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55272 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #55273 /* ~"Introspective cycle commencing." Nordom *kliks* his eyes closed and begins to *hum.* A few moments later, his eyes *klik* open. "Introspective Evaluation: Perceptions have become (1) smaller and (B) louder. Wings have been replaced with arms: reason unknown. Suspicion/hypothesis: not liked wings? Speculation. Nordom was once -ONE- but is now smaller, louder -ONE! - Change has resulted in information-processing difficulties."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55274 /* ~"Do you think your separation from the Source is what caused your perspective shift from that quieter, broader 'one' to the smaller, louder 'one'?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55275 /* ~"I see, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55276 /* ~"I've heard enough, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 106.0 107.0
  SAY #55277 /* ~Nordom stares at you for a moment in silence, then a slow *whrrrr* comes from inside his frame and he *KER-KLIKS.* You're not certain, but it sounds like something clicked into place. ~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55278 /* ~"Nordom?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55280 /* ~Had a repeat of that stabilizing incident with Nordom, similar to when I told him I was the new Creative Director - when I told Nordom that it was probably his separation from the Source that caused his change in perspective, he seemed to become even more stable. I think maybe helping Nordom realize *what* happened to him helped him become even more 'focused.' His separation from the Source may have been a greater shock to his system than I realized. ~ */ GOTO 63
  IF ~  !Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55279 /* ~"Nordom?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55281 /* ~Something strange happened when I told Nordom that it was probably his separation from the Source that caused his change in perspective - he seemed to become more *stable.* It's odd, but I think maybe helping Nordom realize *what* happened to him helped him become... well, a little more 'focused.' Maybe his separation from the Source unhinged him more than I knew.~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1
  SAY #55282 /* ~"Status Updated: Introspection Drain Halted; re-routing speculation routines to main queue." To your surprise, some of the warbling has gone out of Nordom's voice; it is more level, more controlled than it was before. The effect is a little unnerving.~ */
  IF ~~ THEN REPLY #55283 /* ~"Nordom, I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55284 /* ~"I think we've talked enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 9.6 50.1 74.5
  SAY #55285 /* ~Nordom freezes, then slowly the gears in his elbows begin turning in a slow, hypnotic synchronization. "Define/Query: Mechanus. Plane of Order. Sense. Cause generates Effect. Predictable. Law. Logic. Regimented. Obedience. Gears turn. Mechanus = Nordom Origin. Mechanus = Null Home/Nordom."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 576
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55286 /* ~"Nordom, what do you mean, 'Null Home'?"~ */ GOTO 65
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55293 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #55288 /* ~"Mechanus = Origin Point. - !SOURCE! - Energy. Cannot return to Mechanus. Null Home. Broke law with existence. Central Office for the Punishment of Offenders awaits in Regulus. Mechanus: Origin, Null Home, Home: Null Place."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55289 /* ~"What do you mean by '!SOURCE!'?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 70
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55290 /* ~"What do you mean by '!SOURCE!'?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 71
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55291 /* ~"What do you mean by '!SOURCE!'?"~ */ GOTO 66
  IF ~~ THEN REPLY #55292 /* ~"I see. Nordom, I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55293 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #55294 /* ~"!SOURCE! = Energy."~ */
  IF ~~ THEN REPLY #55295 /* ~"So... this Mechanus is a source of energy?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 67
  IF ~~ THEN REPLY #55296 /* ~"I see. Nordom, I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55297 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55298 /* ~"Affirmatory." Nordom's shutters slide down across his eyes, and he *whrrrrrs* to himself for a moment, then his left eye opens. "Piece/Percentage/Fractured Fraction of !SOURCE! inside Nordom. Energy divided. Link sev'v'v'vered." Nordom stutters over the last word, then steadies himself.~ */
  IF ~~ THEN REPLY #55299 /* ~"So you've been cut off from the 'Source' then? Isn't that... painful?"~ */ GOTO 68
  IF ~~ THEN REPLY #55300 /* ~"I see. Nordom, I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55301 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #55302 /* ~"Negatory. No pain." Nordom's mouth suddenly bends, forms a semi-circle, then turns upside down. "Affirmatory. Pain." He *kliks.* "Response Deviation: Response is both /True/ and /False/. Answer is unacceptable."~ */
  IF ~~ THEN REPLY #55303 /* ~"Well... if *part* of the answer is true, then isn't the answer true?"~ */ GOTO 69
  IF ~~ THEN REPLY #55304 /* ~"I see. Nordom, I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55305 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #55306 /* ~Nordom pauses for a moment. "Response Deviation: Accounted for by Definition of 'Pain.' No physical breach has been created from separation from !SOURCE! Nonetheless, operation efficiency parameters have changed, so unknown damage may have occurred. Formulating new response: Painful = Unknown."~ */
  IF ~~ THEN REPLY #55307 /* ~"I see. Nordom, I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55308 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 65.0
  SAY #55309 /* ~"!SOURCE! = Energy."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 578
END

IF ~~ THEN BEGIN 71 // from: 65.1
  SAY #55310 /* ~"!SOURCE! = Energy."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 185
END

IF ~~ THEN BEGIN 72 // from: 9.5 74.4
  SAY #55311 /* ~There is a *klik-klik-klik* as Nordom executes a rapid series of blinks, then he *chrrrups.* "Query: Modron, what is? Define: Modron? I am modron."~ */
  IF ~~ THEN REPLY #55312 /* ~"Yes, but what *is* a modron?"~ */ GOTO 73
  IF ~~ THEN REPLY #55313 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55314 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 97.1
  SAY #55315 /* ~"Query: Modron, Defined: Modron, I am a modron, Answered." The shutters over Nordom's eyes *klik* close a few times, and his 'eyes' dilate to points. "New Query - Modron, But what IS? Define: But what is Modron? Modron is Nordom. Backward Nordom = Modron."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55316 /* ~"But..."~ */ EXTERN ~DMORTE~ 587
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55317 /* ~"But... never mind, Nordom. I had some other questions for you..."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 43.2 44.3 45.1 46.1 48.0 49.1 50.2 51.2 52.4 53.2 54.1 55.2 56.2 57.1 59.3 60.1 61.1 63.0 65.3 66.1 67.1 68.1 69.0 72.1 73.1 75.0 76.2 77.1 78.1 79.4 81.8 86.2 87.2 91.1 92.1 93.3 94.2 97.2 98.2 99.4 100.1 101.2 102.3 103.2 104.1 105.4 106.1 107.1 108.0 110.2 110.3 111.3 112.1 113.4 114.2 115.1 116.2 117.4 118.1 119.2 130.4
  SAY #55318 /* ~"Status: Awaiting queries."~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55319 /* ~"Nordom, can you tell me what the duties of the Creative Director are?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55320 /* ~"Nordom, tell me again what the duties of the Creative Director are."~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55321 /* ~"As Creative Director, I have some orders for you."~ */ GOTO 81
  IF ~~ THEN REPLY #55322 /* ~"I'm curious, Nordom... how did you end up in Rubikon?"~ */ GOTO 49
  IF ~~ THEN REPLY #55323 /* ~"Nordom, what *are* modrons?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55324 /* ~"Tell me about Mechanus, Nordom."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55325 /* ~"Uh... how are you doing, Nordom?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55326 /* ~"How are you doing, Nordom?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55327 /* ~"Nordom, you asked how I was doing before, didn't you?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55328 /* ~"Can we discuss my immortality again?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55329 /* ~"Ever heard of someone named Ravel Puzzlewell, Nordom?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #55330 /* ~"Nordom, do you know anything about the Blood War?"~ */ GOTO 76
  IF ~~ THEN REPLY #55331 /* ~"No more... queries, Nordom. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 9.11 74.10
  SAY #55332 /* ~"Negatory." Nordom's body begins vibrating, then there is a sharp *snap,* and it stops. "Subject of inquiry is not known to /Nordom/."~ */
  IF ~~ THEN REPLY #55333 /* ~"All right then, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55334 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 9.12 74.11
  SAY #55335 /* ~"Define: Blood War. The largest conflict in recorded history. Underlying cause of war: ideological differences between baatezu - law and tanar'ri - chaos. Qualifiers of War: Racial Genocide. Prospect of War ending unless every baatezu and/or every tanar'ri is exterminated is .0000000000000000000001%. Primary Combatants: Baatezu, Tanar'ri. Participants in war: All."~ */
  IF ~~ THEN REPLY #55336 /* ~"Tell me about the baatezu."~ */ GOTO 77
  IF ~~ THEN REPLY #55337 /* ~"Tell me about the tanar'ri."~ */ GOTO 78
  IF ~~ THEN REPLY #55338 /* ~"All right then, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55339 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0 78.0
  SAY #55340 /* ~"AKA, 'Fiends, Devils.' Information incomplete: Generic Descriptor, Baatezu. Inhabitants of the Plane: Baator. Numbers: Incalculable. Primary Attack Form: Dependent on caste. Immunities: Fire, Cold Iron, Poison. Physical Traits: Dependent on sub-race, majority exhibit resistance to cold/gas. Personality Traits: Lawful, Evil, Manipulative, Efficiency: 73%."~ */
  IF ~~ THEN REPLY #55341 /* ~"Tell me about the tanar'ri."~ */ GOTO 78
  IF ~~ THEN REPLY #55342 /* ~"All right then, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55343 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 76.1 77.0
  SAY #55344 /* ~"AKA, 'Fiends, Demons.' Information incomplete: Generic Descriptor, Tanar'ri. Inhabitants of the Plane: Abyss. Numbers: Incalculable. Primary Attack Form: Depends on category. Immunities: Lightning, Fire non-magic, Poison. Physical Traits: Dependent on sub-race, majority exhibit resistance to cold, magical fire, gas. Personality Traits: Chaotic, Evil, Efficiency: 13%."~ */
  IF ~~ THEN REPLY #55345 /* ~"Tell me about the baatezu."~ */ GOTO 77
  IF ~~ THEN REPLY #55346 /* ~"All right then, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55347 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 9.0 9.1 59.0 59.1 74.0 74.1
  SAY #55348 /* ~A slow *tkkk-tkkk-tkkk* begins building in Nordom - like a clock about to explode. "Response: Responsibilities of Director: (A) Integrity-Maintenance of Rubikon Project, (2) Order-Issuance to Rubikon battalion/work group. Period of obeyance in accordance with Nordom obedience: Until Rubikon project halted, Creative Director = Nordom's superior."~ */
  IF ~~ THEN REPLY #55349 /* ~"So... you'll do whatever I tell you?"~ */ GOTO 80
  IF ~~ THEN REPLY #55350 /* ~"Then I have some orders for you, Nordom..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55351 /* ~"Hmmm. What sorts of tasks did the Creative Director ask you to do?"~ */ GOTO 93
  IF ~  CheckStatGT(Protagonist,16,WIS)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55352 /* ~"Hmmm. What sorts of tasks did the Creative Director ask you to do?"~ */ GOTO 93
  IF ~~ THEN REPLY #55353 /* ~"Actually, forget it, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55354 /* ~"Scrap that, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #55355 /* ~"Affirmatory."~ */
  IF ~~ THEN REPLY #55356 /* ~"Well, then, I have some orders for you..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55357 /* ~"Hmmm. What sorts of tasks did the Creative Director ask you to do?"~ */ GOTO 93
  IF ~~ THEN REPLY #55358 /* ~"Actually, forget it, Nordom. I had some other questions for you..."~ */ GOTO 93
  IF ~~ THEN REPLY #55359 /* ~"Scrap that, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 9.2 74.2 79.1 80.0 86.1 87.1 91.0 92.0
  SAY #55360 /* ~"Status: Awaiting orders."~ */
  IF ~  Global("Nordom_Fighter_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,STR)
Class(Protagonist,FIGHTER)
~ THEN REPLY #55361 /* ~"I order you to focus more of your energy from your introspection routines and gear them more towards combat. I expect an *immediate* increase in your fighting skills and accuracy, soldier."~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetGlobal("Nordom_Fighter_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 82
  IF ~  Global("Nordom_Mage_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,INT)
Class(Protagonist,MAGE)
~ THEN REPLY #55362 /* ~"Nordom, I want you to focus on clearing out any excess baggage from your memory and use it to improve your logic and introspection routines."~ */ DO ~SetGlobal("Nordom_Mage_Order","GLOBAL",1)
AddexperienceParty(36000)
SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 84
  IF ~  Global("Nordom_Thief_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,DEX)
Class(Protagonist,THIEF)
~ THEN REPLY #55363 /* ~"Nordom, I want you to take some of the energy you use for your strength and transfer it to your stealth and accuracy. You're too clumsy and loud right now."~ */ DO ~SetGlobal("Nordom_Thief_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,16,CHR)
Global("Nordom_Charisma_Order","GLOBAL",0)
~ THEN REPLY #55364 /* ~"Nordom, I order you to listen to me. I have some things I want to say to you."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 86
  IF ~~ THEN REPLY #55365 /* ~"Why don't you go hostile and attack everyone you can?"~ */ DO ~LeaveParty()
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_2","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Nordom_1","GLOBALGood",-3)
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #55366 /* ~"Do a little dance for me, Nordom."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nordom_3","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetAnimState("Nordom",ANIM_STANCETOSTAND)
~ GOTO 92
  IF ~~ THEN REPLY #55367 /* ~"I order you to fall on you face, then get back up."~ */ DO ~SetAnimState("Nordom",ANIM_MIMEDIE)
SetAnimState("Nordom",ANIM_MIMEGETUP)
~ GOTO 92
  IF ~~ THEN REPLY #55368 /* ~"Switch your crossbows from one hand to the other."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 92
  IF ~~ THEN REPLY #55369 /* ~"Actually, forget it, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55370 /* ~"Scrap that, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #55371 /* ~"Affirmatory." There is a moment of silence, then the shutters slowly descend over Nordom's eyes. There is a *tkk-tkk-tkk* from inside his frame, followed by a low grinding noise. The grinding noise turns into a metal screeching, as panels open up in Nordom's sides, and metal plates slide over his frame.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,LOWER,2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",CON,RAISE,1)
~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #55372 /* ~His fingers begin tapping against his crossbows, and you watch as the rivets in his fingers slide out, slide back, and then the empty holes suddenly fill with a swarm of extremely tiny, intricate gears. The gears *klink* and *tik* as they fight for space, then settle into a steady, methodical *tik-tik-tik.*~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",DEX,RAISE,1)
~ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 81.1
  SAY #55373 /* ~"Affirmatory." There is a moment of silence, then the shutters slowly descend over Nordom's eyes. There is a *tkk-tkk-tkk* from inside his frame, followed by a low grinding noise. The grinding noise turns into a metal screeching, as panels open up in Nordom's sides, and... excess "baggage" starts flying out, and you try and catch each piece as it flies out.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,RAISE,2)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Enoll",Protagonist,1,0,0)
~ GOTO 92
END

IF ~~ THEN BEGIN 85 // from: 81.2
  SAY #55374 /* ~"Affirmatory." There is a moment of silence, then the shutters slowly descend over Nordom's eyes. There is a *whrrrrrr* from inside his frame, like a treadmill at high speed. There is a chorus of *kliks* from all of Nordom's joints, and new gears sprout out like weeds, fastening themselves onto his shoulder pins, elbows, knees, wrists and ankles. Within moments, they have all attached and secured themselves to his joints, and Nordom looks... well, more gear-ridden than usual.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",STR,LOWER,2)
PermanentStatChange("Nordom",DEX,RAISE,2)
~ GOTO 92
END

IF ~~ THEN BEGIN 86 // from: 81.3
  SAY #55375 /* ~Nordom freezes. "Awaiting: Talk."~ */
  IF ~~ THEN REPLY #55376 /* ~Truth: "I order you to be MORE than you can be, Nordom. I order you to become stronger, faster and more focused than you've ever been. I KNOW you can do this, because I BELIEVE you can do this."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 87
  IF ~~ THEN REPLY #55377 /* ~"Cancel that. I have some other orders for you..."~ */ GOTO 81
  IF ~~ THEN REPLY #55378 /* ~"Forget my last order. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55379 /* ~"Never mind, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #55380 /* ~Nordom stares at you in silence. His crossbows have also fallen still.~ */
  IF ~~ THEN REPLY #55382 /* ~"Now repeat the following words: 'I am a strong modron.' 'I am a fast modron.' 'I am a powerful modron.' 'My Creative Director believes in me.' 'I am focused for my Director.' Come on, repeat it."~ */ DO ~SetGlobal("Nordom_Charisma_Order","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 88
  IF ~~ THEN REPLY #55383 /* ~"Cancel that. I have some other orders for you..."~ */ GOTO 81
  IF ~~ THEN REPLY #55384 /* ~"Forget my last order. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55385 /* ~"Never mind, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #55386 /* ~Nordom speaks, but his voice no longer carries the metallic wobble you heard before: It is flat. Focused. Emotionless. "I am a strong modron. I am a fast modron. I am a powerful modron. My Creative Director believes in me. I am focused for my Director."~ */
  IF ~~ THEN REPLY #55387 /* ~"Now FEEL those words, Nordom. BECOME stronger. BECOME faster. BECOME more powerful. Let that energy within you SURFACE and use it to make you NORDOM."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #55388 /* ~Nordom continues to stare at you, but you can FEEL your words taking hold - you can feel just a *spark,* just a *spark* of the energy inside of him... if you can coax it out... bring it to the surface...~ */
  IF ~  CheckStatLT(Protagonist,19,CHR)
~ THEN REPLY #55390 /* ~"Come on, Nordom... Strength. Speed. Power. Focus."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",STR,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(36000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,18,CHR)
CheckStatLT(Protagonist,25,CHR)
~ THEN REPLY #55393 /* ~"Come on, Nordom... Strength. Speed. Power. Focus."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,1)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(48000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,24,CHR)
~ THEN REPLY #55395 /* ~"Come on, Nordom... Strength. Speed. Power. Focus."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
PermanentStatChange("Nordom",LUCK,RAISE,1)
AddexperienceParty(60000)
~ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1 89.2
  SAY #55398 /* ~"AFFIRMATORY." The pupils of Nordom's eyes suddenly *klik* and become brilliant, white dots, like tiny suns. His hand cranks raise above his head, in a curious flying motion, and then settle back to his sides... when they descend, Nordom seems more... definite. Sharper to your senses, somehow. Something's *changed.*~ */
  IF ~~ THEN REPLY #55399 /* ~"Nordom...?"~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #55401 /* ~"ORDER PROCESSED." Nordom blinks, and suddenly settles into himself with a *klank.* A small wisp of steam rises from one of his vents; his voice seems uncharacteristically deep, like he's speaking from within a huge stove, then resumes its normal tone. "O-o-o-rder processed."~ */
  IF ~~ THEN REPLY #55402 /* ~"Well, that worked pretty well. I have some other orders for you..."~ */ GOTO 81
  IF ~~ THEN REPLY #55403 /* ~"Excellent. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55405 /* ~"That's all I wanted, Nordom. Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 81.5 81.6 81.7 83.0 84.0 85.0
  SAY #55407 /* ~Nordom settles for a moment, then his eyes *klik* open. "Order processed."~ */
  IF ~~ THEN REPLY #55408 /* ~"I have some other orders for you..."~ */ GOTO 81
  IF ~~ THEN REPLY #55409 /* ~"Excellent. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55410 /* ~"That's all I wanted, Nordom. Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 79.2 79.3 80.1 80.2 94.1 95.1 96.0 98.1 99.3 100.0 101.1 102.2 103.1 104.0
  SAY #55412 /* ~Nordom's shutters *whrrr* down over his eyes, as if he is thinking. "Task Routine: Evaluation/Forward-Scout/Tidier: Assigned perimeter of Rubikon project to evaluate, catalogue, tidy, then report. Report includes: In-in-in-tegrity Evaluations/Extermination of Project Errors/Wayward Item Recovery of Un-Tidiness."~ */
  IF ~~ THEN REPLY #55414 /* ~"Integrity evaluations?"~ */ GOTO 94
  IF ~~ THEN REPLY #55415 /* ~"Extermination of errors?"~ */ GOTO 97
  IF ~~ THEN REPLY #55417 /* ~"Wayward Item Recovery?"~ */ GOTO 101
  IF ~~ THEN REPLY #55418 /* ~"Actually, forget it, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55420 /* ~"Scrap that, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 95.2 96.1
  SAY #55421 /* ~"Repeated word choice confirmed (Echo?): Inter-grity evaluation. Evaluation intended to detect flaws in Rubikon project, catalogue them, then /repair/ such flaws. Nature of Multiverse and nature of Plane: Limbo compromises Rubikon Project."~ */
  IF ~~ THEN REPLY #55427 /* ~"How does the, uh, Multiverse... and Limbo... compromise the Project, exactly?"~ */ GOTO 95
  IF ~~ THEN REPLY #55429 /* ~"What were your tasks again?"~ */ GOTO 93
  IF ~~ THEN REPLY #55431 /* ~"Actually, forget it, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55432 /* ~"Scrap that, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #55434 /* ~"Properties of Multiverse: - Cracks - Seals - Cracks Again - Flaws Created. Creates "portals"/conduits in space. Frequency: Pattern Indeterminate. Solution: Unknown." There is a *sssss* as a small trace of steam rises from one of Nordom's vents. "Nordom cannot repair/seal cracks. Current Status: Nordom is limited to: perception of cracks."~ */
  IF ~~ THEN REPLY #55435 /* ~"Hold on a minute. You can see 'cracks' in planes? Portals? How?"~ */ JOURNAL #55442 /* ~Nordom mentioned that he has the ability to see portals, what he calls "flaws" in planes with an 80 - 90% accuracy. It sounds like all he has to do is just walk near the portal to detect its presence... granted, it probably won't tell me *how* to open the portal, but at least I'll be able to nail down where some of them are.~ */ GOTO 96
  IF ~~ THEN REPLY #55436 /* ~"I 'see.' What were your tasks again?"~ */ GOTO 93
  IF ~~ THEN REPLY #55438 /* ~"Never mind, Nordom. I had some other questions for you..."~ */ GOTO 94
  IF ~~ THEN REPLY #55439 /* ~"Forget it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #55445 /* ~"Ability to detect portals: 80-90% Percent. Maximum Distance of Perception Varies According to Flaw/Mean Distance = Y+78..." A bewildering series of *kliks* comes from Nordom, as if a parade of snapping beetles were marching around inside his body. "Nordom must approach within ten feet of portal. Margin of Error: +/- 5th of Foot. Will sound off if near portal."~ */
  IF ~~ THEN REPLY #55449 /* ~"All right, then. Now, what were your other tasks again?"~ */ GOTO 93
  IF ~~ THEN REPLY #55450 /* ~"I'd appreciate that, Nordom. I had some other questions for you..."~ */ GOTO 94
  IF ~~ THEN REPLY #55452 /* ~"Thanks, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1
  SAY #55453 /* ~Nordom's normal warble drops to a wavering murmur. "Errors: Many. All constructs in Rubikon Project are in error and exist in dis-obeyance with Creative Director and all personnel of Rubikon project. Order issued: Errors that persist in dis-obeyance are to be rescinded. Obstacle: Nordom not up to specifications of task without suffering Null State."~ */
  IF ~~ THEN REPLY #55454 /* ~"So you couldn't stop these rogue constructs by yourself... at least without being torn gear from gear?"~ */ GOTO 98
  IF ~~ THEN REPLY #55456 /* ~"What were the other tasks assigned to you again?"~ */ GOTO 73
  IF ~~ THEN REPLY #55458 /* ~"I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55459 /* ~"I've heard enough, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #55461 /* ~"Affirmatory. Null State counter-productive to completion of task."~ */
  IF ~~ THEN REPLY #55462 /* ~"Well, maybe if they'd given you better weapons..."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 99
  IF ~~ THEN REPLY #55464 /* ~"What were the other tasks assigned to you again?"~ */ GOTO 93
  IF ~~ THEN REPLY #55465 /* ~"Actually, forget it, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55466 /* ~"Scrap that, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #55468 /* ~The crossbows in Nordom's hand begin *klikity-klikking* and *ta-wanging* like a pair of strange insects. He listens to them for a moment, then glances at you. "My crossbows wish to file a query followed by thirty-three pleas for help: 'Ammunition limited by suggestions of creator.' Do you wish to provide new specifications for them?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Nordom_Bolt_03","GLOBAL",0)
~ THEN REPLY #55469 /* ~"Sure... well, how about something like... I don't know - a pyramid-shaped head, except the head splits into three when it hits something?"~ */ DO ~GiveItemCreate("Bolt03","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_03","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  Global("Nordom_Bolt_07","GLOBAL",0)
~ THEN REPLY #55470 /* ~"Something with more accuracy would be nice. With kind of a feather aesthetic to show that it travels far."~ */ DO ~GiveItemCreate("Bolt07","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_07","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Nordom_Bolt_06","GLOBAL",0)
~ THEN REPLY #55471 /* ~"I don't know. Something vicious. I mean, REALLY vicious. We're talking slashing, horrible, wincing vicious."~ */ DO ~GiveItemCreate("Bolt06","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_06","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~~ THEN REPLY #55472 /* ~"I can't really think of anything right now. What were the other tasks assigned to you again?"~ */ GOTO 93
  IF ~~ THEN REPLY #55473 /* ~"Not now, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55474 /* ~"Scrap the idea, Nordom; maybe some other time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1 99.2
  SAY #55475 /* ~There is a sudden *ping* from Nordom's crossbows and a sheaf of crossbow bolts begin spitting out from their tops, arcing into the air. Two panels open up on Nordom's sides, and the crossbow bolts sail into them with a rattle, one after the other. After streaming out ten or so, the crossbows are silent. You have a strange feeling they're exhausted.~ */
  IF ~~ THEN REPLY #55476 /* ~"Maybe they should rest for a while... look, what were the other tasks assigned to you again?"~ */ GOTO 93
  IF ~~ THEN REPLY #55477 /* ~"That should do for now, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55478 /* ~"Let's pack up those bolts and head out, Nordom."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 93.2
  SAY #55479 /* ~"Affirmatory. Items appear in maze that were not present in original design of Rubikon Project. They must be gathered, catalogued, evaluated and stored to prevent interference. Modrons are sent out to retrieve them and secure them."~ */
  IF ~~ THEN REPLY #55480 /* ~"Hmmm. Did you find anything during your last trip?"~ */ GOTO 102
  IF ~~ THEN REPLY #55481 /* ~"I see. What were the other tasks assigned to you again?"~ */ GOTO 93
  IF ~~ THEN REPLY #55482 /* ~"Actually, forget it, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55483 /* ~"Scrap that, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #55484 /* ~"Affirmatory."~ */
  IF ~  Global("Nordom_Item_Bank","GLOBAL",0)
~ THEN REPLY #55486 /* ~"Can you give me what you found?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",1)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("StingEar",Protagonist,1,0,0)
GiveItemCreate("GolBra",Protagonist,1,0,0)
GiveItemCreate("EyeGlas1",Protagonist,1,0,0)
GiveItemCreate("FangMirr",Protagonist,3,0,0)
GiveGoldForce(333)
~ GOTO 103
  IF ~  Global("Nordom_Item_Bank","GLOBAL",1)
CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55487 /* ~"You said you evaluated items when you found them - how?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~~ THEN REPLY #55488 /* ~"What were the other tasks assigned to you again?"~ */ GOTO 93
  IF ~~ THEN REPLY #55489 /* ~"Actually, forget it, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55490 /* ~"Scrap that, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #55491 /* ~"Affirmatory." There is a moment of silence, then the shutters slowly descend over Nordom's eyes. There is a *tkk-tkk-tkk* from inside his frame, followed by a *whrrr-klik.* A hatch opens up in Nordom's left side, and he reaches over with his free hand and passes off several objects to you, including a stream of copper coins.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55492 /* ~"Hmmmm. You said you evaluated items when you found them - how?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55493 /* ~"Thanks, Nordom. I'll examine these. What were the other tasks assigned to you again?"~ */ GOTO 93
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55494 /* ~"I'll take a look at these later, Nordom. For now, I had some other questions for you..."~ */ GOTO 74
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55495 /* ~"I'll keep a hold of these, Nordom, thanks. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #55496 /* ~There is a sudden *ping* from Nordom, and a *klak-klak* as his lens housing begins to rotate - a small panel opens up on Nordom's side, and a new lens pops out, almost by accident. Nordom glances up at it. "Response: Alternate lens, magnifying, secured in housing."~ */
  IF ~~ THEN REPLY #55497 /* ~"What were the other tasks assigned to you again?"~ */ GOTO 93
  IF ~~ THEN REPLY #55498 /* ~"I see. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55499 /* ~"I've heard enough, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 9.7 9.8 74.6 74.7
  SAY #55500 /* ~"Introspective cycle commencing." Nordom *kliks* his eyes closed and begins to *hummmm.* ~ */
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55501 /* ~Wait for Nordom to complete his analysis.~ */ GOTO 106
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55502 /* ~Wait for Nordom to complete his analysis.~ */ GOTO 107
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55503 /* ~Wait for Nordom to complete his analysis.~ */ GOTO 108
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55504 /* ~Wait for Nordom to complete his analysis.~ */ GOTO 109
  IF ~~ THEN REPLY #55505 /* ~"Actually, forget it, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55506 /* ~"Scrap that, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #55507 /* ~A few moments later, his eyes *klik* open. "Introspective Evaluation: Perceptions have become (1) smaller and (B) louder. Wings have been replaced with arms: reason unknown. Suspicion/hypothesis: not liked wings? Speculation. Nordom was once -ONE- but is now smaller, louder -ONE!- Change has resulted in information-processing difficulties."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55508 /* ~"Do you think your separation from the Source is what caused your perspective shift from that quieter, broader 'one' to the smaller, louder 'one'?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55509 /* ~"I see, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55510 /* ~"I've heard enough, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 105.1
  SAY #55511 /* ~A few moments later, his eyes *klik* open. "Introspective Evaluation: Perceptions have become (1) smaller and (B) louder. Wings have been replaced with arms: reason unknown. Suspicion/hypothesis: not liked wings? Speculation. Nordom was once -ONE- but is now smaller, louder -ONE!- Change has resulted in information-processing difficulties. Addition of DIRECTOR hierarchy has aided information processing by +5%."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55512 /* ~"Do you think your separation from the Source is what caused your perspective shift from that quieter, broader 'one' to the smaller, louder 'one'?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55513 /* ~"I see, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55514 /* ~"I've heard enough, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 105.2
  SAY #55515 /* ~A few moments later, his eyes *klik* open. "Introspective Evaluation: Perceptions have become (1) smaller and (B) louder. Wings have been replaced with arms: reason unknown. Suspicion/hypothesis: not liked wings? Speculation. Nordom was once -ONE- but is now smaller, louder -ONE!- Addition of !SOURCE! REASON: PERCEPTION SHIFT has aided information processing by +5%."~ */
  IF ~~ THEN REPLY #55516 /* ~"I see, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55517 /* ~"I've heard enough, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 105.3
  SAY #55518 /* ~A few moments later, his eyes *klik* open. "Introspective Evaluation: Perceptions have become (1) smaller and (B) louder. Wings have been replaced with arms: reason unknown. Suspicion/hypothesis: not liked wings? Speculation. Nordom was once -ONE- but is now smaller, louder -ONE!- Stabilization achieved: DIRECTOR and !SOURCE! REASON: PERCEPTION SHIFT has aided information processing by +10%."~ */
  IF ~~ THEN REPLY #55519 /* ~"I see, Nordom. I had some other questions for you..."~ */ GOTO 110
  IF ~~ THEN REPLY #55520 /* ~"I've heard enough, Nordom. Let's move on."~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0 109.1
  SAY #55521 /* ~Before you can speak the words, Nordom's eyes *klik-klik-klik* and he *chrrrups.* "Subject has assisted Nordom. Hypothesis: Nordom assist addressee. Query: Nordom inquiry on status of addressee?"~ */
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55522 /* ~"How am *I* doing?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55523 /* ~"How am *I* doing?"~ */ GOTO 111
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55524 /* ~"Not now, Nordom. I had some other questions for you..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55525 /* ~"Not now, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55526 /* ~"Don't worry about it, Nordom. Let's move on."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55527 /* ~"Don't worry about it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 9.9 74.8 110.0 110.1
  SAY #55528 /* ~"Affirmatory. Inquiry submitted as to /Status/ of addressee. Response?"~ */
  IF ~  Global("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55529 /* ~"Well, other than the fact I've got amnesia, and I can't seem to die like a normal person, I'm all right."~ */ GOTO 112
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55530 /* ~"Well, other than the fact I've got amnesia, I can't seem to die like a normal person, and my mortality has been stripped from me and spirited away somewhere, I'm all right."~ */ GOTO 112
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #55531 /* ~"Well, other than the fact I've got amnesia, my mortality has been stripped from me and spirited away to the Fortress of Regrets, and that whenever I die, someone dies in my place... not so good."~ */ GOTO 112
  IF ~~ THEN REPLY #55532 /* ~"Not now, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55533 /* ~"Don't worry about it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 111.0 111.1 111.2
  SAY #55534 /* ~"Processing: Amnesia. Processing: Null Death/Despite Attempts." Nordom *whrrrrs* for a moment, his wide eyes fixated on you. "Conclusion: Status: Immortal. Cause/Effect Query: Amnesia produces immortality or immortality produces amnesia?"~ */
  IF ~~ THEN REPLY #55535 /* ~"I don't know... all I know is when I wake up from the 'dead' I lose all my memories. So I guess the immortality causes amnesia."~ */ GOTO 113
  IF ~~ THEN REPLY #55536 /* ~"Forget this, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55537 /* ~"Don't worry about it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #55557 /* ~"Processing..." Nordom grinds like a miller's wheel for a moment. "New Query formulated: Every time you die you lose your memories?"~ */
  IF ~~ THEN REPLY #55559 /* ~"Correct."~ */ GOTO 114
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #55561 /* ~"That's what Ravel said, anyway."~ */ GOTO 114
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55564 /* ~"Yes... no, wait. That's not true. I didn't lose my memories last time."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55566 /* ~"Yes... no, wait. That's not true. I didn't lose my memories last time. In fact, I haven't lost my memories since I woke up in the Mortuary."~ */ GOTO 115
  IF ~~ THEN REPLY #55570 /* ~"Forget this, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55572 /* ~"Don't worry about it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.1
  SAY #55576 /* ~"Response: Catalogued." Nordom gives a final *klik,* then stands silently, looking at you. ~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55577 /* ~"...except that I didn't lose my memories last time I died."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55578 /* ~"...except that I didn't lose my memories last time I died. Or the time before that."~ */ GOTO 115
  IF ~~ THEN REPLY #55579 /* ~"I had some other questions for you, Nordom..."~ */ GOTO 74
  IF ~~ THEN REPLY #55580 /* ~"All right, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 113.2 113.3 114.0 114.1
  SAY #55581 /* ~"Response: Conclusion: Immortality is not cause of amnesia."~ */
  IF ~~ THEN REPLY #55582 /* ~"Well, I don't know. It could have been chance that it didn't happen last time."~ */ GOTO 116
  IF ~~ THEN REPLY #55583 /* ~"Forget this, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55584 /* ~"Don't worry about it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #55585 /* ~"Element of chance discounted. Suggestion: Begin search for new pattern. Amnesia/Immortality - Query: Additional Factors Present? Intervention/Presence of New Factors or Absence of Other Factors?"~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"What other factors could there be?"~ */ GOTO 117
  IF ~  Global("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"What other factors could there be?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",2)
~ GOTO 117
  IF ~~ THEN REPLY #55588 /* ~"Forget this, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55589 /* ~"Don't worry about it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0 116.1 120.0 121.0 124.0 129.0
  SAY #55597 /* ~"Unknown. Query: Additional Information?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55599 /* ~"Well, I think there's someone out to murder me... so much so I built a tomb trap to try and kill them. According to an inscription in the tomb, he's been coming after me... for, well, as long as my incarnations can remember, it seems."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55602 /* ~"One other thing: I wasn't always immortal... Ravel made me that way."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55604 /* ~"The number of people that can either help me find my mortality or know where it is seem to be dying off... if this keeps up, no one's going to know where my mortality is. The Pillar of Skulls said there were only three... and one was me, but I forgot."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55605 /* ~"Trias said that there is a 'keeper' in this Fortress of Regrets, and that he holds my mortality prisoner."~ */ GOTO 125
  IF ~~ THEN REPLY #55608 /* ~"I don't have any additional information yet, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55610 /* ~"Scrap it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0 130.0
  SAY #55612 /* ~"Additional Information: Murderer. Immortality = Cannot be murdered." Nordom *tkkk-tkkk-tkkks* for a moment, then *chrrrups.* "Query: Not Murderer?"~ */
  IF ~~ THEN REPLY #55613 /* ~"What do you mean?"~ */ GOTO 119
  IF ~~ THEN REPLY #55616 /* ~"Forget this, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55618 /* ~"Don't worry about it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #55619 /* ~"Response: Immortality precludes murder from achieving success. Query: Not murderer?"~ */
  IF ~~ THEN REPLY #55621 /* ~"Then what else could be gained from killing... trying to kill... me?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom made an odd suggestion about my 'killer' - he said that the killer may not be a killer at all; he may just want me to keep forgetting. But forget what? ~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55625 /* ~"Are you saying the murderer is *not* trying to kill me? Then what's the point?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~Nordom made an odd suggestion about my 'killer' - he said that the killer may not be a killer at all; he may just want me to keep forgetting. But forget what? ~ */ GOTO 120
  IF ~~ THEN REPLY #55628 /* ~"Forget this, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55629 /* ~"Don't worry about it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #55637 /* ~"Response: Immortality = Amnesia."~ */
  IF ~~ THEN REPLY #55638 /* ~"So whoever this killer is, he's not trying to kill me, but trying to make me *forget?* Hmmm. It's a possibility. I mean, there would have been *other* ways to incapacitate me if the killer had wanted me out of the way... hmmm. But if the killer wants me to forget, *what* does he want me to forget?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 121 // from: 117.1 130.1
  SAY #55639 /* ~"Query: Formulating additional query... Null immortality in past, requested immortality from Subject: Ravel. Query: Why?"~ */
  IF ~~ THEN REPLY #55642 /* ~"I don't know, exactly... then again, who *doesn't* want to live forever?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",4)
~ GOTO 117
END

IF ~~ THEN BEGIN 122 // from: 117.2 130.2
  SAY #55644 /* ~"Attention: Quote: 'One was me, but I forgot' (location of mortality). Attention: Previous Quote: 'So whoever this killer is, he's not trying to kill me, but trying to make me *forget?*' Query: Murderer Goal = Null Murder, Murderer Goal = Forgetting = Location of Mortality?"~ */
  IF ~~ THEN REPLY #55645 /* ~"So you think the location of my mortality is what the 'murderer' wanted me to forget? Why?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",5)
~ GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #55647 /* ~"Attention/Hypothesis: Forgetting Location of Mortality = Value to 'Murderer.'"~ */
  IF ~~ THEN REPLY #55648 /* ~"Hmmm. It's a possibility... but why would the knowledge of the *location* be important?"~ */ JOURNAL #55650 /* ~Nordom made another suggestion about my 'killer' - he said not only that the killer may not be a killer at all; he may just want me to keep forgetting. Based on what the Pillar of Skulls said, there's fewer and fewer people that know where my mortality is, and I used to be one of them, but I forgot. Is the location of my mortality what the murderer wanted me to forget? ~ */ GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #55653 /* ~"Correction: NULL Location of Mortality = Value to 'Murderer.'"~ */
  IF ~~ THEN REPLY #55655 /* ~"Hmmm. It's a possibility... so someone wants no one to know where it is? Or this murderer doesn't want anyone to know where it is except him?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 125 // from: 117.3 130.3
  SAY #55657 /* ~"Attention: Trias the - Betrayer - disposition: falsehood/Shield of Golden Lies. Information/Source: Trias, Information Accuracy: Questionable."~ */
  IF ~  GlobalGT("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55660 /* ~"I don't think he was lying, Nordom; there was nothing to be gained from it... you had to see his eyes. He was telling the truth... this time. Why is this keeper holding my mortality?"~ */ GOTO 127
  IF ~  Global("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55662 /* ~"I don't think he was lying, Nordom; there was nothing to be gained from it... you had to see his eyes. He was telling the truth... this time. Why is this keeper holding my mortality?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.1
  SAY #55664 /* ~"Supposition: Location of Mortality is something of value. Query: Mortality is of value?"~ */
  IF ~~ THEN REPLY #55666 /* ~"You know, Ravel said my mortality was precious... that it could be held for *ransom.* That I could be used as a puppet if someone had captured it."~ */ GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 125.0
  SAY #55668 /* ~"Query: Why? Formulating... Motivations..." Nordom *whrrrrs,* then *chrrrups.* "Nordom recall Ravel Response: '-No telling what horrible things someone could do to you if they held your mortality for RANSOM. It would like be holding someone's sweet, succulent soul... a puppet dancing on someone's strings, would you be.'" Nordom *chrrrups.* "Recall terminated."~ */
  IF ~~ THEN REPLY #55669 /* ~"You're right - Ravel said my mortality was precious... that it could be held for ransom or be used to control me. But ransom implies that someone ASKS for a ransom... and I haven't been used like a puppet... I don't think. So..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~I've been trying to figure out what my 'murderer' may want, and I keep hitting the same damn obstacles - the only thing he seems to want is me to forget where my mortality is; he hasn't made any 'ransom' demands, and he hasn't been using my mortality to control me, at least that I can tell. Maybe he doesn't possess my mortality... or isn't willing to make use of it? There's too many questions, and not enough answers.~ */ GOTO 129
END

IF ~~ THEN BEGIN 128 // from: 126.0
  SAY #55673 /* ~"Hypothesis: Ransom - Query: Received ransom demand?"~ */
  IF ~~ THEN REPLY #55675 /* ~"You're right, there hasn't been one. And whoever this keeper is who holds my mortality - he doesn't seem to have been pulling my strings to get me to do anything... at least that I can tell. So...?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~I've been trying to figure out what my 'murderer' may want, and I keep hitting the same damn obstacles - the only thing he seems to want is me to forget where my mortality is; he hasn't made any 'ransom' demands, and he hasn't been using my mortality to control me, at least that I can tell. Maybe he doesn't possess my mortality... or isn't willing to make use of it? There's too many questions, and not enough answers.~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 127.0 128.0
  SAY #55683 /* ~Nordom falls silent. He doesn't even blink.~ */
  IF ~~ THEN REPLY #55685 /* ~"So... my mortality is locked away in this damn Fortress, and the more people forget where it is, the less chance it will ever be recovered. So whoever this keeper is - if he's even the *same* person as the killer - he must not want my mortality recovered... or at least, anyone knowing where it is. But... this keeper who holds my mortality, he either can't or is unwilling to make use of my mortality to control me. Why?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 130 // from: 9.10 74.9
  SAY #55687 /* ~"Affirmatory. Query: Additional Information?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55689 /* ~"Well, I think there's someone out to murder me... so much so I built a tomb trap to try and kill them. According to an inscription in the tomb, he's been coming after me... for, well, as long as my incarnations can remember, it seems."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55691 /* ~"One other thing: I wasn't always immortal... Ravel made me that way."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55692 /* ~"The number of people that can either help me find my mortality or know where it is seem to be dying off... if this keeps up, no one's going to know where my mortality is. The Pillar of Skulls said there were only three... and one was me, but I forgot."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55694 /* ~"Trias said that there is a 'keeper' in this Fortress of Regrets, and that he holds my mortality prisoner."~ */ GOTO 125
  IF ~~ THEN REPLY #55697 /* ~"I don't have any additional information yet, Nordom. I had some other questions for you..."~ */ GOTO 74
  IF ~~ THEN REPLY #55699 /* ~"Scrap it, Nordom. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #61281 /* ~"Pillar of Skulls: known to be composed of the living heads of mortals who have lied, where said lies resulted in the deaths of other mortals. The Pillar serves as a repository of knowledge. The Pillar will demand payment for sharing said knowledge no less than ninety-seven percent of the time. The Pillar's demands are consistently of a level that the typical mortal would call 'very great.' Logic would suggest one not query the Pillar unless the need for a particular unit of information could be considered similarly 'very great.'"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 132 // from:
  SAY #61673 /* ~"Once I was 'one.' Now I am 'one,' but it is a smaller, louder 'one.'"~ [NOR309] */
  IF ~~ THEN EXTERN ~BGRACE~ 17
END

IF ~~ THEN BEGIN 133 // from:
  SAY #61674 /* ~"Negatory."~ [NOR310A] */
  IF ~~ THEN EXTERN ~BGRACE~ 19
END

IF ~~ THEN BEGIN 134 // from:
  SAY #61675 /* ~"I am not speaking to them, I am listening to them. They were submitting queries as to when they will get to shoot something."~ [NOR310B] */
  IF ~~ THEN EXTERN ~BGRACE~ 20
END

IF ~~ THEN BEGIN 135 // from:
  SAY #61676 /* ~"Where once there were two wings, there are now two arms. I do not know why I lost my wings."~ [NOR308A] */
  IF ~~ THEN EXTERN ~BGRACE~ 22
END

IF ~~ THEN BEGIN 136 // from:
  SAY #61677 /* ~"The theme of 'falling from grace with one's people' coupled with my loss of wings is something that I had perceived and catalogued. I have observed it mirrored in many individuals that I interact with."~ [NOR308B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #61678 /* ~"'Cutest' is a subjective term. I prefer the designation 'fearsome cubed warrior.'"~ [NOR296] */
  IF ~~ THEN EXTERN ~BGRACE~ 24
END

IF ~~ THEN BEGIN 138 // from:
  SAY #61785 /* ~"I do not accept orders from you."~ [NOR284] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #61786 /* ~"That is physically impossible for you without surrogate arms. Nor am I numbered like a die."~ [NOR283] */
  IF ~~ THEN EXTERN ~BMORTE~ 41
END

IF ~~ THEN BEGIN 140 // from:
  SAY #61787 /* ~"They do not require reloading. They are always ready to fire."~ [NOR306] */
  IF ~~ THEN EXTERN ~BMORTE~ 43
END

IF ~~ THEN BEGIN 141 // from:
  SAY #61788 /* ~"They are not clicking. They are in a period of deep discussion concerning this journey."~ [NOR307] */
  IF ~~ THEN EXTERN ~BMORTE~ 45
END

IF ~~ THEN BEGIN 142 // from:
  SAY #61789 /* ~"Why do you persist in addressing me as a door?"~ [NOR305A] */
  IF ~~ THEN EXTERN ~BMORTE~ 47
END

IF ~~ THEN BEGIN 143 // from:
  SAY #61790 /* ~"I know who is there. It is you. Why would I ask a question when I know the answer?"~ [NOR305B] */
  IF ~~ THEN EXTERN ~BMORTE~ 48
END

IF ~~ THEN BEGIN 144 // from:
  SAY #61791 /* ~"Annah! Morte wants to 'snuggle with your pillows.'"~ [NOR285] */
  IF ~~ THEN EXTERN ~BMORTE~ 50
END

IF ~  Global("Fortress_Nordom","GLOBAL",3)
~ THEN BEGIN 145 // from:
  SAY #68234 /* ~You reach out with your power, shaping the soul into Nordom's shape, slowly, until you feel it slipping back into the modron's body. There is a shudder from Nordom's frame, and he springs to his feet. ~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68235 /* ~"Nordom, I *really* need your help right now... I found my killer, and it's my mortality."~ */ DO ~SetGlobal("Fortress_Nordom","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 146
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68372 /* ~NORDOM. ~ */ GOTO 147
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #68236 /* ~"Awaiting Order."~ [NOR063] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68237 /* ~"Get ready. You'll have a target for your crossbows soon enough..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
~ THEN REPLY #68238 /* ~"Get ready. You'll have a target for your crossbows soon enough..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.1
  SAY #68373 /* ~Nordom blinks, the shutters of his eyes *kliking* rapidly, then the shutters dilate to points, as if he is squinting at you. "Your voice x-ceeds standard recognized parameters."~ */
  IF ~~ THEN REPLY #68374 /* ~I HAVE BECOME... WHOLE AGAIN. I HAVE CHANGED, BUT I SHALL NOT BE HERE MUCH LONGER. I WILL RETURN YOU TO SIGIL, NORDOM, IF YOU WISH.~ */ GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #68375 /* ~"Query: Where is your next destination? Nordom will follow and protect you."~ */
  IF ~~ THEN REPLY #68376 /* ~I HAVE COMMITTED MANY CRIMES ACROSS MANY LIFETIMES. I GO NOW TO A PLACE OF PUNISHMENT. YOU CANNOT COME WITH ME.~ */ GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #68377 /* ~"Branching query: Do you not (require) or do you not (want) presence of Nordom?"~ */
  IF ~~ THEN REPLY #68378 /* ~YOU CANNOT FOLLOW, NORDOM. IT IS NOT MY CHOICE. THERE ARE OTHER POWERS THAT NOW RULE MY ACTIONS. THEY ALWAYS DID, BUT NOW THEY KNOW ME FOR WHAT I AM, AND THEY COME EVEN AS WE SPEAK.~ */ GOTO 150
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #68379 /* ~Nordom *whrrr-kliks* for a moment, then his crossbows begin *klikking* and *twanging* in his hands. "Nordom surrenders gratitudes. You helped Nordom find his idemnity."~ */
  IF ~~ THEN REPLY #68380 /* ~AS YOU HELPED ME FIND MINE. I GIVE YOU YOUR FREEDOM, NORDOM. EXPLORE, LEARN, GROW. WE MAY MEET AGAIN, ON ANOTHER PLANE, IN A TIME FAR FROM NOW.~ */ GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #68381 /* ~"Response: Heard and acknowledged. Nordom now awaiting said day."~ */
  IF ~~ THEN REPLY #68382 /* ~HOLD ON TO YOUR LOGIC, NORDOM. YOU WILL FIND IT A GREATER SHIELD THAN MOST OF THE PASSIONS THAT RULE THE PLANES.~ */ GOTO 152
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #68383 /* ~"The issue no longer equals total logic."~ [NOR149] */
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68384 /* ~FAREWELL, NORDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68385 /* ~FAREWELL, NORDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68386 /* ~FAREWELL, NORDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68487 /* ~FAREWELL, NORDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68488 /* ~FAREWELL, NORDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68489 /* ~FAREWELL, NORDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Nordom","GLOBAL",4)
~ THEN BEGIN 153 // from:
  SAY #68414 /* ~"Awaiting Order."~ [NOR063] */
  IF ~~ THEN REPLY #68415 /* ~"Just keep pumping crossbow bolts into the branched thing, and we'll sort it out later..."~ */ EXIT
END
