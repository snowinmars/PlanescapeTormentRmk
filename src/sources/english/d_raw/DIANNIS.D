// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIANNIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DIANNIS~

IF ~  Global("Iannis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2935 /* ~This man is dressed in soft blue robes covered with intricate designs; despite their opulence, however, the robes look wrinkled and worn. You place the man's age somewhere between middle-age and early sixties... the worry lines make an exact determination difficult. As you enter, the man turns slowly towards you; as he does, you are suddenly struck with the terrible sense that you *know* this man... or did at one time.~ */
  IF ~~ THEN REPLY #2936 /* ~"Greetings..."~ */ GOTO 5
  IF ~~ THEN REPLY #29703 /* ~Ignore the man, explore the office.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.0 4.1 6.1 7.1 9.2 10.3 11.3 12.3 13.2 14.2 15.3 16.3 17.2 18.3 19.1 20.1 23.0 24.0 25.5 26.6 27.3 28.2 32.0 32.1 32.2 34.0 35.1 36.5 37.0 38.0 39.6 55.5 56.5 57.2 58.6 59.3 60.3 61.5 62.5 63.9 64.7 66.6 67.3 68.3 71.0 72.7 73.6 74.5 78.0 85.5 86.7 87.3 93.3 94.3 95.3 96.1 102.7
  SAY #29704 /* ~"Very well. What is it I can help you with?"~ */
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29705 /* ~"Excuse me for asking, but are you all right?"~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29706 /* ~"Excuse me for asking, but are you all right?"~ */ GOTO 57
  IF ~  Global("Know_Iannis_Fire","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29707 /* ~"Are you all right?"~ */ GOTO 60
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29708 /* ~"Are you all right?"~ */ GOTO 57
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29709 /* ~"Have we met before?"~ */ GOTO 35
  IF ~~ THEN REPLY #29710 /* ~"Who are you again?"~ */ GOTO 7
  IF ~~ THEN REPLY #29711 /* ~"What is this place again?"~ */ GOTO 9
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29712 /* ~"What is an advocate again?"~ */ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29714 /* ~"Can you tell me about legacies?"~ */ GOTO 12
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64282 /* ~"Iannis, there is a sensory stone in the sensorium that contains a fragment of your daughter's experiences."~ */ GOTO 65
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",3)
PartyHasItem("Dlegacy1")
~ THEN REPLY #29715 /* ~"Here's Deionarra's legacy, as I promised."~ */ GOTO 33
  IF ~  Global("Know_Iannis_Fire","GLOBAL",1)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29717 /* ~"Can you tell me about the fire?"~ */ GOTO 39
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ THEN REPLY #29719 /* ~"Can you tell me about your daughter?"~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #29721 /* ~"Iannis, I discovered what happened to Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #29724 /* ~"Nothing today. I must take my leave... Farewell."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
!Global("Iannis_Sensory_Quest","GLOBAL",1)
!Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #29725 /* ~You see Iannis... he turns as you enter and affixes you with a tired gaze. There are dark sacks beneath his eyes, and he looks as if he has not been sleeping.~ */
  IF ~~ THEN REPLY #29727 /* ~"Greetings, Iannis."~ */ GOTO 3
  IF ~~ THEN REPLY #29728 /* ~Ignore Iannis.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29729 /* ~"You again." Iannis frowns slightly as he stares at you. "What is it you want this time?"~ */
  IF ~~ THEN REPLY #29730 /* ~"I had some questions for you..."~ */ GOTO 1
  IF ~~ THEN REPLY #29731 /* ~"Nothing today, thanks."~ */ EXIT
END

IF ~  GlobalGT("Iannis","GLOBAL",0)
GlobalGT("Iannis_Sensory_Quest","GLOBAL",0)
GlobalLT("Iannis_Sensory_Quest","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #29732 /* ~You see Iannis... he turns as you enter and his eyes light up hopefully. "Ah! At last! Were you able to convince them to grant me access to their sensorium?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29733 /* ~"Yes. They agreed to give you access to your daughter's sensory stone."~ */ GOTO 69
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29734 /* ~"I had some questions that needed to be answered first."~ */ GOTO 1
  IF ~  GlobalLT("Iannis_Sensory_Quest","GLOBAL",2)
~ THEN REPLY #29735 /* ~"Not as of yet. I hope to have news for you soon. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #29736 /* ~The man squints, as if trying to place you. "Yes? Is there something that I can help you with?"~ */
  IF ~~ THEN REPLY #29737 /* ~"Who are you?"~ */ DO ~SetGlobal("Iannis","GLOBAL",1)
~ JOURNAL #28831 /* ~I met a man named Iannis who works in the Clerk's Ward. I have a feeling I know this man from somewhere, but I know not where.~ */ GOTO 6
  IF ~~ THEN REPLY #29738 /* ~"I'm sorry; I think I entered the wrong shop. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29739 /* ~"I am Iannis." He studies you and frowns. "Were you looking for me?" ~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29740 /* ~"I don't know... what is this place?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29741 /* ~"My apologies... you'd mentioned that before. Perhaps you can help me with something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #29742 /* ~"I'm sorry; I think I entered the wrong shop. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.5
  SAY #29743 /* ~"As I mentioned before, I am Iannis. Was there something you needed?" ~ */
  IF ~  GlobalLT("Iannis","GLOBAL",2)
~ THEN REPLY #29744 /* ~"I'm not sure... what is this place?"~ */ DO ~SetGlobal("Iannis","GLOBAL",2)
~ GOTO 8
  IF ~  GlobalGT("Iannis","GLOBAL",1)
~ THEN REPLY #29745 /* ~"My apologies... you'd mentioned that before. Perhaps you can help me with something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #29746 /* ~"I'm sorry; I think I entered the wrong shop. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #29747 /* ~"I am an advocate. These are my offices." Iannis' voice takes on an irritated edge. "Do you seek counsel? If not, perhaps you had best test your curiosity elsewhere."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29748 /* ~"An advocate? What's that?"~ */ JOURNAL #28830 /* ~Iannis is apparently an "advocate," one who provides legal counsel, arranges legacies, and argues cases in court.~ */ EXTERN ~DMORTE~ 291
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #29749 /* ~"An advocate? What's that?"~ */ JOURNAL #28830 /* ~Iannis is apparently an "advocate," one who provides legal counsel, arranges legacies, and argues cases in court.~ */ EXTERN ~DGRACE~ 127
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #29750 /* ~"An advocate? What's that?"~ */ JOURNAL #28830 /* ~Iannis is apparently an "advocate," one who provides legal counsel, arranges legacies, and argues cases in court.~ */ GOTO 10
  IF ~~ THEN REPLY #29751 /* ~"I'm sorry to have disturbed you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.6
  SAY #29752 /* ~"I am an advocate. These are my offices. Those seeking counsel come to me." ~ */
  IF ~  GlobalLT("Iannis","GLOBAL",3)
~ THEN REPLY #29753 /* ~"What kind of counsel?"~ */ DO ~SetGlobal("Iannis","GLOBAL",3)
~ GOTO 11
  IF ~  GlobalGT("Iannis","GLOBAL",2)
~ THEN REPLY #29754 /* ~"What kind of counsel?"~ */ GOTO 11
  IF ~~ THEN REPLY #29755 /* ~"I see. Perhaps there is something you can help me with, then..."~ */ GOTO 1
  IF ~~ THEN REPLY #29756 /* ~"I'm sorry to have disturbed you, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2
  SAY #29757 /* ~Iannis' frown deepens. "An advocate provides counsel, helps others navigate the labyrinths of Sigil's legal system, arranges legacies for citizens to insure that their property is divided as they choose upon death, defends those in Sigil's courts who have been wrongly accused..." He pauses. "Did you need help in any of these areas?"~ */
  IF ~~ THEN REPLY #29758 /* ~"Legacies?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29759 /* ~"Actually, I believe you have a legacy for me."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29760 /* ~"Actually, I have come to collect the legacy of a young woman..."~ */ GOTO 15
  IF ~~ THEN REPLY #29761 /* ~"I could use some counsel, actually."~ */ GOTO 1
  IF ~~ THEN REPLY #29762 /* ~"No, not this day. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.7 9.0 9.1
  SAY #29763 /* ~"An advocate helps others navigate the labyrinths of Sigil's legal system, arranges legacies for citizens to insure that their property is divided as they choose upon death, defends those in Sigil's courts who have been wrongly accused..." He pauses. "Did you need help in any of these areas?"~ */
  IF ~~ THEN REPLY #29764 /* ~"Legacies?"~ */ GOTO 12
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29765 /* ~"Actually, I believe you have a legacy for me."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29766 /* ~"Actually, I have come to collect the legacy of a young woman..."~ */ GOTO 15
  IF ~~ THEN REPLY #29767 /* ~"I could use some counsel, actually."~ */ GOTO 1
  IF ~~ THEN REPLY #29768 /* ~"No, not this day. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.8 10.0 11.0 13.1 14.1 54.0 56.2
  SAY #29769 /* ~"They are contracts that are deliverable at the death of the client. They provide specifics on how a person's possessions are to be divided upon the event of their demise. I have also heard them called *wills.*"~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #29770 /* ~"Are they anything like Dustman contracts?"~ */ GOTO 13
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29771 /* ~"Actually, I believe you have a legacy for me."~ */ GOTO 15
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
~ THEN REPLY #29772 /* ~"Actually, I have come to collect the legacy of a young woman..."~ */ GOTO 15
  IF ~~ THEN REPLY #29773 /* ~"I see. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29774 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #29775 /* ~"Oh my, no! The Dustman contracts, while they are deliverable at the time of the client's death, bequeath the client's body to the Dustmen; not a pleasant business at all, but some who are poor of means find the Dustman contract to be a means of support..."~ */
  IF ~~ THEN REPLY #29776 /* ~"How would one go about invalidating a Dustman contract?"~ */ JOURNAL #28829 /* ~Iannis said the only way to invalidate a Dustman contract is to destroy it.~ */ GOTO 14
  IF ~~ THEN REPLY #29777 /* ~"I'm sorry... can you explain what a legacy is again?"~ */ GOTO 12
  IF ~~ THEN REPLY #29778 /* ~"I see. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29779 /* ~"Thanks. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #29780 /* ~He frowns slightly. "One that is already signed? Little or nothing can be done once the signature is in place. The Dustman contract is quite specific on the destination of the corpse after death. Without the destruction of the contract, there is really nothing that could be done."~ */
  IF ~~ THEN REPLY #29781 /* ~"I see. Do I owe you anything for this information?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Iannis_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #29782 /* ~"I'm sorry... can you explain what a legacy is again?"~ */ GOTO 12
  IF ~~ THEN REPLY #29783 /* ~"I see. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29784 /* ~"Thanks. That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 10.2 11.1 11.2 12.1 12.2
  SAY #29785 /* ~"Indeed? Very well... do you remember the legacy in question?"~ */
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #29786 /* ~"The legacy is number '51-AA,' I believe."~ */ GOTO 16
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29787 /* ~"The young woman's legacy is '687-KS.'"~ */ GOTO 25
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",1)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #29788 /* ~"The young woman's legacy is '687-KS.'"~ */ GOTO 104
  IF ~~ THEN REPLY #29789 /* ~"Actually, not at the moment, no. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29790 /* ~"No, I think I was mistaken. Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #29791 /* ~He looks at you in surprise as you name the legacy. "That is extremely old... are you certain..." A shocked look comes upon his face. "I hope that wasn't one of the ones that was burned..."~ */
  IF ~~ THEN REPLY #29792 /* ~"How old is it?"~ */ GOTO 17
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29793 /* ~"Burned?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29794 /* ~"Can you check and see if the legacy still exists?"~ */ GOTO 19
  IF ~~ THEN REPLY #29795 /* ~"Actually, never mind. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29796 /* ~"I think I was mistaken about the legacy. Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 18.0
  SAY #29797 /* ~"Well..." Iannis ponders it for a moment. "Several decades at least."~ */
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29798 /* ~"You said it might have been burned? What do you mean?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29799 /* ~"Can you check and see if the legacy still exists?"~ */ GOTO 19
  IF ~~ THEN REPLY #29800 /* ~"Actually, never mind. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29801 /* ~"I think I was mistaken about the legacy. Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #29802 /* ~Iannis looks saddened. "Yes, this office was the target of a senseless act of vandalism. A year ago we had a break-in here at the office. The vandal's sole desire seemed to be to burn my legal documentation. Much was lost. A shame, really. Sigil can be quite... wearing on a person's faith..." He seems to lose an inch as he mentions Sigil. "The vandal only damaged certain documents. Irreplaceable."~ */
  IF ~~ THEN REPLY #29803 /* ~"How old is the legacy?"~ */ GOTO 17
  IF ~~ THEN REPLY #29804 /* ~"Can you check and see if the legacy still exists?"~ */ GOTO 19
  IF ~~ THEN REPLY #29805 /* ~"Can you tell me anything else about the fire?"~ */ GOTO 39
  IF ~~ THEN REPLY #29806 /* ~"Actually, never mind. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29807 /* ~"I think I was mistaken about the legacy. Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2 17.1 18.1
  SAY #29808 /* ~He nods quickly. "Oh, yes, of course... It will take a moment."~ */
  IF ~~ THEN REPLY #29809 /* ~"Very well, I will wait."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 20
  IF ~~ THEN REPLY #29810 /* ~"Actually, never mind. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29811 /* ~"No, I think I was mistaken about the legacy. Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #29812 /* ~Iannis returns, nodding. "Yes, fortunately, it was unharmed by the fire. All the articles are safe."~ */
  IF ~~ THEN REPLY #29813 /* ~"Could I collect on it? I am the beneficiary."~ */ DO ~SetGlobal("Know_Nameless_Legacy","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 21
  IF ~~ THEN REPLY #29814 /* ~"Actually, never mind. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29815 /* ~"Thank you. I just wanted to check and see if it was safe. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #29816 /* ~ "Of course... sign here and here... on the dotted line..."~ */
  IF ~~ THEN REPLY #29817 /* ~"There? And there? All right..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #29818 /* ~"There we are; that should be the last of the paperwork. Here are all the items that were in the Vault... one looks like a Foundry receipt, though quite an old one, to be sure. Did the deceased have something commissioned at the Foundry?"~ */
  IF ~~ THEN REPLY #29819 /* ~"I don't really know. Perhaps... I'm beginning to think just about anything is possible. Where is the Foundry?"~ */ DO ~GiveItemCreate("Receipt",Protagonist,1,0,0)
GiveItemCreate("Gullet",Protagonist,1,0,0)
GiveItemCreate("EyeKal",Protagonist,1,0,0)
GiveGoldForce(731)
SetGlobal("Receipt","GLOBAL",1)
~ JOURNAL #28828 /* ~I collected my legacy from Iannis the Advocate in the Clerk's Ward. Among the possessions in the legacy was a strange receipt... it looks very old. Iannis says that it is a "Great Foundry receipt," and that it means I commissioned something from the Godsmen. Iannis says that the receipt should allow me access to the Great Foundry in the Lower Ward.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29820 /* ~"It is located in the Lower Ward. It is past the great gate - look for a number of Godsmen guards at a gate, and you should be in the right place."~ */
  IF ~~ THEN REPLY #29821 /* ~"Very well. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29822 /* ~"Thank you for the directions. I will go there now."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.0
  SAY #29823 /* ~"I am not the sort to charge others for giving them aid of this sort." He smiles slightly. "I am an advocate, not a rug merchant, and greed is not permitted to step into my office."~ */
  IF ~~ THEN REPLY #29824 /* ~"Thank you... I'm grateful. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29825 /* ~"You have my gratitude, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.1
  SAY #29826 /* ~"That..." His eyes widen as you name the legacy. "My *daughter's* legacy...?!" He looks shocked. "How do you know my daughter?!"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64283 /* ~"I'm not certain. There is a sensory stone in the Festhall that held the legacy number."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64284 /* ~"I'm not certain. I found the number in that sensory stone in the Festhall I told you about; it was intended for me."~ */ GOTO 27
  IF ~~ THEN REPLY #29827 /* ~"I don't know. I'm hoping the legacy can answer that."~ */ GOTO 26
  IF ~~ THEN REPLY #29828 /* ~"Actually, it is a legal matter and no concern of yours."~ */ GOTO 30
  IF ~~ THEN REPLY #29829 /* ~"That is not your concern. Can you check and see if the legacy still exists?"~ */ GOTO 30
  IF ~~ THEN REPLY #29830 /* ~"I think I was mistaken about the legacy. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29831 /* ~"I'm sorry, that was the wrong legacy. Sorry to have troubled you... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.2 66.3 67.1 68.1
  SAY #29832 /* ~"Why would..." Iannis seems at a loss for words. "Who are you, sir, that my daughter would have left a legacy for you?"~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #64285 /* ~"I'm not certain. There is a sensory stone in the Festhall that held the legacy number."~ */ GOTO 65
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #64286 /* ~"I'm not certain. I found the number in that sensory stone in the Festhall I told you about; it was intended for me."~ */ GOTO 27
  IF ~~ THEN REPLY #29833 /* ~"It is possible that I knew her once... and have forgotten her."~ */ GOTO 27
  IF ~~ THEN REPLY #29834 /* ~"As I said before, I don't know. I'm hoping the legacy can answer that."~ */ GOTO 29
  IF ~~ THEN REPLY #29835 /* ~"Actually, it is a legal matter and no concern of yours."~ */ GOTO 30
  IF ~~ THEN REPLY #29836 /* ~"That is not your concern. Can you check and see if the legacy still exists?"~ */ GOTO 30
  IF ~~ THEN REPLY #29837 /* ~"I think I was mistaken about the legacy. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29838 /* ~"I'm sorry, that was the wrong legacy. Sorry to have troubled you... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.1 26.2
  SAY #29839 /* ~Iannis is studying your features intently. "You *do* seem familiar, somehow..."~ */
  IF ~~ THEN REPLY #29840 /* ~"Do you know who I am?"~ */ GOTO 28
  IF ~~ THEN REPLY #29841 /* ~"Perhaps if you got the legacy, it might answer some questions for us both."~ */ GOTO 29
  IF ~~ THEN REPLY #29842 /* ~"Can you retrieve her legacy for me, please? This is a legal matter, not a matter for discussion."~ */ GOTO 30
  IF ~~ THEN REPLY #29843 /* ~"I think I was mistaken about the legacy. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29844 /* ~"I'm sorry, I must take my leave... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29845 /* ~"I must confess, I do not." Iannis sighs. ~ */
  IF ~~ THEN REPLY #29846 /* ~"Perhaps if you got the legacy, it might answer some questions for us both."~ */ GOTO 29
  IF ~~ THEN REPLY #29847 /* ~"Can you retrieve her legacy for me, please? This is a legal matter, not a matter for discussion."~ */ GOTO 30
  IF ~~ THEN REPLY #29848 /* ~"I think I was mistaken about the legacy. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29849 /* ~"I'm sorry, I must take my leave... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.3 27.1 28.0
  SAY #29850 /* ~"Of course, of course... hold a moment, and I shall return presently."~ */
  IF ~~ THEN REPLY #29851 /* ~"Very well. I will wait."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28827 /* ~I collected Deionarra's legacy from her father.~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.3 25.4 26.4 26.5 27.2 28.1
  SAY #29852 /* ~Iannis stares at you for a moment, then his eyes narrow. "Of course." His voice is like ice. "If you would be so kind to wait, I shall return presently with her legacy."~ */
  IF ~~ THEN REPLY #29853 /* ~"Very well."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #28826 /* ~I collected Deionarra's legacy from that irritating father of hers. I don't like his tone when he speaks to me - he'd best watch himself, or he'll end up like his daughter.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 104.0
  SAY #29854 /* ~"All the articles are accounted for..." Iannis is holding three scrolls in his hands. "I had no idea she had established a legacy here..." He is staring at the items, almost hypnotized. "Here you are. If I may... may I read them, sir?"~ */
  IF ~~ THEN REPLY #29855 /* ~"It is a *private* matter. As an advocate, you must understand this."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_1","GLOBALGood",-1)
~ GOTO 32
  IF ~~ THEN REPLY #29856 /* ~"Let me read them first, then I shall decide."~ */ GOTO 32
  IF ~~ THEN REPLY #29857 /* ~"Of course. Here you are."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Iannis_2","GLOBALGood",1)
~ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #29858 /* ~"Of course..." Iannis seems broken. "But please, I beg you, I have very little left to remember my daughter by..."~ */
  IF ~~ THEN REPLY #29859 /* ~Lie: "I will see that you get a chance to read them. In the meantime, perhaps there is something else you can help me with..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #29860 /* ~Vow: "I promise you shall have a chance to look at them. For now, however, perhaps there is something else you can help me with..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ GOTO 1
  IF ~~ THEN REPLY #29861 /* ~"I understand. Perhaps there is something else you can help me with at the moment..."~ */ GOTO 1
  IF ~~ THEN REPLY #29862 /* ~Lie: "I shall not forget. I will return after I have read them."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #29863 /* ~Vow: "I shall not forget. I will return after I have read them."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_2","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #29864 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 1.10 31.2
  SAY #29865 /* ~Iannis takes the scroll and studies it. There is a long silence, then he slowly looks up at you. "You... meant very much to my daughter. She was willing to give up her life for you."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29866 /* ~"I fear that is the case."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~I let Iannis read Deionarra's legacy. Her last words seemed to give him some comfort. ~ */ GOTO 34
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29867 /* ~"I believe that is the case."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",3)
~ JOURNAL #29871 /* ~I let Iannis read Deionarra's legacy. Her last words seemed to give him some comfort. ~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #29873 /* ~Iannis hands the scroll back to you. "Thank you, sir. I appreciate your kindness."~ */
  IF ~~ THEN REPLY #29874 /* ~"It is the least I can do. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29875 /* ~"I mourn the loss of your daughter. I hope her words gave you some comfort. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.4
  SAY #29876 /* ~The man studies you for a moment, frowning in thought. The wrinkles on his face become more pronounced as he does so, and you are again struck by the toll that age seems to have placed on him. "No... yet you seem familiar..."~ */
  IF ~~ THEN REPLY #29877 /* ~"Yet..."~ */ GOTO 36
  IF ~~ THEN REPLY #29878 /* ~"Never mind. Perhaps you can help me with something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #29879 /* ~"No matter, I must take my leave."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #29880 /* ~He continues to study your features, then shakes his head. "I will concede that there is something familiar about you, sir, and I apologize for any insult my failing memory may be giving you at this moment... I have been preoccupied for some time now. *Have* we met before?"~ */
  IF ~~ THEN REPLY #29881 /* ~Truth: "I think so. I can't really remember myself."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_3","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #29882 /* ~Lie: "No; I was mistaken. I don't believe we've ever met."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_2","GLOBALLaw",-1)
~ GOTO 38
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29883 /* ~"Preoccupied?"~ */ GOTO 57
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29884 /* ~"Preoccupied?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29885 /* ~"Preoccupied?"~ */ GOTO 60
  IF ~~ THEN REPLY #29886 /* ~"Never mind. Perhaps you can help me with something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #29887 /* ~"No matter, I must take my leave."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #29888 /* ~"Hmmm. Frustrating for us both, it would seem."~ */
  IF ~~ THEN REPLY #29889 /* ~"Never mind. Perhaps you can help me with something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #29890 /* ~"No matter, I must take my leave."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #29891 /* ~"Hmmm. Very well, then."~ */
  IF ~~ THEN REPLY #29892 /* ~"Perhaps you can help me with something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #29893 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 1.11 18.2 59.2 60.2 61.4 62.4 63.8 64.6 72.6 73.5 74.4 85.4 86.6 102.6
  SAY #29894 /* ~"There is nothing much to say about the matter... it was a strange, localized fire. I cannot imagine what would have been precious in the documents that were burned, but someone must have wanted them destroyed."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29895 /* ~"I may have been responsible for the fire." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29896 /* ~"I may have been responsible for the fire." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
~ THEN REPLY #29897 /* ~"Uh... any luck in locating the person responsible?"~ */ GOTO 55
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #29898 /* ~"Any luck in locating the person responsible?"~ */ GOTO 55
  IF ~~ THEN REPLY #29899 /* ~"Can you tell me what was burned?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29900 /* ~"I see. Tell me about your daughter."~ */ GOTO 63
  IF ~~ THEN REPLY #29901 /* ~"Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29902 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1 55.1 56.1
  SAY #29903 /* ~"You? What do you mean?"~ */
  IF ~~ THEN REPLY #29904 /* ~Truth: "I... may have done it at some point in the past. When I was not in my right mind. I regret my actions and ask your forgiveness."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29905 /* ~Lie: "It was a magical compulsion that forced me to behave as I did. I have no knowledge of what transpired."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #29906 /* ~"I'm sorry, I misspoke. Tell me about your daughter."~ */ GOTO 41
  IF ~~ THEN REPLY #29907 /* ~"Forgive me, I did not mean anything by what I said. Perhaps there is something else you can help me with..."~ */ GOTO 41
  IF ~~ THEN REPLY #29908 /* ~"It is no matter. Farewell."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.2 40.3 40.4
  SAY #29909 /* ~"No..." Iannis' face is like stone. "I heard you clearly. You claimed responsibility for the fire. Why would you claim to have done such a thing? Are you mad?!"~ */
  IF ~~ THEN REPLY #29910 /* ~Truth: "I... may have done it at some point in the past. When I was not in my right mind. I regret my actions and ask your forgiveness."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29911 /* ~Lie: "It was a magical compulsion that forced me to behave as I did. I have no knowledge of what transpired."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #29912 /* ~"Do not raise your voice at me again, or the next fire that strikes this place will prove fatal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_5","GLOBALGood",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2
  SAY #29913 /* ~Iannis' face clenches in anger. "You... Sigilian *cur!* I was hoping you'd show your face again after your cowardly act! You damaged my home and several mementos precious to me, now you dare come back here like a vampire-in-the-night and DARE to threaten me again?!"~ */
  IF ~~ THEN REPLY #29914 /* ~Truth: "I... may have done it at some point in the past. When I was not in my right mind. I regret my actions and ask your forgiveness."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_3","GLOBALGood",1)
~ GOTO 48
  IF ~~ THEN REPLY #29915 /* ~Lie: "It was a magical compulsion that forced me to behave as I did. I have no knowledge of what transpired."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29916 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #29917 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29918 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #29919 /* ~"I dare. What do you intend to do about it, old man?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 43 // from: 42.3 90.6 92.2 103.2
  SAY #29920 /* ~Iannis dodges back as you lunge for him, then begins shouting. "Guards! Help! I am being attacked!"~ */
  IF ~~ THEN REPLY #29921 /* ~"Dammit..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 90.5 92.1 103.1
  SAY #29922 /* ~Your hands clamp easily onto Iannis' temples, and you give his head a sharp twist to the left. ~ */
  IF ~~ THEN REPLY #29923 /* ~"Don't have time for your lectures, old man..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(15)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #29924 /* ~There is a *crack,* and Iannis falls limp in your hands.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29925 /* ~"You rest easy now..."~ */ DO ~PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke","GLOBAL",1)
~ JOURNAL #28822 /* ~Iannis irritated me for the last time, so I strangled him until he was silent. With the murder came the stirring of a memory... but it wasn't strong enough to surface. One thing is certain, I've strangled others before.~ */ GOTO 46
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #29926 /* ~"You rest easy now..."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ JOURNAL #28821 /* ~Iannis irritated me for the last time, so I strangled him until he was silent.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29927 /* ~To your surprise, the act seemed instinctual, as if you had done it many times before... with this thought comes the stirring of a memory, but it is not strong enough to surface.~ */
  IF ~~ THEN REPLY #29928 /* ~Leave the body, continue on.~ */ DO ~GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.5 90.8 92.4 103.4
  SAY #29929 /* ~Iannis begins shouting. "Guards! Help! Intruder! Help!"~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #29930 /* ~"Dammit..."~ */ DO ~Enemy()
~ EXTERN ~DVHAIL~ 5
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #29931 /* ~"Dammit..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 40.0 41.0 42.0
  SAY #29932 /* ~"But..." Iannis looks almost at a loss for words. "But... why? Some of the things that were burned... they were precious only to me... irreplaceable!"~ */
  IF ~~ THEN REPLY #29933 /* ~"It is likely that one of those mementos or documents was threatening to this other self of mine... I do not believe I will ever know."~ */ GOTO 49
  IF ~~ THEN REPLY #29934 /* ~"To tell the truth, I do not know."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29935 /* ~"Your other self? What are you speaking of?"~ */
  IF ~~ THEN REPLY #29936 /* ~"I have a peculiar condition... I lose myself on occasion and become someone else for a time. During that time, my actions are not my own."~ */ GOTO 52
  IF ~~ THEN REPLY #29937 /* ~"To tell the truth, I do not know."~ */ GOTO 50
  IF ~~ THEN REPLY #29938 /* ~Lie: "It was a magical compulsion that forced me to behave as I did. I have no knowledge of what transpired."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.1
  SAY #29939 /* ~"You don't know?! What, am I speaking to a child?! How can it be you don't know the reasons for your actions!"~ */
  IF ~~ THEN REPLY #29940 /* ~"I have a peculiar condition... I lose myself on occasion and become someone else for a time. During that time, my actions are not my own."~ */ GOTO 52
  IF ~~ THEN REPLY #29941 /* ~Lie: "It was a magical compulsion that forced me to behave as I did. I have no knowledge of what transpired."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_3","GLOBALLaw",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 40.1 41.1 42.1 49.2 50.1
  SAY #29942 /* ~Iannis frowns... he seems to be thinking the matter over. "I have heard of such magical *geases* being laid upon a man." He falls silent for a moment. "And you *have* chosen to come and take responsibility for the crime..."~ */
  IF ~~ THEN REPLY #29943 /* ~"I merely came to ask your forgiveness for the crime."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~I lied to Iannis and told him that I had been under a magical compulsion to start the fire in his shop, and I asked his forgiveness. He accepted the lie and forgave me easily. He assured me no lasting harm had been done.~ */ GOTO 53
  IF ~~ THEN REPLY #29944 /* ~"I came to ask your forgiveness and make amends for your loss, if it is within my power."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(2500)
~ JOURNAL #29946 /* ~I lied to Iannis and told him that I had been under a magical compulsion to start the fire in his shop, and I asked his forgiveness. He accepted the lie and forgave me easily. He assured me no lasting harm had been done.~ */ GOTO 53
  IF ~~ THEN REPLY #29945 /* ~"Well... not responsibility for the crime. After all, my actions were not my own."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29946 /* ~I lied to Iannis and told him that I had been under a magical compulsion to start the fire in his shop, and I asked his forgiveness. He accepted the lie and forgave me easily. He assured me no lasting harm had been done.~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 49.0 50.0
  SAY #29947 /* ~Iannis frowns... he seems to be thinking the matter over. "I have heard of such symptoms of the mind... temporary amnesia and the emergence of another personality... then there is the fact you have chosen to claim responsibility for the crime..."~ */
  IF ~~ THEN REPLY #29948 /* ~"That is... similar to my condition. I came to ask your forgiveness for the crime."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~I told Iannis I was responsible for the fire in his shop, and I asked his forgiveness. He forgave me easily and assured me no lasting harm had been done.~ */ GOTO 53
  IF ~~ THEN REPLY #29949 /* ~"I came to ask your forgiveness and make amends for your loss, if it is within my power."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_4","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_4","GLOBALLaw",1)
AddexperienceParty(4000)
~ JOURNAL #29951 /* ~I told Iannis I was responsible for the fire in his shop, and I asked his forgiveness. He forgave me easily and assured me no lasting harm had been done.~ */ GOTO 53
  IF ~~ THEN REPLY #29950 /* ~"Well... not responsibility for the crime. After all, my actions were not my own."~ */ DO ~AddexperienceParty(1000)
~ JOURNAL #29951 /* ~I told Iannis I was responsible for the fire in his shop, and I asked his forgiveness. He forgave me easily and assured me no lasting harm had been done.~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 52.0 52.1 52.2
  SAY #29952 /* ~"I..." Iannis frowns, then his expression relaxes. "There is nothing to forgive... I have come to terms with the loss, and no lasting harm has been done. I do not know why the target was chosen, however. There was nothing of value among the documents burned."~ */
  IF ~~ THEN REPLY #29953 /* ~"What were the documents?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #29954 /* ~"Legacies, mostly. Some very old ones."~ */
  IF ~~ THEN REPLY #29955 /* ~"Legacies?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 55 // from: 39.2 39.3
  SAY #29956 /* ~"No, neither the Harmonium nor the Mercykillers have had any fortune in locating the person responsible."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29957 /* ~"I may have been responsible for the fire." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29958 /* ~"I may have been responsible for the fire." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29959 /* ~"Can you tell me what was burned?"~ */ GOTO 56
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29960 /* ~"I see. Tell me about your daughter."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64204 /* ~"I see. Tell me about your daughter."~ */ GOTO 63
  IF ~~ THEN REPLY #29961 /* ~"That is unfortunate. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29962 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 39.4 55.2
  SAY #29963 /* ~"A number of old legacies were burned, and some mementos and other keepsakes of value only to me."~ */
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
NearbyDialog("DVhail")
~ THEN REPLY #29964 /* ~"I may have been responsible for the fire." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ EXTERN ~DVHAIL~ 4
  IF ~  Global("Know_Iannis_Fire_Responsible","GLOBAL",1)
!NearbyDialog("DVhail")
~ THEN REPLY #29965 /* ~"I may have been responsible for the fire." ~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ GOTO 40
  IF ~~ THEN REPLY #29966 /* ~"Legacies?"~ */ GOTO 12
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29967 /* ~"I see. Tell me about your daughter."~ */ GOTO 63
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #64203 /* ~"I see. Tell me about your daughter."~ */ GOTO 63
  IF ~~ THEN REPLY #29968 /* ~"Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29969 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.1 1.3 36.2
  SAY #29970 /* ~"You must excuse me. As of late, I have been beset by troubles... I'm afraid it has been a rather trying time these past few years."~ */
  IF ~~ THEN REPLY #29971 /* ~"Anything I could help with?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_5","GLOBALGood",1)
~ GOTO 58
  IF ~~ THEN REPLY #29972 /* ~"What troubles?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29973 /* ~"I see. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29974 /* ~"I'm sorry to have disturbed you... I hope your situation improves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #29975 /* ~"No, no... there is little that can be done." He nods at you. "Nevertheless, I appreciate your offer. Thank you."~ */
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29976 /* ~"Perhaps talking about your troubles will help ease your mind."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29977 /* ~"Perhaps talking about your troubles will help ease your mind."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29978 /* ~"Perhaps talking about your troubles will help ease your mind."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_6","GLOBALGood",1)
SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29979 /* ~"What troubles have you had?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 59
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29980 /* ~"What troubles have you had?"~ */ DO ~SetGlobal("Know_Iannis_Fire","GLOBAL",1)
~ GOTO 60
  IF ~  Global("Know_Iannis_Deionarra_Death","GLOBAL",0)
GlobalGT("Know_Iannis_Fire","GLOBAL",0)
~ THEN REPLY #29981 /* ~"What troubles have you had?"~ */ DO ~SetGlobal("Know_Iannis_Deionarra_Death","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #29982 /* ~"Very well. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29983 /* ~"I hope your situation improves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.1 58.0 58.2 58.3 58.5
  SAY #29984 /* ~Iannis sighs. "I do not wish to burden you... I lost my daughter not long ago. There was also the fire... but that is another matter."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29985 /* ~"Tell me about your daughter."~ */ GOTO 61
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29986 /* ~"Tell me about your daughter."~ */ GOTO 62
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29987 /* ~"A fire?"~ */ GOTO 39
  IF ~~ THEN REPLY #29988 /* ~"I see. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29989 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 1.0 1.2 36.3 36.4 58.1 58.4
  SAY #29990 /* ~Iannis sighs. "I do not wish to burden you any further... as I mentioned to you before, I lost my daughter not long ago. There was also the fire... but that is another matter."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #29991 /* ~"Tell me more about your daughter."~ */ GOTO 63
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #29992 /* ~"Tell me more about your daughter."~ */ GOTO 63
  IF ~  GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #29993 /* ~"A fire?"~ */ GOTO 39
  IF ~~ THEN REPLY #29994 /* ~"Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #29995 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #30224 /* ~Instantly, Iannis seems to collapse into himself. "Yes..." His businesslike facade drains from his face, to be replaced with cold despair. "My daughter, Deionarra, passed away some time ago..." You receive a cold shock at the name. You *knew* this woman.~ */
  IF ~~ THEN REPLY #30225 /* ~"Tell me about her. What was she like?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30226 /* ~"How did she die?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30227 /* ~"I saw a woman by that name interred in the Mortuary memorial hall."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30228 /* ~"I saw a woman by that name interred in the Mortuary memorial hall. She had become a ghost and claimed that she knew me."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30229 /* ~"Actually, tell me more about this fire."~ */ GOTO 39
  IF ~~ THEN REPLY #30230 /* ~"Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30231 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 59.1
  SAY #30232 /* ~Instantly, Iannis seems to collapse into himself. "Yes..." His businesslike facade drains from his face, to be replaced with cold despair. "My daughter, Deionarra, passed away some time ago..."~ */
  IF ~~ THEN REPLY #30233 /* ~"Tell me about her. What was she like?"~ */ GOTO 63
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30234 /* ~"How did she die?"~ */ GOTO 85
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30235 /* ~"I saw a woman by that name interred in the Mortuary memorial hall."~ */ GOTO 86
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",2)
GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #30236 /* ~"I saw a woman by that name interred in the Mortuary memorial hall. She had become a ghost and claimed she knew me."~ */ GOTO 87
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30237 /* ~"Actually, tell me more about this fire."~ */ GOTO 39
  IF ~~ THEN REPLY #30238 /* ~"Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30239 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 1.12 39.5 55.3 55.4 56.3 56.4 60.0 60.1 61.0 62.0 66.5 67.0 68.0 87.2 93.2 94.2 95.2 96.0
  SAY #30240 /* ~"Deionarra? She was... young. She had recently joined the Society of Sensation, the Sensates... not an unpleasant faction, but she had also met someone there... she followed him on a journey and there, she died. Her bod..." He looks pained. "I was not even able to recover her body..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30241 /* ~"Iannis, I discovered what happened to Deionarra."~ */ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 75
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30235 /* ~"I saw a woman by that name interred in the Mortuary memorial hall."~ */ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 86
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalLT("Iannis_Know_Spirit","AR0607",2)
~ THEN REPLY #30236 /* ~"I saw a woman by that name interred in the Mortuary memorial hall. She had become a ghost and claimed she knew me."~ */ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 87
  IF ~~ THEN REPLY #30242 /* ~"You say she was a Sensate?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30243 /* ~"Do you know anything about this man she journeyed with?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 72
  IF ~~ THEN REPLY #30244 /* ~"Do you know where she went on this journey?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30245 /* ~"Do you know how she died?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 85
  IF ~~ THEN REPLY #30246 /* ~"Forgive me for asking, but if you were not able to recover her body, how did you know she had died?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30247 /* ~"I see. Tell me about this fire."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 39
  IF ~~ THEN REPLY #30248 /* ~"Perhaps there is something else you can help me with..."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ GOTO 1
  IF ~~ THEN REPLY #30249 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ JOURNAL #30251 /* ~Deionarra's father, Iannis, told me that she was a member of the Sensates. He said that she was very young when she died, and that she had died while following a man she had met on a journey. Her body was never recovered.~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.3 72.2 73.1 74.1 85.1 86.2 102.1
  SAY #30250 /* ~"Yes..." He becomes slightly more animated, as if warming himself on a precious memory. "She had joined them because of her gift... and the fact there was so *much* about the multiverse that she wanted to experience. The Sensates lend themselves readily to the sharing of experience and sensation."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30252 /* ~"Iannis, I discovered what happened to Deionarra."~ */ GOTO 75
  IF ~  GlobalGT("Sensory_Deionarra","GLOBAL",0)
Global("Iannis_Sensory_Quest","GLOBAL",0)
~ THEN REPLY #30253 /* ~"I noticed that. I encountered a sensory stone in the sensorium that contained a fragment of her experiences."~ */ GOTO 65
  IF ~~ THEN REPLY #2944 /* ~"Gift?"~ */ DO ~SetGlobal("Deionarra_Sight","GLOBAL",1)
~ JOURNAL #30260 /* ~Iannis told me Deionarra had the blood of an oracle running through her veins. It gave her the gift of 'Sight,' allowing her to see events before they happen.~ */ GOTO 102
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30254 /* ~"Do you know anything about this man she journeyed with?"~ */ GOTO 72
  IF ~~ THEN REPLY #30255 /* ~"Do you know where she went on this journey?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30256 /* ~"Do you know how she died?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30257 /* ~"I see. Tell me about this fire."~ */ GOTO 39
  IF ~~ THEN REPLY #30258 /* ~"Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30259 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 1.9 25.0 26.0 64.1
  SAY #30261 /* ~His eyes blaze with hope. "There is? But in which one...? You must tell me!"~ */
  IF ~~ THEN REPLY #30262 /* ~"It is one of the Sensate sensory stones... if you are not a Sensate, you could not gain access."~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #30263 /* ~He thinks for a moment. "I must find a way... perhaps they would make an exception for her father..."~ */
  IF ~~ THEN REPLY #30264 /* ~"If you wanted, I could speak to someone. I'm certain they would make an exception in your case."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~I told Iannis I could make inquiries at the Festhall and see if I could get him in to see his daughter's sensory stone. I don't know what I will be able to do, but I'll try.~ */ GOTO 67
  IF ~~ THEN REPLY #30265 /* ~"I do not wish to break the Sensates' laws. Nevertheless, I could speak to someone and see if something else might be done."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_7","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_5","GLOBALLaw",1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30270 /* ~I told Iannis I could make inquiries at the Festhall and see if I could get him in to see his daughter's sensory stone. I don't know what I will be able to do, but I'll try.~ */ GOTO 67
  IF ~~ THEN REPLY #30266 /* ~"I could help you, for a price. My word may carry some weight at the Festhall."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_2","GLOBALGood",-1)
SetGlobal("Iannis_Sensory_Quest","GLOBAL",1)
~ JOURNAL #30271 /* ~I told Iannis I could make inquiries at the Festhall and see if I could get him in to see his daughter's sensory stone... for a price. He told me he would pay me after I had obtained permission from the Sensates.~ */ GOTO 68
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64287 /* ~"They might. Now, in the sensory stone, she left a legacy number for me..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64288 /* ~"They might. Now, in the sensory stone, she left a legacy number for me..."~ */ GOTO 104
  IF ~~ THEN REPLY #30267 /* ~"That is a matter between you and them. Tell me more about Deionarra..."~ */ GOTO 63
  IF ~~ THEN REPLY #30268 /* ~"It is possible. You should speak to them. In any event, I had some other questions for you..."~ */ GOTO 1
  IF ~~ THEN REPLY #30269 /* ~"They might. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1
  SAY #30272 /* ~Iannis looks relieved. "If you could, I would be most grateful."~ */
  IF ~~ THEN REPLY #30273 /* ~"I will see what can be done. I would know more about Deionarra, though. What was she like?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64289 /* ~"I will go settle the matter shortly. Now, in the sensory stone, she left a legacy number for me..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64290 /* ~"I will go settle the matter shortly. Now, in the sensory stone, she left a legacy number for me..."~ */ GOTO 104
  IF ~~ THEN REPLY #30274 /* ~"I will try... before I go, perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30275 /* ~"I will see what I can do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY #30276 /* ~Iannis looks relieved. "When you have obtained permission for me to see the stone, please return, and I will see to it that you are well-compensated for your trouble."~ */
  IF ~~ THEN REPLY #30277 /* ~"I will see what can be done; it may not be a small matter. I would know more about Deionarra, though, before I make inquiries at the Festhall. What was she like?"~ */ GOTO 63
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64291 /* ~"I will go settle the matter shortly, then. Now, I was interested in the legacy she left for me..."~ */ GOTO 26
  IF ~  GlobalLT("Know_Deionarra_Legacy","GLOBAL",2)
GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #64292 /* ~"I will go settle the matter shortly, then. Now, I was interested in the legacy she left for me..."~ */ GOTO 104
  IF ~~ THEN REPLY #30278 /* ~"I will try... before I go, perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30279 /* ~"I will see what I can do... it may be *very* expensive, indeed. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 4.0
  SAY #30280 /* ~"You... I... thank you, good sir, thank you! I am in your debt!"~ */
  IF ~  Global("Evil_Iannis_2","GLOBAL",1)
~ THEN REPLY #30281 /* ~"Actually, you are... I do believe you mentioned something about compensation before..."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30284 /* ~I returned to Iannis and told him that the Sensates agreed to allow him access to his daughter's sensory stone. He was extremely grateful... so much so that he was willing to pay me a great deal in coin and minor magic items he had stored away. I suppose there is a price to be placed on a father's love for his daughter...~ */ GOTO 70
  IF ~  Global("Evil_Iannis_2","GLOBAL",0)
~ THEN REPLY #30282 /* ~"It was no trouble, Iannis. Please, go see the experiences of your daughter. I think they might ease your troubles."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",3)
AddexperienceParty(8000)
~ JOURNAL #30285 /* ~I returned to Iannis and told him that the Sensates agreed to allow him access to his daughter's sensory stone. He was extremely grateful; just mentioning that I had succeeded in getting him permission to see his Deionarra's sensory stone caused his depression to lift measurably.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #30283 /* ~"Of course, of course... hold a moment, I will return shortly."~ */
  IF ~~ THEN REPLY #30286 /* ~"Very well. I will wait."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(500)
GiveItemCreate("Maslow",Protagonist,33,33,33)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #30287 /* ~After a moment, Iannis returns. In his hands he holds a large bag of coins, and what appear to be some strange-looking charms. "Here you are, sir... and again, you have my gratitude for your efforts."~ */
  IF ~~ THEN REPLY #30288 /* ~"Yes, yes... look, perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30289 /* ~"Of course, of course... no trouble at all... certainly for this amount of coin. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 63.4 64.3 73.2 74.2 102.2
  SAY #30290 /* ~"Little. I barely even knew of his existence until she had departed. By then, it was too late to have known him."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30291 /* ~"Iannis, I discovered what happened to Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30292 /* ~"I believe the man was me. But I have forgotten much."~ */ GOTO 88
  IF ~~ THEN REPLY #30293 /* ~"You say she was a Sensate?"~ */ GOTO 64
  IF ~~ THEN REPLY #30295 /* ~"Do you know where she went on this journey?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30297 /* ~"How did she die?"~ */ GOTO 85
  IF ~~ THEN REPLY #30300 /* ~"How do you know she died?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30301 /* ~"I see. Tell me about this fire."~ */ GOTO 39
  IF ~~ THEN REPLY #30302 /* ~"I see. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30303 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 63.5 64.4 72.3 74.3 85.2 86.3 102.3
  SAY #30304 /* ~"She never said. I am not certain she was capable of saying where they had gone. It must have been a... terrible place."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30305 /* ~"Iannis, I discovered what happened to Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30306 /* ~"You say she was a Sensate?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30307 /* ~"Do you know anything about this man she journeyed with?"~ */ GOTO 72
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30308 /* ~"How did she die?"~ */ GOTO 85
  IF ~~ THEN REPLY #30309 /* ~"How do you know she died?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30310 /* ~"I see. Tell me about this fire."~ */ GOTO 39
  IF ~~ THEN REPLY #30311 /* ~"I see. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30312 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 63.7 72.5 73.4 85.3 86.5 102.5
  SAY #30313 /* ~"It is most curious... I went to the Dustmen to see if they had found her body, and they directed me to one of their faction outside the Dustman monument... a Dustman named 'Death-of-Names,' I believe. He is said to be an oracle of sorts, concerning those who have died. He told me my daughter had died."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30314 /* ~"Iannis, I discovered what happened to Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30315 /* ~"You say she was a Sensate?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30316 /* ~"Do you know anything about this man she journeyed with?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #30317 /* ~"Do you know where she went on this journey?"~ */ DO ~SetGlobal("Know_Deionarra_Sensate","GLOBAL",1)
~ GOTO 73
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30318 /* ~"I see. Tell me about this fire."~ */ GOTO 39
  IF ~~ THEN REPLY #30319 /* ~"Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30320 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 1.13 63.0 64.0 72.0 73.0 74.0 85.0 86.0 102.0
  SAY #30321 /* ~Iannis doesn't seem to have heard you for a moment. When he speaks again, his words come slowly. "Tell me. I must know."~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Truth: "I am responsible for your daughter's death. I murdered her on the Negative Material Plane in the hopes that her love for me would tie her to that place."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~I confessed to Deionarra's father, Iannis, and told him what happened to his daughter. Despite the magnitude of the crime, I hope that knowing her fate will ease his mind somewhat.~ */ EXTERN ~DVHAIL~ 6
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30323 /* ~Truth: "I am responsible for your daughter's death. I murdered her on the Negative Material Plane in the hopes that her love for me would tie her to that place."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~I confessed to Deionarra's father, Iannis, and told him what happened to his daughter. Despite the magnitude of the crime, I hope that knowing her fate will ease his mind somewhat.~ */ GOTO 76
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Half-Truth: "She perished on the Negative Material Plane from an act of betrayal."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~I made a partial confession to Deionarra's father, Iannis, and told him some of what had happened to his daughter. I hope that knowing her fate will ease the old man's mind somewhat. He probably couldn't handle the truth, anyway, and I don't need yet another person blaming me for *every* trouble across the planes.~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30325 /* ~Half-Truth: "She perished on the Negative Material Plane from an act of betrayal."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~I made a partial confession to Deionarra's father, Iannis, and told him some of what had happened to his daughter. I hope that knowing her fate will ease the old man's mind somewhat. He probably couldn't handle the truth, anyway, and I don't need yet another person blaming me for *every* trouble across the planes.~ */ GOTO 77
  IF ~~ THEN REPLY #30326 /* ~Lie: "She took ill upon the journey... apparently, the amount of time in Sigil did not prepare her for the environment of other planes."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~I told Deionarra's father, Iannis, a lie about what happened to his daughter. I hope that the lie will ease the old man's mind somewhat. He probably couldn't handle the truth, anyway, and I don't need yet another person blaming me for *every* trouble across the planes.~ */ GOTO 89
  IF ~~ THEN REPLY #30327 /* ~"Never mind. I misspoke. Perhaps there is something else you can help me with..."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
  IF ~~ THEN REPLY #30328 /* ~"It is of no matter. Farewell."~ */ DO ~SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ GOTO 90
END

IF ~~ THEN BEGIN 76 // from: 75.1 77.0 90.2
  SAY #30332 /* ~Iannis stares at you in silence for a moment, then his voice breaks. "Why... *why* did you do such a terrible act?"~ */
  IF ~~ THEN REPLY #30333 /* ~"It was not I... it was another part of me. He did it in the hopes that she could serve as a tie to that plane for his own purposes. I am sorry, Iannis."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30334 /* ~"I believe I may be responsible for many terrible things, many of which I cannot remember. I did it in the hopes that she could serve as a tie to that plane. I am sorry, Iannis."~ */ DO ~AddexperienceParty(12000)
~ GOTO 79
  IF ~~ THEN REPLY #30335 /* ~"It was not a 'terrible' act, it was a *necessary* act, Iannis. Your daughter was willing to give up her life for me, and her life was what I needed in order to save mine."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_3","GLOBALGood",-3)
AddexperienceParty(12000)
~ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 75.3 90.3
  SAY #30336 /* ~Iannis stares at you in silence. "Who?"~ */
  IF ~~ THEN REPLY #30337 /* ~Truth: "I am responsible."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",1)
~ GOTO 76
  IF ~~ THEN REPLY #30338 /* ~Lie: "I do not know. It would be best not to investigate such matters."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
~ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.1
  SAY #30339 /* ~Iannis looks broken. "I must find out..." He looks up at you. "Thank you for telling me. I needed to know what happened to her..."~ */
  IF ~~ THEN REPLY #30340 /* ~"I understand. Perhaps there's something you can help me with before I go..."~ */ GOTO 1
  IF ~~ THEN REPLY #30341 /* ~"I mourn the loss of your daughter, Iannis. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.0 76.1
  SAY #30342 /* ~"You..." Iannis seems to be trying to make sense of your words. "Wait... you said it was intended to tie her to that plane? What do you mean?"~ */
  IF ~~ THEN REPLY #30343 /* ~"As I understand it, it was hoped that the combination of her love for me and her death on the Negative Material Plane would cause her to live on as a spirit."~ */ DO ~SetGlobal("Iannis_Confessed","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #30344 /* ~"She *lives?*"~ */
  IF ~~ THEN REPLY #30345 /* ~"In a sense... yes."~ */ GOTO 81
  IF ~~ THEN REPLY #30346 /* ~"Well, I wouldn't say she *lives.* Her spirit still exists..."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #30347 /* ~"That..." He looks horrified. "She must be set free!"~ */
  IF ~~ THEN REPLY #30348 /* ~"If I could find a way to do that, I would."~ */ GOTO 82
  IF ~  Global("Lawful_Deionarra_1","GLOBAL",1)
~ THEN REPLY #30349 /* ~"I have already sworn that I would try to set her free... or join her there."~ */ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0 81.1 92.0
  SAY #30350 /* ~"If you have any decency at all, spare my daughter. There is nothing that can be done to change what has happened, so I ask that you allow her soul to rest in peace. I will find some way to forgive what you have done if you do this for me."~ */
  IF ~~ THEN REPLY #30351 /* ~Vow: "I promise I shall allow your daughter to rest peacefully."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_8","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30352 /* ~"I will see what I can do."~ */ GOTO 83
  IF ~~ THEN REPLY #30353 /* ~"I cannot..."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0 82.1 97.2 100.0 100.1 100.2 101.0
  SAY #30354 /* ~"Very well, then. Now leave. I wish to be alone with my thoughts."~ */
  IF ~~ THEN REPLY #30355 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 82.2
  SAY #30356 /* ~"Then may the planes work their justice upon you, sir!" Iannis' teeth clench. "May my daughter's suffering be reflected back upon you a hundred fold!"~ */
  IF ~~ THEN REPLY #30357 /* ~"Watch your words, Iannis, or you shall meet your daughter sooner than you think."~ */ GOTO 92
  IF ~~ THEN REPLY #30358 /* ~"I see there is nothing more to discuss. Farewell."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 61.1 62.1 63.6 64.5 72.4 73.3 86.4 102.4
  SAY #30359 /* ~"I do not know... her body was never recovered." Iannis' face turns blood-red and his hands clench into fists. "And that is perhaps the most *maddening* part of this misery... I will never know what possessed her to run off like that, what happened to her, nor where her body lies now!"~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30360 /* ~"Iannis, I discovered what happened to Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30361 /* ~"You say she was a Sensate?"~ */ GOTO 64
  IF ~~ THEN REPLY #30362 /* ~"Do you know where Deionarra and this man went on their journey?"~ */ GOTO 73
  IF ~~ THEN REPLY #30363 /* ~"Forgive me for asking, but how do you know she's dead if you never saw the body?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30364 /* ~"I see. Tell me about this fire."~ */ GOTO 39
  IF ~~ THEN REPLY #30365 /* ~"I see. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30366 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 61.2 62.2 63.1
  SAY #30367 /* ~"Yes, I arranged for a bier to be placed in the memorial hall. There is no body there, of course, but I hoped the bier would serve as a marker by which she may find her way home."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30368 /* ~"Iannis, I discovered what happened to Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30369 /* ~"It worked... her spirit resides there now."~ */ GOTO 87
  IF ~~ THEN REPLY #30370 /* ~"You say she was a Sensate?"~ */ GOTO 64
  IF ~~ THEN REPLY #30371 /* ~"Do you know where Deionarra and this man went on their journey?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30372 /* ~"Do you know how she died?"~ */ GOTO 85
  IF ~~ THEN REPLY #30373 /* ~"If there's no body, how do you know she's dead?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30374 /* ~"I see. Tell me about this fire."~ */ GOTO 39
  IF ~~ THEN REPLY #30375 /* ~"I see. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30376 /* ~"I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 61.3 62.3 63.2 86.1
  SAY #30377 /* ~"Wh... what?!" Iannis looks flustered. "Wh... what did you just say?!"~ */
  IF ~  GlobalLT("Iannis_Know_Spirit","AR0607",1)
~ THEN REPLY #30378 /* ~"Her spirit now resides in the memorial hall."~ */ GOTO 93
  IF ~~ THEN REPLY #30379 /* ~"Her spirit now resides in the memorial hall. I spoke with her for a time, and she seems to be in distress."~ */ GOTO 97
  IF ~~ THEN REPLY #30380 /* ~"I said nothing... tell me again of Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30381 /* ~"Nothing... I misspoke. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30382 /* ~"I said that I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 72.1 98.0
  SAY #30383 /* ~"You?!" Iannis looks you up and down. "You are the one... and you say you have *forgotten?!*" Iannis draws himself up; he looks like he is squaring himself for a battle. "You have *forgotten*... but the incident was not so long ago. How can this be?"~ */
  IF ~~ THEN REPLY #30384 /* ~"I have a strange condition... I lose myself... for a time. Anything you can tell me about myself or your daughter would be invaluable."~ */ GOTO 99
  IF ~~ THEN REPLY #30385 /* ~"I misspoke. I doubt that I am that man. I am certain I would have remembered your daughter if I traveled with her."~ */ GOTO 103
  IF ~~ THEN REPLY #30386 /* ~"I tire of these questions. Farewell."~ */ GOTO 103
END

IF ~~ THEN BEGIN 89 // from: 75.4 90.4
  SAY #30387 /* ~"I feared as much." Iannis sighs. "Your story rings true... she led a sheltered life her in the city, and even in the best of times, her health was poor." He looks up hopefully. "Do you know where might her body be? I would see that is interred properly."~ */
  IF ~~ THEN REPLY #30388 /* ~"There is nothing left of her body... it was a wasting sickness, and it left little of her remains."~ */ GOTO 101
END

IF ~~ THEN BEGIN 90 // from: 75.5 75.6
  SAY #30389 /* ~"No, sir, I heard you clearly. You said you knew what had befallen my daughter. You will tell me. Now." Iannis' frown deepens. "Or I will summon a Harmonium patrol to pry the answers from you." ~ */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30322 /* ~Truth: "I am responsible for your daughter's death. I murdered her on the Negative Material Plane in the hopes that her love for me would tie her to that place."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~I confessed to Deionarra's father, Iannis, and told him what happened to his daughter. Despite the magnitude of the crime, I hope that knowing her fate will ease his mind somewhat.~ */ EXTERN ~DVHAIL~ 6
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30324 /* ~Half-Truth: "She perished on the Negative Material Plane from an act of betrayal."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~I made a partial confession to Deionarra's father, Iannis, and told him some of what had happened to his daughter. I hope that knowing her fate will ease the old man's mind somewhat. He probably couldn't handle the truth, anyway, and I don't need yet another person blaming me for *every* trouble across the planes.~ */ EXTERN ~DVHAIL~ 7
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30390 /* ~Truth: "I am responsible for your daughter's death. I murdered her on the Negative Material Plane in the hopes that her love for me would tie her to that place."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_8","GLOBALGood",3)
IncrementGlobalOnceEx("GLOBALLawful_Iannis_6","GLOBALLaw",3)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30329 /* ~I confessed to Deionarra's father, Iannis, and told him what happened to his daughter. Despite the magnitude of the crime, I hope that knowing her fate will ease his mind somewhat.~ */ GOTO 76
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #30391 /* ~Half-Truth: "She perished on the Negative Material Plane from an act of betrayal."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Iannis_9","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_4","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30330 /* ~I made a partial confession to Deionarra's father, Iannis, and told him some of what had happened to his daughter. I hope that knowing her fate will ease the old man's mind somewhat. He probably couldn't handle the truth, anyway, and I don't need yet another person blaming me for *every* trouble across the planes.~ */ GOTO 77
  IF ~~ THEN REPLY #30392 /* ~Lie: "She took ill upon the journey... apparently, the amount of time in Sigil did not prepare her for the environment of other planes."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_5","GLOBALLaw",-1)
SetGlobal("Deionarra_Death_Truth","GLOBAL",2)
~ JOURNAL #30331 /* ~I told Deionarra's father, Iannis, a lie about what happened to his daughter. I hope that the lie will ease the old man's mind somewhat. He probably couldn't handle the truth, anyway, and I don't need yet another person blaming me for *every* trouble across the planes.~ */ GOTO 89
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30393 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30394 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30395 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30396 /* ~"You want to summon the guards? Go ahead. The dead-book's not half full by my count."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #30397 /* ~"Why did you do such a thing?! That was my daughter's LIFE, not-"~ */
  IF ~~ THEN REPLY #30398 /* ~"It was your daughter's life to do with as I pleased. She was the one who gave me permission by placing her life in my hands."~ */ GOTO 92
  IF ~~ THEN REPLY #30399 /* ~"I tire of bandying words with you. Be silent, or you shall join your daughter in death."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 84.0 91.0 91.1
  SAY #30400 /* ~Iannis' face clenches in anger. "You... Sigilian *cur!* You murdered my daughter without a shred of remorse, now you dare come back here like a vampire-in-the-night and DARE to threaten me?!"~ */
  IF ~  Global("Evil_Iannis_3","GLOBAL",0)
~ THEN REPLY #30401 /* ~"I spoke in haste... I apologize for my words."~ */ GOTO 82
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30402 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30403 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30404 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30405 /* ~"I dare, and I don't mind adding more corpses to my list. What do you intend to do about it, old man?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 93 // from: 87.0
  SAY #30461 /* ~"You had best be speaking figuratively!" Iannis looks furious. "If so, then I have no time for your wordplay..."~ */
  IF ~~ THEN REPLY #30462 /* ~"No, my words are literal. Her spirit resides in the memorial hall."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",1)
~ GOTO 94
  IF ~~ THEN REPLY #30463 /* ~"No, my words are literal. Her spirit now resides in the memorial hall. I spoke with her for a time, and she seems to be in distress."~ */ GOTO 97
  IF ~~ THEN REPLY #30464 /* ~"Then you have my apologies... tell me again of Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30465 /* ~"I misspoke. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30466 /* ~"My words were poorly chosen. I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #30467 /* ~"She has become a... spirit?"~ */
  IF ~~ THEN REPLY #30468 /* ~"Yes."~ */ GOTO 95
  IF ~~ THEN REPLY #30469 /* ~"Yes, I spoke with her for a time, and she seems to be in distress."~ */ GOTO 97
  IF ~~ THEN REPLY #30470 /* ~"No, I was mistaken... tell me again of Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30471 /* ~"I misspoke. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30472 /* ~"My words were poorly chosen. I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #30484 /* ~"I... I... will have to seek her out, see if I can communicate with her, see what has kept her here... her state... how do you know she has become a spirit?"~ */
  IF ~~ THEN REPLY #30485 /* ~"I caught a glimpse of a spectral form by her bier in the Mortuary. I assumed it was her."~ */ GOTO 96
  IF ~~ THEN REPLY #30486 /* ~"I spoke with her for a time, and she seems to be in distress."~ */ GOTO 97
  IF ~~ THEN REPLY #30487 /* ~"No, I was mistaken... tell me again of Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30488 /* ~"I misspoke. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30489 /* ~"My words were poorly chosen. I mourn your loss. I will take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0 97.0 98.1
  SAY #30490 /* ~"I will travel there as soon as I am able and investigate the matter for myself." He nods at you. "If your words carry truth, sir, then I am indebted to you..."~ */
  IF ~~ THEN REPLY #30491 /* ~"It is no matter... tell me again of Deionarra."~ */ GOTO 63
  IF ~~ THEN REPLY #30492 /* ~"Very well, then. Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30493 /* ~"Perhaps I shall collect on that debt another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 87.1 93.1 94.1 95.1
  SAY #30494 /* ~"You... spoke to her?!" Iannis seems to become more confused by the moment. "What distresses her?"~ */
  IF ~~ THEN REPLY #30495 /* ~"I'm... not certain. I wasn't able to make out what she was saying."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 96
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Me, apparently. She said that she loved me and that I had loved her... and that I had forsaken her."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 98
  IF ~  GlobalGT("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30496 /* ~"Me, apparently. She said that she loved me and that I had loved her... and that I had forsaken her."~ */ DO ~SetGlobal("Iannis_Know_Spirit","AR0607",2)
~ GOTO 83
END

IF ~~ THEN BEGIN 98 // from: 97.1
  SAY #30497 /* ~"I see. Perhaps..." Iannis frowns and studies you... his face has become like stone. "Are you the one she left Sigil with? The one who led her on the journey that killed her?"~ */
  IF ~~ THEN REPLY #30498 /* ~"I'm... not certain. I think I may be that man, but I have forgotten much."~ */ GOTO 88
  IF ~~ THEN REPLY #30499 /* ~"I don't think so. She seemed hysterical and knew little of her surroundings. You might want to go seek her out."~ */ GOTO 96
END

IF ~~ THEN BEGIN 99 // from: 88.0 103.0
  SAY #30500 /* ~"Countless liars have I known in my tenure in this city." Iannis studies you intently. "You do not strike me as one of them... at least on this matter." He sighs. "If you truly do not remember, then whatever befell you and my daughter on your journey must have left deep scars."~ */
  IF ~~ THEN REPLY #30501 /* ~"I am inclined to agree."~ */ DO ~SetGlobal("Deionarra_Fate_Quest","GLOBAL",1)
~ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #30502 /* ~"Then I ask your word on this: If your memory returns, and you discover what has happened to my daughter, return to me so that my mind may at last be at rest on this matter."~ */
  IF ~~ THEN REPLY #30503 /* ~Vow: "I will do that."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Iannis_7","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #30504 /* ~Lie: "I will do that."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Iannis_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Iannis_4","GLOBALGood",-1)
~ GOTO 83
  IF ~~ THEN REPLY #30505 /* ~"If I find out what happened to her, I will return... if I can."~ */ GOTO 83
END

IF ~~ THEN BEGIN 101 // from: 89.0
  SAY #30506 /* ~"I... see." Iannis frowns. "Thank you for easing my mind, sir. I can only hope she did not suffer long in death, and that it claimed her quickly."~ */
  IF ~~ THEN REPLY #30507 /* ~"No doubt it did... I am sure her end was quick and final. The sickness struck her like a dagger, without warning. *Most* unfortunate."~ */ GOTO 83
END

IF ~~ THEN BEGIN 102 // from: 64.2
  SAY #30508 /* ~"Oh, yes..." Iannis nods. "My daughter had the blood of an oracle running in her veins, but it was an unreliable talent. At times, she could predict events before they took place... she had 'Sight;' she could see through time itself, sift through the threads of fate..."~ */
  IF ~  GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #30509 /* ~"Iannis, I discovered what happened to Deionarra."~ */ GOTO 75
  IF ~~ THEN REPLY #30510 /* ~"You say she was a Sensate?"~ */ GOTO 64
  IF ~  Global("Deionarra_Fate_Quest","GLOBAL",0)
~ THEN REPLY #30511 /* ~"Do you know anything about this man she journeyed with?"~ */ GOTO 72
  IF ~~ THEN REPLY #30512 /* ~"Do you know where she went on this journey?"~ */ GOTO 73
  IF ~  GlobalLT("Deionarra_Death_Truth","GLOBAL",2)
~ THEN REPLY #30513 /* ~"Do you know how she died?"~ */ GOTO 85
  IF ~~ THEN REPLY #30514 /* ~"Forgive me for asking, but if you were not able to recover her body, how did you know she had died?"~ */ GOTO 74
  IF ~  GlobalGT("Know_Iannis_Fire","GLOBAL",0)
GlobalLT("Know_Iannis_Fire_Responsible","GLOBAL",2)
~ THEN REPLY #30515 /* ~"I see. Tell me about this fire."~ */ GOTO 39
  IF ~~ THEN REPLY #30516 /* ~"Perhaps there is something else you can help me with..."~ */ GOTO 1
  IF ~~ THEN REPLY #30517 /* ~"Hmmm. That must have been a very useful talent indeed... especially for anyone she traveled with. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 88.1 88.2
  SAY #30518 /* ~"No, sir, I heard you clearly. You will tell me all of you know. Now." Iannis' frown deepens. "Or I will summon a Harmonium patrol to get the answers from you." ~ */
  IF ~~ THEN REPLY #30519 /* ~"I have a strange condition... I lose myself... for a time. I did not lie to you about your daughter. It is just that I have forgotten a great deal of my life and myself."~ */ GOTO 99
  IF ~  CheckStatGT(Protagonist,12,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30520 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 44
  IF ~  CheckStatLT(Protagonist,13,DEX)
!NearbyDialog("DVhail")
~ THEN REPLY #30521 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ GOTO 43
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #30522 /* ~Snap his neck.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Iannis_7","GLOBALLaw",-1)
~ EXTERN ~DVHAIL~ 3
  IF ~~ THEN REPLY #30523 /* ~"You want to summon the guards? Go ahead. They'll die just as easily as you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Iannis_6","GLOBALGood",-1)
~ GOTO 47
END

IF ~~ THEN BEGIN 104 // from: 15.2 66.4 67.2 68.2
  SAY #30524 /* ~"Ah!" Iannis nods. "It seems you spoke true... my daughter was known to you, then." He sighs. "Hold a moment, and I will see what was left to you."~ */
  IF ~~ THEN REPLY #30525 /* ~"I will wait."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Deionarra_Legacy","GLOBAL",2)
AddexperienceParty(8000)
GiveItemCreate("DLegacy1",Protagonist,0,0,0)
GiveItemCreate("Dlegacy2",Protagonist,2,0,0)
GiveItemCreate("HearChrm",Protagonist,2,0,0)
GiveItemCreate("DWedRing",Protagonist,0,0,0)
~ JOURNAL #30526 /* ~I collected Deionarra's legacy from her father.~ */ GOTO 31
END
