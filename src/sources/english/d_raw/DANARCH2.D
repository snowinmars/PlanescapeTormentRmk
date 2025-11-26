// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH2~

IF ~  NumTimesTalkedTo(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44366 /* ~You see a thin, skulking man. His long, nimble fingers quiver slightly, and he has trouble meeting your eyes when he talks to you. "You startled me! I... I haven't seen you around here before, stranger. What... what do you want from me?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44370 /* ~"I was told by a... friend... that I could find a cell of Anarchists here. The password is 'eclipse.'" ~ */ GOTO 1
  IF ~~ THEN REPLY #44371 /* ~"Who are you?"~ */ GOTO 8
  IF ~~ THEN REPLY #44373 /* ~"What is this place?"~ */ GOTO 9
  IF ~~ THEN REPLY #44374 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.1 9.0 10.0
  SAY #44376 /* ~His bumbling manner drops suddenly, and he becomes very businesslike. "He did. Did he give you the secret handshake, too? Your magical cryptographical ring? Do you know the cell's secret anthem? Do you have an education in any of this?" He looks you up and down for a moment, and says, "Obviously not. Next time, how about I ask you for the password?" He sighs. "What do you want?"~ */
  IF ~~ THEN REPLY #44377 /* ~"I wanted to pick up some extra items."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44379 /* ~"I need a place to hide out."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44381 /* ~"I need to ask you about your cell here."~ */ GOTO 3
  IF ~~ THEN REPLY #44382 /* ~"What are you trying to accomplish here?"~ */ GOTO 4
  IF ~~ THEN REPLY #44383 /* ~"Why are you an Anarchist?"~ */ GOTO 5
  IF ~~ THEN REPLY #44384 /* ~"Nothing, I guess. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44386 /* ~"Hope that's to your liking."~ */
  IF ~~ THEN REPLY #44387 /* ~"Yeah, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 4.2 11.2
  SAY #44389 /* ~"You know what the first rule of being a secret revolutionary is?" He waits just long enough for you to start to answer, and says, "It's keeping it *secret.* I'm giving no secrets away, comrade, no matter *who* you say sent you. So, now that we've got that established, what else do you want?"~ */
  IF ~~ THEN REPLY #44395 /* ~"I wanted to pick up some extra items."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44396 /* ~"I need a place to hide out."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44397 /* ~"What are you trying to accomplish here?"~ */ GOTO 4
  IF ~~ THEN REPLY #44399 /* ~"Why are you an Anarchist?"~ */ GOTO 5
  IF ~~ THEN REPLY #44400 /* ~"Nothing, I guess. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.2 11.3
  SAY #44403 /* ~"What we're trying to accomplish is secret. That's the point of bein' underground, wouldn't you agree? You'll know it when you see it, and you won't see it for a long time. We're laying our plans *careful,* you know what I'm saying? Now that we've talked about care, what do you want?"~ */
  IF ~~ THEN REPLY #44409 /* ~"I wanted to pick up some extra items."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44411 /* ~"I need a place to hide out."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44412 /* ~"I need to ask you about your cell here."~ */ GOTO 3
  IF ~~ THEN REPLY #44414 /* ~"Why are you an Anarchist?"~ */ GOTO 5
  IF ~~ THEN REPLY #44415 /* ~"Nothing, I guess. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 3.3 4.3 11.4
  SAY #44418 /* ~"Look around you, berk. Do you see anybody who's free out there? Do you see anyone who doesn't have someone else putting a boot heel down on their necks? Even the people who think they're important get pushed around. Someone needs to pull the system down."~ */
  IF ~~ THEN REPLY #44420 /* ~"And replace it with what?"~ */ GOTO 6
  IF ~~ THEN REPLY #44421 /* ~"Sounds like a good enough reason. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #44423 /* ~"That ain't for me to decide, berk. I'm good at destruction and leaving pieces for people to pick up. I destroy so others can create. We all got our specialties. I'm an optimist - I believe people'll create something good. Till they do, though, I have to keep tearing it down."~ */
  IF ~~ THEN REPLY #44424 /* ~"And who decides what's good? What makes you so special?"~ */ GOTO 7
  IF ~~ THEN REPLY #44426 /* ~"Good for you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44427 /* ~"What makes me special is that I'm willing to do something about it. What makes me the person who decides what's right is that I look for equality. Till I see some common Hiver bein' treated like a Golden Lord, I'm going to keep doin' my bit."~ */
  IF ~~ THEN REPLY #44428 /* ~"All right. That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.1 9.1 10.1
  SAY #44429 /* ~"I'm Conall. I work here."~ */
  IF ~~ THEN REPLY #44430 /* ~"And what is this place?"~ */ GOTO 9
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44431 /* ~"I was told by a... friend... that I could find a cell of Anarchists here. The password is 'eclipse.'" ~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 0.2 8.0 10.2
  SAY #44433 /* ~He looks at you carefully, to see if you're joking. "It's the Vault of the Ninth World. It's a storehouse. Didn't you read the sign when you came in?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44435 /* ~"I was told by a... friend... that I could find a cell of Anarchists here. The password is 'eclipse.'" ~ */ GOTO 1
  IF ~~ THEN REPLY #44436 /* ~"Not that carefully. Who are you?"~ */ GOTO 8
  IF ~~ THEN REPLY #44438 /* ~"Thanks for the answer. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #44440 /* ~"You again? If you want something here, go check in with the head at the door."~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
~ THEN REPLY #44442 /* ~"I was told by a... friend... that I could find a cell of Anarchists here. The password is 'eclipse.'" ~ */ GOTO 1
  IF ~~ THEN REPLY #44443 /* ~"Who are you?"~ */ GOTO 8
  IF ~~ THEN REPLY #44444 /* ~"What is this place?"~ */ GOTO 9
  IF ~~ THEN REPLY #44446 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Know_Anarchists","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #44448 /* ~"You in trouble? You need something?"~ */
  IF ~~ THEN REPLY #44449 /* ~"I wanted to pick up some extra items."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44451 /* ~"I need a place to hide out."~ */ DO ~StartStore("Conall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44452 /* ~"I need to ask you about your cell here."~ */ GOTO 3
  IF ~~ THEN REPLY #44453 /* ~"What are you trying to accomplish here?"~ */ GOTO 4
  IF ~~ THEN REPLY #44454 /* ~"Why are you an Anarchist?"~ */ GOTO 5
  IF ~~ THEN REPLY #44456 /* ~"Nothing, I guess. Farewell."~ */ EXIT
END
