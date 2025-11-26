// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAWAIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAWAIT~

IF ~  Global("Await","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1788 /* ~Before you is a young Dustman with stubble on his chin and dark circles beneath his eyes. He is staring at the wall with a somber expression.~ */
  IF ~~ THEN REPLY #14076 /* ~"Greetings."~ */ DO ~SetGlobal("Await","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #14077 /* ~Leave him be.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #1789 /* ~You see Awaiting-Death. He doesn't seem to be aware of you.~ */
  IF ~~ THEN REPLY #14078 /* ~"Greetings."~ */ GOTO 3
  IF ~~ THEN REPLY #14079 /* ~Ignore him and pass on by.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #14007 /* ~As you approach, Awaiting-Death turns to face you. "Greetings, again." His face breaks into a slight smile. "Thank you for your help."~ */
  IF ~~ THEN REPLY #14080 /* ~"It was my pleasure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #14008 /* ~The Dustman doesn't look up. He stares straight ahead, as if he is seeing something several leagues beyond the walls of the bar.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",0)
~ THEN REPLY #14081 /* ~"Can I ask you some questions?"~ */ DO ~SetGlobal("Morte_Await_Quip_1","GLOBAL",1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",1)
~ THEN REPLY #14082 /* ~"Can I ask you some questions?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #14083 /* ~"Can I ask you some questions?"~ */ GOTO 5
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14084 /* ~"Farewell."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14085 /* ~"Farewell."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14086 /* ~"Farewell."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14087 /* ~"Farewell."~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14009 /* ~The Dustman doesn't respond. He keeps staring into the distance.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 168
END

IF ~~ THEN BEGIN 5 // from: 3.1 3.2
  SAY #14010 /* ~The Dustman doesn't respond. He keeps staring into the distance.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14088 /* ~"Farewell, then."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14089 /* ~"Farewell, then."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14090 /* ~"Farewell, then."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14091 /* ~"Farewell, then."~ */ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 3.3 3.4 3.5 5.0 5.1 5.2
  SAY #14011 /* ~As you turn to leave, the Dustman suddenly speaks, his voice barely a murmur - you have to strain to hear the words. You *think* he said something about a contract.~ */
  IF ~~ THEN REPLY #14092 /* ~"What did you say?"~ */ GOTO 7
  IF ~~ THEN REPLY #14093 /* ~Ignore him and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14012 /* ~The Dustman turns to you, his face like stone, his eyes dead. "Why did you sign that Dead Contract?"~ */
  IF ~~ THEN REPLY #14094 /* ~Truth: "I needed the money."~ */ GOTO 8
  IF ~~ THEN REPLY #14095 /* ~Truth: "I wanted to see if it stirred my memory."~ */ GOTO 9
  IF ~~ THEN REPLY #14096 /* ~Truth: "Well, considering that death and I aren't on speaking terms anymore, I considered it a no-lose proposition."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #14097 /* ~Truth: "To be honest, I don't really know."~ */ GOTO 11
  IF ~~ THEN REPLY #14098 /* ~"What business is it of yours?"~ */ GOTO 16
  IF ~~ THEN REPLY #14099 /* ~"It's no business of yours. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14013 /* ~He looks disgusted. "Jink. I should have expected as much."~ */
  IF ~~ THEN REPLY #14100 /* ~"What should I have done it for?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #14014 /* ~"Stir your memory?" He frowns. "And remember nothing but this life that you have left behind?"~ */
  IF ~~ THEN REPLY #14101 /* ~"What should I have done it for?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #14015 /* ~He looks at you with an odd expression. "What do you mean?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14102 /* ~"I've seen what lies beyond death."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14103 /* ~"I don't know. I've yet to see what lies beyond death and remember it. If I die again, perhaps then I could speak of it."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14104 /* ~"I've died before. I don't remember much about it, though."~ */ GOTO 59
  IF ~~ THEN REPLY #14105 /* ~"I just do. Call it a hunch."~ */ GOTO 57
  IF ~~ THEN REPLY #14106 /* ~"Never mind. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #14016 /* ~The Dustman *harumphs.* "And you sold your body without a thought, without consideration... and that's all. You were looking for nothing else?"~ */
  IF ~~ THEN REPLY #14107 /* ~"Such as...?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0 11.0
  SAY #14017 /* ~"A release? A release from this existence. Look... surely you have seen the corpses that walk the streets of Sigil?" He sighs. "Mindless, incapable of feeling pain or anger or the weight of years... that is the True Death that walks there. That is perfection."~ */
  IF ~~ THEN REPLY #14108 /* ~"Why would anyone want such a thing?"~ */ GOTO 13
  IF ~~ THEN REPLY #14109 /* ~"'Perfection'? Bar that. That's nothing but rotting meat."~ */ GOTO 14
  IF ~~ THEN REPLY #14110 /* ~"You're not old, you're just ignorant. You've got your life ahead of you without looking for death. Death will come looking for you soon enough, so live while you can."~ */ GOTO 24
  IF ~~ THEN REPLY #14111 /* ~"Perhaps so - it is not for me to say. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #14018 /* ~"I would - the release is what I crave. The emptiness. No more pain and suffering."~ */
  IF ~~ THEN REPLY #14112 /* ~"You wish to die?"~ */ GOTO 22
  IF ~~ THEN REPLY #14113 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #14019 /* ~"*Is* it? You see only the surface, I see a release from pain and misery."~ */
  IF ~~ THEN REPLY #14114 /* ~"You wish to die?"~ */ GOTO 22
  IF ~~ THEN REPLY #14115 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.6 5.3
  SAY #14020 /* ~As you turn to leave, the Dustman suddenly speaks, his voice barely a murmur - you have to strain to hear the words. You *think* he said something about wanting to die.~ */
  IF ~~ THEN REPLY #14116 /* ~"What did you say?"~ */ GOTO 16
  IF ~~ THEN REPLY #14117 /* ~Ignore him and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.4 15.0
  SAY #14021 /* ~The boy's expression does not flicker. "Do you want to die?"~ */
  IF ~~ THEN REPLY #14118 /* ~Truth: "No. Do you?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",1)
~ GOTO 19
  IF ~~ THEN REPLY #14120 /* ~Truth: "Yes. Do you?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #14121 /* ~Lie: "Yes. Do you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_3","GLOBALLaw",-1)
SetGlobal("Await_Die_Answer","GLOBAL",4)
~ GOTO 18
  IF ~~ THEN REPLY #14122 /* ~"I really don't know. Do *you* want to die?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",5)
~ GOTO 22
  IF ~~ THEN REPLY #14123 /* ~"Are you *threatening* me, boy?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #14124 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.4
  SAY #14022 /* ~He blinks. "Yes... yes, I am. Why, are you going to kill me?" He stiffens, as if making a resolution. "Go ahead, I care not."~ */
  IF ~~ THEN REPLY #14125 /* ~"If that's your wish, I'll honor it... prepare to die."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14126 /* ~"You *want* to die?"~ */ GOTO 22
  IF ~~ THEN REPLY #14127 /* ~"I don't care either. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2
  SAY #14023 /* ~"Yes..." He studies you. "Why do you want to die?"~ */
  IF ~~ THEN REPLY #14128 /* ~Truth: "What is there to live for? I am trapped in this city filled with beasts and monsters, with no recollection of how I got here or why. I am a stranger both to this city and to myself. Life holds nothing of value for me."~ */ GOTO 20
  IF ~~ THEN REPLY #14129 /* ~Truth: "Because it is denied to me. That alone makes me desire it."~ */ GOTO 20
  IF ~~ THEN REPLY #14130 /* ~Truth: "There is something... missing inside me. I am here speaking with you, but still, somehow, I feel hollow inside. No matter what I do, I cannot shake the feeling. I think death may be preferable."~ */ GOTO 20
  IF ~~ THEN REPLY #14131 /* ~Truth: "I think it is possible that I may learn something about myself in death that I cannot in life."~ */ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",3)
~ THEN REPLY #14132 /* ~Truth: "I was lying when I told you I wanted to die. Who does? Do you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_7","GLOBALLaw",-2)
~ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",4)
~ THEN REPLY #14133 /* ~Truth: "I was lying when I told you I wanted to die. Who does? Do you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_2","GLOBALLaw",1)
~ GOTO 20
  IF ~~ THEN REPLY #14282 /* ~"I do not want to discuss this with you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #14024 /* ~"Yes..." He studies you. "Why do you want to live?"~ */
  IF ~~ THEN REPLY #14134 /* ~Truth: "I just do."~ */ GOTO 20
  IF ~~ THEN REPLY #14135 /* ~Truth: "Survival instinct. I *want* to live."~ */ GOTO 20
  IF ~~ THEN REPLY #14136 /* ~Truth: "I don't want to join oblivion just yet. I like being alive a *lot* better."~ */ GOTO 20
  IF ~~ THEN REPLY #14137 /* ~Truth: "There are certain questions I need answered about my life before I am willing to surrender it. I want to find out who I am."~ */ GOTO 20
  IF ~~ THEN REPLY #14138 /* ~"I don't know."~ */ GOTO 21
  IF ~~ THEN REPLY #14139 /* ~"I do not want to discuss this with you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0 18.1 18.2 18.3 18.4 18.5 19.0 19.1 19.2 19.3
  SAY #14025 /* ~The Dustman listens silently. After you speak, he does not respond, merely watches you. He looks like he is thinking. ~ */
  IF ~~ THEN REPLY #14140 /* ~"Do you want to die? Is that why you asked?"~ */ GOTO 22
  IF ~~ THEN REPLY #14141 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.4
  SAY #14026 /* ~The Dustman drops his gaze and goes silent. "Then we have nothing to discuss... now or ever. Farewell."~ */
  IF ~~ THEN REPLY #14142 /* ~"Before I go... why is it you want to die?"~ */ GOTO 23
  IF ~~ THEN REPLY #14143 /* ~"Farewell, then."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.0 16.3 17.1 20.0
  SAY #14027 /* ~"Yes."~ */
  IF ~~ THEN REPLY #14144 /* ~"Why do you want to die?"~ */ GOTO 23
  IF ~~ THEN REPLY #14145 /* ~"Why don't you want to live?"~ */ GOTO 24
  IF ~~ THEN REPLY #14146 /* ~"Then why haven't you killed yourself already?"~ */ GOTO 42
  IF ~~ THEN REPLY #14147 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 44.1 45.2 55.0 56.1 62.2
  SAY #14028 /* ~"This existence... this existence is a mockery of life. I do not wish to continue the charade any longer." His face wrinkles in disgust. "Why would anyone wish to remain in this foul city in the center of a multiverse that feeds on pain and hatred? Death... is silent... comforting."~ */
  IF ~~ THEN REPLY #14148 /* ~"Surely living cannot be as bad as you make it out to be."~ */ GOTO 24
  IF ~~ THEN REPLY #14149 /* ~"That's a bleak outlook... there's a lot more to life than pain and hatred."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Await_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #14150 /* ~"Then why haven't you killed yourself already?"~ */ GOTO 42
  IF ~~ THEN REPLY #14151 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.2 22.1 23.0 23.1
  SAY #14029 /* ~"This is *living?*" He bares his teeth, and his hands clench. "This existence... this existence is a *mockery* of life. I do not wish to continue the charade any longer. Death is silent... comforting."~ */
  IF ~~ THEN REPLY #14152 /* ~"Trust me, it's not."~ */ GOTO 25
  IF ~~ THEN REPLY #14153 /* ~"Maybe after the first death."~ */ GOTO 58
  IF ~~ THEN REPLY #14154 /* ~"Then why haven't you killed yourself already?"~ */ GOTO 42
  IF ~~ THEN REPLY #14155 /* ~"If this life holds nothing for you, then you should die."~ */ GOTO 42
  IF ~~ THEN REPLY #14156 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14030 /* ~The boy seems irritated by the comment. "And how do you know?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14157 /* ~"I've seen what lies beyond death."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14158 /* ~"I don't know. I've yet to see what lies beyond death and remember it. If I die again, perhaps then I could speak of it."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14159 /* ~"I think I've died before. I don't remember much about it, though."~ */ GOTO 59
  IF ~~ THEN REPLY #14160 /* ~"I just do. Call it a hunch."~ */ GOTO 57
  IF ~~ THEN REPLY #14161 /* ~"Never mind. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 10.0 25.0 57.2 58.3
  SAY #14031 /* ~The boy stares at you. "You are speaking truthfully." He looks at you in amazement. "What is there? What did you see?"~ */
  IF ~~ THEN REPLY #14162 /* ~Truth: "I lay on an island adrift upon an ocean of great darkness. The island was formed of shadowed stones... but the stones were *not* stones, for they murmured and whispered to me in a speech I could not understand. There is no silence there, no comfort, and the chill burrows beneath the flesh and sinks into the bone."~ */ GOTO 31
  IF ~~ THEN REPLY #14163 /* ~"I will not speak of that place to anyone. I have said too much already."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #14032 /* ~"You *must* tell me! I must know!"~ */
  IF ~~ THEN REPLY #14164 /* ~Truth: "I lay on an island adrift upon an ocean of great darkness. The island was formed of shadowed stones... but the stones were *not* stones, for they murmured and whispered to me in a speech I could not understand. There is no silence there, no comfort, and the chill burrows beneath the flesh and sinks into the bone."~ */ GOTO 31
  IF ~~ THEN REPLY #14165 /* ~"I will tell you nothing."~ */ GOTO 28
  IF ~~ THEN REPLY #14166 /* ~"I will not speak of it. Farewell."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #14033 /* ~"You must tell me!" He clenches his fist. "What would you *ask* of me?!"~ */
  IF ~~ THEN REPLY #14167 /* ~"I would ask you to live."~ */ GOTO 29
  IF ~~ THEN REPLY #14168 /* ~"I give nothing, and I will ask nothing of you. Farewell."~ */ GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14034 /* ~"You mock me, sir. You make a fool of my questions..."~ */
  IF ~~ THEN REPLY #14169 /* ~"*You* are the fool to want to throw away your life so carelessly. It insults the dead, and it insults the living."~ */ GOTO 30
  IF ~~ THEN REPLY #14170 /* ~"We have nothing more to say. Farewell."~ */ GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14035 /* ~"Speak what you saw! What is the True Death?! What did you see there?" His voice grows louder and more insistent, so much so that surrounding Dustmen turn their heads. ~ */
  IF ~~ THEN REPLY #14171 /* ~Truth: "I lay on an island adrift upon an ocean of great darkness. The island was formed of shadowed stones... but the stones were *not* stones, for they murmured and whispered to me in a speech I could not understand. There is no silence there, no comfort, and the chill burrows beneath the flesh and sinks into the bone."~ */ GOTO 31
  IF ~~ THEN REPLY #14172 /* ~Lie: "It is oblivion. There is nothing there. It is non-existence."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_2","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #14173 /* ~Lie: "It is a place of great joy, of celestial beauty. It is a place where a soul may be happy."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_3","GLOBALGood",-1)
~ GOTO 35
  IF ~~ THEN REPLY #14174 /* ~"I will not say. Farewell." ~ */ GOTO 36
END

IF ~~ THEN BEGIN 31 // from: 26.0 27.0 30.0
  SAY #14036 /* ~"There is no difference..." He looks down at the floor and chews his lips with a strange expression. "Beyond the shadow of this existence, more misery awaits. There is no oblivion, no cleansing... nothing changes. The planes rotate... and nothing ever changes."~ */
  IF ~~ THEN REPLY #14175 /* ~"Except you. You can still change."~ */ GOTO 32
  IF ~~ THEN REPLY #14176 /* ~"If you believe that, then it will be true."~ */ GOTO 33
  IF ~~ THEN REPLY #14177 /* ~"I will take my leave. Farewell."~ */ GOTO 36
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #14037 /* ~He scoffs. "Nay, I have tried. Repeatedly."~ */
  IF ~~ THEN REPLY #14178 /* ~"If you believe that, then it will be true."~ */ GOTO 33
  IF ~~ THEN REPLY #14179 /* ~"Then there is nothing more to say. I will leave now."~ */ GOTO 36
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #14038 /* ~"It is more than belief, it is reality." His gaze turns dark. "Have you seen this city? It rots, and everything within it rots with it... there is no hope, nothing to *strive* for. Everything is stained with darkness and shadow."~ */
  IF ~~ THEN REPLY #14180 /* ~"What about your beliefs as a Dustman? Isn't that a worthy enough goal?"~ */ GOTO 37
  IF ~~ THEN REPLY #14181 /* ~"Then there is nothing more to say. I will leave now."~ */ GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #14039 /* ~"As I suspected." He sighs. "Then it shall be a better place than here. And since I must die to reach it..." He looks at you. "Will you help me die?"~ */
  IF ~~ THEN REPLY #14182 /* ~"No."~ */ GOTO 43
  IF ~~ THEN REPLY #14183 /* ~"Yes."~ */ GOTO 44
  IF ~~ THEN REPLY #14184 /* ~"It depends... how much?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14185 /* ~"If you lack the conviction to kill yourself, I'm not going to do it for you."~ */ GOTO 55
  IF ~~ THEN REPLY #14186 /* ~"No... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.2
  SAY #14040 /* ~The Dustman smiles briefly, then gloom clouds his features. "Then I *must* die." He looks at you hopefully. "Will you help me?"~ */
  IF ~~ THEN REPLY #14187 /* ~"No."~ */ GOTO 43
  IF ~~ THEN REPLY #14188 /* ~"Yes."~ */ GOTO 44
  IF ~~ THEN REPLY #14189 /* ~"It depends... how much?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14190 /* ~"If you lack the conviction to kill yourself, I'm not going to do it for you."~ */ GOTO 55
  IF ~~ THEN REPLY #14191 /* ~"No... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.1 30.3 31.2 32.1 33.1
  SAY #14041 /* ~He stares at you for a moment, opens his mouth, then closes it. "Leave, then. We shall not speak again."~ */
  IF ~~ THEN REPLY #14192 /* ~Leave.~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.0
  SAY #14042 /* ~He nods. "The Dustman philosophy is a worthy goal. Else I would not have become a Dustman." ~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14193 /* ~"Then heed this: You are too eager to reach oblivion. According to the tenets of the Dustmen, that very eagerness to reach the True Death will keep you forever from it."~ */ GOTO 38
  IF ~~ THEN REPLY #14194 /* ~"Then why not make the beliefs of the Dustmen your focus? Perhaps this is a life of pain and misery, but if you focus on your beliefs and that which is of value to you, they shall help you work past it."~ */ GOTO 40
  IF ~~ THEN REPLY #14195 /* ~"Then there is nothing more to say. I will leave now."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #14043 /* ~He snarls. "You sound like one of the factors... they never cease *lecturing* me..."~ */
  IF ~~ THEN REPLY #14196 /* ~"They are correct to do so - they have only your wish to die at heart. If you wish to reach the True Death, you must come to terms with this life first, no matter how painful it seems to you. It is an opportunity, and you are still young. Perhaps seeing more of this life will calm your eagerness for death."~ */ GOTO 39
  IF ~~ THEN REPLY #14197 /* ~"Then I shall lecture you no longer. Farewell."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #14044 /* ~"But how..." He seems puzzled. "How should I deal with it?"~ */
  IF ~~ THEN REPLY #14198 /* ~"Simply try to live as best you can. Use this life, no matter how painful, as an opportunity. You are young. Perhaps seeing more of this life will kill your eagerness for death."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14199 /* ~"You must endure this life. In enduring, you will learn to let the pain and misery wash over you. Soon, they will not affect you at all, and then you will begin to make progress toward the True Death and the oblivion you seek."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14200 /* ~"That is up to you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #14045 /* ~"Perhaps..." He considers what you have said. "Perhaps you are right. But... sometimes it is hard to ignore the pain of this life. How should I deal with it?"~ */
  IF ~~ THEN REPLY #14201 /* ~"Simply try to live as best you can. Use this life, no matter how painful, as an opportunity. You are young. Perhaps seeing more of this life will kill your eagerness for death."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14202 /* ~"You must endure this life. In enduring, you will learn to let the pain and misery wash over you. Soon, they will not affect you at all, and then you will begin to make progress for the True Death and the oblivion you seek."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14203 /* ~"Our entire lives are spent learning how to die. Only you can answer the question you have asked." ~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",3)
~ GOTO 41
  IF ~~ THEN REPLY #14204 /* ~"That is up to you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0 39.1 40.0 40.1 40.2 69.0
  SAY #14046 /* ~The boy falls silent, thinking. Eventually, he turns back up to you. "Your words carry weight, sir... and a fresh perspective. I will do as you have said."~ */
  IF ~~ THEN REPLY #14205 /* ~"That is all I ask... live, grow old, and learn. Farewell."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.2 23.2 24.2 24.3
  SAY #14047 /* ~"I have been looking for a means to end my life. Will you kill me?"~ */
  IF ~~ THEN REPLY #14206 /* ~"No."~ */ GOTO 43
  IF ~~ THEN REPLY #14207 /* ~"Yes."~ */ GOTO 44
  IF ~~ THEN REPLY #14208 /* ~"It depends... how much?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14209 /* ~"If you lack the conviction to kill yourself, I'm not going to do it for you."~ */ GOTO 55
  IF ~~ THEN REPLY #14210 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 34.0 35.0 38.1 42.0 44.2 45.3 55.1 56.2
  SAY #14048 /* ~"Very well. Leave me. We shall not speak again."~ */
  IF ~~ THEN REPLY #14211 /* ~"Farewell, then."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 34.1 35.1 42.1
  SAY #14049 /* ~He sighs in relief, then pulls a bag out of his robe. 
It *clinks* as he places it in front of him. "Do it now. I cannot wait any longer."~ */
  IF ~~ THEN REPLY #14212 /* ~"All right... close your eyes."~ */ GOTO 45
  IF ~~ THEN REPLY #14213 /* ~"Hold on... I don't want your money. I want to know why you want to die."~ */ GOTO 23
  IF ~~ THEN REPLY #14214 /* ~"I will not do this. Farewell."~ */ GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 44.0 56.0
  SAY #14050 /* ~He closes his eyes. ~ */
  IF ~~ THEN REPLY #14215 /* ~Reach your hands around his neck and strangle him.~ */ GOTO 47
  IF ~~ THEN REPLY #14216 /* ~Take the money and leave quietly.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_5","GLOBALGood",-1)
~ GOTO 46
  IF ~~ THEN REPLY #14217 /* ~"Keep your money. I want to know why you want to die."~ */ GOTO 23
  IF ~~ THEN REPLY #14218 /* ~"I will not do this. Farewell."~ */ GOTO 43
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #14051 /* ~You gently pick up the bag from the ground and leave quietly - the sack appears to hold about fifty copper pieces. The Dustman remains still as you step away, his eyes closed, never moving.~ */
  IF ~~ THEN REPLY #14219 /* ~"The contents of this bag are the price for your foolishness. Farewell..."~ */ DO ~GivePartyGold(50)
SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0
  SAY #14052 /* ~You place your hands on his neck, and you begin slowly to constrict. He gives a choked gasp, and his eyes open wide - with a pleading expression, he begins to claw at your hands.~ */
  IF ~~ THEN REPLY #14220 /* ~Snap his neck.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
IncrementGlobalOnceEx("GLOBALChaotic_Await_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_6","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #14221 /* ~Release him.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #14053 /* ~You mean to keep strangling him when suddenly, without you even meaning to, you pull your hands from his neck. Awaiting-Death takes a breath - and looks like he is about to thank you for stopping - when you lock your hands onto his temples and twist his head sharply to the left. There is a *crack,* and the boy falls limp in your arms.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14222 /* ~"See you on the other side, Dustie..."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 49
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14223 /* ~"See you on the other side, Dustie..."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14054 /* ~To your surprise, the act seemed instinctual, as if you had done it many times before... with this thought comes the stirring of a memory, but it is not strong enough to surface.~ */
  IF ~~ THEN REPLY #14224 /* ~Let the body fall to the ground.~ */ DO ~GiveExperience(Protagonist,250)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.0
  SAY #14055 /* ~As the body falls to the ground, there is suddenly a great roaring sound throughout the bar...~ */
  IF ~~ THEN REPLY #14225 /* ~"Uh-oh..."~ */ DO ~Help()
Kill(Myself)
Deactivate(Myself)
GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.1
  SAY #14056 /* ~You release him... and to your discomfort, you find yourself doing so reluctantly. The boy gasps for breath, coughing violently.~ */
  IF ~~ THEN REPLY #14226 /* ~"Changed your mind?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14057 /* ~The boy nods weakly.~ */
  IF ~~ THEN REPLY #14227 /* ~"Look... next time you want to 'die,' you better be damn sure, because the next fellow may not stop when you ask him to. Now stop moping around about life's misery when you obviously still want to be a part of it."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #14058 /* ~The boy looks at you for a moment in silence, then he nods slowly, rubbing his neck.~ */
  IF ~~ THEN REPLY #14228 /* ~"I'm keeping the money, as the price for this lesson."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_6","GLOBALLaw",-1)
GivePartyGold(50)
~ GOTO 54
  IF ~~ THEN REPLY #14229 /* ~"I didn't fulfill my terms of the agreement, so keep your money."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_1","GLOBALLaw",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1
  SAY #14059 /* ~The boys nods again, and finally catches his breath. "Very... well. Thank... you, sir. For giving me... a fresh perspective."~ */
  IF ~~ THEN REPLY #14230 /* ~"Don't thank me, just *live.* It insults the dead when you treat life carelessly. Farewell."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 34.3 35.3 42.3
  SAY #14060 /* ~"It is not a matter of conviction..."~ */
  IF ~~ THEN REPLY #14231 /* ~"Then it must be another matter, then. So I ask you: what is it about living that drives you to hate it?"~ */ GOTO 23
  IF ~~ THEN REPLY #14232 /* ~"It is. If you had truly wished to die, you would have found a means to do so already. Waste no more of our time with this idle chatter. Farewell."~ */ GOTO 43
END

IF ~~ THEN BEGIN 56 // from: 34.2 35.2 42.2
  SAY #14061 /* ~He tosses a small bag on to the table. "In this bag is all that I own. Fifty coppers. Kill me, and it is yours."~ */
  IF ~~ THEN REPLY #14233 /* ~"All right... close your eyes."~ */ GOTO 45
  IF ~~ THEN REPLY #14234 /* ~"Hold on... I don't want your money. I want to know why you want to die."~ */ GOTO 23
  IF ~~ THEN REPLY #14235 /* ~"I will not do this. Farewell."~ */ GOTO 43
END

IF ~~ THEN BEGIN 57 // from: 10.3 25.3
  SAY #14062 /* ~The Dustman scoffs. "Hardly convincing."~ */
  IF ~~ THEN REPLY #14236 /* ~"Try and kill me then. See what happens."~ */ GOTO 62
  IF ~~ THEN REPLY #14237 /* ~"I can prove it."~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14238 /* ~"I've seen what lies beyond death."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14239 /* ~"I don't know. I've yet to see what lies beyond death and remember it. If I die again, perhaps then I could speak of it."~ */ GOTO 59
  IF ~~ THEN REPLY #14240 /* ~"I think the only one lying is you, and only to yourself. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 24.1
  SAY #14063 /* ~The Dustman blinks, then sneers. "The first death? What, were you resurrected?"~ */
  IF ~~ THEN REPLY #14241 /* ~"Resurrected?"~ */ GOTO 60
  IF ~~ THEN REPLY #14242 /* ~"Try and kill me then. See what happens."~ */ GOTO 62
  IF ~~ THEN REPLY #14243 /* ~"Would you like to see?"~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14244 /* ~"I've seen what lies beyond death."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14245 /* ~"I don't know. I've yet to see what lies beyond death and remember it. If I die again, perhaps then I could speak of it."~ */ GOTO 59
  IF ~~ THEN REPLY #14246 /* ~"If I ever die and remember, I will return and speak of it to you. Then you may gauge whether I lie or not. Farewell."~ */ GOTO 59
  IF ~~ THEN REPLY #14247 /* ~"I think the only one lying is you, and only to yourself. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1 10.2 25.1 25.2 57.3 58.4 58.5
  SAY #14064 /* ~The Dustman blinks, then sneers. "You lie. No man can die more than once... not without being resurrected by mighty magics."~ */
  IF ~~ THEN REPLY #14248 /* ~"Resurrected?"~ */ GOTO 60
  IF ~~ THEN REPLY #14249 /* ~"Try and kill me then. See what happens."~ */ GOTO 62
  IF ~~ THEN REPLY #14250 /* ~"Would you like to see?"~ */ GOTO 63
  IF ~~ THEN REPLY #14251 /* ~"If I ever die and remember, I will return and speak of it to you. Then you may gauge whether I lie or not. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #14252 /* ~"I think the only one lying is you, and only to yourself. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 59.0 62.1
  SAY #14065 /* ~"Resurrected... brought back to life... the magic required is indeed powerful."~ */
  IF ~~ THEN REPLY #14253 /* ~"Who would be capable of such power?"~ */ GOTO 61
  IF ~~ THEN REPLY #14254 /* ~"You don't believe I can't die? Try and kill me then. See what happens."~ */ GOTO 62
  IF ~~ THEN REPLY #14255 /* ~"You don't believe I can't die? I can prove it to you."~ */ GOTO 63
  IF ~~ THEN REPLY #14256 /* ~"If I ever die and remember, I will return and speak of it to you. Then you may gauge whether I lie or not. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #14257 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #14066 /* ~"A powerful sorcerer or priest... or one of the powers... but not anyone I know." He frowns. "And I don't believe you know of anyone of that sort, either."~ */
  IF ~~ THEN REPLY #14258 /* ~"You don't believe I can't die? Try and kill me then. See what happens."~ */ GOTO 62
  IF ~~ THEN REPLY #14259 /* ~"You don't believe I can't die? I can prove it to you."~ */ GOTO 63
  IF ~~ THEN REPLY #14260 /* ~"If I ever die and remember, I will return and speak of it to you. Then you may gauge whether I lie or not. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #14261 /* ~"I think the only one lying is you, and only to yourself. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.0 58.1 59.1 60.1 61.0
  SAY #14067 /* ~He looks at you skeptically. "Nay, I think not, even if I felt the urge to do so."~ */
  IF ~~ THEN REPLY #14262 /* ~"Then I shall force you to watch me: I'll show you what death holds."~ */ GOTO 63
  IF ~~ THEN REPLY #14263 /* ~"Never mind, then. What did you mean before, about being 'resurrected'?"~ */ GOTO 60
  IF ~~ THEN REPLY #14264 /* ~"If fear and hesitation govern all your actions, I doubt this existence holds much joy."~ */ GOTO 23
  IF ~~ THEN REPLY #14265 /* ~"Enough of this, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 57.1 58.2 59.2 60.2 61.1 62.0
  SAY #14068 /* ~"What... do you mean?" He looks like he wants to turn away but he cannot. "You can't seriously..."~ */
  IF ~~ THEN REPLY #14266 /* ~Take your hands, twist your neck.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Death","GLOBAL",1)
~ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #14069 /* ~Your vision slowly returns... your death felt different this time. You see Awaiting-Death standing above you... he looks horrified and fascinated. He has propped you into a chair, and is looking apprehensively at the other bar patrons... they don't appear to have noticed or have mistaken you for a drunk.~ */
  IF ~~ THEN REPLY #14267 /* ~"Convinced now?"~ */ GOTO 66
END

IF ~~ THEN BEGIN 65 // from:
  SAY #14070 /* ~"You're barmy." He glances at your wounds. "You must not have died, merely been wounded."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.0
  SAY #14071 /* ~"Are... are you one of the walking dead?"~ */
  IF ~~ THEN REPLY #14268 /* ~"No."~ */ GOTO 67
  IF ~~ THEN REPLY #14269 /* ~"Yes."~ */ GOTO 68
  IF ~~ THEN REPLY #14270 /* ~"I don't know."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #14072 /* ~"Then what are you?"~ */
  IF ~~ THEN REPLY #14271 /* ~"I don't know. But I die and am reborn."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0
  SAY #14073 /* ~"Yet... you still think, you still feel?"~ */
  IF ~~ THEN REPLY #14272 /* ~"Yes."~ */ GOTO 69
  IF ~~ THEN REPLY #14273 /* ~"Yes, but there... there is a hollowness. Something is missing, and it eats at you, never leaves you at peace."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #14074 /* ~"To be dead... and *still* think and feel?! Will misery never leave a body be?" The thought seems to horrify him. "Even death is no release."~ */
  IF ~~ THEN REPLY #14274 /* ~"Indeed. Perhaps you should not be so quick to abandon this life before knowing what the next life holds for you."~ */ GOTO 41
END

IF ~  Global("Await","GLOBAL",3)
~ THEN BEGIN 70 // from:
  SAY #61496 /* ~Awaiting-Death ignores you; he makes no eye contact whatsoever.~ */
  IF ~~ THEN REPLY #61497 /* ~Leave.~ */ EXIT
END
