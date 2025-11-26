// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #4513 /* ~This clean, well-dressed man is clearly on his way somewhere.~ */
  IF ~~ THEN REPLY #25733 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #25734 /* ~Let him be on his way.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25735 /* ~He stops and glances over you. The man seems slightly taken aback at your appearance. "Do I... ah... know you, sir?"~ */
  IF ~~ THEN REPLY #25736 /* ~"No, but I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #25737 /* ~"Something troubling about my appearance?"~ */ GOTO 23
  IF ~~ THEN REPLY #25738 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #25739 /* ~"I really haven't the time, sir - I've somewhere to go. So if you wouldn't mind..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25740 /* ~"Just a single question, then?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25741 /* ~"Just a single question, then?"~ */ GOTO 20
  IF ~~ THEN REPLY #25742 /* ~"I *would* mind. Now answer my questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #25743 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25744 /* ~He bites his lip, then nods. "I won't deny you that. But ask with speed, I beg of you!"~ */
  IF ~~ THEN REPLY #25745 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #25746 /* ~"What is of interest here?"~ */ GOTO 8
  IF ~~ THEN REPLY #25747 /* ~"Where could I find work, here?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25748 /* ~"I just needed directions..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25749 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 21
  IF ~~ THEN REPLY #25750 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25751 /* ~He looks at you oddly for a moment. "Why, 'tis the Clerk's Ward. Are you... lost, perhaps? Oh, never mind that. I must be off! Farewell..."~ */
  IF ~~ THEN REPLY #25752 /* ~"Wait... I had more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #25753 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25754 /* ~"I had but time for one question, sir. Perhaps you shall find someone with more time at one of the street-side cafes. Now, farewell..."~ */
  IF ~~ THEN REPLY #25755 /* ~"Stop. You'll stand here and answer my questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25756 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25757 /* ~"Sir! I have neither the time nor the inclination to be harassed at this moment! Leave me be, lest I be forced to call for aid!"~ */
  IF ~~ THEN REPLY #25758 /* ~"I doubt anyone will make it in time to save you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25759 /* ~"You'll not call for anyone if you know what's good for you."~ */ GOTO 7
  IF ~~ THEN REPLY #25760 /* ~"My apologies. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #25761 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25762 /* ~He begins to back away, calling for aid as he does so. "Guards! Guards!"~ */
  IF ~~ THEN REPLY #25763 /* ~Attack him.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25764 /* ~Try and leave before anyone arrives.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25765 /* ~"There is much to see in the Clerk's Ward, sir... and more so in this section of it than any other! The Civic Festhall, of course, the Art and Curio Galleria, and the Brothel of Slating Intellectual Lusts..." He sighs pleasantly, becoming lost in thought.~ */
  IF ~~ THEN REPLY #25766 /* ~"Anything else?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25767 /* ~He thinks for a moment. "Hmm. Well, there's the tailor, the apothecary, the advocate's home. Oh, and the catacombs beneath the Ward. And that strange little curiosity shop, as well." He shrugs. "More than enough to keep anyone busy, I should think. Enjoy, and farewell!"~ */
  IF ~~ THEN REPLY #25768 /* ~"I had a question about one of those places you mentioned..."~ */ GOTO 5
  IF ~~ THEN REPLY #25769 /* ~"Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25770 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25771 /* ~He thinks for a moment. "You might try the apothecary. Or the advocate. And of course, you might try the Festhall... they may have some odd jobs that need doing. Best of luck, sir... farewell."~ */
  IF ~~ THEN REPLY #25772 /* ~"I had a question about one of those places you mentioned..."~ */ GOTO 5
  IF ~~ THEN REPLY #25773 /* ~"Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25774 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25775 /* ~"And what place are you are seeking out?"~ */
  IF ~~ THEN REPLY #25776 /* ~"The advocate's home."~ */ GOTO 12
  IF ~~ THEN REPLY #25777 /* ~"The apothecary."~ */ GOTO 13
  IF ~~ THEN REPLY #25778 /* ~"The art store."~ */ GOTO 14
  IF ~~ THEN REPLY #25779 /* ~"The Brothel."~ */ GOTO 15
  IF ~~ THEN REPLY #25780 /* ~"The catacombs beneath the Ward."~ */ GOTO 16
  IF ~~ THEN REPLY #25781 /* ~"The Civic Festhall."~ */ GOTO 17
  IF ~~ THEN REPLY #25782 /* ~"The curiosity shop."~ */ GOTO 18
  IF ~~ THEN REPLY #25783 /* ~"The tailor."~ */ GOTO 19
  IF ~~ THEN REPLY #25784 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25785 /* ~"Iannis' home is south of the gate to the Lower Ward - where you first entered this place, most likely. It will be on the eastern side of the road."~ */
  IF ~~ THEN REPLY #25786 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25787 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25788 /* ~"Follow the road that leads east from the gate to the Lower Ward - where you first entered this place, most likely. When the road forks northeast and southeast, go southwards... you will find it, there, east of the road. It faces southwards and has three windows of stained glass."~ */
  IF ~~ THEN REPLY #25789 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25790 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25791 /* ~"Follow the road that leads east from the gate to the Lower Ward - where you first entered this place, most likely. When the road forks northeast and southeast, go southwards... you will find it, there, west of the road. It faces southwards and has a roof whose tiles are held down by large stones."~ */
  IF ~~ THEN REPLY #25792 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25793 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25794 /* ~"The Brothel of Slating Intellectual Lusts, eh?" He smiles knowingly. "'Tis just east of the gate to the Lower Ward - where you first entered this place, most likely. It is a large, round building, whose entrance faces southwards."~ */
  IF ~~ THEN REPLY #25795 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25796 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25797 /* ~He frowns. "Hrm. There is more than one entrance here, I know that much... but little more. I would warn you, though, that nothing comes up from those catacombs... including those who enter them."~ */
  IF ~~ THEN REPLY #25798 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25799 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25800 /* ~"The Festhall is most easy to find, sir. 'Tis a massive structure in the northeastern portion of this area."~ */
  IF ~~ THEN REPLY #25801 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25802 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25803 /* ~"I've never been there, but I've had it pointed out to me - 'tis in the southeast section of this area. An unusual building, set atop a wide flight of stairs. Difficult to miss, really."~ */
  IF ~~ THEN REPLY #25804 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25805 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25806 /* ~"You will find Goncalves the Tailor's shop just to the north and east of the gate to the Lower Ward - where you first entered this place, most likely. 'Tis a wide building, whose entrance faces southwards."~ */
  IF ~~ THEN REPLY #25807 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25808 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25809 /* ~He shakes his head. "Perhaps you shall find someone with more time at one of the street-side cafes. Now, farewell..."~ */
  IF ~~ THEN REPLY #25810 /* ~"Stop. You'll stand here and answer my questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25811 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25812 /* ~"Eh?" He seems confused for a moment... then his eyes light up, as if he's suddenly remembered something. "Ah! The night hag, yes? I remember tales I heard of her, as a child..."~ */
  IF ~~ THEN REPLY #25813 /* ~"Child's tales?"~ */ GOTO 22
  IF ~~ THEN REPLY #25814 /* ~"I see. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25815 /* ~"Thanks, that's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25816 /* ~He nods. "Yes. She's a myth, no? The hag who tried to break Sigil?" He suddenly frowns. "I'd really best be going, sir... farewell."~ */
  IF ~~ THEN REPLY #25817 /* ~"Wait. I had another question..."~ */ GOTO 5
  IF ~~ THEN REPLY #25818 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #25819 /* ~"No, sir, not at all!" The man laughs nervously. "Well... eh..." He gestures to your scarred, naked torso. "You are, perhaps, a bit more... shall we say, 'fierce-looking,' than the Ward's typical inhabitants, no? No offense, sir."~ */
  IF ~~ THEN REPLY #25820 /* ~"None taken. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #25821 /* ~"I don't need anything else. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25822 /* ~"Well met again, sir. If you'll excuse me, I'm in a bit of a rush. Farewell..."~ */
  IF ~~ THEN REPLY #25823 /* ~"Wait. I had some questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #25824 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25825 /* ~"As I said, sir, I am in a terrible rush. Perhaps you shall find someone with more time at one of the street-side cafes. Now, farewell..."~ */
  IF ~~ THEN REPLY #25826 /* ~"Stop. You'll stand here and answer my questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25827 /* ~"Farewell, then."~ */ EXIT
END
