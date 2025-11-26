// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARGRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARGRI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 9 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2927 /* ~This skeleton wears what appear to be ancient priest's robes, heavy and ornate. It carries a large, impressive stave, which is capped with intricately carved horns, dangling pendants, and a gilded skull.~ */
  IF ~~ THEN REPLY #2928 /* ~"Greetings..."~ */ DO ~SetGlobal("Hargrimm","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21040 /* ~Leave the 'skeleton priest' alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21041 /* ~The skeleton, its eyes aglow like two burning embers, looks you over... but makes no reply.~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21042 /* ~"Are you the Silent King?"~ */ GOTO 4
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
~ THEN REPLY #21043 /* ~"Are you Hargrimm?"~ */ GOTO 2
  IF ~~ THEN REPLY #21044 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21045 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #21046 /* ~It nods solemnly, the pendants suspended from its stave tinkling softly. There is something disquieting about its silent, piercing gaze.~ */
  IF ~~ THEN REPLY #21047 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21048 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 4.2 5.5 6.4 9.0 10.5 11.1 12.3 13.2 14.1 15.1 16.3 17.3 18.2 19.4 20.2 21.3 22.3 23.6 24.2 25.2 26.4 27.1 28.1 30.3 31.3 32.2 33.1 35.2 36.2 37.1 39.0 40.4 41.3 43.5 44.3 45.1 46.0 47.2 50.2 51.5 52.4 53.5 54.4 55.5 56.4 57.3 58.2 59.8 60.7 63.7 71.0 72.2 73.1 105.3 106.0 107.1
  SAY #21049 /* ~It motions for you to proceed.~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21050 /* ~"Did you know Soego's a cranium rat spy?"~ */ GOTO 40
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #21051 /* ~"I found and killed a group of cranium rats in the rubble of an old passageway."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ JOURNAL #21107 /* ~I told Hargrimm how I found several cranium rats within the Dead Nations, and killed them. He gave me his thanks, but nothing more.~ */ GOTO 47
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #21052 /* ~"May I speak with the Silent King?"~ */ GOTO 5
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21053 /* ~"Why have I been made a prisoner?"~ */ GOTO 12
  IF ~~ THEN REPLY #21054 /* ~"Where am I?"~ */ GOTO 15
  IF ~~ THEN REPLY #21102 /* ~"What are you doing here?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #21103 /* ~"Who inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21104 /* ~"Let me ask you of someone in particular..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21105 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 33
  IF ~  NumInParty(1)
~ THEN REPLY #68093 /* ~"Could I rest here?"~ */ GOTO 107
  IF ~  NumInParty(1)
~ THEN REPLY #68094 /* ~"I'm in need of healing - could you help me?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68095 /* ~"Could we rest here?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68096 /* ~"We're in need of healing - could you help us?"~ */ GOTO 107
  IF ~~ THEN REPLY #21106 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #21108 /* ~It shakes its head, turning with an eerie grace and pointing eastwards. It then turns to you once more.~ */
  IF ~~ THEN REPLY #21109 /* ~"Are you Hargrimm?"~ */ GOTO 2
  IF ~~ THEN REPLY #21110 /* ~"May I speak with him?"~ */ GOTO 5
  IF ~~ THEN REPLY #21111 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21112 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 14.0 25.0
  SAY #21113 /* ~It holds up a bony palm. With a creaking groan and a puff of dust, its jaws open to speak: "No." Its voice, deep and resonant, echoes for a long while in the vaulted chamber.~ */
  IF ~~ THEN REPLY #21114 /* ~"But why not?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21115 /* ~"But I need his permission to leave."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21116 /* ~"But I need his permission to leave."~ */ GOTO 10
  IF ~~ THEN REPLY #21117 /* ~Truth: "Let me see him, or I'll shatter the lot of you into dusty shards."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21118 /* ~Bluff: "Let me see him, or I'll shatter the lot of you into dusty shards."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21119 /* ~"I had some questions, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #21120 /* ~"I'll take my leave, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21121 /* ~Its voice booms throughout the chamber: "No living creature may pass the doors that lead to his throne room; nor would I allow thee an audience even if such a thing were possible. Thou shall *not* see him."~ */
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21122 /* ~"But I need his permission to leave."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21123 /* ~"But I need his permission to leave."~ */ GOTO 10
  IF ~~ THEN REPLY #21124 /* ~Truth: "Let me see him, or I'll shatter the lot of you into dusty shards."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21125 /* ~Bluff: "Let me see him, or I'll shatter the lot of you into dusty shards."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21126 /* ~"I had some questions, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #21127 /* ~"I'll take my leave, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0 47.0
  SAY #21128 /* ~"I shall carry thy request to the Silent King."~ */
  IF ~~ THEN REPLY #21129 /* ~"Thanks..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21130 /* ~"The Silent King has spoken. Thou are free to go. Thy way shall no longer be barred."~ */
  IF ~~ THEN REPLY #21131 /* ~"Thanks. Farewell."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #21132 /* ~Hargrimm spoke to the Silent King on my behalf, and I have been released from my imprisonment within the Dead Nations.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #21133 /* ~Hargrimm acknowledges your presence by nodding quietly in your direction.~ */
  IF ~~ THEN REPLY #21134 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21135 /* ~"Just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 6.1 47.1
  SAY #21136 /* ~It holds up its palm. "No. By the power of the Silent King, thou shall not leave this place."~ */
  IF ~  Global("DN_Reason","AR1500",1)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21137 /* ~"What can I do to convince you?"~ */ GOTO 43
  IF ~  Global("DN_Reason","AR1500",0)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21138 /* ~"What can I do to convince you?"~ */ GOTO 59
  IF ~  Global("DN_Rats","AR1500",3)
~ THEN REPLY #67809 /* ~"But... what *else* can I do to convince you?"~ */ DO ~SetGlobal("Soego_Quest","GLOBAL",1)
~ JOURNAL #67810 /* ~I asked Hargrimm what else I could do to convince him to set me free. He asked that I find some way to allow him to remove Soego from the Dead Nations, and that then he would speak to the Silent King on my behalf.~ */ GOTO 105
  IF ~~ THEN REPLY #21139 /* ~Truth: "Let me see him, or I'll shatter the lot of you into dusty shards."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21140 /* ~Bluff: "Let me see him, or I'll shatter the lot of you into dusty shards."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21141 /* ~"I had some questions, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #21142 /* ~"I'll take my leave, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 5.4 6.2 6.3 10.3 10.4
  SAY #21143 /* ~Its voice booms throughout the chamber: "THOU SHALL DO *NOTHING* OF THE SORT." Dust falls from the ceiling, and your ears buzz from the sound. Even as you recover, a nimbus of power begins to form around it. It makes no move to attack, however.~ */
  IF ~~ THEN REPLY #21144 /* ~Attack him.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21145 /* ~"I had some questions, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #21146 /* ~"I'll take my leave, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 107.0
  SAY #21147 /* ~"'Tis the will of the Silent King. The Living who are caught here are made to languish in his halls until they join the quiet ones."~ */
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21150 /* ~"Could he be convinced to allow otherwise?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm told me that there was a chance the Silent King could be persuaded to release me. If I could only meet with him, somehow...~ */ GOTO 14
  IF ~~ THEN REPLY #21148 /* ~"Tell me of the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #21149 /* ~"Quiet ones?"~ */ GOTO 13
  IF ~~ THEN REPLY #21151 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21152 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #21154 /* ~"The true dead. Those who have no voice, and do naught but sleep eternally. May the Silent King watch over them!"~ */
  IF ~~ THEN REPLY #21155 /* ~"Tell me of the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21156 /* ~"Could the Silent King be convinced to free me?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm told me that there was a chance the Silent King could be persuaded to release me. If I could only meet with him, somehow...~ */ GOTO 14
  IF ~~ THEN REPLY #21157 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21158 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.1
  SAY #21159 /* ~After a short silence, its jaws creak open: "'Tis doubtful, but perhaps. Mysterious are the ways of Silent King."~ */
  IF ~~ THEN REPLY #21160 /* ~"May I speak with him?"~ */ GOTO 5
  IF ~~ THEN REPLY #21161 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21162 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4
  SAY #21163 /* ~It gestures all around itself. "Within the borders of the Dead Nations, the halls of the Silent King."~ */
  IF ~~ THEN REPLY #21164 /* ~"Tell me of the Silent King."~ */ GOTO 24
  IF ~~ THEN REPLY #21165 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21166 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.5 23.0
  SAY #21167 /* ~It indicates its stave and robes. "I am called Hargrimm. I am the high priest of the citizens here. I spread the word of the Silent King to his followers."~ */
  IF ~~ THEN REPLY #21168 /* ~"How did you come to be here?"~ */ GOTO 57
  IF ~~ THEN REPLY #21169 /* ~"His followers? Who else is here?"~ */ GOTO 17
  IF ~~ THEN REPLY #21170 /* ~"Tell me about the Silent King."~ */ GOTO 24
  IF ~~ THEN REPLY #21171 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21173 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.6 16.1 18.1 19.3 20.1 21.2 22.2 50.1 51.4 52.3 53.4 54.3 55.4 56.3 57.1 58.0 72.1
  SAY #21172 /* ~"We, the skeletons. Other undead - zombies, and ghouls. There were once shadows, but they have long since fled. Sometimes, one of Living spends the last of its days here. Also, far to the east live many cranium rats."~ */
  IF ~~ THEN REPLY #21174 /* ~"Tell me of your kind."~ */ GOTO 18
  IF ~~ THEN REPLY #21175 /* ~"Tell me of the other undead."~ */ GOTO 19
  IF ~~ THEN REPLY #21176 /* ~"Tell me of the rats."~ */ GOTO 22
  IF ~~ THEN REPLY #21177 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21178 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #21179 /* ~"We tend to the quiet ones, the true dead, and obey the word of the Silent King. Our work here has gone on for centuries."~ */
  IF ~~ THEN REPLY #21180 /* ~"Tell me about the Silent King."~ */ GOTO 24
  IF ~~ THEN REPLY #21181 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21182 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21183 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #21184 /* ~It breathes out its reply in a cloud of stale dust: "Who?"~ */
  IF ~~ THEN REPLY #21185 /* ~"The zombies."~ */ GOTO 20
  IF ~~ THEN REPLY #21186 /* ~"The ghouls."~ */ GOTO 21
  IF ~~ THEN REPLY #21187 /* ~"What of the shadows?"~ */ GOTO 50
  IF ~~ THEN REPLY #21188 /* ~"Never mind. Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21189 /* ~"Never mind. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21190 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.2
  SAY #21191 /* ~"They serve the Silent King and the Dead Nations as laborers. They work beneath the guidance of Stale Mary, the most intelligent and wisest amongst them."~ */
  IF ~~ THEN REPLY #21192 /* ~"Tell me about Stale Mary."~ */ GOTO 26
  IF ~~ THEN REPLY #21193 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21194 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21195 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 22.1 32.0
  SAY #21196 /* ~"I do not trust them or their matriarch, Acaste. They watch us with hungry eyes, and would doubtless devour us all if our numbers and the word of the Silent King were not a shield against them." It pauses, as if thinking.~ */
  IF ~~ THEN REPLY #21197 /* ~"Go on..."~ */ JOURNAL #21202 /* ~Hargrimm told me he is concerned about Acaste. He feels that it is only the combined numbers of the skeletons and zombies, as well as fear of the Silent King, that keeps Acaste and her ghouls from slaying and eating everything in the catacombs.~ */ GOTO 72
  IF ~~ THEN REPLY #21198 /* ~"Tell me about Acaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21199 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21200 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21201 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.2 45.0
  SAY #21203 /* ~"They are hive-brained vermin who once came here in great numbers, feeding upon the corpses in our care. The ghouls have, for the most part, driven them back - they no longer leave their warrens to the east of here."~ */
  IF ~~ THEN REPLY #21204 /* ~"Do they have any weaknesses?"~ */ JOURNAL #21209 /* ~Hargrimm told me that, in order to better fight the cranium rats, I should seek out and destroy as many smaller concentrations of them as possible. That way, the larger groups would have less rats - and thus, less power - to call upon in battle.~ */ GOTO 46
  IF ~~ THEN REPLY #21205 /* ~"Tell me about the ghouls."~ */ GOTO 21
  IF ~~ THEN REPLY #21206 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21207 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21208 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.7 24.1 25.1 26.3 27.0 28.0 30.2 31.2 32.1
  SAY #21210 /* ~It breathes out its reply in a cloud of stale dust: "Who?"~ */
  IF ~~ THEN REPLY #21211 /* ~"Tell me of yourself."~ */ GOTO 16
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21212 /* ~"Tell me about the Silent King."~ */ GOTO 24
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21213 /* ~"Tell me about Stale Mary."~ */ GOTO 26
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21214 /* ~"Tell me about Soego."~ */ GOTO 29
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",1)
~ THEN REPLY #21215 /* ~"Tell me about Soego."~ */ GOTO 28
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #21216 /* ~"Tell me about Acaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21217 /* ~"Never mind. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21218 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1 13.0 15.0 16.2 18.0 23.1 31.1 57.2 58.1
  SAY #21219 /* ~"Our lord and vision, he who makes the law and protects us. Thou would do well to start no trouble here, stranger, for the Silent King's eye is everywhere and his justice, swift."~ */
  IF ~~ THEN REPLY #21220 /* ~"Why is he called the Silent King?"~ */ GOTO 25
  IF ~~ THEN REPLY #21221 /* ~"Let me ask of someone else..."~ */ GOTO 23
  IF ~~ THEN REPLY #21222 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21223 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #21224 /* ~"He speaks no more than necessary to guide us. Praise to the Silent King."~ */
  IF ~~ THEN REPLY #21225 /* ~"May I speak with him?"~ */ GOTO 5
  IF ~~ THEN REPLY #21226 /* ~"Let me ask of someone else..."~ */ GOTO 23
  IF ~~ THEN REPLY #21227 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21228 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 23.2 52.0
  SAY #21229 /* ~"She is the most intelligent of what some call the 'rotting herd,' those zombies which populate the Dead Nations. Unlike many of us, her heart did not depart at the moment of death. That is as much as can be said."~ */
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23857 /* ~"Don't you find it difficult to understand her?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~When I spoke to Hargrimm about not understanding Stale Mary, he told me I needed to *learn* to speak with her. Perhaps she will know just what he meant by that.~ */ GOTO 27
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #21230 /* ~"How do you understand her?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~When I spoke to Hargrimm about not understanding Stale Mary, he told me I needed to *learn* to speak with her. Perhaps she will know just what he meant by that.~ */ GOTO 27
  IF ~~ THEN REPLY #21231 /* ~"Tell me of the... 'rotting herd.'"~ */ GOTO 20
  IF ~~ THEN REPLY #21232 /* ~"Let me ask of someone else..."~ */ GOTO 23
  IF ~~ THEN REPLY #21233 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21234 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #21236 /* ~There is a long pause before the skeleton makes its reply. "Thou must *learn* to listen, that is all."~ */
  IF ~~ THEN REPLY #21237 /* ~"Let me ask of someone else..."~ */ GOTO 23
  IF ~~ THEN REPLY #21238 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21239 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4
  SAY #21240 /* ~Its voice becomes even more grim: "I shall speak no more of him. May the Silent King damn his wretched soul!"~ */
  IF ~~ THEN REPLY #21241 /* ~"Let me ask of someone else..."~ */ GOTO 23
  IF ~~ THEN REPLY #21242 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21243 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.3 105.2
  SAY #21244 /* ~"He tries to convince us to give up this 'pretense of life,' as he calls it, and pass into the True Death. He claims that it is our passions that anchor us to this life, and we must let go of them and our duty. He wants us to die..."~ */
  IF ~~ THEN REPLY #21245 /* ~"Go on..."~ */ JOURNAL #21249 /* ~Hargrimm is unhappy with Soego, because the Dustman is constantly trying to convince the citizens of the Dead Nations to die. Should that happen and their numbers dwindle too severely, he feels their entire civilization will be endangered, unable to protect themselves from threats such as the cranium rats or Acaste's ghouls.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #21250 /* ~"Some listen to his words, but none have chosen to surrender themselves to his beliefs. Those that did would be forever silenced. Our numbers would dwindle, and all that we have here would be destroyed by what surrounds us. Soego may believe he is doing right, but is, in truth, causing great harm."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #67811 /* ~"Did you know he's a cranium rat spy?"~ */ GOTO 40
  IF ~~ THEN REPLY #21251 /* ~"Why do you allow him to stay?"~ */ GOTO 31
  IF ~~ THEN REPLY #21252 /* ~"Let me ask of someone else..."~ */ GOTO 23
  IF ~~ THEN REPLY #21253 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21254 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #21255 /* ~"We cannot force him to leave. He knows we cannot harm him. The Dead Truce... no undead may injure a Dustman unless first attacked. Also, the Silent King wishes no slaughter in his halls."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #21256 /* ~"Did you know he's a cranium rat spy?"~ */ GOTO 40
  IF ~~ THEN REPLY #21257 /* ~"Tell me of the Silent King."~ */ GOTO 24
  IF ~~ THEN REPLY #21258 /* ~"Let me ask of someone else..."~ */ GOTO 23
  IF ~~ THEN REPLY #21259 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21260 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1 23.5 72.0
  SAY #21261 /* ~"She is the matriarch of the ghoul pack that has come to our halls. She is strong and extremely cunning."~ */
  IF ~~ THEN REPLY #21262 /* ~"Tell me about the ghouls."~ */ GOTO 21
  IF ~~ THEN REPLY #21263 /* ~"Let me ask of someone else..."~ */ GOTO 23
  IF ~~ THEN REPLY #21264 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21265 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.8 59.0 60.0 63.0
  SAY #21266 /* ~It shakes its head. "I have seen no such thing. Why dost thou seek this object?"~ */
  IF ~~ THEN REPLY #21267 /* ~"For a man named Pharod."~ */ GOTO 34
  IF ~~ THEN REPLY #21268 /* ~"Never mind. I had other questions."~ */ GOTO 3
  IF ~~ THEN REPLY #21269 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #21270 /* ~The skeleton draws back. It looks up and away, as if peering at the surface. "Blood still beats in his black, worm-ridden heart? That wheezing sack of flesh still sends his pack into our homes to raid and pillage." It faces you once more. "Thou were wrong to come here... we tolerate no such desecrators within our borders."~ */
  IF ~~ THEN REPLY #21271 /* ~"But I'm not of his pack..."~ */ GOTO 38
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21272 /* ~"Just what do you intend to do, then?"~ */ GOTO 36
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21273 /* ~"Just what do you intend to do, then?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2
  SAY #21274 /* ~It glares at you silently. "Nothing... the Dead Truce protects thee. Thou shall remain here, though, until thy death."~ */
  IF ~~ THEN REPLY #21275 /* ~"But I cannot die."~ */ GOTO 37
  IF ~~ THEN REPLY #21276 /* ~"I'm actually not one of Pharod's men, however."~ */ GOTO 38
  IF ~~ THEN REPLY #21277 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21278 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #21279 /* ~"We shall execute thee, as per the law of the Silent King. No tomb-raider is to be allowed to live, here."~ */
  IF ~~ THEN REPLY #21280 /* ~"But I cannot die."~ */ GOTO 37
  IF ~~ THEN REPLY #21281 /* ~"I'm actually not one of Pharod's men, however."~ */ GOTO 38
  IF ~~ THEN REPLY #21282 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21283 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #21284 /* ~It stares into your eyes for a time before replying. "This presents no problem. Thou shall remain here, beneath the Silent King's gaze, for all eternity. Perhaps one day thou shall see the folly of thy ways, and make an effort to be of use to our fair civilization."~ */
  IF ~~ THEN REPLY #21285 /* ~"I'm actually not one of Pharod's men, however."~ */ GOTO 38
  IF ~~ THEN REPLY #21286 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21287 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.0 35.1 36.1 37.0
  SAY #21288 /* ~"Why, then, are thou here, invading our homes on a fetch-and-carry for that miserable soul?"~ */
  IF ~~ THEN REPLY #21289 /* ~"I'm finding the sphere for him in return for information I need. There is no other loyalty between us."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #21290 /* ~"It's strictly mercenary, a one-time arrangement. He's compensating me for the return of the sphere."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",2)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #21291 /* ~It looks you over carefully, tapping its chin with a bony finger - *click, click, click.* "Thou do not seem the sort to follow such a man. Perhaps you speak the truth. Perhaps... your presence here is tolerable."~ */
  IF ~~ THEN REPLY #21292 /* ~"Good. I had other questions..."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21293 /* ~"Good. Farewell."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.0 30.0 31.0 43.0 44.0 105.1
  SAY #21294 /* ~It draws close to you, smelling of dust and moldering cloth. "What is this thou speak of? What proof have thee that Soego runs with the brain vermin?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #21295 /* ~"I spoke to them, and they told me so."~ */ GOTO 41
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57892 /* ~"There's proof in his quarters, his journal. He's dead now, though."~ */ JOURNAL #21303 /* ~I told Hargrimm about Soego's involvement with the cranium rats. He said he'd look into the matter, later.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21296 /* ~"There's proof in his quarters, his journal."~ */ JOURNAL #21302 /* ~I told Hargrimm about Soego's involvement with the cranium rats. Hargrimm confronted him on the issue and, finding him guilty, made to confine Soego to his chambers until his death. Soego then turned into a wererat, attacked Hargrimm, and was quickly slain.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21297 /* ~"There's proof in his quarters, his journal. I spoke with him about it, and he turned into a man-rat and attacked me."~ */ JOURNAL #21302 /* ~I told Hargrimm about Soego's involvement with the cranium rats. Hargrimm confronted him on the issue and, finding him guilty, made to confine Soego to his chambers until his death. Soego then turned into a wererat, attacked Hargrimm, and was quickly slain.~ */ GOTO 42
  IF ~~ THEN REPLY #21299 /* ~"Never mind. I had other questions."~ */ GOTO 3
  IF ~~ THEN REPLY #21300 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21304 /* ~"They may have been lying to thee so that thou might kill Soego. Did thou consider such a thing?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57893 /* ~"There's proof in his quarters, his journal. He's dead now, though."~ */ JOURNAL #21303 /* ~I told Hargrimm about Soego's involvement with the cranium rats. He said he'd look into the matter, later.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21305 /* ~"There's proof in his quarters, his journal."~ */ JOURNAL #21302 /* ~I told Hargrimm about Soego's involvement with the cranium rats. Hargrimm confronted him on the issue and, finding him guilty, made to confine Soego to his chambers until his death. Soego then turned into a wererat, attacked Hargrimm, and was quickly slain.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67794 /* ~"There's proof in his quarters, his journal. I spoke with him about it, and he turned into a man-rat and attacked me."~ */ JOURNAL #21302 /* ~I told Hargrimm about Soego's involvement with the cranium rats. Hargrimm confronted him on the issue and, finding him guilty, made to confine Soego to his chambers until his death. Soego then turned into a wererat, attacked Hargrimm, and was quickly slain.~ */ GOTO 42
  IF ~~ THEN REPLY #21306 /* ~"I'll find some other proof, then. I had other questions."~ */ JOURNAL #21301 /* ~I told Hargrimm about Soego's involvement with the cranium rats, but could not prove it to the skeleton's satisfaction. Perhaps I can find more convincing evidence on or around Soego, himself.~ */ GOTO 3
  IF ~~ THEN REPLY #21307 /* ~"Never mind, I'll go find some other proof. Farewell."~ */ JOURNAL #21301 /* ~I told Hargrimm about Soego's involvement with the cranium rats, but could not prove it to the skeleton's satisfaction. Perhaps I can find more convincing evidence on or around Soego, himself.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.2 40.3 41.1 41.2 73.0 102.2 102.3 103.1 103.2
  SAY #21309 /* ~"We shall see; I shall gather Soego and speak to him of this matter within his chambers. Should this be true, I shall owe thee thanks."~ */
  IF ~~ THEN REPLY #21310 /* ~Wait.~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",1)
SetGlobal("Spawn_Soego","GLOBAL",1)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
FadeToColor([20.0],0)
SetGlobal("1500_Destroy_Duplicate","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 10.0 62.0
  SAY #21311 /* ~It considers you for a moment before speaking. "Prove to the Dead Nations that thou mean it no harm. Acts of goodwill. Perhaps then I shall take thy petition to the Silent King."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21312 /* ~"Did you know Soego's a cranium rat spy?"~ */ GOTO 40
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
!Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21313 /* ~"I could tell the Dustmen that Pharod is selling them corpses he stole here. I'm certain they'd stop Pharod."~ */ GOTO 44
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21314 /* ~"I could tell the Dustmen that Pharod is selling them corpses he stole here. I'm certain they'd stop Pharod."~ */ DO ~IncrementGlobalOnceEx("GLOBALCHaotic_Hargrimm_2","GLOBALLaw",-2)
~ GOTO 44
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57708 /* ~"Is there some task I could perform for you?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm told me to look around the Dead Nations and slay any cranium rats I might happen upon.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21315 /* ~"Is there someone you need slain?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm told me to look around the Dead Nations and slay any cranium rats I might happen upon.~ */ GOTO 45
  IF ~~ THEN REPLY #21316 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21317 /* ~"I'll find something to do, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.2
  SAY #21319 /* ~"I am sure thou can see the problems inherent in thy offer. We cannot allow thee to leave simply in the hopes that thou would do such a thing."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21320 /* ~"Did you know Soego's a cranium rat spy?"~ */ GOTO 40
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57737 /* ~"Is there some task I could perform for you?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm told me to look around the Dead Nations and slay any cranium rats I might happen upon.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21321 /* ~"Is there someone you need slain?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21324 /* ~Hargrimm told me to look about the Dead Nations and slay any cranium rats I might happen upon.~ */ GOTO 45
  IF ~~ THEN REPLY #21322 /* ~"I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21323 /* ~"I'll find something else to do, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.3 43.4 44.1 44.2
  SAY #21325 /* ~"Yes, perhaps. Occasionally the ghouls will miss small packs of well-hidden cranium rats that have come to spy here. Shouldst thou come across any, be sure to slay them."~ */
  IF ~~ THEN REPLY #21326 /* ~"Tell me about the cranium rats."~ */ GOTO 22
  IF ~~ THEN REPLY #21327 /* ~"I'll keep that in mind. I had other questions."~ */ GOTO 3
  IF ~~ THEN REPLY #21328 /* ~"I might do that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 22.0
  SAY #21329 /* ~"Their strength is in gathered numbers. If one were to find and slay small, separated groups, the stronger packs would slowly lose power. In the rat-warrens to the east, for instance, they are very powerful. Brain vermin killed in the Hive, above, might weaken them here, though."~ */
  IF ~~ THEN REPLY #21330 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21331 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 3.1
  SAY #21332 /* ~It nods, obviously pleased. "Thou have our thanks. May the Silent King watch over thee."~ */
  IF ~  Global("Hargrimm_Trust","AR1500",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67795 /* ~"So... can you speak to the Silent King for me, now?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 7
  IF ~  Global("Hargrimm_Trust","AR1500",0)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67796 /* ~"So... can you speak to the Silent King for me, now?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 10
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21333 /* ~"I had some other questions..."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21334 /* ~"I'll take my leave, now. Farewell."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 74 99 78 even though they appear after this state */
~  Global("DN_Prisoner","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #21335 /* ~Hargrimm nods solemnly to you.~ */
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #67274 /* ~"I found and killed a group of cranium rats in the rubble of an old passageway."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ EXIT
  IF ~  NumInParty(1)
~ THEN REPLY #63994 /* ~"Could I rest here?"~ */ GOTO 101
  IF ~  NumInParty(1)
~ THEN REPLY #63995 /* ~"I'm in need of healing - could you help me?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63996 /* ~"Could we rest here?"~ */ GOTO 101
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63997 /* ~"We're in need of healing - could you help us?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61825 /* ~"I wanted to ask you about Stale Mary... don't you find it difficult to understand her?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~When I spoke to Hargrimm about not understanding Stale Mary, he told me I needed to *learn* to speak with her. Perhaps she will know just what he meant by that.~ */ GOTO 100
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61826 /* ~"I wanted to ask you about Stale Mary... how do you understand her?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~When I spoke to Hargrimm about not understanding Stale Mary, he told me I needed to *learn* to speak with her. Perhaps she will know just what he meant by that.~ */ GOTO 100
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21336 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 49
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #64946 /* ~"Did you know Soego's a cranium rat spy?"~ */ GOTO 102
  IF ~~ THEN REPLY #21337 /* ~"Farewell, Hargrimm."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.7 100.0
  SAY #21338 /* ~It shakes its head. "I have seen no such thing, here. Perhaps deeper beneath Sigil... search the drowned catacombs. Thou shall find the entrance to that place west of where thou first came here. Take care not to disturb the resting dead, or thou shall incur the wrath of the Silent King!"~ */
  IF ~~ THEN REPLY #21339 /* ~"Thanks. Farewell, Hargrimm."~ */ JOURNAL #21340 /* ~Hargrimm told me to search the drowned catacombs past the Dead Nations for the bronze sphere I seek.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 19.2
  SAY #21341 /* ~"We know not. It may be that they wander elsewhere. We rarely leave this place." It pauses, as if unsure whether to go on. "Once, many shadows dwelled among us, but they come to our halls no more. They left long ago - and we know not where they went. Some say they wander the planes."~ */
  IF ~~ THEN REPLY #21342 /* ~"They wander the planes?"~ */ JOURNAL #21346 /* ~Hargrimm told me that many shadows once dwelled in the Dead Nations. According to a vision of Stale Mary's, they were all drawn away to a fortress on the Negative Material Plane long ago.~ */ GOTO 51
  IF ~~ THEN REPLY #21343 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21344 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21345 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #21347 /* ~"I asked about it once. Mary says that she has seen their fate in visions. She claims they have all been drawn to a wrecked fortress that drifts within the Negative Material Plane, a graveyard of regrets from where they cannot escape."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21348 /* ~"Who is Mary?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21349 /* ~"Mary... Stale Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21350 /* ~"A fortress on the Negative Material Plane?"~ */ GOTO 53
  IF ~~ THEN REPLY #21351 /* ~"Why do you stay here?"~ */ GOTO 55
  IF ~~ THEN REPLY #21352 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21353 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21354 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 53.1 53.2 54.0 54.1 55.1 55.2 56.0 56.1
  SAY #21355 /* ~It nods. "Yes, Stale Mary, may the Silent King watch over her. She was a seer in life, ages past, and still receives visions, at times."~ */
  IF ~~ THEN REPLY #21356 /* ~"Tell me about her."~ */ GOTO 26
  IF ~~ THEN REPLY #21357 /* ~"You mentioned a fortress?"~ */ GOTO 53
  IF ~~ THEN REPLY #21358 /* ~"Why do you stay here?"~ */ GOTO 55
  IF ~~ THEN REPLY #21359 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21360 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21361 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.2 52.1 55.3 56.2
  SAY #21362 /* ~"Yes." The skeleton priest shakes its head. "Sheer foolishness."~ */
  IF ~~ THEN REPLY #21363 /* ~"Why?"~ */ GOTO 54
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21364 /* ~"Who is Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21365 /* ~"You mentioned Mary... Stale Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21366 /* ~"Why do you stay here?"~ */ GOTO 55
  IF ~~ THEN REPLY #21367 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21368 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21369 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #21370 /* ~"That Plane is a place from where all the energies that fill the hollows of the undead have their source. When life leaves us, there is a chance, through magic and passion... and perhaps other things... that this energy may fill the hollow space, giving us an empty life. I fail to see how anything could *exist* there, however."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21371 /* ~"Who is Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21372 /* ~"You mentioned Mary... Stale Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21373 /* ~"Why do you stay here?"~ */ GOTO 55
  IF ~~ THEN REPLY #21374 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21375 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21376 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.3 52.2 53.3 54.2
  SAY #21377 /* ~"This nation is under our care. The quiet ones - the true dead - need to be protected and tended... else, the horrors of the catacombs would set upon them, disrupting their sleep. It is our sacred duty to care for them."~ */
  IF ~~ THEN REPLY #21378 /* ~"Horrors of the catacombs?"~ */ GOTO 56
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21379 /* ~"Who is Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21380 /* ~"You mentioned Mary... Stale Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21381 /* ~"You mentioned a fortress?"~ */ GOTO 53
  IF ~~ THEN REPLY #21382 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21383 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21384 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #21385 /* ~"The Living... human scavengers, the vermin scavengers... all who defy our sworn duty to interment. May the Silent King protect us."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21386 /* ~"Who is Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21387 /* ~"You mentioned Mary... Stale Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21388 /* ~"You mentioned a fortress?"~ */ GOTO 53
  IF ~~ THEN REPLY #21389 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21390 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21391 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 16.0
  SAY #21392 /* ~"I passed away long ago, and found that beyond death lies only oblivion... fortunately, I was able to step back at the last moment from the brink."~ */
  IF ~~ THEN REPLY #21393 /* ~"Step back?"~ */ GOTO 58
  IF ~~ THEN REPLY #21394 /* ~"You mentioned followers. Who else is here?"~ */ GOTO 17
  IF ~~ THEN REPLY #21395 /* ~"Tell me about the Silent King."~ */ GOTO 24
  IF ~~ THEN REPLY #21396 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21397 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #21398 /* ~"Yes, I awoke here. I wandered the catacombs for untold days before stumbling into the throne of my lord, the Silent King. He spoke to me, and from that fated meeting the Dead Nations was born."~ */
  IF ~~ THEN REPLY #21399 /* ~"You mentioned followers. Who else is here?"~ */ GOTO 17
  IF ~~ THEN REPLY #21400 /* ~"Tell me about the Silent King."~ */ GOTO 24
  IF ~~ THEN REPLY #21401 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21402 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1
  SAY #21403 /* ~"Firstly, I would know why thou are here."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21404 /* ~"I'm looking for something. A small bronze sphere."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21405 /* ~"The cranium rat collective, Many-as-One, sent me."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21406 /* ~"I was looking for Soego."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21407 /* ~"No reason."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21408 /* ~Lie: "No reason."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21409 /* ~Lie: "No reason."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21410 /* ~Lie: "No reason."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21411 /* ~"It's no concern of yours."~ */ GOTO 60
  IF ~~ THEN REPLY #21412 /* ~"Never mind. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21413 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.7
  SAY #21414 /* ~The skeleton shrugs, then waves you away. "So be it. Enjoy thy time here."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21415 /* ~"I'm looking for something. A small bronze sphere."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21416 /* ~"The cranium rat collective, Many-as-One, sent me."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21417 /* ~"I was looking for Soego."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21418 /* ~"No reason."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21419 /* ~Lie: "No reason."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21420 /* ~Lie: "No reason."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21421 /* ~Lie: "No reason."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21422 /* ~"Wait. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21423 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.2 60.2 63.2
  SAY #21424 /* ~"How many more humans will that pale-faced death worshipper bring to our halls?! An army? A legion?! Perhaps all of Sigil?!" The skeleton returns its attention to you. "Are thou in league with the Dustmen? Do thou wear their shackles of belief and bow thy knee to that ridiculous concept of True Death?"~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21425 /* ~"No."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21426 /* ~"Yes."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21427 /* ~Lie: "No."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_4","GLOBALLaw",-1)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1 61.2 63.3 63.4 63.5 63.6 67.0 68.0
  SAY #21428 /* ~"Fmm!" The skeleton looks away from you, shaking its head.~ */
  IF ~~ THEN REPLY #21429 /* ~"Well...?"~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 43
END

IF ~~ THEN BEGIN 63 // from: 59.3 59.4 59.5 59.6 60.3 60.4 60.5 60.6
  SAY #21430 /* ~"Indeed? I find that hard to believe."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21431 /* ~"I'm looking for something. A small bronze sphere."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21432 /* ~"The cranium rat collective, Many-as-One, sent me."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21433 /* ~"I was looking for Soego."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21434 /* ~"It's true."~ */ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21435 /* ~Lie: "It's true."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21436 /* ~Lie: "It's true."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21437 /* ~Lie: "It's true."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~~ THEN REPLY #21438 /* ~"Never mind. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21439 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 59.1 60.1 63.1
  SAY #21440 /* ~"By the Silent King! Thou are in league with the *vermin?!*" It becomes furious. "Thou hold counsel with those hive-brained scavengers that desecrate the tombs of our charges and feed upon their remains?!"~ */
  IF ~~ THEN REPLY #21441 /* ~"I apologize..."~ */ GOTO 65
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21442 /* ~"Yes. So what?"~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21443 /* ~"Yes. So what?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #21444 /* ~"As well thou should! What did they send thee here for?"~ */
  IF ~~ THEN REPLY #21445 /* ~"To kill the Silent King."~ */ GOTO 68
  IF ~~ THEN REPLY #21446 /* ~Lie: "To negotiate a truce."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
  IF ~~ THEN REPLY #21447 /* ~Lie: "For no reason."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #21448 /* ~The flickering crimson lights of its eyes narrow. "I find that difficult to believe. Perhaps thou have another answer that would be closer to the truth?"~ */
  IF ~~ THEN REPLY #21449 /* ~"To kill the Silent King."~ */ GOTO 68
  IF ~~ THEN REPLY #21450 /* ~Lie: "To negotiate a truce."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 65.1 66.1
  SAY #21451 /* ~"There is nothing to be negotiated. A truce is in effect. They have learned to respect our borders, and we respect theirs."~ */
  IF ~~ THEN REPLY #21452 /* ~"In any case, that is my reason for being here."~ */ GOTO 62
END

IF ~~ THEN BEGIN 68 // from: 65.0 66.0
  SAY #21453 /* ~"How dare thee enter our halls and threaten our lord?! And at the command of the brain vermin, no less. Thou shall suffer for thy audacity!"~ */
  IF ~~ THEN REPLY #21454 /* ~"I only spoke the truth. I have no wish to kill him, now."~ */ GOTO 62
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21455 /* ~"Make me suffer, then."~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21456 /* ~"Make me suffer, then."~ */ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 64.1 68.1
  SAY #21457 /* ~"Thou shall leave these catacombs only in the dung of ghouls! May the Silent King favor us in battle!"~ */
  IF ~~ THEN REPLY #21458 /* ~Meet their attack.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21459 /* ~Flee.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 64.2 68.2
  SAY #21462 /* ~It raises its staff, then suddenly stops. "Alas! 'Tis only thy luck and by the Silent King's grace that we honor the Dead Contract. Rest assured, though, that thou shall *never* leave these catacombs. Farewell."~ */
  IF ~~ THEN REPLY #21461 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 40.1 41.0
  SAY #21463 /* ~"I shall look into the matter. Should this be true, I shall owe thee thanks."~ */
  IF ~~ THEN REPLY #21464 /* ~"I had some other questions..."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
ClearAllActions()
~ GOTO 3
  IF ~~ THEN REPLY #21465 /* ~"I'll take my leave, now. Farewell."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 21.0
  SAY #21466 /* ~"They are forever ravenous; without us holding them in check, they would run rampant in the Buried Village and the warrens of the cranium rats, killing all, then return to devour all that is here."~ */
  IF ~~ THEN REPLY #21467 /* ~"Tell me about Acaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21468 /* ~"Who else inhabits this place?"~ */ GOTO 17
  IF ~~ THEN REPLY #21469 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #21470 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #21471 /* ~"He might have fled for another reason. Did thou consider such a thing?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #21472 /* ~"There's proof in his quarters, his journal."~ */ JOURNAL #21302 /* ~I told Hargrimm about Soego's involvement with the cranium rats. Hargrimm confronted him on the issue and, finding him guilty, made to confine Soego to his chambers until his death. Soego then turned into a wererat, attacked Hargrimm, and was quickly slain.~ */ GOTO 42
  IF ~~ THEN REPLY #21473 /* ~"I'll find some other proof, then. I had other questions."~ */ GOTO 3
  IF ~~ THEN REPLY #21474 /* ~"Never mind, I'll go find some other proof. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 99 78 even though they appear after this state */
~  Global("Prisoner_Movie","GLOBAL",1)
~ THEN BEGIN 74 // from:
  SAY #21475 /* ~"Stop! Thou have come too far, traveler, and trespassed into the Dead Nations, realm of the Silent King! Will thou submit peacefully?"~ */
  IF ~~ THEN REPLY #21476 /* ~"Submit to what?"~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("Know_Hargrimm","GLOBAL",1)
SetGlobal("Know_Silent_King","GLOBAL",1)
SetGlobal("Hargrimm_Talk","AR1500",2)
SetDoorLocked("AR1500D1",TRUE)
SetDoorLocked("AR1500D2",TRUE)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #21477 /* ~"'Tis the will of the Silent King that all who pass the gates into our Nation become prisoners of his lands. Will thou submit?"~ */
  IF ~~ THEN REPLY #21478 /* ~"Very well, I will submit."~ */ GOTO 76
  IF ~~ THEN REPLY #21479 /* ~"No, I will not."~ */ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #21480 /* ~"Come, then... we shall show thee to the Chapel. Know this: thou shall be free to wander these halls, but not to leave the catacombs. Thou shall be a prisoner here until thy death; should thou later arise as we have, thou shall be free. Praise the Silent King; his will be done."~ */
  IF ~~ THEN REPLY #21481 /* ~Follow them.~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("DN_Surrender","AR1500",1)
StartCutSceneMode()
StartCutSceneEx("1500cs3",FALSE)
~ JOURNAL #61610 /* ~I came across an undead sorcerer-priest of great power, who claimed that I had trespassed into the Dead Nations, the realm of some 'Silent King.' I agreed to surrender and was told that I am free to wander the halls, but that I could not leave the catacombs. The skeleton priest said that I was to be a prisoner until my death, but should I later arise as they had, I would be free. Perhaps there is another way, though...~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #21482 /* ~"Then thou shall die here, in the Silent King's halls."~ */
  IF ~~ THEN REPLY #21483 /* ~"Very well, I will submit."~ */ GOTO 76
  IF ~~ THEN REPLY #21484 /* ~"So be it."~ */ DO ~SetGlobal("Undead_Alert","AR1500",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ JOURNAL #61609 /* ~I came across an undead sorcerer-priest of great power, who claimed that I had trespassed into the Dead Nations, the realm of some 'Silent King.' I refused to submit and was summarily attacked by him and his undead minions.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Throne_Movie","GLOBAL",1)
~ THEN BEGIN 78 // from:
  SAY #23955 /* ~"So, thou have come." The skeleton turns to gaze upon the massive throne. "What thou see here is the end of our culture."~ */
  IF ~~ THEN REPLY #24110 /* ~"What do you mean?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
  IF ~~ THEN REPLY #24112 /* ~"Is that the Silent King?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #24114 /* ~Wait silently for him to continue.~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #23956 /* ~"Yes."~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 78.0 78.2 79.0
  SAY #23957 /* ~"None must know that the King speaks only silence."~ */
  IF ~~ THEN REPLY #24117 /* ~"How long has this gone on?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24119 /* ~"Why does he not speak?"~ */ GOTO 82
END

IF ~~ THEN BEGIN 81 // from:
  SAY #23958 /* ~Hargrimm stares off into the shadows. "He stopped speaking to us long ago - he himself has left for the thrice-damned True Death." A trace of rage and despair trickles into its voice. "He has abandoned us here to suffer amongst the Living! We have become... the prey... of all that lives."~ */
  IF ~~ THEN REPLY #24121 /* ~"Then why does he rule?"~ */ GOTO 83
  IF ~~ THEN REPLY #24124 /* ~"If that's so... how does he rule?"~ */ GOTO 84
  IF ~~ THEN REPLY #24126 /* ~"Then who really rules?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY #23959 /* ~"He is silent because he has left this place. He abandoned us for the True Death... and left only this husk in his place."~ */
  IF ~~ THEN REPLY #24129 /* ~"How long has this gone on?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24131 /* ~"Then why does he rule?"~ */ GOTO 83
  IF ~~ THEN REPLY #24133 /* ~"If that's so... how does he rule?"~ */ GOTO 84
  IF ~~ THEN REPLY #24134 /* ~"Who's truly been ruling the Dead Nations, then?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 83 // from: 81.0 82.1 84.0
  SAY #23960 /* ~"He rules because he must."~ */
  IF ~~ THEN REPLY #24135 /* ~"But if he's dead... how?"~ */ GOTO 84
  IF ~~ THEN REPLY #24136 /* ~"Who's truly been ruling the Dead Nations, then?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 84 // from: 81.1 82.2 83.0
  SAY #23961 /* ~"We interpret the wishes of the Silent King based on what he said many long years ago. It has not been easy..." Hargrimm sounds tired; he sags beneath the weight of an invisible burden. "Many questions, many questions do I have for him."~ */
  IF ~~ THEN REPLY #24139 /* ~"Why does he still rule?"~ */ GOTO 83
  IF ~~ THEN REPLY #24141 /* ~"So who really rules here?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 81.2 82.3 83.1 84.1
  SAY #23962 /* ~"Mary and I speak to the Silent King. We rule in his stead."~ */
  IF ~~ THEN REPLY #24143 /* ~"Why don't you tell your people the truth?"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23963 /* ~"I wish to preserve what we have created. I do not wish to die."~ */
  IF ~~ THEN EXTERN ~DSTALEMA~ 49
END

IF ~~ THEN BEGIN 87 // from:
  SAY #23964 /* ~"If our own people were to learn of this... or Acaste were to discover this deception... or Many-as-One, the hive mind of the cranium rats... all that we have created here would be destroyed. This husk is all that keeps the inner and outer enemies at bay. If the truth were spoken, our small civilization would become dust."~ */
  IF ~~ THEN REPLY #24150 /* ~"Go on..."~ */ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #23965 /* ~"I cannot force thee to be silent. But I would ask thee to look beyond thyself, to consider what would happen if thou spoke of what thou have seen here."~ */
  IF ~~ THEN REPLY #24152 /* ~Offer a vow: "I only wish to leave, Hargrimm. Grant me this, and you shall have my silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24154 /* ~Offer a false promise: "I only wish to leave, Hargrimm. Grant me this, and you shall have my silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-1)
~ GOTO 89
  IF ~~ THEN REPLY #24156 /* ~"Your people should be told. If your civilization is destroyed, so be it."~ */ GOTO 90
  IF ~~ THEN REPLY #24159 /* ~"Why don't you place a new king upon the throne?"~ */ GOTO 93
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1 93.2 93.3 94.1 94.2 96.0 96.1
  SAY #23966 /* ~Hargrimm is silent for a moment. "Thou may leave this place. Go, now... and I beg of thee: honor thy word."~ */
  IF ~~ THEN REPLY #24164 /* ~"Thanks. Farewell."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~I used a portal Stale Mary told me of to enter the Silent King's throne room. There, I discovered that the sovereign lord of the Dead Nations was, in truth, little more than a shriveled corpse. I agreed to tell no one what I knew and, in return, Hargrimm freed me from the Dead Nations.~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.2 93.4 94.3 96.2
  SAY #24092 /* ~Hargrimm is silent for a moment. "Again, I cannot force thee to remain silent. But I must know whether thou will tell them, or no."~ */
  IF ~~ THEN REPLY #24166 /* ~"I will tell them."~ */ GOTO 98
  IF ~~ THEN REPLY #24181 /* ~Truth: "I will not tell them."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 91
  IF ~~ THEN REPLY #24182 /* ~Lie: "I will not tell them."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.1 90.2
  SAY #24093 /* ~"I extend to thee my gratitude. Thou may leave this place, now, should thou like. Use the doors at the southern end of the throne room."~ */
  IF ~~ THEN REPLY #24183 /* ~"Thanks. Farewell."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~I used a portal Stale Mary told me of to enter the Silent King's throne room. There, I discovered that the sovereign lord of the Dead Nations was, in truth, little more than a shriveled corpse. I agreed to tell no one what I knew and, in return, Hargrimm freed me from the Dead Nations.~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #24094 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from: 88.3
  SAY #24095 /* ~"The king must be alive when he sits upon the throne. It will accept no other. Once a person sits upon the throne..." Hargrimm's tone becomes even more ominous: "...he may not leave it."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
Global("Soego_Fled","GLOBAL",0)
~ THEN REPLY #24185 /* ~"What about Soego?"~ */ GOTO 94
  IF ~~ THEN REPLY #24186 /* ~"I will become your king, if you will have me."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24187 /* ~Offer a vow: "I only wish to leave, Hargrimm. Grant me this, and you shall have my silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24188 /* ~Offer a false promise: "I only wish to leave, Hargrimm. Grant me this, and you shall have my silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24189 /* ~"Your people should be told. If your civilization is destroyed, so be it."~ */ GOTO 90
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #24096 /* ~"Soego would not make a good king. He is too much in love with his own voice to remain silent. Such a position on the throne would also rob him of the True Death. That would be as blasphemous as attempting to rob us of the life that we possess."~ */
  IF ~~ THEN REPLY #24190 /* ~"I will become your king, then, if you will have me."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24191 /* ~Offer a vow: "I only wish to leave, Hargrimm. Grant me this, and you shall have my silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24192 /* ~Offer a false promise: "I only wish to leave, Hargrimm. Grant me this, and you shall have my silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24193 /* ~"Your people should be told. If your civilization is destroyed, so be it."~ */ GOTO 90
END

IF ~~ THEN BEGIN 95 // from:
  SAY #24097 /* ~"Once one sits upon the throne, they may never leave it. Death... True Death... is the only release from the Silent King's throne."~ */
  IF ~~ THEN REPLY #24194 /* ~"Yes. I will do it..."~ */ EXTERN ~DSTALEMA~ 51
  IF ~~ THEN REPLY #24195 /* ~"In that case, no."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.1 97.0
  SAY #24098 /* ~"Much as I thought." Hargrimm sighs, a cloud of dust welling out with the exhalation. "So... I would still know whether thou will speak of the Silent King's true nature, or no."~ */
  IF ~~ THEN REPLY #24196 /* ~Offer a vow: "I only wish to leave, Hargrimm. Grant me this, and you shall have my silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24197 /* ~Offer a false promise: "I only wish to leave, Hargrimm. Grant me this, and you shall have my silence."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24198 /* ~"Your people should be told. If your civilization is destroyed, so be it."~ */ GOTO 90
END

IF ~~ THEN BEGIN 97 // from:
  SAY #24099 /* ~Hargrimm nods, and gestures to the throne. "Then take thy throne, O Silent King..."~ */
  IF ~~ THEN REPLY #24199 /* ~"Wait... I'd best not."~ */ GOTO 96
  IF ~~ THEN REPLY #24200 /* ~Take the throne.~ */ DO ~SetGlobal("Took_Throne","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 90.0
  SAY #24100 /* ~The skeleton priest shakes its head sadly. "I am afraid we cannot allow that, Living. May the Silent King favor me in battle..."~ */
  IF ~~ THEN REPLY #24201 /* ~Fight.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #24202 /* ~Flee.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR1501")
~ THEN BEGIN 99 // from:
  SAY #58914 /* ~Hargrimm solemnly indicates the wide doors at the southern end of the Silent King's throne room. "Leave now, Living, and remember: speak not of this. Need thou speak with me again, thou may do so away from this sacred chamber."~ */
  IF ~~ THEN REPLY #58915 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 48.5 48.6
  SAY #61822 /* ~There is a long pause before the skeleton makes its reply. "Thou must *learn* to listen, that is all."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #61823 /* ~"I see. And have you seen a small, bronze sphere anywhere here?"~ */ GOTO 49
  IF ~~ THEN REPLY #61824 /* ~"Perhaps I'll speak with her again, then. Farewell, Hargrimm."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 48.1 48.3
  SAY #63992 /* ~Hargrimm stares at you silently for a time, then sighs softly. "Thou shall be safe, here. Rest."~ */
  IF ~~ THEN REPLY #63993 /* ~"Thanks."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 48.8
  SAY #64947 /* ~It draws close to you, smelling of dust and moldering cloth. "What is this thou speak of? What proof have thee that Soego runs with the brain vermin?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #64954 /* ~"I spoke to them, and they told me so."~ */ GOTO 103
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64955 /* ~"There's proof in his quarters, his journal. He's dead now, though."~ */ JOURNAL #21303 /* ~I told Hargrimm about Soego's involvement with the cranium rats. He said he'd look into the matter, later.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64956 /* ~"There's proof in his quarters, his journal."~ */ JOURNAL #21302 /* ~I told Hargrimm about Soego's involvement with the cranium rats. Hargrimm confronted him on the issue and, finding him guilty, made to confine Soego to his chambers until his death. Soego then turned into a wererat, attacked Hargrimm, and was quickly slain.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64957 /* ~"There's proof in his quarters, his journal. I spoke with him about it, and he turned into a man-rat and attacked me."~ */ JOURNAL #21302 /* ~I told Hargrimm about Soego's involvement with the cranium rats. Hargrimm confronted him on the issue and, finding him guilty, made to confine Soego to his chambers until his death. Soego then turned into a wererat, attacked Hargrimm, and was quickly slain.~ */ GOTO 42
  IF ~~ THEN REPLY #64959 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #64948 /* ~"They may have been lying to thee so that thou might kill Soego. Did thou consider such a thing?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67797 /* ~"There's proof in his quarters, his journal. He's dead now, though."~ */ JOURNAL #21303 /* ~I told Hargrimm about Soego's involvement with the cranium rats. He said he'd look into the matter, later.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67798 /* ~"There's proof in his quarters, his journal."~ */ JOURNAL #21302 /* ~I told Hargrimm about Soego's involvement with the cranium rats. Hargrimm confronted him on the issue and, finding him guilty, made to confine Soego to his chambers until his death. Soego then turned into a wererat, attacked Hargrimm, and was quickly slain.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67799 /* ~"There's proof in his quarters, his journal. I spoke with him about it, and he turned into a man-rat and attacked me."~ */ JOURNAL #21302 /* ~I told Hargrimm about Soego's involvement with the cranium rats. Hargrimm confronted him on the issue and, finding him guilty, made to confine Soego to his chambers until his death. Soego then turned into a wererat, attacked Hargrimm, and was quickly slain.~ */ GOTO 42
  IF ~~ THEN REPLY #64962 /* ~"Never mind, I'll go find some other proof. Farewell."~ */ JOURNAL #21301 /* ~I told Hargrimm about Soego's involvement with the cranium rats, but could not prove it to the skeleton's satisfaction. Perhaps I can find more convincing evidence on or around Soego, himself.~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #64949 /* ~"I shall look into the matter. Should this be true, I shall owe thee thanks."~ */
  IF ~~ THEN REPLY #64963 /* ~"I'll take my leave, now. Farewell."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 10.2
  SAY #67800 /* ~The skeleton priest *hrmmms* deeply, the lights of its eyes dimming as it thinks. "Soego. Rid us of that damnable Dustman, and I shall speak to the Silent King of thy freedom. However... I do *not* seek to have him assassinated. Merely give us a reason to remove him from the Dead Nations."~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",0)
Global("Soego_Journal","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67802 /* ~"Soego? Oh... he's dead."~ */ GOTO 106
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #67803 /* ~"Did you know he's a cranium rat spy?"~ */ GOTO 40
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67804 /* ~"What troubles you so much about Soego?"~ */ GOTO 29
  IF ~~ THEN REPLY #67805 /* ~"I'll look into it. I had other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #67806 /* ~"I'll see what I can do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #67801 /* ~"He is...? Bah! I suppose thou expect me to speak to the Silent King on thy behalf, then... well, I shall not! Until thou can validate Soego's murder to me, thou shall *not* leave this place."~ */
  IF ~~ THEN REPLY #67807 /* ~"Fine. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #67808 /* ~"I suppose I'll try and find something, then."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 3.9 3.10 3.11 3.12
  SAY #68089 /* ~"No. Were thou not a prisoner here, awaiting thy death, the answer might be different."~ */
  IF ~~ THEN REPLY #68090 /* ~"Why *am* I a prisoner here?"~ */ GOTO 12
  IF ~~ THEN REPLY #68091 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #68092 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
