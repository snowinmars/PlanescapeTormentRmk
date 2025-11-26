// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #37971 /* ~~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #37972 /* ~You see a young woman who is trying to get your attention. She is wearing shoddy clothes but her demeanor is one of elegance, unlike that of the people who surround her. Upon closer inspection, you notice that her skin is clean and smooth, lacking the yellow tint of the inhabitants of this ward. She notices your approach and smiles at you.~ */
  IF ~~ THEN REPLY #37973 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #37974 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37975 /* ~"I thank the powers that you noticed me. I am in need of the services of a mercenary..." She pauses and examines you more carefully. "If appearances are any indication, you would seem to be such an individual."~ */
  IF ~~ THEN REPLY #37976 /* ~"Appearances can be deceptive."~ */ GOTO 3
  IF ~~ THEN REPLY #37977 /* ~"What exactly is it that you want of me?"~ */ GOTO 4
  IF ~~ THEN REPLY #37978 /* ~"I don't like the sound of this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37979 /* ~A look of concern crosses her face. "Yes, cutter. Forgive me, I did not mean to offend you. I am in a situation of... well, desperation. I have exhausted all resources available to me in order to remedy my situation but..."~ */
  IF ~~ THEN REPLY #37980 /* ~"What exactly is it that you want of me?"~ */ GOTO 4
  IF ~~ THEN REPLY #37981 /* ~"I don't like the sound of this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #37982 /* ~She nods to you. "The heart of the matter is that I am to be sold into slavery for a crime I did not commit. I am in need of a champion, someone who will help me prove my innocence and free me from this fate..." She pauses and looks at you expectantly.~ */
  IF ~~ THEN REPLY #37983 /* ~"Tell me exactly what's going on."~ */ GOTO 5
  IF ~~ THEN REPLY #37984 /* ~"I don't like the sound of this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37985 /* ~She thinks for a moment. "This is long in the telling, cutter, please bear with me."~ */
  IF ~~ THEN REPLY #37986 /* ~"Go on."~ */ GOTO 6
  IF ~~ THEN REPLY #37987 /* ~"I don't have time for this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 25.1 26.1
  SAY #37988 /* ~She sighs as she begins her tale. "My husband died recently and left me his business. I am not business-oriented so I decided to sell. Not long afterward I was contacted by a lender saying a loan on the business had not been paid..." She pauses to gather her thoughts.~ */
  IF ~~ THEN REPLY #37989 /* ~"Go on."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37990 /* ~"I examined all the documents my husband kept and found that there had indeed been a loan taken, but it had just recently been paid in full. I explained this to the lender and, a few days later, he asked for a copy of the document... It was nowhere to be found." She looks concerned and pauses to think.~ */
  IF ~~ THEN REPLY #37991 /* ~"Go on."~ */ GOTO 8
  IF ~~ THEN REPLY #51297 /* ~"I think I've heard enough. Get to the point."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37992 /* ~"Well, when I could not prove that the loan was paid, the lender took me before the court. My monies were taken and applied to the balance owed. Since it did not pay off the loan, I am to be sold on the block to try and recover the remaining amount due." She gives you a forlorn look.~ */
  IF ~~ THEN REPLY #37993 /* ~"I don't understand, why sell you into slavery?"~ */ GOTO 9
  IF ~~ THEN REPLY #37994 /* ~"I think I've heard enough. Get to the point."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #37995 /* ~She shrugs. "It serves many purposes. First, it keeps the prisons relatively clear of all but the vilest criminals. Second, the sale of the convicted is used to pay for any damages, costs, or fees involved in the case. Finally, the convicted still serves a sentence from which they are eventually released... supposedly as better citizens."~ */
  IF ~~ THEN REPLY #37996 /* ~"This is all fascinating, but I don't see how I can help you."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.1 9.0
  SAY #37998 /* ~"I... I need someone to find the missing document, the one that proves the loan was paid. Or if you could purchase my contract, I could pay you back..." She gives you a pleading look. "I can't spend the next five years of my life in this ward, cutter. It will kill me! Surely you've noticed the illness shared by all who live here?"~ */
  IF ~~ THEN REPLY #37999 /* ~"No, what illness are you talking about?"~ */ GOTO 11
  IF ~~ THEN REPLY #38000 /* ~"Yes, the yellow skin and coughing..."~ */ GOTO 12
  IF ~~ THEN REPLY #38001 /* ~"None of this is my concern. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38002 /* ~She gestures at the people around her. "Look at them, cutter. Notice the yellow skin? The persistent cough? Now look above you, at the billowing clouds of smoke that pass for air here..." She points over her head. "It kills you unless you can afford a healer. As a slave, I doubt I will be able to afford one."~ */
  IF ~~ THEN REPLY #38003 /* ~"So that's why everyone has the yellow skin..."~ */ GOTO 12
  IF ~~ THEN REPLY #38004 /* ~"None of this is my concern. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 25.0 26.0
  SAY #38005 /* ~She nods her head. "Yes, cutter. Please, can you find it in your heart to help me..." She looks at you nervously. "Please..."~ */
  IF ~~ THEN REPLY #38006 /* ~"What's in it for me if I help you?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trist_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~~ THEN REPLY #38007 /* ~Truth: "You've been found guilty in a court of law and only the law can help you."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trist_1","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #38008 /* ~"Yes, I'll help you. I have some questions though..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~A woman named Trist is to be sold into slavery unless a missing loan document can be found. I have agreed to help her.~ */ GOTO 13
  IF ~~ THEN REPLY #38009 /* ~"No, I don't want to get involved."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38010 /* ~"I need some time to think about this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.2 15.1 16.0 17.0 18.4 19.1 20.0 21.0 22.0 23.0 27.1 35.1 36.1 37.0
  SAY #38011 /* ~She nods her head eagerly. "Ask anything, cutter."~ */
  IF ~~ THEN REPLY #38012 /* ~"What's the lender's name?"~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #38013 /* ~"Who do I talk to about your contract?"~ */ GOTO 16
  IF ~~ THEN REPLY #38014 /* ~"Could you have misplaced the loan document?"~ */ GOTO 17
  IF ~~ THEN REPLY #38015 /* ~"Do you think the loan document could have been stolen?"~ */ GOTO 18
  IF ~~ THEN REPLY #38016 /* ~"Have you explained any of this to these courts you spoke of?"~ */ GOTO 21
  IF ~~ THEN REPLY #38017 /* ~"I think I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38018 /* ~"I know his name well, cutter. After all I have been through, I will not likely forget it..." She gets a far-away look and then shudders for a moment. "Byron Pikit is his name." She pauses for a moment. "And his associate may be someone named Lenny."~ */
  IF ~~ THEN REPLY #38019 /* ~"Who is this Lenny?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38020 /* ~"Where can I find Byron?"~ */ GOTO 15
  IF ~~ THEN REPLY #38021 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38022 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 36.0
  SAY #38023 /* ~She thinks for a moment. "I think he can be found in or around the open-air market. Forgive me, but I am not certain."~ */
  IF ~~ THEN REPLY #38024 /* ~"You mentioned Lenny. Who is he?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38025 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38026 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #38027 /* ~"That would be Deran the auctioneer. He's usually over there, on the block." She points to the front of the platform.~ */
  IF ~~ THEN REPLY #38028 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38029 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #38030 /* ~She shakes her head. "No, cutter. I am a very meticulous person. I kept the document in a lock-box in my husband's study. It never left that room..."~ */
  IF ~~ THEN REPLY #38031 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38032 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.3
  SAY #38033 /* ~She shrugs. "I don't know. Why would anyone steal that, yet leave other valuables be? It makes little sense to me."~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"Well... maybe the lender stole the document so that you'd pay for the loan twice..."~ */ GOTO 19
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"Well... it was just a thought..."~ */ GOTO 22
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"Well... maybe the lender stole the document so that you'd pay for the loan twice..."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"Well... it was just a thought..."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #38036 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38037 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.2
  SAY #38038 /* ~She looks at you in shock. "That... that is a terrible thought!" She hesitates and then begins to tap her chin with a finger as she thinks. "But also a most ingenious one, cutter. This Byron Pikit does strike me as a knight of the post."~ */
  IF ~~ THEN REPLY #38039 /* ~"A what?"~ */ GOTO 20
  IF ~~ THEN REPLY #38040 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38041 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #38042 /* ~She gives you a quizzical look. "A thief or a cheat, cutter. Such are called knights of the post, or of the cross-trade."~ */
  IF ~~ THEN REPLY #38043 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38044 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.4
  SAY #38045 /* ~She nods her head. "Oh yes, cutter. I've explained my situation to many. You are the first to be willing to help me." She smiles warmly at you.~ */
  IF ~~ THEN REPLY #38046 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38047 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1 18.3
  SAY #38048 /* ~She shrugs. "A worthy thought, cutter. It bears merit."~ */
  IF ~~ THEN REPLY #38050 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38113 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #38051 /* ~She stares at you blankly for some time then a look of concern crosses her face. "I... I have nothing to give you, cutter. I have lost everything." She appears desperate now. "Please don't leave me to this fate..."~ */
  IF ~~ THEN REPLY #38052 /* ~"Yes, I'll help you. I have some questions though..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~A woman named Trist is to be sold into slavery unless a missing loan document can be found. I have agreed to help her.~ */ GOTO 13
  IF ~~ THEN REPLY #38053 /* ~"No, I don't want to get involved."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38054 /* ~"I need some time to think about this. Farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #38055 /* ~You see Trist. She looks at you with desperation in her eyes. "Hello again, cutter. May I speak with you about a matter of some concern?"~ */
  IF ~~ THEN REPLY #38056 /* ~"All right."~ */ GOTO 6
  IF ~~ THEN REPLY #38057 /* ~"I don't have time right now. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #38058 /* ~You see Trist. She looks at you with desperation in her eyes. "Hello again, cutter. Have you come to help me, perhaps?"~ */
  IF ~~ THEN REPLY #38059 /* ~"You're still looking for someone to help with your problem?"~ */ GOTO 12
  IF ~~ THEN REPLY #38060 /* ~"Tell me your story again."~ */ GOTO 6
  IF ~~ THEN REPLY #38061 /* ~"I'm not interested. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #38062 /* ~You see Trist. She looks at you with desperation in her eyes. "Hello again, cutter. Have you come to help me perhaps? Have you changed your mind?"~ */
  IF ~~ THEN REPLY #38063 /* ~"You're still looking for someone to help with your problem?"~ */ GOTO 12
  IF ~~ THEN REPLY #38064 /* ~"Tell me your story again."~ */ GOTO 6
  IF ~~ THEN REPLY #38065 /* ~"No, I'm not interested. Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #38066 /* ~You see Trist. She smiles at your approach and looks hopeful. "Have you found the document, cutter? Can you free me?"~ */
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #38067 /* ~"Yes, I will give it to Deran and he will free you."~ */ GOTO 28
  IF ~~ THEN REPLY #38068 /* ~"I need to ask you some questions again..."~ */ GOTO 13
  IF ~~ THEN REPLY #67814 /* ~"No, I'm still working on it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #38069 /* ~A look of relief washes over her face. You think she is about to faint but she quickly recovers. "I thank you, cutter. Please return to me after you speak with Deran."~ */
  IF ~~ THEN REPLY #38070 /* ~"I will. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Trist_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #38071 /* ~Trist smiles at you warmly. "You are my savior, cutter. I will forever be in your debt."~ */
  IF ~~ THEN REPLY #38072 /* ~"I was happy to help you, Trist."~ */ GOTO 30
  IF ~~ THEN REPLY #38073 /* ~"Don't come to me again with your problems. This was a pain in the arse."~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #38074 /* ~"Thank you, cutter." She glances about and then pauses to think for a moment. "You have saved me from certain death, cutter. A slow, painful death..." She frowns as she thinks. "Please wait here, I shall return shortly." She turns and walks away.~ */
  IF ~~ THEN REPLY #38075 /* ~"All right, Trist."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #38077 /* ~You see Trist approaching, she smiles and waves at you. "Hello again, cutter. Thank you for waiting." She looks about for a moment, then removes a purse from the folds of her dress. "With the document you have provided, the courts will restore my status and finances. This is not much, but it is a well-deserved reward for what you have done." She hands you a purse.~ */
  IF ~~ THEN REPLY #38078 /* ~"Thank you, Trist."~ */ DO ~AddexperienceParty(4000)
GiveGoldForce(1000)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38079 /* ~She smiles. "No, I thank you. Farewell, cutter."~ */
  IF ~~ THEN REPLY #38080 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #38081 /* ~She frowns at you, then nods. "Yes, cutter, I can well imagine. Thank you again and farewell." ~ */
  IF ~~ THEN REPLY #38082 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 14.0 15.0
  SAY #38083 /* ~She thinks for a moment. "There was a small, feral-looking man who came to court a few times. He would sit behind Pikit and whisper to him occasionally." She pauses and looks lost in thought.~ */
  IF ~~ THEN REPLY #38084 /* ~"Go on."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38085 /* ~She frowns. "I remember him because he always seemed to be uncomfortable in his clothes. He would pick at them as if they were new, as if he were not used to wearing them." She pauses again. "On one such occasion Pikit told him to sit still and stop fidgeting. He called him Lenny."~ */
  IF ~~ THEN REPLY #38086 /* ~"Where can I find Lenny?"~ */ GOTO 36
  IF ~~ THEN REPLY #38087 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38088 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #38089 /* ~She thinks for a moment and then shrugs. "I am not sure actually... My husband told me that some ruffians could be found southeast of the market, near the siege tower I believe."~ */
  IF ~~ THEN REPLY #38090 /* ~"Where can I find Byron?"~ */ GOTO 15
  IF ~~ THEN REPLY #38091 /* ~"I have some more questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #38092 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 12.1
  SAY #38093 /* ~A look of concern crosses her face. "Surely you realize that even the law can err at times, cutter? If an innocent were to suffer due to such an error... It would be a terrible miscarriage of justice." She appears desperate now. "Please don't leave me to this fate..."~ */
  IF ~~ THEN REPLY #38094 /* ~"Yes, I'll help you. I have some questions though..."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ GOTO 13
  IF ~~ THEN REPLY #38095 /* ~"No, I don't want to get involved."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38096 /* ~"I need some time to think about this. Farewell."~ */ EXIT
END
