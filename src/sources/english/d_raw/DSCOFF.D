// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCOFF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3032 /* ~You see a thin, stooped man hunched over a desk, scribbling on a piece of paper. His hair is thinning and drab, drawn back into a ponytail, and thin spectacles adorn his hooked nose. His age could be anywhere from his early twenties to his late forties. He doesn't look up as he speaks to you. "What do you want? Make it quick."~ */
  IF ~  Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #3033 /* ~"Who are you?"~ */ GOTO 1
  IF ~~ THEN REPLY #61601 /* ~"What do you do here?"~ */ GOTO 3
  IF ~~ THEN REPLY #65168 /* ~"What is this place?"~ */ GOTO 3
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65169 /* ~"I'm missing a skull."~ */ GOTO 4
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65170 /* ~"The city must burn."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~~ THEN REPLY #65172 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65203 /* ~"Yes. Giltspur asked me to deliver a handbill to you so you can print up a hundred copies."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~~ THEN REPLY #66220 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65181 /* ~"My name is Penn, berk. And your question answers mine: you had no idea this was a printing shop before strolling in, and now you've decided to make it your personal quest to waste not only your time, but mine as well."~ */
  IF ~~ THEN REPLY #65200 /* ~"What do you print?"~ */ GOTO 2
  IF ~~ THEN REPLY #65201 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65202 /* ~"All right, then. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 12.1
  SAY #65182 /* ~"Books. Pamphlets. Handbills. Words. Letters. Whatever." He amends, "Though I don't do racy prints, and I won't fulfill any perversions you might want, nor do I care to ask."~ */
  IF ~~ THEN REPLY #65236 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65237 /* ~"All right, then. Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 0.2 12.2
  SAY #65183 /* ~He looks sharply at you, ceasing the skritching of his pen. "Are you entirely dim? It's a printing shop. I print things here. Look around you. I print."~ */
  IF ~~ THEN REPLY #65238 /* ~"What do you print?"~ */ GOTO 2
  IF ~~ THEN REPLY #65239 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65240 /* ~"So I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 12.4
  SAY #65184 /* ~He snorts. "That's how it looks from where I'm standing, too."~ */
  IF ~~ THEN REPLY #65241 /* ~"Don't take that tone of voice with me or you'll regret it."~ */ GOTO 14
  IF ~~ THEN REPLY #65242 /* ~"I'm serious. A companion of mine has been stolen."~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65243 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65244 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6 12.5
  SAY #65185 /* ~He takes the handbill from you, looks it over, and says, "I'll have it for him later. Go tell him." He turns back to his desk.~ */
  IF ~~ THEN REPLY #65245 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65248 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #65186 /* ~"Then you might want to ask around for Lothar, Master of the Bones. Word has it he's got quite a nice little library of skulls. I don't know where to find him, though, and even if I did, I wouldn't tell - he knows more about magic than most berks ever dreamt, and I won't be the one to cross him." He turns back to his papers. "Now get out."~ */
  IF ~~ THEN REPLY #65246 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65249 /* ~"Don't take that tone of voice with me, friend."~ */ GOTO 14
  IF ~~ THEN REPLY #65250 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.4 12.6
  SAY #65187 /* ~"What's that? What'd you say? That means nothing to me."~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65251 /* ~"I said the city must burn."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65252 /* ~"Bedai-Lihn sent me."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65253 /* ~"Forget it. Farewell."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65254 /* ~"I said the city must burn."~ */ GOTO 21
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65255 /* ~"Bedai-Lihn sent me."~ */ GOTO 22
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65256 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #65188 /* ~BLANK NODE~ */
  IF ~~ THEN REPLY #65247 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65257 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 12.8
  SAY #65189 /* ~"A love letter, eh? Fine. It'll cost you, though. Let's call it... oh... a hundred coins. You look desperate for this."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65258 /* ~"Here you go."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #65259 /* ~"How about a discount?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #65260 /* ~"How about a discount?"~ */ GOTO 16
  IF ~~ THEN REPLY #65261 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 12.3
  SAY #65190 /* ~He takes the note from you, looks it over, and crumples it into a ball, which promptly crumbles into ash. He looks at you levelly. "Someone's been defaming my good name, it seems. Now. Did you want something?"~ */
  IF ~~ THEN REPLY #65262 /* ~"Aren't you worried about that defamation?"~ */ GOTO 17
  IF ~~ THEN REPLY #65263 /* ~"I want to join your group."~ */ GOTO 18
  IF ~~ THEN REPLY #65264 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65265 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 15.0 16.0
  SAY #65191 /* ~He takes your money, thinks for a moment, and selects a perfumed sheet of paper from a drawer in the desk. He scribbles a few vacuous, love-struck lines on it in a flowery, elegant script. "This will do, I'm sure."~ */
  IF ~~ THEN REPLY #65266 /* ~"It will. I had some more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65267 /* ~"It will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.5 1.1 2.0 3.1 4.2 5.0 6.0 8.0 10.2 11.0 15.1 16.1 17.1 18.0 19.0 21.0 22.0 25.0 32.0 77.2 78.0 79.1
  SAY #65192 /* ~"Do they have to do with work?"~ */
  IF ~~ THEN REPLY #65268 /* ~"Well, no..."~ */ GOTO 13
  IF ~~ THEN REPLY #65269 /* ~"What do you print?"~ */ GOTO 2
  IF ~~ THEN REPLY #65270 /* ~"What is this place?"~ */ GOTO 3
  IF ~  PartyHasItem("PenNote")
~ THEN REPLY #65271 /* ~"Are you the one who wrote this note I found in the Mortuary?"~ */ DO ~DestroyPartyItem("PenNote",TRUE)
~ GOTO 10
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65272 /* ~"Yes. I'm missing a skull."~ */ GOTO 4
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65273 /* ~"Yes. Giltspur asked me to deliver a handbill to you so you can print up a hundred copies."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65274 /* ~"Yes. The city must burn."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~  Global("Know_Penn","AR0509",1)
~ THEN REPLY #65275 /* ~"The city must burn."~ */ GOTO 23
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65276 /* ~"I'd like you to print up a love letter for me."~ */ GOTO 9
  IF ~~ THEN REPLY #65300 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65193 /* ~"Then you're wasting your time and mine. Good day." He turns down to his desk.~ */
  IF ~~ THEN REPLY #65280 /* ~"Don't you ignore me."~ */ GOTO 14
  IF ~~ THEN REPLY #65281 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0 6.1 13.0 18.1 19.1 32.1 77.0 79.0
  SAY #65194 /* ~He waves his hand... and you find yourself outside his shop.~ */
  IF ~~ THEN REPLY #65282 /* ~"What the..."~ */ DO ~IncrementGlobal("Penn_Out","GLOBAL",1)
TeleportParty("AR0500",[3348.1081],10)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY #65195 /* ~"Fine. Seventy-five coins. Take it or leave it."~ */
  IF ~  PartyGoldGT(74)
~ THEN REPLY #65283 /* ~"I'll take it."~ */ DO ~TakePartyGold(75)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65284 /* ~"I'll leave it. I had some more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65285 /* ~"I'll leave it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY #65196 /* ~He barks out a single syllable of laughter. "I don't think so, friend. A hundred coins or nothing."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65286 /* ~"Here you go."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65287 /* ~"Forget it, then. I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65288 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #65197 /* ~"Why would I be? It's just competition in Sigil. I've got a good idea of who it might be, too, and I've got a little surprise of my own coming for him."~ */
  IF ~~ THEN REPLY #65289 /* ~"Can I be of any assistance?"~ */ GOTO 19
  IF ~~ THEN REPLY #65290 /* ~"All right. Then I've got a few more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65291 /* ~"Great. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY #65198 /* ~He looks at you hard. "I'm certain you've got me confused with someone else. Did you want any work done today, or should I throw you out?"~ */
  IF ~~ THEN REPLY #65292 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65293 /* ~"You'll have to throw me out."~ */ GOTO 14
  IF ~~ THEN REPLY #65294 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #65199 /* ~"Are you truly as stupid as you look? Of course not."~ */
  IF ~~ THEN REPLY #65295 /* ~"All right, then. I had some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65296 /* ~"Don't take that tone with me."~ */ GOTO 14
  IF ~~ THEN REPLY #65297 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.0 7.1 7.2
  SAY #65204 /* ~"I've heard of you." He looks at you, piercingly. "If Bedai-Lihn sent you to me, that means you want in with us. Am I right?"~ */
  IF ~~ THEN REPLY #65298 /* ~"Yes."~ */ GOTO 31
  IF ~~ THEN REPLY #65299 /* ~"Not really."~ */ GOTO 32
END

IF ~~ THEN BEGIN 21 // from: 7.3
  SAY #65205 /* ~"That means absolutely nothing to me, except that you've been paying attention to the ravings of a total barmy. Now. Do you want something?"~ */
  IF ~~ THEN REPLY #65301 /* ~"Yes. I had some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65302 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.4
  SAY #65206 /* ~"Who? Bedai-Lihn? Is that what that awful harridan is calling herself these days?" He sighs wearily. "She's a jealous old lover. Tries to get me arrested on all sorts of charges. Never been able to pin anything on me." He straightens up again. "Did you want something else from me?"~ */
  IF ~~ THEN REPLY #65303 /* ~"I had some questions for you..."~ */ GOTO 12
  IF ~~ THEN REPLY #65304 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7
  SAY #65207 /* ~"Yes, yes, you've said that before. What did you mean?"~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65305 /* ~"Why did Bedai-Lihn send me to you to say that if it didn't mean anything?"~ */ GOTO 25
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65306 /* ~"Why did Bedai-Lihn send me to you?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #65208 /* ~"Why do you suppose, berk? You'd just helped her bring ruin on the Godsmen. She thought you might be interested in doing more. Offer's still open. You want it or not?"~ */
  IF ~~ THEN REPLY #65307 /* ~"Not right now."~ */ GOTO 32
  IF ~~ THEN REPLY #65308 /* ~"Yes."~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #65209 /* ~"Old grudges and unreturned passions die hard. Insanity dies even harder." You have a hard time imagining anyone holding passion for this man; insanity seems like a more realistic option. "Did you want something else?"~ */
  IF ~~ THEN REPLY #65309 /* ~"Yes, I had some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65310 /* ~"No. Farewell."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #65210 /* ~Penn looks up at you as you enter his shop. "Out. And stay out." He gestures with his hand, and you find yourself gone.~ */
  IF ~~ THEN REPLY #65311 /* ~"What the..."~ */ DO ~TeleportParty("AR0500",[3348.1081],10)
SetGlobal("Penn_Out","GLOBAL",2)
~ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
Global("AR0902_Visited","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #65211 /* ~"Welcome back." Penn keeps his head down to his papers. "Ebb and his boys help you out in Curst?" He seems entirely disinterested in the answer.~ */
  IF ~~ THEN REPLY #65312 /* ~"Yes. I had a few questions for you..."~ */ GOTO 30
  IF ~~ THEN REPLY #65313 /* ~"Pretty much. Do you have any more jobs for me?"~ */ GOTO 28
  IF ~~ THEN REPLY #65314 /* ~"Sure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #65212 /* ~"Not right now. I'll let you know if something comes up. You need anything else right now, or are you just interrupting me?"~ */
  IF ~~ THEN REPLY #65315 /* ~"I had some questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65316 /* ~"No. Farewell."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 29 // from:
  SAY #65213 /* ~As always, Penn seems to be very busy writing. "You need something written or printed up? If so, let me know what it is, and I'll get to it. Otherwise, go talk to the cell at the Vault of the Ninth World and they'll take care of you."~ */
  IF ~~ THEN REPLY #65317 /* ~"I just had a few questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65318 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 28.0 29.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.1 69.2 70.4 71.1 72.1 73.1 74.1 75.1 76.1
  SAY #65214 /* ~"Keep it quick. I'm busy."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65319 /* ~"I'm missing a skull."~ */ GOTO 33
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65320 /* ~"Giltspur asked me to deliver a handbill to you so you can print up a hundred copies."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 34
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65323 /* ~"I'd like you to print up a love letter for me."~ */ GOTO 36
  IF ~~ THEN REPLY #65324 /* ~"What was the password for our cell again?"~ */ GOTO 37
  IF ~  Global("Penn_Task","AR0509",0)
~ THEN REPLY #65325 /* ~"What are you working on?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 38
  IF ~  Global("Penn_Task","AR0509",1)
~ THEN REPLY #65326 /* ~"What are you working on?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 39
  IF ~  Global("Penn_Task","AR0509",2)
~ THEN REPLY #65327 /* ~"What are you working on?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 40
  IF ~  Global("Penn_Task","AR0509",3)
~ THEN REPLY #65328 /* ~"What are you working on?"~ */ GOTO 41
  IF ~~ THEN REPLY #65329 /* ~"I'd like to talk about revolution..."~ */ GOTO 42
  IF ~~ THEN REPLY #65330 /* ~"I'd like to ask a few questions about the organization..."~ */ GOTO 70
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #65429 /* ~"Leena wants me to prove myself."~ */ GOTO 71
  IF ~~ THEN REPLY #65430 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 20.0 24.1
  SAY #65215 /* ~"Do you know who we are?"~ */
  IF ~~ THEN REPLY #65331 /* ~"Tell me."~ */ GOTO 43
  IF ~~ THEN REPLY #65332 /* ~"No. I just want to be a member. If you're into destruction, I'm in."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Penn_1","GLOBALLaw",-1)
~ GOTO 43
  IF ~  Global("Good_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65333 /* ~"If you're connected to Vaxis, you'd be the Revolutionary League."~ */ GOTO 45
END

IF ~~ THEN BEGIN 32 // from: 20.1 24.0
  SAY #65216 /* ~"Then why are you talking to me in the first place? What do you want? Are you waiting for me to throw you out or something?"~ */
  IF ~~ THEN REPLY #65334 /* ~"No, but I had some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65335 /* ~"Yes. Throw me out."~ */ GOTO 14
  IF ~~ THEN REPLY #65336 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.0
  SAY #65217 /* ~"If I were you, I'd head over to the wrecked house near the pawnshop. Look inside for a ladder going down. Say your prayers, and go down the ladder. Lothar's down there, and he's not a blood I'd cross. He's a skull collector, and if he takes a shine to it, he'll take yours. He can do it, too. I don't care how tough you are. Watch your step... you're a valuable asset." He looks up from his paper. "You want anything else?"~ */
  IF ~~ THEN REPLY #65337 /* ~"Just the answers to a few more questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65338 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #65218 /* ~He takes the handbill from you, looks it over, and says, "I'll have it for him later. Go tell him." He turns back to his desk.~ */
  IF ~~ THEN REPLY #65339 /* ~"I had a few more questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65340 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #65219 /* ~BLANK NODE~ */
  IF ~~ THEN REPLY #65341 /* ~"Just the answers to a few more questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65342 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.2
  SAY #65220 /* ~"A love letter, eh? Vague and impassioned? Fine." He thinks for a moment, and selects a perfumed sheet of paper from a drawer in the desk. He scribbles a few vacuous, love-struck lines on it in a flowery, elegant script. "This will do, I'm sure."~ */
  IF ~~ THEN REPLY #65343 /* ~"Thanks. I had a few more questions..."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 30
  IF ~~ THEN REPLY #65344 /* ~"Thanks. Farewell."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 30.3
  SAY #65221 /* ~He glances up from his paper and squints at you. "The password is 'eclipse.' Hurry up and use it before they change it on you."~ */
  IF ~~ THEN REPLY #65345 /* ~"Thanks. I had a few more questions."~ */ GOTO 30
  IF ~~ THEN REPLY #65346 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.4
  SAY #65222 /* ~"This is a pile of anti-Harmonium pamphlets. They're going up over the Lower Ward soon enough." He continues scribbling. "I'll be done soon, and on to something else." His pen fairly flies over the paper.~ */
  IF ~~ THEN REPLY #65347 /* ~"Thanks. I had a few more questions."~ */ GOTO 30
  IF ~~ THEN REPLY #65350 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.5
  SAY #65223 /* ~"An anonymous petition demanding true representation from the courts, instead of the mockeries of law the Guvners seem to uphold." His glance at you this time is a little longer, as if you're testing his patience.~ */
  IF ~~ THEN REPLY #65348 /* ~"Thanks. I had a few more questions."~ */ GOTO 30
  IF ~~ THEN REPLY #65351 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 30.6
  SAY #65224 /* ~"It's a handbill that demands the release of certain political prisoners in the city's jails. They were arrested falsely for crimes the Revolutionary League committed, and while I appreciate a good martyr to the cause..." He pauses and looks at you pointedly. "While I appreciate a martyr, I'm not in this business to sacrifice innocents. I'm in it to save them."~ */
  IF ~~ THEN REPLY #65349 /* ~"Thanks. I had a few more questions."~ */ GOTO 30
  IF ~~ THEN REPLY #65352 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 30.7
  SAY #65225 /* ~He sets his pen down hard, and glares up at you. "Why don't you stop asking these questions and get to work on whatever it is you're supposed to be doing?" A sharp sigh gusts out of him. "I'm a busy man, and all you can do is ask me what I'm doing. Children are less irritating than you because at least they have the good sense to stop asking what I'm doing once I glare at them. Now. What did you want?"~ */
  IF ~~ THEN REPLY #65353 /* ~"Why aren't you out there doing something of value?"~ */ GOTO 46
  IF ~~ THEN REPLY #65354 /* ~"Just the answers to a few more questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65355 /* ~"Nothing, if you're going to be that way. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.8
  SAY #65226 /* ~"Instead of talking about revolution, why don't you get out there and do something about it? Kill some Harmonium or slaughter some Dustmen or something. Take down the old order with action, not words."~ */
  IF ~~ THEN REPLY #65356 /* ~"Why aren't *you* out there acting, instead of writing?"~ */ GOTO 46
  IF ~~ THEN REPLY #65357 /* ~"Fine, fine. I had a few more questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65358 /* ~"Fine. I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 31.0 31.1
  SAY #65227 /* ~"We are the Revolutionary League. Do you know what we stand for?"~ */
  IF ~~ THEN REPLY #65359 /* ~"Yes."~ */ GOTO 44
  IF ~~ THEN REPLY #65360 /* ~"No."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1 45.0 45.1
  SAY #65228 /* ~"We stand for the overthrow of Sigil's order. We stand opposed to the other factions. We are a faction that is not a faction; we are organized in the name of disorder. We tear down so that others may rebuild, with greater freedoms and a better way of life. The old order is standing in the way; the old factions keep the people blind."~ */
  IF ~~ THEN REPLY #65361 /* ~"I thought they were looking for the truth."~ */ GOTO 48
  IF ~~ THEN REPLY #65362 /* ~"How are they standing in the way?"~ */ GOTO 47
  IF ~~ THEN REPLY #65363 /* ~"Yes, I know. And I agree with you. Let's get on with it."~ */ GOTO 50
END

IF ~~ THEN BEGIN 45 // from: 31.2
  SAY #65229 /* ~"Correct. And on the very first try, too. You know what we stand for?"~ */
  IF ~~ THEN REPLY #65364 /* ~"Yes."~ */ GOTO 44
  IF ~~ THEN REPLY #65365 /* ~"No."~ */ GOTO 44
END

IF ~~ THEN BEGIN 46 // from: 41.0 42.0
  SAY #65230 /* ~His hand freezes. A bead of ink drops onto the paper. "What did you say to me?"~ */
  IF ~~ THEN REPLY #65378 /* ~"I asked why don't you act, instead of hiding here in your shop?"~ */ GOTO 54
  IF ~~ THEN REPLY #65379 /* ~"Nothing. Forget it."~ */ GOTO 54
END

IF ~~ THEN BEGIN 47 // from: 44.1
  SAY #65231 /* ~"Simple: The old order has been doing their best to keep everyone from the dark of the multiverse for as long as they've existed. After all, what if we *really* found what things were about? Might topple their tiny worlds. Some are already so certain they've found it, anybody else is automatically wrong and should be wiped out. That's not what'd I call a forum where all beliefs are tolerated."~ */
  IF ~~ THEN REPLY #65380 /* ~"Don't you think they're trying their best?"~ */ GOTO 49
  IF ~~ THEN REPLY #65381 /* ~"Don't they seek the truth?"~ */ GOTO 48
  IF ~~ THEN REPLY #65382 /* ~"I totally agree. Let's get on with it. I want to be part of your group."~ */ GOTO 50
  IF ~~ THEN REPLY #65383 /* ~"You know something, this is all ringing a little paranoid to me. Forget this."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 48 // from: 44.0 47.1
  SAY #65232 /* ~"No. They're looking for something that will validate them and make them feel superior. They delude themselves into thinking they've found it, and then they persecute those of us who disagree."~ */
  IF ~~ THEN REPLY #65384 /* ~"How do you know they haven't found the big Truth?"~ */ GOTO 51
  IF ~~ THEN REPLY #65385 /* ~"How do you know they aren't trying their best?"~ */ GOTO 49
  IF ~~ THEN REPLY #65386 /* ~"I agree. I'm ready to do whatever it takes to harm them."~ */ GOTO 50
  IF ~~ THEN REPLY #65387 /* ~"I think you're entirely insane. This whole revolutionary thing makes my stomach turn."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 49 // from: 47.0 48.1
  SAY #65233 /* ~"The old order isn't interested in finding truth as much as keeping power and lining their pockets. Can't grow and learn until the old is swept away."~ */
  IF ~~ THEN REPLY #65388 /* ~"How do you know they haven't found the big Truth?"~ */ GOTO 51
  IF ~~ THEN REPLY #65389 /* ~"I agree. I'm ready to do whatever it takes to harm them."~ */ GOTO 50
  IF ~~ THEN REPLY #65390 /* ~"I think you're throwing the good out with the bad, and you're going about this all wrong."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 50 // from: 44.2 47.2 48.2 49.1 51.1
  SAY #65234 /* ~"If you're truly that eager, then I'll assign you one mission. Finish that off, and you're in."~ */
  IF ~~ THEN REPLY #65391 /* ~"Let me ask a few questions about how you're set up, first."~ */ GOTO 58
  IF ~~ THEN REPLY #65392 /* ~"What's the mission?"~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #65235 /* ~"Because a lot of them haven't found it, even their most devout members. And the ones that have found it don't generate much faith in the 'truth' they discovered: The Dustmen thinks that we should all die. Sensates think we should all indulge ourselves and the Dark will follow. The Godsmen are one of those who haven't even found the Big Dark yet. Their only 'truth' is 'keep trying, one day you'll get it right.' So they slave at the Foundry day after day until they die. Smart bunch of fellows."~ */
  IF ~~ THEN REPLY #65393 /* ~"That's a pretty skewed view of their beliefs."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #65394 /* ~"They need to be torn down. Let's get on with the job."~ */ GOTO 50
END

IF ~~ THEN BEGIN 52 // from: 47.3 48.3 49.2 51.0 54.3 55.2 56.3 57.0 59.1 60.2
  SAY #65366 /* ~"Then you don't approve of our methods?" You notice his hand is shaking ever so slightly.~ */
  IF ~~ THEN REPLY #65395 /* ~"I'm just kidding."~ */ GOTO 53
  IF ~~ THEN REPLY #65396 /* ~"No, I don't."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1
  SAY #65367 /* ~"Perhaps you ought to step outside and think your position over." He waves his trembling hand and you find yourself standing outside his shop.~ */
  IF ~~ THEN REPLY #65397 /* ~"What the..."~ */ DO ~SetGlobal("Penn_Out","GLOBAL",2)
TeleportParty("AR0500",[3348.1081],10)
~ JOURNAL #65434 /* ~Apparently I've angered Scofflaw Penn, owner of the print shop and Anarchist, by telling him I disagree with his methods. He teleported me out of his shop and now the door's locked against me.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 46.0 46.1
  SAY #65368 /* ~"Every revolution needs leaders, berk. Every uprising needs someone to plan it. You think that mere chaos will tear down the factions? It's got to be more than just random attacks - only a coherent plan will do any damage to the factions. Face it: some folks are swords, some folks are the hands that guide the swords, and some... some are the brains that guide the hands."~ */
  IF ~~ THEN REPLY #65398 /* ~"And who appointed you the brain?"~ */ GOTO 55
  IF ~~ THEN REPLY #65399 /* ~"Why isn't everyone equal?"~ */ GOTO 56
  IF ~~ THEN REPLY #65400 /* ~"All right. No need to get yourself all worked up."~ */ GOTO 57
  IF ~~ THEN REPLY #65401 /* ~"I think you're going about this all wrong. I don't think you should be in charge here."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 55 // from: 54.0 60.0
  SAY #65369 /* ~"I did. No one else seemed willing to do the work. Some folks need to be told what to do. Some people take the initiative. I'm willing to do the work, I'm willing to take the guilt of failure onto myself, and I'm willing to step aside when my plans come to fruition. I've given up everything I held dear to guide people toward a better life. I think that qualifies me."~ */
  IF ~~ THEN REPLY #65402 /* ~"Why not make everyone equal?"~ */ GOTO 56
  IF ~~ THEN REPLY #65403 /* ~"All right. No need to get yourself all worked up."~ */ GOTO 57
  IF ~~ THEN REPLY #65404 /* ~"I think you're full of tanar'ri dung if you believe you're qualified to lead."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 56 // from: 54.1 55.0 58.0 60.1
  SAY #65370 /* ~"The nature of this kind of revolution is that even our people *must* be kept misinformed. We operate in separate cells, with minimal contact from the head of the faction. This makes it harder for the other factions to come down on us, to shut down our operations. If they strike down one cell, they'll not find another unless they're very lucky. People cannot be equal until we've succeeded in our mission or until they've proven themselves."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65405 /* ~"You must work at cross-purposes a lot."~ */ GOTO 61
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65406 /* ~"Who's in your cell? How many?"~ */ GOTO 62
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65407 /* ~"How do you get aid from other cells?"~ */ GOTO 63
  IF ~~ THEN REPLY #65408 /* ~"That's absurd. That's doomed to failure. This faction is doomed to failure."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65435 /* ~"Let's talk about the organization..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 57 // from: 54.2 55.1
  SAY #65371 /* ~"If you had given up what I had in order to serve others, you wouldn't be so quick to judge me. This is a job that requires passion and idealism, and I fear that perhaps those qualities have burned out of you." He thinks for a moment. You notice that his hand is shaking slightly.~ */
  IF ~~ THEN REPLY #65409 /* ~"I judge you because you know nothing about sacrifice and you and your cohorts play at anarchy. This organization is dung."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65410 /* ~"All right, relax. Let's talk about your organization..."~ */ GOTO 58
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65436 /* ~"All right, relax. Let's talk about the organization..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 58 // from: 50.0 57.1 61.0 62.1 63.1
  SAY #65372 /* ~"What did you want to know?"~ */
  IF ~~ THEN REPLY #65411 /* ~"How's this organization set up?"~ */ GOTO 56
  IF ~~ THEN REPLY #65412 /* ~"What's the mission you'd like me to complete?"~ */ GOTO 59
  IF ~~ THEN REPLY #65413 /* ~"How organized is your chaos?"~ */ GOTO 60
  IF ~~ THEN REPLY #65414 /* ~"How do you get aid from other cells?"~ */ GOTO 63
  IF ~~ THEN REPLY #65415 /* ~"Where are your safehouses?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 50.1 58.1 61.1 62.0 63.0
  SAY #65373 /* ~"In the Clerk's Ward, or in the Civic Festhall, there is a stone genasi named Qui-Sai. He is a danger to us, though he doesn't know it. Find him, and strike him down. When you've done this, return here and I'll tell you of our safehouses."~ */
  IF ~~ THEN REPLY #65416 /* ~"I'll be back."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",1)
~ JOURNAL #65431 /* ~Scofflaw Penn asked me to kill the stone genasi Qui-Sai in the Clerk's Ward, in the Civic Festhall. I agreed to do it.~ */ EXIT
  IF ~~ THEN REPLY #65417 /* ~"I won't do it. Killing people is wrong."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #65432 /* ~I told Penn that I wouldn't kill the genasi Qui-Sai. He became a little agitated and kicked me out of his shop.~ */ GOTO 52
END

IF ~~ THEN BEGIN 60 // from: 58.2
  SAY #65374 /* ~"Every revolution needs leaders. Every uprising needs someone to plan it. You think that mere chaos will tear down the factions? It's got to be more than just random attacks - only a coherent plan will do any damage to the factions. Face it: some folks are swords, some folks are the hands that guide the swords, and some... some are the brains that guide the hands."~ */
  IF ~~ THEN REPLY #65418 /* ~"And who appointed you the brain?"~ */ GOTO 55
  IF ~~ THEN REPLY #65419 /* ~"Why isn't everyone equal?"~ */ GOTO 56
  IF ~~ THEN REPLY #65420 /* ~"I think you're going about this all wrong. I don't think you should be in charge here."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 61 // from: 56.0
  SAY #65375 /* ~"Unfortunately, we do. But it's better than watching the whole organization go up in flames or under the sword."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65421 /* ~"Tell me more."~ */ GOTO 58
  IF ~~ THEN REPLY #65422 /* ~"What's the mission you need from me?"~ */ GOTO 59
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65437 /* ~"Tell me more."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 56.1 58.4
  SAY #65376 /* ~"I'll tell you that when you return from the mission."~ */
  IF ~~ THEN REPLY #65423 /* ~"What is the mission?"~ */ GOTO 59
  IF ~~ THEN REPLY #65424 /* ~"Tell me more of the organization."~ */ GOTO 58
END

IF ~~ THEN BEGIN 63 // from: 56.2 58.3
  SAY #65377 /* ~"I pass the word. We've got a wide network of informants. We know when someone needs aid, and if it suits the purpose of the organization, we provide it."~ */
  IF ~~ THEN REPLY #65425 /* ~"What is the mission you want me to do?"~ */ GOTO 59
  IF ~~ THEN REPLY #65426 /* ~"Tell me more of the organization."~ */ GOTO 58
END

IF ~  Global("Waste_Quisai","GLOBAL",1)
~ THEN BEGIN 64 // from:
  SAY #65438 /* ~"Well? Have you taken care of the genasi Qui-Sai yet?"~ */
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #65454 /* ~"He is dead."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~I have reported my success in killing Qui-Sai to Scofflaw Penn. He was as jubilant as he'll ever be, I suppose, but he inducted me into his cell of the Revolutionary League and told me where to find some of his people: in the warehouse called Vault of the Ninth World, in the Lower Ward. He told me the password to identify myself to them. It is 'eclipse'. ~ */ GOTO 69
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65455 /* ~Lie: "He is dead."~ */ GOTO 65
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65456 /* ~"Not yet."~ */ GOTO 66
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #66565 /* ~"He is dead."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~I have reported my success in killing Qui-Sai to Scofflaw Penn. He was as jubilant as he'll ever be, I suppose, but he inducted me into his cell of the Revolutionary League and told me where to find some of his people: in the warehouse called Vault of the Ninth World, in the Lower Ward. He told me the password to identify myself to them. It is 'eclipse'. ~ */ GOTO 69
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66566 /* ~"He is dead."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~I have reported my success in killing Qui-Sai to Scofflaw Penn. He was as jubilant as he'll ever be, I suppose, but he inducted me into his cell of the Revolutionary League and told me where to find some of his people: in the warehouse called Vault of the Ninth World, in the Lower Ward. He told me the password to identify myself to them. It is 'eclipse'. ~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #65439 /* ~Penn scoffs at you, and turns back to his table. "You can't lie to me... though I find it illuminating that you'd try. Go back and finish the job. Don't come back until you do."~ */
  IF ~~ THEN REPLY #65457 /* ~"What if I just decide to turn you in?"~ */ GOTO 67
  IF ~~ THEN REPLY #65458 /* ~"All right. Can you print some documents for me?"~ */ GOTO 68
  IF ~~ THEN REPLY #65459 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.2
  SAY #65440 /* ~"Then get to it. You're holding up some plans."~ */
  IF ~~ THEN REPLY #65460 /* ~"What if I just decide to turn you in?"~ */ GOTO 67
  IF ~~ THEN REPLY #65461 /* ~"All right. Can you print some documents for me?"~ */ GOTO 68
  IF ~~ THEN REPLY #65462 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0 68.0
  SAY #65441 /* ~"And say what? 'Officer, I killed a factor of the Godsmen and blew up their death machine, and then I tried to join up with the Anarchists, but they wanted me to kill one more person and I just couldn't. Go arrest them! I'm blameless!' Sorry, berk. You're not that stupid, though a few more good cracks around the head might do it to you. Go on, now."~ */
  IF ~~ THEN REPLY #65463 /* ~"All right. Farewell."~ */ JOURNAL #65464 /* ~I asked Penn what he'd do if I tried to turn him in. He presented some good arguments against the idea. I guess I'll let him slide for now.~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 65.1 66.1
  SAY #65442 /* ~He looks directly at you. "When you've gotten rid of the genasi, then we'll print you everything you need. Until then, don't bother me."~ */
  IF ~~ THEN REPLY #65465 /* ~"What if I just decide to turn you in?"~ */ GOTO 67
  IF ~~ THEN REPLY #65466 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 64.0 64.3 64.4
  SAY #65443 /* ~"Then you've proven yourself." He extends his hand to you, and you shake on it. "Welcome to my cell. If you need rest, spells, or additional toys to help you out, go talk to Leena or Conall in the warehouse called the Vault of the Ninth World, right around the corner from my shop. The password is 'eclipse'. Is there anything you wanted to know about?"~ */
  IF ~~ THEN REPLY #65467 /* ~"Tell me about the organization..."~ */ GOTO 70
  IF ~~ THEN REPLY #65468 /* ~"What are our plans?"~ */ GOTO 72
  IF ~~ THEN REPLY #65469 /* ~"Yes, I had a few questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65470 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 30.9 56.4 57.2 61.2 69.0 71.0 72.0 73.0 74.0 75.0 75.2 76.0
  SAY #65444 /* ~"What did you want to know?"~ */
  IF ~~ THEN REPLY #65471 /* ~"How's this organization set up?"~ */ GOTO 73
  IF ~~ THEN REPLY #65472 /* ~"How do you get aid from other cells?"~ */ GOTO 74
  IF ~~ THEN REPLY #65473 /* ~"Where are your safehouses?"~ */ GOTO 75
  IF ~~ THEN REPLY #65474 /* ~"What if I need help?"~ */ GOTO 76
  IF ~~ THEN REPLY #65475 /* ~"I had a few other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65476 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 30.10
  SAY #65445 /* ~"I should hope so. And I hope she's asking you to get rid of that Vorten. She's been badgering me about him long enough."~ */
  IF ~~ THEN REPLY #65477 /* ~"Err... right. I had some questions about the organization..."~ */ GOTO 70
  IF ~~ THEN REPLY #65478 /* ~"Right. I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65479 /* ~"Oh. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 69.1
  SAY #65446 /* ~"You'll find out soon enough, I'm sure. Hopefully, you'll see a culmination soon enough. Don't worry about it just yet."~ */
  IF ~~ THEN REPLY #65480 /* ~"Fine. Tell me about the organization."~ */ GOTO 70
  IF ~~ THEN REPLY #65481 /* ~"Fine. Answer some other questions for me."~ */ GOTO 30
  IF ~~ THEN REPLY #65482 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #65447 /* ~"The nature of this kind of revolution is that even our people *must* be kept misinformed. We operate in separate cells, with minimal contact from the head of the faction. This makes it harder for the other factions to come down on us, to shut down our operations. If they strike down one cell, they'll not find another unless they're very lucky. People cannot be equal until we've succeeded in our mission or until they've proven themselves."~ */
  IF ~~ THEN REPLY #65483 /* ~"I had some other questions about the organization..."~ */ GOTO 70
  IF ~~ THEN REPLY #65484 /* ~"I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65485 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 70.1
  SAY #65448 /* ~"We have a network. We have a kind of web that keeps us from knowing everyone but a few base contacts, and word trickles back along our strands when there is something that needs to be done. Of course, we check these out thoroughly, and then we send our aid. We may seem small when separated, but there are more of us than any faction knows."~ */
  IF ~~ THEN REPLY #65486 /* ~"I had some other questions about the organization..."~ */ GOTO 70
  IF ~~ THEN REPLY #65487 /* ~"I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65488 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 70.2
  SAY #65449 /* ~"Our current safehouse, like I told you before, is the Vault of the Ninth World. My people are posing as workers there right now. Talk to Leena and tell her the password, and you'll be set."~ */
  IF ~~ THEN REPLY #65489 /* ~"I had some other questions about the organization..."~ */ GOTO 70
  IF ~~ THEN REPLY #65490 /* ~"I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65491 /* ~"Thanks. Farewell."~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 70.3
  SAY #65450 /* ~"If you need help, we'll know about it. If we can, we'll send help in a heartbeat. Don't look for it. It'll look for you. Don't worry. Membership here pays off in subtle ways."~ */
  IF ~~ THEN REPLY #65492 /* ~"I had some other questions about the organization..."~ */ GOTO 70
  IF ~~ THEN REPLY #65493 /* ~"I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #65494 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~  Global("Penn_Out","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #65451 /* ~"Oh, dear. Have you come to threaten me again?" He seems supremely unconcerned.~ */
  IF ~~ THEN REPLY #65495 /* ~"Transport me like that again, and I'll kill you."~ */ GOTO 14
  IF ~~ THEN REPLY #65496 /* ~"How did you teleport me?"~ */ GOTO 79
  IF ~~ THEN REPLY #65497 /* ~"I had a few questions for you..."~ */ GOTO 12
  IF ~~ THEN REPLY #65498 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 78 // from:
  SAY #65452 /* ~"Well, if it isn't the devourer-of-time himself. Do you actually want something this time?"~ */
  IF ~~ THEN REPLY #65499 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65500 /* ~"Not really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY #65453 /* ~"Trade secret. Did you actually want something, or were you coming in to bluster some more?"~ */
  IF ~~ THEN REPLY #65501 /* ~"I came to warn you not to do that again."~ */ GOTO 14
  IF ~~ THEN REPLY #65502 /* ~"I had a few questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #65503 /* ~"No. Farewell."~ */ EXIT
END
