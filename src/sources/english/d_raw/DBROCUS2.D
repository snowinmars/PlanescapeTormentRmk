// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3200 /* ~This older-looking noblewoman greets you with an elegant curtsey. "Well met, sir. Might I be so bold as to say, before you ask anything of me, that I am a patron here, and not one of the students."~ */
  IF ~~ THEN REPLY #3201 /* ~"You're a patron?"~ */ GOTO 3
  IF ~~ THEN REPLY #40085 /* ~"I see. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #40086 /* ~"I was only passing by, actually. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40087 /* ~The noblewoman curtseys gracefully as you approach her. "Well met once more, sir."~ */
  IF ~~ THEN REPLY #40088 /* ~"Yes, greetings. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #40089 /* ~"Well met. I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.0 4.2 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.2 13.1 14.0
  SAY #40090 /* ~The woman nods. "Of course."~ */
  IF ~~ THEN REPLY #40091 /* ~"You had said you're a patron, here?"~ */ GOTO 3
  IF ~~ THEN REPLY #40092 /* ~"What are you doing here?"~ */ GOTO 12
  IF ~~ THEN REPLY #40093 /* ~"What can you tell me about this place?"~ */ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40094 /* ~"What can you tell me about the silent prostitute?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40095 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40096 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40097 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40098 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 10
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
~ THEN REPLY #40099 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 11
  IF ~~ THEN REPLY #40100 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 12.0
  SAY #40101 /* ~She nods. "That is correct, young sir. I came here one evening to see for myself why my husband was constantly paying visits to the place... I became fast friends with a number of the prostitutes, and so here I am! It's not only for men to enjoy a good conversation, you know."~ */
  IF ~~ THEN REPLY #40102 /* ~"True enough. I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40103 /* ~"I suppose so. In any case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #40104 /* ~"The Brothel is a school established by Fall-from-Grace... she tutors aspiring members of the Society of Sensation the delicate art of language and communication. If what I have been told is correct, the Brothel supports itself with donations from its wealthier patrons."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40105 /* ~"Fall-from-Grace?"~ */ GOTO 14
  IF ~~ THEN REPLY #40106 /* ~"Tell me about the Society of Sensation."~ */ GOTO 5
  IF ~~ THEN REPLY #40107 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40108 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #40109 /* ~The woman gives you an odd look, but only briefly. "Certainly you've heard of them before, yes? Sensates? They are a faction that believes that experience is the key to understanding the multiverse. Their faction headquarters, the Civic Festhall, is nearby... leave this place, turn left, then turn left again. You'll find many willing to speak of the Society of Sensation, there."~ */
  IF ~~ THEN REPLY #40110 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40111 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #40112 /* ~"I do not know her... and I cannot recall her name. I have been told that she cannot communicate, and so I have never take it upon myself to try and speak with her."~ */
  IF ~~ THEN REPLY #40113 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40114 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 13.0
  SAY #40115 /* ~"Ravel? I know no one named Ravel, much less if they might be Kesai's mother. Kesai herself told me she was an orphan, though; that her father, a half-fiend, left her to be raised here, in Sigil."~ */
  IF ~~ THEN REPLY #40116 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40117 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #40118 /* ~"No, I do not. Vivian has been on about that for some time, though - she is most upset! I would be most pleased to see it returned to her, for she speaks of little else these days."~ */
  IF ~~ THEN REPLY #40119 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40120 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #40121 /* ~The woman frowns sharply. "Oh, I care not for that Marissa... a most unpleasant disposition, has she! As for that veil of hers, no... I know nothing of it."~ */
  IF ~~ THEN REPLY #40122 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40123 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #40124 /* ~"Ravel... Puzzlewell..." She says the name slowly, as if never having spoken it before. "I must confess I do not."~ */
  IF ~~ THEN REPLY #40125 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40126 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #40127 /* ~"There are only nine prostitutes that I know of... and I'm quite certain I've spoken to them all. Perhaps there is a new girl, who I have not met, yet...?"~ */
  IF ~~ THEN REPLY #40128 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40129 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.1
  SAY #40130 /* ~"Stopping by to speak with some friends here, is all. I am one of the few female patrons of the Brothel of Slating Intellectual Lusts."~ */
  IF ~~ THEN REPLY #40131 /* ~"You're a patron?"~ */ GOTO 3
  IF ~~ THEN REPLY #40132 /* ~"Anyone you'd recommend I speak to?"~ */ GOTO 13
  IF ~~ THEN REPLY #40133 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40134 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #40135 /* ~"It depends upon what sort of person you would fancy speaking with, sir. Myself - well, I am friends with Vivian and Kesai-Serris, and occasionally chat a bit with that dear little sunfly, Nenny."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #40136 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ GOTO 7
  IF ~~ THEN REPLY #40137 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40138 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0
  SAY #40139 /* ~"Yes... the prostitutes call her Mistress Grace. She generally greets patrons in the Brothel's foyer... you might seek her out there, should you wish to speak with her."~ */
  IF ~~ THEN REPLY #40140 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40141 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
