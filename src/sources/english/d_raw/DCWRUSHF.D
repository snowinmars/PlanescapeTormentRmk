// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25842 /* ~This clean, well-dressed woman is clearly on her way somewhere.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #25843 /* ~"Greetings..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #25938 /* ~"Greetings..."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 26
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #25939 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #25940 /* ~Let her be on her way.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #25844 /* ~She pauses to look at you, her eyes momentarily widening. She looks around her to see if you were calling to someone else, then smiles uneasily. "Pardon me, but... do I know you?"~ */
  IF ~~ THEN REPLY #25845 /* ~"No, but I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #25926 /* ~"Something troubling about my appearance?"~ */ GOTO 23
  IF ~~ THEN REPLY #25930 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0 26.3 29.0 30.2 31.0
  SAY #25846 /* ~"I'm on my way somewhere, sir - with little time left to reach my destination." She takes a step backwards. "So if you wouldn't mind..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25847 /* ~"Just a single question, then?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25920 /* ~"Just a single question, then?"~ */ GOTO 20
  IF ~~ THEN REPLY #25924 /* ~"I *would* mind. Now answer my questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #25925 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25848 /* ~She bites her lip, then nods. "Very well, sir. But ask with haste... time is of the essence!"~ */
  IF ~~ THEN REPLY #25849 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #25864 /* ~"What is of interest here?"~ */ GOTO 8
  IF ~~ THEN REPLY #25871 /* ~"Where could I find work, here?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25876 /* ~"I just needed directions..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25911 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 21
  IF ~~ THEN REPLY #25919 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25850 /* ~Her eyebrows arch in surprise. "'Tis the Clerk's Ward, sir. Have you lost your way? Oh, never mind that. I've to be going! Farewell..."~ */
  IF ~~ THEN REPLY #25851 /* ~"Wait... I had more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #25863 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25852 /* ~"One question was what I agreed to, sir - you'll be kind enough to honor that and let me be on my way, won't you? Perhaps you shall find someone with more time at one of the street-side cafes."~ */
  IF ~~ THEN REPLY #25853 /* ~"Stop. You'll stand here and answer my questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25862 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25854 /* ~Her eyes narrow. "Your rude manners and frightening visage might get you by wherever you came lumbering here from, but we've the law in this part of fair Sigil. Now leave me be, 'sir,' lest I be forced to cry for help!"~ */
  IF ~~ THEN REPLY #25855 /* ~"I doubt anyone will make it in time to save you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25859 /* ~"You'll not call for anyone if you know what's good for you."~ */ GOTO 7
  IF ~~ THEN REPLY #25860 /* ~"My apologies. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #25861 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25856 /* ~She begins to back away, calling for aid as she does so: "Guards! Guards!"~ */
  IF ~~ THEN REPLY #25857 /* ~Attack her.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25858 /* ~Try and leave before anyone arrives.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25865 /* ~"So much, sir! And especially here, in this part of the Clerk's Ward, where the Civic Festhall is located. The Art and Curio Galleria, too."~ */
  IF ~~ THEN REPLY #25866 /* ~"Anything else?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25867 /* ~She thinks for a moment. "Hmm. Well, there is Goncalves the tailor, the apothecary, the advocate's home, and that Brothel of 'Slating Intellectual Lusts.' Oh, and the catacombs beneath the Ward. And that odd little curiosity shop, too."~ */
  IF ~~ THEN REPLY #25868 /* ~"I had a question about one of those places you mentioned..."~ */ GOTO 5
  IF ~~ THEN REPLY #25869 /* ~"Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25870 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25872 /* ~She thinks for a moment. "You might try the Festhall... they may have something to offer you. You may wish to try the advocate, too, or perhaps the apothecary. I'd best be going, though... farewell."~ */
  IF ~~ THEN REPLY #25873 /* ~"I had a question about one of those places you mentioned..."~ */ GOTO 5
  IF ~~ THEN REPLY #25874 /* ~"Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25875 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25877 /* ~"What are you trying to find, sir?"~ */
  IF ~~ THEN REPLY #25878 /* ~"The advocate's home."~ */ GOTO 12
  IF ~~ THEN REPLY #25882 /* ~"The apothecary."~ */ GOTO 13
  IF ~~ THEN REPLY #25886 /* ~"The art store."~ */ GOTO 14
  IF ~~ THEN REPLY #25890 /* ~"The Brothel."~ */ GOTO 15
  IF ~~ THEN REPLY #25894 /* ~"The catacombs beneath the Ward."~ */ GOTO 16
  IF ~~ THEN REPLY #25898 /* ~"The Civic Festhall."~ */ GOTO 17
  IF ~~ THEN REPLY #25902 /* ~"The curiosity shop."~ */ GOTO 18
  IF ~~ THEN REPLY #25906 /* ~"The tailor."~ */ GOTO 19
  IF ~~ THEN REPLY #25910 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25879 /* ~"Iannis' home is south of the gate to the Lower Ward - where you first entered this place, most likely. It will be on the eastern side of the road."~ */
  IF ~~ THEN REPLY #25880 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25881 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25883 /* ~"Follow the road that leads east from the gate to the Lower Ward - where you first entered this place, most likely. When the road forks northeast and southeast, go southwards... you will find it, there, east of the road. It faces southwards and has three windows of stained glass."~ */
  IF ~~ THEN REPLY #25884 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25885 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25887 /* ~"Follow the road that leads east from the gate to the Lower Ward - where you first entered this place, most likely. When the road forks northeast and southeast, go southwards... you will find it, there, west of the road. It faces southwards and has a roof whose tiles are held down by large stones."~ */
  IF ~~ THEN REPLY #25888 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25889 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25891 /* ~She frowns pointedly, shaking her head. "'Tis just east of the gate to the Lower Ward - where you first entered this place, most likely. It is a large, round building, whose entrance faces southwards."~ */
  IF ~~ THEN REPLY #25892 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25893 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25895 /* ~She frowns. "Are those entrances still open? If they are, they're certainly guarded... those catacombs are said to be quite dangerous. I am unsure as to exactly how to reach them, sir."~ */
  IF ~~ THEN REPLY #25896 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25897 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25899 /* ~"The Festhall is most easy to find, sir. 'Tis a massive structure in the northeastern portion of this area."~ */
  IF ~~ THEN REPLY #25900 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25901 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25903 /* ~"'Tis in the southeast section of this area. An unusual building, set atop a wide flight of stairs. I've never entered the place, myself... I've an odd feeling about it."~ */
  IF ~~ THEN REPLY #25904 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25905 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25907 /* ~"You will find the tailor's shop just to the north and east of the gate to the Lower Ward - where you first entered this place, most likely. 'Tis a wide building, whose entrance faces southwards."~ */
  IF ~~ THEN REPLY #25908 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25909 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25912 /* ~She shakes her head. "So sorry... perhaps you shall find someone with more time at one of the street-side cafes, sir. Now, farewell..."~ */
  IF ~~ THEN REPLY #25913 /* ~"Stop. You'll stand here and answer my questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25917 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25914 /* ~"Ravel the Night Hag? My parents told me tales of her when I was but a child... frightening stories."~ */
  IF ~~ THEN REPLY #25915 /* ~"Child's tales?"~ */ GOTO 22
  IF ~~ THEN REPLY #25916 /* ~"I see. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #25918 /* ~"Thanks, that's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25921 /* ~She nods. "Yes. About the black-hearted hag who tried to break Sigil. They said she'd come for me if I cried too loudly, take me away to whatever horrid place she was banished to." She suddenly frowns. "I'd really best be going, sir... farewell."~ */
  IF ~~ THEN REPLY #25922 /* ~"Wait. I had another question..."~ */ GOTO 5
  IF ~~ THEN REPLY #25923 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1 26.4
  SAY #25927 /* ~"No, no... not in the least!" The woman laughs nervously. "Well, perhaps..." She gestures to your scarred, naked torso. "You *are* a bit more... ah... 'fierce-looking,' than the Ward's typical inhabitants, no? Please take no offense at my words, sir."~ */
  IF ~~ THEN REPLY #25928 /* ~"None taken. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #25929 /* ~"I don't need anything else. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25932 /* ~The woman nods a polite greeting. "Greetings, and farewell... if you'll excuse me, sir, I'm in a bit of a rush."~ */
  IF ~~ THEN REPLY #25933 /* ~"Wait. I had some questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #25937 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25934 /* ~"As I said, sir, I am in a great hurry. Perhaps you shall find someone with more time at one of the street-side cafes. Now, farewell..."~ */
  IF ~~ THEN REPLY #25935 /* ~"Stop. You'll stand here and answer my questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25936 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 0.1
  SAY #25941 /* ~She pauses to look at you, her eyes momentarily widening. She looks around her to see if you were calling to someone else, then smiles uneasily. "Pardon me, but do I know-" Suddenly, her eyes alight on Morte. "Oh! What a cute little mimir!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #25942 /* ~"Mimir?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 244
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25943 /* ~"Isn't he? He likes to have the top of his skull scratched."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25944 /* ~"I wouldn't touch him - he bites."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 248
  IF ~~ THEN REPLY #25945 /* ~"Yes, yes. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #25946 /* ~"Something troubling about my appearance?"~ */ GOTO 23
  IF ~~ THEN REPLY #25947 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #25948 /* ~The woman smiles. "How darling! It talks on its own!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 245
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #25950 /* ~She shakes her head. "No, none that I've seen. They're merely objects, aren't-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 247
END

IF ~~ THEN BEGIN 29 // from:
  SAY #25952 /* ~The woman shrugs. "That could certainly be."~ */
  IF ~~ THEN REPLY #25953 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #25954 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1
  SAY #25955 /* ~"Truly?" She remains smiling, but looks suspicious. "Surely you jest, sir! 'Tis only a mimir..."~ */
  IF ~~ THEN REPLY #25956 /* ~"What do you mean? Don't they all enjoy that?"~ */ GOTO 28
  IF ~~ THEN REPLY #25957 /* ~"No, I speak the truth. Go ahead."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #25958 /* ~"Never mind him. I had some questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #25959 /* ~She reaches out and gingerly pats Morte... who promptly nuzzles up against her hand, grinning wildly and winking at you all the while. She laughs uneasily. "How strange!"~ */
  IF ~~ THEN REPLY #25960 /* ~"Yes... well, I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #25961 /* ~"Isn't it all? Farewell."~ */ EXIT
END
