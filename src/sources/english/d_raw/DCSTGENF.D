// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63249 /* ~You see a bored looking woman. She glances at you as you approach and frowns.~ */
  IF ~~ THEN REPLY #63250 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #63251 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63252 /* ~She sighs and glances around then turns her attention to you. "Greetings to you as well... What do you want?"~ */
  IF ~~ THEN REPLY #63253 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #63254 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63255 /* ~Her frown deepens. "Questions... Bar that, berk. I'm no tout, nor do I want to be. Pike off." ~ */
  IF ~~ THEN REPLY #63256 /* ~"It will take just a moment of your time..."~ */ GOTO 3
  IF ~~ THEN REPLY #63257 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63258 /* ~"I don't have a moment to give you." She pauses, reaches behind her back, and then has a dagger in her hand. "How about I give you a few inches of fine Baatorian steel instead?"~ */
  IF ~~ THEN REPLY #63259 /* ~Attack her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #63260 /* ~Leave.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63261 /* ~You see a bored looking woman. She glances at you as you approach and frowns.~ */
  IF ~~ THEN REPLY #63262 /* ~"Greetings."~ */ GOTO 5
  IF ~~ THEN REPLY #63263 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63264 /* ~She smiles at you but looks about nervously. "Yes. Greetings and all that... You want something?"~ */
  IF ~~ THEN REPLY #63265 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63266 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63267 /* ~She frowns and sighs. "If you must. Please be quick."~ */
  IF ~~ THEN REPLY #63268 /* ~"Who are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #63269 /* ~"What are you doing?"~ */ GOTO 8
  IF ~~ THEN REPLY #63270 /* ~"What can you tell me about Curst?"~ */ GOTO 9
  IF ~~ THEN REPLY #63271 /* ~"Do you know anything about a deva?"~ */ GOTO 11
  IF ~~ THEN REPLY #63272 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63273 /* ~"Who I am is not important. Just ask your questions and I'll try to answer them..." She gives you an impatient look.~ */
  IF ~~ THEN REPLY #63274 /* ~"Very well. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63275 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63276 /* ~"What I am doing is not really your concern. Just ask your questions please."~ */
  IF ~~ THEN REPLY #63277 /* ~"Very well. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63278 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63279 /* ~"Curst is a city of liars, cheats, and backstabbers. The only person you can trust is yourself... and I'd think twice before I did that." She shrugs. "Keep that in mind and you'll do fine here."~ */
  IF ~~ THEN REPLY #63280 /* ~"Liars, cheats... Does that include you?"~ */ GOTO 10
  IF ~~ THEN REPLY #63281 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63282 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63283 /* ~She smiles. "Absolutely..."~ */
  IF ~~ THEN REPLY #63284 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63285 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63286 /* ~She frowns as she thinks. "No, nothing about a deva." She shrugs. "Ask at the administration office in the center of town."~ */
  IF ~~ THEN REPLY #63287 /* ~"I will. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63288 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63289 /* ~You see a bored looking woman. She glances at you as you approach and frowns.~ */
  IF ~~ THEN REPLY #63290 /* ~"Greetings."~ */ GOTO 13
  IF ~~ THEN REPLY #63291 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63292 /* ~She looks at you apprehensively. "Uh... Hello. Whatever it is you want, I don't have it. Leave me be." She glances about.~ */
  IF ~~ THEN REPLY #63293 /* ~"I have some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #63294 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63295 /* ~"Hmm... Well, be that as it may, I still don't want to be bothered by you. Go away." She frowns.~ */
  IF ~~ THEN REPLY #63296 /* ~"It will only take a moment of your time."~ */ GOTO 15
  IF ~~ THEN REPLY #63297 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63298 /* ~Her frown deepens as she places her hands on her hips. "Alright, you don't understand my saying *no* the nice way... Do I have to do it the not so nice way?"~ */
  IF ~~ THEN REPLY #63299 /* ~"Yes, you do."~ */ GOTO 16
  IF ~~ THEN REPLY #63300 /* ~"No, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63301 /* ~She smiles. "Very well then... Go sit on a sodding pole till yer arse cheeks touch the ground, then spin on it!" She makes a rude gesture at you. "Pike off you barmy bastard!"~ */
  IF ~~ THEN REPLY #63302 /* ~"Very well, farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63303 /* ~You see a bored looking woman. She glances at you as you approach and frowns. "I've had enough of you already, bugger off..." She turns away and ignores you.~ */
  IF ~~ THEN REPLY #63304 /* ~Leave.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #63305 /* ~This person looks extremely upset at being in the prison. You can't get a response from them regardless of how hard you try.~ */
  IF ~~ THEN REPLY #63306 /* ~Leave.~ */ EXIT
END
