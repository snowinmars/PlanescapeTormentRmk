// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROKAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROKAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45789 /* ~You see a diminutive man with a bit of a waddle to his walk. His voice betrays a nearly comedic accent. "By all the powers in their celestial outhouses, what is this?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DMICCAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45791 /* ~"Our customer! Our customer! Miccah! Our customer has returned!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45793 /* ~The diminutive man replies: "Of course your eyes spy a customer! They see a customer all the time... customers on the STREET! We have no customers, we will never have customers, it is useless and forlorn to hope for..." He pauses as his eyes alight on you. "Miccah! We have a customer!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45795 /* ~"I can SEE that. Do you think I can't see that? Of course I can see that. I have eyes, don't I?" He turns to you. "What can we do for you today?"~ */
  IF ~~ THEN REPLY #45796 /* ~"Let's talk about trades."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45797 /* ~"Can you tell me about the area?"~ */ GOTO 5
  IF ~~ THEN REPLY #45798 /* ~"Can you tell me about yourself?"~ */ GOTO 6
  IF ~~ THEN REPLY #45799 /* ~"Who's she?"~ */ GOTO 7
  IF ~~ THEN REPLY #45800 /* ~"What can you tell me of the factions?"~ */ GOTO 8
  IF ~~ THEN REPLY #45801 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45802 /* ~"Of course I'm ready for him! I'm always ready! For whatever customers we have!" He turns to you. "What can we do for you today?"~ */
  IF ~~ THEN REPLY #45803 /* ~"Let's talk about trades."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45804 /* ~"Can you tell me about the area?"~ */ GOTO 5
  IF ~~ THEN REPLY #45805 /* ~"Can you tell me about yourself?"~ */ GOTO 6
  IF ~~ THEN REPLY #45806 /* ~"Who's she?"~ */ GOTO 7
  IF ~~ THEN REPLY #45807 /* ~"What can you tell me of the factions?"~ */ GOTO 8
  IF ~~ THEN REPLY #45808 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45809 /* ~"Ah, you want to know about the area? I can tell you many things about the area. There are many sights to see..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 9
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45811 /* ~"Me? You want to know about me? Miccah, he wants to know about me."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 10
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45813 /* ~"She? She? She is my devoted wife of some two-score years and the light of my life and the greatest..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 11
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45815 /* ~"The factions, eh? The factions? Miccah, he wants to know about the factions. We have..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 12
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45817 /* ~"I was going to tell him about the Market, but now I'm going to tell him about the brothel just to spite you! And then I'll tell him about the Civic Festhall and never will I mention any of the other attractions!"

The two of them degenerate into a shouting match, ignoring you.~ */
  IF ~~ THEN REPLY #45818 /* ~"I had a few more questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #45819 /* ~"I'd like to buy something..."~ */ GOTO 10
  IF ~~ THEN REPLY #45820 /* ~"Farewell, then."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 11.0 11.1 11.2 12.0 12.1 12.2 13.0 13.1 13.2
  SAY #45821 /* ~They're so busy shouting at each other that they don't pay any attention to you. The shop rapidly fills with their words.~ */
  IF ~~ THEN REPLY #45822 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45823 /* ~"I lack ambition? Lack ambition? If I didn't have a lodestone of this wife and this life I'd be something! But no, instead I'm a storekeeper instead of a grand adventurer..." The two of them degenerate into a shouting match, ignoring you.~ */
  IF ~~ THEN REPLY #45824 /* ~"I had a few more questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #45825 /* ~"I'd like to buy something..."~ */ GOTO 10
  IF ~~ THEN REPLY #45826 /* ~"Farewell, then."~ */ GOTO 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45827 /* ~"...if she weren't already there! She's the biggest bubber this side of the Hive, sir, and she's been that way for YEARS, I tell you, YEARS. She'd drink the River Oceanus and still be thirsty if it were made of alcohol!"

The two of them continue to squabble, ignoring you.~ */
  IF ~~ THEN REPLY #45828 /* ~"I had a few more questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #45829 /* ~"I'd like to buy something..."~ */ GOTO 10
  IF ~~ THEN REPLY #45830 /* ~"Farewell, then."~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45831 /* ~"I know one thing I believe - I believe this life must be my punishment for something I did in a past life!"

The two of them break into a heated argument, and ignore you.~ */
  IF ~~ THEN REPLY #45832 /* ~"I had a few more questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #45833 /* ~"I'd like to buy something..."~ */ GOTO 10
  IF ~~ THEN REPLY #45834 /* ~"Farewell, then."~ */ GOTO 10
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45835 /* ~"Her tastes run toward whatever can make her belly larger. Her taste is entirely in her mouth, and even then she has precious little."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 13
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45837 /* ~Brokah interjects with heavy irony. "And I ask you, how could I not appreciate the mouth and figure of a creature as beauteous as this? Truly without discernment and taste am I..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45839 /* ~"It certainly does make it hard to believe! All those chances, thrown away, when I could have been having the time of my life!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 15
END

IF ~~ THEN BEGIN 17 // from:
  SAY #45841 /* ~"You shut your mouth! I am more a man than you'll ever be!" He pauses, reconsiders his words, and eyes his wife critically. "Perhaps not. To be sure, you have more of a mustache than most men I've ever seen..."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 16
END
