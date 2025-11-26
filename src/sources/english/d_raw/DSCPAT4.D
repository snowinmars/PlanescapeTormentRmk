// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10941 /* ~This is a woman with a far-off cast to her face. She is not exactly young, nor is she exactly old. Perhaps it's the expression of slight disbelief that's etched across her features. The expression says that she doesn't believe her senses. When she focuses on you, she speaks sharply, but not angrily. "Do you need something?"~ */
  IF ~~ THEN REPLY #10942 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #10943 /* ~"I'm looking for a journal."~ */ GOTO 3
  IF ~~ THEN REPLY #10944 /* ~"I'm looking for a Collector by the name of Pharod. Have you seen or heard of him?"~ */ GOTO 12
  IF ~~ THEN REPLY #10945 /* ~"What can you tell me about this place?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10946 /* ~"Who is that burning by the entryway?"~ */ GOTO 5
  IF ~~ THEN REPLY #10947 /* ~"What was that you and your friend were saying about Sigil?"~ */ GOTO 6
  IF ~~ THEN REPLY #10948 /* ~"Nothing. Good day."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10949 /* ~"Do you need something?"~ */
  IF ~~ THEN REPLY #10950 /* ~"The answers to some questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10951 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10952 /* ~"I'm Kiarus. Kiarus Thorntongue. I'm here with my cousin, because my uncle doesn't want me wandering the Hive on my own. He doesn't seem to think I'm competent on my own. He may be right. I don't know this city or this plane very well. I'm not from here. I'm from the Prime."~ */
  IF ~~ THEN REPLY #10953 /* ~"The Prime? What's that?"~ */ GOTO 9
  IF ~~ THEN REPLY #10954 /* ~"You're from the Prime?"~ */ GOTO 10
  IF ~~ THEN REPLY #10955 /* ~"Well, you still might be able to answer my questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10956 /* ~"Then you probably can't answer my questions. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10957 /* ~"Sorry. I'm new in town, and I can assure you I haven't seen anything that I'd recognize as a journal - though I am told that something that appears to be a person could in actuality be the journal for some other creature. I'm still trying to get my head around the philosophy here. It's a little overwhelming, but they say if you stick with it, it becomes much easier."~ */
  IF ~~ THEN REPLY #10958 /* ~"That's a relief. I'd like to get some answers from you."~ */ GOTO 7
  IF ~~ THEN REPLY #10959 /* ~"I certainly hope so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10960 /* ~"This is, I understand, the Smoldering Corpse Tavern, named after that fellow near the entrance. From what I can see, it's a dive where scum mixes with cream to create an entirely unappetizing new flavor. Of course, being from the Prime, my perceptions might be jaundiced."~ */
  IF ~~ THEN REPLY #10961 /* ~"You're from the Prime? What does that mean?"~ */ GOTO 9
  IF ~~ THEN REPLY #10962 /* ~"You're from the Prime? What are you doing here?"~ */ GOTO 10
  IF ~~ THEN REPLY #10963 /* ~"That's possible. Things are not always as they seem here. Can you answer some questions for me?"~ */ GOTO 7
  IF ~~ THEN REPLY #10964 /* ~"That's possible. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10965 /* ~"That is Ignus. He attempted to burn down a portion of the city some time back - centuries? - and was punished by being turned into a living flame. A nasty fate, but fitting for a known pyromaniac and arsonist. From what I have read, it'd be best to leave him well alone."~ */
  IF ~~ THEN REPLY #10966 /* ~"How do you know so much about the place? Aren't you a prime?"~ */ GOTO 11
  IF ~~ THEN REPLY #10967 /* ~"I'd like to ask you more questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10968 /* ~"Thank you. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10969 /* ~"He's not my friend, he's my cousin. He was just telling me that this isn't the center of the multiverse, despite it being located smack in the middle of the Outlands, despite it being the focal point of portals from all over the cosmos - there isn't a known place with more - despite all the quarreling the gods do over it, despite the sheer variety and concentration of power that accumulates here. There is no place like this in the cosmos, and he's telling me it's nothing special? Ha!"~ */
  IF ~~ THEN REPLY #10970 /* ~"That's an interesting perspective. Perhaps you both have elements of truth?"~ */ GOTO 8
  IF ~~ THEN REPLY #10971 /* ~"Be that as it may, I'd like to ask more questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10972 /* ~"Interesting. I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 2.2 3.0 4.2 5.1 6.1 8.0 9.0 10.0 11.0 12.1 13.0
  SAY #10973 /* ~"Ask away. I'll answer if I can."~ */
  IF ~~ THEN REPLY #10974 /* ~"Who are you?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10975 /* ~"I'm looking for a journal."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10976 /* ~"I'm looking for a Collector by the name of Pharod. Have you seen or heard of him?"~ */ GOTO 12
  IF ~~ THEN REPLY #10977 /* ~"What can you tell me about this place?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10978 /* ~"Who is that burning by the entryway?"~ */ GOTO 5
  IF ~~ THEN REPLY #10979 /* ~"What was that you and your friend were saying about Sigil?"~ */ GOTO 6
  IF ~~ THEN REPLY #10980 /* ~"Nothing. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #10981 /* ~"Perhaps you're correct, but I find that such relativism is often beyond me. Either the place is important, or it is not. Paradox may fuel the planes, but there must be sense to it somehow."~ */
  IF ~~ THEN REPLY #10982 /* ~"Not necessarily... but I haven't time to argue this right now. Instead, I'd like to ask more questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10983 /* ~"I hope so. I need answers. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0 4.0
  SAY #10984 /* ~She cocks her head and looks at you oddly. "The Prime Material Plane? The place where the belief the Outer Planes are shaped of is born? The world? Stars, moons, and so forth? Belief and reality? I sure hope you know what the Prime is, because it's an essential part of planar knowledge."~ */
  IF ~~ THEN REPLY #10985 /* ~"I knew that. I had other questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10986 /* ~"Oh. Well, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 4.1
  SAY #10987 /* ~"Visiting. Expanding my horizons. The Prime is a fine place to live, but it's a little too... real, I suppose. My uncle gives each of his nieces and nephews a few years in the planes, and allows us to remain here if we so desire. I think I might so desire. I am fascinated and repelled. But then, I suppose that's the nature of the planes, isn't it?"~ */
  IF ~~ THEN REPLY #10988 /* ~"As I understand it, yes. Do you have enough knowledge to give me some answers?"~ */ GOTO 7
  IF ~~ THEN REPLY #10989 /* ~"Yes, it is. Farewell, and good luck."~ */ EXIT
  IF ~~ THEN REPLY #10990 /* ~"Yes. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10991 /* ~"The uncle Cielan and I share is a wizard who makes his home here. He brings his relatives to the planes on occasion to show them the delights and horrors of the multiverse. I wanted to be sure I was ready for the trip, and so I prepared myself. Extensively. I probably know more about the city than my cousin who's lived here his entire life." She gestures disparagingly at the man nearby.~ */
  IF ~~ THEN REPLY #10992 /* ~"That's quite an uncle. Can I ask some other questions?"~ */ GOTO 7
  IF ~~ THEN REPLY #10993 /* ~"That's quite a gift. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 7.2
  SAY #10994 /* ~"A Collector? I don't believe I've heard the term..." She pauses, thinking. "Is that one of those haulers of the dead? The poor folk who collect the Hive's innumerable victims for money?"~ */
  IF ~~ THEN REPLY #10995 /* ~"Yes."~ */ GOTO 13
  IF ~~ THEN REPLY #10996 /* ~"It's apparent you don't know the man, so answer some other questions for me."~ */ GOTO 7
  IF ~~ THEN REPLY #10997 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #10998 /* ~"From what I understand, they mostly congregate in the areas of the Hive that are farther from the Mortuary, where there is more life and more violence. Your best bet might be to concentrate your search away from the house of the dead."~ */
  IF ~~ THEN REPLY #10999 /* ~"I might just do that, but first I'd like to ask another question of you."~ */ GOTO 7
  IF ~~ THEN REPLY #11000 /* ~"That's a good suggestion. Thank you, and farewell."~ */ EXIT
END
