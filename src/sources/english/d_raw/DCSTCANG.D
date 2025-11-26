// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3172 /* ~You see a young man with a scowling face. He is mumbling to himself and appears to be preoccupied.~ */
  IF ~~ THEN REPLY #3173 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #13708 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13709 /* ~At first you don't think he heard you, but then he turns his head and gives you a cursory glance. After a moment he turns away. "I don't know you, berk, and I don't want to know you. Go away and I won't have to hurt you."~ */
  IF ~~ THEN REPLY #13710 /* ~"Look, I just need to ask you some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #13711 /* ~"You're threatening the wrong person, fool. Just answer my questions and I won't have to teach you some manners."~ */ GOTO 3
  IF ~~ THEN REPLY #13712 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13713 /* ~"Fine. I'll be leaving then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13714 /* ~He turns his head to look at you, his face flushed with anger. He talks to you between clenched teeth. "Questions? Do I look like the local sage, berk? Get outta my face before I add a few scars to yours."~ */
  IF ~~ THEN REPLY #13715 /* ~"You're threatening the wrong person, fool. Just answer my questions and I won't have to teach you some manners."~ */ GOTO 3
  IF ~~ THEN REPLY #13716 /* ~"Let's see you try."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13717 /* ~"Fine, I'll be leaving then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #13718 /* ~He spins around, his face flushed with anger. He seems about to say something to you when he stops and looks at you more closely. As his eyes travel along the many scars that cover your body, his anger seems to melt away and turn to fear. "Uh... Sorry, cutter. What's the dark you're looking to find?"~ */
  IF ~~ THEN REPLY #13719 /* ~"I'm looking for a deva. I've heard he can be found here."~ */ GOTO 4
  IF ~~ THEN REPLY #13720 /* ~"What's the local news?"~ */ GOTO 5
  IF ~~ THEN REPLY #13721 /* ~"Tell me about Curst."~ */ GOTO 6
  IF ~~ THEN REPLY #13722 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #13723 /* ~He frowns in thought then looks away from you for a moment. "Wrong gate town, cutter. Devas don't come this way, at least not that I've heard."~ */
  IF ~~ THEN REPLY #13724 /* ~"All right. Some other questions then."~ */ GOTO 7
  IF ~~ THEN REPLY #13725 /* ~"Thanks. I'll see you around."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 7.1
  SAY #13726 /* ~"Couldn't tell ya. I try to keep my nose clean and stay outta everyone's business. A cutter lives longer and better that way." He pauses and looks a little nervous. "No offense intended... but you should do the same."~ */
  IF ~~ THEN REPLY #13727 /* ~"I'll keep that in mind. Tell me something else though."~ */ GOTO 7
  IF ~~ THEN REPLY #13728 /* ~"Funny... I don't recall asking you for advice. Another slip like that could cost you."~ */ GOTO 8
  IF ~~ THEN REPLY #13729 /* ~"Thanks for the advice. I'll be seeing you."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 7.2
  SAY #13730 /* ~He snorts and glances around for a moment before answering. "It's called Curst for a reason, cutter. Place is a prison for all the sods who've messed up in life. The sad dark of the matter is that most berks don't even know they're captive."~ */
  IF ~~ THEN REPLY #13731 /* ~"A prison?"~ */ GOTO 9
  IF ~~ THEN REPLY #13732 /* ~"I see. Another question."~ */ GOTO 7
  IF ~~ THEN REPLY #13733 /* ~"Well, thanks for the information."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.1 8.0 9.0
  SAY #13734 /* ~"Sure. What you want to know?"~ */
  IF ~~ THEN REPLY #13735 /* ~"I'm looking for a deva. I've heard he can be found here."~ */ GOTO 4
  IF ~~ THEN REPLY #13736 /* ~"What's the local news?"~ */ GOTO 5
  IF ~~ THEN REPLY #13737 /* ~"Tell me about Curst."~ */ GOTO 6
  IF ~~ THEN REPLY #13738 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #13739 /* ~His face begins to flush again as he fights for control. "Sorry, won't happen again. You, uh, want something else?"~ */
  IF ~~ THEN REPLY #13740 /* ~"Yeah, I have some questions for you."~ */ GOTO 7
  IF ~~ THEN REPLY #13741 /* ~"No, that will be all."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #13742 /* ~He glances about and leans in a little closer to you. "Yeah, you can't tell at first sight but Curst is definitely a prison. Just try to leave and you'll see what I mean. If you don't have a really good reason, and a way to do so, you don't get past the city gates." He pauses and looks around again. "I can't say anything more."~ */
  IF ~~ THEN REPLY #13743 /* ~"Hmm. Let me ask you something else."~ */ GOTO 7
  IF ~~ THEN REPLY #13744 /* ~"Thanks. I'll be seeing you."~ */ EXIT
END
