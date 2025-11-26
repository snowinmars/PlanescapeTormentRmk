// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WHORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WHORE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67953 /* ~This tawdry, scantily clad woman smiles coyly, shrugging off one of her brassiere's straps as you approach her. "Twenty coins, cutter, and I'm yours..."~ */
  IF ~~ THEN REPLY #67958 /* ~"Actually, I had some questions..."~ */ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67959 /* ~"Sounds reasonable... here's the coin."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67960 /* ~"Eh... with the others here?"~ */ GOTO 2
  IF ~~ THEN REPLY #67961 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #67954 /* ~She sighs and tugs her brassiere back up. "No. Sorry, not going to happen."~ */
  IF ~~ THEN REPLY #67962 /* ~"Tell me what's going on with the guard outside, at least..."~ */ GOTO 3
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67963 /* ~"Well... how about you be mine for twenty coins, then?"~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67964 /* ~"Fine... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 3.1
  SAY #67955 /* ~"Why not?" She smiles wickedly, playing with her hair. "If it looks like enough fun, mayhap they'll join in..." She winks and motions you towards her.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67965 /* ~"You're right... why not? Here's the coin..."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67966 /* ~"Actually... I just had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #67967 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #67956 /* ~"Oh, him?" She looks over to the burly guardsman in the doorway, his back to the room as he peers down the hall. "My friends and I just slip him some jink to watch out for us, is all. Why? He making you nervous? Don't worry, he won't watch... come here..." She opens her arms to you.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67968 /* ~"Why not? Here's the coin..."~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67969 /* ~"Eh... with the others here?"~ */ GOTO 2
  IF ~~ THEN REPLY #67970 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.0
  SAY #67957 /* ~You finish your sordid little fling, dress yourself, and gather your belongings.

"Mmm, you don't tire easily, do you? Well, come and see me again soon, if you'd like. Farewell."~ */
  IF ~~ THEN REPLY #67971 /* ~"Maybe I will. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #67972 /* ~Leave.~ */ EXIT
END
