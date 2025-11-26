// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARETKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARETKR~

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3196 /* ~A scruffy old man who reeks of garbage hails you. "Stranger! Bide a moment! I must tell you what has happened to this place!"~ */
  IF ~~ THEN REPLY #3197 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #60250 /* ~"What happened?"~ */ GOTO 1
  IF ~~ THEN REPLY #60251 /* ~"No. Get out of my way."~ */ GOTO 3
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Kyse","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #60252 /* ~"You have returned to a town of calamity, stranger. The deva rises triumphant above the wreckage, having dragged us here to our dooms. There is only one way to return - and that is to strike the deva down, to cause the town to recant its treachery and deceit. The stronger the belief of the town in forgiveness, the weaker the deva."~ */
  IF ~~ THEN REPLY #60253 /* ~"Trias did all this?"~ */ JOURNAL #60254 /* ~Kyse the caretaker has told me that Trias ascended from his prison and condemned the town - and in so doing, caused it to slide into Carceri. The caretaker told me further that the best way to combat Trias is to weaken the hold of evil and chaos on this town - to convince the townsfolk to look to their better natures. ~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #60255 /* ~"I am Kyse, the caretaker of the city's refuse. I tried to teach them of gentility and kindness, and they refused, and this is where it has gotten them."~ */
  IF ~~ THEN REPLY #60256 /* ~"What happened?"~ */ GOTO 1
  IF ~~ THEN REPLY #60257 /* ~"Get out of my way. I have business to attend to."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 2.1
  SAY #60258 /* ~"Calamity awaits you, stranger! The city will be destroyed unless the deva can be defeated! Unless the town can return to the Outlands, all is lost for everyone! We are in Carceri, where not even the Titans can escape! Should you require resting, seek the old barracks or the distillery. Now take this, for it can aid you." He turns and flees into the chaos behind him.~ */
  IF ~~ THEN REPLY #60259 /* ~"That was odd."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #60260 /* ~"The deva rose from the ground and condemned the town's iniquities. A great confusion arose as the buildings tumbled around us - and then we arrived. There is only one way to combat Trias - and that is to weaken him by good deeds and turning the townsfolks' minds away from chaos and evil toward goodness. Otherwise, he shall surely triumph." He looks about himself. "I have work to attend to. Should you require resting, seek the old barracks or the distillery. Now take this. It will aid you."~ */
  IF ~~ THEN REPLY #60261 /* ~"Good luck. Farewell."~ */ DO ~GiveItem("SPWI802",Protagonist)
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("Caretaker","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #60262 /* ~"You have my gratitude, stranger. What can I do for you?"~ */
  IF ~~ THEN REPLY #60263 /* ~"I require healing."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60264 /* ~"What were those thugs after?"~ */ GOTO 6
  IF ~~ THEN REPLY #60265 /* ~"Tell me of yourself."~ */ GOTO 7
  IF ~~ THEN REPLY #60266 /* ~"Tell me of Curst."~ */ GOTO 8
  IF ~~ THEN REPLY #60267 /* ~"Tell me of this dump."~ */ GOTO 17
  IF ~~ THEN REPLY #68154 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 7.1 8.1
  SAY #60268 /* ~"It escapes my knowledge. Rumor had it that I sat upon a wealth of gold, that great riches had come to me. Untrue, untrue - the only riches I have are those of my faith, which sustains me in a town of deceit. I have tried to pass my wealth along but so few here wish to share it with me."~ */
  IF ~~ THEN REPLY #60269 /* ~"Right. Tell me of yourself."~ */ GOTO 7
  IF ~~ THEN REPLY #60270 /* ~"Tell me of Curst."~ */ GOTO 8
  IF ~~ THEN REPLY #60271 /* ~"I require some healing."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60272 /* ~"Tell me of this dump."~ */ GOTO 17
  IF ~~ THEN REPLY #68153 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 6.0 8.2
  SAY #60273 /* ~"I am Kyse, caretaker of the town's refuse. I tend to their garbage, and in metaphor I have seen a fair number of souls float this way as well. I am the voice that urges them to goodness - and I fear they ignore me."~ */
  IF ~~ THEN REPLY #60274 /* ~"I require healing."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60275 /* ~"What were those thugs after?"~ */ GOTO 6
  IF ~~ THEN REPLY #60276 /* ~"Tell me of Curst."~ */ GOTO 8
  IF ~~ THEN REPLY #60277 /* ~"Tell me about this dump."~ */ GOTO 17
  IF ~~ THEN REPLY #68152 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.1 7.2
  SAY #60278 /* ~"It is a town that is on the brink of disaster. All manner of evil is being done here, and nothing is as it seems. All is hidden beneath a veneer of civility, but the venom scars those who breathe it in. This is a poisonous town, filled with poisonous people."~ */
  IF ~~ THEN REPLY #60279 /* ~"I require healing."~ */ DO ~StartStore("Kyse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #60280 /* ~"What were those thugs after?"~ */ GOTO 6
  IF ~~ THEN REPLY #60281 /* ~"Tell me of yourself."~ */ GOTO 7
  IF ~~ THEN REPLY #60282 /* ~"Tell me about this dump."~ */ GOTO 17
  IF ~~ THEN REPLY #68151 /* ~"I see. Farewell."~ */ EXIT
END

IF ~  Global("Caretaker","GLOBAL",4)
~ THEN BEGIN 9 // from:
  SAY #60283 /* ~"You saved my life." Kyse seems vaguely stupefied that this would happen in Curst. "I owe you much. Should you ever require healing, come seek me. I will provide what assistance I can. Excuse me. I must go sit down."~ */
  IF ~~ THEN REPLY #60284 /* ~"Sure. Farewell."~ */ DO ~SetGlobal("Caretaker","GLOBAL",5)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 10 // from:
  SAY #60285 /* ~You see a scruffy old man who reeks of garbage. He seems somehow more vital than most of the people of this town, more vibrant, as if he didn't quite belong here. He looks up at you as you approach, and straightens his back. "Come to see Kyse? Heard stories of wisdom and righteousness? Examples to be set and lived by?"~ */
  IF ~~ THEN REPLY #60286 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #60287 /* ~"What is this place?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #60288 /* ~"What can you tell me of Curst?"~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60289 /* ~"I heard that you're having trouble with a group of thugs."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60290 /* ~"Tell me about this dump."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #68150 /* ~"No. Farewell."~ */ DO ~SetGlobal("Know_Kyse","GLOBAL",1)
~ EXIT
END

IF ~  GlobalLT("Caretaker","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #60291 /* ~"Have you come for enlightenment? Wisdom? For... oh, it's you." He seems vaguely disappointed.~ */
  IF ~~ THEN REPLY #60292 /* ~"Who are you?"~ */ GOTO 12
  IF ~~ THEN REPLY #60293 /* ~"What is this place?"~ */ GOTO 13
  IF ~~ THEN REPLY #60294 /* ~"What can you tell me of Curst?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60295 /* ~"I heard that you're having trouble with a group of thugs."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60296 /* ~"Tell me about this dump."~ */ GOTO 17
  IF ~~ THEN REPLY #68149 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 16.0
  SAY #60297 /* ~"I am Kyse, caretaker of the town's refuse. I tend to their garbage, and in metaphor I have seen a fair number of souls float this way as well. I am the voice that urges them to goodness - and I fear they ignore me."~ */
  IF ~~ THEN REPLY #60298 /* ~"I see. I had a few more questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #60299 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 16.1
  SAY #60300 /* ~"This is the town's refuse. I watch over it, to hunt the vermin who pick through it. I keep it from spilling into the city, and in turn they bring me more."~ */
  IF ~~ THEN REPLY #60301 /* ~"I see. I had a few more questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #60302 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2 16.2
  SAY #60303 /* ~"It is a town that is on the brink of disaster. All manner of evil is being done here, and nothing is as it seems. All is hidden beneath a veneer of civility, but the venom scars those who breathe it in. This is a poisonous town, filled with poisonous people."~ */
  IF ~~ THEN REPLY #60304 /* ~"I see. I had a few more questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #60305 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 16.3
  SAY #60306 /* ~"Wernet is the man, a leader of lice, a collector of sins. He tells me I have coin, that I should give it to him, but my wealth lies solely in my heart and my faith. I have told him this. I fear he does not believe. Go, convince him of this. Please. He stands in Inner Curst, on the southern side, near the wagons."~ */
  IF ~~ THEN REPLY #60307 /* ~"Sure. I had a few more questions..."~ */ JOURNAL #60309 /* ~Kyse, the dump caretaker, has asked me to talk to a thug named Wernet, and convince Wernet that the old man has nothing of value. I'm more than willing to believe him. He says Wernet is in Inner Curst, on the southern side, near some wagons.~ */ GOTO 16
  IF ~~ THEN REPLY #60308 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0 13.0 14.0 15.0 17.0
  SAY #60310 /* ~"What do you need?"~ */
  IF ~~ THEN REPLY #60311 /* ~"Who are you?"~ */ GOTO 12
  IF ~~ THEN REPLY #60312 /* ~"What is this place?"~ */ GOTO 13
  IF ~~ THEN REPLY #60313 /* ~"What can you tell me of Curst?"~ */ GOTO 14
  IF ~  Global("Caretaker","GLOBAL",1)
~ THEN REPLY #60314 /* ~"I heard that you're having trouble with a group of thugs."~ */ DO ~SetGlobal("Caretaker","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #60315 /* ~"Tell me about this dump."~ */ GOTO 17
  IF ~~ THEN REPLY #68148 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 5.4 6.3 7.3 8.3 10.4 11.4 16.4
  SAY #68144 /* ~He leans forward conspiratorially. "I've a secret entrance into the underground here, a secret place almost no one knows. There is a way into the undercity..." He pauses. "But I have never used it. Should I go down, I foresee that I could never return. The way down is slippery, and the rubble would collapse behind me. When I'm ready to die, I shall slide down there and let the monsters feast on my bones."~ */
  IF ~~ THEN REPLY #68145 /* ~"I had a few more questions..."~ */ JOURNAL #68147 /* ~The caretaker of the dump told me of a secret entrance into the underground of Curst. He also says that once I pass that way, there's a good chance I would never be able to return the way I came. I'll keep this in mind.~ */ GOTO 16
  IF ~~ THEN REPLY #68146 /* ~"I see. Farewell."~ */ JOURNAL #68147 /* ~The caretaker of the dump told me of a secret entrance into the underground of Curst. He also says that once I pass that way, there's a good chance I would never be able to return the way I came. I'll keep this in mind.~ */ EXIT
END
