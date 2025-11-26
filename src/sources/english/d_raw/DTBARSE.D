// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTBARSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTBARSE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
Global("Slavers","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #48096 /* ~You see a haggard, grim man. His coarse face is lined and weathered, and his eyes are red-rimmed. He straightens as he sees you. "Welcome to the Traitor's Gate. I'm Tainted Barse, the innkeep."~ */
  IF ~~ THEN REPLY #48097 /* ~"What's wrong?"~ */ GOTO 1
  IF ~~ THEN REPLY #48098 /* ~"What kind of a name is that?"~ */ GOTO 2
  IF ~~ THEN REPLY #48101 /* ~"What are you selling here?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48107 /* ~"I need a place to stay."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48108 /* ~"Good for you. Farewell."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #48109 /* ~"What's wrong is that my daughter got herself kidnapped by slavers, and now the place is going to fall behind on its bills and I'm going to lose the place to one of those rich pikers in the first circle." He looks at you more closely. "You're the fellow asking about the deva, ain't you? Tell you what. You help me out, I'll help you."~ */
  IF ~~ THEN REPLY #48110 /* ~"What do you know about the deva?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #48111 /* ~"What do I have to do?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48112 /* ~"Let's talk about this later. Right now I have more questions..."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #48113 /* ~"Let me think about it. I'll get back to you. Farewell."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #48114 /* ~He glares at you. "Barse is my given name, berk. I got the Tainted later because of some former friends spreading baseless chant." He looks *very* angry. "What the hell do you want, anyway? You an adventurer or something?"~ */
  IF ~~ THEN REPLY #48116 /* ~"Why? What's wrong?"~ */ GOTO 1
  IF ~~ THEN REPLY #48117 /* ~"I wanted to ask some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #48118 /* ~"What are you selling here?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48119 /* ~"I need a place to stay."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48120 /* ~"Good for you. Farewell."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.4 7.1
  SAY #48125 /* ~He smiles craftily. "You're looking for him, ain't you? I can tell you that he's hidden far beneath the prison. I can tell you how to get there, too, apart from being arrested or trying to bribe your way in - which wouldn't work anyway."~ */
  IF ~~ THEN REPLY #48127 /* ~"What do I have to do for this?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.0 7.3 8.0 12.0 13.0 14.1
  SAY #48128 /* ~"Whaddya want to know?"~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #48129 /* ~"What's with the town being so abandoned?"~ */ JOURNAL #47843 /* ~Tainted Barse, innkeeper of the Traitor's Gate, told me that the town fathers had recently been expanding the prison, and discovered a deva imprisoned in a stone bubble underground. They didn't free him, of course; they just took his sword and used it to power the cells of the prisoners down there.~ */ GOTO 7
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #48130 /* ~"What's with the town being so abandoned?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ JOURNAL #47843 /* ~Tainted Barse, innkeeper of the Traitor's Gate, told me that the town fathers had recently been expanding the prison, and discovered a deva imprisoned in a stone bubble underground. They didn't free him, of course; they just took his sword and used it to power the cells of the prisoners down there.~ */ GOTO 7
  IF ~~ THEN REPLY #48131 /* ~"What can you tell me about this place?"~ */ GOTO 8
  IF ~  Global("Slavers","GLOBAL",1)
Global("Curst_Key","GLOBAL",0)
~ THEN REPLY #48132 /* ~"So you said you needed something taken care of. What do you want me to do?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48133 /* ~"What do you know about the deva?"~ */ GOTO 3
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48134 /* ~"What are you selling here?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48135 /* ~"Nothing, I guess. Farewell."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48135 /* ~"Nothing, I guess. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.0 4.3 6.0
  SAY #48136 /* ~"Go over there and talk to Marquez. He's the ex-Harmonium fellow. He knows about these slavers - and he holds the first part of the key that'll put you on the path of seein' the deva. There are five parts to the Key, but it ain't a physical key. When you've got the parts together, you come tell me - and it unlocks knowledge in my mind. Till then, though, it stays secret. You got to satisfy the keyholders."~ */
  IF ~~ THEN REPLY #48137 /* ~"Let me think about it. I had some more questions."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Tainted Barse asked me to rescue his daughter from slavers. He told me to talk to Marquez, the Harmonium officer in his tavern.~ */ GOTO 4
  IF ~~ THEN REPLY #48138 /* ~"I won't do it."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ JOURNAL #68074 /* ~Tainted Barse asked me to rescue his daughter from slavers. He told me to talk to Marquez, the Harmonium officer in his tavern.~ */ GOTO 9
  IF ~~ THEN REPLY #48139 /* ~"I'll do it."~ */ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 0.2 0.3 0.4 1.3 2.2 2.3 2.4 4.6 7.4 8.1 12.1 13.1
  SAY #48140 /* ~"Listen... Damn! I hate to make a request of a stranger, but I think I can help you if you can help me." He continues in a rush. "My daughter got kidnapped, she's going to be sold, I'm going to lose this place if I don't have her to help me, and I have information that could be very valuable to you. You scratch my back, I'll scratch yours, see?"~ */
  IF ~~ THEN REPLY #48141 /* ~"What do you need?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Tainted Barse asked me to rescue his daughter from slavers. He told me to talk to Marquez, the Harmonium officer in his tavern.~ */ GOTO 5
  IF ~~ THEN REPLY #48142 /* ~"Forget it. I'm busy right now."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #48143 /* ~"Heh. Troubles a-plenty, as always. First, they keep digging holes in the ground to make the prison bigger - and they discover this deva, wrapped up in a big obsidian bubble, chained to the floor. They take his sword and use its power to keep the criminals in their cages. They're busy debating what to do about the celestial, tearing their hair out trying to figure out how they can make a profit off its discovery and cross their 'friends'... and then the plague hits."~ */
  IF ~~ THEN REPLY #48144 /* ~"Plague?"~ */ JOURNAL #48160 /* ~Tainted Barse told me that Curst has been paralyzed by a plague, not too long after the city officials opened the prison of the deva.~ */ GOTO 12
  IF ~~ THEN REPLY #48145 /* ~"What do you know about the deva?"~ */ GOTO 3
  IF ~~ THEN REPLY #48146 /* ~"Why was the deva imprisoned?"~ */ GOTO 13
  IF ~~ THEN REPLY #48147 /* ~"I had a few other questions..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48148 /* ~"Thanks. Farewell."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48159 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #48161 /* ~"What this place is, is a hotbed of rumors and innuendo. No one trusts no one. Y'don't do favors for someone without makin' sure they're in your debt. Everyone hates everyone else, and everyone's looking for a hold to get on everyone. Someone like you... you're a ripe target of opportunity for people, because you don't know the politics. And I guarantee you'll be sucked in."~ */
  IF ~~ THEN REPLY #48162 /* ~"I had a few more questions..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48163 /* ~"Thanks. Farewell."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48164 /* ~"Thanks. Farewell."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",6)
~ THEN BEGIN 9 // from: 5.1 6.1 14.0
  SAY #48165 /* ~"You won't do me a favor, I won't do you none. Get out of my place."~ */
  IF ~~ THEN REPLY #48166 /* ~"No. What are you selling here?"~ */ GOTO 11
  IF ~~ THEN REPLY #48167 /* ~"No. I need a place to stay."~ */ GOTO 11
  IF ~~ THEN REPLY #48168 /* ~"I've changed my mind. I'll help you out."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48169 /* ~"I'm leaving, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 9.2
  SAY #48170 /* ~"Marquez'll tell you what you have to do, and when you've finished, he'll steer you to the next person who has a key."~ */
  IF ~~ THEN REPLY #48171 /* ~"Farewell."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Tainted Barse asked me to rescue his daughter from slavers. He told me to talk to Marquez, the Harmonium officer in his tavern.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.1
  SAY #48172 /* ~"You'll get it only if you kill me - and if you do, you'll never get anywhere in this town. You'll rot here, berk. I ain't kidding you. You'll never get out."~ */
  IF ~~ THEN REPLY #48173 /* ~Kill him anyway.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #48174 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0
  SAY #48175 /* ~"That's right. Something that lays folks low. Makes people all ornery and bad-tempered - and too weak to do anything about it. The guards've closed off portions of the town, and they're all tight-wound. They'll take you into jail on the slightest pretext these days. I don't know how you got in to town, but you ain't getting out unless you find a portal."~ */
  IF ~~ THEN REPLY #48176 /* ~"I had a few more questions..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48177 /* ~"Thanks. Farewell."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48178 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #48179 /* ~He looks at you closely to see if you're joking with him. "I told you they discovered him buried in the earth, right? That means I have no idea how he got down there. I wish I was powerful enough to trap a deva. That'd be some power worth havin'."~ */
  IF ~~ THEN REPLY #48180 /* ~"All right, then, answer some other questions for me."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48181 /* ~"Thanks. Farewell."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48182 /* ~"Thanks. Farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Slavers","GLOBAL",6)
~ THEN BEGIN 14 // from:
  SAY #48183 /* ~He's trying to hide the anxious look in his eyes as he asks his question: "Have you found out anything about my daughter? I'm very worried about her. Please tell Marquez if you hear anything."~ */
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48184 /* ~"I'm not going to be looking for her."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
  IF ~~ THEN REPLY #48185 /* ~"Not yet. I had some questions."~ */ GOTO 4
  IF ~~ THEN REPLY #48186 /* ~"Not yet. What are you selling here?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48187 /* ~"Not yet. I needed a place to stay."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
!Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #48188 /* ~"Yes. She should be returning here shortly. I'll go tell Marquez. Farewell."~ */ EXIT
  IF ~  Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66863 /* ~"She died as I tried to rescue her. I'll go tell Marquez."~ */ DO ~SetGlobal("Slavers","GLOBAL",7)
~ EXIT
  IF ~~ THEN REPLY #66864 /* ~"Not yet. Farewell."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",7)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
~ THEN BEGIN 15 // from:
  SAY #48189 /* ~His grief looks fresh in his eyes. "What d'ye want, cutter?"~ */
  IF ~~ THEN REPLY #48190 /* ~"What's the deal with this key, anyway?"~ */ GOTO 16
  IF ~~ THEN REPLY #48191 /* ~"What are you selling here?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48192 /* ~"I needed a place to stay."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48193 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #48194 /* ~"It's a key - but it ain't a physical key, if you know what I'm sayin'. When you've got the keys together, you come tell me - and it unlocks knowledge in my mind. Till then, though, it stays secret. You got to satisfy the keyholders. That all you wanted?" ~ */
  IF ~~ THEN REPLY #48195 /* ~"What are you selling here?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48196 /* ~"I needed a place to stay."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48197 /* ~"Yes. Farewell."~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #48198 /* ~"You makin' any progress on that key? You look a little anxious to get movin' on this. You'll get it, sure."~ */
  IF ~~ THEN REPLY #48199 /* ~"What's the deal with this key, anyway?"~ */ GOTO 16
  IF ~~ THEN REPLY #48200 /* ~"What are you selling here?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48201 /* ~"I needed a place to stay."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48202 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
Global("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #48203 /* ~"You got one more thing to do. See that drunk bastard Chek'ka Plute? Go kill him." He raises his voice. "Hey, Chek'ka! Here comes your death!"~ */
  IF ~~ THEN EXTERN ~DCHEKKA~ 4
END

IF WEIGHT #3 ~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
GlobalGT("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #48204 /* ~"Now that you've killed that drunken fool, the gate can be unlocked. Are you ready to go? There's no coming back - the door'll be locked, barred, and magically protected once you pass through. You want to do this?"~ */
  IF ~~ THEN REPLY #48205 /* ~"I'm ready now."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48206 /* ~"I'd like to rest in the inn first."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48207 /* ~"I'd like to take a look at what you're selling first." ~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48208 /* ~"Not yet."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.3 21.3
  SAY #48209 /* ~"Then you just come back and let me know when you're ready."~ */
  IF ~~ THEN REPLY #48210 /* ~"Will do. Farewell."~ */ EXIT
END

IF WEIGHT #5 ~  Global("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 21 // from:
  SAY #48211 /* ~"Are you ready to go? There's no coming back - the door'll be locked, barred, and magically protected once you pass through. You want to do this?"~ */
  IF ~~ THEN REPLY #48212 /* ~"I'm ready now."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48213 /* ~"I'd like to rest in the inn first."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48214 /* ~"I'd like to take a look at what you're selling first."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48215 /* ~"Not yet."~ */ GOTO 20
END
