// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #35792 /* ~You see a boisterous auctioneer. He is very animated and does a lot of shouting, yelling, and stomping. He seems to have a tendency toward melodrama and makes a lot of strange facial expressions as he waves his arms...~ */
  IF ~~ THEN REPLY #35834 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #35835 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #35793 /* ~He glances at you and motions to the crowd that he's taking a break. "Well, a thousand greetings do I bestow on you, sir!" He does a double take when he notices your scars. "You know, I take one look at you with my discerning eye, and I see a man in the market for some healing charms."~ */
  IF ~~ THEN REPLY #35836 /* ~"Do you have any charms?"~ */ GOTO 2
  IF ~~ THEN REPLY #35837 /* ~"I have some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #35838 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35794 /* ~He gives you a shocked look and gestures grandly at himself. "Do I, Deran, have any charms?" He pauses for effect. "No, sir, I do not... however, don't let that fact discourage you. I have plenty of other items for sale." He points to the rear of the auction block where a group of people stands in chains.~ */
  IF ~~ THEN REPLY #35839 /* ~"You sell slaves?"~ */ GOTO 3
  IF ~~ THEN REPLY #35840 /* ~"I have some questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #35841 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 22.0
  SAY #35795 /* ~He shakes his head. "No, sir! These are indentured servants, not slaves. For the most part they are guilty of minor crimes. The proceeds from their sale go toward paying their debt to the city. After their term of servitude, they will be free citizens once again."~ */
  IF ~~ THEN REPLY #35842 /* ~Truth: "It still sounds like slavery to me."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Deran_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #35843 /* ~Truth: "It sounds like a good way to pay their debt to society."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Deran_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #35844 /* ~Truth: "Whatever, I don't really care."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #35796 /* ~He gives you a bright smile. "I don't concern myself with such thoughts. My task is to sell their contracts as given by the courts of Sigil." He lowers his voice as he leans in closer. "And collect a percentage for my efforts, you understand." He straightens.~ */
  IF ~~ THEN REPLY #35845 /* ~"You said they were guilty of crimes, what crimes did they commit?"~ */ GOTO 6
  IF ~~ THEN REPLY #35846 /* ~"I have some questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #35847 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #35803 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #35801 /* ~He shrugs his shoulders in an exaggerated way. "I don't know for certain, but I would guess theft, assault or not being able to pay their debts. Those are the most common transgressions." ~ */
  IF ~~ THEN REPLY #35848 /* ~"I see... I have some questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #35849 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1 4.1 6.0 8.1 14.3 15.3 16.2 17.2 18.2 19.0 20.0 22.1
  SAY #35802 /* ~He shakes his head. "Little time for such wig-wag, friend. There's dealing to be done! Speak quick!" ~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #35850 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 8
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #35851 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35852 /* ~"I want to ask you about Trist."~ */ GOTO 23
  IF ~~ THEN REPLY #35853 /* ~"Who are you?"~ */ GOTO 22
  IF ~~ THEN REPLY #35854 /* ~"Can you tell me about this ward?"~ */ GOTO 14
  IF ~~ THEN REPLY #35855 /* ~"Can you tell me about Sigil?"~ */ GOTO 19
  IF ~~ THEN REPLY #35856 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 13.0
  SAY #35804 /* ~He gives you a look of mock concern. "It would be a dangerous thing I be saying if I told you, friend... I have no wish to put you in jeopardy."~ */
  IF ~~ THEN REPLY #35857 /* ~"I happen to like danger. Imperil me."~ */ GOTO 9
  IF ~~ THEN REPLY #35858 /* ~"I see. I have some other questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #35859 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35805 /* ~He lets out a boisterous laugh. "Very well, friend. Lothar is the Master, the lord, of the famous Bones of the Night. The library where the dead themselves act as his repositories of arcane lore. All the dead of Sigil and the planes whisper secrets to him within his Salon of Skulls."~ */
  IF ~~ THEN REPLY #35860 /* ~"Where can I find this place?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35806 /* ~"Try south and east of the market section of the ward... ye might come across a wrecked building, and ye might find a ladder of bones that leads down, and it could be that that ladder will lead ye to the Salon of Skulls."~ */
  IF ~~ THEN REPLY #35861 /* ~"Thank you. I have some other questions..."~ */ GOTO 11
  IF ~~ THEN REPLY #35862 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #35807 /* ~He smiles. "Nay, friend, I have no more answers for you. I have spoken more than I should and of matters I should not. I must return to the needs of my customers." He turns away from you.~ */
  IF ~~ THEN REPLY #35863 /* ~"I see. Farewell."~ */ DO ~SetGlobal("Deran_Questions","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #35808 /* ~"A skull?" He seems confused. "Not much market for those, at least those separated from the body..." He frowns, then turns to you, his voice drops dramatically. "Unless of course..."~ */
  IF ~~ THEN REPLY #35864 /* ~"Go on..."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #35809 /* ~"Well, a matter of missing skulls can be a right serious business, a right dangerous business. You see, if one is looking to trade skulls it can only be for a select few people in Sigil..." He pauses. "It's almost a sure bet, friend, that one of those is certain to be..." He glances to the right and left, then back to you in a conspiratorial whisper. "... Lothar, the Master of Bones himself!"~ */
  IF ~~ THEN REPLY #36237 /* ~"Tell me about this Lothar."~ */ GOTO 8
END

IF ~~ THEN BEGIN 14 // from: 7.4
  SAY #35810 /* ~He gestures grandly about him. "This, sir, is the Lower Ward. Home of the common people and little else of interest. The only items worth mentioning would be the Foundry, the open-air market, and the siege tower."~ */
  IF ~~ THEN REPLY #35865 /* ~"Tell me about the Foundry."~ */ GOTO 15
  IF ~~ THEN REPLY #35866 /* ~"Tell me about the siege tower."~ */ GOTO 17
  IF ~~ THEN REPLY #35867 /* ~"Tell me about the open-air market."~ */ GOTO 18
  IF ~~ THEN REPLY #35868 /* ~"I have some more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #35869 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0 18.0
  SAY #35811 /* ~He opens his arms and looks toward the sky. "The workshop of all creation, where steel and a person's soul is shaped into works of art, and creation itself can be changed within its walls..." He returns his gaze to you. "So say the Godsmen."~ */
  IF ~~ THEN REPLY #35870 /* ~"The Godsmen?"~ */ GOTO 16
  IF ~~ THEN REPLY #35871 /* ~"Tell me about the siege tower."~ */ GOTO 17
  IF ~~ THEN REPLY #35872 /* ~"Tell me about the open-air market."~ */ GOTO 18
  IF ~~ THEN REPLY #35873 /* ~"I have some more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #35874 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #35812 /* ~He smiles. "A noble faction - all can become Gods, if they simply learn enough during their lifetimes, that they grow, develop and become better spirits! Can you think of a nobler faction?"~ */
  IF ~~ THEN REPLY #35875 /* ~"Tell me about the siege tower."~ */ GOTO 17
  IF ~~ THEN REPLY #35876 /* ~"Tell me about the open-air market."~ */ GOTO 18
  IF ~~ THEN REPLY #35877 /* ~"I have some more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #35878 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1 16.0 18.1
  SAY #35813 /* ~"A true mystery, even to me. It simply appeared one day. None can gain entry and nothing has ever left it."~ */
  IF ~~ THEN REPLY #35879 /* ~"Tell me about the Foundry."~ */ GOTO 15
  IF ~~ THEN REPLY #35880 /* ~"Tell me about the open-air market."~ */ GOTO 18
  IF ~~ THEN REPLY #35881 /* ~"I have some more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #35882 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.2 15.2 16.1 17.1
  SAY #35814 /* ~"The market lies south of here and caters to nearly every need. I recommend you visit it."~ */
  IF ~~ THEN REPLY #35883 /* ~"Tell me about the Foundry."~ */ GOTO 15
  IF ~~ THEN REPLY #35884 /* ~"Tell me about the siege tower."~ */ GOTO 17
  IF ~~ THEN REPLY #35885 /* ~"I have some more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #35886 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 7.5
  SAY #35815 /* ~He laughs and spreads his arms as if to take in the entire city. "The glorious city of gold, city from which all doors leave..." He smiles and wags his eyebrows. "...and all doors lead to! You cannot be told about Sigil, you must experience her!"~ */
  IF ~~ THEN REPLY #35887 /* ~"I have some more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #35888 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #35816 /* ~You see Deran the auctioneer. He smiles at your approach. "Well met, again! What can I do for you on this glorious smog-ridden day?"~ */
  IF ~  !Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35889 /* ~"I have some questions..."~ */ GOTO 7
  IF ~  Global("Deran_Questions","GLOBAL",1)
~ THEN REPLY #35890 /* ~"I have some questions..."~ */ GOTO 21
  IF ~  Global("Trist_Quest","GLOBAL",3)
~ THEN REPLY #35891 /* ~"I want to ask you about Trist."~ */ GOTO 23
  IF ~~ THEN REPLY #35892 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #35817 /* ~He gives you a sad smile. "I will answer no more of your questions, sir. I have already placed the both of us in danger, I see no reason to continue in that vein..."~ */
  IF ~~ THEN REPLY #35893 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.3
  SAY #35818 /* ~"Deran's the name, friend! Can it be you have not heard of me? I'm wounded, verily I am!" He smiles wider at the feigned wound. "No one finer or more well-known for bringing people who want people a little closer together." He points to the rear of the auction block where a group of people stands in chains. "Do you be wanting someone, friend?"~ */
  IF ~~ THEN REPLY #35894 /* ~"You sell slaves?"~ */ GOTO 3
  IF ~~ THEN REPLY #35895 /* ~"I have some other questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #35896 /* ~"No thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.2 20.2
  SAY #35819 /* ~He frowns for a moment then shrugs. "Very well, sir. What about Trist?"~ */
  IF ~~ THEN REPLY #35897 /* ~"Can I buy her contract?"~ */ GOTO 24
  IF ~~ THEN REPLY #35898 /* ~"She says that she doesn't belong on the block."~ */ GOTO 31
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35899 /* ~"I have proof that she is innocent of any crime."~ */ GOTO 33
  IF ~~ THEN REPLY #35900 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #35820 /* ~He frowns. "Certainly sir... If you meet the requirements as governed by the courts of Sigil and can afford the contract." He smiles at you.~ */
  IF ~~ THEN REPLY #35901 /* ~"What are the requirements?"~ */ GOTO 25
  IF ~~ THEN REPLY #35902 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 27.0
  SAY #35821 /* ~He begins to count off points on the fingers of one hand. "First, you must be a citizen of Sigil. Second, you must show proof of permanent residence here and that you can provide accommodations and support for the servant. Lastly, you cannot have a criminal record yourself."~ */
  IF ~~ THEN REPLY #35903 /* ~"I see... How much is her contract?"~ */ GOTO 26
  IF ~~ THEN REPLY #35904 /* ~"What if I can prove she is innocent of the charges against her?"~ */ GOTO 28
  IF ~~ THEN REPLY #35905 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #35822 /* ~He gives you a broad smile then gestures at the nearby crowd. "I will start the bidding at five hundred copper, sir."~ */
  IF ~~ THEN REPLY #35906 /* ~"What if I want to purchase her contract outright?"~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #35823 /* ~He gives you a look of mock sadness and shakes his head. "She is to be auctioned to the highest bidder, sir. That is the law."~ */
  IF ~~ THEN REPLY #35907 /* ~"I see... What are the requirements to purchase a servant?"~ */ GOTO 25
  IF ~~ THEN REPLY #35908 /* ~"What if I can prove she is innocent of the charges against her?"~ */ GOTO 28
  IF ~~ THEN REPLY #35909 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.1 27.1 31.0
  SAY #35824 /* ~He laughs and looks at you mockingly. "As an agent of the courts, I could go before them with new evidence and have all judgements against Trist reversed. Do you have such evidence?"~ */
  IF ~~ THEN REPLY #35910 /* ~"Not at this time."~ */ GOTO 29
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #35911 /* ~"Yes I do."~ */ GOTO 33
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #35825 /* ~He nods his head. "Do you intend to seek such evidence on behalf of miss Trist?"~ */
  IF ~~ THEN REPLY #35912 /* ~"Yes, I do."~ */ GOTO 30
  IF ~~ THEN REPLY #35913 /* ~"I don't know..."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0
  SAY #35826 /* ~He stares at you for a moment, trying to gauge your seriousness. "Very well. I will not auction Trist for now, sir. Good luck in your endeavor. Now leave me be and get to it."~ */
  IF ~~ THEN REPLY #35914 /* ~"Thank you, farewell."~ */ JOURNAL #66524 /* ~I talked to Deran, the auctioneer, about Trist. I told him that I intended to find proof of her innocence and he agreed not to auction her for now.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.1
  SAY #35827 /* ~He sighs, then frowns at you. "Would you say otherwise if you were in her shoes?" He shakes his head. "I have heard her story, sir. Although I sympathize with the lady, there is nothing I can do without evidence to back her up."~ */
  IF ~~ THEN REPLY #35915 /* ~"What if I can prove she is innocent?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 32 // from: 29.1
  SAY #35797 /* ~He shakes his head. "Then you are wasting your time and mine with this conversation."~ */
  IF ~~ THEN REPLY #35916 /* ~"All right, I intend to help her."~ */ GOTO 30
  IF ~~ THEN REPLY #35917 /* ~"You're right, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.2 28.1
  SAY #35798 /* ~He smiles broadly, then laughs. "Very well, show me this evidence." He holds his hand out to you.~ */
  IF ~~ THEN REPLY #35918 /* ~Give him the document.~ */ DO ~DestroyItemObject("loandoc",Protagonist,FALSE)
SetGlobal("Trist_Quest","GLOBAL",4)
AddexperienceParty(4000)
~ GOTO 34
  IF ~~ THEN REPLY #35919 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #35799 /* ~He opens the document and quickly scans its contents. After a moment he sighs, then folds the document and puts it inside his shirt. "It seems the courts owe Lady Trist an apology, sir. From this moment she is free and I will make all the arrangements to have her status and property returned to her." ~ */
  IF ~~ THEN REPLY #35920 /* ~"Thank you, Deran."~ */ JOURNAL #66525 /* ~I gave Deran Trist's loan document. He has agreed to set Trist free and see that her status is restored. ~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #35800 /* ~"No, thank you. It's a rare individual who will do what you have done." He bows to you. "Excuse me, I must speak with Lady Trist. Farewell." He begins walking toward Trist.~ */
  IF ~~ THEN REPLY #35921 /* ~"Farewell."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ EXIT
END
