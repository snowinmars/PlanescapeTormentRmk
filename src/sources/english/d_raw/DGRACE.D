// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACE~

IF ~~ THEN BEGIN 0 // from:
  SAY #2850 /* ~"Greetings. I'm the local puritan succubus. I'm also one of your potential party members... IF you'll have me."~ */
  IF ~~ THEN REPLY #2851 /* ~"Oh, I'll HAVE you, all right. Heh-heh. Later for you, tanar'ri."~ */ EXIT
  IF ~~ THEN REPLY #24998 /* ~"C'mon, Grace. I don't have time to chit-chat with you, so hurry up and hop on the conga line."~ */ DO ~ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0 4.0 5.2
  SAY #6858 /* ~Fall-from-Grace nods. "Yes, of course."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7013 /* ~"Ask him who he is."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7014 /* ~"Ask him who he is."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7015 /* ~"Ask him who he is."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7016 /* ~"Ask him what he's doing."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7017 /* ~"Ask him what he's doing."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7018 /* ~"Ask him what he's doing."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7019 /* ~"Ask him to tell us about the Lady of Pain."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7020 /* ~"Ask him to tell us about Fell."~ */ GOTO 5
  IF ~~ THEN REPLY #7021 /* ~"Never mind. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6859 /* ~"It says that it is a 'dabus.'" Grace pauses. "I have rarely encountered a dabus who has ever given a name... at least, something we would recognize as names. They seem like they would be more prone to use symbols."~ */
  IF ~~ THEN REPLY #7022 /* ~"Can you ask it some more questions?"~ */ GOTO 1
  IF ~~ THEN REPLY #7023 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6860 /* ~"It says that it is attending to its duties." She turns to you. "They spend most of their time repairing and dismantling portions of the city. In many ways, they are the city's caretakers."~ */
  IF ~~ THEN REPLY #7024 /* ~"Can you ask it some more questions?"~ */ GOTO 1
  IF ~~ THEN REPLY #7025 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6861 /* ~"I suppose a definite answer would have been a little too much to hope for."~ */
  IF ~~ THEN REPLY #7026 /* ~"Can you ask it some more questions?"~ */ GOTO 1
  IF ~~ THEN REPLY #7027 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 5 // from: 1.7
  SAY #6862 /* ~Grace frowns. "I'm not certain it would be wise to ask that question. It may offend the dabus as Fell is no longer a member of their community..."~ */
  IF ~~ THEN REPLY #7028 /* ~"Can you ask it anyway?"~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7029 /* ~"Enough with the lecture, just ask him."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7030 /* ~"Can you ask it some more questions?"~ */ GOTO 1
  IF ~~ THEN REPLY #7031 /* ~"Never mind, then. Let's leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY #7186 /* ~Grace nods, as if to give you privacy. "I will return shortly." She then turns and leaves.~ */
  IF ~~ THEN REPLY #7482 /* ~Follow the harlot...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DHARLOTN~ 32
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6474 /* ~"She can't speak about it in the presence of fiends. I would speculate that since she's been bound contractually, that means it's a project of Law. And since she's been bound to it magically, it is likely baatezu in origin."~ */
  IF ~~ THEN REPLY #8000 /* ~"That's quite a chain of speculation. Is she correct, Kel'lera?"~ */ EXTERN ~DKELLERA~ 14
  IF ~~ THEN REPLY #8001 /* ~"Interesting. I'll keep that in mind. In the meantime, Kel'lera, answer some more questions for me."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6476 /* ~"She can't speak about it in the presence of fiends. I would speculate that since she's been bound contractually, that means it's a project of Law. And since she's been bound to it magically, it is likely baatezu in origin."~ */
  IF ~~ THEN REPLY #8002 /* ~"That's quite a chain of speculation. Is she correct, Kel'lera?"~ */ EXTERN ~DKELLERA~ 31
  IF ~~ THEN REPLY #8003 /* ~"Interesting. I'll keep that in mind. In the meantime, Kel'lera, answer some more questions for me."~ */ EXTERN ~DKELLERA~ 23
END

IF ~~ THEN BEGIN 9 // from:
  SAY #6477 /* ~"I understand."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 36
END

IF ~~ THEN BEGIN 10 // from:
  SAY #7997 /* ~"I understand."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 37
END

IF ~~ THEN BEGIN 11 // from:
  SAY #11273 /* ~Fall-from-Grace speaks with equanimity. "Ilquix, I agree that my mother would love to hear that my health continues to be good, that my actions continue on the course I have chosen, and that my traveling companions are those I have chosen of my own accord. When you return to the Abyss, perhaps you would even be so kind as to carry that message for me? I'm certain she would reward anyone who brought such excellent news of me to her." She smiles gently.~ */
  IF ~~ THEN REPLY #11274 /* ~"This is all very fascinating, but I had some other questions..."~ */ EXTERN ~DILQUIXT~ 5
  IF ~~ THEN REPLY #11275 /* ~"That's enough. Farewell, Ilquix."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #11404 /* ~Grace responds with a small curtsy. "Your kind words would melt the hearts of any, I am certain, Ilquix. Yet we must always remember that so many people are both more and less than they seem. 'Twould be a shame indeed if all were revealed so quickly - anticlimactic, even."~ */
  IF ~~ THEN REPLY #11405 /* ~"What exactly do you mean, Grace?"~ */ GOTO 13
  IF ~~ THEN REPLY #11406 /* ~"Enough. I need the answers to some questions, Ilquix."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11410 /* ~"This conversation is at an end. Farewell, Ilquix."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11407 /* ~"I mean only that words spoken in haste are often looked back upon with regret - and that many people possess attributes and even virtues which few others suspect. Too many leap to the ledge of conclusions, and too many never realize that ledge will crumble under them. Thus it is that we consider our words before they reveal more about us than we intend."~ */
  IF ~~ THEN REPLY #11408 /* ~"I ... see. Ilquix, I had some more questions..."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11409 /* ~"Well spoken, Grace. Farewell, Ilquix."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #16627 /* ~Grace nods. "Certainly. I think that is an excellent idea."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16927 /* ~"Thanks. Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16928 /* ~"Thanks. Annah? Could you?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16929 /* ~"Thanks. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16930 /* ~"Thanks. Dak'kon, could you help this man?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16931 /* ~"Thanks. Dak'kon: help this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16932 /* ~"Thanks. Nordom, do you think you could help?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16933 /* ~"Thanks. Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16934 /* ~"Thanks. I had some questions, Mourns..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16935 /* ~"Thanks, Grace. Farewell, Mourns-for-Trees."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 16.0 17.1 18.3 19.3 20.0 21.12 22.12 23.13 24.13 25.13 26.12 27.9 28.9 29.0 30.3 31.3 32.0 32.2 33.1 34.3 35.1 36.3 37.0 38.3 39.3 40.3 41.3 42.3 43.12 44.5 45.0 46.0 46.2
  SAY #22578 /* ~Fall-from-Grace nods. "Yes, of course."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25256 /* ~"Ask him who he is."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25257 /* ~"Ask him who he is."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25258 /* ~"Ask him who he is."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25259 /* ~"Ask him what this place is."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25260 /* ~"Ask him what this place is."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25261 /* ~"Ask him what this place is."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25262 /* ~"I feel like I know you, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25263 /* ~"I feel like I know you, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25264 /* ~"I feel like I know you, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25265 /* ~"I feel like I know you, Fell."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25266 /* ~"I feel like I know you, Fell."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25267 /* ~"I feel like I know you, Fell."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64406 /* ~"What lies beyond that curtain, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64407 /* ~"What lies beyond that curtain, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64408 /* ~"What lies beyond that curtain, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64409 /* ~"What are those frames in the back room, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64410 /* ~"What are those frames in the back room, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64411 /* ~"What are those frames in the back room, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25268 /* ~"He mentioned that he'd met me before... does he know how I died?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25269 /* ~"He mentioned that he'd met me before... does he know how I died?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25270 /* ~"He mentioned that he'd met me before... does he know how I died?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25271 /* ~"Ask him if he's heard of Ravel."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25272 /* ~"Ask him if he's heard of Ravel."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25273 /* ~"Ask him if he's heard of Ravel."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25274 /* ~"Ask him if he did the tattoos on this dismembered arm I found."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25275 /* ~"Ask him if he did the tattoos on this dismembered arm I found."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25276 /* ~"Ask him if he did the tattoos on this dismembered arm I found."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25277 /* ~"Can he tell me anything about these tattoos on my body?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25278 /* ~"Can he tell me anything about these tattoos on my body?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25279 /* ~"Can he tell me anything about these tattoos on my body?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25280 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25281 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25282 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25283 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #22580 /* ~"His name is Fell." Grace barely glances at the symbol before she turns to you. "That symbol... the white oval bisected by the black lightning bolt... it is inscribed outside this establishment as well. I think the white oval symbolizes Sigil, and the black lightning bolt..." Grace falls silent. "I do not know for sure."~ */
  IF ~~ THEN REPLY #25284 /* ~"Hmmmm. I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25285 /* ~"I see. That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #22583 /* ~Grace waits patiently for the symbols to resolve. "This is his studio. He inscribes tattoos upon the skin of others here." Grace turns to you and smiles; she seems to be feeding off of Fell's presence. "Fell is known throughout Sigil as a talented artist. The flesh of others is his canvas."~ */
  IF ~~ THEN REPLY #25286 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25287 /* ~"Hmmm. I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25288 /* ~"Well, I'll keep that in mind. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #22585 /* ~Grace studies the symbols intently, then turns to you, giving you a strange look. "Fell says this is the first time you have come to him, but it is not the first time." Grace gives you an appraising look. "Perhaps he remembers you before you were you..." She suddenly realizes what she said, and she laughs lightly. "My apologies... I never thought I would have to use multiple 'you's when addressing anyone."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25289 /* ~"Does he know who I am?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25290 /* ~"Does he know who I am?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25291 /* ~"Does he know who I am?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25292 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25293 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #22587 /* ~Grace frowns, and she puts her hand to her chin in thought. "Fell says he knows you... then he says, and this is odd: he is not *permitted* to tell your story." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25294 /* ~"Not 'permitted'? Why not?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25295 /* ~"Not 'permitted'? Why not?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25296 /* ~"Not 'permitted'? Why not?"~ */ JOURNAL #24270 /* ~Fell said he knew me, but that he couldn't tell me my 'story.' But the strangest thing was the reason. He said he cannot because 'he cannot change the nature of a man.'~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25297 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25298 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #22591 /* ~"He apologizes, but he cannot say." Grace turns to you, meeting your gaze. "What he says next is strange: He says that he *'cannot change the nature of a man.'*" As Grace repeats these words, you feel a terrible pressure inside your skull... it builds like pounding hammers until you think your skull will burst... then dissipates into echoes as she speaks the last word.~ */
  IF ~~ THEN REPLY #25299 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25300 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #23011 /* ~"Fell says she is no myth."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25301 /* ~"Does he know where she is?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25302 /* ~"Does he know where she is?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25303 /* ~"Does he know where she is?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25304 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25305 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25306 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25307 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25308 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25309 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25310 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25311 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25312 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25313 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25314 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #23012 /* ~Grace's voice becomes somber as she reads the symbols. "Fell says Ravel lies within one of the Lady's mazes."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25315 /* ~"Mazes?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25316 /* ~"Mazes?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25317 /* ~"Mazes?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25318 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25319 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25320 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25321 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25322 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25323 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25324 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25325 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25326 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25327 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25328 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #23013 /* ~Grace's voice becomes somber as she reads the symbols. "Fell says Ravel's will was not the Lady's will, so she was punished. Ravel was placed in one of the Lady's mazes." Grace turns to you. "Are you familiar with mazes?"~ */
  IF ~~ THEN REPLY #25329 /* ~"Not really. If you could explain..."~ */ GOTO 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25330 /* ~"Yes. Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25331 /* ~"Yes. Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25332 /* ~"Yes. Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25333 /* ~"I'm familiar with them. Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25334 /* ~"I'm familiar with them. Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25335 /* ~"I'm familiar with them. Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25336 /* ~"Yes. I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25337 /* ~"Yes. I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25338 /* ~"Yes. I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25339 /* ~"Yes. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25340 /* ~"Yes. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25341 /* ~"Yes. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25342 /* ~"Yes. I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25343 /* ~"Yes. That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23014 /* ~Grace places her hands together, thumbs and fingers touching, forming a rough circle. "The Lady is said to have the power to take pieces of Sigil..." You watch in surprise as a ghostly image of Grace's little finger pulls itself from the hand and floats into the air, curling into a small circle. "...and make a maze."~ */
  IF ~~ THEN REPLY #25344 /* ~"Go on..."~ */ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25345 /* ~"I think I understand. Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25346 /* ~"I think I understand. Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25347 /* ~"I think I understand. Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25348 /* ~"I've heard enough. Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25349 /* ~"I've heard enough. Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25350 /* ~"I've heard enough. Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25351 /* ~"I understand. I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25352 /* ~"I understand. I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25353 /* ~"I understand. I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25354 /* ~"I see. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25355 /* ~"I see. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25356 /* ~"I see. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25357 /* ~"I understand. I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25358 /* ~"I see. That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23015 /* ~The small ghostly circle floats in the air, then begins slowly rotating. "The piece of Sigil she takes holds the prisoner; there is no escaping being mazed. It can happen at any time, while walking down the street, through a door..." She claps her hands. "...and then, you are somewhere else." Inside the ghostly circle, you can suddenly see a flicker of movement, like someone walking inside.~ */
  IF ~~ THEN REPLY #25359 /* ~"Go on..."~ */ GOTO 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25360 /* ~"I think I understand. Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25361 /* ~"I think I understand. Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25362 /* ~"I think I understand. Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25363 /* ~"I've heard enough. Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25364 /* ~"I've heard enough. Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25365 /* ~"I've heard enough. Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25366 /* ~"I understand. I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25367 /* ~"I understand. I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25368 /* ~"I understand. I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25369 /* ~"I see. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25370 /* ~"I see. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25371 /* ~"I see. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25372 /* ~"I understand. I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25373 /* ~"I see. That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23016 /* ~Grace continues, the tiny ghost maze reflected in her eyes. "It is said there is a portal that leads out of each maze, but they are difficult to find. Perhaps they are left in to give the prisoner hope. Perhaps they are left in to torture the prisoner." The ghostly maze dissolves. "Perhaps it is both."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25374 /* ~"Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25375 /* ~"Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25376 /* ~"Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25377 /* ~"Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25378 /* ~"Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25379 /* ~"Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25380 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25381 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25382 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25383 /* ~"I see. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25384 /* ~"I see. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25385 /* ~"I see. That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25386 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25387 /* ~"I see. That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #23017 /* ~Grace studies the symbols carefully. "Fell says that Ravel attempted to 'open the Cage.'" Grace turns to you. "'The Cage' is another name for Sigil." Grace frowns in thought. "I have no idea why she would try to do such a thing... it could be that Ravel tried to breach Sigil's walls." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25388 /* ~"Does he know how to reach her?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25389 /* ~"Does he know how to reach her?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25390 /* ~"Does he know how to reach her?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25391 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25392 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25393 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25394 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25395 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25396 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25397 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25398 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #23018 /* ~"Fell doesn't know how she could be found. He warns us not to look for her because..." Grace studies the last section of symbols. "Fell says Ravel is in the 'Lady's keeping.'"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25399 /* ~"What else does he know about Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25400 /* ~"What else does he know about Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25401 /* ~"What else does he know about Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25402 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25403 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25404 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25405 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25406 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25407 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25408 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25409 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #23019 /* ~Grace studies the symbols, and she frowns slightly in concern. "Fell warns us not to look for Ravel. He says she has a black heart, and that if she lives, she will seek to hurt you... and us."~ */
  IF ~~ THEN REPLY #25410 /* ~"I'll keep that in mind. I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25411 /* ~"I think our paths are destined to cross. Farewell."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23020 /* ~Grace reads the symbols as they materialize. "Fell says the arm is indeed yours. The tattoos are his work." She pauses as she studies the last section. "He says that one tattoo tells of a time when you shared your path with four others."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25412 /* ~"Four others?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25413 /* ~"Four others?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25414 /* ~"Four others?"~ */ JOURNAL #24274 /* ~Fell translated the rune on my old arm for me... he said it spoke of four who once walked my path with me. The four were 'One unloved who loves one who does not love.' 'One who does not see what others see and sees what others do not.' 'One who is familiar and bound with duty.' 'One who is a slave and his chains are words.' He said they were all tormented as I am, and in my suffering, I draw others that suffer as well.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25415 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25416 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #23021 /* ~Grace reads the swirling symbols, and her face becomes grave. "The minds of the four are written upon the tattoo... one who loved unrequited love, one who is blind but sees still, one... familiar, I think, and the last... a slave whose chains are his word..." Grace falls silent as the four symbols form themselves into links, then into a chain...~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25417 /* ~"What is that symbol..."~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25418 /* ~"What is that symbol..."~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25419 /* ~"What is that symbol..."~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25420 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~  False()
~ THEN REPLY #25421 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #23022 /* ~Grace says softly: "Torment." She studies it, then turns away, as if it is painful. "Fell says..." She takes a breath. "That the flesh knows it suffers, even when the mind forgets." She looks up and meets your gaze, and her eyes are a strange shade of azure, a shade that speaks of sadness and tears. "Fell says that the rune acts like a lodestone, drawing other tormented souls to you."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25422 /* ~"I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25423 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52609 /* ~"I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52610 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #23023 /* ~"The arm has old tattoos that Fell had forgotten. He says that he can put them back on you, if you wish."~ */
  IF ~~ THEN REPLY #25424 /* ~"Okay... I'd like to see all the tattoos he has available."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25425 /* ~"I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25426 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #23024 /* ~"Fell says he did not inscribe those tattoos." Grace thinks for a moment. "He might be able to tell you about some of them, if you wish."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25427 /* ~"Very well. What can he tell me about them?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25428 /* ~"Very well. What can he tell me about them?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25429 /* ~"Very well. What can he tell me about them?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25430 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25431 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #23025 /* ~"Fell says the ones along your back are directions for a mind that forgets itself, inscribed with a careful hand. The symbol on your shoulder is..." Suddenly, the symbols around Fell dissipate except for one.~ */
  IF ~~ THEN REPLY #25432 /* ~"What symbol is that?"~ */ GOTO 46
  IF ~~ THEN REPLY #25433 /* ~"Never mind. I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25434 /* ~"No matter. That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #23026 /* ~Grace frowns. "Fell says 'shadows.'"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25435 /* ~"Shadows?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25436 /* ~"Shadows?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25437 /* ~"Shadows?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25438 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25439 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23027 /* ~Grace frowns. "Fell says that many shadows came for you, ambushed you, and left your body in their wake." She glances at the symbols again. "He doesn't know why they attacked you."~ */
  IF ~~ THEN REPLY #25440 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25441 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23028 /* ~Grace seems mesmerized by the skin-stretched frames around you, but she manages to turn away to translate the symbols. "This is his gallery." Her voice is reverent, respectful. "He says that you are his canvas, that he both admires you and is saddened for you."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25442 /* ~"Saddened for me?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25443 /* ~"Saddened for me?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25444 /* ~"Saddened for me?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25445 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25446 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #23029 /* ~"He says that the mark of torment is upon your flesh." Grace's voice drops. "That tragedies and losses have been built upon it, like stones upon a foundation. He says you have endured much pain."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25447 /* ~"What does he mean?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25448 /* ~"What does he mean?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25449 /* ~"What does he mean?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25450 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25451 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #23030 /* ~Grace nods slightly, almost unconsciously, as she continues to translate. "Fell says he admires you because you have not surrendered to loss, despite the fact that the chains of loss still hang upon you." Grace turns to you. "He admires your strength." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25452 /* ~"Ask him to go on."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25453 /* ~"Ask him to go on."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25454 /* ~"Ask him to go on."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25455 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25456 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #23031 /* ~"Fell says these losses you have endured cover this life and all your past lives." Grace's voice drops, and her eyes gleam, as if fascinated. "He says you shed lives like a molting serpent, and that you are experiencing all the lives that are possible for a man."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25457 /* ~"Does he say anything else?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25458 /* ~"Does he say anything else?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25459 /* ~"Does he say anything else?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25460 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25461 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23032 /* ~"Fell wishes to warn you that..." Grace studies the next series of symbols. "He wishes to warn you that each of your lives 'casts a shadow on existence.'" She seems to chew this over for a moment, then continues. "He says you will travel to a place where these shadows have gone mad, and regrets have scarred the earth."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25462 /* ~"I... see. Does he say anything else?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25463 /* ~"I... see. Does he say anything else?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25464 /* ~"I... see. Does he say anything else?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25465 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25466 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #23033 /* ~"Fell says that you should not 'sign anything.'" Grace raises an eyebrow. "He does not say why."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25467 /* ~"Very well."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25468 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25469 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25470 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25471 /* ~"Very well."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25472 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25473 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25474 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25475 /* ~"Very well."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25476 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25477 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25478 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25479 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25480 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #23034 /* ~"Fell asks if you feel whole. If you feel... incomplete, somehow."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25481 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25482 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25483 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25484 /* ~"That is none of your concern."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25485 /* ~Lie: "I feel complete, yes. Why?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25486 /* ~"I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25487 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #23035 /* ~"Fell says you are strong man to have endured so much." Grace turns to you. "His next words are mine as well: Keep faith; in so doing, you shall become complete again." ~ */
  IF ~~ THEN REPLY #25488 /* ~"I'll try. I had another question I wanted to ask him..."~ */ GOTO 15
  IF ~~ THEN REPLY #25489 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 35.0
  SAY #23036 /* ~Grace says softly: "Torment." She studies the symbol, then turns away, as if looking at it is painful. "Fell says..." She takes a breath. "That the flesh knows it suffers, even when the mind forgets." She looks up and meets your gaze, and her eyes are a strange shade of azure, a shade that speaks of sadness and tears. "Fell says that the rune acts like a lodestone, drawing other tormented souls to you."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25490 /* ~"I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25491 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52611 /* ~"I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52612 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~  Global("Grace","GLOBAL",0)
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #28229 /* ~Before you is a stunning golden-haired woman, dressed in an azure and violet dress, with two long, elegant wings draped across her shoulders. She is surveying the room with a slight smile... she is easily the most beautiful woman you have ever seen.~ */
  IF ~~ THEN REPLY #28230 /* ~"Greetings..."~ */ GOTO 50
  IF ~~ THEN REPLY #28231 /* ~Ignore the winged woman, explore the building.~ */ EXIT
END

IF ~  Global("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #28233 /* ~Fall-from-Grace turns as you approach and smiles slightly. "How may I help you?"~ [FFG002] */
  IF ~~ THEN REPLY #28234 /* ~"I had some other questions I wanted to ask you..."~ */ GOTO 49
  IF ~~ THEN REPLY #28235 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 52.4 53.0 54.1 58.2 60.2 61.2 62.1 63.3 64.2 65.1 66.2 67.2 68.1 69.1 70.0 72.1 73.1 74.0 75.1 76.1 77.0 78.5 79.4 81.1 82.3 83.1 85.1 86.1 87.2 88.2 89.1 90.4 91.3 92.2 93.0 94.4 95.3 96.3 97.3 98.4 99.5 100.5 101.5 102.4 103.4 104.2 105.1 106.1 107.2 108.1 109.3 110.3 111.2 112.2 114.1 115.1 116.0 117.4 118.5 119.4 120.5 122.4 123.3 124.3 125.2
  SAY #28236 /* ~"Yes?"~ */
  IF ~~ THEN REPLY #28237 /* ~"Who are you again?"~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,15,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28238 /* ~"Those wings on your back... what are you?"~ */ GOTO 73
  IF ~  CheckStatLT(Protagonist,15,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28239 /* ~"Those wings on your back... what are you?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatLT(Protagonist,15,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28240 /* ~"Those wings on your back... what are you?"~ */ EXTERN ~DMORTE~ 276
  IF ~  CheckStatGT(Protagonist,14,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28241 /* ~"If I may ask, Lady Grace, the wings on your back... you are not human, I take it?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28242 /* ~"If I may ask, Lady Grace, the wings on your back... you are not human, I take it?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28243 /* ~"If I may ask, Lady Grace, the wings on your back... you are not human, I take it?"~ */ EXTERN ~DMORTE~ 276
  IF ~~ THEN REPLY #28244 /* ~"What is this place?"~ */ GOTO 58
  IF ~~ THEN REPLY #28245 /* ~"I came here looking for help. Perhaps you can help me."~ */ GOTO 85
  IF ~  GlobalGT("Grace_Quest","GLOBAL",0)
~ THEN REPLY #28246 /* ~"Can you tell me about the girls here?"~ */ GOTO 67
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #28247 /* ~"Can you tell me about the Sensates?"~ */ GOTO 75
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #28248 /* ~"Have you ever heard of a night hag named Ravel?"~ */ GOTO 104
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28249 /* ~"Can you tell me what you know of Ravel again?"~ */ GOTO 109
  IF ~  Global("Know_Blood_War","GLOBAL",1)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28250 /* ~"Do you know about the Blood War?"~ */ GOTO 94
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28251 /* ~"I spoke to nine of the students, as you asked... but I could not find the tenth."~ */ GOTO 120
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28252 /* ~"Would you like to join me on my travels?"~ */ EXTERN ~DANNAH~ 165
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28253 /* ~"Would you like to join me on my travels?"~ */ EXTERN ~DMORTE~ 280
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28254 /* ~"Would you like to join me on my travels?"~ */ EXTERN ~DANNAH~ 164
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28255 /* ~"Would you like to join me on my travels?"~ */ GOTO 78
  IF ~~ THEN REPLY #61965 /* ~"No questions, today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.0
  SAY #28256 /* ~The woman turns as you address her. She takes your measure, then nods slightly... you notice her eyes are azure, the exact same color as her dress. "Well met, traveler." She reaches up to brush back a stray lock of golden hair. "How may I help you?"~ [FFG004] */
  IF ~~ THEN REPLY #28257 /* ~"Who are you?"~ */ DO ~SetGlobal("Grace","GLOBAL",1)
~ JOURNAL #27467 /* ~I met a woman named Fall-from-Grace in the Clerk's Ward. She is easily one of the most beautiful women I've ever seen... she's not human, though; she has a pair of wings folded across her back.~ */ GOTO 51
  IF ~~ THEN REPLY #28258 /* ~"Nothing today, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #28259 /* ~"I am called Fall-from-Grace." She studies you for a moment. "You are new to Sigil, are you not?"~ */
  IF ~~ THEN REPLY #28260 /* ~"Yes, I am. Does it show?"~ */ GOTO 55
  IF ~~ THEN REPLY #28261 /* ~"No, I suspect I have been here for quite some time, actually."~ */ GOTO 113
  IF ~~ THEN REPLY #28262 /* ~"Fall-from-Grace... that's an interesting name."~ */ GOTO 56
  IF ~~ THEN REPLY #28263 /* ~"That is not a matter I wish to discuss at the moment. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 49.0
  SAY #28264 /* ~"I am Fall-from-Grace." She smiles slightly. "Can it be you have forgotten me already?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28265 /* ~"Lady Grace, I assure you, you have no fear of being forgotten by me. You are *quite* memorable."~ */ EXTERN ~DANNAH~ 161
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #28266 /* ~"Lady Grace, I assure you, you have no fear of being forgotten by me. You are *quite* memorable."~ */ GOTO 54
  IF ~~ THEN REPLY #28267 /* ~"No, not at all."~ */ GOTO 54
  IF ~~ THEN REPLY #28268 /* ~"Fall-from-Grace... that's an interesting name."~ */ GOTO 114
  IF ~~ THEN REPLY #28269 /* ~"No, I hadn't. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28270 /* ~"Perhaps so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #28271 /* ~Fall-from-Grace becomes somber as she glances back and forth between the two of you. "No offense was meant. Forgive my teasing."~ */
  IF ~~ THEN REPLY #28272 /* ~"No harm was done and no apologies are necessary, my Lady. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28273 /* ~"Nevertheless, perhaps it is best we take our leave. Farewell, Lady Grace."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2
  SAY #28274 /* ~She laughs lightly, then relaxes into a smile. "Very well, then I will forgive you."~ */
  IF ~~ THEN REPLY #28275 /* ~"Fall-from-Grace... that's an interesting name."~ */ GOTO 56
  IF ~~ THEN REPLY #28276 /* ~"Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28277 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.0
  SAY #28278 /* ~She smiles slightly. "Not as much as you might think. You carry yourself quite well."~ */
  IF ~~ THEN REPLY #28279 /* ~"What is this place?"~ */ GOTO 57
  IF ~~ THEN REPLY #28280 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 51.2 54.0
  SAY #28281 /* ~She nods. "I am pleased that you like it. But I am sure that you did not come all this way to flatter me. What is it I can help you with?"~ */
  IF ~~ THEN REPLY #28282 /* ~"What is this place?"~ */ GOTO 57
  IF ~~ THEN REPLY #28283 /* ~"Nothing this day. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 56.0 113.0
  SAY #28284 /* ~"This is the *Brothel of Slating Intellectual Lusts.*" She studies you for a moment. "I take it by your question that you did not intend to partake of this establishment?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28285 /* ~"'Brothel of Slating Intellectual Lusts'? What kind of brothel is this?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28286 /* ~"'Brothel of Slating Intellectual Lusts'? What kind of brothel is this?"~ */ GOTO 61
  IF ~~ THEN REPLY #28287 /* ~"No, I don't think so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.7
  SAY #28288 /* ~"This is the Brothel of Slating Intellectual Lusts."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28289 /* ~"'Brothel of Slating Intellectual Lusts'? What kind of brothel is this?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28290 /* ~"'Brothel of Slating Intellectual Lusts'? What kind of brothel is this?"~ */ GOTO 61
  IF ~~ THEN REPLY #28292 /* ~"Oh. I see. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28293 /* ~"Just curious. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0 58.0
  SAY #28294 /* ~"I established this brothel to give those lustful fevers that strike the mind more avenues of expression rather than the simply carnal. Much pleasure can be had in conversation and engaging in the verbal arts with others."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 275
END

IF ~~ THEN BEGIN 60 // from:
  SAY #28295 /* ~"I assure you, it is not. Tour the brothel, see for yourselves."~ */
  IF ~~ THEN REPLY #28296 /* ~"So this is a brothel... where there's no intercourse?"~ */ GOTO 62
  IF ~~ THEN REPLY #28297 /* ~"I have to ask: Why did you establish such a place?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28298 /* ~"I may do that. Can I ask you some other questions first?"~ */ GOTO 49
  IF ~~ THEN REPLY #28299 /* ~"Very well. We'll do that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.1 58.1
  SAY #28300 /* ~"I established this brothel to give those lustful fevers that strike the mind more avenues of expression rather than the simply carnal. Much pleasure can be had in conversation and engaging in the verbal arts with others."~ */
  IF ~~ THEN REPLY #28301 /* ~"So this is a brothel... where there's no intercourse?"~ */ GOTO 62
  IF ~~ THEN REPLY #28302 /* ~"I have to ask: Why did you establish such a place?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28303 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28304 /* ~"Thanks for the explanation... I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 61.0
  SAY #28305 /* ~"Only of a psychological nature. Rest assured, it is still quite stimulating."~ */
  IF ~~ THEN REPLY #28306 /* ~"I have to ask: Why did you establish such a place?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28307 /* ~"Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28308 /* ~"Perhaps I will tour the brothel, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.1 61.1 62.0
  SAY #28309 /* ~Fall-from-Grace raises an eyebrow. "That is an odd question." She frowns. "I don't think anyone has ever asked me that. At least, directly."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28310 /* ~"My apologies, Lady Grace. I didn't mean to be so direct. I was merely curious."~ */ GOTO 64
  IF ~~ THEN REPLY #28311 /* ~"So... why did you?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28312 /* ~"Well, it seems odd that a succubus would establish such a place... the goal of the place seems to run contrary to your nature."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28313 /* ~"Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28314 /* ~"Perhaps I will tour the brothel, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #28315 /* ~"Oh, no apologies are necessary. I am more than happy to discuss the reasons with you, if you wish."~ */
  IF ~~ THEN REPLY #28316 /* ~"I would like to hear them, yes."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28317 /* ~"It just seems odd that a succubus would establish such a place... the goal of the place seems to run contrary to your nature."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28318 /* ~"Not at the moment. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28319 /* ~"Perhaps another time. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1 63.2 64.0 64.1
  SAY #28320 /* ~"Part of the answer to your question requires that you know that I am a member of the Society of Sensation. Our faction believes that one should experience as much of the multiverse as possible."~ */
  IF ~~ THEN REPLY #28321 /* ~"And that is why you established this place?"~ */ GOTO 66
  IF ~~ THEN REPLY #28322 /* ~"I see; no need to explain any more. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28323 /* ~"Perhaps I will tour the brothel, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #28324 /* ~"This brothel is intended to slate the lusts of even the hardened intellectual. It is designed to stimulate the mind, to heighten one's awareness of themselves and others, to create new ways of *experiencing* another person. It is for those who seek something more than the shallow physical pleasures that fill the Hive and Lower Wards."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28325 /* ~"Well, I wouldn't call them shall... er, I mean, I can understand that. The women here must be special, indeed."~ */ GOTO 67
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28326 /* ~"I see. So this establishment just encourages intellectual fencing rather than, uh, well the *other* kind of fencing. The women here must be special, indeed."~ */ GOTO 67
  IF ~~ THEN REPLY #28327 /* ~"Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28328 /* ~"Perhaps I will tour the brothel, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 49.9 66.0 66.1
  SAY #28329 /* ~"The women here are aspiring Sensates. They have come to me in search of instruction, to prepare themselves to enter the faction. Also, many of them have a natural grasp of language that can shatter the crust of the most hardened individual."~ */
  IF ~~ THEN REPLY #28330 /* ~"Sensates?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 68
  IF ~~ THEN REPLY #28332 /* ~"I see. So the ladies here are ladies-in-training, so to speak?"~ */ GOTO 70
  IF ~~ THEN REPLY #28333 /* ~"Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28334 /* ~"Perhaps I will tour the brothel, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #28335 /* ~She bows slightly. "Yes, I am a member of the Society of Sensation. Our faction believes that one should experience as much of the multiverse as possible."~ */
  IF ~~ THEN REPLY #28336 /* ~"And the girls here are in training to be Sensates?"~ */ GOTO 70
  IF ~~ THEN REPLY #28337 /* ~"I see; no need to explain any more. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28338 /* ~"Perhaps I will tour the brothel, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #28339 /* ~"Not all of them will make it, most likely. Nonetheless, they are welcome to try, and I would not deny them the opportunity to join the faction if that is their wish. They may learn something along the way."~ */
  IF ~~ THEN REPLY #28340 /* ~"I see. So this is something of a preparatory school?"~ */ GOTO 70
  IF ~~ THEN REPLY #28341 /* ~"Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28342 /* ~"Perhaps I will tour the brothel and see for myself. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.1 68.0 69.0
  SAY #28343 /* ~"Yes. I hope that by learning the art of language and its subtleties that the patrons and the students here may learn more about themselves. One is only as limited as their command of the language. To be able to employ language to evoke emotions in others is a tremendous skill."~ */
  IF ~~ THEN REPLY #28344 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28345 /* ~"Perhaps I will tour the brothel and see for myself. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #28346 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #28347 /* ~"Your companion is correct. I am a lesser tanar'ri, more specifically, a succubus." She gives a soft sigh. "I'm afraid we're a little too common in the Lower Planes and elsewhere for our own good. Most of my race spend their time seducing mortals with various pleasures of the flesh."~ */
  IF ~~ THEN REPLY #28348 /* ~"And you...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ GOTO 74
  IF ~~ THEN REPLY #28349 /* ~"I see. Can I ask you some other questions?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ GOTO 49
  IF ~~ THEN REPLY #28350 /* ~"I must take my leave. Farewell."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 49.1 49.4
  SAY #26918 /* ~"I am a lesser tanar'ri, more specifically, a succubus." She gives a soft sigh. "I'm afraid we're a little too common in the Lower Planes and elsewhere for our own good. Most of my race spend their time seducing mortals with various pleasures of the flesh."~ */
  IF ~~ THEN REPLY #26919 /* ~"And you...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ GOTO 74
  IF ~~ THEN REPLY #26920 /* ~"I see. Can I ask you some other questions?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ GOTO 49
  IF ~~ THEN REPLY #26921 /* ~"I must take my leave. Farewell."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.0 73.0
  SAY #26922 /* ~"I'd like to think that I have distanced myself from that... it is ultimately a trivial and non-productive way for one to spend one's time here in the multiverse. There is much more to life, wouldn't you agree?"~ */
  IF ~~ THEN REPLY #26923 /* ~"Perhaps so. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28351 /* ~"Yes. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 49.10
  SAY #28352 /* ~"The Sensates are the faction of Sigil that is devoted to experience. Without experience, without sensation, we are blinded to much of the multiverse. Thus, Sensates seek to experience as much as possible - when all is experienced, then the truth of the multiverse shall reveal itself."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #28353 /* ~"Interesting philosophy. Could I join the Sensates?"~ */ GOTO 76
  IF ~~ THEN REPLY #28354 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28355 /* ~"Perhaps that is so. In any event, I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #28356 /* ~She smiles. "To join the Sensates, one needs only be a student of life."~ */
  IF ~~ THEN REPLY #28357 /* ~"I meant I was interested in joining their faction."~ */ JOURNAL #27464 /* ~Fall-from-Grace suggested I try the Civic Festhall if I wanted to join the Society of Sensation. She said someone there should be able to help me.~ */ GOTO 77
  IF ~~ THEN REPLY #28358 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28359 /* ~"Very well. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #28360 /* ~"Of course... forgive my teasing." Grace nods. "If you wish to join the Sensates, I would inquire at the Civic Festhall. Someone there should be able to help you."~ */
  IF ~~ THEN REPLY #28361 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28362 /* ~"Thank you. I will go there then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 49.18
  SAY #28363 /* ~"Well..." She smiles slightly. "That's rather forward of you."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28364 /* ~"I'd rather be honest with my intentions. You seem extremely pleasant and well-versed in the ways of the planes. A companion with that kind of knowledge would be welcome."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28365 /* ~"I'd rather be honest with my intentions. You seem extremely pleasant and well-versed in the ways of the planes. A companion with that kind of knowledge would be welcome."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28366 /* ~"That's the way I am."~ */ GOTO 79
  IF ~~ THEN REPLY #28367 /* ~"I mean, how exciting can this place be?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28368 /* ~"You're a Sensate. Surely there must be a limit to how much you can learn here."~ */ GOTO 83
  IF ~~ THEN REPLY #28369 /* ~"Then I withdraw the request. Can I ask you some questions instead?"~ */ GOTO 49
  IF ~~ THEN REPLY #28370 /* ~"Then you have my apologies. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.2 117.1 118.0 118.2 119.1
  SAY #28371 /* ~"I appreciate your candor. I shall counter with some of my own: Why should I travel with you?"~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28372 /* ~"You mean you wouldn't be interested in traveling with an immortal amnesiac who is searching the planes for himself?"~ */ GOTO 80
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28373 /* ~"Lady Grace, I intend to travel to places perhaps no one else has ever been to... or could reach. Would that interest you?"~ */ GOTO 82
  IF ~~ THEN REPLY #28374 /* ~"How exciting can this place be?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28375 /* ~"You're a Sensate. Surely there must be a limit to how much you can learn here."~ */ GOTO 83
  IF ~~ THEN REPLY #28376 /* ~"I withdraw the request. Can I ask you some questions instead?"~ */ GOTO 49
  IF ~~ THEN REPLY #28377 /* ~"I withdraw the request. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0 82.0 83.0
  SAY #28378 /* ~"Oh, I *would* be extremely interested." She smiles slightly. "Such a suggestion is intriguing, make no mistake about that."~ */
  IF ~~ THEN REPLY #28379 /* ~"Then you *would* like to travel with me, then?"~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #28380 /* ~"If you wish me to, then there is something you must do for me. There are ten students in this establishment. I would like you to speak to all of them, then return to me with your thoughts. Then we shall see if we shall travel together or not." ~ */
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28381 /* ~"I have already spoken to them... but there are only nine students here. I could not find a tenth."~ */ JOURNAL #27463 /* ~I convinced Fall-from-Grace to become a companion on one condition: that I speak to all ten of her students in the brothel, then return to her with my thoughts. I had already spoken to nine of them, but the tenth eludes me.~ */ GOTO 120
  IF ~~ THEN REPLY #28382 /* ~"Very well. Can I ask you some other questions before I go?"~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~I convinced Fall-from-Grace to become a companion on one condition: I have to speak to all ten of her students in the brothel, then return to her with my thoughts.~ */ GOTO 49
  IF ~~ THEN REPLY #28383 /* ~"I will go speak to them, then. I will return when I have spoken to all of them."~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~I convinced Fall-from-Grace to become a companion on one condition: I have to speak to all ten of her students in the brothel, then return to her with my thoughts.~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 79.1
  SAY #28384 /* ~"That would, indeed." She cups her chin in her hand and thinks for a moment. "Yet..."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28385 /* ~"You mean you wouldn't be interested in traveling with an immortal amnesiac who is searching the planes for himself?"~ */ GOTO 80
  IF ~~ THEN REPLY #28386 /* ~"How exciting can this place be?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28387 /* ~"You're a Sensate. Surely there must be a limit to how much you can learn here."~ */ GOTO 83
  IF ~~ THEN REPLY #28388 /* ~"Never mind. Can I ask you some questions instead?"~ */ GOTO 49
  IF ~~ THEN REPLY #28389 /* ~"Think about it, and I shall return at some other time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 78.3 78.4 79.2 79.3 82.1 82.2 117.2 117.3 118.3 118.4 119.2 119.3
  SAY #28390 /* ~"I think you would be surprised. If you want me to accompany you on your travels, I need a far more compelling reason than that."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28391 /* ~"You mean you wouldn't be interested in traveling with an immortal amnesiac who is searching the planes for himself?"~ */ GOTO 80
  IF ~~ THEN REPLY #28392 /* ~"Never mind. Can I ask you some questions instead?"~ */ GOTO 49
  IF ~~ THEN REPLY #28393 /* ~"Well, I'll see if I can find a more compelling reason. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #28394 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 49.8
  SAY #28395 /* ~"Help? What kind of help were you looking for?"~ */
  IF ~~ THEN REPLY #28396 /* ~"I seem to have lost my memories... in so doing, I've lost myself."~ */ GOTO 86
  IF ~~ THEN REPLY #28397 /* ~"Never mind. Can I ask you some questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28398 /* ~"Perhaps we will speak about this another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #28399 /* ~"You have been stricken with amnesia?" Fall-from-Grace looks pained. "How terrible! Do you have any idea how it happened?"~ */
  IF ~~ THEN REPLY #28400 /* ~"Not really... at least not that I can remember. I woke up on a slab in the Mortuary, and everything before that is black."~ */ GOTO 87
  IF ~~ THEN REPLY #28401 /* ~"Never mind. Can I ask you some questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28402 /* ~"Perhaps we will speak about this another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #28403 /* ~"You awoke in the Mortuary?"~ */
  IF ~  Global("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28404 /* ~"I think the Dustmen mistook me for being dead... or I was dead... or something. All I know is that I regenerate wounds quickly. I could be immortal, but I don't even know that for sure."~ */ DO ~SetGlobal("Grace_Companion","GLOBAL",1)
~ GOTO 88
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28405 /* ~"I think the Dustmen mistook me for being dead... or I was dead... or something. All I know is that I regenerate wounds quickly. I could be immortal, but I don't even know that for sure."~ */ GOTO 88
  IF ~~ THEN REPLY #28406 /* ~"Never mind. Can I ask you some questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28407 /* ~"Perhaps we will speak about this another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0 87.1
  SAY #28408 /* ~Fall-from-Grace seems to be appraising you with renewed interest. "Those scars on your body." She reaches out a hand, as if to touch you. "May I?"~ */
  IF ~~ THEN REPLY #28409 /* ~"Uh... sure."~ */ GOTO 89
  IF ~~ THEN REPLY #28410 /* ~"Yes."~ */ GOTO 89
  IF ~~ THEN REPLY #28411 /* ~"Actually, I'd prefer not to discuss this anymore. Can I ask you some questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28412 /* ~"Perhaps we will speak about this another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1
  SAY #28413 /* ~Fall-from-Grace drags her finger across your chest lightly, tracing the edges of your scars and following the curves where they blend into some of your tattoos. She seems fascinated. "These scars do look as if they would have taken several lifetimes to accumulate."~ */
  IF ~~ THEN REPLY #28414 /* ~"They certainly do... though some are more recent."~ */ GOTO 90
  IF ~~ THEN REPLY #28415 /* ~"I'd prefer not to discuss this anymore. Can I ask you some questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28416 /* ~"Perhaps we will speak about this another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #28417 /* ~Fall-from-Grace steps back. "Some of those wounds would have been fatal. To a normal man." She taps her chin, thinking. "What do you intend to do now?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #28418 /* ~"I need to get my memories back, and my life back. I intend to scour the planes and search inside myself until I can piece together who I am and what brought me to this state."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #28419 /* ~"I need to get my memories back, and my life back. I intend to scour the planes and search inside myself until I can piece together who I am and what brought me to this state."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~~ THEN REPLY #28420 /* ~"I don't really know. For the moment, I'm just searching for clues to who I am and what happened to me."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",2)
~ GOTO 91
  IF ~~ THEN REPLY #28421 /* ~"I don't intend to do anything. If there are answers, they will come to me... in time."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",3)
~ GOTO 91
  IF ~~ THEN REPLY #28422 /* ~"I'd prefer not to discuss this anymore. Can I ask you some questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28423 /* ~"Perhaps we will speak about this another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1 90.2 90.3
  SAY #28424 /* ~Fall-from-Grace is still thinking, her finger tapping on her chin. "I must say, I've never met a man who had lost himself in the literal sense." She raises an eyebrow. "Forgive me, but your condition is intriguing."~ */
  IF ~~ THEN REPLY #28425 /* ~"Well, I'm glad *you* think so."~ */ GOTO 92
  IF ~~ THEN REPLY #28426 /* ~"It is that."~ */ GOTO 93
  IF ~~ THEN REPLY #28427 /* ~"'Intriguing'? Frightening is more like it. I don't like not knowing who I am, what I may have done, who my enemies are, and who are my friends."~ */ GOTO 92
  IF ~~ THEN REPLY #28428 /* ~"I'd prefer not to discuss this anymore. Can I ask you some questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28429 /* ~"Perhaps we will speak about this another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0 91.2
  SAY #28430 /* ~"I have offended you with my words." Fall-from-Grace bows her head. "I give my apology, if you will have it."~ */
  IF ~~ THEN REPLY #28431 /* ~"Apology accepted."~ */ GOTO 93
  IF ~~ THEN REPLY #28432 /* ~"Never mind, no harm done."~ */ GOTO 93
  IF ~~ THEN REPLY #28433 /* ~"I'd prefer not to discuss this anymore. Can I ask you some questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28434 /* ~"Perhaps we will speak about this another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1 92.0 92.1
  SAY #28435 /* ~Fall-from-Grace nods. "If it will help, you are welcome to tour the Brothel. Several of our students are well-versed in the verbal arts. Perhaps some of them will be able to re-kindle your memories."~ */
  IF ~~ THEN REPLY #28436 /* ~"I may do that. Can I ask you some questions first?"~ */ JOURNAL #27461 /* ~Fall-from-Grace suggested I speak with the students in the Brothel, that interacting with some of them might spark my memory of who I am.~ */ GOTO 49
  IF ~~ THEN REPLY #28437 /* ~"I'm grateful. I may go speak to them. Farewell."~ */ JOURNAL #27461 /* ~Fall-from-Grace suggested I speak with the students in the Brothel, that interacting with some of them might spark my memory of who I am.~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 49.13
  SAY #28438 /* ~"The Blood War is the conflict that rages across the Lower Planes between the baatezu and the tanar'ri. They fight over whether evil should be lawful or chaotic." Fall-from-Grace pauses. "It is a war best avoided at all costs. Let the tanar'ri and baatezu butt heads and leave the rest of the planes in peace... or at least in relative peace."~ */
  IF ~~ THEN REPLY #28439 /* ~"Relative peace?"~ */ GOTO 95
  IF ~~ THEN REPLY #28440 /* ~"Do they use human troops?"~ */ GOTO 96
  IF ~~ THEN REPLY #28441 /* ~"How long has it been going on?"~ */ GOTO 97
  IF ~~ THEN REPLY #28442 /* ~"Did you serve in it?"~ */ GOTO 98
  IF ~~ THEN REPLY #28443 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28444 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 96.0 97.0 98.1 99.1 100.1 101.1 102.0 103.0
  SAY #28445 /* ~"Well, the War is so large that most races get caught up in it against their wishes. Ignoring it often proves just as dangerous as participating in it."~ */
  IF ~~ THEN REPLY #28446 /* ~"Do they use human troops?"~ */ GOTO 96
  IF ~~ THEN REPLY #28447 /* ~"How long has it been going on?"~ */ GOTO 97
  IF ~~ THEN REPLY #28448 /* ~"Did you serve in it?"~ */ GOTO 98
  IF ~~ THEN REPLY #28449 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28450 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 97.1 98.2 99.2 100.2 101.2 102.1 103.1
  SAY #28451 /* ~"On occasion, yes. There are a number of human mercenaries that participate in the Blood War. They serve either as soldiers, fodder for cannons, or food for the fiends."~ */
  IF ~~ THEN REPLY #28452 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28453 /* ~"How long has it been going on?"~ */ GOTO 97
  IF ~~ THEN REPLY #28454 /* ~"How long has it been going on?"~ */ GOTO 98
  IF ~~ THEN REPLY #28455 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28456 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.2 95.1 96.1 98.3 99.3 100.3 101.3 102.2 103.2
  SAY #28457 /* ~"According to the chronicles, the Blood War has been fought ever since the baatezu met the tanar'ri... a *very* long time ago. I am not certain there is a human term that encompasses the time between then and now." Fall-from-Grace shakes her head. "I'm afraid that neither the baatezu nor the tanar'ri have ever really taken to the other."~ */
  IF ~~ THEN REPLY #28458 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28459 /* ~"Do they use human troops?"~ */ GOTO 96
  IF ~~ THEN REPLY #28460 /* ~"Did you serve in it?"~ */ GOTO 98
  IF ~~ THEN REPLY #28461 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28462 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.3 95.2 96.2 97.2 103.3
  SAY #28463 /* ~"No. My mother did. Succubi generally tempt mortals to bring their spirits to the Abyss to create more tanar'ri to die in the Blood War."~ */
  IF ~~ THEN REPLY #28464 /* ~"Your mother? She served in the Blood War?"~ */ GOTO 99
  IF ~~ THEN REPLY #28465 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28466 /* ~"Do they use human troops?"~ */ GOTO 96
  IF ~~ THEN REPLY #28467 /* ~"How long has it been going on?"~ */ GOTO 97
  IF ~~ THEN REPLY #28468 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28469 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #28470 /* ~"Yes. She was among the finest, seducing countless mortal men. She now dwells in the Abyss, selling her children into slavery."~ */
  IF ~~ THEN REPLY #28471 /* ~"You... were sold into slavery by your mother?"~ */ GOTO 100
  IF ~~ THEN REPLY #28472 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28473 /* ~"Do they use human troops?"~ */ GOTO 96
  IF ~~ THEN REPLY #28474 /* ~"How long has it been going on?"~ */ GOTO 97
  IF ~~ THEN REPLY #28475 /* ~"Are these questions bothering you?"~ */ GOTO 103
  IF ~~ THEN REPLY #28476 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28477 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #28478 /* ~"For a time. I won my freedom in a contest of improvisation. It was a very long time ago."~ */
  IF ~~ THEN REPLY #28479 /* ~"Who did she sell you to?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Fall-from-Grace told me that her own mother sold her into slavery... to the tanar'ri's hated enemies, the baatezu, no less. Apparently, Fall-from-Grace won her freedom is a contest of improvisation with her baatezu master. She didn't elaborate on the details.~ */ GOTO 101
  IF ~~ THEN REPLY #28480 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28481 /* ~"Do they use human troops?"~ */ GOTO 96
  IF ~~ THEN REPLY #28482 /* ~"How long has it been going on?"~ */ GOTO 97
  IF ~~ THEN REPLY #28483 /* ~"Are these questions bothering you?"~ */ GOTO 103
  IF ~~ THEN REPLY #28484 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28485 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #28486 /* ~"She sold me to the baatezu. I think she rather expected that they would kill me. Despite her knowledge of other subjects, she knows little of their culture."~ */
  IF ~~ THEN REPLY #28487 /* ~"She sold you to the tanar'ri's sworn enemies?"~ */ GOTO 102
  IF ~~ THEN REPLY #28488 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28489 /* ~"Do they use human troops?"~ */ GOTO 96
  IF ~~ THEN REPLY #28490 /* ~"How long has it been going on?"~ */ GOTO 97
  IF ~~ THEN REPLY #28491 /* ~"Are these questions bothering you?"~ */ GOTO 103
  IF ~~ THEN REPLY #28492 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28493 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #28494 /* ~"Yes." Fall-from-Grace draws herself up. "Was there anything else you wished to know?"~ */
  IF ~~ THEN REPLY #28495 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28496 /* ~"Do they use human troops?"~ */ GOTO 96
  IF ~~ THEN REPLY #28497 /* ~"How long has it been going on?"~ */ GOTO 97
  IF ~~ THEN REPLY #28498 /* ~"Are these questions bothering you?"~ */ GOTO 103
  IF ~~ THEN REPLY #28499 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28500 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.4 100.4 101.4 102.3
  SAY #28501 /* ~"Oh, no, not at all. It's best you know this - the Blood War underlies most events on the planes; it's important to understand what it is and why it is taking place."~ */
  IF ~~ THEN REPLY #28502 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28503 /* ~"Do they use human troops?"~ */ GOTO 96
  IF ~~ THEN REPLY #28504 /* ~"How long has it been going on?"~ */ GOTO 97
  IF ~~ THEN REPLY #28505 /* ~"Did you serve in it?"~ */ GOTO 98
  IF ~~ THEN REPLY #28506 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 49
  IF ~~ THEN REPLY #28507 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 49.11
  SAY #28508 /* ~"I am familiar with the name." Fall-from-Grace pauses and thinks for a moment. "Rumors cluster thickly about that name, and most tend to discount her as myth, but I suspect that she did exist and that she made quite an impression in the Cage during her stay here." She looks puzzled. "Why do you ask?"~ */
  IF ~~ THEN REPLY #28509 /* ~"I intend to seek her out."~ */ GOTO 105
  IF ~  Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28510 /* ~"What else do you know about her?"~ */ GOTO 109
  IF ~~ THEN REPLY #28511 /* ~"Never mind. I had some other questions..."~ */ GOTO 49
  IF ~~ THEN REPLY #28512 /* ~"No reason. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #28513 /* ~Grace raises an eyebrow. "Truly? I find myself compelled to ask why."~ */
  IF ~~ THEN REPLY #28514 /* ~"I need information that she has."~ */ GOTO 106
  IF ~~ THEN REPLY #28515 /* ~"Never mind. I had some other questions..."~ */ GOTO 49
  IF ~~ THEN REPLY #28516 /* ~"No reason. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #28517 /* ~"Is this information available from no one else?"~ */
  IF ~~ THEN REPLY #28518 /* ~"I suspect that only Ravel possesses the knowledge I need."~ */ JOURNAL #27459 /* ~Fall-from-Grace warned me about Ravel... she said if even a few of the stories about the night hag are true, then she is perhaps one of the evilest and most powerful night hags ever to walk the planes.~ */ GOTO 107
  IF ~~ THEN REPLY #28519 /* ~"Never mind. I had some other questions..."~ */ GOTO 49
  IF ~~ THEN REPLY #28520 /* ~"I don't know, but I intend to find out. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #28521 /* ~Grace rests her hand lightly on your arm. "Consider this - if Ravel does indeed exist, then she is extremely powerful and cunning. If a fraction of the stories of her activities are true, then she is a creature that has discovered new meanings of evil. To search for her is not a quest to be undertaken lightly." ~ */
  IF ~  InParty("Grace")
~ THEN REPLY #28522 /* ~"I realize that."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 108
  IF ~  !InParty("Grace")
~ THEN REPLY #28523 /* ~"I realize that. Do you know anything else about Ravel?"~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 109
  IF ~  !InParty("Grace")
~ THEN REPLY #28524 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 49
  IF ~  !InParty("Grace")
~ THEN REPLY #28525 /* ~"I know. Nevertheless, I must find her. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #28526 /* ~"Well, I have never met a myth. This should be quite the outing." She smiles. "Don't you ever try doing anything boring?"~ */
  IF ~~ THEN REPLY #28527 /* ~"I try not to... do you know anything else about Ravel?"~ */ GOTO 109
  IF ~~ THEN REPLY #28528 /* ~"Not if I can help it. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28529 /* ~"I might do that in some other incarnation, but not know. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 49.12 104.1 107.1 108.0
  SAY #28530 /* ~"She was said to be one of the hags of the Gray Waste, and that she was believed to possess powers and a cunning far beyond those of her sisters. She came to Sigil long ago, and in addition to the evils she committed during her stay, rumor has it that her actions threatened the Cage itself. Now she primarily exists only as fiction, a figure in children's stories." Grace pauses. "I imagine the Lady of Pain dealt with her as all threats to Sigil are dealt with."~ */
  IF ~~ THEN REPLY #28531 /* ~"How?"~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ GOTO 110
  IF ~~ THEN REPLY #28532 /* ~"What is the Gray Waste?"~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ GOTO 111
  IF ~~ THEN REPLY #28533 /* ~"Is there anyone else who might know about her?"~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ GOTO 112
  IF ~~ THEN REPLY #28534 /* ~"Can I ask you some other questions?"~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ GOTO 49
  IF ~~ THEN REPLY #28535 /* ~"I see. Thanks for the information. Farewell."~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 112.0
  SAY #28536 /* ~"Ravel was most likely sent to a maze. One of the Lady's prisons."~ */
  IF ~~ THEN REPLY #28537 /* ~"Mazes? What are those?"~ */ JOURNAL #27457 /* ~Fall-from-Grace said Ravel was imprisoned in one of the Lady of Pain's mazes.~ */ GOTO 123
  IF ~~ THEN REPLY #28538 /* ~"What is the Gray Waste?"~ */ GOTO 111
  IF ~~ THEN REPLY #28539 /* ~"Is there anyone else who might know about her?"~ */ GOTO 112
  IF ~~ THEN REPLY #28540 /* ~"Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28541 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 109.1 110.1 112.1 123.1 124.1 125.0
  SAY #28542 /* ~"A blighted plane that lies effectively 'between' Baator and the Abyss. It is frequently a battleground in the Blood War."~ */
  IF ~~ THEN REPLY #28543 /* ~"Do you know what happened to Ravel?"~ */ GOTO 110
  IF ~~ THEN REPLY #28544 /* ~"Is there anyone else who might know about her?"~ */ GOTO 112
  IF ~~ THEN REPLY #28545 /* ~"Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28546 /* ~"I see. Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 109.2 110.2 111.1 123.2 124.2 125.1
  SAY #28547 /* ~"Someone in the Festhall may know more of her."~ */
  IF ~~ THEN REPLY #28548 /* ~"Do you know what happened to Ravel?"~ */ JOURNAL #27456 /* ~Fall-from-Grace said someone in the Civic Festhall might know more about Ravel.~ */ GOTO 110
  IF ~~ THEN REPLY #28549 /* ~"What is the Gray Waste?"~ */ JOURNAL #27456 /* ~Fall-from-Grace said someone in the Civic Festhall might know more about Ravel.~ */ GOTO 111
  IF ~~ THEN REPLY #28550 /* ~"Can I ask you some other questions?"~ */ JOURNAL #27456 /* ~Fall-from-Grace said someone in the Civic Festhall might know more about Ravel.~ */ GOTO 49
  IF ~~ THEN REPLY #28551 /* ~"I see. Thanks for the information. Farewell."~ */ JOURNAL #27456 /* ~Fall-from-Grace said someone in the Civic Festhall might know more about Ravel.~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 51.1
  SAY #28552 /* ~Fall-from-Grace raises an eyebrow. "Indeed?"~ */
  IF ~~ THEN REPLY #28553 /* ~"Yes... but that is a long tale, perhaps longer than I know. I'm more interested in what this place is."~ */ GOTO 57
  IF ~~ THEN REPLY #28554 /* ~"Yes, but that is a tale for another time. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 52.3
  SAY #28555 /* ~She nods. "I am pleased that you like it. I am fond of it myself."~ */
  IF ~~ THEN REPLY #28556 /* ~"What does it mean exactly?"~ */ GOTO 115
  IF ~~ THEN REPLY #28557 /* ~"Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28558 /* ~"Nothing this day. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #28559 /* ~"The meaning of names is a complicated subject. There is much to be said, and a great deal that is better left unsaid. It is a tale for another time, I think."~ */
  IF ~~ THEN REPLY #28560 /* ~"Is Fall-from-Grace your real name?"~ */ GOTO 116
  IF ~~ THEN REPLY #28561 /* ~"Very well, then. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28562 /* ~"Sorry for disturbing you, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #28563 /* ~"Perhaps." She smiles slightly. "Perhaps not. There are names which are given and names which are earned. Who is to say which is the real one? Not I."~ */
  IF ~~ THEN REPLY #28564 /* ~"Very well, then. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28565 /* ~"Sorry for disturbing you, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #28566 /* ~"Travel with you?" Fall-from-Grace smiles slightly. She seems to be ignoring your companions. "That's rather forward of you."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28567 /* ~"I'd rather be honest with my intentions. You seem extremely pleasant and well-versed in the ways of the planes. A companion with that kind of knowledge would be welcome."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28568 /* ~"That's the way I am."~ */ GOTO 79
  IF ~~ THEN REPLY #28569 /* ~"I mean, how exciting can this place be?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28570 /* ~"You're a Sensate. Surely there must be a limit to how much you can learn here."~ */ GOTO 83
  IF ~~ THEN REPLY #28571 /* ~"Then I withdraw the request. Can I ask you some questions instead?"~ */ GOTO 49
  IF ~~ THEN REPLY #28572 /* ~"Then you have my apologies. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #28573 /* ~"Travel with you?" Fall-from-Grace smiles slightly. She seems to be ignoring Annah. "That's rather forward of you."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28574 /* ~"I'd rather be honest with my intentions. You seem extremely pleasant and well-versed in the ways of the planes. A companion with that kind of knowledge would be welcome."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28575 /* ~"I'd rather be honest with my intentions. You seem extremely pleasant and well-versed in the ways of the planes. A companion with that kind of knowledge would be welcome."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28576 /* ~"That's the way I am."~ */ GOTO 79
  IF ~~ THEN REPLY #28577 /* ~"I mean, how exciting can this place be?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28578 /* ~"You're a Sensate. Surely there must be a limit to how much you can learn here."~ */ GOTO 83
  IF ~~ THEN REPLY #28579 /* ~"Then I withdraw the request. Can I ask you some questions instead?"~ */ GOTO 49
  IF ~~ THEN REPLY #28580 /* ~"Then you have my apologies. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #28581 /* ~"Travel with you?" Fall-from-Grace smiles slightly. She seems to be ignoring Morte. "That's rather forward of you."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28582 /* ~"I'd rather be honest with my intentions. You seem extremely pleasant and well-versed in the ways of the planes. A companion with that kind of knowledge would be welcome."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28583 /* ~"That's the way I am."~ */ GOTO 79
  IF ~~ THEN REPLY #28584 /* ~"I mean, how exciting can this place be?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28585 /* ~"You're a Sensate. Surely there must be a limit to how much you can learn here."~ */ GOTO 83
  IF ~~ THEN REPLY #28586 /* ~"Then I withdraw the request. Can I ask you some questions instead?"~ */ GOTO 49
  IF ~~ THEN REPLY #28587 /* ~"Then you have my apologies. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 49.14 81.0
  SAY #28588 /* ~"And you could not find the tenth student? How curious."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28589 /* ~"I'm thinking the tenth student is me. In which case, I have spoken to all of them."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28590 /* ~"I'm thinking the tenth student is me. In which case, I have spoken to all of them."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"I saw ten stones beneath the Brothel, and one was blank... so I'm thinking there's only nine prostitutes here. The tenth *student,* then, is me. In which case, I have spoken to all of them."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28592 /* ~"I think Luis is the tenth student... in his own way."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28593 /* ~"Can you tell me where the tenth student might be found?"~ */ GOTO 122
  IF ~~ THEN REPLY #28594 /* ~"Perhaps I overlooked one. Can I ask you some questions instead?"~ */ GOTO 49
  IF ~~ THEN REPLY #28595 /* ~"I will look harder and see if I can find the tenth student. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0 120.1 120.2 120.3 122.0 122.1 122.2 122.3
  SAY #28596 /* ~She nods. "Very well. And your thoughts?"~ */
  IF ~~ THEN REPLY #28597 /* ~"You and I should leave this place and explore the planes. There is nothing more for either one of us to experience here." ~ */ GOTO 203
  IF ~~ THEN REPLY #61636 /* ~"I have learned what it means to aspire to be a Sensate, and that it is better to go in search of experience rather than have it come to you."~ */ GOTO 203
  IF ~  Global("Luis_Student","GLOBAL",1)
~ THEN REPLY #61638 /* ~"Luis is in serious need of a carpenter to trim that libido of his."~ */ GOTO 204
  IF ~  Global("Luis_Student","GLOBAL",0)
GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #61639 /* ~"You should get rid of all the armoires in the Brothel and use them as firewood."~ */ GOTO 204
  IF ~~ THEN REPLY #61640 /* ~"Teaching within a sheltered environment such as this only harms the student, and the planes themselves are often the best teacher."~ */ GOTO 203
END

IF ~~ THEN BEGIN 122 // from: 120.4
  SAY #28598 /* ~"The student is around... perhaps you should look harder."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28599 /* ~"I'm thinking the tenth student is me. In which case, I have spoken to all of them."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28600 /* ~"I'm thinking the tenth student is me. In which case, I have spoken to all of them."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"I saw ten stones beneath the Brothel, and one was blank... so I'm thinking there's only nine prostitutes here. The tenth *student,* then, is me. In which case, I have spoken to all of them."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28602 /* ~"I think Luis is the tenth student... in his own way."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28603 /* ~"Perhaps I overlooked one. Can I ask you some questions instead?"~ */ GOTO 49
  IF ~~ THEN REPLY #28604 /* ~"I will look harder and see if I can find the tenth student. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 110.0
  SAY #28605 /* ~Grace places her hands together, thumbs and fingers touching, forming a rough circle. "The Lady is said to have the power to take pieces of Sigil..." You watch in surprise as a ghostly image of Grace's little finger pulls itself from the hand and floats into the air, curling into a small circle. "...And make a maze."~ */
  IF ~~ THEN REPLY #28606 /* ~"Go on..."~ */ GOTO 124
  IF ~~ THEN REPLY #28607 /* ~"I see. Can you tell me more about this plane that Ravel is from... the Gray Waste?"~ */ GOTO 111
  IF ~~ THEN REPLY #28608 /* ~"I think I understand. Is there anyone else who might know more about Ravel?"~ */ GOTO 112
  IF ~~ THEN REPLY #28609 /* ~"Never mind. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28610 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #28611 /* ~The small ghostly circle floats in the air, then begins slowly rotating. "The piece of Sigil she takes holds the prisoner; there is no escaping being mazed. It can happen at any time, while walking down the street, through a door..." She claps her hands. "...And then, you are somewhere else." Inside the ghostly circle, you can suddenly see a flicker of movement, like someone walking inside.~ */
  IF ~~ THEN REPLY #28612 /* ~"Go on..."~ */ GOTO 125
  IF ~~ THEN REPLY #28613 /* ~"I see. Can you tell me more about this plane that Ravel is from... the Gray Waste?"~ */ GOTO 111
  IF ~~ THEN REPLY #28614 /* ~"I think I understand. Is there anyone else who might know more about Ravel?"~ */ GOTO 112
  IF ~~ THEN REPLY #28615 /* ~"Never mind. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28616 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #28617 /* ~Grace continues, the tiny ghost maze reflected in her eyes. "It is said there is a portal that leads out of each maze, but they are difficult to find. Perhaps they are left in to give the prisoner hope. Perhaps they are left in to torture the prisoner." The ghostly maze dissolves. "Perhaps it is both."~ */
  IF ~~ THEN REPLY #28618 /* ~"I see. Can you tell me more about this plane that Ravel is from... the Gray Waste?"~ */ GOTO 111
  IF ~~ THEN REPLY #28619 /* ~"I think I understand. Is there anyone else who might know more about Ravel?"~ */ GOTO 112
  IF ~~ THEN REPLY #28620 /* ~"Never mind. Can I ask you some other questions?"~ */ GOTO 49
  IF ~~ THEN REPLY #28621 /* ~"I see. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from:
  SAY #28896 /* ~Grace acknowledges the man with a nod and a smile. "You are too kind, sir."~ */
  IF ~~ THEN EXTERN ~DCWCAFEM~ 20
END

IF ~~ THEN BEGIN 127 // from:
  SAY #30528 /* ~Grace breaks in, with a soft whisper. "An advocate is one who argues cases before the Sigil courts. They also provide counsel and legal advice to those who request it."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 10
END

IF ~~ THEN BEGIN 128 // from:
  SAY #30827 /* ~She smiles slightly. "It is no matter, Able. I am certain only Tuerny would have been offended by the comment, and as you know, his subjects buried him alive more than three centuries ago."~ */
  IF ~~ THEN EXTERN ~DABLE~ 5
END

IF ~~ THEN BEGIN 129 // from:
  SAY #30828 /* ~Grace smiles, managing to politely interject: "And why do you think you are always welcome, my good Able?"~ */
  IF ~~ THEN EXTERN ~DABLE~ 40
END

IF ~~ THEN BEGIN 130 // from:
  SAY #32697 /* ~"Young Sarhava? Sarhava Vhjul, could it be you?"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 25
END

IF ~~ THEN BEGIN 131 // from:
  SAY #32698 /* ~Fall-from-Grace gives the barest of nods. "Your words are most skillfully chosen, unlike those heard so recently."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 26
END

IF ~~ THEN BEGIN 132 // from:
  SAY #32699 /* ~"I regret they were spoken at all." Her tone barely changes, but the subtle reprimand seems to crack the young woman's face like a whip. "It pains to see an old student of mine behaving so..."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 27
END

IF ~~ THEN BEGIN 133 // from:
  SAY #32700 /* ~"These are my companions that I am traveling with. I would expect the same courtesy given to them as you have given to me. Such is a hallmark and the responsibility of those... noble-born."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32701 /* ~Continue.~ */ EXTERN ~DANNAH~ 177
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #32702 /* ~Continue.~ */ EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 134 // from:
  SAY #33080 /* ~"I don't find it hard to believe that a woman can stop the Blood War."~ */
  IF ~~ THEN REPLY #33082 /* ~"But fiends are still allowed in Sigil?"~ */ EXTERN ~DGHYSIS~ 25
  IF ~~ THEN REPLY #33083 /* ~"Let me ask you about something else..."~ */ EXTERN ~DGHYSIS~ 11
  IF ~~ THEN REPLY #33084 /* ~"I've no more questions."~ */ EXTERN ~DGHYSIS~ 9
END

IF ~~ THEN BEGIN 135 // from:
  SAY #33081 /* ~"None taken. You are quite correct."~ */
  IF ~~ THEN REPLY #33085 /* ~"What other sorts of forces serve in the Blood War?"~ */ EXTERN ~DGHYSIS~ 48
  IF ~~ THEN REPLY #33086 /* ~"Let me ask you about something else..."~ */ EXIT
  IF ~~ THEN REPLY #33087 /* ~"I've no more questions."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 136 // from:
  SAY #34014 /* ~Fall-from-Grace looks up as you approach. "Would you like me to travel with you again?"~ [FFG247] */
  IF ~~ THEN REPLY #34015 /* ~"Yes. If you're up for it."~ */ GOTO 137
  IF ~~ THEN REPLY #34016 /* ~"Not right now... I was just stopping by to check on you."~ */ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #34017 /* ~She nods. "It would be my pleasure."~ [FFG249] */
  IF ~~ THEN REPLY #34018 /* ~"Let's go."~ */ DO ~ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 136.1
  SAY #34019 /* ~She nods. "Thank you. That was a kind gesture." She smiles slightly. "If you should need my aid in the future, you can find me here."~ */
  IF ~~ THEN REPLY #34020 /* ~"Thanks, Grace. I may take you up on that."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",0)
InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 139 // from: 205.10 206.2 213.1 214.1 215.0 216.1 217.1 218.0 239.1 240.3 248.1 249.4 250.2 251.0 267.1 268.1 270.3 271.2 272.1 273.4 274.2 276.0 279.8 280.5 281.9 284.1 286.1 287.3 288.2 289.3 290.3 291.4 292.3 293.3 294.4 295.2 296.4 297.4 298.4 299.3 300.4 301.1 302.3 303.1 304.3 305.2 307.1 308.2 309.3 310.3 311.3 312.2 313.2 314.1 316.2 317.1 319.2 320.3 321.2 322.2 323.4 324.1 325.2 326.2 327.3 328.2 329.1 330.6 331.2 332.1 333.1 334.1 335.5 336.1 337.3 338.3 339.1 343.1 344.2 345.2 346.2 347.2 357.5 359.2 360.1 361.1
  SAY #34021 /* ~"Yes?"~ [FFG003] */
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #34022 /* ~"Can you tell me about the tanar'ri?"~ */ GOTO 206
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61947 /* ~"Those wings on your back... what are you?"~ */ GOTO 214
  IF ~  NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61948 /* ~"Those wings on your back... what are you?"~ */ EXTERN ~DANNAH~ 308
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61949 /* ~"Those wings on your back... what are you?"~ */ EXTERN ~DMORTE~ 612
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61950 /* ~"If I may ask, Lady Grace, the wings on your back... you are not human, I take it?"~ */ GOTO 214
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61951 /* ~"If I may ask, Lady Grace, the wings on your back... you are not human, I take it?"~ */ EXTERN ~DANNAH~ 308
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("Dannah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61952 /* ~"If I may ask, Lady Grace, the wings on your back... you are not human, I take it?"~ */ EXTERN ~DMORTE~ 612
  IF ~  Global("Grace_Name","GLOBAL",0)
~ THEN REPLY #61953 /* ~"How did you come by the name 'Fall-from-Grace'?"~ */ GOTO 239
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61954 /* ~"Why are you called 'Fall-from-Grace'?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61955 /* ~"Why are you called 'Fall-from-Grace'?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61956 /* ~"Why are you called 'Fall-from-Grace'?"~ */ GOTO 247
  IF ~  Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #61957 /* ~"How did you come by the name 'Fall-from-Grace'?"~ */ GOTO 248
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #61958 /* ~"Can you tell me what you know about the Sensates?"~ */ GOTO 216
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #61959 /* ~"Can you teach me anything of the Art, Grace?"~ */ GOTO 267
  IF ~  NumInPartyLT(3)
~ THEN REPLY #61960 /* ~"I wanted to talk about us..."~ */ GOTO 279
  IF ~  NumInPartyGT(2)
~ THEN REPLY #61961 /* ~"I wanted to talk about our companions..."~ */ GOTO 279
  IF ~~ THEN REPLY #61962 /* ~"Do you ever use weapons?"~ */ GOTO 349
  IF ~~ THEN REPLY #61963 /* ~"I had some questions about our travels..."~ */ GOTO 205
  IF ~~ THEN REPLY #61964 /* ~"Never mind. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #39578 /* ~Grace turns to Yves. "I have no story that I wish to share with you today, Tale-Chaser. I cannot let you exhaust my library before I can find more stories."~ */
  IF ~~ THEN REPLY #39755 /* ~Ask another companion.~ */ EXTERN ~DYVES~ 20
  IF ~~ THEN REPLY #39756 /* ~"I've a tale to share with you, Yves."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39757 /* ~"I had a question for Yves, then..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39758 /* ~"We'll go, then. Farewell, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #42093 /* ~"I believe she is blind by choice, and not by circumstance."~ */
  IF ~~ THEN EXTERN ~DYVANA~ 14
END

IF ~~ THEN BEGIN 142 // from:
  SAY #44259 /* ~"Greetings, Master Goncalves."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 23
END

IF ~~ THEN BEGIN 143 // from:
  SAY #44261 /* ~"There is no need for haste in my request, Master Goncalves; your skill demands time, and no doubt what comes from your hands will be pleasing. I am not here regarding that matter, however. This man here..." Fall-from-Grace bows to you. "...wished to speak with you for a moment..."~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 24
END

IF ~~ THEN BEGIN 144 // from:
  SAY #49782 /* ~Fall-from-Grace looks closely at the man. "I believe I've heard of this sort of performance art. It's common on a number of Prime Worlds..." She lowers her voice so that only you can hear her. "...and widely loathed on more than a few of them."~ */
  IF ~~ THEN REPLY #49783 /* ~See if you can touch him.~ */ EXTERN ~DMIME~ 2
  IF ~~ THEN REPLY #49784 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #50078 /* ~"Depending on the kind of fiend it is, I am sure we can reason with it. Should it be baatezu, it will accept a bargain for its freedom. Should it be tanar'ri, why, we simply need to demonstrate an overpowering argument in favor of its compliance." She smiles gently. "Your weaponry should provide your logic."~ */
  IF ~~ THEN REPLY #50079 /* ~"Very well. Dona Quisho, what do I have to do?"~ */ EXTERN ~DQUISHO~ 5
  IF ~~ THEN REPLY #50080 /* ~"I don't really hold with freeing bound fiends."~ */ EXTERN ~DQUISHO~ 4
END

IF ~~ THEN BEGIN 146 // from:
  SAY #50147 /* ~"I suppose a definite answer would have been a little too much to hope for."~ */
  IF ~~ THEN REPLY #50148 /* ~"Can you ask it some more questions?"~ */ GOTO 147
  IF ~~ THEN REPLY #50252 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 147 // from: 146.0 148.0 149.0 150.2
  SAY #50149 /* ~Fall-from-Grace nods. "Yes, of course."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50150 /* ~"Ask him who he is."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50239 /* ~"Ask him who he is."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50240 /* ~"Ask him who he is."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50241 /* ~"Ask him what he's doing."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50242 /* ~"Ask him what he's doing."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50243 /* ~"Ask him what he's doing."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50244 /* ~"Ask him to tell us about the Lady of Pain."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50245 /* ~"Ask him to tell us about Fell."~ */ GOTO 150
  IF ~~ THEN REPLY #50251 /* ~"Never mind. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 148 // from:
  SAY #50179 /* ~"It says that it is a 'dabus.'" Grace pauses. "I have rarely encountered a dabus who has ever given a name... at least, something we would recognize as names. They seem like they would be more prone to use symbols."~ */
  IF ~~ THEN REPLY #50180 /* ~"Can you ask it some more questions?"~ */ GOTO 147
  IF ~~ THEN REPLY #50181 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 149 // from:
  SAY #50193 /* ~"It says that it is attending to its duties." She turns to you. "They spend most of their time repairing and dismantling portions of the city. In many ways, they are the city's caretakers."~ */
  IF ~~ THEN REPLY #50194 /* ~"Can you ask it some more questions?"~ */ GOTO 147
  IF ~~ THEN REPLY #50195 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 150 // from: 147.7
  SAY #50246 /* ~Grace frowns. "I'm not certain it would be wise to ask that question. It may offend the dabus as Fell is no longer a member of their community..."~ */
  IF ~~ THEN REPLY #50247 /* ~"Can you ask it anyway?"~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50248 /* ~"Enough with the lecture, just ask him."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50249 /* ~"Can you ask it some more questions?"~ */ GOTO 147
  IF ~~ THEN REPLY #50250 /* ~"Never mind, then. Let's leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 151 // from:
  SAY #50686 /* ~"I do not know what assignment you are referring to, Vrischika, though your presence here brings with it many questions. Last I had heard you were a standard-bearer for the Company of the Vulture. How did you come to Sigil?"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 5
END

IF ~~ THEN BEGIN 152 // from:
  SAY #50687 /* ~Fall-from-Grace speaks with a coldness you have never heard before. The air almost becomes ice as she dissects Vrischika with her gaze. "That is enough."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 6
END

IF ~~ THEN BEGIN 153 // from:
  SAY #50688 /* ~"It is the truth -"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 12
END

IF ~~ THEN BEGIN 154 // from:
  SAY #50689 /* ~"One may win free of baatezu contracts if one is wary of the wording, and if one realizes that the baatezu are beholden to keep their own word. One must simply beware of any meanings that may be twisted to their ends... and I am *well versed* in language and its subtleties. Even so, it was not an easy matter..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 13
END

IF ~~ THEN BEGIN 155 // from:
  SAY #50690 /* ~Fall-from-Grace maintains her flawless composure and simply nods... though when you catch her eye, she gives you a slightly exasperated look, then smiles.~ */
  IF ~~ THEN REPLY #50691 /* ~"What was it you said about her training agents, Vrischika?"~ */ EXTERN ~DVRISCH~ 14
  IF ~~ THEN REPLY #50692 /* ~"I had another question, Vrischika..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50693 /* ~"I'd like to see your merchandise, Vrischika..."~ */ EXTERN ~DVRISCH~ 20
  IF ~~ THEN REPLY #50694 /* ~"That's all I wished to know, Vrischika. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #50695 /* ~"That is not the purpose of my establishment..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 15
END

IF ~~ THEN BEGIN 157 // from:
  SAY #50696 /* ~"He is well aware of why I agreed to travel with him, Vrischika... when he asked me to do so."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 17
END

IF ~~ THEN BEGIN 158 // from:
  SAY #52554 /* ~"Ravel..." Grace replies softly, almost cautiously. "I have come to terms with m-"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 37
END

IF ~~ THEN BEGIN 159 // from:
  SAY #52555 /* ~"Because love would not allow it - and it can bend even the strongest to its will." Fall-from-Grace's voice is soft, questioning. "Does it not, Ravel?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 130
END

IF ~~ THEN BEGIN 160 // from:
  SAY #52556 /* ~"No creature is undeserving of such a feeling, Ravel." Grace speaks softly. "The histories do not paint such a compassionate picture of you, however..."~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 131
END

IF ~~ THEN BEGIN 161 // from:
  SAY #52557 /* ~"The Lady of Pain? You tried to *help* her?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 188
END

IF ~~ THEN BEGIN 162 // from:
  SAY #52558 /* ~"The Lady of Pain? You tried to *help* her?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 187
END

IF ~~ THEN BEGIN 163 // from:
  SAY #52559 /* ~Grace says nothing. She seems to be studying Ravel intently... you are suddenly struck with the feeling Grace is sizing up Ravel for weaknesses.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 79
END

IF ~~ THEN BEGIN 164 // from:
  SAY #52560 /* ~Grace suddenly plants her feet into a battle-stance, and her hands lance out, the fingers forming a protective gesture. Her expression does not change, however - if anything, she seems to have been expecting this.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 83
END

IF ~~ THEN BEGIN 165 // from:
  SAY #52971 /* ~And suddenly, Fall-from-Grace is there, and her touch is gentle like silk, and she brushes the tears from your eyes, even as you feel the screams welling up within you. She *shhhhhhs* you, cradling your face through your bloody tears.~ */
  IF ~~ THEN REPLY #52972 /* ~"I... I... can't... bear it... I... couldn't STOP her, I WANTED to, but I couldn't do *anything*...!"~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #52973 /* ~Fall-from-Grace looks into your eyes, and she nods sadly, in understanding. "And that is the nature of *longing.* The desire for that which you cannot change or possess." She studies you, withdrawing her hand, now soaked in your blood. "Will you be all right?"~ */
  IF ~~ THEN REPLY #52974 /* ~"Yes... yes... I just need a moment..."~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52976 /* ~"Very well..." Fall-from-Grace steps back. "We will continue when you are ready."~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52977 /* ~Take a breath, try and collect your thoughts. ~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52978 /* ~Take a breath, try and collect your thoughts. ~ */ DO ~SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
~ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 168 // from:
  SAY #54023 /* ~"I have come this far, and it would be rude of me to retire before the final hour." She smiles slightly. "Even if you were to ask politely, I would not permit it."~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",16)
InParty("Annah")
~ THEN REPLY #54024 /* ~"It seems I have no choice, then... Annah?"~ */ EXTERN ~DANNAH~ 273
  IF ~  NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",15)
InParty("Annah")
~ THEN REPLY #54025 /* ~"It seems I have no choice, then... Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("annah")
NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54026 /* ~"It seems I have no choice, then... Dak'kon?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54027 /* ~"It seems I have no choice, then... Dak'kon?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54028 /* ~"It seems I have no choice, then... Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54029 /* ~"It seems I have no choice, then... Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54030 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54031 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54032 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #54033 /* ~"It's because of what Ravel said in the maze." Grace's voice is soft, so soft you almost missed it. "Isn't it, Morte?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 562
END

IF ~~ THEN BEGIN 170 // from:
  SAY #54034 /* ~"It's because of what Ravel said in the maze. And the symbol Fell described for us." Grace's voice is soft, so soft you almost missed it. "Isn't it, Morte?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 563
END

IF ~~ THEN BEGIN 171 // from:
  SAY #54067 /* ~"Annah, I'm so sorry..."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 268
END

IF ~~ THEN BEGIN 172 // from:
  SAY #54068 /* ~"The Pillar of Skulls is a pillar of living heads, composed of those whose lies sent others to their deaths. It can answer a number of questions as it knows a great deal, but it expects a great deal of payment for its services. One should not ask it such questions."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 173 // from:
  SAY #54069 /* ~Fall-from-Grace seems unmoved by your statement, merely looking from the pillar to you. "I would never willingly allow the Pillar of Skulls to have me... but I am certain you know this, and were merely jesting. You may not wish to taunt the Pillar so..."~ */
  IF ~~ THEN REPLY #54070 /* ~Truth: "I was serious. Get in there, Grace, or I'll stuff you in myself."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_3","GLOBALGood",-1)
MoraleDec("Grace",3)
~ GOTO 174
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54071 /* ~"All right. What *other* gifts would you accept, Pillar?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54072 /* ~"All right. What *other* gifts would you accept, Pillar?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54073 /* ~"Of *course* I was jesting. Let's go."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54074 /* ~"Of *course* I was jesting. Let's go."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #54075 /* ~Graces pauses, eyeing you cautiously. "Are you certain this is a course of action you wish to take? Would you truly cast me into the Pillar of Skulls?"~ */
  IF ~~ THEN REPLY #54076 /* ~"Yes, I would."~ */ GOTO 175
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54077 /* ~"No, I wouldn't. Pillar: what *other* gifts would you accept?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54078 /* ~"No, I wouldn't. Pillar: what *other* gifts would you accept?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54079 /* ~"No, I wouldn't. Let's go."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54080 /* ~"No, I wouldn't. Let's go."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #54082 /* ~Fall-from-Grace's eyes become hard and cold as ice, though her face and form remain perfectly composed. "Then I must bid you farewell, Nameless One. Should you make your way out of Baator, perhaps we shall cross paths again." And with that, she begins to dissipate into a cloud of green mist.~ */
  IF ~~ THEN REPLY #54083 /* ~"Grace..."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
StartCutSceneMode()
StartCutSceneEx("1001Cut2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY #54765 /* ~Grace breathes, "A deva... yet those chains do not seem to bind him so much as smother his mind..."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 185
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54766 /* ~Grace breathes, "A deva... yet those chains do not seem to bind him so much as smother his mind..."~ */
  IF ~~ THEN REPLY #54874 /* ~"Deva, I had some questions for you..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54767 /* ~"It was not my intention to tempt you, deva. I fear that your confinement has affected you adversely."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 34
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54768 /* ~"I disagree, Lord Trias. You simply had an overabundance of trust in your spirit for them."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 46
END

IF ~~ THEN BEGIN 180 // from:
  SAY #54769 /* ~Fall-from-Grace breaks in suddenly. "What are your views on the Blood War, Lord Trias?"~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 47
END

IF ~~ THEN BEGIN 181 // from:
  SAY #54770 /* ~Fall-from-Grace speaks gently. "Are you sure you wish to do this? This deva may be the only way you have to recover any more of your memories. Ravel sent us to him; will you now cut him down before he reveals his secrets?"~ */
  IF ~~ THEN REPLY #54875 /* ~Strike the deva's chains.~ */ EXTERN ~DTRIAS~ 50
  IF ~~ THEN REPLY #54876 /* ~Strike the deva down.~ */ EXTERN ~DTRIAS~ 98
  IF ~~ THEN REPLY #54877 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54771 /* ~"Do you think that you can end the Blood War by taking it to the gates of Paradise? The evil in the Lower Planes is nigh-infinite. The legions of the Baator and the Abyss reflect this. Before you arm yourself with nothing but pompous arrogance, you should remember the terrible power of infinite evil focused toward a single goal. Do not give them an excuse to take the Blood War to the Upper Planes or the multiverse will suffer."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 78
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54772 /* ~"One can learn from all things, if one is perceptive enough, my lord. One would do well to remember that a wise man takes every opportunity to learn."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 79
END

IF ~~ THEN BEGIN 184 // from:
  SAY #55712 /* ~"Morte's critique aside, Mechanus is actually a fascinating place. There is no sky there, only great gears that turn in space... they shine light according to their cycles, and the effect is really quite breathtaking. The logic and order of the Plane can be relaxing, and there's more than enough to do to quell one's boredom if you know where to go and how to go."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 577
END

IF ~~ THEN BEGIN 185 // from:
  SAY #55714 /* ~"Modrons share a common 'energy.' In some ways, this energy serves as a link for all of them. When one of them dies, the energy is absorbed back into the common pool, and a new modron is created from that energy. When a modron goes... rogue... then he severs the link from his kind and takes a small part of the energy with him."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55715 /* ~"So you're saying that Nordom is part of this Source, but he's cut off from it. And when a modron dies, they're re-absorbed. Will Nordom be?"~ */ GOTO 188
  IF ~~ THEN REPLY #55717 /* ~"So... Nordom, this Mechanus is a source of energy?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55719 /* ~"I see. Nordom, I had some other questions for you..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55720 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from:
  SAY #55722 /* ~Fall-from-Grace nods. "Morte is correct - modrons share a common 'energy.' In some ways, this energy links all of them. When one of them dies, the energy is absorbed back into the common pool, and a new modron is created from that energy. When a modron goes... rogue... then he severs the link from his kind and takes a small part of the energy with him."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 579
END

IF ~~ THEN BEGIN 187 // from:
  SAY #55723 /* ~Fall-from-Grace nods slightly. "My apologies, Morte. I did not mean to offend."~ */
  IF ~~ THEN REPLY #55725 /* ~"Morte, I need all the information I can get, so don't get territorial on me. If Fall-from-Grace has something to add, then I want to *hear* it, all right?"~ */ EXTERN ~DMORTE~ 580
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55727 /* ~"So you're saying that Nordom is part of this Source, but he's cut off from it. And when a modron dies, they're re-absorbed. Will Nordom be?"~ */ EXTERN ~DMORTE~ 583
  IF ~~ THEN REPLY #55729 /* ~"So... Nordom, this Mechanus is a source of energy?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55730 /* ~"All right. Nordom, I had some other questions for you..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55731 /* ~"That's all I wanted to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #55733 /* ~"Correct."~ */
  IF ~~ THEN REPLY #55735 /* ~"And if he dies, another Nordom is created." ~ */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #55736 /* ~"Nordom's energy will be returned to the Source, but Nordom will cease to exist. Another quadrone modron will be created to replace him, however."~ */
  IF ~~ THEN REPLY #55738 /* ~"So... in turning rogue, he's become... mortal?"~ */ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #55739 /* ~Fall-from-Grace nods. "The raw energy cannot be destroyed - as far as I understand it - but Nordom as an individual, as 'Nordom,' would cease to exist, yes."~ */
  IF ~~ THEN REPLY #55742 /* ~"All right. Nordom, I had some other questions for you..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55743 /* ~"That's all I wanted to know. Let's move on."~ */ EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 191 // from:
  SAY #55745 /* ~"Morte..." Fall-from-Grace breaks in gently. "I must confess, without your original foundation of information, I would have been hard-pressed to explain the situation... frequently, your use of metaphors and phrases makes it *much* easier for others to understand your explanations. It makes you a far better teacher than I."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 192 // from:
  SAY #56035 /* ~"I extend my greetings to you, Advocate Infernus Forked-Tongue," Grace nods with a slight bow. "I will take your suggestion under consideration."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 29
END

IF ~~ THEN BEGIN 193 // from:
  SAY #56036 /* ~Grace sounds bemused. "Is Advocate Infernus Forked-Tongue implying that we tanar'ri are a crude people?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 61
END

IF ~~ THEN BEGIN 194 // from:
  SAY #56037 /* ~"Surely you simply object to the implementation of evil, rather than the degree. Many among the tanar'ri would claim that the closer one is to the primal nature of evil, the more true they are to the ideal."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 62
END

IF ~~ THEN BEGIN 195 // from:
  SAY #56038 /* ~"From a baatezu point of view, it may indeed seem intolerable. However... Advocate, many tanar'ri philosophers would argue that the baatezu are to be no less excused for excising passion from violence, excising passion from the very essence of evil. The baatezu would replace rage with cold methodical cruelty. And thus, the old debate continues: Which is the greater evil? Efficient evil or passionate evil?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #56683 /* ~"I know of justice, Vhailor. I temper it with experience and wisdom, and when justice is tempered with those two truths, it becomes *stronger.* I know of mercy and forgiveness as well, for without them, the planes would be a much crueler place."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 111
END

IF ~~ THEN BEGIN 197 // from:
  SAY #56688 /* ~"No, Vhailor they are not. They are instruments by which another soul may be redeemed, elevated and strengthened. In so doing, the *multiverse* is strengthened. Therein lies the perfection you speak of."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 112
END

IF ~~ THEN BEGIN 198 // from:
  SAY #56689 /* ~Fall-from-Grace draws herself up at this. "*Am* I, Vhailor? Then *judge* me with your sight, see if you find me wanting. See if you can find the weakness that you claim eats at me."~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ EXTERN ~DVHAIL~ 113
END

IF ~~ THEN BEGIN 199 // from:
  SAY #56690 /* ~"On that point, we are divided, Vhailor."~ */
  IF ~~ THEN REPLY #56691 /* ~"Vhailor, Let me ask you about someone else."~ */ EXTERN ~DVHAIL~ 91
  IF ~~ THEN REPLY #56692 /* ~"Enough of this - Vhailor. I had other questions for you..."~ */ EXTERN ~DVHAIL~ 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56693 /* ~"Here is where we must part ways, Vhailor. Farewell."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56694 /* ~"Never mind, Vhailor. Let's continue on."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #56695 /* ~"Stop your questioning, Vhailor." Fall-from-Grace's words are spoken without the slightest hint of a threat, but somehow, they feel dangerous. "This is not a court, and you will not place her on trial in my presence. Leave her alone."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 101
END

IF ~~ THEN BEGIN 201 // from:
  SAY #56696 /* ~"To do so, Vhailor, you must go through me. I will not allow her to be harmed."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 102
END

IF ~~ THEN BEGIN 202 // from:
  SAY #61423 /* ~Grace nods, as if to give you privacy. "I will return shortly." She then turns and leaves.~ */
  IF ~~ THEN REPLY #61424 /* ~Follow the prostitute...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DUCHO~ 8
END

IF ~~ THEN BEGIN 203 // from: 121.0 121.1 121.4
  SAY #61635 /* ~Fall-from-Grace nods. "Very well. I will travel with you, if you still desire my company."~ */
  IF ~~ THEN REPLY #61642 /* ~"I do."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 121.2 121.3
  SAY #61641 /* ~"Ah!" Fall-from-Grace laughs softly, and her eyes sparkle. "A practical thought indeed. Very well... I will travel with you, if you still desire my company."~ */
  IF ~~ THEN REPLY #61643 /* ~"I do."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 205 // from: 139.17 207.3 208.3 209.2 210.1 211.2 212.1 219.4 220.3 221.3 222.3 223.4 224.5 225.5 226.5 227.4 228.4 229.1 230.1 231.1 233.1 234.3 235.3 236.3 237.2 252.3 253.3 254.2 255.4 256.2 257.2 258.2 259.2 260.2 261.1 262.3 264.2 266.0 277.1 278.0 348.0 349.1 350.0 351.1 352.1 353.1 354.1 355.1 356.0
  SAY #61781 /* ~"Yes?"~ */
  IF ~~ THEN REPLY #61974 /* ~"Why did you set up the Brothel?"~ */ GOTO 207
  IF ~~ THEN REPLY #61975 /* ~"Can I read your diary?"~ */ GOTO 277
  IF ~  Global("Know_Yves_Grace","GLOBAL",1)
Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61976 /* ~"Yves said you had a tale you wouldn't share with her."~ */ GOTO 351
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #61977 /* ~"I'd like to hear about your past again."~ */ GOTO 352
  IF ~  GlobalGT("Know_Grace_ExSlave","GLOBAL",0)
~ THEN REPLY #61978 /* ~"Vrischika doesn't seem to care for you much."~ */ GOTO 255
  IF ~  GlobalGT("Torment_Fell","GLOBAL",0)
~ THEN REPLY #61979 /* ~"Can you tell me about this symbol on my arm?"~ */ GOTO 348
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #61980 /* ~"Have you ever heard of a night hag named Ravel?"~ */ GOTO 229
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #61981 /* ~"Can you tell me what you know of Ravel again?"~ */ GOTO 234
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #61982 /* ~"What do you know about the Blood War?"~ */ GOTO 219
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #61983 /* ~"When we were in Ravel's maze, Ravel said you were tormented... are you in pain?"~ */ GOTO 263
  IF ~~ THEN REPLY #61984 /* ~"Actually, I had some other questions instead..."~ */ GOTO 139
  IF ~~ THEN REPLY #61985 /* ~"Never mind. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 139.0
  SAY #61782 /* ~"The tanar'ri are fiends - some call them 'demons.' They have embraced evil for chaos' sake. They dwell upon the poisoned planes of the Abyss where they feed on their own rage and lash out across the multiverse, despoiling all they touch. They forever seek to tempt others into committing crimes of passion and vice."~ */
  IF ~~ THEN REPLY #61986 /* ~"And you are a tanar'ri?"~ */ GOTO 213
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61987 /* ~"How did you end up in Sigil?"~ */ GOTO 352
  IF ~~ THEN REPLY #61988 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #61989 /* ~"Thanks for the explanation... let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 205.0
  SAY #61783 /* ~"I established the brothel to give those lustful fevers that strike the mind more avenues of expression rather than the simply carnal. Much pleasure can be had in conversation and engaging in the verbal arts with others."~ */
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",1)
~ THEN REPLY #61991 /* ~"Why did you establish such a place?"~ */ GOTO 210
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",0)
~ THEN REPLY #61992 /* ~"Why did you establish such a place?"~ */ GOTO 208
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61993 /* ~"If you are from the Abyss, how did you end up in Sigil?"~ */ GOTO 352
  IF ~~ THEN REPLY #61994 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #61995 /* ~"Thanks for the explanation... let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.1
  SAY #61784 /* ~Fall-from-Grace raises an eyebrow. "That is an odd question." She frowns. "I don't think anyone has ever asked me that. At least, directly."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #61996 /* ~"My apologies, Lady Grace. I didn't mean to be so direct. I was merely curious."~ */ GOTO 209
  IF ~~ THEN REPLY #61997 /* ~"So... why did you?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #61998 /* ~"Well, it seems odd that a succubus would establish such a place... the goal of the place seems to run contrary to your nature."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62000 /* ~"Never mind, then. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62002 /* ~"Forget the explanation... let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #61990 /* ~"Oh, no apologies are necessary. I am more than happy to discuss the reasons with you, if you wish."~ */
  IF ~~ THEN REPLY #62011 /* ~"I would like to hear them, yes."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #62012 /* ~"It just seems odd that a succubus would establish such a place... the goal of the place seems to run contrary to your nature."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62015 /* ~"Not at the moment. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62016 /* ~"Perhaps another time... let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 207.0 208.1 208.2 209.0 209.1
  SAY #62004 /* ~"Part of the answer to your question requires that you know that I am a member of the Society of Sensation. Our faction believes that one should experience as much of the multiverse as possible."~ */
  IF ~~ THEN REPLY #62006 /* ~"And that is why you established the Brothel?"~ */ GOTO 211
  IF ~~ THEN REPLY #62008 /* ~"I see; no need to explain any more. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62010 /* ~"Thanks for the explanation... let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #62017 /* ~"The brothel is intended to slate the lusts of even the hardened intellectual. It is designed to stimulate the mind, to heighten one's awareness of themselves and others, to create new ways of *experiencing* another person. It is for those who seek something more than the shallow physical pleasures that fill the Hive and Lower Wards."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62018 /* ~"Well, I wouldn't call them shall... er, I mean, I can understand that. So the Brothel was a school of sorts?"~ */ GOTO 212
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62019 /* ~"I see. So this establishment just encourages intellectual fencing rather than, uh, well the *other* kind of fencing. So the Brothel was a school of sorts?"~ */ GOTO 212
  IF ~~ THEN REPLY #62020 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62021 /* ~"Thanks for the explanation... let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0 211.1
  SAY #62023 /* ~"Yes. I hope that by learning the art of language and its subtleties that the patrons and the students may learn more about themselves. One is only as limited as their command of the language. To be able to employ language to evoke emotions in others is a tremendous skill."~ */
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #62024 /* ~"If you are from the Abyss, how did you end up in Sigil?"~ */ GOTO 352
  IF ~~ THEN REPLY #62025 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62026 /* ~"Thanks for the explanation... let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 206.0
  SAY #62027 /* ~"That is correct. I am a lesser tanar'ri, more specifically, a succubus." She gives a soft sigh. "I'm afraid we're a little too common in the Lower Planes and elsewhere for our own good. Most of my race spend their time seducing mortals with various pleasures of the flesh."~ */
  IF ~~ THEN REPLY #62028 /* ~"And you...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ GOTO 215
  IF ~~ THEN REPLY #62029 /* ~"I see. Can I ask you some other questions?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ GOTO 139
  IF ~~ THEN REPLY #62030 /* ~"I've heard enough. Let's move on."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 139.1 139.4
  SAY #62031 /* ~"I am a lesser tanar'ri, more specifically, a succubus." She gives a soft sigh. "I'm afraid we're a little too common in the Lower Planes and elsewhere for our own good. Most of my race spend their time seducing mortals with various pleasures of the flesh."~ */
  IF ~~ THEN REPLY #62032 /* ~"And you...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ GOTO 215
  IF ~~ THEN REPLY #62033 /* ~"I see. Can I ask you some other questions?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ GOTO 139
  IF ~~ THEN REPLY #62034 /* ~"I've heard enough. Let's move on."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-from-Grace said she was a succubus, a "lesser tanar'ri," one of the fiends that roam the Lower Planes. Apparently, her race seeks out mortals and seduces them, taking their souls to the Abyss. Charming.~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 213.0 214.0
  SAY #62035 /* ~"I'd like to think that I have distanced myself from that... it is ultimately a trivial and non-productive way for one to spend one's time here in the multiverse. There is much more to life, wouldn't you agree?"~ */
  IF ~~ THEN REPLY #62036 /* ~"Perhaps so. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62037 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 139.12
  SAY #62038 /* ~"The Sensates are the faction of Sigil that are devoted to experience. Without experience, without sensation, we are blinded to much of the multiverse. Thus, Sensates seek to experience as much as possible - when all is experienced, then the truth of the multiverse shall reveal itself."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #62039 /* ~"Interesting philosophy. Could I join the Sensates?"~ */ GOTO 217
  IF ~~ THEN REPLY #62040 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62041 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #62042 /* ~She smiles. "To join the Sensates, one needs only be a student of life."~ */
  IF ~~ THEN REPLY #62043 /* ~"I meant I was interested in joining their faction."~ */ JOURNAL #27464 /* ~Fall-from-Grace suggested I try the Civic Festhall if I wanted to join the Society of Sensation. She said someone there should be able to help me.~ */ GOTO 218
  IF ~~ THEN REPLY #62044 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62045 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #62046 /* ~"Of course... forgive my teasing." Grace nods. "If you wish to join the Sensates, I would inquire at the Civic Festhall. Someone there should be able to help you."~ */
  IF ~~ THEN REPLY #62047 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62048 /* ~"Very well. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 205.8 236.1 294.0 294.1 337.0 337.1 338.0 338.1
  SAY #62049 /* ~"The Blood War is the conflict that rages across the Lower Planes between the baatezu and the tanar'ri. They fight over whether evil should be lawful or chaotic." Fall-from-Grace pauses. "It is a war best avoided at all costs. Let the tanar'ri and baatezu butt heads and leave the rest of the planes in peace... or at least in relative peace."~ */
  IF ~~ THEN REPLY #62050 /* ~"Relative peace?"~ */ GOTO 220
  IF ~~ THEN REPLY #62051 /* ~"Do they use human troops?"~ */ GOTO 221
  IF ~~ THEN REPLY #62052 /* ~"How long has it been going on?"~ */ GOTO 222
  IF ~~ THEN REPLY #62053 /* ~"Did you serve in it?"~ */ GOTO 223
  IF ~~ THEN REPLY #62054 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62055 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0 221.0 222.0 223.1 224.1 225.1 226.1 227.0 228.0
  SAY #62056 /* ~"Well, the War is so large that most races get caught up in it against their wishes. Ignoring it often proves just as dangerous as participating in it."~ */
  IF ~~ THEN REPLY #62057 /* ~"Do they use human troops?"~ */ GOTO 221
  IF ~~ THEN REPLY #62058 /* ~"How long has it been going on?"~ */ GOTO 222
  IF ~~ THEN REPLY #62059 /* ~"Did you serve in it?"~ */ GOTO 223
  IF ~~ THEN REPLY #62060 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62061 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 219.1 220.0 222.1 223.2 224.2 225.2 226.2 227.1 228.1
  SAY #62062 /* ~"On occasion, yes. There are a number of human mercenaries that participate in the Blood War. They serve either as soldiers, fodder for cannons, or food for the fiends."~ */
  IF ~~ THEN REPLY #62063 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62064 /* ~"How long has it been going on?"~ */ GOTO 222
  IF ~~ THEN REPLY #62065 /* ~"Did you serve in it?"~ */ GOTO 223
  IF ~~ THEN REPLY #62066 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62067 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 219.2 220.1 221.1 223.3 224.3 225.3 226.3 227.2 228.2
  SAY #62068 /* ~"According to the chronicles, the Blood War has been fought ever since the baatezu met the tanar'ri... a *very* long time ago. I am not certain there is a human term that encompasses the time between then and now." Fall-from-Grace shakes her head. "I'm afraid that neither the baatezu nor the tanar'ri have ever really taken to the other."~ */
  IF ~~ THEN REPLY #62069 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62070 /* ~"Do they use human troops?"~ */ GOTO 221
  IF ~~ THEN REPLY #62071 /* ~"Did you serve in it?"~ */ GOTO 223
  IF ~~ THEN REPLY #62072 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62073 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 219.3 220.2 221.2 222.2 228.3
  SAY #62074 /* ~"No. My mother did. Succubi generally tempt mortals to bring their spirits to the Abyss to create more tanar'ri to die in the Blood War."~ */
  IF ~~ THEN REPLY #62075 /* ~"Your mother? She served in the Blood War?"~ */ GOTO 224
  IF ~~ THEN REPLY #62076 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62077 /* ~"Do they use human troops?"~ */ GOTO 221
  IF ~~ THEN REPLY #62078 /* ~"How long has it been going on?"~ */ GOTO 222
  IF ~~ THEN REPLY #62079 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62080 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #62081 /* ~"Yes. She was among the finest, seducing countless mortal men. She now dwells in the Abyss, selling her children into slavery."~ */
  IF ~~ THEN REPLY #62082 /* ~"You... were sold into slavery by your mother?"~ */ GOTO 225
  IF ~~ THEN REPLY #62083 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62084 /* ~"Do they use human troops?"~ */ GOTO 221
  IF ~~ THEN REPLY #62085 /* ~"How long has it been going on?"~ */ GOTO 222
  IF ~~ THEN REPLY #62086 /* ~"Are these questions bothering you?"~ */ GOTO 228
  IF ~~ THEN REPLY #62087 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62088 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #62089 /* ~"For a time. I won my freedom in a contest of improvisation. It was a very long time ago."~ */
  IF ~~ THEN REPLY #62090 /* ~"Who did she sell you to?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Fall-from-Grace told me that her own mother sold her into slavery... to the tanar'ri's hated enemies, the baatezu, no less. Apparently, Fall-from-Grace won her freedom is a contest of improvisation with her baatezu master. She didn't elaborate on the details.~ */ GOTO 226
  IF ~~ THEN REPLY #62091 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62092 /* ~"Do they use human troops?"~ */ GOTO 221
  IF ~~ THEN REPLY #62093 /* ~"How long has it been going on?"~ */ GOTO 222
  IF ~~ THEN REPLY #62094 /* ~"Are these questions bothering you?"~ */ GOTO 228
  IF ~~ THEN REPLY #62095 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62096 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #62105 /* ~"She sold me to the baatezu. I think she rather expected that they would kill me. Despite her knowledge of other subjects, she knows little of their culture."~ */
  IF ~~ THEN REPLY #62106 /* ~"She sold you to the tanar'ri's sworn enemies?"~ */ GOTO 227
  IF ~~ THEN REPLY #62107 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62108 /* ~"Do they use human troops?"~ */ GOTO 221
  IF ~~ THEN REPLY #62109 /* ~"How long has it been going on?"~ */ GOTO 222
  IF ~~ THEN REPLY #62110 /* ~"Are these questions bothering you?"~ */ GOTO 228
  IF ~~ THEN REPLY #62111 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62112 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #62113 /* ~"Yes." Fall-from-Grace draws herself up. "Was there anything else you wished to know?"~ */
  IF ~~ THEN REPLY #62114 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62115 /* ~"Do they use human troops?"~ */ GOTO 221
  IF ~~ THEN REPLY #62116 /* ~"How long has it been going on?"~ */ GOTO 222
  IF ~~ THEN REPLY #62117 /* ~"Are these questions bothering you?"~ */ GOTO 228
  IF ~~ THEN REPLY #62118 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62119 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 224.4 225.4 226.4 227.3
  SAY #62120 /* ~"Oh, no, not at all. It's best you know this - the Blood War underlies most events on the planes; it's important to understand what it is and why it is taking place."~ */
  IF ~~ THEN REPLY #62121 /* ~"You said that as long as the war goes on, the rest of the planes are allowed 'relative peace'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62122 /* ~"Do they use human troops?"~ */ GOTO 221
  IF ~~ THEN REPLY #62123 /* ~"How long has it been going on?"~ */ GOTO 222
  IF ~~ THEN REPLY #62124 /* ~"Did you serve in it?"~ */ GOTO 223
  IF ~~ THEN REPLY #62125 /* ~"I had some other questions, not related to the Blood War."~ */ GOTO 205
  IF ~~ THEN REPLY #62126 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 205.6
  SAY #62127 /* ~"I am familiar with the name." Fall-from-Grace pauses and thinks for a moment. "Rumors cluster thickly about that name, and most tend to discount her as myth, but I suspect that she did exist and that she made quite an impression in the Cage during her stay here." She looks puzzled. "Why do you ask?"~ */
  IF ~~ THEN REPLY #62128 /* ~"I intend to seek her out."~ */ GOTO 230
  IF ~~ THEN REPLY #62129 /* ~"Never mind. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62130 /* ~"No reason... I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #62131 /* ~Grace raises an eyebrow. "Truly? I find myself compelled to ask why."~ */
  IF ~~ THEN REPLY #62132 /* ~"I need information that she has."~ */ GOTO 231
  IF ~~ THEN REPLY #62133 /* ~"Never mind. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62134 /* ~"No reason... I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #62135 /* ~"Is this information available from no one else?"~ */
  IF ~~ THEN REPLY #62136 /* ~"I suspect that only Ravel possesses the knowledge I need."~ */ JOURNAL #27460 /* ~Fall-from-Grace told me that her own mother sold her into slavery... to the tanar'ri's hated enemies, the baatezu, no less. Apparently, Fall-from-Grace won her freedom is a contest of improvisation with her baatezu master. She didn't elaborate on the details.~ */ GOTO 232
  IF ~~ THEN REPLY #62137 /* ~"Never mind. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62138 /* ~"I don't know, but I intend to find out. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #62139 /* ~Grace rests her hand lightly on your arm. "Consider this - if Ravel does indeed exist, then she is extremely powerful and cunning. If a fraction of the stories of her activities are true, then she is a creature that has discovered new meanings of evil. To search for her is not a quest to be undertaken lightly." ~ */
  IF ~~ THEN REPLY #62140 /* ~"I realize that."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #62141 /* ~"Well, I have never met a myth. This should be quite the outing." She smiles. "Don't you ever try doing anything boring?"~ */
  IF ~~ THEN REPLY #62142 /* ~"I try not to... do you know anything else about Ravel?"~ */ GOTO 234
  IF ~~ THEN REPLY #62145 /* ~"Not if I can help it. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62146 /* ~"I might do that in some other incarnation, but not now. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 205.7 233.0
  SAY #62147 /* ~"She was said to be one of the hags of the Gray Waste, and that she was believed to possess powers and a cunning far beyond those of her sisters. She came to Sigil long ago, and in addition to the evils she committed during her stay, rumor has it that her actions threatened the Cage itself. Now she primarily exists only as fiction, a figure in children's stories." Grace pauses. "I imagine the Lady of Pain dealt with her as all threats to Sigil are dealt with."~ */
  IF ~~ THEN REPLY #62148 /* ~"How?"~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ GOTO 235
  IF ~~ THEN REPLY #62149 /* ~"What is the Gray Waste?"~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ GOTO 236
  IF ~~ THEN REPLY #62150 /* ~"Is there anyone else who might know about her?"~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ GOTO 237
  IF ~~ THEN REPLY #62151 /* ~"Can I ask you some other questions?"~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ GOTO 205
  IF ~~ THEN REPLY #62152 /* ~"I see. Let's move on."~ */ JOURNAL #27458 /* ~Fall-from-Grace said Ravel is a night hag, one of the gray sisters that roam the Gray Waste. She possesses powers far beyond those of her sisters, and she came to Sigil long ago. During her stay, she upset the Lady of Pain and was punished.~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0 236.0 237.0
  SAY #62153 /* ~"Ravel was most likely sent to a maze. One of the Lady's prisons."~ */
  IF ~~ THEN REPLY #62154 /* ~"Mazes? What are those?"~ */ JOURNAL #27457 /* ~Fall-from-Grace said Ravel was imprisoned in one of the Lady of Pain's mazes.~ */ GOTO 252
  IF ~~ THEN REPLY #62155 /* ~"What is the Gray Waste?"~ */ GOTO 236
  IF ~~ THEN REPLY #62156 /* ~"Is there anyone else who might know about her?"~ */ GOTO 237
  IF ~~ THEN REPLY #62157 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62158 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 234.1 235.1 237.1 252.1 253.1 254.0
  SAY #62159 /* ~"A blighted plane that lies effectively 'between' Baator and the Abyss. It is frequently a battleground in the Blood War."~ */
  IF ~~ THEN REPLY #62160 /* ~"Do you know what happened to Ravel?"~ */ GOTO 235
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62161 /* ~"Enough about Ravel... what's the Blood War?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~~ THEN REPLY #62162 /* ~"Is there anyone else who might know about her?"~ */ GOTO 237
  IF ~~ THEN REPLY #62163 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62164 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 234.2 235.2 236.2 252.2 253.2 254.1
  SAY #62165 /* ~"Someone in the Festhall may know more of her."~ */
  IF ~~ THEN REPLY #62166 /* ~"Do you know what happened to Ravel?"~ */ JOURNAL #27457 /* ~Fall-from-Grace said Ravel was imprisoned in one of the Lady of Pain's mazes.~ */ GOTO 235
  IF ~~ THEN REPLY #62167 /* ~"What is the Gray Waste?"~ */ JOURNAL #27457 /* ~Fall-from-Grace said Ravel was imprisoned in one of the Lady of Pain's mazes.~ */ GOTO 236
  IF ~~ THEN REPLY #62168 /* ~"Can I ask you some other questions?"~ */ JOURNAL #27457 /* ~Fall-from-Grace said Ravel was imprisoned in one of the Lady of Pain's mazes.~ */ GOTO 205
  IF ~~ THEN REPLY #62169 /* ~"Perhaps we'll head there, then. Let's move on."~ */ JOURNAL #27457 /* ~Fall-from-Grace said Ravel was imprisoned in one of the Lady of Pain's mazes.~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from:
  SAY #62170 /* ~NULL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 239 // from: 139.7
  SAY #62171 /* ~"The meaning of names is a complicated subject. There is much to be said, and a great deal that is better left unsaid."~ */
  IF ~~ THEN REPLY #62172 /* ~"Is Fall-from-Grace your real name?"~ */ GOTO 240
  IF ~~ THEN REPLY #62173 /* ~"Very well, then. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62175 /* ~"We will speak no more about then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #62176 /* ~"Perhaps." She smiles slightly. "Perhaps not. There are names which are given and names which are earned. Who is to say which is the real one?"~ */
  IF ~~ THEN REPLY #62178 /* ~"I think the name which is earned carries the greater weight."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",1)
~ GOTO 241
  IF ~~ THEN REPLY #62179 /* ~"I think the name which is given carries the greater weight."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",2)
~ GOTO 242
  IF ~~ THEN REPLY #62181 /* ~"I'm not sure I attach any value to a name."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",3)
~ GOTO 243
  IF ~~ THEN REPLY #62182 /* ~"Very well, then. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62183 /* ~"We will speak no more about then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #62184 /* ~"That may be so. Why do you think that?"~ */
  IF ~~ THEN REPLY #62185 /* ~"Because a name that is earned is not arbitrary; a name that is earned tells of what you've accomplished."~ */ GOTO 244
END

IF ~~ THEN BEGIN 242 // from: 240.1
  SAY #62186 /* ~"That may be so. Why do you think that?"~ */
  IF ~~ THEN REPLY #62187 /* ~"Because it is how people perceive you. And their perceptions may outweigh your understanding of yourself."~ */ GOTO 244
END

IF ~~ THEN BEGIN 243 // from: 240.2
  SAY #62188 /* ~She looks at you curiously. "Truly?"~ */
  IF ~~ THEN REPLY #62189 /* ~"A name is a cloak of letters thrown across a person, nothing more. A name can sometimes tell you something about a fraction of the person, maybe even help define that person, but that's not who the person *is.*"~ */ GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 241.0 242.0 243.0
  SAY #62190 /* ~Grace nods. "Your point is well-taken."~ */
  IF ~  Global("Grace_Name","GLOBAL",1)
~ THEN REPLY #62191 /* ~"So why are you called Fall-from-Grace?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
~ THEN REPLY #62192 /* ~"So why are you called Fall-from-Grace?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
~ THEN REPLY #62193 /* ~"So why are you called Fall-from-Grace?"~ */ GOTO 247
END

IF ~~ THEN BEGIN 245 // from: 139.8 244.0
  SAY #62194 /* ~"Would it matter?" She smiles. "It is an earned name."~ */
  IF ~~ THEN REPLY #62195 /* ~"It matters to me. I would like to know how you came to be called that."~ */ GOTO 248
END

IF ~~ THEN BEGIN 246 // from: 139.9 244.1
  SAY #62196 /* ~"Would it matter?" She smiles. "It is a given name."~ */
  IF ~~ THEN REPLY #62197 /* ~"It matters to me. I would like to know how you came to be called that."~ */ GOTO 248
END

IF ~~ THEN BEGIN 247 // from: 139.10 244.2
  SAY #62198 /* ~"Would it matter?" She smiles. "It is but a cloak of letters."~ */
  IF ~~ THEN REPLY #62199 /* ~"It matters to me. I would like to know how you came to be called that."~ */ GOTO 248
END

IF ~~ THEN BEGIN 248 // from: 139.11 245.0 246.0 247.0
  SAY #62200 /* ~"I have fallen from my people... some would say risen from my people, perhaps, but 'fall' *feels* more right to me." She looks at you questioningly. "Does that make sense?" ~ */
  IF ~~ THEN REPLY #62201 /* ~"Yes, it does. After all, 'fall' carries with it an underlying sense of loss."~ */ GOTO 249
  IF ~~ THEN REPLY #62202 /* ~"It does. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62203 /* ~"Yes... I think I understand. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #62204 /* ~Fall-from-Grace is silent for a moment, then nods thoughtfully. "Yes... perhaps that is why it felt as it did. I... came to terms with the loss long ago, but the name has remained."~ */
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62205 /* ~"Are you sure you've come to terms with it?"~ */ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62206 /* ~"Are you sure you've come to terms with it? Ravel didn't seem to think that you had."~ */ GOTO 263
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62207 /* ~"Are you sure you've come to terms with it?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62208 /* ~"Are you sure you've come to terms with it? Ravel didn't seem to think that you had."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 263
  IF ~~ THEN REPLY #62209 /* ~"Very well, then. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62210 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 250 // from: 249.0 249.2
  SAY #62211 /* ~Fall-from-Grace meets your gaze, and you are once again struck by the brilliant shade of blue of her eyes... it is turbulent, like the ocean before a storm. "I had thought so. Yet, in speaking to you, you have caused me to realize some things." She smiles. "You have my thanks."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62212 /* ~"Well, if you want to talk about it, let me know, all right?"~ */ GOTO 251
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62213 /* ~"Well, if you want to talk about it, let me know, all right?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 251
  IF ~~ THEN REPLY #62214 /* ~"Very well, then. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62215 /* ~"All right. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 250.0 250.1
  SAY #62216 /* ~She nods. "You are most kind. I will do so."~ */
  IF ~~ THEN REPLY #62217 /* ~"Very well, then. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62218 /* ~"All right. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 235.0
  SAY #62219 /* ~Grace places her hands together, thumbs and fingers touching, forming a rough circle. "The Lady is said to have the power to take pieces of Sigil..." You watch in surprise as a ghostly image of Grace's little finger pulls itself from the hand and floats into the air, curling into a small circle. "...And make a maze."~ */
  IF ~~ THEN REPLY #62220 /* ~"Go on..."~ */ GOTO 253
  IF ~~ THEN REPLY #62221 /* ~"I see. Can you tell me more about this plane that Ravel is from... the Gray Waste?"~ */ GOTO 236
  IF ~~ THEN REPLY #62222 /* ~"I think I understand. Is there anyone else who might know more about Ravel?"~ */ GOTO 237
  IF ~~ THEN REPLY #62223 /* ~"Never mind. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62224 /* ~"I see. That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #62225 /* ~The small ghostly circle floats in the air, then begins slowly rotating. "The piece of Sigil she takes holds the prisoner; there is no escaping being mazed. It can happen at any time, while walking down the street, through a door..." She claps her hands. "...And then, you are somewhere else." Inside the ghostly circle, you can suddenly see a flicker of movement, like someone walking inside.~ */
  IF ~~ THEN REPLY #62226 /* ~"Go on..."~ */ GOTO 254
  IF ~~ THEN REPLY #62227 /* ~"I see. Can you tell me more about this plane that Ravel is from... the Gray Waste?"~ */ GOTO 236
  IF ~~ THEN REPLY #62228 /* ~"I think I understand. Is there anyone else who might know more about Ravel?"~ */ GOTO 237
  IF ~~ THEN REPLY #62229 /* ~"Never mind. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62230 /* ~"I see. That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #62231 /* ~Grace continues, the tiny ghost maze reflected in her eyes. "It is said there is a portal that leads out of each maze, but they are difficult to find. Perhaps they are left in to give the prisoner hope. Perhaps they are left in to torture the prisoner." The ghostly maze dissolves. "Perhaps it is both."~ */
  IF ~~ THEN REPLY #62232 /* ~"I see. Can you tell me more about this plane that Ravel is from... the Gray Waste?"~ */ GOTO 236
  IF ~~ THEN REPLY #62233 /* ~"I think I understand. Is there anyone else who might know more about Ravel?"~ */ GOTO 237
  IF ~~ THEN REPLY #62234 /* ~"Never mind. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62235 /* ~"I see. That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 205.4
  SAY #62236 /* ~"No, she does not. I do not blame her."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62237 /* ~"What was that she was saying about you being a baatezu camp follower?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62238 /* ~"What was that she was saying about you being a baatezu camp follower?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62239 /* ~"What was that she was saying about you being a baatezu camp follower?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62240 /* ~"Why not?"~ */ GOTO 262
  IF ~~ THEN REPLY #62241 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62242 /* ~"I see. That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 255.0 262.0
  SAY #62243 /* ~"We have discussed this. I was a slave of the baatezu for a time. In that time, they inflicted many torments upon me."~ */
  IF ~~ THEN REPLY #62244 /* ~"Well, I was more curious about the 'camp follower' part Vrischika mentioned. What did she mean by that?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62245 /* ~"Never mind, then. Why do you say that you don't blame Vrischika for hating you?"~ */ GOTO 262
  IF ~~ THEN REPLY #62246 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62247 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 255.2 262.2
  SAY #62248 /* ~"I was a slave of the baatezu for a time - a time long ago. I won my freedom in a contest of improvisation." ~ */
  IF ~~ THEN REPLY #62249 /* ~"Well, I was more curious about the 'camp follower' part Vrischika mentioned. What did she mean by that?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62250 /* ~"I see. Why do you say that you don't blame Vrischika for hating you?"~ */ GOTO 262
  IF ~~ THEN REPLY #62251 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62252 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 258 // from: 255.1 262.1
  SAY #62253 /* ~"Surely you remember what I told you about my past?"~ */
  IF ~~ THEN REPLY #62254 /* ~"Well, I was more curious about the 'camp follower' part Vrischika mentioned. What did she mean by that?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62255 /* ~"Never mind, then. Why do you say that you don't blame Vrischika for hating you?"~ */ GOTO 262
  IF ~~ THEN REPLY #62256 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62257 /* ~"I see. That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 256.0 257.0 258.0
  SAY #62258 /* ~Fall-from-Grace takes on a curious expression... she seems to be studying you for a moment, trying to read your features. After a moment, she speaks, and her voice is quieter than normal. "Does it matter?"~ */
  IF ~~ THEN REPLY #62259 /* ~"To me, yes. I'd like to know who I am traveling with."~ */ DO ~SetGlobal("Grace_Camp_Follower_Answer","GLOBAL",1)
~ GOTO 260
  IF ~~ THEN REPLY #62260 /* ~"No, it doesn't. Why do you say that you don't blame Vrischika for hating you?"~ */ GOTO 262
  IF ~~ THEN REPLY #62261 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62262 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 259.0
  SAY #62263 /* ~"In answer to your question, I will tell you this: the baatezu are not human. Their lusts lie in power, not for the flesh, and they care nothing for raping or rutting as humans do when they hold another human prisoner. The torments of the baatezu are far more subtle and far more damaging than *any* violation of the flesh, and the scars last far longer. Is that what you wished to know?" ~ */
  IF ~~ THEN REPLY #62264 /* ~"Yes. I just wanted to know who it was I was traveling with."~ */ GOTO 261
  IF ~~ THEN REPLY #62265 /* ~"Yes. Why did you say that you don't blame Vrischika for hating you?"~ */ GOTO 262
  IF ~~ THEN REPLY #62266 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62267 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #62268 /* ~"I thought you knew already." Fall-from-Grace inclines her head slightly. "I was mistaken."~ */
  IF ~~ THEN REPLY #62269 /* ~"Why did you say that you don't blame Vrischika for hating you?"~ */ GOTO 262
  IF ~~ THEN REPLY #62270 /* ~"Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62271 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 255.3 256.1 257.1 258.1 259.1 260.1 261.0
  SAY #62272 /* ~"Vrischika is a tanar'ri - a fiend, like I, but of a different sort - an alu-fiend. To understand Vrischika, you must understand that tanar'ri culture is chaos, and chaos by nature, cares nothing for fairness or justice. Alu-fiends are viewed as being... extraneous. Without purpose. In many ways, it is worse than a death sentence."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62273 /* ~"What was that she was saying about you being a baatezu camp follower?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62274 /* ~"What was that she was saying about you being a baatezu camp follower?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62275 /* ~"What was that she was saying about you being a baatezu camp follower?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62276 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62277 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from: 205.9 249.1 249.3
  SAY #62278 /* ~Fall-from-Grace is silent for a moment, her gaze becoming distant. When she turns back to you, her eyes are a strange shade of azure, a shade that speaks of sadness and tears.~ */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.0
  SAY #62279 /* ~"Ravel sees much with her black-brambled eyes, some things which are hidden to other's eyes, even things about their own natures." She shakes her head slowly. "Sometimes... sometimes, the pain makes itself known. I have learned it is a *difficult* thing to turn on one's nature."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62280 /* ~"Are you all right?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 265
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62281 /* ~"Are you going to be all right?"~ */ GOTO 265
  IF ~~ THEN REPLY #62282 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 205
  IF ~~ THEN REPLY #62283 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1
  SAY #62284 /* ~She smiles, very faintly, and she meets your gaze. "Yes... you are kind to ask. The pain still makes itself known, but I came to terms with my nature many centuries ago."~ */
  IF ~~ THEN REPLY #62285 /* ~"Very well, th-"~ */ GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY #62286 /* ~Grace stops you before you can continue. "I thank you for asking about my well-being. Your concern is not unwelcome."~ */
  IF ~~ THEN REPLY #62287 /* ~"Just wanted to make sure you were all right. I had some other questions."~ */ GOTO 205
  IF ~~ THEN REPLY #62288 /* ~"Sure. I was just checking on you. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 267 // from: 139.13
  SAY #62289 /* ~Fall-from-Grace shakes her head slightly. "No, I do not believe so. The Art... and the disciplines I practice are different."~ */
  IF ~~ THEN REPLY #62290 /* ~"How do you mean?"~ */ GOTO 268
  IF ~~ THEN REPLY #62291 /* ~"Never mind, then. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62292 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 268 // from: 267.0
  SAY #62293 /* ~"My 'powers,' as you see them, stem from my faith, not from manipulating energies as the Art does. The Art is a *mechanism* by which the power of the multiverse may be harnessed, through gestures, rituals and devices. My 'powers' come to me through a different means. My faith and the nature of my belief allows some of the multiverse to reveal itself to me."~ */
  IF ~~ THEN REPLY #62294 /* ~"The nature of your belief? What do you believe in?"~ */ GOTO 269
  IF ~~ THEN REPLY #62295 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62296 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #62297 /* ~"I believe in *Experience.* I believe a person may be changed - for the better - the more of the multiverse they are allowed to perceive and the more the multiverse is allowed to perceive them. My belief in the nature of Experience allows me to..." She pauses for a moment, thinking. ~ */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY #62425 /* ~"I suppose the best explanation is that my faith allows me to *see* things differently. When you see the multiverse in such a way, you learn how to 'change' things - mending wounds, seeing a person's heart, and so on - just by willing them to happen."~ */
  IF ~~ THEN REPLY #62426 /* ~"But those 'changes' you make seem a lot like spells - how do you learn to do those things? Do you have a spell book?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62427 /* ~"Do you believe in Experience because of what happened to you with the baatezu?"~ */ GOTO 273
  IF ~~ THEN REPLY #62428 /* ~"Can you teach me to see things the way you do?"~ */ GOTO 271
  IF ~~ THEN REPLY #62429 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62430 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.2
  SAY #62431 /* ~"I cannot teach you to see the multiverse in such a way. One must learn to see it... and in their own way, not through the eyes of another." She smiles slightly. "I do not think *you* of all people need my guidance in such a matter - I find myself learning much more from you than you from I."~ */
  IF ~~ THEN REPLY #62432 /* ~"Those 'changes' you make seem a lot like spells - how do you learn to do those things? Do you have a spell book?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62433 /* ~"Do you believe in Experience because of what happened to you with the baatezu?"~ */ GOTO 273
  IF ~~ THEN REPLY #62434 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62435 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 270.0 271.0 273.3
  SAY #62436 /* ~"No, my 'spells,' as you call them - they come to me after I have rested and centered myself. When I sleep and awaken, I can focus myself once more. The amount of faith required to 'Change' the multiverse around me can be quite taxing on the psyche, I'm afraid. Just being able to see how to Change things is not enough - you must have the strength to make the Change happen, and last."~ */
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62437 /* ~"Do you believe in Experience because of what happened to you with the baatezu?"~ */ GOTO 273
  IF ~~ THEN REPLY #62438 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62439 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.1 271.1 272.0
  SAY #62440 /* ~Fall-from-Grace nods. "I have thought long upon that, and I believe so, yes." She looks at you questioningly. "I think it is because I am content with what I have become, and I do not think it would have been possible without experiencing the multiverse as I did."~ */
  IF ~  Global("Good_Grace_2","GLOBAL",0)
Global("Chaotic_Grace_1","GLOBAL",0)
~ THEN REPLY #62441 /* ~"I don't think it has anything to do with you experiencing the multiverse... I think it's how you dealt with the experience that was important."~ */ GOTO 274
  IF ~  Global("Good_Grace_2","GLOBAL",1)
~ THEN REPLY #62442 /* ~"As I said before, I don't think it has anything to do with you experiencing the multiverse... I think it's how you dealt with the experience that was important. It was your strength of character that changed you."~ */ GOTO 274
  IF ~  Global("Chaotic_Grace_1","GLOBAL",1)
~ THEN REPLY #62443 /* ~"As I said before, I don't think it has anything to do with you experiencing the multiverse... I think it's how you dealt with the experience that was important. It was your strength of character that changed you."~ */ GOTO 274
  IF ~~ THEN REPLY #62444 /* ~"Those 'changes' you make seem a lot like spells - how do you learn to do those things? Do you have a spell book?"~ */ GOTO 272
  IF ~~ THEN REPLY #62445 /* ~"I see. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62446 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0 273.1 273.2
  SAY #62447 /* ~Fall-from-Grace nods slowly; she seems thoughtful. "There is truth in what you say."~ */
  IF ~~ THEN REPLY #62448 /* ~Truth: "I think there would have been many others who, when subjected to the experiences you were, would have crumbled. You *learned* from it, and you became stronger. It shows great strength of will and of character."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62449 /* ~Flattering Lie: "I think there would have been many others who, when subjected to the experiences you were, would have crumbled. You *learned* from it, and you became stronger. It shows great strength of will and of character."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62450 /* ~"Perhaps so. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62451 /* ~"That is all I wished to say. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 274.0 274.1
  SAY #62452 /* ~Fall-from-Grace is looking at you silently. ~ */
  IF ~~ THEN REPLY #62453 /* ~Truth: "...and I admire that about you. Not only the strength, but the ability to see such horrors as a way of becoming a better person takes a strength *few* possess."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_2","GLOBALGood",1)
~ GOTO 276
  IF ~~ THEN REPLY #62454 /* ~Flattering Lie: "...and I admire that about you. Not only the strength, but the ability to see such horrors as a way of becoming a better person takes a strength *few* possess."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALChaotic_Grace_1","GLOBALLaw",-1)
~ GOTO 276
  IF ~~ THEN REPLY #62455 /* ~"And that is all." ~ */ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 275.0 275.1 275.2
  SAY #62456 /* ~Fall-from-Grace smiles, then nods. "I thank you. Your words are insightful and kind. But I fear that my strength of character is not as strong as it would seem. Yet I try to treat each experience as a new opportunity for learning."~ */
  IF ~~ THEN REPLY #62457 /* ~"A good approach. Can I ask you some other questions?"~ */ GOTO 139
  IF ~~ THEN REPLY #62458 /* ~"Wise. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 277 // from: 205.1
  SAY #62459 /* ~"No."~ */
  IF ~~ THEN REPLY #62460 /* ~"Please?"~ */ GOTO 278
  IF ~~ THEN REPLY #62461 /* ~"Very well, then. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62462 /* ~"I just thought I'd ask. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #62463 /* ~Grace gives a slight smile. "A lady must have her secrets."~ */
  IF ~~ THEN REPLY #62464 /* ~"Very well, then. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62465 /* ~"I just thought I'd ask. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 139.14 139.15 280.4 281.8 284.0 286.0 287.2 288.1 289.2 290.2 291.3 292.2 293.2 294.3 295.1 296.3 297.3 298.3 299.2 300.3 301.0 302.2 303.0 304.2 305.1 307.0 308.1 309.2 310.2 311.2 312.1 313.1 314.0 316.1 317.0 319.1 320.2 321.1 322.1 323.3 324.0 325.1 326.1 327.2 328.1 329.0 343.0 344.1 345.1 346.1 347.1 357.4 359.1 360.0 361.0
  SAY #62466 /* ~"Who in particular did you wish to discuss?"~ */
  IF ~~ THEN REPLY #62467 /* ~"Me, actually."~ */ GOTO 357
  IF ~~ THEN REPLY #62468 /* ~"You."~ */ GOTO 280
  IF ~  InParty("Morte")
~ THEN REPLY #62469 /* ~"Morte."~ */ GOTO 296
  IF ~  InParty("Annah")
~ THEN REPLY #62470 /* ~"Annah."~ */ GOTO 340
  IF ~  InParty("Dakkon")
~ THEN REPLY #62471 /* ~"Dak'kon."~ */ GOTO 308
  IF ~  InParty("Nordom")
~ THEN REPLY #62472 /* ~"Nordom."~ */ GOTO 315
  IF ~  InParty("Ignus")
~ THEN REPLY #62473 /* ~"Ignus."~ */ GOTO 318
  IF ~  InParty("Vhail")
~ THEN REPLY #62474 /* ~"Vhailor."~ */ GOTO 325
  IF ~~ THEN REPLY #62475 /* ~"No one, actually. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62476 /* ~"Never mind. Perhaps another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.1
  SAY #62477 /* ~"Me? Really." She thinks about this for a moment, then nods. "Very well, if there is anything you are curious about, please ask."~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62478 /* ~"I wanted you to know that when I kissed Ravel in the maze, I..."~ */ GOTO 281
  IF ~~ THEN REPLY #62479 /* ~"To be honest, I am curious as to your feelings about me."~ */ GOTO 287
  IF ~~ THEN REPLY #62480 /* ~"I'd like to know your thoughts on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62481 /* ~"Do you have any idea who or what I might be?"~ */ GOTO 288
  IF ~~ THEN REPLY #62482 /* ~"Never mind. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62483 /* ~"Forget it. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62484 /* ~"Perhaps another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 281 // from: 280.0 357.0
  SAY #62485 /* ~Grace holds up her hand, silencing you. "Nothing needs to be said. I must say, I admire your courage in doing such a thing - not many people would dare to kiss a myth, especially one of Ravel's stature."~ */
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62486 /* ~Truth: "I only kissed Ravel because Ravel didn't think I would, that's why - I suspected she was testing me."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62487 /* ~Lie: "I only kissed Ravel because Ravel didn't think I would, that's why - I suspected she was testing me."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62488 /* ~Truth: "I only kissed Ravel because it seemed like the right thing to do - don't ask me why."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62489 /* ~Lie: "I only kissed Ravel because it seemed like the right thing to do - don't ask me why."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62490 /* ~Truth: "I kissed Ravel because I wanted to... her normal form was somewhat distasteful."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62491 /* ~Lie: "I kissed Ravel because I wanted to... her normal form was somewhat distasteful."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62492 /* ~Truth: "Well, I kissed Ravel because I wanted to kiss you."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_2","GLOBALLaw",1)
~ GOTO 285
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62493 /* ~Flattering Lie: "Well, I kissed Ravel because I wanted to kiss you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_3","GLOBALLaw",-1)
~ GOTO 285
  IF ~~ THEN REPLY #62494 /* ~"Very well. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62495 /* ~"I had some other questions, then..."~ */ GOTO 139
  IF ~~ THEN REPLY #62496 /* ~"Then we will speak no more about it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 281.2 281.3 281.4 281.5
  SAY #62497 /* ~"She was testing you."~ */
  IF ~~ THEN REPLY #62498 /* ~"What do you mean?"~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 281.0 281.1 282.0
  SAY #62499 /* ~"I think there are limits to what Ravel could see regarding you, which may be part of the reason you intrigue her so. Only by posing physical challenges can she test your nature."~ */
  IF ~~ THEN REPLY #62500 /* ~"What do you think she was testing?"~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #62501 /* ~"I think she wished to see if you cared for her - a kiss is one means by which such a thing may be judged, though it can be a subtle thing."~ */
  IF ~~ THEN REPLY #62502 /* ~"Very well. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62503 /* ~"I had some other questions, then..."~ */ GOTO 139
  IF ~~ THEN REPLY #62504 /* ~"Then we will speak no more about it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 285 // from: 281.6 281.7
  SAY #62505 /* ~"Then it is best you kissed Ravel, despite the risks. To kiss a succubus is to invite death."~ */
  IF ~~ THEN REPLY #62506 /* ~"What do you mean?"~ */ JOURNAL #61616 /* ~Fall-from-Grace told me her kiss can drain the life from a victim... for some reason, that arouses me. I mean, I can't die, right? Hmmmm. I'll have to keep that in mind.~ */ GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #62507 /* ~"A succubus kills by draining the energy of mortals by kissing them. While it is a pleasurable experience for the victim, the victim does not usually live long to savor the experience."~ */
  IF ~~ THEN REPLY #62508 /* ~"Oh. I... uh, wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62509 /* ~"Hmmmm. I had some other questions, then..."~ */ GOTO 139
  IF ~~ THEN REPLY #62510 /* ~"Intriguing... er, I mean, frightening. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 287 // from: 280.1 357.1
  SAY #62511 /* ~Grace gives a slight smile. "A lady must have her secrets."~ */
  IF ~~ THEN REPLY #62512 /* ~"I'd like to know your thoughts on my situation, then."~ */ GOTO 330
  IF ~~ THEN REPLY #62513 /* ~"Very well. Do you have any idea who or what I might be?"~ */ GOTO 288
  IF ~~ THEN REPLY #62514 /* ~"Never mind, then. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62515 /* ~"Then forget it. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62516 /* ~"Another time, perhaps. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 280.3 287.1 357.3
  SAY #62517 /* ~Grace frowns in thought. "I freely admit that you are something of an enigma." She smiles. "But I find such mysteries intriguing. Shall we attempt to puzzle out your situation?"~ */
  IF ~~ THEN REPLY #62518 /* ~"Yes."~ */ GOTO 289
  IF ~~ THEN REPLY #62519 /* ~"No, let's leave it for later. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62520 /* ~"Forget it. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62521 /* ~"Perhaps another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 289 // from: 288.0
  SAY #62522 /* ~"First, while it is possible that you are a tiefling or some rare crossbreed, my guess is that you are human... or were at one time."~ */
  IF ~~ THEN REPLY #62523 /* ~"All right... go on."~ */ GOTO 290
  IF ~~ THEN REPLY #62524 /* ~"There may be something else that would shed light on my situation..."~ */ GOTO 330
  IF ~~ THEN REPLY #62525 /* ~"On second thought, let's leave it for later. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62526 /* ~"Actually, never mind. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62527 /* ~"Let's continue this another time. For now, let's keep on moving."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #62528 /* ~"Your appearance is approximately a male in his early thirties - the stitching and scar tissue make an exact determination difficult."~ */
  IF ~~ THEN REPLY #62529 /* ~"Tell me about it... go on."~ */ GOTO 291
  IF ~~ THEN REPLY #62530 /* ~"There may be something else that would shed light on my situation..."~ */ GOTO 330
  IF ~~ THEN REPLY #62531 /* ~"On second thought, let's leave it for later. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62532 /* ~"Actually, never mind. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62533 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #62534 /* ~"The key to your past is your memory, and it seems that certain locations, events and people trigger seemingly forgotten memories. It would seem to be in your best interests to visit as many locations as possible and speak to as many others as possible... in short, experience your universe as much as possible."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 292
  IF ~~ THEN REPLY #62535 /* ~"A Sensates' advice, eh?"~ */ GOTO 295
  IF ~~ THEN REPLY #62536 /* ~"There may be something else that would shed light on my situation..."~ */ GOTO 330
  IF ~~ THEN REPLY #62537 /* ~"Very well. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62538 /* ~"Actually, never mind. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62539 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.0
  SAY #62540 /* ~"In addition, there were a number of things that Ravel said which interested me. The fact that your mortality has gone missing is a matter of some concern - it seems as if someone were to get a hold of such a thing, it would not bode well for you."~ */
  IF ~~ THEN REPLY #62541 /* ~"Go on..."~ */ GOTO 293
  IF ~~ THEN REPLY #62542 /* ~"There may be something else that would shed light on my situation..."~ */ GOTO 330
  IF ~~ THEN REPLY #62543 /* ~"Very well. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62544 /* ~"Actually, never mind. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62545 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 292.0
  SAY #62546 /* ~"Also, I did not like what Ravel said about the deaths of the mind - she seems to be suggesting that the more you die, the more it will chip away at your mind."~ */
  IF ~~ THEN REPLY #62547 /* ~"Go on..."~ */ GOTO 294
  IF ~~ THEN REPLY #62548 /* ~"There may be something else that would shed light on my situation..."~ */ GOTO 330
  IF ~~ THEN REPLY #62549 /* ~"Very well. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62550 /* ~"Actually, never mind. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62551 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 293.0
  SAY #62552 /* ~"And the last thing - she mentioned that your scars told of a 'war between fiends' - that sounded like the Blood War."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62553 /* ~"What's the Blood War?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62554 /* ~"I'm familiar with the Blood War. Can you tell me what you know about it?"~ */ GOTO 219
  IF ~~ THEN REPLY #62555 /* ~"There may be something else that would shed light on my situation..."~ */ GOTO 330
  IF ~~ THEN REPLY #62556 /* ~"Very well. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62557 /* ~"Actually, never mind. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62558 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 291.1
  SAY #62559 /* ~Fall-from-Grace gives a bemused smile. "I would not advise it if I did not practice it. And if you did not already know it to be true."~ */
  IF ~~ THEN REPLY #62560 /* ~"There may be something else that would shed light on my situation..."~ */ GOTO 330
  IF ~~ THEN REPLY #62561 /* ~"All right. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62562 /* ~"Very well. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62563 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 279.2
  SAY #62564 /* ~"Morte is most peculiar... I have seen a great deal in my life, but nothing quite like him. He behaves somewhat like a mimir: Granted, there's no denying he is knowledgeable, but he has a certain..." She sniffs the air and wrinkles her nose. "...Baatorian smell about him."~ */
  IF ~~ THEN REPLY #62565 /* ~"Baatorian smell?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~~ THEN REPLY #62566 /* ~"Mimir?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Mimir","GLOBALKnow_Mimir",0)
~ GOTO 299
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62567 /* ~"I discovered why that was - it turns out I pried him off the Pillar of Skulls in Baator a long time ago."~ */ GOTO 304
  IF ~~ THEN REPLY #62568 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62569 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62570 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 296.0 298.0
  SAY #62571 /* ~"Yes. But he's not a baatezu... at least of any variety I've encountered. The smell alone, however, makes me treat the skull with caution."~ */
  IF ~~ THEN REPLY #62572 /* ~"What do you mean when you say 'baatezu' and 'Baatorian'?"~ */ GOTO 298
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62573 /* ~"What were you saying about a 'mimir' before?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62574 /* ~"What were you saying about a 'mimir' before?"~ */ GOTO 299
  IF ~~ THEN REPLY #62575 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62576 /* ~"Hmmm. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62577 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 298 // from: 297.0
  SAY #62578 /* ~"My apologies... Baator is one of the outer planes, the home of a race of fiends called the baatezu. They are evil creatures, yet they are organized and lawful in many of their behaviors. Some might call them 'devils.' They believe in contracts and hierarchy... in many ways, they are like evil bureaucrats."~ */
  IF ~~ THEN REPLY #62579 /* ~"What were you saying about a Baatorian smell?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62580 /* ~"What were you saying about a 'mimir' before?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62581 /* ~"What were you saying about a 'mimir' before?"~ */ GOTO 299
  IF ~~ THEN REPLY #62582 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62583 /* ~"Hmmm. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62584 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 296.1 297.1 297.2 298.1 298.2
  SAY #62585 /* ~"Mimirs are encyclopedias of knowledge. The owner may ask them questions, and if they possess the knowledge, they will inform the user of what it knows."~ */
  IF ~  Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #62586 /* ~"And Morte is a mimir?"~ */ DO ~SetGlobal("Grace_Silver_Mimir","GLOBAL",1)
~ GOTO 300
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62587 /* ~"Well, Morte isn't a mimir - it turns out I pried him off the Pillar of Skulls in Baator a long time ago."~ */ GOTO 304
  IF ~~ THEN REPLY #62588 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62589 /* ~"Hmmm. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62590 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #62591 /* ~"I don't believe so. Morte lacks the silvery metal that mimirs customarily have. And he seems to have an attitude of his own. Such qualities are not present in conventional mimirs." Grace shrugs slightly. "He *may* be one, but he's unlike any I've ever encountered."~ */
  IF ~~ THEN REPLY #62592 /* ~"I believe Morte is a mimir."~ */ GOTO 301
  IF ~  Global("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #62593 /* ~"Morte told me he is a mimir."~ */ GOTO 302
  IF ~~ THEN REPLY #62594 /* ~"I don't believe Morte is a mimir, either."~ */ GOTO 303
  IF ~~ THEN REPLY #62595 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62596 /* ~"Hmmm. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62597 /* ~"Let's continue this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 301 // from: 300.0 302.0
  SAY #62598 /* ~"Then enough has been said on the subject."~ */
  IF ~~ THEN REPLY #62599 /* ~"I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62600 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62601 /* ~"Let's move out, then."~ */ EXIT
END

IF ~~ THEN BEGIN 302 // from: 300.1
  SAY #62602 /* ~"Did he? Most curious. Very well, then."~ */
  IF ~~ THEN REPLY #62603 /* ~"I believe him."~ */ GOTO 301
  IF ~~ THEN REPLY #62604 /* ~"But I don't think I believe him."~ */ GOTO 303
  IF ~~ THEN REPLY #62605 /* ~"I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62606 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62607 /* ~"Let's move out, then."~ */ EXIT
END

IF ~~ THEN BEGIN 303 // from: 300.2 302.1
  SAY #62608 /* ~"Perhaps there is some test to verify his authenticity... but I would not do one if you value him as a friend. If you do, then you must accept what he has told you."~ */
  IF ~~ THEN REPLY #62609 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62610 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62611 /* ~"All right. That's all I wished to discuss."~ */ EXIT
END

IF ~~ THEN BEGIN 304 // from: 296.2 299.1
  SAY #62612 /* ~"That would explain his reservoir of knowledge. However -" Fall-from-Grace pauses. "One can only end up on the Pillar under certain circumstances."~ */
  IF ~~ THEN REPLY #62613 /* ~"What circumstances?"~ */ DO ~SetGlobal("Know_Pillar_Circumstances","GLOBAL",1)
~ GOTO 305
  IF ~  Global("Know_Pillar_Circumstances","GLOBAL",1)
~ THEN REPLY #62614 /* ~"I'm familiar with them - you have to have told a lie that led another to their death, correct?"~ */ GOTO 307
  IF ~~ THEN REPLY #62615 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62616 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62617 /* ~"That's all I wished to discuss. Let's move out."~ */ EXIT
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #62618 /* ~"The Pillar of Skulls is a pillar of living heads, composed of those whose lies sent others to their deaths. It can answer a number of questions as it knows a great deal, but expects a great deal of payment for its services."~ */
  IF ~~ THEN REPLY #62619 /* ~"So to end up there, Morte must have told a lie that resulted in someone getting killed?"~ */ GOTO 307
  IF ~~ THEN REPLY #62620 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62621 /* ~"Hmmmm. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62622 /* ~"All right. That's all I wished to discuss."~ */ EXIT
END

IF ~~ THEN BEGIN 306 // from:
  SAY #62623 /* ~NULL NODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 307 // from: 304.1 305.0
  SAY #62624 /* ~"That is correct."~ */
  IF ~~ THEN REPLY #62625 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62626 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62627 /* ~"Hmmm. Maybe I'll ask him about that. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 308 // from: 279.4
  SAY #62628 /* ~"Dak'kon?" Grace raises an eyebrow. "He's most uncommon for a githzerai."~ */
  IF ~~ THEN REPLY #62629 /* ~"Really? In what way?"~ */ GOTO 309
  IF ~~ THEN REPLY #62630 /* ~"Never mind. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62631 /* ~"Forget it for the moment. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62632 /* ~"Let's discuss this later. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #62633 /* ~"Well, he obeys you. That alone would mark him as a pariah among his people. His entire race were once slaves, and even the *reminder* of servitude to them is... distasteful."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #62634 /* ~"Yes, he made a promise to me long ago to serve me until I died. It was after I saved his life, and he did not know that I was immortal."~ */ GOTO 310
  IF ~~ THEN REPLY #62635 /* ~"Anything else?"~ */ GOTO 313
  IF ~~ THEN REPLY #62636 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62637 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62638 /* ~"Let's discuss this later. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #62639 /* ~"Truly? As a githzerai... he must be suffering, indeed. How did you save his life?"~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62640 /* ~"After he fell from Shra'kt'lor, one of my previous incarnations came to him as he lay dying in Limbo and gave him the Unbroken Circle of Zerthimon, that religious text he has."~ */ GOTO 311
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62641 /* ~"I don't know. It was another incarnation that saved him, and I have no knowledge of the incident. Is there anything else you can tell me about him?"~ */ GOTO 313
  IF ~~ THEN REPLY #62642 /* ~"It's a long tale. Look, I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62643 /* ~"Never mind. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62644 /* ~"I'll tell you some other time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #62645 /* ~"If I may ask, do you know *why* the incarnation saved his life?"~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62646 /* ~"I think I saved him because of his *karach* blade."~ */ GOTO 312
  IF ~~ THEN REPLY #62647 /* ~"I don't know; his motives are a mystery to me. Is there anything else you can tell me about Dak'kon?"~ */ GOTO 313
  IF ~~ THEN REPLY #62648 /* ~"It's a long tale. Look, I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62649 /* ~"Never mind. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62650 /* ~"I'll tell you some other time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 312 // from: 311.0
  SAY #62651 /* ~"Curious." Fall-from-Grace is silent for a moment. "You know, a blade that reflects the will of the wielder is a potent weapon if the wielder knows himself."~ */
  IF ~~ THEN REPLY #62652 /* ~"Perhaps that is why I saved him, then. Is there anything else you can tell me about Dak'kon?"~ */ GOTO 313
  IF ~~ THEN REPLY #62653 /* ~"Probably. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62654 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62655 /* ~"Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 313 // from: 309.1 310.1 311.1 312.0
  SAY #62656 /* ~"Dak'kon approaches everything in an orderly fashion. Again, most curious for a githzerai. They tend to be unpredictable - they follow their impulses rather than plan."~ */
  IF ~~ THEN REPLY #62657 /* ~"Anything else?"~ */ GOTO 314
  IF ~~ THEN REPLY #62658 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62659 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62660 /* ~"Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #62661 /* ~"He seems a most pious githzerai and a steadfast ally."~ */
  IF ~~ THEN REPLY #62662 /* ~"That he is. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62663 /* ~"Indeed. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62664 /* ~"I know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 315 // from: 279.5
  SAY #62665 /* ~"Nordom is a rogue modron. Even though some traces of chaos have worked their way into his system, he is still an extremely logical, ordered creature. This logic can be of great help in one's travels. Furthermore, if he perceives you as a leader, then he will be unquestioningly loyal."~ */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #62666 /* ~"Troubles may arise should Nordom be faced with any social situation requiring etiquette... such things are not well understood, even by normal modrons." She pauses. "I would offer you some advice concerning Nordom, if you would hear it."~ */
  IF ~~ THEN REPLY #62667 /* ~"Of course. What is it?"~ */ GOTO 317
  IF ~~ THEN REPLY #62668 /* ~"Not at the moment. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62669 /* ~"Perhaps later. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62670 /* ~"Not now - let's move out."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #62671 /* ~"Nordom's existence has been shaken - the more you help him make sense of his situation, his place in this party's hierarchy, and what led him to the state he is in now may help him to focus himself better. It is a thought."~ */
  IF ~~ THEN REPLY #62672 /* ~"I may follow your advice. For now, I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62673 /* ~"I will speak to him later. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62674 /* ~"Hmmm. I may see what I can do, then. Thanks. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 279.6
  SAY #62675 /* ~"You would be wise to travel with him no longer. He is insane, and he has proven capable of great acts of destruction. As I understand it, he was transformed into a conduit to the Elemental Plane of Fire... such a transformation would have killed many mortals."~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0
  SAY #62676 /* ~"Not only did he *survive* such a trial, but he thrived. He possesses tremendous power - should he be forced into a confrontation, I would fear for the chances of anyone who stood against him. I pray it does not come to that."~ */
  IF ~~ THEN REPLY #62677 /* ~"If Ignus is so powerful, why doesn't he just attack everything he sees? Why does he even travel with us?"~ */ GOTO 320
  IF ~~ THEN REPLY #62678 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62679 /* ~"I hope so, too. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62680 /* ~"Hmmm. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #62681 /* ~"I do not know. But I do not think it is because he likes our company; in fact, I think he considers all of us irrelevant except for you."~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62682 /* ~"I think it's because I was his teacher in the past."~ */ GOTO 322
  IF ~~ THEN REPLY #62683 /* ~"Me? Why me?"~ */ GOTO 321
  IF ~~ THEN REPLY #62684 /* ~"I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62685 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62686 /* ~"Hmmm. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.1
  SAY #62687 /* ~"Again, I do not know. Still, haven't you noticed that when you ask him to do something, he *obeys?* Without question. Were I to make the same request, the last thing I would receive would be his compliance." ~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62688 /* ~"I think it's because I was his teacher in the past."~ */ GOTO 322
  IF ~~ THEN REPLY #62689 /* ~"I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62690 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62691 /* ~"Hmmm. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 320.0 321.0
  SAY #62692 /* ~"You were his teacher?"~ */
  IF ~~ THEN REPLY #62693 /* ~"Yes... one of my previous incarnations taught him the Art, but I don't think it was a kind lesson. I think, in some dim way, he still considers me his master."~ */ GOTO 323
  IF ~~ THEN REPLY #62694 /* ~"Forget it. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62695 /* ~"It's a long tale. For now, I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62696 /* ~"We'll continue this some other time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.0
  SAY #62697 /* ~Fall-from-Grace nods thoughtfully. "That would explain a great deal." She studies your features for a moment. "Did the realization trouble you?"~ */
  IF ~~ THEN REPLY #62698 /* ~"I am not responsible for what Ignus has become. Does the realization trouble me? No."~ */ GOTO 324
  IF ~~ THEN REPLY #62699 /* ~"I feel some responsibility - I think the means by which I taught Ignus may have contributed to his madness. But I do not know for sure."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62700 /* ~"Yes, it did. I regret that my past lives touched Ignus and burned him so."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62701 /* ~"I don't want to discuss it right now. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62702 /* ~"Forget it. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62703 /* ~"We'll discuss this some other time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0 323.1 323.2
  SAY #62704 /* ~"Ignus burns within, with such fires that Baator itself would be shamed. He has become more than a sorcerer, more than a man. He has become a force. I can't help but wonder if that was part of his nature before he crossed paths with you."~ */
  IF ~~ THEN REPLY #62705 /* ~"I don't know. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62706 /* ~"Hmmm. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62707 /* ~"We'll discuss this some other time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 279.7
  SAY #62708 /* ~"Any involvement with Mercykillers is an undertaking with many risks. I fear that with Vhailor, such risks are magnified. Justice is more than an obsession with him; justice is a *part* of him. Be careful how you act and carry yourself, for he is watching us all carefully. It is the nature of a Mercykiller."~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62709 /* ~"I've got something to confess... I think I'm the reason that Vhailor was caged in that cell beneath Curst for so long."~ */ GOTO 326
  IF ~~ THEN REPLY #62710 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62711 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62712 /* ~"Very well. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #62713 /* ~"What do you mean?"~ */
  IF ~~ THEN REPLY #62714 /* ~"I had a memory... I recall trapping him in the cell because he had been pursuing me so long. But I didn't want to kill him, just keep him prisoner, keep him out of the way."~ */ GOTO 327
  IF ~~ THEN REPLY #62715 /* ~"Never mind. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62716 /* ~"Forget it. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62717 /* ~"We'll discuss this some other time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #62718 /* ~"If he had been pursuing you, why would you have imprisoned him? Why not just kill him?"~ */
  IF ~~ THEN REPLY #62719 /* ~"Well, I'm not sure I *could* have killed him - death had a chance at it, and from the looks of it, it didn't do a very good job."~ */ GOTO 328
  IF ~~ THEN REPLY #62720 /* ~"You know, this will sound odd, but I have a strange feeling that I didn't kill him BECAUSE he could kill me."~ */ GOTO 329
  IF ~~ THEN REPLY #62721 /* ~"Never mind. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62722 /* ~"Forget it. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62723 /* ~"We'll discuss this some other time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #62724 /* ~"That is true. Belief sustains him, and belief is a powerful thing."~ */
  IF ~~ THEN REPLY #62725 /* ~"You know, this will sound odd, but I have a strange feeling that I didn't kill him BECAUSE he could kill me."~ */ GOTO 329
  IF ~~ THEN REPLY #62726 /* ~"It is. Look, I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62727 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62728 /* ~"Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 327.1 328.0
  SAY #62729 /* ~Fall-from-Grace nods. "Even an immortal may want to leave an opening for mortality to creep in. There are many for whom immortality is *not* a blessing. You may have wished Vhailor be kept in case immortality one day became too much for you to bear."~ */
  IF ~~ THEN REPLY #62730 /* ~"I see. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62731 /* ~"Hmmm. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62732 /* ~"Interesting thought. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 280.2 287.0 289.1 290.1 291.2 292.1 293.1 294.2 295.0 331.1 332.0 333.0 334.0 335.4 336.0 337.2 338.2 339.0 357.2
  SAY #62733 /* ~"Do you know anything else that might prove helpful?"~ */
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #62734 /* ~"Well, shadows keep coming to kill me - I have a feeling they're following me, but I don't know why."~ */ GOTO 331
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
~ THEN REPLY #62735 /* ~"Well, I think there's someone out to murder me... so much so I built a tomb trap to try and kill them. According to an inscription in the tomb, he's been coming after me... for, well, as long as my incarnations can remember, it seems."~ */ GOTO 334
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62736 /* ~"One other thing: I wasn't always immortal... Ravel made me that way."~ */ GOTO 335
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62737 /* ~"When I spoke to Ravel, she said that the tattoos on my skin spoke of a 'war of fiends.' Do you know what she meant?"~ */ GOTO 338
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #62738 /* ~"Well, the Pillar of Skulls told me that I 'cast a shadow on existence' - that whenever I die, another dies in my place."~ */ GOTO 333
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
~ THEN REPLY #62739 /* ~"Trias said that there is a 'keeper' in this Fortress of Regrets, and that he holds my mortality prisoner."~ */ GOTO 339
  IF ~~ THEN REPLY #62740 /* ~"Nothing of importance, actually. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62741 /* ~"Never mind. Perhaps another time."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #62742 /* ~"Shadows?" Fall-from-Grace is silent for a moment. "Shadows are shades of the dead. They do not tend to hunt, they tend to lie in wait for victims. Curious."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 332
  IF ~~ THEN REPLY #62743 /* ~"I'd like to know any other thoughts you have on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62744 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62745 /* ~"Let's discuss this another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 331.0
  SAY #62746 /* ~"And Ravel did say that you were the caster of shadows - perhaps these shades are drawn to you in some way?" Fall-from-Grace taps her chin for a moment. "It is hard to say for certain."~ */
  IF ~~ THEN REPLY #62747 /* ~"I'd like to know any other thoughts you have on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62748 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62749 /* ~"Let's discuss this another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.4
  SAY #62750 /* ~"Anything touched by Ravel's magicks are seldom of benefit to anyone, it seems." Fall-from-Grace's voice drops. "It makes one wonder how many times you have died... and taken another with you."~ */
  IF ~~ THEN REPLY #62751 /* ~"I'd like to know any other thoughts you have on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62752 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62753 /* ~"Let's discuss this another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 330.1
  SAY #62754 /* ~"Then... whoever the killer is, he's lived a very long time to have pursued you so long." She taps her chin for a moment. "Could the killer be immortal as well?"~ */
  IF ~~ THEN REPLY #62755 /* ~"Possibly. I'd like to know any other thoughts you have on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62756 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62757 /* ~"Let's discuss this another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 330.2
  SAY #62758 /* ~"Then that in itself is telling. This is not your natural state, which leads to the next question: *Why* did you wish to become immortal? Do you have any knowledge as to why Ravel did such a thing?"~ */
  IF ~  Global("Ravel_Hair","GLOBAL",1)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62759 /* ~"I don't know for certain, but I think it was to help me escape from a cage, to give me my freedom."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",1)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62760 /* ~"I don't know for certain, but I think it was to help me escape from a cage, to give me my freedom."~ */ GOTO 336
  IF ~  Global("Ravel_Hair","GLOBAL",0)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62761 /* ~"I don't know - all I know is that I asked her to do so."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",0)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62762 /* ~"I don't know - all I know is that I asked her to do so."~ */ GOTO 336
  IF ~~ THEN REPLY #62763 /* ~"Not yet. I'd like to know any other thoughts you have on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62764 /* ~"I don't know. I wanted to ask you some other questions."~ */ GOTO 139
  IF ~~ THEN REPLY #62765 /* ~"Let's discuss this another time."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.1 335.3
  SAY #62766 /* ~"Most curious. That would seem to be one of the first things to discover... only by having a sound foundation in the past can you determine what the future holds."~ */
  IF ~~ THEN REPLY #62767 /* ~"I'd like to know any other thoughts you have on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62768 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62769 /* ~"Let's discuss this another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 337 // from: 335.0 335.2
  SAY #62770 /* ~"Hmmmm. Ravel said something which interested me... she mentioned the war of fiends, which undoubtedly meant the Blood War. I find that most curious. That, and the plane where Ravel made her home often finds itself the contested ground in the conflict. Perhaps whatever brought you to Ravel involved the Blood War?"~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62771 /* ~"What's the Blood War?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Fall-from-Grace said that the war of fiends that Ravel was referring to probably meant the Blood War, a conflict between the baatezu and tanar'ri races. She suggested that perhaps my dealings with Ravel involved the Blood War somehow.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62772 /* ~"What's the Blood War?"~ */ GOTO 219
  IF ~~ THEN REPLY #62773 /* ~"It's possible. I'd like to know any other thoughts you have on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62774 /* ~"Perhaps. I wanted to ask you some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62775 /* ~"I don't know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 330.3
  SAY #62776 /* ~"Hmmmm. A 'war of fiends' undoubtedly means the Blood War." Fall-from-Grace nods. "You know, the Gray Waste, the plane where Ravel made her home often finds itself the contested ground in that conflict. Perhaps whatever brought you to Ravel involved the Blood War?"~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62777 /* ~"What's the Blood War?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Fall-from-Grace said that the war of fiends that Ravel was referring to probably meant the Blood War, a conflict between the baatezu and tanar'ri races. She suggested that perhaps my dealings with Ravel involved the Blood War somehow.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62778 /* ~"What's the Blood War?"~ */ JOURNAL #61615 /* ~Fall-from-Grace said that the war of fiends that Ravel was referring to probably meant the Blood War, a conflict between the baatezu and tanar'ri races. She suggested that perhaps my dealings with Ravel involved the Blood War somehow.~ */ GOTO 219
  IF ~~ THEN REPLY #62779 /* ~"It's possible. I'd like to know any other thoughts you have on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62780 /* ~"Perhaps. I wanted to ask you some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62781 /* ~"I don't know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 330.5
  SAY #62782 /* ~"It seems to me you must find this keeper and speak to him. I think the conversation would prove most illuminating. It would seem that this keeper does not want your mortality recovered."~ */
  IF ~~ THEN REPLY #62783 /* ~"It's possible. I'd like to know any other thoughts you have on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62784 /* ~"I wanted to ask you some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62785 /* ~"Probably so - in which case, he's going to be disappointed. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 279.3
  SAY #62786 /* ~"She is strong and capable, and she is quite passionate. I almost wish I had met her long ago and asked her to come to the Brothel... perhaps things might have been different." Grace studies you for a moment. "What do you think of her?"~ */
  IF ~~ THEN REPLY #62787 /* ~"I think she doesn't care for you very much."~ */ GOTO 341
  IF ~~ THEN REPLY #62788 /* ~"Well, I think I could fall in love with her."~ */ GOTO 342
  IF ~~ THEN REPLY #62789 /* ~"I consider her a friend, nothing more."~ */ GOTO 343
  IF ~~ THEN REPLY #62790 /* ~"I don't really care about her one way or the other."~ */ GOTO 343
  IF ~~ THEN REPLY #62791 /* ~"I hate her."~ */ GOTO 344
  IF ~~ THEN REPLY #62792 /* ~"I don't trust her."~ */ GOTO 346
  IF ~~ THEN REPLY #62793 /* ~"She has her uses, nothing more."~ */ GOTO 343
  IF ~~ THEN REPLY #62794 /* ~"I'd rather not discuss it."~ */ GOTO 347
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #62795 /* ~"I would agree..." Grace smiles. "But I shall not let you dodge my question so easily. What do you think of her?"~ */
  IF ~~ THEN REPLY #62796 /* ~"Well, I think I could fall in love with her."~ */ GOTO 342
  IF ~~ THEN REPLY #62797 /* ~"I consider her a friend, nothing more."~ */ GOTO 343
  IF ~~ THEN REPLY #62798 /* ~"I don't really care about her one way or the other."~ */ GOTO 343
  IF ~~ THEN REPLY #62799 /* ~"I hate her."~ */ GOTO 344
  IF ~~ THEN REPLY #62800 /* ~"I don't trust her."~ */ GOTO 346
  IF ~~ THEN REPLY #62801 /* ~"She has her uses, nothing more."~ */ GOTO 343
  IF ~~ THEN REPLY #62802 /* ~"I'd rather not discuss it."~ */ GOTO 347
END

IF ~~ THEN BEGIN 342 // from: 340.1 341.0
  SAY #62803 /* ~"You might wish to tell her so."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62804 /* ~"I don't know... I seem to leave this *wreckage* wherever I go, with Deionarra especially, and the lives of others I've touched. It might be best to leave well enough alone."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62805 /* ~"I don't know... I seem to leave this *wreckage* wherever I go, with Deionarra especially, and the lives of others I've touched. It might be best to leave well enough alone."~ */ GOTO 359
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62806 /* ~"I don't know... I seem to leave this *wreckage* wherever I go, with Deionarra especially, and the lives of others I've touched - not to mention Ravel. Why she was attracted to me, I can't even imagine, but I'd used her as well. Maybe I should just be careful of my feelings."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62807 /* ~"I don't know... I seem to leave this *wreckage* wherever I go, with Deionarra especially, and the lives of others I've touched - not to mention Ravel. Why she was attracted to me, I can't even imagine, but I'd used her as well. Maybe I should just be careful of my feelings."~ */ GOTO 359
  IF ~~ THEN REPLY #62808 /* ~"If I do, it will be *my* choice."~ */ GOTO 343
  IF ~~ THEN REPLY #62809 /* ~"I don't know... we'll see."~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 340.2 340.3 340.6 341.1 341.2 341.5 342.4 342.5 345.0 346.0
  SAY #62810 /* ~"Very well."~ */
  IF ~~ THEN REPLY #62811 /* ~"I wanted to ask you about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62812 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62813 /* ~"All right then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 340.4 341.3
  SAY #62814 /* ~"Why?"~ */
  IF ~~ THEN REPLY #62815 /* ~"Mostly the accent... and the fact that she's the reason I got dumped in the Mortuary in the first place, she's a Hive thief with a dash of fiend blood, and she's always sniping at everything I do. Need I go on?"~ */ GOTO 345
  IF ~~ THEN REPLY #62816 /* ~"I wanted to ask you about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62817 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62818 /* ~"All right then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #62819 /* ~"Why do you travel with her, then?"~ */
  IF ~~ THEN REPLY #62820 /* ~"She's got her uses - as long as I don't have to enjoy her company, everything's fine."~ */ GOTO 343
  IF ~~ THEN REPLY #62821 /* ~"Never mind. I wanted to ask you about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62822 /* ~"Forget it. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62823 /* ~"We'll discuss it another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 340.5 341.4
  SAY #62824 /* ~"Why don't you trust her?"~ */
  IF ~~ THEN REPLY #62825 /* ~"She conveniently found me in the Alley of Lingering Sighs when I died, despite the fact that every other Collector is frightened to go in there, she's Pharod's adopted daughter, and she's a Hive thief with a trace of fiend blood. Need I go on?" ~ */ GOTO 343
  IF ~~ THEN REPLY #62826 /* ~"Never mind. I wanted to ask you about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62827 /* ~"Forget it. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62828 /* ~"We'll discuss it another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 347 // from: 340.7 341.6
  SAY #62829 /* ~"Abstaining is acceptable." Grace smiles. "Sustained abstinence could prove difficult."~ */
  IF ~~ THEN REPLY #62830 /* ~"*You* would know."~ */ GOTO 361
  IF ~~ THEN REPLY #62831 /* ~"All right, all right... I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62832 /* ~"I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62833 /* ~"Perhaps so. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 205.5
  SAY #62834 /* ~Grace says softly: "Torment." She studies the symbol on your arm for a moment. "Fell said..." She takes a breath. "That the flesh knows it suffers, even when the mind forgets. Fell said that the rune acts like a lodestone, drawing other tormented souls to you."~ */
  IF ~~ THEN REPLY #62835 /* ~"I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62836 /* ~"Perhaps so. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 139.16
  SAY #62837 /* ~"No... there is seldom the need, and I find that I cannot bear the touch of cold iron or even steel for long periods of time. In any event, I have a number of... natural defenses that tend to discourage attackers."~ */
  IF ~~ THEN REPLY #62838 /* ~"Such as?"~ */ JOURNAL #61616 /* ~Fall-from-Grace told me her kiss can drain the life from a victim... for some reason, that arouses me. I mean, I can't die, right? Hmmmm. I'll have to keep that in mind.~ */ GOTO 350
  IF ~~ THEN REPLY #62839 /* ~"Oh. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62840 /* ~"I... see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #62841 /* ~"The kiss of a succubus is lethal to mortals - though they rarely realize the danger until their death is almost upon them." Fall-from-Grace sighs. "I can resort to it when the need arises."~ */
  IF ~~ THEN REPLY #62842 /* ~"I... see. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62843 /* ~"Intriguing... er, I mean, frightening. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 351 // from: 205.2
  SAY #62844 /* ~"That is correct. Yves needs no more tales adding to her misery... and my tale would not serve her search for truth."~ */
  IF ~~ THEN REPLY #62845 /* ~"Would you tell me?"~ */ GOTO 352
  IF ~~ THEN REPLY #62846 /* ~"I... see. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62847 /* ~"Perhaps so. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 205.3 206.1 207.2 212.0 351.0
  SAY #62848 /* ~"It is a long tale, and not as interesting as some would make it out to be." She sighs. "It is intertwined in other tales of war and slavery - it is not a pleasant tale."~ */
  IF ~~ THEN REPLY #62849 /* ~"I would still hear it."~ */ GOTO 353
  IF ~~ THEN REPLY #62850 /* ~"I... see. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62851 /* ~"Let's just move on, then."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #62852 /* ~"Very well... know my past is not a long one, at least by tanar'ri standards. I do not know if you are familiar with the tanar'ri, but we are a race of the Abyss, a staggered series of planes filled with chaos and evil hearts."~ */
  IF ~~ THEN REPLY #62853 /* ~"Go on..."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ GOTO 354
  IF ~~ THEN REPLY #62854 /* ~"Never mind. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62855 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #62856 /* ~"I am a tanar'ri, a fiend, a succubus... I grew up upon the first plane of the Abyss. My mother was a succubus herself - as I'm sure you are aware, succubi tempt mortals to bring their souls to the Abyss. My mother was among the finest, seducing countless mortal men to their eternal damnation. She now dwells in the Abyss, selling her children into slavery."~ */
  IF ~~ THEN REPLY #62857 /* ~"Your mother sold you into slavery?"~ */ GOTO 355
  IF ~~ THEN REPLY #62858 /* ~"Never mind. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62859 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #62860 /* ~"Yes, she sold me to the baatezu, the blood enemies of the tanar'ri. I think she rather expected that they would kill me - despite her knowledge of other subjects, she knows little of their culture and the delight they take in tormenting others."~ */
  IF ~~ THEN REPLY #62861 /* ~"How did you escape?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 356
  IF ~~ THEN REPLY #62862 /* ~"Never mind. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62863 /* ~"I've heard enough. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #62864 /* ~"The baatezu are a proud species. The thought a tanar'ri could best them at anything was intolerable to them. So I challenged one of the proudest of the pit fiends to a contest of improvisation, and my tanar'ri nature afforded me an advantage - you see, the tanar'ri are creatures of chaos, wild and unpredictable. The baatezu are more cunning, with orderly hearts. They understand improvisation, but they are not its best practitioners. And thus, I won my freedom - and my path brought me to Sigil."~ */
  IF ~~ THEN REPLY #62865 /* ~"I see. I had some other questions..."~ */ GOTO 205
  IF ~~ THEN REPLY #62866 /* ~"That is all I wished to hear. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from: 279.0
  SAY #62867 /* ~"What did you wish to discuss?"~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62868 /* ~"I wanted you to know that when I kissed Ravel in the maze, I..."~ */ GOTO 281
  IF ~~ THEN REPLY #62869 /* ~"To be honest, I am curious as to your feelings about me."~ */ GOTO 287
  IF ~~ THEN REPLY #62870 /* ~"I'd like to know your thoughts on my situation."~ */ GOTO 330
  IF ~~ THEN REPLY #62871 /* ~"Do you have any idea who or what I might be?"~ */ GOTO 288
  IF ~~ THEN REPLY #62872 /* ~"Never mind. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62873 /* ~"Forget it. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62874 /* ~"It's not important. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 358 // from: 342.0 342.2
  SAY #62875 /* ~"Deionarra was the woman in the sensory stone of longing was she not? The one who loved your previous incarnation?"~ */
  IF ~~ THEN REPLY #62876 /* ~"Yes, she was. I did something terrible to her, but I know not what."~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 342.1 342.3 358.0
  SAY #62877 /* ~"To that, I would say this - love may move the planes themselves when it is strong and true, and there is nothing truer in all of my experiences than the truth about how one *feels* about another."~ */
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN GOTO 360
  IF ~~ THEN REPLY #62879 /* ~"Perhaps so. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62880 /* ~"You may be right. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62881 /* ~"We'll talk about this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #62882 /* ~"Before you seek to guard others from your feelings, know this - love is powerful, so powerful that it found its way into Ravel's twisted black heart and its touch caused her to value another more than herself. Do you not know the *strength* required to change a heart such as Ravel's? For all the pain it may have caused, I think there is something to be said for the good it has created." ~ */
  IF ~~ THEN REPLY #62883 /* ~"Perhaps so. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62884 /* ~"You may be right. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62885 /* ~"We'll talk about this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 361 // from: 347.0
  SAY #62886 /* ~"Ah - I deserved that." Fall-from-Grace smiles. "To that, I would say this - one's feelings for another may move the planes themselves, and there is no greater truth than what one *feels* about another."~ */
  IF ~~ THEN REPLY #62887 /* ~"Perhaps so. I wanted to talk about someone else..."~ */ GOTO 279
  IF ~~ THEN REPLY #62888 /* ~"You may be right. I had some other questions..."~ */ GOTO 139
  IF ~~ THEN REPLY #62889 /* ~"We'll talk about this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from:
  SAY #63241 /* ~"Thousands."~ [FFG299] */
  IF ~~ THEN EXTERN ~BMORTE~ 33
END

IF ~~ THEN BEGIN 363 // from:
  SAY #63245 /* ~"You know, Morte, on some planes they burn jesters for firewood."~ [FFG300] */
  IF ~~ THEN EXTERN ~BMORTE~ 35
END

IF ~~ THEN BEGIN 364 // from:
  SAY #63246 /* ~"Your luck seems to blanket us all."~ [FFG301] */
  IF ~~ THEN EXTERN ~BMORTE~ 37
END

IF ~~ THEN BEGIN 365 // from:
  SAY #63248 /* ~"No, she's not pretty. But she might easily be beautiful."~ [FFG322] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #63469 /* ~"As long as I am permitted, I suppose."~ [FFG317] */
  IF ~~ THEN EXTERN ~BANNAH~ 17
END

IF ~~ THEN BEGIN 367 // from:
  SAY #63470 /* ~"I don't know if I will be going back."~ [FFG318] */
  IF ~~ THEN EXTERN ~BANNAH~ 19
END

IF ~~ THEN BEGIN 368 // from:
  SAY #63471 /* ~"I'll be careful. I assure you, I have no such hungers."~ [FFG319] */
  IF ~~ THEN EXTERN ~BANNAH~ 21
END

IF ~~ THEN BEGIN 369 // from:
  SAY #63472 /* ~"Not all of us, Annah. I would encourage you to be more open-minded. You have fiend blood as well, and you have many good qualities."~ [FFG319A] */
  IF ~~ THEN EXTERN ~BANNAH~ 22
END

IF ~~ THEN BEGIN 370 // from:
  SAY #63473 /* ~"Annah, jealousy is a two-edged blade. If you keep-"~ [FFG320] */
  IF ~~ THEN EXTERN ~BANNAH~ 24
END

IF ~~ THEN BEGIN 371 // from:
  SAY #63474 /* ~"Very well, then."~ [FFG320A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from:
  SAY #63475 /* ~"Annah, look, we should-"~ [FFG321] */
  IF ~~ THEN EXTERN ~BANNAH~ 26
END

IF ~~ THEN BEGIN 373 // from:
  SAY #63697 /* ~"Morte, come on."~ [FFG332] */
  IF ~~ THEN EXTERN ~DMORTE~ 642
END

IF ~~ THEN BEGIN 374 // from:
  SAY #63698 /* ~"Oh? Does that include modrons?"~ [FFG302] */
  IF ~~ THEN EXTERN ~BNORDOM~ 28
END

IF ~~ THEN BEGIN 375 // from:
  SAY #63699 /* ~"Why, whoever told you that, dear Nordom?"~ [FFG303] */
  IF ~~ THEN EXTERN ~DMORTE~ 644
END

IF ~~ THEN BEGIN 376 // from:
  SAY #63700 /* ~"Pardon me?"~ [FFG333] */
  IF ~~ THEN EXTERN ~BNORDOM~ 31
END

IF ~~ THEN BEGIN 377 // from:
  SAY #63701 /* ~"Pardon me?"~ [FFG334] */
  IF ~~ THEN EXTERN ~BNORDOM~ 33
END

IF ~~ THEN BEGIN 378 // from:
  SAY #63702 /* ~"Why... I suppose I find it comforting. Besides, I rather like the wings."~ [FFG334A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 34
END

IF ~~ THEN BEGIN 379 // from:
  SAY #63703 /* ~"Why, Nordom, are you trying to court me?"~ [FFG334B] */
  IF ~~ THEN EXTERN ~BNORDOM~ 35
END

IF ~~ THEN BEGIN 380 // from:
  SAY #63860 /* ~"Such 'sins' break no tanar'ri law, Vhailor. My path is my own and one of free choice, not punishment."~ [FFG304] */
  IF ~~ THEN EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",3)
~ THEN BEGIN 381 // from:
  SAY #68209 /* ~As your power touches Fall-from-Grace, she rises dizzily to her feet - even disoriented, she somehow manages to maintain her composure.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68210 /* ~"Fall-from-Grace - we're at the Fortress of Regrets, and I found my killer; it's my own mortality - it's taken on a life of its own. I really need your help right now."~ */ DO ~SetGlobal("Fortress_Grace","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 382
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68354 /* ~FALL-FROM-GRACE.~ */ GOTO 383
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #68211 /* ~She nods, slowly; her strength seems to return as she hears your words. "I fear that now we have entered, this place will not easily let us go."~ [FFG070] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68212 /* ~"We'll see..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68213 /* ~"We'll see..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68214 /* ~"We'll see..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68215 /* ~"We'll see..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68242 /* ~"We'll see..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68435 /* ~"We'll see..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68436 /* ~"We'll see..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68445 /* ~"We'll see..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 381.1
  SAY #68355 /* ~Fall-from-Grace looks up, and she holds your eyes for a moment, then she smiles - but it is a slight smile, that carries more sadness than anything else. "Your voice - so you have found yourself at last?"~ */
  IF ~~ THEN REPLY #68356 /* ~YES. THE PRICE WAS... HIGH. THE COST WAS MANY LIFETIMES, MINE AND OTHERS.~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #68357 /* ~"The price of such a thing is seldom measured in copper." Fall-from-Grace studies your features. "Are you still -"~ */
  IF ~~ THEN REPLY #68358 /* ~I AM STILL THE ONE YOU KNOW - BUT MY PERSPECTIVE HAS... CHANGED. I HAVE NOT FORGOTTEN YOU, IF THAT IS YOUR FEAR.~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #68359 /* ~Fall-from-Grace smiles again, the same sad smile as before. "No, that was not my fear."~ */
  IF ~~ THEN REPLY #68360 /* ~I CANNOT REMAIN HERE FOR MUCH LONGER. MY PUNISHMENT CALLS, AND FATE AND TIME SHALL SOON BE HERE. I WILL RETURN YOU TO SIGIL, IF YOU WISH.~ */ GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #68361 /* ~"That is not my wish." Fall-from-Grace reaches forward, and her hand lightly touches your arm. There is a slight tingling sensation, barely felt, then she takes it away. "I *will* find you again, no matter where in the Lower Planes you will be - just as you shall be able to find me."~ */
  IF ~~ THEN REPLY #68362 /* ~IT MAY BE A LONG TIME. WHERE I AM BOUND, TIME IS NOT MEASURED IN YEARS. AND THE CRIMES I HAVE COMMITTED ARE STRONGER THAN ANY CAGE.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #68363 /* ~"No cage shall separate us, and no Plane shall divide us." Fall-from-Grace's face becomes like stone. "Keep thinking of me, and we shall meet again."~ */
  IF ~~ THEN REPLY #68364 /* ~I SHALL NOT FORGET ALL YOU SACRIFICED FOR ME.~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 387.0
  SAY #68365 /* ~She shakes her head. "Just do not forget me."~ */
  IF ~~ THEN REPLY #68366 /* ~TIME LAYS WASTE TO ALL THINGS. BUT I SHALL FIGHT IT AS LONG AS I CAN.~ */ GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #68367 /* ~"Time is not your enemy. Forever is."~ [FFG196] */
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68368 /* ~PERHAPS SO. FAREWELL, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68369 /* ~PERHAPS SO. FAREWELL, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68370 /* ~PERHAPS SO. FAREWELL, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68371 /* ~PERHAPS SO. FAREWELL, GRACE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68499 /* ~PERHAPS SO. FAREWELL, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68500 /* ~PERHAPS SO. FAREWELL, GRACE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68501 /* ~PERHAPS SO. FAREWELL, GRACE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",4)
~ THEN BEGIN 390 // from:
  SAY #68416 /* ~Grace nods as you speak to her. "I fear that now we have entered, this place will not easily let us go."~ [FFG070] */
  IF ~~ THEN REPLY #68417 /* ~"We'll see about that. First, let's attend to my mortality..."~ */ EXIT
END
