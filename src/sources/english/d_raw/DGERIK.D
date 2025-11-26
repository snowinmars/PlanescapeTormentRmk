// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGERIK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGERIK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58157 /* ~You see a rat faced looking young man. He watches you carefully as you approach and seems to gauge your every move with a practiced eye.~ */
  IF ~~ THEN REPLY #58158 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58159 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58160 /* ~He rubs his chin as he examines you. You get the impression he is weighing you in the balance. "Yes... greetings, cutter. Welcome to our home. What do you want with Gerik?"~ */
  IF ~~ THEN REPLY #58161 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58162 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 6.0 9.0 12.0
  SAY #58163 /* ~"Ask... ask..." He smiles at you.~ */
  IF ~~ THEN REPLY #58164 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #58165 /* ~"What can you tell me about this place?"~ */ GOTO 8
  IF ~~ THEN REPLY #58166 /* ~"I'm looking for a deva, you know where I can find him?"~ */ GOTO 10
  IF ~~ THEN REPLY #58167 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58168 /* ~"We are Gerik. We told you that... didn't we?" He raises his eyebrows at you.~ */
  IF ~~ THEN REPLY #58169 /* ~"Why do you refer to yourself as *we?*"~ */ GOTO 4
  IF ~~ THEN REPLY #58170 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58171 /* ~"I must leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #58172 /* ~He frowns at you. "Because we are more than one..." He looks to either side of himself then back at you. "Can you not see us?" He gestures to each side of himself.~ */
  IF ~~ THEN REPLY #58173 /* ~"Yes, I see you all now. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58174 /* ~"Uh... No, there's only you and I here."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58175 /* ~He frowns, then leans to either side and begins to whisper to an invisible companion. After a moment he returns his attention to you. "We are confused as to why this would be. Perhaps you are ill. Perhaps we can help you." He smiles at you.~ */
  IF ~~ THEN REPLY #58176 /* ~"Ah... There they are. I'm sorry, I just missed your companions before. I see them now."~ */ GOTO 6
  IF ~~ THEN REPLY #58177 /* ~"I think you're the one who needs help."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58178 /* ~He smiles and nods. "Good... good... all is well and we are happy. Did you have more questions?"~ */
  IF ~~ THEN REPLY #58179 /* ~"Yes."~ */ GOTO 2
  IF ~~ THEN REPLY #58180 /* ~"No, I must be leaving. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #58181 /* ~He frowns deeply. "This disturbs us... you should leave, we must have time to think..." He ignores you.~ */
  IF ~~ THEN REPLY #58182 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #58183 /* ~He glances about, then seems to stare off into the distance. "This place is our summer home... we like it here. The sound of the waves is most relaxing to us."~ */
  IF ~~ THEN REPLY #58184 /* ~"Why do you refer to yourself as *we?*"~ */ GOTO 4
  IF ~~ THEN REPLY #58185 /* ~"Waves? What waves?"~ */ GOTO 9
  IF ~~ THEN REPLY #58186 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #58187 /* ~"What waves?" He looks annoyed and points at a distant spot through the wall. "Those waves! We love the ocean, the sea breeze... it's very refreshing."~ */
  IF ~~ THEN REPLY #58188 /* ~"I... see. Yes, very nice. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58189 /* ~"Uh huh... Well, I can't take the salt air. I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #58190 /* ~His eyes grow wide and he nods his head. He looks to either side of himself and begins to mumble and converse with some invisible companion. After a moment he turns his attention to you. "Yes... we have seen the deva. Beautiful he was..."~ */
  IF ~~ THEN REPLY #58191 /* ~"Where can I find him?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58192 /* ~He looks confused. "We do not know... he is lost to us." He gazes off into the distance. "We lost him... lost him... lost..." His voice fades to silence as he stares blankly at the wall. He ignores any further attempt to communicate.~ */
  IF ~~ THEN REPLY #58193 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #58194 /* ~You see Gerik. He seems to be lost in his own world until he notices your approach. "We remember you... what do you want of Gerik?"~ */
  IF ~~ THEN REPLY #58195 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58196 /* ~"Nothing, farewell."~ */ EXIT
END
