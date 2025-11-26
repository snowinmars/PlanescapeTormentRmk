// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSGR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #43384 /* ~This slender young man approaches you wearing a somewhat worried expression. "One thousand pardons, sir, but I am looking for a certain man, and I think you might be able to help me..."~ */
  IF ~~ THEN REPLY #43385 /* ~"Oh? How so?"~ */ GOTO 2
  IF ~~ THEN REPLY #43817 /* ~"I doubt it. Farewell."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #43818 /* ~"But if you'll only give me a moment, sir... it shan't take but a few breath's time..."~ */
  IF ~~ THEN REPLY #43819 /* ~"All right... what is it?"~ */ GOTO 2
  IF ~~ THEN REPLY #43820 /* ~"Leave me alone, boy. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #43821 /* ~"I am a messenger, sir, who seeks a man it's said cannot die... a scarred man, for whom death is nothing but the most trivial of annoyances. You match the admittedly vague description I was given, sir, and I had wondered if you were he."~ */
  IF ~~ THEN REPLY #43822 /* ~"Yes, that's me."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43823 /* ~"No, that's not me."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #43824 /* ~"Just who wants to know?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0 7.0
  SAY #43825 /* ~He nods, then bows deeply to you. "A message for you then, sir: Mistress Jolmi of the House Syrma, a lady of high standing, has sent me. Mistress Jolmi would meet you in the Civic Festhall, where she would make a proposal - of which I know nothing - to you. Should you choose to seek her out, she wears green silks, trimmed with gold, and has hair the color of blue steel. That is the extent of my message, sir... farewell."~ */
  IF ~~ THEN REPLY #43826 /* ~"Wait... where's the Civic Festhall?"~ */ JOURNAL #39487 /* ~I have been given a message that a woman called Jolmi of the House Syrma wishes to make a proposal to me. I am to seek her out in the Civic Festhall - she wears green silks trimmed with gold, and has hair the color of blue steel.~ */ GOTO 4
  IF ~~ THEN REPLY #43827 /* ~"Farewell."~ */ DO ~EscapeArea()
~ JOURNAL #39487 /* ~I have been given a message that a woman called Jolmi of the House Syrma wishes to make a proposal to me. I am to seek her out in the Civic Festhall - she wears green silks trimmed with gold, and has hair the color of blue steel.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43828 /* ~"In the northeastern corner of this part of the Clerk's Ward, sir. 'Tis a large structure, and should be easy to spot. Farewell now, sir."~ */
  IF ~~ THEN REPLY #43829 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 6.1
  SAY #43830 /* ~"A pity, then. Farewell, sir - my apologies for having troubled you. Farewell."~ */
  IF ~~ THEN REPLY #43831 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #43832 /* ~"I am in the hire of a wealthy noblewoman, Jolmi Syrma, sir."~ */
  IF ~~ THEN REPLY #43833 /* ~"I am the man you're looking for."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43834 /* ~"Well, you've got the wrong man."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #43835 /* ~The young messenger gives a polite half-bow. "We meet again, sir."~ */
  IF ~~ THEN REPLY #43836 /* ~"I wanted to tell you that I actually am the man you're looking for."~ */ DO ~SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43837 /* ~"Yes... I was just passing by. Farewell."~ */ EXIT
END
