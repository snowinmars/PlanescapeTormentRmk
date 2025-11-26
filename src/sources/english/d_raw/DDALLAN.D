// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLAN~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #49373 /* ~You see a tall man with shoulder-length black hair and piercing blue eyes. Wherever he looks seems to smolder under his gaze. Standing next to him is a quiet young woman, who smiles vaguely at all he says. He turns those bright blue eyes at you and smiles largely. He offers his hand: "I'm Dallan. Pleased to meet you."~ */
  IF ~~ THEN REPLY #49374 /* ~"I had a few questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #49375 /* ~"Pleased to meet you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #49376 /* ~"Whatever. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #49377 /* ~Dallan smiles largely at you again. "What's happening?"~ */
  IF ~~ THEN REPLY #49378 /* ~"I had a few questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #49379 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0 7.1
  SAY #49380 /* ~"What do you need to know?"~ */
  IF ~~ THEN REPLY #49381 /* ~"I heard there's a deva in this town."~ */ GOTO 3
  IF ~~ THEN REPLY #49382 /* ~"Who are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #49383 /* ~"Who's the girl?"~ */ GOTO 5
  IF ~~ THEN REPLY #49384 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49385 /* ~He laughs and shakes his head. "You have another question?"~ */
  IF ~~ THEN REPLY #49386 /* ~"Yes. What do you know about this deva?"~ */ GOTO 6
  IF ~~ THEN REPLY #49387 /* ~"Who are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #49388 /* ~"Who's your friend there?"~ */ GOTO 5
  IF ~~ THEN REPLY #49389 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.2
  SAY #49390 /* ~"I'm a bard, historian, actor, and all-around entertainer. Fastest fingers in the Outlands." His smile breaks out again, infectious. "At least, that's what I tell everyone."~ */
  IF ~~ THEN REPLY #49391 /* ~"So tell me about this deva..."~ */ GOTO 6
  IF ~~ THEN REPLY #49392 /* ~"Who's your friend?"~ */ GOTO 5
  IF ~~ THEN REPLY #49393 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.1 6.1
  SAY #49394 /* ~He smirks. "She's a friend. That's all you need to know." She dimples slightly at his side and blushes.~ */
  IF ~~ THEN REPLY #49395 /* ~"All right, then, tell me about this deva..."~ */ GOTO 6
  IF ~~ THEN REPLY #49396 /* ~"Tell me about yourself, then..."~ */ GOTO 4
  IF ~~ THEN REPLY #49397 /* ~"Got it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 5.0
  SAY #49398 /* ~He laughs loudly. "All things have their price, and I'm not ready to put a price on that information yet. Maybe later."~ */
  IF ~~ THEN REPLY #49399 /* ~"How about if I threatened you for it?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 7
  IF ~~ THEN REPLY #49400 /* ~"Tell me about your friend there, then..."~ */ GOTO 5
  IF ~~ THEN REPLY #49401 /* ~"Tell me about yourself, then..."~ */ GOTO 4
  IF ~~ THEN REPLY #49402 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #49403 /* ~His hand flies to his weapon. "Then I suppose we'd see who was the better fighter."~ */
  IF ~~ THEN REPLY #49404 /* ~"Relax. I was just asking questions. Answer a few more for me."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANCETOSTAND)
~ GOTO 2
  IF ~~ THEN REPLY #49405 /* ~"Maybe later. I had more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #49406 /* ~"Hmm. I'll think about this. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 8 // from:
  SAY #49407 /* ~You see a tall man with shoulder-length black hair and piercing blue eyes. Wherever he looks seems to smolder under his gaze. Standing next to him is a quiet young woman, who smiles vaguely at all he says. He turns those bright blue eyes at you and smiles largely. "I'm Dallan. You're looking for a Key."~ */
  IF ~~ THEN REPLY #49408 /* ~"That's right. What do I have to do for it?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~For Dallan's portion of the Key, I am to speak to a githyanki official named An'izius. He can be found near the gate to Carceri in the center of town.~ */ GOTO 10
  IF ~~ THEN REPLY #49409 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",4)
Global("C_Off","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49412 /* ~"You want the Key, don't you?"~ */
  IF ~~ THEN REPLY #49413 /* ~"That's right. What do I have to do for it?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~For Dallan's portion of the Key, I am to speak to a githyanki official named An'izius. He can be found near the gate to Carceri in the center of town.~ */ GOTO 10
  IF ~~ THEN REPLY #49414 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #49415 /* ~"It's simplicity itself. One of the city leaders is having a bit of... political difficulty, shall we say. One of his enemies on the city council is causing him some trouble. Go talk to him about it and see what you can do to help him out. His name is An'izius - he's a githyanki, and you'll find him near the gate to Carceri in the center of town."~ */
  IF ~~ THEN REPLY #49416 /* ~"Let me ask you a few questions about that. Is he a friend of yours? Are you looking for a particular outcome to this?"~ */ GOTO 11
  IF ~~ THEN REPLY #49418 /* ~"Very well. I'll be back. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #49419 /* ~His smirk grows. "Let's just say that I trust to your discretion. You'll see what I mean."~ */
  IF ~~ THEN REPLY #49421 /* ~"Very well. I'll be back. Farewell."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",1)
GlobalLT("C_Off","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #49422 /* ~Dallan gives you another trademark smile as he slides his arm around his friend's shoulders. "How's it coming along, hm? Any progress?"~ */
  IF ~~ THEN REPLY #49423 /* ~"I'm working on it. I had some questions for you..."~ */ GOTO 13
  IF ~~ THEN REPLY #49424 /* ~"I'm working on it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49425 /* ~"Maybe later. I have something important to do right now..." He looks vaguely around the room. "We'll talk when you're done."~ */
  IF ~~ THEN REPLY #49426 /* ~"All right. Farewell."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #49427 /* ~"I heard all about your fine work, friend. That was an interesting little turn-around. How'd you like Curst's politics, hm?" He quaffs his ale. "Here's your payment from my end." His voice deepens, taking on an almost ritualistic tone: "As far removed from Gods and light of Heaven..." His voice normalizes, and he says, "For the final portion of the Key, talk to Dona Quisho over there."~ */
  IF ~~ THEN REPLY #49428 /* ~"I had a few more questions for you first..."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan paid me off with his portion of the Key, and directed me to Dona Quisho. His portion read: "As far removed from Gods and light of Heaven..."~ */ GOTO 16
  IF ~~ THEN REPLY #49429 /* ~"Thanks. Farewell."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan paid me off with his portion of the Key, and directed me to Dona Quisho. His portion read: "As far removed from Gods and light of Heaven..."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 15 // from:
  SAY #49431 /* ~"Back again, eh? Couldn't get enough?" The girl with him is subtly different... she seems like a different person to your eye, but she acts so similar you're having a hard time deciding if it's the case.~ */
  IF ~~ THEN REPLY #49432 /* ~"I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #49433 /* ~"Apparently I have now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0
  SAY #49434 /* ~"What did you want to know?"~ */
  IF ~~ THEN REPLY #49435 /* ~"Who's your friend there?"~ */ GOTO 17
  IF ~~ THEN REPLY #49436 /* ~"Why did you want that matter taken care of, anyway? What was your connection?"~ */ GOTO 18
  IF ~~ THEN REPLY #49437 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49438 /* ~"She's a friend, friend, and we're getting along just fine. Did you want something else?"~ */
  IF ~~ THEN REPLY #49439 /* ~"Yes. Why did you want that matter taken care of? What was your connection?"~ */ GOTO 18
  IF ~~ THEN REPLY #49440 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #49441 /* ~"Because An'izius forbade me to play in this city." He spits on the floor. "Because Siabha refused to aid me despite our long friendship. She said the time wasn't right to play her hand. Because he was a power-hungry mongrel, and she a self-aggrandizing whore. I knew that, one way or another, one or both of them would fall."~ */
  IF ~~ THEN REPLY #49442 /* ~"I see. Farewell."~ */ EXIT
END
