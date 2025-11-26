// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIGNC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIGNC~

IF ~  Global("Diligence","GLOBAL",0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~This older, stern-looking woman is clearly on her way somewhere. When she notices your approach, she studies you with a disapproving, tight-lipped frown.~ */
  IF ~~ THEN REPLY #29200 /* ~"Greetings..."~ */ DO ~SetGlobal("Diligence","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #29201 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29167 /* ~The woman nods curtly, speaking in a tone cold as ice: "Yes? What is it? And watch your words, for I am Diligence, Fourth Magistrate of the Ward."~ */
  IF ~~ THEN REPLY #29202 /* ~"You're *who?*"~ */ GOTO 14
  IF ~~ THEN REPLY #29203 /* ~"I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #29204 /* ~"Something troubling about my appearance?"~ */ GOTO 2
  IF ~~ THEN REPLY #29205 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 14.1
  SAY #29168 /* ~"I should most certainly think so! Should the Apparel Regulation Act be passed, people of your sort won't be permitted to traipse about in such a manner, half-naked and filthy as you are..."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29206 /* ~"I'm quite clean, begging your pardon, and... meaning no disrespect, madam... some cultures might find *your* clothes offensive."~ */ GOTO 3
  IF ~~ THEN REPLY #29207 /* ~"You're quick to judge one by their appearance, aren't you?"~ */ GOTO 9
  IF ~~ THEN REPLY #29208 /* ~"This look is all the rage in the Hive, you know. Perhaps you should try it; it just might suit you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #29209 /* ~"I see. I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #29210 /* ~"Hmm. I'll take my leave, now. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 13.0
  SAY #29169 /* ~She examines you skeptically for a moment, then nods. "Your point is well-taken... sir. Still, though, you cannot deny you are a rather rough-looking sort of fellow."~ */
  IF ~~ THEN REPLY #29211 /* ~"My appearance is merely a product of my environment, madam, and a difficult life. I shouldn't be held accountable for that."~ */ GOTO 4
  IF ~~ THEN REPLY #29212 /* ~"That I can't. In any case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #29170 /* ~"Oh, but you should! How easy it is for one to blame one's life, one's surroundings for their every failing! I can see by your manner you are well-educated, sir, yet you appear to insist upon a lifestyle of wandering and senseless violence. Why not settle in Sigil, become a contributing citizen, rather than some bloody-handed nomad in its streets?"~ */
  IF ~~ THEN REPLY #29213 /* ~"The choice is out of my hands, I assure you."~ */ GOTO 5
  IF ~~ THEN REPLY #29214 /* ~"I'll consider it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.0 25.0
  SAY #29171 /* ~"Oh? How so?" Her coldness melts away into a look of curiosity.~ */
  IF ~~ THEN REPLY #29215 /* ~"It is difficult to explain..."~ */ GOTO 6
  IF ~~ THEN REPLY #29216 /* ~Tell her your story... or what you know of it.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29217 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29172 /* ~"Nonetheless, I would bid you to do so, sir."~ */
  IF ~~ THEN REPLY #29218 /* ~Tell her your story... or what you know of it.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29219 /* ~"I'd best not; it's a personal matter. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #29173 /* ~You finish telling her your story.

Diligence looks shocked. "That... that is quite a tale, sir."~ */
  IF ~~ THEN REPLY #29220 /* ~"Were it only a tale, madam. It is my life, and I've the scars to prove it - as you noted when we first met, I believe."~ */ DO ~SetGlobal("Diligence","GLOBAL",3)
~ GOTO 8
  IF ~~ THEN REPLY #29221 /* ~"Isn't it? Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29174 /* ~"Yes, yes... quite so." She smiles slightly... you had begun to wonder if she was even capable of such a thing. "I wish you luck, sir, in your undertakings. May you find yourself once more."~ */
  IF ~~ THEN REPLY #29222 /* ~"Thanks. I did have some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #29223 /* ~"My thanks. Farewell, Lady Diligence."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 13.1
  SAY #29175 /* ~"You would tell me, then, that you are *not* a wanderer, meandering about the city asking questions of all those you come across, engaging in more than the occasional combat to the death with those who cross you?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29224 /* ~"All that aside, madam, I'm quite clean, and... meaning no disrespect... some cultures might find *your* clothes offensive."~ */ GOTO 3
  IF ~~ THEN REPLY #29225 /* ~"Eh... well..."~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #29226 /* ~Lie: "That is untrue."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
SetGlobal("Diligence","GLOBAL",2)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 19.2 21.2
  SAY #29176 /* ~Diligence stares at you coldly. "You are lying to me. I will waste no more time with you, sir. Should you say another word, or so much as approach me again, I shall call the guard. Now, away with you."~ */
  IF ~~ THEN REPLY #29227 /* ~"But..."~ */ GOTO 11
  IF ~~ THEN REPLY #29228 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 16.0 31.1
  SAY #29177 /* ~"Guards!"~ */
  IF ~~ THEN REPLY #29229 /* ~Attack her.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29230 /* ~Try and leave before anyone arrives.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #29178 /* ~The faintest hint of sneer appears on her lip. "I am quick to judge, sir, because I am a magistrate by trade. I will waste no more time with you. Should you say another word, or so much as approach me again, I shall call the guard. Now, away with you."~ */
  IF ~~ THEN REPLY #29231 /* ~"But..."~ */ GOTO 11
  IF ~~ THEN REPLY #29232 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #29179 /* ~Her eyes narrow even further. "Do not jest with me, sir; I have no patience for it. Now what is it you want of me?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29233 /* ~"Forgive me my folly, madam. To tell the truth, though, I'm quite clean, and... meaning no disrespect... some cultures might find *your* clothes offensive."~ */ GOTO 3
  IF ~~ THEN REPLY #29234 /* ~"You're quick to judge one by their appearance, aren't you?"~ */ GOTO 9
  IF ~~ THEN REPLY #29235 /* ~"I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #29236 /* ~"Hmm. I'll take my leave, now. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #29180 /* ~Diligence simply stares at you, a faintly disgusted look upon her face.~ */
  IF ~~ THEN REPLY #29237 /* ~"I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #29238 /* ~"Something troubling about my appearance?"~ */ GOTO 2
  IF ~~ THEN REPLY #29239 /* ~"I'll take my leave, now. Farewell."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 1.1 2.3 13.2 14.0 30.1
  SAY #29181 /* ~Diligence smirks. "I am no tout, sir, who entertains the questions of passersby for a handful of coins. Find someone else to answer your questions; I have important government business to attend to."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29240 /* ~"I didn't think you a... tout, madam. Rather you appeared most knowledgeable, and I was hoping you could aid me."~ */ GOTO 17
  IF ~~ THEN REPLY #29241 /* ~"Just a single question, then?"~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #29242 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29182 /* ~"Not a one. Now leave me be! Dare you say another word, or so much as approach me again, I shall call the guard."~ */
  IF ~~ THEN REPLY #29243 /* ~"But..."~ */ GOTO 11
  IF ~~ THEN REPLY #29244 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0
  SAY #29183 /* ~"Just the same, sir, I have no time for your questions."~ */
  IF ~~ THEN REPLY #29245 /* ~"Then I apologize, madam, and thank you for the time you've given me. Farewell."~ */ GOTO 18
  IF ~~ THEN REPLY #29246 /* ~"Fine, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29184 /* ~"Wait a moment... I can see by your manner you are well-educated, sir, yet you appear to insist upon a lifestyle of wandering and senseless violence. Why not settle in Sigil, become a contributing citizen, rather than some bloody-handed nomad in its streets?"~ */
  IF ~~ THEN REPLY #29266 /* ~"The choice is out of my hands, I assure you."~ */ GOTO 5
  IF ~~ THEN REPLY #29267 /* ~"I'll consider it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 13.3 14.2
  SAY #29185 /* ~"Do not be so quick... hold!" She narrows her eyes at you. "Who are you?"~ */
  IF ~~ THEN REPLY #29268 /* ~"I... do not know."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29269 /* ~Lie: "My name is Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29270 /* ~Lie: "My name is Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #29271 /* ~"It's no concern of yours."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #29186 /* ~"Hmm. Very well, 'Adahn.' Farewell."~ */
  IF ~~ THEN REPLY #29272 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.3
  SAY #29187 /* ~"You have accosted me on the street for no reason, forced me to suffer your presence, and now you have the *audacity* to say that it is not my concern? I think that it is!"~ */
  IF ~~ THEN REPLY #29273 /* ~"I... do not know."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29274 /* ~Lie: "My name is Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29275 /* ~Lie: "My name is Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #29188 /* ~"Come now, you don't expect to get off that easily, do you? Your name: let's have it!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29276 /* ~"This is something of a confusing situation, and I would ask your patience in this matter: I honestly do not know my name. I have forgotten myself."~ */ GOTO 24
  IF ~~ THEN REPLY #29277 /* ~"I really don't know. I've lost my memories."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #29189 /* ~She peers at you quietly, a sour look upon her face. Finally, she speaks: "Very well. Leave my presence, and take care to avoid trouble."~ */
  IF ~~ THEN REPLY #29278 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #29190 /* ~"Your words are carefully chosen, but they are madness." She frowns. "But is it true that you have forgotten yourself? Now speak plainly, and mark your next words carefully."~ */
  IF ~~ THEN REPLY #29279 /* ~"I swear to you, madam, it is true."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0 31.0
  SAY #29191 /* ~After a moment, she gives an exasperated sigh. "I can see by your manner you are well-educated, sir, yet you appear to insist upon a lifestyle of wandering and senseless violence. Why not settle in Sigil, become a contributing citizen, rather than some bloody-handed nomad in its streets?"~ */
  IF ~~ THEN REPLY #29280 /* ~"The choice is out of my hands, I assure you."~ */ GOTO 5
  IF ~~ THEN REPLY #29281 /* ~"I'll consider it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 8.0 32.0
  SAY #29192 /* ~She shakes her head. "I'm afraid I am a busy woman, sir; my position as Fourth Magistrate leaves me little time with which to answer your questions. I am sure another citizen could help you, however."~ */
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29282 /* ~"Before you go, madam, might I be so bold as to ask a favor?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29283 /* ~"Farewell, then, Lady Diligence."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 32.1
  SAY #29193 /* ~She gives you a curious look, but says nothing.~ */
  IF ~~ THEN REPLY #29284 /* ~"In my wandering, I seem to have offended some of the local citizens..."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29194 /* ~She finishes your sentence for you: "Thus attracting the attention of the Harmonium, I assume? And you are worried they've an eye for you, now?"~ */
  IF ~~ THEN REPLY #29285 /* ~"Yes, madam."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",-5)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29195 /* ~She shakes her head, tutting at you as if you were a naughty child. "I shall do what I can, sir, but you must take care not to cause such strife in the future."~ */
  IF ~~ THEN REPLY #29286 /* ~"I'm most grateful, Lady Diligence. Farewell."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",1)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 30 // from:
  SAY #29196 /* ~Diligence frowns as you approach her. "You seem familiar..." Her face then becomes even more sour, wrinkling like a prune. "Ah, yes... now I remember you."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29287 /* ~"Madam... I fear I did not show the proper respect for you when we last met. I hope you'll accept my apologies."~ */ GOTO 25
  IF ~~ THEN REPLY #29288 /* ~"I had some questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #29289 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 31 // from:
  SAY #29197 /* ~Diligence gives you a look of utter revulsion. "Did I not demand that you stay clear of me? I warned you that I would summon the guard..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29290 /* ~"Lady Diligence... wait, I beg of you. I fear I did not show the proper respect for you when we last met. I hope you'll accept my apologies."~ */ GOTO 25
  IF ~~ THEN REPLY #29291 /* ~"But I had some questions..."~ */ GOTO 11
  IF ~~ THEN REPLY #29292 /* ~"I'll leave, then. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 32 // from:
  SAY #29198 /* ~Diligence nods at your approach. "Greetings again, sir."~ */
  IF ~~ THEN REPLY #29293 /* ~"Well met, Lady Diligence. I had some questions..."~ */ GOTO 26
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29294 /* ~"Well met, my lady. Might I be so bold as to ask a favor?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29295 /* ~"I was just passing by. Farewell, Lady Diligence."~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 33 // from:
  SAY #29199 /* ~The woman recoils in surprise at the sight of you. "Are you *mad,* approaching the Fourth Magistrate of the Ward with a reputation such as yours? Guards! Guards!"~ */
  IF ~~ THEN REPLY #29296 /* ~Attack her.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29297 /* ~Try and leave before anyone arrives.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END
