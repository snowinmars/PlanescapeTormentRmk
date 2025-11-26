// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BMORTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~BMORTE~

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31485 /* ~"It couldn't hurt you to say a few words to me, fiendling."~ [MRT478] */
  IF ~~ THEN EXTERN ~DANNAH~ 289
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61707 /* ~"Annah, could you stop flicking that tail? It's irritating."~ [MRT476A] */
  IF ~~ THEN EXTERN ~DANNAH~ 290
END

IF ~~ THEN BEGIN 2 // from:
  SAY #61709 /* ~"Flick away then."~ [MRT476B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #61710 /* ~"Say, Annah... does that tail go all the way up?"~ [MRT479A] */
  IF ~~ THEN EXTERN ~DANNAH~ 291
END

IF ~~ THEN BEGIN 4 // from:
  SAY #61712 /* ~"'Aye... up yer bone-box and rip out yer brains.'"~ [MRT479B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #61713 /* ~"Fiendling, I have to ask. Where did you get that accent?"~ [MRT544A] */
  IF ~~ THEN EXTERN ~DANNAH~ 292
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61714 /* ~"Never mind."~ [MRT544B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",4)
~ THEN BEGIN 7 // from:
  SAY #61715 /* ~"So, fiendling, let me, eh... sit on your lap and hear a little story."~ [MRT477A] */
  IF ~~ THEN EXTERN ~DANNAH~ 293
END

IF ~~ THEN BEGIN 8 // from:
  SAY #61716 /* ~"I'll just float over here and sulk, then."~ [MRT477B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",5)
~ THEN BEGIN 9 // from:
  SAY #61717 /* ~"Are you always this unfriendly?"~ [MRT480] */
  IF ~~ THEN EXTERN ~DANNAH~ 294
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",6)
~ THEN BEGIN 10 // from:
  SAY #61718 /* ~"You're such a filthy little corpse pirate. I admire that."~ [MRT542A] */
  IF ~~ THEN EXTERN ~DANNAH~ 295
END

IF ~~ THEN BEGIN 11 // from:
  SAY #61719 /* ~"Hey, if you can find my body, you're welcome to."~ [MRT542B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",7)
~ THEN BEGIN 12 // from:
  SAY #61720 /* ~"So, fiendling. Is that tail the only demonic part of you?"~ [MRT549A] */
  IF ~~ THEN EXTERN ~DANNAH~ 296
END

IF ~~ THEN BEGIN 13 // from:
  SAY #61721 /* ~"Looks like you got a demonic mouth, too."~ [MRT549B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",8)
~ THEN BEGIN 14 // from:
  SAY #61722 /* ~"You know fiendling, you're all right... well, if you weren't being such a banshee all the time."~ [MRT541A] */
  IF ~~ THEN EXTERN ~DANNAH~ 297
END

IF ~~ THEN BEGIN 15 // from:
  SAY #61723 /* ~"Ah... I think I'm in love."~ [MRT541B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",9)
~ THEN BEGIN 16 // from:
  SAY #61724 /* ~"If things get any worse, I might as well go dip my pen in the Lady of Pain."~ [MRT553A] */
  IF ~~ THEN EXTERN ~DANNAH~ 298
END

IF ~~ THEN BEGIN 17 // from:
  SAY #61725 /* ~"What? You mean the *Lady of Pain?* Is talking about the *Lady of Pain* a bad thing? Why would the *Lady of Pain* mind us talking about her, huh?"~ [MRT553B] */
  IF ~~ THEN EXTERN ~DANNAH~ 299
END

IF ~~ THEN BEGIN 18 // from:
  SAY #61726 /* ~"Fate shouldn't tempt *me.*"~ [MRT553C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",10)
~ THEN BEGIN 19 // from:
  SAY #61727 /* ~"You know, fiendling, you'd look a lot better if you dressed up some more. You know, a pair of lace boots with lengthy heels on them to go with those emerald eyes."~ [MRT546A] */
  IF ~~ THEN EXTERN ~DANNAH~ 300
END

IF ~~ THEN BEGIN 20 // from:
  SAY #61728 /* ~"Well, if I were you, I'd rent a suite and not come out for a month."~ [MRT546B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",11)
~ THEN BEGIN 21 // from:
  SAY #61729 /* ~"You know, fiendling, you're like an Arborean fireseed."~ [MRT547A] */
  IF ~~ THEN EXTERN ~DANNAH~ 301
END

IF ~~ THEN BEGIN 22 // from:
  SAY #61730 /* ~"Yea. Your hair's like a sweet, tender flame, yet inside, you're bitter, like a beetle's sting."~ [MRT547B] */
  IF ~~ THEN EXTERN ~DANNAH~ 302
END

IF ~~ THEN BEGIN 23 // from:
  SAY #61732 /* ~"Sometimes I wish you'd just love me for who I am, not what I can do for you."~ [MRT542C] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",12)
~ THEN BEGIN 24 // from:
  SAY #61733 /* ~"Oh, powers above, I've got this stupid itch on the back of my head again. It's killing me."~ [MRT554A] */
  IF ~~ THEN EXTERN ~DANNAH~ 303
END

IF ~~ THEN BEGIN 25 // from:
  SAY #61734 /* ~"You know, one day you'll have an itch you can't scratch, and I won't help you. And then, my revenge will be complete."~ [MRT554B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",13)
~ THEN BEGIN 26 // from:
  SAY #61735 /* ~"So, fiendling, tell it to me straight, okay? You can't get enough of me, can you?"~ [MRT548A] */
  IF ~~ THEN EXTERN ~DANNAH~ 304
END

IF ~~ THEN BEGIN 27 // from:
  SAY #61736 /* ~"Blah, blah, blah, threat, threat, threat. Don't you ever get tired of being angry all the time? Sheesh."~ [MRT548B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",14)
~ THEN BEGIN 28 // from:
  SAY #61737 /* ~"You know, fiendling, I see the way you look at the chief. Nothing to be ashamed of. Why don't you say something?"~ [MRT551A] */
  IF ~~ THEN EXTERN ~DANNAH~ 305
END

IF ~~ THEN BEGIN 29 // from:
  SAY #61738 /* ~"All right, all right... calm down. Sheesh."~ [MRT551B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
Global("Morte_Talked_Annah","GLOBAL",15)
~ THEN BEGIN 30 // from:
  SAY #61739 /* ~"Annah, if yeh don't like me staring, why do you wear that um... you know... that... that vest?"~ [MRT550A] */
  IF ~~ THEN EXTERN ~DANNAH~ 306
END

IF ~~ THEN BEGIN 31 // from:
  SAY #61740 /* ~"Well, it sure takes my breath away."~ [MRT550B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Annah","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
Global("Morte_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #61741 /* ~"So, Grace... you uh, have any sisters?"~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~~ THEN BEGIN 33 // from:
  SAY #61742 /* ~"Give me a moment to be delirious with joy."~ [MRT461BD] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 34 // from:
  SAY #61743 /* ~"C'mon, Grace, I thought you succubi were supposed to be fun. Why so cold?"~ [MRT462AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 363
END

IF ~~ THEN BEGIN 35 // from:
  SAY #61744 /* ~"Sheesh. Ask a question, and they flay the skin from your bones."~ [MRT462B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 36 // from:
  SAY #61745 /* ~"The only succubus ever to travel with us, and she's a puritan. You know, I have the worst luck."~ [MRT463AA] */
  IF ~~ THEN EXTERN ~DGRACE~ 364
END

IF ~~ THEN BEGIN 37 // from:
  SAY #61746 /* ~"I'll say. I... hey, wait a minute."~ [MRT463B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
InParty("Annah")
~ THEN BEGIN 38 // from:
  SAY #61747 /* ~"Hey, don't let the fiendling get to you, Grace. She's just not as pretty as she'd like to be."~ [MRT555] */
  IF ~~ THEN EXTERN ~DGRACE~ 365
END

IF ~  LastPersonTalkedTo("Nordom")
Global("Morte_Talked_Nordom","GLOBAL",0)
~ THEN BEGIN 39 // from:
  SAY #61749 /* ~"Why don't you hop back to Mechanus, Nordom, huh?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",2)
~ THEN BEGIN 40 // from:
  SAY #61750 /* ~"I'm going to roll that stupid box like dice."~ [MRT464AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 139
END

IF ~~ THEN BEGIN 41 // from:
  SAY #61751 /* ~"Stupid clockwork reject."~ [MRT465] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",3)
~ THEN BEGIN 42 // from:
  SAY #61752 /* ~"Nordom, how come you never reload your crossbows?"~ [MRT557A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 140
END

IF ~~ THEN BEGIN 43 // from:
  SAY #61753 /* ~"That must be handy."~ [MRT557B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #61754 /* ~"Nordom, will you stop clicking your crossbows! It's driving me barmy."~ [MRT558A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 141
END

IF ~~ THEN BEGIN 45 // from:
  SAY #61755 /* ~"Once... just once... I would like to travel with some normal people."~ [MRT558B] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",5)
~ THEN BEGIN 46 // from:
  SAY #61756 /* ~"Hey, Nordom... 'Knock-Knock.'"~ [MRT556A] */
  IF ~~ THEN EXTERN ~DNORDOM~ 142
END

IF ~~ THEN BEGIN 47 // from:
  SAY #61757 /* ~"It's a joke, you stupid polygon. You're supposed to answer 'who's there?'"~ [MRT556B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 143
END

IF ~~ THEN BEGIN 48 // from:
  SAY #61758 /* ~"You know what, just forget it."~ [MRT556C] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 49 // from:
  SAY #61759 /* ~"Psst. Hey Nordom. Calculate the easiest way for me to 'snuggle with Annah's pillows,' okay?"~ [MRT467AA] */
  IF ~~ THEN EXTERN ~DNORDOM~ 144
END

IF ~~ THEN BEGIN 50 // from:
  SAY #61760 /* ~"Shut up! Shut up!"~ [MRT467BA] */
  IF ~~ THEN EXTERN ~DANNAH~ 307
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Morte_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #64208 /* ~"So, Grace... you have any sisters?"~ [MRT461AB] */
  IF ~~ THEN EXTERN ~DGRACE~ 362
END

IF ~  LastPersonTalkedTo("Nordom")
GlobalLT("Morte_Talked_Nordom","GLOBAL",6)
~ THEN BEGIN 52 // from:
  SAY #64209 /* ~"Hey, why don't you hop back to Mechanus, Nordom, huh?"~ [MRT466B] */
  IF ~~ THEN EXTERN ~DNORDOM~ 138
END
