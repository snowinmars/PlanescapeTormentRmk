// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKARINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKARINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36099 /* ~You see a pretty young woman wearing simple clothes. She wanders about the market and examines everything, but does not make any purchases. You notice that people seem to be avoiding her, but they try not to make it obvious. She flashes you a warm smile as you approach.~ */
  IF ~~ THEN REPLY #36100 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36101 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36102 /* ~Her smile broadens. "Hello, I'm Karina. It's a pleasure to meet you, cutter." She continues to smile and waits for your response.~ */
  IF ~~ THEN REPLY #36103 /* ~"I have some questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 20.0
  SAY #36104 /* ~She nods her head. "All right. What do you want to know?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36105 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36106 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 4
  IF ~~ THEN REPLY #36107 /* ~"Where can I buy some weapons?"~ */ GOTO 5
  IF ~~ THEN REPLY #36108 /* ~"Where can I buy some magic?"~ */ GOTO 6
  IF ~  GlobalGT("Girl_Talks_Alot","AR0504",1)
!Global("Karina_Friend","GLOBAL",4)
~ THEN REPLY #36109 /* ~"You, uh... really like to talk, don't you?"~ */ GOTO 15
  IF ~~ THEN REPLY #36110 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36111 /* ~She frowns. "Lothar... I don't know anyone named Lothar. I can't recall ever hearing that name either." She gives you a concerned look. "Did you say Master of the Bones? That sounds ominous doesn't it? Why would anyone want to be known by that name?"~ */
  IF ~~ THEN REPLY #36113 /* ~"Well... it sounds rather impressive..."~ */ GOTO 7
  IF ~~ THEN REPLY #36114 /* ~"Well... to frighten people, I guess."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36116 /* ~"A skull? Why do you want such a thing? That's rather morbid, isn't it? Oh well, if you want a skull I guess you could get one from the Mortuary... well, maybe not. They don't like to give those things out now that I think about it... anyway, I don't know who would take your skull. Why do you want a skull?"~ */
  IF ~~ THEN REPLY #36118 /* ~"He's a friend of mine."~ */ GOTO 8
  IF ~~ THEN REPLY #36119 /* ~"He's a valuable piece of property."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #36121 /* ~She smiles and points to one of the counters. "Anze over there sells weapons. All kinds of weapons. Are you a warrior? How silly of me, of course you are. I mean, how could you not be with all those scars... oh, I'm sorry, I shouldn't mention those. You're not sensitive about them, are you?"~ */
  IF ~~ THEN REPLY #36123 /* ~"No, I've gotten used to them."~ */ GOTO 9
  IF ~~ THEN REPLY #36124 /* ~"Yes, so don't bring them up again."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #36126 /* ~She smiles and points to one of the counters. "Aalek over there sells magic things. Are you a mage? You don't look like one, but I guess looks can be rather deceiving. I don't know what a mage really looks like, now that I think about it. Do you?"~ */
  IF ~~ THEN REPLY #36128 /* ~"Yes. They wear robes with funny symbols and a pointy hat."~ */ GOTO 10
  IF ~~ THEN REPLY #36129 /* ~"No, not really."~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #36131 /* ~She nods her head. "Yes... I think I see what you mean. It does have a certain something about it. Hmmm. Kind of catchy, if you think about it long enough." She looks lost in thought.~ */
  IF ~~ THEN REPLY #36132 /* ~"I have some questions..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #36133 /* ~She gives you a quizzical look. "Really? A skull? That sounds weird, you know. I've never heard of anyone having a skull for a friend. I've seen people with pets and all, but never a skull. But then, you didn't say it was a pet, you said friend so that just makes it weirder." She pauses to think.~ */
  IF ~~ THEN REPLY #36134 /* ~"I have some questions..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #36135 /* ~She looks relieved. "Oh good... I didn't mean to hurt your feelings, or anyone else's for that matter. You just have to be careful what you say to someone, you know? I mean, people are different and you never know. What may offend one person may not offend another. So... anyway." She pauses for a breath and smiles at you.~ */
  IF ~~ THEN REPLY #36136 /* ~"I have some questions..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #36137 /* ~"Really? That's good to know. I mean, mages scare me so I want to know what they look like. I guess it's all that power they have, and they can do really incredible things and all, but you don't know what they look like. Warriors and priests and... and... you know, other powerful people just look powerful with all that stuff they carry around that says they are powerful people. But not mages." She pauses.~ */
  IF ~~ THEN REPLY #36138 /* ~"I have some other questions..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY #36139 /* ~She looks lost in thought as she taps her chin with a finger. Finally she nods her head. "Yes... I think you're right. It gives me the chills just thinking about it. 'Master of the Bones' is a rather scary title. I don't think I'd mess with anyone who had a title like that." She thinks some more.~ */
  IF ~~ THEN REPLY #36140 /* ~"I have some questions..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #36141 /* ~She shrugs. "Oh, well... all right, so you want to own a skull, which is fine. People collect the strangest things. I don't collect things but I know a lot of people who do. You're the only one I know who collects skulls, though. Maybe I should collect things..."~ */
  IF ~~ THEN REPLY #36142 /* ~"I have some questions..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 5.1
  SAY #36143 /* ~She looks sad and gives you a concerned look. "I'm sorry. I hope you'll forgive me, I don't mean to insult people or hurt their feelings and all. I mean, I don't like it when someone hurts me, so why should I hurt someone else? They probably don't like it either... unless they're weird... or something." She looks at you innocently.~ */
  IF ~~ THEN REPLY #36144 /* ~"I have some other questions..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #36145 /* ~She gets excited and points a finger at you. "See! That's just what I mean. They have all this awesome power and can do really incredible things but you can't tell just by looking at them. They can sneak up on you that way. I mean priests and warriors and what not, they have all this obvious stuff that they run around with and you can just tell what they are so you know to be careful. But not mages." She gives you a matter-of-fact look.~ */
  IF ~~ THEN REPLY #36146 /* ~"I have some questions..."~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #36147 /* ~She shuffles her feet and looks embarrassed. "I, uh... Well... I've been told that I probably talk a bit too much and, well... People tend to avoid me... and I don't really have any friends or male friends courting me... sometimes I get lonely..." Her voice gets lower and lower until she is finally silent. She stares at the ground at her feet.~ */
  IF ~~ THEN REPLY #36148 /* ~"Well, I can understand why."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Karina_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #36149 /* ~"I don't think you're a bad person, Karina. I happen to like you."~ */ DO ~AddexperienceParty(2000)
IncrementGlobalOnceEx("GLOBALGood_Karina_1","GLOBALGood",1)
SetGlobal("Karina_Friend","GLOBAL",1)
~ JOURNAL #35988 /* ~I met a young woman named Karina. She talks a bit too much and tends to ramble on, but she seems nice. She told me she is lonely. ~ */ GOTO 17
  IF ~~ THEN REPLY #36150 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36151 /* ~At first she just stands there and continues to stare at the ground. After a moment you notice that she is sobbing silently. She turns away from you and wanders off.~ */
  IF ~~ THEN REPLY #36152 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #36153 /* ~She gives you a hopeful look. "Really? Thank you so much... I don't know your name."~ */
  IF ~~ THEN REPLY #36154 /* ~Lie: "I'm Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Karina_2","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36155 /* ~"I don't remember my name."~ */ GOTO 19
  IF ~~ THEN REPLY #36156 /* ~"Farewell, Karina."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36157 /* ~She smiles. "Thank you, Adahn. It's nice to know I have a friend."~ */
  IF ~~ THEN REPLY #36158 /* ~"Farewell, Karina."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #36159 /* ~She frowns, starts to say something, and then thinks better of it. She shrugs her shoulders. "What's in a name? It's just nice to know I have a friend." She smiles.~ */
  IF ~~ THEN REPLY #36160 /* ~"Farewell, Karina."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #36161 /* ~You see Karina. She smiles at your approach. "Hello, again. How are you this fine day?"~ */
  IF ~~ THEN REPLY #36162 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36163 /* ~"Never mind. Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Karina_Friend","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #36164 /* ~Karina smiles and looks bubbly. "Hello, friend. It's so good to see you again."~ */
  IF ~~ THEN REPLY #36165 /* ~"Just wanted to say hello, Karina. Good day to you."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Karina_Friend","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #36166 /* ~Karina notices your approach and beams you a happy smile. "Hello again." She looks like she is about to burst with excitement. "Thank you so much, cutter! I am so grateful for what you did."~ */
  IF ~~ THEN REPLY #36167 /* ~"What did I do, Karina?"~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",4)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36168 /* ~She laughs. "You sent Corvus my way, I know because he told me so. He was afraid to approach me, thought I had a list of suitors... well, what I mean to say is, thank you." She gives you a hug.~ */
  IF ~~ THEN REPLY #36169 /* ~"You're welcome, Karina. I wish the two of you happiness."~ */ DO ~AddexperienceParty(500)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36170 /* ~"Thank you, cutter. I hope you find happiness in your life as well."~ */
  IF ~~ THEN REPLY #36171 /* ~"Farewell."~ */ EXIT
END
