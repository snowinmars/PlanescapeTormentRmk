// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEVSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DEVSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31692 /* ~"Evil? Bah! I'm merely a pragmatist."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 5
END

IF ~~ THEN BEGIN 1 // from:
  SAY #31693 /* ~"Is it not a fine solution? It always worked for me. Poison and magic work equally as well, I've found."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 6
END

IF ~  Global("EvSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31694 /* ~This skull speaks with a deep voice and a jocular tone. "Have you come to learn of truth? I have truth a-plenty."~ */
  IF ~~ THEN REPLY #31695 /* ~"Tell me of yourself."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31696 /* ~"How did you come to be here?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31697 /* ~"What can you tell me of Lothar?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 6
  IF ~~ THEN REPLY #31698 /* ~"What can you tell me of the other skulls here?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 7
  IF ~~ THEN REPLY #31699 /* ~"Forget it. Sorry to waste your time. Farewell."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("EvSkull_Talk","AR0508",1)
~ THEN BEGIN 3 // from:
  SAY #31700 /* ~"Come for a little more tutoring in the true ways of the world, eh? I'm your man!"~ */
  IF ~~ THEN REPLY #31701 /* ~"Tell me of yourself."~ */ GOTO 4
  IF ~~ THEN REPLY #31702 /* ~"How did you come to be here?"~ */ GOTO 5
  IF ~~ THEN REPLY #31703 /* ~"What can you tell me of Lothar?"~ */ GOTO 6
  IF ~~ THEN REPLY #31704 /* ~"What can you tell me of the other skulls here?"~ */ GOTO 7
  IF ~~ THEN REPLY #31705 /* ~"Forget it. Sorry to waste your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.0 6.1 7.0
  SAY #31706 /* ~"I? I am Stern, one of the great practitioners of personal peace through intensive redirection of hostilities."~ */
  IF ~~ THEN EXTERN ~DANSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 6.2 7.1 8.0 8.1
  SAY #31707 /* ~"Funny you should mention that. I had a black book given to me in order that I might puzzle out its secrets. I unlocked its powers for a terrible price - one I would gladly pay again! - and sharpened my edge considerably. Little did I realize that the book would betray me to another - a mewling rat-thing that overwhelmed me in a wave of rodents and tore the flesh from my living bones. The rat went through a series of disciples, each of them betrayed by the book, until it wound up in the possession of the rat-man Mantuok. If you find this book, accept its powers and be rid of it before you suffer the same fate."~ */
  IF ~~ THEN REPLY #31708 /* ~"I'll keep an eye out. Tell me of yourself."~ */ JOURNAL #31712 /* ~Stern, the assassin's skull in Lothar's library of skulls, has told me of a book that Mantuok the wererat carries. He has warned me to beware the powers offered by the book.~ */ GOTO 4
  IF ~~ THEN REPLY #31709 /* ~"My thanks. What can you tell me of Lothar?"~ */ JOURNAL #31712 /* ~Stern, the assassin's skull in Lothar's library of skulls, has told me of a book that Mantuok the wererat carries. He has warned me to beware the powers offered by the book.~ */ GOTO 6
  IF ~~ THEN REPLY #31710 /* ~"Well, then... what can you tell me of the other skulls here?"~ */ JOURNAL #31712 /* ~Stern, the assassin's skull in Lothar's library of skulls, has told me of a book that Mantuok the wererat carries. He has warned me to beware the powers offered by the book.~ */ GOTO 7
  IF ~~ THEN REPLY #31711 /* ~"A tragic tale. Farewell."~ */ JOURNAL #31712 /* ~Stern, the assassin's skull in Lothar's library of skulls, has told me of a book that Mantuok the wererat carries. He has warned me to beware the powers offered by the book.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 5.1 7.2
  SAY #31713 /* ~"What can I tell you of Lothar? I will tell you nothing. Even this bare existence is better than the oblivion he promises should I speak his secrets."~ */
  IF ~~ THEN REPLY #31714 /* ~"You can tell me..."~ */ GOTO 9
  IF ~~ THEN REPLY #31715 /* ~"Very well, then. Tell me of yourself."~ */ GOTO 4
  IF ~~ THEN REPLY #31716 /* ~"All right. Then how did you come to be here?"~ */ GOTO 5
  IF ~~ THEN REPLY #31717 /* ~"So what can you tell me of the other skulls here?"~ */ GOTO 7
  IF ~~ THEN REPLY #31718 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 5.2 6.3
  SAY #31719 /* ~"Of the skulls that will speak to you, I can offer no good words. Their experiences have not been shared with me; indeed, we have spoken precious little until your arrival. Perhaps," it says, a smirk in its voice, "there's something special about your very presence."~ */
  IF ~~ THEN REPLY #31720 /* ~"Possibly. Tell me of yourself."~ */ GOTO 4
  IF ~~ THEN REPLY #31721 /* ~"No doubt. How did you get here?"~ */ GOTO 5
  IF ~~ THEN REPLY #31722 /* ~"That's right. Enough for you to tell me of Lothar."~ */ GOTO 6
  IF ~~ THEN REPLY #31723 /* ~"Quite right, and you're about to be deprived of it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #31724 /* ~"However you choose to define it, Grimscalp." Stern turns his attention back to you. "I was the best of the lot, so it's said."~ */
  IF ~~ THEN REPLY #31725 /* ~"Then how did you wind up here?"~ */ GOTO 5
  IF ~~ THEN REPLY #31726 /* ~"What happened to you?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #31727 /* ~You get the distinct impression Stern's skull is sneering at you. "And gain merely your friendship? Bah. There is nothing you can offer me, no service nor item, that will impel me to betray Lothar to you. Begone!"~ */
  IF ~~ THEN REPLY #31728 /* ~"Just answer a few more questions, then..."~ */ GOTO 10
  IF ~~ THEN REPLY #31729 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31730 /* ~"I will not." The skull turns its attention inward; you can feel the force of its personality vanish.~ */
  IF ~~ THEN REPLY #31731 /* ~"Fine, then."~ */ EXIT
END
