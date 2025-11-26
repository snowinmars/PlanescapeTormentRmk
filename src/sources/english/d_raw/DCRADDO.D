// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRADDO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRADDO~

IF ~  Global("Craddock","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22870 /* ~You see a huge man, watching the area with a tight-lipped frown and narrowed eyes. He is hunched slightly, as if bearing a heavy load on his shoulders. The unpleasant smell of sweat and dirt wafts from his clothes. ~ */
  IF ~~ THEN REPLY #22893 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #22894 /* ~Ignore the man, roam the marketplace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22871 /* ~The man glances down at you, and his frown deepens. "Aye? What're ye sniffin' round 'ere for?"~ */
  IF ~~ THEN REPLY #22895 /* ~"I had some questions..."~ */ GOTO 2
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22896 /* ~"You Craddock?"~ */ GOTO 3
  IF ~~ THEN REPLY #22897 /* ~"Never mind. Sorry to bother you."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #22872 /* ~He grunts. "I've no time for the likes of beggars and dogs. Now push off!"~ */
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22898 /* ~ "You Craddock?"~ */ GOTO 3
  IF ~~ THEN REPLY #22900 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #22873 /* ~"Mayhap..." He studies your face, as if trying to recall you. "If I am, what be it to ye?"~ */
  IF ~~ THEN REPLY #22901 /* ~"I come with a message from Baen the Sender. The message states: 'The shipment must be in Curst by the third-day or there will be a penalty.'"~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",2)
SetGlobal("Craddock","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #22902 /* ~"Never mind. I mistook you for someone else. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22874 /* ~"By the *hells!* Can they be such *fools* that they think we can miracle it there?! All right then - yer message has found its way to the right ears, for all the good it will do!"~ */
  IF ~~ THEN REPLY #22903 /* ~"What's the problem?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0
  SAY #22875 /* ~"Look around ye!" Craddock nods at the laborers in the marketplace, then scowls. "These laggards and halfwits can barely keep up with the load as it stands, and now it needs doing in half the time!"~ */
  IF ~~ THEN REPLY #22906 /* ~"Do you need any help?"~ */ GOTO 6
  IF ~~ THEN REPLY #22907 /* ~"I'm sorry to hear that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #22876 /* ~"I'll tell ye what I need - all my men to show up for work! Jhelai's gone missing since this morn, and I need him back now."~ */
  IF ~~ THEN REPLY #22908 /* ~"Jhelai? Where did he go?"~ */ GOTO 7
  IF ~~ THEN REPLY #22909 /* ~"I'm sorry to hear that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #22877 /* ~"That Hive-bred goat is probably passed out on the street somewhere by the Smolderin' Corpse when he should be here helpin' us. Worthless sod..."~ */
  IF ~~ THEN REPLY #22910 /* ~"I could go find him for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #22911 /* ~"I could go find him for you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22912 /* ~"I'm sorry to hear that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #22878 /* ~"Oh, ye could, could ye?" Craddock squints at you. "An' now why would ye do that?"~ */
  IF ~~ THEN REPLY #22914 /* ~"You need the help don't you? It doesn't sound like you can spare the time to go looking for him, and there's work to be done."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #22916 /* ~"Well, I could find him, but I wouldn't do it for free."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22915 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 8.1
  SAY #22879 /* ~Craddock is silent for a moment, then nods. "Aye... ye find Jhelai, ye tell him to drag his worthless, bub-ridden hide here. I'll pay ye fer yer trouble..." He frowns. "...*when* ye've found him. Now get!"~ */
  IF ~~ THEN REPLY #22917 /* ~"You said he's likely by the Smoldering Corpse? Where's that?"~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~Craddock's missing one of his workers, a drunkard by the name of Jhelai. He said he's most likely wandering around on the street outside the Smoldering Corpse Bar. ~ */ GOTO 10
  IF ~~ THEN REPLY #22918 /* ~"All right, I'll go look for him. Farewell."~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~Craddock's missing one of his workers, a drunkard by the name of Jhelai. He said he's most likely wandering around on the street outside the Smoldering Corpse Bar. ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22880 /* ~"It's south n' east of here - head through the southeast gate, then head east fer about a block. It's got a mess o' drunks outside, can't miss it. Jhelai's most like somewhere around there."~ */
  IF ~~ THEN REPLY #22919 /* ~"All right, I'll go look for him. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Craddock","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #22881 /* ~You see Craddock. His scowl has deepened since when you first saw him... it looks like it's about to crack his face in two.~ */
  IF ~  Global("Craddock_Quest","GLOBAL",0)
~ THEN REPLY #22920 /* ~"You seemed upset by Baen's message. Was there a problem with it?"~ */ GOTO 5
  IF ~  Global("Craddock_Quest","GLOBAL",2)
~ THEN REPLY #22921 /* ~"I found Jhelai."~ */ GOTO 12
  IF ~  Global("Craddock_Quest","GLOBAL",3)
~ THEN REPLY #22922 /* ~"I could help you if you're short-handed, now that Jhelai's gone."~ */ GOTO 16
  IF ~~ THEN REPLY #22923 /* ~Leave Craddock in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #22882 /* ~"Is that right?" Craddock glances around. "Where *is* he, then?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22924 /* ~Truth: "He said to 'pike off,' that you were a 'cur of the lowest sort,' and that 'he wasn't going to work for you any longer.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ JOURNAL #22699 /* ~I passed along Jhelai's message to Craddock, word for word... Craddock wasn't too happy with the message. Jhelai may regret his words when he sobers up.~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22946 /* ~Truth: "He said to 'pike off,' that you were a 'cur of the lowest sort,' and that 'he wasn't going to work for you any longer.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22701 /* ~I passed along Jhelai's message to Craddock, word for word... Craddock wasn't too happy with the message - he was so unhappy, in effect, that Morte seems to have gained a whole new set of insults for his repertoire.~ */ GOTO 13
  IF ~~ THEN REPLY #22947 /* ~Lie: "He said... uh, that I should fill in for him."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Craddock_1","GLOBALLaw",-1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22702 /* ~I found Jhelai, then told Craddock that I would fill in for him... Craddock seemed skeptical at first, but then he agreed.~ */ GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #22883 /* ~Craddock's face turns a bright red, and his face cracks into a snarl. "Damned be his name! May all the evils of the planes hound his footsteps..." A blistering stream of insults, threats, and speculation about Jhelai's family roots issues from Craddock's mouth... it's awe-inspiring.~ */
  IF ~~ THEN REPLY #22950 /* ~"You know, I could fill in for him, if you need help."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22951 /* ~"I'm in need of a day's work. I'll take Jhelai's duties for a time, in exchange for his pay."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22948 /* ~"Well, that was the message. If there's nothing more, then I'll take my copper now..."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22952 /* ~"Uh... don't worry about paying me for finding him. I'll just leave now. Farewell."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22953 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #22884 /* ~Craddock's face turns a bright red, and his face cracks into a snarl. "Damned be his name! May all the evils of the planes hound his footsteps..." A blistering stream of insults, threats, and speculation about Jhelai's family roots issues from Craddock's mouth... ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 227
END

IF ~~ THEN BEGIN 15 // from:
  SAY #22885 /* ~Craddock finishes his tirade with a grunt. "Damn... that Jhelai..."~ */
  IF ~~ THEN REPLY #22954 /* ~"You know, I could fill in for him, if you need help."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22955 /* ~"I'm in need of a day's work. I'll take Jhelai's duties for a time, in exchange for his pay."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22956 /* ~"Well, that was the message. If there's nothing more, then I'll take my copper now..."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22958 /* ~"Uh... don't worry about paying me for finding him. I'll just leave now. Farewell."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22960 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.2 12.2 13.0 13.1 15.0 15.1 20.0 20.1
  SAY #22886 /* ~Craddock studies you for a moment. "Ye? Ha! Ye couldn't..." He suddenly falls silent. "Well... mayhap ye can. It's hard work, and there's no drinkin' on my watch..."~ */
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #22962 /* ~"Understood... let's get started."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(10)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,STR)
CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #22963 /* ~"Understood... let's get started."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(20)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #22964 /* ~"Understood... let's get started."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(30)
~ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #22887 /* ~The work is long, but at the end of the shift, you are not the least bit tired. Craddock grunts as you return. "Ye did well enough... here's yer pay." He tosses you a handful of coins. "Now get. We've no more use for ye."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22965 /* ~"What about the payment for delivering Jhelai's message to you?"~ */ GOTO 21
  IF ~~ THEN REPLY #22966 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #22888 /* ~The work is long, but at the end of the shift, you are not the least bit tired... the other laborers are amazed at how quickly you are able to work and the amount of weight you can carry. Craddock grunts as you return. "Ye've a bariaur's shoulders, ye do; ye're worth twice what Jhelai was... here's yer pay." He tosses you a handful of coins; twenty coppers in all. "Now get. We've no more use for ye."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22967 /* ~"What about the payment for delivering Jhelai's message to you?"~ */ GOTO 21
  IF ~~ THEN REPLY #22968 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #22889 /* ~The work is long, but at the end of the shift, you are not the least bit tired... the other laborers are amazed at how quickly you work and the amount of weight you can carry. Craddock grunts as you return. "Ye've a thokola's shoulders, ye do; ye're worth three times what Jhelai was... here's yer pay." He tosses you a handful of coins; thirty coppers in all. "Now get. We've no more use for ye."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22969 /* ~"What about the payment for delivering Jhelai's message to you?"~ */ GOTO 21
  IF ~~ THEN REPLY #22970 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.2 15.2
  SAY #22890 /* ~Craddock grunts, then reaches into his purse and throws a handful of coins to you. "Now get! An' if ye see Jhelai again, tell him he's a dead man!"~ */
  IF ~~ THEN REPLY #22971 /* ~"You know, I could fill in for him, if you need help."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22972 /* ~"I'm in need of a day's work. I'll take Jhelai's duties for a time, in exchange for his pay."~ */ GOTO 16
  IF ~~ THEN REPLY #22973 /* ~"I'll remember that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0 18.0 19.0
  SAY #22891 /* ~Craddock grunts, then reaches into his purse and counts off ten commons, which he tosses to you. "There's yer pay! Now get!"~ */
  IF ~~ THEN REPLY #22974 /* ~"Farewell, then."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ EXIT
END
