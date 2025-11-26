// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNAMES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DNAMES~

IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7288 /* ~You see a Dustman with a crooked smile frozen on his face. Despite the smile, his eyes are as dull as stones. His right arm is shorter than the left, and he keeps it tucked to his side, as if cradling a small child.~ */
  IF ~~ THEN REPLY #7289 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #7290 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7291 /* ~The Dustman's eyes slide over you. "Name." The way he speaks the word, it sounds like the tolling of a bell.~ */
  IF ~~ THEN REPLY #7292 /* ~"I... I don't know."~ */ GOTO 2
  IF ~~ THEN REPLY #7293 /* ~"Uh... sorry to disturb you."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 9.0
  SAY #7294 /* ~"No name, no name, can't help you." The Dustman speaks in a curious sing-song voice. "Need to give a name if you want to see where it's died."~ */
  IF ~~ THEN REPLY #7295 /* ~"What?"~ */ DO ~SetGlobal("Death_of_Names","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7296 /* ~"Given a name when you're born, give it back when you need it no more. Death-of-Names, Death-of-Names." His eyes swim across the monolith, then the walls of the area. "Buried many names here, Death-of-Names has. Tell me a name, I'll show its grave."~ */
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7297 /* ~"Xachariah."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7298 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7299 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7300 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7301 /* ~~ */ GOTO 13
  IF ~~ THEN REPLY #7302 /* ~~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #7303 /* ~"Quentin."~ */ GOTO 5
  IF ~~ THEN REPLY #7304 /* ~"Uh... I don't know. Try 'Adahn.'"~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.5 5.3 5.5 9.4 9.7
  SAY #7305 /* ~He shakes his head. "Not dead yet, that name is. Not buried here. Not time, not time."~ */
  IF ~~ THEN REPLY #7306 /* ~"Let me try another name..."~ */ GOTO 9
  IF ~~ THEN REPLY #7307 /* ~"Can you bury a name for me?"~ */ GOTO 5
  IF ~~ THEN REPLY #7308 /* ~"Very... well. Sorry to disturb you."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
  SAY #7309 /* ~He nods, then unfolds his small hand from where it is cradled on his side. It looks atrophied... it is the size of a child's hand. "Costs jink to bury a name. Three coppers, three."~ */
  IF ~  PartyGoldGT(2)
GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7310 /* ~"Xachariah."~ */ GOTO 12
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7311 /* ~"Deionarra."~ */ GOTO 12
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",0)
~ THEN REPLY #7312 /* ~"Dhall."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Dhall","GLOBAL",1)
~ GOTO 6
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7313 /* ~"Dhall."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
Dead("Quentin")
Global("Death_of_Names_Quentin","GLOBAL",0)
~ THEN REPLY #7314 /* ~~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Quentin","GLOBAL",1)
~ GOTO 15
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
!Dead("Quentin")
~ THEN REPLY #7315 /* ~~ */ GOTO 4
  IF ~  PartyGoldLT(3)
~ THEN REPLY #7316 /* ~~ */ EXIT
  IF ~~ THEN REPLY #7317 /* ~"Quentin."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #7350 /* ~The coppers fall into Death-of-Name's hand, and he tucks his arm back to his side. His eyes, now suddenly alive, roll to the back of his head, then snap forward and begin scanning the monolith and walls of the memorial area. ~ */
  IF ~~ THEN REPLY #7351 /* ~Wait...~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 15.0
  SAY #7352 /* ~He catches sight of a spot on the wall, and he quickly scuttles over to it, hunches down, then begins to chip at the wall. He stops a few moments later, hops up, then returns to you. "Buried." The word has a finality about it that makes you uncomfortable.~ */
  IF ~~ THEN REPLY #7353 /* ~"I'd like you to look for a name for me..."~ */ GOTO 9
  IF ~~ THEN REPLY #7354 /* ~"I'd like to bury another name."~ */ GOTO 5
  IF ~~ THEN REPLY #7355 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7356 /* ~You see Death-of-Names. He is standing at the monument with the same crooked smile, his arm cradled against his side.~ */
  IF ~~ THEN REPLY #7357 /* ~"Greetings."~ */ GOTO 9
  IF ~~ THEN REPLY #7358 /* ~Leave him alone.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
  SAY #7359 /* ~Once again, his eyes seem to slide over you. "Name." The way he speaks the word, it sounds like the tolling of a bell.~ */
  IF ~~ THEN REPLY #7360 /* ~"I... I don't know."~ */ GOTO 2
  IF ~~ THEN REPLY #7361 /* ~"I'd like to bury a name."~ */ GOTO 5
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7362 /* ~"Xachariah."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7363 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7364 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7365 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7366 /* ~"Xixi."~ */ GOTO 13
  IF ~~ THEN REPLY #7367 /* ~"Xixi."~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #7368 /* ~"Quentin."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.0 3.1 3.3 9.2 9.3 9.5
  SAY #7369 /* ~His eyes roll to the back of his head, then pop back. With a wild gleam, his eyes run across the walls of the monument, scanning the names at inhuman speed. He then points at a section of the wall. "Buried."~ */
  IF ~~ THEN REPLY #7370 /* ~Examine the spot he is pointing at.~ */ GOTO 11
  IF ~~ THEN REPLY #7371 /* ~"I had another name..."~ */ GOTO 9
  IF ~~ THEN REPLY #7372 /* ~"I'd like to bury a name."~ */ GOTO 5
  IF ~~ THEN REPLY #7373 /* ~"Just checking. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7374 /* ~Chiseled into the black stone, in tiny cramped writing, is the name you requested. It is almost lost beneath the sea of names around it.~ */
  IF ~~ THEN REPLY #7375 /* ~"I had another name..."~ */ GOTO 9
  IF ~~ THEN REPLY #7376 /* ~"I'd like to bury a name..."~ */ GOTO 5
  IF ~~ THEN REPLY #7377 /* ~"Just checking. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 5.1
  SAY #7378 /* ~He shakes his head. "Buried." ~ */
  IF ~~ THEN REPLY #7380 /* ~"I had another name..."~ */ GOTO 9
  IF ~~ THEN REPLY #7382 /* ~"I'd like to bury a name..."~ */ GOTO 5
  IF ~~ THEN REPLY #7383 /* ~"Just checking. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4 9.6
  SAY #7384 /* ~His eyes roll to the back of his head, then pop back. With a wild gleam, his eyes run across the walls of the monument, scanning the names at inhuman speed. He then points to the base of the monument. "Buried."~ */
  IF ~~ THEN REPLY #7386 /* ~Examine the spot he is pointing at.~ */ GOTO 14
  IF ~~ THEN REPLY #7387 /* ~"I had another name..."~ */ GOTO 9
  IF ~~ THEN REPLY #7388 /* ~"I'd like to bury a name."~ */ GOTO 5
  IF ~~ THEN REPLY #7390 /* ~"Just checking. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7391 /* ~Chiseled into the black stone, in tiny cramped writing, is Quentin's name. Unfortunately for Quentin, it doesn't look like his name was sufficient to split the monument as he had hoped.~ */
  IF ~~ THEN REPLY #7392 /* ~"I had another name..."~ */ GOTO 9
  IF ~~ THEN REPLY #7394 /* ~"I'd like to bury a name..."~ */ GOTO 5
  IF ~~ THEN REPLY #7403 /* ~"Just checking. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.4
  SAY #7404 /* ~The coppers fall into Death-of-Name's hand, and he tucks his arm back to his side. His eyes, now suddenly alive, roll to the back of his head, then snap forward and begin scanning the monolith and walls of the memorial area. ~ */
  IF ~~ THEN REPLY #7405 /* ~Wait...~ */ GOTO 7
END

IF ~~ THEN BEGIN 16 // from:
  SAY #7406 /* ~He turns to the base of the monolith, and he quickly scuttles over to it, hunches down, then begins to chip at the monument. Unfortunately for Quentin, the monument does not budge when his name is entered. Death-of-Names stops a few moments later, hops up, then returns to you. "Buried." The word has a finality about it that makes you uncomfortable.~ */
  IF ~~ THEN REPLY #7407 /* ~"I'd like you to look for a name for me..."~ */ GOTO 9
  IF ~~ THEN REPLY #7408 /* ~"I'd like to bury another name."~ */ GOTO 5
  IF ~~ THEN REPLY #7409 /* ~"Thank you. Farewell."~ */ EXIT
END
