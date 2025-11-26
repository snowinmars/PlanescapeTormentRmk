// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEK~

IF ~  Global("Know_Tek","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #58197 /* ~You see a vaguely humanoid creature covered with grotesque scales. It has huge wings and a prehensile tail. It watches your approach with amusement.~ */
  IF ~~ THEN REPLY #58198 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58199 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58200 /* ~It barks out a laugh and smiles at you. "Yes... greetings to you, little human."~ */
  IF ~~ THEN REPLY #58201 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58202 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.2 8.0 9.2 11.1 12.1 13.1 14.1 17.1 18.1 19.1 21.1 22.0 26.1 27.1 29.1 30.0
  SAY #58203 /* ~"By all means, ask your questions..." It gives you a humorous smile.~ */
  IF ~~ THEN REPLY #58204 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #58205 /* ~"What are you?"~ */ GOTO 5
  IF ~~ THEN REPLY #58206 /* ~"What are you doing here?"~ */ GOTO 11
  IF ~~ THEN REPLY #58207 /* ~"What can you tell me about this place?"~ */ GOTO 13
  IF ~  Global("AR0800_Visited","GLOBAL",0)
~ THEN REPLY #58208 /* ~"What can you tell me about the city of Curst?"~ */ GOTO 15
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",0)
~ THEN REPLY #58209 /* ~"What has happened to Curst? Why all the changes?"~ */ GOTO 23
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",1)
~ THEN REPLY #58210 /* ~"What has happened to Curst? Why all the changes?"~ */ GOTO 28
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #58211 /* ~"As a Godsman I happen to know we are working on a secret device in the foundry. Can you tell me anything about that?"~ */ GOTO 29
  IF ~~ THEN REPLY #58212 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58213 /* ~It ponders your question for a while. "My name is not important. If there were a reason for you to know me, you would." It pauses. "If you need to attach a name to me, you may call me Tek'elach." The creature smiles.~ */
  IF ~~ THEN REPLY #58214 /* ~"What kind of name is that?"~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #58215 /* ~"I have some questions..."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58216 /* ~"Farewell."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58217 /* ~"The only one you will get from me..." It stares at you intently.~ */
  IF ~~ THEN REPLY #58218 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58219 /* ~"I think I should be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #58220 /* ~It cocks its head to one side and gives you a thoughtful look. "What am I? Hmm... do you really need to know?" It pauses to think. "No harm I suppose. I believe your kind knows me as a greater baatezu... specifically, a cornugon."~ */
  IF ~~ THEN REPLY #58221 /* ~"You're a greater baatezu?"~ */ GOTO 6
  IF ~~ THEN REPLY #58222 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58223 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58224 /* ~"Yes... does this surprise you?" It looks at you expectantly.~ */
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #58225 /* ~"I just don't see why you'd be here. Aren't you supposed to be fighting some Blood War or something back home?"~ */ GOTO 7
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #58226 /* ~"I just don't see why you'd be here. Aren't you supposed to be doing something else?"~ */ GOTO 9
  IF ~~ THEN REPLY #58227 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58228 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58229 /* ~It frowns at you. "Yes... there is the Blood War. But, that is far away for now and need not be spoken of..."~ */
  IF ~~ THEN REPLY #58230 /* ~"Why not?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 10.0 12.0 14.0
  SAY #58231 /* ~"For no other reason than I choose not to... for now." It glares at you.~ */
  IF ~~ THEN REPLY #58232 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58233 /* ~"I'll be leaving now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58234 /* ~It gives you a confused look. "Something else? Do you refer to the Blood War perhaps?"~ */
  IF ~~ THEN REPLY #58235 /* ~"What is the Blood War?"~ */ GOTO 10
  IF ~~ THEN REPLY #58236 /* ~"Not specifically the war, just something other than sitting here in this tunnel."~ */ GOTO 11
  IF ~~ THEN REPLY #58237 /* ~"Never mind, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58238 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 29.0
  SAY #58239 /* ~It ponders your question for a while. At first you think it will not answer you. "The Blood War is a... skirmish that we are having with the tanar'ri. It is of no consequence and need not be spoken of."~ */
  IF ~~ THEN REPLY #58240 /* ~"Why is that?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 2.2 9.1
  SAY #58241 /* ~"My business here is my own; I don't see it as a concern or yours." It smiles knowingly at you. "I suggest you change the subject."~ */
  IF ~~ THEN REPLY #58242 /* ~"I don't understand, why the secrecy? You give me the impression that something else is going on here."~ */ GOTO 12
  IF ~~ THEN REPLY #58243 /* ~"Very well, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58244 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #58245 /* ~It looks at you with mock surprise. "Do I? Or do you choose to interpret my words or actions to suit your own needs? Either way, I have answered your question. I will speak no more on this matter."~ */
  IF ~~ THEN REPLY #58246 /* ~"Why?"~ */ GOTO 8
  IF ~~ THEN REPLY #58247 /* ~"Very well, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58248 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #58249 /* ~"What is there to tell?" It gestures vaguely at the surroundings. "Look with your own eyes. All is laid bare before you."~ */
  IF ~~ THEN REPLY #58252 /* ~"I can't help but feel that there is more going on here than meets the eye..."~ */ GOTO 14
  IF ~~ THEN REPLY #58253 /* ~"I see... I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58254 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58250 /* ~It looks at you with mock surprise. "Really? Are you that paranoid or that suspicious? Either way, I have answered your question. I will speak no more on this matter."~ */
  IF ~~ THEN REPLY #58251 /* ~"Why?"~ */ GOTO 8
  IF ~~ THEN REPLY #58255 /* ~"Very well, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58256 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #58257 /* ~It frowns and gives serious thought to your question. "It is a forsaken place... a place of betrayal and chaos... a city balanced on the edge of disaster. Travel wisely within its borders."~ */
  IF ~~ THEN REPLY #58258 /* ~"Balanced on the edge of disaster?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58259 /* ~It sighs and looks away. "This is a *border* town, little human. On one side, are the Outlands. On the other, is the plane of Carceri. So long as the status quo in Curst remains balanced, this will continue to be a border town." It pauses for effect. ~ */
  IF ~~ THEN REPLY #58260 /* ~"Go on."~ */ DO ~SetGlobal("Know_Curst_Cure","GLOBAL",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58261 /* ~"If things get out of hand in the city, it could slide into Carceri and become one with the plane. Impose too much order, and it ceases to be a border town by sliding into the Outlands." It shrugs. "That is the way of such places."~ */
  IF ~~ THEN REPLY #58262 /* ~"You're saying the city could actually be... displaced?"~ */ GOTO 18
  IF ~~ THEN REPLY #58263 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58264 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58265 /* ~It gives you a mock smile. "Yes..."~ */
  IF ~~ THEN REPLY #58266 /* ~"If that were to happen, what could be done about it?"~ */ GOTO 19
  IF ~~ THEN REPLY #58267 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58268 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58269 /* ~It shrugs. "Determine which way the city has slid and apply an opposing force. Too much order? Instigate some chaos. Too little order? Impose more law." It smiles at you. "If you were persistent in your efforts you could pull the city back to its border status... or slide it to the opposite side."~ */
  IF ~~ THEN REPLY #58270 /* ~"You've been very helpful... Which brings up another question... Why?"~ */ GOTO 20
  IF ~~ THEN REPLY #58271 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58272 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 27.0
  SAY #58273 /* ~It gives you a confused look. "Why what?"~ */
  IF ~~ THEN REPLY #58274 /* ~"You baatezu are supposed to be the incarnations of evil. So why are you being so helpful?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58275 /* ~It barks out a laugh and smiles at you. "Do not mistake my help as kindness, nor me as anything other than evil. I am helping you because it serves my needs... nothing more."~ */
  IF ~~ THEN REPLY #58276 /* ~"How does helping me serve your needs?"~ */ GOTO 22
  IF ~~ THEN REPLY #58277 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58278 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #58279 /* ~"How indeed..." It continues to smile at you.~ */
  IF ~~ THEN REPLY #58280 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58281 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.5 28.0
  SAY #58282 /* ~It sighs and looks away. "Curst was a border town, balanced between two extremes. On the one side, were the Outlands; On the other, the plane of Carceri." It pauses.~ */
  IF ~~ THEN REPLY #58283 /* ~"Yes, I understand that. What upset the balance and caused the city to slide into Carceri?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58284 /* ~It shrugs. "Trias. He was the cause. Because of him chaos got the upper hand and slid the city into Carceri... and here it will stay unless drastic measures are taken."~ */
  IF ~~ THEN REPLY #58285 /* ~"What can be done?"~ */ GOTO 25
  IF ~~ THEN REPLY #58286 /* ~"Trias? What does he have to do with this?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 24.0 31.0
  SAY #58287 /* ~"Determine which way the city has slid and apply an opposing force. Too much order? Instigate some chaos. Too little order? Impose more law." It smiles at you. "If you are persistent in your efforts you can pull the city back to its border status... or slide it to the opposite extreme."~ */
  IF ~~ THEN REPLY #58288 /* ~"You're saying someone needs to impose law and order on the city?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #58289 /* ~It smiles at you. "Yes... that is exactly what I am saying."~ */
  IF ~~ THEN REPLY #58290 /* ~"Would you help me in this?"~ */ GOTO 27
  IF ~~ THEN REPLY #58291 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58292 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #58293 /* ~It gazes at you steadily for some time before answering. "Yes... I believe it would be within my best interest to do so. My servants and I will gladly assist you."~ */
  IF ~~ THEN REPLY #58294 /* ~"You've been very helpful... Which brings up another question... Why?"~ */ GOTO 20
  IF ~~ THEN REPLY #58295 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58296 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.6
  SAY #58297 /* ~It shrugs. "Exactly what I warned you of when we last talked."~ */
  IF ~~ THEN REPLY #58298 /* ~"What was that?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 29 // from: 2.7
  SAY #58299 /* ~"You are a Godsman?" It looks at you with some respect. "Because of your affiliation I will answer your question. My superior commissioned the device. It is a weapon to be used in the Blood War."~ */
  IF ~~ THEN REPLY #58300 /* ~"What is the Blood War?"~ */ GOTO 10
  IF ~~ THEN REPLY #58301 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58303 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~  Global("Know_Tek","GLOBAL",1)
~ THEN BEGIN 30 // from:
  SAY #58306 /* ~You see the cornugon, Tek'elach. He gives you an amused smile. "So we meet again, little human. What do you want?"~ */
  IF ~~ THEN REPLY #58307 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58309 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1
  SAY #58310 /* ~It sighs. "Trias is an agent of Chaos. He was sentenced to the prison for good reason. Unfortunately, some idiot freed him, which allowed him to wreak havoc about the city." He pauses and sighs again. "I was sent here to keep an eye on him..."~ */
  IF ~~ THEN REPLY #58311 /* ~"So, what can be done?"~ */ GOTO 25
END
