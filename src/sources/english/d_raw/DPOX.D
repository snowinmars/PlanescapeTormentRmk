// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOX~

IF ~  Global("Pox","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #8004 /* ~This cowled figure is hunched by the Mortuary gate. His face is obscured by the shadows of his hood... what little you can see is his chin, which is covered with stubble and what appears to be a foul green and purple rash. The rash seems heaviest around his neck, fading as it crawls up to his chin.~ */
  IF ~~ THEN REPLY #8005 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #8037 /* ~Leave the figure alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #8006 /* ~The figure doesn't budge... there is a moment of silence, then he responds in a high-pitched voice that sounds more suited to a girl of ten years than a man. "Hai?"~ */
  IF ~~ THEN REPLY #8038 /* ~"Who are you?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #8039 /* ~Leave him alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.1 5.2 6.3 7.2 8.2 9.1 10.0 11.0 12.5 13.1 14.2 15.2 16.1 17.1 18.1 19.1 20.3 22.2 23.0 24.2 25.1 26.1 27.1 28.1 29.2 30.0 31.3
  SAY #8007 /* ~"Hai?"~ */
  IF ~  Global("Pox","GLOBAL",0)
~ THEN REPLY #8040 /* ~"Who are you?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8041 /* ~"How did you get a name like Pox?"~ */ GOTO 10
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8042 /* ~"What are you doing?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8043 /* ~"Do you know someone named Pharod?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8044 /* ~"I've lost a journal... you wouldn't happen to have seen one, would you?"~ */ GOTO 23
  IF ~  Global("Pox_Smuggle","GLOBAL",1)
~ THEN REPLY #8045 /* ~"Can you smuggle me into the Mortuary?"~ */ GOTO 31
  IF ~  GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8046 /* ~"If I pretend to be a deader, can you sneak me in?"~ */ GOTO 12
  IF ~~ THEN REPLY #8047 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #8008 /* ~"Pox am I, hai."~ */
  IF ~~ THEN REPLY #8048 /* ~"Uh... Pox?"~ */ GOTO 10
  IF ~~ THEN REPLY #8049 /* ~"What are you doing?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8050 /* ~"Do you know someone named Pharod?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8051 /* ~"I've lost a journal... you wouldn't happen to have seen one, would you?"~ */ GOTO 23
  IF ~~ THEN REPLY #8052 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #8009 /* ~"Wait for deaders, do I, hai."~ */
  IF ~~ THEN REPLY #8053 /* ~"'Deaders'? Corpses? Why?"~ */ GOTO 5
  IF ~~ THEN REPLY #8054 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8055 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #8010 /* ~"Find a deader, take him through the gate, get some jink, then again I wait, hai."~ */
  IF ~~ THEN REPLY #8056 /* ~"Through the gate? Why?"~ */ GOTO 6
  IF ~~ THEN REPLY #8057 /* ~"Is the front gate the only way inside the Mortuary?"~ */ GOTO 31
  IF ~~ THEN REPLY #8058 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8059 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #8011 /* ~"A deader's to a Dust-man what copper's to a Collector, bring them the dead, they give you copper at the gate, they do, hai."~ */
  IF ~~ THEN REPLY #8060 /* ~"Why do the Dustmen pay for the dead?"~ */ GOTO 7
  IF ~~ THEN REPLY #8061 /* ~"Collector? What's that?"~ */ GOTO 22
  IF ~~ THEN REPLY #8062 /* ~"Is the front gate the only way inside the Mortuary?"~ */ GOTO 31
  IF ~~ THEN REPLY #8063 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8064 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 22.0
  SAY #8012 /* ~"Streets clean, deaders put in their place, streets don't stink, dead aren't lost, kept inside gate, all happy, hai."~ */
  IF ~~ THEN REPLY #8065 /* ~"What do the Dustmen *do* with these deaders they buy?"~ */ GOTO 8
  IF ~~ THEN REPLY #8066 /* ~"Is the front gate the only way inside the Mortuary?"~ */ GOTO 31
  IF ~~ THEN REPLY #8067 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8068 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #8013 /* ~"Haul deaders inside gate, put them on slabs, cut them up, bury them, or make them walk, hai."~ */
  IF ~~ THEN REPLY #8069 /* ~"Make them walk?"~ */ GOTO 9
  IF ~~ THEN REPLY #8070 /* ~"Is the front gate the only way inside the Mortuary?"~ */ GOTO 31
  IF ~~ THEN REPLY #8071 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8072 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #8014 /* ~"Hai, they make some get back up, if the deader gives the Dustmen leave to, and the deader become a skels or a zoms."~ */
  IF ~~ THEN REPLY #8073 /* ~"Is the front gate the only way inside the Mortuary?"~ */ GOTO 31
  IF ~~ THEN REPLY #8074 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8075 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.0
  SAY #8015 /* ~"Mother and father named me, wished a pox-on-first-born, a curse given, came true, it did, hai." Again your eyes are drawn to the purplish-green rash covering Pox's chin and neck. ~ */
  IF ~~ THEN REPLY #8076 /* ~"Oh... I had some more questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #8077 /* ~"That's all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #8016 /* ~You see Pox hunched by the Mortuary gate. He... she... doesn't seem to have moved since the last time you spoke.~ */
  IF ~~ THEN REPLY #8078 /* ~"Pox, I had some more questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #8079 /* ~Leave Pox alone.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6 20.2 31.2
  SAY #8017 /* ~"Let Pox see you play deader. You play deader good, Pox get you in, hai." ~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #8080 /* ~Pretend to be dead...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8081 /* ~Pretend to be dead...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  False()
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8082 /* ~Pretend to be dead...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8083 /* ~Pretend to be dead...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~  False()
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8084 /* ~Pretend to be dead...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~~ THEN REPLY #8085 /* ~"Not now. I had some other questions first..."~ */ GOTO 2
  IF ~~ THEN REPLY #8086 /* ~"Never mind, maybe some other time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #8018 /* ~Pox watches your performance without a sound. When you get back up, he speaks. "Dustmen not believe you deader. Always check to see if deader is deader, and if deader breathing, they won't take. Bad dealings, hai."~ */
  IF ~~ THEN REPLY #8087 /* ~"What if I was really dead? Can you gut me and sell my body?"~ */ GOTO 15
  IF ~~ THEN REPLY #8088 /* ~"That's a problem. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8089 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 12.2 12.3 12.4
  SAY #8019 /* ~Pox watches your performance without a sound. When you get back up, he speaks. "Hai, Pox sell you. You want to be sold now?"~ */
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",2)
~ THEN REPLY #8090 /* ~"Yes."~ */ DO ~TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",1)
~ THEN REPLY #8091 /* ~"Yes."~ */ DO ~AddexperienceParty(500)
TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~~ THEN REPLY #8094 /* ~"No, not yet. I had some other questions, first."~ */ GOTO 2
  IF ~~ THEN REPLY #8095 /* ~"Maybe some other time, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #8020 /* ~The question doesn't seem to faze Pox. "Hai, I will, like last time, hai?"~ */
  IF ~~ THEN REPLY #8096 /* ~"Yes."~ */ GOTO 21
  IF ~~ THEN REPLY #8097 /* ~"Uh... 'last time'?"~ */ GOTO 16
  IF ~~ THEN REPLY #8098 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8099 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 31.0
  SAY #8021 /* ~"Hai. Many time you ask, Pox always do."~ */
  IF ~~ THEN REPLY #8100 /* ~"Uh... how many times, exactly?"~ */ GOTO 17
  IF ~~ THEN REPLY #8101 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8102 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #8022 /* ~"Many time, hai."~ */
  IF ~~ THEN REPLY #8103 /* ~"So... we've met before?"~ */ GOTO 18
  IF ~~ THEN REPLY #8104 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8105 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #8023 /* ~"Hai."~ */
  IF ~~ THEN REPLY #8106 /* ~"What do you know about me?"~ */ GOTO 19
  IF ~~ THEN REPLY #8107 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8108 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8024 /* ~"You a deader who don't stay deader for long, hai. Deal square with Pox, you do."~ */
  IF ~~ THEN REPLY #8109 /* ~"Do you know anything else about me?"~ */ GOTO 20
  IF ~~ THEN REPLY #8110 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8111 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 20.0
  SAY #8025 /* ~"You a deader who don't stay deader for long, hai. Deal square with Pox, you do." ~ */
  IF ~~ THEN REPLY #8112 /* ~"Uh... do you know anything else besides that?"~ */ GOTO 20
  IF ~~ THEN REPLY #8113 /* ~"Kill me, then. I want to get inside the Mortuary."~ */ GOTO 21
  IF ~~ THEN REPLY #8114 /* ~"Uh, all right then. How about I just pretend to be dead and you sneak me in?"~ */ GOTO 12
  IF ~~ THEN REPLY #8115 /* ~"Hmmm. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8116 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.0 20.1 31.1
  SAY #8026 /* ~Pox unpeels his arms from his robes, revealing a rusted dagger in each of his rash-splotched hands. With a blur, the blades cut two lines across your throat, and your vision fades to black...~ */
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",0)
~ THEN REPLY #8117 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",1)
~ THEN REPLY #8118 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 6.1
  SAY #8027 /* ~"Hai, Collector. Gather deaders, bring them to Dustmen at the gate for jink."~ */
  IF ~~ THEN REPLY #8119 /* ~"What do the Dustmen want with dead people... these deaders?"~ */ GOTO 7
  IF ~~ THEN REPLY #8120 /* ~"Is the front gate the only way inside the Mortuary?"~ */ GOTO 31
  IF ~~ THEN REPLY #8121 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8122 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.4 3.3
  SAY #8028 /* ~"Hai, no jurn-el have I seen. Things get lost in the Hive, never found again, maybe jurn-el one of them, hai."~ */
  IF ~~ THEN REPLY #8123 /* ~"I see. Say, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8124 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3 3.2
  SAY #8029 /* ~"Hai, Pharod. Collector, big, name has weight, casts long shadow, it does, hai."~ */
  IF ~~ THEN REPLY #8125 /* ~"Collector?"~ */ GOTO 25
  IF ~~ THEN REPLY #8126 /* ~"Do you know where I might find him?"~ */ GOTO 26
  IF ~~ THEN REPLY #8127 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8128 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #8030 /* ~"Hai, Collector. Gather deaders, bring them to Dustmen for jink."~ */
  IF ~~ THEN REPLY #8129 /* ~"Do you know where I might find him?"~ */ GOTO 26
  IF ~~ THEN REPLY #8130 /* ~"Oh. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8131 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #8031 /* ~"Hai, in the Hive here, he is. Someswheres, hai."~ */
  IF ~~ THEN REPLY #8132 /* ~"Can you be more specific?"~ */ GOTO 27
  IF ~~ THEN REPLY #8133 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8134 /* ~"I'll just try and track him down then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #8032 /* ~"Hai, someswheres in the Hive, he is. Pharod hide, he does. Very hard finding, he is. Not worth finding, he is."~ */
  IF ~~ THEN REPLY #8135 /* ~"'Not worth finding'? What do you mean?"~ */ GOTO 28
  IF ~~ THEN REPLY #8136 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8137 /* ~"I'll find him on my own then, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #8033 /* ~"Hai, many hates him, other Collectors, even. Sharegrave hates him, not like Pharod at all, hai."~ */
  IF ~~ THEN REPLY #8138 /* ~"Sharegrave?"~ */ GOTO 29
  IF ~~ THEN REPLY #8139 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8140 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8034 /* ~"Hai, Sharegrave big name, carry weight, casts long shadow, he does. Tell Pox what to do, he does."~ */
  IF ~  Global("Pox","GLOBAL",2)
~ THEN REPLY #8141 /* ~"Would your boss... this Sharegrave... know where Pharod is?"~ */ JOURNAL #66542 /* ~I met a diseased Collector named "Pox" outside the Mortuary Gate. Pox knew Pharod, but he didn't know where Pharod could be found... he told me to go find a man named "Sharegrave" in Ragpicker's Square, a city block a few blocks west of the Mortuary. He said Sharegrave hated Pharod and would know where Pharod could be found. ~ */ GOTO 30
  IF ~  GlobalLT("Pox","GLOBAL",2)
~ THEN REPLY #8142 /* ~"Would your boss... this Sharegrave... know where Pharod is?"~ */ DO ~SetGlobal("Pox","GLOBAL",2)
~ JOURNAL #66542 /* ~I met a diseased Collector named "Pox" outside the Mortuary Gate. Pox knew Pharod, but he didn't know where Pharod could be found... he told me to go find a man named "Sharegrave" in Ragpicker's Square, a city block a few blocks west of the Mortuary. He said Sharegrave hated Pharod and would know where Pharod could be found. ~ */ GOTO 30
  IF ~~ THEN REPLY #8143 /* ~"Hmmm. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8144 /* ~"That was all I wanted to know, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #8035 /* ~"Hai, Sharegrave knows darks, he does. Know Pharod-a-hiding, he does. Sharegrave in Ragpicker Square, many blocks west-o-here, hai. Say Sharegrave that Pox send you, tell him, Sharegrave become Sharecopper-with-Pox he will, hai."~ */
  IF ~~ THEN REPLY #8145 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #8146 /* ~"Ragpicker's Square, west of here? All right, I'll go look for this Sharegrave there, then."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5 5.1 6.2 7.1 8.1 9.0 22.1
  SAY #8036 /* ~"Hai, only deader or Dustmen go in gate, they do. You want Pox make you deader again?"~ */
  IF ~~ THEN REPLY #8147 /* ~"Uh... again?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #8148 /* ~"Yes, make me a deader. I need to get in the Mortuary."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #8149 /* ~"How about I pretend to be dead instead? Could you smuggle me in like that?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #8150 /* ~"No, no... I had some other questions..."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #8151 /* ~"Maybe some other time, thanks. Farewell."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ EXIT
END
