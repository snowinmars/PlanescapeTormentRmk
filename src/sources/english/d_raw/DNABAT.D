// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNABAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DNABAT~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #49302 /* ~You see an angel-faced man, his eyes squinting nearly shut as if unwilling to watch the world's horrors or to let the world see the horrors inside him - and yet his face is creased with smile lines. His voice is friendly and lackadaisical as he greets you. "Hi."~ */
  IF ~~ THEN REPLY #49303 /* ~"I had some questions for you..."~ */ GOTO 1
  IF ~~ THEN REPLY #49304 /* ~"Greetings, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #49305 /* ~"What'd you want to know?"~ */
  IF ~~ THEN REPLY #49306 /* ~"What can you tell me about this place?"~ */ GOTO 2
  IF ~~ THEN REPLY #49307 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #49308 /* ~"I'm looking for a deva."~ */ GOTO 4
  IF ~~ THEN REPLY #49309 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0
  SAY #49310 /* ~"What, the Traitor's Gate tavern? It's run by Tainted Barse over there and frequented by the folks you see here: Marquez, ex-Harmonium; Kitla, ex-employee; Dallan, ex-just-about-everything and do I ever have some stories about *him* that maybe I'll tell you sometime; and Dona Quisho, whose story I don't know... yet."~ */
  IF ~~ THEN REPLY #49311 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #49312 /* ~"I'm looking for a deva."~ */ GOTO 4
  IF ~~ THEN REPLY #49313 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.1
  SAY #49314 /* ~"Me? I'm Nabat. One-time raconteur, now reduced to selling stories in ale-houses. I'm retired for now. Maybe I'll give you a story later. Maybe. You want anything else?"~ */
  IF ~~ THEN REPLY #49315 /* ~"What can you tell me about this place?"~ */ GOTO 2
  IF ~~ THEN REPLY #49316 /* ~"I'm looking for a deva."~ */ GOTO 4
  IF ~~ THEN REPLY #49317 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.1
  SAY #49318 /* ~His face crinkles in a smile. "What makes you think I'd know anything about that? Seriously... what did you want to know?"~ */
  IF ~~ THEN REPLY #49319 /* ~"What can you tell me about this place?"~ */ GOTO 2
  IF ~~ THEN REPLY #49320 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #49321 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #49322 /* ~Nabat gives you a smile. "Whaddya want now?"~ */
  IF ~~ THEN REPLY #49323 /* ~"I just wanted some questions answered..."~ */ GOTO 1
  IF ~~ THEN REPLY #49324 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 6 // from:
  SAY #49325 /* ~You see an angel-faced man, his eyes squinting nearly shut as if unwilling to watch the world's horrors or to let the world see the horrors inside him - and yet his face is creased with smile lines. His voice is friendly and lackadaisical as he greets you. "Hi. I hear you're looking for a certain Key."~ */
  IF ~~ THEN REPLY #49326 /* ~"I am."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49327 /* ~"Yes, but not right now. I had some questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #49328 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",3)
Global("Caretaker","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #49329 /* ~"So... you're back. You want to get the third part of the Key?"~ */
  IF ~~ THEN REPLY #49330 /* ~"Yes."~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49331 /* ~"Yes, but not right now. I had some questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #49332 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0 9.0 10.0
  SAY #49333 /* ~"The caretaker of the town dump is a man named Kyse. Scuttlebutt has it that he's got plenty of gold hidden underneath his floorboards - and that there's a gang of ruffians who're planning to take it from him. I've got my reasons that they don't. Go talk to Kyse and get the story from him. Do it, and I'll give you the Key. And if you're interested, I can show you some tricks of stealth."~ */
  IF ~~ THEN REPLY #49334 /* ~"All right. I had some questions first."~ */ JOURNAL #47847 /* ~Nabat in the Traitor's Gate tavern has told me what I must do for the third part of the Key: There is a caretaker down by the gate to the Outlands who is rumored to be a wealthy man... and the rumors say he's about to be hit for this wealth.~ */ GOTO 9
  IF ~~ THEN REPLY #49335 /* ~"All right. Farewell."~ */ JOURNAL #47847 /* ~Nabat in the Traitor's Gate tavern has told me what I must do for the third part of the Key: There is a caretaker down by the gate to the Outlands who is rumored to be a wealthy man... and the rumors say he's about to be hit for this wealth.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.0
  SAY #49336 /* ~"You have questions? Great. The problem is, are you going to do this or not? I've got a Key, you've got questions, and you'll get answers when it's finished. You don't have much time."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49337 /* ~"All right. What do I have to do?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #49338 /* ~"Why is this so important to you?"~ */ GOTO 10
  IF ~~ THEN REPLY #49339 /* ~"Whatever. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #49340 /* ~"Does it really matter? What if I said he was my grandfather? What if I said I wanted revenge on the people who are going to try to attack him? What if I said that I wanted that money for myself? Does the motivation matter? You're getting what you want - the Key - and I'm getting something out of this for myself."~ */
  IF ~  Global("Caretaker","GLOBAL",0)
~ THEN REPLY #49341 /* ~"All right. What do I have to do?"~ */ DO ~SetGlobal("Caretaker","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #49342 /* ~"All right, then. Farewell."~ */ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #49343 /* ~You get the impression you're being evaluated under those squinted eyes. "My sources tell me that you still haven't finished the job I've set to you. Get it done, and you'll get the third part of the Key."~ */
  IF ~~ THEN REPLY #49344 /* ~"Will you just answer some questions for me?"~ */ GOTO 12
  IF ~~ THEN REPLY #49345 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49346 /* ~He sighs. "What do you want to know? You want to know about me? I'm Nabat. You want to know about Curst? Ask one of the people who cares. You want to know about this tavern? It's full of people who've been betrayed. You want to know about the deva? Finish the job and you're one step closer to finding him. Now go finish and we can all rest happy."~ */
  IF ~~ THEN REPLY #49347 /* ~"All right. Farewell."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",5)
Global("Curst_Key","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #49348 /* ~Nabat gives you a huge smile as you walk in. "I hear you're done. That means you get the third part of the Key." His eyes blaze for just a moment and the verse tolls forth: "'...their portion set...'" When his eyes return to normal, he shrugs. "Not much of a verse, I'm afraid... but it'll have to do. Thanks for your help. The next portion of the Key is with Dallan. He's the one with the young female friend over there. Or I could train you with some thieving tricks..."~ */
  IF ~~ THEN REPLY #49349 /* ~"Will you answer a few questions for me now?"~ */ DO ~AddexperienceParty(43750)
SetGlobal("Curst_Key","GLOBAL",4)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat gave me the third portion of the Key: "...their portion set..." Now I'm to talk to Dallan. He's the one with the young girlfriend.~ */ GOTO 14
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49350 /* ~"Train me in the arts of stealth."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat gave me the third portion of the Key: "...their portion set..." Now I'm to talk to Dallan. He's the one with the young girlfriend.~ */ GOTO 20
  IF ~~ THEN REPLY #67170 /* ~"Thanks. Farewell."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",4)
AddexperienceParty(43750)
SetGlobal("Caretaker","GLOBAL",6)
~ JOURNAL #49351 /* ~Nabat gave me the third portion of the Key: "...their portion set..." Now I'm to talk to Dallan. He's the one with the young girlfriend.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 16.0 17.0 18.0 19.0 22.0 24.1 25.1 26.0
  SAY #49352 /* ~"Why not? I'm feeling expansive now."~ */
  IF ~~ THEN REPLY #49353 /* ~"Why did you want me to save the old man? Isn't this supposed to be a town of betrayal?"~ */ GOTO 16
  IF ~~ THEN REPLY #49354 /* ~"Tell me about yourself."~ */ GOTO 17
  IF ~~ THEN REPLY #49355 /* ~"Tell me a story."~ */ GOTO 18
  IF ~~ THEN REPLY #49356 /* ~"Tell me about this place."~ */ GOTO 19
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49357 /* ~"Can you train me in the arts of stealth?"~ */ GOTO 20
  IF ~~ THEN REPLY #67172 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",6)
GlobalGT("Curst_Key","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #49358 /* ~"You again, eh? What do you want now?"~ */
  IF ~~ THEN REPLY #49359 /* ~"The answers to a few questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #49360 /* ~"I want you to train me in the arts of stealth."~ */ GOTO 20
  IF ~~ THEN REPLY #67173 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #49361 /* ~"They used to be my gang. Then they ran me out for taking their money - even though I was framed. I planted the rumors about Kyse myself - I knew that they'd fall for it, and either someone'd take them out, or they'd leave evidence that'd bring the guards down on them. Either way, I win."~ */
  IF ~~ THEN REPLY #49362 /* ~"I see... I had a few more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #49363 /* ~"Lovely. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #49364 /* ~"The name's Nabat. Just Nabat. I came here from Automata a while back to see what I could find, to see if there were any people worth telling stories to. Fell in with a bad crowd, and the rest, well, the rest is history."~ */
  IF ~~ THEN REPLY #49365 /* ~"How very deep a history that is. I had a few more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #49366 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2
  SAY #49367 /* ~"Right now I'm working on a story about revenge. I've just been inspired, you might say." He smiles evilly. "Maybe when I'm done I'll let you see it, but not until then. I like the work to be finished before it's seen."~ */
  IF ~~ THEN REPLY #49368 /* ~"All right, then. Answer a few more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #49369 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.3
  SAY #49370 /* ~"It's about what you see, except for the parts you don't see. It's a town full of traitors, politics, and backstabbing. It's the home to one of the worst parts of human nature. It ain't pretty. I hope you were asking about Curst metaphysically, because I'm *not* a guide."~ */
  IF ~~ THEN REPLY #49371 /* ~"Fair enough. I had a few more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #49372 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1 14.4 15.1
  SAY #67171 /* ~"Have you ever plied the arts of the cross-trade before? Have you ever lifted purses for a living, crept along dark hallways with nary a sound? Or am I going to have to train you from scratch?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67191 /* ~"I've done it before."~ */ GOTO 21
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67192 /* ~"I'm afraid you'll have to start from the beginning."~ */ GOTO 23
  IF ~~ THEN REPLY #67193 /* ~"You know, forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #67174 /* ~"Are you sure you want to make the change? You can't fight and thieve at the same time, you know."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #67196 /* ~"I know. I no longer wish to be a fighter. Let's get some of that rust out of my repertoire of tricks."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #67197 /* ~"I know. I no longer wish to be a mage. Let's get some of that rust out of my repertoire of tricks."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 22
  IF ~~ THEN REPLY #67198 /* ~"No, I guess I don't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #67175 /* ~"All right. Don't want to forget the basics, eh?"~ */
  IF ~~ THEN REPLY #67199 /* ~"No, I don't. I had a few more questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #67200 /* ~"No, I don't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #67176 /* ~"You don't ask for small favors, do you? All right. Let's begin. First off, we'll see just how nimble you can be. Balance this dagger on the tip of your finger." He tosses you a knife.~ */
  IF ~  CheckStatGT(Protagonist,18,DEX)
~ THEN REPLY #67201 /* ~Catch it lightly on the tip of your finger.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,19,DEX)
~ THEN REPLY #67202 /* ~Catch it by the hilt, and then set it on the tip of your finger.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #67203 /* ~Try to catch it.~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #67177 /* ~You catch the knife on the tip of your finger, and with a deft twist sending it spinning. Nabat's jaw drops. "All right. You're obviously quick enough. Are you sure you want to train?"~ */
  IF ~~ THEN REPLY #67224 /* ~"Yes. Teach me."~ */ GOTO 27
  IF ~~ THEN REPLY #67225 /* ~"No. Forget it. Answer a few questions for me..."~ */ GOTO 14
  IF ~~ THEN REPLY #67226 /* ~"No. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #67178 /* ~You snatch the dagger by the hilt, and with a little touch-and-go, set it atop the tip of your index finger. "Good enough. Are you sure you want to train?"~ */
  IF ~~ THEN REPLY #67227 /* ~"Yes. Teach me."~ */ GOTO 27
  IF ~~ THEN REPLY #67228 /* ~"No. Forget it. Answer a few questions for me..."~ */ GOTO 14
  IF ~~ THEN REPLY #67229 /* ~"No. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY #67179 /* ~You try to catch the dagger, but the hilt bounces off your hands, and as you narrowly avoid cutting yourself as you fumble to catch it. "Sorry, friend. You've obviously not got the reflexes to be a knight of the post. You want anything else?"~ */
  IF ~~ THEN REPLY #67230 /* ~"Answer some questions for me."~ */ GOTO 14
  IF ~~ THEN REPLY #67231 /* ~"No. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0 25.0
  SAY #67180 /* ~"All right, then. First, you got some basics you have to master: stealth, concealment, picking locks, finding traps and removing them, and finding an enemy's vulnerabilities."~ */
  IF ~~ THEN REPLY #67232 /* ~"Go on..."~ */ GOTO 28
  IF ~~ THEN REPLY #67233 /* ~"I think I understand the basics. Let's get to training."~ */ GOTO 34
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67181 /* ~"One of the most important tricks you can learn is moving silently. This allows you to sneak past guards, get behind an enemy, avoid detection, and so forth. Just keep in mind that you can't do it when someone's staring at you."~ */
  IF ~~ THEN REPLY #67234 /* ~"Go on..."~ */ GOTO 29
  IF ~~ THEN REPLY #67240 /* ~"I think I understand the basics. Let's get to training."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #67182 /* ~"All right. Locks. Locks are not your friend. You need to know your way around the mechanics of these things if you're going to get anywhere. Now, some bastards will make sure you get a little surprise when you're trying to get into their goods, so you'll want to check the locks for traps. I'll get into that in a minute."~ */
  IF ~~ THEN REPLY #67235 /* ~"Go on..."~ */ GOTO 30
  IF ~~ THEN REPLY #67236 /* ~"I think I understand the basics. Let's get to training."~ */ GOTO 34
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #67183 /* ~"Now, you're also going to want to be able to dip your hand someplace without other people noticing. Sometimes it's to lighten their purses, sometimes it's to get a little item you've had your eye on. But you better be ready to fight or flee if they notice you."~ */
  IF ~~ THEN REPLY #67237 /* ~"Go on..."~ */ GOTO 31
  IF ~~ THEN REPLY #67241 /* ~"I think I understand the basics. Let's get to training."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67184 /* ~"Remember how I was talking about traps? They can be your worst enemy. When there's something that's being guarded - or worse, something that's *not* being guarded - approach it slowly and look carefully. It won't be immediately apparent, so take your time."~ */
  IF ~~ THEN REPLY #67238 /* ~"Go on..."~ */ GOTO 32
  IF ~~ THEN REPLY #67242 /* ~"I think I understand the basics. Let's get to training."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #67185 /* ~"If you do find a trap, you can either try to find a way around it or try to dismantle its workings. You try to dismantle it, there's a chance it'll go off right in your face. You take your chances when you're fooling with strange magic or machines."~ */
  IF ~~ THEN REPLY #67239 /* ~"Go on..."~ */ GOTO 33
  IF ~~ THEN REPLY #67243 /* ~"I think I understand the basics. Let's get to training."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #67186 /* ~"Here's the big payoff: the backstab! With arms like yours, you could really put some pain behind this. You sneak up behind someone, take your time in choosing your target, and then let fly. Do it right, and you can do serious, serious damage. Once you attack, obviously they're going to know you're there, so pick your target carefully."~ */
  IF ~~ THEN REPLY #67244 /* ~"All right. Let's get to training."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 27.1 28.1 29.1 30.1 31.1 32.1 33.0
  SAY #67187 /* ~"First thing you've got to learn is that you can't hurry anything. Hurrying leads to mistakes, and mistakes lead to trouble. Trouble's the last thing you want..."

Your training as a thief begins.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67245 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3000)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~I trained to become a thief under a man named Nabat, a tutor in the Traitor's Gate tavern in Curst. ~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67246 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~I trained to become a thief under a man named Nabat, a tutor in the Traitor's Gate tavern in Curst. ~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67247 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",4)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
SetNamelessClass(THIEF)
~ JOURNAL #67248 /* ~I trained to become a thief under a man named Nabat, a tutor in the Traitor's Gate tavern in Curst. ~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67188 /* ~After some time, he pauses. "Enough. You're a fast learner. This is as far as I'll take you. You've got to do the rest on your own."~ */
  IF ~~ THEN REPLY #67249 /* ~"My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2
  SAY #67189 /* ~After some time, he pauses. "Enough. You're a fast learner. This is as far as I'll take you. You've got to do the rest on your own... but with your skills, it almost seems like you've done this before." As he speaks, you come to realize that you *have* done this before... that at one time you possessed all these skills, and the training has reawakened them.~ */
  IF ~~ THEN REPLY #67250 /* ~"Perhaps I have done this before. My thanks, and farewell."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #67190 /* ~As faded memories of lurking in darkened hallways and avoiding deadly traps drift into focus, you manage to recall enough to 'learn' more than Nabat has taught you.~ */
  IF ~~ THEN REPLY #67251 /* ~Leave.~ */ EXIT
END
