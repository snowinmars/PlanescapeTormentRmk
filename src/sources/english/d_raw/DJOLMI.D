// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOLMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOLMI~

IF ~  GlobalLT("Jolmi","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #43388 /* ~This stern-looking older woman seems to be looking for someone. Her eyes fix upon your face as you approach her. "You there... might I have a word with you?"~ */
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43389 /* ~"Of course..."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43852 /* ~"What do you want?"~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #43853 /* ~"Yes... you're Jolmi, correct? I spoke to your messenger."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ JOURNAL #63980 /* ~A noblewoman named Jolmi made an odd proposal to me... she wishes to pay me for the privilege of 'murdering' me. An easy way to fill my purse, I suppose, were it all to run smoothly...~ */ GOTO 4
  IF ~~ THEN REPLY #43854 /* ~"No, not now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #43855 /* ~"My name is Jolmi, a noblewoman of the House Syrma. I am seeking a certain man that I have been told cannot die... a terribly scarred man, for whom death is nothing but the most trivial of annoyances. What bits of a description I have gathered match you quite well... are you this man?"~ */
  IF ~~ THEN REPLY #43856 /* ~"Yes, I am."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Jolmi_1","GLOBALLaw",2)
SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~A noblewoman named Jolmi made an odd proposal to me... she wishes to pay me for the privilege of 'murdering' me. An easy way to fill my purse, I suppose, were it all to run smoothly...~ */ GOTO 4
  IF ~~ THEN REPLY #43857 /* ~"No, I'm not."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jolmi_1","GLOBALLaw",-1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #43858 /* ~She nods sharply. "In that case, I offer my thanks for your time. Farewell."~ */
  IF ~~ THEN REPLY #43859 /* ~"Wait... I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #43860 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.1 13.0
  SAY #43861 /* ~Jolmi shakes her head. "There are others here who might answer your questions. I would ask that you find one, and leave me to my search. Farewell."~ */
  IF ~  GlobalLT("Jolmi","GLOBAL",3)
~ THEN REPLY #43862 /* ~"Actually, I *am* the man you're looking for."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~A noblewoman named Jolmi made an odd proposal to me... she wishes to pay me for the privilege of 'murdering' me. An easy way to fill my purse, I suppose, were it all to run smoothly...~ */ GOTO 4
  IF ~~ THEN REPLY #43863 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.0 3.0 11.0
  SAY #43864 /* ~"I am pleased to meet you, then." She gives a slight bow. "I would make you a somewhat unusual proposal... though you must admit you are an unusual man. I will give you one thousand copper commons... for your permission to kill you. Are you open to discussion on the matter?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43865 /* ~"Sure, why not?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43866 /* ~"Sure, why not?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43867 /* ~"Sure, why not?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43868 /* ~"But... why?"~ */ GOTO 5
  IF ~~ THEN REPLY #43869 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.3 12.3
  SAY #43870 /* ~Jolmi doesn't bat an eyelash. "But why not? I thought it might be an interesting experience - paying someone for the privilege of murdering them. When I first heard rumors of your existence, how could I resist? So... what is your answer? Shall we discuss the matter in greater detail?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43871 /* ~"Yes; let's work out the details."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43872 /* ~"Yes; let's work out the details."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43873 /* ~"Yes; let's work out the details."~ */ GOTO 9
  IF ~~ THEN REPLY #43874 /* ~"One moment... where did you hear these rumors?"~ */ GOTO 6
  IF ~~ THEN REPLY #43875 /* ~"I won't do it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #43876 /* ~Jolmi frowns. "One hears all sorts of things in the Festhall. How could one *not* eventually hear of a man like you? Again I ask: will you consider my proposal?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43877 /* ~"Yes; let's work out the details."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43878 /* ~"Yes; let's work out the details."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43879 /* ~"Yes; let's work out the details."~ */ GOTO 9
  IF ~~ THEN REPLY #43880 /* ~"I won't do it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.0 12.0
  SAY #43881 /* ~After a short discussion, it comes down to the following terms: Jolmi will pay you one thousand copper commons; in return, you will allow her to drive her dagger into your heart. She will wait for you to awaken, at which point she will give you the coin.

"Do you agree to this, then?"~ */
  IF ~~ THEN REPLY #43883 /* ~"Yes... let's do it."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43884 /* ~"No, I don't think so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1 6.1 12.1
  SAY #43885 /* ~After a short discussion, it comes down to the following terms: Jolmi will pay you fifteen hundred copper commons; in return, you will allow her to drive her dagger into your heart. She will wait for you to awaken, at which point she will give you the coin.

"Do you agree to this, then?"~ */
  IF ~~ THEN REPLY #43886 /* ~"Yes... let's do it."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43887 /* ~"No, I don't think so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.2 6.2 12.2
  SAY #43888 /* ~After a short discussion, it comes down to the following terms: Jolmi will pay you two thousand copper commons; in return, you will allow her to drive her dagger into your heart. She will wait for you to awaken, at which point she will give you the coin.

"Do you agree to this, then?"~ */
  IF ~~ THEN REPLY #43889 /* ~"Yes... let's do it."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(2000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43890 /* ~"No, I don't think so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0 9.0
  SAY #43891 /* ~The affair is over in moments... she's already cleaned her blade and put it away by the time you've recovered. After picking yourself up off the Festhall floor, Jolmi hands you several rolls of copper coins while you rub your aching chest.

"Somewhat disappointing, I must admit. Ah, well... coin well-spent, nonetheless. Farewell."~ */
  IF ~~ THEN REPLY #43892 /* ~"Yes... farewell."~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
~ JOURNAL #63981 /* ~I allowed Jolmi to stab me through the heart for a handsome sum of coin... she seemed somewhat disappointed with the experience, but I'm pleased well enough with the coin.~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #43893 /* ~Jolmi turns her hard eyes on you. "Yes?"~ */
  IF ~~ THEN REPLY #43894 /* ~"I'm the man you've been looking for."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~A noblewoman named Jolmi made an odd proposal to me... she wishes to pay me for the privilege of 'murdering' me. An easy way to fill my purse, I suppose, were it all to run smoothly...~ */ GOTO 4
  IF ~~ THEN REPLY #43895 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #43896 /* ~"Nothing... farewell."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #43897 /* ~Jolmi's cold eyes glint with recognition as you come before her. "You've reconsidered, my offer, then? One thousand coins for your permission to kill you?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43898 /* ~"Yes; let's discuss it."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43899 /* ~"Yes; let's discuss it."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43900 /* ~"Yes; let's discuss it."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43901 /* ~"Tell me why you'd want to, first."~ */ GOTO 5
  IF ~~ THEN REPLY #43902 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",4)
~ THEN BEGIN 13 // from:
  SAY #43903 /* ~Jolmi turns her hard eyes on you; there is a glint of recognition as they pass over your face. "Yes?"~ */
  IF ~~ THEN REPLY #43904 /* ~"I had some questions, Jolmi..."~ */ GOTO 3
  IF ~~ THEN REPLY #43905 /* ~"I was just passing by... farewell."~ */ EXIT
END
