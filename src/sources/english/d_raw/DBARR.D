// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2835 /* ~The guard looks at you with mingled fear and loathing, but he hastens to open the gates for you. He doesn't meet your eye as you pass by.~ */
  IF ~~ THEN REPLY #2836 /* ~"Top of the morning, lads!"~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #19865 /* ~The guard straightens up. "You gots what Pharod wanting, berk?"~ */
  IF ~~ THEN REPLY #19866 /* ~"Yes."~ */ GOTO 2
  IF ~~ THEN REPLY #19867 /* ~"Not yet."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19868 /* ~"Show it to me, berk, and I'll raise the gate. But not until, right?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #19869 /* ~Show it to him.~ */ GOTO 4
  IF ~~ THEN REPLY #19870 /* ~"All right, I don't have it. But I do have something you might be interested in."~ */ GOTO 5
  IF ~~ THEN REPLY #19871 /* ~"I don't think so. I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #19872 /* ~"If y'don't have it, why are you wasting my time?" The guard chortles to himself.~ */
  IF ~~ THEN REPLY #19873 /* ~"I don't have it, but I do have something you might be interested in..."~ */ GOTO 5
  IF ~~ THEN REPLY #19874 /* ~"All right. Farewell for now."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #19875 /* ~"Awright. Come on back in."~ */
  IF ~~ THEN REPLY #19876 /* ~"Thanks."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #19877 /* ~"Yeah? What might that be?"~ */
  IF ~~ THEN REPLY #19878 /* ~"Jink. How's one coin sound?"~ */ GOTO 7
  IF ~~ THEN REPLY #19879 /* ~"Jink. How'd you like ten coins?"~ */ GOTO 8
  IF ~~ THEN REPLY #19880 /* ~"Jink. How's twenty-five coppers sound?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19881 /* ~"Jink. How's fifty coppers sound?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19882 /* ~"Jink. How's fifty coppers sound?"~ */ GOTO 11
  IF ~~ THEN REPLY #19883 /* ~"Jink. How's one hundred coins sound?"~ */ GOTO 12
  IF ~~ THEN REPLY #19884 /* ~"Come to think of it, nothing."~ */ GOTO 6
  IF ~~ THEN REPLY #19885 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.6
  SAY #19886 /* ~"Then you ain't getting back in, berk." He spits at your feet.~ */
  IF ~~ THEN REPLY #19887 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #19888 /* ~He smiles crookedly. "Ye're practically insulting me, berk. Try again."~ */
  IF ~~ THEN REPLY #19889 /* ~"All right. How'd you like ten coins?"~ */ GOTO 8
  IF ~~ THEN REPLY #19890 /* ~"All right. How's twenty-five coins?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19892 /* ~"All right. How's fifty sound?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19893 /* ~"All right. How's fifty sound?"~ */ GOTO 11
  IF ~~ THEN REPLY #19895 /* ~"All right. How's one hundred sound?"~ */ GOTO 12
  IF ~~ THEN REPLY #19896 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #19899 /* ~"Don't think so..."~ */
  IF ~~ THEN REPLY #19900 /* ~"All right. How's twenty-five coins sound?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19901 /* ~"All right. How's fifty sound?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19902 /* ~"All right. How's fifty sound?"~ */ GOTO 11
  IF ~~ THEN REPLY #19903 /* ~"All right. How's one hundred sound?"~ */ GOTO 12
  IF ~~ THEN REPLY #19904 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 7.1 8.0
  SAY #19905 /* ~"You're getting warm, berk, but you ain't there yet."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19906 /* ~"All right. How's fifty sound?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19907 /* ~"All right. How's fifty sound?"~ */ GOTO 11
  IF ~~ THEN REPLY #19908 /* ~"All right. How's one hundred sound?"~ */ GOTO 12
  IF ~~ THEN REPLY #19909 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3 7.2 8.1 9.0 25.1
  SAY #19910 /* ~A smile wreathes his ugly face. "That's good enough. Pass it through, and I'll open the gate."~ */
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19911 /* ~"I don't seem to have enough."~ */ GOTO 14
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19912 /* ~Give fifty coins. "Here you go. You'll find it's all there."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19913 /* ~Give forty coins: "Here you go. You'll find it's all there."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19914 /* ~Have him reach for it: "Grab it and it's yours."~ */ GOTO 15
  IF ~~ THEN REPLY #19915 /* ~"Forget it. I'm headed back to the catacombs."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.4 7.3 8.2 9.1
  SAY #19916 /* ~He calculates, and then replies, "No. You want in, you got to come up with more than that."~ */
  IF ~~ THEN REPLY #19917 /* ~"All right, then. How's one hundred sound?"~ */ GOTO 12
  IF ~~ THEN REPLY #19918 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.5 7.4 8.3 9.2 11.0 26.1
  SAY #19919 /* ~"That'll do. That'll do nicely. Pass it through and I'll open the gate."~ */
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19920 /* ~"I don't seem to have enough."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19921 /* ~Give one hundred coins. "Here you go. You'll find it's all there."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19922 /* ~Give ninety coins. "Here you go. You'll find it's all there."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19923 /* ~Have him reach for it: "Grab it and it's yours."~ */ GOTO 16
  IF ~~ THEN REPLY #19924 /* ~"Forget it. I'm headed back to the catacombs."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 10.2 12.1 12.2 15.4 15.5 16.5 16.6
  SAY #19925 /* ~He hefts it, coins spilling through his fingers, and says, "Feels like enough." He opens the gate.~ */
  IF ~~ THEN REPLY #19926 /* ~"Farewell, for now."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 12.0 15.6 16.4 21.0 25.0 26.0
  SAY #19927 /* ~"That's too bad. I'll see you when you do. You ain't getting through till then, though." He turns away.~ */
  IF ~~ THEN REPLY #19928 /* ~"All right, then..."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #19929 /* ~He reaches through the gate for the coins you hold out.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19930 /* ~Grab his arm and pin it.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19931 /* ~Grab his arm and pin it.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19932 /* ~Grab his arm and pin it.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19933 /* ~Grab his arm and pin it.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19934 /* ~Give fifty coins. "Here you go. You'll find it's all there."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19935 /* ~Give forty coins. "Here you go. You'll find it's all there."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19936 /* ~"I don't seem to have enough."~ */ GOTO 14
  IF ~~ THEN REPLY #19937 /* ~"Forget it. I'm going back down."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #19938 /* ~He reaches through the gate for the coins you hold out.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19939 /* ~Grab his arm and pin it.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19940 /* ~Grab his arm and pin it.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19941 /* ~Grab his arm and pin it.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19942 /* ~Grab his arm and pin it.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19943 /* ~"I don't seem to have enough."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19944 /* ~Give one hundred coins. "Here you go. You'll find it's all there."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19945 /* ~Give ninety coins. "Here you go. You'll find it's all there."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19946 /* ~"Forget it. I'm headed back to the catacombs."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 16.0
  SAY #19947 /* ~You deftly pin his arm back against the gate and wrench it. The guard screams in agony as his arm creaks in its socket.~ */
  IF ~~ THEN REPLY #19948 /* ~"Let me in or I'll break it off!"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19949 /* ~Let him go. "Now let me in or I'll tear you to pieces. We'll have no more of your games."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 15.1 15.2 16.1 16.2
  SAY #19950 /* ~As he reaches for the coins, you grab his arm. He tries to struggle out of your grasp, but you finally manage to pin it up against the gate and wrench it around. He gasps in pain.~ */
  IF ~~ THEN REPLY #19951 /* ~"Let me in or I'll break it off!"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19952 /* ~Let him go. "Now let me in or I'll tear you to pieces. We'll have no more of your games."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 15.3 16.3
  SAY #6783 /* ~As he reaches for the coins, you try to grab his arm. He yanks his arm back inside the gate quickly, and roars, "You'll pay double for that, scum! Get out of my sight!" He turns away from you.~ */
  IF ~~ THEN REPLY #6844 /* ~"Farewell, then..."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.1 18.0 18.1
  SAY #19953 /* ~He hastens to open the gate before you make good on your threat, and stands far out of your reach as you pass through the gate.~ */
  IF ~~ THEN REPLY #19954 /* ~"You ever cross me again, and they'll be picking your limbs out of three different crypts. Understood? Good."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19955 /* ~"Learned our lesson, have we? Let's see a little more respect next time. Farewell."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  Global("No_Pin","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #19956 /* ~The guard stares at you menacingly. "It'll cost you two hundred to get through here, berk. And no funny business, either!"~ */
  IF ~~ THEN REPLY #19957 /* ~"I don't have that much."~ */ GOTO 14
  IF ~  PartyGoldGT(199)
~ THEN REPLY #19958 /* ~"All right. Here you go."~ */ DO ~TakePartyGold(200)
~ GOTO 22
  IF ~~ THEN REPLY #19959 /* ~"Forget it, then."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #19960 /* ~He takes the money and counts it carefully. When he's finally satisfied that you haven't cheated him of even one coin, he opens the gate for you. "Don't forget, berk... it'll cost the same to come back through!"~ */
  IF ~~ THEN REPLY #19961 /* ~"Yeah, whatever."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19962 /* ~"I'll have more than I need, I'm sure."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
!Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #19963 /* ~The guard straightens slightly. "You got the money to pay the toll?"~ */
  IF ~~ THEN REPLY #19965 /* ~"Toll? How much?"~ */ GOTO 25
  IF ~~ THEN REPLY #19966 /* ~"I didn't know there was a toll."~ */ GOTO 24
  IF ~~ THEN REPLY #19967 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #19964 /* ~"Lots of folks don't. But there is."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19968 /* ~"How much is it?"~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19969 /* ~"How much is it?"~ */ GOTO 26
  IF ~~ THEN REPLY #19970 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #19971 /* ~"For you? Fifty coins."~ */
  IF ~~ THEN REPLY #19972 /* ~"Fifty? I don't know if I feel like paying that much."~ */ GOTO 14
  IF ~~ THEN REPLY #19973 /* ~"I suppose I can do that."~ */ GOTO 10
  IF ~~ THEN REPLY #19974 /* ~"Forget it, then."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #19975 /* ~"For you? A hundred coins."~ */
  IF ~~ THEN REPLY #19976 /* ~"A hundred? I don't know if I feel like paying that much."~ */ GOTO 14
  IF ~~ THEN REPLY #19977 /* ~"I suppose I can do that."~ */ GOTO 12
  IF ~~ THEN REPLY #19978 /* ~"Forget it, then."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 30.2 31.0 32.1 33.0 34.0 35.0 37.0 38.0
  SAY #19979 /* ~"What d'ya want this time?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19980 /* ~"Pharod gave me his leave to go down to the catacombs. I need you to open the gate."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19981 /* ~"What lies beyond the gate?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19982 /* ~"What lies beyond the gate?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19983 /* ~"Can you open the gate for me again?"~ */ GOTO 36
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19984 /* ~"What can you tell me of the area beyond?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19985 /* ~"I'd like to go down there."~ */ GOTO 35
  IF ~~ THEN REPLY #19986 /* ~"Who are you?"~ */ GOTO 37
  IF ~~ THEN REPLY #19987 /* ~"What are you doing?"~ */ GOTO 38
  IF ~~ THEN REPLY #19988 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 28 // from:
  SAY #19989 /* ~You see a massive human, dressed in castoff, patchwork clothing and reeking of old ale. He is truly huge - it's obvious he was chosen for this job for his brawn, not his brains. "What d'ya want?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19990 /* ~"Pharod gave me his leave to go down to the catacombs. I need you to open the gate."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19991 /* ~"What lies beyond the gate?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19992 /* ~"What lies beyond the gate?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19993 /* ~"What can you tell me of the area beyond?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19994 /* ~"I'd like to go down there."~ */ GOTO 35
  IF ~~ THEN REPLY #19995 /* ~"Who are you?"~ */ GOTO 37
  IF ~~ THEN REPLY #19996 /* ~"What are you doing?"~ */ GOTO 38
  IF ~~ THEN REPLY #19997 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #19998 /* ~He swings open the gates. "Then get goin', berk, and don't waste our time."~ */
  IF ~~ THEN REPLY #19999 /* ~"Farewell."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 27.4 28.1 28.3
  SAY #20000 /* ~"The Weeping Stone Catacombs. Lotsa deaders, lot of crypts to loot."~ */
  IF ~~ THEN REPLY #20001 /* ~"Why do they call it the Weeping Stone Catacombs?"~ */ GOTO 31
  IF ~~ THEN REPLY #20002 /* ~"Can you give me any specifics?"~ */ GOTO 32
  IF ~~ THEN REPLY #20003 /* ~"Thanks. I had some other questions..."~ */ GOTO 27
  IF ~~ THEN REPLY #20004 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #20005 /* ~"Lot of water drips down from above, make it look like the walls are crying. Name follows."~ */
  IF ~~ THEN REPLY #20006 /* ~"Got it. Can you answer some more questions for me?"~ */ GOTO 27
  IF ~~ THEN REPLY #20007 /* ~"Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #20008 /* ~"Not much. Went down there myself only once or twice... mostly it's others that go trolling for corpses down there. Gris is the one who did most of the looting, and we figure he's been caught by something down there and penned in the dead-book."~ */
  IF ~~ THEN REPLY #20009 /* ~"Gris?"~ */ GOTO 33
  IF ~~ THEN REPLY #20010 /* ~"I see. I had some other questions..."~ */ GOTO 27
  IF ~~ THEN REPLY #20011 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #20012 /* ~"Yeah, 'Gris the Vulture.' He and two of the boys went down there a few peaks ago, not been seen since. If you find his body, bring it on back." He smiles at you like a jackal. "We can sell it to the Dusties for some jink."~ */
  IF ~~ THEN REPLY #20013 /* ~"Ha. I had some other questions..."~ */ GOTO 27
  IF ~~ THEN REPLY #20014 /* ~"Right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.2 28.2
  SAY #20015 /* ~The guard looks at you for a moment, and sneers. "Yer mother's bedchambers. We gots to keep the gate down cause the traffic was getting to be too much, y'know?" He roars with laughter. "Pike off before you join the deaders down below."~ */
  IF ~~ THEN REPLY #20016 /* ~"Just answer some more questions for me..."~ */ GOTO 27
  IF ~~ THEN REPLY #20017 /* ~"All right."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.5 28.4
  SAY #20018 /* ~The guard glances at you, then shakes his head. "Yeah, yeah... we're all just begging to go down there. Look. You definitely ain't from around here. Pike off."~ */
  IF ~~ THEN REPLY #20019 /* ~"Then just answer some questions for me..."~ */ GOTO 27
  IF ~~ THEN REPLY #20020 /* ~"Fine."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 27.3
  SAY #20021 /* ~He looks at you and swings the gates open without a word.~ */
  IF ~~ THEN REPLY #20022 /* ~"Farewell."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 27.6 28.5
  SAY #20023 /* ~"None of your damned business, frankly. Pike off."~ */
  IF ~~ THEN REPLY #20024 /* ~"Answer a question or two, first..."~ */ GOTO 27
  IF ~~ THEN REPLY #20025 /* ~"Thanks... friend."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 27.7 28.6
  SAY #20026 /* ~"What does it look like I'm doing, washing your underclothes? Get out of here, y'stupid berk!"~ */
  IF ~~ THEN REPLY #20027 /* ~"Just one more question..."~ */ GOTO 27
  IF ~~ THEN REPLY #20028 /* ~"Whatever."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Open_Door","AR0109",0)
~ THEN BEGIN 39 // from:
  SAY #56027 /* ~"The gate's not locked right now, so there's no need to bother me."~ */
  IF ~~ THEN REPLY #56028 /* ~Leave.~ */ EXIT
END
