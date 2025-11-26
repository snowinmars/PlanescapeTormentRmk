// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITH~

IF ~  Global("Know_Gith","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2276 /* ~This man slowly turns as you approach. His eyes are like two black stones; they briefly flicker over your frame, then he locks gazes with you. Although this man looks humanoid, he has a yellow cast to his skin and gaunt features. He has a thin, angular frame; his limbs look like they're made of nothing but strings of muscle knotted around bone. His clothing is a curious blend of sharp colors and dull, mud-stained browns. ~ */
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2350 /* ~"Greetings."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #2351 /* ~"Greetings."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2352 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #2353 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 46.3 46.4
  SAY #2277 /* ~He pauses for a moment, studying you, then replies in broken common. "You are *known* to me." His accent makes it difficult to understand him - it's like he takes every word, snaps it, then drags out every vowel for good measure. The emphasis he places on the word *known* strikes you as odd. "I will hear you."~ */
  IF ~  Global("Anazi_Help","GLOBAL",0)
Global("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2355 /* ~"I'm... 'known' to you? Do you know who I am?"~ */ GOTO 2
  IF ~  Global("Anazi_Help","GLOBAL",0)
GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN REPLY #2356 /* ~"I'm... 'known' to you? Do you know who I am?"~ */ GOTO 3
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #2357 /* ~"I'm... 'known' to you? Do you know who I am?"~ */ GOTO 4
  IF ~~ THEN REPLY #2358 /* ~"I... see. Look, I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #2361 /* ~"There is nothing I wish to ask you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2278 /* ~"Your name is *known* to me. Your actions are *known* to me. Your nature is *known* through your actions. You are *known* to be a friend of the People." His eyes flicker over you again, as if re-appraising you. "I will hear you."~ */
  IF ~~ THEN REPLY #2362 /* ~"Very well. I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #2363 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #2279 /* ~"Your name is *known* to me. You have let the ground drink githyanki blood. Your nature is *known* through your actions." His eyes flicker over you again, as if re-appraising you. "I will hear you."~ */
  IF ~~ THEN REPLY #2364 /* ~"Very well. I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #2366 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #2280 /* ~"Your name is *known* to me. You gave aid to one of our People who was made ill by the poisons of this city. Your nature is *known* through this act. You are *known* to be a friend of the people." His eyes flicker over you again, as if re-appraising you. "I will hear you."~ */
  IF ~~ THEN REPLY #2367 /* ~"Very well. I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #2368 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 46.2
  SAY #2281 /* ~The man remains silent. He does not acknowledge your greeting, merely stares at you. ~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #2369 /* ~"You're a githyanki, aren't you? I had some questions for you..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8705 /* ~"I said, 'Greetings.'"~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8706 /* ~"I said, 'Greetings.'"~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8707 /* ~"I said, 'Greetings.'"~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8708 /* ~"I said, 'Greetings.'"~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8709 /* ~"I said, 'Greetings.'"~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8710 /* ~"I said, 'Greetings.'"~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8711 /* ~"I had some questions..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 32
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
Global("Annah_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8712 /* ~"I had some questions..."~ */ DO ~SetGlobal("Annah_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 33
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8713 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",0)
~ THEN REPLY #8714 /* ~"I had some questions..."~ */ DO ~SetGlobal("Morte_Githzerai_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 44
  IF ~  NearbyDialog("DMorte")
Global("Morte_Githzerai_Quip_1","GLOBAL",1)
~ THEN REPLY #8715 /* ~"I had some questions..."~ */ EXTERN ~DMORTE~ 45
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #8716 /* ~"I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #8717 /* ~"Never mind. Sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #2282 /* ~For a second, the gith doesn't seem to have heard you. Then there is the whisper of steel and a blade sprouts from the gith's hands. With a hiss, he lunges at you!~ */
  IF ~~ THEN REPLY #8718 /* ~"All right then..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.3 5.6 5.9 5.12
  SAY #2283 /* ~The gith remains silent, though his black eyes are still locked on you.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8719 /* ~"You're a githyanki, aren't you? I had some questions for you..."~ */ GOTO 6
  IF ~~ THEN REPLY #8720 /* ~"I said, 'Greetings.'"~ */ GOTO 8
  IF ~~ THEN REPLY #8721 /* ~"Can you understand me?"~ */ GOTO 8
  IF ~~ THEN REPLY #8722 /* ~"I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #8723 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 7.3
  SAY #2284 /* ~He pauses for a moment, studying you, then replies in broken common. "You are not *known* to me." His accent makes it difficult to understand him - it's like he takes every word, snaps it, then drags out every vowel for good measure. The emphasis he places on the word *known* strikes you as odd. "What do you want?"~ */
  IF ~~ THEN REPLY #8724 /* ~"I had some questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #8725 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 61.1
  SAY #2285 /* ~"I will not hear you." He looks like he is about to walk past you.~ */
  IF ~~ THEN REPLY #8726 /* ~Block his path.~ */ GOTO 10
  IF ~~ THEN REPLY #8727 /* ~Let him leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #2286 /* ~He stops and locks gazes with you again. Before you can speak, there is the whisper of steel and a blade suddenly sprouts from his hand. "Stand aside."~ */
  IF ~~ THEN REPLY #8728 /* ~"Could you answer some questions first?"~ */ GOTO 11
  IF ~~ THEN REPLY #8729 /* ~"No. Answer some questions first."~ */ GOTO 11
  IF ~~ THEN REPLY #8730 /* ~"I will not yield. I suggest you sheath that pig-sticker before I sheath it in your body."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8731 /* ~Attack him first.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #8732 /* ~Stand aside and let him pass.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #2287 /* ~His expression does not change. "Stand aside."~ */
  IF ~~ THEN REPLY #8733 /* ~"I just had some questions."~ */ GOTO 12
  IF ~~ THEN REPLY #8734 /* ~"Answer some questions first, then."~ */ GOTO 12
  IF ~~ THEN REPLY #8735 /* ~"I will not yield. I suggest you sheath that pig-sticker before I sheath it in your body."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8736 /* ~Attack him first.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_1","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #9037 /* ~Stand aside and let him pass.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 11.1 11.2 70.2 70.4
  SAY #2288 /* ~With a hiss, he attacks you!~ */
  IF ~~ THEN REPLY #8737 /* ~"Prepare to die..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2289 /* ~Empty node.~ */
  IF ~~ THEN REPLY #8738 /* ~No response.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.3 2.0 3.0 4.0
  SAY #2290 /* ~"K'atzn'ii-at-the-Gate."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8739 /* ~Try and recall the translation...~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8740 /* ~Try and recall the translation...~ */ GOTO 15
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #8741 /* ~"I'm sorry?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",1)
~ THEN REPLY #8744 /* ~"Uh... does that mean you will hear me?"~ */ GOTO 16
  IF ~  Global("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ THEN REPLY #8745 /* ~"Very well. Will you hear me?"~ */ GOTO 16
  IF ~~ THEN REPLY #8746 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #2291 /* ~K'atzn'ii-at-the-Gate: "Ask and you will answer both our questions." 

*(K'atzn'ii was a githzerai pilgrim who wandered the githzerai's home plane of Limbo to 'test' her people's discipline. She would appear at the gate of each githzerai city and ask a series of questions. The answers the citizens gave allowed her to know the nature the githzerai that lived beyond its walls. Unknown to K'aztn'ii, however, the questions she asked allowed the githzerai to know her nature as well.)*~ */
  IF ~~ THEN REPLY #8749 /* ~"We shall see. Will you hear me?"~ */ GOTO 16
  IF ~~ THEN REPLY #8750 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3 14.4 15.0 17.0 18.0 39.1 40.0 41.1 42.1 43.1 44.2 45.0
  SAY #2292 /* ~The gith pauses, then speaks again. "Ask your questions. I will hear you."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8751 /* ~"I seek someone named Pharod. Do you know of him?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8752 /* ~"I have lost a journal. Have you seen one?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8753 /* ~"Can you tell me about Dak'kon?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8754 /* ~"Do you know of a githzerai named Dak'kon?"~ */ GOTO 41
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #8755 /* ~"Can you tell me about this city?"~ */ GOTO 19
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #8757 /* ~"Can you tell me about Sigil?"~ */ GOTO 19
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8760 /* ~"I had some... specific... questions about this city."~ */ GOTO 22
  IF ~~ THEN REPLY #8763 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 22.0
  SAY #2344 /* ~"That one is not *known* to me."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8768 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8769 /* ~"I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8770 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 22.1
  SAY #2345 /* ~"That object is not *known* to me."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8771 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8772 /* ~"I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8773 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.4 16.5 49.0 54.0
  SAY #2346 /* ~"Ach'ali-Drowning."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
GlobalLT("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8774 /* ~Try and recall the translation...~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",2)
~ THEN REPLY #8775 /* ~Try and recall the translation...~ */ GOTO 20
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8776 /* ~"I'm sorry?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",1)
~ THEN REPLY #8777 /* ~"Uh... does that mean you will answer the question, or...?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #2347 /* ~Ach'ali-Drowning: Essentially, "A question whose answer would serve no purpose." This is usually a request to the speaker to make a vague or 'useless' question more specific.

*(The githzerai make their home on the Outer Plane of Limbo, a plane of chaos. Stability can only be achieved by shaping the chaotic matter of the plane with the mind; focus and discipline are necessary for this to occur. "Ach'ali" is a foolish githzerai of myth who was lost on Limbo, and she was barely able to form an island around herself. While adrift in the chaos matter, she met a planewalker who offered to help. Ach'ali asked so many useless and unfocused questions on how to return home, however, that the isle of matter dissolved around her, and she drowned in Limbo.)*~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8778 /* ~"Let me be more specific, then: Can you tell me about the Lady of Pain?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8779 /* ~"Let me be more specific, then: Can you tell me about the factions?"~ */ GOTO 24
  IF ~~ THEN REPLY #8780 /* ~"Let me be more specific, then: Can you tell me where this City is located?"~ */ GOTO 26
  IF ~~ THEN REPLY #8781 /* ~"Let me be more specific, then: Can you tell me where I might find work?"~ */ GOTO 34
  IF ~~ THEN REPLY #8782 /* ~"Let me be more specific, then: Can you tell me what there is of interest around here?"~ */ GOTO 33
  IF ~~ THEN REPLY #8783 /* ~"Never mind. I am sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 19.3
  SAY #2370 /* ~"Your question is a stab in the dark. An arrow without direction." His forehead wrinkles. "The answer to this question would fill the mind of an Anarch. There is no time for such an answer. Tell me plainly what you wish *known.*"~ */
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8784 /* ~"Let me be more specific, then: Can you tell me about the Lady of Pain?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8785 /* ~"Let me be more specific, then: Can you tell me about the factions?"~ */ GOTO 24
  IF ~~ THEN REPLY #8786 /* ~"Let me be more specific, then: Can you tell me where this City is located?"~ */ GOTO 26
  IF ~~ THEN REPLY #8787 /* ~"Let me be more specific, then: Can you tell me where I might find work?"~ */ GOTO 34
  IF ~~ THEN REPLY #8788 /* ~"Let me be more specific, then: Can you tell me what there is of interest around here?"~ */ GOTO 33
  IF ~~ THEN REPLY #8789 /* ~"Never mind. I am sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.6 17.1 18.1 23.0 24.1 25.0 26.1 27.2 28.1 29.1 30.2 31.1 32.1 33.1 34.2 35.1 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.3 45.1
  SAY #2371 /* ~The gith pauses, then speaks again. "Ask your questions. I will hear you."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8790 /* ~"I seek someone named Pharod. Do you know of him?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8791 /* ~"I have lost a journal. Have you seen one?"~ */ GOTO 18
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8792 /* ~"Can you tell me about Dak'kon?"~ */ GOTO 39
  IF ~  GlobalGT("Dakkon","GLOBAL",0)
!NearbyDialog("DDakkon")
~ THEN REPLY #8793 /* ~"Do you know of a githzerai named Dak'kon?"~ */ GOTO 41
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #8794 /* ~"Can you tell me about the Lady of Pain?"~ */ GOTO 23
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #8795 /* ~"Can you tell me about the factions?"~ */ GOTO 24
  IF ~~ THEN REPLY #8796 /* ~"Can you tell me where this City is located?"~ */ GOTO 26
  IF ~~ THEN REPLY #8797 /* ~"Can you tell me where I might find work?"~ */ GOTO 34
  IF ~~ THEN REPLY #8798 /* ~"Can you tell me what there is of interest around here?"~ */ GOTO 33
  IF ~~ THEN REPLY #8799 /* ~"I have no questions. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.0 21.0 22.4
  SAY #2372 /* ~"It is said she is the queen of this city. Her mind is not *known* to me."~ */
  IF ~~ THEN REPLY #8801 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8837 /* ~"Never mind. I am sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.1 21.1 22.5
  SAY #2373 /* ~"They are they that divide this city amongst themselves." His tone changes as he says this; it rings faintly of disgust.~ */
  IF ~~ THEN REPLY #8838 /* ~"You don't sound like you like these factions much."~ */ GOTO 25
  IF ~~ THEN REPLY #8839 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8840 /* ~"Never mind. I am sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #2374 /* ~"There is no strength in division. A divided city falls."~ */
  IF ~~ THEN REPLY #8841 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8842 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.2 21.2 22.6
  SAY #2375 /* ~"This city touches all places."~ */
  IF ~~ THEN REPLY #8843 /* ~"What do you mean?"~ */ GOTO 27
  IF ~~ THEN REPLY #8844 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8845 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2376 /* ~"This city is a cage with many doors. Each door touches another place." ~ */
  IF ~~ THEN REPLY #8846 /* ~"Why do you call the city a cage?"~ */ GOTO 28
  IF ~~ THEN REPLY #8853 /* ~"Where are these doors located?"~ */ GOTO 30
  IF ~~ THEN REPLY #8848 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8849 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #2377 /* ~"Any structure with locked doors is a cage." ~ */
  IF ~~ THEN REPLY #8850 /* ~"Locked doors?"~ */ GOTO 29
  IF ~~ THEN REPLY #8851 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8852 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #2378 /* ~"Every door in this cage is locked. Each door has its own key. Only then may you leave."~ */
  IF ~~ THEN REPLY #8853 /* ~"Where are these doors located?"~ */ GOTO 30
  IF ~~ THEN REPLY #8854 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8855 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 29.0
  SAY #2379 /* ~"Everywhere. They number as many as the places they touch."~ */
  IF ~~ THEN REPLY #8856 /* ~"I don't understand."~ */ GOTO 31
  IF ~~ THEN REPLY #8857 /* ~"Places? Like where?"~ */ GOTO 32
  IF ~~ THEN REPLY #8858 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8859 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #2380 /* ~"It is difficult to understand. It is not difficult to accept."~ */
  IF ~~ THEN REPLY #8860 /* ~"Where do these doors you speak of lead?"~ */ GOTO 32
  IF ~~ THEN REPLY #8861 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8862 /* ~"Never mind then. I am sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #2381 /* ~"The doors of this cage leads to everywhere. Every plane. Every world."~ */
  IF ~~ THEN REPLY #8863 /* ~"I don't understand."~ */ GOTO 31
  IF ~~ THEN REPLY #8864 /* ~"I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8865 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 20.4 21.4 22.8
  SAY #2382 /* ~"You are not *known* to me. What is interesting to you may not interest me."~ */
  IF ~~ THEN REPLY #8866 /* ~"I'm interested in work."~ */ GOTO 34
  IF ~~ THEN REPLY #8867 /* ~"Never mind. I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8868 /* ~"Never mind. I am sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 20.3 21.3 22.7 33.0
  SAY #2383 /* ~"There is little work here. You can hunt rats for bounties. You can gather the dead."~ */
  IF ~~ THEN REPLY #8870 /* ~"Bounties on rats?"~ */ GOTO 35
  IF ~~ THEN REPLY #8871 /* ~"Gather the dead?"~ */ GOTO 36
  IF ~~ THEN REPLY #8872 /* ~"I see. I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8873 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 36.1 37.1 38.0
  SAY #2384 /* ~"The city pays for rat tails. Take them to one of their Vermin Control Offices."~ */
  IF ~~ THEN REPLY #8875 /* ~"What was that other job you mentioned? Gathering the dead?"~ */ GOTO 36
  IF ~~ THEN REPLY #8876 /* ~"I see. I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8877 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #2385 /* ~"Many die every night in this city. Take the dead to the Men of Dust. They will buy the body."~ */
  IF ~~ THEN REPLY #8878 /* ~"The Dustmen will pay for the dead? Why?"~ */ GOTO 37
  IF ~~ THEN REPLY #8879 /* ~"What was that other work you mentioned? The bounties on rats?"~ */ GOTO 35
  IF ~~ THEN REPLY #8880 /* ~"I see. I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8881 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2386 /* ~"The Men of Dust care for the dead. They perform last rites on each corpse."~ */
  IF ~~ THEN REPLY #8882 /* ~"All right... go on."~ */ GOTO 38
  IF ~~ THEN REPLY #8883 /* ~"I see. What was that other work you mentioned? The bounties on rats?"~ */ GOTO 35
  IF ~~ THEN REPLY #8884 /* ~"Never mind. I had some other... specific... questions about the city..."~ */ GOTO 22
  IF ~~ THEN REPLY #8885 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #2387 /* ~"Many die. The Men of Dust cannot gather them all themselves. They do not want the dead to remain in the streets. They pay others to bring them the dead."~ */
  IF ~~ THEN REPLY #8886 /* ~"What was that other work you mentioned? The bounties on rats?"~ */ GOTO 35
  IF ~~ THEN REPLY #8887 /* ~"I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8888 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 16.2 22.2
  SAY #2388 /* ~"He walks with you." His forehead creases. "How is it he is not *known* to you?"~ */
  IF ~~ THEN REPLY #8889 /* ~"I was hoping you could tell me something about him."~ */ GOTO 40
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8890 /* ~"Never mind. I had some other questions..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8891 /* ~"Never mind. I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8892 /* ~"Never mind. I am sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2389 /* ~"He is not speechless. If you would *know* him, put the questions to him. Do not insult us both by treating one as a statue."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8893 /* ~"Never mind then. I had some other questions..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8894 /* ~"Never mind. I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8895 /* ~"Never mind. I am sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 16.3 22.3
  SAY #2390 /* ~"The name is *known* to me. Dak'kon is a *zerth* who is not one of the People."~ */
  IF ~~ THEN REPLY #8896 /* ~"A *zerth?*"~ */ GOTO 42
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8897 /* ~"I see. I had some other questions..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8898 /* ~"I see. I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8899 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #2391 /* ~"One that *knows* the words of Zerthimon. In *knowing* his words, they *know* themselves."~ */
  IF ~~ THEN REPLY #8900 /* ~"Zerthimon?"~ */ GOTO 43
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8901 /* ~"I see. I had some other questions..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8902 /* ~"I see. I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8903 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #2392 /* ~"Zerthimon *knew* the githzerai before they knew themselves." The githzerai becomes silent for a moment, as if in reverence, then speaks again. "He defined our People. He gave them one mind. Those that *know* his words are called the *zerth.*"~ */
  IF ~~ THEN REPLY #8904 /* ~"And Dak'kon is a *zerth?*"~ */ GOTO 44
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8905 /* ~"I see. I had some other questions..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8906 /* ~"I see. I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8907 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #2393 /* ~"Dak'kon is a *zerth*..." For the first time, the githzerai seems at a loss. He pauses for a moment, as if trying to find the right words. ~ */
  IF ~~ THEN REPLY #8908 /* ~"Yes?"~ */ GOTO 45
  IF ~~ THEN REPLY #8909 /* ~Wait for him to explain.~ */ GOTO 45
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8910 /* ~"Never mind. I had some other questions..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8911 /* ~"Never mind. I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8912 /* ~"Never mind. I am sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #2394 /* ~"Dak'kon is a *zerth* who is said not to *know* the words of Zerthimon. It is said his mind is divided. It is said he does not *know* himself. These things are poison to a githzerai. If these sayings have weight, then he is not one of the People."~ */
  IF ~  Global("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8913 /* ~"I see. I had some other questions..."~ */ GOTO 16
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #8914 /* ~"I see. I had some other... specific... questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #8915 /* ~"Thank you... that is all I wished to know. Farewell."~ */ EXIT
END

IF ~  Global("Know_Gith","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #8666 /* ~This gith turns to face you as you approach. His eyes are like two black stones; they briefly flicker over your frame, then he locks gazes with you. Although he looks humanoid, he has a yellow cast to his skin and gaunt features. He has a thin, angular frame; his limbs look like they're made of nothing but strings of muscle knotted around each other. His clothing is a curious blend of sharp colors and dull, mud-stained browns.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8916 /* ~"Zerchai's kin bow to you."~ */ GOTO 47
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8917 /* ~"Hail, sword-ringer."~ */ GOTO 48
  IF ~  GlobalLT("Githzerai","GLOBAL",5)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8918 /* ~"Greetings."~ */ GOTO 5
  IF ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
~ THEN REPLY #8919 /* ~"Greetings."~ */ GOTO 1
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #8920 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #8921 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #8667 /* ~The gith's eyes lock with yours. He pauses for a moment, studying you, then replies in broken common. His accent makes it difficult to understand him - it's like he takes every word, snaps it, then drags out every vowel for good measure. If you understand him correctly, he just said, "And the traveler is welcomed."~ */
  IF ~~ THEN REPLY #8922 /* ~"And the traveler is pleased."~ */ GOTO 49
  IF ~~ THEN REPLY #8923 /* ~"I would know this city. Will you hear me?"~ */ GOTO 49
  IF ~~ THEN REPLY #8924 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.1
  SAY #8668 /* ~The gith's eyes lock with yours. He pauses for a moment, studying you, then replies in broken common. His accent makes it difficult to understand him - it's like he takes every word, snaps it, then drags out every vowel for good measure. If you understand him correctly, he just said, "You are not one *known* to me." He placed a strange emphasis over the word *known.* ~ */
  IF ~~ THEN REPLY #8925 /* ~"I would know this city. Will you hear me?"~ */ GOTO 49
  IF ~~ THEN REPLY #8926 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.0 47.1 48.0
  SAY #8669 /* ~The gith's stone-faced expression cracks slightly, and his challenging stare breaks into one of curiosity. "You are not one *known* to me." His gaze flickers over you again, re-appraising you. "I will hear you." ~ */
  IF ~~ THEN REPLY #8927 /* ~"Very well. I had some questions..."~ */ GOTO 19
  IF ~~ THEN REPLY #8928 /* ~Leave the man alone.~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
Global("Evil_Githzerai_1","GLOBAL",0)
~ THEN BEGIN 50 // from:
  SAY #8670 /* ~This gith turns to face you as you approach. Like Dak'kon, he has a yellow cast to his skin and a gaunt frame. His clothing is a curious blend of sharp colors and dull, mud-stained browns. The gith's dead-black eyes flicker over Dak'kon, then you.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8929 /* ~"Zerchai's kin bow to you."~ */ GOTO 55
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8930 /* ~"Hail, sword-ringer."~ */ GOTO 55
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8931 /* ~"Greetings."~ */ GOTO 51
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8932 /* ~"Greetings."~ */ GOTO 55
  IF ~~ THEN REPLY #8933 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.2
  SAY #8671 /* ~The man ignores you and turns to Dak'kon instead. He speaks several clipped words in a low tongue, which you can't understand. His expression doesn't change as he speaks, nor does he makes any hand motions, so you can't even hazard a guess at what he's saying. Dak'kon replies with an arrowflight of words in the same tongue, and the githzerai falls silent.~ */
  IF ~~ THEN REPLY #8934 /* ~"Uh... what's he saying, Dak'kon?"~ */ GOTO 52
  IF ~~ THEN REPLY #8935 /* ~"Never mind, Dak'kon. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #8672 /* ~The githzerai turns to you as you speak, then turns back to Dak'kon and speaks again, this time at great length. Dak'kon replies - it sounds like the same arrowflight of words as before. The githzerai falls silent again. Dak'kon says something else, and the githzerai responds with another lengthy stream of words.~ */
  IF ~~ THEN REPLY #8936 /* ~"Dak'kon, can you ask him some questions for me?"~ */ EXTERN ~DDAKKON~ 17
  IF ~~ THEN REPLY #8937 /* ~"Never mind, Dak'kon. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #8673 /* ~Empty node.~ */
  IF ~~ THEN REPLY #8938 /* ~No response.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #8674 /* ~"Your words are *known* to me," the githzerai interrupts. "Face me and speak your mind. I will hear you."~ */
  IF ~~ THEN REPLY #8939 /* ~"Very well. I had some questions..."~ */ GOTO 19
  IF ~~ THEN REPLY #8940 /* ~Leave the man alone.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 50.0 50.1 50.3
  SAY #8675 /* ~The githzerai ignores you and turns to Dak'kon instead. He speaks several clipped words in a strange, low tongue - if you understand the inflections correctly, he just said: "All beholden, *zerth.*"~ */
  IF ~~ THEN REPLY #8941 /* ~Wait and listen to Dak'kon's reply.~ */ EXTERN ~DDAKKON~ 11
  IF ~~ THEN REPLY #8942 /* ~"Dak'kon, never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #8676 /* ~The githzerai turns to you as you speak, then turns back to Dak'kon and speaks again, this time at great length. ~ */
  IF ~~ THEN REPLY #8943 /* ~Try and translate...~ */ GOTO 57
  IF ~~ THEN REPLY #8944 /* ~"Dak'kon, never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #8677 /* ~You have difficulty deciphering the sentence structure, but you think he said: "There is one by Dak'kon's name who is not one of the People. It is said that his mind is divided. It is said that he is a *zerth* that does not *know* the words of Zerthimon."~ */
  IF ~~ THEN REPLY #8945 /* ~Wait and listen to Dak'kon's reply.~ */ EXTERN ~DDAKKON~ 12
  IF ~~ THEN REPLY #8946 /* ~"Dak'kon, never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #8678 /* ~The gith's response is so quick it almost has the force of an attack behind it. You're not certain if you got the entire meaning, but it seems the gith just issued some sort of challenge to Dak'kon in the form of a question: "*Zerth,* do you *obey* the words of this human?"~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8947 /* ~Interrupt: "Dak'kon obeys. He is my slave."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 61
  IF ~~ THEN REPLY #8948 /* ~Interrupt: "Yes, Dak'kon takes orders from me. He is my servant."~ */ GOTO 61
  IF ~~ THEN REPLY #8949 /* ~Interrupt: "I am his superior. Dak'kon follows me on my journey."~ */ GOTO 61
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8950 /* ~Wait and see what Dak'kon says...~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 13
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8951 /* ~Wait and see what Dak'kon says...~ */ EXTERN ~DDAKKON~ 13
  IF ~~ THEN REPLY #8952 /* ~"Dak'kon, never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #8679 /* ~The gith falls silent for a time. "This matter carries the stink of the illithid about it." His eyes flicker across Dak'kon's face. "I see no chains upon you. You speak your mind. How did this blasphemy come to be?"~ */
  IF ~~ THEN REPLY #8953 /* ~Listen.~ */ EXTERN ~DDAKKON~ 14
  IF ~~ THEN REPLY #8954 /* ~"Dak'kon, never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #8680 /* ~The gith does not look at you. His attention is focused on Dak'kon. "He may speak. I will hear him." ~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 15
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 58.2
  SAY #8681 /* ~The gith turns to you and locks gazes with you. Dak'kon keeps his gaze focused on the gith.~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8955 /* ~"That stare of yours is beginning to anger me. Now, speak to me, not my slave. Will you answer my questions or not?"~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 63
  IF ~~ THEN REPLY #8956 /* ~"I would prefer that you spoke to me, not my companion. Will you answer my questions or not?"~ */ GOTO 9
  IF ~~ THEN REPLY #8957 /* ~"Is there something wrong?"~ */ GOTO 63
  IF ~~ THEN REPLY #8958 /* ~"Forget this, Dak'kon. Let's leave."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 68.2 68.3
  SAY #8682 /* ~The gith's blade vanishes, and he steps back. Dak'kon's blade lowers. The gith hisses at Dak'kon. "Vilquar's eye was not as bright, nor Selqant's heart as black. This shall not be forgotten." He looks like he is about to leave.~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8959 /* ~"Afraid are you, githyanki dog? Attack me if you dare."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8960 /* ~"Afraid are you, gith dog? Attack me if you dare."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8961 /* ~Let him leave.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #8962 /* ~Attack the gith while he is about to leave.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.0 61.2
  SAY #8683 /* ~The gith turns to Dak'kon. "The words of this human are poison to my ears. Must I hear him?" ~ */
  IF ~~ THEN REPLY #8963 /* ~"Speak to me, not to him, gith."~ */ GOTO 64
  IF ~~ THEN REPLY #8964 /* ~"Is there something wrong?"~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8965 /* ~Wait and see what Dak'kon says.~ */ EXTERN ~DDAKKON~ 7
  IF ~~ THEN REPLY #8966 /* ~"Forget this, Dak'kon. Let's leave."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #8684 /* ~For the barest of seconds, the gith doesn't seem to have heard you. Then there is the whisper of steel and a blade sprouts from the gith's hands. Instantly, Dak'kon's blade is at the ready: It looks like he intends to attack the gith if he makes a move toward you.~ */
  IF ~~ THEN REPLY #8967 /* ~"Go on. Attack me, gith. See what happens."~ */ GOTO 65
  IF ~~ THEN REPLY #8968 /* ~"If he takes a step toward me, Dak'kon, I want you to kill him." ~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 65
  IF ~~ THEN REPLY #8969 /* ~"Everybody calm down. I just want some questions answered."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0 64.1 64.2
  SAY #8685 /* ~Despite Dak'kon's blade at the ready, the gith does not take his eyes off of you. His next question seems to be for Dak'kon. "Is your mind divided on this matter?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 8
END

IF ~~ THEN BEGIN 66 // from:
  SAY #8686 /* ~"This matter has the echoes of illithids in it, *zerth.* You have drawn your blade against one of the People for his sake. In Zerthimon's name, I cannot permit this offense to your spirit nor allow his words to fall unanswered with anything less than his blood."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 9
END

IF ~~ THEN BEGIN 67 // from:
  SAY #8687 /* ~The gith faces you, but his attention still seems focused on Dak'kon. "How did this blasphemy come to be, *zerth?*"~ */
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8970 /* ~Wait and see what Dak'kon says...~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ EXTERN ~DDAKKON~ 10
  IF ~  GlobalGT("Dictionary_Githzerai_Tcha","GLOBAL",0)
~ THEN REPLY #8971 /* ~Wait and see what Dak'kon says...~ */ EXTERN ~DDAKKON~ 10
  IF ~~ THEN REPLY #8972 /* ~Attack the gith while he is distracted.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #8688 /* ~The gith waits. He seems torn. ~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #8973 /* ~"Go on, githyanki dog. Attack me if you dare."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #8974 /* ~"Go on, gith dog. Attack me if you dare."~ */ DO ~SetGlobal("BD_DAKKON_MORALE","GLOBAL",0)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8975 /* ~Wait, see how this ends...~ */ DO ~SetGlobal("Dictionary_Githzerai_Vilquar","GLOBAL",1)
~ GOTO 62
  IF ~  GlobalGT("Dictionary_Githzerai_Vilquar","GLOBAL",0)
~ THEN REPLY #8976 /* ~Wait, see how this ends...~ */ GOTO 62
  IF ~~ THEN REPLY #8977 /* ~Attack the gith while he is distracted.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~  Global("Evil_Githzerai_1","GLOBAL",1)
~ THEN BEGIN 69 // from:
  SAY #8689 /* ~This gith turns to face you as you approach. His eyes are like two black stones; they briefly flicker over your frame, then he locks gazes with you. Although he looks humanoid, he has a yellow cast to his skin and gaunt features. He has a thin, angular frame; his limbs look like they're made of nothing but strings of muscle knotted around each other. His clothing is a curious blend of sharp colors and dull, mud-stained browns.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8978 /* ~"Zerchai's kin bow to you."~ */ GOTO 70
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #8979 /* ~"Hail, sword-ringer."~ */ GOTO 70
  IF ~~ THEN REPLY #8980 /* ~"Greetings."~ */ GOTO 70
  IF ~~ THEN REPLY #8981 /* ~Leave the gith alone.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 69.1 69.2
  SAY #8690 /* ~There is the whisper of steel, and a blade sprouts from the githzerai's hand. "You are *known* to me. You have attacked one of the People. I will allow the stones to drink deep of your blood." ~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8982 /* ~Lie: "You ask a man who travels with a githzerai *zerth* if he has killed a githzerai? You must have the wrong person."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 73
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #8983 /* ~Lie: "There must be a mistake. I have never attacked one of your people."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 71
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #8984 /* ~Lie: "I didn't attack anyone. You must have mistaken me for someone else."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #8985 /* ~Attack him first.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8986 /* ~Ignore the gith and walk away.~ */ GOTO 12
END

IF ~~ THEN BEGIN 71 // from: 70.1
  SAY #8691 /* ~The gith hesitates. "There is no mistake. The description - a scarred human male - is true." ~ */
  IF ~~ THEN REPLY #8987 /* ~Lie: "Look, this is a huge city. I am not the one you're looking for. I mean neither you nor your people any harm."~ */ GOTO 72
  IF ~~ THEN REPLY #8988 /* ~Attack him first.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #8692 /* ~The gith's forehead creases, then after a moment he lowers his blade. "Forgive me. I shall be more cautious with my words in the future." He still seems suspicious.~ */
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #8989 /* ~"Actually, you were right the first time. I was just waiting for you to drop your guard..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #8990 /* ~"Actually, you were right the first time. I was just waiting for you to drop your guard..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Githzerai_3","GLOBALGood",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #8991 /* ~"Please do. Farewell."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #8693 /* ~The gith hesitates. "There is no mistake. The description - a scarred human male - is true." He glances at Dak'kon. "Do you speak for this man, *zerth?*"~ */
  IF ~~ THEN REPLY #8992 /* ~"Tell him he's mistaken, Dak'kon."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~DDAKKON~ 16
  IF ~~ THEN REPLY #8993 /* ~Attack him while he is looking at Dak'kon.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END
