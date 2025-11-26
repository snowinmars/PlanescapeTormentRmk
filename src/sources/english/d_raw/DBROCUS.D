// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2887 /* ~This kindly looking older man turns as you approach and nods politely. "Greetings... something I might help you with?"~ */
  IF ~~ THEN REPLY #2888 /* ~"Yes, I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #39381 /* ~"No, just passing by. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #39382 /* ~The old man turns and smiles. "Greetings, again. Something I might do for you?"~ */
  IF ~~ THEN REPLY #39383 /* ~"Yes, I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #39384 /* ~"No, just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.1 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0
  SAY #39385 /* ~"Certainly; go ahead, young man."~ */
  IF ~~ THEN REPLY #39386 /* ~"What are you doing here?"~ */ GOTO 3
  IF ~~ THEN REPLY #39387 /* ~"What can you tell me about this place?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39388 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68124 /* ~"What can you tell me about the silent prostitute?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39389 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #39390 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39391 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39392 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39393 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 11
  IF ~~ THEN REPLY #39394 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #39395 /* ~The old man chuckles pleasantly. "What most men do here, young fellow... chatting with the fair ladies of the Brothel."~ */
  IF ~~ THEN REPLY #39396 /* ~"Any one of them in particular you'd recommend?"~ */ GOTO 4
  IF ~~ THEN REPLY #39397 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #39398 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39399 /* ~He strokes his beard, frowning in thought. "I would have to say... no, strike that. Well, young man, I am unsure of what you are after. Were I certain of what sort of conversation you would find enjoyable, perhaps I would be more qualified to make a suggestion."~ */
  IF ~~ THEN REPLY #39400 /* ~"That's all right. I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #39401 /* ~"I suppose I'd best go talk to them myself, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #39402 /* ~The old man smiles; his eyes twinkle. "I can tell you that it is a most *wondrous* establishment! The ladies here are oh-so-enchanting... even that deliciously mouthy Kimasxi, in her own, special way. But please, young sir, speak to Fall-from-Grace of the Brothel... as the Brothel's proprietor, she may share with you much greater insights into the place than I have to offer."~ */
  IF ~~ THEN REPLY #39403 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #39404 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 2.3
  SAY #39405 /* ~"Ah, yes... that lovely creature would be Ecco. A sweet young girl... so easy to talk to. Not just because she's silent, mind you, but there's simply something *about* her." He sighs happily. "I'm unsure of *why* she won't speak, however."~ */
  IF ~~ THEN REPLY #39406 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #39407 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #39408 /* ~"Ravel?" The old man raises an eyebrow. "Ravel Puzzlewell, the night hag? How alarming! No, I had heard no such thing. Quite a rumor, though, true or no."~ */
  IF ~~ THEN REPLY #39409 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #39410 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #39411 /* ~"No, I do not. And I fear that were it right beneath my own nose I would not realize it... I have nearly no sense of smell remaining, you see." He taps his nose. "Sad, I know, but we all age. I am told Vivian always gives off the most beautiful fragrance..."~ */
  IF ~~ THEN REPLY #39412 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #39413 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #39414 /* ~He shakes his head. "I know the veil of which you speak... once or twice have I seen Marissa outside the Brothel, wearing her veil... but I do not know where it is, now."~ */
  IF ~~ THEN REPLY #39415 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #39416 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #39417 /* ~"I know little save for legends that most every child has heard - that she is a night hag, but one especially evil, and that she was banished from Sigil long, long ago."~ */
  IF ~~ THEN REPLY #39418 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #39419 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #39420 /* ~The old man frowns and scratches at his beard. "If there *is* a tenth student, my young friend, I would be most eager to meet her! But as far as I know, there is none."~ */
  IF ~~ THEN REPLY #39421 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #39422 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
