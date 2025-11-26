// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #26110 /* ~This older, well-dressed gentleman is clearly on his way somewhere.~ */
  IF ~~ THEN REPLY #26111 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #26199 /* ~Let him be on his way.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26112 /* ~He stops briefly to look your way, frowning and raising an eyebrow as he takes your appearance in. Finally, he looks you in the eyes. "Mmm?"~ */
  IF ~~ THEN REPLY #26113 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26198 /* ~"Something troubling about my appearance?"~ */ GOTO 23
  IF ~~ THEN REPLY #26206 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #26114 /* ~He speaks in a bitter, somewhat condescending tone: "A shame... truly. I've no time for your questions. Farewell."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #26115 /* ~"Just a single question, then?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #26188 /* ~"Just a single question, then?"~ */ GOTO 20
  IF ~~ THEN REPLY #26192 /* ~"You'll *make* time, then. Now answer my questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #26193 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26116 /* ~He sneers slightly. "Huh! If I must. Go... ask your 'question.' And be quick about it!"~ */
  IF ~~ THEN REPLY #26117 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #26132 /* ~"What is of interest here?"~ */ GOTO 8
  IF ~~ THEN REPLY #26139 /* ~"Where could I find work, here?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #26144 /* ~"I just needed directions..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26179 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 21
  IF ~~ THEN REPLY #26187 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26118 /* ~"I should have known you were lost. You stand in the Clerk's Ward, 'sir.' Should you wish to return to the Lower Ward - or wherever it is you came from - the gate is in the northwestern portion of this area. Farewell."~ */
  IF ~~ THEN REPLY #26119 /* ~"Wait... I had more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #26131 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0 22.1 22.2
  SAY #26120 /* ~"No more questions. Find someone else to pester, if you must. Farewell."~ */
  IF ~~ THEN REPLY #26121 /* ~"Stop. You'll stand here and answer my questions."~ */ GOTO 6
  IF ~~ THEN REPLY #26130 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #26122 /* ~He puffs up, stares you in the eye and bellows "I shall *not* answer more questions! Away with you, churl, before I call a brace of Harmonium officers to hurl your scarred arse from the Ward!"~ */
  IF ~~ THEN REPLY #26123 /* ~"I doubt anyone will make it in time to save you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #26127 /* ~"You'll not call for anyone if you know what's good for you."~ */ GOTO 7
  IF ~~ THEN REPLY #26128 /* ~"My apologies. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #26129 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #26124 /* ~"Guards! Guards!" The man begins to back away.~ */
  IF ~~ THEN REPLY #26125 /* ~Attack him.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #26126 /* ~Try and leave before anyone arrives.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #26133 /* ~He rolls his eyes. "Do I look the tout to you, sir? I've business to attend to!" He mumbles for a bit, then speaks again: "Go find the Civic Festhall. There may be something of interest to you there."~ */
  IF ~~ THEN REPLY #26134 /* ~"Anything else?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26135 /* ~"No." He looks to be considering something. "Well... perhaps. I'm unsure as to whether you could appreciate the place or not, but you might visit the Brothel... of Slating Intellectual Lusts."~ */
  IF ~~ THEN REPLY #26136 /* ~"Tell me about this Brothel."~ */ GOTO 5
  IF ~~ THEN REPLY #26137 /* ~"Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26138 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #26140 /* ~He seems surprised. "You seek honest work? That is good. Try the apothecary. Or the advocate. Everyone should be employed, you know - find some task that makes them useful to society."~ */
  IF ~~ THEN REPLY #26141 /* ~"I had a question about one of those places you mentioned..."~ */ GOTO 5
  IF ~~ THEN REPLY #26142 /* ~"Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26143 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #26145 /* ~"To where? Out with it, man!"~ */
  IF ~~ THEN REPLY #26146 /* ~"The advocate's home."~ */ GOTO 12
  IF ~~ THEN REPLY #26150 /* ~"The apothecary."~ */ GOTO 13
  IF ~~ THEN REPLY #26154 /* ~"The art store."~ */ GOTO 14
  IF ~~ THEN REPLY #26158 /* ~"The Brothel."~ */ GOTO 15
  IF ~~ THEN REPLY #26162 /* ~"The catacombs beneath the Ward."~ */ GOTO 16
  IF ~~ THEN REPLY #26166 /* ~"The Civic Festhall."~ */ GOTO 17
  IF ~~ THEN REPLY #26170 /* ~"The curiosity shop."~ */ GOTO 18
  IF ~~ THEN REPLY #26174 /* ~"The tailor."~ */ GOTO 19
  IF ~~ THEN REPLY #26178 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26147 /* ~"You seek the advocate? Hmm. Go south of the gate to the Lower Ward. It will be on the eastern side of the road."~ */
  IF ~~ THEN REPLY #26148 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26149 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #26151 /* ~"Follow the road that leads east from the gate to the Lower Ward. When the road forks northeast and southeast, go southwards... you will find it, there, east of the road. It faces southwards and has three windows of stained glass."~ */
  IF ~~ THEN REPLY #26152 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26153 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #26155 /* ~"Follow the road that leads east from the gate to the Lower Ward. When the road forks northeast and southeast, go southwards... you will find it, there, west of the road. It faces southwards and has a roof whose tiles are held down by large stones."~ */
  IF ~~ THEN REPLY #26156 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26157 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #26159 /* ~"'Tis just east of the gate to the Lower Ward. It is a large, round building, whose entrance faces southwards."~ */
  IF ~~ THEN REPLY #26160 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26161 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #26163 /* ~"There are two entrances - one between the tailor and the Festhall, east of the gate to the Lower Ward, and the other due south of the same gate."~ */
  IF ~~ THEN REPLY #26164 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26165 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #26167 /* ~"The Festhall is a massive structure in the northeastern portion of this area. You'd have to be blind as well as a fool to miss the thing."~ */
  IF ~~ THEN REPLY #26168 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26169 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #26171 /* ~"Hmm. I am told there is a woman, an importer of sorts, who sells things from other planes... mostly the Lower Planes. If that's the sort of thing you're seeking, her shop is the southwestern portion of this area, atop a wide flight of stairs."~ */
  IF ~~ THEN REPLY #26172 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26173 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #26175 /* ~"Go to the north and east of the gate to the Lower Ward. 'Tis a wide building, whose entrance faces southwards."~ */
  IF ~~ THEN REPLY #26176 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26177 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #26180 /* ~He shakes his head, waving you away. "Find someone else to pester, if you must. Farewell."~ */
  IF ~~ THEN REPLY #26181 /* ~"Stop. You'll stand here and answer my questions."~ */ GOTO 6
  IF ~~ THEN REPLY #26185 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #26182 /* ~The man is quiet for a moment. "I know little. Only what I have read in books that mentioned her in passing."~ */
  IF ~~ THEN REPLY #26183 /* ~"What was written of her in these books?"~ */ GOTO 22
  IF ~~ THEN REPLY #26184 /* ~"I see. Let me ask you about something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #26186 /* ~"Thanks, that's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26189 /* ~"Only that she was a creature of utter evil. Many folk think her a myth, but her existence was a documented fact. Sparsely so, but documented nonetheless. Of her fate following her attempt to ruin Sigil... I believe she was banished to one of the Lady of Pain's mazes."~ */
  IF ~~ THEN REPLY #26190 /* ~"Tell me about the Lady of Pain."~ */ GOTO 5
  IF ~~ THEN REPLY #26191 /* ~"Can anyone reach these mazes?"~ */ GOTO 5
  IF ~~ THEN REPLY #26194 /* ~"I had another question..."~ */ GOTO 5
  IF ~~ THEN REPLY #26207 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #26195 /* ~"Look at yourself, man! You're... you're... practically naked, covered in scars, wandering about the streets of Sigil accosting the citizens... why, I've seen fiends with better manners and more kept appearances. I do not seek to offend you, but I won't deny a man an honest answer."~ */
  IF ~~ THEN REPLY #26196 /* ~"I did ask, I suppose. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #26197 /* ~"I don't need anything else. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #26200 /* ~"You again! I have no time for any of your questions, today. Farewell!"~ */
  IF ~~ THEN REPLY #26201 /* ~"Wait. I had some questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #26205 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26202 /* ~"No. No questions. I've somewhere to go, and won't be kept by another's curiosity. Find someone else to pester, if you must. Farewell."~ */
  IF ~~ THEN REPLY #26203 /* ~"Stop. You'll stand here and answer my questions."~ */ GOTO 6
  IF ~~ THEN REPLY #26204 /* ~"Farewell, then."~ */ EXIT
END
