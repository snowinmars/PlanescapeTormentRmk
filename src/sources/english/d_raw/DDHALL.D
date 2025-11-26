// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDHALL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDHALL~

IF ~~ THEN BEGIN 0 // from:
  SAY #822 /* ~Before Morte can finish his rant, the scribe begins coughing violently. After a moment or two, the coughing spell dies down, and the scribe's breathing resumes its ragged wheeze.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 104
END

IF ~~ THEN BEGIN 1 // from:
  SAY #826 /* ~Before Morte can finish, the scribe's gray eyes flicker to you. "The weight of years hangs heavy upon me, Restless One." He places down his quill. "...but I do not yet count deafness among my ailments."~ */
  IF ~~ THEN REPLY #827 /* ~"'Restless One'? Do you know me?"~ */ DO ~SetGlobal("0202_Dhall_Face_Player","AR0202",1)
~ GOTO 44
END

IF ~~ THEN BEGIN 2 // from: 21.0
  SAY #829 /* ~"Do you not know the woman's corpse interred in the memorial hall below? I had thought that she had traveled with you in the past..." Dhall looks like he is about to start coughing again, then catches his breath. "Am I mistaken?"~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5070 /* ~"Where is her body?"~ */ GOTO 42
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5071 /* ~"I know nothing about her."~ */ GOTO 43
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #5072 /* ~"She claims to know me, but I can't recall her."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #5073 /* ~"You said there were others. Who else is here?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #5074 /* ~"You said there were others. Who else is here?"~ */ GOTO 12
  IF ~~ THEN REPLY #6063 /* ~"Mayhap. I had some other questions for you..."~ */ GOTO 9
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #6064 /* ~"I will go to the memorial hall below and see if I can find her body."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #13288 /* ~"Perhaps not. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 9.0
  SAY #832 /* ~Dhall stares at you. "Are you certain?"~ */
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",0)
~ THEN REPLY #830 /* ~"Yes. It's a good disguise."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",2)
~ JOURNAL #39468 /* ~I told that scribe, Dhall, about Vaxis and his disguise. Dhall should be sending the rest of the Dustmen out to round up Vaxis shortly.~ */ GOTO 4
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",1)
~ THEN REPLY #831 /* ~"Yes. It's a good disguise."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dhall_2","GLOBALGood",-3)
~ JOURNAL #39469 /* ~I promised Vaxis I wouldn't betray him to the Dustmen, but so what? I told that scribe, Dhall, about him and his disguise. Dhall should be sending the rest of the Dustmen out to round up Vaxis shortly.~ */ GOTO 4
  IF ~~ THEN REPLY #834 /* ~"No, on second thought, perhaps I imagined it. Look, I had some other questions..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #833 /* ~"I..." Dhall breaks into another fit of coughing. After a minute or two, he catches his breath enough to speak. "I... shall inform the guards at once."~ */
  IF ~~ THEN REPLY #836 /* ~"Thank you. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #837 /* ~"Excellent. Farewell."~ */ GOTO 11
END

IF ~  Global("Dhall","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #838 /* ~This scribe looks very old... his skin is wrinkled and has a slight trace of yellow, like old parchment. Charcoal-gray eyes lie within an angular face, and a large white beard flows down the front of his robes like a waterfall. His breathing is ragged and irregular, but even his occasional coughing does not slow the scratching of his quill pen.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #839 /* ~"Greetings."~ */ EXTERN ~DMORTE~ 102
  IF ~  !NearbyDialog("DMorte")
Global("Mortuary_Alert","GLOBAL",0)
~ THEN REPLY #835 /* ~"Greetings."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
Global("Mortuary_Alert","GLOBAL",1)
~ THEN REPLY #5058 /* ~"Greetings."~ */ GOTO 6
  IF ~~ THEN REPLY #5060 /* ~Leave the elderly scribe in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #841 /* ~The figure's gray eyes flicker as he glances up from his book. "I suspected it might be you who was responsible for the attacks in the Mortuary. This..." He coughs slightly, then draws a ragged breath. "This is no way for you to enter the next life."~ */
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #842 /* ~"I was just defending myself. I had some questions for you before I make myself scarce..."~ */ GOTO 9
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #843 /* ~"Sharing a little death with you corpse-worshippers isn't much of a crime as far as I'm concerned. Now I had some questions for you..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dhall_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Dhall","GLOBAL",0)
~ THEN REPLY #5062 /* ~"Do you know me?"~ */ GOTO 44
  IF ~~ THEN REPLY #5063 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #844 /* ~The scribe stops scratching in the book before him, then looks up. His eyes are like two nails driven into his skull. "So..." He sounds tired, as if he has repeated the same thing many times before. "You have awoken from your sleep and returned to your dream." He continues more respectfully. "Well met... again, Restless One."~ */
  IF ~~ THEN REPLY #845 /* ~"'Restless One'? Do you know me?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 8 // from: 22.0
  SAY #851 /* ~"You must understand. Your existence is a blasphemy to them. Many of our faction would order you cremated... if they were aware of your affliction."~ */
  IF ~~ THEN REPLY #940 /* ~"You're a Dustman. But you don't seem to be in favor of killing me. Why not?"~ */ GOTO 23
  IF ~~ THEN REPLY #911 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #913 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6038 /* ~"I've heard enough. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
  SAY #852 /* ~"Very well. What did you wish to know?"~ */
  IF ~  Global("Vaxis","GLOBAL",1)
!Dead("Vaxis")
Global("Vaxis_Leave","GLOBAL",0)
Global("Betray_Vaxis","GLOBAL",0)
~ THEN REPLY #854 /* ~"Did you know there's someone disguised as a zombie in the eastern chambers?"~ */ GOTO 3
  IF ~~ THEN REPLY #857 /* ~"What is this place?"~ */ GOTO 10
  IF ~~ THEN REPLY #855 /* ~"How did I get here?"~ */ GOTO 15
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
Global("AR0200_Visited","GLOBAL",0)
~ THEN REPLY #858 /* ~"Can you tell me how to get out of here?"~ */ GOTO 13
  IF ~~ THEN REPLY #5069 /* ~"Do you know who I am?"~ */ JOURNAL #39460 /* ~I asked Dhall if he knew me, and he responded that he knew little about me - and even less about the companions that had traveled with me in the past. Apparently, their bodies lie in the Mortuary... perhaps seeing them will cause my memories to resurface. ~ */ GOTO 21
  IF ~~ THEN REPLY #5748 /* ~"What do you do here?"~ */ GOTO 25
  IF ~~ THEN REPLY #6065 /* ~"You sound ill. Are you not well?"~ */ GOTO 26
  IF ~~ THEN REPLY #41663 /* ~"Nothing... farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #859 /* ~"You are in the Mortuary, Restless One. Again you have... come..." Before he can finish, Dhall breaks into a fit of coughing. After a moment, he calms himself and his breathing resumes its ragged wheeze. "...this is the waiting room for those about to depart the shadow of this life."~ */
  IF ~~ THEN REPLY #861 /* ~"Tell me about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #860 /* ~"*Restless One?*"~ */ GOTO 38
  IF ~~ THEN REPLY #862 /* ~"Shadow of this life?"~ */ GOTO 33
  IF ~~ THEN REPLY #863 /* ~"Again...? I've been here more than once?"~ */ GOTO 14
  IF ~~ THEN REPLY #864 /* ~"How did I get here?"~ */ GOTO 15
  IF ~~ THEN REPLY #865 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #866 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
  SAY #867 /* ~As you turn to leave, Dhall speaks. "Know this: I do not envy you, Restless One. To be reborn as you would be a curse that I could not bear. You must come to terms with it. At some point, your path will return you here..." Dhall coughs, the sound rattling in his throat. "It is the way of all things flesh and bone."~ */
  IF ~~ THEN REPLY #41564 /* ~"Then perhaps we will meet again, Dhall."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.3 2.4 42.2 42.3 43.1 43.2
  SAY #868 /* ~"Doubtless there are, but I know not their names, nor where they lie. One such as you has left a path many have walked, and few have survived." Dhall gestures around you. "All dead come here. Some must have traveled with you once."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #870 /* ~"Where is this woman you mentioned?"~ */ GOTO 42
  IF ~~ THEN REPLY #871 /* ~"I find no fault with your reasoning. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #872 /* ~"I will look for them, then. Mayhap they can spark my memory. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #875 /* ~"Hmmm... the front gate is the most obvious exit, but they will not let anyone other than Dustmen pass..." Dhall breaks into a ragged cough, then continues. "...one of the guides by the front gate has a key to it, but it is unlikely he will open it for you unless you are extremely persuasive."~ */
  IF ~~ THEN REPLY #876 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #877 /* ~"Farewell then, Dhall."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #878 /* ~"Yes, *again.* You have been brought here many times before, Restless One. I had hoped that this time would be your last, considering the wounds you had sustained." He sighs. "When will you give up your passions and leave this shadow of life?"~ */
  IF ~~ THEN REPLY #880 /* ~"*Restless One?*"~ */ GOTO 38
  IF ~~ THEN REPLY #881 /* ~"Wounds?"~ */ GOTO 34
  IF ~~ THEN REPLY #883 /* ~"Shadow of life?"~ */ GOTO 33
  IF ~~ THEN REPLY #879 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #5751 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5752 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 9.2 10.4 32.5
  SAY #885 /* ~Dhall snorts in contempt, as if he finds the memory repugnant. "Your moldy chariot ferried you to the Mortuary, Restless One. You would think you were royalty based on the number of loyal subjects that lay stinking and festering upon the cart that carried you."~ */
  IF ~~ THEN REPLY #886 /* ~"I arrived here on a cart?"~ */ JOURNAL #39463 /* ~Apparently, Pharod delivered my body here in a cart, along with a heap of other corpses. Was I actually *dead* when he did this? ~ */ GOTO 16
  IF ~~ THEN REPLY #887 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #888 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #889 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #890 /* ~"Yes... your body was somewhere in the middle of the heap, sharing its fluids with the rest of the mountain of corpses." Dhall breaks into another violent fit of coughing, finally catching his breath minutes later. "Your 'seneschal' Pharod was, as always, pleased to accept a few moldy coppers to dump the lot of you at the Mortuary gate."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #891 /* ~"Who is this Pharod?"~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #892 /* ~"Doesn't sound like you like Pharod much."~ */ GOTO 35
  IF ~~ THEN REPLY #893 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #894 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5753 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #895 /* ~"He is a... collector of the dead." Dhall draws a ragged breath, then continues. "We have such people in our city that scavenge the bodies of those that have walked the path of True Death and bring them to us so that they may be interred properly."~ */
  IF ~~ THEN REPLY #897 /* ~"Where can I find this 'Pharod'?"~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #898 /* ~"Doesn't sound like you like Pharod much."~ */ GOTO 35
  IF ~~ THEN REPLY #899 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #5754 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6031 /* ~"I will go seek out this Pharod then. Farewell, Dhall."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 29.1 31.0 35.1 36.1
  SAY #900 /* ~"If events persist as they have, Restless One, you have a much greater chance of Pharod finding you and bringing you to us again before you find whatever ooze puddle he wallows in this time." ~ */
  IF ~~ THEN REPLY #902 /* ~"Nevertheless, I must find him."~ */ GOTO 19
  IF ~~ THEN REPLY #903 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #904 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5755 /* ~"I have a feeling our paths will cross. Farewell, Dhall."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.4 18.0 18.3 29.3 31.2
  SAY #901 /* ~A slight warning creeps into Dhall's tone. "Do not seek out Pharod, Restless One. I am certain that it will simply come full circle again, with you none the wiser and Pharod a few coppers richer. Accept death, Restless One. Do not perpetuate your circle of misery."~ */
  IF ~~ THEN REPLY #906 /* ~"I *have* to find him. Do you know where he is?"~ */ JOURNAL #39464 /* ~Dhall told me that Pharod can be found beyond the Mortuary, in some place called the "Hive." He didn't seem to want me to go hunting for Pharod, but then again, he's not the one who's lost his memories and woken up from the dead, so he can keep his opinions to himself. Dhall suggested I ask some of the people in the Hive where I can find Pharod. ~ */ GOTO 20
  IF ~~ THEN REPLY #905 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #907 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5756 /* ~"I can speak with you no longer. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #908 /* ~Dhall is silent for a moment. When he finally speaks, he seems to do so reluctantly. "I do not know under which gutterstone Pharod lairs at the moment, but I imagine that he can be found somewhere beyond the Mortuary gates, in the Hive. Perhaps someone there will know where you can find him."~ */
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #910 /* ~"Doesn't sound like you like Pharod much."~ */ GOTO 35
  IF ~~ THEN REPLY #909 /* ~"Can you tell me more about the Mortuary?"~ */ GOTO 32
  IF ~~ THEN REPLY #5757 /* ~"Thank you. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6030 /* ~"I will go there and ask around then. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 21 // from: 9.4
  SAY #914 /* ~"I know scant little of you, Restless One. I know little more of those that have journeyed with you and who now lie in our keeping." Dhall sighs. "I ask that you no longer ask others to join with you, Restless One - where you walk, so walks misery. Let your burden be your own."~ */
  IF ~~ THEN REPLY #921 /* ~"There are others who have journeyed with me? And they are here?"~ */ JOURNAL #39461 /* ~Dhall told me that one of the women who journeyed with me is interred in the memorial hall on the first floor of the Mortuary. ~ */ GOTO 2
  IF ~~ THEN REPLY #922 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #923 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 47.0
  SAY #915 /* ~Dhall sighs. "It is said there are souls who can never attain the True Death. Death has forsaken them, and their names shall never be penned in the dead-book. To awake from death as you have done... suggests you are one of these souls. Your existence is unacceptable to our faction."~ */
  IF ~~ THEN REPLY #917 /* ~"'Unacceptable'? That doesn't sound like it leaves me in a good position."~ */ GOTO 8
  IF ~~ THEN REPLY #918 /* ~"I see. Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #919 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #920 /* ~"I think I've heard enough. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 23 // from: 8.0
  SAY #924 /* ~"Because forcing our beliefs upon you is not just. You must give up this shadow of life on your own, not because we force you to." Dhall looks about to break into another coughing jag, but he manages to hold it in with some effort. "As long as I remain at my post, I will protect your right to search for your own truth."~ */
  IF ~~ THEN REPLY #927 /* ~"What is your post?"~ */ GOTO 25
  IF ~~ THEN REPLY #928 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #925 /* ~"Very well. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6039 /* ~"I've heard enough. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 24 // from: 25.0
  SAY #929 /* ~"I am the one that catalogues the shells that come to our halls, Restless One." Dhall breaks into a fit of coughing, then steadies himself. "Only I see the faces of those that lie upon our slabs. The dark of your existence lies safe with me."~ */
  IF ~~ THEN REPLY #1305 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #6041 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6042 /* ~"It seems I owe you a favor. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 9.5 23.0
  SAY #930 /* ~"I am a scribe, a cataloger of all the shells that come to the Mortuary." Dhall coughs again, then takes a deep breath. "As long as the stream of corpses flows through the Mortuary, I shall remain at my post."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #931 /* ~"You say that I have been here more than once. How is it that the Dustmen do not recognize me?"~ */ JOURNAL #39462 /* ~Dhall told me he is the one responsible for keeping my return visits to the Mortuary a secret from the rest of the Dustmen. Since he is the scribe in the receiving room, he is one of the only ones who sees my body when it arrives here. ~ */ GOTO 24
  IF ~~ THEN REPLY #932 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #933 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6040 /* ~"Very well. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 26 // from: 9.6
  SAY #934 /* ~"I am close now to the True Death, Restless One. It will not be long before I pass beyond the Eternal Boundary and find the peace I have been seeking. I tire of this mortal sphere..." Dhall gives a ragged sigh. "The planes hold no more wonders for one such as I."~ */
  IF ~~ THEN REPLY #935 /* ~"The Eternal Boundary?"~ */ GOTO 41
  IF ~~ THEN REPLY #936 /* ~"Are you certain? There might be some way I could help you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dhall_1","GLOBALGood",1)
~ GOTO 27
  IF ~~ THEN REPLY #937 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #960 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #938 /* ~"I do not wish to live forever nor live again, Restless One. I could not bear it."~ */
  IF ~~ THEN REPLY #1303 /* ~"Very well. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #1304 /* ~"So be it. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 28 // from: 2.2 42.1
  SAY #939 /* ~"She *spoke* to you?" Dhall's voice drops to a whisper. "Are the *fevers* upon you, Restless One? She has reached the True Death and passed well beyond your reach."~ */
  IF ~~ THEN REPLY #981 /* ~"She spoke to me, Dhall. Her spirit resides here."~ */ GOTO 30
  IF ~~ THEN REPLY #982 /* ~"Perhaps I imagined it, then. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #873 /* ~"I am not certain that she has reached the True Death. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 29 // from: 36.0
  SAY #941 /* ~Dhall pauses, considering. "Most likely. Are you missing anything... especially anything of value?" His voice dips as he frowns. "Not that Pharod would take exception to anything that wasn't physically grafted to your body, and sometimes even that's not enough to give his greedy mind pause."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #942 /* ~"I am missing a journal."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #943 /* ~"Hmmm. Do you know where I can find Pharod?"~ */ GOTO 18
  IF ~~ THEN REPLY #944 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #6026 /* ~"Maybe I should speak to Pharod. Farewell, Dhall."~ */ GOTO 19
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #874 /* ~"I see. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #945 /* ~Dhall draws a semicircle in the air front of him with a finger. "This is an ill omen, Restless One. I pray you dreamed the conversation... yet I fear you did not."~ */
  IF ~~ THEN REPLY #946 /* ~"Perhaps I imagined it. I had some other questions."~ */ GOTO 9
  IF ~~ THEN REPLY #947 /* ~"Perhaps we will speak more of it later. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #850 /* ~"A journal? If it was of any value, then it is likely it lies in Pharod's hands."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #948 /* ~"Where can I find this Pharod?"~ */ GOTO 18
  IF ~~ THEN REPLY #949 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #6027 /* ~"Then I shall seek him out. Farewell, Dhall."~ */ GOTO 19
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #6066 /* ~"I see. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 32 // from: 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
  SAY #950 /* ~"This is where the dead are brought to be interred or cremated. It is our responsibility as Dustmen to care for the dead, those who have left this shadow of life and walk the path to True Death." Dhall's voice drops in concern. "Your wounds must have exacted a heavy toll if you do not recognize this place. It is almost your home."~ */
  IF ~~ THEN REPLY #951 /* ~"Shadow of life?"~ */ GOTO 33
  IF ~~ THEN REPLY #953 /* ~"True Death?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #954 /* ~"Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #955 /* ~"Sigil?"~ */ GOTO 37
  IF ~~ THEN REPLY #956 /* ~"Wounds?"~ */ GOTO 34
  IF ~~ THEN REPLY #846 /* ~"How did I get here?"~ */ GOTO 15
  IF ~~ THEN REPLY #5735 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6062 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 33 // from: 10.2 14.2 32.0 41.0 47.2 49.0
  SAY #957 /* ~"Yes, a shadow. You see, Restless One, this life... it is not real. Your life, my life, they are shadows, flickerings of what life once was. This 'life' is where we end up *after* we die. And here we remain... trapped. Caged. Until we can achieve the True Death."~ */
  IF ~~ THEN REPLY #958 /* ~"True Death?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #959 /* ~"What makes you think this life isn't real?"~ */ GOTO 50
  IF ~~ THEN REPLY #5736 /* ~"Tell me some more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #5737 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5738 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 14.1 32.4
  SAY #961 /* ~"Yes, the wounds that decorate your body... they look as if they would have sent a lesser man along the path of the True Death, yet it seems as if many of them have healed already." Dhall coughs violently for a moment, then steadies himself. "But those are only the surface wounds."~ */
  IF ~~ THEN REPLY #1301 /* ~"Only surface wounds? What do you mean?"~ */ JOURNAL #39470 /* ~Dhall suggested that the wounds I have suffered are minor in comparison to the wounds in my mind... he even went so far as to suggest that the wounds I've suffered may be responsible for my loss of memory, and the mental damage may be much greater than amnesia. The thought makes me uneasy - I wouldn't mind hearing some *good* news every once in a while. ~ */ GOTO 53
  IF ~~ THEN REPLY #1302 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #5746 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5747 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from: 16.1 17.1 20.0
  SAY #962 /* ~"There are some I respect, Restless One." Dhall takes a ragged breath and steadies himself. "Pharod is not one of them. He wears his ill repute like a badge of honor and takes liberties with the possessions of the dead. He is a knight of the post, cross-trading filth of the lowest sort."~ */
  IF ~~ THEN REPLY #963 /* ~"'Knight of the post'?"~ */ GOTO 36
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #964 /* ~"Do you know where I can find Pharod?"~ */ GOTO 18
  IF ~~ THEN REPLY #965 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6028 /* ~"Encouraging. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #966 /* ~"A knight of the post..." Dhall coughs. "...a thief. All Pharod brings to our walls come stripped of a little less of their dignity than they possessed in life. Pharod takes whatever he may pry from their stiffening fingers."~ */
  IF ~~ THEN REPLY #967 /* ~"Did this Pharod take anything from *me?*"~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #968 /* ~"Do you know where I can find Pharod?"~ */ GOTO 18
  IF ~~ THEN REPLY #969 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6029 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 37 // from: 32.3
  SAY #970 /* ~"Sigil is our fair city, Restless One."~ */
  IF ~~ THEN REPLY #971 /* ~"Tell me some more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #972 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5758 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 38 // from: 10.1 14.0
  SAY #973 /* ~"Restless is as good a term as any..." Dhall draws a ragged breath. "Something keeps you here, does it not? Something that must be resolved, some passion that must be quenched before you can reach the True Death?"~ */
  IF ~~ THEN REPLY #974 /* ~"True Death?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #975 /* ~"Tell me some more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #5749 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5750 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 39 // from:
  SAY #884 /* ~"You will do what you have always done, Restless One. Seek out that crusty jink-smacking fool, Wormhair, and ask him for your possessions back. Then you will resume your pointless quest, attempt to complete pointless tasks, gather pointless items and then you will be struck down and returned to us. Save yourself time and speak with me now so that we do not have to resume this conversation again when your memories are lost to you again."~ */
  IF ~~ THEN REPLY #976 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #977 /* ~"Farewell, Dhall."~ */ EXIT
END

IF ~  Global("Dhall","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #978 /* ~Dhall glances up as you approach. "So. You have returned..." Dhall takes a rasping breath, then breaks into a violent coughing spell. After a moment, it subsides, and he returns to his raspy breathing. "... greetings again, Restless One."~ */
  IF ~~ THEN REPLY #979 /* ~"I had some more questions for you, Dhall."~ */ GOTO 9
  IF ~~ THEN REPLY #980 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 26.0 52.0
  SAY #983 /* ~"The boundary between the shadow of this life and the True Death."~ */
  IF ~~ THEN REPLY #984 /* ~"Shadow of this life?"~ */ GOTO 33
  IF ~~ THEN REPLY #985 /* ~"True Death?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #5739 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #5740 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5741 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 42 // from: 2.0 12.0 43.0
  SAY #5075 /* ~"The northwest memorial hall on the floor below us. Check the biers there... her name should be on one of the memorial plaques. Mayhap that will revive your memory."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5076 /* ~"I don't know. I don't recall ever traveling with a woman."~ */ GOTO 43
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #5077 /* ~"Well, she claims to know me, but I can't recall her."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #5078 /* ~"You said there were others. Who else is here?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #5079 /* ~"You said there were others. Who else is here?"~ */ GOTO 12
  IF ~~ THEN REPLY #6067 /* ~"Mayhap I will go find her. I had some other questions for you before I go..."~ */ GOTO 9
  IF ~~ THEN REPLY #6068 /* ~"I will go to the memorial hall below and see if I can find her body."~ */ GOTO 11
END

IF ~~ THEN BEGIN 43 // from: 2.1 42.0
  SAY #5080 /* ~Dhall makes no response to this. He simply stares at you in silence.~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5081 /* ~"Where can I find her?"~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #5082 /* ~"Before, you said there were others interred here who journeyed with me. Where are they?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #5083 /* ~"Before, you said there were others interred here who journeyed with me. Where are they?"~ */ GOTO 12
  IF ~~ THEN REPLY #6069 /* ~"I had some other questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #6070 /* ~"Farewell, then."~ */ GOTO 11
END

IF ~~ THEN BEGIN 44 // from: 1.0 6.2 7.0
  SAY #840 /* ~"Know you? I..." There is a trace of bitterness in the scribe's voice as he speaks. "I have *never* known you, Restless One. No more than you have known yourself." He is silent for a moment. "For you have forgotten, have you not?"~ */
  IF ~~ THEN REPLY #1327 /* ~"Who *are* you?"~ */ DO ~SetGlobal("Dhall","GLOBAL",1)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #5728 /* ~"As always, the question. And the wrong question, as always." He bows slightly, but the movement suddenly sends him into a bout of coughing. "I..." He pauses for a moment, catches his breath. "I... am Dhall."~ */
  IF ~~ THEN REPLY #5731 /* ~"Perhaps you can answer some questions for me, Dhall..."~ */ JOURNAL #39459 /* ~I met a sickly scribe named Dhall in the Mortuary... he knew I had forgotten myself before I even spoke to him. Did I know him before I lost my memories? I was hoping to get some answers, but this place seems to breed more and more questions. ~ */ GOTO 9
  IF ~~ THEN REPLY #5732 /* ~"I don't have time for this. Farewell."~ */ JOURNAL #39459 /* ~I met a sickly scribe named Dhall in the Mortuary... he knew I had forgotten myself before I even spoke to him. Did I know him before I lost my memories? I was hoping to get some answers, but this place seems to breed more and more questions. ~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #5730 /* ~"Very well, Restless One." Dhall nods. "But I fear time is not your enemy in this matter." He picks up his quill again. "When you wish to speak further, I will be here."~ */
  IF ~~ THEN REPLY #40005 /* ~"I may return. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 32.2
  SAY #847 /* ~"We Dustmen are a faction, a gathering of those of us that recognize the illusion of this life. We await the next life, and help others on their journey."~ */
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #6032 /* ~"Perhaps you can explain why the Dustmen want me dead."~ */ GOTO 22
  IF ~~ THEN REPLY #6033 /* ~"True Death?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #6034 /* ~"Shadow that is this life?"~ */ GOTO 33
  IF ~~ THEN REPLY #6035 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #6036 /* ~"I had some other questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #6037 /* ~"Farewell, then."~ */ GOTO 11
END

IF ~~ THEN BEGIN 48 // from: 32.1 33.0 38.0 41.1 47.1
  SAY #848 /* ~"True Death is non-existence. A state devoid of reason, of sensation, of passion." Dhall coughs, then gives a ragged breath. "A state of purity."~ */
  IF ~~ THEN REPLY #6043 /* ~"Sounds like oblivion. Why would anyone want that?"~ */ GOTO 49
  IF ~~ THEN REPLY #6044 /* ~"Oh. Can you tell me more about the Mortuary?"~ */ GOTO 32
  IF ~~ THEN REPLY #6045 /* ~"I... see. I had some other questions."~ */ GOTO 9
  IF ~~ THEN REPLY #6046 /* ~"I must take my leave. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #849 /* ~"Is it worse than remaining in this shadow of what life once was? I think not."~ */
  IF ~~ THEN REPLY #6047 /* ~"Shadow of life?"~ */ GOTO 33
  IF ~~ THEN REPLY #6048 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #6049 /* ~"I... see. I had some other questions."~ */ GOTO 9
  IF ~~ THEN REPLY #6050 /* ~"I must take my leave. Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 50 // from: 33.1
  SAY #853 /* ~"What makes you think this life *is* real? Look inside yourself. Do you not feel something lacking?" Dhall shakes his head. "This is a purgatory. There is only sorrow here. Misery. Torment. These are not the elements that make up 'life.' They are part of the cage that traps us in this shadow."~ */
  IF ~~ THEN REPLY #6051 /* ~"I think your fatalism has gotten the better of you. Those elements are part of life, but not the whole of it."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dhall_2","GLOBALGood",1)
~ GOTO 51
  IF ~~ THEN REPLY #6052 /* ~"Cage us? How?"~ */ GOTO 51
  IF ~~ THEN REPLY #6053 /* ~"Enough of your philosophy. What does all this talk have to do with me waking up here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dhall_3","GLOBALGood",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0 50.1 50.2
  SAY #5733 /* ~Dhall shakes his head. "Passions carry weight. They anchor many to this shadow of life. As long as one clings to emotion, they will be continually reborn into this 'life,' forever suffering, never knowing the purity of True Death."~ */
  IF ~~ THEN REPLY #6054 /* ~"I... see. How does one escape the cycle of rebirth and achieve this... True Death?"~ */ GOTO 52
  IF ~~ THEN REPLY #6055 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #6056 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6057 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #5734 /* ~"Kill your passions. Strip yourself of the need for sensation. When you are truly cleansed, then the cycle of rebirth will end, and you achieve peace." Dhall sighs... it sounds like a death rattle in his throat. "Past these shells of ours, past the Eternal Boundary, lies the peace that all souls seek."~ */
  IF ~~ THEN REPLY #6058 /* ~"The Eternal Boundary?"~ */ GOTO 41
  IF ~~ THEN REPLY #6059 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #6060 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #6061 /* ~"Farewell, Dhall."~ */ GOTO 11
END

IF ~~ THEN BEGIN 53 // from: 34.0
  SAY #5742 /* ~"I speak of the wounds of the mind. You have forgotten much, have you not? Mayhap your true wounds run much deeper than the scars that decorate your surface..." Dhall coughs again. "...but that is something that only you would know for certain."~ */
  IF ~~ THEN REPLY #5743 /* ~"Tell me more about the Mortuary."~ */ GOTO 32
  IF ~~ THEN REPLY #5744 /* ~"I see. I had some other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #5745 /* ~"Farewell, Dhall."~ */ GOTO 11
END
