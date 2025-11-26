// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44239 /* ~You see a middle-aged woman, her face care-lined and compassionate. She looks like she's led a hard life. "Can I help you with something, stranger?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44241 /* ~"I was told by a... friend... that I could find a cell of Anarchists here. The password is 'eclipse.'" ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44247 /* ~"Who are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #44248 /* ~"What is this place?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44249 /* ~"I'm looking for a floating, sarcastic skull. Have you seen it anywhere?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44251 /* ~"I don't need anything. Sorry. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #44254 /* ~"Help you find something?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44255 /* ~"I was told by a... friend... that I could find a cell of Anarchists here. The password is 'eclipse.'" ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44256 /* ~"Who are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #44257 /* ~"What is this place?"~ */ GOTO 5
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #44258 /* ~"I'm looking for a floating, sarcastic skull. Have you seen it anywhere?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #44260 /* ~"I don't need anything. Sorry. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #44262 /* ~"Back so soon? Destroy any plans for anyone?"~ */
  IF ~  GlobalGT("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #44263 /* ~"Not yet. I just need some questions answered."~ */ GOTO 12
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44264 /* ~"That Harmonium officer? He's dead."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~I reported my success in killing the Harmonium officer to Leena.~ */ GOTO 11
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",2)
~ THEN REPLY #44265 /* ~"Not recently. I just needed to ask some questions."~ */ GOTO 12
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
GlobalLT("Kill_Vorten","GLOBAL",3)
~ THEN REPLY #44266 /* ~"Not yet. I just needed to ask some questions."~ */ GOTO 7
  IF ~~ THEN REPLY #44267 /* ~"I'm working on it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 4.2 5.0
  SAY #44268 /* ~She looks you over very carefully. She mutters something to herself that sounds like, "Got to change that soon..." She collects herself and looks deep into your eyes. "You're one of us, eh? Prove it."~ */
  IF ~~ THEN REPLY #44269 /* ~"How?"~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44270 /* ~"I don't have anything to prove to you."~ */ GOTO 15
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #44271 /* ~"The person who gave me that information is Scofflaw Penn. He said you'd know his name."~ */ GOTO 14
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #44272 /* ~"I'm Leena. I supervise these other two." She waves a hand at her companions.~ */
  IF ~~ THEN REPLY #44273 /* ~"What is it you do here?"~ */ GOTO 5
  IF ~~ THEN REPLY #44274 /* ~"What is this place?"~ */ GOTO 5
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44275 /* ~"I was told by a... friend... that I could find a cell of Anarchists here. The password is 'eclipse.'" ~ */ GOTO 3
  IF ~~ THEN REPLY #44276 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.2 4.0 4.1
  SAY #44277 /* ~"This is a storehouse. I'm the supervisor. Things get stored here, things get taken out of here..." She shrugs. "Not much to tell, really."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44278 /* ~"I was told by a... friend... that I could find a cell of Anarchists here. The password is 'eclipse.'" ~ */ DO ~SetGlobal("Know_Anarchists","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #44279 /* ~"I see. My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 1.3
  SAY #44280 /* ~"A floating, sarcastic skull? Sorry. Haven't seen one around here. If you're looking for skulls, I'd try out the Bones of the Night - you look like you're into scars, and sure as balors hate pit fiends, Lothar'd decorate you with a few more."~ */
  IF ~~ THEN REPLY #44281 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #44282 /* ~"Have you had any success in your... venture? Answer honest, now."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",1)
Dead("Vorten")
~ THEN REPLY #44302 /* ~"Yes. He's dead."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #39496 /* ~I reported my success in killing the Harmonium officer to Leena.~ */ GOTO 11
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44303 /* ~Truth: "Not yet."~ */ GOTO 8
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44304 /* ~Lie: "Yes. He's dead."~ */ GOTO 10
  IF ~  !Dead("Vorten")
Global("Kill_Vorten","GLOBAL",1)
~ THEN REPLY #44305 /* ~"Umm... what was it I was supposed to do again?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.3
  SAY #44306 /* ~"You were supposed to take out that sanctimonious Harmonium prig Vorten. Go now and don't waste my time!"~ */
  IF ~~ THEN REPLY #44307 /* ~"I just wanted to ask some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #44308 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #44309 /* ~She turns and begins giving orders to her underlings, ignoring you.~ */
  IF ~~ THEN REPLY #44310 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #44311 /* ~"Please don't lie to me. It means that you have no respect for my sources, and it makes you look that much more foolish in my eyes. Go and take care of your task now."~ */
  IF ~~ THEN REPLY #44312 /* ~"I just wanted to ask some questions!"~ */ GOTO 9
  IF ~~ THEN REPLY #44313 /* ~"All right, then. I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 7.0
  SAY #44314 /* ~"Good, good... he was starting to get a little too close to one of our operations, even if he didn't know that himself. This should send those red-armored oppressors off after another target." Her eyes gleam. "You've proven your role. What did you want, anyway?"~ */
  IF ~~ THEN REPLY #44315 /* ~"I wanted to ask some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #44316 /* ~"A place to stay."~ */ GOTO 13
  IF ~~ THEN REPLY #44317 /* ~"I wanted to pick up some extra items."~ */ GOTO 13
  IF ~~ THEN REPLY #44318 /* ~"Nothing for now, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.0 2.2 11.0 13.0 14.0 18.1 19.0 20.0 21.1 22.1 23.0 24.0
  SAY #44319 /* ~"What did you want to know?"~ */
  IF ~~ THEN REPLY #44320 /* ~"I need a place to stay."~ */ GOTO 13
  IF ~~ THEN REPLY #44321 /* ~"I need to pick up some extra stuff."~ */ GOTO 13
  IF ~~ THEN REPLY #44322 /* ~"Tell me a bit about your cell."~ */ GOTO 18
  IF ~~ THEN REPLY #44323 /* ~"What are you hoping to accomplish here?"~ */ GOTO 19
  IF ~~ THEN REPLY #44324 /* ~"Why are you an Anarchist?"~ */ GOTO 20
  IF ~~ THEN REPLY #44325 /* ~"What can you tell me about the Revolutionary League?"~ */ GOTO 21
  IF ~~ THEN REPLY #44326 /* ~"Nothing else, I guess. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2 12.0 12.1
  SAY #44327 /* ~"Talk to Conall over there. He takes care of that for us."~ */
  IF ~~ THEN REPLY #44328 /* ~"All right. Answer a few more questions for me, then..."~ */ GOTO 12
  IF ~~ THEN REPLY #44329 /* ~"Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.2
  SAY #44330 /* ~Her eyes widen. "He's highly placed, you know. At least, that's what my inquiries have told me. What do you need?"~ */
  IF ~~ THEN REPLY #44331 /* ~"I just need some answers..."~ */ GOTO 12
  IF ~~ THEN REPLY #44332 /* ~"Nothing right now. Just thought I'd introduce myself. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.1
  SAY #44333 /* ~"Actually, you do. Otherwise, we don't know if you've just bought a password off someone with loose lips or if you're just another flapping bone-box. One way, you prove your loyalty. The other way, you die."~ */
  IF ~~ THEN REPLY #44334 /* ~"I'll prove it."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #44335 /* ~"Try to kill me. I dare you."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.1
  SAY #44336 /* ~"All right." She whistles to her companions, and they attack you immediately!~ */
  IF ~~ THEN REPLY #44337 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #44338 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.0 15.0
  SAY #44339 /* ~"There is a Harmonium officer named Vorten. You will find him near the Hive entrance to the Lower Ward. Strike him down and return here with word of your success." She begins to turn away, and stops. "Don't bother lying, either - I have eyes *everywhere.*"~ */
  IF ~~ THEN REPLY #44340 /* ~"I'm on it."~ */ JOURNAL #39497 /* ~Leena, in the warehouse in the Lower Ward, has told me to prove loyalty to the Anarchists by killing the Harmonium officer Vorten.~ */ EXIT
  IF ~~ THEN REPLY #44341 /* ~"Forget it. You'll have to kill me first."~ */ GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #44342 /* ~"It's the three of us. We report to one other, whose name I won't reveal, and we work independently. Sometimes an outside person will introduce someone to us, and depending on what we know of that person, we may or may not help 'em out. Conall's our storesman, Otis is our bruiser, and I'm the thinker."~ */
  IF ~~ THEN REPLY #44343 /* ~"How do you know who you can trust?"~ */ GOTO 22
  IF ~~ THEN REPLY #44344 /* ~"I had a few more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #44345 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.3
  SAY #44346 /* ~"What we're hoping to accomplish is the destruction of the modern system, to bring the entire polluted framework crashing down. We want the meek to inherit, if you will. Now."~ */
  IF ~~ THEN REPLY #44347 /* ~"Hmm. I had some more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #44348 /* ~"I see. Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.4
  SAY #44349 /* ~"You mean aside from seeing families torn about by the militant practices of the Harmonium? Aside from seeing my friends wither and die because of the smog belched out by the Godsmen? Aside from the soul-crushing demands of the Fated, and self-indulgent pleasures of the Sensates who revel while others suffer? Oh, no reason, I suppose. Why should I see anything wrong with the way things are?"~ */
  IF ~~ THEN REPLY #44350 /* ~"All right. Can you answer a couple more questions?"~ */ GOTO 12
  IF ~~ THEN REPLY #44351 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5
  SAY #44352 /* ~"You already know too much, especially for someone who's not part of our cell. This is how it works: We break ourselves into cells, so that one group can't destroy another group through carelessness or bad luck. Sometimes we end up working at cross-purposes, but for the most part we're a thorn in the paw of the oppressive factions that currently run Sigil. We embarrass them enough that they take us seriously."~ */
  IF ~~ THEN REPLY #44353 /* ~"So how do you keep in touch with each other? Do you have an organization?"~ */ GOTO 24
  IF ~~ THEN REPLY #44354 /* ~"Sounds rewarding... and dangerous. I had some more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #44355 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0
  SAY #44356 /* ~"We don't. That's why we trust each other. And even among ourselves we tread lightly. We never really trust. It's a dangerous game, but it's one that's necessary to be played if we are ever to achieve freedom."~ */
  IF ~~ THEN REPLY #44357 /* ~"If you can't trust each other, how do you know what you're building toward?"~ */ GOTO 23
  IF ~~ THEN REPLY #44358 /* ~"I had a few more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #44359 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44360 /* ~"Right now, we have no goal other than destruction of the existing, parasitic order. Tearing down corruption comes first. The healing can begin when we've bled the poison from this society."~ */
  IF ~~ THEN REPLY #44361 /* ~"Right. Answer a few more questions for me, then..."~ */ GOTO 12
  IF ~~ THEN REPLY #44362 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #44363 /* ~"We have safe houses scattered throughout the Great Ring. The best one - the last I heard - is that we've got a strong cell in Curst, the gate town to Carceri. They probably won't show themselves unless something BIG happens, though. That town is full of traitors, and it's best to lie low when folks are that peery."~ */
  IF ~~ THEN REPLY #44364 /* ~"Thanks. I had some other questions."~ */ GOTO 12
  IF ~~ THEN REPLY #44365 /* ~"Thanks. Farewell."~ */ EXIT
END
