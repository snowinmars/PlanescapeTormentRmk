// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DWANGYAR~

IF ~  Global("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3009 /* ~This woman looks to be in her middle years, and her hair has streaks of grey running through it. Lines of worry crisscross her face... as she sees you, she seems torn between asking you to leave and calling for the man at the table.~ */
  IF ~~ THEN REPLY #3010 /* ~"Greetings."~ */ DO ~SetGlobal("Wife_of_Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11844 /* ~Leave the woman in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11806 /* ~"Ye'd... ye'd best leave, 'fore I call me husband. He won't take kindly to ye havin' barged yer way into our home."~ */
  IF ~~ THEN REPLY #11845 /* ~"If you were going to call him, you would have done so already. I have some questions for you..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11846 /* ~"Call your husband, and you'll both die. Now answer my questions."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11847 /* ~"Calm down. I just had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #11848 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2 25.1 25.3
  SAY #11807 /* ~She glances toward her husband, worry in her eyes. "I... I... have not the time, stranger. Do not be troublin' me with such things."~ */
  IF ~~ THEN REPLY #11849 /* ~"Excuse me... are you all right?"~ */ GOTO 4
  IF ~~ THEN REPLY #11850 /* ~"You'll make the time. Now, I have the following questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11851 /* ~"Farewell, then. Sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.2 16.0 25.2
  SAY #11808 /* ~She turns pale, and her eyes widen in fear. Before you can ask her a question, however, she takes a deep breath and starts screaming!~ */
  IF ~~ THEN REPLY #11852 /* ~"Dammit..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #11809 /* ~"Me?" She seems surprised. "Oh... aye, aye." She lowers her voice. "Ye'd best leave. Me husband has not been himself of late... ye'd best not provoke him with yer presence."~ */
  IF ~  Global("Angyar","GLOBAL",1)
~ THEN REPLY #11853 /* ~"I spoke with him... he seems troubled. What's wrong with him?"~ */ GOTO 5
  IF ~  Global("Angyar","GLOBAL",0)
~ THEN REPLY #11854 /* ~"What's wrong with him?"~ */ GOTO 5
  IF ~~ THEN REPLY #11855 /* ~"Well, he'd best not provoke me and neither should you. Now, I have the following questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11856 /* ~"Farewell, then. Sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #11810 /* ~"He's been out of sorts of late, a touch of the cough, maybe..." She gives an unconvincing half-shrug.~ */
  IF ~~ THEN REPLY #11857 /* ~"What's really wrong with him?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #11858 /* ~"If you tell me what's wrong, I might be able to help."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #11859 /* ~"Farewell, then. Sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #11811 /* ~"I think... I think he's done somethin' he regrets." Her worried expression melts into despair. "I think he signed one of the Dead Contracts. I cannot imagine what possessed him ta do such a foolish thing!"~ */
  IF ~~ THEN REPLY #11860 /* ~"Dead Contracts?"~ */ GOTO 12
  IF ~~ THEN REPLY #11861 /* ~"I... see. Sounds like you have your share of troubles. Farewell."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #11812 /* ~She stops you. "Please tell no one what I told ye, especially me husband..." She looks frightened. "Promise me."~ */
  IF ~~ THEN REPLY #11862 /* ~"Why?"~ */ GOTO 10
  IF ~~ THEN REPLY #11863 /* ~Lie: "I swear I will tell no one."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11864 /* ~Vow: "I swear I will tell no one."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11865 /* ~"I can make no such promise. Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 10.3 10.4 11.1 11.2
  SAY #11813 /* ~She seems to relax... but only slightly. "Farewell, then."~ */
  IF ~~ THEN REPLY #11866 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #11814 /* ~Her expression crumbles even further into despair. "I... I never should have said *anythin'* to ye..." Her eyes tear up. "I am as big a fool as he!"~ */
  IF ~~ THEN REPLY #11867 /* ~"Why must it be a secret?"~ */ GOTO 10
  IF ~~ THEN REPLY #11868 /* ~"You are correct. You should never have told me. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #11869 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #11815 /* ~"Me husband has a frightful temper... and he made me promise ta tell no one what had happened ta him..." She looks at you again. "Ye *must* keep silent about it."~ */
  IF ~~ THEN REPLY #11870 /* ~"You shouldn't have told me... promises are meant to be kept, or else there can be no trust between two people. It would have been better had you not made such a promise."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_2","GLOBALLaw",1)
~ GOTO 11
  IF ~~ THEN REPLY #11871 /* ~"A promise accompanied by a threat is no promise at all. I would not be troubled by breaking it."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11872 /* ~"Promises were made to be broken. They're hardly as important as someone's well-being."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11873 /* ~Lie: "I swear I will tell no one."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11874 /* ~Vow: "I swear I will tell no one."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11875 /* ~"I can make no such promise. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #11816 /* ~She sighs. "Still, I..."~ */
  IF ~~ THEN REPLY #11876 /* ~"Look, perhaps there is something I can do to help... what were these Dead Contracts you were speaking about?"~ */ GOTO 12
  IF ~~ THEN REPLY #11877 /* ~Lie: "Never mind. I swear I will tell no one."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11878 /* ~Vow: "Never mind. I swear I will tell no one."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11879 /* ~"We have nothing more to say to one another. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 11.0 25.0
  SAY #11817 /* ~"The Dead... the Dustmen... have contracts that give them the right ta someone's body after they die."~ */
  IF ~~ THEN REPLY #11880 /* ~"What do the Dustmen do with the body after death?"~ */ GOTO 13
  IF ~~ THEN REPLY #11881 /* ~"I... see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11818 /* ~"Animate it with their black magicks, turn it into one of the walkin' dead, make it a worker till..." She looks at her husband helplessly. "...till it rots away."~ */
  IF ~~ THEN REPLY #11882 /* ~"Why did your husband sign such a thing?"~ */ GOTO 14
  IF ~~ THEN REPLY #11883 /* ~"Your husband won't need his body after death. What's the problem?"~ */ GOTO 15
  IF ~~ THEN REPLY #11884 /* ~"Sounds like you have your own troubles. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.2
  SAY #11819 /* ~"He may have been goat-eager ta bring home some more jink than custom. He's prideful... but I think he's hurt himself more by doin' so."~ */
  IF ~~ THEN REPLY #11885 /* ~"That's unfortunate. I had some questions for you, though..."~ */ GOTO 16
  IF ~~ THEN REPLY #11886 /* ~"Can this contract be undone?"~ */ GOTO 17
  IF ~~ THEN REPLY #11887 /* ~"Your husband won't need his body after death. What's the problem?"~ */ GOTO 15
  IF ~~ THEN REPLY #11888 /* ~"Sounds like you have your own troubles. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.2
  SAY #11820 /* ~"The ghoulishness of the contract aside, it's his nature that's been changed... he's become sullen and dark since doin' the signin', and he can't seem ta rouse himself ta look for honest work. It's like the Lady's shadow hangs on him..." She sighs.~ */
  IF ~~ THEN REPLY #11889 /* ~"That's unfortunate. I had some questions for you, though..."~ */ GOTO 16
  IF ~~ THEN REPLY #11890 /* ~"Can this contract be undone?"~ */ GOTO 17
  IF ~~ THEN REPLY #11891 /* ~"Why did your husband sign such a thing?"~ */ GOTO 14
  IF ~~ THEN REPLY #11892 /* ~"Sounds like you have your own troubles. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0 17.1 24.0
  SAY #11821 /* ~She glances toward her husband, worry in her eyes. "I... I... have not the time, stranger. I must be about my chores..."~ */
  IF ~~ THEN REPLY #11893 /* ~"You'll make the time. Now, I have the following questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11894 /* ~"Farewell, then. Sorry to trouble you."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1
  SAY #11822 /* ~She looks at you, surprised, then sighs. "I've *tried!* I've spoken ta the Dustman he did the signin' with, but he's cold and chill, like all the Dusties! He even lectured me on me husband, as if I had no right ta try and help him!" Her lips become a tight, thin line, as if picturing the Dustman's face. "He was cold cruel, he was."~ */
  IF ~~ THEN REPLY #11895 /* ~"Let me see what I can do. Who was this Dustman your husband signed the Contract with?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #11896 /* ~"That's unfortunate. I had some questions for you, though..."~ */ GOTO 16
  IF ~~ THEN REPLY #11897 /* ~"Sounds like you have your own troubles. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 20.0
  SAY #11823 /* ~"I won't turn away such a friendly gesture." She seems grateful, then her worried expression returns. "But I must ask ye not ta let on I asked ye ta do such a thing. Me husband has a terrible temper, and if he were ta find out..." She shudders.~ */
  IF ~~ THEN REPLY #11898 /* ~Lie: "I promise that your husband will not find out."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 21
  IF ~~ THEN REPLY #11899 /* ~Vow: "I promise that your husband will not find out."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #11900 /* ~"I can't make any promises. We'll have to see what happens."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #11824 /* ~"The Dustie calls himself Gravesend... I know not his first name. He has a table at the Dustman bar in the Hive... 'Gatherin' Dust,' I believe the place is named. Ye can most like find him there, tryin' ta get more people ta sign his contracts."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11902 /* ~"Oh, Mortai? He's dead."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11903 /* ~"I'll seek him out, then. Where is this Gathering Dust bar?"~ */ JOURNAL #64577 /* ~I encountered a woman in the Hive whose husband, Angyar, signed a 'Dead Contract' with one of the Dustmen in the Gathering Dust Bar - a man by the name of Mortai Gravesend. I offered to go see if I could go settle the contract for her and give her and her husband some peace of mind. She told me the Gathering Dust bar was located in this block of the Hive, south and west of the Dustman memorial, and that there was a zombie standing out front. ~ */ GOTO 20
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11904 /* ~"I already have your husband's contract right here."~ */ JOURNAL #64578 /* ~I encountered a woman in the Hive whose husband, Angyar, signed a 'Dead Contract' with one of the Dustmen in the Gathering Dust Bar - a man by the name of Mortai Gravesend. I'd already gotten his contract, though, so I didn't need to run to the Dustman Bar. ~ */ GOTO 28
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #11825 /* ~"Head out ta the street outside, go ta the memorial stone, then head south and west from there..." She taps her finger against her chin. "Ye should run right into it. There's one of them..." Her face wrinkles in disgust. "...walkin' corpses out front."~ */
  IF ~~ THEN REPLY #11905 /* ~"Very well. I'll go see what I can do."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 18.0 18.1 38.0
  SAY #11826 /* ~"Thank ye, stranger... I appreciate yer help."~ */
  IF ~~ THEN REPLY #11906 /* ~"It's no trouble. I'll go see about undoing your husband's contract now."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY #11827 /* ~"Then I ask that ye keep as quiet as ye can about the matter."~ */
  IF ~~ THEN REPLY #11907 /* ~"Very well. I'll go see about undoing your husband's contract now."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 37.0
  SAY #11828 /* ~"Dead?!" She seems paralyzed. "But the Contract... there's no way ta..."~ */
  IF ~  !PartyHasItem("Acontrac")
~ THEN REPLY #11908 /* ~"That is a problem."~ */ JOURNAL #64579 /* ~I encountered a woman in the Hive whose husband, Angyar, signed a 'Dead Contract' with one of the Dustmen in the Gathering Dust Bar, a man by the name of Mortai Gravesend. I'd already put him in the dead-book, though, so in putting him out of his misery, I'd damned the wife and her husband. ~ */ GOTO 24
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11909 /* ~"Don't worry. I have the contract right here."~ */ JOURNAL #64578 /* ~I encountered a woman in the Hive whose husband, Angyar, signed a 'Dead Contract' with one of the Dustmen in the Gathering Dust Bar - a man by the name of Mortai Gravesend. I'd already gotten his contract, though, so I didn't need to run to the Dustman Bar. ~ */ GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11829 /* ~She has fallen silent. She glances at her husband, then turns to you. "Then there is nothin' ta be done." Her voice is like grinding stone. "Please leave."~ */
  IF ~~ THEN REPLY #11910 /* ~"I had some questions first..."~ */ DO ~Enemy()
~ GOTO 16
  IF ~~ THEN REPLY #11911 /* ~"Farewell."~ */ DO ~Enemy()
~ EXIT
END

IF ~  GlobalGT("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #11830 /* ~Angyar's wife looks up fearfully as you approach. "I said ye're not welcome here... ye'd... ye'd best leave, 'fore I call me husband. He won't take kindly to ye havin' barged yer way into our home."~ */
  IF ~  Global("Angyar_Quest","GLOBAL",1)
~ THEN REPLY #11912 /* ~"What was this Dead Contract your husband signed again?"~ */ GOTO 12
  IF ~~ THEN REPLY #11913 /* ~"If you were going to call him, you would have done so already. Now I have some questions."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11914 /* ~"Call your husband, and you'll both die. Now answer my questions."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11915 /* ~"Calm down. I just had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #11917 /* ~"Farewell."~ */ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #11831 /* ~Angyar's wife looks up hopefully as you approach. "Were ye able...?"~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11916 /* ~"Yes, I was able to get the contract from Mortai. Here it is."~ */ GOTO 28
  IF ~~ THEN REPLY #11918 /* ~"Not yet. Who was this man who your husband signed the contract with again?"~ */ GOTO 37
  IF ~~ THEN REPLY #11919 /* ~"I'm still looking into it. Farewell."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11832 /* ~Angyar's wife smiles as she sees you. "Well met, good sir. How can I help ye?"~ */
  IF ~~ THEN REPLY #11920 /* ~"I was wondering if I could rest here."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11921 /* ~"I'm low on supplies... can you help me out?"~ */ DO ~StartStore("Wangyar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #11922 /* ~"I just wanted to come check and see how you were doing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.2 23.1 26.0 37.2
  SAY #11833 /* ~She looks relieved, and her eyes become misty. "Oh, by the powers... ye must be a deva in disguise ta do such a thing for someone ye barely know..."~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11923 /* ~Give her the contract.~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ JOURNAL #64580 /* ~I retrieved Angyar's Contract and returned it to his wife. She thanked me and asked me to show the Contract to her husband. ~ */ GOTO 29
  IF ~~ THEN REPLY #11924 /* ~"I didn't do this for free, you know. I expect something in return."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11834 /* ~"Nay... nay, if ye could show me husband the contract, say that ye got it for him, but don't say how... I'd appreciate it."~ */
  IF ~~ THEN REPLY #11925 /* ~"Very well. I'll show it to him, then."~ */ EXIT
  IF ~~ THEN REPLY #11926 /* ~"I didn't do this for free, you know. I expect something in return."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.1
  SAY #11835 /* ~She looks at you apprehensively. "I have some money, a few coppers... will ye accept that?"~ */
  IF ~~ THEN REPLY #11927 /* ~"Yes."~ */ DO ~GivePartyGold(11)
~ GOTO 31
  IF ~~ THEN REPLY #11928 /* ~"A few coppers is not enough. What else do you have?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11836 /* ~She reaches into the folds of her robes and draws forth a handful of copper coins. She looks at them sadly for a moment, then hands them to you. "It is a small price ta pay for me husband's soul."~ */
  IF ~~ THEN REPLY #11929 /* ~"That's enough for starters. What else do you have?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #11930 /* ~"Fine. Here's the contract."~ */ JOURNAL #64580 /* ~I retrieved Angyar's Contract and returned it to his wife. She thanked me and asked me to show the Contract to her husband. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1
  SAY #11837 /* ~"Nay... nay, if ye could show me husband the contract, say that ye got it for him, but don't say how... I'd appreciate it."~ */
  IF ~~ THEN REPLY #11931 /* ~"Very well. I'll show it to him, then."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1 31.0
  SAY #11838 /* ~"I... I have nothin' else." She seems frightened. "Truly, sir, nothin' else. Me husband would not have signed the Dead Contract in the first place if..."~ */
  IF ~~ THEN REPLY #11932 /* ~"Do not *lie* to me, woman. What else do you have?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_6","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #11933 /* ~"Never mind. Here's the contract."~ */ JOURNAL #64580 /* ~I retrieved Angyar's Contract and returned it to his wife. She thanked me and asked me to show the Contract to her husband. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11839 /* ~She turns pale, and her eyes widen in fear. Before you can react, however, she takes a deep breath and starts screaming!~ */
  IF ~~ THEN REPLY #11934 /* ~"Dammit..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Angyar","GLOBAL",3)
~ THEN BEGIN 35 // from:
  SAY #11840 /* ~Angyar's wife turns to you as you approach and throws a worried glance at her husband. "I'm grateful to ye for gettin' that contract, but ye've angered me husband." She looks at Angyar with frightened eyes. "Ye'd best leave."~ */
  IF ~~ THEN REPLY #11935 /* ~"Very well. Sorry to trouble you."~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",3)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 36 // from:
  SAY #11841 /* ~Angyar's wife looks up hopefully as you approach. "Did ye give it ta him...?"~ */
  IF ~~ THEN REPLY #11936 /* ~"Not yet. I will return when I have."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 26.1
  SAY #11842 /* ~"The Dustie calls himself Gravesend... I know not his first name. He has a table at the Dustman bar in the Hive... 'Gatherin' Dust,' I believe the place is named. Ye can most like find him there, tryin' ta get more people ta sign his contracts."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11937 /* ~"Oh, Mortai? He's dead."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11938 /* ~"I'll seek him out, then. Where is this Gathering Dust bar?"~ */ GOTO 38
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11939 /* ~"I already have your husband's contract right here."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #11843 /* ~"Head out ta the street outside, go ta the memorial stone, then head south and west from there..." She taps her finger against her chin. "Ye should run right into it. There's one of them..." Her face wrinkles in disgust. "...walkin' corpses out front."~ */
  IF ~~ THEN REPLY #11940 /* ~"Very well. I'll go see what I can do."~ */ GOTO 21
END
