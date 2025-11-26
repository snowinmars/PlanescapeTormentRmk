// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINAM~

IF ~  NumTimesTalkedTo(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46116 /* ~This short, scholarly man - a tight, nervous frown on his face - looks you up and down. "Greetings; I am Finam. I must beg your pardon, sir, but I care little for guests - invited or *otherwise* - so unless you've business with me, I would ask you to leave."~ */
  IF ~~ THEN REPLY #46117 /* ~"I did have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #46118 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46119 /* ~Finam glances your way, frowning. "Chosen to grace my home once more, have you? What is it you wish of me this time?"~ */
  IF ~~ THEN REPLY #46120 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #46121 /* ~"Nothing, really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #46122 /* ~"I would have you know that I am a scholar and a linguist, sir. While I shall happily entertain any questions regarding my field of study - language, and the like - I can be of no help to you in other matters."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46123 /* ~Unfold the dodecahedron to a page with 'writing' on it and ask if he can translate it.~ */ GOTO 3
  IF ~~ THEN REPLY #46124 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46125 /* ~He takes the unfolded dodecahedron in his hands and examines it closely. "This language is a long-dead one, known to virtually no-one. I believe my father - a linguist, like myself - knew this language, and may well have been the only man in Sigil at the time that could understand it. I recognize it from his notes, but I cannot translate it."~ */
  IF ~~ THEN REPLY #46126 /* ~"Do you have those notes, still?"~ */ GOTO 4
  IF ~~ THEN REPLY #46127 /* ~"Thanks just the same. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46128 /* ~Finam shakes his head. "They'll be of no use to you if you're looking to translate anything... and the few actual books he had pertaining to that language disappeared around the time of his murder, I believe."~ */
  IF ~~ THEN REPLY #63620 /* ~"I'd very much like to see them, just the same..."~ */ GOTO 8
  IF ~~ THEN REPLY #46129 /* ~"Your father was murdered?"~ */ GOTO 5
  IF ~~ THEN REPLY #46130 /* ~"That's too bad. Farewell, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 8.3 11.0 12.3 13.0
  SAY #46131 /* ~Finam nods. "Strangled, he was. He had left to tutor someone - he taught various languages to supplement his research income - and was discovered dead in a side-chamber of the Civic Festhall. The killer was never found. This was some... oh... perhaps fifty years ago, now. I was but a child."~ */
  IF ~~ THEN REPLY #46132 /* ~"He knew the language, though, and could teach it?"~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #46133 /* ~"A pity. Farewell, Finam."~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46134 /* ~"Surely he did and could, were he alive today. My father was said to be a great teacher." Finam sighs sadly. "I've his skill with language, but not his patience for others, sadly."~ */
  IF ~~ THEN REPLY #46135 /* ~"Is he... interred at the Mortuary?"~ */ JOURNAL #39478 /* ~I spoke to the linguist, Finam, about the strange writing on the unfolding dodecahedron I found. He says his father knew the dead language it was written in, but was strangled long ago by an unknown assailant. The father's ashes now reside in an urn within Finam's home. Perhaps there is a way to somehow communicate with the spirit of Finam's father through the ashes, as finding another who understands the long-dead language isn't likely.~ */ GOTO 7
  IF ~~ THEN REPLY #46136 /* ~"Farewell, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46137 /* ~"Why, no... his ashes are kept here." He points to a bronze urn sitting atop a cabinet beside a bouquet of purple flowers. "Why?" A wry smile crosses Finam's lips. "A necroscope, are you? Speak with the dead?" He suddenly frowns. "I have no wish to speak of these things any longer. You'll have to excuse me, sir... farewell."~ */
  IF ~~ THEN REPLY #46138 /* ~"Farewell, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #49981 /* ~Finam gives an annoyed sigh. "I'm not certain where they are just now, and am looking for something else at the moment - my research journal. Perhaps when I've recovered it I could spare the time to find those notes for you."~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #49982 /* ~"Is it this book, right here?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~I returned Finam the Linguist's research journal to him.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49983 /* ~"Is it this book, right here?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~I returned Finam the Linguist's research journal to him.~ */ GOTO 10
  IF ~~ THEN REPLY #49984 /* ~"I'll find it for you, then. Where'd you last have it?"~ */ DO ~SetGlobal("Finam","GLOBAL",1)
~ JOURNAL #49988 /* ~I agreed to find and return Finam the Linguist's research journal... in return, I'm hoping he'll give me his father's notes regarding the language inscribed into the dodecahedron. It sounds like he left it somewhere in the Brothel of Slating Intellectual Lusts.~ */ GOTO 11
  IF ~~ THEN REPLY #49985 /* ~"You had said your father was murdered?"~ */ GOTO 5
  IF ~~ THEN REPLY #49986 /* ~"That's too bad. Farewell, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #49989 /* ~Finam's eyebrows arch. "Why, yes it is!" He takes it from you, then begins to rummage through his pockets. "Here you are, then... my father's notes. Square, then, are we? Good. I've to look over my notes, now, so if you'll just excuse me..."~ */
  IF ~~ THEN REPLY #49990 /* ~"Thanks, Finam. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #49991 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 12.1
  SAY #49992 /* ~Finam's eyebrows arch. "Why, yes it is!" He takes it from you, then begins to rummage through his pockets. "Hmm... that's odd, they're gone. Sorry, but it appears as if someone's made off with those notes of my father's. Ah, well... a pity. I've to look over my notes, now, so if you'll just excuse me..."~ */
  IF ~~ THEN REPLY #49993 /* ~"Don't worry about it. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #49994 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 12.2
  SAY #49995 /* ~"Eh... well... I'm not certain. It might be at... well, perhaps it somehow found its way into the Brothel of Slating Intellectual Lusts, but how that could have come to pass I do not know." He clears his throat and looks away from you.~ */
  IF ~~ THEN REPLY #49997 /* ~"I'll look there. You had said your father was murdered?"~ */ GOTO 5
  IF ~~ THEN REPLY #49996 /* ~"I'll check there, then. Farewell."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #49998 /* ~Finam pauses his search to look at you. "Any luck finding that book of mine, perchance?"~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #50000 /* ~"Is it this book, right here?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~I returned Finam the Linguist's research journal to him.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49999 /* ~"Is it this book, right here?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~I returned Finam the Linguist's research journal to him.~ */ GOTO 10
  IF ~~ THEN REPLY #50001 /* ~"No. Where did you last have it again?"~ */ GOTO 11
  IF ~~ THEN REPLY #50002 /* ~"No... but what was it you said about your father being murdered?"~ */ GOTO 5
  IF ~~ THEN REPLY #50003 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #50004 /* ~Finam glances your way, slightly annoyed. "I've to look over my notes, now, so if you'll just excuse me..."~ */
  IF ~~ THEN REPLY #50005 /* ~"Just one question. You said your father had been murdered?"~ */ GOTO 5
  IF ~~ THEN REPLY #50006 /* ~"Farewell, then."~ */ EXIT
END
