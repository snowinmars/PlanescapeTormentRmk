// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIPSY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIPSY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~This older man is staring into his stein of ale, misery etched into his features. The battered pewter mug is an unusual one, lightly engraved with strange runes and bearded faces, and covered with a coat of thin frost. He looks up as you approach him. "Greetings... sir..." He seems slightly tipsy.~ */
  IF ~~ THEN REPLY #7234 /* ~"Something wrong?"~ */ GOTO 2
  IF ~~ THEN REPLY #46154 /* ~"What's that mug you've got?"~ */ GOTO 5
  IF ~~ THEN REPLY #46155 /* ~"I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #46156 /* ~"Greetings, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #46157 /* ~He shakes his head sadly, taking another draught of his ale. "Nay, nay... you shan't... find any answers here... you won't."~ */
  IF ~~ THEN REPLY #46158 /* ~"Is something wrong?"~ */ GOTO 2
  IF ~~ THEN REPLY #46159 /* ~"What's that mug you've got?"~ */ GOTO 5
  IF ~~ THEN REPLY #46160 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #46161 /* ~He sighs, belches into his hand, and nods as he takes another pull of ale. "Aye, something's wrong, all right. I've gone and lost... my apprenticeship. Well hung over, I was, and botched... my mentor's last experiment. All for this damned... drink!" He sneers at the mug in his hand, but in seconds his expression softens and he takes another swig. "Ruins everything, it does, this damnable drinking of mine..."~ */
  IF ~~ THEN REPLY #46162 /* ~"Why don't you stop drinking, then?"~ */ JOURNAL #66804 /* ~I met a man in a cafe in the Clerk's Ward whose desire for drink has ruined his career as an sorcerer's apprentice. Seeing as he doesn't have the willpower to ignore his craving for alcohol, I wonder what such a man could do to rid himself of such an addiction...~ */ GOTO 3
  IF ~~ THEN REPLY #46163 /* ~"If you're too weak to stop, it's your own fault. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #46164 /* ~"That's too bad. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46165 /* ~He shrugs and sighs miserably. "I simply... cannot. I want to, but I cannot. I just... *need* to drink. I try and stay away, but desire eventually... overcomes me, and I cannot resist. Such a... wreck I've become!" He throws back the last of his ale and calls for more.~ */
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #46166 /* ~"There's someone you should speak to... Unfulfilled-Desire. You can find her in the Civic Festhall. Talk to her of your love for drink... you'll soon find you won't want it any longer."~ */ DO ~GiveItemCreate("DwfMug",Protagonist,1,0,0)
AddexperienceParty(10000)
~ JOURNAL #66805 /* ~I told the drunkard mage's apprentice I met in the Clerk's Ward about Unfulfilled-Desire... I'm certain whatever odd powers she possesses will be enough to rid of his want for drink. He was kind enough to give me his magical Frost-Ale mug as a gift of sorts, claiming he'd no longer need it.~ */ GOTO 4
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46167 /* ~"I see. What's that mug you've got there?"~ */ GOTO 5
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46168 /* ~"If you're too weak to stop, it's your own fault. Farewell."~ */ EXIT
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46169 /* ~"That's too bad. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46170 /* ~His eyes brighten. "Truly? I shall go... speak to her now, then. I thank... you, sir." He pauses, looking down at his empty mug. "Here... I would have you take this. I need it... no longer." He hands you the rune-covered ale stein.~ */
  IF ~~ THEN REPLY #46171 /* ~"Thanks... farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #46172 /* ~"This?" He looks down at the pewter mug. "I won this in a dice game. It's enchanted to... keep whatever's in it freezing cold. In my case... cheap ale." He frowns, rubs at his eyes, and takes another swig of his drink.~ */
  IF ~~ THEN REPLY #46173 /* ~"Is something wrong?"~ */ GOTO 2
  IF ~~ THEN REPLY #46174 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
