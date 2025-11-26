// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRUBIKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRUBIKON~

IF ~  Global("Know_Rubikon","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61026 /* ~You see a mechanical man constructed to be robe shaped. As you approach, he smiles at you and gives you a slight bow. "So we meet at last..." His voice lacks the monotone quality of the other creatures you have spoken to in the maze.~ */
  IF ~~ THEN REPLY #61028 /* ~"Greetings."~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #61029 /* ~Ignore the creature.~ */ DO ~SetGlobal("Know_Rubikon","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61031 /* ~He bows once again. "And to you as well, sirrah." He cocks his head to one side and gives you a curious look. "So, do we do battle for control of Rubikon now, or do we engage in conversation so that you may quench your curiosity?" He waits for your answer.~ */
  IF ~~ THEN REPLY #61033 /* ~"Let's get this fight over with."~ */ GOTO 2
  IF ~~ THEN REPLY #61035 /* ~"All right, I'm curious. Can we talk?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 25.0
  SAY #61036 /* ~He nods smartly at you. "Ah, a man of action I see. I can respect that." He takes a defensive stance. "Let the battle begin!"~ */
  IF ~~ THEN REPLY #61038 /* ~"Yes, let's get this over with."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 25.1
  SAY #61040 /* ~He nods smartly at you. "Ah, a man of knowledge I see. I must admit that I'd be disappointed in you were that not the case."~ */
  IF ~~ THEN REPLY #61041 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61043 /* ~"On second thought, I'd rather just leave. Farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.1 8.2 9.1 10.1 11.3 12.2 13.2 14.2 15.0 16.2 17.1 19.1 20.0 21.1 22.2 23.1
  SAY #61044 /* ~He smiles. "Ask away."~ */
  IF ~~ THEN REPLY #61045 /* ~"Who are you?"~ */ GOTO 5
  IF ~~ THEN REPLY #61046 /* ~"What are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #61047 /* ~"What can you tell me about this place?"~ */ GOTO 15
  IF ~~ THEN REPLY #61048 /* ~"What can you tell me about the modrons?"~ */ GOTO 16
  IF ~~ THEN REPLY #61049 /* ~"Why do we have to fight at all? Why not just go our separate ways?"~ */ GOTO 21
  IF ~~ THEN REPLY #61050 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #61051 /* ~He gives you a slight bow. "I am Rubikon, the Master Wizard. It is I who rule the red constructs that inhabit this realm."~ */
  IF ~~ THEN REPLY #61052 /* ~"So, are you supposed to be the evil wizard?"~ */ GOTO 6
  IF ~~ THEN REPLY #61053 /* ~"I see. I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61054 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61056 /* ~He frowns as he thinks. "I'm not comfortable with the word evil, sirrah. I admit that my views do not coincide with those of others in many ways, but does that make me evil? I think not."~ */
  IF ~~ THEN REPLY #61057 /* ~"Then what are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #61058 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61059 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #61060 /* ~He looks angry. "I am a prisoner, sirrah. I am not here by choice, of that I can assure you."~ */
  IF ~~ THEN REPLY #61061 /* ~"What do you mean?"~ */ GOTO 8
  IF ~~ THEN REPLY #61062 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61063 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 8 // from: 7.0 16.1
  SAY #61065 /* ~"I was created by the modrons to play in their meaningless dungeon games. Over time I became self-aware and asked for my freedom. Their leader refused me!"~ */
  IF ~  !InParty("Nordom")
~ THEN REPLY #61066 /* ~"What did you do?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",1)
~ GOTO 9
  IF ~  InParty("Nordom")
~ THEN REPLY #61067 /* ~"What did you do?"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #61069 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61071 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #61074 /* ~He glares at you. "I did what anyone would do when they are forced into slavery. I fought for my freedom!" He pauses for effect. "I disintegrated their leader and made it look like an accident. I then attempted to flee this hideous existence via the nearest exit."~ */
  IF ~~ THEN REPLY #61075 /* ~"What happened?"~ */ GOTO 10
  IF ~~ THEN REPLY #61076 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61078 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61079 /* ~He sighs and frowns. "Unfortunately there was a failsafe mechanism that I was not aware of. My attempt at freedom was judged an *error* and the dungeon collapsed upon itself, trapping me in stasis..." He gazes off into the distance. "I have been in stasis for centuries, sirrah. I would still be there if you hadn't reset the cube and set it for *hard* difficulty." He turns his attention to you.~ */
  IF ~~ THEN REPLY #61081 /* ~"So, what are your plans now?"~ */ GOTO 11
  IF ~~ THEN REPLY #61082 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61084 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61085 /* ~He shrugs. "I intend to openly march on the engineering room and claim it. I will then bend the modrons to my will and have the full resources of the cube at my disposal. Freedom shall be mine."~ */
  IF ~~ THEN REPLY #61086 /* ~"Let's say you do get out. What then?"~ */ GOTO 12
  IF ~~ THEN REPLY #61088 /* ~"What if the modrons refuse to help you?"~ */ GOTO 13
  IF ~~ THEN REPLY #61089 /* ~"So you intend to make the modrons your slaves?"~ */ GOTO 14
  IF ~~ THEN REPLY #61090 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61092 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.0 14.0
  SAY #61094 /* ~"I haven't decided yet. With the power of the cube behind me, I could be a force to be reckoned with." He shrugs. "Time will tell."~ */
  IF ~~ THEN REPLY #61096 /* ~"What if the modrons refuse to help you?"~ */ GOTO 13
  IF ~~ THEN REPLY #61097 /* ~"So you intend to make the modrons your slaves?"~ */ GOTO 14
  IF ~~ THEN REPLY #61098 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61099 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.0 14.1
  SAY #61101 /* ~He smiles at you. "Make no mistake, sirrah. They will help me. One way, or another, they will help me."~ */
  IF ~~ THEN REPLY #61102 /* ~"Let's say you do get out. What then?"~ */ GOTO 12
  IF ~~ THEN REPLY #61103 /* ~"So you intend to make the modrons your slaves?"~ */ GOTO 14
  IF ~~ THEN REPLY #61104 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61106 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 14 // from: 11.2 12.1 13.1
  SAY #61107 /* ~He frowns. "They are slaves already, sirrah! They are slaves to law, logic, and the confines of this experiment of theirs. Under my rule, they will finally have a purpose in life worthy of their abilities."~ */
  IF ~~ THEN REPLY #61108 /* ~"Let's say you do get out. What then?"~ */ GOTO 12
  IF ~~ THEN REPLY #61113 /* ~"What if the modrons refuse to help you?"~ */ GOTO 13
  IF ~~ THEN REPLY #61114 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61115 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 15 // from: 4.2
  SAY #61116 /* ~He laughs and looks around. "This little piece of hell? This is an example of modron madness. It exists on the plane of Limbo, where thoughts can actually become reality. That way they can simply *will* this dungeon into being and then populate it with constructs." He laughs again. "What a marvel."~ */
  IF ~~ THEN REPLY #61117 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61118 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.3
  SAY #61119 /* ~He shakes his head. "There are no modrons here, sirrah. Only prisoners and their captors."~ */
  IF ~~ THEN REPLY #61120 /* ~"I've seen the modrons."~ */ GOTO 17
  IF ~~ THEN REPLY #61121 /* ~"What prisoners?"~ */ GOTO 8
  IF ~~ THEN REPLY #61122 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61123 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61124 /* ~He shakes his head and gives you a sad smile. "No, sirrah. The creatures you have met are nothing more than the corrupt remains of modrons. Most, if not all, of these poor creatures are on the verge of going rogue and don't even realize it."~ */
  IF ~~ THEN REPLY #61125 /* ~"Rogue? What does that mean?"~ */ GOTO 18
  IF ~~ THEN REPLY #61126 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61127 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61128 /* ~He sighs. "This dungeon is composed of the essence of chaos. Such matter can easily be shaped into objects through the will of many like-minded creatures. It makes the construction of such structures quite simple. However, there is a price to be paid." He pauses.~ */
  IF ~~ THEN REPLY #61129 /* ~"Go on."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61130 /* ~"Modrons are the very essence of law, sirrah. Here, however, they are being exposed to the essence of chaos. Such exposure often results in a form of insanity. The modrons begin to lose their sense of *we* and instead become individuals. This is called *going rogue* and it is a capital offence in their society."~ */
  IF ~~ THEN REPLY #61131 /* ~"What happens to rogues?"~ */ GOTO 20
  IF ~~ THEN REPLY #61132 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61133 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61134 /* ~He shrugs. "I don't fully understand this, but modrons share some sort of common essence. If a modron goes rogue he takes a piece of this essence with him. The modrons will destroy all rogues so that this essence returns to the common pool from which it sprang."~ */
  IF ~~ THEN REPLY #61135 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61136 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 4.4
  SAY #61137 /* ~He smiles at you. "You have been accepted as their leader and you control the cube. Therefore, you must be eliminated. Nothing personal, you understand."~ */
  IF ~~ THEN REPLY #61138 /* ~"What if I tell the modrons you are their new leader?"~ */ GOTO 22
  IF ~~ THEN REPLY #61139 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61140 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61141 /* ~He shakes his head. "I'm afraid that just wouldn't work. The modrons would not accept the command to make me their leader. As far as they are concerned, I am their construct." He thinks for some time before continuing. "No, I'm going to have to eliminate you and then subjugate them. I see no other way." ~ */
  IF ~~ THEN REPLY #61142 /* ~"I can always leave and just let you take over."~ */ GOTO 23
  IF ~~ THEN REPLY #61143 /* ~"Well... I'm not going to just stand here and let you plot my death. I think it's time I take you out."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61144 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61145 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #61146 /* ~He shakes his head. "No, that's not good enough. I need to be sure that I don't have to worry about you ever returning and interfering with my plans. The only way to do that is to bury you here, now."~ */
  IF ~~ THEN REPLY #61147 /* ~"Well... I'm not going to just stand here and let you plot my death. I think it's time I take you out."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61148 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #61149 /* ~"I must be going now, farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 3.1 4.5 5.2 6.2 7.2 8.3 9.2 10.2 11.4 12.3 13.3 14.3 15.1 16.3 17.2 19.2 20.1 21.2 22.3 23.2
  SAY #61150 /* ~He nods at you. "Well, I've enjoyed our conversation, now it's time for you to die." He assumes a defensive stance.~ */
  IF ~~ THEN REPLY #61151 /* ~"So be it."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.1
  SAY #61152 /* ~"I am not one to be ignored, sirrah. You and I have a destiny to fulfill." He smiles at you. "So, do we do battle for control of Rubikon now, or do we engage in conversation so that you may quench your curiosity?"~ */
  IF ~~ THEN REPLY #61153 /* ~"Let's get this fight over with."~ */ GOTO 2
  IF ~~ THEN REPLY #61154 /* ~"All right, I'm curious. Can we talk?"~ */ GOTO 3
END

IF ~  Global("Know_Rubikon","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #61155 /* ~You see Rubikon, the wizard of the cube. He smiles at you and gives you a stiff bow. "So, we meet again. It seems our destinies still lie entwined. Let the battle begin anew." He takes a defensive stance.~ */
  IF ~~ THEN REPLY #61156 /* ~"It seems to me we've been here before."~ */ GOTO 27
  IF ~~ THEN REPLY #61157 /* ~"I have some questions..."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 26.0 28.0
  SAY #61158 /* ~He nods but does not relax his guard. "And so we shall until I defeat you. Enough talk, let's get this over with."~ */
  IF ~~ THEN REPLY #61159 /* ~"As you wish."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #61160 /* ~He shakes his head but does not relax his guard. "The time for questions has passed, sirrah. Now is the time for action."~ */
  IF ~~ THEN REPLY #61161 /* ~"It seems to me we've been here before."~ */ GOTO 27
END
