// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCHLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCHLP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3166 /* ~You see an older man standing at the edge of a small crowd. They are gathered about what looks like a guillotine. ~ */
  IF ~~ THEN REPLY #3167 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #13656 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13657 /* ~He gives you a quick glance and starts to turn away. Changing his mind, he turns to face you. His eyes travel up and down your body examining you closely as he slowly he shakes his head. "You're a mess, cutter. I can't say I've ever seen anyone as scarred as you. What'd you do? Fight off the hordes of Baator by yourself?"~ */
  IF ~~ THEN REPLY #13658 /* ~"I have some questions for you."~ */ GOTO 2
  IF ~~ THEN REPLY #13659 /* ~"None of your business, old man."~ */ GOTO 7
  IF ~~ THEN REPLY #13660 /* ~"I've seen a few battles and I've got the scars to prove it."~ */ GOTO 8
  IF ~~ THEN REPLY #13661 /* ~"What's going on here?"~ */ GOTO 4
  IF ~~ THEN REPLY #13662 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 8.0
  SAY #13663 /* ~He frowns at you. "Do you see the word 'sage' tattooed on me anywhere?" He looks at you as if he really expects an answer to his question. ~ */
  IF ~~ THEN REPLY #13664 /* ~"I... Well, no. I just thought that a man of your years would have acquired great wisdom that he could pass on to those less fortunate than him..."~ */ GOTO 3
  IF ~~ THEN REPLY #13665 /* ~"Look, I just need some answers. Can you give them?"~ */ GOTO 7
  IF ~~ THEN REPLY #13666 /* ~"Oh, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13667 /* ~His frown changes to a smile as he begins to chuckle. "You're a funny one, cutter. 'Great wisdom' my arse." He pauses for a moment. "All right, you've bought yourself some answers. What can I help you with?"~ */
  IF ~~ THEN REPLY #13668 /* ~"First of all, what's going on here?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.0 8.1
  SAY #13669 /* ~He gestures over his shoulder. "You see the chopper? Some sod's gonna lose his head. Not something you see every day."~ */
  IF ~~ THEN REPLY #13670 /* ~"What crime did he commit?" ~ */ GOTO 5
  IF ~~ THEN REPLY #13671 /* ~"Oh. I wanted to ask you something else."~ */ GOTO 9
  IF ~~ THEN REPLY #13672 /* ~"I see. Well, I thank you for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #13673 /* ~"I don't rightly know. Maybe he killed some sod, maybe someone turned stag on him and got him sent to the chopper. You just don't know in this burg."~ */
  IF ~~ THEN REPLY #13674 /* ~"Turned stag?"~ */ GOTO 6
  IF ~~ THEN REPLY #13675 /* ~"I have other questions for you."~ */ GOTO 9
  IF ~~ THEN REPLY #13676 /* ~"Oh... I thank you. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13677 /* ~He smiles at you and chuckles. "You're new here, aren't you? 'Turned stag.' Betrayed, set up, given the shiv in the back so to say. It happens in Curst."~ */
  IF ~~ THEN REPLY #13678 /* ~"I see. Tell me something else..."~ */ GOTO 9
  IF ~~ THEN REPLY #13679 /* ~"Hmm. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1
  SAY #13680 /* ~He scowls at you and then gives you a rude gesture. "Pike it, berk!" He turns his back to you.~ */
  IF ~~ THEN REPLY #13681 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY #13682 /* ~He nods in agreement. "I'll say you do... So what can I do for you?"~ */
  IF ~~ THEN REPLY #13683 /* ~"I have some questions for you."~ */ GOTO 2
  IF ~~ THEN REPLY #13684 /* ~"You could tell me what's going on."~ */ GOTO 4
  IF ~~ THEN REPLY #13685 /* ~"Nothing actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1 5.1 6.0 10.0 11.0 12.0 13.1 14.0
  SAY #13686 /* ~"Certainly." He waits for your questions.~ */
  IF ~~ THEN REPLY #13687 /* ~"I'm looking for a deva. I've heard he's somewhere in Curst."~ */ GOTO 10
  IF ~~ THEN REPLY #13688 /* ~"What can you tell me about Curst?"~ */ GOTO 11
  IF ~~ THEN REPLY #13689 /* ~"Who's in charge here?"~ */ GOTO 12
  IF ~~ THEN REPLY #13690 /* ~"What's the local news?"~ */ GOTO 13
  IF ~~ THEN REPLY #13691 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13692 /* ~"The chant is there's a deva in town... I don't know where he could be, though. A deva in town would certainly attract a lot of attention." He pauses to think. "I don't have an answer for you. Keep asking around. Somebody's probably seen him."~ */
  IF ~~ THEN REPLY #13693 /* ~"Another question."~ */ GOTO 9
  IF ~~ THEN REPLY #13694 /* ~"You've been very helpful. I must leave now."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #13695 /* ~He pauses to think then glances around him. "Curst is a dung heap, pure and simple. A cutter's got to watch his backside here... That's all I'm willing to say."~ */
  IF ~~ THEN REPLY #13696 /* ~"All right. Let me ask you something else."~ */ GOTO 9
  IF ~~ THEN REPLY #13697 /* ~"I thank you for your help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #13698 /* ~"That would be Tovus Giljaf. You can find him at the administration office. A word of advice to you: Don't be sticking your nose into his business. It wouldn't be the smartest thing to do and you could lose your head." He gestures at the guillotine behind him. ~ */
  IF ~~ THEN REPLY #13699 /* ~"I'll keep that in mind. Another thing though..."~ */ GOTO 9
  IF ~~ THEN REPLY #13700 /* ~I see. I must leave now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #13701 /* ~He looks deep in thought for a moment. "Well... The chant is that Tainted Barse's daughter turned up missing. He's a bit on the barmy side because of it. Other than that I can't think of anything worth mentioning.~ */
  IF ~~ THEN REPLY #13702 /* ~"Who is this Tainted Barse?"~ */ GOTO 14
  IF ~~ THEN REPLY #13703 /* ~"I have another question for you."~ */ GOTO 9
  IF ~~ THEN REPLY #13704 /* ~"I thank you for your help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #13705 /* ~"He's the barkeep at the Traitor's Gate. Local swill hole for the bubbers. It's down that way I think." He gestures in a vague direction.~ */
  IF ~~ THEN REPLY #13706 /* ~"Tell me something else."~ */ GOTO 9
  IF ~~ THEN REPLY #13707 /* ~"I must leave you now. Farewell."~ */ EXIT
END
